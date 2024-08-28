struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: Struct_3 = Struct_3(Struct_2(-202f, vec2<i32>(34908i, -1i), Struct_1(183f, vec4<f32>(-220f, 1115f, -412f, 694f), vec4<f32>(1000f, -783f, 1000f, -519f), vec3<u32>(0u, 1u, 14049u), vec3<bool>(true, true, true))), Struct_2(1092f, vec2<i32>(2147483647i, 10526i), Struct_1(-128f, vec4<f32>(1000f, -586f, 736f, 1221f), vec4<f32>(-1488f, 585f, -1325f, 419f), vec3<u32>(4294967295u, 10770u, 1u), vec3<bool>(true, false, true))));

var<private> global2: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_3(Struct_2(1000f, vec2<i32>(-1i, 1i), Struct_1(121f, vec4<f32>(-926f, 1623f, -1129f, 2243f), vec4<f32>(-1858f, -2115f, -262f, 610f), vec3<u32>(5527u, 4294967295u, 0u), vec3<bool>(true, false, false))), Struct_2(2857f, vec2<i32>(i32(-2147483648), 1i), Struct_1(742f, vec4<f32>(-1007f, 296f, -655f, 272f), vec4<f32>(-958f, -725f, 1000f, -1139f), vec3<u32>(23079u, 27908u, 4294967295u), vec3<bool>(false, true, true)))), Struct_2(-528f, vec2<i32>(-31059i, -31455i), Struct_1(-429f, vec4<f32>(-379f, -662f, -551f, 624f), vec4<f32>(-1000f, -654f, 807f, -168f), vec3<u32>(51866u, 1u, 101111u), vec3<bool>(false, false, true))), vec3<i32>(-26933i, -517i, 1i)), Struct_4(Struct_3(Struct_2(-159f, vec2<i32>(i32(-2147483648), -19825i), Struct_1(-2051f, vec4<f32>(-393f, 326f, 1865f, -534f), vec4<f32>(-369f, 472f, 170f, -420f), vec3<u32>(51025u, 12004u, 17278u), vec3<bool>(true, false, true))), Struct_2(-391f, vec2<i32>(0i, -21302i), Struct_1(1529f, vec4<f32>(659f, -336f, 578f, -200f), vec4<f32>(561f, 1000f, -1000f, 113f), vec3<u32>(0u, 0u, 3309u), vec3<bool>(false, true, true)))), Struct_2(-1001f, vec2<i32>(2147483647i, 23908i), Struct_1(358f, vec4<f32>(163f, -299f, -590f, 1000f), vec4<f32>(728f, -1023f, 980f, 1000f), vec3<u32>(85718u, 9822u, 1u), vec3<bool>(true, true, false))), vec3<i32>(2147483647i, 3951i, -1i)), Struct_4(Struct_3(Struct_2(-207f, vec2<i32>(-54604i, -1i), Struct_1(616f, vec4<f32>(758f, -456f, 1696f, -567f), vec4<f32>(560f, 1000f, -518f, 764f), vec3<u32>(1u, 4294967295u, 0u), vec3<bool>(true, false, false))), Struct_2(-1600f, vec2<i32>(-7548i, i32(-2147483648)), Struct_1(-128f, vec4<f32>(711f, 730f, 793f, 1261f), vec4<f32>(1458f, -395f, 662f, -1518f), vec3<u32>(17381u, 4294967295u, 4294967295u), vec3<bool>(false, true, false)))), Struct_2(1303f, vec2<i32>(22013i, 0i), Struct_1(1439f, vec4<f32>(-1584f, 1000f, -1445f, -987f), vec4<f32>(1000f, 1000f, -846f, 1559f), vec3<u32>(88004u, 0u, 4976u), vec3<bool>(true, false, false))), vec3<i32>(10213i, -51139i, 2147483647i)), Struct_4(Struct_3(Struct_2(557f, vec2<i32>(i32(-2147483648), 0i), Struct_1(246f, vec4<f32>(384f, 102f, -257f, -1557f), vec4<f32>(-413f, -2244f, 813f, 504f), vec3<u32>(10073u, 4294967295u, 1u), vec3<bool>(false, true, true))), Struct_2(-1000f, vec2<i32>(i32(-2147483648), 1i), Struct_1(-1012f, vec4<f32>(-1000f, -1000f, -578f, -440f), vec4<f32>(-697f, 592f, -597f, 570f), vec3<u32>(0u, 4230u, 0u), vec3<bool>(false, false, true)))), Struct_2(313f, vec2<i32>(1i, 16152i), Struct_1(-1051f, vec4<f32>(-792f, -328f, -886f, -2280f), vec4<f32>(1598f, 115f, -256f, -1000f), vec3<u32>(1u, 0u, 1u), vec3<bool>(false, true, false))), vec3<i32>(-28472i, -1i, -52387i)), Struct_4(Struct_3(Struct_2(1608f, vec2<i32>(1981i, 10394i), Struct_1(-191f, vec4<f32>(-432f, 959f, -1470f, 1371f), vec4<f32>(-870f, 593f, -623f, -2049f), vec3<u32>(15001u, 1u, 0u), vec3<bool>(false, true, true))), Struct_2(1430f, vec2<i32>(-22448i, 18422i), Struct_1(-505f, vec4<f32>(-957f, 1381f, -101f, -1506f), vec4<f32>(-451f, -733f, 558f, -930f), vec3<u32>(0u, 4294967295u, 0u), vec3<bool>(false, true, false)))), Struct_2(723f, vec2<i32>(-1i, -1i), Struct_1(-1690f, vec4<f32>(807f, -133f, -691f, -2059f), vec4<f32>(1258f, 582f, 249f, 1798f), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<bool>(false, false, true))), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i)), Struct_4(Struct_3(Struct_2(-172f, vec2<i32>(0i, -1i), Struct_1(-799f, vec4<f32>(-1619f, 969f, 1153f, -220f), vec4<f32>(712f, -404f, 1077f, 1000f), vec3<u32>(1u, 0u, 0u), vec3<bool>(true, true, false))), Struct_2(892f, vec2<i32>(-1i, i32(-2147483648)), Struct_1(249f, vec4<f32>(-1788f, 1411f, 308f, -359f), vec4<f32>(131f, -705f, -1000f, -1100f), vec3<u32>(1u, 4294967295u, 26479u), vec3<bool>(true, true, false)))), Struct_2(-628f, vec2<i32>(5581i, 3146i), Struct_1(561f, vec4<f32>(-795f, -1000f, -464f, -607f), vec4<f32>(162f, 493f, 1338f, 1000f), vec3<u32>(4294967295u, 40732u, 0u), vec3<bool>(false, false, true))), vec3<i32>(-6846i, 0i, i32(-2147483648))), Struct_4(Struct_3(Struct_2(-476f, vec2<i32>(2147483647i, 9730i), Struct_1(774f, vec4<f32>(659f, -174f, -158f, -749f), vec4<f32>(147f, -421f, -531f, 1162f), vec3<u32>(15791u, 1u, 4294967295u), vec3<bool>(false, false, false))), Struct_2(-2312f, vec2<i32>(11381i, i32(-2147483648)), Struct_1(318f, vec4<f32>(-299f, -173f, -802f, -1482f), vec4<f32>(1000f, -1000f, 441f, 276f), vec3<u32>(108576u, 20595u, 4294967295u), vec3<bool>(true, true, true)))), Struct_2(813f, vec2<i32>(-8261i, -74595i), Struct_1(-562f, vec4<f32>(425f, -1269f, -1380f, -636f), vec4<f32>(-778f, 865f, -864f, 1000f), vec3<u32>(0u, 35956u, 0u), vec3<bool>(true, false, false))), vec3<i32>(44534i, 19017i, 2147483647i)), Struct_4(Struct_3(Struct_2(979f, vec2<i32>(2147483647i, -49216i), Struct_1(-224f, vec4<f32>(466f, 842f, 350f, -840f), vec4<f32>(-1746f, 570f, 1000f, -1102f), vec3<u32>(0u, 26244u, 4294967295u), vec3<bool>(false, true, false))), Struct_2(118f, vec2<i32>(-1i, 1i), Struct_1(992f, vec4<f32>(-1045f, -776f, -612f, -1616f), vec4<f32>(-1633f, 467f, -320f, 1204f), vec3<u32>(4294967295u, 0u, 88254u), vec3<bool>(false, false, false)))), Struct_2(-326f, vec2<i32>(1i, -1i), Struct_1(659f, vec4<f32>(-593f, 1927f, -509f, 1000f), vec4<f32>(1262f, 574f, 430f, -1779f), vec3<u32>(4294967295u, 1u, 33498u), vec3<bool>(false, false, true))), vec3<i32>(56071i, 35341i, 1780i)), Struct_4(Struct_3(Struct_2(-1396f, vec2<i32>(-1i, -34315i), Struct_1(-1000f, vec4<f32>(997f, -1451f, -416f, 540f), vec4<f32>(-931f, -1589f, -688f, 1785f), vec3<u32>(43923u, 4294967295u, 4294967295u), vec3<bool>(false, true, false))), Struct_2(-377f, vec2<i32>(-38148i, 49229i), Struct_1(-1500f, vec4<f32>(-812f, -683f, 286f, -970f), vec4<f32>(-1000f, -533f, -1179f, 130f), vec3<u32>(4294967295u, 59308u, 5813u), vec3<bool>(true, true, true)))), Struct_2(1445f, vec2<i32>(7821i, -1i), Struct_1(-514f, vec4<f32>(1000f, 998f, -444f, -235f), vec4<f32>(1022f, 481f, 2862f, 2443f), vec3<u32>(4294967295u, 1u, 41659u), vec3<bool>(true, true, false))), vec3<i32>(-1i, 35323i, -17259i)), Struct_4(Struct_3(Struct_2(721f, vec2<i32>(1i, -27034i), Struct_1(1329f, vec4<f32>(700f, -158f, 663f, 388f), vec4<f32>(1603f, 243f, 1000f, 1000f), vec3<u32>(50450u, 1u, 14287u), vec3<bool>(false, true, true))), Struct_2(-1768f, vec2<i32>(0i, 2147483647i), Struct_1(-315f, vec4<f32>(497f, -1041f, 124f, 129f), vec4<f32>(912f, 677f, -515f, 1000f), vec3<u32>(0u, 54423u, 16763u), vec3<bool>(true, true, true)))), Struct_2(815f, vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(417f, vec4<f32>(-746f, -225f, 1763f, 171f), vec4<f32>(-164f, 1398f, -953f, 727f), vec3<u32>(0u, 42050u, 68571u), vec3<bool>(true, true, false))), vec3<i32>(2147483647i, 9547i, 59591i)), Struct_4(Struct_3(Struct_2(-828f, vec2<i32>(51598i, i32(-2147483648)), Struct_1(-756f, vec4<f32>(600f, -866f, 247f, 1546f), vec4<f32>(-275f, 963f, 438f, -1683f), vec3<u32>(39400u, 7571u, 15064u), vec3<bool>(false, false, true))), Struct_2(911f, vec2<i32>(i32(-2147483648), 0i), Struct_1(-1796f, vec4<f32>(-789f, 1519f, -1000f, 1034f), vec4<f32>(128f, 1000f, 536f, 820f), vec3<u32>(31874u, 42822u, 1u), vec3<bool>(true, false, true)))), Struct_2(1298f, vec2<i32>(-59068i, 40211i), Struct_1(-166f, vec4<f32>(-805f, 573f, -433f, 429f), vec4<f32>(1491f, -158f, -155f, 503f), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<bool>(false, false, true))), vec3<i32>(-12987i, 63152i, 0i)), Struct_4(Struct_3(Struct_2(1840f, vec2<i32>(16863i, 62852i), Struct_1(1414f, vec4<f32>(792f, -1197f, -210f, 739f), vec4<f32>(1101f, 599f, -1082f, 1000f), vec3<u32>(4294967295u, 98799u, 4294967295u), vec3<bool>(false, true, false))), Struct_2(-354f, vec2<i32>(2147483647i, -11276i), Struct_1(1521f, vec4<f32>(-1382f, -1000f, 2122f, -855f), vec4<f32>(-1093f, -494f, 450f, -511f), vec3<u32>(58037u, 55699u, 1u), vec3<bool>(true, true, true)))), Struct_2(-1015f, vec2<i32>(i32(-2147483648), 0i), Struct_1(-178f, vec4<f32>(988f, 1000f, 1585f, 557f), vec4<f32>(-313f, 877f, -245f, -1052f), vec3<u32>(6312u, 114323u, 26377u), vec3<bool>(false, false, true))), vec3<i32>(32374i, i32(-2147483648), -3165i)), Struct_4(Struct_3(Struct_2(608f, vec2<i32>(11573i, 1i), Struct_1(-204f, vec4<f32>(-480f, 815f, 522f, -1838f), vec4<f32>(1300f, -950f, 977f, -763f), vec3<u32>(4294967295u, 1u, 19500u), vec3<bool>(true, false, true))), Struct_2(811f, vec2<i32>(0i, i32(-2147483648)), Struct_1(-481f, vec4<f32>(-944f, -665f, -108f, -1491f), vec4<f32>(1106f, 875f, -1562f, -1186f), vec3<u32>(9770u, 1u, 11108u), vec3<bool>(true, false, false)))), Struct_2(435f, vec2<i32>(11827i, -85252i), Struct_1(-701f, vec4<f32>(-787f, -432f, -894f, -228f), vec4<f32>(582f, 1495f, -821f, 1105f), vec3<u32>(91697u, 0u, 69657u), vec3<bool>(false, false, true))), vec3<i32>(-11401i, 1i, 20245i)), Struct_4(Struct_3(Struct_2(-391f, vec2<i32>(2147483647i, 2147483647i), Struct_1(-1000f, vec4<f32>(-1886f, 1303f, -603f, -1000f), vec4<f32>(-1000f, -2092f, -1000f, -224f), vec3<u32>(1u, 4294967295u, 35535u), vec3<bool>(false, false, true))), Struct_2(331f, vec2<i32>(-49613i, 21951i), Struct_1(-969f, vec4<f32>(167f, -917f, 1876f, -136f), vec4<f32>(-2203f, -120f, 501f, 908f), vec3<u32>(23622u, 33240u, 0u), vec3<bool>(false, false, true)))), Struct_2(-179f, vec2<i32>(2394i, 8670i), Struct_1(1084f, vec4<f32>(-180f, -1000f, 166f, -808f), vec4<f32>(1767f, -1287f, 1534f, -1109f), vec3<u32>(11985u, 20703u, 57162u), vec3<bool>(true, true, false))), vec3<i32>(1i, 0i, 33790i)), Struct_4(Struct_3(Struct_2(2374f, vec2<i32>(-1i, 2147483647i), Struct_1(325f, vec4<f32>(-1438f, -841f, -1542f, 1340f), vec4<f32>(-1000f, 2475f, 619f, 744f), vec3<u32>(4294967295u, 19562u, 0u), vec3<bool>(true, false, true))), Struct_2(-1327f, vec2<i32>(14086i, -52714i), Struct_1(959f, vec4<f32>(489f, 271f, 286f, -1124f), vec4<f32>(-1224f, 1269f, 1458f, 1042f), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<bool>(true, false, false)))), Struct_2(-2264f, vec2<i32>(0i, 34308i), Struct_1(-1371f, vec4<f32>(998f, 866f, -1405f, -863f), vec4<f32>(1843f, 1302f, -2155f, 148f), vec3<u32>(13436u, 4294967295u, 4294967295u), vec3<bool>(false, false, false))), vec3<i32>(13094i, 1i, -9185i)), Struct_4(Struct_3(Struct_2(486f, vec2<i32>(12860i, i32(-2147483648)), Struct_1(1216f, vec4<f32>(-443f, 1247f, 863f, 1000f), vec4<f32>(2409f, 1567f, 195f, -1477f), vec3<u32>(4294967295u, 23638u, 17747u), vec3<bool>(false, true, false))), Struct_2(971f, vec2<i32>(-2813i, 15743i), Struct_1(1559f, vec4<f32>(-1220f, 707f, 1116f, 443f), vec4<f32>(-844f, 563f, -1000f, 674f), vec3<u32>(29217u, 50878u, 0u), vec3<bool>(true, true, false)))), Struct_2(530f, vec2<i32>(-1i, 0i), Struct_1(-985f, vec4<f32>(-1163f, 199f, 2344f, -1433f), vec4<f32>(874f, 2059f, -564f, -1232f), vec3<u32>(4294967295u, 9958u, 1u), vec3<bool>(true, false, true))), vec3<i32>(38512i, i32(-2147483648), -17857i)), Struct_4(Struct_3(Struct_2(1962f, vec2<i32>(7961i, -1i), Struct_1(-162f, vec4<f32>(842f, -256f, 1789f, -1229f), vec4<f32>(-1142f, 755f, 1365f, 979f), vec3<u32>(7260u, 82738u, 32632u), vec3<bool>(true, true, true))), Struct_2(1552f, vec2<i32>(8402i, -14615i), Struct_1(-641f, vec4<f32>(-1236f, -515f, -836f, -630f), vec4<f32>(-1000f, 917f, -645f, 1401f), vec3<u32>(1u, 30405u, 1u), vec3<bool>(false, false, true)))), Struct_2(-1748f, vec2<i32>(1i, -36545i), Struct_1(1861f, vec4<f32>(1000f, -599f, 1000f, -3010f), vec4<f32>(565f, -318f, -571f, 532f), vec3<u32>(11111u, 1u, 16184u), vec3<bool>(true, false, true))), vec3<i32>(-19035i, -34466i, -43884i)), Struct_4(Struct_3(Struct_2(573f, vec2<i32>(-53935i, 17688i), Struct_1(-116f, vec4<f32>(-727f, -607f, -288f, 1258f), vec4<f32>(-2679f, -334f, 359f, 1255f), vec3<u32>(0u, 1u, 19811u), vec3<bool>(true, false, false))), Struct_2(-1000f, vec2<i32>(7191i, 0i), Struct_1(391f, vec4<f32>(-1612f, -109f, -633f, -1726f), vec4<f32>(621f, -210f, 1000f, 1000f), vec3<u32>(19047u, 33139u, 97453u), vec3<bool>(true, false, true)))), Struct_2(564f, vec2<i32>(1i, 0i), Struct_1(1330f, vec4<f32>(-587f, 1660f, 669f, 685f), vec4<f32>(-1046f, -195f, 2093f, -759f), vec3<u32>(69987u, 45326u, 4294967295u), vec3<bool>(true, false, false))), vec3<i32>(i32(-2147483648), -1i, -1i)), Struct_4(Struct_3(Struct_2(1000f, vec2<i32>(1i, -1i), Struct_1(-978f, vec4<f32>(767f, 220f, -3617f, -901f), vec4<f32>(919f, -1140f, 254f, 423f), vec3<u32>(0u, 119427u, 17480u), vec3<bool>(true, false, true))), Struct_2(-1167f, vec2<i32>(-1i, -31656i), Struct_1(-158f, vec4<f32>(1000f, -612f, -591f, -1502f), vec4<f32>(645f, 1322f, 1241f, -1899f), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<bool>(true, true, true)))), Struct_2(-144f, vec2<i32>(2147483647i, 18080i), Struct_1(-510f, vec4<f32>(697f, -806f, 570f, 683f), vec4<f32>(-225f, 2142f, 839f, -1517f), vec3<u32>(0u, 6500u, 3749u), vec3<bool>(true, true, true))), vec3<i32>(-1i, -1i, 32964i)), Struct_4(Struct_3(Struct_2(-228f, vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(1000f, vec4<f32>(1102f, 211f, 1019f, -410f), vec4<f32>(533f, 1580f, 1717f, -232f), vec3<u32>(22374u, 56475u, 57186u), vec3<bool>(false, true, false))), Struct_2(-906f, vec2<i32>(1i, 45754i), Struct_1(1000f, vec4<f32>(-1000f, -650f, -1252f, 470f), vec4<f32>(1156f, -1022f, 474f, -1000f), vec3<u32>(4294967295u, 1u, 24884u), vec3<bool>(true, false, false)))), Struct_2(-351f, vec2<i32>(-13386i, 2147483647i), Struct_1(-299f, vec4<f32>(-324f, 752f, -584f, -422f), vec4<f32>(201f, -1281f, 178f, 846f), vec3<u32>(4294967295u, 22159u, 94975u), vec3<bool>(false, true, true))), vec3<i32>(22291i, 0i, 45432i)), Struct_4(Struct_3(Struct_2(-608f, vec2<i32>(0i, -22286i), Struct_1(1008f, vec4<f32>(1665f, 639f, 112f, -1162f), vec4<f32>(1071f, 488f, 1000f, 422f), vec3<u32>(0u, 5132u, 1u), vec3<bool>(true, false, true))), Struct_2(-1696f, vec2<i32>(-5161i, i32(-2147483648)), Struct_1(460f, vec4<f32>(977f, 1291f, -849f, -1076f), vec4<f32>(319f, -1372f, -1000f, 1330f), vec3<u32>(29188u, 102509u, 1u), vec3<bool>(false, true, false)))), Struct_2(-869f, vec2<i32>(15210i, 9823i), Struct_1(732f, vec4<f32>(1147f, -1066f, 2327f, -2279f), vec4<f32>(-1000f, -306f, 129f, -1170f), vec3<u32>(16248u, 15353u, 0u), vec3<bool>(false, false, true))), vec3<i32>(0i, 1i, 2147483647i)), Struct_4(Struct_3(Struct_2(2039f, vec2<i32>(25256i, 2147483647i), Struct_1(-641f, vec4<f32>(564f, 322f, 704f, 1677f), vec4<f32>(582f, 209f, -1478f, -846f), vec3<u32>(4294967295u, 0u, 91344u), vec3<bool>(true, true, false))), Struct_2(-441f, vec2<i32>(-8431i, 4274i), Struct_1(-473f, vec4<f32>(1032f, 443f, 640f, -1246f), vec4<f32>(256f, 1956f, 330f, 1031f), vec3<u32>(1u, 0u, 32204u), vec3<bool>(true, false, true)))), Struct_2(633f, vec2<i32>(i32(-2147483648), -27810i), Struct_1(677f, vec4<f32>(1128f, 499f, 566f, 201f), vec4<f32>(-357f, 428f, 1000f, 494f), vec3<u32>(1u, 76685u, 0u), vec3<bool>(false, false, false))), vec3<i32>(0i, 1i, -42470i)), Struct_4(Struct_3(Struct_2(1018f, vec2<i32>(-1i, -793i), Struct_1(-227f, vec4<f32>(336f, 580f, 401f, 963f), vec4<f32>(856f, 1182f, 1696f, 942f), vec3<u32>(0u, 20597u, 70441u), vec3<bool>(false, true, true))), Struct_2(-681f, vec2<i32>(0i, 50722i), Struct_1(-174f, vec4<f32>(1770f, 269f, 825f, -312f), vec4<f32>(340f, -398f, -1156f, -635f), vec3<u32>(0u, 4294967295u, 0u), vec3<bool>(true, true, true)))), Struct_2(679f, vec2<i32>(50014i, 23825i), Struct_1(251f, vec4<f32>(-379f, 472f, 1983f, -387f), vec4<f32>(1000f, -462f, -1262f, -586f), vec3<u32>(0u, 35042u, 4294967295u), vec3<bool>(false, true, false))), vec3<i32>(-1i, -33234i, 67656i)), Struct_4(Struct_3(Struct_2(-699f, vec2<i32>(-54323i, 36526i), Struct_1(-396f, vec4<f32>(510f, -224f, 925f, -323f), vec4<f32>(320f, -2535f, -1634f, 981f), vec3<u32>(41774u, 16792u, 5424u), vec3<bool>(true, false, false))), Struct_2(418f, vec2<i32>(1i, 50096i), Struct_1(-981f, vec4<f32>(-1608f, -1166f, 1358f, 755f), vec4<f32>(1048f, -728f, 462f, -677f), vec3<u32>(8108u, 1u, 32391u), vec3<bool>(false, true, false)))), Struct_2(-909f, vec2<i32>(0i, 9254i), Struct_1(261f, vec4<f32>(-597f, -1000f, -2286f, 1893f), vec4<f32>(128f, -261f, -197f, 643f), vec3<u32>(0u, 43627u, 51863u), vec3<bool>(true, false, true))), vec3<i32>(2147483647i, 1i, -13267i)), Struct_4(Struct_3(Struct_2(1247f, vec2<i32>(-30548i, -1i), Struct_1(-2039f, vec4<f32>(139f, -1000f, -271f, 554f), vec4<f32>(-1000f, 452f, -884f, -183f), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<bool>(true, true, true))), Struct_2(1141f, vec2<i32>(29578i, 1i), Struct_1(-152f, vec4<f32>(2186f, 685f, -299f, 103f), vec4<f32>(-353f, 1000f, 136f, -1187f), vec3<u32>(0u, 0u, 62468u), vec3<bool>(true, false, true)))), Struct_2(-471f, vec2<i32>(i32(-2147483648), -32621i), Struct_1(-274f, vec4<f32>(270f, 283f, -1267f, 455f), vec4<f32>(-670f, 693f, -509f, 410f), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<bool>(true, true, true))), vec3<i32>(0i, 23074i, 1i)), Struct_4(Struct_3(Struct_2(470f, vec2<i32>(0i, -1i), Struct_1(590f, vec4<f32>(1000f, 139f, 1000f, 173f), vec4<f32>(-1475f, 351f, 1343f, -1648f), vec3<u32>(45401u, 1u, 4294967295u), vec3<bool>(false, true, true))), Struct_2(-1906f, vec2<i32>(1i, -33587i), Struct_1(363f, vec4<f32>(123f, -375f, -1266f, -177f), vec4<f32>(-640f, 403f, 1000f, 410f), vec3<u32>(13606u, 4294967295u, 0u), vec3<bool>(true, false, true)))), Struct_2(-1703f, vec2<i32>(2147483647i, 0i), Struct_1(1011f, vec4<f32>(-499f, -198f, 290f, 366f), vec4<f32>(-480f, 807f, -1177f, -868f), vec3<u32>(4294967295u, 4294967295u, 78590u), vec3<bool>(false, false, false))), vec3<i32>(-6374i, 2147483647i, -23901i)), Struct_4(Struct_3(Struct_2(116f, vec2<i32>(-1i, -1i), Struct_1(616f, vec4<f32>(1127f, -1419f, 769f, -131f), vec4<f32>(-1000f, -1209f, -844f, 752f), vec3<u32>(4294967295u, 21252u, 4216u), vec3<bool>(false, true, true))), Struct_2(-1076f, vec2<i32>(0i, 1i), Struct_1(-994f, vec4<f32>(-1282f, 1483f, 104f, 1027f), vec4<f32>(-279f, 306f, -722f, -801f), vec3<u32>(4294967295u, 22042u, 33519u), vec3<bool>(false, true, true)))), Struct_2(-469f, vec2<i32>(0i, -1i), Struct_1(-1000f, vec4<f32>(437f, -1493f, -647f, 290f), vec4<f32>(1901f, -804f, -946f, -1000f), vec3<u32>(4294967295u, 18565u, 10132u), vec3<bool>(false, true, true))), vec3<i32>(-747i, -1i, -15731i)), Struct_4(Struct_3(Struct_2(1168f, vec2<i32>(2147483647i, -7410i), Struct_1(318f, vec4<f32>(-2924f, 1000f, 1000f, 521f), vec4<f32>(-146f, -1089f, 1172f, 581f), vec3<u32>(13400u, 1u, 26753u), vec3<bool>(true, false, true))), Struct_2(-721f, vec2<i32>(43568i, 27918i), Struct_1(2628f, vec4<f32>(-1028f, 1000f, 1200f, 1541f), vec4<f32>(-1000f, -856f, 1181f, 2514f), vec3<u32>(1u, 7489u, 58659u), vec3<bool>(true, false, true)))), Struct_2(628f, vec2<i32>(-1857i, -14292i), Struct_1(998f, vec4<f32>(-1466f, 415f, -1238f, 678f), vec4<f32>(401f, 1893f, -1000f, 116f), vec3<u32>(51338u, 38316u, 1u), vec3<bool>(true, true, true))), vec3<i32>(i32(-2147483648), 3260i, 2147483647i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.c.b.x + global1.a.c.a)))))), reverseBits(max(_wgslsmith_mod_vec2_i32(~vec2<i32>(-1i, global1.b.b.x), ~vec2<i32>(53288i, -1i)), -(vec2<i32>(global1.b.b.x, 10422i) & vec2<i32>(global1.a.b.x, global1.b.b.x)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(826f))), _wgslsmith_f_op_f32(1034f * _wgslsmith_div_f32(3418f, global1.b.c.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global1.b.c.c)), vec4<f32>(781f, global1.a.a, global1.a.c.a, -584f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -263f), global1.b.c.a, _wgslsmith_f_op_f32(global1.a.a + _wgslsmith_f_op_f32(floor(global1.a.c.b.x))), 546f), ~select(reverseBits(global1.b.c.d), vec3<u32>(23072u, u_input.a, 70052u), !global1.a.c.e.x), global1.a.c.e));
    let var_1 = !var_0.c.e.x;
    let var_2 = !vec3<bool>(!(_wgslsmith_f_op_f32(max(1206f, 399f)) == _wgslsmith_f_op_f32(var_0.a * 455f)), false, true);
    let var_3 = Struct_2(243f, select(var_0.b, firstLeadingBit(~countOneBits(vec2<i32>(global1.a.b.x, var_0.b.x))), !var_0.c.e.x), var_0.c);
    let var_4 = var_3.c.d.xz;
    return countOneBits(abs(-(global1.a.b ^ vec2<i32>(-2147483647i, global1.a.b.x)))) ^ var_3.b;
}

fn func_2(arg_0: f32) -> f32 {
    global2 = array<Struct_4, 28>();
    global2 = array<Struct_4, 28>();
    global2 = array<Struct_4, 28>();
    let var_0 = func_3();
    global1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(global1.a.a - _wgslsmith_f_op_f32(-975f - _wgslsmith_f_op_f32(arg_0 - global1.b.c.a))), abs(_wgslsmith_mult_vec2_i32(global1.a.b, vec2<i32>(0i, -2147483647i))), global1.b.c), global1.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -139f) * global1.a.a)));
}

fn func_4(arg_0: f32) -> i32 {
    var var_0 = global1.b.c.e.x;
    global2 = array<Struct_4, 28>();
    global1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(step(arg_0, -972f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1266f))))), global1.a.b, global1.b.c), global1.b);
    let var_1 = firstLeadingBit(vec3<i32>(~(global1.a.b.x << (1u % 32u)), ~2147483647i, countOneBits(2147483647i)));
    let var_2 = Struct_1(global1.b.c.c.x, vec4<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.a + _wgslsmith_f_op_f32(f32(-1f) * -295f)), global1.a.a), _wgslsmith_f_op_f32(-arg_0), 240f), vec4<f32>(_wgslsmith_f_op_f32(global1.b.c.b.x * _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(exp2(arg_0)))), global1.a.c.a, 1f, arg_0), ~_wgslsmith_div_vec3_u32(vec3<u32>(9621u, 21370u, 32049u), ~vec3<u32>(18553u, u_input.a, 1u)) >> (global1.b.c.d % vec3<u32>(32u)), vec3<bool>(true, var_1.x > max(var_1.x, global1.a.b.x), any(!select(vec4<bool>(false, global1.b.c.e.x, global1.a.c.e.x, global1.a.c.e.x), vec4<bool>(true, global1.a.c.e.x, false, false), vec4<bool>(global1.a.c.e.x, global1.a.c.e.x, false, true)))));
    return -55154i;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_2 {
    let var_0 = -_wgslsmith_mod_i32(0i, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.c.a - global1.b.c.c.x) + _wgslsmith_f_op_f32(func_2(-310f)))));
    var var_1 = global1.a.c.e;
    var_1 = select(global1.b.c.e, vec3<bool>(true, true, true), global1.a.c.e);
    let var_2 = global1.a.c.d;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(global1.a.c.b.x + 187f))), _wgslsmith_f_op_f32(-arg_1))));
    return Struct_2(_wgslsmith_f_op_f32(-global1.a.c.b.x), ~countOneBits(-countOneBits(global1.a.b)), global1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(3733u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.c.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-513f * global1.b.c.c.x))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a * -502f))))));
    var var_1 = global2[_wgslsmith_index_u32(2876u, 28u)];
    var var_2 = 16744i;
    let var_3 = vec2<i32>(-15763i ^ _wgslsmith_mult_i32(~abs(var_0.b.x), var_0.b.x), 1i);
    var_2 = max(global1.a.b.x, -20827i);
    let var_4 = Struct_4(var_1.a, var_0, _wgslsmith_add_vec3_i32(var_1.c, firstTrailingBit(min(vec3<i32>(2147483647i, -1i, global1.a.b.x), var_1.c) >> ((var_0.c.d | vec3<u32>(var_0.c.d.x, 8010u, 11833u)) % vec3<u32>(32u)))));
    var var_5 = var_4.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(376f, ~(-(vec4<i32>(var_4.a.b.b.x, 1i, -2147483647i, -1i) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 856u, var_4.a.b.c.d.x, 4294967295u), vec4<u32>(global1.a.c.d.x, 4294967295u, 81016u, var_0.c.d.x)) % vec4<u32>(32u)))), -(var_4.c.x ^ -15447i), vec4<f32>(-568f, 398f, _wgslsmith_f_op_f32(max(func_1(_wgslsmith_sub_u32(global1.b.c.d.x, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -970f)).c.a, _wgslsmith_f_op_f32(f32(-1f) * -1714f))), -1851f));
}

