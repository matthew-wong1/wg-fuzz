struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<f32>) -> u32 {
    var var_0 = arg_1.x;
    let var_1 = arg_0.b;
    var_0 = 1f;
    var_0 = 1050f;
    var var_2 = arg_2.a.yx;
    return ~u_input.c.x;
}

fn func_2(arg_0: vec2<i32>) -> vec2<bool> {
    var var_0 = abs(_wgslsmith_clamp_u32(~0u, u_input.c.x & countOneBits(_wgslsmith_mod_u32(39156u, 4294967295u)), ~(~_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x))));
    var_0 = _wgslsmith_add_u32(108180u, func_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(822f, -1379f, 1031f)), Struct_1(-838f, vec4<bool>(true, false, false, true), 334f), Struct_1(1102f, vec4<bool>(true, true, true, false), -1000f), ~(-32247i), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, -168f, 324f, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(303f, -1011f, 1012f, 495f) + vec4<f32>(-1161f, 1090f, 478f, 1003f))), Struct_3(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec2<f32>(-722f, -408f), -1222f), vec2<f32>(-1296f, -1299f)) | abs(firstLeadingBit(u_input.c.x)));
    var_0 = ~0u;
    var_0 = u_input.c.x;
    let var_1 = Struct_3(vec3<bool>(true, false, 33590i <= (_wgslsmith_add_i32(2147483647i, -55072i) << (u_input.c.x % 32u))), vec2<f32>(-290f, 1f), 747f);
    return select(vec2<bool>(false, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x) <= (_wgslsmith_dot_vec3_u32(vec3<u32>(51199u, 28730u, 0u), vec3<u32>(23238u, u_input.c.x, 35546u)) & _wgslsmith_div_u32(0u, 4294967295u))), var_1.a.yy, select(!var_1.a.x, false, !(!var_1.a.x)));
}

fn func_1(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1596f, 325f))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -1000f);
    let var_2 = arg_0.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1599f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_f_op_f32(962f + var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-406f + -171f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 239f))))));
    var_1 = vec2<f32>(-1472f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3, var_3)) - 1701f));
    return !(!(!(!func_2(vec2<i32>(-1i, 1956i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1(vec3<bool>(any(vec2<bool>(false, false)), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -507f)), 2271f)), 216f)), 4294967295u);
}

