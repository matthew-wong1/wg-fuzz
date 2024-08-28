struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1076f, 469f, 395f), vec4<f32>(-299f, 1113f, 639f, -261f)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(1647f, -1932f, 2271f), vec4<f32>(-2578f, -529f, 252f, -562f)), 45914u, false), 1844f, Struct_1(vec3<bool>(true, false, true), vec3<f32>(508f, 300f, -1112f), vec4<f32>(-2449f, 491f, -497f, -1655f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(1033f, 528f, 668f), vec4<f32>(494f, 1005f, -734f, 378f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(1396f, 752f, 1533f), vec4<f32>(1343f, 1358f, 375f, -616f)), 0u, true), -1667f, Struct_1(vec3<bool>(true, false, true), vec3<f32>(-499f, -1000f, 1287f), vec4<f32>(-775f, 1442f, -512f, -1531f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(473f, -1253f, -663f), vec4<f32>(1054f, 649f, -1010f, -1000f)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(761f, 411f, -1626f), vec4<f32>(117f, -1231f, -552f, 128f)), 34963u, false), 1352f, Struct_1(vec3<bool>(true, true, false), vec3<f32>(234f, 502f, 860f), vec4<f32>(-511f, -1184f, 1288f, -1528f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(1000f, 221f, -633f), vec4<f32>(1085f, 198f, 901f, 186f)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(1096f, -107f, -302f), vec4<f32>(1030f, -794f, 959f, -1234f)), 1u, true), -372f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1016f, -538f, -707f), vec4<f32>(-1291f, -201f, -989f, 692f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-821f, -1315f, 689f), vec4<f32>(-1335f, 300f, 1731f, 987f)), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-372f, 571f, -855f), vec4<f32>(-1000f, -477f, 577f, 373f)), 0u, true), -249f, Struct_1(vec3<bool>(false, true, true), vec3<f32>(-753f, -704f, -1120f), vec4<f32>(414f, 2258f, -796f, -1059f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-399f, -765f, 1385f), vec4<f32>(114f, -392f, -205f, 785f)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-271f, 388f, 903f), vec4<f32>(-183f, -739f, -355f, 773f)), 1u, true), 346f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(-121f, -983f, 2245f), vec4<f32>(-1437f, -777f, 780f, 682f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(1025f, -444f, 1210f), vec4<f32>(-706f, -1867f, 156f, 929f)), Struct_1(vec3<bool>(false, true, true), vec3<f32>(1124f, -171f, 476f), vec4<f32>(-599f, 1000f, -659f, 270f)), 4294967295u, true), 518f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(1873f, 540f, 1000f), vec4<f32>(1000f, -676f, -315f, 675f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-1914f, 941f, -1823f), vec4<f32>(-939f, -823f, -238f, 986f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(728f, -2510f, -615f), vec4<f32>(-2005f, 246f, -1694f, -1023f)), 1u, true), 659f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(699f, 2497f, 295f), vec4<f32>(104f, -389f, 481f, 1120f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(592f, 1476f, -350f), vec4<f32>(-428f, -1000f, 301f, 402f)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(431f, -2536f, 208f), vec4<f32>(-764f, 133f, 219f, -766f)), 12614u, true), -1000f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-754f, 1000f, 1000f), vec4<f32>(-620f, 130f, -990f, -799f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(-614f, -401f, 892f), vec4<f32>(-560f, 396f, 1460f, 1000f)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(1150f, -498f, 814f), vec4<f32>(2340f, 1112f, 501f, -734f)), 32814u, false), 1690f, Struct_1(vec3<bool>(true, false, true), vec3<f32>(-269f, 2062f, 123f), vec4<f32>(-1000f, -1026f, -727f, -137f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(1793f, -648f, 2684f), vec4<f32>(-557f, -741f, 455f, 752f)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-587f, 559f, -1000f), vec4<f32>(-240f, 1000f, 599f, 802f)), 32989u, false), -1000f, Struct_1(vec3<bool>(false, false, true), vec3<f32>(631f, -1032f, 2097f), vec4<f32>(1214f, -408f, -2508f, 732f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1044f, 760f, 1023f), vec4<f32>(182f, -1000f, 238f, 1526f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-453f, 533f, 1000f), vec4<f32>(532f, -1434f, 926f, -365f)), 0u, true), 2207f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(232f, 590f, -394f), vec4<f32>(608f, 101f, -1196f, -410f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-299f, 782f, 976f), vec4<f32>(1294f, 990f, -290f, -1046f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(3489f, -451f, -100f), vec4<f32>(-1771f, 556f, 364f, -1338f)), 4294967295u, true), 508f, Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1155f, -1406f, 1102f), vec4<f32>(-1174f, -2170f, -1998f, -115f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(614f, -1015f, -1380f), vec4<f32>(-697f, -1240f, 1302f, 1522f)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1069f, 202f, 622f), vec4<f32>(2470f, -476f, -1160f, 1000f)), 4396u, false), 841f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(1734f, 1000f, 264f), vec4<f32>(1321f, -1000f, -1144f, 325f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-162f, 1187f, 413f), vec4<f32>(421f, -1018f, -823f, 433f)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-392f, 204f, -468f), vec4<f32>(-291f, 840f, -1124f, 913f)), 10912u, false), 359f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(-347f, 226f, -848f), vec4<f32>(1677f, 147f, -256f, 1586f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(1089f, -742f, -607f), vec4<f32>(1114f, 117f, 1572f, -691f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(736f, -1227f, 1005f), vec4<f32>(2164f, 316f, -1951f, 1634f)), 48964u, true), 1000f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1538f, 761f, 840f), vec4<f32>(-443f, 1357f, 461f, -722f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(1519f, -1347f, 1566f), vec4<f32>(1000f, -721f, -779f, -924f)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-2206f, -1826f, 503f), vec4<f32>(304f, -618f, 667f, -1036f)), 5655u, false), -121f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(488f, 1000f, 1000f), vec4<f32>(1860f, -623f, -994f, 159f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-822f, -410f, -684f), vec4<f32>(225f, 3233f, -647f, 361f)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-401f, 343f, -1000f), vec4<f32>(345f, -123f, -1230f, 1888f)), 0u, false), -874f, Struct_1(vec3<bool>(true, true, false), vec3<f32>(-244f, 1028f, 382f), vec4<f32>(-571f, 270f, -308f, -173f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(1015f, 710f, 1446f), vec4<f32>(-1298f, -606f, 130f, -851f)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(1522f, 671f, 1553f), vec4<f32>(-1000f, 402f, -1000f, 677f)), 46702u, true), 1974f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(-146f, -459f, -798f), vec4<f32>(2749f, -983f, -718f, -187f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(909f, -1163f, 1513f), vec4<f32>(729f, -1000f, 1166f, -1242f)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-524f, 464f, 445f), vec4<f32>(108f, 212f, -1307f, 391f)), 0u, false), -1363f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(-168f, -573f, -1000f), vec4<f32>(882f, 1001f, -511f, 871f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1705f, -929f, 1048f), vec4<f32>(-1404f, -1000f, -1404f, -917f)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1202f, 1340f, -911f), vec4<f32>(-582f, -333f, 432f, 1587f)), 63822u, true), -1077f, Struct_1(vec3<bool>(false, true, true), vec3<f32>(-1000f, -472f, 678f), vec4<f32>(1075f, -1378f, 360f, 1352f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(569f, 336f, 1000f), vec4<f32>(503f, 1000f, -487f, -410f)), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-1730f, -120f, -218f), vec4<f32>(502f, -449f, 797f, -568f)), 2140u, false), -1447f, Struct_1(vec3<bool>(true, true, false), vec3<f32>(675f, 1693f, -965f), vec4<f32>(2064f, 1123f, 972f, -178f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(1414f, 1308f, 1000f), vec4<f32>(683f, 958f, 2207f, -1258f)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-218f, 1184f, -1884f), vec4<f32>(-1086f, -769f, 546f, -515f)), 4294967295u, true), 993f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(1043f, -175f, -190f), vec4<f32>(400f, 607f, -1157f, 1489f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(178f, 1771f, -327f), vec4<f32>(-311f, -219f, -306f, 1151f)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-209f, -109f, -572f), vec4<f32>(668f, -374f, -364f, 1000f)), 0u, true), 326f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(-130f, -420f, 1314f), vec4<f32>(111f, 1523f, -379f, -972f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(357f, -1000f, 378f), vec4<f32>(1420f, -811f, -1472f, -1127f)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1287f, 449f, -1354f), vec4<f32>(-1421f, 169f, -443f, -478f)), 1u, false), -891f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(1627f, 1120f, 1000f), vec4<f32>(180f, -1747f, 864f, 1000f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(2116f, 236f, -2174f), vec4<f32>(-724f, 364f, 943f, 1269f)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1661f, -590f, 1358f), vec4<f32>(494f, -568f, 179f, 706f)), 0u, true), -1368f, Struct_1(vec3<bool>(false, false, true), vec3<f32>(-817f, 1361f, -1000f), vec4<f32>(1000f, -1005f, -2137f, -1448f))));

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(2004f, -1333f, 2059f), vec4<f32>(1312f, 328f, -252f, -1041f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(739f, 110f, 1230f), vec4<f32>(663f, -625f, -1077f, -513f)), 43973u, false), -1111f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1459f, 159f, 533f), vec4<f32>(-1751f, 1813f, -1079f, 993f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(1910f, -645f, -422f), vec4<f32>(874f, 936f, 639f, -1000f)), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-568f, -265f, 168f), vec4<f32>(-1643f, -1000f, -1300f, 752f)), 62794u, true), -1466f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(1329f, 1127f, -1000f), vec4<f32>(-590f, 532f, 736f, -1000f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(597f, 445f, 133f), vec4<f32>(1681f, -997f, 653f, 3098f)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(655f, 1000f, 500f), vec4<f32>(-287f, 188f, -722f, -1234f)), 0u, false), -178f, Struct_1(vec3<bool>(true, true, false), vec3<f32>(301f, 1568f, 625f), vec4<f32>(1054f, 768f, 1263f, -499f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(-489f, 681f, -1709f), vec4<f32>(1574f, 946f, 797f, -871f)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(295f, -1720f, -155f), vec4<f32>(-1024f, -588f, 1189f, 1025f)), 113479u, false), 331f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1099f, 656f, 2496f), vec4<f32>(-248f, 280f, 373f, -551f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(674f, -656f, 1916f), vec4<f32>(1374f, 891f, -345f, -1000f)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(1751f, 1000f, -831f), vec4<f32>(-1104f, -467f, 1154f, 414f)), 0u, true), -1507f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(544f, -1453f, 523f), vec4<f32>(641f, -790f, 1216f, -879f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(-349f, -1372f, 900f), vec4<f32>(537f, 1638f, -198f, -1064f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1821f, -2428f, -489f), vec4<f32>(144f, -1398f, -2585f, -1000f)), 0u, true), -209f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(-173f, -1266f, 580f), vec4<f32>(1000f, 1766f, 554f, -419f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-345f, 1503f, 404f), vec4<f32>(1000f, -424f, -1014f, 203f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-996f, -701f, -633f), vec4<f32>(1103f, -1000f, 1000f, -1000f)), 23730u, false), -495f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1553f, -668f, 2484f), vec4<f32>(-374f, 1294f, -2151f, -175f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-1216f, -873f, -1931f), vec4<f32>(-642f, 508f, -876f, 429f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-861f, 1138f, -540f), vec4<f32>(1906f, -1290f, -1319f, 1327f)), 0u, true), 1000f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(-725f, 692f, 1037f), vec4<f32>(-636f, 829f, -377f, 1080f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(580f, -232f, 564f), vec4<f32>(-1293f, 762f, -1000f, -296f)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-355f, -428f, 711f), vec4<f32>(-2186f, -960f, 790f, 893f)), 9384u, true), 206f, Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1000f, -1000f, -570f), vec4<f32>(937f, -706f, 872f, 1000f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(821f, 526f, 1596f), vec4<f32>(-734f, -237f, -693f, -1228f)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(836f, -1490f, -782f), vec4<f32>(-473f, 269f, 1143f, -565f)), 31326u, false), 725f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(-175f, -698f, 886f), vec4<f32>(-110f, -484f, -1000f, -366f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-310f, -778f, 1414f), vec4<f32>(119f, 423f, 1000f, 710f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-395f, 1659f, 1789f), vec4<f32>(1773f, -873f, 234f, 1422f)), 15987u, false), 2025f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(-729f, -801f, -1088f), vec4<f32>(-239f, 825f, -735f, -747f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(-365f, 540f, -226f), vec4<f32>(-194f, -1001f, -815f, 1418f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(253f, 488f, 254f), vec4<f32>(-338f, -1494f, -1807f, -1941f)), 26145u, true), 232f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-862f, -1631f, 1210f), vec4<f32>(210f, -1071f, 1000f, -1494f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1706f, 235f, 1247f), vec4<f32>(985f, 1358f, -1689f, 175f)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(1757f, 125f, 1995f), vec4<f32>(211f, -1154f, -1134f, -132f)), 1u, true), -1069f, Struct_1(vec3<bool>(false, true, true), vec3<f32>(-140f, -117f, -1081f), vec4<f32>(-535f, -1573f, 530f, 2612f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1945f, -1024f, -710f), vec4<f32>(1000f, -422f, -705f, 447f)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(1000f, -1311f, -867f), vec4<f32>(-323f, -761f, 488f, -1351f)), 4294967295u, true), -753f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(-281f, 182f, -1496f), vec4<f32>(-310f, -933f, 1173f, -113f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-623f, 394f, -140f), vec4<f32>(109f, 1125f, -173f, -678f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(567f, 120f, 1291f), vec4<f32>(1086f, 1223f, 3325f, -279f)), 0u, false), 1000f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(1012f, -410f, -1789f), vec4<f32>(311f, 2400f, -570f, 692f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1098f, 137f, 1336f), vec4<f32>(917f, -2978f, -547f, 1486f)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-725f, -745f, 761f), vec4<f32>(-1502f, -227f, -1075f, 1000f)), 32772u, true), -1593f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(1263f, -1000f, 423f), vec4<f32>(434f, 467f, -1631f, 1153f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1044f, -868f, -862f), vec4<f32>(-1127f, 1000f, -1156f, -745f)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-428f, 554f, -996f), vec4<f32>(1601f, 378f, -753f, -621f)), 20877u, true), 144f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(-342f, -490f, 1235f), vec4<f32>(565f, 1016f, -855f, 598f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(-979f, -1200f, -1156f), vec4<f32>(1638f, 1777f, -1000f, 913f)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-1221f, 978f, -181f), vec4<f32>(812f, 328f, 1311f, -453f)), 1u, false), -192f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1000f, -505f, -831f), vec4<f32>(1094f, 819f, 1000f, -1325f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1000f, 654f, 1033f), vec4<f32>(-259f, -1449f, 880f, -667f)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(476f, 1547f, 1492f), vec4<f32>(-1866f, 210f, 743f, -1534f)), 1454u, false), 157f, Struct_1(vec3<bool>(false, true, true), vec3<f32>(221f, -554f, 3029f), vec4<f32>(-168f, 961f, -346f, 252f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(1944f, 1993f, 359f), vec4<f32>(-1405f, 2539f, -1613f, -640f)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-853f, -104f, -922f), vec4<f32>(507f, -845f, -321f, -2314f)), 0u, true), -1000f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1785f, -275f, 576f), vec4<f32>(2088f, 454f, 871f, 318f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(-474f, 321f, -419f), vec4<f32>(-761f, 350f, -225f, -177f)), Struct_1(vec3<bool>(false, true, true), vec3<f32>(743f, 444f, -560f), vec4<f32>(-426f, 769f, 253f, -1964f)), 4294967295u, true), -2164f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1518f, 718f, -1095f), vec4<f32>(-670f, -1616f, -521f, 1182f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(-126f, 107f, 117f), vec4<f32>(2078f, -442f, -144f, -1069f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1747f, -1000f, 772f), vec4<f32>(168f, 1000f, 681f, -1363f)), 14249u, false), 1376f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(296f, 1000f, -2154f), vec4<f32>(-1061f, 581f, -1344f, 854f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(555f, 1076f, 1154f), vec4<f32>(-1322f, -2076f, -800f, 810f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-163f, -455f, -434f), vec4<f32>(748f, -414f, 1119f, 1468f)), 1u, false), -1264f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(-1227f, 918f, -2006f), vec4<f32>(-961f, 1347f, 2113f, 1000f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(168f, 344f, 1000f), vec4<f32>(276f, -339f, -515f, -1213f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1000f, -1898f, -1657f), vec4<f32>(632f, -460f, -914f, -1089f)), 110256u, false), 1054f, Struct_1(vec3<bool>(true, false, true), vec3<f32>(1290f, -400f, -607f), vec4<f32>(-811f, 507f, 612f, 830f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(784f, -563f, 501f), vec4<f32>(2075f, -993f, -2316f, 1000f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-891f, -1000f, 1000f), vec4<f32>(1355f, -415f, 466f, -602f)), 4294967295u, false), -552f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(-651f, 1195f, -1000f), vec4<f32>(1355f, -1704f, 1046f, -3120f))), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(373f, -1000f, -1066f), vec4<f32>(-439f, 1159f, 1827f, 724f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1302f, -213f, -622f), vec4<f32>(-1742f, 422f, 425f, 357f)), 0u, false), 330f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-135f, 894f, -245f), vec4<f32>(351f, 787f, -1853f, -2148f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(712f, 714f, -260f), vec4<f32>(-884f, -181f, -346f, 1025f)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(409f, 1208f, 800f), vec4<f32>(-1085f, 1000f, 1000f, 164f)), 9653u, false), -751f, Struct_1(vec3<bool>(true, true, false), vec3<f32>(372f, 326f, 1000f), vec4<f32>(123f, -859f, -443f, 1018f))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(1170f, 727f, -1000f), vec4<f32>(1344f, -1001f, 706f, 541f)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(1798f, -698f, -151f), vec4<f32>(372f, -136f, 887f, 164f)), 13963u, true), -1000f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(305f, 1128f, 1380f), vec4<f32>(-797f, 713f, -812f, -788f))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = firstTrailingBit(-40718i);
    let var_1 = Struct_4(arg_0.x, max(~(~vec3<u32>(u_input.a, u_input.a, u_input.b.x)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.a, 24538u, u_input.a), vec3<u32>(31043u, u_input.a, u_input.a), vec3<bool>(true, true, false)) | ~vec3<u32>(34329u, u_input.b.x, 0u), vec3<u32>(0u, u_input.a, 23807u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.b.x), vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), vec3<u32>(u_input.a, u_input.b.x, 1u)), ~(~vec3<u32>(u_input.b.x, u_input.a, u_input.b.x)))), Struct_2(Struct_1(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1627f, 107f, 1427f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-424f, -927f, 1368f, 125f)), vec4<f32>(-744f, 358f, 723f, -1201f))), Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(717f, 935f, -803f)))), vec4<f32>(-216f, -1386f, -1713f, _wgslsmith_f_op_f32(sign(900f)))), 64101u, true), 0u);
    var var_2 = var_1;
    global1 = array<Struct_3, 28>();
    var var_3 = vec3<bool>(min(u_input.b.x, ~u_input.b.x) >= 4294967295u, false, true);
    return vec3<bool>(var_1.c.b.a.x, all(!var_1.c.b.a.xy), any(!(!select(var_3.zy, vec2<bool>(var_2.c.d, var_1.c.a.a.x), var_3.x))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    global0 = array<Struct_3, 26>();
    let var_0 = Struct_3(Struct_2(Struct_1(func_3(firstTrailingBit(vec2<i32>(-2147483647i, -2147483647i))), _wgslsmith_f_op_vec3_f32(-arg_0.b.c.yyw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.c + vec4<f32>(arg_0.a.c.x, -254f, 364f, 194f)))), arg_0.b, abs(_wgslsmith_sub_u32(4294967295u, u_input.a) >> (1u % 32u)), arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-616f * arg_1)) * arg_1)), Struct_1(!vec3<bool>(arg_0.b.a.x && arg_0.d, arg_0.b.b.x < -288f, arg_0.d), vec3<f32>(-306f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b.c.x))), -618f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(256f, arg_1, arg_1, arg_0.b.b.x), vec4<f32>(-959f, -669f, 2347f, 958f)) * _wgslsmith_f_op_vec4_f32(-arg_0.a.c)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_0.a.c - vec4<f32>(1099f, 2733f, -1481f, arg_0.a.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_0.b.c.x, arg_0.b.b.x, -1456f) * arg_0.a.c))))));
    var var_1 = ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(37673u, u_input.a, 1u), _wgslsmith_sub_u32(u_input.a, 63761u)), vec2<u32>(arg_3.x, u_input.a) & abs(arg_3)));
    global0 = array<Struct_3, 26>();
    let var_2 = _wgslsmith_mult_i32(-max(1i, countOneBits(2147483647i)), ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(7019i, -9253i, 0i), vec3<i32>(20649i, -33910i, 11421i), vec3<bool>(var_0.a.b.a.x, arg_0.b.a.x, var_0.c.a.x)), vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, _wgslsmith_clamp_i32(-30658i, 0i, 28075i), 36781i >> (1u % 32u))));
    return var_0.a.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_4(_wgslsmith_clamp_i32(16142i << (u_input.a % 32u), _wgslsmith_clamp_i32(max(1i, -1i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(17877i, 20853i), vec2<i32>(1i, 1i)), firstTrailingBit(vec2<i32>(-11858i, 0i))), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-32952i, 51654i, -1i), vec3<i32>(-24759i, -44826i, 2147483647i)))), firstTrailingBit(~(21418i << (0u % 32u)))), _wgslsmith_div_vec3_u32(abs(~(~vec3<u32>(arg_0.c, arg_2.x, 0u))), reverseBits(abs(~vec3<u32>(0u, u_input.b.x, 1u)))), arg_0, ~(~1u));
    var var_1 = var_0;
    global1 = array<Struct_3, 28>();
    var_1 = var_0;
    let var_2 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x * -1936f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a.c.x - arg_1.b.x) - -108f), (_wgslsmith_div_i32(-1i, 2147483647i) | (var_0.a ^ var_1.a)) > var_0.a, !arg_1.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.a.b - vec3<f32>(-163f, func_2(Struct_2(var_1.c.b, Struct_1(vec3<bool>(false, true, false), vec3<f32>(var_0.c.a.b.x, var_0.c.b.b.x, var_0.c.b.b.x), vec4<f32>(-729f, 1624f, -589f, 806f)), 59167u, arg_0.a.a.x), 853f, arg_2.x, vec2<u32>(1u, 94788u)).c.x, func_2(var_1.c, 755f, arg_2.x, u_input.b).b.x)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1085f, _wgslsmith_f_op_f32(var_0.c.a.b.x * var_1.c.b.b.x), -153f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.yyz), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-190f, var_0.c.b.b.x, arg_3.x))))))), vec4<f32>(-2221f, arg_1.c.x, arg_0.a.c.x, -648f));
    return 17498i;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    global1 = array<Struct_3, 28>();
    let var_0 = -2401f;
    var var_1 = reverseBits(40126u);
    var var_2 = select(vec3<i32>(_wgslsmith_div_i32(max(_wgslsmith_clamp_i32(27484i, arg_1, -40566i), select(arg_1, 18931i, arg_2.b.a.x)), i32(-1i) * -arg_1), func_4(Struct_2(func_2(arg_2, var_0, arg_0.c, vec2<u32>(1u, arg_0.c)), Struct_1(arg_2.b.a, vec3<f32>(-611f, -1083f, var_0), vec4<f32>(arg_2.b.b.x, var_0, -752f, var_0)), arg_2.c, false), Struct_1(vec3<bool>(false, arg_0.d, arg_0.a.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, arg_2.b.b.x, -832f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.c.x, var_0, -1297f, 874f))), u_input.b | u_input.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(arg_2.a.c))))), -62742i), _wgslsmith_clamp_vec3_i32(~(vec3<i32>(arg_1, -2147483647i, arg_1) >> (reverseBits(vec3<u32>(arg_0.c, arg_2.c, 59117u)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(~vec3<i32>(arg_1, -1i, -1i), vec3<i32>(-2147483647i, -10141i, _wgslsmith_mult_i32(arg_1, 1i))), ~(vec3<i32>(-1i, arg_1, 24870i) ^ vec3<i32>(arg_1, 1i, 2147483647i)) & -(vec3<i32>(-40419i, 1i, arg_1) | vec3<i32>(arg_1, 37769i, 1i))), !vec3<bool>(false | !arg_2.d, _wgslsmith_clamp_u32(u_input.a, 4589u, 15925u) <= min(98084u, arg_2.c), all(arg_2.a.a)));
    return arg_2.b;
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    global1 = array<Struct_3, 28>();
    var var_0 = abs(vec3<u32>(38173u, abs(1u), 60229u));
    let var_1 = !arg_1.c.a.x;
    global0 = array<Struct_3, 26>();
    global1 = array<Struct_3, 28>();
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(277u, firstLeadingBit(4294967295u), var_0.x), select(max(vec3<u32>(0u, var_0.x, u_input.a), vec3<u32>(arg_1.a.c, 9037u, 12271u)), vec3<u32>(17621u, arg_1.a.c, 1u), func_2(Struct_2(Struct_1(arg_1.a.b.a, arg_1.c.c.wyz, vec4<f32>(arg_1.c.c.x, arg_1.b, arg_1.c.b.x, arg_1.b)), Struct_1(vec3<bool>(arg_1.c.a.x, true, arg_1.c.a.x), vec3<f32>(arg_1.b, arg_1.a.b.c.x, 2397f), arg_1.a.a.c), u_input.b.x, var_1), 535f, var_0.x, vec2<u32>(4294967295u, arg_1.a.c)).a.x)), ~(vec3<u32>(12726u, u_input.b.x, var_0.x) ^ _wgslsmith_div_vec3_u32(vec3<u32>(63810u, 1u, 68282u), vec3<u32>(0u, var_0.x, 56468u)))) & var_0.x, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(15783i, -29672i << ((max(0u, u_input.b.x) | (u_input.b.x | u_input.a)) % 32u), firstTrailingBit(_wgslsmith_add_i32(1i, 21148i)) | ~0i);
    var var_1 = false;
    global0 = array<Struct_3, 26>();
    var var_2 = func_5(-max(var_0.x, 0i), Struct_3(Struct_2(func_1(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-358f, -613f, -912f), vec4<f32>(-1115f, 1000f, -2062f, -648f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1224f, 1235f, -1967f), vec4<f32>(-236f, 608f, -327f, -500f)), u_input.a, false), ~36544i, Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(192f, 1431f, 1347f), vec4<f32>(489f, 863f, -1187f, 427f)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(525f, 609f, 1227f), vec4<f32>(-663f, -845f, -534f, 1335f)), u_input.b.x, true)), Struct_1(func_2(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(753f, 452f, -1000f), vec4<f32>(412f, 239f, -1814f, 135f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(732f, 1939f, -2436f), vec4<f32>(563f, 298f, -1000f, -1997f)), u_input.a, false), -477f, 53535u, vec2<u32>(27787u, u_input.a)).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 618f, 1180f)), func_2(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1383f, 1000f, -1968f), vec4<f32>(139f, -1456f, 1536f, -276f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-337f, -1110f, 147f), vec4<f32>(1229f, -1073f, -349f, 698f)), 14710u, false), -1547f, 1u, vec2<u32>(1u, u_input.b.x)).c), ~65994u, ~var_0.x <= _wgslsmith_div_i32(42680i, -73628i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(-254f, -1967f, 1779f), vec4<f32>(-430f, 960f, 1000f, -244f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-603f, 240f, 483f), vec4<f32>(2205f, 520f, 633f, 147f)), u_input.b.x, true), 2553f, u_input.b.x, vec2<u32>(u_input.b.x, 40078u)).c.x, _wgslsmith_f_op_f32(f32(-1f) * -957f))), Struct_1(vec3<bool>(true, any(vec3<bool>(false, false, false)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1301f, 442f, -779f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1384f, 1204f, 877f))), vec4<f32>(1000f, -1091f, _wgslsmith_f_op_f32(f32(-1f) * -938f), _wgslsmith_f_op_f32(128f + 711f)))));
    global0 = array<Struct_3, 26>();
    let var_3 = global1[_wgslsmith_index_u32(44681u, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(((var_2.a.c | ~0u) >> (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, 1u), 104114u, 4294967295u) % 32u)) ^ _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_2.a.c | var_3.a.c, 68528u, ~u_input.a), ~min(var_2.a.c, 14403u)), vec4<f32>(var_3.b, 888f, 1000f, -3161f), firstTrailingBit(~abs(vec4<u32>(u_input.b.x, 1u, 64189u, var_3.a.c)) | select(firstTrailingBit(vec4<u32>(0u, 41671u, 41590u, 5825u)), ~vec4<u32>(var_3.a.c, u_input.a, u_input.b.x, 28995u), vec4<bool>(true, var_2.c.a.x, var_2.a.a.a.x, true))));
}

