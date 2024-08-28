struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec2<u32>(1u, 1u), vec3<i32>(-26843i, -12656i, 15238i), Struct_2(vec2<u32>(4294967295u, 30573u), Struct_1(-10348i, -1348f, vec3<f32>(1422f, 251f, -1926f), vec3<u32>(40712u, 9983u, 4294967295u), 0u), false, Struct_1(-5086i, 485f, vec3<f32>(332f, -625f, 991f), vec3<u32>(7507u, 1u, 0u), 1u)), vec2<u32>(4294967295u, 4294967295u), Struct_2(vec2<u32>(0u, 19145u), Struct_1(-40593i, -799f, vec3<f32>(-373f, -391f, 313f), vec3<u32>(70686u, 0u, 38570u), 1u), true, Struct_1(2147483647i, 778f, vec3<f32>(1692f, -701f, -298f), vec3<u32>(15194u, 69353u, 1u), 1u))), Struct_3(vec2<u32>(51183u, 0u), vec3<i32>(0i, -28706i, 1i), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(33265i, 1709f, vec3<f32>(-315f, 2340f, -455f), vec3<u32>(1u, 34990u, 32133u), 34977u), true, Struct_1(0i, -1480f, vec3<f32>(-1000f, -852f, -1208f), vec3<u32>(91877u, 57832u, 4294967295u), 0u)), vec2<u32>(0u, 73963u), Struct_2(vec2<u32>(83288u, 14031u), Struct_1(-427i, -1302f, vec3<f32>(-2195f, 364f, 952f), vec3<u32>(101639u, 0u, 0u), 0u), true, Struct_1(-14326i, -912f, vec3<f32>(-1514f, 1247f, -572f), vec3<u32>(4294967295u, 0u, 0u), 4567u))), Struct_3(vec2<u32>(52201u, 0u), vec3<i32>(25290i, 0i, 1693i), Struct_2(vec2<u32>(0u, 0u), Struct_1(-23167i, -2023f, vec3<f32>(514f, 1199f, -1679f), vec3<u32>(1u, 4294967295u, 0u), 0u), false, Struct_1(-39665i, 450f, vec3<f32>(237f, -1187f, -692f), vec3<u32>(88284u, 2710u, 1u), 1u)), vec2<u32>(48685u, 4294967295u), Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(i32(-2147483648), -2341f, vec3<f32>(2690f, 481f, -1726f), vec3<u32>(1u, 4294967295u, 33744u), 29459u), true, Struct_1(0i, -163f, vec3<f32>(-729f, 309f, -372f), vec3<u32>(1210u, 4294967295u, 0u), 4294967295u))), Struct_3(vec2<u32>(1u, 0u), vec3<i32>(2147483647i, 1i, 11802i), Struct_2(vec2<u32>(30522u, 6705u), Struct_1(1i, -722f, vec3<f32>(1255f, 1464f, 1302f), vec3<u32>(0u, 4294967295u, 4294967295u), 11529u), false, Struct_1(-67189i, 221f, vec3<f32>(1119f, -604f, 1096f), vec3<u32>(71340u, 16426u, 4198u), 1u)), vec2<u32>(1u, 59817u), Struct_2(vec2<u32>(21510u, 1u), Struct_1(2147483647i, 921f, vec3<f32>(-1667f, -1049f, -1716f), vec3<u32>(4294967295u, 0u, 0u), 47238u), true, Struct_1(3859i, 1632f, vec3<f32>(380f, 1615f, -192f), vec3<u32>(4294967295u, 54373u, 0u), 0u))), Struct_3(vec2<u32>(0u, 48522u), vec3<i32>(0i, 5564i, 0i), Struct_2(vec2<u32>(1u, 858u), Struct_1(-33106i, 2130f, vec3<f32>(-452f, 689f, -665f), vec3<u32>(1u, 39739u, 0u), 4881u), false, Struct_1(2147483647i, 997f, vec3<f32>(695f, -525f, 1107f), vec3<u32>(16515u, 6853u, 23535u), 38839u)), vec2<u32>(82359u, 59329u), Struct_2(vec2<u32>(69u, 72363u), Struct_1(i32(-2147483648), -1730f, vec3<f32>(-621f, 345f, 525f), vec3<u32>(1u, 6685u, 49411u), 13663u), true, Struct_1(-15583i, 762f, vec3<f32>(-1176f, 863f, 330f), vec3<u32>(4294967295u, 805u, 0u), 1u))), Struct_3(vec2<u32>(109208u, 90626u), vec3<i32>(-11581i, 1i, -21320i), Struct_2(vec2<u32>(7998u, 78962u), Struct_1(7189i, -370f, vec3<f32>(1707f, 1000f, -1066f), vec3<u32>(0u, 1u, 1u), 41544u), false, Struct_1(0i, -720f, vec3<f32>(1650f, 1157f, 192f), vec3<u32>(0u, 0u, 16879u), 4294967295u)), vec2<u32>(52409u, 99957u), Struct_2(vec2<u32>(47421u, 0u), Struct_1(6015i, -347f, vec3<f32>(1053f, 1120f, 1089f), vec3<u32>(37302u, 0u, 1u), 1u), false, Struct_1(1i, -189f, vec3<f32>(-409f, -508f, -391f), vec3<u32>(37410u, 0u, 1u), 1u))), Struct_3(vec2<u32>(0u, 12144u), vec3<i32>(-1i, 7049i, -1i), Struct_2(vec2<u32>(4294967295u, 90518u), Struct_1(3918i, -1000f, vec3<f32>(1012f, -200f, -186f), vec3<u32>(0u, 17271u, 15860u), 26207u), true, Struct_1(2147483647i, -152f, vec3<f32>(785f, -1622f, -516f), vec3<u32>(4294967295u, 4294967295u, 1u), 0u)), vec2<u32>(70724u, 16723u), Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(-1i, 230f, vec3<f32>(-616f, 2090f, 598f), vec3<u32>(35869u, 116690u, 69634u), 1u), false, Struct_1(54748i, -106f, vec3<f32>(-435f, -1708f, -493f), vec3<u32>(54140u, 19468u, 77935u), 6639u))), Struct_3(vec2<u32>(0u, 151966u), vec3<i32>(i32(-2147483648), -239i, 1i), Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(1i, 838f, vec3<f32>(-351f, -1560f, 2270f), vec3<u32>(0u, 1u, 65017u), 23u), true, Struct_1(10283i, 334f, vec3<f32>(1308f, -1344f, -269f), vec3<u32>(10868u, 1u, 1u), 4294967295u)), vec2<u32>(8997u, 33342u), Struct_2(vec2<u32>(18924u, 948u), Struct_1(1i, 953f, vec3<f32>(-1817f, 728f, -1318f), vec3<u32>(94095u, 55357u, 9891u), 0u), false, Struct_1(1i, 154f, vec3<f32>(234f, 820f, -179f), vec3<u32>(63019u, 1u, 21848u), 13969u))), Struct_3(vec2<u32>(4294967295u, 14054u), vec3<i32>(2147483647i, -1i, 18988i), Struct_2(vec2<u32>(79622u, 27776u), Struct_1(-2111i, -1670f, vec3<f32>(392f, -1068f, -1832f), vec3<u32>(1u, 4294967295u, 0u), 1u), false, Struct_1(-12053i, -1571f, vec3<f32>(214f, -612f, 1012f), vec3<u32>(31276u, 4294967295u, 0u), 4294967295u)), vec2<u32>(13518u, 9611u), Struct_2(vec2<u32>(14120u, 4294967295u), Struct_1(-3504i, 291f, vec3<f32>(-1000f, -310f, 537f), vec3<u32>(4294967295u, 3364u, 82835u), 4294967295u), true, Struct_1(-11379i, 449f, vec3<f32>(461f, 455f, 620f), vec3<u32>(11558u, 69619u, 2641u), 4294967295u))), Struct_3(vec2<u32>(1u, 15444u), vec3<i32>(-16970i, -3962i, i32(-2147483648)), Struct_2(vec2<u32>(6554u, 11573u), Struct_1(2147483647i, 197f, vec3<f32>(1587f, 371f, -1000f), vec3<u32>(28795u, 38794u, 9382u), 21469u), true, Struct_1(21841i, 330f, vec3<f32>(963f, 510f, 280f), vec3<u32>(87996u, 4294967295u, 4294967295u), 61048u)), vec2<u32>(0u, 49224u), Struct_2(vec2<u32>(68039u, 36177u), Struct_1(0i, 1180f, vec3<f32>(-1000f, -1369f, -978f), vec3<u32>(1u, 0u, 4294967295u), 0u), true, Struct_1(-18571i, 270f, vec3<f32>(788f, 374f, -665f), vec3<u32>(1u, 73722u, 32063u), 4294967295u))), Struct_3(vec2<u32>(45339u, 27996u), vec3<i32>(-40248i, 1i, -31267i), Struct_2(vec2<u32>(4294967295u, 27739u), Struct_1(27676i, -117f, vec3<f32>(1357f, 1844f, -617f), vec3<u32>(1u, 0u, 52078u), 4294967295u), true, Struct_1(2147483647i, 376f, vec3<f32>(598f, -247f, -1380f), vec3<u32>(64341u, 0u, 1u), 25336u)), vec2<u32>(4294967295u, 33193u), Struct_2(vec2<u32>(4294967295u, 50635u), Struct_1(1i, 1350f, vec3<f32>(-796f, -1738f, -133f), vec3<u32>(0u, 0u, 1u), 4294967295u), false, Struct_1(2147483647i, 2530f, vec3<f32>(728f, 713f, 1063f), vec3<u32>(0u, 1u, 0u), 12911u))), Struct_3(vec2<u32>(55242u, 52711u), vec3<i32>(1i, -20413i, -27410i), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(-9971i, -1033f, vec3<f32>(453f, -123f, 719f), vec3<u32>(1u, 24316u, 4294967295u), 69609u), false, Struct_1(i32(-2147483648), 332f, vec3<f32>(650f, -475f, -473f), vec3<u32>(17382u, 15854u, 34716u), 4294967295u)), vec2<u32>(5540u, 46418u), Struct_2(vec2<u32>(4294967295u, 9158u), Struct_1(31624i, 821f, vec3<f32>(-146f, 1357f, -1000f), vec3<u32>(49418u, 26737u, 4294967295u), 1u), true, Struct_1(-1i, 102f, vec3<f32>(-645f, -854f, 821f), vec3<u32>(1u, 4294967295u, 21175u), 47970u))), Struct_3(vec2<u32>(12968u, 30914u), vec3<i32>(1i, -1i, 0i), Struct_2(vec2<u32>(43884u, 1u), Struct_1(2147483647i, -1683f, vec3<f32>(903f, -1962f, 333f), vec3<u32>(68895u, 45172u, 0u), 4294967295u), false, Struct_1(i32(-2147483648), 564f, vec3<f32>(1000f, -715f, -1000f), vec3<u32>(29159u, 0u, 0u), 44313u)), vec2<u32>(4294967295u, 82341u), Struct_2(vec2<u32>(1u, 72326u), Struct_1(-1i, 709f, vec3<f32>(-692f, 1697f, -221f), vec3<u32>(4294967295u, 1u, 1u), 4294967295u), true, Struct_1(0i, 1062f, vec3<f32>(1502f, 394f, 305f), vec3<u32>(21258u, 23244u, 38186u), 13487u))), Struct_3(vec2<u32>(0u, 4294967295u), vec3<i32>(-13897i, -1i, 1i), Struct_2(vec2<u32>(18981u, 79871u), Struct_1(i32(-2147483648), 1000f, vec3<f32>(457f, 570f, 920f), vec3<u32>(3996u, 0u, 4294967295u), 45091u), true, Struct_1(-18585i, -113f, vec3<f32>(-2470f, 2096f, -1000f), vec3<u32>(1u, 8378u, 80309u), 1u)), vec2<u32>(1u, 0u), Struct_2(vec2<u32>(32993u, 1u), Struct_1(0i, 1735f, vec3<f32>(-1332f, -1543f, 204f), vec3<u32>(1u, 46442u, 3680u), 0u), false, Struct_1(-18417i, -930f, vec3<f32>(464f, -564f, -914f), vec3<u32>(4294967295u, 21695u, 12424u), 27697u))), Struct_3(vec2<u32>(1u, 3497u), vec3<i32>(1i, 1i, -21460i), Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(25437i, 1495f, vec3<f32>(1059f, -2191f, 1744f), vec3<u32>(4294967295u, 81618u, 49358u), 4682u), false, Struct_1(0i, -136f, vec3<f32>(1104f, -484f, -297f), vec3<u32>(1u, 0u, 0u), 3641u)), vec2<u32>(4294967295u, 4294967295u), Struct_2(vec2<u32>(1u, 33654u), Struct_1(7722i, 298f, vec3<f32>(992f, 1000f, 1049f), vec3<u32>(49677u, 64817u, 50056u), 0u), false, Struct_1(2147483647i, -1099f, vec3<f32>(617f, -1249f, 1468f), vec3<u32>(0u, 46444u, 35258u), 49591u))), Struct_3(vec2<u32>(26937u, 28151u), vec3<i32>(-9045i, 5121i, 51958i), Struct_2(vec2<u32>(7625u, 13091u), Struct_1(-50046i, -188f, vec3<f32>(-1655f, -192f, 174f), vec3<u32>(4294967295u, 0u, 0u), 0u), false, Struct_1(1i, 116f, vec3<f32>(-1136f, 1208f, -231f), vec3<u32>(0u, 13549u, 2633u), 1u)), vec2<u32>(4294967295u, 25851u), Struct_2(vec2<u32>(1u, 0u), Struct_1(0i, 2145f, vec3<f32>(811f, -856f, -818f), vec3<u32>(35002u, 4294967295u, 9725u), 1u), true, Struct_1(9981i, 1000f, vec3<f32>(1425f, 838f, 109f), vec3<u32>(1u, 15438u, 1u), 4294967295u))), Struct_3(vec2<u32>(68948u, 4294967295u), vec3<i32>(6330i, 0i, 5264i), Struct_2(vec2<u32>(63502u, 26366u), Struct_1(4003i, 359f, vec3<f32>(1000f, 1546f, 760f), vec3<u32>(0u, 4294967295u, 0u), 4294967295u), false, Struct_1(11651i, 190f, vec3<f32>(183f, -620f, 1442f), vec3<u32>(32378u, 4294967295u, 4294967295u), 370u)), vec2<u32>(1u, 0u), Struct_2(vec2<u32>(61982u, 1u), Struct_1(-32647i, -1421f, vec3<f32>(-871f, 186f, 947f), vec3<u32>(99u, 1u, 0u), 1u), true, Struct_1(i32(-2147483648), 2909f, vec3<f32>(-1051f, 547f, 561f), vec3<u32>(19016u, 41510u, 14194u), 37799u))), Struct_3(vec2<u32>(76818u, 11026u), vec3<i32>(0i, 17752i, 2147483647i), Struct_2(vec2<u32>(20037u, 91344u), Struct_1(1i, -1512f, vec3<f32>(994f, 1756f, -417f), vec3<u32>(28572u, 1u, 1u), 4294967295u), false, Struct_1(-6016i, 1000f, vec3<f32>(3403f, -790f, 536f), vec3<u32>(335u, 1u, 22932u), 1u)), vec2<u32>(4294967295u, 15697u), Struct_2(vec2<u32>(7237u, 40335u), Struct_1(21869i, -1000f, vec3<f32>(516f, -1000f, -1707f), vec3<u32>(1484u, 17323u, 0u), 1603u), true, Struct_1(1i, 232f, vec3<f32>(1503f, 647f, 660f), vec3<u32>(4294967295u, 0u, 8883u), 4294967295u))), Struct_3(vec2<u32>(1099u, 4294967295u), vec3<i32>(1i, -1i, i32(-2147483648)), Struct_2(vec2<u32>(25741u, 63328u), Struct_1(-1i, -796f, vec3<f32>(-693f, -143f, 1372f), vec3<u32>(0u, 4294967295u, 35294u), 1u), true, Struct_1(1i, 1000f, vec3<f32>(-911f, 132f, 912f), vec3<u32>(1u, 11869u, 1u), 24228u)), vec2<u32>(0u, 66122u), Struct_2(vec2<u32>(0u, 121646u), Struct_1(-12544i, 1696f, vec3<f32>(-434f, 1000f, 384f), vec3<u32>(63315u, 0u, 1u), 0u), true, Struct_1(i32(-2147483648), 1453f, vec3<f32>(-392f, 1038f, 1398f), vec3<u32>(4294967295u, 26768u, 1u), 4294967295u))), Struct_3(vec2<u32>(0u, 18120u), vec3<i32>(i32(-2147483648), i32(-2147483648), -48227i), Struct_2(vec2<u32>(4294967295u, 8800u), Struct_1(-3937i, -810f, vec3<f32>(222f, 992f, 2947f), vec3<u32>(27313u, 56486u, 4294967295u), 44506u), false, Struct_1(2147483647i, -661f, vec3<f32>(-1011f, 1436f, -1571f), vec3<u32>(34573u, 63009u, 30996u), 4294967295u)), vec2<u32>(53131u, 83225u), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(1i, -990f, vec3<f32>(1634f, 1000f, -340f), vec3<u32>(1u, 6572u, 4294967295u), 0u), true, Struct_1(-96506i, -1182f, vec3<f32>(-1401f, -119f, -658f), vec3<u32>(4294967295u, 5933u, 4294967295u), 1u))), Struct_3(vec2<u32>(4294967295u, 4452u), vec3<i32>(-3508i, 2147483647i, 0i), Struct_2(vec2<u32>(118376u, 22646u), Struct_1(6i, -146f, vec3<f32>(-247f, -1194f, 569f), vec3<u32>(0u, 60630u, 897u), 4294967295u), true, Struct_1(i32(-2147483648), -1151f, vec3<f32>(-511f, -488f, -1756f), vec3<u32>(22950u, 59057u, 51464u), 531u)), vec2<u32>(18633u, 4294967295u), Struct_2(vec2<u32>(29433u, 67319u), Struct_1(-20764i, -1376f, vec3<f32>(-2754f, -898f, 157f), vec3<u32>(45898u, 14628u, 4294967295u), 39523u), false, Struct_1(0i, -189f, vec3<f32>(-2046f, 678f, -1000f), vec3<u32>(1u, 1u, 0u), 63460u))), Struct_3(vec2<u32>(252u, 0u), vec3<i32>(10358i, 6145i, -1i), Struct_2(vec2<u32>(18675u, 0u), Struct_1(0i, -1048f, vec3<f32>(-1256f, -991f, -658f), vec3<u32>(52634u, 0u, 50453u), 9665u), true, Struct_1(14740i, 641f, vec3<f32>(609f, -355f, -308f), vec3<u32>(4294967295u, 68840u, 0u), 12533u)), vec2<u32>(49103u, 0u), Struct_2(vec2<u32>(90641u, 11334u), Struct_1(0i, 207f, vec3<f32>(-299f, 143f, 2007f), vec3<u32>(40681u, 1u, 1u), 26240u), true, Struct_1(-16248i, 145f, vec3<f32>(473f, 1000f, -116f), vec3<u32>(4294967295u, 0u, 1u), 0u))), Struct_3(vec2<u32>(4294967295u, 1u), vec3<i32>(-15510i, 51756i, 2147483647i), Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(0i, 413f, vec3<f32>(-488f, 304f, 230f), vec3<u32>(0u, 4294967295u, 5616u), 4294967295u), false, Struct_1(1i, 705f, vec3<f32>(-388f, 178f, -113f), vec3<u32>(0u, 0u, 1u), 11957u)), vec2<u32>(44736u, 78186u), Struct_2(vec2<u32>(1u, 41914u), Struct_1(6394i, 649f, vec3<f32>(-698f, -1103f, -622f), vec3<u32>(1u, 3304u, 4294967295u), 1u), true, Struct_1(13511i, -288f, vec3<f32>(-207f, -1387f, 1349f), vec3<u32>(34692u, 4294967295u, 46301u), 0u))), Struct_3(vec2<u32>(4265u, 31716u), vec3<i32>(1i, 32008i, -1i), Struct_2(vec2<u32>(9318u, 23684u), Struct_1(-1i, -1239f, vec3<f32>(164f, -1903f, 930f), vec3<u32>(69853u, 1255u, 33058u), 1u), true, Struct_1(20327i, -279f, vec3<f32>(-849f, -1000f, 1017f), vec3<u32>(1u, 80893u, 12855u), 4294967295u)), vec2<u32>(0u, 0u), Struct_2(vec2<u32>(3341u, 67698u), Struct_1(4425i, -940f, vec3<f32>(-927f, -284f, 1000f), vec3<u32>(4294967295u, 94430u, 4294967295u), 1u), true, Struct_1(i32(-2147483648), 1038f, vec3<f32>(-358f, -358f, 1361f), vec3<u32>(17924u, 46848u, 1u), 4294967295u))), Struct_3(vec2<u32>(1u, 0u), vec3<i32>(2147483647i, 39798i, 18190i), Struct_2(vec2<u32>(82305u, 57167u), Struct_1(-46047i, -1135f, vec3<f32>(-544f, 1000f, 370f), vec3<u32>(0u, 29791u, 0u), 10220u), false, Struct_1(21993i, 130f, vec3<f32>(876f, 711f, 237f), vec3<u32>(89182u, 8527u, 6327u), 83390u)), vec2<u32>(1u, 29326u), Struct_2(vec2<u32>(49206u, 0u), Struct_1(0i, -918f, vec3<f32>(610f, 1487f, -793f), vec3<u32>(39297u, 1u, 4294967295u), 47415u), true, Struct_1(-1i, -976f, vec3<f32>(1866f, -1000f, -1166f), vec3<u32>(36267u, 1u, 26193u), 25575u))), Struct_3(vec2<u32>(55039u, 20600u), vec3<i32>(73347i, 1i, -1i), Struct_2(vec2<u32>(4294967295u, 59447u), Struct_1(1i, 576f, vec3<f32>(913f, 650f, -865f), vec3<u32>(43804u, 4294967295u, 30077u), 1u), false, Struct_1(-64601i, 455f, vec3<f32>(-377f, -1444f, 820f), vec3<u32>(1u, 29890u, 29690u), 1u)), vec2<u32>(4294967295u, 1u), Struct_2(vec2<u32>(1104u, 8352u), Struct_1(-53587i, 548f, vec3<f32>(-246f, -1764f, -1091f), vec3<u32>(0u, 4294967295u, 2069u), 32588u), false, Struct_1(1i, -646f, vec3<f32>(-567f, -164f, -853f), vec3<u32>(0u, 0u, 4294967295u), 20326u))), Struct_3(vec2<u32>(4294967295u, 0u), vec3<i32>(i32(-2147483648), -47286i, 2147483647i), Struct_2(vec2<u32>(34001u, 53549u), Struct_1(40629i, 999f, vec3<f32>(879f, -417f, 2098f), vec3<u32>(1u, 0u, 4294967295u), 0u), true, Struct_1(-52922i, -1499f, vec3<f32>(-634f, 143f, -434f), vec3<u32>(4294967295u, 61094u, 0u), 0u)), vec2<u32>(20663u, 6903u), Struct_2(vec2<u32>(38606u, 27459u), Struct_1(2147483647i, 239f, vec3<f32>(292f, 1019f, 315f), vec3<u32>(73760u, 41780u, 4294967295u), 0u), true, Struct_1(0i, 991f, vec3<f32>(325f, -2747f, -2379f), vec3<u32>(62078u, 4294967295u, 0u), 1u))), Struct_3(vec2<u32>(0u, 36267u), vec3<i32>(0i, 0i, -1638i), Struct_2(vec2<u32>(0u, 60118u), Struct_1(-4539i, 1403f, vec3<f32>(-1846f, 1577f, 250f), vec3<u32>(4294967295u, 14375u, 20934u), 1u), true, Struct_1(-6911i, 322f, vec3<f32>(-622f, -534f, -384f), vec3<u32>(20072u, 3374u, 1u), 108210u)), vec2<u32>(42010u, 0u), Struct_2(vec2<u32>(69276u, 1u), Struct_1(5935i, -330f, vec3<f32>(-1303f, -924f, -708f), vec3<u32>(61354u, 1u, 28210u), 4294967295u), true, Struct_1(42992i, 278f, vec3<f32>(-1048f, 914f, -204f), vec3<u32>(6643u, 0u, 0u), 57854u))), Struct_3(vec2<u32>(4294967295u, 38102u), vec3<i32>(-25262i, -1i, -28419i), Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(26388i, 1068f, vec3<f32>(-1071f, -1000f, -2563f), vec3<u32>(4294967295u, 0u, 1u), 1u), true, Struct_1(1i, 739f, vec3<f32>(1015f, -227f, 136f), vec3<u32>(116572u, 0u, 52889u), 1u)), vec2<u32>(0u, 0u), Struct_2(vec2<u32>(0u, 0u), Struct_1(73499i, -1433f, vec3<f32>(564f, 737f, -400f), vec3<u32>(0u, 4294967295u, 27793u), 1u), false, Struct_1(-1i, 325f, vec3<f32>(-998f, 232f, 339f), vec3<u32>(2495u, 4294967295u, 0u), 48275u))), Struct_3(vec2<u32>(4294967295u, 1u), vec3<i32>(0i, 1i, -4287i), Struct_2(vec2<u32>(21624u, 4294967295u), Struct_1(-1i, 248f, vec3<f32>(750f, -213f, 699f), vec3<u32>(18538u, 4294967295u, 25196u), 42721u), false, Struct_1(-25057i, -1991f, vec3<f32>(749f, 460f, 292f), vec3<u32>(58343u, 1u, 44895u), 93850u)), vec2<u32>(44699u, 55361u), Struct_2(vec2<u32>(26072u, 0u), Struct_1(-1i, 1845f, vec3<f32>(701f, 1065f, 138f), vec3<u32>(26558u, 4294967295u, 105385u), 4294967295u), false, Struct_1(-49783i, -234f, vec3<f32>(1411f, 2825f, 1463f), vec3<u32>(58342u, 4294967295u, 1u), 19659u))), Struct_3(vec2<u32>(1u, 4294967295u), vec3<i32>(1i, 2147483647i, -6766i), Struct_2(vec2<u32>(34738u, 4294967295u), Struct_1(-31396i, -1018f, vec3<f32>(-1474f, -543f, -1000f), vec3<u32>(11652u, 1u, 4294967295u), 1u), true, Struct_1(-6897i, -1991f, vec3<f32>(-414f, -3313f, -822f), vec3<u32>(10216u, 0u, 43532u), 1u)), vec2<u32>(1u, 82436u), Struct_2(vec2<u32>(10820u, 3327u), Struct_1(-8345i, 1614f, vec3<f32>(1142f, 1317f, 1000f), vec3<u32>(38547u, 24665u, 125583u), 69822u), false, Struct_1(70832i, 1375f, vec3<f32>(-1329f, 364f, -370f), vec3<u32>(4294967295u, 1u, 0u), 44873u))), Struct_3(vec2<u32>(48221u, 4294967295u), vec3<i32>(9352i, -1i, 30000i), Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(i32(-2147483648), -1734f, vec3<f32>(-1985f, 1219f, 804f), vec3<u32>(1u, 0u, 2898u), 40311u), true, Struct_1(10736i, 1964f, vec3<f32>(-1049f, 1000f, 1742f), vec3<u32>(0u, 90324u, 0u), 61156u)), vec2<u32>(69993u, 36556u), Struct_2(vec2<u32>(43309u, 0u), Struct_1(-22214i, -443f, vec3<f32>(-115f, -2143f, 293f), vec3<u32>(9755u, 0u, 88262u), 4294967295u), true, Struct_1(-1i, -463f, vec3<f32>(1097f, 185f, -505f), vec3<u32>(34870u, 10783u, 34974u), 41138u))));

var<private> global1: Struct_2;

var<private> global2: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global3: array<f32, 29>;

var<private> global4: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_add_vec3_u32(global1.b.d, firstTrailingBit(_wgslsmith_sub_vec3_u32(global1.d.d, ~abs(vec3<u32>(arg_0.e.a.x, u_input.b, 0u)))));
    let var_1 = Struct_2(vec2<u32>(u_input.b, arg_0.d.x), Struct_1(_wgslsmith_dot_vec2_i32(arg_0.b.zx, vec2<i32>(global1.b.a, -arg_0.e.b.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b.c.x * 1619f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0.e.d.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.b, 233f, 901f) + arg_0.c.b.c))), max(~global1.b.d, ~(vec3<u32>(u_input.a.x, 11558u, arg_0.e.a.x) ^ global1.d.d)), ~(0u | _wgslsmith_div_u32(global1.a.x, arg_0.a.x))), true, global1.b);
    global1 = var_1;
    var var_2 = global0[_wgslsmith_index_u32(17560u, 32u)];
    global2 = array<vec2<bool>, 30>();
    return -62635i;
}

fn func_2(arg_0: vec3<u32>) -> vec3<u32> {
    var var_0 = vec4<i32>(~_wgslsmith_mod_i32(1i, func_3(Struct_3(vec2<u32>(1u, u_input.a.x), vec3<i32>(16739i, -1308i, u_input.c), Struct_2(arg_0.yz, Struct_1(-2147483647i, 1352f, global1.b.c, vec3<u32>(u_input.a.x, arg_0.x, 4294967295u), global1.a.x), true, global1.d), vec2<u32>(4294967295u, u_input.e), Struct_2(global1.b.d.zx, Struct_1(2147483647i, global3[_wgslsmith_index_u32(4294967295u, 29u)], global1.b.c, vec3<u32>(global1.b.d.x, global1.b.e, 8727u), arg_0.x), global1.c, global1.b)))), -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 3503i, -76974i), vec4<i32>(global1.d.a, -2147483647i, -1i, u_input.c)) >> (u_input.d % vec4<u32>(32u)), vec4<i32>(-global1.b.a, firstLeadingBit(-11830i), u_input.c, global1.d.a)), _wgslsmith_sub_i32(-8528i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -48928i, ~(-global1.b.a)), firstLeadingBit(~(~vec3<i32>(1i, 0i, u_input.c)))));
    let var_1 = u_input.d;
    global4 = !(true && !(!all(vec4<bool>(global1.c, true, true, global1.c))));
    global2 = array<vec2<bool>, 30>();
    var var_2 = 2147483647i;
    return global1.b.d;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: bool, arg_3: bool) -> i32 {
    let var_0 = global1.d.c;
    var var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(select(~84007u, global1.a.x, arg_2), select(firstTrailingBit(5966u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.d.x), u_input.a), true), u_input.e | ~(~17441u)), min(func_2(reverseBits(_wgslsmith_div_vec3_u32(u_input.d.wzx, u_input.d.yww))), select(u_input.d.zww, vec3<u32>(~0u, ~global1.d.d.x, ~global1.b.e), select(!vec3<bool>(arg_2, true, false), vec3<bool>(arg_3, arg_3, arg_2), select(vec3<bool>(global1.c, true, true), vec3<bool>(arg_2, false, arg_1), vec3<bool>(true, arg_1, true))))), ~global1.b.d);
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    global4 = !((~arg_0.x < 1i) == all(vec2<bool>(true, true)));
    var var_3 = _wgslsmith_mod_i32(u_input.c, _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, min(global1.d.a, u_input.c)), -2147483647i), 2147483647i));
    return countOneBits(1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 32>();
    let var_0 = vec3<i32>(~(_wgslsmith_add_i32(func_1(vec3<i32>(50416i, u_input.c, global1.d.a), global1.c, global1.c, global1.c), reverseBits(-45603i)) ^ (50575i & global1.d.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c, -2147483647i, global1.d.a, global1.d.a), vec4<i32>(i32(-1i) * -global1.d.a, ~(-1i & global1.b.a), ~_wgslsmith_mod_i32(global1.b.a, -5376i), 0i)), global1.d.a);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a >> (u_input.d.zz % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.d.e, 0u), u_input.d.yx, vec2<u32>(0u, 13269u))), 29u)])))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.a.x, 29u)]));
    global4 = global1.c;
    global1 = Struct_2(~global1.d.d.xy, Struct_1(-1i << (u_input.d.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(803f - global3[_wgslsmith_index_u32(u_input.b, 29u)])))), _wgslsmith_f_op_vec3_f32(sign(global1.d.c)), vec3<u32>(_wgslsmith_mult_u32(~7600u, _wgslsmith_mod_u32(54978u, global1.a.x)), ~func_2(u_input.d.yxw).x, ~global1.b.d.x), 22468u), !(!any(select(vec2<bool>(global1.c, false), vec2<bool>(true, global1.c), global2[_wgslsmith_index_u32(u_input.b, 30u)]))), global1.b);
    global3 = array<f32, 29>();
    let var_2 = min(_wgslsmith_sub_vec4_u32(~(~u_input.d), select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 11988u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.e, 47063u, u_input.d.x)), u_input.d, select(select(vec4<bool>(global1.c, true, true, global1.c), vec4<bool>(global1.c, true, global1.c, true), vec4<bool>(global1.c, false, false, global1.c)), !vec4<bool>(global1.c, global1.c, global1.c, true), select(vec4<bool>(global1.c, false, global1.c, false), vec4<bool>(global1.c, global1.c, false, true), global1.c)))), ~(~u_input.d));
    global0 = array<Struct_3, 32>();
    global4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global1.b.a, ~var_0.x), _wgslsmith_mult_i32(global1.b.a, var_0.x));
}

