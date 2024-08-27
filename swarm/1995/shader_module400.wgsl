struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
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

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec4<bool>(true, true, true, true), Struct_2(vec2<f32>(-808f, 156f), 60127i, false, vec2<f32>(-1000f, -280f), vec3<f32>(831f, -995f, -848f)), Struct_2(vec2<f32>(-620f, -559f), -44315i, true, vec2<f32>(256f, -290f), vec3<f32>(391f, 1757f, -1000f)), vec3<bool>(true, true, true), vec2<f32>(-1641f, 1000f)), Struct_3(vec4<bool>(true, false, false, true), Struct_2(vec2<f32>(225f, -1081f), -26707i, true, vec2<f32>(-475f, 706f), vec3<f32>(-297f, 1000f, 1732f)), Struct_2(vec2<f32>(-1000f, 1622f), 55695i, true, vec2<f32>(-768f, 1000f), vec3<f32>(-1000f, -583f, 457f)), vec3<bool>(false, true, false), vec2<f32>(-449f, -1000f)), Struct_3(vec4<bool>(true, false, true, true), Struct_2(vec2<f32>(1061f, -1119f), 1i, false, vec2<f32>(527f, -2369f), vec3<f32>(718f, -1000f, 566f)), Struct_2(vec2<f32>(1141f, 658f), 1i, true, vec2<f32>(343f, 136f), vec3<f32>(1977f, 1572f, 1043f)), vec3<bool>(false, true, false), vec2<f32>(1383f, -580f)), Struct_3(vec4<bool>(true, true, false, true), Struct_2(vec2<f32>(254f, 726f), -49100i, false, vec2<f32>(-1452f, 1981f), vec3<f32>(2037f, -2059f, 685f)), Struct_2(vec2<f32>(-1620f, 404f), -25661i, true, vec2<f32>(-117f, -1000f), vec3<f32>(-2168f, -343f, -1453f)), vec3<bool>(false, true, false), vec2<f32>(654f, 243f)), Struct_3(vec4<bool>(true, true, true, true), Struct_2(vec2<f32>(713f, -579f), -3878i, false, vec2<f32>(1207f, 420f), vec3<f32>(-499f, -695f, -2222f)), Struct_2(vec2<f32>(-713f, -611f), 2147483647i, false, vec2<f32>(-619f, -103f), vec3<f32>(-749f, -678f, -498f)), vec3<bool>(true, true, false), vec2<f32>(1127f, -277f)), Struct_3(vec4<bool>(false, false, false, true), Struct_2(vec2<f32>(1000f, -307f), 25827i, false, vec2<f32>(503f, 1525f), vec3<f32>(-456f, -621f, 332f)), Struct_2(vec2<f32>(-982f, -1342f), -29054i, true, vec2<f32>(-1803f, -790f), vec3<f32>(1000f, -728f, 544f)), vec3<bool>(false, false, false), vec2<f32>(508f, 988f)), Struct_3(vec4<bool>(false, true, true, true), Struct_2(vec2<f32>(1297f, -795f), -13303i, true, vec2<f32>(242f, 447f), vec3<f32>(322f, -1000f, 964f)), Struct_2(vec2<f32>(-994f, 1392f), 0i, false, vec2<f32>(441f, -977f), vec3<f32>(1954f, -3188f, -228f)), vec3<bool>(false, true, true), vec2<f32>(626f, 1064f)), Struct_3(vec4<bool>(false, false, false, false), Struct_2(vec2<f32>(1614f, 851f), 19579i, true, vec2<f32>(-631f, 1423f), vec3<f32>(1016f, 584f, -429f)), Struct_2(vec2<f32>(324f, 1374f), 2147483647i, true, vec2<f32>(-1202f, -500f), vec3<f32>(-727f, 552f, 362f)), vec3<bool>(true, true, false), vec2<f32>(1000f, 1774f)), Struct_3(vec4<bool>(true, true, true, true), Struct_2(vec2<f32>(-385f, -1710f), 11516i, true, vec2<f32>(424f, 1928f), vec3<f32>(-1000f, 1000f, 242f)), Struct_2(vec2<f32>(-1226f, 1523f), 31612i, false, vec2<f32>(1000f, -359f), vec3<f32>(-417f, -418f, -1619f)), vec3<bool>(true, true, true), vec2<f32>(2006f, -1031f)), Struct_3(vec4<bool>(false, false, true, false), Struct_2(vec2<f32>(-161f, 737f), 14005i, true, vec2<f32>(1009f, 737f), vec3<f32>(-104f, 135f, -734f)), Struct_2(vec2<f32>(705f, 257f), 2147483647i, false, vec2<f32>(283f, 997f), vec3<f32>(749f, -1000f, 439f)), vec3<bool>(false, true, false), vec2<f32>(-613f, 1201f)), Struct_3(vec4<bool>(false, false, false, false), Struct_2(vec2<f32>(-326f, 1469f), -1i, true, vec2<f32>(-1126f, -903f), vec3<f32>(-1000f, -1549f, -1198f)), Struct_2(vec2<f32>(754f, -123f), -61637i, false, vec2<f32>(1000f, 383f), vec3<f32>(400f, 1224f, -810f)), vec3<bool>(true, true, true), vec2<f32>(1887f, -457f)), Struct_3(vec4<bool>(false, false, false, false), Struct_2(vec2<f32>(-372f, -2119f), 2147483647i, false, vec2<f32>(764f, -863f), vec3<f32>(-862f, -1360f, 402f)), Struct_2(vec2<f32>(1238f, 699f), 2147483647i, false, vec2<f32>(-274f, -276f), vec3<f32>(370f, 210f, -325f)), vec3<bool>(false, true, true), vec2<f32>(-483f, -1152f)), Struct_3(vec4<bool>(false, false, true, false), Struct_2(vec2<f32>(-1474f, -337f), 1i, true, vec2<f32>(-169f, 1000f), vec3<f32>(1056f, -825f, -993f)), Struct_2(vec2<f32>(-200f, 1469f), 31308i, false, vec2<f32>(555f, 1000f), vec3<f32>(330f, 320f, -356f)), vec3<bool>(false, true, false), vec2<f32>(-1583f, -145f)), Struct_3(vec4<bool>(true, false, false, true), Struct_2(vec2<f32>(-598f, 117f), -1i, true, vec2<f32>(283f, -984f), vec3<f32>(242f, 1000f, -1439f)), Struct_2(vec2<f32>(104f, 1109f), -1i, false, vec2<f32>(-1694f, -2354f), vec3<f32>(-1099f, -327f, 1019f)), vec3<bool>(false, false, true), vec2<f32>(936f, 1193f)), Struct_3(vec4<bool>(true, false, true, true), Struct_2(vec2<f32>(172f, -1776f), 0i, false, vec2<f32>(663f, -1430f), vec3<f32>(549f, -750f, -869f)), Struct_2(vec2<f32>(-744f, 2275f), -1453i, true, vec2<f32>(615f, -947f), vec3<f32>(-598f, 1725f, -1090f)), vec3<bool>(false, false, true), vec2<f32>(312f, -981f)), Struct_3(vec4<bool>(true, true, true, true), Struct_2(vec2<f32>(-782f, -1053f), 2147483647i, false, vec2<f32>(-462f, -310f), vec3<f32>(-696f, 409f, -745f)), Struct_2(vec2<f32>(-462f, -800f), 1i, false, vec2<f32>(-1153f, -2479f), vec3<f32>(569f, 1643f, 927f)), vec3<bool>(true, true, false), vec2<f32>(1706f, -1753f)), Struct_3(vec4<bool>(false, true, false, false), Struct_2(vec2<f32>(1202f, 1742f), 1i, false, vec2<f32>(-1000f, -1264f), vec3<f32>(552f, -462f, 283f)), Struct_2(vec2<f32>(1000f, -1000f), 0i, true, vec2<f32>(-1971f, 306f), vec3<f32>(2725f, -327f, -416f)), vec3<bool>(false, false, true), vec2<f32>(1434f, -381f)), Struct_3(vec4<bool>(true, true, true, true), Struct_2(vec2<f32>(-1173f, 310f), -29137i, true, vec2<f32>(-396f, 757f), vec3<f32>(541f, -865f, -1034f)), Struct_2(vec2<f32>(-903f, 899f), 0i, false, vec2<f32>(-427f, -1988f), vec3<f32>(672f, 631f, -738f)), vec3<bool>(true, false, true), vec2<f32>(-216f, 1119f)), Struct_3(vec4<bool>(false, false, true, false), Struct_2(vec2<f32>(-1919f, -139f), -13534i, false, vec2<f32>(-174f, 907f), vec3<f32>(-1116f, -1651f, -2153f)), Struct_2(vec2<f32>(167f, -1000f), 14032i, true, vec2<f32>(-1472f, 2094f), vec3<f32>(173f, -590f, 283f)), vec3<bool>(true, true, true), vec2<f32>(-168f, 729f)), Struct_3(vec4<bool>(false, false, false, false), Struct_2(vec2<f32>(-623f, -472f), 1i, false, vec2<f32>(-453f, -836f), vec3<f32>(-1537f, 356f, -1383f)), Struct_2(vec2<f32>(779f, -405f), -1i, true, vec2<f32>(128f, 216f), vec3<f32>(-751f, -1646f, 1108f)), vec3<bool>(true, false, true), vec2<f32>(-954f, 1000f)), Struct_3(vec4<bool>(true, false, false, false), Struct_2(vec2<f32>(1123f, 2026f), 1737i, true, vec2<f32>(-2566f, -580f), vec3<f32>(-529f, -636f, 1000f)), Struct_2(vec2<f32>(-828f, -459f), 1165i, true, vec2<f32>(-1370f, -374f), vec3<f32>(323f, 106f, -1115f)), vec3<bool>(false, false, true), vec2<f32>(683f, -1613f)), Struct_3(vec4<bool>(true, false, true, false), Struct_2(vec2<f32>(1826f, 854f), -1i, true, vec2<f32>(1448f, 783f), vec3<f32>(-731f, 243f, -224f)), Struct_2(vec2<f32>(234f, -245f), 24215i, true, vec2<f32>(-248f, 1663f), vec3<f32>(-981f, -491f, -1202f)), vec3<bool>(true, true, true), vec2<f32>(725f, -1000f)), Struct_3(vec4<bool>(true, false, true, false), Struct_2(vec2<f32>(2299f, -1000f), -1i, false, vec2<f32>(-255f, -1085f), vec3<f32>(580f, 774f, -195f)), Struct_2(vec2<f32>(2167f, -489f), 11966i, true, vec2<f32>(358f, 1344f), vec3<f32>(-170f, -209f, -1244f)), vec3<bool>(true, true, true), vec2<f32>(1515f, -192f)), Struct_3(vec4<bool>(true, true, false, false), Struct_2(vec2<f32>(2001f, -1848f), 1i, false, vec2<f32>(-1000f, 1478f), vec3<f32>(1215f, -531f, 127f)), Struct_2(vec2<f32>(-2234f, 339f), 49051i, true, vec2<f32>(503f, 1199f), vec3<f32>(-1000f, -1816f, -447f)), vec3<bool>(true, true, true), vec2<f32>(-1470f, 208f)), Struct_3(vec4<bool>(true, true, false, true), Struct_2(vec2<f32>(1030f, -996f), 2147483647i, false, vec2<f32>(639f, -1986f), vec3<f32>(-1247f, -627f, -733f)), Struct_2(vec2<f32>(-1355f, -954f), 42009i, false, vec2<f32>(1025f, -500f), vec3<f32>(555f, -411f, -522f)), vec3<bool>(false, false, true), vec2<f32>(1000f, -1000f)), Struct_3(vec4<bool>(false, false, true, false), Struct_2(vec2<f32>(-109f, 488f), i32(-2147483648), true, vec2<f32>(-427f, 917f), vec3<f32>(-2123f, 263f, -154f)), Struct_2(vec2<f32>(-396f, 305f), 26040i, true, vec2<f32>(-1373f, -1000f), vec3<f32>(-705f, 1555f, 511f)), vec3<bool>(false, true, true), vec2<f32>(169f, 1348f)), Struct_3(vec4<bool>(true, false, true, true), Struct_2(vec2<f32>(2146f, 1105f), 1i, true, vec2<f32>(-158f, -1767f), vec3<f32>(204f, -246f, 234f)), Struct_2(vec2<f32>(850f, 493f), -44627i, true, vec2<f32>(-201f, 510f), vec3<f32>(-571f, -1321f, 225f)), vec3<bool>(true, false, false), vec2<f32>(853f, -617f)), Struct_3(vec4<bool>(false, true, false, false), Struct_2(vec2<f32>(-1570f, 371f), 0i, true, vec2<f32>(-1370f, 1302f), vec3<f32>(-1151f, 321f, 1359f)), Struct_2(vec2<f32>(-637f, -216f), -70001i, true, vec2<f32>(2331f, 499f), vec3<f32>(-1800f, -353f, -146f)), vec3<bool>(true, false, true), vec2<f32>(-2684f, 1139f)), Struct_3(vec4<bool>(true, false, true, false), Struct_2(vec2<f32>(-1404f, 1061f), 0i, false, vec2<f32>(1353f, 353f), vec3<f32>(-1000f, -1475f, -1000f)), Struct_2(vec2<f32>(-781f, 1074f), 21812i, true, vec2<f32>(-285f, 337f), vec3<f32>(-742f, 1837f, -273f)), vec3<bool>(true, true, true), vec2<f32>(-1000f, -178f)), Struct_3(vec4<bool>(false, true, false, true), Struct_2(vec2<f32>(-534f, -795f), -21721i, true, vec2<f32>(161f, 189f), vec3<f32>(156f, -502f, -2461f)), Struct_2(vec2<f32>(873f, 340f), 0i, true, vec2<f32>(-1097f, -175f), vec3<f32>(-557f, -1000f, -763f)), vec3<bool>(true, false, true), vec2<f32>(-1267f, -889f)), Struct_3(vec4<bool>(true, true, false, false), Struct_2(vec2<f32>(1194f, 927f), -40890i, false, vec2<f32>(1443f, -1437f), vec3<f32>(-742f, -1000f, 209f)), Struct_2(vec2<f32>(240f, -566f), 0i, false, vec2<f32>(1573f, -1639f), vec3<f32>(-1316f, 320f, 1000f)), vec3<bool>(true, false, true), vec2<f32>(-1949f, -742f)), Struct_3(vec4<bool>(true, true, false, false), Struct_2(vec2<f32>(1085f, 1356f), -2991i, false, vec2<f32>(-705f, 553f), vec3<f32>(861f, 1303f, 264f)), Struct_2(vec2<f32>(-1409f, 458f), 1i, true, vec2<f32>(-467f, 298f), vec3<f32>(-1045f, 449f, 922f)), vec3<bool>(false, false, true), vec2<f32>(159f, -475f)));

var<private> global1: array<Struct_3, 32>;

var<private> global2: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true));

var<private> global3: array<u32, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = array<Struct_3, 32>();
    let var_0 = true;
    let var_1 = i32(-1i) * -2147483647i;
    var var_2 = u_input.d.x;
    global1 = array<Struct_3, 32>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-326f)) - -1164f);
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(-971f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-861f), ~0u)), 1057f));
    let var_1 = vec4<u32>(_wgslsmith_add_u32(1u, arg_0.x), select(4294967295u, 0u, all(select(!global2[_wgslsmith_index_u32(arg_0.x, 3u)], vec4<bool>(true, false, true, false), global2[_wgslsmith_index_u32(~arg_0.x, 3u)]))), max(select(1u, ~(22791u ^ global3[_wgslsmith_index_u32(arg_0.x, 28u)]), all(vec4<bool>(true, false, false, true)) & false), ~u_input.b), ~(~arg_0.x));
    var var_2 = firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-13646i, countOneBits(35841i), u_input.a, ~u_input.a), -vec4<i32>(u_input.a, u_input.c.x, u_input.a, u_input.c.x) | _wgslsmith_div_vec4_i32(vec4<i32>(5424i, 2656i, 15895i, 0i), vec4<i32>(58669i, u_input.c.x, 1i, 2998i))), select(-vec4<i32>(u_input.a, u_input.a, 2147483647i, 0i), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -38784i, u_input.c.x, u_input.c.x), vec4<i32>(1i, -1500i, -49985i, u_input.c.x)), -vec4<i32>(u_input.a, u_input.c.x, 0i, 2147483647i)), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)) > _wgslsmith_f_op_f32(-733f - 1776f))));
    let var_3 = Struct_3(global2[_wgslsmith_index_u32(arg_0.x, 3u)], Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1434f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-142f, var_0.x)))), 54354i, _wgslsmith_f_op_f32(f32(-1f) * -291f) >= _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(-166f, 470f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(597f, -1244f, 238f), vec3<f32>(2321f, 526f, var_0.x), vec3<bool>(true, true, false))), vec3<f32>(var_0.x, -121f, var_0.x))))), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-348f, var_0.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x))), vec2<f32>(var_0.x, -112f), select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), ~(_wgslsmith_clamp_i32(u_input.c.x, 44595i, u_input.a) & u_input.c.x), false, vec2<f32>(_wgslsmith_f_op_f32(ceil(-1660f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1461f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(740f, -889f, -1471f) - vec3<f32>(var_0.x, 2456f, 2371f)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 426f, var_0.x), vec3<f32>(var_0.x, -211f, 636f))))), select(vec3<bool>(_wgslsmith_f_op_f32(var_0.x + var_0.x) >= _wgslsmith_div_f32(var_0.x, var_0.x), true, true), vec3<bool>(false | all(vec3<bool>(true, true, true)), _wgslsmith_div_u32(1u, global3[_wgslsmith_index_u32(0u, 28u)]) >= var_1.x, true), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 721f) - vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2241f, var_0.x))))))));
    var var_4 = _wgslsmith_f_op_f32(step(442f, _wgslsmith_div_f32(830f, _wgslsmith_f_op_f32(f32(-1f) * -776f))));
    return 0i;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = u_input.c.x;
    let var_1 = -1584f;
    let var_2 = _wgslsmith_add_i32(u_input.c.x, func_2(select(arg_0 ^ ~vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 28u)], u_input.d.x, arg_0.x), arg_0, select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)))));
    global1 = array<Struct_3, 32>();
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(1546f), 61862u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_1, var_1)), _wgslsmith_f_op_f32(-var_1)))))), _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1340f, 1039f))), var_1))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), vec2<f32>(var_1, var_1)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))))))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, ~(-4614i), var_2 ^ 1i), u_input.c), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -598f) + vec2<f32>(-1908f, var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-865f, var_1)), all(vec2<bool>(true, true)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-780f, 713f)), var_1, _wgslsmith_f_op_f32(abs(-2320f))) * vec3<f32>(var_1, 1000f, _wgslsmith_f_op_f32(abs(277f)))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<bool>) -> u32 {
    var var_0 = vec3<i32>(u_input.a, (i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-1795i, 2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(arg_0.b, -16149i, -2147483647i, arg_0.b))) ^ countOneBits(-2147483647i), -1i);
    var var_1 = vec4<u32>(select(min(~0u, u_input.b), u_input.b, all(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(105780u, 28u)] | 0u, firstLeadingBit(43093u)), 3u)])), global3[_wgslsmith_index_u32(~42656u, 28u)] >> (reverseBits(_wgslsmith_mod_u32(u_input.b, 41420u)) % 32u), _wgslsmith_mult_u32(0u, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(22042u, global3[_wgslsmith_index_u32(1u, 28u)]), countOneBits(25050u)) << ((u_input.d.x & (4294967295u & u_input.d.x)) % 32u), 28u)]), _wgslsmith_sub_u32(38838u, _wgslsmith_clamp_u32(0u, 1u, ~(~41369u))));
    let var_2 = ~u_input.d.zx;
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(arg_1 + -1339f), _wgslsmith_f_op_f32(-arg_1), -1532f), _wgslsmith_div_vec3_f32(arg_0.e, arg_0.e))), _wgslsmith_f_op_vec3_f32(arg_0.e + vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_0.d.x, arg_1)))), _wgslsmith_f_op_f32(-282f + _wgslsmith_f_op_f32(750f - arg_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1792f)) * _wgslsmith_f_op_f32(arg_0.d.x * 741f))))));
    var_1 = _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_2.x, 48513u, _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(0u, 28u)], 5617u)), reverseBits(vec4<u32>(var_1.x, var_2.x, var_1.x, 57744u)) << (vec4<u32>(var_1.x, 2244u, 1u, 30019u) % vec4<u32>(32u))), ~vec4<u32>(1u << (1u % 32u), var_2.x, 4294967295u, var_2.x));
    return ~(~(~u_input.b));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: u32) -> Struct_2 {
    global1 = array<Struct_3, 32>();
    global3 = array<u32, 28>();
    let var_0 = Struct_3(!vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, any(global2[_wgslsmith_index_u32(~arg_0, 3u)])), func_1(abs(u_input.d)), func_1(_wgslsmith_mult_vec3_u32(~u_input.d, u_input.d)), !(!vec3<bool>(func_1(u_input.d).c, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-230f, -673f))))));
    var var_1 = !var_0.d;
    let var_2 = Struct_3(var_0.a, Struct_2(var_0.b.a, ~arg_1 & arg_1, var_1.x, var_0.b.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2818f, 345f, 737f))))), func_1(reverseBits(~min(u_input.d, vec3<u32>(arg_0, arg_0, u_input.d.x)))), select(!vec3<bool>(false, !var_0.d.x, var_0.c.c & var_1.x), var_0.d, select(select(var_0.a.zxx, vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, false, true)), vec3<bool>(1u <= u_input.b, true, var_0.b.c), var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(round(var_0.e.x)), -998f));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, u_input.a), vec2<i32>(12921i, 49707i), vec2<bool>(true, false)), ~u_input.c.xz), max(u_input.a, 0i), u_input.a, -2147483647i), -_wgslsmith_sub_vec4_i32(-vec4<i32>(-52294i, -51425i, 0i, 11629i), ~(~vec4<i32>(2147483647i, -2147483647i, -7071i, u_input.a))));
    let var_1 = func_5(~_wgslsmith_mult_u32(func_4(func_1(u_input.d), _wgslsmith_f_op_f32(max(182f, 2552f)), vec3<bool>(false, true, false)), global3[_wgslsmith_index_u32(1u ^ u_input.d.x, 28u)]), var_0.x, 61190u);
    let var_2 = Struct_2(var_1.d, ~1i, !var_1.c, _wgslsmith_f_op_vec2_f32(var_1.d * var_1.e.xy), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, var_1.e.x)) * func_1(u_input.d).e))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.x), -160f, _wgslsmith_div_f32(533f, var_1.a.x))))));
    var var_3 = Struct_3(global2[_wgslsmith_index_u32(4294967295u, 3u)], Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1810f, var_2.d.x) * _wgslsmith_f_op_vec2_f32(select(var_1.e.yy, var_2.d, true))))), _wgslsmith_dot_vec3_i32(-var_0.xwz, var_0.wxw), (_wgslsmith_clamp_i32(u_input.a, -5574i, -25421i) ^ 0i) >= ~_wgslsmith_clamp_i32(3637i, 0i, u_input.c.x), _wgslsmith_div_vec2_f32(var_2.d, _wgslsmith_f_op_vec2_f32(var_2.e.xz - var_2.e.xy)), _wgslsmith_f_op_vec3_f32(max(var_1.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1577f, var_1.d.x, 1550f)) + vec3<f32>(var_2.d.x, 483f, var_2.a.x))))), func_1(vec3<u32>(_wgslsmith_add_u32(4294967295u << (global3[_wgslsmith_index_u32(4294967295u, 28u)] % 32u), _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(u_input.b, 28u)], 1u, u_input.b)), 114035u, ~global3[_wgslsmith_index_u32(84966u, 28u)] << (abs(4294967295u) % 32u))), !vec3<bool>(var_1.c, !var_1.c, true), func_5(reverseBits(global3[_wgslsmith_index_u32(u_input.b, 28u)]), var_1.b, u_input.b).d);
    var var_4 = !var_3.a.wzx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f)));
}

