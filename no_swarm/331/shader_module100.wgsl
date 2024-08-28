struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(554f, vec4<bool>(true, true, true, true), Struct_2(Struct_1(true, vec3<f32>(571f, 109f, 225f), vec2<i32>(-26177i, -1i)), Struct_1(false, vec3<f32>(129f, 1007f, 1128f), vec2<i32>(2147483647i, 1881i)), 0u, Struct_1(true, vec3<f32>(-717f, -816f, 562f), vec2<i32>(-7974i, -29053i)), 25342u), vec3<u32>(0u, 73188u, 4294967295u)), Struct_3(144f, vec4<bool>(true, false, true, false), Struct_2(Struct_1(false, vec3<f32>(159f, -420f, 371f), vec2<i32>(53058i, 29845i)), Struct_1(true, vec3<f32>(2094f, -1551f, -1789f), vec2<i32>(-21393i, 2147483647i)), 0u, Struct_1(true, vec3<f32>(1779f, -502f, 338f), vec2<i32>(724i, -1i)), 52043u), vec3<u32>(0u, 17810u, 4294967295u)), Struct_3(-545f, vec4<bool>(false, false, false, true), Struct_2(Struct_1(false, vec3<f32>(-726f, 665f, -1660f), vec2<i32>(-1i, 1i)), Struct_1(true, vec3<f32>(631f, -630f, 531f), vec2<i32>(-55648i, -51410i)), 4294967295u, Struct_1(false, vec3<f32>(-1595f, -713f, -783f), vec2<i32>(2861i, 539i)), 4294967295u), vec3<u32>(4294967295u, 19667u, 30845u)), Struct_3(-680f, vec4<bool>(false, true, false, true), Struct_2(Struct_1(true, vec3<f32>(1592f, 364f, 1000f), vec2<i32>(0i, 0i)), Struct_1(false, vec3<f32>(901f, 643f, 141f), vec2<i32>(0i, -27026i)), 0u, Struct_1(false, vec3<f32>(874f, -792f, 2024f), vec2<i32>(2147483647i, -36379i)), 20010u), vec3<u32>(9016u, 0u, 41413u)), Struct_3(1577f, vec4<bool>(true, true, false, true), Struct_2(Struct_1(true, vec3<f32>(-722f, -613f, -845f), vec2<i32>(-22268i, 0i)), Struct_1(true, vec3<f32>(-1316f, -754f, 1188f), vec2<i32>(i32(-2147483648), 0i)), 37505u, Struct_1(true, vec3<f32>(823f, -282f, 171f), vec2<i32>(-991i, 1982i)), 73714u), vec3<u32>(0u, 0u, 5797u)), Struct_3(1000f, vec4<bool>(true, false, false, false), Struct_2(Struct_1(false, vec3<f32>(-194f, 659f, -1295f), vec2<i32>(2147483647i, 14312i)), Struct_1(false, vec3<f32>(-1007f, 228f, 1803f), vec2<i32>(-40477i, 1i)), 70090u, Struct_1(false, vec3<f32>(1188f, -1203f, 1528f), vec2<i32>(18477i, 26141i)), 0u), vec3<u32>(18151u, 75532u, 1u)), Struct_3(-753f, vec4<bool>(false, false, true, false), Struct_2(Struct_1(false, vec3<f32>(239f, 253f, 1000f), vec2<i32>(2147483647i, 0i)), Struct_1(false, vec3<f32>(-260f, -1156f, -1278f), vec2<i32>(2638i, -1i)), 4294967295u, Struct_1(true, vec3<f32>(525f, -2141f, 113f), vec2<i32>(-35571i, 39345i)), 35160u), vec3<u32>(51231u, 50112u, 24136u)), Struct_3(-596f, vec4<bool>(true, true, false, false), Struct_2(Struct_1(true, vec3<f32>(-211f, 877f, 866f), vec2<i32>(-1i, 10279i)), Struct_1(false, vec3<f32>(1165f, 1353f, -579f), vec2<i32>(60736i, -20306i)), 12096u, Struct_1(false, vec3<f32>(189f, -417f, 207f), vec2<i32>(2147483647i, i32(-2147483648))), 6141u), vec3<u32>(57228u, 1u, 3353u)), Struct_3(1474f, vec4<bool>(true, false, true, true), Struct_2(Struct_1(false, vec3<f32>(895f, 1666f, -265f), vec2<i32>(2147483647i, -1i)), Struct_1(true, vec3<f32>(1311f, -1707f, -1996f), vec2<i32>(1i, 2147483647i)), 78303u, Struct_1(false, vec3<f32>(333f, -415f, 409f), vec2<i32>(32997i, -1495i)), 11353u), vec3<u32>(4294967295u, 37185u, 857u)), Struct_3(-1019f, vec4<bool>(true, false, true, true), Struct_2(Struct_1(false, vec3<f32>(-1112f, 331f, 449f), vec2<i32>(-10846i, i32(-2147483648))), Struct_1(true, vec3<f32>(-102f, 890f, 570f), vec2<i32>(2253i, 2147483647i)), 78071u, Struct_1(false, vec3<f32>(270f, 500f, 188f), vec2<i32>(0i, -1i)), 78065u), vec3<u32>(1u, 0u, 1u)), Struct_3(-1000f, vec4<bool>(false, true, false, true), Struct_2(Struct_1(false, vec3<f32>(-150f, -1000f, 511f), vec2<i32>(41742i, 1i)), Struct_1(true, vec3<f32>(252f, 806f, -1055f), vec2<i32>(-24638i, -42263i)), 12544u, Struct_1(true, vec3<f32>(-1543f, 457f, -668f), vec2<i32>(0i, 3587i)), 9745u), vec3<u32>(4294967295u, 0u, 64301u)), Struct_3(-1099f, vec4<bool>(true, true, false, true), Struct_2(Struct_1(true, vec3<f32>(355f, 229f, -722f), vec2<i32>(i32(-2147483648), -2586i)), Struct_1(true, vec3<f32>(2900f, -734f, -1017f), vec2<i32>(0i, -1i)), 82169u, Struct_1(false, vec3<f32>(-1353f, -840f, -1542f), vec2<i32>(-1i, -27499i)), 0u), vec3<u32>(459u, 12895u, 4294967295u)), Struct_3(1309f, vec4<bool>(true, false, true, true), Struct_2(Struct_1(true, vec3<f32>(-2402f, 1737f, 269f), vec2<i32>(22856i, i32(-2147483648))), Struct_1(false, vec3<f32>(-250f, -1740f, 1214f), vec2<i32>(0i, 13116i)), 21266u, Struct_1(false, vec3<f32>(1000f, -597f, -952f), vec2<i32>(i32(-2147483648), 1i)), 1u), vec3<u32>(10050u, 14093u, 1u)), Struct_3(2166f, vec4<bool>(false, true, false, false), Struct_2(Struct_1(false, vec3<f32>(3152f, -582f, 1539f), vec2<i32>(-40601i, 24228i)), Struct_1(false, vec3<f32>(-273f, 1769f, 213f), vec2<i32>(29532i, -1i)), 1u, Struct_1(true, vec3<f32>(-310f, -535f, 528f), vec2<i32>(51966i, 0i)), 17075u), vec3<u32>(4294967295u, 1u, 0u)), Struct_3(1750f, vec4<bool>(false, false, false, false), Struct_2(Struct_1(true, vec3<f32>(180f, -545f, -1990f), vec2<i32>(-16123i, 2147483647i)), Struct_1(false, vec3<f32>(-989f, 492f, -1706f), vec2<i32>(-20125i, 0i)), 37113u, Struct_1(false, vec3<f32>(213f, -1000f, -998f), vec2<i32>(2147483647i, 2147483647i)), 87448u), vec3<u32>(6871u, 24636u, 4294967295u)), Struct_3(2160f, vec4<bool>(false, true, false, true), Struct_2(Struct_1(true, vec3<f32>(-1196f, -1584f, -164f), vec2<i32>(-54i, -1i)), Struct_1(false, vec3<f32>(-1432f, -1966f, -1000f), vec2<i32>(59411i, -20799i)), 1u, Struct_1(true, vec3<f32>(-1781f, 596f, -1000f), vec2<i32>(2147483647i, -9481i)), 2494u), vec3<u32>(128353u, 87938u, 4294967295u)), Struct_3(1785f, vec4<bool>(false, true, false, true), Struct_2(Struct_1(true, vec3<f32>(1734f, 1436f, 1224f), vec2<i32>(-77824i, 0i)), Struct_1(false, vec3<f32>(-1027f, 603f, 476f), vec2<i32>(-1i, 1i)), 1123u, Struct_1(true, vec3<f32>(-1893f, 1000f, 1837f), vec2<i32>(2147483647i, -55701i)), 15110u), vec3<u32>(37511u, 0u, 0u)), Struct_3(-1000f, vec4<bool>(true, false, false, false), Struct_2(Struct_1(false, vec3<f32>(550f, -439f, 1000f), vec2<i32>(46145i, i32(-2147483648))), Struct_1(true, vec3<f32>(943f, -1205f, -501f), vec2<i32>(-1i, -15916i)), 4294967295u, Struct_1(false, vec3<f32>(798f, -1000f, -180f), vec2<i32>(-28171i, -3115i)), 22760u), vec3<u32>(1u, 12633u, 1u)), Struct_3(-632f, vec4<bool>(false, false, true, true), Struct_2(Struct_1(true, vec3<f32>(-361f, -1000f, -571f), vec2<i32>(-2945i, 35265i)), Struct_1(false, vec3<f32>(156f, -152f, 1282f), vec2<i32>(-27302i, 15244i)), 50116u, Struct_1(false, vec3<f32>(-1760f, 592f, 393f), vec2<i32>(i32(-2147483648), 2147483647i)), 4294967295u), vec3<u32>(1u, 0u, 32519u)), Struct_3(-373f, vec4<bool>(false, true, true, true), Struct_2(Struct_1(false, vec3<f32>(145f, 672f, -1548f), vec2<i32>(-1i, 2147483647i)), Struct_1(true, vec3<f32>(-1189f, 2722f, 415f), vec2<i32>(23779i, 2147483647i)), 20889u, Struct_1(false, vec3<f32>(768f, 644f, 1000f), vec2<i32>(19940i, 0i)), 45552u), vec3<u32>(4294967295u, 30857u, 4294967295u)), Struct_3(846f, vec4<bool>(false, false, true, true), Struct_2(Struct_1(true, vec3<f32>(2389f, -620f, 273f), vec2<i32>(0i, 46723i)), Struct_1(false, vec3<f32>(1000f, 1373f, -405f), vec2<i32>(68112i, 1i)), 2266u, Struct_1(false, vec3<f32>(752f, 1203f, 1387f), vec2<i32>(-12642i, -29640i)), 4294967295u), vec3<u32>(0u, 16976u, 0u)), Struct_3(421f, vec4<bool>(false, false, true, false), Struct_2(Struct_1(false, vec3<f32>(-202f, -1430f, 1022f), vec2<i32>(28475i, -1i)), Struct_1(true, vec3<f32>(-864f, -1655f, 1056f), vec2<i32>(-17984i, 27021i)), 36160u, Struct_1(true, vec3<f32>(-1000f, -302f, -327f), vec2<i32>(24663i, i32(-2147483648))), 0u), vec3<u32>(41974u, 0u, 4266u)), Struct_3(1028f, vec4<bool>(false, false, true, false), Struct_2(Struct_1(true, vec3<f32>(-305f, 1000f, 2726f), vec2<i32>(i32(-2147483648), -7595i)), Struct_1(true, vec3<f32>(-1178f, 672f, -178f), vec2<i32>(-18071i, 21038i)), 17474u, Struct_1(true, vec3<f32>(-1453f, -732f, 1776f), vec2<i32>(2147483647i, 2147483647i)), 80930u), vec3<u32>(1u, 131388u, 0u)), Struct_3(-320f, vec4<bool>(true, false, true, true), Struct_2(Struct_1(false, vec3<f32>(482f, 1439f, 1145f), vec2<i32>(5424i, -28548i)), Struct_1(true, vec3<f32>(1110f, 687f, -106f), vec2<i32>(19971i, -1i)), 1650u, Struct_1(false, vec3<f32>(-428f, 237f, 179f), vec2<i32>(2147483647i, 27785i)), 46658u), vec3<u32>(29014u, 1u, 4294967295u)), Struct_3(514f, vec4<bool>(true, true, true, true), Struct_2(Struct_1(true, vec3<f32>(-1186f, -1046f, -606f), vec2<i32>(i32(-2147483648), 0i)), Struct_1(false, vec3<f32>(-314f, -136f, -438f), vec2<i32>(36577i, -43314i)), 0u, Struct_1(false, vec3<f32>(853f, 503f, 1831f), vec2<i32>(-14872i, -1i)), 0u), vec3<u32>(44134u, 11834u, 0u)), Struct_3(1926f, vec4<bool>(false, false, false, true), Struct_2(Struct_1(false, vec3<f32>(-457f, 1142f, -191f), vec2<i32>(-21030i, 0i)), Struct_1(true, vec3<f32>(-822f, -480f, 956f), vec2<i32>(38354i, -13385i)), 4294967295u, Struct_1(false, vec3<f32>(2522f, -451f, -1000f), vec2<i32>(0i, 1i)), 43166u), vec3<u32>(4687u, 0u, 27135u)), Struct_3(-210f, vec4<bool>(true, false, false, false), Struct_2(Struct_1(false, vec3<f32>(-1378f, -948f, -227f), vec2<i32>(1i, i32(-2147483648))), Struct_1(false, vec3<f32>(-793f, -449f, 682f), vec2<i32>(-42779i, 1i)), 4294967295u, Struct_1(false, vec3<f32>(420f, 631f, 240f), vec2<i32>(2147483647i, i32(-2147483648))), 74004u), vec3<u32>(4294967295u, 83661u, 4294967295u)));

var<private> global1: array<u32, 14> = array<u32, 14>(1u, 0u, 14776u, 1u, 20986u, 53241u, 1u, 24694u, 39805u, 5779u, 4294967295u, 1196u, 1u, 0u);

var<private> global2: Struct_5 = Struct_5(false);

var<private> global3: Struct_5;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = Struct_2(Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-913f, 640f), 1408f, _wgslsmith_f_op_f32(f32(-1f) * -463f)))), _wgslsmith_sub_vec2_i32(-(~vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-1i) * -vec2<i32>(2147483647i, -53672i))), Struct_1(!all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, global3.a))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-694f, -668f, -1522f) + vec3<f32>(783f, 1095f, 453f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(539f, 533f, 1139f)))))), ~reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -16073i), vec2<i32>(u_input.b, u_input.b)))), u_input.a & (abs(4294967295u) & (~global1[_wgslsmith_index_u32(u_input.a, 14u)] << (countOneBits(42623u) % 32u))), Struct_1(!all(select(vec4<bool>(arg_0, global2.a, false, true), vec4<bool>(arg_0, true, true, true), vec4<bool>(global2.a, arg_0, false, true))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(250f, 515f, 1059f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(620f, -1160f, 442f) + vec3<f32>(280f, -933f, 785f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1497f, 1535f, -2061f) - vec3<f32>(802f, -823f, 991f))))), reverseBits(-vec2<i32>(u_input.b, u_input.b))), 0u);
    let var_1 = Struct_4(u_input.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2268f * var_0.b.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(var_0.a.b.x + -1620f)))))), _wgslsmith_mult_vec2_u32(~countOneBits(vec2<u32>(1u, global1[_wgslsmith_index_u32(var_0.e, 14u)])) >> (~vec2<u32>(2965u, u_input.a) % vec2<u32>(32u)), vec2<u32>(~global1[_wgslsmith_index_u32(13146u, 14u)] | 0u, ~firstTrailingBit(19828u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-708f)), _wgslsmith_f_op_f32(trunc(var_0.b.b.x)), true)), _wgslsmith_f_op_f32(abs(var_0.a.b.x)), var_1.b, _wgslsmith_f_op_f32(-var_0.b.b.x))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.b.x, var_1.b, _wgslsmith_f_op_f32(round(var_1.b)), var_1.b)))));
    global1 = array<u32, 14>();
    let var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(abs(~(~37898u)), 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 6899u) >> (vec4<u32>(0u, 4294967295u, var_0.c, 0u) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, global1[_wgslsmith_index_u32(6275u, 14u)], var_1.c.x), vec4<u32>(47130u, u_input.a, 0u, var_0.e)))), vec3<u32>(4294967295u, 87400u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, var_1.c.x, 0u)), vec3<u32>(37340u, u_input.a, global1[_wgslsmith_index_u32(var_1.c.x, 14u)])), _wgslsmith_clamp_u32(80583u, var_1.c.x, u_input.a) << (var_1.c.x % 32u))));
    return -_wgslsmith_add_i32(var_1.a, -u_input.b);
}

fn func_2(arg_0: Struct_3) -> vec2<f32> {
    global1 = array<u32, 14>();
    let var_0 = Struct_4(u_input.b ^ func_3(u_input.b <= _wgslsmith_sub_i32(-2147483647i, arg_0.c.d.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)))), abs(arg_0.d.yz));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -509f)), _wgslsmith_f_op_f32(step(1661f, 1463f)), 1003f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(449f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1949f, arg_0.a, -970f, 1309f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.b.b.x, 1000f, var_0.b, var_0.b)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(abs(661f)), _wgslsmith_f_op_f32(2971f - var_0.b)))), select(select(select(arg_0.b, !arg_0.b, arg_0.b.x), select(select(vec4<bool>(false, true, false, false), arg_0.b, true), select(arg_0.b, arg_0.b, arg_0.b.x), global3.a), !all(arg_0.b.wy)), vec4<bool>(global3.a, ~12824u >= _wgslsmith_dot_vec3_u32(arg_0.d, arg_0.d), !global2.a, global3.a), select(true, true, var_0.c.x > 0u))));
    global1 = array<u32, 14>();
    let var_2 = vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), 654f)));
    return var_1.yy;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_2 {
    global0 = array<Struct_3, 27>();
    let var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(51789u >> (1u % 32u), arg_3.c.x, _wgslsmith_mod_u32(arg_3.c.x, arg_3.c.x), 4294967295u), vec4<u32>(~4294967295u, 0u, u_input.a, _wgslsmith_div_u32(1429u, 93529u)));
    var var_1 = Struct_2(arg_1, arg_1, arg_2.x, Struct_1(false, _wgslsmith_f_op_vec3_f32(arg_1.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -309f, 1391f) + vec3<f32>(-563f, -1419f, 1454f)))), (abs(vec2<i32>(u_input.b, arg_1.c.x)) << ((vec2<u32>(arg_3.c.x, u_input.a) << (vec2<u32>(62108u, global1[_wgslsmith_index_u32(62059u, 14u)]) % vec2<u32>(32u))) % vec2<u32>(32u))) | abs(-vec2<i32>(-13440i, u_input.b))), arg_2.x);
    let var_2 = Struct_2(Struct_1(false && arg_1.a, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.x, 1741f))), arg_3.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.b - arg_0.x), arg_0.x, var_1.d.a))), var_1.d.c), Struct_1(false, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_1.b, vec3<f32>(arg_1.b.x, -1705f, var_1.a.b.x)), _wgslsmith_f_op_vec3_f32(select(var_1.b.b, vec3<f32>(-495f, arg_0.x, arg_3.b), vec3<bool>(false, arg_1.a, true))), false)), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - 1090f), arg_0.x, _wgslsmith_f_op_f32(arg_0.x * arg_3.b)))), firstLeadingBit(var_1.d.c)), u_input.a, var_1.a, arg_3.c.x);
    let var_3 = var_2;
    return Struct_2(Struct_1(any(vec3<bool>(arg_1.a | false, var_0.x > var_2.e, select(var_3.a.a, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.x, 767f, var_2.d.b.x), vec3<f32>(349f, 1445f, var_2.a.b.x))) * _wgslsmith_f_op_vec3_f32(-var_2.d.b)), vec2<i32>(max(var_2.a.c.x, var_3.a.c.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, var_3.a.c.x, -24077i), -vec3<i32>(var_3.b.c.x, var_3.b.c.x, var_3.b.c.x)))), var_3.a, 1u, Struct_1(false, var_1.a.b, _wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i), arg_1.c)), -select(vec2<i32>(var_2.a.c.x, 47838i), arg_1.c, true))), var_3.c);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(0i, -925f, _wgslsmith_mod_vec2_u32(vec2<u32>(12098u, _wgslsmith_mult_u32(7028u ^ u_input.a, u_input.a)), vec2<u32>(~(7523u & global1[_wgslsmith_index_u32(52340u, 14u)]), firstLeadingBit(49724u | global1[_wgslsmith_index_u32(71923u, 14u)]))));
    let var_1 = 0i;
    let var_2 = 1225f;
    var var_3 = var_0.c;
    var var_4 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~var_0.c, var_0.c) << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.x, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(var_3.x, var_3.x), vec2<u32>(54749u, global1[_wgslsmith_index_u32(var_3.x, 14u)]))) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(30869u, firstTrailingBit(1u)), 4294967295u << (var_0.c.x % 32u))), u_input.a);
    return func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.b)) * vec2<f32>(-1687f, -1677f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -528f)) + vec2<f32>(var_0.b, -204f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(386f, var_2) * vec2<f32>(var_0.b, 472f)) * _wgslsmith_f_op_vec2_f32(func_2(Struct_3(-403f, vec4<bool>(global2.a, global2.a, global2.a, false), Struct_2(Struct_1(global3.a, vec3<f32>(var_2, 998f, var_2), vec2<i32>(var_1, var_1)), Struct_1(false, vec3<f32>(var_0.b, var_2, var_2), vec2<i32>(var_0.a, 2959i)), 6429u, Struct_1(global3.a, vec3<f32>(470f, 281f, var_0.b), vec2<i32>(-17890i, 0i)), global1[_wgslsmith_index_u32(22144u, 14u)]), vec3<u32>(global1[_wgslsmith_index_u32(0u, 14u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]))))), false))), Struct_1(!global3.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_2, var_0.b), 1299f, -320f)), -(max(vec2<i32>(-4360i, u_input.b), vec2<i32>(2147483647i, -10645i)) ^ max(vec2<i32>(-37272i, var_1), vec2<i32>(9939i, 0i)))), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.c.x, 0u, global1[_wgslsmith_index_u32(var_0.c.x, 14u)]) ^ vec4<u32>(var_0.c.x, global1[_wgslsmith_index_u32(4417u, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)], var_0.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, global1[_wgslsmith_index_u32(47148u, 14u)], 15666u, 29722u), vec4<u32>(1u, 34735u, 1u, 0u))), _wgslsmith_sub_u32(firstLeadingBit(1u << (var_3.x % 32u)), ~(~1u))), var_0);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_5) -> Struct_5 {
    var var_0 = abs(arg_1.d.zx);
    let var_1 = !vec3<bool>(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.d.b.yx, arg_0.d.b.yx))), arg_1.c.b, abs(_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 14u)], arg_0.e), vec2<u32>(global1[_wgslsmith_index_u32(var_0.x, 14u)], arg_0.c))), Struct_4(arg_0.a.c.x ^ arg_0.a.c.x, -683f, arg_2.yz)).b.a, arg_3.a, true);
    let var_2 = select(abs(-vec2<i32>(_wgslsmith_mod_i32(u_input.b, 0i), -arg_0.b.c.x)), ~(-(-arg_1.c.b.c | ~arg_0.b.c)), select(var_1.zx, !var_1.yz, select(vec2<bool>(func_4(arg_1.c.d.b.zx, arg_1.c.a, vec2<u32>(arg_0.c, 1u), Struct_4(arg_0.d.c.x, -1546f, vec2<u32>(4294967295u, 1u))).b.a, all(vec2<bool>(arg_0.d.a, var_1.x))), !select(arg_1.b.xw, vec2<bool>(true, arg_3.a), true), true)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c.d.b)));
    var var_4 = select(vec4<bool>(true, true, var_1.x, func_1().d.a), select(arg_1.b, select(select(arg_1.b, select(arg_1.b, vec4<bool>(arg_3.a, false, false, false), arg_0.d.a), arg_1.b), !arg_1.b, false), all(!arg_1.b)), select(global3.a, !(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(arg_1.a, arg_1.b, Struct_2(arg_0.a, arg_1.c.b, 8607u, Struct_1(arg_3.a, arg_0.b.b, var_2), 45497u), vec3<u32>(35437u, u_input.a, 30462u)))).x == -242f), !global2.a));
    return Struct_5(false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(func_1(), global0[_wgslsmith_index_u32(reverseBits(1u), 27u)], _wgslsmith_sub_vec4_u32(~vec4<u32>(~global1[_wgslsmith_index_u32(u_input.a, 14u)], u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(8502u, 14u)], 0u), vec4<u32>(global1[_wgslsmith_index_u32(47561u, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)], u_input.a, 4294967295u)), ~54949u), max(vec4<u32>(1u, _wgslsmith_div_u32(u_input.a, 0u), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(43199u, 14u)], 4294967295u), abs(global1[_wgslsmith_index_u32(4294967295u, 14u)])), ~abs(vec4<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 14u)], 1u, global1[_wgslsmith_index_u32(u_input.a, 14u)])))), Struct_5(global2.a));
    let var_0 = _wgslsmith_f_op_f32(floor(-433f));
    let var_1 = Struct_5(true);
    var var_2 = var_1.a;
    var var_3 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(782f * var_0)) * _wgslsmith_f_op_vec3_f32(-func_1().b.b)), ~(-vec2<i32>(u_input.b, -45447i)) & abs(func_4(vec2<f32>(var_0, var_0), Struct_1(false, vec3<f32>(var_0, var_0, var_0), vec2<i32>(u_input.b, 2147483647i)), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 14u)], global1[_wgslsmith_index_u32(0u, 14u)]), Struct_4(u_input.b, var_0, vec2<u32>(4294967295u, 27226u))).d.c)), Struct_1(!func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-714f, 3285f) - vec2<f32>(var_0, -125f)), Struct_1(global2.a, vec3<f32>(var_0, var_0, var_0), vec2<i32>(-36513i, u_input.b)), ~vec2<u32>(47110u, u_input.a), Struct_4(u_input.b, -811f, vec2<u32>(14761u, u_input.a))).b.a, _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 1207f) * vec3<f32>(var_0, var_0, var_0)))), _wgslsmith_div_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -13702i), vec2<i32>(0i, u_input.b), vec2<i32>(0i, u_input.b)), -vec2<i32>(50555i, 2147483647i))), global1[_wgslsmith_index_u32(13827u ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 14u)])), select(vec2<u32>(global1[_wgslsmith_index_u32(30050u, 14u)], 8585u), vec2<u32>(u_input.a, 44159u), var_1.a)), 0u), 14u)], func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 190f)), -1000f), Struct_1(u_input.a == u_input.a, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, -855f, -1708f))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 12605i) ^ vec2<i32>(u_input.b, 7179i), firstTrailingBit(vec2<i32>(-11068i, 1i)))), ~(~vec2<u32>(global1[_wgslsmith_index_u32(73141u, 14u)], u_input.a)), Struct_4(-54771i, -2143f, ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 74565u), vec2<u32>(5507u, u_input.a)))).b, ~u_input.a);
    var_3 = func_4(vec2<f32>(var_3.b.b.x, 272f), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(round(var_0))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.d.b.zy - vec2<f32>(879f, var_0)), vec2<f32>(560f, -903f))), var_3.b, vec2<u32>(~_wgslsmith_mult_u32(u_input.a, 132184u), ~37579u), Struct_4(-10635i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, var_3.b.b.x, var_3.d.a)) + _wgslsmith_f_op_f32(1007f + -766f)), vec2<u32>(global1[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.c, 14u)], 14u)]), 14u)], func_4(vec2<f32>(-1920f, var_3.d.b.x), Struct_1(var_3.a.a, var_3.b.b, vec2<i32>(var_3.b.c.x, 0i)), vec2<u32>(var_3.c, var_3.c), Struct_4(-37267i, -426f, vec2<u32>(19022u, var_3.e))).e))).a, firstLeadingBit(~max(vec2<u32>(u_input.a, u_input.a), select(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a, 4294967295u), vec2<bool>(global3.a, var_1.a)))), Struct_4(u_input.b, -502f, vec2<u32>(~_wgslsmith_sub_u32(u_input.a, 1u), global1[_wgslsmith_index_u32(1u, 14u)])));
    let var_4 = vec3<bool>(global3.a && true, global2.a, global3.a);
    let var_5 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(var_3.c, u_input.a, var_3.e, 4294967295u), reverseBits(vec4<u32>(33488u, global1[_wgslsmith_index_u32(1u, 14u)], 60750u, 0u))), firstLeadingBit(vec4<u32>(4294967295u, var_3.c, var_3.e, var_3.e)) << (min(vec4<u32>(11622u, 1u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 14u)]), vec4<u32>(20149u, global1[_wgslsmith_index_u32(8229u, 14u)], var_3.c, 0u)) % vec4<u32>(32u))), 27u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.b.b.yx) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-562f, var_3.d.b.x) * vec2<f32>(2047f, -682f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_add_i32(abs(var_3.a.c.x), -var_3.b.c.x)), ~(~(~(-40562i)))), ~firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 20431u, 23395u, 13715u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 14u)], u_input.a, var_3.c, global1[_wgslsmith_index_u32(0u, 14u)]))), abs(~vec2<u32>(_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(1u, 14u)]), 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1107f, var_0, var_5.x, 1963f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.b.b.x, var_0, var_0, -520f), vec4<f32>(-1389f, var_0, var_0, var_3.b.b.x)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_5.x, 1132f, var_5.x, -1000f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1670f, var_0, -595f, var_5.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_5.x, 843f, -1467f, var_3.a.b.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(768f, 614f, -830f, -642f) + vec4<f32>(-588f, var_5.x, 715f, var_3.a.b.x))))));
}

