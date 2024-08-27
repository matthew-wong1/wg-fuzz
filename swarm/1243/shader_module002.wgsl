struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(false, Struct_1(false, -3765i, false, vec3<f32>(107f, 1000f, 1000f), -168f), Struct_1(true, 1i, false, vec3<f32>(716f, 1059f, 822f), 1000f), vec4<f32>(-247f, 128f, -154f, 2235f)), Struct_2(true, Struct_1(true, 15247i, false, vec3<f32>(703f, -977f, 563f), 835f), Struct_1(false, 2147483647i, true, vec3<f32>(-321f, 140f, 960f), -1102f), vec4<f32>(956f, -303f, -992f, 1685f)), Struct_2(true, Struct_1(true, 5294i, true, vec3<f32>(491f, -1438f, 808f), -437f), Struct_1(false, 0i, false, vec3<f32>(-1000f, 915f, -760f), 1388f), vec4<f32>(1000f, -495f, 2518f, -1107f)), Struct_2(true, Struct_1(false, i32(-2147483648), false, vec3<f32>(465f, 873f, -1545f), 477f), Struct_1(false, 1i, true, vec3<f32>(578f, -1784f, -1588f), 1216f), vec4<f32>(-361f, -453f, 1000f, 695f)), Struct_2(false, Struct_1(false, 0i, false, vec3<f32>(-889f, -801f, -980f), -1019f), Struct_1(true, 10584i, false, vec3<f32>(-589f, -888f, 657f), -1112f), vec4<f32>(1000f, -1000f, -572f, 1227f)), Struct_2(false, Struct_1(false, 32247i, true, vec3<f32>(-1482f, -1151f, 1147f), 978f), Struct_1(true, -1i, false, vec3<f32>(137f, -1417f, 631f), -594f), vec4<f32>(-984f, -1074f, -1000f, -682f)), Struct_2(true, Struct_1(false, 18464i, false, vec3<f32>(692f, -453f, 1703f), 987f), Struct_1(true, i32(-2147483648), false, vec3<f32>(-1971f, 251f, 649f), 799f), vec4<f32>(389f, 606f, -198f, 470f)), Struct_2(true, Struct_1(true, 0i, false, vec3<f32>(1000f, -321f, 1202f), -328f), Struct_1(false, 0i, false, vec3<f32>(1421f, 1633f, -478f), -429f), vec4<f32>(-1313f, 149f, -1098f, 726f)), Struct_2(true, Struct_1(true, 19735i, true, vec3<f32>(248f, 975f, -895f), 100f), Struct_1(false, 35829i, false, vec3<f32>(-637f, -728f, -1392f), 1000f), vec4<f32>(-1000f, 549f, 990f, 1000f)), Struct_2(true, Struct_1(true, -36716i, false, vec3<f32>(482f, 1435f, -1334f), 339f), Struct_1(false, 2147483647i, false, vec3<f32>(-955f, -524f, 1206f), 1111f), vec4<f32>(162f, 2381f, -124f, -1466f)), Struct_2(false, Struct_1(true, -28374i, false, vec3<f32>(-282f, 719f, -1000f), 1194f), Struct_1(true, -16028i, false, vec3<f32>(230f, 621f, 458f), 1781f), vec4<f32>(699f, 533f, 271f, -1446f)), Struct_2(false, Struct_1(true, 0i, true, vec3<f32>(1228f, -2239f, -490f), 1000f), Struct_1(false, 1685i, true, vec3<f32>(1438f, 193f, 881f), 441f), vec4<f32>(770f, -1943f, -664f, 646f)), Struct_2(false, Struct_1(false, 0i, false, vec3<f32>(-757f, -191f, 2075f), -501f), Struct_1(false, 1i, true, vec3<f32>(-818f, -2019f, 453f), -514f), vec4<f32>(224f, 716f, -1622f, -365f)), Struct_2(false, Struct_1(true, -2616i, true, vec3<f32>(-521f, 308f, 819f), 435f), Struct_1(false, -79495i, true, vec3<f32>(-1009f, -540f, -281f), 1488f), vec4<f32>(-1234f, -1000f, -1349f, 1000f)), Struct_2(false, Struct_1(true, 1i, true, vec3<f32>(-823f, -1006f, -242f), 165f), Struct_1(true, i32(-2147483648), true, vec3<f32>(420f, 1575f, 1295f), 430f), vec4<f32>(-1270f, 654f, -257f, -808f)), Struct_2(false, Struct_1(false, 61803i, false, vec3<f32>(-1195f, -925f, 528f), 1602f), Struct_1(true, -1i, true, vec3<f32>(-287f, -197f, -1358f), 845f), vec4<f32>(-1667f, 238f, -1218f, -2318f)), Struct_2(true, Struct_1(true, 46180i, true, vec3<f32>(678f, 319f, 1314f), -410f), Struct_1(false, 2147483647i, false, vec3<f32>(-1165f, -1000f, 698f), 1000f), vec4<f32>(-595f, -732f, 2107f, 1275f)));

var<private> global1: array<bool, 14> = array<bool, 14>(true, true, true, true, false, false, false, true, false, true, false, true, false, false);

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(true, Struct_1(true, 2147483647i, false, vec3<f32>(-953f, -1347f, 261f), -407f), Struct_1(false, 54356i, false, vec3<f32>(-1569f, -387f, -911f), -114f), vec4<f32>(-181f, -564f, 930f, 366f)), Struct_2(true, Struct_1(false, -35032i, true, vec3<f32>(-1734f, 552f, -844f), 280f), Struct_1(true, -19190i, true, vec3<f32>(-1340f, 1112f, 666f), 1689f), vec4<f32>(-470f, -176f, 128f, 379f)), Struct_2(false, Struct_1(false, -1i, true, vec3<f32>(729f, 1820f, 172f), -1122f), Struct_1(false, 35593i, true, vec3<f32>(1062f, 561f, 1903f), -176f), vec4<f32>(-164f, -1155f, -604f, -529f)), Struct_2(true, Struct_1(false, 14643i, false, vec3<f32>(814f, 203f, 1151f), 3229f), Struct_1(true, 1i, true, vec3<f32>(367f, 442f, -678f), -220f), vec4<f32>(812f, -454f, 1374f, -876f)), Struct_2(true, Struct_1(true, -22459i, true, vec3<f32>(1000f, 392f, 1000f), -140f), Struct_1(true, 17397i, true, vec3<f32>(613f, -1000f, 235f), -171f), vec4<f32>(418f, 1000f, 2319f, 1441f)), Struct_2(true, Struct_1(false, i32(-2147483648), false, vec3<f32>(-900f, -1458f, -209f), 1000f), Struct_1(false, 18114i, false, vec3<f32>(1030f, -3079f, 1403f), 1000f), vec4<f32>(-311f, 439f, 1126f, 555f)), Struct_2(false, Struct_1(false, -11793i, false, vec3<f32>(315f, 1005f, -564f), 1636f), Struct_1(true, 1i, false, vec3<f32>(587f, -770f, -1008f), -1419f), vec4<f32>(625f, 766f, -1185f, -383f)), Struct_2(true, Struct_1(true, -73323i, false, vec3<f32>(-138f, -1376f, 1832f), 569f), Struct_1(true, 2147483647i, true, vec3<f32>(841f, -951f, 776f), 111f), vec4<f32>(-437f, -1088f, 820f, -207f)), Struct_2(false, Struct_1(true, -64887i, false, vec3<f32>(859f, 539f, 963f), -215f), Struct_1(false, -24636i, true, vec3<f32>(427f, 1648f, 641f), -1353f), vec4<f32>(-1314f, -457f, 1000f, 833f)), Struct_2(true, Struct_1(false, 1i, true, vec3<f32>(814f, -1000f, 156f), -1197f), Struct_1(true, i32(-2147483648), false, vec3<f32>(1000f, 521f, -1709f), -553f), vec4<f32>(138f, 622f, -2817f, 208f)), Struct_2(true, Struct_1(false, -47310i, true, vec3<f32>(-928f, -720f, -774f), 1154f), Struct_1(true, -49562i, true, vec3<f32>(726f, -282f, -243f), 1777f), vec4<f32>(-325f, 179f, 534f, -1732f)), Struct_2(false, Struct_1(true, 2147483647i, false, vec3<f32>(623f, 1812f, -599f), -1000f), Struct_1(true, -36954i, false, vec3<f32>(-410f, -531f, -1023f), 856f), vec4<f32>(-1869f, 372f, 626f, -1785f)), Struct_2(false, Struct_1(true, -69425i, false, vec3<f32>(214f, -486f, -1000f), -1381f), Struct_1(true, 15156i, false, vec3<f32>(681f, -1000f, -2242f), -962f), vec4<f32>(1000f, 308f, 433f, 225f)), Struct_2(false, Struct_1(true, -1i, true, vec3<f32>(994f, 861f, 1376f), 2676f), Struct_1(false, -9365i, true, vec3<f32>(1339f, 658f, -806f), 1000f), vec4<f32>(563f, 1061f, 777f, -661f)), Struct_2(false, Struct_1(true, -64295i, true, vec3<f32>(-1000f, 376f, -268f), -212f), Struct_1(false, i32(-2147483648), true, vec3<f32>(314f, 1061f, -1061f), -527f), vec4<f32>(-1000f, 2143f, 396f, 285f)), Struct_2(true, Struct_1(true, -34703i, false, vec3<f32>(-1408f, -596f, 2327f), -168f), Struct_1(false, 2147483647i, true, vec3<f32>(-1276f, -1249f, 792f), 685f), vec4<f32>(865f, -349f, -1593f, 775f)), Struct_2(false, Struct_1(true, 12222i, true, vec3<f32>(-587f, 1673f, 546f), -1043f), Struct_1(false, 2147483647i, false, vec3<f32>(1000f, 641f, 749f), -1794f), vec4<f32>(547f, 597f, -2306f, 600f)), Struct_2(false, Struct_1(false, 38948i, false, vec3<f32>(-713f, 411f, 304f), -1942f), Struct_1(true, 11796i, true, vec3<f32>(1126f, 864f, -718f), -1731f), vec4<f32>(-960f, -266f, -1813f, 1760f)), Struct_2(false, Struct_1(true, -16672i, false, vec3<f32>(235f, -1304f, -456f), -467f), Struct_1(true, -1i, true, vec3<f32>(1000f, 574f, 342f), 349f), vec4<f32>(-1000f, -705f, -777f, -697f)), Struct_2(true, Struct_1(false, 29643i, true, vec3<f32>(479f, 388f, -609f), 1051f), Struct_1(true, -5899i, false, vec3<f32>(1454f, -854f, 1000f), 230f), vec4<f32>(1754f, 782f, -1810f, 1889f)), Struct_2(true, Struct_1(false, 2147483647i, false, vec3<f32>(-567f, -1410f, -2173f), 1000f), Struct_1(true, 0i, false, vec3<f32>(-409f, -2324f, 671f), -1494f), vec4<f32>(-973f, -825f, 933f, -127f)), Struct_2(false, Struct_1(false, 14113i, false, vec3<f32>(-1000f, -1399f, -1462f), -547f), Struct_1(true, 0i, false, vec3<f32>(-632f, 1218f, -288f), -479f), vec4<f32>(-147f, -490f, -269f, -135f)), Struct_2(false, Struct_1(true, -15055i, true, vec3<f32>(-380f, 1000f, 536f), 594f), Struct_1(false, 0i, false, vec3<f32>(-1036f, -190f, -1271f), 2758f), vec4<f32>(-776f, -197f, 389f, -440f)), Struct_2(false, Struct_1(true, -32047i, true, vec3<f32>(-1413f, 846f, 719f), 1266f), Struct_1(false, 6779i, true, vec3<f32>(1000f, -237f, 163f), 120f), vec4<f32>(-1473f, -764f, 1005f, 1000f)), Struct_2(true, Struct_1(false, -82602i, false, vec3<f32>(607f, -647f, -486f), 1857f), Struct_1(false, 0i, false, vec3<f32>(389f, 685f, 2011f), -1000f), vec4<f32>(1205f, 1504f, -1203f, 524f)), Struct_2(false, Struct_1(true, -44754i, false, vec3<f32>(-1437f, 1256f, 1000f), -180f), Struct_1(false, i32(-2147483648), true, vec3<f32>(462f, 2883f, 310f), -537f), vec4<f32>(-550f, 926f, 498f, 2311f)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    var var_0 = u_input.a;
    let var_1 = Struct_1(false, -26018i, !(!(any(vec3<bool>(false, global1[_wgslsmith_index_u32(76260u, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)])) && true)), vec3<f32>(-1794f, -1503f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(select(-1249f, _wgslsmith_f_op_f32(ceil(-156f)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(1u, 14u)], true))) & global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 3321u), 14u)])));
    global0 = array<Struct_2, 17>();
    let var_2 = select(!select(vec4<bool>(true, var_1.a, true, true), !select(vec4<bool>(global1[_wgslsmith_index_u32(43926u, 14u)], false, true, var_1.c), vec4<bool>(false, false, var_1.a, true), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 14u)], false, false)), !global1[_wgslsmith_index_u32(60326u | u_input.a, 14u)]), vec4<bool>(true, !var_1.c, true, all(!select(vec4<bool>(var_1.a, var_1.a, global1[_wgslsmith_index_u32(4294967295u, 14u)], false), vec4<bool>(global1[_wgslsmith_index_u32(32172u, 14u)], true, global1[_wgslsmith_index_u32(68718u, 14u)], var_1.c), vec4<bool>(false, var_1.c, global1[_wgslsmith_index_u32(6532u, 14u)], false)))), !vec4<bool>(true, false, false, var_1.a));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.x, 867f) + _wgslsmith_f_op_f32(-var_1.d.x)))) + _wgslsmith_f_op_f32(-var_1.d.x)), 1000f, arg_1);
    return ~u_input.a;
}

fn func_2() -> Struct_3 {
    global2 = array<Struct_2, 26>();
    var var_0 = all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(func_3(~vec3<u32>(1u, u_input.a, u_input.a), -1043f), 14u)], global1[_wgslsmith_index_u32(firstLeadingBit(1u), 14u)]));
    let var_1 = true;
    let var_2 = 4294967295u <= (u_input.a >> (4294967295u % 32u));
    var_0 = all(select(select(select(vec4<bool>(false, var_1, global1[_wgslsmith_index_u32(u_input.a, 14u)], false), vec4<bool>(var_2, var_1, var_2, global1[_wgslsmith_index_u32(0u, 14u)]), false), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 14u)], false, global1[_wgslsmith_index_u32(18731u, 14u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(32435u, 14u)], var_2, var_1), vec4<bool>(true, true, true, true)), true), vec4<bool>(var_1, true, !var_1, true), var_1)) && (-37953i != _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 56899i, -1i, 26042i), -vec4<i32>(-39528i, 54293i, 0i, 2147483647i)), -2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2442i), vec2<i32>(1i, 0i))));
    return Struct_3(Struct_2(!var_2, Struct_1(true, -2147483647i, true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1026f, 1782f, -175f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1300f, 472f, -1279f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(456f, -1286f)))), Struct_1(all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], var_1, var_2)), -(i32(-1i) * -1i), any(select(vec4<bool>(false, false, var_2, true), vec4<bool>(false, false, var_2, true), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(803f, 1000f, -405f) + vec3<f32>(-331f, -940f, 989f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(213f, -365f, 292f))), _wgslsmith_div_f32(_wgslsmith_div_f32(510f, 263f), _wgslsmith_f_op_f32(trunc(281f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1705f, -969f, -1203f, 189f), vec4<f32>(1000f, -1176f, -581f, 388f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1735f, 1707f, 767f, -1275f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(935f, -1000f, -1743f, 1044f))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.a, 14u)], arg_1.b, arg_0.a.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.b.d.x, -214f, global1[_wgslsmith_index_u32(u_input.a, 14u)]))), _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-280f, arg_0.a.b.d.x))), _wgslsmith_f_op_f32(abs(arg_0.a.b.d.x))), arg_0.a.d, all(!select(vec3<bool>(false, arg_0.a.c.c, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(60217u, 14u)], false), arg_1.a)))));
    let var_1 = _wgslsmith_div_vec2_f32(arg_1.d.ww, _wgslsmith_f_op_vec2_f32(trunc(var_0.b.d.xy)));
    var var_2 = arg_1.c.c;
    var var_3 = Struct_3(Struct_2(func_2().a.c.c, arg_0.a.c, arg_0.a.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), arg_0.a.d.x, _wgslsmith_f_op_f32(sign(var_0.b.d.x)), _wgslsmith_f_op_f32(trunc(383f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(arg_1.d)))))));
    let var_4 = func_2().a.b;
    return func_2().a.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = Struct_2(all(select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 12943u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), 14u)], true, false, true), !(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 14u)], false)), true)), func_4(func_2(), Struct_2(func_2().a.c.a, Struct_1(select(arg_0.x, true, true), 1i >> (u_input.a % 32u), all(vec4<bool>(arg_2.b.a, false, false, true)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-951f, arg_2.d.x, 507f), vec3<f32>(arg_2.c.d.x, arg_2.b.e, arg_2.c.e))), arg_2.b.e), Struct_1(all(vec3<bool>(true, arg_0.x, arg_2.b.c)), 2147483647i, true && arg_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.e, 476f, arg_2.b.e) - vec3<f32>(arg_2.d.x, -444f, arg_2.d.x)), _wgslsmith_f_op_f32(arg_2.b.e - 1000f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1469f, arg_2.c.d.x, arg_2.c.d.x, arg_2.c.e), arg_2.d)))))), func_2().a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.d - arg_2.d) + arg_2.d) - arg_2.d) - vec4<f32>(-695f, -548f, -645f, _wgslsmith_f_op_f32(abs(arg_2.d.x)))));
    global0 = array<Struct_2, 17>();
    var var_1 = vec3<bool>(any(vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c.b, arg_2.c.b, -1i), vec3<i32>(-1630i, arg_1, 32940i)) > 7504i, global1[_wgslsmith_index_u32(firstTrailingBit(45525u), 14u)], true, select(true, global1[_wgslsmith_index_u32(u_input.a, 14u)], var_0.a))), false, arg_2.b.b >= arg_1);
    global1 = array<bool, 14>();
    let var_2 = _wgslsmith_add_u32(abs(u_input.a), _wgslsmith_mod_u32(20714u, ~(~59855u))) ^ 0u;
    return vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(var_2 >> (~4294967295u % 32u), 14u)], var_0.b.a)), !(false | var_0.c.c), true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(u_input.a, 1u, 76423u, u_input.a), vec4<u32>(1u, 84905u, 116996u, 29565u), vec4<bool>(global1[_wgslsmith_index_u32(18256u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)]))), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 825u), vec4<u32>(u_input.a, u_input.a, 24091u, 14264u))), 14u)], true, !(!global1[_wgslsmith_index_u32(34331u, 14u)]), global1[_wgslsmith_index_u32(4294967295u, 14u)]), select(!select(func_1(vec2<bool>(true, true), 1i, Struct_2(global1[_wgslsmith_index_u32(22874u, 14u)], Struct_1(global1[_wgslsmith_index_u32(6502u, 14u)], 36212i, true, vec3<f32>(2572f, 496f, -1771f), -1231f), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 14u)], 76988i, global1[_wgslsmith_index_u32(u_input.a, 14u)], vec3<f32>(-378f, -252f, 1379f), -385f), vec4<f32>(-698f, 248f, 2395f, -1585f))), func_1(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 14u)]), 61450i, Struct_2(false, Struct_1(global1[_wgslsmith_index_u32(u_input.a, 14u)], 4213i, true, vec3<f32>(205f, -318f, 1355f), -269f), Struct_1(global1[_wgslsmith_index_u32(6403u, 14u)], 12233i, false, vec3<f32>(-275f, 444f, 313f), -1130f), vec4<f32>(261f, -306f, -627f, 1590f))), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 14u)], true)), select(vec4<bool>(true, select(true, false, true), false, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 0u), 14u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], false, true, false), func_1(vec2<bool>(global1[_wgslsmith_index_u32(1u, 14u)], true), 0i, Struct_2(global1[_wgslsmith_index_u32(4294967295u, 14u)], Struct_1(true, 0i, false, vec3<f32>(444f, 1030f, 221f), -200f), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 14u)], -30447i, false, vec3<f32>(324f, -157f, -1000f), 105f), vec4<f32>(2072f, 324f, -665f, 1132f))), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], false, true, global1[_wgslsmith_index_u32(u_input.a, 14u)])), true), true), any(!(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)]))));
    let var_1 = min(vec4<i32>(_wgslsmith_clamp_i32(select(_wgslsmith_mod_i32(-2147483647i, -2147483647i), 23251i, true), 1i, 2147483647i << (~u_input.a % 32u)), -(firstTrailingBit(-40439i) ^ ~28882i), -29247i, 41396i), _wgslsmith_sub_vec4_i32(firstLeadingBit(-vec4<i32>(2147483647i, -47565i, -34270i, 0i)), _wgslsmith_mod_vec4_i32(~(~vec4<i32>(-1i, -38172i, -2147483647i, 20490i)), -vec4<i32>(2850i, -48833i, 2147483647i, 2564i))));
    var var_2 = func_2();
    var var_3 = func_1(var_0.yz, var_2.a.b.b, Struct_2(true, Struct_1(var_0.x, ~1i, func_1(!var_0.yz, _wgslsmith_clamp_i32(-2147483647i, 0i, 0i), Struct_2(global1[_wgslsmith_index_u32(u_input.a, 14u)], var_2.a.b, Struct_1(false, var_1.x, true, vec3<f32>(var_2.a.b.e, 743f, var_2.a.d.x), var_2.a.c.d.x), vec4<f32>(var_2.a.b.d.x, -735f, var_2.a.c.e, -2022f))).x, _wgslsmith_f_op_vec3_f32(-func_4(Struct_3(Struct_2(global1[_wgslsmith_index_u32(0u, 14u)], var_2.a.c, Struct_1(true, -32453i, var_0.x, var_2.a.c.d, var_2.a.d.x), vec4<f32>(var_2.a.b.d.x, var_2.a.b.e, var_2.a.c.e, -264f))), global0[_wgslsmith_index_u32(61490u, 17u)]).d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_2.a.c.d.x))), func_2().a.c, var_2.a.d)).wyw;
    var var_4 = ~(~(_wgslsmith_div_u32(u_input.a, u_input.a) << (_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a) % 32u))) < _wgslsmith_add_u32(u_input.a, ~u_input.a);
    global0 = array<Struct_2, 17>();
    let var_5 = _wgslsmith_mod_u32(~37759u, u_input.a >> (u_input.a % 32u));
    var var_6 = ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -1i) & var_1.xw, _wgslsmith_add_vec2_i32(vec2<i32>(var_2.a.b.b, var_2.a.b.b), var_1.xy))) ^ vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.c.b, 13902i, var_2.a.c.b, var_2.a.b.b), var_1 << (vec4<u32>(4294967295u, 1u, u_input.a, u_input.a) % vec4<u32>(32u))), ~var_2.a.b.b);
    let var_7 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1062i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(func_4(Struct_3(global2[_wgslsmith_index_u32(1u, 26u)]), global2[_wgslsmith_index_u32(var_5, 26u)]).e, _wgslsmith_f_op_f32(-1000f - -869f)) * vec2<f32>(_wgslsmith_f_op_f32(-756f * -487f), 1574f)), var_2.a.c.d.yx)));
}

