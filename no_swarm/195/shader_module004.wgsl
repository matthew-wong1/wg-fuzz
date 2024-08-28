struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<bool>,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(18192u, Struct_2(vec3<f32>(370f, 703f, -466f), Struct_1(1219f), Struct_1(1148f)), vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 8638u), Struct_2(vec3<f32>(178f, -393f, -1202f), Struct_1(-1041f), Struct_1(1607f))), Struct_3(90002u, Struct_2(vec3<f32>(1000f, -1198f, -891f), Struct_1(1000f), Struct_1(-343f)), vec4<bool>(true, true, false, true), vec2<u32>(0u, 5129u), Struct_2(vec3<f32>(-1000f, 520f, -178f), Struct_1(805f), Struct_1(-612f))), Struct_3(1u, Struct_2(vec3<f32>(-137f, -788f, 1290f), Struct_1(-1549f), Struct_1(-1652f)), vec4<bool>(true, true, false, true), vec2<u32>(22864u, 0u), Struct_2(vec3<f32>(-426f, 1301f, 149f), Struct_1(2049f), Struct_1(1021f))), Struct_3(0u, Struct_2(vec3<f32>(-286f, 1107f, -279f), Struct_1(1297f), Struct_1(841f)), vec4<bool>(false, true, true, false), vec2<u32>(52132u, 25097u), Struct_2(vec3<f32>(575f, 877f, 988f), Struct_1(-700f), Struct_1(785f))), Struct_3(51100u, Struct_2(vec3<f32>(1276f, -190f, -350f), Struct_1(1685f), Struct_1(539f)), vec4<bool>(false, true, false, false), vec2<u32>(8735u, 1u), Struct_2(vec3<f32>(1763f, -241f, 305f), Struct_1(-910f), Struct_1(1443f))), Struct_3(0u, Struct_2(vec3<f32>(224f, -318f, -1821f), Struct_1(147f), Struct_1(270f)), vec4<bool>(true, true, true, true), vec2<u32>(1u, 2546u), Struct_2(vec3<f32>(928f, 1551f, -139f), Struct_1(-272f), Struct_1(1398f))), Struct_3(0u, Struct_2(vec3<f32>(-377f, 109f, 1248f), Struct_1(399f), Struct_1(262f)), vec4<bool>(false, false, false, false), vec2<u32>(4294967295u, 4294967295u), Struct_2(vec3<f32>(249f, 412f, -1769f), Struct_1(-815f), Struct_1(710f))), Struct_3(52008u, Struct_2(vec3<f32>(2273f, 448f, -1520f), Struct_1(662f), Struct_1(1000f)), vec4<bool>(false, true, false, true), vec2<u32>(52259u, 4294967295u), Struct_2(vec3<f32>(-1614f, -1461f, -654f), Struct_1(-244f), Struct_1(1000f))), Struct_3(65381u, Struct_2(vec3<f32>(574f, 595f, 1379f), Struct_1(514f), Struct_1(969f)), vec4<bool>(false, true, true, true), vec2<u32>(6481u, 0u), Struct_2(vec3<f32>(-1180f, -482f, -535f), Struct_1(548f), Struct_1(1417f))), Struct_3(30084u, Struct_2(vec3<f32>(1080f, -1162f, -279f), Struct_1(958f), Struct_1(1576f)), vec4<bool>(true, false, false, true), vec2<u32>(22884u, 33306u), Struct_2(vec3<f32>(-144f, 846f, -1083f), Struct_1(959f), Struct_1(1000f))), Struct_3(0u, Struct_2(vec3<f32>(1000f, -1078f, -213f), Struct_1(1743f), Struct_1(1210f)), vec4<bool>(true, true, true, true), vec2<u32>(0u, 4294967295u), Struct_2(vec3<f32>(-976f, -373f, 1000f), Struct_1(1137f), Struct_1(-983f))), Struct_3(45406u, Struct_2(vec3<f32>(-430f, 799f, 1488f), Struct_1(-1413f), Struct_1(-137f)), vec4<bool>(false, true, false, true), vec2<u32>(1u, 55652u), Struct_2(vec3<f32>(-517f, -766f, 184f), Struct_1(262f), Struct_1(-779f))), Struct_3(4294967295u, Struct_2(vec3<f32>(262f, 903f, 369f), Struct_1(-1000f), Struct_1(-1049f)), vec4<bool>(true, true, false, false), vec2<u32>(0u, 94790u), Struct_2(vec3<f32>(445f, -321f, 1746f), Struct_1(-1233f), Struct_1(-782f))), Struct_3(0u, Struct_2(vec3<f32>(207f, 694f, 711f), Struct_1(113f), Struct_1(297f)), vec4<bool>(false, true, true, true), vec2<u32>(0u, 1u), Struct_2(vec3<f32>(161f, 491f, -1081f), Struct_1(793f), Struct_1(-1998f))), Struct_3(17954u, Struct_2(vec3<f32>(-317f, -190f, -713f), Struct_1(809f), Struct_1(-1065f)), vec4<bool>(true, false, false, true), vec2<u32>(51367u, 12436u), Struct_2(vec3<f32>(-141f, 737f, -1185f), Struct_1(999f), Struct_1(302f))), Struct_3(45297u, Struct_2(vec3<f32>(-1037f, 190f, 800f), Struct_1(321f), Struct_1(1201f)), vec4<bool>(true, false, false, true), vec2<u32>(1u, 37099u), Struct_2(vec3<f32>(-1000f, -1466f, 255f), Struct_1(-1376f), Struct_1(-1144f))), Struct_3(0u, Struct_2(vec3<f32>(-754f, -2134f, 786f), Struct_1(-365f), Struct_1(1975f)), vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 1u), Struct_2(vec3<f32>(695f, -1074f, 497f), Struct_1(842f), Struct_1(-629f))), Struct_3(4294967295u, Struct_2(vec3<f32>(-979f, -335f, -226f), Struct_1(-1595f), Struct_1(-956f)), vec4<bool>(false, true, false, false), vec2<u32>(109898u, 105909u), Struct_2(vec3<f32>(-1000f, -442f, 701f), Struct_1(-454f), Struct_1(397f))), Struct_3(0u, Struct_2(vec3<f32>(-2476f, -150f, 1569f), Struct_1(-759f), Struct_1(-1000f)), vec4<bool>(false, true, false, false), vec2<u32>(1u, 0u), Struct_2(vec3<f32>(-1004f, -1484f, 752f), Struct_1(184f), Struct_1(1017f))), Struct_3(4294967295u, Struct_2(vec3<f32>(154f, 946f, -728f), Struct_1(-658f), Struct_1(126f)), vec4<bool>(false, false, false, false), vec2<u32>(26598u, 4294967295u), Struct_2(vec3<f32>(-408f, 998f, -258f), Struct_1(1000f), Struct_1(136f))), Struct_3(9162u, Struct_2(vec3<f32>(2787f, -703f, 153f), Struct_1(594f), Struct_1(-1982f)), vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 0u), Struct_2(vec3<f32>(2287f, -597f, -743f), Struct_1(1462f), Struct_1(473f))), Struct_3(4294967295u, Struct_2(vec3<f32>(153f, 1103f, 737f), Struct_1(502f), Struct_1(-1022f)), vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 4294967295u), Struct_2(vec3<f32>(569f, -1225f, -586f), Struct_1(2318f), Struct_1(1032f))), Struct_3(12404u, Struct_2(vec3<f32>(-1082f, -2098f, 448f), Struct_1(1000f), Struct_1(-1472f)), vec4<bool>(false, true, true, true), vec2<u32>(2113u, 1u), Struct_2(vec3<f32>(-594f, 768f, 505f), Struct_1(-2203f), Struct_1(897f))), Struct_3(27611u, Struct_2(vec3<f32>(1021f, -2718f, 1375f), Struct_1(-754f), Struct_1(1491f)), vec4<bool>(false, true, true, true), vec2<u32>(1u, 4294967295u), Struct_2(vec3<f32>(1020f, 300f, 605f), Struct_1(598f), Struct_1(1087f))), Struct_3(0u, Struct_2(vec3<f32>(169f, -1946f, 1000f), Struct_1(-510f), Struct_1(1000f)), vec4<bool>(false, true, true, false), vec2<u32>(4294967295u, 4294967295u), Struct_2(vec3<f32>(-194f, 146f, -966f), Struct_1(-1003f), Struct_1(-308f))), Struct_3(8378u, Struct_2(vec3<f32>(341f, -2285f, 377f), Struct_1(1082f), Struct_1(534f)), vec4<bool>(false, true, false, false), vec2<u32>(51281u, 4294967295u), Struct_2(vec3<f32>(-1100f, 1161f, 998f), Struct_1(-1213f), Struct_1(-442f))), Struct_3(0u, Struct_2(vec3<f32>(1344f, 128f, -584f), Struct_1(-731f), Struct_1(-2172f)), vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 0u), Struct_2(vec3<f32>(-653f, 377f, 674f), Struct_1(-107f), Struct_1(1857f))), Struct_3(4294967295u, Struct_2(vec3<f32>(465f, -289f, -1546f), Struct_1(1000f), Struct_1(-176f)), vec4<bool>(true, false, false, true), vec2<u32>(35320u, 30923u), Struct_2(vec3<f32>(1073f, 1390f, 1176f), Struct_1(-362f), Struct_1(1537f))), Struct_3(4294967295u, Struct_2(vec3<f32>(-762f, -1582f, 501f), Struct_1(1906f), Struct_1(-843f)), vec4<bool>(false, true, true, false), vec2<u32>(33114u, 59104u), Struct_2(vec3<f32>(-829f, -1162f, 374f), Struct_1(-286f), Struct_1(858f))), Struct_3(1u, Struct_2(vec3<f32>(2175f, 1178f, 634f), Struct_1(-1108f), Struct_1(-617f)), vec4<bool>(false, false, false, true), vec2<u32>(34711u, 4294967295u), Struct_2(vec3<f32>(-1893f, -817f, -2597f), Struct_1(-2334f), Struct_1(-2879f))));

var<private> global1: Struct_1 = Struct_1(880f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = u_input.a.x > _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~1u ^ reverseBits(u_input.a.x), 28618u), select(~u_input.a.x, 4294967295u, false), ~firstLeadingBit(_wgslsmith_mult_u32(22991u, u_input.a.x)));
    var var_1 = Struct_3(u_input.a.x, Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a, 1528f, -1818f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(365f, global1.a, global1.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(953f, arg_0.a.a, arg_0.b) * vec3<f32>(-121f, global1.a, -998f)))), Struct_1(arg_0.b), arg_0.a), select(!vec4<bool>(true, true, all(arg_0.c), true), select(vec4<bool>(true, any(vec4<bool>(arg_0.c.x, arg_0.c.x, false, arg_0.c.x)), true, u_input.a.x >= 1u), vec4<bool>(true, false, !arg_0.c.x, true), arg_0.c), true), ~vec2<u32>(u_input.a.x, 0u), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, _wgslsmith_div_f32(1512f, -1000f), global1.a), vec3<f32>(global1.a, _wgslsmith_f_op_f32(select(778f, -741f, true)), _wgslsmith_f_op_f32(-1149f + arg_0.a.a))), arg_0.a, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b))))));
    var var_2 = arg_0.c.x;
    var var_3 = var_1.b;
    let var_4 = !(!(!(any(var_1.c.zxx) && true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)))) * -2191f);
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~(~40791u));
    var_0 = 70956u;
    var var_1 = Struct_2(vec3<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + global1.a) + global1.a), _wgslsmith_f_op_f32(global1.a - global1.a)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a, -1167f)) + _wgslsmith_f_op_f32(f32(-1f) * -365f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(311f - global1.a)) - _wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(global1.a), -1379f, vec4<bool>(false, false, false, false), vec2<i32>(4272i, -1i)))))));
    global0 = array<Struct_3, 30>();
    let var_2 = true;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    var var_0 = Struct_4(func_2(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(global1.a), 1750f, vec4<bool>(false, true, false, false), vec2<i32>(14060i, 1i)))), 1000f), _wgslsmith_f_op_f32(arg_1.a * -257f), select(true, false, true))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(256f * arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1301f)), -750f))), select(vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)))), countOneBits(vec2<i32>(min(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-3609i, 17836i, 1751i), vec3<i32>(32803i, 2147483647i, -1i))), -17996i)));
    let var_1 = Struct_4(func_2(), arg_1.a, !(!vec4<bool>(true, any(var_0.c.xxz), true, true)), ~var_0.d);
    let var_2 = max(_wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, var_0.d.x, -2147483647i, 2147483647i), vec4<i32>(var_1.d.x, -6280i, var_0.d.x, -650i)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(var_1.d.x, -1i, -11148i), vec3<i32>(5680i, 2147483647i, 1i)), vec3<i32>(1i, 2147483647i, -46558i))), var_0.d.x) < -(~var_0.d.x);
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(196f - arg_1.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_1.a))), func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1519f))), func_2(), Struct_1(983f));
    var var_4 = vec3<i32>(-30057i, -1i ^ var_0.d.x, 1i);
    return _wgslsmith_f_op_f32(f32(-1f) * -2255f);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(Struct_1(global1.a), func_2(), u_input.a.wzw)), _wgslsmith_f_op_f32(-968f + _wgslsmith_f_op_f32(arg_0.x * global1.a)), !all(arg_2.xy))) * _wgslsmith_f_op_f32(f32(-1f) * -413f)));
    var var_0 = _wgslsmith_clamp_u32(~1u, ~(u_input.a.x | 1u), ~u_input.a.x);
    return func_2();
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_3) -> i32 {
    global0 = array<Struct_3, 30>();
    global1 = func_2();
    global1 = arg_3.e.b;
    let var_0 = arg_3.b.a.yy;
    let var_1 = arg_3.e.c.a;
    return max(select(arg_1.x, -14471i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1376f - global1.a)) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-761f, -1111f))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(any(vec4<bool>(false, true, true, 4294967295u <= u_input.a.x)), vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i) << ((abs(vec3<u32>(1u, u_input.a.x, u_input.a.x)) | ~u_input.a.wyy) % vec3<u32>(32u)), Struct_3(_wgslsmith_div_u32(u_input.a.x, 4294967295u << (0u % 32u)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(746f, -232f, 624f)), Struct_1(global1.a), func_1(vec4<f32>(global1.a, global1.a, global1.a, -526f), 27180i, vec3<bool>(false, false, false))), vec4<bool>(true, true, true, any(vec3<bool>(false, true, true))), u_input.a.wx, Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(2160f, 198f, global1.a) * vec3<f32>(560f, global1.a, -1241f)), Struct_1(-422f), Struct_1(880f)))) & ~1i;
    let var_1 = countOneBits(_wgslsmith_dot_vec4_u32(u_input.a ^ u_input.a, vec4<u32>(select(~u_input.a.x, u_input.a.x, true), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a.yy % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 48972u) & vec2<u32>(29682u, u_input.a.x)), 1u)));
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yzx, var_1, 869u >> (_wgslsmith_add_u32(firstLeadingBit(abs(var_1)), 6795u) % 32u), ~4667u);
}

