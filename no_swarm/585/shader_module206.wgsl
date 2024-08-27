struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_3,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(vec3<u32>(0u, 4294967295u, 0u), Struct_3(Struct_2(vec3<bool>(false, true, true), -14110i, vec2<f32>(409f, 1189f), 800f), Struct_2(vec3<bool>(true, true, false), 0i, vec2<f32>(1238f, -1208f), 355f), Struct_2(vec3<bool>(true, true, true), -1i, vec2<f32>(-711f, 1573f), 1012f), vec3<i32>(24637i, i32(-2147483648), 2147483647i), Struct_1(3308u, vec3<u32>(27631u, 9621u, 64093u), vec2<f32>(408f, -1000f))), Struct_3(Struct_2(vec3<bool>(false, true, true), 1i, vec2<f32>(1091f, 1291f), -1987f), Struct_2(vec3<bool>(false, true, false), i32(-2147483648), vec2<f32>(1121f, 1000f), -324f), Struct_2(vec3<bool>(false, true, false), 33344i, vec2<f32>(265f, -801f), 341f), vec3<i32>(-1i, -15835i, -36045i), Struct_1(16950u, vec3<u32>(4294967295u, 1u, 5562u), vec2<f32>(-452f, -283f))), vec4<bool>(true, false, true, true), Struct_1(4294967295u, vec3<u32>(69789u, 55416u, 43268u), vec2<f32>(115f, -1001f))), Struct_4(vec3<u32>(0u, 4294967295u, 26726u), Struct_3(Struct_2(vec3<bool>(false, true, true), 8178i, vec2<f32>(-348f, 2181f), -340f), Struct_2(vec3<bool>(false, true, false), 1i, vec2<f32>(-980f, -1621f), 1090f), Struct_2(vec3<bool>(false, false, false), -3089i, vec2<f32>(-576f, 331f), 1222f), vec3<i32>(2896i, -29394i, -28127i), Struct_1(4294967295u, vec3<u32>(1u, 61602u, 1u), vec2<f32>(-164f, 554f))), Struct_3(Struct_2(vec3<bool>(false, false, true), -54213i, vec2<f32>(-824f, 753f), 304f), Struct_2(vec3<bool>(false, false, true), i32(-2147483648), vec2<f32>(1544f, -790f), 2254f), Struct_2(vec3<bool>(true, true, true), 2147483647i, vec2<f32>(726f, -2731f), -542f), vec3<i32>(i32(-2147483648), -6768i, 1i), Struct_1(4294967295u, vec3<u32>(45126u, 4243u, 51856u), vec2<f32>(-320f, -256f))), vec4<bool>(true, true, true, false), Struct_1(32661u, vec3<u32>(38333u, 53068u, 1869u), vec2<f32>(-1000f, -709f))), Struct_4(vec3<u32>(0u, 0u, 1u), Struct_3(Struct_2(vec3<bool>(false, true, false), 0i, vec2<f32>(-1615f, -582f), -2379f), Struct_2(vec3<bool>(true, true, false), 30158i, vec2<f32>(1713f, 974f), -1225f), Struct_2(vec3<bool>(true, false, true), -14446i, vec2<f32>(796f, 728f), 332f), vec3<i32>(0i, 2147483647i, 0i), Struct_1(50622u, vec3<u32>(1u, 0u, 0u), vec2<f32>(-127f, -754f))), Struct_3(Struct_2(vec3<bool>(true, true, true), 1i, vec2<f32>(150f, 1000f), 349f), Struct_2(vec3<bool>(true, true, true), -16324i, vec2<f32>(540f, 1000f), -1349f), Struct_2(vec3<bool>(false, true, false), -14687i, vec2<f32>(316f, -334f), -392f), vec3<i32>(2147483647i, 4377i, 10858i), Struct_1(39812u, vec3<u32>(1u, 4294967295u, 14756u), vec2<f32>(-332f, -803f))), vec4<bool>(false, true, true, true), Struct_1(4294967295u, vec3<u32>(850u, 32619u, 0u), vec2<f32>(-166f, 573f))), Struct_4(vec3<u32>(41105u, 54634u, 4294967295u), Struct_3(Struct_2(vec3<bool>(true, false, true), -36667i, vec2<f32>(636f, 1061f), -1437f), Struct_2(vec3<bool>(true, false, true), -2254i, vec2<f32>(821f, 168f), 820f), Struct_2(vec3<bool>(false, true, true), 22622i, vec2<f32>(356f, -560f), -1938f), vec3<i32>(1i, 31128i, -44733i), Struct_1(67201u, vec3<u32>(15243u, 4294967295u, 0u), vec2<f32>(-797f, -158f))), Struct_3(Struct_2(vec3<bool>(true, false, false), 0i, vec2<f32>(-413f, 1000f), -348f), Struct_2(vec3<bool>(true, false, false), 2147483647i, vec2<f32>(166f, -1785f), -1198f), Struct_2(vec3<bool>(true, false, false), 29372i, vec2<f32>(-451f, -1000f), -956f), vec3<i32>(-1i, -1i, 0i), Struct_1(1u, vec3<u32>(10049u, 1u, 1u), vec2<f32>(467f, -1000f))), vec4<bool>(false, true, false, false), Struct_1(0u, vec3<u32>(57799u, 101719u, 4294967295u), vec2<f32>(311f, -266f))), Struct_4(vec3<u32>(4294967295u, 0u, 40537u), Struct_3(Struct_2(vec3<bool>(false, false, false), 18514i, vec2<f32>(-325f, 339f), 1076f), Struct_2(vec3<bool>(true, false, true), 2147483647i, vec2<f32>(-1598f, 362f), 470f), Struct_2(vec3<bool>(true, true, true), i32(-2147483648), vec2<f32>(1032f, -500f), 771f), vec3<i32>(-1i, -24784i, i32(-2147483648)), Struct_1(1u, vec3<u32>(79436u, 304u, 88933u), vec2<f32>(598f, 729f))), Struct_3(Struct_2(vec3<bool>(true, true, true), -5571i, vec2<f32>(-357f, -1425f), 583f), Struct_2(vec3<bool>(true, false, true), 20770i, vec2<f32>(-1821f, -1003f), 359f), Struct_2(vec3<bool>(true, false, true), 0i, vec2<f32>(-745f, -832f), -365f), vec3<i32>(2147483647i, -1i, 0i), Struct_1(0u, vec3<u32>(4294967295u, 85869u, 23624u), vec2<f32>(299f, -466f))), vec4<bool>(true, true, true, true), Struct_1(30182u, vec3<u32>(92586u, 91254u, 0u), vec2<f32>(305f, -2119f))), Struct_4(vec3<u32>(47732u, 0u, 21310u), Struct_3(Struct_2(vec3<bool>(true, true, false), -38658i, vec2<f32>(-1000f, -420f), 1391f), Struct_2(vec3<bool>(true, true, false), 0i, vec2<f32>(781f, -391f), -1019f), Struct_2(vec3<bool>(false, true, false), i32(-2147483648), vec2<f32>(2459f, 113f), 223f), vec3<i32>(0i, 2147483647i, -1i), Struct_1(1u, vec3<u32>(1729u, 4294967295u, 62892u), vec2<f32>(-918f, 914f))), Struct_3(Struct_2(vec3<bool>(false, true, true), -1i, vec2<f32>(-1721f, -696f), -1712f), Struct_2(vec3<bool>(false, false, true), 1i, vec2<f32>(-206f, 1681f), -523f), Struct_2(vec3<bool>(false, false, true), i32(-2147483648), vec2<f32>(-208f, 1550f), 295f), vec3<i32>(2906i, 9679i, -1i), Struct_1(1u, vec3<u32>(37631u, 1u, 48002u), vec2<f32>(2131f, 1000f))), vec4<bool>(true, false, false, true), Struct_1(1u, vec3<u32>(4294967295u, 48661u, 4294967295u), vec2<f32>(-1484f, 1192f))), Struct_4(vec3<u32>(4294967295u, 0u, 8235u), Struct_3(Struct_2(vec3<bool>(true, true, false), -1i, vec2<f32>(-967f, 1000f), 773f), Struct_2(vec3<bool>(true, true, true), -81945i, vec2<f32>(928f, -1568f), -515f), Struct_2(vec3<bool>(false, true, false), -1i, vec2<f32>(532f, -1532f), -1016f), vec3<i32>(21350i, -1i, i32(-2147483648)), Struct_1(108956u, vec3<u32>(20551u, 59478u, 4294967295u), vec2<f32>(-2306f, -1042f))), Struct_3(Struct_2(vec3<bool>(false, false, false), -3574i, vec2<f32>(707f, -406f), 183f), Struct_2(vec3<bool>(false, true, false), -14009i, vec2<f32>(1195f, -1048f), 170f), Struct_2(vec3<bool>(false, false, true), -1i, vec2<f32>(421f, -1610f), -562f), vec3<i32>(1i, -48345i, 27582i), Struct_1(88313u, vec3<u32>(1u, 8913u, 49062u), vec2<f32>(-608f, 333f))), vec4<bool>(true, false, true, true), Struct_1(67009u, vec3<u32>(4294967295u, 0u, 4294967295u), vec2<f32>(-470f, -818f))), Struct_4(vec3<u32>(0u, 15331u, 4294967295u), Struct_3(Struct_2(vec3<bool>(true, true, false), 17642i, vec2<f32>(211f, -843f), 1003f), Struct_2(vec3<bool>(false, false, false), -1i, vec2<f32>(-247f, -657f), 757f), Struct_2(vec3<bool>(true, false, true), -7049i, vec2<f32>(-506f, 2015f), 218f), vec3<i32>(-8547i, -1i, 5681i), Struct_1(43607u, vec3<u32>(44128u, 48073u, 0u), vec2<f32>(-175f, -523f))), Struct_3(Struct_2(vec3<bool>(false, true, false), 41981i, vec2<f32>(-609f, 2021f), 1000f), Struct_2(vec3<bool>(false, false, false), -14840i, vec2<f32>(-882f, 1864f), 1273f), Struct_2(vec3<bool>(false, true, false), -38264i, vec2<f32>(124f, 450f), -1000f), vec3<i32>(-7402i, 1i, 0i), Struct_1(102824u, vec3<u32>(98459u, 1u, 16443u), vec2<f32>(312f, -256f))), vec4<bool>(true, true, true, true), Struct_1(1u, vec3<u32>(1u, 0u, 0u), vec2<f32>(1000f, -837f))), Struct_4(vec3<u32>(1u, 1u, 28965u), Struct_3(Struct_2(vec3<bool>(true, true, true), 1i, vec2<f32>(203f, -208f), 1153f), Struct_2(vec3<bool>(false, false, false), 2147483647i, vec2<f32>(972f, 880f), -455f), Struct_2(vec3<bool>(true, false, true), -16422i, vec2<f32>(-177f, -537f), -1069f), vec3<i32>(0i, 56848i, -108058i), Struct_1(41667u, vec3<u32>(6624u, 1u, 4294967295u), vec2<f32>(-1108f, -1598f))), Struct_3(Struct_2(vec3<bool>(true, false, false), 1i, vec2<f32>(874f, 953f), -196f), Struct_2(vec3<bool>(false, true, false), 1i, vec2<f32>(-846f, -261f), 424f), Struct_2(vec3<bool>(false, true, false), 0i, vec2<f32>(2625f, -1260f), -661f), vec3<i32>(-44918i, -1i, -2817i), Struct_1(1u, vec3<u32>(29865u, 4294967295u, 20612u), vec2<f32>(1000f, -519f))), vec4<bool>(true, true, true, false), Struct_1(1u, vec3<u32>(4294967295u, 1u, 40526u), vec2<f32>(442f, -250f))), Struct_4(vec3<u32>(0u, 0u, 1u), Struct_3(Struct_2(vec3<bool>(true, false, false), -18470i, vec2<f32>(690f, 1692f), -1000f), Struct_2(vec3<bool>(false, true, true), -13831i, vec2<f32>(698f, 611f), -2459f), Struct_2(vec3<bool>(false, true, true), i32(-2147483648), vec2<f32>(-1175f, -699f), -822f), vec3<i32>(0i, i32(-2147483648), 55326i), Struct_1(57943u, vec3<u32>(12735u, 0u, 4294967295u), vec2<f32>(159f, 1247f))), Struct_3(Struct_2(vec3<bool>(true, true, false), 71130i, vec2<f32>(-616f, 736f), -381f), Struct_2(vec3<bool>(false, false, false), -21659i, vec2<f32>(1017f, 1838f), -542f), Struct_2(vec3<bool>(false, false, true), -45398i, vec2<f32>(-1313f, -304f), -225f), vec3<i32>(0i, 5790i, 25405i), Struct_1(0u, vec3<u32>(21625u, 7596u, 63935u), vec2<f32>(703f, 365f))), vec4<bool>(true, true, true, false), Struct_1(4294967295u, vec3<u32>(34385u, 891u, 9140u), vec2<f32>(-498f, 664f))), Struct_4(vec3<u32>(4294967295u, 90545u, 131571u), Struct_3(Struct_2(vec3<bool>(false, true, true), 26732i, vec2<f32>(-1051f, -133f), 830f), Struct_2(vec3<bool>(true, false, true), 22904i, vec2<f32>(1000f, -784f), -1859f), Struct_2(vec3<bool>(false, false, false), 1i, vec2<f32>(618f, 171f), 132f), vec3<i32>(-1i, -1i, -1i), Struct_1(1u, vec3<u32>(4294967295u, 1u, 73683u), vec2<f32>(-727f, -1219f))), Struct_3(Struct_2(vec3<bool>(false, false, false), 5545i, vec2<f32>(-322f, 1416f), -830f), Struct_2(vec3<bool>(true, true, true), -10721i, vec2<f32>(1024f, 1079f), 255f), Struct_2(vec3<bool>(false, true, true), 0i, vec2<f32>(350f, -487f), 186f), vec3<i32>(-1i, -89944i, -35794i), Struct_1(0u, vec3<u32>(1u, 1u, 0u), vec2<f32>(871f, -1000f))), vec4<bool>(false, true, true, true), Struct_1(3193u, vec3<u32>(11870u, 1u, 1u), vec2<f32>(-1055f, -394f))), Struct_4(vec3<u32>(4294967295u, 21640u, 60170u), Struct_3(Struct_2(vec3<bool>(true, false, false), 16442i, vec2<f32>(-189f, -928f), -287f), Struct_2(vec3<bool>(false, false, true), 42316i, vec2<f32>(-1504f, 1816f), -1029f), Struct_2(vec3<bool>(false, true, true), 1i, vec2<f32>(-1000f, 917f), -2257f), vec3<i32>(-1i, -50384i, i32(-2147483648)), Struct_1(24904u, vec3<u32>(14215u, 0u, 45512u), vec2<f32>(-1000f, -804f))), Struct_3(Struct_2(vec3<bool>(true, false, true), 45137i, vec2<f32>(-676f, -1732f), -746f), Struct_2(vec3<bool>(true, true, false), 0i, vec2<f32>(-737f, 360f), 705f), Struct_2(vec3<bool>(true, true, false), 57047i, vec2<f32>(1000f, 308f), 248f), vec3<i32>(0i, -1i, -1i), Struct_1(61364u, vec3<u32>(4294967295u, 4294967295u, 62617u), vec2<f32>(-742f, 1086f))), vec4<bool>(true, true, true, true), Struct_1(60811u, vec3<u32>(1u, 13771u, 0u), vec2<f32>(1374f, -751f))), Struct_4(vec3<u32>(0u, 54647u, 14385u), Struct_3(Struct_2(vec3<bool>(false, false, false), -44548i, vec2<f32>(-1408f, 104f), 1400f), Struct_2(vec3<bool>(true, true, true), 28450i, vec2<f32>(615f, -263f), -744f), Struct_2(vec3<bool>(true, false, true), -13141i, vec2<f32>(213f, 577f), 712f), vec3<i32>(i32(-2147483648), 28675i, -57500i), Struct_1(4294967295u, vec3<u32>(1711u, 19341u, 1u), vec2<f32>(-614f, 281f))), Struct_3(Struct_2(vec3<bool>(false, false, true), -30547i, vec2<f32>(1533f, -1038f), 528f), Struct_2(vec3<bool>(true, false, true), i32(-2147483648), vec2<f32>(461f, 2159f), 1612f), Struct_2(vec3<bool>(true, false, false), 17273i, vec2<f32>(811f, -158f), 1621f), vec3<i32>(2147483647i, 54257i, 55450i), Struct_1(1u, vec3<u32>(4294967295u, 1u, 0u), vec2<f32>(-337f, 875f))), vec4<bool>(true, true, true, true), Struct_1(1u, vec3<u32>(6226u, 4294967295u, 0u), vec2<f32>(638f, 375f))), Struct_4(vec3<u32>(1u, 40623u, 0u), Struct_3(Struct_2(vec3<bool>(true, true, true), 19850i, vec2<f32>(1046f, 2038f), 974f), Struct_2(vec3<bool>(false, false, true), 2147483647i, vec2<f32>(-713f, 409f), -751f), Struct_2(vec3<bool>(false, true, false), -13110i, vec2<f32>(-495f, 364f), 505f), vec3<i32>(2283i, 1i, 0i), Struct_1(984u, vec3<u32>(44639u, 1u, 0u), vec2<f32>(-763f, -716f))), Struct_3(Struct_2(vec3<bool>(false, true, true), -1i, vec2<f32>(1000f, -352f), 391f), Struct_2(vec3<bool>(true, true, true), i32(-2147483648), vec2<f32>(1929f, 548f), -1000f), Struct_2(vec3<bool>(false, true, false), -9889i, vec2<f32>(-1551f, -100f), -1000f), vec3<i32>(-3312i, 51899i, 0i), Struct_1(0u, vec3<u32>(0u, 4294967295u, 0u), vec2<f32>(249f, -1503f))), vec4<bool>(true, false, false, true), Struct_1(48778u, vec3<u32>(1u, 1u, 16221u), vec2<f32>(-755f, -139f))), Struct_4(vec3<u32>(39309u, 26969u, 65272u), Struct_3(Struct_2(vec3<bool>(false, true, true), 2579i, vec2<f32>(-404f, -1063f), 608f), Struct_2(vec3<bool>(true, false, true), i32(-2147483648), vec2<f32>(-1205f, 155f), -624f), Struct_2(vec3<bool>(false, true, false), 2147483647i, vec2<f32>(1568f, 343f), -564f), vec3<i32>(40232i, 3826i, -1i), Struct_1(70839u, vec3<u32>(45818u, 1685u, 0u), vec2<f32>(1000f, 1482f))), Struct_3(Struct_2(vec3<bool>(true, false, true), i32(-2147483648), vec2<f32>(1000f, 2403f), 183f), Struct_2(vec3<bool>(false, true, false), -44783i, vec2<f32>(-1000f, -1000f), -245f), Struct_2(vec3<bool>(true, true, true), 1i, vec2<f32>(469f, 347f), 1429f), vec3<i32>(19434i, -3788i, 24427i), Struct_1(116864u, vec3<u32>(1u, 1u, 52570u), vec2<f32>(433f, -359f))), vec4<bool>(false, true, false, false), Struct_1(0u, vec3<u32>(4294967295u, 37452u, 4294967295u), vec2<f32>(1219f, 1218f))), Struct_4(vec3<u32>(0u, 41289u, 1785u), Struct_3(Struct_2(vec3<bool>(true, false, true), 0i, vec2<f32>(526f, 1072f), -343f), Struct_2(vec3<bool>(true, false, false), 2147483647i, vec2<f32>(523f, -867f), 175f), Struct_2(vec3<bool>(false, false, false), -25987i, vec2<f32>(-144f, 1000f), 255f), vec3<i32>(-1i, 22694i, -1i), Struct_1(0u, vec3<u32>(1u, 1689u, 1u), vec2<f32>(904f, -276f))), Struct_3(Struct_2(vec3<bool>(false, false, true), -33465i, vec2<f32>(-490f, -1436f), 1000f), Struct_2(vec3<bool>(true, true, false), 1439i, vec2<f32>(611f, 267f), -430f), Struct_2(vec3<bool>(false, true, true), i32(-2147483648), vec2<f32>(-1245f, -766f), -1145f), vec3<i32>(i32(-2147483648), -35876i, 1i), Struct_1(1u, vec3<u32>(24606u, 38916u, 0u), vec2<f32>(263f, -2397f))), vec4<bool>(true, true, false, false), Struct_1(0u, vec3<u32>(3226u, 26553u, 0u), vec2<f32>(2082f, -1832f))), Struct_4(vec3<u32>(4294967295u, 31566u, 66015u), Struct_3(Struct_2(vec3<bool>(true, false, true), 1i, vec2<f32>(663f, -690f), 283f), Struct_2(vec3<bool>(false, true, false), i32(-2147483648), vec2<f32>(-336f, 204f), 541f), Struct_2(vec3<bool>(false, true, false), 2147483647i, vec2<f32>(-1263f, 1431f), 169f), vec3<i32>(-1i, 1i, i32(-2147483648)), Struct_1(1u, vec3<u32>(4294967295u, 1u, 33457u), vec2<f32>(1338f, 164f))), Struct_3(Struct_2(vec3<bool>(false, true, true), -1675i, vec2<f32>(-1389f, -282f), 459f), Struct_2(vec3<bool>(true, false, false), i32(-2147483648), vec2<f32>(-357f, -906f), 1016f), Struct_2(vec3<bool>(false, false, false), -61979i, vec2<f32>(636f, -365f), 1854f), vec3<i32>(0i, 31819i, -27568i), Struct_1(4294967295u, vec3<u32>(16403u, 1u, 16512u), vec2<f32>(-367f, 3413f))), vec4<bool>(true, true, true, true), Struct_1(0u, vec3<u32>(4294967295u, 24464u, 0u), vec2<f32>(340f, -960f))), Struct_4(vec3<u32>(1u, 64831u, 34064u), Struct_3(Struct_2(vec3<bool>(true, false, false), 7175i, vec2<f32>(-706f, 136f), 1399f), Struct_2(vec3<bool>(true, false, true), 2147483647i, vec2<f32>(-731f, 818f), 119f), Struct_2(vec3<bool>(false, false, true), 19758i, vec2<f32>(-969f, -1299f), -1581f), vec3<i32>(33155i, -1i, -1i), Struct_1(55899u, vec3<u32>(4406u, 3522u, 43855u), vec2<f32>(-661f, -356f))), Struct_3(Struct_2(vec3<bool>(false, true, true), 14268i, vec2<f32>(1128f, 1000f), -1000f), Struct_2(vec3<bool>(false, false, true), 15138i, vec2<f32>(874f, -1110f), 1000f), Struct_2(vec3<bool>(true, false, true), -1i, vec2<f32>(-392f, -774f), 352f), vec3<i32>(50517i, -13565i, 66796i), Struct_1(4294967295u, vec3<u32>(0u, 30100u, 30190u), vec2<f32>(220f, -1012f))), vec4<bool>(true, false, false, false), Struct_1(0u, vec3<u32>(18098u, 0u, 0u), vec2<f32>(317f, -449f))), Struct_4(vec3<u32>(4294967295u, 14623u, 79069u), Struct_3(Struct_2(vec3<bool>(true, false, true), -7925i, vec2<f32>(-878f, -114f), -623f), Struct_2(vec3<bool>(false, false, true), 1i, vec2<f32>(852f, 228f), -1645f), Struct_2(vec3<bool>(false, false, true), 26283i, vec2<f32>(-160f, -401f), 665f), vec3<i32>(-1i, -1090i, 1i), Struct_1(0u, vec3<u32>(75815u, 11359u, 21055u), vec2<f32>(2490f, -464f))), Struct_3(Struct_2(vec3<bool>(false, false, true), 52238i, vec2<f32>(-1911f, -1071f), 1000f), Struct_2(vec3<bool>(false, true, true), 14470i, vec2<f32>(-1333f, 959f), -814f), Struct_2(vec3<bool>(true, false, true), 20994i, vec2<f32>(-833f, -2080f), -918f), vec3<i32>(2147483647i, 34275i, 64902i), Struct_1(12669u, vec3<u32>(4294967295u, 26284u, 0u), vec2<f32>(577f, -1110f))), vec4<bool>(false, false, true, false), Struct_1(90977u, vec3<u32>(29963u, 4294967295u, 0u), vec2<f32>(-472f, 1102f))), Struct_4(vec3<u32>(4294967295u, 1u, 70895u), Struct_3(Struct_2(vec3<bool>(true, true, true), -27343i, vec2<f32>(-1142f, 1409f), 940f), Struct_2(vec3<bool>(true, false, true), 2147483647i, vec2<f32>(-951f, -513f), 1101f), Struct_2(vec3<bool>(false, false, true), -44039i, vec2<f32>(167f, -1210f), 1024f), vec3<i32>(-1i, 21268i, -37870i), Struct_1(53118u, vec3<u32>(0u, 0u, 4294967295u), vec2<f32>(108f, -1564f))), Struct_3(Struct_2(vec3<bool>(false, true, true), 67i, vec2<f32>(-1000f, 2314f), 1000f), Struct_2(vec3<bool>(false, true, false), i32(-2147483648), vec2<f32>(-610f, 1000f), -1593f), Struct_2(vec3<bool>(true, true, true), i32(-2147483648), vec2<f32>(-518f, 1000f), -949f), vec3<i32>(1i, 0i, -13942i), Struct_1(1u, vec3<u32>(16775u, 14239u, 4294967295u), vec2<f32>(-1237f, -1963f))), vec4<bool>(false, true, false, true), Struct_1(4294967295u, vec3<u32>(23773u, 1u, 4294967295u), vec2<f32>(-569f, 724f))), Struct_4(vec3<u32>(0u, 39340u, 0u), Struct_3(Struct_2(vec3<bool>(false, true, true), -41891i, vec2<f32>(-830f, -1000f), -340f), Struct_2(vec3<bool>(false, false, true), i32(-2147483648), vec2<f32>(-1038f, 858f), 1179f), Struct_2(vec3<bool>(false, true, false), 59884i, vec2<f32>(-978f, -1324f), 1735f), vec3<i32>(0i, 38579i, -1i), Struct_1(0u, vec3<u32>(4294967295u, 20372u, 38464u), vec2<f32>(-118f, 878f))), Struct_3(Struct_2(vec3<bool>(true, false, false), -21195i, vec2<f32>(524f, -1148f), 1312f), Struct_2(vec3<bool>(true, false, true), -14695i, vec2<f32>(857f, 368f), 242f), Struct_2(vec3<bool>(false, false, true), 0i, vec2<f32>(-2826f, 520f), -460f), vec3<i32>(-1i, 2147483647i, 46608i), Struct_1(7986u, vec3<u32>(4294967295u, 0u, 0u), vec2<f32>(-1025f, -1000f))), vec4<bool>(false, false, true, true), Struct_1(1u, vec3<u32>(4294967295u, 77071u, 0u), vec2<f32>(-273f, -477f))), Struct_4(vec3<u32>(4294967295u, 0u, 22904u), Struct_3(Struct_2(vec3<bool>(true, true, true), -1i, vec2<f32>(-1664f, -1200f), -493f), Struct_2(vec3<bool>(true, true, false), 2147483647i, vec2<f32>(-623f, -2023f), -581f), Struct_2(vec3<bool>(false, false, true), 0i, vec2<f32>(814f, -1000f), -498f), vec3<i32>(-41728i, -15121i, -35914i), Struct_1(28509u, vec3<u32>(5701u, 37457u, 4294967295u), vec2<f32>(-859f, -1514f))), Struct_3(Struct_2(vec3<bool>(false, false, true), -50523i, vec2<f32>(1802f, -295f), -1912f), Struct_2(vec3<bool>(false, false, true), 26i, vec2<f32>(-1333f, 778f), 291f), Struct_2(vec3<bool>(false, false, true), 2147483647i, vec2<f32>(-405f, -2441f), 1232f), vec3<i32>(25759i, -1i, -54861i), Struct_1(1u, vec3<u32>(63717u, 0u, 3483u), vec2<f32>(-1526f, -754f))), vec4<bool>(true, false, true, true), Struct_1(0u, vec3<u32>(4294967295u, 4294967295u, 12266u), vec2<f32>(-1593f, -475f))), Struct_4(vec3<u32>(0u, 1u, 45600u), Struct_3(Struct_2(vec3<bool>(true, false, false), 35083i, vec2<f32>(-613f, 881f), -506f), Struct_2(vec3<bool>(true, false, false), 31140i, vec2<f32>(-1621f, 292f), 372f), Struct_2(vec3<bool>(true, false, false), 3378i, vec2<f32>(-510f, 1000f), 650f), vec3<i32>(1i, -1i, -344i), Struct_1(74948u, vec3<u32>(6521u, 4294967295u, 4294967295u), vec2<f32>(-142f, 1240f))), Struct_3(Struct_2(vec3<bool>(true, false, false), -1i, vec2<f32>(2089f, 763f), 626f), Struct_2(vec3<bool>(true, true, false), 14310i, vec2<f32>(1132f, 1000f), -2112f), Struct_2(vec3<bool>(true, false, true), -14537i, vec2<f32>(1077f, -1041f), -550f), vec3<i32>(-17906i, i32(-2147483648), -1i), Struct_1(75938u, vec3<u32>(0u, 0u, 0u), vec2<f32>(364f, -515f))), vec4<bool>(false, true, false, false), Struct_1(0u, vec3<u32>(4294967295u, 27386u, 43858u), vec2<f32>(665f, -527f))));

var<private> global1: array<vec3<u32>, 27>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<bool> {
    global3 = u_input.b;
    global2 = vec3<bool>(any(!(!vec2<bool>(global2.x, global2.x))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(398f * 539f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2107f))));
    global3 = u_input.b;
    var var_0 = Struct_4(_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], ~global1[_wgslsmith_index_u32(u_input.b, 27u)]), Struct_3(Struct_2(select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, true, global2.x)), min(-33347i, ~(-1i)), vec2<f32>(-195f, -372f), -978f), Struct_2(vec3<bool>(global2.x, all(global2.xx), true), ~reverseBits(u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -467f)))), _wgslsmith_f_op_f32(f32(-1f) * -613f)), Struct_2(select(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, true), global2.x), select(vec3<bool>(false, true, global2.x), vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x)), vec3<bool>(true, false, true)), -1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1035f, 223f) + vec2<f32>(-1798f, -833f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1766f, -1000f)) * 466f)), vec3<i32>(-(u_input.a.x >> (u_input.b % 32u)), u_input.a.x, countOneBits(reverseBits(43287i))), Struct_1(~0u, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u << (u_input.b % 32u), ~u_input.b), 27u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2001f, -1504f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-692f, 1856f)), true)))), Struct_3(Struct_2(vec3<bool>(true, true, true), -min(2147483647i, u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-991f, 741f) - vec2<f32>(225f, 293f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-803f, -227f))), -1000f), Struct_2(select(vec3<bool>(global2.x, true, true), !vec3<bool>(global2.x, true, true), true), -1i, vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(1000f))), 1940f), Struct_2(!vec3<bool>(global2.x, true, global2.x), 8169i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1073f, -478f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(260f, 1643f) + vec2<f32>(190f, -751f))), 1746f), firstLeadingBit(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.yzy, u_input.a.wyw), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -46241i, -13580i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.xxy))), Struct_1(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 27u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-906f, 183f), vec2<f32>(1593f, 677f))))), vec4<bool>(false, global2.x, !(!(!global2.x)), select(!all(global2.yx), true, global2.x)), Struct_1(~_wgslsmith_div_u32(4294967295u, 4294967295u), ~global1[_wgslsmith_index_u32(54097u, 27u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(582f, -865f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(761f, -481f))))) + vec2<f32>(1272f, -1198f))));
    global0 = array<Struct_4, 23>();
    return vec3<bool>(false, true, true);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = abs(abs(vec2<i32>(u_input.a.x, u_input.a.x)));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), Struct_3(Struct_2(func_3(), 1i ^ u_input.a.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(366f, 1159f) + arg_0))), arg_0.x), Struct_2(!select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, false, true), true), select(-var_0.x, select(29939i, u_input.a.x, global2.x), true), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), -191f), arg_0.x), Struct_2(!select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, global2.x, false), vec3<bool>(false, global2.x, global2.x)), 29816i, _wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(-vec2<f32>(373f, arg_0.x))), arg_0.x), vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(var_0.x, 18279i) | ~u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(0i, 2147483647i, 37503i, u_input.a.x)), _wgslsmith_mod_i32(u_input.a.x, 31037i))), Struct_1(_wgslsmith_dot_vec2_u32(arg_1, arg_1), _wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.x, 4294967295u, u_input.b), vec4<u32>(26407u, 13911u, arg_1.x, u_input.b)), 27u)], abs(vec3<u32>(1152u, u_input.b, 32774u)), vec3<u32>(u_input.b, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)))), 42995u >= arg_1.x, Struct_3(Struct_2(!select(vec3<bool>(true, true, global2.x), vec3<bool>(false, global2.x, global2.x), global2.x), reverseBits(32737i), _wgslsmith_f_op_vec2_f32(abs(arg_0)), arg_0.x), Struct_2(!vec3<bool>(true, false, global2.x), u_input.a.x, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) - _wgslsmith_f_op_f32(step(926f, arg_0.x)))), Struct_2(vec3<bool>(select(false, global2.x, true), true, any(vec2<bool>(true, global2.x))), reverseBits(var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1437f, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f))), ~abs(-vec3<i32>(7377i, var_0.x, u_input.a.x)), Struct_1(arg_1.x, global1[_wgslsmith_index_u32(71847u, 27u)], _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0), vec2<f32>(-2599f, arg_0.x))))));
    let var_2 = select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(arg_0.x * var_1.b.a.d))) > _wgslsmith_f_op_f32(f32(-1f) * -1099f), !var_1.d.c.a.x, global2.x);
    let var_3 = vec2<bool>(var_2, true);
    global3 = ~_wgslsmith_sub_u32(13653u, 1u);
    return var_1.d;
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = 0u;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-716f, 220f))))))), arg_1.b.e.b.zy ^ vec2<u32>(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.a.c.x, arg_1.b.b.c.x)), abs(arg_3.e.b.xz)).e.a, 0u)).a;
    global2 = vec3<bool>(false, false, !(var_1.a.x | true));
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, -755f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, arg_1.a))))), abs(arg_1.d.e.b.xz)).e;
    var var_3 = arg_3.a;
    return vec2<f32>(726f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.e.c.x))), func_2(_wgslsmith_div_vec2_f32(var_1.c, vec2<f32>(-1576f, arg_3.c.c.x)), vec2<u32>(0u, 0u)).b.d))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: u32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(arg_0, Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -195f), Struct_3(Struct_2(vec3<bool>(false, false, false), arg_1.x, vec2<f32>(-248f, 829f), 2198f), Struct_2(vec3<bool>(global2.x, false, false), u_input.a.x, vec2<f32>(505f, 1836f), 239f), Struct_2(vec3<bool>(global2.x, true, true), -41771i, vec2<f32>(-2720f, -650f), -725f), vec3<i32>(arg_1.x, 0i, arg_0), Struct_1(0u, global1[_wgslsmith_index_u32(5087u, 27u)], vec2<f32>(-1518f, 680f))), true, func_2(vec2<f32>(495f, -252f), vec2<u32>(0u, u_input.b))), vec3<bool>(any(vec4<bool>(false, false, true, false)), global2.x, false), Struct_3(Struct_2(vec3<bool>(global2.x, true, true), -2147483647i, vec2<f32>(343f, 856f), -128f), Struct_2(vec3<bool>(global2.x, false, false), u_input.a.x, vec2<f32>(674f, -2065f), 1098f), func_2(vec2<f32>(350f, 124f), vec2<u32>(1u, 1u)).c, arg_1.zzx, func_2(vec2<f32>(-721f, -863f), vec2<u32>(arg_2, arg_2)).e))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(select(965f, -322f, true)), -335f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(7667i, Struct_5(-791f, Struct_3(Struct_2(vec3<bool>(global2.x, global2.x, global2.x), -2147483647i, vec2<f32>(-1300f, 338f), 127f), Struct_2(vec3<bool>(false, false, global2.x), arg_1.x, vec2<f32>(-1535f, -512f), -225f), Struct_2(vec3<bool>(global2.x, global2.x, global2.x), -15916i, vec2<f32>(285f, 1423f), 494f), vec3<i32>(27624i, u_input.a.x, 2147483647i), Struct_1(56220u, vec3<u32>(11816u, u_input.b, arg_2), vec2<f32>(-719f, -227f))), global2.x, Struct_3(Struct_2(vec3<bool>(false, false, false), u_input.a.x, vec2<f32>(-961f, -2347f), -672f), Struct_2(vec3<bool>(global2.x, false, global2.x), arg_0, vec2<f32>(-1000f, 1000f), 927f), Struct_2(vec3<bool>(false, global2.x, global2.x), -20552i, vec2<f32>(-797f, 284f), 1072f), arg_1.xzx, Struct_1(4294967295u, global1[_wgslsmith_index_u32(40430u, 27u)], vec2<f32>(-815f, -946f)))), vec3<bool>(global2.x, global2.x, global2.x), Struct_3(Struct_2(vec3<bool>(false, true, global2.x), u_input.a.x, vec2<f32>(1073f, -466f), 722f), Struct_2(vec3<bool>(global2.x, true, global2.x), arg_1.x, vec2<f32>(-882f, 637f), -1006f), Struct_2(vec3<bool>(global2.x, false, true), 18619i, vec2<f32>(346f, 822f), -269f), vec3<i32>(0i, arg_1.x, 1231i), Struct_1(4294967295u, vec3<u32>(4294967295u, u_input.b, u_input.b), vec2<f32>(-434f, 437f)))))))))));
    return Struct_5(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(ceil(func_2(vec2<f32>(969f, var_0.x), vec2<u32>(4294967295u, arg_2)).a.d))), func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(369f, func_2(vec2<f32>(var_0.x, -1821f), vec2<u32>(129552u, arg_2)).b.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, 2313f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-528f, 704f) * vec2<f32>(var_0.x, -585f))))), vec2<u32>(~arg_2, ~_wgslsmith_mod_u32(arg_2, 0u))), global2.x, Struct_3(func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, var_0.x))), firstTrailingBit(~vec2<u32>(31472u, arg_2))).b, func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(765f, var_0.x), vec2<f32>(508f, 963f), false)), vec2<f32>(-119f, var_0.x)), ~(~vec2<u32>(1u, 0u))).c, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(525f, -672f) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, 1270f))), vec2<u32>(1u, u_input.b)).a, abs(arg_1.xxw & select(arg_1.yzw, vec3<i32>(0i, 54860i, arg_0), vec3<bool>(global2.x, global2.x, false))), Struct_1(countOneBits(17333u ^ u_input.b), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, arg_2, arg_2), vec4<u32>(arg_2, 76508u, u_input.b, 1u)), 16441u ^ u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -2046f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, -234f))))));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = vec2<f32>(2209f, 2085f);
    var var_1 = func_1(max(u_input.a.x, 2147483647i), vec4<i32>(arg_2.b.a.b, arg_2.b.b.b, firstTrailingBit(_wgslsmith_mod_i32(2147483647i, arg_2.c.b.b)), ~arg_0.d.d.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~arg_0.b.e.b.xy)), arg_2.e.a));
    let var_2 = arg_0.b.e;
    global2 = !vec3<bool>(!(-172f >= var_0.x), arg_3.x, !arg_2.b.c.a.x);
    global1 = array<vec3<u32>, 27>();
    return arg_2.e;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_5 {
    return Struct_5(333f, arg_3, !global2.x, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 27>();
    let var_0 = global0[_wgslsmith_index_u32(~42644u, 23u)];
    let var_1 = countOneBits(~1i);
    var var_2 = u_input.a;
    let var_3 = func_6(var_0.c, u_input.a << (countOneBits(vec4<u32>(_wgslsmith_div_u32(26769u, u_input.b), 54140u | u_input.b, select(var_0.c.e.b.x, u_input.b, true), 1u)) % vec4<u32>(32u)), func_5(func_1(2147483647i, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_2.x, -65501i, 0i), vec4<i32>(1i, u_input.a.x, 1i, 1i)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.b.e.a, u_input.b), var_0.a) << (var_0.e.b.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-115f, 2883f, var_0.e.c.x, -1000f)))), Struct_4(~(~var_0.a), Struct_3(Struct_2(var_0.d.wzx, 66258i, vec2<f32>(var_0.c.c.d, -673f), var_0.c.e.c.x), func_1(1i, u_input.a, 0u).b.a, func_2(vec2<f32>(-554f, -1527f), var_0.e.b.yy).b, var_2.wwx, func_1(var_2.x, u_input.a, 20671u).b.e), func_2(var_0.c.a.c, vec2<u32>(u_input.b, 105839u)), var_0.d, func_1(1i, vec4<i32>(var_1, 1i, var_0.b.b.b, u_input.a.x), ~u_input.b).b.e), var_0.d), var_0.b);
    var var_4 = vec2<i32>(_wgslsmith_add_i32(-var_0.b.d.x, 0i), -var_0.b.b.b);
    var var_5 = ~var_3.b.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~0u, 27u)], vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_1, -var_2.x), 17995i), var_4.x, _wgslsmith_clamp_i32(-37116i, ~_wgslsmith_sub_i32(31172i, 1i), -2147483647i), ~(-14300i)), min(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(4097u, 138473u)) | vec2<u32>(4294967295u, var_3.b.e.b.x), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.d.e.a, var_0.b.e.b.x), var_3.d.e.b.yz)), vec2<u32>(_wgslsmith_add_u32(var_3.b.e.a, var_3.d.e.b.x), var_0.e.b.x)));
}

