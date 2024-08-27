struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(i32(-2147483648), 19656i), vec2<i32>(-60549i, 0i), vec2<i32>(16058i, -10756i), vec2<i32>(-69690i, 0i), vec2<i32>(1i, -8270i), vec2<i32>(32224i, 50081i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(3998i, 18203i), vec2<i32>(2147483647i, 26842i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-52447i, 1i), vec2<i32>(0i, -81282i), vec2<i32>(-33198i, 1i), vec2<i32>(7096i, -28333i), vec2<i32>(-17946i, 0i));

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(20038i, 799f, vec4<u32>(4294967295u, 33662u, 42087u, 84751u), vec4<f32>(475f, -114f, 343f, -654f)), Struct_1(i32(-2147483648), 1399f, vec4<u32>(4294967295u, 4298u, 8165u, 4294967295u), vec4<f32>(592f, -1066f, 352f, -848f)), Struct_1(-1i, 778f, vec4<u32>(29907u, 18093u, 75512u, 4294967295u), vec4<f32>(1022f, -2144f, 1270f, 1001f)), Struct_1(0i, -1704f, vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<f32>(-318f, -948f, 2032f, -1026f)), Struct_1(-3894i, -203f, vec4<u32>(0u, 1u, 4294967295u, 108152u), vec4<f32>(-1087f, -173f, 258f, 1143f)), Struct_1(0i, -419f, vec4<u32>(0u, 1u, 514u, 0u), vec4<f32>(1651f, 527f, 568f, 254f)), Struct_1(-1i, 1101f, vec4<u32>(1u, 64623u, 24645u, 4294967295u), vec4<f32>(-1005f, -2608f, -724f, 242f)), Struct_1(8378i, -1000f, vec4<u32>(1u, 1u, 54385u, 4294967295u), vec4<f32>(903f, 606f, -2151f, 1595f)), Struct_1(1i, 551f, vec4<u32>(0u, 28026u, 33421u, 29904u), vec4<f32>(100f, 471f, 745f, -813f)), Struct_1(2147483647i, -619f, vec4<u32>(4294967295u, 1u, 22839u, 32340u), vec4<f32>(1000f, -602f, 778f, 469f)), Struct_1(1i, -245f, vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<f32>(2117f, -328f, -1000f, -771f)), Struct_1(i32(-2147483648), 2367f, vec4<u32>(4294967295u, 0u, 24994u, 57166u), vec4<f32>(1957f, 1549f, 1196f, 587f)), Struct_1(0i, -1558f, vec4<u32>(19233u, 4294967295u, 38124u, 4294967295u), vec4<f32>(-713f, 667f, -1000f, 1000f)), Struct_1(2147483647i, -1975f, vec4<u32>(4294967295u, 34191u, 6570u, 4294967295u), vec4<f32>(-1000f, 1720f, -1277f, -1573f)), Struct_1(3687i, 885f, vec4<u32>(16001u, 35986u, 16902u, 48521u), vec4<f32>(-781f, -1000f, 379f, 455f)), Struct_1(36310i, -779f, vec4<u32>(18422u, 4294967295u, 23260u, 37600u), vec4<f32>(1432f, -1102f, 2842f, -646f)), Struct_1(1i, 1000f, vec4<u32>(1u, 71267u, 4294967295u, 10405u), vec4<f32>(-455f, 441f, 1057f, 1113f)), Struct_1(-3409i, -284f, vec4<u32>(0u, 4294967295u, 2594u, 34310u), vec4<f32>(135f, -1175f, 204f, 506f)), Struct_1(-23900i, 1660f, vec4<u32>(31933u, 4294967295u, 1u, 0u), vec4<f32>(-1000f, 849f, -507f, -563f)), Struct_1(7827i, -725f, vec4<u32>(7513u, 42621u, 22005u, 16149u), vec4<f32>(-2191f, 436f, 1035f, 223f)), Struct_1(-15361i, 498f, vec4<u32>(84804u, 72080u, 1u, 0u), vec4<f32>(-990f, -1679f, 1188f, -654f)), Struct_1(4641i, -222f, vec4<u32>(1u, 1u, 4294967295u, 35701u), vec4<f32>(-1320f, -1068f, -1195f, -303f)));

var<private> global2: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<i32> {
    return -vec4<i32>(0i, abs(9068i), min(_wgslsmith_dot_vec2_i32(vec2<i32>(26633i, 1729i), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), ~1i) >> (_wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), 4294967295u ^ u_input.a.x) % 32u), max(_wgslsmith_dot_vec3_i32(vec3<i32>(-88017i, -19235i, 0i), vec3<i32>(37200i, 0i, 5152i)), min(-9713i, 0i)) << (~(~32979u) % 32u));
}

fn func_2() -> vec3<f32> {
    global1 = array<Struct_1, 22>();
    global1 = array<Struct_1, 22>();
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(-reverseBits(firstLeadingBit(vec4<i32>(-1i, 0i, 2147483647i, 12361i))), _wgslsmith_sub_vec4_i32(vec4<i32>(-5106i, -61455i, 6096i, 2147483647i), func_3()) >> (vec4<u32>(_wgslsmith_div_u32(0u, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 56653u >> (1u % 32u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1774f + _wgslsmith_div_f32(-1000f, 1155f)) + 1000f)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(select(u_input.a, u_input.a, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), ~u_input.a), max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 16901u, u_input.a.x), vec4<u32>(60500u, u_input.a.x, 0u, u_input.a.x)), 1u), u_input.a.x, 6166u), firstLeadingBit(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~29706u, _wgslsmith_sub_u32(u_input.a.x, 56484u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-455f - 1579f), 970f, _wgslsmith_f_op_f32(step(-336f, -1283f)), _wgslsmith_div_f32(-2164f, 1969f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1161f, -478f, -1187f, -1083f) * vec4<f32>(-131f, 1776f, -952f, -528f))))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(var_0.d.wxz)), var_0.d.zyx, !(any(!global2[_wgslsmith_index_u32(u_input.a.x, 10u)]) | true)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec4<i32> {
    global0 = array<vec2<i32>, 15>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(419f, 1228f), _wgslsmith_f_op_f32(ceil(-483f)), _wgslsmith_f_op_f32(max(arg_1.d.x, 916f))) * vec3<f32>(arg_1.b, arg_1.d.x, arg_1.b)))));
    let var_1 = Struct_3(-(~vec3<i32>(-3471i, arg_1.a | arg_1.a, i32(-1i) * -40070i)), vec4<f32>(arg_1.b, arg_1.b, var_0.x, var_0.x), Struct_1(~(max(arg_1.a, arg_1.a) & -25629i), arg_1.d.x, abs(_wgslsmith_sub_vec4_u32(~arg_1.c, firstLeadingBit(vec4<u32>(92372u, 0u, u_input.a.x, u_input.a.x)))), arg_1.d));
    global1 = array<Struct_1, 22>();
    global1 = array<Struct_1, 22>();
    return firstLeadingBit(func_3());
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 10>();
    global2 = array<vec2<bool>, 10>();
    var var_0 = ~_wgslsmith_mod_vec4_i32(~(~vec4<i32>(1i, 29615i, -90771i, 19667i)) & min(vec4<i32>(-2147483647i, -7951i, 2147483647i, -24594i), func_1(9266u, Struct_1(2147483647i, -640f, vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x), vec4<f32>(-496f, 821f, 482f, 534f)), u_input.a.x)), vec4<i32>(1i, 1i, 1i, 1i));
    global1 = array<Struct_1, 22>();
    global0 = array<vec2<i32>, 15>();
    global2 = array<vec2<bool>, 10>();
    var var_1 = Struct_3(vec3<i32>(firstLeadingBit(max(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -32088i, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, -1i, 1i)))), -var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1062f, _wgslsmith_f_op_f32(1258f * -355f), _wgslsmith_f_op_f32(max(1003f, -953f)), -818f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(961f)), _wgslsmith_f_op_f32(f32(-1f) * -1401f), _wgslsmith_f_op_f32(floor(1255f)), _wgslsmith_f_op_f32(-973f - -1013f)))), global1[_wgslsmith_index_u32(~(~12230u), 22u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.c.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b.x + 1153f), _wgslsmith_f_op_f32(-var_1.c.d.x))), 259f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1448f * -594f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c.d.x * var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x))), var_0.wyy, _wgslsmith_add_i32(var_0.x, 1i));
}

