struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(0u, 1u), vec2<u32>(0u, 54717u));

var<private> global1: array<i32, 13> = array<i32, 13>(2147483647i, 6878i, i32(-2147483648), 1i, 45544i, -67291i, 41316i, -29547i, 14278i, -33039i, 2147483647i, 2147483647i, -1401i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> i32 {
    global1 = array<i32, 13>();
    global0 = array<vec2<u32>, 2>();
    global0 = array<vec2<u32>, 2>();
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -712f))), _wgslsmith_f_op_f32(-234f * -1363f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(596f, -167f)) - 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f), _wgslsmith_f_op_f32(step(408f, _wgslsmith_f_op_f32(962f * 109f)))))));
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(61052i, 0i, u_input.a), vec3<i32>(arg_0.x, arg_0.x, 56373i)), u_input.a | _wgslsmith_add_i32(global1[_wgslsmith_index_u32(22460u, 13u)], 1i)), -(~_wgslsmith_div_i32(u_input.a, global1[_wgslsmith_index_u32(32246u, 13u)])), ((27622i ^ global1[_wgslsmith_index_u32(arg_2, 13u)]) & _wgslsmith_mult_i32(-28537i, global1[_wgslsmith_index_u32(1u, 13u)])) << (arg_2 % 32u)), true);
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_1.a, vec3<i32>(1i, u_input.a, var_1.a.x)), _wgslsmith_add_i32(~_wgslsmith_mod_i32(0i, arg_0.x), _wgslsmith_clamp_i32(0i, -18959i, _wgslsmith_mod_i32(-32106i, u_input.a))), 0i) ^ (-max(global1[_wgslsmith_index_u32(~1u, 13u)], ~arg_0.x) ^ arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -884f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-146f * arg_1.x)))));
    global1 = array<i32, 13>();
    global1 = array<i32, 13>();
    global0 = array<vec2<u32>, 2>();
    global0 = array<vec2<u32>, 2>();
    return select(_wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(-26270i), u_input.a, func_3(-vec4<i32>(arg_2, arg_3.a.x, arg_2, arg_0.a.x), arg_0.b, 1u)), vec3<i32>(i32(-1i) * -arg_2, -global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(3909u, 2u)], vec2<u32>(1u, 26339u)), 13u)], -u_input.a)), reverseBits(_wgslsmith_clamp_vec3_i32(-(~arg_0.a), arg_3.a, vec3<i32>(-9119i, -35083i, -225i))), !(!vec3<bool>(any(vec3<bool>(false, true, arg_3.b)), true, !arg_0.b)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<i32> {
    let var_0 = Struct_1(-vec3<i32>(-arg_1.a.x | _wgslsmith_mod_i32(-31118i, global1[_wgslsmith_index_u32(59776u, 13u)]), arg_0.a.x, _wgslsmith_mult_i32(2147483647i, select(u_input.a, -37298i, arg_1.b))), false);
    global0 = array<vec2<u32>, 2>();
    global0 = array<vec2<u32>, 2>();
    let var_1 = arg_0;
    global0 = array<vec2<u32>, 2>();
    return vec3<i32>(-_wgslsmith_clamp_i32(func_4(Struct_1(vec3<i32>(arg_2, 1i, arg_0.a.x), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(154f, 1512f, 998f) - vec3<f32>(311f, 796f, -729f)), _wgslsmith_dot_vec3_i32(var_1.a, vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(0u, 13u)], var_0.a.x)), Struct_1(var_1.a, true)).x, firstLeadingBit(~arg_1.a.x), func_3(vec4<i32>(arg_1.a.x, 0i, -1i, 1i) ^ vec4<i32>(72995i, u_input.a, arg_2, arg_2), false, 0u)), ~(~(~(~u_input.a))), func_3(-min(vec4<i32>(44243i, arg_2, u_input.a, 0i), vec4<i32>(-18468i, 0i, arg_0.a.x, u_input.a) ^ vec4<i32>(var_0.a.x, arg_1.a.x, u_input.a, var_0.a.x)), select(var_0.b, arg_0.b, false), ~(firstTrailingBit(0u) >> (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u))));
}

fn func_2() -> Struct_1 {
    let var_0 = firstLeadingBit(u_input.a);
    global0 = array<vec2<u32>, 2>();
    global0 = array<vec2<u32>, 2>();
    var var_1 = _wgslsmith_div_f32(540f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-830f))));
    global0 = array<vec2<u32>, 2>();
    return Struct_1(func_5(Struct_1(func_4(Struct_1(vec3<i32>(-1i, var_0, -2147483647i), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-195f, -127f, -815f) - vec3<f32>(774f, 112f, 1109f)), func_3(vec4<i32>(var_0, global1[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a, global1[_wgslsmith_index_u32(88961u, 13u)]), false, 1u), Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(0u, 13u)], 2147483647i, 2147483647i), false)), !all(vec2<bool>(false, true))), Struct_1(vec3<i32>(-1i) * -vec3<i32>(var_0, -1i, 1i), true), ~var_0), select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-427f)) - _wgslsmith_f_op_f32(f32(-1f) * -1324f)) != _wgslsmith_f_op_f32(-880f * -631f), true));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> f32 {
    let var_0 = func_2();
    var var_1 = var_0;
    var var_2 = vec2<u32>(arg_1.x >> (min(arg_1.x, ~(~arg_1.x)) % 32u), arg_1.x);
    var var_3 = select(vec4<u32>(min(var_2.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_1.xyy, vec3<u32>(31553u, arg_1.x, 64679u)), 15825u)), select(~14949u, _wgslsmith_div_u32(var_2.x, 43755u), var_0.a.x <= -19267i) >> (firstLeadingBit(~31627u) % 32u), var_2.x | 1u, ~(~0u)), arg_1, false);
    let var_4 = _wgslsmith_f_op_vec3_f32(-arg_0);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-266f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(411f, var_4.x)))) - var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 13>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(1000f, -1130f, _wgslsmith_f_op_f32(f32(-1f) * -245f)), _wgslsmith_div_vec4_u32(~vec4<u32>(16729u, 43823u, 15672u, 53200u), firstTrailingBit(vec4<u32>(62260u, 4294967295u, 4294967295u, 0u))))) - 581f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2035f)));
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(368f)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-216f + var_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0, 1958f)), _wgslsmith_f_op_f32(exp2(var_0)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(30215u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, -764f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, -999f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(724f, 1069f), vec2<f32>(420f, var_0))))), vec2<bool>(true, true))) * vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(711f - var_0) + _wgslsmith_f_op_f32(1359f - var_0)))), select(_wgslsmith_div_vec3_u32(select(vec3<u32>(27250u, 61828u, 26880u), vec3<u32>(25203u, 0u, 0u), vec3<bool>(true, true, false)) & min(vec3<u32>(4294967295u, 415u, 0u), vec3<u32>(0u, 1u, 4294967295u)), vec3<u32>(firstTrailingBit(1u), _wgslsmith_mod_u32(1u, 4294967295u), ~39288u)), vec3<u32>(1u, 1u, 1u), !any(vec2<bool>(true, false))), reverseBits(min(vec2<u32>(~10405u, ~4294967295u), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(4294967295u, 1u)), 2u)])));
}

