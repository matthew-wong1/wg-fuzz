struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(59625u, Struct_2(false, Struct_1(vec4<f32>(-255f, -965f, -538f, 211f), i32(-2147483648), 0u, -496f, vec2<f32>(316f, 317f)), Struct_1(vec4<f32>(-1675f, 919f, -221f, 1000f), -1i, 11802u, 152f, vec2<f32>(-185f, 675f)), Struct_1(vec4<f32>(-1452f, -660f, -310f, -437f), i32(-2147483648), 4294967295u, -312f, vec2<f32>(925f, 440f)), vec2<f32>(1619f, 1460f)), vec3<u32>(12203u, 18884u, 4294967295u), Struct_1(vec4<f32>(216f, -129f, -1805f, 1743f), 26672i, 101868u, 444f, vec2<f32>(1000f, 910f))), Struct_3(4294967295u, Struct_2(false, Struct_1(vec4<f32>(1590f, -1893f, -1686f, 1000f), 0i, 4294967295u, -2092f, vec2<f32>(-480f, -1137f)), Struct_1(vec4<f32>(922f, 1000f, -354f, -2264f), -2984i, 11034u, 447f, vec2<f32>(-358f, 121f)), Struct_1(vec4<f32>(160f, 868f, 734f, 817f), 13438i, 84981u, 1260f, vec2<f32>(271f, -1397f)), vec2<f32>(-1000f, 1806f)), vec3<u32>(38630u, 1u, 1u), Struct_1(vec4<f32>(-1168f, 1000f, 469f, -736f), -14806i, 60042u, -399f, vec2<f32>(-1252f, 351f))), Struct_3(4294967295u, Struct_2(true, Struct_1(vec4<f32>(-1171f, -121f, -832f, -1081f), 1i, 4294967295u, -1205f, vec2<f32>(-1307f, 1716f)), Struct_1(vec4<f32>(324f, 795f, 352f, 238f), -41350i, 0u, -190f, vec2<f32>(-1414f, -603f)), Struct_1(vec4<f32>(237f, -1999f, -1223f, -1729f), 13571i, 0u, -962f, vec2<f32>(-198f, -1473f)), vec2<f32>(-1219f, 1198f)), vec3<u32>(0u, 12833u, 69280u), Struct_1(vec4<f32>(-1474f, -1569f, -254f, 1183f), -1i, 4262u, -672f, vec2<f32>(883f, 127f))), Struct_3(79357u, Struct_2(false, Struct_1(vec4<f32>(299f, 147f, 511f, -632f), i32(-2147483648), 1u, 1749f, vec2<f32>(-511f, -1503f)), Struct_1(vec4<f32>(280f, -395f, -1226f, -293f), i32(-2147483648), 4294967295u, -286f, vec2<f32>(576f, -197f)), Struct_1(vec4<f32>(-947f, -1000f, -418f, -158f), -6908i, 1u, -852f, vec2<f32>(383f, -1804f)), vec2<f32>(856f, -631f)), vec3<u32>(4294967295u, 1u, 68780u), Struct_1(vec4<f32>(-953f, 1490f, -1000f, -1112f), 2147483647i, 74431u, -485f, vec2<f32>(-455f, -1000f))), Struct_3(379u, Struct_2(true, Struct_1(vec4<f32>(-972f, -289f, -340f, -158f), 42481i, 0u, 446f, vec2<f32>(742f, 675f)), Struct_1(vec4<f32>(725f, 206f, -678f, -1000f), 0i, 4294967295u, 2766f, vec2<f32>(1570f, 1275f)), Struct_1(vec4<f32>(762f, -1913f, 1199f, -1119f), -1i, 27165u, 1266f, vec2<f32>(197f, -429f)), vec2<f32>(578f, 791f)), vec3<u32>(43246u, 1u, 4294967295u), Struct_1(vec4<f32>(1641f, 358f, 2155f, -1051f), -7154i, 0u, -275f, vec2<f32>(993f, 498f))), Struct_3(32252u, Struct_2(true, Struct_1(vec4<f32>(1028f, 114f, 481f, 1000f), -1i, 37876u, -1418f, vec2<f32>(-443f, -333f)), Struct_1(vec4<f32>(-1469f, 1449f, -571f, 633f), 2147483647i, 18506u, -1353f, vec2<f32>(423f, -1021f)), Struct_1(vec4<f32>(-303f, 1072f, 1062f, 2889f), 2147483647i, 4294967295u, 1133f, vec2<f32>(-758f, 2117f)), vec2<f32>(-440f, 1870f)), vec3<u32>(4294967295u, 486u, 1u), Struct_1(vec4<f32>(-339f, 418f, 1527f, -1282f), 20648i, 36023u, 1356f, vec2<f32>(-1944f, 595f))), Struct_3(81819u, Struct_2(false, Struct_1(vec4<f32>(-966f, -832f, -985f, 883f), 1i, 37580u, -1909f, vec2<f32>(-411f, 811f)), Struct_1(vec4<f32>(500f, -1099f, 376f, 1203f), 0i, 4294967295u, -931f, vec2<f32>(1653f, -662f)), Struct_1(vec4<f32>(-993f, 917f, -966f, 795f), 13903i, 4294967295u, -923f, vec2<f32>(701f, 317f)), vec2<f32>(-1341f, 1137f)), vec3<u32>(50848u, 1u, 20447u), Struct_1(vec4<f32>(812f, 1006f, -398f, -1760f), 4036i, 1u, -328f, vec2<f32>(-637f, 281f))), Struct_3(4294967295u, Struct_2(true, Struct_1(vec4<f32>(1932f, 781f, -1550f, -1356f), 4032i, 37644u, 1000f, vec2<f32>(130f, -382f)), Struct_1(vec4<f32>(269f, 319f, 1016f, 1012f), i32(-2147483648), 62577u, -906f, vec2<f32>(-621f, -1417f)), Struct_1(vec4<f32>(821f, -1000f, 1153f, 1000f), 1i, 0u, -1000f, vec2<f32>(-512f, 958f)), vec2<f32>(1310f, 261f)), vec3<u32>(4294967295u, 4294967295u, 24811u), Struct_1(vec4<f32>(-1916f, -338f, -1808f, 666f), -58360i, 136154u, 219f, vec2<f32>(1000f, 915f))), Struct_3(4294967295u, Struct_2(true, Struct_1(vec4<f32>(1209f, -869f, 1165f, -931f), i32(-2147483648), 50993u, -533f, vec2<f32>(630f, 1292f)), Struct_1(vec4<f32>(1322f, 481f, 371f, -1287f), 1i, 4294967295u, -1000f, vec2<f32>(515f, -1345f)), Struct_1(vec4<f32>(-662f, -1319f, 804f, -1508f), -1i, 1u, 627f, vec2<f32>(1215f, -839f)), vec2<f32>(1269f, -147f)), vec3<u32>(1u, 59703u, 49895u), Struct_1(vec4<f32>(-344f, -532f, 1142f, -1861f), 36515i, 26201u, -842f, vec2<f32>(-1584f, 2547f))), Struct_3(20808u, Struct_2(true, Struct_1(vec4<f32>(-1766f, 1000f, -735f, 1000f), 2147483647i, 0u, 461f, vec2<f32>(-671f, -1361f)), Struct_1(vec4<f32>(634f, 779f, 1000f, -527f), 3287i, 1u, 950f, vec2<f32>(-310f, -1561f)), Struct_1(vec4<f32>(250f, 933f, -557f, -1105f), i32(-2147483648), 1u, 284f, vec2<f32>(-275f, -150f)), vec2<f32>(-687f, 374f)), vec3<u32>(4294967295u, 1u, 37368u), Struct_1(vec4<f32>(-629f, 250f, 364f, -384f), 2147483647i, 3876u, 171f, vec2<f32>(796f, 1544f))), Struct_3(4294967295u, Struct_2(true, Struct_1(vec4<f32>(-1089f, 121f, -900f, 272f), 78219i, 24633u, 447f, vec2<f32>(2242f, 1360f)), Struct_1(vec4<f32>(-1675f, 1253f, 550f, -2024f), -1i, 12440u, -891f, vec2<f32>(831f, -910f)), Struct_1(vec4<f32>(-463f, 1348f, -1132f, -1143f), 1i, 0u, 439f, vec2<f32>(269f, 257f)), vec2<f32>(-1162f, -1312f)), vec3<u32>(32967u, 4294967295u, 28398u), Struct_1(vec4<f32>(-985f, 462f, -529f, -673f), 1i, 4294967295u, 1767f, vec2<f32>(-461f, 238f))), Struct_3(0u, Struct_2(true, Struct_1(vec4<f32>(477f, -1377f, 288f, 129f), -1i, 4294967295u, -1053f, vec2<f32>(-471f, 137f)), Struct_1(vec4<f32>(-767f, 2231f, -1202f, 157f), -1i, 35485u, 1000f, vec2<f32>(-1000f, 865f)), Struct_1(vec4<f32>(193f, -383f, -652f, -1195f), 2147483647i, 4294967295u, -1000f, vec2<f32>(-200f, 669f)), vec2<f32>(1117f, 1026f)), vec3<u32>(0u, 35282u, 76860u), Struct_1(vec4<f32>(-791f, -1722f, -1420f, -1045f), 0i, 13130u, -1412f, vec2<f32>(948f, 451f))), Struct_3(0u, Struct_2(false, Struct_1(vec4<f32>(419f, -409f, -2834f, -317f), 1i, 1u, -888f, vec2<f32>(-1952f, -159f)), Struct_1(vec4<f32>(1736f, 606f, -390f, 1443f), -31965i, 28514u, 1798f, vec2<f32>(1148f, 727f)), Struct_1(vec4<f32>(-806f, 190f, -485f, -286f), 23109i, 8745u, 874f, vec2<f32>(768f, 109f)), vec2<f32>(-587f, 304f)), vec3<u32>(4213u, 53366u, 0u), Struct_1(vec4<f32>(802f, -1560f, 354f, 187f), i32(-2147483648), 1u, 622f, vec2<f32>(200f, -182f))), Struct_3(1u, Struct_2(false, Struct_1(vec4<f32>(1000f, 1853f, -830f, 1642f), -2598i, 0u, -396f, vec2<f32>(877f, 1739f)), Struct_1(vec4<f32>(-742f, -595f, 1697f, 222f), 28132i, 0u, 883f, vec2<f32>(191f, -1846f)), Struct_1(vec4<f32>(1057f, -306f, -1322f, 3025f), 25262i, 4212u, 655f, vec2<f32>(-1791f, -1310f)), vec2<f32>(-578f, 1000f)), vec3<u32>(0u, 37257u, 14520u), Struct_1(vec4<f32>(-612f, 268f, -358f, 1941f), 2147483647i, 1u, 1651f, vec2<f32>(-1000f, -306f))), Struct_3(4294967295u, Struct_2(true, Struct_1(vec4<f32>(729f, -557f, 899f, -480f), 0i, 46387u, -120f, vec2<f32>(-1384f, 1583f)), Struct_1(vec4<f32>(-2619f, 775f, -307f, 1301f), 1i, 14355u, -1118f, vec2<f32>(-1454f, 200f)), Struct_1(vec4<f32>(-1169f, 993f, -712f, -1156f), 0i, 65014u, 506f, vec2<f32>(-699f, 1000f)), vec2<f32>(-1545f, 489f)), vec3<u32>(18138u, 16415u, 1u), Struct_1(vec4<f32>(-1841f, 363f, 661f, 121f), 26882i, 1u, -1068f, vec2<f32>(-838f, 438f))), Struct_3(26218u, Struct_2(true, Struct_1(vec4<f32>(-2963f, 703f, -1000f, -916f), -1i, 1u, 179f, vec2<f32>(894f, -122f)), Struct_1(vec4<f32>(-1788f, 730f, -878f, 2597f), 6186i, 11326u, 194f, vec2<f32>(708f, 915f)), Struct_1(vec4<f32>(-1722f, -998f, 1000f, 305f), i32(-2147483648), 4294967295u, -986f, vec2<f32>(137f, 314f)), vec2<f32>(-444f, -1191f)), vec3<u32>(4294967295u, 4294967295u, 8457u), Struct_1(vec4<f32>(-692f, 1371f, 660f, -514f), 43304i, 0u, 1268f, vec2<f32>(1000f, -955f))), Struct_3(26627u, Struct_2(true, Struct_1(vec4<f32>(-104f, -1000f, -1071f, -402f), -9295i, 14527u, 488f, vec2<f32>(1000f, -937f)), Struct_1(vec4<f32>(-1209f, -246f, 2186f, 364f), 3457i, 37837u, -805f, vec2<f32>(-1000f, 349f)), Struct_1(vec4<f32>(147f, 361f, 461f, -417f), 32935i, 1u, 205f, vec2<f32>(722f, -1000f)), vec2<f32>(269f, -205f)), vec3<u32>(0u, 4294967295u, 92300u), Struct_1(vec4<f32>(-174f, -2645f, 1187f, 1047f), -52809i, 26275u, 238f, vec2<f32>(-441f, 2252f))), Struct_3(0u, Struct_2(true, Struct_1(vec4<f32>(984f, -237f, -485f, -546f), -1528i, 25543u, 1565f, vec2<f32>(1619f, -698f)), Struct_1(vec4<f32>(951f, 1000f, 308f, 431f), 0i, 0u, -455f, vec2<f32>(-341f, -576f)), Struct_1(vec4<f32>(-580f, 728f, -725f, -1499f), 2147483647i, 30947u, -208f, vec2<f32>(798f, -1103f)), vec2<f32>(-633f, -406f)), vec3<u32>(21515u, 1u, 62453u), Struct_1(vec4<f32>(-1000f, 479f, -1072f, 1000f), -1i, 1u, 1345f, vec2<f32>(1596f, -506f))), Struct_3(0u, Struct_2(true, Struct_1(vec4<f32>(1441f, -484f, 2314f, 381f), -30856i, 0u, 501f, vec2<f32>(548f, -389f)), Struct_1(vec4<f32>(-137f, 2118f, 1738f, -105f), 1i, 1u, -1000f, vec2<f32>(-346f, 1026f)), Struct_1(vec4<f32>(196f, 358f, -1148f, 1000f), -8387i, 0u, 1076f, vec2<f32>(-263f, 1428f)), vec2<f32>(202f, 155f)), vec3<u32>(1u, 1495u, 4294967295u), Struct_1(vec4<f32>(-179f, 207f, 148f, -580f), -33060i, 44187u, -589f, vec2<f32>(177f, -820f))), Struct_3(4631u, Struct_2(true, Struct_1(vec4<f32>(-223f, -108f, -1392f, -945f), 1i, 4294967295u, -437f, vec2<f32>(-2653f, 528f)), Struct_1(vec4<f32>(1833f, 1000f, 1626f, -944f), 32887i, 11858u, -1285f, vec2<f32>(575f, -2303f)), Struct_1(vec4<f32>(-1392f, 201f, -430f, -1000f), -21154i, 11687u, -1000f, vec2<f32>(323f, 1575f)), vec2<f32>(725f, 759f)), vec3<u32>(45590u, 49039u, 1u), Struct_1(vec4<f32>(-801f, -1994f, -888f, -909f), -37078i, 42257u, -569f, vec2<f32>(2120f, -343f))), Struct_3(848u, Struct_2(false, Struct_1(vec4<f32>(465f, -812f, -1000f, -380f), -33280i, 62991u, 1000f, vec2<f32>(-789f, -287f)), Struct_1(vec4<f32>(-275f, 1614f, -385f, -716f), 0i, 51939u, 314f, vec2<f32>(1225f, 393f)), Struct_1(vec4<f32>(-1000f, -249f, -519f, -357f), -1i, 76484u, 322f, vec2<f32>(-266f, 1412f)), vec2<f32>(-528f, -725f)), vec3<u32>(67663u, 1u, 9061u), Struct_1(vec4<f32>(-481f, -1187f, 116f, 449f), -32067i, 0u, 294f, vec2<f32>(643f, -933f))), Struct_3(25377u, Struct_2(true, Struct_1(vec4<f32>(568f, 2025f, 392f, -1773f), -72i, 4294967295u, -913f, vec2<f32>(-637f, -1058f)), Struct_1(vec4<f32>(-2194f, 1000f, 1616f, -301f), 1i, 1u, 446f, vec2<f32>(-1711f, 411f)), Struct_1(vec4<f32>(-1007f, -901f, 888f, -242f), 25975i, 10316u, -534f, vec2<f32>(-1226f, 935f)), vec2<f32>(-496f, -2139f)), vec3<u32>(54713u, 7597u, 1u), Struct_1(vec4<f32>(806f, 997f, -943f, 1557f), 8464i, 0u, -1003f, vec2<f32>(-753f, -150f))), Struct_3(4294967295u, Struct_2(false, Struct_1(vec4<f32>(113f, 1673f, 912f, 1307f), -32145i, 0u, -627f, vec2<f32>(-567f, 1189f)), Struct_1(vec4<f32>(616f, 1000f, -974f, 184f), -16773i, 0u, -1062f, vec2<f32>(1665f, -1257f)), Struct_1(vec4<f32>(-1235f, 1248f, 1319f, 1000f), 29116i, 4277u, 493f, vec2<f32>(-1546f, 322f)), vec2<f32>(549f, 1835f)), vec3<u32>(0u, 51915u, 30926u), Struct_1(vec4<f32>(-209f, -551f, 510f, 1840f), -13430i, 3992u, -1000f, vec2<f32>(494f, -270f))), Struct_3(0u, Struct_2(false, Struct_1(vec4<f32>(-600f, -455f, -1650f, 1000f), -8770i, 10833u, 255f, vec2<f32>(281f, -464f)), Struct_1(vec4<f32>(-992f, -1477f, -1479f, 555f), 2147483647i, 19421u, -651f, vec2<f32>(-703f, -1260f)), Struct_1(vec4<f32>(-958f, 1213f, 239f, 372f), -1i, 639u, -1236f, vec2<f32>(783f, -380f)), vec2<f32>(-1000f, 642f)), vec3<u32>(51447u, 65410u, 4294967295u), Struct_1(vec4<f32>(874f, -757f, 1000f, -171f), 2147483647i, 1u, -1366f, vec2<f32>(-122f, 138f))), Struct_3(0u, Struct_2(false, Struct_1(vec4<f32>(-468f, 1000f, -2651f, 1525f), 1i, 4294967295u, 1000f, vec2<f32>(1148f, 612f)), Struct_1(vec4<f32>(1000f, -1274f, 1274f, -649f), 6872i, 76958u, 1414f, vec2<f32>(334f, 489f)), Struct_1(vec4<f32>(-450f, 1000f, 689f, 269f), 1i, 0u, -1048f, vec2<f32>(1820f, 535f)), vec2<f32>(-152f, 1000f)), vec3<u32>(20521u, 33083u, 1u), Struct_1(vec4<f32>(-233f, -976f, 438f, 1534f), -41800i, 40349u, -172f, vec2<f32>(-598f, 1427f))), Struct_3(1u, Struct_2(false, Struct_1(vec4<f32>(2076f, 871f, 649f, 1394f), 8013i, 20246u, 252f, vec2<f32>(-766f, 1174f)), Struct_1(vec4<f32>(210f, 404f, -1369f, -1066f), -32232i, 99864u, 1000f, vec2<f32>(689f, -200f)), Struct_1(vec4<f32>(-1377f, 422f, -359f, -921f), i32(-2147483648), 1u, 388f, vec2<f32>(-2040f, -1156f)), vec2<f32>(-151f, -933f)), vec3<u32>(0u, 4294967295u, 32399u), Struct_1(vec4<f32>(2293f, -237f, -1229f, -269f), 2147483647i, 0u, 149f, vec2<f32>(-889f, 547f))), Struct_3(1u, Struct_2(true, Struct_1(vec4<f32>(782f, 233f, -1319f, -910f), -32664i, 0u, 556f, vec2<f32>(-667f, -230f)), Struct_1(vec4<f32>(1242f, -471f, -145f, 1010f), 9129i, 1u, -225f, vec2<f32>(-1086f, 147f)), Struct_1(vec4<f32>(258f, -414f, 748f, 2107f), 24242i, 4294967295u, -1032f, vec2<f32>(-767f, 1068f)), vec2<f32>(1366f, -714f)), vec3<u32>(0u, 14097u, 77977u), Struct_1(vec4<f32>(-1000f, -2226f, 501f, 1461f), -1i, 4294967295u, -1439f, vec2<f32>(1674f, -793f))), Struct_3(0u, Struct_2(true, Struct_1(vec4<f32>(385f, -1496f, 531f, 554f), -18773i, 4294967295u, 1443f, vec2<f32>(306f, 583f)), Struct_1(vec4<f32>(-442f, -1264f, -109f, 987f), 34722i, 1u, 1051f, vec2<f32>(1082f, -789f)), Struct_1(vec4<f32>(-2973f, -327f, -694f, -1000f), 2147483647i, 0u, 312f, vec2<f32>(-804f, 308f)), vec2<f32>(-1332f, 680f)), vec3<u32>(25026u, 82326u, 1u), Struct_1(vec4<f32>(304f, 1065f, 563f, 656f), 0i, 0u, 1000f, vec2<f32>(-1000f, -1565f))), Struct_3(0u, Struct_2(false, Struct_1(vec4<f32>(702f, -605f, -1000f, -1018f), 0i, 1u, -1000f, vec2<f32>(1206f, -364f)), Struct_1(vec4<f32>(1423f, 1130f, 102f, 628f), 8502i, 0u, -1174f, vec2<f32>(929f, -782f)), Struct_1(vec4<f32>(-610f, -274f, -458f, 860f), -1i, 1u, 239f, vec2<f32>(684f, -874f)), vec2<f32>(-1000f, 220f)), vec3<u32>(3979u, 0u, 94103u), Struct_1(vec4<f32>(-346f, 2123f, -1021f, 1000f), 33893i, 26185u, 864f, vec2<f32>(-1577f, 1982f))));

var<private> global3: array<vec4<f32>, 23>;

var<private> global4: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec3<f32>(-952f, 1764f, 478f), 0u, 1u, 14269u, vec4<u32>(54652u, 32749u, 85532u, 1u)), Struct_4(vec3<f32>(1184f, 436f, -604f), 50313u, 4294967295u, 1u, vec4<u32>(1u, 1259u, 12655u, 0u)), Struct_4(vec3<f32>(-1968f, 1516f, 224f), 46912u, 0u, 8082u, vec4<u32>(0u, 4294967295u, 108036u, 1u)), Struct_4(vec3<f32>(1000f, -818f, -302f), 4294967295u, 1u, 0u, vec4<u32>(4294967295u, 5308u, 33452u, 37821u)), Struct_4(vec3<f32>(-1069f, 1000f, -2156f), 4294967295u, 58645u, 4294967295u, vec4<u32>(74797u, 4294967295u, 50288u, 68538u)), Struct_4(vec3<f32>(1000f, 298f, 418f), 0u, 6607u, 31689u, vec4<u32>(4294967295u, 809u, 25279u, 1u)), Struct_4(vec3<f32>(-218f, 351f, -1313f), 0u, 4294967295u, 85321u, vec4<u32>(33444u, 70168u, 0u, 4294967295u)), Struct_4(vec3<f32>(1229f, -1213f, -1011f), 2609u, 15176u, 4294967295u, vec4<u32>(79473u, 15584u, 1u, 0u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-627f)), arg_0.d.a.x) - 1430f) + _wgslsmith_div_f32(-1445f, _wgslsmith_f_op_f32(min(arg_2.b.b.d, -120f))));
    let var_1 = _wgslsmith_f_op_f32(-1312f - 1000f);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a.x, var_1, _wgslsmith_f_op_f32(-arg_0.c.d)))), arg_0.d.a.wyz, true)), abs(global0.c), global1.c, arg_2.c.x, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(max(~vec4<u32>(13481u, u_input.c, 0u, arg_0.b.c), vec4<u32>(102812u, global0.c, u_input.c, arg_0.d.c)), vec4<u32>(_wgslsmith_sub_u32(0u, global1.c), _wgslsmith_mod_u32(arg_2.d.c, 1585u), countOneBits(16676u), global0.c >> (4294967295u % 32u))), _wgslsmith_clamp_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, 52483u, arg_0.d.c), vec4<u32>(89848u, 0u, 12745u, global1.c), vec4<u32>(arg_2.a, 61225u, arg_0.c.c, 0u)), vec4<u32>(60422u, 4294967295u, 0u, arg_0.d.c) << (vec4<u32>(0u, 4294967295u, u_input.c, global1.c) % vec4<u32>(32u)), true), vec4<u32>(~65783u, u_input.c, ~86412u, 1u), vec4<u32>(45979u, _wgslsmith_dot_vec2_u32(arg_2.c.xx, arg_2.c.yy), 4294967295u, _wgslsmith_mod_u32(global0.c, global1.c)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1, arg_0.e.x, 1117f, global1.e.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a.x, 192f, -129f, -716f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.d.e.x))), _wgslsmith_f_op_f32(f32(-1f) * -562f), 291f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) - 1f))), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.c.b, arg_0.b.b, ~400i, arg_2.b.c.b << (20575u % 32u)), abs(u_input.b)), var_2.d, var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.zy)));
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(exp2(var_3.e.x)), false | arg_1.x)), 214f, arg_2.b.c.d))), _wgslsmith_mult_u32(~global0.c, u_input.c), firstTrailingBit(abs(global1.c)), min(var_2.e.x, select(arg_0.c.c, var_3.c, arg_0.a)), ~firstTrailingBit(~vec4<u32>(20517u, 0u, 2783u, global0.c)));
    return !vec4<bool>(!any(vec4<bool>(true, true, true, arg_0.a)), arg_1.x, any(arg_1.zx), select(all(!vec2<bool>(true, arg_2.b.a)), arg_0.a, max(u_input.c, 55098u) < ~38020u));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = all(!func_3(Struct_2(true, Struct_1(global0.a, global0.b, 119583u, global1.d, global1.a.yz), Struct_1(vec4<f32>(global1.d, global0.d, -1541f, -1000f), global0.b, arg_1.x, global0.d, global1.a.yw), Struct_1(vec4<f32>(global1.a.x, global0.e.x, global1.d, global1.d), 1i, 64471u, 1566f, global1.e), vec2<f32>(-2000f, -670f)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), Struct_3(52834u, Struct_2(false, Struct_1(global3[_wgslsmith_index_u32(global1.c, 23u)], u_input.a.x, 23084u, 478f, global0.e), Struct_1(global1.a, u_input.a.x, 1u, -673f, global1.a.xz), Struct_1(vec4<f32>(global0.e.x, 420f, -184f, 130f), arg_0, 7064u, global0.d, global1.e), global1.e), arg_1.zyx, Struct_1(global0.a, -34695i, global0.c, 1000f, vec2<f32>(global0.e.x, 345f))))) || true;
    var var_1 = (_wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(global1.c, arg_1.x, u_input.c)), arg_1.zww) << (vec3<u32>(global0.c, _wgslsmith_sub_u32(u_input.c, _wgslsmith_mod_u32(4294967295u, arg_1.x)), firstLeadingBit(28449u)) % vec3<u32>(32u))) ^ firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global0.c, global1.c), u_input.c, ~u_input.c), ~vec3<u32>(arg_1.x, global1.c, 8681u) | (arg_1.wyy >> (arg_1.wzx % vec3<u32>(32u)))));
    let var_2 = global4[_wgslsmith_index_u32(4294967295u, 8u)];
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-828f)), 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.e.x)) - _wgslsmith_f_op_f32(-var_2.a.x)), var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a.x, global1.a.x)) * -152f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - -1814f)))), countOneBits(~(-u_input.a.x) << (~firstTrailingBit(4294967295u) % 32u)), 25244u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1998f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global0.e.x, global1.d)), _wgslsmith_f_op_f32(abs(1000f)), true))))), _wgslsmith_f_op_vec2_f32(abs(global0.e)));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global1.a.wyz))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, global0.d, -383f))))), 0u, 37422u & ~var_2.c, 1u, ~select(arg_1, var_2.e, vec4<bool>(true, false, u_input.a.x != global1.b, true)));
    return vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(231f)), var_2.a.x), 590f)))), var_2.a.x, _wgslsmith_f_op_f32(-global1.e.x));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_div_vec3_f32(global1.a.zzz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.xwx) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-363f, global1.d, -872f), vec3<f32>(global1.a.x, -200f, 527f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.e.x, global0.e.x, global1.e.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(2147483647i << (global0.c % 32u), vec4<u32>(global0.c, 0u, global0.c, 4294967295u))))));
    global4 = array<Struct_4, 8>();
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 29>();
    let var_0 = Struct_2(((false != (global0.e.x > -704f)) | !any(vec2<bool>(false, false))) && (true != func_1(vec2<bool>(true, false))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(global1.c, 23u)]) - _wgslsmith_f_op_vec4_f32(max(global1.a, vec4<f32>(global0.e.x, global0.e.x, global0.e.x, -918f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(425f, -1065f, 1163f, global1.a.x)), vec4<f32>(1622f, global1.e.x, global1.e.x, 208f)))), -_wgslsmith_mod_i32(global1.b, u_input.b.x), reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(84137u, 33435u, global0.c, 4294967295u), vec4<u32>(56039u, u_input.c, u_input.c, 30492u), vec4<u32>(61613u, 0u, u_input.c, global1.c)), vec4<u32>(global0.c, 25919u, global0.c, global0.c))), global0.d, global1.a.xz), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global3[_wgslsmith_index_u32(abs(876u), 23u)])) * vec4<f32>(-626f, _wgslsmith_f_op_f32(-global1.d), global1.d, _wgslsmith_f_op_f32(global0.a.x - -827f))), global1.b, u_input.c, _wgslsmith_f_op_f32(min(183f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(688f, global1.a.x))))), vec2<f32>(_wgslsmith_f_op_f32(-global1.e.x), global0.a.x)), Struct_1(vec4<f32>(-1187f, global0.a.x, 702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global0.d))), -(i32(-1i) * -global0.b), reverseBits(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(50730u, global0.c), vec2<u32>(0u, global0.c)))), global0.e.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-500f, -453f)) - _wgslsmith_f_op_vec2_f32(-global1.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.wy) + _wgslsmith_div_vec2_f32(global0.a.xw, global0.e)))), _wgslsmith_f_op_vec3_f32(func_2(2147483647i, ~vec4<u32>(1u, 0u, ~u_input.c, global0.c))).xz);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-173f * _wgslsmith_f_op_f32(127f + 375f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.e.x, var_0.b.e.x)))))));
    global0 = Struct_1(var_0.c.a, 23215i, ~abs(global1.c) | var_0.d.c, _wgslsmith_f_op_f32(floor(global1.e.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.a.x, var_1.x) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.xw - var_0.c.a.xy), global0.a.yx))));
    global0 = var_0.b;
    var var_2 = _wgslsmith_clamp_u32(u_input.c ^ abs(_wgslsmith_mult_u32(var_0.d.c, global1.c)), global1.c, ~22735u) > ~_wgslsmith_div_u32(countOneBits(global0.c), ~10036u);
    var var_3 = vec3<u32>(global1.c, 8102u, global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global1.b, 15237i, ~_wgslsmith_sub_i32(-1i, 57998i) >> (~firstTrailingBit(global0.c) % 32u)), global0.a.x, (~global0.b | -5223i) << ((min(global1.c, ~2458u) << (global0.c % 32u)) % 32u), reverseBits(u_input.b.wwx));
}

