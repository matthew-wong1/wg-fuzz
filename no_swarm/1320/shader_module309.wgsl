struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_3,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(Struct_4(vec3<i32>(-1i, i32(-2147483648), 0i), 1i, Struct_3(-1294f, Struct_1(vec4<f32>(-2005f, 1301f, 926f, 651f), 209f, vec4<f32>(-1500f, 1703f, 553f, -563f))), Struct_1(vec4<f32>(194f, 1194f, 230f, -827f), 659f, vec4<f32>(-1755f, 1000f, 988f, 443f)), Struct_3(-3259f, Struct_1(vec4<f32>(-585f, 917f, 1068f, 949f), -455f, vec4<f32>(-636f, -2160f, -357f, -1298f))))), Struct_5(Struct_4(vec3<i32>(2147483647i, -1i, 8260i), i32(-2147483648), Struct_3(391f, Struct_1(vec4<f32>(3000f, 280f, 1000f, 145f), -1339f, vec4<f32>(1736f, -411f, -1122f, -767f))), Struct_1(vec4<f32>(-884f, -422f, -562f, 789f), -1037f, vec4<f32>(708f, 1000f, -1000f, -589f)), Struct_3(1357f, Struct_1(vec4<f32>(-634f, 858f, -707f, 395f), 1000f, vec4<f32>(954f, 1000f, 535f, -534f))))), Struct_5(Struct_4(vec3<i32>(46762i, -1i, 11614i), 863i, Struct_3(-1055f, Struct_1(vec4<f32>(-693f, 1556f, -1383f, -977f), -205f, vec4<f32>(-1850f, 195f, -1280f, 1000f))), Struct_1(vec4<f32>(1000f, 699f, 667f, -1625f), -1000f, vec4<f32>(393f, 391f, 1258f, -254f)), Struct_3(809f, Struct_1(vec4<f32>(-508f, 211f, 925f, -1000f), 947f, vec4<f32>(2174f, -1411f, -995f, 1343f))))), Struct_5(Struct_4(vec3<i32>(-21806i, -1i, -9547i), -26546i, Struct_3(-128f, Struct_1(vec4<f32>(927f, -416f, 231f, 726f), 1814f, vec4<f32>(2120f, 829f, 769f, -1038f))), Struct_1(vec4<f32>(1000f, 190f, 299f, 884f), -1199f, vec4<f32>(884f, -1000f, -1188f, -234f)), Struct_3(-1470f, Struct_1(vec4<f32>(1359f, -153f, -529f, -516f), -2567f, vec4<f32>(-414f, 1521f, 2403f, -1765f))))), Struct_5(Struct_4(vec3<i32>(-625i, 0i, 0i), -12397i, Struct_3(-1379f, Struct_1(vec4<f32>(483f, 1142f, -1624f, 194f), -220f, vec4<f32>(-410f, 1000f, 187f, 869f))), Struct_1(vec4<f32>(-745f, -1000f, -1387f, 246f), -1000f, vec4<f32>(261f, 2429f, 1179f, 117f)), Struct_3(-1256f, Struct_1(vec4<f32>(790f, 1204f, 932f, 157f), -1397f, vec4<f32>(-1206f, -1000f, -1119f, -797f))))), Struct_5(Struct_4(vec3<i32>(-1i, 9455i, 2147483647i), 25244i, Struct_3(-415f, Struct_1(vec4<f32>(-524f, 995f, 1961f, 1265f), -1314f, vec4<f32>(387f, 499f, -1000f, 205f))), Struct_1(vec4<f32>(335f, -444f, 1496f, 243f), -1312f, vec4<f32>(-317f, 1348f, -146f, 776f)), Struct_3(-3160f, Struct_1(vec4<f32>(-913f, -1391f, -197f, 1010f), 374f, vec4<f32>(-176f, -1423f, -579f, -211f))))), Struct_5(Struct_4(vec3<i32>(0i, 0i, 9764i), 3042i, Struct_3(-475f, Struct_1(vec4<f32>(-690f, 1581f, 634f, 1199f), 1509f, vec4<f32>(-137f, -1013f, -1562f, 659f))), Struct_1(vec4<f32>(170f, -427f, -539f, -599f), 354f, vec4<f32>(996f, -1171f, -104f, -1107f)), Struct_3(-1277f, Struct_1(vec4<f32>(-724f, 656f, -801f, -1830f), -1132f, vec4<f32>(1762f, -715f, -546f, 140f))))), Struct_5(Struct_4(vec3<i32>(41346i, 18536i, -32489i), 1i, Struct_3(-1074f, Struct_1(vec4<f32>(1000f, -2507f, 408f, 777f), 1672f, vec4<f32>(-853f, 487f, -116f, -205f))), Struct_1(vec4<f32>(-524f, 791f, -1145f, 348f), 325f, vec4<f32>(-1139f, -935f, 349f, 888f)), Struct_3(309f, Struct_1(vec4<f32>(-934f, -1667f, -570f, -2611f), 932f, vec4<f32>(965f, -675f, -930f, -1360f))))), Struct_5(Struct_4(vec3<i32>(22917i, -1i, 1i), 9236i, Struct_3(1513f, Struct_1(vec4<f32>(-1002f, -1270f, 1510f, -1760f), -1076f, vec4<f32>(-104f, -1247f, 241f, -1619f))), Struct_1(vec4<f32>(-747f, 440f, 1918f, -612f), 365f, vec4<f32>(-137f, -1000f, -584f, 2157f)), Struct_3(443f, Struct_1(vec4<f32>(1673f, 993f, 137f, -191f), -188f, vec4<f32>(-456f, 1462f, 355f, -377f))))), Struct_5(Struct_4(vec3<i32>(i32(-2147483648), -16696i, 1i), -19996i, Struct_3(1143f, Struct_1(vec4<f32>(-501f, -295f, 969f, -1545f), -108f, vec4<f32>(-1367f, -415f, 1359f, 1335f))), Struct_1(vec4<f32>(-129f, 672f, 535f, 310f), -1000f, vec4<f32>(-687f, 1000f, 737f, -616f)), Struct_3(1109f, Struct_1(vec4<f32>(-1311f, -258f, -1277f, -808f), 836f, vec4<f32>(-1541f, 484f, -372f, -931f))))), Struct_5(Struct_4(vec3<i32>(0i, 14934i, 2147483647i), 2542i, Struct_3(884f, Struct_1(vec4<f32>(671f, 651f, -1437f, 1000f), -1960f, vec4<f32>(1307f, 683f, -943f, -938f))), Struct_1(vec4<f32>(-1461f, 855f, 641f, 1000f), -467f, vec4<f32>(1926f, 482f, 1803f, 256f)), Struct_3(-1362f, Struct_1(vec4<f32>(-1061f, 1470f, -1356f, -1883f), -346f, vec4<f32>(-140f, -698f, 661f, -1002f))))), Struct_5(Struct_4(vec3<i32>(1i, 44151i, 18061i), 0i, Struct_3(-764f, Struct_1(vec4<f32>(1000f, 1000f, -1000f, -607f), -101f, vec4<f32>(-1055f, -1722f, 1000f, 395f))), Struct_1(vec4<f32>(-1000f, 508f, -1515f, -222f), 905f, vec4<f32>(-613f, 1279f, 485f, 861f)), Struct_3(-2319f, Struct_1(vec4<f32>(1314f, 1000f, -353f, -1098f), -478f, vec4<f32>(1439f, 152f, 1565f, 962f))))), Struct_5(Struct_4(vec3<i32>(721i, 17824i, 56039i), -19172i, Struct_3(-896f, Struct_1(vec4<f32>(-504f, 310f, 558f, 789f), 594f, vec4<f32>(922f, -1736f, 935f, -520f))), Struct_1(vec4<f32>(737f, -355f, 671f, -154f), 1080f, vec4<f32>(864f, 1010f, -1447f, 798f)), Struct_3(-616f, Struct_1(vec4<f32>(-1497f, 1000f, 1581f, -807f), 760f, vec4<f32>(-569f, 563f, 231f, -1270f))))), Struct_5(Struct_4(vec3<i32>(65229i, -15524i, 2147483647i), i32(-2147483648), Struct_3(-539f, Struct_1(vec4<f32>(845f, 923f, -115f, 1817f), -1051f, vec4<f32>(-758f, 1300f, -384f, 1000f))), Struct_1(vec4<f32>(-242f, -1000f, -198f, 144f), 432f, vec4<f32>(1527f, 1000f, 105f, -242f)), Struct_3(529f, Struct_1(vec4<f32>(-296f, 1000f, 523f, -271f), 864f, vec4<f32>(500f, -147f, 335f, 1122f))))), Struct_5(Struct_4(vec3<i32>(-37988i, -15407i, -31060i), -18466i, Struct_3(2043f, Struct_1(vec4<f32>(298f, 1000f, -1082f, -1029f), 1828f, vec4<f32>(990f, -1021f, 1555f, 528f))), Struct_1(vec4<f32>(453f, 1002f, -1058f, 1636f), -158f, vec4<f32>(-1238f, -1000f, -2459f, -456f)), Struct_3(-293f, Struct_1(vec4<f32>(958f, 1645f, -1707f, -546f), -382f, vec4<f32>(987f, 254f, -786f, 1000f))))), Struct_5(Struct_4(vec3<i32>(16965i, -1i, 824i), -27664i, Struct_3(-701f, Struct_1(vec4<f32>(-327f, 1000f, 1197f, 1673f), 141f, vec4<f32>(-568f, 105f, -559f, -207f))), Struct_1(vec4<f32>(-893f, 380f, -378f, 133f), -1753f, vec4<f32>(-662f, 1775f, 115f, 1405f)), Struct_3(2413f, Struct_1(vec4<f32>(1233f, -598f, 837f, -322f), -1000f, vec4<f32>(1916f, 665f, -798f, -197f))))), Struct_5(Struct_4(vec3<i32>(i32(-2147483648), 32413i, 35946i), -1i, Struct_3(-1954f, Struct_1(vec4<f32>(-1740f, -316f, 745f, 881f), 484f, vec4<f32>(-1033f, -1308f, -1000f, -412f))), Struct_1(vec4<f32>(1040f, 313f, -506f, 1000f), -1036f, vec4<f32>(-1973f, 1464f, 773f, 591f)), Struct_3(355f, Struct_1(vec4<f32>(274f, 1538f, 380f, -1000f), 1697f, vec4<f32>(1865f, 576f, -456f, 707f))))), Struct_5(Struct_4(vec3<i32>(-11236i, -4740i, 40837i), -20637i, Struct_3(-1291f, Struct_1(vec4<f32>(-730f, 293f, -318f, -1628f), -313f, vec4<f32>(-549f, 174f, 424f, 980f))), Struct_1(vec4<f32>(-1000f, 149f, 130f, 854f), 331f, vec4<f32>(-1430f, -1677f, -1633f, -968f)), Struct_3(-896f, Struct_1(vec4<f32>(-417f, 528f, -1039f, 371f), 1935f, vec4<f32>(614f, 937f, -804f, -1961f))))), Struct_5(Struct_4(vec3<i32>(-3002i, i32(-2147483648), 1i), 15577i, Struct_3(724f, Struct_1(vec4<f32>(-1000f, -1406f, 259f, -842f), 164f, vec4<f32>(148f, 143f, -430f, -1215f))), Struct_1(vec4<f32>(-324f, -935f, -1000f, 638f), -727f, vec4<f32>(136f, -1000f, 321f, -623f)), Struct_3(-857f, Struct_1(vec4<f32>(1722f, -863f, 300f, 1162f), 1548f, vec4<f32>(-956f, 726f, -300f, -1000f))))), Struct_5(Struct_4(vec3<i32>(-27799i, 0i, 0i), -9065i, Struct_3(-938f, Struct_1(vec4<f32>(-1502f, -537f, -887f, -938f), 645f, vec4<f32>(503f, 648f, 730f, 1332f))), Struct_1(vec4<f32>(-1588f, 632f, -208f, 324f), 203f, vec4<f32>(330f, -1004f, -1248f, 870f)), Struct_3(1214f, Struct_1(vec4<f32>(298f, -484f, -150f, 834f), 1339f, vec4<f32>(294f, -192f, 291f, -630f))))), Struct_5(Struct_4(vec3<i32>(29816i, 2147483647i, -1i), -8897i, Struct_3(-520f, Struct_1(vec4<f32>(1669f, 760f, -649f, 1000f), -1000f, vec4<f32>(-1000f, -1244f, -1000f, -647f))), Struct_1(vec4<f32>(-539f, -933f, 2245f, -713f), -1000f, vec4<f32>(-1000f, 1026f, -352f, 1432f)), Struct_3(-1298f, Struct_1(vec4<f32>(1258f, 581f, -140f, -710f), 809f, vec4<f32>(481f, 1000f, -1000f, 1136f))))), Struct_5(Struct_4(vec3<i32>(29009i, -16503i, 13663i), 1i, Struct_3(-231f, Struct_1(vec4<f32>(-592f, -1682f, -1368f, -634f), 2157f, vec4<f32>(256f, 885f, 953f, -373f))), Struct_1(vec4<f32>(581f, 163f, -565f, 149f), -1047f, vec4<f32>(-746f, -1808f, 687f, 525f)), Struct_3(-898f, Struct_1(vec4<f32>(-2364f, 276f, -787f, 451f), 292f, vec4<f32>(1443f, -1901f, -332f, 1692f))))), Struct_5(Struct_4(vec3<i32>(-66897i, 68772i, 43322i), i32(-2147483648), Struct_3(-886f, Struct_1(vec4<f32>(-884f, 761f, -1268f, 802f), 982f, vec4<f32>(1095f, 338f, 2485f, -565f))), Struct_1(vec4<f32>(449f, 667f, 874f, -716f), -1515f, vec4<f32>(519f, -680f, 1127f, 856f)), Struct_3(1129f, Struct_1(vec4<f32>(182f, 308f, -280f, 541f), -135f, vec4<f32>(748f, -1128f, 864f, 908f))))), Struct_5(Struct_4(vec3<i32>(1i, 12321i, 11480i), -55425i, Struct_3(-1737f, Struct_1(vec4<f32>(-1466f, 2286f, 1195f, -1232f), 260f, vec4<f32>(-1211f, -1000f, -1056f, 640f))), Struct_1(vec4<f32>(823f, 552f, 1120f, 1049f), -1000f, vec4<f32>(-1000f, -423f, 1449f, -177f)), Struct_3(425f, Struct_1(vec4<f32>(-995f, 1490f, -112f, -274f), -2210f, vec4<f32>(-1000f, -1000f, 552f, -1126f))))), Struct_5(Struct_4(vec3<i32>(54598i, 11406i, 38243i), -11668i, Struct_3(692f, Struct_1(vec4<f32>(494f, 1592f, -1958f, -425f), 916f, vec4<f32>(1429f, -484f, -1055f, -492f))), Struct_1(vec4<f32>(949f, 1083f, -1190f, 951f), 578f, vec4<f32>(1052f, 380f, 1000f, 724f)), Struct_3(-666f, Struct_1(vec4<f32>(-371f, -1128f, -1153f, -1302f), -651f, vec4<f32>(425f, -189f, -175f, -1094f))))), Struct_5(Struct_4(vec3<i32>(60939i, -1i, 2147483647i), -1i, Struct_3(-518f, Struct_1(vec4<f32>(-1219f, 920f, -946f, 343f), 352f, vec4<f32>(-322f, -961f, 1219f, -1575f))), Struct_1(vec4<f32>(-514f, 1053f, -414f, -1994f), 1000f, vec4<f32>(-433f, 2300f, -1000f, 784f)), Struct_3(1323f, Struct_1(vec4<f32>(345f, 942f, -1077f, -945f), -2389f, vec4<f32>(-116f, -911f, 506f, -314f))))), Struct_5(Struct_4(vec3<i32>(-8189i, -19682i, -1i), 16242i, Struct_3(-296f, Struct_1(vec4<f32>(238f, 1160f, -315f, 822f), -234f, vec4<f32>(2157f, -455f, -1000f, -1000f))), Struct_1(vec4<f32>(-526f, -455f, 371f, -162f), 1460f, vec4<f32>(1000f, 780f, -766f, -1069f)), Struct_3(-1338f, Struct_1(vec4<f32>(721f, 2590f, -774f, 1226f), 906f, vec4<f32>(-321f, -1415f, 832f, -810f))))), Struct_5(Struct_4(vec3<i32>(32534i, 2147483647i, 1744i), 2147483647i, Struct_3(1379f, Struct_1(vec4<f32>(-1552f, 856f, 1421f, 657f), 949f, vec4<f32>(102f, 1062f, 1000f, 1000f))), Struct_1(vec4<f32>(459f, -409f, -1587f, -787f), 1000f, vec4<f32>(-869f, -2227f, -1493f, -1604f)), Struct_3(-1000f, Struct_1(vec4<f32>(-1000f, -1000f, -2817f, 266f), -1162f, vec4<f32>(165f, -459f, -339f, 390f))))));

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(1839f, Struct_1(vec4<f32>(405f, -2058f, 1000f, -1987f), 1999f, vec4<f32>(-1492f, -1018f, -165f, -1048f))), Struct_3(2898f, Struct_1(vec4<f32>(-1125f, -1601f, 426f, 996f), 451f, vec4<f32>(1350f, -421f, 532f, 362f))), Struct_3(249f, Struct_1(vec4<f32>(945f, -725f, 125f, -2448f), -765f, vec4<f32>(2743f, 2100f, -1304f, 155f))), Struct_3(-1030f, Struct_1(vec4<f32>(-169f, -1000f, 860f, -1210f), -465f, vec4<f32>(1228f, 816f, 474f, -1475f))), Struct_3(164f, Struct_1(vec4<f32>(992f, -476f, 173f, 482f), 1289f, vec4<f32>(-765f, 240f, -1024f, 1105f))), Struct_3(567f, Struct_1(vec4<f32>(581f, -1092f, -100f, -1038f), -630f, vec4<f32>(-1276f, 547f, 501f, 549f))), Struct_3(1506f, Struct_1(vec4<f32>(-2152f, 913f, 522f, -1249f), -1193f, vec4<f32>(1810f, 348f, 897f, 2188f))), Struct_3(413f, Struct_1(vec4<f32>(1752f, 1096f, 721f, 633f), -530f, vec4<f32>(-1000f, -435f, 490f, 860f))), Struct_3(709f, Struct_1(vec4<f32>(363f, 2176f, 1302f, 1000f), 721f, vec4<f32>(526f, 1000f, -1781f, 1000f))), Struct_3(-738f, Struct_1(vec4<f32>(713f, -336f, -642f, 1000f), -570f, vec4<f32>(814f, -234f, -207f, -200f))), Struct_3(130f, Struct_1(vec4<f32>(-419f, -882f, -1000f, -449f), 388f, vec4<f32>(-515f, 1000f, -478f, -947f))), Struct_3(-1399f, Struct_1(vec4<f32>(-356f, 380f, -312f, 1308f), -928f, vec4<f32>(-556f, 345f, 454f, 2411f))), Struct_3(-857f, Struct_1(vec4<f32>(780f, 2437f, 108f, -1252f), -1038f, vec4<f32>(394f, -533f, 2013f, 1000f))), Struct_3(-951f, Struct_1(vec4<f32>(-1263f, -1313f, 1742f, -1000f), 917f, vec4<f32>(-432f, 732f, 622f, 1389f))), Struct_3(-1000f, Struct_1(vec4<f32>(423f, -399f, 1327f, -1000f), -467f, vec4<f32>(396f, -1978f, -314f, -179f))), Struct_3(120f, Struct_1(vec4<f32>(-601f, -1000f, -1620f, -138f), 258f, vec4<f32>(-984f, 2031f, 740f, -295f))), Struct_3(1384f, Struct_1(vec4<f32>(-688f, 828f, 644f, -608f), 863f, vec4<f32>(470f, -382f, 338f, 1000f))));

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(424f, Struct_1(vec4<f32>(-122f, -1057f, 562f, 425f), 459f, vec4<f32>(-1000f, -394f, -1654f, 1962f))), Struct_3(921f, Struct_1(vec4<f32>(753f, 1701f, 1395f, 562f), -1000f, vec4<f32>(1529f, -159f, -759f, -213f))), Struct_3(-123f, Struct_1(vec4<f32>(1000f, -665f, -707f, 361f), -1000f, vec4<f32>(1548f, -920f, -2460f, -423f))), Struct_3(1296f, Struct_1(vec4<f32>(-509f, 1002f, 2085f, -766f), 1209f, vec4<f32>(329f, -1140f, 1530f, 681f))), Struct_3(1132f, Struct_1(vec4<f32>(-1574f, 178f, 659f, -606f), -384f, vec4<f32>(1077f, -637f, -1000f, -148f))), Struct_3(735f, Struct_1(vec4<f32>(-776f, 2188f, 167f, -754f), 947f, vec4<f32>(-486f, -1289f, 1017f, -1248f))), Struct_3(-318f, Struct_1(vec4<f32>(-674f, 534f, -1773f, -462f), 1545f, vec4<f32>(-1744f, -1308f, 1447f, 1037f))), Struct_3(-315f, Struct_1(vec4<f32>(129f, -625f, 401f, -511f), 454f, vec4<f32>(-1401f, 126f, -1323f, 1000f))), Struct_3(1000f, Struct_1(vec4<f32>(-1479f, -834f, 602f, -168f), 180f, vec4<f32>(-1864f, 1000f, -1611f, 821f))), Struct_3(881f, Struct_1(vec4<f32>(-1710f, 1432f, 876f, -704f), -1000f, vec4<f32>(537f, 170f, 1363f, 635f))), Struct_3(105f, Struct_1(vec4<f32>(783f, 1606f, 1197f, 1933f), -914f, vec4<f32>(541f, 307f, -1114f, -810f))), Struct_3(123f, Struct_1(vec4<f32>(902f, 1623f, 1275f, -315f), -1159f, vec4<f32>(-712f, 280f, -219f, 491f))), Struct_3(-731f, Struct_1(vec4<f32>(-771f, -2346f, -462f, -189f), -1000f, vec4<f32>(1194f, 368f, 551f, -988f))), Struct_3(-893f, Struct_1(vec4<f32>(695f, 1220f, 768f, -1786f), -1479f, vec4<f32>(-1301f, -653f, -790f, 279f))), Struct_3(872f, Struct_1(vec4<f32>(-142f, -437f, -307f, -1127f), -1000f, vec4<f32>(1745f, 157f, -810f, -1280f))));

var<private> global3: array<i32, 9>;

var<private> global4: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(371f, Struct_1(vec4<f32>(213f, 560f, -1738f, -104f), 395f, vec4<f32>(1387f, -1482f, -315f, -1427f))), Struct_3(726f, Struct_1(vec4<f32>(-564f, 141f, 2844f, -120f), 364f, vec4<f32>(1061f, 766f, -1001f, 357f))), Struct_3(1372f, Struct_1(vec4<f32>(-752f, -1556f, -559f, 1000f), 1330f, vec4<f32>(-1000f, -2357f, 1000f, 274f))), Struct_3(-451f, Struct_1(vec4<f32>(770f, 466f, -1119f, -502f), 107f, vec4<f32>(-1268f, 373f, 253f, -1077f))), Struct_3(743f, Struct_1(vec4<f32>(1096f, 960f, -1305f, -945f), 626f, vec4<f32>(1016f, -386f, 330f, 930f))), Struct_3(640f, Struct_1(vec4<f32>(946f, 232f, -479f, 923f), 443f, vec4<f32>(1463f, -1018f, -521f, 104f))), Struct_3(607f, Struct_1(vec4<f32>(1241f, -1000f, -771f, -1112f), 196f, vec4<f32>(479f, -762f, 372f, -1742f))), Struct_3(649f, Struct_1(vec4<f32>(738f, 1885f, 1023f, -1000f), -277f, vec4<f32>(204f, -141f, 655f, -118f))), Struct_3(-448f, Struct_1(vec4<f32>(-1000f, -167f, 310f, -1000f), 1000f, vec4<f32>(1261f, -255f, -323f, 238f))), Struct_3(-561f, Struct_1(vec4<f32>(-898f, -1000f, 570f, -1625f), 226f, vec4<f32>(521f, -770f, -1300f, 667f))), Struct_3(-1928f, Struct_1(vec4<f32>(1197f, 382f, -275f, 1387f), -1130f, vec4<f32>(-699f, -798f, -303f, -253f))), Struct_3(345f, Struct_1(vec4<f32>(1375f, -569f, -329f, -699f), -216f, vec4<f32>(482f, 513f, -592f, 348f))), Struct_3(-1332f, Struct_1(vec4<f32>(1312f, 338f, -1769f, 691f), 591f, vec4<f32>(-1995f, 393f, 247f, 151f))), Struct_3(2352f, Struct_1(vec4<f32>(1000f, -2364f, 889f, 1000f), 2244f, vec4<f32>(115f, 1144f, -744f, -1326f))), Struct_3(368f, Struct_1(vec4<f32>(108f, 1997f, 1360f, 1087f), -528f, vec4<f32>(168f, 672f, 861f, -931f))), Struct_3(-262f, Struct_1(vec4<f32>(-2633f, 336f, -830f, 527f), -624f, vec4<f32>(450f, -665f, 970f, 1349f))), Struct_3(1000f, Struct_1(vec4<f32>(183f, -305f, 445f, -419f), 777f, vec4<f32>(1052f, 861f, 1309f, -205f))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<bool> {
    let var_0 = true;
    let var_1 = var_0;
    var var_2 = Struct_4(vec3<i32>(-18045i, 0i << ((arg_0 & _wgslsmith_clamp_u32(19456u, arg_0, 0u)) % 32u), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(abs(global3[_wgslsmith_index_u32(87187u, 9u)]), _wgslsmith_mod_i32(24136i, u_input.c)), ~(~u_input.c), 26218i >> (1u % 32u))), max(min(-39445i, -1i), -countOneBits(global3[_wgslsmith_index_u32(arg_1, 9u)] << (4858u % 32u))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(939f, 1085f, true)), _wgslsmith_f_op_f32(min(1000f, 1271f))))), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), 1166f, _wgslsmith_f_op_vec4_f32(vec4<f32>(122f, 1621f, 1000f, 554f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1697f, -2149f, -488f, -962f), vec4<f32>(1611f, -473f, -447f, -178f), vec4<bool>(var_0, true, var_0, var_0)))))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(181f, -414f, 1000f, -491f), vec4<f32>(-1199f, 356f, -778f, 414f), false)))), -863f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-499f * -720f), _wgslsmith_f_op_f32(-1000f * 488f), _wgslsmith_div_f32(2129f, 558f), -955f), vec4<f32>(-1022f, -318f, 983f, -282f), select(select(vec4<bool>(var_1, var_0, true, var_0), vec4<bool>(var_1, false, var_1, false), false), !vec4<bool>(true, var_1, true, false), any(vec3<bool>(var_1, var_0, var_1)))))), global4[_wgslsmith_index_u32(firstTrailingBit(0u), 17u)]);
    var var_3 = 1000f;
    global3 = array<i32, 9>();
    return vec2<bool>(var_0, !(!(var_1 | any(vec4<bool>(var_0, var_0, false, false)))));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<u32>) -> vec2<bool> {
    global3 = array<i32, 9>();
    global2 = array<Struct_3, 15>();
    let var_0 = arg_1.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(439f)) + -2080f)));
    var var_1 = var_0;
    let var_2 = vec2<u32>(~(~0u), 1u);
    return !select(!select(vec2<bool>(false, var_0), func_3(12622u, u_input.a.x), vec2<bool>(true, var_0)), !func_3(_wgslsmith_div_u32(0u, var_2.x), 911u), !vec2<bool>(false || var_0, u_input.c == 0i));
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<bool>(!any(select(vec2<bool>(true, true), func_2(0u, vec3<f32>(-236f, 643f, 617f), u_input.a), any(vec4<bool>(false, true, true, false)))), abs(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(u_input.b, 9u)] | u_input.d.x, select(22405i, u_input.d.x, true))) <= global3[_wgslsmith_index_u32(16651u, 9u)], !any(func_2(0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(641f, 1076f, 400f)), vec3<u32>(1u, 2662u, 55167u))), true);
    let var_1 = var_0.x;
    global0 = array<Struct_5, 28>();
    global2 = array<Struct_3, 15>();
    var var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.c, 1i), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, global3[_wgslsmith_index_u32(u_input.a.x, 9u)], 1i) & vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.b, 9u)], 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(45162u, 9u)], 24552i, u_input.c), vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 9u)], u_input.c, -2147483647i), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], 0i, 1i))), _wgslsmith_mod_i32(u_input.c, global3[_wgslsmith_index_u32(u_input.b, 9u)] ^ -7439i)), ~vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], ~(-17947i), -18612i, -29616i), vec4<i32>(u_input.c, -u_input.c, firstTrailingBit(reverseBits(77278i)), _wgslsmith_dot_vec2_i32(u_input.d & vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 9u)]), select(vec2<i32>(-12736i, -4219i), vec2<i32>(u_input.d.x, 2147483647i), false)))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(global3[_wgslsmith_index_u32(57626u, 9u)], u_input.c) << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))), abs(23298i)), _wgslsmith_add_i32(-max(u_input.d.x, 0i), 1i), 1i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(u_input.c), 1i, ~2147483647i, 1i), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 9u)], global3[_wgslsmith_index_u32(u_input.b, 9u)], 411i, u_input.c), vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], 17444i, 62522i, 2147483647i), vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, global3[_wgslsmith_index_u32(u_input.b, 9u)]))) & vec4<i32>(-3588i, u_input.c, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(u_input.b, 9u)], -23228i), vec2<i32>(u_input.c, -26794i))), -66135i));
    return Struct_2(_wgslsmith_mod_vec2_u32(reverseBits(~u_input.a.xy) | ~min(vec2<u32>(u_input.b, u_input.b), u_input.a.yy), u_input.a.xz | firstTrailingBit(vec2<u32>(82402u, u_input.a.x))), ~80162u, ~(~70787i), !var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 9>();
    global3 = array<i32, 9>();
    global2 = array<Struct_3, 15>();
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, reverseBits(_wgslsmith_div_i32(abs(var_0.c), global3[_wgslsmith_index_u32(~u_input.b, 9u)])) ^ global3[_wgslsmith_index_u32(u_input.b, 9u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1579f - 1604f) + -2415f), 1506f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1491f, -1440f, -723f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-599f - 1460f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-733f, -1556f, -895f, -304f)))));
}

