struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(1u, 4580u), vec2<u32>(4294967295u, 67693u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 25986u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 36782u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(499u, 5093u), vec2<u32>(10957u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(25200u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(81405u, 22261u), vec2<u32>(29716u, 33422u), vec2<u32>(145867u, 4294967295u), vec2<u32>(0u, 62752u), vec2<u32>(19143u, 95049u), vec2<u32>(35913u, 5788u), vec2<u32>(1u, 97064u), vec2<u32>(1u, 7125u), vec2<u32>(1u, 4294967295u), vec2<u32>(41348u, 51039u), vec2<u32>(3637u, 43902u));

var<private> global1: vec2<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec2<bool> {
    global0 = array<vec2<u32>, 23>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-677f, -186f))), -238f, Struct_1(u_input.d, vec2<bool>(true, true)), Struct_1(86724u, select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    var var_1 = global1.x;
    global0 = array<vec2<u32>, 23>();
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(~firstLeadingBit(-vec3<i32>(global1.x, u_input.b.x, 11464i)), vec3<i32>(u_input.b.x, u_input.b.x, global1.x)), 2147483647i, 10505i);
    return vec2<bool>(var_0.d.b.x, !all(select(var_0.c.b, vec2<bool>(var_0.c.b.x, true), var_0.c.b.x & var_0.c.b.x)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(firstLeadingBit(abs(abs(max(u_input.d, u_input.d)))), func_3());
    var var_1 = reverseBits(vec4<u32>(u_input.d, u_input.d | 4294967295u, _wgslsmith_mult_u32(var_0.a, 1u) << (18172u % 32u), u_input.d)) ^ ~(~vec4<u32>(30717u >> (0u % 32u), ~u_input.d, _wgslsmith_mult_u32(17819u, u_input.d), 69269u));
    let var_2 = Struct_1(var_1.x, vec2<bool>(!all(!vec3<bool>(false, var_0.b.x, false)), true));
    var_0 = Struct_1(4294967295u, !var_0.b);
    var var_3 = var_2;
    return var_2;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>) -> f32 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.xxz)))));
    global1 = u_input.b ^ select(abs(select(abs(vec2<i32>(-44884i, -4760i)), vec2<i32>(global1.x, 0i), !arg_0)), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(u_input.b, u_input.b), vec2<bool>(all(vec3<bool>(var_0.b.x, arg_0.x, arg_0.x)), var_0.b.x));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.yx + _wgslsmith_f_op_vec2_f32(arg_1.yx + vec2<f32>(433f, -1054f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(932f, -390f))), !select(arg_0, vec2<bool>(true, arg_0.x), select(var_0.b, vec2<bool>(var_0.b.x, true), true)))), -1687f, Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(36725u, 1u, u_input.d, 9975u) | (vec4<u32>(u_input.d, var_0.a, 1u, 37290u) | vec4<u32>(u_input.d, u_input.d, u_input.d, 0u)), ~reverseBits(vec4<u32>(var_0.a, var_0.a, u_input.d, 27228u))), vec2<bool>(~global1.x != 1i, any(vec3<bool>(arg_0.x, false, false)))), func_2(vec3<f32>(213f, arg_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.x)))))));
    let var_2 = 12691u;
    global0 = array<vec2<u32>, 23>();
    return _wgslsmith_f_op_f32(-var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_mod_vec2_i32(select(u_input.b, vec2<i32>(u_input.b.x, ~17177i), vec2<bool>(true, true)), u_input.b ^ ~vec2<i32>(u_input.c, u_input.c));
    let var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-371f - _wgslsmith_f_op_f32(f32(-1f) * -990f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-446f, -1105f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), vec4<f32>(-676f, -1291f, -607f, 1880f))), -1000f, !all(vec3<bool>(false, true, true))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-982f, 1055f, -2019f), vec3<f32>(424f, -148f, -1261f), true))))))))));
    var var_1 = reverseBits(_wgslsmith_mod_u32(4294967295u, select(firstTrailingBit(u_input.d), u_input.d, func_3().x)));
    var var_2 = vec3<u32>(4294967295u, u_input.d, _wgslsmith_clamp_u32(~u_input.d, u_input.d, ~u_input.d));
    var var_3 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.zx)), var_0.xx), -1867f, Struct_1(~36368u, !vec2<bool>(18289u != u_input.d, true)), Struct_1(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(43624u, u_input.d, var_2.x)), _wgslsmith_mod_u32(u_input.d, _wgslsmith_add_u32(0u, 77131u))), select(vec2<bool>(true, true), vec2<bool>(var_0.x > 313f, func_2(var_0).b.x), select(vec2<bool>(false, true), func_3(), true))));
    var var_4 = countOneBits(~vec4<u32>(~_wgslsmith_add_u32(var_3.c.a, u_input.d), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 0u, 4294967295u), vec3<u32>(29754u, 28196u, var_3.d.a)), u_input.d, 1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, var_3.d.a), vec3<u32>(8923u, 0u, var_2.x))));
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * var_3.b))))), var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-466f + var_0.x), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_div_f32(1432f, var_3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(38607u, var_2.yy, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_5.x)))), _wgslsmith_div_u32(1u, var_4.x), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(8637u), var_3.d.a, countOneBits(var_3.d.a)), ~vec3<u32>(var_4.x, 0u, 23649u), _wgslsmith_sub_vec3_u32(var_4.xxz, vec3<u32>(var_3.c.a, 18433u, var_3.d.a))));
}

