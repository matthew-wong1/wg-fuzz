struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec2<f32>(849f, 440f), 1583f, 817f, vec2<f32>(1165f, 1353f)), Struct_1(vec2<f32>(1064f, 398f), 1000f, -645f, vec2<f32>(-548f, 1437f)), 1u, vec2<bool>(true, false), Struct_1(vec2<f32>(-1120f, 694f), -440f, -976f, vec2<f32>(1095f, 754f))), Struct_2(Struct_1(vec2<f32>(2335f, -943f), -1273f, -1000f, vec2<f32>(479f, -235f)), Struct_1(vec2<f32>(-506f, -252f), -592f, 813f, vec2<f32>(254f, 767f)), 2765u, vec2<bool>(false, false), Struct_1(vec2<f32>(1498f, -381f), 2244f, -1175f, vec2<f32>(-796f, 143f))), Struct_2(Struct_1(vec2<f32>(397f, 462f), 796f, -734f, vec2<f32>(1014f, -1556f)), Struct_1(vec2<f32>(423f, -778f), 1020f, -1955f, vec2<f32>(1049f, 1000f)), 1u, vec2<bool>(false, false), Struct_1(vec2<f32>(-1345f, -461f), 1750f, 557f, vec2<f32>(-1000f, 1089f))), Struct_2(Struct_1(vec2<f32>(-281f, -699f), 1000f, -1327f, vec2<f32>(-519f, -1259f)), Struct_1(vec2<f32>(-228f, -697f), -243f, 442f, vec2<f32>(442f, -934f)), 10658u, vec2<bool>(false, true), Struct_1(vec2<f32>(484f, -1000f), 663f, -139f, vec2<f32>(1000f, 220f))), Struct_2(Struct_1(vec2<f32>(-449f, -794f), 875f, 1732f, vec2<f32>(525f, 2027f)), Struct_1(vec2<f32>(828f, 1133f), 617f, 1124f, vec2<f32>(-406f, 1000f)), 9480u, vec2<bool>(true, true), Struct_1(vec2<f32>(-361f, 648f), -624f, -783f, vec2<f32>(922f, 160f))), Struct_2(Struct_1(vec2<f32>(840f, 1001f), -915f, 1455f, vec2<f32>(-1338f, -351f)), Struct_1(vec2<f32>(1224f, -475f), 318f, -1241f, vec2<f32>(507f, -444f)), 10416u, vec2<bool>(false, false), Struct_1(vec2<f32>(-1430f, 1267f), -1480f, -393f, vec2<f32>(1056f, -1400f))), Struct_2(Struct_1(vec2<f32>(519f, -1000f), -1223f, 432f, vec2<f32>(375f, -1000f)), Struct_1(vec2<f32>(418f, 1034f), 1160f, 650f, vec2<f32>(-846f, -747f)), 0u, vec2<bool>(true, true), Struct_1(vec2<f32>(-154f, 345f), 532f, -254f, vec2<f32>(635f, -1000f))), Struct_2(Struct_1(vec2<f32>(1038f, 416f), -994f, -1517f, vec2<f32>(119f, -1000f)), Struct_1(vec2<f32>(-586f, 745f), 1701f, -467f, vec2<f32>(1151f, -492f)), 1005u, vec2<bool>(false, false), Struct_1(vec2<f32>(803f, 383f), -553f, 1298f, vec2<f32>(1000f, -1075f))), Struct_2(Struct_1(vec2<f32>(-469f, -459f), 685f, 1530f, vec2<f32>(-1193f, 951f)), Struct_1(vec2<f32>(-256f, 318f), 1162f, 1017f, vec2<f32>(-521f, -463f)), 9618u, vec2<bool>(false, true), Struct_1(vec2<f32>(1752f, -695f), 857f, 206f, vec2<f32>(730f, -1115f))), Struct_2(Struct_1(vec2<f32>(1752f, 153f), -785f, 951f, vec2<f32>(-830f, 738f)), Struct_1(vec2<f32>(-529f, -658f), -1374f, -2121f, vec2<f32>(1102f, -440f)), 5948u, vec2<bool>(false, true), Struct_1(vec2<f32>(-947f, 708f), -317f, -895f, vec2<f32>(941f, -1337f))), Struct_2(Struct_1(vec2<f32>(540f, 1386f), 2793f, -1894f, vec2<f32>(-855f, 584f)), Struct_1(vec2<f32>(-577f, 509f), -328f, -1000f, vec2<f32>(302f, -877f)), 0u, vec2<bool>(false, true), Struct_1(vec2<f32>(-667f, 173f), 990f, 1936f, vec2<f32>(1233f, -2116f))), Struct_2(Struct_1(vec2<f32>(-405f, 1913f), 1163f, 368f, vec2<f32>(1006f, -1001f)), Struct_1(vec2<f32>(1000f, -228f), 310f, -395f, vec2<f32>(-922f, -694f)), 4294967295u, vec2<bool>(false, true), Struct_1(vec2<f32>(-843f, -1360f), -375f, 910f, vec2<f32>(950f, -143f))), Struct_2(Struct_1(vec2<f32>(-1832f, 486f), -1134f, -743f, vec2<f32>(865f, -1000f)), Struct_1(vec2<f32>(-403f, -1546f), 218f, -678f, vec2<f32>(-1156f, -1980f)), 6706u, vec2<bool>(false, true), Struct_1(vec2<f32>(408f, 1573f), -122f, 150f, vec2<f32>(-1243f, 1000f))), Struct_2(Struct_1(vec2<f32>(-782f, -239f), -1258f, -2482f, vec2<f32>(-271f, -796f)), Struct_1(vec2<f32>(405f, 1019f), 1009f, 1007f, vec2<f32>(507f, -231f)), 49446u, vec2<bool>(true, true), Struct_1(vec2<f32>(720f, 705f), 725f, 1487f, vec2<f32>(-2809f, -801f))), Struct_2(Struct_1(vec2<f32>(474f, -1534f), 382f, -1021f, vec2<f32>(528f, -1000f)), Struct_1(vec2<f32>(-1000f, 1000f), 574f, -515f, vec2<f32>(-1706f, 296f)), 37657u, vec2<bool>(false, false), Struct_1(vec2<f32>(885f, 1258f), -694f, -1224f, vec2<f32>(-2202f, -410f))));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1712f);
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    let var_1 = vec4<u32>(u_input.b, 33329u, 0u, ~arg_1.c);
    global0 = array<Struct_2, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b, -1000f, true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.d.x)))), -346f)), _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-480f)) * _wgslsmith_f_op_f32(1392f - -1000f)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 30460u), ~vec2<u32>(u_input.b, arg_0.x))), u_input.b, u_input.b), 15u)];
    var var_2 = ~abs(arg_0.xx);
    return Struct_1(arg_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f * -921f), arg_1.d.x, !(u_input.a > abs(2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.d + arg_1.d)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_2.d.x;
    global0 = array<Struct_2, 15>();
    let var_1 = vec4<bool>(true, !(!all(!arg_2.d)), !all(select(arg_2.d, arg_2.d, select(arg_2.d, arg_2.d, vec2<bool>(false, arg_2.d.x)))), true);
    var var_2 = !arg_2.d;
    global0 = array<Struct_2, 15>();
    return Struct_1(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.a.x, -1355f) - _wgslsmith_f_op_f32(sign(1437f))))), _wgslsmith_f_op_f32(step(arg_0.b, -584f)), -367f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e.d.x, _wgslsmith_f_op_f32(ceil(arg_2.b.a.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e.d.x, 2253f) * arg_2.b.a) - _wgslsmith_f_op_vec2_f32(min(arg_0.d, arg_0.d))))));
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_2(func_4(func_3(vec3<u32>(1u, _wgslsmith_add_u32(u_input.b, u_input.b), ~67194u), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1023f, arg_0.x) + arg_0), _wgslsmith_f_op_f32(func_2(951f, Struct_2(Struct_1(vec2<f32>(arg_0.x, arg_0.x), 551f, 1639f, arg_0), Struct_1(vec2<f32>(1000f, arg_0.x), arg_0.x, 432f, vec2<f32>(arg_0.x, -952f)), u_input.b, vec2<bool>(false, true), Struct_1(arg_0, -1278f, -515f, arg_0)))), arg_0.x, _wgslsmith_f_op_vec2_f32(select(arg_0, arg_0, false)))), abs(-1i), Struct_2(Struct_1(arg_0, 411f, _wgslsmith_f_op_f32(arg_0.x - -389f), arg_0), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-633f, -514f) + arg_0), -725f, _wgslsmith_f_op_f32(abs(-387f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(108f, -639f))), 1u, vec2<bool>(true, true), func_3(vec3<u32>(u_input.b, 1u, u_input.b) & vec3<u32>(4294967295u, 4294967295u, 1u), func_3(vec3<u32>(u_input.b, u_input.b, u_input.b), Struct_1(vec2<f32>(418f, -1462f), -1635f, arg_0.x, vec2<f32>(arg_0.x, arg_0.x))))), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 25407u, 4007u, 4792u), vec4<u32>(u_input.b, 4294967295u, 53175u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(69708u, 16239u, 1u, u_input.b))))), func_3(firstLeadingBit(select(vec3<u32>(0u, 1u, 1u), vec3<u32>(u_input.b, 10268u, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))), func_3(firstTrailingBit(~vec3<u32>(4294967295u, u_input.b, u_input.b)), Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_0, vec2<f32>(1106f, arg_0.x), vec2<bool>(true, false))), arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0))), 23701u, select(vec2<bool>(true, true), vec2<bool>(true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false))), !vec2<bool>(true, any(vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(249f * arg_0.x)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1032f, 106f) - arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 644f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -118f), _wgslsmith_div_f32(arg_0.x, -1634f)))));
    global0 = array<Struct_2, 15>();
    var var_1 = Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.e.d, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1321f, -443f))))), 160f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1178f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c, var_0.a.d.x)), _wgslsmith_f_op_vec2_f32(-arg_0)))), ~u_input.b, select(!(!vec2<bool>(var_0.d.x, var_0.d.x)), vec2<bool>(true, false), false), func_3(min(~select(vec3<u32>(var_0.c, 4294967295u, 42560u), vec3<u32>(u_input.b, 1u, u_input.b), true), ~vec3<u32>(47237u, 0u, var_0.c) << (select(vec3<u32>(4294967295u, 383u, 22567u), vec3<u32>(var_0.c, 4294967295u, var_0.c), vec3<bool>(var_0.d.x, false, false)) % vec3<u32>(32u))), var_0.a));
    var var_2 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(round(-230f)));
    return firstLeadingBit(~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(29237i, u_input.a), vec2<i32>(u_input.a, u_input.a)))));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec3<u32>) -> bool {
    var var_0 = arg_2.yx;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))), _wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 - 743f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(arg_1 * -816f), 508f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(324f, arg_1, 1079f))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, -177f, 1719f), vec3<f32>(arg_1, -681f, -1000f)))), any(vec3<bool>(true, false, true)) | (arg_1 > 232f))), !any(vec3<bool>(true, true, true)))));
    return all(!vec4<bool>(true, true || any(vec2<bool>(true, false)), false, any(vec4<bool>(false, true, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = func_5(_wgslsmith_mod_i32(-func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-587f, -141f), vec2<f32>(-426f, 901f))), 0i), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(765f * -315f) - _wgslsmith_f_op_f32(945f * -692f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_f32(2239f, 1834f))))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u) | vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(0u, 15383u, u_input.b) & vec3<u32>(0u, u_input.b, u_input.b), firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(75959u, 0u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b, 23184u), vec3<u32>(u_input.b, 5846u, u_input.b)))));
    var_0 = !(!any(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-864f, _wgslsmith_f_op_f32(min(-562f, _wgslsmith_f_op_f32(-func_3(vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec2<f32>(708f, -320f), 109f, 1370f, vec2<f32>(-175f, -879f))).c))), 205f, _wgslsmith_f_op_f32(trunc(-457f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(var_1.zy, vec2<f32>(1152f, var_1.x)));
    global0 = array<Struct_2, 15>();
    let var_3 = 1u;
    var var_4 = Struct_2(func_4(Struct_1(var_1.wz, -1204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_2.x))), u_input.a, Struct_2(func_4(Struct_1(var_1.yy, var_1.x, var_1.x, vec2<f32>(var_2.x, var_1.x)), ~u_input.a, Struct_2(Struct_1(vec2<f32>(536f, var_1.x), var_1.x, var_2.x, vec2<f32>(var_2.x, var_2.x)), Struct_1(var_2, var_1.x, 195f, var_1.zz), var_3, vec2<bool>(false, false), Struct_1(var_1.yz, -859f, var_2.x, vec2<f32>(var_2.x, 1488f))), vec4<u32>(4294967295u, 4323u, var_3, var_3)), func_4(Struct_1(var_1.wz, var_2.x, -1164f, vec2<f32>(var_1.x, -374f)), u_input.a, global0[_wgslsmith_index_u32(var_3, 15u)], ~vec4<u32>(25581u, 5647u, 34888u, u_input.b)), ~max(1u, var_3), vec2<bool>(any(vec3<bool>(true, true, true)), u_input.a > -2147483647i), Struct_1(func_4(Struct_1(var_2, var_1.x, var_2.x, vec2<f32>(var_1.x, var_2.x)), -46762i, global0[_wgslsmith_index_u32(26344u, 15u)], vec4<u32>(40237u, 28346u, 1u, 65460u)).d, var_2.x, _wgslsmith_f_op_f32(-463f * 840f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-167f, var_1.x)))), select(vec4<u32>(u_input.b, u_input.b, ~1u, u_input.b), ~countOneBits(vec4<u32>(u_input.b, u_input.b, 63416u, 103787u)), u_input.b < u_input.b)), func_4(func_3(reverseBits(firstTrailingBit(vec3<u32>(5257u, u_input.b, var_3))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-437f, var_2.x) + var_1.zw), var_1.x, _wgslsmith_div_f32(var_1.x, 311f), _wgslsmith_f_op_vec2_f32(vec2<f32>(974f, 198f) - vec2<f32>(716f, var_2.x)))), u_input.a, global0[_wgslsmith_index_u32(var_3 ^ u_input.b, 15u)], firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_3, var_3, u_input.b), firstTrailingBit(vec4<u32>(1u, u_input.b, u_input.b, 1u))))), abs(select(var_3, u_input.b & 1u, true) ^ ~90669u), select(vec2<bool>(true, (0u == var_3) || true), vec2<bool>(abs(0i) < u_input.a, all(vec4<bool>(true, true, true, true))), (all(vec3<bool>(true, true, true)) & false) && (_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.a, u_input.a)) <= ~(-1i))), Struct_1(var_2, var_1.x, 549f, var_1.zx));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(-11922i, ~(u_input.a & -28441i)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-4195i, 25478i, -1i), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 51828i, u_input.a), vec4<i32>(-1i, u_input.a, -1i, 23326i)), i32(-1i) * -1i, min(-584i, u_input.a))), ~(-(~vec3<i32>(u_input.a, 1i, u_input.a)))), vec4<f32>(-308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(Struct_1(var_4.a.d, var_2.x, var_2.x, vec2<f32>(-211f, -901f)), u_input.a, global0[_wgslsmith_index_u32(0u, 15u)], vec4<u32>(22759u, 0u, u_input.b, 0u)).a.x)), -1417f, _wgslsmith_f_op_f32(-var_4.e.b)), var_1.yww);
}

