struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec2<u32>(0u, 75519u), vec2<f32>(-1000f, 135f), vec4<u32>(61830u, 1u, 46323u, 78666u), false, vec4<f32>(434f, -273f, 270f, -813f)), vec4<f32>(-1666f, -933f, -960f, 564f), Struct_1(vec2<u32>(44338u, 1u), vec2<f32>(503f, -738f), vec4<u32>(1070u, 1u, 1u, 1u), false, vec4<f32>(1000f, -559f, -741f, 513f)), vec2<u32>(4294967295u, 20581u), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec2<u32>(0u, 12013u), vec2<f32>(-944f, 583f), vec4<u32>(18255u, 8958u, 29573u, 0u), true, vec4<f32>(-2194f, 1323f, 412f, -807f)), vec4<f32>(-1540f, -101f, 907f, 1000f), Struct_1(vec2<u32>(3329u, 4294967295u), vec2<f32>(-1760f, -764f), vec4<u32>(1u, 61060u, 1u, 57355u), false, vec4<f32>(-698f, 1489f, -386f, 171f)), vec2<u32>(74934u, 4294967295u), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(vec2<u32>(52682u, 32345u), vec2<f32>(-421f, 640f), vec4<u32>(15981u, 4294967295u, 27408u, 58167u), true, vec4<f32>(1000f, -1606f, -664f, -2038f)), vec4<f32>(479f, -420f, -462f, -820f), Struct_1(vec2<u32>(61951u, 4294967295u), vec2<f32>(1102f, -1416f), vec4<u32>(101503u, 1u, 1u, 11317u), true, vec4<f32>(1484f, -1639f, -1834f, 1000f)), vec2<u32>(89879u, 1u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec2<u32>(20327u, 1u), vec2<f32>(-137f, 558f), vec4<u32>(1u, 69475u, 0u, 6803u), true, vec4<f32>(167f, 339f, 1286f, 770f)), vec4<f32>(-180f, 1217f, -775f, -1000f), Struct_1(vec2<u32>(62875u, 27103u), vec2<f32>(-164f, -1091f), vec4<u32>(4294967295u, 35256u, 24368u, 0u), true, vec4<f32>(358f, -223f, 730f, -2526f)), vec2<u32>(38752u, 1u), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec2<f32>(914f, 372f), vec4<u32>(37267u, 4294967295u, 53041u, 4294967295u), false, vec4<f32>(1967f, -1363f, 1442f, 1005f)), vec4<f32>(112f, -1019f, -594f, -1304f), Struct_1(vec2<u32>(24601u, 1u), vec2<f32>(414f, 903f), vec4<u32>(70774u, 4294967295u, 0u, 14771u), false, vec4<f32>(1787f, 449f, -187f, 1056f)), vec2<u32>(39923u, 57160u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec2<u32>(8353u, 68899u), vec2<f32>(-284f, 1114f), vec4<u32>(1u, 65566u, 4294967295u, 57492u), true, vec4<f32>(1183f, 234f, -705f, -264f)), vec4<f32>(-940f, 1000f, 172f, -1506f), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<f32>(1257f, 911f), vec4<u32>(1u, 8197u, 0u, 0u), false, vec4<f32>(794f, 459f, 1536f, -1812f)), vec2<u32>(1u, 15674u), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec2<u32>(4294967295u, 12476u), vec2<f32>(-1869f, 311f), vec4<u32>(24548u, 42251u, 0u, 13152u), false, vec4<f32>(391f, 943f, 249f, 1583f)), vec4<f32>(618f, 1716f, -1228f, 511f), Struct_1(vec2<u32>(0u, 0u), vec2<f32>(-163f, 1344f), vec4<u32>(4294967295u, 1u, 47379u, 4294967295u), true, vec4<f32>(485f, -1000f, 473f, 374f)), vec2<u32>(30294u, 79123u), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec2<f32>(815f, 1164f), vec4<u32>(64340u, 4294967295u, 84390u, 4294967295u), false, vec4<f32>(560f, 726f, 1405f, 923f)), vec4<f32>(1176f, 1000f, -316f, -445f), Struct_1(vec2<u32>(32826u, 28536u), vec2<f32>(1573f, -734f), vec4<u32>(4294967295u, 50780u, 74365u, 0u), false, vec4<f32>(-1705f, 3165f, -836f, -201f)), vec2<u32>(4294967295u, 33810u), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<f32>(692f, -166f), vec4<u32>(42469u, 4294967295u, 21869u, 0u), false, vec4<f32>(-776f, -513f, -749f, 414f)), vec4<f32>(-1166f, -1634f, -543f, -1643f), Struct_1(vec2<u32>(1u, 1u), vec2<f32>(-1352f, 1055f), vec4<u32>(33144u, 113434u, 937u, 0u), false, vec4<f32>(257f, -604f, -952f, 1623f)), vec2<u32>(4294967295u, 87867u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec2<u32>(74334u, 1u), vec2<f32>(-1052f, -1095f), vec4<u32>(40027u, 41490u, 4294967295u, 1u), false, vec4<f32>(-2136f, -239f, -2761f, -549f)), vec4<f32>(138f, 3109f, 446f, 264f), Struct_1(vec2<u32>(0u, 47942u), vec2<f32>(1440f, 393f), vec4<u32>(74979u, 11680u, 4294967295u, 21955u), true, vec4<f32>(619f, -565f, 2064f, 104f)), vec2<u32>(27952u, 118881u), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec2<u32>(14232u, 43886u), vec2<f32>(-317f, -294f), vec4<u32>(0u, 4294967295u, 1u, 1u), true, vec4<f32>(-1913f, 592f, 1000f, 1423f)), vec4<f32>(-625f, -103f, -332f, -270f), Struct_1(vec2<u32>(58127u, 48436u), vec2<f32>(187f, 1659f), vec4<u32>(0u, 3489u, 0u, 4294967295u), true, vec4<f32>(-774f, 1018f, -199f, 637f)), vec2<u32>(41790u, 35299u), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec2<f32>(-394f, -1191f), vec4<u32>(58143u, 61796u, 26659u, 22999u), false, vec4<f32>(1844f, -737f, 480f, 665f)), vec4<f32>(-508f, -633f, -699f, -246f), Struct_1(vec2<u32>(12373u, 1u), vec2<f32>(-835f, -1258f), vec4<u32>(1u, 4294967295u, 0u, 12755u), true, vec4<f32>(1575f, 217f, -961f, 948f)), vec2<u32>(20538u, 1u), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec2<f32>(1000f, -1386f), vec4<u32>(4294967295u, 29638u, 46798u, 1u), false, vec4<f32>(-355f, 572f, 117f, -503f)), vec4<f32>(1663f, 406f, -288f, -1447f), Struct_1(vec2<u32>(58589u, 30873u), vec2<f32>(875f, -365f), vec4<u32>(4294967295u, 48202u, 0u, 51464u), false, vec4<f32>(-719f, -882f, -165f, -1000f)), vec2<u32>(93226u, 4294967295u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec2<u32>(37262u, 29878u), vec2<f32>(1000f, -552f), vec4<u32>(1u, 4294967295u, 22062u, 16895u), true, vec4<f32>(1087f, 1000f, 532f, -382f)), vec4<f32>(297f, -717f, -870f, -553f), Struct_1(vec2<u32>(1u, 55772u), vec2<f32>(246f, -287f), vec4<u32>(1u, 20904u, 55964u, 0u), true, vec4<f32>(-804f, -291f, -1254f, 960f)), vec2<u32>(3958u, 27324u), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec2<u32>(1634u, 83161u), vec2<f32>(1698f, 1300f), vec4<u32>(0u, 66621u, 0u, 51601u), true, vec4<f32>(-1000f, -1458f, -122f, 1091f)), vec4<f32>(616f, -255f, -851f, 844f), Struct_1(vec2<u32>(58979u, 41102u), vec2<f32>(-825f, 1433f), vec4<u32>(10854u, 34778u, 9758u, 34614u), true, vec4<f32>(1034f, -1945f, 1000f, 466f)), vec2<u32>(1u, 4294967295u), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(vec2<u32>(0u, 53538u), vec2<f32>(906f, -206f), vec4<u32>(24707u, 0u, 1u, 78389u), false, vec4<f32>(1308f, 621f, -362f, -966f)), vec4<f32>(975f, 1031f, 1324f, -1504f), Struct_1(vec2<u32>(23632u, 39255u), vec2<f32>(-1000f, -1500f), vec4<u32>(4294967295u, 47401u, 1u, 1u), true, vec4<f32>(743f, -549f, -401f, 914f)), vec2<u32>(6361u, 52416u), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), vec2<f32>(-1000f, 1000f), vec4<u32>(11759u, 1u, 74477u, 0u), false, vec4<f32>(1777f, -624f, 245f, -102f)), vec4<f32>(-213f, -966f, 1719f, -127f), Struct_1(vec2<u32>(67899u, 28845u), vec2<f32>(-153f, -1099f), vec4<u32>(1u, 0u, 4294967295u, 0u), true, vec4<f32>(1538f, -1177f, -143f, -813f)), vec2<u32>(4294967295u, 46906u), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec2<f32>(-1221f, -1000f), vec4<u32>(35015u, 15473u, 0u, 16644u), true, vec4<f32>(1620f, -237f, 550f, -429f)), vec4<f32>(-487f, 543f, 1585f, 591f), Struct_1(vec2<u32>(22362u, 4294967295u), vec2<f32>(-483f, -1000f), vec4<u32>(1u, 4294967295u, 54153u, 37126u), false, vec4<f32>(231f, -769f, -710f, -1658f)), vec2<u32>(1u, 1u), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec2<u32>(45033u, 25051u), vec2<f32>(-549f, 260f), vec4<u32>(4294967295u, 53728u, 13839u, 1u), false, vec4<f32>(579f, -2042f, 534f, -224f)), vec4<f32>(-930f, 271f, 745f, -548f), Struct_1(vec2<u32>(4294967295u, 0u), vec2<f32>(1632f, -350f), vec4<u32>(3376u, 80366u, 72008u, 0u), false, vec4<f32>(689f, -1149f, -450f, -1541f)), vec2<u32>(1u, 1u), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec2<f32>(1546f, 1109f), vec4<u32>(61163u, 0u, 4294967295u, 0u), false, vec4<f32>(3761f, -418f, -1781f, 785f)), vec4<f32>(-2375f, 2337f, 922f, -705f), Struct_1(vec2<u32>(3716u, 4858u), vec2<f32>(1077f, -453f), vec4<u32>(17913u, 0u, 1u, 4294967295u), false, vec4<f32>(-1999f, -218f, -1267f, -471f)), vec2<u32>(1u, 0u), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec2<u32>(7395u, 10434u), vec2<f32>(-118f, 1363f), vec4<u32>(27606u, 32280u, 52801u, 1u), true, vec4<f32>(-478f, 1215f, -656f, -978f)), vec4<f32>(-525f, 1000f, 1304f, 1901f), Struct_1(vec2<u32>(1u, 1u), vec2<f32>(-297f, -574f), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), false, vec4<f32>(1682f, 465f, 656f, -386f)), vec2<u32>(56023u, 63153u), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(vec2<u32>(13447u, 0u), vec2<f32>(-1113f, 869f), vec4<u32>(34382u, 0u, 42088u, 4294967295u), true, vec4<f32>(2204f, -124f, -1480f, -2066f)), vec4<f32>(-297f, -1037f, 1563f, 1238f), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<f32>(1449f, -380f), vec4<u32>(2386u, 22559u, 26787u, 33693u), false, vec4<f32>(-1132f, -1322f, 382f, -127f)), vec2<u32>(4294967295u, 8862u), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec2<f32>(-291f, 361f), vec4<u32>(108345u, 0u, 0u, 2394u), false, vec4<f32>(398f, -499f, 130f, -129f)), vec4<f32>(-582f, 190f, -1000f, -2145f), Struct_1(vec2<u32>(4294967295u, 6403u), vec2<f32>(-335f, -2197f), vec4<u32>(0u, 27991u, 21536u, 8847u), true, vec4<f32>(1577f, 1889f, -1380f, 1478f)), vec2<u32>(0u, 1u), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec2<u32>(85183u, 65240u), vec2<f32>(-234f, 676f), vec4<u32>(24301u, 0u, 27826u, 20260u), false, vec4<f32>(1936f, 1733f, 1000f, -238f)), vec4<f32>(472f, 1026f, -401f, 878f), Struct_1(vec2<u32>(1u, 0u), vec2<f32>(-199f, 1438f), vec4<u32>(6947u, 1324u, 51379u, 43658u), false, vec4<f32>(262f, 1000f, -122f, 1814f)), vec2<u32>(129195u, 51523u), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec2<u32>(1u, 37694u), vec2<f32>(1000f, 133f), vec4<u32>(7381u, 0u, 1u, 4294967295u), false, vec4<f32>(-483f, -824f, 525f, 696f)), vec4<f32>(-972f, -502f, -289f, -420f), Struct_1(vec2<u32>(18924u, 9567u), vec2<f32>(925f, -1486f), vec4<u32>(0u, 29428u, 0u, 1u), false, vec4<f32>(-1507f, 220f, -1399f, -201f)), vec2<u32>(0u, 9730u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec2<f32>(-1394f, 289f), vec4<u32>(37143u, 45729u, 1u, 1u), false, vec4<f32>(-465f, -1074f, -922f, 1172f)), vec4<f32>(-1067f, 214f, -631f, -481f), Struct_1(vec2<u32>(0u, 0u), vec2<f32>(-2039f, 1119f), vec4<u32>(46966u, 1u, 41372u, 4294967295u), true, vec4<f32>(164f, 528f, -926f, -632f)), vec2<u32>(25344u, 1u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec2<u32>(12794u, 24131u), vec2<f32>(960f, -1000f), vec4<u32>(20764u, 22720u, 13413u, 0u), false, vec4<f32>(-945f, -811f, -585f, 509f)), vec4<f32>(1267f, -341f, 514f, -2011f), Struct_1(vec2<u32>(0u, 1u), vec2<f32>(-481f, 973f), vec4<u32>(4294967295u, 10184u, 4294967295u, 8398u), true, vec4<f32>(2592f, 815f, -150f, -705f)), vec2<u32>(4294967295u, 28868u), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec2<u32>(88901u, 4294967295u), vec2<f32>(-1000f, -1088f), vec4<u32>(21281u, 650u, 53865u, 1u), false, vec4<f32>(334f, 1473f, 209f, -759f)), vec4<f32>(-1000f, -1521f, 1000f, 481f), Struct_1(vec2<u32>(1u, 1u), vec2<f32>(-485f, -532f), vec4<u32>(4294967295u, 47132u, 13019u, 4294967295u), false, vec4<f32>(-215f, -1169f, 608f, -292f)), vec2<u32>(1u, 4294967295u), vec4<bool>(true, false, false, true)));

var<private> global1: array<f32, 14> = array<f32, 14>(-312f, -1000f, -621f, -960f, 1613f, 1434f, 830f, -1804f, 1886f, -154f, -502f, -373f, 1000f, -561f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>) -> u32 {
    global0 = array<Struct_2, 28>();
    global1 = array<f32, 14>();
    let var_0 = ~(~vec4<u32>(reverseBits(arg_0.x << (85344u % 32u)), u_input.b, 0u, 0u));
    global0 = array<Struct_2, 28>();
    var var_1 = 1i;
    return firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.yww | vec3<u32>(u_input.b, 2485u, 0u), max(firstLeadingBit(vec3<u32>(arg_0.x, 0u, 26248u)), vec3<u32>(var_0.x, u_input.b, arg_0.x))), select(arg_0.wyw, var_0.xyw, vec3<bool>(any(vec3<bool>(false, false, false)), arg_1.x == 343f, true))));
}

fn func_2() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-491f, -822f, 603f)))));
    let var_1 = func_3(vec4<u32>(u_input.b, 0u, ~0u, u_input.b << (_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), 94230u) % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1466f - global1[_wgslsmith_index_u32(u_input.a, 14u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * 742f), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global1[_wgslsmith_index_u32(u_input.b, 14u)]) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 14u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-332f + global1[_wgslsmith_index_u32(u_input.b, 14u)]) - global1[_wgslsmith_index_u32(0u, 14u)]))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 14u)], 1882f, global1[_wgslsmith_index_u32(u_input.b, 14u)])))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1, var_1), 14u)])))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1, 27798u), firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(var_1, u_input.a)))), vec2<f32>(_wgslsmith_f_op_f32(sign(-1307f)), 152f), ~(~(~vec4<u32>(96793u, 23256u, var_1, 1u))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 557f, global1[_wgslsmith_index_u32(1u, 14u)], 1124f) - vec4<f32>(global1[_wgslsmith_index_u32(var_1, 14u)], -377f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1515f, 245f, var_0.x) + vec4<f32>(-928f, global1[_wgslsmith_index_u32(var_1, 14u)], 1000f, 1300f))) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-682f - var_0.x), -1460f, _wgslsmith_f_op_f32(1203f + 590f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1326f)), 923f, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_div_f32(-213f, 737f)))), Struct_1(reverseBits(min(vec2<u32>(0u, var_1), vec2<u32>(var_1, 63418u))) ^ (~vec2<u32>(4294967295u, var_1) >> (vec2<u32>(var_1, 0u) % vec2<u32>(32u))), _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 4294967295u), 14u)], var_0.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -565f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 14u)] - 750f))), reverseBits(min(~vec4<u32>(0u, var_1, 35192u, u_input.b), vec4<u32>(u_input.a, var_1, 1u, var_1))), !select(true, any(vec2<bool>(false, true)), select(false, false, false)), vec4<f32>(323f, _wgslsmith_f_op_f32(select(-787f, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.b, 14u)])), true)), -1525f, var_0.x)), ~firstLeadingBit(~(~vec2<u32>(29093u, 20356u))), select(vec4<bool>(!select(true, true, false), ~0u == _wgslsmith_add_u32(u_input.a, 4294967295u), !(var_1 > 68314u), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), true));
    global1 = array<f32, 14>();
    return vec2<i32>(1i, 1i);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = max(~(vec2<u32>(reverseBits(arg_0.a), ~arg_3.x) ^ vec2<u32>(arg_1.a >> (4294967295u % 32u), 0u)), vec2<u32>(1u, ~(~(~81457u))));
    let var_1 = countOneBits(select(~(vec2<i32>(-28851i, arg_1.c) & vec2<i32>(64603i, -1i)) & -func_2(), vec2<i32>(arg_1.c | arg_1.c, 29075i), true));
    global0 = array<Struct_2, 28>();
    let var_2 = Struct_3(arg_3.x, Struct_2(Struct_1(vec2<u32>(1u, 13049u), vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 14u)] + arg_0.b.b.x), _wgslsmith_f_op_f32(min(209f, arg_0.b.a.b.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.x, 0u, 30641u, 1u) & vec4<u32>(var_0.x, 4294967295u, var_0.x, 3428u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b.a.a.x, 1u, 4294967295u, 46540u), vec4<u32>(arg_3.x, 19396u, arg_1.d, arg_0.d))), any(arg_1.b.e.yxw), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c.e.x, global1[_wgslsmith_index_u32(arg_3.x, 14u)], 641f, arg_0.b.c.b.x) + arg_1.b.b)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(arg_1.b.a.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(824f, arg_1.b.a.e.x, global1[_wgslsmith_index_u32(arg_3.x, 14u)], 1407f)))), arg_1.b.a, _wgslsmith_add_vec2_u32(min(vec2<u32>(arg_0.b.a.a.x, u_input.b) << (arg_0.b.c.a % vec2<u32>(32u)), arg_0.b.c.c.yz), vec2<u32>(34547u, ~u_input.a)), select(select(vec4<bool>(true, false, arg_2.x, false), arg_1.b.e, !arg_2), vec4<bool>(any(arg_0.b.e.yww), false, arg_1.b.c.c.x > 21038u, all(vec2<bool>(arg_0.b.c.d, true))), arg_0.b.c.e.x >= -153f)), ~(~20934i), _wgslsmith_div_u32(u_input.a << ((arg_1.b.d.x & arg_3.x) % 32u), var_0.x));
    let var_3 = min(~vec4<i32>(abs(_wgslsmith_mod_i32(-27716i, arg_1.c)), ~countOneBits(-1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(6849i, arg_0.c), ~var_1), arg_0.c), -countOneBits(_wgslsmith_add_vec4_i32(max(vec4<i32>(-1i, -1i, arg_1.c, -1i), vec4<i32>(8469i, 1i, var_1.x, var_2.c)), vec4<i32>(1i, 0i, 59510i, arg_1.c))));
    return Struct_1(~(~min(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, arg_3.x))), _wgslsmith_f_op_vec2_f32(-arg_1.b.c.b), var_2.b.c.c, all(select(arg_1.b.e.yy, !vec2<bool>(arg_0.b.c.d, arg_1.b.c.d), var_2.b.c.d && all(vec3<bool>(true, false, arg_1.b.e.x)))), _wgslsmith_f_op_vec4_f32(arg_1.b.a.e * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_1.b.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-562f, var_2.b.a.e.x, -861f, 201f)))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_3(arg_3.a.x, global0[_wgslsmith_index_u32(4294967295u, 28u)], select(~(i32(-1i) * -42940i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 0i, -17391i) ^ ~(-51602i), _wgslsmith_add_i32(_wgslsmith_div_i32(0i, 36018i), select(3851i, 1i, false))), (any(vec3<bool>(true, false, arg_3.d)) && true) && !arg_3.d), arg_2 << (_wgslsmith_sub_u32(arg_2, _wgslsmith_mult_u32(~arg_1.d.x, 37023u)) % 32u));
    let var_1 = Struct_3(arg_3.a.x, Struct_2(func_1(Struct_3(114954u, arg_1, var_0.c, ~arg_3.c.x), Struct_3(1u, arg_1, ~var_0.c, ~arg_2), vec4<bool>(var_0.c >= var_0.c, true, all(vec2<bool>(false, false)), true), var_0.b.c.c), arg_3.e, Struct_1(~vec2<u32>(4294967295u, 87014u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -547f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 14u)])), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2, arg_1.a.c.x, 46377u, 21981u), vec4<u32>(u_input.b, 4294967295u, u_input.b, var_0.b.d.x), ~vec4<u32>(4294967295u, 31683u, 143592u, 0u)), any(arg_1.e.ywy) || (var_0.c >= 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, 136f, arg_1.c.e.x, -838f) * vec4<f32>(arg_3.b.x, arg_1.c.e.x, -666f, global1[_wgslsmith_index_u32(u_input.a, 14u)])))), var_0.b.c.a, select(!vec4<bool>(false, false, false, arg_0.x), arg_1.e, vec4<bool>(!arg_1.c.d, false | arg_3.d, func_1(Struct_3(arg_2, Struct_2(Struct_1(vec2<u32>(12949u, 102357u), arg_1.b.zy, arg_3.c, arg_0.x, vec4<f32>(-1156f, -1000f, global1[_wgslsmith_index_u32(38457u, 14u)], -373f)), var_0.b.a.e, Struct_1(var_0.b.c.c.zz, vec2<f32>(-312f, -1806f), var_0.b.a.c, arg_0.x, arg_3.e), arg_3.a, vec4<bool>(false, var_0.b.e.x, arg_3.d, true)), var_0.c, 0u), Struct_3(arg_2, global0[_wgslsmith_index_u32(arg_1.a.c.x, 28u)], 41180i, arg_3.c.x), var_0.b.e, vec4<u32>(24730u, 1u, arg_1.c.a.x, arg_2)).d, false))), i32(-1i) * -21986i, 4924u);
    return -(~(~reverseBits(~var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, func_4(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec2<u32>(1u, 13080u), vec2<f32>(1130f, -580f), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), true, vec4<f32>(-1245f, global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(31715u, 14u)], -848f)), vec4<f32>(global1[_wgslsmith_index_u32(35452u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(47360u, 14u)], 1272f), Struct_1(vec2<u32>(4294967295u, u_input.b), vec2<f32>(-485f, global1[_wgslsmith_index_u32(17946u, 14u)]), vec4<u32>(18102u, u_input.a, u_input.b, 0u), false, vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)], -1016f)), vec2<u32>(35367u, 32728u), vec4<bool>(false, true, false, false)), u_input.a, func_1(Struct_3(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 28u)], 12898i, u_input.b), Struct_3(13259u, Struct_2(Struct_1(vec2<u32>(24623u, u_input.a), vec2<f32>(-1034f, 1508f), vec4<u32>(52971u, u_input.a, u_input.b, 1u), true, vec4<f32>(global1[_wgslsmith_index_u32(85828u, 14u)], -1152f, global1[_wgslsmith_index_u32(19202u, 14u)], 472f)), vec4<f32>(1526f, global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(0u, 14u)], -1039f), Struct_1(vec2<u32>(1u, 15699u), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], 1074f), vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u), false, vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], 836f, 521f, global1[_wgslsmith_index_u32(u_input.a, 14u)])), vec2<u32>(4294967295u, u_input.a), vec4<bool>(true, true, true, true)), 32899i, u_input.b), vec4<bool>(true, true, true, false), vec4<u32>(4294967295u, 86510u, 79349u, 0u)))), ~54202i, ~(1i >> ((u_input.b << (u_input.a % 32u)) % 32u)), 2147483647i), ~firstLeadingBit(-vec4<i32>(-8452i, 2147483647i, 0i, 20796i) << (~vec4<u32>(u_input.b, 4294967295u, 56096u, u_input.a) % vec4<u32>(32u))));
    var var_1 = var_0;
    var_1 = abs(~var_0 | 696i);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 14u)] - _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a, 14u)]))) - -122f))));
    var var_3 = _wgslsmith_mult_i32(1i, min(reverseBits(~27612i) | _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, var_0), vec2<i32>(12174i, 73954i) & vec2<i32>(var_0, -2147483647i)), var_0));
    let var_4 = _wgslsmith_add_vec2_u32(vec2<u32>(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 18192u, u_input.a, u_input.b), vec4<u32>(u_input.b, u_input.b, 11888u, 4294967295u)), ~u_input.a, true), min(31294u, _wgslsmith_sub_u32(50175u, countOneBits(1u)))), vec2<u32>(54983u, 4294967295u));
    let var_5 = firstTrailingBit(u_input.b);
    var var_6 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, global1[_wgslsmith_index_u32(7732u, 14u)], -828f, 439f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1445f);
}

