struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(i32(-2147483648), -27855i, 14169i, -28142i, -20513i, -26657i, 16658i, -16149i, -3986i, -14056i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>) -> f32 {
    var var_0 = arg_1.d;
    let var_1 = vec2<i32>(3431i, _wgslsmith_mod_i32(1776i, ~1i));
    var_0 = Struct_1(all(!select(!arg_2.xx, select(vec2<bool>(arg_1.d.c, true), arg_2.wy, arg_2.xx), !vec2<bool>(false, arg_1.d.c))), 4294967295u, false, var_0.d << (~vec4<u32>(_wgslsmith_add_u32(u_input.a, 0u), max(35457u, var_0.b), countOneBits(32076u), reverseBits(4294967295u)) % vec4<u32>(32u)), -1785f);
    let var_2 = arg_1.d.d.zx;
    var_0 = arg_1.d;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1364f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_1.c, 2513f, false)), 1174f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-524f - _wgslsmith_div_f32(arg_1.d.e, 2685f)), _wgslsmith_f_op_f32(select(390f, -547f, select(u_input.a, var_0.b, var_0.a) < (24624u ^ var_0.b)))))));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global0 = array<i32, 10>();
    let var_0 = Struct_1(true, arg_0.x, !((_wgslsmith_dot_vec3_u32(vec3<u32>(16315u, u_input.a, u_input.a), arg_0.yzx) < u_input.a) & (-global0[_wgslsmith_index_u32(u_input.a, 10u)] != (1i ^ global0[_wgslsmith_index_u32(3429u, 10u)]))), _wgslsmith_div_vec4_i32(~(~(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(63867u, 10u)], -11320i, -673i) ^ vec4<i32>(global0[_wgslsmith_index_u32(20141u, 10u)], -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 10u)], u_input.b))), ~select(vec4<i32>(2147483647i, -662i, -1i, 0i), vec4<i32>(0i, u_input.b, 1i, global0[_wgslsmith_index_u32(1u, 10u)]), vec4<bool>(true, false, false, true)) | vec4<i32>(global0[_wgslsmith_index_u32(abs(4294967295u), 10u)], _wgslsmith_add_i32(1i, u_input.b), ~global0[_wgslsmith_index_u32(arg_0.x, 10u)], u_input.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(2147483647i, Struct_2(u_input.b, 4294967295u, -829f, Struct_1(false, 4294967295u, false, vec4<i32>(u_input.b, u_input.b, 0i, 49976i), -344f)), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(func_3(-1i, Struct_2(13428i, u_input.a, 1000f, Struct_1(false, 15894u, false, vec4<i32>(u_input.b, -31252i, 2370i, -80357i), 1974f)), vec4<bool>(true, true, false, true))), true)))))));
    global0 = array<i32, 10>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.e), var_0.e, _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(var_0.e * var_0.e)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, var_0.e, -2428f, var_0.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, var_0.e, var_0.e, var_0.e))))) - vec4<f32>(_wgslsmith_f_op_f32(func_3(-var_0.d.x, Struct_2(global0[_wgslsmith_index_u32(0u, 10u)], ~var_0.b, 1161f, Struct_1(true, 45413u, var_0.c, var_0.d, var_0.e)), vec4<bool>(true, false, var_0.c, any(vec3<bool>(var_0.a, true, var_0.c))))), _wgslsmith_f_op_f32(step(var_0.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.e, 422f, false)))))), var_0.e, _wgslsmith_f_op_f32(-var_0.e)));
    let var_2 = Struct_1(select(var_0.a, 0u > ~_wgslsmith_dot_vec4_u32(arg_0, arg_0), var_0.c), arg_0.x, !(true & (148f >= _wgslsmith_f_op_f32(-var_1.x))), vec4<i32>(_wgslsmith_mod_i32(abs(-2147483647i), _wgslsmith_add_i32(-24815i, u_input.b)) & abs(1i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-12094i, global0[_wgslsmith_index_u32(172385u, 10u)], 25701i) | 5023i, 21843i, ~_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_0.b, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)])), u_input.b, var_0.d.x), _wgslsmith_f_op_f32(349f - 221f));
    return _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(var_2.b, u_input.a), select(abs(~var_0.b), ~var_2.b << (22816u % 32u), var_2.a));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = ~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(~94751u, _wgslsmith_clamp_u32(arg_0, 21993u, arg_0), func_2(vec4<u32>(65194u, u_input.a, 1u, arg_0)), u_input.a), vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a), u_input.a, 96926u)));
    let var_1 = Struct_2(abs(-10728i), abs(0u), -310f, Struct_1(!(u_input.b != -2462i) & (-u_input.b != (-49112i >> (arg_0 % 32u))), 111301u, true, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(24041i, global0[_wgslsmith_index_u32(u_input.a, 10u)], u_input.b, 6650i), vec4<i32>(1i, global0[_wgslsmith_index_u32(5199u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], 3073i), true), -vec4<i32>(-40036i, -48633i, -2147483647i, global0[_wgslsmith_index_u32(18473u, 10u)])), -vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(var_0.x, 10u)], -2147483647i, 2147483647i)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(184f + -1515f), 598f), _wgslsmith_div_f32(417f, _wgslsmith_f_op_f32(f32(-1f) * -338f))))));
    let var_2 = ~_wgslsmith_clamp_i32(var_1.a, _wgslsmith_mult_i32(~(~var_1.d.d.x), firstTrailingBit(u_input.b)), u_input.b);
    let var_3 = Struct_2(var_2, var_1.d.b, _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(var_1.c + 1f)), Struct_1(true, _wgslsmith_add_u32(countOneBits(arg_0), ~var_0.x), var_1.d.c, -vec4<i32>(_wgslsmith_mod_i32(0i, u_input.b), reverseBits(var_2), u_input.b, ~(-2147483647i)), -864f));
    global0 = array<i32, 10>();
    return _wgslsmith_f_op_f32(sign(var_3.d.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-415f * _wgslsmith_f_op_f32(round(-1000f))) == -725f, ~u_input.a, false, ~reverseBits(vec4<i32>(~2147483647i, 1940i, abs(-19530i), 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_mult_u32(4294967295u, 1u))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(623f))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(306f, -399f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1533f))))));
    let var_1 = var_0.d;
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    let var_2 = select(select(select(select(vec2<bool>(var_0.a, true), select(vec2<bool>(true, true), vec2<bool>(var_0.a, false), var_0.a), vec2<bool>(var_0.a, var_0.a)), vec2<bool>(!var_0.a, true), vec2<bool>(true, var_0.a)), !vec2<bool>(true, all(vec4<bool>(true, false, false, var_0.a))), !vec2<bool>(true && var_0.c, all(vec4<bool>(var_0.c, var_0.a, var_0.c, true)))), select(select(vec2<bool>(false | var_0.c, !var_0.a), vec2<bool>(true, all(vec2<bool>(var_0.c, true))), vec2<bool>(false, true)), !(!vec2<bool>(var_0.c, false)), all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.a, false)), var_1.x <= var_0.d.x))), true);
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    var var_3 = vec2<f32>(1579f, 461f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e);
}

