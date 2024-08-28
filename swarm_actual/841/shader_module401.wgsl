struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(0u));

var<private> global1: i32 = -58872i;

var<private> global2: vec4<f32> = vec4<f32>(-1000f, -1341f, -745f, -314f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    var var_0 = ~reverseBits(min(vec2<i32>(-886i, 20864i) & vec2<i32>(u_input.a, u_input.a), reverseBits(vec2<i32>(u_input.a, u_input.a)))) & ~vec2<i32>(u_input.a, _wgslsmith_sub_i32(abs(u_input.a), -2147483647i));
    return !arg_0.b.a.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_3(0u);
    global1 = _wgslsmith_add_i32(0i, arg_0.x);
    let var_1 = _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(0u, arg_1))), u_input.c.yy);
    var var_2 = firstTrailingBit(1u);
    let var_3 = Struct_1(select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), arg_2 > 1203f), vec4<bool>(true, true, true, true), func_2(Struct_2(global2.yz, Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, true))), Struct_3(4294967295u)) || !(arg_0.x > u_input.a)));
    return var_3;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = Struct_3(u_input.d.x);
    let var_1 = global2.x;
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -1047f, 310f, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-429f, global2.x, 827f, 174f))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1107f)), _wgslsmith_f_op_f32(max(global2.x, 334f)), false)), _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global2.x) * -1589f), 438f))));
    let var_2 = 579f;
    var var_3 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.d, u_input.c.zzx), 84389u), u_input.c.x, u_input.b);
    return vec3<i32>(firstLeadingBit(44512i), -u_input.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(1u);
    let var_1 = vec4<f32>(-845f, -950f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(f32(-1f) * -771f)) * _wgslsmith_f_op_f32(trunc(global2.x))), global2.x);
    var var_2 = select(~(-func_3(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(-29745i, u_input.a, u_input.a, -97222i)), func_1(vec3<i32>(u_input.a, u_input.a, -719i), var_0.a, var_1.x), func_1(vec3<i32>(1i, u_input.a, u_input.a), u_input.d.x, var_1.x))), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, 0i) | u_input.a, u_input.a, -2147483647i), vec3<bool>(true, true, true));
    var var_3 = func_1(vec3<i32>(-_wgslsmith_sub_i32(1i, var_2.x), -18754i, u_input.a) | _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 8585i, -30420i) ^ vec3<i32>(var_2.x, -1i, 4732i), vec3<i32>(var_2.x, 0i, 66277i), ~vec3<i32>(u_input.a, var_2.x, 1i)), ~(vec3<i32>(-1i, -1i, var_2.x) << (u_input.d % vec3<u32>(32u)))), var_0.a, 1156f);
    global1 = -57685i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_2.x, abs(u_input.a << (4294967295u % 32u))));
}

