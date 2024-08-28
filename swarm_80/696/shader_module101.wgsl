struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(true);

var<private> global1: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(vec3<f32>(930f, 540f, 1627f), Struct_1(vec3<f32>(290f, 1004f, -1404f), -17660i, 4136u, -27784i), vec4<u32>(0u, 61838u, 39690u, 13179u), Struct_1(vec3<f32>(269f, 1381f, -1000f), -1i, 4294967295u, -67641i), vec2<bool>(true, true)), vec3<bool>(true, true, true), Struct_1(vec3<f32>(-1000f, 493f, -623f), 1i, 1u, -74966i), Struct_2(vec3<f32>(-639f, 2079f, 749f), Struct_1(vec3<f32>(877f, 977f, 106f), -1i, 69552u, 47688i), vec4<u32>(0u, 4294967295u, 1u, 1u), Struct_1(vec3<f32>(562f, 931f, -542f), -20603i, 46429u, 2147483647i), vec2<bool>(true, false)))), Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(vec3<f32>(716f, -885f, -235f), Struct_1(vec3<f32>(-379f, -1614f, 1000f), 36510i, 103846u, -19715i), vec4<u32>(39327u, 4294967295u, 35232u, 0u), Struct_1(vec3<f32>(-217f, -1838f, -430f), -1i, 4294967295u, -1i), vec2<bool>(true, false)), vec3<bool>(true, false, false), Struct_1(vec3<f32>(-239f, -363f, 914f), 2147483647i, 4294967295u, -1i), Struct_2(vec3<f32>(-1000f, -1718f, 702f), Struct_1(vec3<f32>(1000f, 539f, 1038f), -1i, 39328u, 11695i), vec4<u32>(5123u, 92823u, 4068u, 48958u), Struct_1(vec3<f32>(459f, -1000f, 1702f), -29896i, 34476u, 2147483647i), vec2<bool>(true, false)))), Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(vec3<f32>(-1761f, -832f, 1336f), Struct_1(vec3<f32>(228f, 345f, 434f), 59499i, 2703u, -44134i), vec4<u32>(31500u, 0u, 12730u, 35340u), Struct_1(vec3<f32>(271f, 200f, 1391f), 2147483647i, 47426u, 2147483647i), vec2<bool>(false, false)), vec3<bool>(true, true, true), Struct_1(vec3<f32>(-623f, -280f, 1702f), 1i, 3782u, 2430i), Struct_2(vec3<f32>(481f, 876f, 1765f), Struct_1(vec3<f32>(-1000f, -1181f, -934f), -60239i, 0u, 51804i), vec4<u32>(1u, 122316u, 4294967295u, 0u), Struct_1(vec3<f32>(751f, -537f, 1584f), 2147483647i, 5388u, 2147483647i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(vec3<f32>(214f, 485f, -230f), Struct_1(vec3<f32>(-692f, 734f, -1238f), -19801i, 39630u, -8935i), vec4<u32>(37629u, 1u, 16565u, 4294967295u), Struct_1(vec3<f32>(-619f, -399f, -423f), i32(-2147483648), 1u, 1i), vec2<bool>(true, true)), vec3<bool>(false, false, false), Struct_1(vec3<f32>(832f, -1053f, -610f), -7532i, 49694u, -47024i), Struct_2(vec3<f32>(635f, -469f, 1083f), Struct_1(vec3<f32>(-1082f, 2178f, 925f), -31422i, 4294967295u, i32(-2147483648)), vec4<u32>(13305u, 1u, 14360u, 92292u), Struct_1(vec3<f32>(-340f, 957f, 2567f), -23775i, 64037u, i32(-2147483648)), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(vec3<f32>(-144f, 489f, 1310f), Struct_1(vec3<f32>(1533f, -1557f, -107f), 0i, 27228u, -14089i), vec4<u32>(18045u, 51311u, 37517u, 1u), Struct_1(vec3<f32>(-769f, 1299f, 862f), 1i, 4294967295u, 0i), vec2<bool>(false, false)), vec3<bool>(true, true, false), Struct_1(vec3<f32>(1000f, 714f, -195f), -31557i, 120284u, 0i), Struct_2(vec3<f32>(-706f, -658f, -891f), Struct_1(vec3<f32>(573f, -123f, -1431f), 11916i, 78419u, 2147483647i), vec4<u32>(27328u, 7923u, 28248u, 92651u), Struct_1(vec3<f32>(-660f, -141f, 116f), -1i, 21597u, -19540i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(vec3<f32>(-1199f, -900f, 814f), Struct_1(vec3<f32>(1643f, 1279f, -932f), 2147483647i, 0u, 30103i), vec4<u32>(1u, 4294967295u, 51278u, 1u), Struct_1(vec3<f32>(156f, 1201f, -868f), 2147483647i, 4294967295u, 1i), vec2<bool>(false, false)), vec3<bool>(false, true, false), Struct_1(vec3<f32>(406f, -1309f, 2139f), 2147483647i, 88478u, 2147483647i), Struct_2(vec3<f32>(-280f, -697f, 1000f), Struct_1(vec3<f32>(-1870f, 1568f, 954f), -16107i, 1u, 1i), vec4<u32>(4294967295u, 15312u, 1u, 34981u), Struct_1(vec3<f32>(1029f, 318f, -829f), 0i, 59036u, 22150i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(vec3<f32>(210f, 1118f, -598f), Struct_1(vec3<f32>(298f, 765f, 103f), 9443i, 1u, 676i), vec4<u32>(66077u, 32674u, 16523u, 0u), Struct_1(vec3<f32>(-388f, 963f, 832f), 0i, 45760u, 4171i), vec2<bool>(false, true)), vec3<bool>(false, true, false), Struct_1(vec3<f32>(1000f, 776f, 895f), 1i, 32376u, -21750i), Struct_2(vec3<f32>(-407f, -463f, -913f), Struct_1(vec3<f32>(920f, 252f, -567f), i32(-2147483648), 41345u, 3751i), vec4<u32>(4294967295u, 104927u, 38528u, 0u), Struct_1(vec3<f32>(-1444f, 336f, 1563f), 1i, 3681u, 8168i), vec2<bool>(true, true)))), Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(vec3<f32>(-859f, 802f, 1000f), Struct_1(vec3<f32>(674f, 1101f, 254f), 2147483647i, 84995u, 1i), vec4<u32>(70214u, 1u, 23178u, 1u), Struct_1(vec3<f32>(743f, 1765f, 268f), 2147483647i, 4528u, -1i), vec2<bool>(true, false)), vec3<bool>(false, true, false), Struct_1(vec3<f32>(-953f, -737f, -464f), 2147483647i, 1u, 57834i), Struct_2(vec3<f32>(-774f, -298f, -351f), Struct_1(vec3<f32>(-1566f, -364f, -1000f), 1i, 4294967295u, -18073i), vec4<u32>(82575u, 4294967295u, 4506u, 4294967295u), Struct_1(vec3<f32>(259f, -1577f, 1475f), 5594i, 17564u, 39464i), vec2<bool>(true, false)))), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(vec3<f32>(275f, -722f, 1610f), Struct_1(vec3<f32>(587f, 498f, -843f), 73163i, 1u, 45275i), vec4<u32>(4294967295u, 104525u, 88834u, 336u), Struct_1(vec3<f32>(-367f, 530f, -1992f), 1i, 3628u, 2147483647i), vec2<bool>(false, false)), vec3<bool>(false, false, true), Struct_1(vec3<f32>(-202f, 292f, -474f), -1i, 1u, -45267i), Struct_2(vec3<f32>(1279f, 664f, -684f), Struct_1(vec3<f32>(127f, 660f, 401f), 2147483647i, 27382u, i32(-2147483648)), vec4<u32>(47644u, 23404u, 8817u, 46242u), Struct_1(vec3<f32>(1417f, -1000f, -1105f), -4766i, 4294967295u, 1i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(vec3<f32>(-753f, -2005f, 374f), Struct_1(vec3<f32>(297f, -624f, 141f), -10886i, 1u, -1i), vec4<u32>(1u, 67044u, 1u, 12047u), Struct_1(vec3<f32>(-1850f, -1918f, 932f), 0i, 1u, -1i), vec2<bool>(true, true)), vec3<bool>(true, false, false), Struct_1(vec3<f32>(656f, -283f, 453f), -1i, 1u, -86105i), Struct_2(vec3<f32>(-220f, 1267f, -178f), Struct_1(vec3<f32>(-740f, -115f, -1659f), -1i, 15130u, 60331i), vec4<u32>(18657u, 1752u, 0u, 4294967295u), Struct_1(vec3<f32>(1385f, 109f, -1495f), 1i, 1u, -1i), vec2<bool>(true, false)))), Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(vec3<f32>(249f, -1000f, 813f), Struct_1(vec3<f32>(-540f, -1556f, -1428f), i32(-2147483648), 31540u, -30878i), vec4<u32>(1u, 1u, 0u, 75435u), Struct_1(vec3<f32>(613f, 151f, 2341f), 1i, 4294967295u, -1i), vec2<bool>(false, false)), vec3<bool>(false, false, true), Struct_1(vec3<f32>(1178f, 2510f, -2537f), i32(-2147483648), 4294967295u, 1i), Struct_2(vec3<f32>(-1288f, -1470f, 343f), Struct_1(vec3<f32>(136f, 328f, 481f), -58934i, 4294967295u, 0i), vec4<u32>(1u, 53445u, 7802u, 33989u), Struct_1(vec3<f32>(-538f, -940f, -541f), 4935i, 4294967295u, 0i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(vec3<f32>(782f, 498f, 1262f), Struct_1(vec3<f32>(-372f, -1347f, 497f), 1i, 0u, -1i), vec4<u32>(4294967295u, 4294967295u, 3884u, 14755u), Struct_1(vec3<f32>(480f, -1000f, 520f), 72755i, 0u, -18881i), vec2<bool>(true, true)), vec3<bool>(false, false, true), Struct_1(vec3<f32>(1385f, 1097f, 1562f), 0i, 1u, -13738i), Struct_2(vec3<f32>(830f, -1000f, -977f), Struct_1(vec3<f32>(-1616f, -271f, 170f), -1i, 1u, -9462i), vec4<u32>(0u, 8656u, 4294967295u, 90659u), Struct_1(vec3<f32>(411f, 1185f, 1462f), -1i, 0u, 0i), vec2<bool>(true, false)))), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(vec3<f32>(-291f, -813f, -1000f), Struct_1(vec3<f32>(-868f, -1989f, 308f), -1i, 4013u, 26310i), vec4<u32>(70533u, 17871u, 1u, 0u), Struct_1(vec3<f32>(-337f, 811f, 406f), 1i, 2811u, 1i), vec2<bool>(false, true)), vec3<bool>(false, true, false), Struct_1(vec3<f32>(-673f, 630f, 613f), 1i, 4294967295u, 1814i), Struct_2(vec3<f32>(-771f, -662f, 1243f), Struct_1(vec3<f32>(-438f, 194f, -1000f), 25101i, 6263u, 2147483647i), vec4<u32>(54316u, 1u, 46299u, 72569u), Struct_1(vec3<f32>(1138f, 465f, -541f), 21329i, 0u, -10142i), vec2<bool>(false, true)))), Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(vec3<f32>(-1000f, -510f, 818f), Struct_1(vec3<f32>(-748f, 1795f, -157f), i32(-2147483648), 860u, 12239i), vec4<u32>(0u, 0u, 4294967295u, 68062u), Struct_1(vec3<f32>(1080f, 1468f, 577f), -32359i, 1u, -37349i), vec2<bool>(false, false)), vec3<bool>(true, false, false), Struct_1(vec3<f32>(-983f, -1164f, 332f), 1i, 95111u, 2469i), Struct_2(vec3<f32>(-815f, -201f, 862f), Struct_1(vec3<f32>(-524f, 533f, 243f), -1i, 1124u, -20913i), vec4<u32>(25949u, 16169u, 45707u, 20710u), Struct_1(vec3<f32>(-1603f, -110f, 105f), 1i, 4294967295u, 1i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(vec3<f32>(-238f, 354f, -986f), Struct_1(vec3<f32>(1000f, -1741f, -998f), 3449i, 0u, -5149i), vec4<u32>(34569u, 4294967295u, 42102u, 32738u), Struct_1(vec3<f32>(284f, 872f, -119f), 2147483647i, 47749u, -35691i), vec2<bool>(false, true)), vec3<bool>(true, true, false), Struct_1(vec3<f32>(216f, 1173f, -2662f), -3730i, 4294967295u, -33108i), Struct_2(vec3<f32>(-952f, -1000f, -713f), Struct_1(vec3<f32>(757f, -497f, -843f), -26193i, 1u, -20159i), vec4<u32>(1u, 4294967295u, 1u, 0u), Struct_1(vec3<f32>(1721f, -661f, 1005f), 2147483647i, 20634u, 34916i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(vec3<f32>(-411f, -1425f, -1311f), Struct_1(vec3<f32>(1295f, 618f, -905f), i32(-2147483648), 4294967295u, 26172i), vec4<u32>(0u, 4294967295u, 0u, 51543u), Struct_1(vec3<f32>(472f, 1088f, -341f), 2147483647i, 1u, 12635i), vec2<bool>(false, true)), vec3<bool>(true, false, true), Struct_1(vec3<f32>(453f, -1359f, -1841f), i32(-2147483648), 29913u, -1i), Struct_2(vec3<f32>(1606f, 194f, -184f), Struct_1(vec3<f32>(308f, -237f, -793f), 14343i, 8942u, -47045i), vec4<u32>(1u, 45319u, 4294967295u, 22270u), Struct_1(vec3<f32>(-1015f, -1301f, 445f), -1i, 21759u, -1i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(vec3<f32>(816f, -485f, -894f), Struct_1(vec3<f32>(-256f, 1673f, -668f), -36535i, 0u, 0i), vec4<u32>(28146u, 137591u, 0u, 8212u), Struct_1(vec3<f32>(228f, 213f, -2359f), 24985i, 29579u, 36815i), vec2<bool>(false, true)), vec3<bool>(false, false, false), Struct_1(vec3<f32>(930f, -647f, -261f), -9496i, 9494u, -95902i), Struct_2(vec3<f32>(697f, -1727f, -1263f), Struct_1(vec3<f32>(-1449f, -188f, -2095f), -37087i, 4294967295u, 1i), vec4<u32>(0u, 1u, 31692u, 0u), Struct_1(vec3<f32>(-677f, -760f, -400f), 43946i, 6032u, -1i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(vec3<f32>(-939f, 1025f, 1307f), Struct_1(vec3<f32>(-826f, 1496f, -2381f), -9051i, 4294967295u, i32(-2147483648)), vec4<u32>(6314u, 4294967295u, 22890u, 1u), Struct_1(vec3<f32>(-1188f, 1000f, -777f), 1i, 0u, 0i), vec2<bool>(false, false)), vec3<bool>(false, true, false), Struct_1(vec3<f32>(-2045f, 745f, -243f), i32(-2147483648), 50648u, -38175i), Struct_2(vec3<f32>(-430f, -1266f, 921f), Struct_1(vec3<f32>(-1251f, -1589f, 375f), -31285i, 1u, 35859i), vec4<u32>(1965u, 1u, 16938u, 4294967295u), Struct_1(vec3<f32>(1000f, -830f, 1295f), 1i, 0u, 2147483647i), vec2<bool>(true, true)))), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(vec3<f32>(1503f, -364f, -1755f), Struct_1(vec3<f32>(-629f, 550f, 1366f), 16433i, 100496u, -7835i), vec4<u32>(1u, 4294967295u, 4294967295u, 26441u), Struct_1(vec3<f32>(1000f, -376f, -1000f), 2147483647i, 0u, 23487i), vec2<bool>(false, true)), vec3<bool>(true, false, false), Struct_1(vec3<f32>(-388f, 1149f, 3366f), 2618i, 80261u, -60020i), Struct_2(vec3<f32>(-2198f, -1314f, -557f), Struct_1(vec3<f32>(-572f, -403f, -1560f), 2147483647i, 14094u, 2147483647i), vec4<u32>(1u, 4294967295u, 46187u, 58376u), Struct_1(vec3<f32>(-309f, 175f, -1000f), 2147483647i, 53783u, 33284i), vec2<bool>(true, false)))), Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(vec3<f32>(-451f, 1000f, -207f), Struct_1(vec3<f32>(1876f, -134f, -431f), 1i, 4294967295u, 1i), vec4<u32>(4294967295u, 35020u, 4294967295u, 1u), Struct_1(vec3<f32>(953f, 198f, -1000f), 0i, 45972u, -1i), vec2<bool>(true, true)), vec3<bool>(false, false, false), Struct_1(vec3<f32>(1075f, 672f, 1222f), 669i, 33437u, 0i), Struct_2(vec3<f32>(594f, -594f, 1206f), Struct_1(vec3<f32>(683f, -337f, 502f), 0i, 0u, -38435i), vec4<u32>(1u, 25353u, 4294967295u, 1u), Struct_1(vec3<f32>(-493f, -747f, 590f), i32(-2147483648), 47865u, -30596i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(vec3<f32>(-1371f, 1745f, 1000f), Struct_1(vec3<f32>(1445f, 1684f, 1127f), -75156i, 49774u, i32(-2147483648)), vec4<u32>(27694u, 4294967295u, 1u, 59715u), Struct_1(vec3<f32>(952f, 400f, -313f), -45767i, 35269u, -19923i), vec2<bool>(true, false)), vec3<bool>(true, false, false), Struct_1(vec3<f32>(-563f, -1625f, -1000f), -10342i, 37716u, 2147483647i), Struct_2(vec3<f32>(-1821f, -766f, 1003f), Struct_1(vec3<f32>(-1711f, -1417f, 456f), 0i, 9835u, -36181i), vec4<u32>(37266u, 28096u, 19424u, 4294967295u), Struct_1(vec3<f32>(1576f, 1473f, 233f), 0i, 1u, 0i), vec2<bool>(true, true)))), Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(vec3<f32>(-994f, -1124f, 208f), Struct_1(vec3<f32>(1318f, -665f, 334f), -34995i, 28503u, 0i), vec4<u32>(91302u, 59409u, 47935u, 0u), Struct_1(vec3<f32>(664f, 472f, -465f), 12545i, 4294967295u, 0i), vec2<bool>(false, true)), vec3<bool>(true, true, true), Struct_1(vec3<f32>(794f, 1837f, 679f), 0i, 46947u, 2147483647i), Struct_2(vec3<f32>(-504f, -1611f, 1245f), Struct_1(vec3<f32>(-299f, -1000f, 1085f), i32(-2147483648), 20818u, i32(-2147483648)), vec4<u32>(0u, 63599u, 4294967295u, 7976u), Struct_1(vec3<f32>(2880f, 334f, -1000f), -1i, 1u, -1i), vec2<bool>(true, false)))), Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(vec3<f32>(-1000f, -751f, 1869f), Struct_1(vec3<f32>(913f, 658f, 100f), -20772i, 6341u, -26143i), vec4<u32>(1u, 4294967295u, 1u, 0u), Struct_1(vec3<f32>(1114f, -829f, -515f), 0i, 4960u, -29594i), vec2<bool>(true, false)), vec3<bool>(true, true, false), Struct_1(vec3<f32>(110f, -1289f, -433f), -1i, 0u, 0i), Struct_2(vec3<f32>(364f, 572f, 484f), Struct_1(vec3<f32>(-614f, 1151f, 1273f), -19440i, 11790u, 2147483647i), vec4<u32>(24489u, 0u, 1u, 0u), Struct_1(vec3<f32>(617f, -1053f, -1000f), i32(-2147483648), 4294967295u, 1i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(vec3<f32>(-608f, -771f, 2128f), Struct_1(vec3<f32>(-1000f, -1518f, 3075f), 2321i, 0u, 56960i), vec4<u32>(4294967295u, 100630u, 45175u, 13677u), Struct_1(vec3<f32>(-1000f, 1214f, -120f), i32(-2147483648), 1u, -1i), vec2<bool>(true, true)), vec3<bool>(true, false, false), Struct_1(vec3<f32>(-759f, -150f, 202f), 12551i, 51254u, 3602i), Struct_2(vec3<f32>(423f, -776f, 882f), Struct_1(vec3<f32>(-842f, -1384f, -654f), 38323i, 1u, i32(-2147483648)), vec4<u32>(3623u, 1u, 6292u, 0u), Struct_1(vec3<f32>(480f, -130f, 171f), 36245i, 9214u, -1i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(vec3<f32>(-1612f, -586f, 606f), Struct_1(vec3<f32>(1832f, -1430f, -513f), 2361i, 1736u, i32(-2147483648)), vec4<u32>(4294967295u, 52157u, 25653u, 76503u), Struct_1(vec3<f32>(-865f, -1228f, -197f), i32(-2147483648), 1u, i32(-2147483648)), vec2<bool>(false, false)), vec3<bool>(false, true, true), Struct_1(vec3<f32>(-2470f, 899f, -932f), 16635i, 96855u, 19706i), Struct_2(vec3<f32>(-883f, 1920f, -1034f), Struct_1(vec3<f32>(577f, 1000f, 794f), 0i, 112180u, 0i), vec4<u32>(1u, 52422u, 21079u, 0u), Struct_1(vec3<f32>(-1000f, -168f, -472f), 1i, 0u, 0i), vec2<bool>(true, true)))), Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(vec3<f32>(1052f, 1251f, 689f), Struct_1(vec3<f32>(-909f, 669f, 2111f), -1i, 34204u, 37633i), vec4<u32>(0u, 0u, 0u, 4294967295u), Struct_1(vec3<f32>(186f, 766f, -1000f), -65217i, 1u, 8544i), vec2<bool>(true, false)), vec3<bool>(false, true, false), Struct_1(vec3<f32>(141f, 1643f, -1493f), i32(-2147483648), 1u, -7405i), Struct_2(vec3<f32>(-1000f, -1789f, -927f), Struct_1(vec3<f32>(-746f, -1028f, 1162f), -1i, 20650u, 14097i), vec4<u32>(45443u, 4294967295u, 15475u, 0u), Struct_1(vec3<f32>(1479f, 1000f, 1000f), -36734i, 4294967295u, 5837i), vec2<bool>(false, false)))), Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(vec3<f32>(-603f, -1715f, -462f), Struct_1(vec3<f32>(1125f, 1063f, -477f), -1i, 4294967295u, 7283i), vec4<u32>(33273u, 15182u, 62965u, 54274u), Struct_1(vec3<f32>(-1146f, -753f, -1151f), 0i, 1u, i32(-2147483648)), vec2<bool>(true, true)), vec3<bool>(true, false, true), Struct_1(vec3<f32>(185f, 738f, 1506f), 0i, 45828u, -7003i), Struct_2(vec3<f32>(-2050f, 381f, 905f), Struct_1(vec3<f32>(-2334f, -438f, -684f), 7758i, 23558u, 0i), vec4<u32>(61376u, 0u, 13466u, 92573u), Struct_1(vec3<f32>(-644f, -698f, -1397f), 13953i, 0u, 32294i), vec2<bool>(false, true)))));

var<private> global2: bool = true;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    global0 = arg_0;
    return _wgslsmith_div_u32(0u, arg_3.c.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4) -> i32 {
    let var_0 = vec3<i32>(-41064i, 0i, 0i);
    global1 = array<Struct_4, 27>();
    global0 = Struct_5(false);
    let var_1 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(~var_0.x, arg_2.a.e.b.b), var_0.yx) << (arg_1.a.d.c % 32u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1653f))), 384f);
    return arg_1.a.b.d.d;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_5(true);
    global2 = true;
    var var_1 = u_input.a.xzy;
    var var_2 = 1i;
    let var_3 = -_wgslsmith_mod_vec2_i32(~(vec2<i32>(arg_2.x, -14313i) ^ arg_2.zy) | vec2<i32>(arg_2.x, arg_2.x), arg_2.xx);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -987f)), -449f, 814f)), func_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -683f), 1248f, _wgslsmith_f_op_f32(521f * -575f)), Struct_1(vec3<f32>(1674f, -1421f, 489f), var_3.x, u_input.a.x, 1i), vec4<u32>(var_1.x, func_3(var_0, vec3<bool>(var_0.a, false, false), var_3, Struct_2(vec3<f32>(-420f, -346f, -570f), Struct_1(vec3<f32>(-520f, -1000f, -1437f), 46061i, u_input.a.x, -1i), vec4<u32>(var_1.x, 11763u, 1u, u_input.a.x), Struct_1(vec3<f32>(-1000f, -573f, 1100f), arg_2.x, 6178u, -1i), vec2<bool>(true, true))), ~17659u, u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(413f, -343f, -1287f)), countOneBits(-2147483647i), var_1.x, firstLeadingBit(var_3.x)), !(!vec2<bool>(global0.a, var_0.a))), Struct_4(Struct_3(select(vec2<bool>(true, true), vec2<bool>(false, arg_1), vec2<bool>(true, arg_0)), Struct_2(vec3<f32>(410f, 2413f, 153f), Struct_1(vec3<f32>(1270f, -207f, 1032f), 13539i, 1u, var_3.x), vec4<u32>(3632u, var_1.x, 4294967295u, 1u), Struct_1(vec3<f32>(1141f, 279f, 357f), 2147483647i, u_input.a.x, -49953i), vec2<bool>(false, false)), select(vec3<bool>(false, true, arg_1), vec3<bool>(true, false, false), false), Struct_1(vec3<f32>(-1174f, -1078f, -337f), var_3.x, u_input.a.x, 1i), Struct_2(vec3<f32>(-311f, 145f, -1388f), Struct_1(vec3<f32>(-765f, -1000f, 220f), 0i, 0u, var_3.x), vec4<u32>(7535u, var_1.x, u_input.a.x, u_input.a.x), Struct_1(vec3<f32>(-2216f, 1313f, 1744f), arg_2.x, 3465u, -1i), vec2<bool>(global0.a, var_0.a)))), global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(u_input.a.x, 0u)), 27u)]), 4294967295u, var_3.x >> (var_1.x % 32u));
}

fn func_1() -> Struct_2 {
    global2 = true;
    let var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(347f, 1375f, 689f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(719f, -2111f, 222f) * vec3<f32>(-251f, 151f, 120f)))), func_2(global0.a, true, -reverseBits(vec3<i32>(11635i, -2147483647i, 2147483647i) >> (u_input.a.xwx % vec3<u32>(32u)))), ~min(select(~u_input.a, u_input.a, global0.a), ~(vec4<u32>(u_input.a.x, u_input.a.x, 108769u, 13105u) ^ u_input.a)), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(830f, func_2(true, false, vec3<i32>(36319i, 1i, -72817i)).a.x, _wgslsmith_f_op_f32(min(-862f, 476f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, 1000f, -1000f))), vec3<bool>(all(vec3<bool>(global0.a, true, false)), all(vec2<bool>(true, false)), global0.a))), func_2(false, true, _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 19211i), vec3<i32>(0i, -35547i, 1i), vec3<i32>(-1i, 9020i, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(9990i, -1i, 1i), vec3<i32>(1i, 37205i, 21411i)))).b, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, u_input.a.x), ~u_input.a.x, 17578u), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), max(reverseBits(-69480i << (u_input.a.x % 32u)), ~_wgslsmith_clamp_i32(-1i, -11868i, 0i))), select(select(!vec2<bool>(global0.a, global0.a), !(!vec2<bool>(global0.a, global0.a)), true), select(vec2<bool>(global0.a & false, select(global0.a, global0.a, false)), vec2<bool>(true, any(vec3<bool>(true, global0.a, false))), true), select(!select(vec2<bool>(false, global0.a), vec2<bool>(global0.a, false), true), vec2<bool>(!global0.a, true), !(79441u >= u_input.a.x))));
    var var_1 = _wgslsmith_clamp_u32(1u, 1u, u_input.a.x & 0u);
    let var_2 = func_2(all(select(select(vec2<bool>(var_0.e.x, var_0.e.x), vec2<bool>(var_0.e.x, global0.a), any(vec3<bool>(global0.a, var_0.e.x, global0.a))), vec2<bool>(true, true), vec2<bool>(var_0.d.b > var_0.b.d, var_0.e.x))), select(1u >= (~u_input.a.x | countOneBits(u_input.a.x)), select(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, var_0.e.x, true, false), true)), all(vec3<bool>(global0.a, true, var_0.e.x)), global0.a), any(select(select(vec3<bool>(global0.a, var_0.e.x, var_0.e.x), vec3<bool>(global0.a, var_0.e.x, true), vec3<bool>(var_0.e.x, false, var_0.e.x)), select(vec3<bool>(global0.a, global0.a, false), vec3<bool>(global0.a, var_0.e.x, global0.a), true), select(vec3<bool>(global0.a, false, true), vec3<bool>(false, var_0.e.x, var_0.e.x), false)))), abs(max(max(vec3<i32>(var_0.d.d, var_0.b.b, 22835i) | vec3<i32>(-4452i, -25265i, -17860i), vec3<i32>(var_0.b.d, -2147483647i, 1i)), abs(vec3<i32>(6825i, var_0.d.d, var_0.d.b) | vec3<i32>(0i, -28430i, var_0.b.b)))));
    return var_0;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    let var_0 = arg_0.x;
    var var_1 = global0.a;
    var_1 = global0.a;
    global0 = Struct_5(false);
    let var_2 = vec4<u32>(u_input.a.x, ~(~1u), ~arg_1.d.c, reverseBits(1u));
    return -502f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    let var_0 = -(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-47724i, 3603i, 8845i), vec3<i32>(-13086i, -22420i, 7372i)), 55665i), 0i) >> (countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(34410u, u_input.a.x), vec2<u32>(u_input.a.x, 25010u)) ^ ~vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)));
    let var_1 = !select(vec4<bool>(false, select(global0.a, !global0.a, select(global0.a, global0.a, global0.a)), global0.a, !(-19065i <= var_0.x)), !vec4<bool>(global0.a, true, false, false), -57638i >= ~_wgslsmith_sub_i32(var_0.x, var_0.x));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -821f) + -477f), _wgslsmith_f_op_f32(func_5(vec3<f32>(-713f, -1029f, -690f), func_1())))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(710f, -550f, -2517f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-916f, -482f, 1069f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-208f, -378f, 1000f), vec3<f32>(334f, 164f, 987f))), !global0.a)), ~5195i, u_input.a.x, ~(-24016i & _wgslsmith_div_i32(-37192i, var_0.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 43960u, 1u, u_input.a.x), _wgslsmith_mult_vec4_u32(u_input.a, max(u_input.a, u_input.a))), func_2(any(vec3<bool>(true, true, true)) & !var_1.x, true, vec3<i32>(var_0.x, -1i, -10219i)), var_1.wy);
    global0 = Struct_5(!(24584u <= ~_wgslsmith_mult_u32(1u, u_input.a.x)));
    var var_3 = Struct_2(var_2.d.a, var_2.b, firstTrailingBit(u_input.a), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d.a), _wgslsmith_f_op_vec3_f32(round(var_2.a))))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -1i), vec2<i32>(1i, 20930i)) | ~_wgslsmith_mod_i32(0i, -2147483647i), ~8002u, _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, abs(2147483647i)), -1i)), var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_3.b.c), vec3<i32>(var_2.d.b, min(countOneBits(var_0.x), var_0.x >> (var_2.b.c % 32u)), var_2.d.b), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_3.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(676f, -1173f)))), _wgslsmith_f_op_f32(sign(var_3.a.x)), var_3.b.a.x), 515f, -min(select(~vec3<i32>(-1i, var_2.b.d, var_3.b.d), vec3<i32>(var_2.d.d, 1i, var_0.x), select(vec3<bool>(true, var_1.x, global0.a), var_1.zxy, var_1.xyw)), vec3<i32>(-2147483647i, -885i, ~1i)));
}

