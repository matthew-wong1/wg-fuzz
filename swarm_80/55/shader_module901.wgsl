struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: Struct_3,
    d: Struct_3,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(vec3<f32>(1120f, -369f, 183f), false, Struct_3(535f, false, Struct_2(Struct_1(vec2<i32>(2674i, i32(-2147483648)), vec2<f32>(-296f, 1912f), vec2<f32>(-792f, 537f), vec2<f32>(1000f, 127f)), Struct_1(vec2<i32>(2147483647i, -39821i), vec2<f32>(-270f, 1089f), vec2<f32>(595f, -384f), vec2<f32>(-351f, -674f)), 556f)), Struct_3(-1388f, false, Struct_2(Struct_1(vec2<i32>(23158i, -12793i), vec2<f32>(-375f, -1203f), vec2<f32>(714f, -1008f), vec2<f32>(1011f, -591f)), Struct_1(vec2<i32>(2147483647i, 10129i), vec2<f32>(-625f, -654f), vec2<f32>(-205f, 577f), vec2<f32>(-1100f, 488f)), -641f)), vec4<f32>(-553f, -267f, -308f, 2002f)), Struct_4(vec3<f32>(1809f, 1061f, 1093f), false, Struct_3(126f, false, Struct_2(Struct_1(vec2<i32>(-1i, 25971i), vec2<f32>(-303f, 144f), vec2<f32>(1361f, -162f), vec2<f32>(-445f, 854f)), Struct_1(vec2<i32>(1407i, -1i), vec2<f32>(-1971f, -124f), vec2<f32>(-341f, 1556f), vec2<f32>(-268f, 1005f)), -1000f)), Struct_3(-1802f, false, Struct_2(Struct_1(vec2<i32>(-1i, 16511i), vec2<f32>(-351f, -284f), vec2<f32>(-1063f, 674f), vec2<f32>(-191f, -177f)), Struct_1(vec2<i32>(1i, -4921i), vec2<f32>(1371f, -2120f), vec2<f32>(-286f, -764f), vec2<f32>(365f, -1000f)), 1317f)), vec4<f32>(339f, -438f, 603f, -886f)), Struct_4(vec3<f32>(969f, -2199f, 2062f), false, Struct_3(460f, true, Struct_2(Struct_1(vec2<i32>(18510i, 1i), vec2<f32>(-513f, -287f), vec2<f32>(-551f, 675f), vec2<f32>(560f, -1000f)), Struct_1(vec2<i32>(-7997i, 2364i), vec2<f32>(-914f, -1425f), vec2<f32>(497f, -406f), vec2<f32>(-368f, 421f)), -1000f)), Struct_3(1753f, false, Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<f32>(-505f, 285f), vec2<f32>(-716f, 1183f), vec2<f32>(-805f, -1399f)), Struct_1(vec2<i32>(0i, 0i), vec2<f32>(924f, 515f), vec2<f32>(1000f, 871f), vec2<f32>(2357f, -237f)), 660f)), vec4<f32>(-265f, -1252f, -1263f, 113f)), Struct_4(vec3<f32>(1488f, -139f, -189f), false, Struct_3(1321f, true, Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), vec2<f32>(472f, -1953f), vec2<f32>(1000f, 628f), vec2<f32>(-1000f, 833f)), Struct_1(vec2<i32>(-20822i, 0i), vec2<f32>(1138f, -1264f), vec2<f32>(-1154f, -129f), vec2<f32>(2618f, -210f)), 401f)), Struct_3(-620f, false, Struct_2(Struct_1(vec2<i32>(1i, -16538i), vec2<f32>(1838f, -1885f), vec2<f32>(584f, -1000f), vec2<f32>(-1206f, -1000f)), Struct_1(vec2<i32>(1i, 1i), vec2<f32>(177f, 175f), vec2<f32>(-1000f, 1000f), vec2<f32>(250f, -1934f)), 1000f)), vec4<f32>(231f, -797f, 301f, 1105f)), Struct_4(vec3<f32>(-1061f, 978f, 1985f), true, Struct_3(1553f, false, Struct_2(Struct_1(vec2<i32>(42316i, 8035i), vec2<f32>(238f, 1787f), vec2<f32>(-1107f, 988f), vec2<f32>(578f, -263f)), Struct_1(vec2<i32>(16667i, 18750i), vec2<f32>(1002f, -1387f), vec2<f32>(-869f, -1590f), vec2<f32>(-721f, 527f)), -426f)), Struct_3(-372f, true, Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 9537i), vec2<f32>(-390f, 656f), vec2<f32>(2131f, -1299f), vec2<f32>(331f, -507f)), Struct_1(vec2<i32>(-34966i, -5384i), vec2<f32>(915f, -596f), vec2<f32>(1036f, 1881f), vec2<f32>(1009f, 617f)), 1298f)), vec4<f32>(-1000f, 230f, 533f, -1000f)), Struct_4(vec3<f32>(589f, -1000f, 777f), true, Struct_3(703f, false, Struct_2(Struct_1(vec2<i32>(-8480i, 49277i), vec2<f32>(166f, -1486f), vec2<f32>(-216f, -822f), vec2<f32>(924f, -1958f)), Struct_1(vec2<i32>(0i, 16915i), vec2<f32>(1698f, 1329f), vec2<f32>(685f, 1059f), vec2<f32>(-773f, 1301f)), -468f)), Struct_3(360f, false, Struct_2(Struct_1(vec2<i32>(-13440i, 0i), vec2<f32>(-1513f, -951f), vec2<f32>(-1866f, 1868f), vec2<f32>(-650f, -691f)), Struct_1(vec2<i32>(10471i, 1049i), vec2<f32>(483f, -1000f), vec2<f32>(564f, 712f), vec2<f32>(-1000f, 886f)), -672f)), vec4<f32>(1636f, -1328f, 691f, -2011f)), Struct_4(vec3<f32>(688f, -1711f, -1302f), true, Struct_3(1275f, true, Struct_2(Struct_1(vec2<i32>(-37275i, 30558i), vec2<f32>(2160f, -1000f), vec2<f32>(-1089f, -1252f), vec2<f32>(-701f, -594f)), Struct_1(vec2<i32>(32000i, 36273i), vec2<f32>(-817f, -1604f), vec2<f32>(441f, -1033f), vec2<f32>(724f, 806f)), 1444f)), Struct_3(357f, false, Struct_2(Struct_1(vec2<i32>(-20093i, -12364i), vec2<f32>(1481f, 545f), vec2<f32>(-136f, 721f), vec2<f32>(-424f, -1756f)), Struct_1(vec2<i32>(48418i, -63704i), vec2<f32>(-665f, 2779f), vec2<f32>(666f, 1396f), vec2<f32>(1161f, 1000f)), 933f)), vec4<f32>(1000f, -543f, 871f, 589f)), Struct_4(vec3<f32>(-141f, -224f, 263f), false, Struct_3(-1841f, false, Struct_2(Struct_1(vec2<i32>(2147483647i, 1i), vec2<f32>(1525f, -1279f), vec2<f32>(417f, 774f), vec2<f32>(-1913f, 898f)), Struct_1(vec2<i32>(-1i, 12290i), vec2<f32>(-1369f, 889f), vec2<f32>(333f, 149f), vec2<f32>(473f, 769f)), 447f)), Struct_3(1224f, true, Struct_2(Struct_1(vec2<i32>(55259i, 16538i), vec2<f32>(-1000f, -634f), vec2<f32>(-365f, -1000f), vec2<f32>(1410f, -1568f)), Struct_1(vec2<i32>(-37455i, -4366i), vec2<f32>(1771f, -410f), vec2<f32>(-1790f, 533f), vec2<f32>(290f, 260f)), 170f)), vec4<f32>(754f, -1321f, -1209f, 1249f)), Struct_4(vec3<f32>(1000f, 116f, 1000f), false, Struct_3(-694f, false, Struct_2(Struct_1(vec2<i32>(1i, 0i), vec2<f32>(1506f, -1293f), vec2<f32>(-1176f, 1100f), vec2<f32>(386f, 433f)), Struct_1(vec2<i32>(2147483647i, 9246i), vec2<f32>(-1432f, -1151f), vec2<f32>(-1277f, -351f), vec2<f32>(422f, 122f)), 837f)), Struct_3(1405f, true, Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), vec2<f32>(-1729f, -815f), vec2<f32>(408f, -326f), vec2<f32>(286f, 1276f)), Struct_1(vec2<i32>(-10942i, 25804i), vec2<f32>(1603f, 1219f), vec2<f32>(-1301f, -1276f), vec2<f32>(-1336f, -559f)), -712f)), vec4<f32>(-982f, 697f, 1000f, -2443f)), Struct_4(vec3<f32>(-1017f, -122f, -575f), false, Struct_3(1276f, false, Struct_2(Struct_1(vec2<i32>(1i, -1i), vec2<f32>(-1164f, -390f), vec2<f32>(-137f, -875f), vec2<f32>(-1134f, -1458f)), Struct_1(vec2<i32>(12555i, i32(-2147483648)), vec2<f32>(838f, 1300f), vec2<f32>(-324f, -1993f), vec2<f32>(164f, -1827f)), 748f)), Struct_3(-118f, false, Struct_2(Struct_1(vec2<i32>(1i, 0i), vec2<f32>(-942f, -1057f), vec2<f32>(1561f, 1744f), vec2<f32>(1361f, -1026f)), Struct_1(vec2<i32>(-22134i, 1i), vec2<f32>(3117f, -209f), vec2<f32>(-781f, 1773f), vec2<f32>(439f, 458f)), -1098f)), vec4<f32>(-113f, -1111f, -895f, -494f)), Struct_4(vec3<f32>(101f, -790f, -584f), false, Struct_3(1301f, true, Struct_2(Struct_1(vec2<i32>(-1i, -38559i), vec2<f32>(-2018f, -345f), vec2<f32>(-2355f, -634f), vec2<f32>(680f, 1710f)), Struct_1(vec2<i32>(20595i, 18214i), vec2<f32>(1434f, 868f), vec2<f32>(-977f, -409f), vec2<f32>(481f, -734f)), 1256f)), Struct_3(-2116f, true, Struct_2(Struct_1(vec2<i32>(24797i, 38662i), vec2<f32>(-983f, -141f), vec2<f32>(1000f, -1822f), vec2<f32>(122f, -1000f)), Struct_1(vec2<i32>(33853i, -6706i), vec2<f32>(450f, -998f), vec2<f32>(-402f, 1000f), vec2<f32>(670f, -119f)), -1541f)), vec4<f32>(1951f, 1000f, 460f, -670f)), Struct_4(vec3<f32>(-634f, 986f, 1954f), false, Struct_3(801f, true, Struct_2(Struct_1(vec2<i32>(-33518i, -44364i), vec2<f32>(-1274f, 1138f), vec2<f32>(1207f, -471f), vec2<f32>(-216f, 876f)), Struct_1(vec2<i32>(29918i, -1i), vec2<f32>(1616f, 1643f), vec2<f32>(-244f, -893f), vec2<f32>(578f, 627f)), 317f)), Struct_3(-518f, false, Struct_2(Struct_1(vec2<i32>(-53219i, 1i), vec2<f32>(-1817f, 470f), vec2<f32>(-142f, -568f), vec2<f32>(-958f, 592f)), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<f32>(840f, -1251f), vec2<f32>(715f, 1705f), vec2<f32>(-531f, 1424f)), -290f)), vec4<f32>(272f, 557f, -216f, 283f)), Struct_4(vec3<f32>(-790f, -466f, -1736f), true, Struct_3(519f, false, Struct_2(Struct_1(vec2<i32>(2147483647i, 12348i), vec2<f32>(944f, -2785f), vec2<f32>(-785f, -590f), vec2<f32>(1041f, -507f)), Struct_1(vec2<i32>(i32(-2147483648), 5426i), vec2<f32>(-322f, 1113f), vec2<f32>(1000f, -1108f), vec2<f32>(629f, 743f)), -465f)), Struct_3(-1056f, true, Struct_2(Struct_1(vec2<i32>(1i, 67862i), vec2<f32>(773f, -735f), vec2<f32>(-897f, -1667f), vec2<f32>(-797f, -698f)), Struct_1(vec2<i32>(-9332i, 1093i), vec2<f32>(-366f, 187f), vec2<f32>(1141f, 1202f), vec2<f32>(-955f, -1000f)), -610f)), vec4<f32>(-969f, -1399f, 588f, 2670f)), Struct_4(vec3<f32>(409f, -1000f, -1250f), false, Struct_3(648f, false, Struct_2(Struct_1(vec2<i32>(1i, 19982i), vec2<f32>(1126f, -184f), vec2<f32>(444f, 188f), vec2<f32>(733f, -2690f)), Struct_1(vec2<i32>(-34090i, 2147483647i), vec2<f32>(-1206f, -1000f), vec2<f32>(433f, -244f), vec2<f32>(956f, -1441f)), -1057f)), Struct_3(1000f, true, Struct_2(Struct_1(vec2<i32>(67966i, 61813i), vec2<f32>(1252f, 431f), vec2<f32>(637f, 1866f), vec2<f32>(402f, 331f)), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<f32>(-180f, -626f), vec2<f32>(1387f, 937f), vec2<f32>(-1622f, 1854f)), -363f)), vec4<f32>(-348f, 1431f, 450f, 657f)), Struct_4(vec3<f32>(-1013f, 487f, 1284f), true, Struct_3(704f, true, Struct_2(Struct_1(vec2<i32>(1i, -61031i), vec2<f32>(-292f, 1394f), vec2<f32>(-419f, -319f), vec2<f32>(573f, 1000f)), Struct_1(vec2<i32>(21943i, 2147483647i), vec2<f32>(1523f, 1000f), vec2<f32>(-1032f, 1346f), vec2<f32>(-1305f, 276f)), -2060f)), Struct_3(1215f, false, Struct_2(Struct_1(vec2<i32>(-19580i, 0i), vec2<f32>(-448f, -1319f), vec2<f32>(-314f, 1902f), vec2<f32>(-1376f, -945f)), Struct_1(vec2<i32>(-26528i, 29737i), vec2<f32>(1134f, -404f), vec2<f32>(1353f, 1274f), vec2<f32>(-198f, -369f)), -698f)), vec4<f32>(1079f, -652f, 1010f, 617f)), Struct_4(vec3<f32>(-840f, 960f, -901f), true, Struct_3(-486f, false, Struct_2(Struct_1(vec2<i32>(1i, 2147483647i), vec2<f32>(-625f, 410f), vec2<f32>(1180f, 232f), vec2<f32>(604f, 611f)), Struct_1(vec2<i32>(-27507i, -13081i), vec2<f32>(-1105f, -413f), vec2<f32>(-977f, 1000f), vec2<f32>(-1274f, -828f)), -1573f)), Struct_3(-552f, false, Struct_2(Struct_1(vec2<i32>(1i, -20124i), vec2<f32>(691f, -370f), vec2<f32>(-2127f, -1046f), vec2<f32>(-1034f, -1194f)), Struct_1(vec2<i32>(-1i, 4086i), vec2<f32>(-601f, 1018f), vec2<f32>(178f, -1062f), vec2<f32>(-2012f, -1426f)), 248f)), vec4<f32>(-1000f, 428f, 1126f, 523f)), Struct_4(vec3<f32>(750f, 1399f, 276f), false, Struct_3(1064f, true, Struct_2(Struct_1(vec2<i32>(-18032i, 2147483647i), vec2<f32>(-368f, 317f), vec2<f32>(144f, -546f), vec2<f32>(255f, 1216f)), Struct_1(vec2<i32>(-23585i, 0i), vec2<f32>(218f, 843f), vec2<f32>(-1000f, 1392f), vec2<f32>(-397f, 423f)), -1000f)), Struct_3(-496f, false, Struct_2(Struct_1(vec2<i32>(-1i, 19443i), vec2<f32>(-316f, -1059f), vec2<f32>(839f, 1000f), vec2<f32>(-583f, -131f)), Struct_1(vec2<i32>(-1i, 7542i), vec2<f32>(618f, -411f), vec2<f32>(-777f, -1121f), vec2<f32>(-1785f, -1060f)), 622f)), vec4<f32>(2459f, -1429f, -451f, -997f)), Struct_4(vec3<f32>(-210f, -2489f, -2228f), false, Struct_3(1022f, true, Struct_2(Struct_1(vec2<i32>(-19331i, 2147483647i), vec2<f32>(-291f, -1000f), vec2<f32>(-117f, -686f), vec2<f32>(703f, 1940f)), Struct_1(vec2<i32>(-29637i, i32(-2147483648)), vec2<f32>(341f, 1000f), vec2<f32>(-335f, 1020f), vec2<f32>(-486f, 2004f)), 2284f)), Struct_3(-778f, true, Struct_2(Struct_1(vec2<i32>(0i, 1i), vec2<f32>(1064f, 379f), vec2<f32>(1236f, 1803f), vec2<f32>(-1000f, 195f)), Struct_1(vec2<i32>(-15204i, 0i), vec2<f32>(221f, 248f), vec2<f32>(-1000f, 685f), vec2<f32>(867f, 859f)), 826f)), vec4<f32>(-566f, -370f, 882f, -109f)), Struct_4(vec3<f32>(-1296f, -841f, -655f), true, Struct_3(-575f, false, Struct_2(Struct_1(vec2<i32>(1i, 2147483647i), vec2<f32>(-696f, -1898f), vec2<f32>(-664f, -265f), vec2<f32>(-1686f, -1407f)), Struct_1(vec2<i32>(1i, 0i), vec2<f32>(-497f, 2417f), vec2<f32>(823f, -494f), vec2<f32>(435f, 1000f)), 1841f)), Struct_3(-661f, true, Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<f32>(-486f, 1565f), vec2<f32>(-371f, 190f), vec2<f32>(-1145f, -259f)), Struct_1(vec2<i32>(1i, -1i), vec2<f32>(-115f, 1297f), vec2<f32>(-1725f, -1497f), vec2<f32>(467f, 1103f)), 346f)), vec4<f32>(-1289f, 1474f, 286f, 114f)), Struct_4(vec3<f32>(-1112f, -1131f, 785f), false, Struct_3(-1254f, true, Struct_2(Struct_1(vec2<i32>(40722i, 2147483647i), vec2<f32>(-1382f, 362f), vec2<f32>(-366f, -1000f), vec2<f32>(-902f, -648f)), Struct_1(vec2<i32>(25984i, -1i), vec2<f32>(-307f, 170f), vec2<f32>(1024f, -2324f), vec2<f32>(714f, 1376f)), 800f)), Struct_3(328f, true, Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), vec2<f32>(-2144f, 364f), vec2<f32>(-1186f, 544f), vec2<f32>(-406f, 1060f)), Struct_1(vec2<i32>(-49815i, -7490i), vec2<f32>(-560f, 1450f), vec2<f32>(-283f, -1450f), vec2<f32>(-182f, 599f)), -1670f)), vec4<f32>(143f, -269f, -1000f, 1175f)), Struct_4(vec3<f32>(-110f, -376f, 294f), true, Struct_3(1277f, true, Struct_2(Struct_1(vec2<i32>(-12781i, 2147483647i), vec2<f32>(-1477f, 948f), vec2<f32>(160f, -148f), vec2<f32>(-1068f, 514f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<f32>(1207f, 1906f), vec2<f32>(1000f, 231f), vec2<f32>(493f, 573f)), -2128f)), Struct_3(-290f, false, Struct_2(Struct_1(vec2<i32>(1i, 11852i), vec2<f32>(-496f, -371f), vec2<f32>(-741f, 354f), vec2<f32>(508f, 328f)), Struct_1(vec2<i32>(10721i, 3246i), vec2<f32>(574f, 585f), vec2<f32>(-725f, -1211f), vec2<f32>(142f, -1085f)), 312f)), vec4<f32>(-1059f, 1121f, -712f, 2025f)), Struct_4(vec3<f32>(904f, 521f, 1196f), false, Struct_3(1656f, true, Struct_2(Struct_1(vec2<i32>(3090i, 41368i), vec2<f32>(646f, -1694f), vec2<f32>(711f, 1107f), vec2<f32>(-1558f, -1000f)), Struct_1(vec2<i32>(6971i, i32(-2147483648)), vec2<f32>(-380f, 631f), vec2<f32>(-1000f, -932f), vec2<f32>(-1030f, 556f)), -1123f)), Struct_3(-671f, true, Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 24282i), vec2<f32>(-269f, 1087f), vec2<f32>(-647f, -771f), vec2<f32>(494f, 1518f)), Struct_1(vec2<i32>(26339i, -40595i), vec2<f32>(-403f, -614f), vec2<f32>(-353f, 171f), vec2<f32>(-572f, 944f)), 257f)), vec4<f32>(2082f, -417f, -347f, 422f)), Struct_4(vec3<f32>(-243f, 649f, -1359f), true, Struct_3(1446f, false, Struct_2(Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<f32>(-233f, 1000f), vec2<f32>(501f, 1216f), vec2<f32>(-730f, -408f)), Struct_1(vec2<i32>(0i, 0i), vec2<f32>(-210f, -1270f), vec2<f32>(-674f, 723f), vec2<f32>(610f, 950f)), -785f)), Struct_3(349f, true, Struct_2(Struct_1(vec2<i32>(-3229i, 11515i), vec2<f32>(-1406f, -516f), vec2<f32>(-1000f, -309f), vec2<f32>(756f, -431f)), Struct_1(vec2<i32>(21609i, 23784i), vec2<f32>(-1821f, 232f), vec2<f32>(306f, 1000f), vec2<f32>(-199f, -1000f)), -380f)), vec4<f32>(422f, 422f, 1082f, 1184f)), Struct_4(vec3<f32>(-785f, 1000f, 999f), false, Struct_3(-1346f, true, Struct_2(Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<f32>(1667f, -328f), vec2<f32>(-1500f, 289f), vec2<f32>(-782f, -322f)), Struct_1(vec2<i32>(i32(-2147483648), -9665i), vec2<f32>(1038f, 929f), vec2<f32>(-238f, 1939f), vec2<f32>(-2629f, 1624f)), -1174f)), Struct_3(-194f, false, Struct_2(Struct_1(vec2<i32>(-15391i, -24141i), vec2<f32>(277f, -111f), vec2<f32>(-452f, 695f), vec2<f32>(399f, -1273f)), Struct_1(vec2<i32>(-1714i, -40714i), vec2<f32>(-350f, 728f), vec2<f32>(-2551f, -900f), vec2<f32>(1132f, -964f)), -261f)), vec4<f32>(-1000f, 807f, 918f, -1173f)), Struct_4(vec3<f32>(-387f, 721f, 780f), false, Struct_3(403f, false, Struct_2(Struct_1(vec2<i32>(33130i, -1i), vec2<f32>(-111f, 1000f), vec2<f32>(1000f, 708f), vec2<f32>(600f, -1374f)), Struct_1(vec2<i32>(-1i, 0i), vec2<f32>(141f, 412f), vec2<f32>(-1010f, 201f), vec2<f32>(-237f, 2891f)), 1088f)), Struct_3(-881f, false, Struct_2(Struct_1(vec2<i32>(-1i, 0i), vec2<f32>(-363f, 1000f), vec2<f32>(-535f, 671f), vec2<f32>(-1203f, 234f)), Struct_1(vec2<i32>(-25589i, -14954i), vec2<f32>(-1725f, 634f), vec2<f32>(1000f, 757f), vec2<f32>(-363f, 971f)), 1150f)), vec4<f32>(179f, -531f, -2243f, 654f)), Struct_4(vec3<f32>(438f, -168f, -144f), true, Struct_3(128f, false, Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<f32>(-1000f, -1796f), vec2<f32>(1227f, -3262f), vec2<f32>(865f, 752f)), Struct_1(vec2<i32>(i32(-2147483648), 813i), vec2<f32>(-676f, 1183f), vec2<f32>(-2647f, 125f), vec2<f32>(1063f, -327f)), 2245f)), Struct_3(-1000f, true, Struct_2(Struct_1(vec2<i32>(7831i, 0i), vec2<f32>(-321f, 620f), vec2<f32>(1609f, -1859f), vec2<f32>(-2113f, -974f)), Struct_1(vec2<i32>(0i, 0i), vec2<f32>(620f, 1168f), vec2<f32>(-251f, -1518f), vec2<f32>(-1148f, -1765f)), -251f)), vec4<f32>(1000f, 1093f, -576f, -506f)), Struct_4(vec3<f32>(159f, 144f, 398f), true, Struct_3(-128f, false, Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<f32>(1718f, 347f), vec2<f32>(1000f, 2021f), vec2<f32>(1216f, 1000f)), Struct_1(vec2<i32>(20922i, -19747i), vec2<f32>(-1812f, 1260f), vec2<f32>(773f, -549f), vec2<f32>(477f, 1008f)), 1117f)), Struct_3(104f, true, Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), vec2<f32>(-1826f, -1042f), vec2<f32>(-751f, -339f), vec2<f32>(470f, -568f)), Struct_1(vec2<i32>(27087i, 23217i), vec2<f32>(-1648f, 129f), vec2<f32>(618f, -218f), vec2<f32>(1249f, -167f)), 959f)), vec4<f32>(462f, -829f, -1204f, -1137f)), Struct_4(vec3<f32>(230f, -732f, -1680f), true, Struct_3(336f, false, Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), vec2<f32>(-1314f, 508f), vec2<f32>(187f, 211f), vec2<f32>(-228f, -1079f)), Struct_1(vec2<i32>(1546i, 0i), vec2<f32>(732f, 351f), vec2<f32>(1000f, -745f), vec2<f32>(1000f, -151f)), 397f)), Struct_3(530f, false, Struct_2(Struct_1(vec2<i32>(-9068i, 2147483647i), vec2<f32>(1030f, 1762f), vec2<f32>(-638f, 2500f), vec2<f32>(1041f, -836f)), Struct_1(vec2<i32>(-1i, -21056i), vec2<f32>(1568f, -1543f), vec2<f32>(388f, -1054f), vec2<f32>(-426f, 2084f)), 1028f)), vec4<f32>(-323f, 1737f, 1383f, 773f)), Struct_4(vec3<f32>(-147f, -1000f, -1381f), true, Struct_3(1516f, false, Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<f32>(-466f, 1791f), vec2<f32>(588f, -842f), vec2<f32>(529f, -538f)), Struct_1(vec2<i32>(0i, 1i), vec2<f32>(641f, -716f), vec2<f32>(-244f, 109f), vec2<f32>(-349f, -322f)), 386f)), Struct_3(207f, true, Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), vec2<f32>(-1409f, 515f), vec2<f32>(1091f, -801f), vec2<f32>(929f, 844f)), Struct_1(vec2<i32>(0i, 0i), vec2<f32>(788f, -1279f), vec2<f32>(-306f, 553f), vec2<f32>(-1000f, 207f)), 405f)), vec4<f32>(385f, -1093f, -1721f, 668f)), Struct_4(vec3<f32>(-255f, -824f, -253f), true, Struct_3(905f, true, Struct_2(Struct_1(vec2<i32>(-13884i, 52459i), vec2<f32>(-501f, -1003f), vec2<f32>(-615f, -396f), vec2<f32>(-545f, 1771f)), Struct_1(vec2<i32>(-1i, 1i), vec2<f32>(-1071f, -744f), vec2<f32>(431f, 392f), vec2<f32>(1132f, 434f)), 1000f)), Struct_3(-791f, true, Struct_2(Struct_1(vec2<i32>(-33929i, 2147483647i), vec2<f32>(-372f, 885f), vec2<f32>(-1000f, 711f), vec2<f32>(-288f, 514f)), Struct_1(vec2<i32>(-12595i, 21659i), vec2<f32>(1773f, -966f), vec2<f32>(-1240f, 225f), vec2<f32>(547f, 426f)), 752f)), vec4<f32>(-1902f, -1101f, 199f, -1287f)));

var<private> global1: array<vec2<i32>, 20>;

var<private> global2: array<bool, 19>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4) -> vec3<f32> {
    let var_0 = vec3<bool>(_wgslsmith_sub_u32((56374u >> (arg_0.x % 32u)) ^ arg_0.x, arg_0.x) > ~(~0u), arg_1.d.b, any(select(select(select(vec2<bool>(true, arg_1.c.b), vec2<bool>(true, arg_1.d.b), global2[_wgslsmith_index_u32(arg_0.x, 19u)]), vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 19u)], global2[_wgslsmith_index_u32(32055u, 19u)]), vec2<bool>(true, true)), !(!vec2<bool>(arg_1.b, global2[_wgslsmith_index_u32(72873u, 19u)])), select(!vec2<bool>(arg_1.d.b, global2[_wgslsmith_index_u32(arg_0.x, 19u)]), !vec2<bool>(true, arg_1.d.b), global2[_wgslsmith_index_u32(arg_0.x, 19u)]))));
    global0 = array<Struct_4, 30>();
    var var_1 = vec2<i32>(arg_1.d.c.b.a.x, 2728i);
    let var_2 = arg_1.c.c.b;
    global1 = array<vec2<i32>, 20>();
    return arg_1.a;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1250f, -1014f), _wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(8377u, 0u), Struct_4(vec3<f32>(2104f, -1759f, -201f), global2[_wgslsmith_index_u32(30288u, 19u)], Struct_3(-638f, false, Struct_2(Struct_1(u_input.d, vec2<f32>(-1147f, -512f), vec2<f32>(-244f, -476f), vec2<f32>(649f, -911f)), Struct_1(global1[_wgslsmith_index_u32(50020u, 20u)], vec2<f32>(505f, -1275f), vec2<f32>(799f, 1846f), vec2<f32>(-251f, -199f)), -202f)), Struct_3(-770f, global2[_wgslsmith_index_u32(40244u, 19u)], Struct_2(Struct_1(global1[_wgslsmith_index_u32(10427u, 20u)], vec2<f32>(550f, -175f), vec2<f32>(-640f, -227f), vec2<f32>(660f, -872f)), Struct_1(vec2<i32>(-20979i, -12043i), vec2<f32>(-325f, 628f), vec2<f32>(-1048f, 902f), vec2<f32>(534f, 762f)), 751f)), vec4<f32>(-1714f, 1209f, 698f, -463f)))), global2[_wgslsmith_index_u32(~52158u, 19u)]))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1776f, 924f, -1761f) * vec3<f32>(-778f, -1425f, -364f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-216f, 629f, 332f), vec3<f32>(1126f, -176f, -1519f)))))), true)), false, Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f * 2414f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f) + _wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(47173u, 0u), global0[_wgslsmith_index_u32(55760u, 30u)])).x))), firstLeadingBit(countOneBits(arg_0)) == -1i, Struct_2(Struct_1(u_input.c.wx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1250f, 984f)), vec2<f32>(-1179f, 1245f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1444f))), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 0u), 20u)], _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 2879f), vec2<f32>(280f, -674f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2079f, -611f) + vec2<f32>(954f, -1282f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1117f, -979f))), -1268f)), Struct_3(-770f, global2[_wgslsmith_index_u32(1u, 19u)] | all(vec2<bool>(global2[_wgslsmith_index_u32(66497u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)])), Struct_2(Struct_1(abs(global1[_wgslsmith_index_u32(42688u, 20u)]), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-833f, -1289f), vec2<f32>(1222f, 207f), vec2<bool>(false, true))), vec2<f32>(-2343f, 878f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1939f, -160f), vec2<f32>(-1000f, 258f)))), Struct_1(vec2<i32>(-2147483647i, u_input.e.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2439f, 117f)), _wgslsmith_div_vec2_f32(vec2<f32>(-264f, -1150f), vec2<f32>(-950f, -1164f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, 571f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(526f - 927f), -551f))), vec4<f32>(_wgslsmith_f_op_f32(-821f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(671f)), -1375f))), _wgslsmith_f_op_f32(-164f * 276f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-120f, -1451f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1885f))));
    global1 = array<vec2<i32>, 20>();
    var var_1 = 39910i;
    return var_0.c.c;
}

fn func_1() -> Struct_2 {
    global2 = array<bool, 19>();
    global2 = array<bool, 19>();
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    global2 = array<bool, 19>();
    return func_2(~(select(u_input.b, firstTrailingBit(-34811i), true) | u_input.b));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_4 {
    global0 = array<Struct_4, 30>();
    var var_0 = arg_2.b.a;
    var var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(func_2(_wgslsmith_mod_i32(-18527i, -45054i)).b.d.x)), func_2(select(~arg_2.b.a.x, firstLeadingBit(-16506i), !global2[_wgslsmith_index_u32(18395u, 19u)])).c, arg_2.a.c.x), true, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-676f * arg_2.b.c.x)) * arg_2.b.b.x), -9781i != (arg_1.x | firstTrailingBit(arg_1.x)), Struct_2(Struct_1(countOneBits(vec2<i32>(arg_1.x, arg_2.b.a.x)), arg_2.b.d, _wgslsmith_f_op_vec2_f32(sign(arg_2.b.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-408f, arg_2.c) + vec2<f32>(1132f, arg_2.b.d.x))), Struct_1(global1[_wgslsmith_index_u32(~0u, 20u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(663f, -161f)), _wgslsmith_f_op_vec2_f32(sign(arg_2.b.c)), vec2<f32>(756f, arg_2.b.b.x)), _wgslsmith_f_op_f32(-1073f * _wgslsmith_f_op_f32(round(1000f))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), true, func_2(~u_input.c.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1235f)), _wgslsmith_div_f32(arg_2.b.c.x, _wgslsmith_f_op_f32(arg_0 - -586f)), _wgslsmith_f_op_f32(floor(arg_2.b.b.x)), 797f));
    let var_2 = !(!vec3<bool>(var_1.b, global2[_wgslsmith_index_u32(96703u, 19u)], !any(vec2<bool>(true, false))));
    global1 = array<vec2<i32>, 20>();
    return global0[_wgslsmith_index_u32(select(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(~40933u, ~51807u, ~50678u, 4294967295u), ~vec4<u32>(1u, 4294967295u, 61854u, 4294967295u))), abs(1675u), true), 30u)];
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    var var_0 = func_4(493f, select(u_input.c, -_wgslsmith_div_vec4_i32(~u_input.c, vec4<i32>(arg_0.d.c.a.a.x, 2147483647i, -47643i, -22073i)), true), Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(global1[_wgslsmith_index_u32(28002u, 20u)] ^ u_input.d, ~arg_0.c.c.b.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(arg_0.d.c.a.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.yz) * vec2<f32>(155f, 813f)), arg_0.e.xz), arg_0.c.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.e.x))))));
    global1 = array<vec2<i32>, 20>();
    var var_1 = ~(~0u);
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(var_0.c.c.b.c));
    var var_3 = global1[_wgslsmith_index_u32(1u, 20u)];
    return Struct_3(var_2.x, func_4(_wgslsmith_f_op_f32(1154f + _wgslsmith_f_op_vec3_f32(func_3(firstLeadingBit(vec2<u32>(13046u, 4294967295u)), func_4(arg_0.d.a, vec4<i32>(var_0.c.c.b.a.x, 23773i, 0i, 1i), var_0.c.c))).x), u_input.c, func_1()).b, Struct_2(func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1241f))), u_input.c, func_2(u_input.a.x)).c.c.a, var_0.c.c.a, _wgslsmith_f_op_f32(arg_0.d.a + arg_0.e.x)));
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    global1 = array<vec2<i32>, 20>();
    global1 = array<vec2<i32>, 20>();
    let var_0 = firstLeadingBit(u_input.c);
    global1 = array<vec2<i32>, 20>();
    global2 = array<bool, 19>();
    return Struct_3(func_2(min(u_input.b, -arg_0.c.a.a.x << (_wgslsmith_mod_u32(53489u, 16304u) % 32u))).b.b.x, func_5(func_4(func_4(_wgslsmith_f_op_f32(arg_0.c.b.d.x + -646f), var_0, Struct_2(Struct_1(vec2<i32>(u_input.c.x, var_0.x), arg_0.c.b.d, arg_0.c.a.d, vec2<f32>(arg_0.a, 1440f)), Struct_1(var_0.xx, arg_0.c.a.b, vec2<f32>(-1500f, arg_0.a), arg_0.c.b.b), arg_0.a)).c.a, _wgslsmith_sub_vec4_i32(firstLeadingBit(var_0), vec4<i32>(2100i, 51916i, 0i, -28835i)), Struct_2(arg_0.c.b, func_5(Struct_4(vec3<f32>(-643f, arg_0.c.b.d.x, arg_0.a), true, arg_0, Struct_3(-1241f, false, Struct_2(Struct_1(var_0.yz, arg_0.c.b.d, vec2<f32>(arg_0.a, arg_0.c.b.d.x), arg_0.c.b.d), arg_0.c.b, arg_0.a)), vec4<f32>(arg_0.c.a.b.x, arg_0.a, 887f, arg_0.c.b.d.x))).c.b, arg_0.c.b.b.x))).b, func_1());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-144f, 667f)), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, -31934i), u_input.c), func_1())));
    let var_1 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, 1u, 1u), -1143f, vec2<u32>(1u, 1u), vec4<f32>(_wgslsmith_f_op_f32(-702f - -232f), _wgslsmith_f_op_f32(-var_0.c.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-136f + -466f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-372f)))), _wgslsmith_f_op_f32(f32(-1f) * -461f)), u_input.c);
}

