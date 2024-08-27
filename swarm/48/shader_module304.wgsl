struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-1209f, 405f, 530f), vec3<f32>(-916f, 672f, -491f), vec3<f32>(709f, 1439f, 864f), vec3<f32>(1485f, 263f, -754f), vec3<f32>(-247f, 300f, -298f), vec3<f32>(905f, 1753f, -1000f), vec3<f32>(690f, -432f, 1198f), vec3<f32>(470f, -343f, 986f), vec3<f32>(-382f, 1143f, 613f), vec3<f32>(-758f, 713f, 333f), vec3<f32>(293f, 235f, 273f), vec3<f32>(-394f, 499f, -198f), vec3<f32>(1000f, -474f, 318f), vec3<f32>(-1690f, -2599f, 264f), vec3<f32>(-2130f, -723f, 1802f));

var<private> global1: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(vec2<i32>(-21373i, 2147483647i), vec2<f32>(179f, 1296f), Struct_2(Struct_1(vec4<f32>(827f, 618f, -208f, 965f), 49372i, false), Struct_1(vec4<f32>(-1940f, -808f, 1242f, 635f), 2147483647i, false), Struct_1(vec4<f32>(-415f, -930f, -999f, 436f), -1i, false)), Struct_4(1i, vec2<u32>(30865u, 0u), Struct_1(vec4<f32>(-1187f, 529f, -1949f, 773f), 20574i, true), vec2<f32>(946f, 1000f)), 0i), Struct_5(vec2<i32>(-8911i, i32(-2147483648)), vec2<f32>(-1416f, -235f), Struct_2(Struct_1(vec4<f32>(-363f, 360f, -1000f, -902f), 27806i, true), Struct_1(vec4<f32>(-1000f, 1008f, -1678f, -1606f), -1i, false), Struct_1(vec4<f32>(-581f, 158f, 153f, 229f), -1i, true)), Struct_4(37994i, vec2<u32>(1u, 1u), Struct_1(vec4<f32>(1000f, 164f, -428f, -479f), -31075i, false), vec2<f32>(-1247f, 632f)), 38736i), Struct_5(vec2<i32>(1i, i32(-2147483648)), vec2<f32>(1827f, -610f), Struct_2(Struct_1(vec4<f32>(-440f, -877f, 113f, 1201f), -28368i, false), Struct_1(vec4<f32>(-1672f, 693f, 2371f, 1809f), 18262i, true), Struct_1(vec4<f32>(1439f, 517f, -316f, 589f), i32(-2147483648), true)), Struct_4(1i, vec2<u32>(4294967295u, 6521u), Struct_1(vec4<f32>(690f, 662f, 640f, -993f), 35952i, true), vec2<f32>(-953f, 1000f)), i32(-2147483648)), Struct_5(vec2<i32>(5684i, 0i), vec2<f32>(-486f, 1986f), Struct_2(Struct_1(vec4<f32>(1306f, -1538f, -1182f, 1857f), 0i, true), Struct_1(vec4<f32>(251f, 1334f, 593f, -133f), i32(-2147483648), true), Struct_1(vec4<f32>(898f, -180f, -536f, 1682f), 1i, true)), Struct_4(2147483647i, vec2<u32>(4294967295u, 0u), Struct_1(vec4<f32>(-891f, 187f, 1305f, 307f), 7105i, false), vec2<f32>(-1069f, -2220f)), 2147483647i), Struct_5(vec2<i32>(17479i, -109466i), vec2<f32>(208f, -551f), Struct_2(Struct_1(vec4<f32>(211f, -612f, -698f, 1247f), 1i, false), Struct_1(vec4<f32>(167f, -221f, 1013f, 1218f), -31591i, false), Struct_1(vec4<f32>(-1000f, -1667f, 1147f, -1159f), i32(-2147483648), true)), Struct_4(20457i, vec2<u32>(7541u, 13669u), Struct_1(vec4<f32>(-236f, -1283f, 320f, 564f), 677i, true), vec2<f32>(1290f, 851f)), 3062i), Struct_5(vec2<i32>(i32(-2147483648), 29295i), vec2<f32>(611f, 1034f), Struct_2(Struct_1(vec4<f32>(-127f, 142f, -777f, 1033f), 1i, true), Struct_1(vec4<f32>(118f, 2361f, -1000f, 438f), 6716i, false), Struct_1(vec4<f32>(-1256f, -1293f, -1390f, 838f), 0i, false)), Struct_4(42693i, vec2<u32>(0u, 4294967295u), Struct_1(vec4<f32>(141f, -2195f, -322f, -143f), -3673i, false), vec2<f32>(1299f, -322f)), 21779i), Struct_5(vec2<i32>(2334i, i32(-2147483648)), vec2<f32>(-946f, 230f), Struct_2(Struct_1(vec4<f32>(-3140f, -399f, 239f, -1000f), i32(-2147483648), true), Struct_1(vec4<f32>(-892f, 1000f, -1400f, -1325f), 1i, false), Struct_1(vec4<f32>(-1103f, -474f, -633f, -2262f), 2147483647i, true)), Struct_4(85910i, vec2<u32>(0u, 4294967295u), Struct_1(vec4<f32>(-705f, -806f, 248f, 859f), -37008i, true), vec2<f32>(290f, -398f)), i32(-2147483648)), Struct_5(vec2<i32>(i32(-2147483648), -30455i), vec2<f32>(222f, 876f), Struct_2(Struct_1(vec4<f32>(-279f, 915f, -761f, -1465f), -14464i, true), Struct_1(vec4<f32>(869f, -975f, -977f, 638f), -1i, true), Struct_1(vec4<f32>(-583f, 141f, 547f, -1856f), 22305i, false)), Struct_4(2147483647i, vec2<u32>(52527u, 0u), Struct_1(vec4<f32>(513f, -351f, 674f, -423f), 36686i, false), vec2<f32>(242f, 1262f)), -1i), Struct_5(vec2<i32>(27534i, -19900i), vec2<f32>(1918f, -2472f), Struct_2(Struct_1(vec4<f32>(-1445f, -326f, -1266f, 193f), -1i, false), Struct_1(vec4<f32>(-477f, 822f, -838f, 425f), 0i, true), Struct_1(vec4<f32>(2336f, 207f, 562f, 1000f), 33433i, false)), Struct_4(37725i, vec2<u32>(0u, 36552u), Struct_1(vec4<f32>(-209f, 395f, -254f, 920f), 6498i, true), vec2<f32>(228f, 678f)), -1i), Struct_5(vec2<i32>(-31625i, -75840i), vec2<f32>(1107f, -401f), Struct_2(Struct_1(vec4<f32>(315f, -1000f, 217f, 242f), i32(-2147483648), true), Struct_1(vec4<f32>(2175f, 556f, 1234f, -996f), 16018i, false), Struct_1(vec4<f32>(-846f, -368f, 628f, -667f), -1i, false)), Struct_4(1i, vec2<u32>(80411u, 4294967295u), Struct_1(vec4<f32>(-454f, -707f, -253f, -423f), 41066i, true), vec2<f32>(129f, 402f)), 2101i), Struct_5(vec2<i32>(7869i, 1i), vec2<f32>(939f, 214f), Struct_2(Struct_1(vec4<f32>(-381f, -912f, 360f, -1000f), -1i, false), Struct_1(vec4<f32>(1014f, 856f, -1014f, -1878f), -10648i, true), Struct_1(vec4<f32>(-360f, -1512f, 1532f, 3426f), 5594i, false)), Struct_4(1i, vec2<u32>(36408u, 0u), Struct_1(vec4<f32>(240f, 354f, -757f, -576f), i32(-2147483648), true), vec2<f32>(1610f, -294f)), -70529i), Struct_5(vec2<i32>(0i, -12607i), vec2<f32>(1326f, -742f), Struct_2(Struct_1(vec4<f32>(-176f, -1547f, -627f, -1000f), 1i, false), Struct_1(vec4<f32>(1000f, 1625f, -943f, -729f), 2147483647i, true), Struct_1(vec4<f32>(-1037f, -814f, 1178f, -793f), 1439i, true)), Struct_4(32218i, vec2<u32>(0u, 19356u), Struct_1(vec4<f32>(-1308f, 179f, -2069f, -110f), -4468i, false), vec2<f32>(588f, 663f)), -45694i), Struct_5(vec2<i32>(1i, 32912i), vec2<f32>(817f, -286f), Struct_2(Struct_1(vec4<f32>(394f, 1953f, -1640f, -278f), i32(-2147483648), false), Struct_1(vec4<f32>(-857f, -781f, 297f, 1136f), 1i, true), Struct_1(vec4<f32>(2754f, 487f, 1455f, 506f), 2147483647i, false)), Struct_4(1i, vec2<u32>(0u, 1u), Struct_1(vec4<f32>(1757f, 341f, 1000f, 312f), 0i, true), vec2<f32>(920f, 193f)), i32(-2147483648)), Struct_5(vec2<i32>(0i, 16680i), vec2<f32>(346f, -1324f), Struct_2(Struct_1(vec4<f32>(-1617f, -1065f, 523f, -1784f), 1i, false), Struct_1(vec4<f32>(1271f, -1051f, 853f, 107f), -48104i, true), Struct_1(vec4<f32>(1895f, -764f, -1121f, 158f), 703i, true)), Struct_4(0i, vec2<u32>(30799u, 2654u), Struct_1(vec4<f32>(210f, 140f, -722f, 1835f), i32(-2147483648), false), vec2<f32>(-134f, -639f)), 1i), Struct_5(vec2<i32>(1i, -36942i), vec2<f32>(291f, 1000f), Struct_2(Struct_1(vec4<f32>(-1291f, -547f, -2009f, -245f), 1i, false), Struct_1(vec4<f32>(-789f, 830f, -207f, 614f), 1i, true), Struct_1(vec4<f32>(875f, -320f, 634f, 646f), -28730i, true)), Struct_4(1i, vec2<u32>(4294967295u, 74216u), Struct_1(vec4<f32>(1761f, 1627f, -560f, 1670f), -30121i, false), vec2<f32>(404f, -970f)), -18129i), Struct_5(vec2<i32>(31785i, -16833i), vec2<f32>(-1219f, 831f), Struct_2(Struct_1(vec4<f32>(-1064f, 436f, 1435f, -1150f), 2147483647i, true), Struct_1(vec4<f32>(-1700f, 1013f, 1000f, -1000f), 2147483647i, true), Struct_1(vec4<f32>(595f, 1981f, -368f, -884f), -1i, true)), Struct_4(1i, vec2<u32>(7758u, 0u), Struct_1(vec4<f32>(-537f, 1140f, -248f, 1711f), 30624i, true), vec2<f32>(1000f, -1459f)), 1i), Struct_5(vec2<i32>(-1i, 30574i), vec2<f32>(-1000f, -247f), Struct_2(Struct_1(vec4<f32>(-387f, 709f, -164f, -794f), 1i, true), Struct_1(vec4<f32>(692f, 1033f, 631f, 1000f), 22204i, true), Struct_1(vec4<f32>(-497f, 106f, 445f, -265f), 1958i, false)), Struct_4(2147483647i, vec2<u32>(34784u, 1u), Struct_1(vec4<f32>(-664f, -176f, -1559f, -1000f), -1i, true), vec2<f32>(-1207f, 462f)), -16469i), Struct_5(vec2<i32>(i32(-2147483648), 2147483647i), vec2<f32>(2137f, 1000f), Struct_2(Struct_1(vec4<f32>(-142f, -1263f, -1221f, 407f), 2147483647i, true), Struct_1(vec4<f32>(975f, -470f, 1366f, 1000f), -24095i, false), Struct_1(vec4<f32>(747f, -345f, 1000f, 564f), i32(-2147483648), false)), Struct_4(1i, vec2<u32>(87635u, 0u), Struct_1(vec4<f32>(-319f, -597f, -854f, 647f), 2147483647i, false), vec2<f32>(1000f, 261f)), 25886i), Struct_5(vec2<i32>(-20610i, -14991i), vec2<f32>(-900f, -539f), Struct_2(Struct_1(vec4<f32>(-1544f, -434f, 617f, -493f), 2147483647i, false), Struct_1(vec4<f32>(-2179f, 300f, 1806f, -851f), -8457i, true), Struct_1(vec4<f32>(884f, -1210f, -1535f, -287f), 0i, false)), Struct_4(50040i, vec2<u32>(66594u, 12874u), Struct_1(vec4<f32>(-1118f, -562f, -217f, 1359f), -5380i, true), vec2<f32>(-372f, -896f)), -1i), Struct_5(vec2<i32>(26743i, -34469i), vec2<f32>(1407f, 1488f), Struct_2(Struct_1(vec4<f32>(-844f, -1000f, -594f, -770f), -32682i, false), Struct_1(vec4<f32>(577f, -503f, -1055f, -348f), 0i, false), Struct_1(vec4<f32>(-543f, -1506f, -1287f, -159f), -1i, true)), Struct_4(-47222i, vec2<u32>(4294967295u, 4294967295u), Struct_1(vec4<f32>(-105f, 1842f, 732f, 1000f), -1i, false), vec2<f32>(493f, -1625f)), -1i), Struct_5(vec2<i32>(-1i, 0i), vec2<f32>(1322f, 669f), Struct_2(Struct_1(vec4<f32>(104f, -2846f, 899f, -1019f), i32(-2147483648), false), Struct_1(vec4<f32>(2956f, 3331f, -688f, 2153f), 1i, true), Struct_1(vec4<f32>(-771f, -685f, -786f, 848f), -11232i, true)), Struct_4(43092i, vec2<u32>(0u, 39810u), Struct_1(vec4<f32>(1309f, -965f, -474f, 999f), 10476i, false), vec2<f32>(1700f, 393f)), 0i), Struct_5(vec2<i32>(0i, -23668i), vec2<f32>(-1470f, 352f), Struct_2(Struct_1(vec4<f32>(330f, 320f, -791f, 933f), -2381i, false), Struct_1(vec4<f32>(-216f, -151f, 1356f, -246f), 0i, true), Struct_1(vec4<f32>(-1846f, 1330f, 698f, 2533f), -16858i, true)), Struct_4(2147483647i, vec2<u32>(4294967295u, 2319u), Struct_1(vec4<f32>(1088f, 1235f, 832f, 1484f), -45943i, false), vec2<f32>(348f, -626f)), 1i), Struct_5(vec2<i32>(2147483647i, -24700i), vec2<f32>(-578f, -610f), Struct_2(Struct_1(vec4<f32>(1154f, -872f, -1901f, 514f), 2147483647i, true), Struct_1(vec4<f32>(654f, -1296f, -585f, -582f), 22998i, true), Struct_1(vec4<f32>(-340f, 2126f, 539f, -282f), 0i, true)), Struct_4(0i, vec2<u32>(53161u, 102612u), Struct_1(vec4<f32>(-494f, -2016f, -395f, 1600f), 0i, true), vec2<f32>(1972f, -466f)), 68519i), Struct_5(vec2<i32>(-1i, 2147483647i), vec2<f32>(1297f, 1408f), Struct_2(Struct_1(vec4<f32>(-621f, 1000f, 517f, -594f), i32(-2147483648), false), Struct_1(vec4<f32>(422f, -1473f, -1100f, 1000f), 41559i, true), Struct_1(vec4<f32>(1621f, -571f, 1273f, 203f), 0i, true)), Struct_4(-6839i, vec2<u32>(0u, 73482u), Struct_1(vec4<f32>(-3645f, 206f, 699f, 603f), 0i, true), vec2<f32>(1284f, -1869f)), 2147483647i), Struct_5(vec2<i32>(0i, 28712i), vec2<f32>(269f, -1305f), Struct_2(Struct_1(vec4<f32>(273f, -109f, 975f, 1042f), 28837i, false), Struct_1(vec4<f32>(628f, -736f, 748f, -882f), -23727i, false), Struct_1(vec4<f32>(-1789f, -397f, 542f, -836f), -12763i, true)), Struct_4(-1i, vec2<u32>(4294967295u, 71746u), Struct_1(vec4<f32>(-146f, 684f, 852f, 1434f), -63380i, true), vec2<f32>(436f, 197f)), 3738i), Struct_5(vec2<i32>(10801i, -1i), vec2<f32>(-298f, -414f), Struct_2(Struct_1(vec4<f32>(-973f, 714f, 529f, 301f), -4365i, false), Struct_1(vec4<f32>(-1603f, -251f, -869f, 192f), 38661i, false), Struct_1(vec4<f32>(-1305f, -130f, 311f, 1221f), -6857i, true)), Struct_4(i32(-2147483648), vec2<u32>(22393u, 1u), Struct_1(vec4<f32>(-1000f, -1224f, 102f, 1000f), 4370i, false), vec2<f32>(-384f, 641f)), -9920i), Struct_5(vec2<i32>(2147483647i, 19684i), vec2<f32>(1122f, -968f), Struct_2(Struct_1(vec4<f32>(1342f, -694f, 1125f, 481f), -53178i, true), Struct_1(vec4<f32>(513f, 171f, -468f, -107f), 0i, false), Struct_1(vec4<f32>(-2088f, 104f, 1178f, -1000f), 1i, true)), Struct_4(-1i, vec2<u32>(33684u, 34241u), Struct_1(vec4<f32>(-464f, -1225f, -226f, -193f), 4919i, true), vec2<f32>(-1533f, -649f)), 29585i), Struct_5(vec2<i32>(0i, -1i), vec2<f32>(892f, -701f), Struct_2(Struct_1(vec4<f32>(-1073f, 134f, 273f, -320f), 18688i, true), Struct_1(vec4<f32>(1143f, -596f, -603f, -1106f), -1i, false), Struct_1(vec4<f32>(293f, 114f, -1342f, 1010f), 0i, false)), Struct_4(-7278i, vec2<u32>(40974u, 21404u), Struct_1(vec4<f32>(-895f, 2018f, 311f, 1949f), i32(-2147483648), false), vec2<f32>(928f, 256f)), -16111i));

var<private> global2: array<bool, 22> = array<bool, 22>(true, false, true, false, false, true, true, true, false, true, true, false, true, true, false, false, false, true, true, false, true, false);

var<private> global3: vec4<u32> = vec4<u32>(70614u, 13195u, 7224u, 0u);

var<private> global4: f32 = 150f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32) -> bool {
    var var_0 = Struct_2(Struct_1(arg_0.c.a, reverseBits(arg_1.c.b), !any(select(vec3<bool>(false, arg_1.c.c, true), vec3<bool>(arg_1.c.c, arg_0.c.c, true), vec3<bool>(true, false, arg_1.c.c)))), arg_1.c, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1752f * 822f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-262f * -1815f), _wgslsmith_f_op_f32(f32(-1f) * -967f)), arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(730f)) - _wgslsmith_f_op_f32(round(arg_0.d.x)))), _wgslsmith_add_i32(-28956i, countOneBits(-1i)), arg_1.c.c));
    global4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(-arg_1.c.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.c.a.x)))))));
    global3 = select(vec4<u32>(arg_2, min(_wgslsmith_mult_u32(~1u, arg_1.b.x), global3.x), 38201u, arg_2), ~_wgslsmith_add_vec4_u32(vec4<u32>(select(arg_2, 4294967295u, global2[_wgslsmith_index_u32(arg_0.b.x, 22u)]), arg_0.b.x, ~arg_2, arg_1.b.x), ~(~vec4<u32>(50781u, 1u, global3.x, arg_2))), select(vec4<bool>(arg_0.c.c, all(!vec4<bool>(global2[_wgslsmith_index_u32(8488u, 22u)], global2[_wgslsmith_index_u32(arg_1.b.x, 22u)], arg_0.c.c, true)), !arg_1.c.c || true, true), !(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(arg_1.b.x, 22u)], arg_1.c.c, true), vec4<bool>(var_0.c.c, global2[_wgslsmith_index_u32(886u, 22u)], false, false), vec4<bool>(var_0.a.c, true, true, arg_1.c.c))), true));
    global3 = vec4<u32>(arg_2 ^ u_input.c.x, _wgslsmith_add_u32(abs(arg_0.b.x), arg_1.b.x), 1u, ~(~abs(0u >> (1u % 32u))));
    global1 = array<Struct_5, 28>();
    return global2[_wgslsmith_index_u32(0u, 22u)];
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = vec3<bool>(all(select(vec2<bool>(true, true), select(!vec2<bool>(global2[_wgslsmith_index_u32(global3.x, 22u)], global2[_wgslsmith_index_u32(global3.x, 22u)]), select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(19091u, 22u)], global2[_wgslsmith_index_u32(u_input.a.x, 22u)]), true), true), false)), false, func_3(Struct_4(~_wgslsmith_add_i32(1i, arg_0.b), firstTrailingBit(~vec2<u32>(u_input.a.x, 53062u)), arg_0, arg_0.a.zz), Struct_4(u_input.b.x, _wgslsmith_div_vec2_u32(~vec2<u32>(18199u, 39133u), countOneBits(vec2<u32>(4294967295u, 4294967295u))), arg_0, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a.wz))))), u_input.c.x));
    global4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - 796f) + arg_0.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(-758f + arg_0.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0.a.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -1075f))));
    let var_1 = u_input.c;
    global1 = array<Struct_5, 28>();
    let var_2 = -2147483647i;
    return 1268f;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.b.a - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_1(arg_0.a.a, 0i, global2[_wgslsmith_index_u32(4294967295u, 22u)]), 2147483647i)))), arg_0.c.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.a.x, arg_0.c.a.x)))), ~_wgslsmith_dot_vec4_i32(-u_input.b, u_input.b), !(!all(vec4<bool>(arg_1.x, false, global2[_wgslsmith_index_u32(global3.x, 22u)], false))));
    var var_1 = firstLeadingBit(-805i);
    let var_2 = arg_0.c.a.x;
    let var_3 = -2746f;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    global3 = vec4<u32>(15172u, 25343u << (~(~(u_input.a.x << (1u % 32u))) % 32u), 10546u, 31268u);
    let var_1 = 4294967295u;
    global3 = ~((vec4<u32>(func_1(Struct_2(Struct_1(vec4<f32>(-122f, 165f, 653f, 568f), 62874i, true), Struct_1(vec4<f32>(701f, 1000f, -1000f, -798f), 2147483647i, global2[_wgslsmith_index_u32(var_1, 22u)]), Struct_1(vec4<f32>(1000f, -1575f, -291f, -1552f), 0i, true)), vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 22u)], false), vec4<u32>(var_1, u_input.c.x, var_1, 28771u), u_input.b.x), global3.x & 1u, u_input.a.x, abs(0u)) << (~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_1, 34795u, 4417u), vec4<u32>(u_input.c.x, var_1, u_input.c.x, 37036u)) % vec4<u32>(32u))) << (select(~(vec4<u32>(global3.x, global3.x, 39145u, 32588u) >> (vec4<u32>(var_1, global3.x, 28448u, 2236u) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 37700u, 0u, 0u), vec4<u32>(4294967295u, global3.x, global3.x, 56671u))), !select(vec4<bool>(false, true, false, true), vec4<bool>(global2[_wgslsmith_index_u32(var_1, 22u)], global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global2[_wgslsmith_index_u32(var_1, 22u)], global2[_wgslsmith_index_u32(var_1, 22u)]), vec4<bool>(global2[_wgslsmith_index_u32(64450u, 22u)], global2[_wgslsmith_index_u32(global3.x, 22u)], global2[_wgslsmith_index_u32(u_input.a.x, 22u)], true))) % vec4<u32>(32u)));
    global3 = reverseBits(vec4<u32>(~_wgslsmith_mult_u32(min(38079u, 1u), u_input.a.x), _wgslsmith_div_u32(64983u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, global3.x, 70872u, 1u), vec4<u32>(u_input.a.x, 0u, global3.x, var_1))), 0u, global3.x));
    global2 = array<bool, 22>();
    let var_2 = !select(select(!select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(global3.x, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], false, global2[_wgslsmith_index_u32(2375u, 22u)]), true), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(var_1, 22u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(global3.x, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(global3.x, 22u)], true), global2[_wgslsmith_index_u32(var_1, 22u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(37077u, 22u)], false, global2[_wgslsmith_index_u32(23006u, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(41118u, 22u)]), global2[_wgslsmith_index_u32(17069u, 22u)])), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], global2[_wgslsmith_index_u32(global3.x, 22u)], false, true)), global2[_wgslsmith_index_u32(~1u, 22u)])), !(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(var_1, 22u)], false), vec3<bool>(true, global2[_wgslsmith_index_u32(var_1, 22u)], global2[_wgslsmith_index_u32(1u, 22u)]), true)), any(!(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_1, 22u)], false))));
    let var_3 = Struct_2(Struct_1(vec4<f32>(-992f, _wgslsmith_f_op_f32(f32(-1f) * -3047f), -445f, 216f), u_input.b.x, !var_2.x), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, -1066f, -717f, -125f))))), firstTrailingBit(u_input.b.x), var_2.x), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1268f, 1292f, -2434f, -492f))))))), _wgslsmith_div_i32(max(u_input.b.x << (0u % 32u), i32(-1i) * -17895i), u_input.b.x), !(1i > max(u_input.b.x, -22887i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.a.zzy, ~(~abs(_wgslsmith_clamp_vec3_u32(global3.xyw, global3.zzy, global3.yxy))), reverseBits(u_input.b));
}

