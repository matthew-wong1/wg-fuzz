struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(52720i, vec3<f32>(-749f, -337f, 1000f), -10191i, true, vec3<f32>(-1000f, -1000f, 1000f)), Struct_1(i32(-2147483648), vec3<f32>(-582f, 953f, -828f), 0i, true, vec3<f32>(1000f, 1000f, -1650f))), Struct_2(Struct_1(2847i, vec3<f32>(831f, -2124f, 581f), -1i, true, vec3<f32>(-500f, -129f, -1667f)), Struct_1(1i, vec3<f32>(845f, 2065f, -650f), 0i, false, vec3<f32>(-756f, 1691f, 301f))), Struct_2(Struct_1(-20923i, vec3<f32>(-323f, -808f, 710f), 36345i, true, vec3<f32>(853f, 107f, -696f)), Struct_1(-1i, vec3<f32>(677f, -862f, 202f), 11563i, false, vec3<f32>(1204f, -1000f, 224f))), Struct_2(Struct_1(2785i, vec3<f32>(1541f, 706f, -174f), 0i, false, vec3<f32>(-1159f, 463f, -994f)), Struct_1(0i, vec3<f32>(-219f, 1066f, -2001f), -7485i, false, vec3<f32>(-1000f, -1000f, -2095f))), Struct_2(Struct_1(2147483647i, vec3<f32>(791f, 427f, 160f), 43724i, true, vec3<f32>(-1036f, -341f, -922f)), Struct_1(8295i, vec3<f32>(-165f, -1337f, -2950f), 70614i, false, vec3<f32>(1000f, -1000f, 1044f))), Struct_2(Struct_1(-1i, vec3<f32>(-1291f, 593f, 1932f), -1i, true, vec3<f32>(982f, -946f, 2133f)), Struct_1(2147483647i, vec3<f32>(687f, 467f, -2153f), 2147483647i, true, vec3<f32>(-429f, 350f, -1503f))), Struct_2(Struct_1(2147483647i, vec3<f32>(-1409f, 1747f, 346f), i32(-2147483648), true, vec3<f32>(-205f, 101f, 731f)), Struct_1(-48347i, vec3<f32>(-1000f, -1468f, -418f), -1i, true, vec3<f32>(-830f, 634f, -562f))), Struct_2(Struct_1(-1i, vec3<f32>(604f, 1191f, 1622f), 2147483647i, true, vec3<f32>(881f, 501f, 782f)), Struct_1(i32(-2147483648), vec3<f32>(149f, -1406f, -257f), 0i, true, vec3<f32>(934f, 1477f, -614f))), Struct_2(Struct_1(-1i, vec3<f32>(-1000f, -396f, -2134f), 12426i, false, vec3<f32>(1605f, 232f, -1695f)), Struct_1(i32(-2147483648), vec3<f32>(1000f, -1918f, 324f), -12672i, false, vec3<f32>(339f, -1641f, 1304f))), Struct_2(Struct_1(94255i, vec3<f32>(-1367f, 741f, 2023f), 35786i, true, vec3<f32>(-187f, -282f, -451f)), Struct_1(-14444i, vec3<f32>(-686f, 1000f, 370f), -1i, false, vec3<f32>(1825f, -338f, 496f))), Struct_2(Struct_1(-1i, vec3<f32>(-1204f, 1000f, 1383f), 49109i, true, vec3<f32>(1154f, 292f, -673f)), Struct_1(-32149i, vec3<f32>(302f, -1454f, -864f), 13904i, true, vec3<f32>(1019f, 593f, -2702f))), Struct_2(Struct_1(-1i, vec3<f32>(-234f, 2072f, -1183f), 2147483647i, false, vec3<f32>(1484f, 1308f, 1799f)), Struct_1(-36698i, vec3<f32>(-406f, 652f, 1000f), 11669i, false, vec3<f32>(503f, 534f, -996f))), Struct_2(Struct_1(0i, vec3<f32>(320f, 1275f, 143f), 2147483647i, false, vec3<f32>(-216f, 682f, -1628f)), Struct_1(1i, vec3<f32>(-1233f, -2894f, -1628f), -18508i, true, vec3<f32>(704f, 675f, 1000f))), Struct_2(Struct_1(1i, vec3<f32>(115f, 617f, 251f), -1i, true, vec3<f32>(-221f, -583f, 887f)), Struct_1(-1i, vec3<f32>(991f, 245f, -1220f), -1i, true, vec3<f32>(1000f, 123f, -195f))), Struct_2(Struct_1(0i, vec3<f32>(-514f, -1151f, 608f), -1i, true, vec3<f32>(-224f, 100f, -320f)), Struct_1(-23471i, vec3<f32>(-411f, 1098f, -1000f), 8162i, false, vec3<f32>(303f, -1382f, -382f))), Struct_2(Struct_1(1i, vec3<f32>(-374f, 1490f, -835f), -26192i, true, vec3<f32>(880f, 702f, -1455f)), Struct_1(2147483647i, vec3<f32>(-1081f, 2043f, -1260f), i32(-2147483648), false, vec3<f32>(689f, -149f, -1165f))), Struct_2(Struct_1(0i, vec3<f32>(-1596f, 365f, -227f), -1i, false, vec3<f32>(399f, 486f, -240f)), Struct_1(-29872i, vec3<f32>(-668f, 683f, 781f), -1i, false, vec3<f32>(-663f, 1370f, -107f))), Struct_2(Struct_1(2147483647i, vec3<f32>(-1467f, -1238f, 1496f), i32(-2147483648), true, vec3<f32>(-370f, -1839f, 346f)), Struct_1(-1i, vec3<f32>(1334f, 1768f, 817f), 1i, true, vec3<f32>(-567f, 1097f, -335f))), Struct_2(Struct_1(26564i, vec3<f32>(-807f, 221f, 666f), -22494i, true, vec3<f32>(253f, 205f, -937f)), Struct_1(-14990i, vec3<f32>(863f, 898f, 605f), 0i, true, vec3<f32>(1849f, 1941f, -118f))), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(338f, -995f, -1111f), -1812i, false, vec3<f32>(-1887f, 1000f, -741f)), Struct_1(2147483647i, vec3<f32>(-380f, 609f, -192f), i32(-2147483648), false, vec3<f32>(-1226f, 1000f, -321f))), Struct_2(Struct_1(-1i, vec3<f32>(-514f, 1253f, -145f), -11424i, true, vec3<f32>(1404f, 2015f, 335f)), Struct_1(34131i, vec3<f32>(-1345f, -164f, -655f), 1i, true, vec3<f32>(1299f, 1000f, -597f))), Struct_2(Struct_1(3476i, vec3<f32>(243f, -616f, -2305f), 1i, true, vec3<f32>(932f, -200f, 405f)), Struct_1(-31941i, vec3<f32>(489f, -969f, 445f), 248i, true, vec3<f32>(1000f, 925f, -256f))), Struct_2(Struct_1(-14897i, vec3<f32>(-1098f, 1481f, -1000f), 1i, true, vec3<f32>(909f, 518f, -1296f)), Struct_1(-1i, vec3<f32>(-3120f, -2755f, -862f), 11986i, true, vec3<f32>(-511f, -367f, 1233f))), Struct_2(Struct_1(0i, vec3<f32>(357f, 2343f, 417f), -19514i, true, vec3<f32>(-615f, -1351f, 289f)), Struct_1(2147483647i, vec3<f32>(1289f, 700f, 397f), 2147483647i, true, vec3<f32>(-213f, -1049f, 1000f))), Struct_2(Struct_1(27996i, vec3<f32>(-1077f, -185f, 590f), -5357i, true, vec3<f32>(1332f, 920f, -619f)), Struct_1(-64918i, vec3<f32>(1319f, 677f, -756f), 1i, false, vec3<f32>(636f, -428f, 516f))), Struct_2(Struct_1(56970i, vec3<f32>(218f, 659f, -166f), -1i, false, vec3<f32>(-435f, 805f, 1000f)), Struct_1(-12579i, vec3<f32>(-103f, -293f, 147f), -22554i, false, vec3<f32>(-1732f, -385f, -779f))), Struct_2(Struct_1(2147483647i, vec3<f32>(-538f, 584f, -900f), i32(-2147483648), false, vec3<f32>(564f, 1211f, -2345f)), Struct_1(0i, vec3<f32>(-264f, 761f, -143f), 2147483647i, false, vec3<f32>(2202f, 753f, -1914f))), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(320f, 1602f, -138f), -10604i, true, vec3<f32>(1517f, -800f, -2214f)), Struct_1(-30836i, vec3<f32>(883f, 1070f, -768f), -1i, true, vec3<f32>(-800f, -442f, -618f))));

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_2(Struct_1(-33639i, vec3<f32>(1172f, 796f, -1806f), -19308i, false, vec3<f32>(1000f, -231f, 1641f)), Struct_1(2147483647i, vec3<f32>(623f, -1550f, -269f), 39837i, false, vec3<f32>(-1619f, -913f, -1532f))), -2101f), Struct_3(Struct_2(Struct_1(-1i, vec3<f32>(-723f, -243f, -1000f), 3800i, false, vec3<f32>(-1287f, 203f, -249f)), Struct_1(-28263i, vec3<f32>(1455f, -166f, 515f), -1i, true, vec3<f32>(-1000f, -1000f, -1170f))), -122f), Struct_3(Struct_2(Struct_1(10757i, vec3<f32>(430f, -244f, -143f), 1i, false, vec3<f32>(137f, 691f, 159f)), Struct_1(1i, vec3<f32>(-1353f, -1711f, -1173f), 1i, false, vec3<f32>(816f, -423f, -617f))), -1450f), Struct_3(Struct_2(Struct_1(-30578i, vec3<f32>(-1258f, 1718f, 154f), 1i, true, vec3<f32>(-399f, 959f, -892f)), Struct_1(37686i, vec3<f32>(1000f, -1002f, -1000f), 13096i, true, vec3<f32>(1440f, -1590f, 103f))), 1254f), Struct_3(Struct_2(Struct_1(-1i, vec3<f32>(-277f, -218f, -469f), 20577i, true, vec3<f32>(-641f, -1673f, -732f)), Struct_1(-2022i, vec3<f32>(-1000f, -219f, 692f), 2147483647i, true, vec3<f32>(-169f, 1096f, 191f))), 303f), Struct_3(Struct_2(Struct_1(44411i, vec3<f32>(-143f, 953f, -169f), -1i, false, vec3<f32>(-1094f, -806f, 802f)), Struct_1(-28029i, vec3<f32>(390f, -528f, 366f), -1i, false, vec3<f32>(-1291f, -902f, -428f))), -214f), Struct_3(Struct_2(Struct_1(-53257i, vec3<f32>(665f, -2193f, 1599f), 0i, false, vec3<f32>(2520f, -1044f, 605f)), Struct_1(-3653i, vec3<f32>(-433f, 1001f, 1693f), i32(-2147483648), false, vec3<f32>(-999f, 1482f, 860f))), 895f), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec3<f32>(579f, -458f, 260f), i32(-2147483648), true, vec3<f32>(-282f, -534f, 1485f)), Struct_1(49776i, vec3<f32>(-151f, 594f, -805f), 37155i, true, vec3<f32>(478f, 190f, -706f))), -216f), Struct_3(Struct_2(Struct_1(-21142i, vec3<f32>(-1134f, -704f, -1109f), 8310i, false, vec3<f32>(-728f, -3612f, -960f)), Struct_1(-1i, vec3<f32>(-2382f, 1999f, -337f), 41355i, false, vec3<f32>(-703f, 1320f, -1607f))), 1526f), Struct_3(Struct_2(Struct_1(-8520i, vec3<f32>(-883f, 1000f, -1791f), 0i, true, vec3<f32>(-901f, -1034f, -551f)), Struct_1(2147483647i, vec3<f32>(1000f, 522f, 669f), 38868i, false, vec3<f32>(139f, -3313f, 466f))), 1000f), Struct_3(Struct_2(Struct_1(-1i, vec3<f32>(743f, -164f, 114f), i32(-2147483648), true, vec3<f32>(313f, 700f, 1025f)), Struct_1(1i, vec3<f32>(991f, 408f, -440f), 0i, true, vec3<f32>(-367f, 1000f, 336f))), 802f));

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_5, 18>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(_wgslsmith_clamp_i32((2147483647i | u_input.b.x) | ~(-21429i), min(i32(-1i) * -8266i, 1i), i32(-1i) * -61233i) >> (~u_input.e.x % 32u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) * -1961f), _wgslsmith_div_f32(-710f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(533f, 304f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -889f))))), u_input.b.x, u_input.e.x == _wgslsmith_sub_u32(~24214u, ~_wgslsmith_mod_u32(u_input.e.x, 4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1879f), _wgslsmith_f_op_f32(854f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))), -601f));
    global3 = array<Struct_5, 18>();
    var var_1 = var_0.d;
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, u_input.a.x) ^ _wgslsmith_mult_u32(u_input.e.x, u_input.e.x), 28u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(811f))))));
    let var_3 = !(u_input.e.x >= select(0u, firstLeadingBit(abs(u_input.a.x)), any(!vec4<bool>(var_2.a.b.d, false, var_0.d, var_2.a.a.d))));
    return var_0.a;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec2<f32> {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(u_input.e.x, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f * -1185f))))));
    let var_1 = func_2();
    global1 = array<Struct_3, 11>();
    var var_2 = func_2();
    var var_3 = 806f;
    return var_0.a.b.b.yx;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<bool>) -> vec4<i32> {
    global1 = array<Struct_3, 11>();
    global2 = vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(abs(-1i), -86657i), vec2<i32>(23528i, _wgslsmith_clamp_i32(-61024i, arg_0, arg_0)), u_input.b.yz);
    global1 = array<Struct_3, 11>();
    let var_0 = (~_wgslsmith_mod_vec2_u32(vec2<u32>(76493u, 0u) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), ~u_input.e.yz) | firstLeadingBit(firstLeadingBit(vec2<u32>(24812u, 86937u)))) & u_input.a;
    global2 = u_input.b.yz;
    return vec4<i32>(8542i, u_input.b.x, -5691i, -3081i);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-837f, 1000f, 622f, -1419f), vec4<f32>(447f, 977f, -1276f, -997f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(210f, -742f, 2406f, 547f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1325f, 1278f, 711f, -1305f)), arg_1))));
    let var_1 = u_input.a << (vec2<u32>(select(u_input.a.x, firstTrailingBit(1u), true) ^ ~reverseBits(1u), u_input.e.x >> (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.e.x, u_input.e.x)), firstTrailingBit(u_input.e)) % 32u)) % vec2<u32>(32u));
    var var_2 = global0[_wgslsmith_index_u32(1u, 28u)];
    global1 = array<Struct_3, 11>();
    var var_3 = _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(var_1.x, ~var_1.x, 1u));
    return -2365i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, global2.x), ~u_input.d.zx), ~global2.x), u_input.d.yy), abs(-1i));
    global3 = array<Struct_5, 18>();
    global3 = array<Struct_5, 18>();
    global3 = array<Struct_5, 18>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-283f, -201f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-601f, 573f)))))), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1028f, -892f, true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1649f) - 1000f)), 1u)));
    var var_2 = vec3<i32>(func_4(func_3(-12885i, -376f, !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true), vec2<bool>(true, false)), true), 1i, global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(246f + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec2_f32(func_1(210f, ~39005u)).x), global2.x | 2147483647i, abs(abs(~vec2<u32>(u_input.e.x, u_input.a.x))), -(-_wgslsmith_div_i32(2147483647i, -2147483647i) ^ global2.x));
}

