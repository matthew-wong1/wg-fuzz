struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = 1i;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, arg_0.x, 1389f), vec3<f32>(arg_0.x, 2172f, 919f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(316f, 777f, -474f) - vec3<f32>(1421f, 743f, arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1000f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(647f, 1025f, arg_0.x))))))));
    var_0 = var_2.x;
    let var_3 = ~0u;
    return arg_2.b;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(i32(-1i) * -max(~(-2147483647i), firstTrailingBit(u_input.a)), abs(_wgslsmith_clamp_vec4_i32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1490f, -644f)), false, Struct_1(-21073i, vec4<i32>(30347i, u_input.a, u_input.a, 2147483647i))), vec4<i32>(37206i, u_input.b.x, u_input.a >> (1u % 32u), -u_input.a), vec4<i32>(~u_input.b.x, -18554i, 2147483647i, ~(-26614i)))));
    var var_1 = Struct_1(select(var_0.b.x, _wgslsmith_div_i32(~var_0.a, _wgslsmith_add_i32(min(-32475i, u_input.a), _wgslsmith_dot_vec3_i32(var_0.b.zzx, var_0.b.www))), false), vec4<i32>(-2147483647i, ~(-21644i), u_input.b.x, var_0.b.x) << (u_input.c % vec4<u32>(32u)));
    return Struct_1(2147483647i, select(max(-var_0.b, abs(var_0.b) >> (max(vec4<u32>(u_input.c.x, u_input.d, u_input.d, u_input.c.x), u_input.c) % vec4<u32>(32u))), abs(abs(vec4<i32>(1i, 24174i, var_1.b.x, var_1.a))), false));
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_0 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.b.x, -10444i, ~(u_input.a >> (u_input.d % 32u))), abs(vec3<i32>(max(-2147483647i, -9075i), u_input.b.x & u_input.b.x, 2147483647i)));
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<bool, 3>();
    let var_1 = Struct_1(func_2().b.x, _wgslsmith_add_vec4_i32(~(-var_0.b) & ~(-vec4<i32>(u_input.a, u_input.a, -955i, var_0.b.x)), countOneBits(abs(select(vec4<i32>(-21117i, 2167i, 30722i, var_0.b.x), var_0.b, false)))));
    global0 = array<bool, 3>();
    let var_2 = vec3<bool>(global0[_wgslsmith_index_u32(1u, 3u)], true, global0[_wgslsmith_index_u32(1u, 3u)]);
    var var_3 = select(!(!(!(!var_2.zz))), select(var_2.xz, vec2<bool>(false, var_2.x), vec2<bool>(true, any(select(var_2.xx, var_2.zx, true)))), select(true, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), u_input.c.xyx), ~vec3<u32>(u_input.d, u_input.c.x, u_input.d)), 3u)], true & var_2.x));
    var var_4 = Struct_1(-20531i, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b);
}

