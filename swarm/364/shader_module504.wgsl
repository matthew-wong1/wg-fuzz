struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(23924u, 0u, 15705u, 13098u);

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec2<f32>(1000f, -2062f), vec4<i32>(0i, 0i, -1i, -1i), vec2<f32>(486f, -121f), 18157u), Struct_1(vec2<f32>(-486f, 899f), vec4<i32>(i32(-2147483648), -1i, -1i, 1i), vec2<f32>(-553f, -528f), 16117u), Struct_1(vec2<f32>(-1795f, -1079f), vec4<i32>(2147483647i, 25828i, 2895i, 1i), vec2<f32>(124f, -109f), 4294967295u)), Struct_2(Struct_1(vec2<f32>(288f, -203f), vec4<i32>(-3347i, -20175i, 29225i, 2147483647i), vec2<f32>(2436f, 808f), 4294967295u), Struct_1(vec2<f32>(-1444f, -1000f), vec4<i32>(-351i, 0i, -29160i, 56998i), vec2<f32>(-436f, 1061f), 31971u), Struct_1(vec2<f32>(-1041f, 635f), vec4<i32>(-17789i, 1i, 9727i, -1i), vec2<f32>(1164f, -1531f), 4294967295u)), Struct_2(Struct_1(vec2<f32>(1000f, -1222f), vec4<i32>(-21463i, -37344i, -11326i, -38190i), vec2<f32>(255f, -1368f), 1u), Struct_1(vec2<f32>(-180f, 972f), vec4<i32>(-7070i, 1i, 2147483647i, -42405i), vec2<f32>(-285f, -313f), 4294967295u), Struct_1(vec2<f32>(-667f, -1073f), vec4<i32>(-46752i, -1i, i32(-2147483648), 1i), vec2<f32>(654f, 937f), 94529u)), Struct_2(Struct_1(vec2<f32>(-1022f, -519f), vec4<i32>(31860i, i32(-2147483648), 2147483647i, 0i), vec2<f32>(706f, 1551f), 80023u), Struct_1(vec2<f32>(-535f, -436f), vec4<i32>(36384i, -12458i, -96703i, -23172i), vec2<f32>(-881f, 913f), 1u), Struct_1(vec2<f32>(-732f, -926f), vec4<i32>(-11813i, 0i, 797i, -47714i), vec2<f32>(1365f, 402f), 58208u)), Struct_2(Struct_1(vec2<f32>(-1258f, 1229f), vec4<i32>(-1i, 15411i, 28534i, 1i), vec2<f32>(-1608f, -542f), 82203u), Struct_1(vec2<f32>(764f, -1008f), vec4<i32>(30477i, 102210i, -789i, 50249i), vec2<f32>(2090f, -1000f), 0u), Struct_1(vec2<f32>(1013f, -649f), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -51505i), vec2<f32>(-954f, 497f), 9907u)), Struct_2(Struct_1(vec2<f32>(-285f, -775f), vec4<i32>(1i, -35516i, i32(-2147483648), 20228i), vec2<f32>(-458f, 559f), 3481u), Struct_1(vec2<f32>(-173f, 367f), vec4<i32>(8802i, i32(-2147483648), -68647i, 0i), vec2<f32>(1192f, 1000f), 1u), Struct_1(vec2<f32>(416f, 278f), vec4<i32>(0i, 1i, 10818i, 27733i), vec2<f32>(-408f, -225f), 342u)), Struct_2(Struct_1(vec2<f32>(-194f, 1274f), vec4<i32>(-11885i, i32(-2147483648), 33666i, 22966i), vec2<f32>(1000f, 938f), 0u), Struct_1(vec2<f32>(-552f, 805f), vec4<i32>(i32(-2147483648), 0i, 1i, 0i), vec2<f32>(-601f, -837f), 0u), Struct_1(vec2<f32>(-568f, -442f), vec4<i32>(21388i, 2147483647i, 2147483647i, 25731i), vec2<f32>(125f, -437f), 0u)), Struct_2(Struct_1(vec2<f32>(1469f, -736f), vec4<i32>(-51154i, 28893i, -1i, i32(-2147483648)), vec2<f32>(-1907f, -569f), 16192u), Struct_1(vec2<f32>(-2363f, -855f), vec4<i32>(43362i, 31184i, 2147483647i, -56152i), vec2<f32>(-773f, -1000f), 41301u), Struct_1(vec2<f32>(-254f, -859f), vec4<i32>(-34731i, 2813i, -1i, -36759i), vec2<f32>(594f, 1763f), 0u)), Struct_2(Struct_1(vec2<f32>(-904f, 208f), vec4<i32>(-1i, 0i, 2147483647i, -8310i), vec2<f32>(-945f, -1263f), 17547u), Struct_1(vec2<f32>(591f, 719f), vec4<i32>(-29256i, 0i, 1i, 0i), vec2<f32>(-459f, 1546f), 1u), Struct_1(vec2<f32>(1130f, 1471f), vec4<i32>(17369i, i32(-2147483648), 0i, -1i), vec2<f32>(-243f, -680f), 12425u)), Struct_2(Struct_1(vec2<f32>(-1729f, -1729f), vec4<i32>(2147483647i, 16974i, -4622i, 0i), vec2<f32>(-787f, -165f), 4294967295u), Struct_1(vec2<f32>(1260f, -1118f), vec4<i32>(-52801i, -14501i, 39022i, 6865i), vec2<f32>(198f, -625f), 61889u), Struct_1(vec2<f32>(-1227f, 1491f), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec2<f32>(1953f, 476f), 7653u)), Struct_2(Struct_1(vec2<f32>(258f, -532f), vec4<i32>(0i, 1i, -1i, -2129i), vec2<f32>(1242f, -773f), 4294967295u), Struct_1(vec2<f32>(586f, 965f), vec4<i32>(-6646i, 8483i, i32(-2147483648), i32(-2147483648)), vec2<f32>(340f, 967f), 26211u), Struct_1(vec2<f32>(-1266f, 1881f), vec4<i32>(-17487i, i32(-2147483648), 54606i, 56523i), vec2<f32>(971f, 613f), 4294967295u)), Struct_2(Struct_1(vec2<f32>(318f, -524f), vec4<i32>(i32(-2147483648), -856i, -16158i, 22532i), vec2<f32>(1000f, 950f), 4294967295u), Struct_1(vec2<f32>(-1423f, -678f), vec4<i32>(-2430i, 2147483647i, 2147483647i, 2147483647i), vec2<f32>(-824f, -644f), 0u), Struct_1(vec2<f32>(-1455f, 1754f), vec4<i32>(-5532i, 13897i, -16910i, 3460i), vec2<f32>(1747f, 362f), 0u)), Struct_2(Struct_1(vec2<f32>(1010f, 773f), vec4<i32>(10891i, 1i, 0i, -46792i), vec2<f32>(-1932f, -315f), 21230u), Struct_1(vec2<f32>(-256f, -846f), vec4<i32>(0i, 2147483647i, -33814i, 4406i), vec2<f32>(1474f, -664f), 66924u), Struct_1(vec2<f32>(-1703f, 221f), vec4<i32>(0i, 0i, 1i, 1i), vec2<f32>(2351f, -292f), 32422u)), Struct_2(Struct_1(vec2<f32>(-342f, 1112f), vec4<i32>(i32(-2147483648), -23549i, 1i, 1i), vec2<f32>(137f, 385f), 0u), Struct_1(vec2<f32>(-1848f, -282f), vec4<i32>(-40988i, 0i, -9548i, -15249i), vec2<f32>(1437f, -813f), 4294967295u), Struct_1(vec2<f32>(-389f, 1155f), vec4<i32>(0i, -45672i, i32(-2147483648), -1i), vec2<f32>(-1239f, 2627f), 1u)), Struct_2(Struct_1(vec2<f32>(-1906f, 495f), vec4<i32>(0i, 2147483647i, -1i, 0i), vec2<f32>(1189f, 137f), 4294967295u), Struct_1(vec2<f32>(-278f, -228f), vec4<i32>(1i, 18691i, -94289i, 0i), vec2<f32>(-1213f, 1106f), 850u), Struct_1(vec2<f32>(-870f, 1000f), vec4<i32>(-1i, 2147483647i, 2147483647i, i32(-2147483648)), vec2<f32>(2156f, -1021f), 9950u)), Struct_2(Struct_1(vec2<f32>(-1384f, 895f), vec4<i32>(2147483647i, -726i, 40712i, 1i), vec2<f32>(-1065f, -155f), 49653u), Struct_1(vec2<f32>(262f, 670f), vec4<i32>(-2908i, 2147483647i, -17903i, -12663i), vec2<f32>(-1407f, -1526f), 0u), Struct_1(vec2<f32>(834f, 777f), vec4<i32>(917i, 5694i, -1i, -1i), vec2<f32>(219f, -1567f), 0u)), Struct_2(Struct_1(vec2<f32>(-673f, -1000f), vec4<i32>(-54735i, -1i, i32(-2147483648), -14658i), vec2<f32>(-109f, 1002f), 36079u), Struct_1(vec2<f32>(-348f, 1288f), vec4<i32>(-59690i, -1i, -57377i, i32(-2147483648)), vec2<f32>(-1710f, 1000f), 55795u), Struct_1(vec2<f32>(646f, 2284f), vec4<i32>(2147483647i, 1i, -8011i, 53712i), vec2<f32>(-251f, -202f), 4294967295u)), Struct_2(Struct_1(vec2<f32>(717f, 586f), vec4<i32>(i32(-2147483648), 23172i, i32(-2147483648), -29309i), vec2<f32>(1764f, 212f), 49213u), Struct_1(vec2<f32>(765f, 1000f), vec4<i32>(-28386i, -13930i, -21759i, -23100i), vec2<f32>(296f, 789f), 35699u), Struct_1(vec2<f32>(1693f, -1173f), vec4<i32>(48149i, 0i, -37723i, 0i), vec2<f32>(-605f, 1034f), 30115u)), Struct_2(Struct_1(vec2<f32>(1721f, 391f), vec4<i32>(-51083i, -22204i, 22557i, 1i), vec2<f32>(304f, 320f), 29343u), Struct_1(vec2<f32>(-999f, -2089f), vec4<i32>(-7685i, -64488i, -36257i, i32(-2147483648)), vec2<f32>(-424f, 1049f), 1u), Struct_1(vec2<f32>(-873f, -581f), vec4<i32>(56051i, -8132i, -14947i, -1i), vec2<f32>(-582f, 211f), 17272u)), Struct_2(Struct_1(vec2<f32>(-685f, -511f), vec4<i32>(23467i, -1i, 44943i, -1i), vec2<f32>(-448f, -797f), 61513u), Struct_1(vec2<f32>(-1794f, -635f), vec4<i32>(-29042i, 13119i, 0i, 2147483647i), vec2<f32>(-1091f, -3074f), 32004u), Struct_1(vec2<f32>(-1284f, -101f), vec4<i32>(0i, 0i, 43034i, 0i), vec2<f32>(149f, -510f), 85990u)), Struct_2(Struct_1(vec2<f32>(-239f, 181f), vec4<i32>(-1i, i32(-2147483648), 0i, 47726i), vec2<f32>(-288f, -1035f), 4294967295u), Struct_1(vec2<f32>(-354f, 459f), vec4<i32>(i32(-2147483648), 15915i, -20002i, -37613i), vec2<f32>(720f, -1000f), 33776u), Struct_1(vec2<f32>(794f, -955f), vec4<i32>(-14217i, 0i, 26125i, 0i), vec2<f32>(1680f, -396f), 4294967295u)), Struct_2(Struct_1(vec2<f32>(709f, -545f), vec4<i32>(20501i, 1i, 0i, -23785i), vec2<f32>(117f, 1405f), 8310u), Struct_1(vec2<f32>(-1000f, 1748f), vec4<i32>(1i, 0i, -38318i, 1i), vec2<f32>(1000f, 929f), 4294967295u), Struct_1(vec2<f32>(-498f, -217f), vec4<i32>(7714i, -1i, 1i, 2147483647i), vec2<f32>(315f, -1214f), 16794u)), Struct_2(Struct_1(vec2<f32>(1032f, 273f), vec4<i32>(i32(-2147483648), 1i, 32108i, 31316i), vec2<f32>(-1391f, -529f), 1u), Struct_1(vec2<f32>(-534f, -1000f), vec4<i32>(46131i, 1i, -16371i, -8609i), vec2<f32>(629f, 1441f), 28002u), Struct_1(vec2<f32>(1909f, 102f), vec4<i32>(25367i, -7470i, 2147483647i, 0i), vec2<f32>(-534f, 289f), 2836u)), Struct_2(Struct_1(vec2<f32>(-157f, -2182f), vec4<i32>(-1i, -22654i, 2147483647i, -35876i), vec2<f32>(2131f, -233f), 39349u), Struct_1(vec2<f32>(963f, 1000f), vec4<i32>(-58104i, -27595i, 1i, -41344i), vec2<f32>(-357f, 424f), 4294967295u), Struct_1(vec2<f32>(-1329f, 633f), vec4<i32>(-11022i, 2147483647i, 19694i, 8170i), vec2<f32>(-718f, 440f), 1u)), Struct_2(Struct_1(vec2<f32>(282f, 489f), vec4<i32>(0i, 18178i, 2147483647i, 38125i), vec2<f32>(1140f, 1100f), 780u), Struct_1(vec2<f32>(543f, 228f), vec4<i32>(47693i, 0i, 0i, i32(-2147483648)), vec2<f32>(951f, 179f), 0u), Struct_1(vec2<f32>(-1938f, -491f), vec4<i32>(15060i, 2147483647i, 1i, -13518i), vec2<f32>(578f, 443f), 1u)));

var<private> global2: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(41134u, 26849u, 50377u), vec3<u32>(12504u, 4294967295u, 57226u), vec3<u32>(4294967295u, 4294967295u, 10333u), vec3<u32>(90647u, 41828u, 4294967295u), vec3<u32>(32539u, 46722u, 0u), vec3<u32>(0u, 33255u, 10066u), vec3<u32>(17810u, 29838u, 6983u), vec3<u32>(1u, 1u, 0u), vec3<u32>(81512u, 0u, 1u), vec3<u32>(11748u, 4294967295u, 60191u), vec3<u32>(28423u, 43846u, 1u), vec3<u32>(0u, 94630u, 47772u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 27998u, 22186u), vec3<u32>(6306u, 38177u, 40016u), vec3<u32>(1u, 32290u, 4294967295u), vec3<u32>(4889u, 17507u, 43488u), vec3<u32>(0u, 44497u, 0u), vec3<u32>(42726u, 4294967295u, 69373u), vec3<u32>(1u, 0u, 67317u), vec3<u32>(39757u, 40832u, 41369u), vec3<u32>(107150u, 1u, 120853u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 31634u, 23572u), vec3<u32>(1u, 4294967295u, 42671u), vec3<u32>(1u, 4294967295u, 121888u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    global1 = array<Struct_2, 25>();
    let var_0 = Struct_3(select(vec2<i32>(-(~3720i), u_input.b.x & _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.b.x))), -vec2<i32>(firstTrailingBit(u_input.a.x), ~u_input.b.x), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true)), false)), 2147483647i, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(826f, -1114f)), _wgslsmith_f_op_f32(586f + -433f))), reverseBits(u_input.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2387f * 386f), _wgslsmith_f_op_f32(sign(740f)))), select(global0.x >> (_wgslsmith_dot_vec2_u32(global0.wy, vec2<u32>(global0.x, global0.x)) % 32u), min(~4294967295u, firstLeadingBit(54844u)), true)), _wgslsmith_f_op_f32(-703f - _wgslsmith_f_op_f32(select(835f, _wgslsmith_f_op_f32(-112f * _wgslsmith_div_f32(-869f, -1959f)), any(vec3<bool>(true, true, false))))), vec2<bool>(!(!any(vec2<bool>(true, false))), true));
    global0 = firstLeadingBit(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 14951u, 0u, var_0.c.d), abs(vec4<u32>(var_0.c.d, 4294967295u, global0.x, 35497u)))));
    let var_1 = Struct_4(var_0.c, min(~(~global0.wx), _wgslsmith_sub_vec2_u32(global0.xw, vec2<u32>(28054u, var_0.c.d) ^ global0.wx)) ^ _wgslsmith_clamp_vec2_u32(global0.wy, global0.xw, _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.x, global0.x), global0.yy)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(var_0.c.a)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1055f, 311f), var_0.c.a)), vec2<bool>(var_0.e.x, var_0.e.x))), _wgslsmith_add_vec4_i32(-vec4<i32>(var_0.a.x, var_0.b, var_0.a.x, 4963i), u_input.c >> (vec4<u32>(global0.x, 1u, var_0.c.d, var_0.c.d) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.c.c + var_0.c.c))), ~32592u ^ max(4294967295u, var_0.c.d)), Struct_1(var_0.c.c, -var_0.c.b, var_0.c.a, 55928u), var_0.c));
    global2 = array<vec3<u32>, 26>();
    return _wgslsmith_dot_vec4_i32(vec4<i32>(min(_wgslsmith_add_i32(1i, -2583i), ~_wgslsmith_sub_i32(51318i, 0i)), -2879i, var_1.a.b.x, ~(-2147483647i)), vec4<i32>(abs(abs(0i)), abs(~var_0.c.b.x), countOneBits(var_1.c.b.b.x) & (u_input.b.x | 1i), var_0.b) | -u_input.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    let var_0 = 1471f;
    global0 = vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(max(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b.d, 29u), vec2<u32>(arg_0.b.d, global0.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_1.c.d), vec2<u32>(19968u, arg_1.c.d))), vec2<u32>(1u, 48228u) >> (countOneBits(vec2<u32>(77670u, global0.x)) % vec2<u32>(32u)))), 48163u, reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(global0.yw, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_0.b.d), vec2<u32>(_wgslsmith_add_u32(0u, arg_0.c.d), 1u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 2757f));
    let var_2 = Struct_5(arg_1, arg_1.e.x, arg_1.c, global0.zz, vec3<u32>(~(~arg_1.c.d), arg_0.c.d, _wgslsmith_clamp_u32(~51741u, countOneBits(4294967295u), ~(~16038u))));
    let var_3 = Struct_4(arg_0.b, var_2.e.yy, global1[_wgslsmith_index_u32(arg_0.b.d, 25u)]);
    return _wgslsmith_mult_i32(var_2.a.a.x >> (var_2.a.c.d % 32u), abs(1i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> i32 {
    global1 = array<Struct_2, 25>();
    let var_0 = ~(~(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 64052u, arg_1.d, 1u), vec4<u32>(4294967295u, arg_0.d, arg_1.d, 1u)))));
    var var_1 = global1[_wgslsmith_index_u32(global0.x, 25u)];
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(step(276f, 1527f)))))), arg_0.c.x);
    let var_3 = -23602i;
    return func_4(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_1.d, (0u ^ global0.x) >> (var_1.b.d % 32u)), 25u)], Struct_3(~_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c.zz, u_input.a), ~vec2<i32>(19816i, arg_1.b.x)), -func_3() ^ ((i32(-1i) * -1i) >> (1u % 32u)), arg_0, arg_1.a.x, vec2<bool>(arg_2.x, false)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>) -> vec2<f32> {
    var var_0 = vec4<bool>(!(u_input.a.x == (-u_input.c.x & func_2(Struct_1(vec2<f32>(1575f, -1251f), vec4<i32>(29767i, u_input.a.x, u_input.b.x, -10345i), vec2<f32>(-1145f, 1151f), 47913u), Struct_1(vec2<f32>(719f, 824f), u_input.b, vec2<f32>(287f, 1865f), arg_0.x), vec4<bool>(true, false, true, true)))), true, true, !(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1246f, 168f)) >= _wgslsmith_f_op_f32(trunc(-154f))));
    global1 = array<Struct_2, 25>();
    global1 = array<Struct_2, 25>();
    var_0 = select(vec4<bool>(!any(vec2<bool>(var_0.x, true)), true, true && select(34506i < u_input.c.x, true, true), true), !vec4<bool>(any(vec4<bool>(true, var_0.x, var_0.x, true)) & (var_0.x || true), any(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), false)), false, all(!vec4<bool>(true, var_0.x, false, false))), select(select(select(!vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(false, false, var_0.x, true), select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), false)), !vec4<bool>(false, var_0.x, false, false), !vec4<bool>(var_0.x, true, false, var_0.x)), select(select(vec4<bool>(var_0.x, false, true, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), !vec4<bool>(var_0.x, var_0.x, true, false), select(!vec4<bool>(false, var_0.x, true, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, false), select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x)))), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(825f, 1814f, 1057f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(814f)), -1000f, 641f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(135f - 574f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-638f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2089f)) - 1f))), _wgslsmith_f_op_f32(1234f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-442f, -140f) + 192f))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -639f), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(698f - 1001f), 486f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-545f, 746f) * vec2<f32>(275f, 657f)))), _wgslsmith_f_op_vec2_f32(func_1(global0.yy, ~(~vec4<u32>(8858u, global0.x, 17039u, 1u)))), false)), ~u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1221f), _wgslsmith_f_op_vec2_f32(vec2<f32>(956f, 336f) - vec2<f32>(361f, 1000f)))))), ~(~_wgslsmith_div_u32(global0.x, countOneBits(global0.x))));
    global0 = ~(~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, var_0.d, global0.x, 1u), vec4<u32>(global0.x, 1u, global0.x, var_0.d)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(419f, var_0.a.x, var_0.a.x, -781f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, -784f, var_0.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1753f, var_0.c.x, var_0.c.x, var_0.a.x))))) * vec4<f32>(648f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), -442f));
    let var_2 = global1[_wgslsmith_index_u32(14580u, 25u)];
    global0 = ~(vec4<u32>(1u, var_2.b.d, max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, var_2.b.d, 0u, var_2.b.d), vec4<u32>(4294967295u, var_2.a.d, global0.x, global0.x))), ~50232u) >> (~(~countOneBits(vec4<u32>(0u, 1u, 26546u, 21926u))) % vec4<u32>(32u)));
    global1 = array<Struct_2, 25>();
    global0 = abs(min(select(vec4<u32>(var_0.d, var_0.d, global0.x, 0u), ~vec4<u32>(23096u, global0.x, var_2.b.d, 0u) >> (~vec4<u32>(37412u, 5784u, var_0.d, 4294967295u) % vec4<u32>(32u)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true))), ~vec4<u32>(abs(var_2.b.d), ~var_0.d, _wgslsmith_mod_u32(global0.x, var_0.d), var_2.a.d & global0.x)));
    var var_3 = global0.zw;
    let x = u_input.a;
    s_output = StorageBuffer(~global0.x << (min(~var_2.b.d, 1u) % 32u), ~global0.x, ~_wgslsmith_sub_i32(func_4(global1[_wgslsmith_index_u32(global0.x, 25u)], Struct_3(var_0.b.xx, u_input.c.x, Struct_1(var_1.yy, var_0.b, vec2<f32>(319f, -434f), var_0.d), -555f, vec2<bool>(false, false))) | abs(2147483647i), u_input.c.x), vec3<f32>(1799f, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1951f, var_0.c.x)), var_0.c.x))), _wgslsmith_div_f32(1223f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_sub_vec2_u32(vec2<u32>(~(~global0.x), var_3.x), global0.xy));
}

