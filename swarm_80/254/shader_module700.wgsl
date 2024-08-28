struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_3(vec4<f32>(-213f, 838f, 1271f, -205f), Struct_2(vec2<u32>(54041u, 0u), vec4<u32>(66085u, 4294967295u, 40678u, 4294967295u), true, Struct_1(vec3<f32>(131f, 747f, 1930f), 1683f, vec4<f32>(-1531f, 499f, -2006f, 261f), vec2<bool>(true, true), false), Struct_1(vec3<f32>(-120f, 251f, 346f), -653f, vec4<f32>(358f, -332f, 894f, -352f), vec2<bool>(true, false), false)), -1i, 129f, 69944u), vec4<f32>(-444f, 1824f, 1000f, 1000f), Struct_2(vec2<u32>(4294967295u, 3520u), vec4<u32>(9178u, 1u, 0u, 43424u), false, Struct_1(vec3<f32>(1295f, -1000f, -1093f), -311f, vec4<f32>(-790f, 510f, -1000f, 683f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(-1007f, 137f, 283f), 1000f, vec4<f32>(664f, -626f, -301f, 962f), vec2<bool>(true, false), true)), vec2<f32>(-1000f, 1000f)), Struct_4(Struct_3(vec4<f32>(-365f, 1561f, 475f, -900f), Struct_2(vec2<u32>(31349u, 1u), vec4<u32>(4294967295u, 35192u, 53124u, 4294967295u), false, Struct_1(vec3<f32>(372f, 255f, -826f), -802f, vec4<f32>(1436f, 241f, -1000f, 621f), vec2<bool>(true, false), true), Struct_1(vec3<f32>(-1000f, 1942f, 563f), 256f, vec4<f32>(1100f, -243f, 1000f, 879f), vec2<bool>(true, false), true)), 32943i, 443f, 23732u), vec4<f32>(-574f, 737f, 1000f, -461f), Struct_2(vec2<u32>(0u, 1u), vec4<u32>(64810u, 0u, 0u, 4294967295u), true, Struct_1(vec3<f32>(-547f, 894f, 437f), -1000f, vec4<f32>(-324f, 276f, 1000f, 1000f), vec2<bool>(false, false), false), Struct_1(vec3<f32>(199f, 944f, 514f), 294f, vec4<f32>(783f, -405f, 463f, -2361f), vec2<bool>(true, true), true)), vec2<f32>(-114f, -1069f)), Struct_4(Struct_3(vec4<f32>(-2219f, -730f, -844f, 1883f), Struct_2(vec2<u32>(47894u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), false, Struct_1(vec3<f32>(-1437f, 1000f, -1646f), -1995f, vec4<f32>(-998f, -1358f, 991f, -1181f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(-370f, 683f, -366f), -613f, vec4<f32>(1856f, -491f, 216f, -1136f), vec2<bool>(false, true), false)), -1i, -1000f, 68822u), vec4<f32>(-347f, -526f, -489f, -404f), Struct_2(vec2<u32>(75856u, 4294967295u), vec4<u32>(4294967295u, 80608u, 0u, 49875u), false, Struct_1(vec3<f32>(226f, 336f, -790f), -1233f, vec4<f32>(-1158f, 1025f, -1393f, -155f), vec2<bool>(true, false), true), Struct_1(vec3<f32>(574f, 2206f, -894f), 532f, vec4<f32>(1441f, -567f, 1712f, -493f), vec2<bool>(true, false), false)), vec2<f32>(788f, 1368f)), Struct_4(Struct_3(vec4<f32>(-1000f, 1215f, 2026f, 116f), Struct_2(vec2<u32>(0u, 4294967295u), vec4<u32>(1u, 1u, 0u, 7118u), true, Struct_1(vec3<f32>(-1398f, 947f, -1293f), -1001f, vec4<f32>(-633f, -575f, -357f, -470f), vec2<bool>(true, false), true), Struct_1(vec3<f32>(1514f, 224f, -2052f), 855f, vec4<f32>(467f, -606f, 2229f, -3055f), vec2<bool>(true, false), false)), -102269i, -893f, 25080u), vec4<f32>(-1495f, -209f, -728f, 298f), Struct_2(vec2<u32>(92231u, 0u), vec4<u32>(0u, 73349u, 31681u, 0u), true, Struct_1(vec3<f32>(-684f, 317f, 1117f), -2248f, vec4<f32>(1641f, -545f, -618f, 813f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(-1074f, -678f, 1019f), 1595f, vec4<f32>(-772f, 485f, -274f, -1000f), vec2<bool>(false, true), false)), vec2<f32>(1000f, 454f)), Struct_4(Struct_3(vec4<f32>(-1669f, -1355f, -704f, 799f), Struct_2(vec2<u32>(35158u, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 0u), false, Struct_1(vec3<f32>(829f, 1014f, 201f), -1039f, vec4<f32>(-1991f, -453f, 246f, -177f), vec2<bool>(true, true), false), Struct_1(vec3<f32>(-931f, 1009f, 341f), 596f, vec4<f32>(1248f, -1415f, 340f, -2060f), vec2<bool>(false, false), true)), i32(-2147483648), 1259f, 0u), vec4<f32>(-932f, -368f, -570f, 202f), Struct_2(vec2<u32>(4294967295u, 115372u), vec4<u32>(28139u, 91544u, 3881u, 39511u), false, Struct_1(vec3<f32>(-479f, 1803f, -1765f), -851f, vec4<f32>(-330f, -658f, 1113f, 1325f), vec2<bool>(false, true), false), Struct_1(vec3<f32>(-543f, 1245f, -1783f), 144f, vec4<f32>(-1202f, -1727f, -196f, 709f), vec2<bool>(false, true), false)), vec2<f32>(900f, -499f)), Struct_4(Struct_3(vec4<f32>(-106f, -1000f, -392f, 342f), Struct_2(vec2<u32>(47460u, 4294967295u), vec4<u32>(1u, 46245u, 4294967295u, 68830u), false, Struct_1(vec3<f32>(1339f, -246f, -429f), 369f, vec4<f32>(-372f, 292f, 1044f, 2331f), vec2<bool>(false, false), true), Struct_1(vec3<f32>(-1844f, 479f, -753f), 311f, vec4<f32>(1496f, -251f, 659f, 212f), vec2<bool>(false, false), false)), -35475i, 716f, 4294967295u), vec4<f32>(101f, 1000f, 2317f, 1004f), Struct_2(vec2<u32>(3507u, 4294967295u), vec4<u32>(7811u, 12374u, 27605u, 8251u), false, Struct_1(vec3<f32>(1563f, -829f, 398f), -146f, vec4<f32>(102f, -838f, 371f, -622f), vec2<bool>(false, false), false), Struct_1(vec3<f32>(951f, -1799f, 715f), -566f, vec4<f32>(-767f, 259f, -1020f, 1000f), vec2<bool>(true, false), false)), vec2<f32>(-1000f, 231f)), Struct_4(Struct_3(vec4<f32>(238f, 1000f, 221f, 592f), Struct_2(vec2<u32>(1u, 44284u), vec4<u32>(42778u, 4294967295u, 1u, 4294967295u), true, Struct_1(vec3<f32>(-1776f, 567f, 2366f), -287f, vec4<f32>(211f, 432f, -1084f, -1488f), vec2<bool>(true, true), true), Struct_1(vec3<f32>(-1000f, -1597f, -1000f), 491f, vec4<f32>(-1000f, 487f, 1000f, -162f), vec2<bool>(false, true), false)), 62205i, -694f, 28139u), vec4<f32>(1368f, 1335f, 1238f, 1000f), Struct_2(vec2<u32>(4294967295u, 451u), vec4<u32>(0u, 0u, 0u, 42606u), false, Struct_1(vec3<f32>(-573f, -1041f, 865f), -311f, vec4<f32>(945f, -2055f, -918f, -1968f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(1721f, 186f, 405f), -1483f, vec4<f32>(1032f, -717f, -582f, -282f), vec2<bool>(false, false), true)), vec2<f32>(126f, 1350f)), Struct_4(Struct_3(vec4<f32>(-625f, 434f, 2392f, 1000f), Struct_2(vec2<u32>(0u, 14303u), vec4<u32>(3495u, 4294967295u, 41984u, 4294967295u), false, Struct_1(vec3<f32>(-241f, -4358f, 1255f), -486f, vec4<f32>(-362f, -1527f, 349f, -1676f), vec2<bool>(true, true), true), Struct_1(vec3<f32>(1363f, 665f, 1488f), -147f, vec4<f32>(1000f, -821f, 1000f, 767f), vec2<bool>(true, false), true)), -1491i, 303f, 1u), vec4<f32>(648f, 218f, -1022f, -173f), Struct_2(vec2<u32>(734u, 0u), vec4<u32>(44879u, 61193u, 5636u, 1u), true, Struct_1(vec3<f32>(533f, -435f, 1000f), 1426f, vec4<f32>(-376f, -890f, -566f, 1126f), vec2<bool>(true, true), true), Struct_1(vec3<f32>(-107f, -1654f, 126f), -163f, vec4<f32>(-1948f, -1129f, 624f, -720f), vec2<bool>(true, true), true)), vec2<f32>(1280f, 1350f)), Struct_4(Struct_3(vec4<f32>(-365f, -869f, -180f, -820f), Struct_2(vec2<u32>(1u, 43449u), vec4<u32>(8949u, 0u, 55592u, 0u), false, Struct_1(vec3<f32>(-597f, 506f, -704f), -699f, vec4<f32>(1000f, -243f, 1651f, 1073f), vec2<bool>(true, true), true), Struct_1(vec3<f32>(-786f, 379f, 1488f), -1116f, vec4<f32>(1696f, -1684f, -1799f, 144f), vec2<bool>(true, false), false)), 68139i, 1000f, 79221u), vec4<f32>(363f, -1000f, -650f, 1448f), Struct_2(vec2<u32>(4294967295u, 523u), vec4<u32>(74713u, 0u, 14202u, 10086u), false, Struct_1(vec3<f32>(-1384f, -703f, -1646f), -952f, vec4<f32>(683f, -1762f, -1775f, -1851f), vec2<bool>(false, true), false), Struct_1(vec3<f32>(-460f, 517f, -195f), -332f, vec4<f32>(-986f, -157f, 1290f, -229f), vec2<bool>(true, true), false)), vec2<f32>(1415f, -1672f)), Struct_4(Struct_3(vec4<f32>(1034f, -394f, -1615f, -111f), Struct_2(vec2<u32>(81966u, 4294967295u), vec4<u32>(1u, 9267u, 10513u, 30636u), false, Struct_1(vec3<f32>(-1175f, 297f, 607f), 1012f, vec4<f32>(-1284f, -146f, -720f, 381f), vec2<bool>(false, true), true), Struct_1(vec3<f32>(719f, -1601f, -1148f), 600f, vec4<f32>(534f, 478f, 819f, 343f), vec2<bool>(false, false), false)), 4711i, 2305f, 1u), vec4<f32>(514f, -991f, 1360f, -244f), Struct_2(vec2<u32>(1106u, 0u), vec4<u32>(6997u, 74345u, 4294967295u, 15784u), true, Struct_1(vec3<f32>(-514f, -1322f, -1095f), -523f, vec4<f32>(557f, 352f, 1200f, -1000f), vec2<bool>(false, false), false), Struct_1(vec3<f32>(-1367f, 1173f, -928f), 1092f, vec4<f32>(396f, -1000f, 1881f, 1336f), vec2<bool>(true, true), false)), vec2<f32>(-2039f, -478f)), Struct_4(Struct_3(vec4<f32>(-560f, -829f, -1055f, 2267f), Struct_2(vec2<u32>(1u, 4294967295u), vec4<u32>(32812u, 41513u, 43363u, 4294967295u), false, Struct_1(vec3<f32>(1930f, -1000f, -1000f), -1089f, vec4<f32>(1721f, -2536f, 143f, 204f), vec2<bool>(true, true), true), Struct_1(vec3<f32>(206f, 590f, 1062f), 351f, vec4<f32>(-731f, 760f, 735f, 721f), vec2<bool>(false, true), true)), 24648i, 967f, 4294967295u), vec4<f32>(-457f, -463f, -128f, 607f), Struct_2(vec2<u32>(36226u, 4294967295u), vec4<u32>(1708u, 6947u, 0u, 1u), true, Struct_1(vec3<f32>(125f, -452f, -442f), -1167f, vec4<f32>(2185f, -403f, 507f, -1317f), vec2<bool>(true, false), true), Struct_1(vec3<f32>(-488f, -922f, -227f), 448f, vec4<f32>(-709f, 222f, 377f, 212f), vec2<bool>(true, true), true)), vec2<f32>(651f, -1562f)), Struct_4(Struct_3(vec4<f32>(303f, 1475f, 1682f, -1552f), Struct_2(vec2<u32>(32426u, 1u), vec4<u32>(74760u, 114273u, 23440u, 92u), false, Struct_1(vec3<f32>(-437f, -2151f, -1160f), 2442f, vec4<f32>(-708f, -921f, 1136f, -122f), vec2<bool>(false, true), true), Struct_1(vec3<f32>(-887f, -371f, 1000f), -340f, vec4<f32>(-208f, 1598f, -1042f, 1075f), vec2<bool>(true, true), false)), -1i, 198f, 12073u), vec4<f32>(106f, 338f, -595f, 110f), Struct_2(vec2<u32>(0u, 106404u), vec4<u32>(0u, 1u, 3469u, 5239u), true, Struct_1(vec3<f32>(-1114f, -700f, -1847f), -973f, vec4<f32>(-1529f, 265f, 2950f, 617f), vec2<bool>(false, false), false), Struct_1(vec3<f32>(1279f, -1038f, 2396f), -484f, vec4<f32>(-2268f, 439f, -1615f, -1000f), vec2<bool>(false, false), false)), vec2<f32>(1194f, 904f)), Struct_4(Struct_3(vec4<f32>(1222f, -1283f, -1087f, -550f), Struct_2(vec2<u32>(0u, 4124u), vec4<u32>(0u, 0u, 0u, 1u), true, Struct_1(vec3<f32>(-453f, 698f, -881f), -512f, vec4<f32>(-320f, -300f, 555f, 703f), vec2<bool>(true, true), true), Struct_1(vec3<f32>(662f, 1026f, -210f), -911f, vec4<f32>(398f, -1479f, 946f, 167f), vec2<bool>(false, false), false)), -27289i, 568f, 0u), vec4<f32>(454f, -1000f, 1000f, 1412f), Struct_2(vec2<u32>(1u, 73069u), vec4<u32>(4294967295u, 1u, 1u, 1u), false, Struct_1(vec3<f32>(-923f, -1002f, 1043f), 555f, vec4<f32>(1252f, -830f, -969f, -1588f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(-1414f, 146f, -416f), 1516f, vec4<f32>(-1709f, -1628f, 1000f, 1183f), vec2<bool>(true, false), true)), vec2<f32>(2301f, 1113f)), Struct_4(Struct_3(vec4<f32>(-1750f, 1433f, 523f, -1619f), Struct_2(vec2<u32>(1u, 4294967295u), vec4<u32>(4294967295u, 17944u, 1u, 0u), true, Struct_1(vec3<f32>(-1297f, 307f, -1194f), -1091f, vec4<f32>(-1282f, 232f, 403f, -1129f), vec2<bool>(false, false), false), Struct_1(vec3<f32>(481f, 170f, -438f), 1381f, vec4<f32>(914f, 1320f, -2646f, -1261f), vec2<bool>(false, false), true)), 6666i, 295f, 4294967295u), vec4<f32>(892f, -871f, 702f, 803f), Struct_2(vec2<u32>(0u, 0u), vec4<u32>(51447u, 17241u, 70069u, 29486u), true, Struct_1(vec3<f32>(499f, 329f, -455f), 1185f, vec4<f32>(-710f, -1668f, 242f, 494f), vec2<bool>(false, false), false), Struct_1(vec3<f32>(-1085f, -801f, -2915f), 838f, vec4<f32>(-756f, 216f, 336f, 449f), vec2<bool>(true, true), false)), vec2<f32>(482f, 2121f)), Struct_4(Struct_3(vec4<f32>(144f, 1492f, 852f, 754f), Struct_2(vec2<u32>(21307u, 0u), vec4<u32>(0u, 36162u, 4294967295u, 1u), true, Struct_1(vec3<f32>(-391f, 455f, 386f), -547f, vec4<f32>(-944f, -730f, -1073f, -1129f), vec2<bool>(false, false), true), Struct_1(vec3<f32>(-1573f, -1000f, 997f), 2062f, vec4<f32>(-587f, 1074f, -1000f, -148f), vec2<bool>(true, true), false)), 0i, 1056f, 1u), vec4<f32>(-764f, -166f, 1315f, -245f), Struct_2(vec2<u32>(1u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 9844u), true, Struct_1(vec3<f32>(-780f, 816f, 1188f), 524f, vec4<f32>(117f, -136f, -1013f, -447f), vec2<bool>(false, true), true), Struct_1(vec3<f32>(960f, 852f, -102f), 2724f, vec4<f32>(1207f, 358f, -917f, -668f), vec2<bool>(false, true), false)), vec2<f32>(-1081f, 864f)), Struct_4(Struct_3(vec4<f32>(1442f, 1000f, -1422f, -366f), Struct_2(vec2<u32>(50904u, 1u), vec4<u32>(0u, 0u, 0u, 0u), true, Struct_1(vec3<f32>(1004f, -536f, 1289f), 1585f, vec4<f32>(-452f, -1310f, 552f, -468f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(-710f, -1345f, 686f), -2002f, vec4<f32>(-505f, 788f, -558f, 340f), vec2<bool>(true, true), false)), 0i, -1335f, 31306u), vec4<f32>(-193f, -1000f, 774f, 152f), Struct_2(vec2<u32>(30964u, 36536u), vec4<u32>(51850u, 4294967295u, 1u, 0u), true, Struct_1(vec3<f32>(1000f, 1000f, -268f), -1014f, vec4<f32>(1512f, -841f, 435f, 2185f), vec2<bool>(false, false), false), Struct_1(vec3<f32>(-1463f, -111f, 437f), 200f, vec4<f32>(1548f, -1157f, -943f, 1000f), vec2<bool>(false, true), true)), vec2<f32>(1000f, 1472f)), Struct_4(Struct_3(vec4<f32>(1237f, -109f, 1435f, -1000f), Struct_2(vec2<u32>(0u, 0u), vec4<u32>(26575u, 11682u, 1u, 4294967295u), false, Struct_1(vec3<f32>(732f, -694f, 1346f), -157f, vec4<f32>(-1000f, 1772f, -391f, -197f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(-1332f, 1000f, 982f), -385f, vec4<f32>(1613f, -1000f, 1279f, -819f), vec2<bool>(true, false), false)), -1i, -1807f, 43862u), vec4<f32>(1017f, 2143f, -1334f, 1523f), Struct_2(vec2<u32>(46595u, 57951u), vec4<u32>(14935u, 1u, 4294967295u, 0u), true, Struct_1(vec3<f32>(702f, -529f, -1078f), 2260f, vec4<f32>(-193f, 203f, 1530f, -1918f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(320f, 1734f, -238f), -1000f, vec4<f32>(-589f, 583f, 1508f, 452f), vec2<bool>(true, true), false)), vec2<f32>(2006f, 1742f)), Struct_4(Struct_3(vec4<f32>(-843f, 150f, 1309f, 372f), Struct_2(vec2<u32>(1u, 42944u), vec4<u32>(1u, 1u, 0u, 0u), true, Struct_1(vec3<f32>(-561f, 1260f, -1944f), 423f, vec4<f32>(-330f, -449f, 1424f, 1112f), vec2<bool>(false, false), false), Struct_1(vec3<f32>(563f, -1328f, -325f), 1456f, vec4<f32>(-1133f, 101f, -484f, 2409f), vec2<bool>(false, true), true)), 0i, -1000f, 1u), vec4<f32>(-122f, -124f, 649f, -929f), Struct_2(vec2<u32>(0u, 1u), vec4<u32>(56180u, 41886u, 1u, 0u), true, Struct_1(vec3<f32>(-1017f, -812f, 152f), -1000f, vec4<f32>(-529f, -354f, 1686f, -439f), vec2<bool>(true, true), false), Struct_1(vec3<f32>(1390f, 1000f, -231f), -616f, vec4<f32>(1532f, 1464f, -104f, -322f), vec2<bool>(true, true), true)), vec2<f32>(-321f, 788f)), Struct_4(Struct_3(vec4<f32>(1664f, -1616f, -1045f, -1440f), Struct_2(vec2<u32>(11393u, 0u), vec4<u32>(1u, 4294967295u, 0u, 43307u), false, Struct_1(vec3<f32>(-1325f, -122f, -1000f), -112f, vec4<f32>(1194f, 1176f, -856f, -395f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(-736f, -517f, -1000f), -617f, vec4<f32>(138f, 304f, -1205f, 1335f), vec2<bool>(false, true), false)), 2147483647i, 1477f, 57511u), vec4<f32>(-161f, -135f, -737f, -619f), Struct_2(vec2<u32>(1u, 0u), vec4<u32>(4294967295u, 0u, 0u, 4216u), false, Struct_1(vec3<f32>(-1504f, -1827f, -562f), 662f, vec4<f32>(852f, -945f, -608f, -246f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(-1000f, 797f, 102f), -1000f, vec4<f32>(-658f, 884f, -723f, -379f), vec2<bool>(false, true), false)), vec2<f32>(-1501f, -243f)), Struct_4(Struct_3(vec4<f32>(320f, -694f, 1000f, -547f), Struct_2(vec2<u32>(48391u, 0u), vec4<u32>(1u, 4294967295u, 3245u, 11139u), true, Struct_1(vec3<f32>(-1339f, -1000f, 1328f), 2101f, vec4<f32>(-460f, -1327f, -2063f, -1183f), vec2<bool>(true, true), true), Struct_1(vec3<f32>(274f, 1816f, 520f), 752f, vec4<f32>(-343f, -103f, 1375f, -253f), vec2<bool>(false, false), true)), 2147483647i, 1332f, 25705u), vec4<f32>(-850f, -399f, -563f, -688f), Struct_2(vec2<u32>(4294967295u, 36822u), vec4<u32>(19570u, 84475u, 4294967295u, 0u), false, Struct_1(vec3<f32>(-245f, -539f, 721f), 631f, vec4<f32>(-1229f, -1000f, -1260f, 2925f), vec2<bool>(true, true), false), Struct_1(vec3<f32>(-404f, 102f, 610f), 1262f, vec4<f32>(-895f, 2613f, 1468f, -1087f), vec2<bool>(true, false), true)), vec2<f32>(628f, 256f)), Struct_4(Struct_3(vec4<f32>(231f, -804f, 483f, 1690f), Struct_2(vec2<u32>(25051u, 3843u), vec4<u32>(47413u, 4294967295u, 1u, 1u), true, Struct_1(vec3<f32>(-1134f, -187f, 919f), 243f, vec4<f32>(1437f, -476f, 588f, -397f), vec2<bool>(false, false), true), Struct_1(vec3<f32>(-2332f, -201f, -1495f), 605f, vec4<f32>(1066f, 103f, -942f, 677f), vec2<bool>(true, false), true)), -22875i, 160f, 4294967295u), vec4<f32>(490f, 244f, -592f, -606f), Struct_2(vec2<u32>(20877u, 15623u), vec4<u32>(10155u, 18768u, 1u, 2078u), true, Struct_1(vec3<f32>(1000f, 341f, -1678f), 1187f, vec4<f32>(277f, -667f, 1281f, 580f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(253f, -2385f, 1000f), -1000f, vec4<f32>(725f, 507f, -651f, -516f), vec2<bool>(true, true), true)), vec2<f32>(565f, -2067f)), Struct_4(Struct_3(vec4<f32>(637f, -1456f, -587f, 527f), Struct_2(vec2<u32>(4294967295u, 0u), vec4<u32>(2289u, 29677u, 4294967295u, 1u), true, Struct_1(vec3<f32>(-312f, -436f, 1169f), 642f, vec4<f32>(-209f, -416f, -699f, -1010f), vec2<bool>(false, true), true), Struct_1(vec3<f32>(401f, 651f, -656f), 1000f, vec4<f32>(857f, -1097f, 1054f, 710f), vec2<bool>(false, true), true)), i32(-2147483648), 924f, 4294967295u), vec4<f32>(-1732f, -916f, -1496f, -798f), Struct_2(vec2<u32>(66190u, 68054u), vec4<u32>(54611u, 1u, 26521u, 8492u), true, Struct_1(vec3<f32>(1270f, 1047f, 1000f), -329f, vec4<f32>(638f, -1475f, 1215f, 1000f), vec2<bool>(true, true), false), Struct_1(vec3<f32>(658f, -1099f, 1162f), -1374f, vec4<f32>(-698f, 104f, -846f, 522f), vec2<bool>(false, true), true)), vec2<f32>(-1000f, -632f)), Struct_4(Struct_3(vec4<f32>(-2249f, -1000f, -501f, -654f), Struct_2(vec2<u32>(13566u, 0u), vec4<u32>(30454u, 96610u, 19831u, 35384u), false, Struct_1(vec3<f32>(1129f, -1868f, -1000f), -776f, vec4<f32>(461f, -756f, 150f, -538f), vec2<bool>(true, true), false), Struct_1(vec3<f32>(-105f, 1000f, -1000f), -1604f, vec4<f32>(1998f, 1000f, 618f, -675f), vec2<bool>(false, false), true)), 1i, -714f, 57000u), vec4<f32>(1805f, -587f, 1000f, -1074f), Struct_2(vec2<u32>(1u, 1u), vec4<u32>(13911u, 4294967295u, 4294967295u, 45661u), true, Struct_1(vec3<f32>(-340f, 2165f, -248f), 1830f, vec4<f32>(108f, 950f, 1000f, 617f), vec2<bool>(false, false), false), Struct_1(vec3<f32>(776f, -232f, 314f), 509f, vec4<f32>(-702f, -1846f, -218f, -255f), vec2<bool>(false, false), false)), vec2<f32>(-1656f, -1306f)), Struct_4(Struct_3(vec4<f32>(1000f, 211f, 985f, 1138f), Struct_2(vec2<u32>(34028u, 8466u), vec4<u32>(1u, 13666u, 4294967295u, 0u), true, Struct_1(vec3<f32>(510f, -1220f, 1207f), 1000f, vec4<f32>(-226f, 279f, -151f, -592f), vec2<bool>(false, false), false), Struct_1(vec3<f32>(720f, 1416f, 326f), -1327f, vec4<f32>(127f, 1113f, -122f, 951f), vec2<bool>(false, true), true)), -1i, 482f, 0u), vec4<f32>(-1000f, 2410f, -627f, -1215f), Struct_2(vec2<u32>(1u, 6088u), vec4<u32>(1u, 0u, 18852u, 11421u), true, Struct_1(vec3<f32>(-979f, 887f, 1000f), -1421f, vec4<f32>(-551f, 1000f, -167f, 1000f), vec2<bool>(true, true), true), Struct_1(vec3<f32>(-1117f, -406f, 976f), 597f, vec4<f32>(-1000f, -1246f, -264f, 1297f), vec2<bool>(true, false), false)), vec2<f32>(-1218f, 282f)), Struct_4(Struct_3(vec4<f32>(1658f, 600f, 557f, -418f), Struct_2(vec2<u32>(21323u, 4294967295u), vec4<u32>(0u, 4294967295u, 29561u, 58059u), false, Struct_1(vec3<f32>(-686f, -528f, 733f), -396f, vec4<f32>(-449f, -214f, 662f, -1000f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(436f, 376f, -406f), 1004f, vec4<f32>(253f, -144f, -1303f, 232f), vec2<bool>(false, true), false)), -1i, 323f, 1u), vec4<f32>(-609f, 225f, 1482f, 588f), Struct_2(vec2<u32>(4294967295u, 57931u), vec4<u32>(1u, 10652u, 19670u, 23600u), true, Struct_1(vec3<f32>(1117f, -1928f, -1634f), 1483f, vec4<f32>(-1000f, -642f, 297f, 1418f), vec2<bool>(true, true), false), Struct_1(vec3<f32>(-176f, -1835f, -2198f), -1000f, vec4<f32>(1000f, 1413f, -1362f, -1062f), vec2<bool>(true, true), false)), vec2<f32>(772f, 269f)), Struct_4(Struct_3(vec4<f32>(387f, -2096f, -894f, 426f), Struct_2(vec2<u32>(38602u, 4294967295u), vec4<u32>(4294967295u, 1u, 16329u, 4294967295u), false, Struct_1(vec3<f32>(-116f, 1065f, -480f), 467f, vec4<f32>(-1655f, -1022f, 1000f, 1670f), vec2<bool>(false, false), false), Struct_1(vec3<f32>(-1087f, 670f, 290f), 842f, vec4<f32>(-721f, 716f, -1948f, -385f), vec2<bool>(false, false), true)), 2147483647i, 1348f, 4294967295u), vec4<f32>(-513f, -1140f, -1054f, 1406f), Struct_2(vec2<u32>(4294967295u, 16906u), vec4<u32>(48725u, 22058u, 1391u, 26000u), true, Struct_1(vec3<f32>(905f, 345f, -1010f), -269f, vec4<f32>(-1000f, 631f, -592f, -157f), vec2<bool>(true, false), true), Struct_1(vec3<f32>(-186f, -305f, -507f), 584f, vec4<f32>(279f, -852f, -424f, 179f), vec2<bool>(true, false), false)), vec2<f32>(1000f, -543f)), Struct_4(Struct_3(vec4<f32>(-344f, 556f, -1000f, 637f), Struct_2(vec2<u32>(3904u, 39646u), vec4<u32>(30466u, 23578u, 2389u, 1u), true, Struct_1(vec3<f32>(-1639f, -816f, -598f), 1000f, vec4<f32>(764f, 1339f, -513f, -419f), vec2<bool>(true, false), true), Struct_1(vec3<f32>(2060f, -1000f, 1000f), -409f, vec4<f32>(-407f, 1006f, -334f, 568f), vec2<bool>(false, false), false)), -70783i, -1064f, 72098u), vec4<f32>(641f, -947f, -721f, 1829f), Struct_2(vec2<u32>(4294967295u, 44183u), vec4<u32>(4294967295u, 1u, 23587u, 0u), true, Struct_1(vec3<f32>(-822f, -861f, -101f), -1000f, vec4<f32>(146f, 571f, -211f, 1354f), vec2<bool>(true, true), true), Struct_1(vec3<f32>(548f, 613f, -523f), -143f, vec4<f32>(150f, -1744f, 1618f, -276f), vec2<bool>(true, true), true)), vec2<f32>(-675f, -1000f)), Struct_4(Struct_3(vec4<f32>(-1454f, -2147f, -330f, -2675f), Struct_2(vec2<u32>(0u, 41691u), vec4<u32>(46887u, 4294967295u, 1u, 1u), true, Struct_1(vec3<f32>(998f, 2285f, -415f), -780f, vec4<f32>(-226f, 105f, -554f, -323f), vec2<bool>(true, true), false), Struct_1(vec3<f32>(-590f, -1769f, -1372f), 226f, vec4<f32>(963f, -1610f, 1644f, 885f), vec2<bool>(false, true), false)), -10474i, 1000f, 1u), vec4<f32>(-1302f, 461f, 2261f, 908f), Struct_2(vec2<u32>(11370u, 1u), vec4<u32>(64054u, 67681u, 15086u, 0u), true, Struct_1(vec3<f32>(351f, 154f, 843f), -129f, vec4<f32>(-1000f, 1132f, 1280f, 216f), vec2<bool>(false, true), false), Struct_1(vec3<f32>(221f, 1000f, -1960f), -1441f, vec4<f32>(1951f, 994f, 1377f, -142f), vec2<bool>(true, false), true)), vec2<f32>(-906f, -1000f)), Struct_4(Struct_3(vec4<f32>(-103f, 1310f, 3352f, 268f), Struct_2(vec2<u32>(0u, 5221u), vec4<u32>(102983u, 0u, 47041u, 25597u), true, Struct_1(vec3<f32>(317f, 543f, -684f), 2009f, vec4<f32>(-1571f, -272f, -597f, 1471f), vec2<bool>(true, true), true), Struct_1(vec3<f32>(-654f, -698f, -1316f), -345f, vec4<f32>(-1866f, 539f, 1430f, 1044f), vec2<bool>(false, false), false)), -44980i, 125f, 57232u), vec4<f32>(1203f, 1316f, -541f, 1837f), Struct_2(vec2<u32>(4294967295u, 5682u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 27266u), true, Struct_1(vec3<f32>(365f, 1000f, -644f), 1360f, vec4<f32>(-141f, 1010f, -261f, -1608f), vec2<bool>(true, false), false), Struct_1(vec3<f32>(762f, 1232f, 494f), -490f, vec4<f32>(597f, 1191f, -172f, 936f), vec2<bool>(true, true), false)), vec2<f32>(-238f, 641f)));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: Struct_3;

var<private> global3: f32 = -1450f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a.xzy - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a.x, arg_3.x, 1285f), arg_3, !global2.b.d.d.x))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global2.b.d.a.x * arg_3.x), -1289f, _wgslsmith_f_op_f32(global2.d * 1837f)), vec3<f32>(_wgslsmith_f_op_f32(min(arg_2.c.x, -445f)), _wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(max(global2.a.x, arg_3.x))))))));
    let var_1 = -47105i;
    var var_2 = false;
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(1i, firstTrailingBit(abs(global2.c))), var_1), _wgslsmith_div_vec2_i32(-u_input.a, select(u_input.a, vec2<i32>(global2.c, -26727i) << (global2.b.a % vec2<u32>(32u)), global2.b.d.d) >> (~firstLeadingBit(global2.b.a) % vec2<u32>(32u))));
    var_2 = false;
    return firstTrailingBit(global2.c) & -25483i;
}

fn func_2(arg_0: i32) -> Struct_3 {
    global0 = array<Struct_4, 29>();
    let var_0 = !global2.b.e.d;
    var var_1 = -25504i;
    var var_2 = abs(~reverseBits(_wgslsmith_mult_i32(-u_input.b, 1i)));
    var var_3 = Struct_5(global2.b.e.c.xxx, _wgslsmith_mult_i32(5119i, abs(~u_input.a.x)), _wgslsmith_clamp_i32(~u_input.a.x, func_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(global2.b.e.d.x, global2.b.d.e, true)), 0u, global2.b.e, global2.a.xxx), 1i), _wgslsmith_mod_i32(55458i ^ arg_0, -abs(-20577i) << ((_wgslsmith_clamp_u32(global2.e, 98162u, global2.b.a.x) << (~19690u % 32u)) % 32u)), _wgslsmith_f_op_vec2_f32(global2.b.d.c.xy * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.d, global2.b.e.c.x), _wgslsmith_f_op_vec2_f32(global2.a.zw * vec2<f32>(global2.a.x, global2.a.x)), select(vec2<bool>(true, false), global2.b.e.d, global1.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a.xy) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1105f, -832f) * global2.b.d.c.zw)))));
    return Struct_3(global2.b.e.c, global2.b, 2147483647i, global2.d, _wgslsmith_sub_u32(54467u, global2.b.b.x));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = ~_wgslsmith_add_vec3_u32(~(global2.b.b.xyw & (vec3<u32>(global2.b.a.x, 4294967295u, global2.e) | global2.b.b.wyy)), global2.b.b.zwy);
    global2 = func_2(min(~(-reverseBits(global2.c)), u_input.a.x));
    var var_1 = Struct_2(global2.b.a, abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.x, global2.b.b.x, global2.e), vec4<u32>(var_0.x, global2.e, 39946u, 1u)) & ((vec4<u32>(global2.e, 1u, var_0.x, var_0.x) << (vec4<u32>(4294967295u, var_0.x, 0u, global2.b.b.x) % vec4<u32>(32u))) ^ vec4<u32>(2126u, global2.e, global2.b.a.x, var_0.x))), any(!select(select(vec3<bool>(false, true, arg_3.d.x), vec3<bool>(global1.x, global1.x, false), false), select(vec3<bool>(arg_3.d.x, true, true), vec3<bool>(global2.b.d.d.x, false, arg_3.d.x), true), !vec3<bool>(arg_0, false, false))), global2.b.d, Struct_1(arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -146f) * _wgslsmith_f_op_f32(f32(-1f) * -604f)), vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(595f * _wgslsmith_div_f32(-607f, 888f)), -1263f, _wgslsmith_f_op_f32(func_2(u_input.a.x).b.e.a.x * arg_2.x)), vec2<bool>(!(!arg_1), arg_3.d.x), false));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.a.x - _wgslsmith_f_op_f32(round(global2.b.e.c.x))), func_2(2147483647i).d)));
    var_0 = vec3<u32>(var_0.x, 4294967295u, var_1.a.x);
    return Struct_3(global2.b.e.c, Struct_2(_wgslsmith_mod_vec2_u32(~countOneBits(vec2<u32>(var_0.x, global2.b.b.x)), ~_wgslsmith_clamp_vec2_u32(global2.b.b.yy, var_1.b.xz, global2.b.a)), vec4<u32>(0u, 31910u, _wgslsmith_sub_u32(11196u, _wgslsmith_dot_vec4_u32(vec4<u32>(20146u, global2.e, 50827u, var_0.x), global2.b.b)), var_0.x), false, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(780f, arg_3.a.x, -659f)), _wgslsmith_f_op_f32(max(arg_3.b, _wgslsmith_f_op_f32(ceil(var_2)))), arg_3.c, !select(vec2<bool>(var_1.d.d.x, true), arg_3.d, true), true), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.e.a + vec3<f32>(var_2, -867f, 711f))), arg_2.x, var_1.d.c, !func_2(-13957i).b.d.d, true && any(vec3<bool>(arg_3.d.x, global2.b.e.e, global1.x)))), global2.c, _wgslsmith_div_f32(998f, _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-arg_3.a.x))), ~(~(~(global2.b.a.x | var_0.x))));
}

fn func_4(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.b.b.x, max(~20874u, 1u), ~4294967295u, ~(4294967295u ^ global2.e)), select(arg_0.b.b, firstLeadingBit(~vec4<u32>(global2.e, arg_0.b.b.x, 74360u, 1u)), !(!vec4<bool>(global2.b.d.d.x, true, arg_0.b.c, arg_0.b.c))) ^ max(_wgslsmith_mult_vec4_u32(global2.b.b, ~vec4<u32>(22071u, global2.b.b.x, arg_0.b.a.x, 4294967295u)), ~_wgslsmith_sub_vec4_u32(arg_0.b.b, vec4<u32>(54846u, global2.e, global2.b.b.x, arg_0.b.a.x)))), 29u)];
    var var_1 = u_input.a;
    var var_2 = global2.b;
    var var_3 = arg_0.b.d;
    let var_4 = var_0.a;
    return !(!(!func_1(false, all(vec3<bool>(arg_0.b.c, arg_0.b.d.d.x, false)), arg_0.a.xy, func_2(arg_0.c).b.d).b.d.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(global2.a.ywy, 35669i, u_input.b, -48679i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.a.x, global2.a.x)))), _wgslsmith_f_op_f32(-244f - global2.d)));
    var var_1 = select(!(!select(select(vec2<bool>(global1.x, false), global2.b.e.d, vec2<bool>(false, true)), select(global2.b.d.d, vec2<bool>(global1.x, false), vec2<bool>(global2.b.e.e, false)), global2.b.d.d)), select(vec2<bool>(!global2.b.e.e, false), vec2<bool>(false, false), true), !func_4(func_1(global2.b.c, any(vec3<bool>(false, global2.b.e.d.x, false)), vec2<f32>(1055f, global2.d), Struct_1(global2.a.xwz, -967f, vec4<f32>(-1008f, 1608f, -975f, var_0.e.x), global2.b.e.d, global1.x))));
    let var_2 = Struct_4(func_1(global2.c >= ~u_input.a.x, all(select(vec3<bool>(global2.b.d.e, false, global2.b.e.e), vec3<bool>(true, global1.x, true), global1.x | false)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d, 776f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, 545f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, global2.d)))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1054f, 706f, -1402f) * vec3<f32>(global2.d, 1016f, global2.b.d.a.x)), vec3<f32>(756f, 337f, 517f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global2.d)), _wgslsmith_f_op_f32(f32(-1f) * -255f), var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.e.a.x, var_0.e.x, -656f, var_0.a.x)), !global2.b.e.d, var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, global2.a.x, var_0.e.x, 333f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1108f), _wgslsmith_f_op_f32(max(-2050f, -934f)), _wgslsmith_f_op_f32(f32(-1f) * -672f), 1344f)), global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, var_0.e.x) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-123f, -302f), vec2<f32>(global2.b.d.b, 663f)))))));
    var var_3 = global2.a.x;
    var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f))));
    let var_4 = global2.b.e.c.yw;
    var_1 = func_1(var_2.c.d.e, func_1(((false || global1.x) & (global2.b.c & true)) == any(vec4<bool>(true, var_2.a.b.e.d.x, global1.x, var_1.x)), global2.b.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.e.x * var_2.b.x), _wgslsmith_f_op_f32(569f - -1550f))), func_2(abs(min(global2.c, 41020i))).b.d).b.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1747f, var_2.a.a.x)))), func_1(global1.x, !(var_1.x | global1.x), _wgslsmith_f_op_vec2_f32(min(func_1(!var_1.x, global1.x, global2.a.xz, func_2(var_0.d).b.e).a.ww, var_2.c.e.a.xx)), var_2.a.b.d).b.d).b.e.d;
    var var_5 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -513f), -463f) - vec2<f32>(_wgslsmith_f_op_f32(trunc(572f)), -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1885f, _wgslsmith_f_op_f32(-var_4.x), false))));
}

