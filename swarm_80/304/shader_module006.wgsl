struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: f32 = 791f;

var<private> global1: array<Struct_2, 2>;

var<private> global2: bool;

var<private> global3: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(Struct_3(Struct_1(-47497i, vec4<f32>(444f, 180f, -580f, 1000f), 4810u, false), vec2<u32>(4294967295u, 20288u), vec3<f32>(-652f, -107f, -2339f), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, true), Struct_2(Struct_1(8833i, vec4<f32>(673f, -659f, -605f, 845f), 37618u, true), 491f, vec2<u32>(0u, 33541u)), -302f, Struct_1(2147483647i, vec4<f32>(434f, 1129f, 1368f, 1000f), 39165u, false)), Struct_4(Struct_3(Struct_1(-69929i, vec4<f32>(-177f, -980f, -1000f, -1000f), 50645u, false), vec2<u32>(1u, 8877u), vec3<f32>(1065f, -432f, -859f), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, false), Struct_2(Struct_1(-1i, vec4<f32>(-887f, -268f, -623f, 241f), 0u, false), -345f, vec2<u32>(14470u, 0u)), -154f, Struct_1(-3884i, vec4<f32>(-1269f, -929f, -489f, -1000f), 4294967295u, true)), Struct_4(Struct_3(Struct_1(-30978i, vec4<f32>(658f, -1405f, -678f, 1815f), 4294967295u, true), vec2<u32>(4294967295u, 1u), vec3<f32>(140f, 324f, -175f), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, false), Struct_2(Struct_1(i32(-2147483648), vec4<f32>(819f, -290f, 483f, 1319f), 1u, false), 330f, vec2<u32>(1u, 0u)), -455f, Struct_1(-33564i, vec4<f32>(-266f, 1492f, 1503f, -498f), 4294967295u, false)), Struct_4(Struct_3(Struct_1(i32(-2147483648), vec4<f32>(1018f, 510f, -199f, 697f), 19999u, true), vec2<u32>(1570u, 0u), vec3<f32>(334f, 885f, -1613f), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, true), Struct_2(Struct_1(28220i, vec4<f32>(2083f, -193f, 371f, -815f), 7932u, false), -333f, vec2<u32>(0u, 0u)), 1096f, Struct_1(36918i, vec4<f32>(1076f, -218f, 642f, 102f), 0u, false)), Struct_4(Struct_3(Struct_1(-35273i, vec4<f32>(565f, -566f, -1833f, 2044f), 44016u, false), vec2<u32>(64828u, 38378u), vec3<f32>(2512f, 537f, -496f), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), Struct_2(Struct_1(-45526i, vec4<f32>(-1094f, -1373f, 1282f, -1132f), 2001u, true), -468f, vec2<u32>(56816u, 15740u)), -412f, Struct_1(29106i, vec4<f32>(-1302f, 346f, 574f, 1245f), 1u, true)), Struct_4(Struct_3(Struct_1(i32(-2147483648), vec4<f32>(-321f, -931f, 1561f, -536f), 4294967295u, true), vec2<u32>(1u, 8143u), vec3<f32>(-1023f, -859f, 1129f), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, false), Struct_2(Struct_1(i32(-2147483648), vec4<f32>(890f, 605f, 668f, 973f), 0u, true), -1782f, vec2<u32>(1u, 32199u)), 402f, Struct_1(i32(-2147483648), vec4<f32>(1000f, -1052f, -1000f, -1079f), 56483u, false)), Struct_4(Struct_3(Struct_1(1i, vec4<f32>(-215f, 536f, -603f, -1488f), 1u, true), vec2<u32>(4294967295u, 44280u), vec3<f32>(254f, -212f, -375f), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), Struct_2(Struct_1(18376i, vec4<f32>(1558f, 269f, 826f, 1000f), 55447u, false), 1690f, vec2<u32>(0u, 2085u)), 1349f, Struct_1(0i, vec4<f32>(-1234f, -214f, -1070f, 628f), 73165u, false)), Struct_4(Struct_3(Struct_1(-1i, vec4<f32>(-684f, 483f, -801f, -793f), 45288u, false), vec2<u32>(4294967295u, 0u), vec3<f32>(-1000f, 1693f, -2044f), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, false, false), Struct_2(Struct_1(8612i, vec4<f32>(-1071f, -185f, 289f, 189f), 3651u, false), 980f, vec2<u32>(95783u, 4294967295u)), -1964f, Struct_1(-58785i, vec4<f32>(1001f, 219f, 456f, 1460f), 1u, true)), Struct_4(Struct_3(Struct_1(4401i, vec4<f32>(-790f, -699f, 174f, -422f), 1u, false), vec2<u32>(9679u, 1u), vec3<f32>(-1172f, 1039f, -176f), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), Struct_2(Struct_1(i32(-2147483648), vec4<f32>(1045f, -916f, 308f, 233f), 0u, false), 306f, vec2<u32>(11599u, 0u)), -395f, Struct_1(18236i, vec4<f32>(-1195f, -445f, 2319f, 1265f), 6364u, false)), Struct_4(Struct_3(Struct_1(45016i, vec4<f32>(-1168f, -2596f, 501f, -229f), 1u, true), vec2<u32>(77101u, 28932u), vec3<f32>(909f, -1449f, -895f), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, true), Struct_2(Struct_1(i32(-2147483648), vec4<f32>(1366f, -105f, -519f, 1539f), 12888u, true), -349f, vec2<u32>(34859u, 18878u)), -530f, Struct_1(2147483647i, vec4<f32>(623f, -173f, 488f, 1789f), 1u, true)), Struct_4(Struct_3(Struct_1(-9180i, vec4<f32>(1146f, 446f, -1921f, 1875f), 4294967295u, false), vec2<u32>(1u, 0u), vec3<f32>(-491f, -755f, 671f), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, false), Struct_2(Struct_1(-1i, vec4<f32>(458f, -339f, 681f, -801f), 75657u, true), -113f, vec2<u32>(27765u, 6386u)), -1000f, Struct_1(-27771i, vec4<f32>(1262f, 731f, 450f, 1000f), 1u, true)), Struct_4(Struct_3(Struct_1(-10509i, vec4<f32>(556f, 844f, -1330f, 413f), 4294967295u, true), vec2<u32>(4294967295u, 27614u), vec3<f32>(970f, 202f, 623f), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, true), Struct_2(Struct_1(1i, vec4<f32>(751f, 928f, 1000f, -1000f), 1u, false), -531f, vec2<u32>(15599u, 15904u)), -951f, Struct_1(1i, vec4<f32>(-1000f, -470f, -409f, 850f), 12364u, false)), Struct_4(Struct_3(Struct_1(-66516i, vec4<f32>(-318f, -264f, 475f, -1098f), 89032u, true), vec2<u32>(1748u, 0u), vec3<f32>(-1000f, -529f, -1633f), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, true), Struct_2(Struct_1(-5840i, vec4<f32>(777f, -1075f, 1000f, -549f), 4294967295u, true), -615f, vec2<u32>(35232u, 0u)), 379f, Struct_1(676i, vec4<f32>(213f, 629f, -1157f, -1846f), 4294967295u, true)), Struct_4(Struct_3(Struct_1(i32(-2147483648), vec4<f32>(404f, 491f, -505f, -609f), 77846u, false), vec2<u32>(0u, 16199u), vec3<f32>(1000f, 535f, -792f), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, false, true), Struct_2(Struct_1(2147483647i, vec4<f32>(-393f, -1508f, -1036f, 542f), 32503u, true), 836f, vec2<u32>(20487u, 0u)), 1903f, Struct_1(-51329i, vec4<f32>(-884f, -1162f, 1219f, -1424f), 20064u, false)), Struct_4(Struct_3(Struct_1(32690i, vec4<f32>(572f, -616f, 1780f, 1692f), 74360u, true), vec2<u32>(28200u, 14661u), vec3<f32>(-3141f, -122f, -782f), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, true), Struct_2(Struct_1(5675i, vec4<f32>(414f, -1326f, -1000f, -1417f), 93763u, true), -268f, vec2<u32>(0u, 70888u)), 1344f, Struct_1(-1i, vec4<f32>(1514f, -1394f, -1765f, 864f), 28631u, false)), Struct_4(Struct_3(Struct_1(-36641i, vec4<f32>(-1244f, -1000f, 461f, 1000f), 1u, true), vec2<u32>(51172u, 4294967295u), vec3<f32>(-1097f, -753f, -767f), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, false, true), Struct_2(Struct_1(64301i, vec4<f32>(1365f, 1000f, 282f, 1000f), 52464u, false), 624f, vec2<u32>(34852u, 56993u)), -1300f, Struct_1(79198i, vec4<f32>(-900f, -1000f, -748f, 395f), 1u, false)), Struct_4(Struct_3(Struct_1(21738i, vec4<f32>(1152f, -1560f, 791f, 1852f), 4294967295u, false), vec2<u32>(32275u, 85395u), vec3<f32>(-808f, -453f, -863f), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, true), Struct_2(Struct_1(i32(-2147483648), vec4<f32>(587f, 703f, -813f, -634f), 4294967295u, false), 440f, vec2<u32>(8879u, 24887u)), -1053f, Struct_1(-1i, vec4<f32>(-929f, 523f, -210f, 840f), 4294967295u, false)), Struct_4(Struct_3(Struct_1(32530i, vec4<f32>(1350f, -1455f, -487f, -489f), 0u, false), vec2<u32>(1u, 39705u), vec3<f32>(1075f, 244f, -486f), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, false), Struct_2(Struct_1(9493i, vec4<f32>(816f, -1013f, -939f, -1256f), 62813u, false), 1580f, vec2<u32>(43019u, 1u)), 571f, Struct_1(1i, vec4<f32>(243f, -349f, 942f, 1016f), 1u, true)), Struct_4(Struct_3(Struct_1(14423i, vec4<f32>(-879f, 725f, 1000f, 228f), 4294967295u, false), vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-821f, 355f, -434f), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, false, true), Struct_2(Struct_1(1i, vec4<f32>(-1937f, 611f, -493f, -381f), 31832u, false), -197f, vec2<u32>(80938u, 1u)), 1038f, Struct_1(-1i, vec4<f32>(-270f, -1460f, -1174f, -951f), 58942u, false)), Struct_4(Struct_3(Struct_1(-15406i, vec4<f32>(231f, -792f, -1398f, 994f), 0u, false), vec2<u32>(0u, 3904u), vec3<f32>(-793f, -327f, -1085f), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, false, false), Struct_2(Struct_1(0i, vec4<f32>(858f, -1000f, -1152f, 167f), 6119u, false), 171f, vec2<u32>(0u, 1u)), 1307f, Struct_1(-1i, vec4<f32>(1000f, -2097f, 957f, 616f), 18122u, false)), Struct_4(Struct_3(Struct_1(26595i, vec4<f32>(1682f, -880f, 1911f, 2211f), 55244u, true), vec2<u32>(112324u, 10759u), vec3<f32>(518f, -793f, 1319f), vec4<bool>(false, false, false, false)), vec4<bool>(false, false, true, false), Struct_2(Struct_1(1i, vec4<f32>(-703f, -1000f, -906f, -354f), 7285u, true), 1162f, vec2<u32>(1u, 1u)), 256f, Struct_1(-27833i, vec4<f32>(725f, 1000f, 1126f, -256f), 0u, true)), Struct_4(Struct_3(Struct_1(-39630i, vec4<f32>(-530f, 1000f, 756f, 1000f), 6263u, true), vec2<u32>(1u, 4294967295u), vec3<f32>(2958f, -1023f, 762f), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, false, false), Struct_2(Struct_1(-1i, vec4<f32>(-968f, -1000f, -560f, -1236f), 1u, false), -179f, vec2<u32>(0u, 1u)), 463f, Struct_1(2147483647i, vec4<f32>(-388f, -485f, -1487f, 483f), 0u, true)), Struct_4(Struct_3(Struct_1(1i, vec4<f32>(1000f, -1000f, -409f, 1000f), 1u, true), vec2<u32>(40887u, 1u), vec3<f32>(-223f, 444f, 2071f), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, true), Struct_2(Struct_1(12513i, vec4<f32>(-1405f, 1000f, -686f, 354f), 61498u, true), -3635f, vec2<u32>(30262u, 1u)), -483f, Struct_1(1292i, vec4<f32>(714f, 157f, 581f, -453f), 0u, true)), Struct_4(Struct_3(Struct_1(-1i, vec4<f32>(-1464f, 1104f, 453f, 269f), 0u, false), vec2<u32>(38317u, 1u), vec3<f32>(-905f, -753f, 502f), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), Struct_2(Struct_1(2147483647i, vec4<f32>(1061f, 1000f, 1000f, 346f), 33947u, false), -235f, vec2<u32>(69584u, 42538u)), -551f, Struct_1(26714i, vec4<f32>(-1358f, 1580f, -625f, 531f), 0u, false)), Struct_4(Struct_3(Struct_1(40148i, vec4<f32>(927f, -618f, 1076f, 1346f), 50449u, false), vec2<u32>(55230u, 6126u), vec3<f32>(2140f, 925f, -1000f), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, false), Struct_2(Struct_1(-38697i, vec4<f32>(-469f, 1000f, 242f, 872f), 21461u, true), 843f, vec2<u32>(16469u, 4294967295u)), 144f, Struct_1(i32(-2147483648), vec4<f32>(-546f, -277f, 1735f, 1089f), 4294967295u, true)), Struct_4(Struct_3(Struct_1(33550i, vec4<f32>(300f, 296f, 798f, -1361f), 1u, true), vec2<u32>(21694u, 20093u), vec3<f32>(-1000f, 734f, -1000f), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, false), Struct_2(Struct_1(0i, vec4<f32>(-1000f, -239f, -1171f, 1325f), 14241u, false), -163f, vec2<u32>(31160u, 25734u)), -1000f, Struct_1(2147483647i, vec4<f32>(169f, 1000f, -803f, -464f), 0u, true)), Struct_4(Struct_3(Struct_1(23147i, vec4<f32>(-592f, -815f, -1761f, -441f), 0u, false), vec2<u32>(40303u, 55023u), vec3<f32>(-1181f, -1183f, 127f), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, true, false), Struct_2(Struct_1(-12541i, vec4<f32>(1192f, -238f, 605f, 1000f), 0u, false), -225f, vec2<u32>(20205u, 1u)), -1877f, Struct_1(1i, vec4<f32>(1000f, -1000f, 1332f, 1690f), 0u, true)), Struct_4(Struct_3(Struct_1(-16385i, vec4<f32>(1475f, -1316f, 452f, 1000f), 86930u, false), vec2<u32>(0u, 37930u), vec3<f32>(338f, 357f, -138f), vec4<bool>(false, false, false, false)), vec4<bool>(false, false, false, false), Struct_2(Struct_1(-11075i, vec4<f32>(-695f, -514f, -1000f, -717f), 18849u, true), -2574f, vec2<u32>(0u, 8941u)), 413f, Struct_1(i32(-2147483648), vec4<f32>(615f, 1333f, -363f, -982f), 100574u, false)), Struct_4(Struct_3(Struct_1(1i, vec4<f32>(-540f, -1443f, 534f, 668f), 56787u, false), vec2<u32>(0u, 1u), vec3<f32>(1692f, -2718f, -2233f), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, false), Struct_2(Struct_1(-1i, vec4<f32>(-1509f, 956f, 1285f, 1118f), 44234u, true), 696f, vec2<u32>(8061u, 64734u)), -1940f, Struct_1(-22191i, vec4<f32>(-1136f, 539f, -165f, -1275f), 4294967295u, false)), Struct_4(Struct_3(Struct_1(83374i, vec4<f32>(742f, 519f, -794f, -1618f), 4294967295u, false), vec2<u32>(1u, 22039u), vec3<f32>(1807f, 371f, 2022f), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, false, false), Struct_2(Struct_1(353i, vec4<f32>(-644f, -319f, -1283f, 746f), 1u, true), -699f, vec2<u32>(1u, 0u)), -1029f, Struct_1(0i, vec4<f32>(1054f, 1915f, -2022f, 174f), 0u, true)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    global2 = any(vec4<bool>(arg_0, select(true, true, true), u_input.a.x >= (_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x) | abs(u_input.a.x)), select(arg_0 || all(vec3<bool>(arg_0, true, false)), (i32(-1i) * -1i) <= _wgslsmith_clamp_i32(-42081i, 0i, -2147483647i), arg_0)));
    var var_0 = ~vec4<u32>(u_input.a.x, u_input.a.x, ~51878u & ~_wgslsmith_dot_vec2_u32(vec2<u32>(1028u, 4294967295u), u_input.a.yz), u_input.a.x);
    global1 = array<Struct_2, 2>();
    let var_1 = min(u_input.a.wy, countOneBits(vec2<u32>(~u_input.a.x, firstLeadingBit(var_0.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(727f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1381f, _wgslsmith_f_op_f32(f32(-1f) * -1069f))))) * 1152f);
}

fn func_2(arg_0: u32) -> u32 {
    global1 = array<Struct_2, 2>();
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true))));
    global0 = _wgslsmith_f_op_f32(func_3(false));
    global3 = array<Struct_4, 30>();
    let var_1 = firstLeadingBit(-abs(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 0i, -2147483647i, 17829i), vec4<i32>(40271i, -53953i, 67092i, -8438i)))));
    return _wgslsmith_dot_vec3_u32(firstLeadingBit(reverseBits(u_input.a.zzw)), u_input.a.ywy ^ ~abs(~vec3<u32>(10983u, 59621u, 4294967295u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    var var_0 = vec4<u32>(~u_input.a.x ^ (~func_2(u_input.a.x) >> (11801u % 32u)), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, u_input.a.x), _wgslsmith_sub_vec3_u32(u_input.a.xxz, vec3<u32>(u_input.a.x, u_input.a.x, 14084u)))) ^ 28777u, _wgslsmith_mod_u32(u_input.a.x, 14304u), 1u);
    global3 = array<Struct_4, 30>();
    let var_1 = Struct_3(Struct_1(2147483647i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(1745f, arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(830f - arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), 287f, _wgslsmith_f_op_f32(2069f + -1085f), _wgslsmith_f_op_f32(-arg_0.x))), ~(~(~var_0.x)), true), _wgslsmith_add_vec2_u32(~vec2<u32>(~var_0.x, max(36036u, 2867u)), vec2<u32>(52885u, var_0.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 492f, arg_0.x))) + vec3<f32>(2281f, -257f, -169f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, -1000f, 499f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-670f, 671f, arg_0.x)))))), !vec4<bool>(true && (arg_0.x >= arg_0.x), !any(vec2<bool>(false, false)), true, false));
    var_0 = ~(~select(~u_input.a, select(vec4<u32>(var_0.x, u_input.a.x, var_0.x, var_1.a.c), vec4<u32>(5335u, var_0.x, var_0.x, var_1.b.x), false), true)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(var_0.x, var_1.a.c, 4294967295u), var_1.a.c, ~select(74308u, 4294967295u, var_1.a.d), u_input.a.x), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 123365u, var_0.x, u_input.a.x), vec4<u32>(0u, var_1.b.x, u_input.a.x, var_0.x), u_input.a)));
    let var_2 = ~firstTrailingBit(~u_input.a.x >> (55909u % 32u)) & _wgslsmith_sub_u32(~u_input.a.x << (~_wgslsmith_sub_u32(var_1.b.x, u_input.a.x) % 32u), countOneBits(~(~1u)));
    return 239f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(132f - -505f), -350f))) - _wgslsmith_f_op_f32(921f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1049f) + -1000f))), 1169f));
    global3 = array<Struct_4, 30>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1277f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 265f), -219f))))) - _wgslsmith_f_op_f32(f32(-1f) * -521f));
    global1 = array<Struct_2, 2>();
    let var_0 = abs(i32(-1i) * -(~_wgslsmith_sub_i32(-492i, 1i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -448f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(708f, -918f))), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0 << (u_input.a.x % 32u), _wgslsmith_div_i32(var_0, 2147483647i), var_0, _wgslsmith_add_i32(-2147483647i, 44393i)), max(vec4<i32>(-43903i, var_0, var_0, -1762i) | vec4<i32>(var_0, -11959i, 2147483647i, -5511i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0, var_0, var_0, var_0), vec4<i32>(4115i, -26013i, var_0, -15935i)))), _wgslsmith_mod_i32(var_0, i32(-1i) * -38772i))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1000f, -1014f, _wgslsmith_f_op_f32(floor(-208f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-227f, -535f, -578f, -924f), vec4<f32>(var_1, -1264f, -2480f, 1468f), vec4<bool>(false, false, false, false)))))))));
    var var_4 = ~_wgslsmith_mult_u32(u_input.a.x, 2638u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(629f - _wgslsmith_f_op_f32(trunc(var_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(970f, -183f, true))))));
}

