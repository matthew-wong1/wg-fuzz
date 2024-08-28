struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: vec3<bool>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_2(Struct_1(-1680f, vec4<f32>(-519f, 515f, 119f, 2114f), vec3<u32>(0u, 0u, 0u)), Struct_1(850f, vec4<f32>(-224f, 293f, 686f, -610f), vec3<u32>(34298u, 9473u, 1u))), 901f, Struct_2(Struct_1(1372f, vec4<f32>(-1296f, 1156f, -1250f, 1023f), vec3<u32>(44356u, 4294967295u, 0u)), Struct_1(-282f, vec4<f32>(-597f, -797f, 219f, 1000f), vec3<u32>(40145u, 64982u, 0u)))), Struct_3(Struct_2(Struct_1(-589f, vec4<f32>(-746f, -513f, 1198f, 1128f), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(-1284f, vec4<f32>(-648f, -682f, 898f, 1172f), vec3<u32>(41654u, 69777u, 0u))), 2574f, Struct_2(Struct_1(949f, vec4<f32>(-739f, 3384f, 678f, -1000f), vec3<u32>(24663u, 1104u, 43548u)), Struct_1(1000f, vec4<f32>(-1216f, -1000f, 674f, 2166f), vec3<u32>(67466u, 1u, 54948u)))), Struct_3(Struct_2(Struct_1(-131f, vec4<f32>(-346f, -1304f, -175f, -353f), vec3<u32>(92043u, 4294967295u, 0u)), Struct_1(1009f, vec4<f32>(-1000f, 179f, 912f, -656f), vec3<u32>(23429u, 4294967295u, 1u))), -994f, Struct_2(Struct_1(227f, vec4<f32>(-1947f, 171f, -1000f, -1356f), vec3<u32>(1u, 1u, 4294967295u)), Struct_1(905f, vec4<f32>(1129f, -918f, -658f, 665f), vec3<u32>(35325u, 4294967295u, 62832u)))), Struct_3(Struct_2(Struct_1(1621f, vec4<f32>(1930f, 289f, 1087f, -1063f), vec3<u32>(111891u, 113260u, 4294967295u)), Struct_1(1138f, vec4<f32>(505f, 1403f, -210f, -853f), vec3<u32>(114812u, 132715u, 0u))), -1223f, Struct_2(Struct_1(698f, vec4<f32>(1274f, -1148f, 113f, 212f), vec3<u32>(1u, 28108u, 3012u)), Struct_1(304f, vec4<f32>(-1193f, -116f, -328f, 329f), vec3<u32>(30773u, 4294967295u, 43725u)))), Struct_3(Struct_2(Struct_1(1007f, vec4<f32>(539f, 824f, -284f, 1199f), vec3<u32>(1u, 1u, 0u)), Struct_1(1211f, vec4<f32>(482f, -2491f, -381f, -188f), vec3<u32>(27361u, 4294967295u, 1u))), 235f, Struct_2(Struct_1(-363f, vec4<f32>(151f, -1194f, 463f, 685f), vec3<u32>(4294967295u, 33516u, 30380u)), Struct_1(801f, vec4<f32>(-316f, -1000f, -677f, -1760f), vec3<u32>(1u, 4294967295u, 26658u)))), Struct_3(Struct_2(Struct_1(789f, vec4<f32>(879f, 1583f, 262f, -897f), vec3<u32>(131735u, 5739u, 58754u)), Struct_1(-1000f, vec4<f32>(694f, 338f, -1940f, 1897f), vec3<u32>(1u, 1u, 0u))), -964f, Struct_2(Struct_1(-1000f, vec4<f32>(-358f, -1142f, 3137f, -689f), vec3<u32>(8139u, 4946u, 15834u)), Struct_1(-444f, vec4<f32>(817f, 844f, -799f, 607f), vec3<u32>(0u, 1u, 0u)))), Struct_3(Struct_2(Struct_1(-425f, vec4<f32>(2130f, -1215f, 866f, -174f), vec3<u32>(29870u, 25760u, 47212u)), Struct_1(-337f, vec4<f32>(-859f, -354f, -986f, -2325f), vec3<u32>(1u, 0u, 1u))), -1740f, Struct_2(Struct_1(-1897f, vec4<f32>(-450f, -147f, -1210f, -262f), vec3<u32>(5353u, 4294967295u, 4294967295u)), Struct_1(1158f, vec4<f32>(1000f, 337f, -367f, -1114f), vec3<u32>(9136u, 103875u, 27086u)))), Struct_3(Struct_2(Struct_1(882f, vec4<f32>(-380f, 932f, -584f, 1204f), vec3<u32>(269u, 9120u, 8362u)), Struct_1(1000f, vec4<f32>(398f, 894f, 1480f, 725f), vec3<u32>(6726u, 0u, 6405u))), 1000f, Struct_2(Struct_1(329f, vec4<f32>(452f, -1000f, 342f, -1000f), vec3<u32>(4294967295u, 0u, 1u)), Struct_1(455f, vec4<f32>(1364f, -791f, -383f, -901f), vec3<u32>(65195u, 0u, 28012u)))), Struct_3(Struct_2(Struct_1(670f, vec4<f32>(-2025f, -538f, -1349f, 1069f), vec3<u32>(35600u, 47787u, 1u)), Struct_1(1149f, vec4<f32>(-815f, 837f, 207f, 438f), vec3<u32>(4294967295u, 31929u, 15315u))), 606f, Struct_2(Struct_1(1029f, vec4<f32>(-883f, -682f, 1992f, -248f), vec3<u32>(1u, 1u, 0u)), Struct_1(689f, vec4<f32>(-511f, -582f, 679f, 150f), vec3<u32>(45271u, 29537u, 45602u)))), Struct_3(Struct_2(Struct_1(1063f, vec4<f32>(1207f, -711f, -1000f, 1658f), vec3<u32>(0u, 7999u, 4294967295u)), Struct_1(-209f, vec4<f32>(524f, -1808f, -941f, -2675f), vec3<u32>(15497u, 4294967295u, 71305u))), -2572f, Struct_2(Struct_1(-291f, vec4<f32>(-1576f, 1000f, -1532f, -1047f), vec3<u32>(1u, 1u, 10266u)), Struct_1(382f, vec4<f32>(-303f, -2139f, 555f, -604f), vec3<u32>(4294967295u, 3846u, 1957u)))), Struct_3(Struct_2(Struct_1(1424f, vec4<f32>(1070f, -1000f, -1000f, 684f), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(1107f, vec4<f32>(-255f, -1044f, 1988f, -601f), vec3<u32>(0u, 102307u, 2469u))), 1051f, Struct_2(Struct_1(-2284f, vec4<f32>(-276f, -2091f, -269f, 233f), vec3<u32>(1u, 1u, 1u)), Struct_1(684f, vec4<f32>(-1834f, 773f, -276f, -1000f), vec3<u32>(48622u, 6072u, 4294967295u)))), Struct_3(Struct_2(Struct_1(605f, vec4<f32>(-831f, 1000f, 953f, -2648f), vec3<u32>(1u, 4311u, 4294967295u)), Struct_1(-1572f, vec4<f32>(-1993f, -995f, -2609f, -523f), vec3<u32>(4294967295u, 12350u, 34312u))), -379f, Struct_2(Struct_1(113f, vec4<f32>(1000f, -1753f, 1082f, 1000f), vec3<u32>(19123u, 69735u, 19193u)), Struct_1(-1166f, vec4<f32>(594f, 369f, -711f, -865f), vec3<u32>(66260u, 4294967295u, 21114u)))), Struct_3(Struct_2(Struct_1(-1457f, vec4<f32>(1564f, -1000f, -511f, -146f), vec3<u32>(47908u, 1u, 60252u)), Struct_1(-849f, vec4<f32>(248f, 146f, 790f, -514f), vec3<u32>(0u, 0u, 1u))), -556f, Struct_2(Struct_1(-1871f, vec4<f32>(-1000f, -100f, 814f, -847f), vec3<u32>(48626u, 4294967295u, 0u)), Struct_1(267f, vec4<f32>(-2049f, 325f, -260f, -747f), vec3<u32>(69689u, 0u, 42968u)))), Struct_3(Struct_2(Struct_1(-197f, vec4<f32>(1071f, 1194f, 487f, -1603f), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(1806f, vec4<f32>(621f, -1125f, -722f, -1449f), vec3<u32>(0u, 4294967295u, 4294967295u))), -933f, Struct_2(Struct_1(2077f, vec4<f32>(637f, 184f, 789f, 876f), vec3<u32>(0u, 1u, 13711u)), Struct_1(656f, vec4<f32>(1000f, -1000f, 1000f, 529f), vec3<u32>(26783u, 0u, 0u)))), Struct_3(Struct_2(Struct_1(503f, vec4<f32>(-623f, 1259f, -1388f, -260f), vec3<u32>(0u, 0u, 0u)), Struct_1(-381f, vec4<f32>(1409f, -656f, -663f, 775f), vec3<u32>(46595u, 1u, 4294967295u))), -1000f, Struct_2(Struct_1(-1305f, vec4<f32>(-2330f, -196f, 941f, 1874f), vec3<u32>(86090u, 0u, 0u)), Struct_1(-603f, vec4<f32>(-1262f, 705f, 1000f, 1649f), vec3<u32>(5004u, 59337u, 1u)))), Struct_3(Struct_2(Struct_1(1110f, vec4<f32>(-221f, -307f, 1001f, 177f), vec3<u32>(110644u, 237u, 51406u)), Struct_1(1283f, vec4<f32>(1000f, -542f, 1000f, -1005f), vec3<u32>(22385u, 19026u, 85242u))), 893f, Struct_2(Struct_1(-487f, vec4<f32>(-1902f, -708f, 570f, 694f), vec3<u32>(48992u, 80446u, 470u)), Struct_1(1882f, vec4<f32>(-853f, -549f, -2384f, 968f), vec3<u32>(0u, 4294967295u, 4294967295u)))), Struct_3(Struct_2(Struct_1(-151f, vec4<f32>(1257f, 267f, -1765f, 350f), vec3<u32>(1u, 46970u, 60819u)), Struct_1(1143f, vec4<f32>(-1070f, -1000f, -171f, 1639f), vec3<u32>(50696u, 21110u, 869u))), 241f, Struct_2(Struct_1(328f, vec4<f32>(-600f, -409f, -609f, 758f), vec3<u32>(4294967295u, 47005u, 22004u)), Struct_1(-291f, vec4<f32>(-1626f, 1000f, 457f, -1967f), vec3<u32>(4294967295u, 4294967295u, 62317u)))), Struct_3(Struct_2(Struct_1(1400f, vec4<f32>(-1347f, -1297f, -932f, -378f), vec3<u32>(43634u, 4294967295u, 4294967295u)), Struct_1(-1166f, vec4<f32>(726f, 791f, -1149f, -443f), vec3<u32>(54780u, 35382u, 73789u))), -495f, Struct_2(Struct_1(278f, vec4<f32>(795f, -1576f, -296f, -512f), vec3<u32>(78780u, 4294967295u, 10123u)), Struct_1(-290f, vec4<f32>(-1000f, -397f, -1447f, 1048f), vec3<u32>(4294967295u, 1u, 39998u)))), Struct_3(Struct_2(Struct_1(633f, vec4<f32>(1000f, -148f, 2831f, 135f), vec3<u32>(1u, 84029u, 97206u)), Struct_1(1000f, vec4<f32>(-436f, -1487f, 2364f, -2300f), vec3<u32>(4294967295u, 0u, 4294967295u))), -525f, Struct_2(Struct_1(-1409f, vec4<f32>(598f, 1904f, 406f, -163f), vec3<u32>(1u, 32246u, 9062u)), Struct_1(-539f, vec4<f32>(-1099f, 2103f, -1079f, 1440f), vec3<u32>(8475u, 0u, 0u)))), Struct_3(Struct_2(Struct_1(1151f, vec4<f32>(-572f, 1081f, 386f, 1182f), vec3<u32>(74923u, 11172u, 72469u)), Struct_1(-862f, vec4<f32>(356f, -2026f, 759f, -1978f), vec3<u32>(67459u, 31918u, 70034u))), 296f, Struct_2(Struct_1(-1842f, vec4<f32>(401f, -1515f, 995f, 1000f), vec3<u32>(14282u, 1u, 1u)), Struct_1(1619f, vec4<f32>(-623f, 643f, -605f, 390f), vec3<u32>(2540u, 4294967295u, 0u)))), Struct_3(Struct_2(Struct_1(-2119f, vec4<f32>(1000f, -457f, -967f, 199f), vec3<u32>(20136u, 1u, 21077u)), Struct_1(-763f, vec4<f32>(148f, -816f, -1135f, 748f), vec3<u32>(4294967295u, 96985u, 4294967295u))), -1000f, Struct_2(Struct_1(-701f, vec4<f32>(2240f, -1000f, 861f, 212f), vec3<u32>(1157u, 16830u, 1u)), Struct_1(1666f, vec4<f32>(618f, 650f, 581f, 1000f), vec3<u32>(1u, 4245u, 0u)))), Struct_3(Struct_2(Struct_1(797f, vec4<f32>(-826f, -1190f, 662f, -663f), vec3<u32>(12475u, 0u, 0u)), Struct_1(-872f, vec4<f32>(259f, -199f, -420f, -860f), vec3<u32>(52694u, 0u, 4294967295u))), 444f, Struct_2(Struct_1(-1000f, vec4<f32>(1528f, 1097f, 2644f, -936f), vec3<u32>(13875u, 0u, 0u)), Struct_1(251f, vec4<f32>(-173f, -148f, 1599f, -1909f), vec3<u32>(25632u, 4294967295u, 4294967295u)))), Struct_3(Struct_2(Struct_1(497f, vec4<f32>(-1280f, -911f, -499f, 709f), vec3<u32>(1u, 4294967295u, 9487u)), Struct_1(347f, vec4<f32>(175f, -598f, -664f, -803f), vec3<u32>(27245u, 63461u, 1u))), -297f, Struct_2(Struct_1(-679f, vec4<f32>(-529f, 1019f, -567f, -974f), vec3<u32>(1390u, 48797u, 1242u)), Struct_1(1000f, vec4<f32>(-1533f, -549f, 1482f, -521f), vec3<u32>(4294967295u, 42302u, 18506u)))), Struct_3(Struct_2(Struct_1(-2537f, vec4<f32>(-1226f, -1894f, 509f, 403f), vec3<u32>(8238u, 61104u, 1u)), Struct_1(-643f, vec4<f32>(-511f, 1648f, 1000f, -209f), vec3<u32>(3165u, 3356u, 4245u))), -733f, Struct_2(Struct_1(-1236f, vec4<f32>(-352f, -950f, -1000f, 824f), vec3<u32>(4294967295u, 33620u, 4294967295u)), Struct_1(-1073f, vec4<f32>(1000f, -436f, -1021f, 1390f), vec3<u32>(57155u, 78812u, 16593u)))), Struct_3(Struct_2(Struct_1(-1000f, vec4<f32>(-1544f, 1473f, -1142f, 683f), vec3<u32>(1u, 83677u, 0u)), Struct_1(573f, vec4<f32>(-396f, -1374f, 148f, 2117f), vec3<u32>(732u, 10411u, 66204u))), -1000f, Struct_2(Struct_1(1039f, vec4<f32>(-342f, 252f, 485f, -705f), vec3<u32>(0u, 39363u, 1u)), Struct_1(-274f, vec4<f32>(-341f, 156f, 1898f, -482f), vec3<u32>(15928u, 0u, 4294967295u)))), Struct_3(Struct_2(Struct_1(-914f, vec4<f32>(1000f, 747f, 325f, -497f), vec3<u32>(29854u, 43209u, 0u)), Struct_1(575f, vec4<f32>(1279f, 204f, 534f, 1513f), vec3<u32>(4294967295u, 13708u, 11264u))), 744f, Struct_2(Struct_1(1793f, vec4<f32>(-568f, -899f, 196f, 164f), vec3<u32>(95760u, 0u, 1u)), Struct_1(905f, vec4<f32>(-1398f, -1586f, 1116f, -181f), vec3<u32>(506u, 1u, 73751u)))), Struct_3(Struct_2(Struct_1(419f, vec4<f32>(-391f, 233f, 234f, -615f), vec3<u32>(33111u, 0u, 78472u)), Struct_1(232f, vec4<f32>(-751f, 285f, 196f, 1722f), vec3<u32>(25345u, 1u, 25912u))), 346f, Struct_2(Struct_1(417f, vec4<f32>(-757f, 1035f, 2170f, -692f), vec3<u32>(4294967295u, 18585u, 42188u)), Struct_1(-173f, vec4<f32>(811f, 1000f, 411f, 892f), vec3<u32>(1u, 0u, 50669u)))), Struct_3(Struct_2(Struct_1(1106f, vec4<f32>(1094f, -1255f, -1054f, -121f), vec3<u32>(0u, 80950u, 35839u)), Struct_1(2016f, vec4<f32>(-270f, -339f, -607f, 399f), vec3<u32>(15562u, 30278u, 0u))), 437f, Struct_2(Struct_1(620f, vec4<f32>(561f, -632f, -427f, -1602f), vec3<u32>(58412u, 4294967295u, 13075u)), Struct_1(681f, vec4<f32>(979f, -1671f, 139f, 434f), vec3<u32>(31352u, 0u, 36172u)))), Struct_3(Struct_2(Struct_1(-2389f, vec4<f32>(-637f, 2682f, -616f, -678f), vec3<u32>(1u, 29937u, 2270u)), Struct_1(-775f, vec4<f32>(1745f, 649f, -939f, 204f), vec3<u32>(4294967295u, 12880u, 13842u))), -883f, Struct_2(Struct_1(-1000f, vec4<f32>(-152f, 1254f, 893f, 928f), vec3<u32>(0u, 1u, 6326u)), Struct_1(-761f, vec4<f32>(-1000f, -1194f, -573f, -1095f), vec3<u32>(16048u, 4294967295u, 9998u)))), Struct_3(Struct_2(Struct_1(-100f, vec4<f32>(-109f, -556f, 1000f, 1343f), vec3<u32>(1u, 0u, 0u)), Struct_1(149f, vec4<f32>(-297f, -252f, 146f, -1112f), vec3<u32>(1u, 36774u, 1u))), -795f, Struct_2(Struct_1(1814f, vec4<f32>(-1193f, -1252f, -699f, -222f), vec3<u32>(0u, 0u, 1u)), Struct_1(1345f, vec4<f32>(-2247f, -319f, -930f, 1092f), vec3<u32>(155136u, 0u, 1u)))), Struct_3(Struct_2(Struct_1(-241f, vec4<f32>(458f, -2628f, -1026f, -899f), vec3<u32>(68455u, 42428u, 16298u)), Struct_1(-245f, vec4<f32>(-957f, -1000f, -1280f, 406f), vec3<u32>(1u, 59122u, 1u))), 1020f, Struct_2(Struct_1(-1257f, vec4<f32>(-904f, -918f, -109f, -1309f), vec3<u32>(4294967295u, 1u, 12394u)), Struct_1(-673f, vec4<f32>(-421f, -1118f, 496f, -255f), vec3<u32>(39031u, 4294967295u, 0u)))), Struct_3(Struct_2(Struct_1(-627f, vec4<f32>(-1781f, -1000f, -1118f, 1000f), vec3<u32>(93544u, 0u, 51438u)), Struct_1(437f, vec4<f32>(-531f, 2044f, 297f, -421f), vec3<u32>(47612u, 18816u, 39289u))), 2198f, Struct_2(Struct_1(-873f, vec4<f32>(362f, 421f, -1082f, 463f), vec3<u32>(56492u, 1u, 49659u)), Struct_1(-558f, vec4<f32>(1502f, -419f, -766f, 1024f), vec3<u32>(1u, 0u, 9504u)))));

var<private> global1: array<vec2<bool>, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    var var_0 = u_input.a;
    var_0 = u_input.c.x;
    return -533f;
}

fn func_3() -> vec4<bool> {
    var var_0 = !(!global1[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(u_input.a), u_input.a), 9u)]);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-338f, 563f, _wgslsmith_f_op_f32(trunc(136f)), _wgslsmith_f_op_f32(select(-1698f, -166f, true))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(628f, _wgslsmith_f_op_f32(ceil(352f)), _wgslsmith_f_op_f32(max(-662f, 928f)), _wgslsmith_f_op_f32(f32(-1f) * -292f)))) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(2666f)), -974f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-139f - 2006f) + _wgslsmith_f_op_f32(746f * 1115f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-946f, _wgslsmith_f_op_f32(-797f - -553f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1185f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-520f)), _wgslsmith_f_op_f32(296f - 811f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-920f - 1074f))));
    let var_2 = vec2<u32>(u_input.c.x, ~u_input.a);
    var var_3 = ~u_input.c.xxx;
    let var_4 = Struct_2(Struct_1(-867f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, var_1.x, var_1.x, var_1.x)))), u_input.c.wzy), Struct_1(_wgslsmith_f_op_f32(-596f - 162f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -948f, _wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(638f + -468f))), vec3<u32>(4262u, _wgslsmith_sub_u32(~var_3.x, var_2.x), u_input.c.x >> (reverseBits(var_2.x) % 32u))));
    return select(vec4<bool>(36978u > _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.a, var_3.x, 3357u, var_4.a.c.x))), true, -2147483647i > -u_input.b, var_0.x), !select(vec4<bool>(var_0.x, true, select(true, var_0.x, true), var_0.x), vec4<bool>(true, !var_0.x, !var_0.x, true), true), !var_0.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5) -> bool {
    let var_0 = countOneBits(countOneBits(_wgslsmith_clamp_i32(u_input.b, -u_input.b, 35770i)) >> (arg_0.d.c.x % 32u));
    var var_1 = ~(~(~(~arg_1.d)));
    let var_2 = _wgslsmith_sub_vec2_u32(~(~(vec2<u32>(arg_1.d, u_input.c.x) & vec2<u32>(4294967295u, 5590u))), max(arg_0.c.a.c.xz, u_input.c.xw));
    global0 = array<Struct_3, 32>();
    var var_3 = arg_0;
    return arg_1.c.x;
}

fn func_2() -> bool {
    return func_4(Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(25720u, u_input.a) | abs(vec2<u32>(u_input.c.x, u_input.a)), ~(~vec2<u32>(1395u, 4294967295u))), 32u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1097f, -655f, true)), _wgslsmith_f_op_f32(150f + -214f)) - -524f), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1000f - 1000f), vec4<f32>(-820f, 422f, 224f, -1144f), u_input.c.www), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1397f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-350f, 1000f, 639f, -1547f))), vec3<u32>(1960u, 0u, u_input.c.x))), Struct_1(284f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-907f, -720f, -1332f, 901f)) - vec4<f32>(-810f, 431f, 197f, 2105f)), vec3<u32>(~1u, ~11484u, 1u))), Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(round(-383f)), vec4<f32>(113f, 152f, -317f, 592f), u_input.c.xwy), Struct_1(-1000f, vec4<f32>(788f, -108f, 1308f, 1535f), u_input.c.xzw | u_input.c.xyw)), ~u_input.c.x, vec3<bool>(true, true, any(vec3<bool>(true, true, true))), min(firstTrailingBit(_wgslsmith_sub_u32(0u, u_input.c.x)), abs(reverseBits(u_input.c.x))), func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -840f), -111f, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2172f, -910f)))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1u, ~(u_input.c.x | u_input.a))) + -530f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1239f, _wgslsmith_f_op_f32(min(-833f, 1000f)))) * _wgslsmith_f_op_f32(1052f * 1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -674f)));
    var var_1 = vec2<bool>(!(!all(vec4<bool>(true, false, true, false)) && !func_2()), (_wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-288f)))) & (false | any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true))));
    var var_2 = 1u;
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.x, -772f)), 686f)))), var_0.x) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1894f - var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.x))))))));
    var var_3 = Struct_1(1000f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(126f, var_0.x, var_0.x, 1394f) - vec4<f32>(var_0.x, var_0.x, 1038f, 1202f)) + vec4<f32>(-445f, 509f, -454f, -149f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -966f), var_0.x, var_0.x, 1f)), u_input.c.wyx);
    let var_4 = _wgslsmith_f_op_vec2_f32(-var_0.zz);
    var var_5 = false;
    var var_6 = Struct_5(Struct_2(Struct_1(var_3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_3.b.x, 1000f, 1157f))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 17396u), u_input.c), 4294967295u << (var_3.c.x % 32u), 17693u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -628f), vec4<f32>(-762f, _wgslsmith_f_op_f32(sign(110f)), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(min(-1000f, var_0.x))), u_input.c.zyz)), 4294967295u, !vec3<bool>(true, func_3().x, _wgslsmith_f_op_f32(f32(-1f) * -2358f) == var_3.a), ~0u, func_3());
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b ^ u_input.b) >> ((~u_input.c | u_input.c) % vec4<u32>(32u))), u_input.c.xww, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.b.x, var_6.a.a.a, var_6.a.a.a, var_6.a.b.b.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, var_0.x, var_0.x, -1391f)) * vec4<f32>(_wgslsmith_f_op_f32(select(var_6.a.b.b.x, var_6.a.b.a, true)), _wgslsmith_f_op_f32(round(-1803f)), _wgslsmith_f_op_f32(-var_6.a.b.b.x), _wgslsmith_f_op_f32(1315f - var_6.a.b.b.x)))), -1i);
}

