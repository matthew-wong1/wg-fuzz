struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    global0 = array<Struct_1, 13>();
    return -20801i;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec4<i32>(u_input.a.x, abs(arg_0.a.x), max(_wgslsmith_sub_i32(u_input.a.x, 0i) ^ 10503i, arg_0.a.x | -arg_0.a.x), func_2(~vec3<u32>(4294967295u, 91038u, 4294967295u) | _wgslsmith_mult_vec3_u32(vec3<u32>(84178u, 52179u, 0u), vec3<u32>(78712u, u_input.d, u_input.d)))));
    let var_1 = Struct_1(var_0.a);
    var_0 = var_1;
    let var_2 = vec3<i32>(-2147483647i, 12710i, u_input.c.x);
    let var_3 = vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(-countOneBits(var_2), var_0.a.zxz << (select(vec3<u32>(0u, 34254u, u_input.d), vec3<u32>(37593u, 13718u, 11685u), vec3<bool>(true, false, true)) % vec3<u32>(32u)));
    return arg_0;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1142f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-736f, -1848f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(889f + 554f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(616f, -911f, _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-502f, var_0.x, 131f) - vec3<f32>(var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, 522f, var_0.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-989f, 1000f, var_0.x), vec3<f32>(-1618f, var_0.x, var_0.x)))))));
    global0 = array<Struct_1, 13>();
    var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(step(1466f, var_0.x)))), -496f, var_0.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 533f, var_0.x)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), var_0.x)))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(~u_input.a));
    global0 = array<Struct_1, 13>();
    var_0 = func_1(func_1(func_1(func_1(func_1(global0[_wgslsmith_index_u32(0u, 13u)])))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -109f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(610f, -624f), 1f, -761f))))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-782f, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d), reverseBits(vec2<u32>(1u, u_input.d))), vec2<u32>(~u_input.d, u_input.d)), u_input.d & 539u), u_input.c.xy, abs(select(vec3<u32>(~4294967295u, u_input.d ^ 65396u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 54666u), vec3<u32>(24079u, u_input.d, u_input.d))), vec3<u32>(1u, 1u << (u_input.d % 32u), 0u), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 421f, 312f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1400f, -2084f, var_2.x)))));
}

