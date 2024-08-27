struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(987f, true, vec3<f32>(-545f, 702f, -434f)), Struct_2(Struct_1(805f, true, vec3<f32>(-1591f, -1648f, -1189f)), Struct_1(-1115f, false, vec3<f32>(1595f, 540f, 1527f)), Struct_1(909f, true, vec3<f32>(2128f, -247f, -118f)), Struct_1(-175f, false, vec3<f32>(735f, -1000f, 200f))), Struct_1(169f, false, vec3<f32>(-514f, 1910f, 627f))), Struct_3(Struct_1(883f, false, vec3<f32>(1779f, -755f, -182f)), Struct_2(Struct_1(595f, false, vec3<f32>(3046f, 1000f, 775f)), Struct_1(-202f, true, vec3<f32>(359f, -1972f, -218f)), Struct_1(1480f, false, vec3<f32>(-1738f, -931f, 1122f)), Struct_1(3020f, false, vec3<f32>(2113f, 1159f, 263f))), Struct_1(-620f, false, vec3<f32>(-111f, 314f, 932f))), Struct_3(Struct_1(-255f, true, vec3<f32>(1314f, -1320f, -691f)), Struct_2(Struct_1(296f, true, vec3<f32>(765f, -855f, -632f)), Struct_1(-1347f, false, vec3<f32>(155f, -262f, 742f)), Struct_1(319f, false, vec3<f32>(420f, 1129f, -138f)), Struct_1(711f, true, vec3<f32>(2397f, -575f, 757f))), Struct_1(1971f, false, vec3<f32>(-595f, 377f, -1000f))), Struct_3(Struct_1(-935f, false, vec3<f32>(-1000f, 913f, -1469f)), Struct_2(Struct_1(553f, true, vec3<f32>(1434f, 189f, 1000f)), Struct_1(998f, false, vec3<f32>(-1583f, 679f, -543f)), Struct_1(-168f, true, vec3<f32>(-322f, 213f, 495f)), Struct_1(-326f, true, vec3<f32>(1000f, 944f, -131f))), Struct_1(426f, true, vec3<f32>(-604f, 587f, -286f))), Struct_3(Struct_1(-1155f, false, vec3<f32>(900f, 362f, -1000f)), Struct_2(Struct_1(-1353f, false, vec3<f32>(1786f, -1976f, 1377f)), Struct_1(1657f, true, vec3<f32>(949f, 841f, 2262f)), Struct_1(-287f, false, vec3<f32>(-1407f, -1527f, -141f)), Struct_1(-1292f, false, vec3<f32>(-1000f, -858f, 2211f))), Struct_1(-1588f, true, vec3<f32>(-111f, -432f, 261f))), Struct_3(Struct_1(281f, false, vec3<f32>(794f, 219f, -1159f)), Struct_2(Struct_1(1584f, false, vec3<f32>(1182f, 720f, -569f)), Struct_1(-2001f, true, vec3<f32>(2181f, -101f, -1000f)), Struct_1(1393f, true, vec3<f32>(4375f, 596f, -296f)), Struct_1(846f, false, vec3<f32>(-422f, -558f, 838f))), Struct_1(-567f, false, vec3<f32>(1000f, 1465f, -814f))), Struct_3(Struct_1(-142f, true, vec3<f32>(417f, -1041f, 437f)), Struct_2(Struct_1(-502f, false, vec3<f32>(1458f, -826f, 119f)), Struct_1(-1271f, false, vec3<f32>(973f, -700f, 794f)), Struct_1(1000f, true, vec3<f32>(1000f, 359f, -260f)), Struct_1(134f, true, vec3<f32>(-185f, -1134f, -2856f))), Struct_1(-1900f, false, vec3<f32>(1000f, 209f, -128f))), Struct_3(Struct_1(267f, true, vec3<f32>(-357f, -447f, -1331f)), Struct_2(Struct_1(1144f, true, vec3<f32>(543f, 281f, 402f)), Struct_1(541f, false, vec3<f32>(-1226f, 1154f, -306f)), Struct_1(378f, true, vec3<f32>(892f, 1000f, 700f)), Struct_1(251f, false, vec3<f32>(335f, 1335f, -1522f))), Struct_1(1007f, true, vec3<f32>(-1397f, 803f, -311f))), Struct_3(Struct_1(753f, true, vec3<f32>(-2430f, -1406f, -271f)), Struct_2(Struct_1(876f, false, vec3<f32>(1232f, 1196f, 151f)), Struct_1(-315f, false, vec3<f32>(-1224f, -874f, -275f)), Struct_1(-930f, false, vec3<f32>(979f, -944f, -1776f)), Struct_1(692f, false, vec3<f32>(-1000f, 359f, -113f))), Struct_1(200f, true, vec3<f32>(640f, 112f, -318f))), Struct_3(Struct_1(129f, false, vec3<f32>(1323f, 128f, 2031f)), Struct_2(Struct_1(-1034f, false, vec3<f32>(174f, -1300f, -240f)), Struct_1(-753f, false, vec3<f32>(-839f, 1391f, 131f)), Struct_1(628f, false, vec3<f32>(2754f, -1000f, -754f)), Struct_1(126f, true, vec3<f32>(-565f, 764f, 344f))), Struct_1(1245f, true, vec3<f32>(597f, -1005f, 944f))), Struct_3(Struct_1(-433f, true, vec3<f32>(1354f, 1494f, 366f)), Struct_2(Struct_1(272f, true, vec3<f32>(-1000f, 231f, -480f)), Struct_1(-259f, false, vec3<f32>(-558f, -1345f, 693f)), Struct_1(-1049f, true, vec3<f32>(564f, -1097f, 650f)), Struct_1(1000f, false, vec3<f32>(-486f, -430f, -1934f))), Struct_1(-2120f, true, vec3<f32>(-191f, 1000f, -1020f))), Struct_3(Struct_1(637f, false, vec3<f32>(880f, 766f, 1000f)), Struct_2(Struct_1(-228f, false, vec3<f32>(625f, -1013f, 269f)), Struct_1(1010f, true, vec3<f32>(-885f, -1362f, -2091f)), Struct_1(-595f, false, vec3<f32>(-124f, 744f, 1000f)), Struct_1(-1034f, false, vec3<f32>(826f, -335f, -547f))), Struct_1(530f, false, vec3<f32>(-750f, 727f, -1000f))), Struct_3(Struct_1(-1450f, true, vec3<f32>(-610f, -284f, -2070f)), Struct_2(Struct_1(-273f, true, vec3<f32>(-307f, -491f, -704f)), Struct_1(-985f, false, vec3<f32>(-437f, -1000f, 1000f)), Struct_1(1000f, true, vec3<f32>(669f, 663f, 753f)), Struct_1(763f, true, vec3<f32>(399f, -179f, -208f))), Struct_1(510f, false, vec3<f32>(-333f, 1407f, -256f))), Struct_3(Struct_1(225f, false, vec3<f32>(237f, 1233f, -297f)), Struct_2(Struct_1(1891f, false, vec3<f32>(-789f, 432f, -1404f)), Struct_1(-425f, false, vec3<f32>(847f, -927f, -1758f)), Struct_1(-1446f, true, vec3<f32>(223f, 1000f, -158f)), Struct_1(1000f, true, vec3<f32>(-364f, -1011f, -1228f))), Struct_1(626f, false, vec3<f32>(-1229f, 103f, 1584f))), Struct_3(Struct_1(-116f, true, vec3<f32>(-2683f, -290f, 213f)), Struct_2(Struct_1(-753f, true, vec3<f32>(930f, 132f, 290f)), Struct_1(-1402f, true, vec3<f32>(-115f, 161f, 770f)), Struct_1(1000f, true, vec3<f32>(-1189f, 816f, 1000f)), Struct_1(-387f, true, vec3<f32>(-689f, 1000f, -254f))), Struct_1(-1000f, false, vec3<f32>(-958f, -2634f, -1000f))), Struct_3(Struct_1(1000f, true, vec3<f32>(2147f, 169f, -1934f)), Struct_2(Struct_1(769f, true, vec3<f32>(-743f, -1731f, 433f)), Struct_1(1574f, false, vec3<f32>(1658f, -568f, -1877f)), Struct_1(2011f, false, vec3<f32>(1227f, -1594f, 273f)), Struct_1(-1802f, true, vec3<f32>(1218f, -331f, -548f))), Struct_1(-298f, true, vec3<f32>(1651f, -1136f, -238f))), Struct_3(Struct_1(1799f, false, vec3<f32>(290f, -524f, -122f)), Struct_2(Struct_1(-605f, false, vec3<f32>(-692f, 699f, 260f)), Struct_1(1089f, true, vec3<f32>(-1000f, -902f, -394f)), Struct_1(-1567f, true, vec3<f32>(-484f, -900f, -355f)), Struct_1(-1044f, false, vec3<f32>(882f, -825f, 1234f))), Struct_1(-290f, false, vec3<f32>(-1727f, 480f, 1442f))), Struct_3(Struct_1(635f, false, vec3<f32>(-374f, 315f, 304f)), Struct_2(Struct_1(-956f, true, vec3<f32>(-729f, 1132f, -586f)), Struct_1(389f, false, vec3<f32>(589f, -1326f, -963f)), Struct_1(1636f, false, vec3<f32>(-1197f, -132f, 1000f)), Struct_1(1445f, false, vec3<f32>(-215f, -268f, 1374f))), Struct_1(-294f, true, vec3<f32>(931f, 331f, -1000f))), Struct_3(Struct_1(589f, false, vec3<f32>(-200f, 542f, 1032f)), Struct_2(Struct_1(872f, true, vec3<f32>(1111f, 1243f, -319f)), Struct_1(-171f, false, vec3<f32>(1361f, 265f, 276f)), Struct_1(956f, false, vec3<f32>(-847f, -1388f, 402f)), Struct_1(-712f, false, vec3<f32>(500f, 1000f, -780f))), Struct_1(-3393f, true, vec3<f32>(200f, -636f, 1960f))), Struct_3(Struct_1(-815f, false, vec3<f32>(-1391f, -498f, 610f)), Struct_2(Struct_1(-1203f, true, vec3<f32>(-831f, 574f, -753f)), Struct_1(348f, true, vec3<f32>(2182f, -1000f, 942f)), Struct_1(-1539f, false, vec3<f32>(-1272f, -1559f, -1711f)), Struct_1(163f, false, vec3<f32>(1458f, 1430f, -1000f))), Struct_1(-490f, false, vec3<f32>(-1041f, -1647f, 380f))), Struct_3(Struct_1(-1330f, false, vec3<f32>(2071f, 444f, -114f)), Struct_2(Struct_1(-1614f, false, vec3<f32>(1492f, -505f, 184f)), Struct_1(2315f, true, vec3<f32>(2162f, -1002f, 342f)), Struct_1(-1985f, false, vec3<f32>(-701f, -436f, -1000f)), Struct_1(-1229f, true, vec3<f32>(-176f, -1500f, -182f))), Struct_1(500f, true, vec3<f32>(321f, 387f, -264f))), Struct_3(Struct_1(-1206f, true, vec3<f32>(902f, -1022f, -1411f)), Struct_2(Struct_1(-296f, true, vec3<f32>(-980f, -228f, -883f)), Struct_1(1000f, true, vec3<f32>(-301f, 953f, -936f)), Struct_1(-107f, false, vec3<f32>(160f, -1144f, -391f)), Struct_1(933f, true, vec3<f32>(-559f, 919f, -1052f))), Struct_1(238f, false, vec3<f32>(435f, -573f, -1044f))), Struct_3(Struct_1(-2065f, false, vec3<f32>(1330f, -204f, 202f)), Struct_2(Struct_1(1087f, true, vec3<f32>(-247f, 1273f, -911f)), Struct_1(-555f, false, vec3<f32>(-416f, -588f, -387f)), Struct_1(-801f, false, vec3<f32>(1404f, -653f, 141f)), Struct_1(-844f, true, vec3<f32>(1000f, -1721f, 491f))), Struct_1(682f, true, vec3<f32>(-1000f, 456f, -533f))), Struct_3(Struct_1(120f, true, vec3<f32>(-1107f, -1076f, -647f)), Struct_2(Struct_1(403f, false, vec3<f32>(1394f, -742f, -190f)), Struct_1(-923f, false, vec3<f32>(-413f, 1248f, 532f)), Struct_1(758f, false, vec3<f32>(-840f, 286f, 718f)), Struct_1(-113f, false, vec3<f32>(779f, -2575f, -317f))), Struct_1(-1033f, true, vec3<f32>(-998f, 923f, -622f))), Struct_3(Struct_1(1099f, false, vec3<f32>(-1920f, -1167f, 651f)), Struct_2(Struct_1(-1927f, true, vec3<f32>(-286f, -937f, -1319f)), Struct_1(-459f, false, vec3<f32>(-668f, -1183f, 1000f)), Struct_1(-1000f, false, vec3<f32>(1465f, -328f, -507f)), Struct_1(-334f, true, vec3<f32>(-359f, -1095f, -1266f))), Struct_1(1258f, true, vec3<f32>(1048f, -179f, 1000f))), Struct_3(Struct_1(402f, true, vec3<f32>(193f, -2749f, 220f)), Struct_2(Struct_1(-353f, true, vec3<f32>(-286f, -1250f, 346f)), Struct_1(929f, false, vec3<f32>(-1000f, 229f, 698f)), Struct_1(1202f, false, vec3<f32>(-960f, -445f, -1321f)), Struct_1(-635f, true, vec3<f32>(-2043f, -418f, 1000f))), Struct_1(-239f, false, vec3<f32>(1175f, -1152f, 826f))), Struct_3(Struct_1(-972f, false, vec3<f32>(1000f, -1668f, -576f)), Struct_2(Struct_1(-820f, true, vec3<f32>(399f, -191f, 297f)), Struct_1(-112f, false, vec3<f32>(1441f, -763f, -424f)), Struct_1(623f, false, vec3<f32>(529f, -288f, -353f)), Struct_1(-1000f, false, vec3<f32>(140f, -1000f, 1172f))), Struct_1(-1409f, true, vec3<f32>(-1000f, 561f, 130f))), Struct_3(Struct_1(-1000f, false, vec3<f32>(-281f, -196f, 125f)), Struct_2(Struct_1(-1603f, true, vec3<f32>(638f, -1351f, -126f)), Struct_1(-1261f, false, vec3<f32>(-1000f, 1444f, 1000f)), Struct_1(-1652f, true, vec3<f32>(1232f, 513f, 370f)), Struct_1(-530f, false, vec3<f32>(1072f, 759f, -1000f))), Struct_1(1000f, false, vec3<f32>(-937f, 1695f, -259f))), Struct_3(Struct_1(339f, true, vec3<f32>(-1497f, 534f, -947f)), Struct_2(Struct_1(192f, true, vec3<f32>(-752f, 843f, 123f)), Struct_1(-1509f, true, vec3<f32>(1846f, 2104f, -1000f)), Struct_1(-235f, false, vec3<f32>(-1352f, 2230f, 2400f)), Struct_1(1000f, false, vec3<f32>(1150f, -503f, -802f))), Struct_1(-886f, false, vec3<f32>(806f, -572f, -648f))), Struct_3(Struct_1(-758f, true, vec3<f32>(1159f, 362f, -404f)), Struct_2(Struct_1(1267f, true, vec3<f32>(-259f, -491f, -1615f)), Struct_1(-1485f, true, vec3<f32>(-1000f, 2010f, 634f)), Struct_1(-460f, true, vec3<f32>(467f, -281f, -1000f)), Struct_1(398f, true, vec3<f32>(120f, -1050f, -1023f))), Struct_1(-507f, false, vec3<f32>(1005f, 544f, -798f))));

var<private> global1: vec4<bool>;

var<private> global2: array<bool, 24> = array<bool, 24>(false, true, false, false, false, false, true, true, true, true, false, true, true, true, false, false, false, true, true, true, true, true, true, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(32861u, _wgslsmith_div_u32(firstTrailingBit(u_input.b), 1u | u_input.b)), u_input.e.x);
    global2 = array<bool, 24>();
    global2 = array<bool, 24>();
    let var_1 = arg_0.a.c.x;
    global0 = array<Struct_3, 30>();
    return arg_0.a;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-arg_3.x), 1000f), arg_1.a.c.xy))));
    global2 = array<bool, 24>();
    let var_1 = _wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, arg_2.x, 0i, abs(u_input.a)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32((vec4<i32>(4704i, -2147483647i, 2147483647i, arg_2.x) & vec4<i32>(-74207i, -19537i, 14888i, -6075i)) & vec4<i32>(arg_2.x, arg_2.x, 2147483647i, -6195i), reverseBits(vec4<i32>(arg_2.x, u_input.a, u_input.d, -30506i)) >> (vec4<u32>(1u, u_input.b, u_input.b, 0u) % vec4<u32>(32u))), -vec4<i32>(~u_input.c.x, _wgslsmith_add_i32(-1i, arg_2.x), arg_2.x, ~u_input.d)));
    let var_2 = ~53295u;
    global1 = select(!(!(!(!vec4<bool>(arg_1.a.b, arg_0, true, arg_0)))), select(vec4<bool>(global1.x, arg_3.x < var_0.x, all(select(vec4<bool>(true, global2[_wgslsmith_index_u32(var_2, 24u)], global2[_wgslsmith_index_u32(30900u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_2, 24u)], arg_0, false, arg_0), arg_1.c.b)), arg_1.c.b), !select(vec4<bool>(arg_0, arg_1.a.b, global2[_wgslsmith_index_u32(0u, 24u)], true), select(vec4<bool>(true, global2[_wgslsmith_index_u32(51986u, 24u)], global1.x, global1.x), vec4<bool>(false, true, global1.x, false), arg_0), !vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 24u)], arg_0, true)), !vec4<bool>(global2[_wgslsmith_index_u32(31578u, 24u)], any(global1.wxy), true, any(vec4<bool>(arg_1.b.a.b, global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(u_input.b, 24u)], arg_0)))), !(!(var_1.x >= 0i)));
    return 194f;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    global1 = vec4<bool>(any(vec3<bool>(select(16628u <= u_input.e.x, false && arg_1.b.b, func_2(Struct_2(Struct_1(-668f, global1.x, arg_1.d.c), Struct_1(1043f, arg_1.b.b, vec3<f32>(871f, -548f, arg_1.c.c.x)), Struct_1(-1000f, true, vec3<f32>(arg_3.d.c.x, arg_3.b.c.x, -347f)), arg_3.d)).b), all(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 24u)], false, true, arg_3.a.b)), arg_0.x != abs(arg_2.x))), false & select(true, arg_3.a.b, !(!arg_3.b.b)), arg_3.d.b, false);
    var var_0 = func_2(arg_1);
    var var_1 = func_2(arg_3);
    var var_2 = all(vec4<bool>(!(~u_input.e.x <= 1u), arg_1.d.b, false, var_0.b));
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(arg_3.b.a, arg_1.c.c.x), !(!all(global1.xx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1447f, var_1.c.x, arg_1.b.c.x) - vec3<f32>(-425f, -342f, var_1.c.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1375f)) * -2729f) - -462f), false, _wgslsmith_div_vec3_f32(var_0.c, vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(arg_3.a.a * -870f)))), arg_1.b, arg_1.c);
    return func_2(arg_3);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: bool) -> vec4<bool> {
    global0 = array<Struct_3, 30>();
    let var_0 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(func_3(false, Struct_3(Struct_1(_wgslsmith_f_op_f32(arg_0.c.x - arg_1.x), any(vec3<bool>(arg_0.b, false, global2[_wgslsmith_index_u32(u_input.b, 24u)])), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.b.a.c.x, arg_1.x, arg_2.a.a)))), Struct_2(arg_0, func_4(vec3<i32>(-17479i, u_input.c.x, u_input.c.x), Struct_2(Struct_1(arg_0.a, false, vec3<f32>(-798f, -1524f, arg_1.x)), arg_2.c, arg_0, Struct_1(arg_1.x, true, arg_0.c)), vec4<i32>(18739i, u_input.c.x, u_input.c.x, -43362i), Struct_2(Struct_1(arg_0.c.x, arg_2.b.b.b, vec3<f32>(arg_1.x, 613f, arg_0.a)), Struct_1(arg_0.c.x, true, arg_2.a.c), Struct_1(249f, arg_3, arg_2.b.d.c), arg_2.b.c)), func_4(vec3<i32>(109i, 2147483647i, 20447i), Struct_2(arg_2.b.d, Struct_1(-649f, global2[_wgslsmith_index_u32(u_input.b, 24u)], vec3<f32>(arg_2.a.a, -630f, -225f)), arg_2.c, Struct_1(arg_2.a.c.x, global2[_wgslsmith_index_u32(4294967295u, 24u)], arg_0.c)), vec4<i32>(u_input.d, u_input.d, -38396i, 1i), arg_2.b), Struct_1(875f, arg_2.b.d.b, vec3<f32>(arg_2.c.c.x, -252f, arg_1.x))), func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 1i, -2147483647i), vec3<i32>(-1i, u_input.a, -62649i), vec3<i32>(-1i, u_input.c.x, u_input.a)), arg_2.b, select(vec4<i32>(u_input.c.x, -2147483647i, 37018i, 3212i), vec4<i32>(-21190i, u_input.a, 0i, -2147483647i), arg_2.a.b), arg_2.b)), _wgslsmith_clamp_vec2_i32(u_input.c, countOneBits(vec2<i32>(29103i, -2147483647i)), select(abs(u_input.c), vec2<i32>(u_input.a, u_input.a), select(global1.yy, global1.wz, global1.x))), arg_1)));
    let var_1 = global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, 26448u) & u_input.e), vec2<u32>(1u, u_input.b)) & ~_wgslsmith_sub_u32(u_input.b, u_input.e.x)), 30u)];
    let var_2 = select(vec4<bool>(select(false, arg_0.b, arg_2.c.b), false, select(all(!vec2<bool>(arg_0.b, global1.x)), !arg_3, !(arg_2.a.a > var_0)), 1725f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0.c.x)), _wgslsmith_f_op_f32(abs(arg_1.x))))), vec4<bool>(any(select(global1.zwy, global1.zyx, true)) & (u_input.c.x != ~u_input.c.x), false, false & any(select(global1.zyw, vec3<bool>(true, true, true), global1.zwx)), arg_0.b), true);
    let var_3 = !global1.ywz;
    return !vec4<bool>(var_3.x, arg_2.b.c.a < -717f, true, true);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<i32>) -> bool {
    global2 = array<bool, 24>();
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    global1 = func_5(func_4(_wgslsmith_mod_vec3_i32(abs(~vec3<i32>(u_input.d, -1490i, 1i)), abs(vec3<i32>(arg_2.x, u_input.a, 39237i)) ^ vec3<i32>(arg_2.x, 0i, arg_2.x)), Struct_2(func_2(Struct_2(Struct_1(1000f, false, vec3<f32>(arg_1, -525f, arg_1)), Struct_1(-754f, true, vec3<f32>(-1836f, arg_1, 1216f)), Struct_1(-1243f, false, vec3<f32>(arg_1, -799f, -1081f)), Struct_1(-473f, global1.x, vec3<f32>(arg_1, arg_1, 1142f)))), Struct_1(_wgslsmith_f_op_f32(-arg_1), global1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(687f, 1589f, arg_1))), Struct_1(_wgslsmith_f_op_f32(func_3(global1.x, Struct_3(Struct_1(arg_1, false, vec3<f32>(arg_1, arg_1, arg_1)), Struct_2(Struct_1(1803f, false, vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(538f, global1.x, vec3<f32>(arg_1, -443f, 1000f)), Struct_1(arg_1, true, vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(arg_1, global2[_wgslsmith_index_u32(29978u, 24u)], vec3<f32>(arg_1, arg_1, arg_1))), Struct_1(-972f, global2[_wgslsmith_index_u32(106282u, 24u)], vec3<f32>(-2860f, arg_1, 599f))), arg_2, vec4<f32>(641f, arg_1, arg_1, 1227f))), true, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(426f, arg_1, 1014f)))), func_2(Struct_2(Struct_1(arg_1, true, vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(arg_1, global1.x, vec3<f32>(arg_1, arg_1, 328f)), Struct_1(arg_1, global2[_wgslsmith_index_u32(u_input.b, 24u)], vec3<f32>(arg_1, 1105f, 257f)), Struct_1(arg_1, global2[_wgslsmith_index_u32(0u, 24u)], vec3<f32>(1241f, -143f, arg_1))))), reverseBits(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.d, u_input.a, -1i, arg_0), min(vec4<i32>(-2147483647i, -12514i, arg_2.x, arg_2.x), vec4<i32>(arg_2.x, 2147483647i, arg_2.x, arg_2.x)), vec4<i32>(arg_2.x, u_input.d, arg_0, 1i))), Struct_2(func_2(Struct_2(Struct_1(834f, global1.x, vec3<f32>(1699f, 644f, arg_1)), Struct_1(arg_1, false, vec3<f32>(arg_1, 1389f, -1000f)), Struct_1(arg_1, global1.x, vec3<f32>(arg_1, -1349f, arg_1)), Struct_1(-685f, global1.x, vec3<f32>(-192f, 356f, -838f)))), Struct_1(arg_1, all(global1.xz), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 788f, -204f) - vec3<f32>(217f, 1000f, -1000f))), Struct_1(_wgslsmith_f_op_f32(-arg_1), any(global1.zxy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1451f, arg_1, arg_1))), func_2(Struct_2(Struct_1(-557f, true, vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(arg_1, true, vec3<f32>(797f, arg_1, arg_1)), Struct_1(690f, false, vec3<f32>(674f, -438f, arg_1)), Struct_1(arg_1, false, vec3<f32>(2080f, 126f, arg_1)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1188f, -355f, arg_1, 1571f), vec4<f32>(arg_1, -787f, arg_1, arg_1)) + vec4<f32>(-1193f, 195f, -688f, 582f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(875f, 530f, arg_1, -1069f)))))), Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -665f), !global2[_wgslsmith_index_u32(reverseBits(4294967295u), 24u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -247f, 461f) - vec3<f32>(arg_1, arg_1, arg_1)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 1717f, -548f) + vec3<f32>(-1000f, -766f, arg_1)))), Struct_2(func_4(~vec3<i32>(-44676i, arg_2.x, arg_0), Struct_2(Struct_1(243f, global2[_wgslsmith_index_u32(1u, 24u)], vec3<f32>(arg_1, -1252f, 799f)), Struct_1(arg_1, false, vec3<f32>(876f, 787f, 181f)), Struct_1(arg_1, global1.x, vec3<f32>(1016f, -304f, arg_1)), Struct_1(-798f, true, vec3<f32>(-1776f, 1569f, arg_1))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, arg_2.x, 1i, arg_0), vec4<i32>(1940i, 39264i, u_input.a, u_input.d)), Struct_2(Struct_1(arg_1, global1.x, vec3<f32>(arg_1, 1620f, arg_1)), Struct_1(454f, false, vec3<f32>(arg_1, 1918f, arg_1)), Struct_1(arg_1, global1.x, vec3<f32>(-1191f, -1096f, -286f)), Struct_1(arg_1, false, vec3<f32>(-654f, arg_1, arg_1)))), func_4(select(vec3<i32>(11611i, -12192i, -2147483647i), vec3<i32>(-18411i, arg_2.x, u_input.d), global1.wxx), Struct_2(Struct_1(arg_1, global1.x, vec3<f32>(arg_1, 178f, arg_1)), Struct_1(1000f, false, vec3<f32>(arg_1, arg_1, 975f)), Struct_1(arg_1, global2[_wgslsmith_index_u32(1u, 24u)], vec3<f32>(arg_1, -468f, -216f)), Struct_1(663f, true, vec3<f32>(233f, -770f, 1025f))), abs(vec4<i32>(1i, arg_2.x, arg_0, 0i)), Struct_2(Struct_1(270f, global2[_wgslsmith_index_u32(0u, 24u)], vec3<f32>(-1041f, 1158f, -778f)), Struct_1(-1206f, global2[_wgslsmith_index_u32(0u, 24u)], vec3<f32>(-978f, arg_1, arg_1)), Struct_1(332f, false, vec3<f32>(arg_1, 502f, arg_1)), Struct_1(arg_1, true, vec3<f32>(arg_1, arg_1, arg_1)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -969f), false, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, arg_1, -1744f)))), func_2(Struct_2(Struct_1(arg_1, global1.x, vec3<f32>(-1912f, arg_1, 490f)), Struct_1(1060f, true, vec3<f32>(arg_1, 861f, -1448f)), Struct_1(250f, true, vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(-310f, global1.x, vec3<f32>(arg_1, -610f, arg_1))))), Struct_1(_wgslsmith_f_op_f32(select(func_4(vec3<i32>(7481i, -1i, u_input.a), Struct_2(Struct_1(-567f, false, vec3<f32>(-372f, 424f, arg_1)), Struct_1(arg_1, false, vec3<f32>(-683f, arg_1, arg_1)), Struct_1(1000f, global1.x, vec3<f32>(1978f, -1594f, arg_1)), Struct_1(arg_1, global2[_wgslsmith_index_u32(14942u, 24u)], vec3<f32>(arg_1, 788f, arg_1))), vec4<i32>(-1i, u_input.d, -1782i, 0i), Struct_2(Struct_1(arg_1, global2[_wgslsmith_index_u32(48846u, 24u)], vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(arg_1, global2[_wgslsmith_index_u32(u_input.b, 24u)], vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(arg_1, global2[_wgslsmith_index_u32(u_input.b, 24u)], vec3<f32>(arg_1, -1231f, -1258f)), Struct_1(arg_1, global1.x, vec3<f32>(280f, arg_1, -746f)))).c.x, -846f, any(global1.xy))), true, vec3<f32>(_wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_f_op_f32(131f * 339f), -838f))), func_2(Struct_2(Struct_1(arg_1, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 18606u), vec2<u32>(12589u, 1u)), 24u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 569f))), Struct_1(736f, false & global2[_wgslsmith_index_u32(u_input.e.x, 24u)], _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, arg_1, arg_1)))), func_4(max(vec3<i32>(-18547i, -1i, 1i), vec3<i32>(-2147483647i, 2147483647i, 9330i)), Struct_2(Struct_1(arg_1, global2[_wgslsmith_index_u32(u_input.e.x, 24u)], vec3<f32>(arg_1, arg_1, -690f)), Struct_1(arg_1, global2[_wgslsmith_index_u32(u_input.e.x, 24u)], vec3<f32>(213f, arg_1, -500f)), Struct_1(-964f, global1.x, vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(-1971f, global2[_wgslsmith_index_u32(u_input.b, 24u)], vec3<f32>(-1569f, -262f, -1036f))), vec4<i32>(1i, 2147483647i, u_input.a, -2147483647i), Struct_2(Struct_1(arg_1, global2[_wgslsmith_index_u32(u_input.b, 24u)], vec3<f32>(-116f, -619f, -547f)), Struct_1(arg_1, true, vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(arg_1, global2[_wgslsmith_index_u32(9573u, 24u)], vec3<f32>(246f, -330f, 808f)), Struct_1(arg_1, false, vec3<f32>(arg_1, arg_1, arg_1)))), func_4(select(vec3<i32>(arg_0, arg_2.x, -2147483647i), vec3<i32>(-17073i, 1i, arg_0), vec3<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.e.x, 24u)], true)), Struct_2(Struct_1(1037f, false, vec3<f32>(-314f, arg_1, arg_1)), Struct_1(842f, false, vec3<f32>(arg_1, arg_1, 1852f)), Struct_1(arg_1, global1.x, vec3<f32>(arg_1, 309f, arg_1)), Struct_1(-639f, false, vec3<f32>(-999f, 772f, arg_1))), ~vec4<i32>(arg_2.x, -1i, arg_0, 1i), Struct_2(Struct_1(-819f, true, vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(arg_1, global2[_wgslsmith_index_u32(u_input.b, 24u)], vec3<f32>(2074f, 511f, arg_1)), Struct_1(arg_1, false, vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(976f, global1.x, vec3<f32>(2190f, -1000f, arg_1)))))).b);
    global0 = array<Struct_3, 30>();
    return _wgslsmith_dot_vec2_u32(~u_input.e, vec2<u32>(1u, ~max(39084u, u_input.e.x))) == 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(func_1(1i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(805f)))))), firstTrailingBit(vec2<i32>(~u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.d, -82776i))))), func_4(abs(vec3<i32>(abs(u_input.d), u_input.a, 9890i << (u_input.e.x % 32u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(280f + -1595f), true, vec3<f32>(-1063f, -1117f, 677f)), func_2(Struct_2(Struct_1(309f, true, vec3<f32>(-1000f, -1000f, -1539f)), Struct_1(-318f, true, vec3<f32>(777f, -570f, 1134f)), Struct_1(-802f, global1.x, vec3<f32>(-320f, 1084f, 205f)), Struct_1(-638f, false, vec3<f32>(1000f, -665f, 984f)))), func_2(Struct_2(Struct_1(1000f, global2[_wgslsmith_index_u32(29933u, 24u)], vec3<f32>(834f, -683f, 349f)), Struct_1(-1000f, global2[_wgslsmith_index_u32(4912u, 24u)], vec3<f32>(340f, -181f, 367f)), Struct_1(989f, true, vec3<f32>(-752f, 540f, 1568f)), Struct_1(125f, global1.x, vec3<f32>(-2008f, 845f, -948f)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -504f), false, vec3<f32>(-470f, -247f, 145f))), -countOneBits(vec4<i32>(-1i, 40953i, u_input.a, u_input.c.x)), Struct_2(func_2(Struct_2(Struct_1(-900f, global2[_wgslsmith_index_u32(u_input.b, 24u)], vec3<f32>(191f, 2272f, 526f)), Struct_1(-1730f, true, vec3<f32>(1181f, 950f, -502f)), Struct_1(-1014f, true, vec3<f32>(1467f, 1000f, -1168f)), Struct_1(-288f, false, vec3<f32>(-926f, 1000f, -1053f)))), Struct_1(-1582f, 8299u >= u_input.e.x, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1461f, 279f, -1321f)))), Struct_1(_wgslsmith_f_op_f32(round(1191f)), true, vec3<f32>(226f, 448f, 1000f)), Struct_1(-350f, func_1(2147483647i, -798f, vec2<i32>(u_input.c.x, -67365i)), vec3<f32>(-167f, 555f, 294f)))).b, select(true, true & func_1(_wgslsmith_add_i32(u_input.d, u_input.c.x), -343f, vec2<i32>(-2147483647i, u_input.a) << (u_input.e % vec2<u32>(32u))), select(true, select(true, func_4(vec3<i32>(u_input.c.x, -2147483647i, u_input.d), Struct_2(Struct_1(483f, false, vec3<f32>(-1561f, -272f, 958f)), Struct_1(-717f, true, vec3<f32>(-1226f, -1685f, 748f)), Struct_1(-1000f, global1.x, vec3<f32>(-317f, 612f, 185f)), Struct_1(-1509f, global1.x, vec3<f32>(-315f, 652f, 495f))), vec4<i32>(0i, u_input.d, u_input.d, u_input.d), Struct_2(Struct_1(1807f, false, vec3<f32>(-1297f, 1409f, -472f)), Struct_1(-192f, false, vec3<f32>(976f, -1042f, -1345f)), Struct_1(-539f, true, vec3<f32>(789f, 1000f, 196f)), Struct_1(314f, global1.x, vec3<f32>(-1301f, -986f, 453f)))).b, global1.x), global1.x)), any(!(!select(global1.xzz, global1.zxw, vec3<bool>(global1.x, global2[_wgslsmith_index_u32(1090u, 24u)], true)))));
    global0 = array<Struct_3, 30>();
    global2 = array<bool, 24>();
    let var_0 = Struct_2(func_4(vec3<i32>(u_input.c.x, u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.d, 7515i), vec3<i32>(u_input.d, 16708i, u_input.d)) | u_input.a), Struct_2(Struct_1(1571f, global1.x && global2[_wgslsmith_index_u32(16659u, 24u)], _wgslsmith_f_op_vec3_f32(max(vec3<f32>(181f, 388f, -112f), vec3<f32>(-300f, -1351f, -185f)))), Struct_1(_wgslsmith_f_op_f32(max(261f, -1077f)), 0u < u_input.e.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1282f, 779f, 670f), vec3<f32>(-390f, -418f, -475f), vec3<bool>(true, false, global2[_wgslsmith_index_u32(61632u, 24u)])))), Struct_1(_wgslsmith_f_op_f32(round(101f)), u_input.d <= 24802i, vec3<f32>(-830f, 1077f, 1871f)), Struct_1(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(u_input.b, 30u)], u_input.c, vec4<f32>(-1067f, 1456f, 1567f, 1075f))), true, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -656f, -550f))))), select(_wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, 0i, -56750i, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-74421i, -26589i, u_input.c.x, u_input.d), vec4<i32>(u_input.d, u_input.c.x, -42981i, u_input.a))), -(~vec4<i32>(u_input.c.x, u_input.d, -23291i, u_input.c.x)), false), Struct_2(func_4(-vec3<i32>(3994i, 2147483647i, u_input.a), Struct_2(Struct_1(1136f, false, vec3<f32>(-658f, -165f, 770f)), Struct_1(263f, global2[_wgslsmith_index_u32(u_input.b, 24u)], vec3<f32>(-501f, 759f, 960f)), Struct_1(638f, global2[_wgslsmith_index_u32(u_input.e.x, 24u)], vec3<f32>(288f, -1117f, 1098f)), Struct_1(-498f, global1.x, vec3<f32>(-1330f, 1000f, 958f))), vec4<i32>(-50514i, u_input.a, u_input.d, 0i) ^ vec4<i32>(-1173i, u_input.a, u_input.d, 7376i), Struct_2(Struct_1(494f, global1.x, vec3<f32>(-711f, 1144f, 613f)), Struct_1(-1000f, true, vec3<f32>(1928f, -2128f, -435f)), Struct_1(-389f, global1.x, vec3<f32>(1000f, -1623f, -1108f)), Struct_1(1134f, global1.x, vec3<f32>(2394f, 1000f, 1000f)))), Struct_1(_wgslsmith_f_op_f32(-783f - 513f), all(vec3<bool>(false, global1.x, global1.x)), vec3<f32>(-217f, -600f, -2459f)), func_2(Struct_2(Struct_1(1064f, true, vec3<f32>(-1293f, -658f, -690f)), Struct_1(-237f, global1.x, vec3<f32>(514f, 1091f, 1000f)), Struct_1(-842f, global1.x, vec3<f32>(1660f, -798f, 384f)), Struct_1(-916f, global2[_wgslsmith_index_u32(39678u, 24u)], vec3<f32>(-1000f, -2315f, 741f)))), func_4(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.a, u_input.d), vec3<i32>(1i, 1i, u_input.a)), Struct_2(Struct_1(-728f, true, vec3<f32>(-518f, -928f, 844f)), Struct_1(1939f, global2[_wgslsmith_index_u32(50058u, 24u)], vec3<f32>(-1377f, 294f, -1317f)), Struct_1(1380f, false, vec3<f32>(1156f, 1924f, 131f)), Struct_1(237f, false, vec3<f32>(654f, 585f, 2237f))), ~vec4<i32>(u_input.a, u_input.d, -1i, 1i), Struct_2(Struct_1(-1039f, global1.x, vec3<f32>(-1259f, -318f, 226f)), Struct_1(-1051f, global1.x, vec3<f32>(1550f, -146f, 1916f)), Struct_1(1414f, true, vec3<f32>(-545f, -1741f, 1000f)), Struct_1(384f, false, vec3<f32>(-1677f, 1000f, 786f)))))), Struct_1(_wgslsmith_f_op_f32(-func_4(countOneBits(vec3<i32>(2147483647i, -67379i, -28388i)), Struct_2(Struct_1(376f, global1.x, vec3<f32>(-1029f, -772f, 673f)), Struct_1(-412f, false, vec3<f32>(-847f, 491f, -531f)), Struct_1(391f, false, vec3<f32>(-747f, -688f, 597f)), Struct_1(1042f, global1.x, vec3<f32>(1036f, 420f, 1067f))), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.d, u_input.c.x), vec4<i32>(1i, 25604i, -22582i, u_input.c.x)), Struct_2(Struct_1(-640f, global2[_wgslsmith_index_u32(u_input.e.x, 24u)], vec3<f32>(708f, -1222f, 586f)), Struct_1(155f, false, vec3<f32>(1000f, -243f, -713f)), Struct_1(-815f, true, vec3<f32>(185f, 1379f, 1111f)), Struct_1(-432f, global2[_wgslsmith_index_u32(0u, 24u)], vec3<f32>(452f, 1075f, 1002f)))).c.x), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1560f, 166f, 1682f)))), func_2(Struct_2(func_4(-vec3<i32>(-1i, -30885i, 2147483647i), Struct_2(Struct_1(770f, true, vec3<f32>(-1000f, 107f, 1765f)), Struct_1(-703f, true, vec3<f32>(-1000f, -343f, 770f)), Struct_1(-310f, global2[_wgslsmith_index_u32(u_input.b, 24u)], vec3<f32>(1616f, -1812f, 483f)), Struct_1(-1363f, global2[_wgslsmith_index_u32(1u, 24u)], vec3<f32>(-1036f, 684f, 895f))), countOneBits(vec4<i32>(0i, -2147483647i, u_input.d, -9094i)), Struct_2(Struct_1(-1195f, true, vec3<f32>(448f, -268f, 258f)), Struct_1(760f, true, vec3<f32>(-1805f, 935f, 229f)), Struct_1(446f, false, vec3<f32>(-109f, 174f, -1640f)), Struct_1(1811f, true, vec3<f32>(-280f, -1445f, -539f)))), Struct_1(963f, true | global2[_wgslsmith_index_u32(u_input.b, 24u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(247f, -1873f, -651f))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -643f), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, u_input.e.x), 24u)], _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -378f, 465f), vec3<f32>(-476f, -1888f, 221f))), Struct_1(-1978f, true, vec3<f32>(-1000f, -793f, -149f)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1890f), true, vec3<f32>(func_4(min(vec3<i32>(u_input.d, -1i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.a, -1i)), Struct_2(Struct_1(293f, false, vec3<f32>(566f, -492f, -1137f)), Struct_1(108f, global2[_wgslsmith_index_u32(0u, 24u)], vec3<f32>(559f, 751f, -1515f)), Struct_1(2785f, global1.x, vec3<f32>(380f, 270f, 667f)), Struct_1(-612f, true, vec3<f32>(-1240f, -825f, -1400f))), vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.d), Struct_2(Struct_1(-1352f, global1.x, vec3<f32>(-322f, -373f, -236f)), Struct_1(293f, false, vec3<f32>(-516f, -1615f, 1637f)), Struct_1(-795f, global2[_wgslsmith_index_u32(u_input.b, 24u)], vec3<f32>(484f, -1163f, 732f)), Struct_1(177f, false, vec3<f32>(-1621f, -1416f, 1690f)))).c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1449f) - -124f), _wgslsmith_f_op_f32(800f + 545f))));
    let var_1 = global1.xz;
    global1 = !(!select(vec4<bool>(true, true && global1.x, global2[_wgslsmith_index_u32(0u, 24u)] && global2[_wgslsmith_index_u32(30439u, 24u)], !global1.x), !vec4<bool>(true, global2[_wgslsmith_index_u32(49929u, 24u)], true, false), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 1i), vec2<i32>(0i, u_input.c.x)) == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, -13819i, -1i), vec4<i32>(u_input.a, -1i, -1i, 0i))));
    global0 = array<Struct_3, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~(~countOneBits(select(vec2<u32>(0u, u_input.e.x), vec2<u32>(832u, 36123u), vec2<bool>(global1.x, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.c.x, var_0.d.c.x, var_0.d.a, var_0.b.c.x))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1207f, _wgslsmith_f_op_f32(1711f - 655f), _wgslsmith_f_op_f32(min(-642f, var_0.b.c.x)), _wgslsmith_f_op_f32(-504f - var_0.d.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(222f, var_0.a.c.x, -821f, var_0.c.a) * vec4<f32>(-493f, -1438f, -1164f, 734f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, var_0.c.a, 707f, var_0.b.c.x))), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], false, true, var_0.b.b), vec4<bool>(var_0.c.b, var_0.a.b, var_1.x, global1.x), !global1.x)))), -_wgslsmith_sub_i32(-2147483647i, u_input.c.x));
}

