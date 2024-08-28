struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(Struct_4(Struct_1(vec3<f32>(-1142f, -743f, 510f), vec2<f32>(-2125f, -647f), vec4<i32>(32868i, 0i, -53988i, -32667i), 1u), Struct_3(vec2<f32>(636f, -2088f), vec4<i32>(-14860i, i32(-2147483648), -1i, -1i), Struct_1(vec3<f32>(-981f, -1442f, -1171f), vec2<f32>(-1424f, 380f), vec4<i32>(i32(-2147483648), -1713i, 1i, 23384i), 25852u), vec2<u32>(0u, 14986u), Struct_1(vec3<f32>(2011f, 453f, 549f), vec2<f32>(2483f, -982f), vec4<i32>(2147483647i, 0i, -1i, 13175i), 46152u))), 65893u, false, Struct_3(vec2<f32>(-406f, 391f), vec4<i32>(0i, 2284i, 71578i, -1i), Struct_1(vec3<f32>(1072f, 720f, -620f), vec2<f32>(1000f, 386f), vec4<i32>(-13874i, 42626i, 19217i, 2147483647i), 21668u), vec2<u32>(0u, 12725u), Struct_1(vec3<f32>(177f, 231f, -1000f), vec2<f32>(-199f, -220f), vec4<i32>(40190i, -1i, 12917i, 54120i), 58255u))), Struct_5(Struct_4(Struct_1(vec3<f32>(-969f, -490f, -300f), vec2<f32>(-1000f, 130f), vec4<i32>(2147483647i, 1287i, 0i, i32(-2147483648)), 4294967295u), Struct_3(vec2<f32>(164f, 1120f), vec4<i32>(29182i, -11148i, -26114i, 20107i), Struct_1(vec3<f32>(1000f, 1000f, -679f), vec2<f32>(685f, 1458f), vec4<i32>(-28371i, 2147483647i, -35683i, i32(-2147483648)), 101077u), vec2<u32>(1u, 1u), Struct_1(vec3<f32>(-1318f, -1626f, 111f), vec2<f32>(-780f, 343f), vec4<i32>(-50767i, 0i, 52998i, 2147483647i), 60519u))), 2946u, false, Struct_3(vec2<f32>(724f, -1636f), vec4<i32>(-27420i, 4691i, -1i, 28730i), Struct_1(vec3<f32>(-940f, 446f, -870f), vec2<f32>(-259f, 1758f), vec4<i32>(5859i, 39509i, i32(-2147483648), -94i), 0u), vec2<u32>(0u, 45609u), Struct_1(vec3<f32>(1513f, 141f, -387f), vec2<f32>(-602f, 625f), vec4<i32>(-51320i, 16612i, i32(-2147483648), -33402i), 4294967295u))), Struct_5(Struct_4(Struct_1(vec3<f32>(148f, 453f, -791f), vec2<f32>(1188f, 552f), vec4<i32>(-1i, 23841i, 2147483647i, 1i), 58878u), Struct_3(vec2<f32>(1000f, 1000f), vec4<i32>(-30844i, 1i, 1i, -25706i), Struct_1(vec3<f32>(2615f, 387f, 716f), vec2<f32>(265f, -1311f), vec4<i32>(-44780i, 2147483647i, i32(-2147483648), 1i), 0u), vec2<u32>(82501u, 43655u), Struct_1(vec3<f32>(-1179f, -1393f, 101f), vec2<f32>(635f, 1195f), vec4<i32>(-1532i, -20566i, 33654i, -10809i), 4294967295u))), 14306u, false, Struct_3(vec2<f32>(-744f, 1278f), vec4<i32>(29255i, 20935i, 0i, 15773i), Struct_1(vec3<f32>(1449f, -380f, 140f), vec2<f32>(-1603f, 392f), vec4<i32>(1i, -41928i, 0i, 23209i), 14661u), vec2<u32>(7320u, 1u), Struct_1(vec3<f32>(1325f, 2326f, 284f), vec2<f32>(312f, -365f), vec4<i32>(1i, 43358i, -1i, -55333i), 4294967295u))), Struct_5(Struct_4(Struct_1(vec3<f32>(-2393f, 1022f, 515f), vec2<f32>(-637f, 2725f), vec4<i32>(2147483647i, -12364i, 62769i, 1i), 1u), Struct_3(vec2<f32>(-1367f, 1409f), vec4<i32>(5740i, 2407i, -45249i, -18251i), Struct_1(vec3<f32>(-269f, -1000f, -1168f), vec2<f32>(418f, -575f), vec4<i32>(4670i, -69106i, 7444i, 18185i), 22639u), vec2<u32>(12596u, 1u), Struct_1(vec3<f32>(985f, 134f, 773f), vec2<f32>(208f, -642f), vec4<i32>(-20127i, 2147483647i, 1i, -17718i), 1u))), 0u, true, Struct_3(vec2<f32>(-541f, 1229f), vec4<i32>(34280i, 77269i, -67665i, 1i), Struct_1(vec3<f32>(-390f, -1000f, -1496f), vec2<f32>(-259f, 2435f), vec4<i32>(i32(-2147483648), 7905i, 8913i, 23329i), 0u), vec2<u32>(62046u, 0u), Struct_1(vec3<f32>(-1238f, -1126f, 1000f), vec2<f32>(-2173f, -559f), vec4<i32>(-45878i, 9691i, -3658i, -32951i), 1u))), Struct_5(Struct_4(Struct_1(vec3<f32>(127f, -677f, 2017f), vec2<f32>(1374f, 236f), vec4<i32>(81861i, 23142i, -30446i, 83013i), 11039u), Struct_3(vec2<f32>(-1678f, 636f), vec4<i32>(-20935i, 24807i, -162i, 2147483647i), Struct_1(vec3<f32>(266f, 640f, -1000f), vec2<f32>(-2456f, -505f), vec4<i32>(-30509i, 1i, -60026i, 0i), 81403u), vec2<u32>(29146u, 1u), Struct_1(vec3<f32>(-961f, -504f, 398f), vec2<f32>(-1285f, -119f), vec4<i32>(-1i, 1i, 0i, 5129i), 59984u))), 0u, true, Struct_3(vec2<f32>(348f, 1677f), vec4<i32>(0i, 1i, -6548i, i32(-2147483648)), Struct_1(vec3<f32>(-552f, -139f, 1703f), vec2<f32>(1664f, 151f), vec4<i32>(-27065i, -22556i, -1i, -1i), 18989u), vec2<u32>(7125u, 4294967295u), Struct_1(vec3<f32>(543f, 118f, 1213f), vec2<f32>(2277f, 1000f), vec4<i32>(25554i, -1i, -1149i, -25592i), 123u))), Struct_5(Struct_4(Struct_1(vec3<f32>(1011f, -812f, 1100f), vec2<f32>(1000f, 293f), vec4<i32>(97821i, -9847i, -21339i, 1i), 1u), Struct_3(vec2<f32>(1078f, 1387f), vec4<i32>(5798i, 2147483647i, -26600i, i32(-2147483648)), Struct_1(vec3<f32>(-1966f, -1000f, -1141f), vec2<f32>(1013f, -474f), vec4<i32>(46990i, i32(-2147483648), -7542i, 13864i), 4647u), vec2<u32>(4294967295u, 0u), Struct_1(vec3<f32>(-1879f, -1087f, 1520f), vec2<f32>(729f, 1171f), vec4<i32>(-1i, 1i, -29665i, 2147483647i), 0u))), 4294967295u, true, Struct_3(vec2<f32>(1426f, 633f), vec4<i32>(0i, 1600i, 0i, 23447i), Struct_1(vec3<f32>(2073f, -2031f, -1004f), vec2<f32>(-1268f, 465f), vec4<i32>(-16284i, 0i, -8891i, i32(-2147483648)), 62645u), vec2<u32>(36598u, 4294967295u), Struct_1(vec3<f32>(-357f, 1645f, 154f), vec2<f32>(-1667f, -1977f), vec4<i32>(i32(-2147483648), 21649i, 26291i, -7643i), 6707u))), Struct_5(Struct_4(Struct_1(vec3<f32>(350f, 519f, -1044f), vec2<f32>(1284f, -1000f), vec4<i32>(2147483647i, -1i, 0i, -62846i), 5988u), Struct_3(vec2<f32>(-277f, -892f), vec4<i32>(19992i, 17361i, 19420i, -1i), Struct_1(vec3<f32>(134f, -192f, 767f), vec2<f32>(-985f, 2091f), vec4<i32>(2776i, -54432i, 2147483647i, i32(-2147483648)), 8431u), vec2<u32>(15415u, 4294967295u), Struct_1(vec3<f32>(-1110f, 668f, 167f), vec2<f32>(-1000f, -1000f), vec4<i32>(45966i, -1i, 1i, -16278i), 1u))), 62435u, true, Struct_3(vec2<f32>(-178f, -1212f), vec4<i32>(0i, 4586i, -24676i, -1i), Struct_1(vec3<f32>(1677f, -1102f, 710f), vec2<f32>(599f, -120f), vec4<i32>(1i, -21507i, -42146i, 1i), 0u), vec2<u32>(2900u, 4294967295u), Struct_1(vec3<f32>(-622f, -470f, -1924f), vec2<f32>(814f, -2032f), vec4<i32>(-1i, -20016i, 0i, -1i), 13634u))), Struct_5(Struct_4(Struct_1(vec3<f32>(-381f, -1974f, -1035f), vec2<f32>(-370f, 648f), vec4<i32>(22196i, 61126i, 1i, 2147483647i), 1702u), Struct_3(vec2<f32>(-109f, -317f), vec4<i32>(11481i, 1i, i32(-2147483648), 32781i), Struct_1(vec3<f32>(445f, 759f, -230f), vec2<f32>(271f, 1404f), vec4<i32>(59202i, -17288i, 58087i, -19240i), 4294967295u), vec2<u32>(1u, 1u), Struct_1(vec3<f32>(1135f, 331f, 587f), vec2<f32>(-1085f, 1481f), vec4<i32>(-14157i, 0i, 0i, 2857i), 1u))), 28065u, true, Struct_3(vec2<f32>(2324f, -517f), vec4<i32>(i32(-2147483648), -22333i, -1i, 28965i), Struct_1(vec3<f32>(1841f, 289f, 236f), vec2<f32>(-1023f, -338f), vec4<i32>(2147483647i, 1i, -8992i, -1i), 4294967295u), vec2<u32>(1u, 23894u), Struct_1(vec3<f32>(-669f, -758f, 175f), vec2<f32>(451f, -2128f), vec4<i32>(46155i, 0i, -28245i, 9012i), 4294967295u))), Struct_5(Struct_4(Struct_1(vec3<f32>(311f, -1129f, 578f), vec2<f32>(-166f, -777f), vec4<i32>(2708i, -35359i, 1i, -14695i), 0u), Struct_3(vec2<f32>(733f, 813f), vec4<i32>(i32(-2147483648), 35315i, 17112i, i32(-2147483648)), Struct_1(vec3<f32>(-994f, -611f, -895f), vec2<f32>(790f, -1815f), vec4<i32>(12634i, -37853i, 0i, 33429i), 17749u), vec2<u32>(72337u, 44188u), Struct_1(vec3<f32>(-132f, -1113f, 624f), vec2<f32>(515f, -401f), vec4<i32>(-1i, 1i, 2147483647i, -15234i), 4294967295u))), 69664u, false, Struct_3(vec2<f32>(1513f, 857f), vec4<i32>(2147483647i, -43148i, 12081i, -2522i), Struct_1(vec3<f32>(1506f, 1261f, -1160f), vec2<f32>(-1208f, 255f), vec4<i32>(59114i, -82887i, -32746i, i32(-2147483648)), 0u), vec2<u32>(54692u, 4294967295u), Struct_1(vec3<f32>(1159f, -542f, 2686f), vec2<f32>(-1223f, -1311f), vec4<i32>(26925i, -34736i, -27003i, 29090i), 1u))), Struct_5(Struct_4(Struct_1(vec3<f32>(508f, 1234f, -1020f), vec2<f32>(966f, -476f), vec4<i32>(1i, -1i, 8951i, 0i), 1u), Struct_3(vec2<f32>(941f, 519f), vec4<i32>(30651i, 0i, 2147483647i, 2147483647i), Struct_1(vec3<f32>(-1164f, 1090f, -1073f), vec2<f32>(-230f, 2324f), vec4<i32>(2147483647i, -1i, 2147483647i, -18830i), 1u), vec2<u32>(0u, 102066u), Struct_1(vec3<f32>(1363f, -938f, -2229f), vec2<f32>(-757f, -606f), vec4<i32>(2147483647i, 1i, 59491i, 59294i), 1u))), 92729u, true, Struct_3(vec2<f32>(2053f, -354f), vec4<i32>(i32(-2147483648), -37277i, 3734i, 48783i), Struct_1(vec3<f32>(1099f, -337f, -798f), vec2<f32>(1326f, 1000f), vec4<i32>(40564i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), 15267u), vec2<u32>(15045u, 51926u), Struct_1(vec3<f32>(424f, 1553f, 1164f), vec2<f32>(1960f, 1000f), vec4<i32>(-35523i, -36728i, 1i, -1i), 1u))), Struct_5(Struct_4(Struct_1(vec3<f32>(2023f, 1000f, -492f), vec2<f32>(-391f, -1337f), vec4<i32>(9000i, 0i, -2662i, 16332i), 1u), Struct_3(vec2<f32>(-1000f, -272f), vec4<i32>(-18199i, 366i, 1853i, -1i), Struct_1(vec3<f32>(-712f, 996f, 761f), vec2<f32>(-1184f, 836f), vec4<i32>(-32695i, i32(-2147483648), -1i, 23947i), 4294967295u), vec2<u32>(6278u, 4294967295u), Struct_1(vec3<f32>(2245f, -792f, 1610f), vec2<f32>(-437f, -1000f), vec4<i32>(9712i, 0i, -93621i, -1607i), 1u))), 1u, false, Struct_3(vec2<f32>(-1607f, -1175f), vec4<i32>(1i, -3355i, 1i, i32(-2147483648)), Struct_1(vec3<f32>(373f, -1548f, -1156f), vec2<f32>(1964f, 724f), vec4<i32>(3120i, 2147483647i, i32(-2147483648), 45308i), 1u), vec2<u32>(11870u, 142777u), Struct_1(vec3<f32>(-2409f, -1853f, -1161f), vec2<f32>(1962f, 626f), vec4<i32>(-73650i, 24712i, 1i, 0i), 1u))), Struct_5(Struct_4(Struct_1(vec3<f32>(1252f, 128f, 371f), vec2<f32>(-1139f, -784f), vec4<i32>(-419i, 1i, 52843i, 0i), 0u), Struct_3(vec2<f32>(1000f, 150f), vec4<i32>(24004i, i32(-2147483648), 34175i, 1i), Struct_1(vec3<f32>(-1035f, -1014f, -798f), vec2<f32>(1952f, -1156f), vec4<i32>(0i, 505i, 0i, 6881i), 1u), vec2<u32>(4538u, 7927u), Struct_1(vec3<f32>(-645f, -580f, 915f), vec2<f32>(-1203f, -1000f), vec4<i32>(-2562i, -1i, 2147483647i, 45090i), 0u))), 0u, true, Struct_3(vec2<f32>(-1000f, -1000f), vec4<i32>(-48159i, -1i, -1i, 1i), Struct_1(vec3<f32>(202f, -1000f, -948f), vec2<f32>(752f, 674f), vec4<i32>(79621i, -23825i, -21941i, 30513i), 1u), vec2<u32>(42633u, 15891u), Struct_1(vec3<f32>(-340f, -1000f, -310f), vec2<f32>(-992f, -787f), vec4<i32>(2147483647i, -49565i, i32(-2147483648), i32(-2147483648)), 71968u))), Struct_5(Struct_4(Struct_1(vec3<f32>(-448f, 242f, -935f), vec2<f32>(-1761f, 448f), vec4<i32>(1i, i32(-2147483648), -35941i, 0i), 1u), Struct_3(vec2<f32>(-1163f, -474f), vec4<i32>(-3485i, 0i, -14927i, 1i), Struct_1(vec3<f32>(-1529f, 115f, -245f), vec2<f32>(-308f, -2184f), vec4<i32>(-18962i, 497i, 2147483647i, 0i), 47288u), vec2<u32>(0u, 4294967295u), Struct_1(vec3<f32>(724f, -268f, 447f), vec2<f32>(471f, -1000f), vec4<i32>(557i, i32(-2147483648), 0i, -40366i), 4294967295u))), 25982u, true, Struct_3(vec2<f32>(409f, 1529f), vec4<i32>(1i, -1i, 1i, -1471i), Struct_1(vec3<f32>(390f, 1071f, -293f), vec2<f32>(351f, -722f), vec4<i32>(39782i, 1i, 10i, 2147483647i), 1u), vec2<u32>(7032u, 34862u), Struct_1(vec3<f32>(294f, -296f, -314f), vec2<f32>(439f, 282f), vec4<i32>(11446i, -1i, 1i, 0i), 7144u))), Struct_5(Struct_4(Struct_1(vec3<f32>(298f, 699f, 1322f), vec2<f32>(1000f, 2686f), vec4<i32>(0i, 2147483647i, 10371i, -14699i), 4294967295u), Struct_3(vec2<f32>(247f, -1008f), vec4<i32>(-14516i, 17042i, i32(-2147483648), 2147483647i), Struct_1(vec3<f32>(297f, -698f, -867f), vec2<f32>(2026f, -638f), vec4<i32>(-6807i, 67263i, -3148i, -27353i), 4294967295u), vec2<u32>(1u, 78774u), Struct_1(vec3<f32>(322f, 422f, 537f), vec2<f32>(-621f, -641f), vec4<i32>(24434i, 0i, 2147483647i, -45980i), 4163u))), 8481u, true, Struct_3(vec2<f32>(602f, -1208f), vec4<i32>(-1i, 1i, -33613i, 39246i), Struct_1(vec3<f32>(201f, 1000f, -1000f), vec2<f32>(453f, 489f), vec4<i32>(-15720i, 1i, 0i, 49195i), 76224u), vec2<u32>(46023u, 13581u), Struct_1(vec3<f32>(-1000f, 361f, 780f), vec2<f32>(-230f, -1368f), vec4<i32>(-10337i, -43748i, -1i, 1i), 37573u))), Struct_5(Struct_4(Struct_1(vec3<f32>(191f, -1039f, 3058f), vec2<f32>(-1469f, 1000f), vec4<i32>(-31705i, 1i, -1i, 2147483647i), 14629u), Struct_3(vec2<f32>(163f, -878f), vec4<i32>(2147483647i, 40183i, i32(-2147483648), 2147483647i), Struct_1(vec3<f32>(2831f, -163f, -3131f), vec2<f32>(-508f, 1459f), vec4<i32>(-5203i, 43866i, 0i, 3336i), 6702u), vec2<u32>(184226u, 0u), Struct_1(vec3<f32>(330f, -1525f, 1568f), vec2<f32>(-547f, -1759f), vec4<i32>(i32(-2147483648), -13476i, -17335i, 6725i), 4294967295u))), 4294967295u, false, Struct_3(vec2<f32>(1071f, 279f), vec4<i32>(-6187i, -28890i, -48060i, i32(-2147483648)), Struct_1(vec3<f32>(-383f, 240f, -903f), vec2<f32>(304f, 101f), vec4<i32>(-43764i, 0i, -10334i, 33806i), 89566u), vec2<u32>(18509u, 1u), Struct_1(vec3<f32>(-1425f, 509f, 587f), vec2<f32>(-108f, 1658f), vec4<i32>(24472i, 0i, 1i, -4302i), 42161u))), Struct_5(Struct_4(Struct_1(vec3<f32>(986f, 1044f, 181f), vec2<f32>(-1546f, 299f), vec4<i32>(1640i, 11084i, 28757i, 2147483647i), 4294967295u), Struct_3(vec2<f32>(174f, 283f), vec4<i32>(-1i, -42885i, 15556i, 0i), Struct_1(vec3<f32>(-507f, -855f, -1215f), vec2<f32>(484f, -682f), vec4<i32>(-1i, -1i, 1789i, 13619i), 56112u), vec2<u32>(0u, 4294967295u), Struct_1(vec3<f32>(-853f, 828f, 1266f), vec2<f32>(1000f, 926f), vec4<i32>(-1i, 45359i, 2147483647i, -14638i), 0u))), 1u, true, Struct_3(vec2<f32>(488f, -1347f), vec4<i32>(18443i, 10462i, 0i, i32(-2147483648)), Struct_1(vec3<f32>(-2248f, -1293f, 390f), vec2<f32>(-770f, 328f), vec4<i32>(-1i, 6991i, -36160i, 4040i), 4294967295u), vec2<u32>(41000u, 57528u), Struct_1(vec3<f32>(-231f, 338f, -1141f), vec2<f32>(-879f, 918f), vec4<i32>(1i, i32(-2147483648), 31767i, 0i), 8353u))), Struct_5(Struct_4(Struct_1(vec3<f32>(849f, -1297f, 1132f), vec2<f32>(-2838f, -1874f), vec4<i32>(i32(-2147483648), -26893i, -1883i, 0i), 2993u), Struct_3(vec2<f32>(624f, -859f), vec4<i32>(-26110i, 0i, 0i, 2147483647i), Struct_1(vec3<f32>(630f, -1237f, 1395f), vec2<f32>(174f, 139f), vec4<i32>(6388i, -1i, -13615i, -24528i), 1u), vec2<u32>(1u, 7473u), Struct_1(vec3<f32>(-1444f, 267f, -1810f), vec2<f32>(-248f, -1008f), vec4<i32>(2147483647i, 1i, -27879i, 1i), 8321u))), 28679u, true, Struct_3(vec2<f32>(669f, 437f), vec4<i32>(2147483647i, -6215i, i32(-2147483648), -8406i), Struct_1(vec3<f32>(-648f, -987f, 2346f), vec2<f32>(481f, -127f), vec4<i32>(21352i, 2147483647i, 2147483647i, -1i), 12797u), vec2<u32>(1u, 129569u), Struct_1(vec3<f32>(439f, 1316f, -581f), vec2<f32>(-1000f, 1000f), vec4<i32>(-1i, 0i, i32(-2147483648), 1i), 4294967295u))), Struct_5(Struct_4(Struct_1(vec3<f32>(189f, 1381f, 2776f), vec2<f32>(-361f, 213f), vec4<i32>(-3379i, i32(-2147483648), -10266i, 1i), 4294967295u), Struct_3(vec2<f32>(-259f, -922f), vec4<i32>(-50211i, 1i, -1i, 0i), Struct_1(vec3<f32>(-214f, 1774f, 1104f), vec2<f32>(497f, -1587f), vec4<i32>(-1i, 2147483647i, -1i, -529i), 15953u), vec2<u32>(4294967295u, 49269u), Struct_1(vec3<f32>(-668f, 247f, -326f), vec2<f32>(-1154f, 1000f), vec4<i32>(0i, 34658i, 15539i, 27190i), 0u))), 0u, true, Struct_3(vec2<f32>(-334f, -622f), vec4<i32>(-10936i, 1i, -1i, -6915i), Struct_1(vec3<f32>(-866f, -719f, -342f), vec2<f32>(-1000f, 595f), vec4<i32>(7454i, 13917i, 11587i, -37263i), 11180u), vec2<u32>(4294967295u, 15124u), Struct_1(vec3<f32>(1673f, -181f, 362f), vec2<f32>(-346f, 1000f), vec4<i32>(31i, -43932i, 1i, 80301i), 78939u))), Struct_5(Struct_4(Struct_1(vec3<f32>(424f, -1301f, -826f), vec2<f32>(-351f, -201f), vec4<i32>(-1i, 1i, 1i, -1i), 51906u), Struct_3(vec2<f32>(-924f, 1000f), vec4<i32>(-2335i, 1527i, 1i, 1i), Struct_1(vec3<f32>(1346f, 1093f, -1010f), vec2<f32>(-790f, -336f), vec4<i32>(2147483647i, 2147483647i, 0i, 2147483647i), 1u), vec2<u32>(82479u, 0u), Struct_1(vec3<f32>(-345f, -1018f, 297f), vec2<f32>(-1000f, -155f), vec4<i32>(-26244i, -55990i, -1i, i32(-2147483648)), 75807u))), 5639u, true, Struct_3(vec2<f32>(2820f, 1405f), vec4<i32>(-77896i, 2147483647i, 2147483647i, 2147483647i), Struct_1(vec3<f32>(-1126f, 1675f, -1318f), vec2<f32>(1000f, -366f), vec4<i32>(-9610i, 1i, -17100i, 8036i), 1u), vec2<u32>(113811u, 84665u), Struct_1(vec3<f32>(870f, 351f, 192f), vec2<f32>(-602f, 1958f), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 14582i), 53474u))), Struct_5(Struct_4(Struct_1(vec3<f32>(-806f, 115f, 981f), vec2<f32>(-1054f, 1000f), vec4<i32>(32264i, 0i, 58842i, -30341i), 1u), Struct_3(vec2<f32>(-898f, 711f), vec4<i32>(-1i, -35615i, 1i, 24558i), Struct_1(vec3<f32>(925f, 500f, 1812f), vec2<f32>(1000f, 790f), vec4<i32>(0i, 2147483647i, -1i, 0i), 38908u), vec2<u32>(43724u, 35919u), Struct_1(vec3<f32>(671f, -266f, 885f), vec2<f32>(-989f, -1000f), vec4<i32>(0i, 30660i, 28629i, -1i), 40141u))), 0u, true, Struct_3(vec2<f32>(1689f, -711f), vec4<i32>(55169i, -59310i, i32(-2147483648), 1i), Struct_1(vec3<f32>(-1076f, 919f, 626f), vec2<f32>(811f, -301f), vec4<i32>(-6350i, 1i, -12854i, 0i), 4294967295u), vec2<u32>(26691u, 2900u), Struct_1(vec3<f32>(-854f, 494f, -1000f), vec2<f32>(2003f, 1082f), vec4<i32>(i32(-2147483648), -6891i, i32(-2147483648), -7802i), 6893u))), Struct_5(Struct_4(Struct_1(vec3<f32>(774f, -790f, -804f), vec2<f32>(1127f, -589f), vec4<i32>(2147483647i, -1i, 25336i, 0i), 69249u), Struct_3(vec2<f32>(2503f, -1075f), vec4<i32>(-5719i, 0i, -12515i, 2147483647i), Struct_1(vec3<f32>(4354f, -1135f, 1000f), vec2<f32>(1000f, -457f), vec4<i32>(0i, 0i, 0i, 0i), 60357u), vec2<u32>(1u, 25753u), Struct_1(vec3<f32>(-658f, -1000f, 369f), vec2<f32>(2082f, -625f), vec4<i32>(-1i, -4336i, -1i, 17554i), 54604u))), 32376u, false, Struct_3(vec2<f32>(420f, -363f), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -12979i), Struct_1(vec3<f32>(1576f, -669f, 1848f), vec2<f32>(-1149f, 1454f), vec4<i32>(-31205i, -23109i, 1i, 3336i), 72775u), vec2<u32>(89113u, 29279u), Struct_1(vec3<f32>(-330f, 1000f, 888f), vec2<f32>(1131f, -976f), vec4<i32>(i32(-2147483648), -10431i, 48855i, i32(-2147483648)), 4294967295u))), Struct_5(Struct_4(Struct_1(vec3<f32>(-653f, -467f, -1267f), vec2<f32>(1313f, -1350f), vec4<i32>(-1i, -33438i, 2147483647i, 16365i), 1u), Struct_3(vec2<f32>(-715f, -832f), vec4<i32>(-20899i, -12251i, 28925i, 2147483647i), Struct_1(vec3<f32>(2356f, -735f, 981f), vec2<f32>(1018f, 1157f), vec4<i32>(-68883i, 32247i, 1i, 32311i), 50294u), vec2<u32>(4294967295u, 1u), Struct_1(vec3<f32>(945f, -1962f, -1226f), vec2<f32>(841f, -157f), vec4<i32>(23898i, -15991i, i32(-2147483648), 33399i), 77175u))), 74840u, true, Struct_3(vec2<f32>(-721f, -674f), vec4<i32>(10915i, 1i, i32(-2147483648), -31131i), Struct_1(vec3<f32>(119f, -185f, -791f), vec2<f32>(717f, -1514f), vec4<i32>(2147483647i, -1i, 2147483647i, 14895i), 25686u), vec2<u32>(4294967295u, 53971u), Struct_1(vec3<f32>(-1000f, 234f, 1160f), vec2<f32>(-184f, 735f), vec4<i32>(71792i, i32(-2147483648), 1i, 2147483647i), 41739u))), Struct_5(Struct_4(Struct_1(vec3<f32>(-1579f, -604f, -2412f), vec2<f32>(-141f, 1000f), vec4<i32>(-1i, 19977i, 67335i, 1i), 1u), Struct_3(vec2<f32>(-739f, -1129f), vec4<i32>(65492i, 1529i, 36820i, i32(-2147483648)), Struct_1(vec3<f32>(729f, 1326f, -827f), vec2<f32>(-253f, -189f), vec4<i32>(-16976i, -1i, 27136i, 0i), 1u), vec2<u32>(68181u, 70247u), Struct_1(vec3<f32>(1156f, 407f, 155f), vec2<f32>(-546f, 529f), vec4<i32>(-1i, 0i, -15479i, 10944i), 4294967295u))), 28653u, true, Struct_3(vec2<f32>(-1398f, 1000f), vec4<i32>(-14650i, 2147483647i, 2147483647i, 5309i), Struct_1(vec3<f32>(-1049f, -451f, -854f), vec2<f32>(-283f, 165f), vec4<i32>(-58592i, 2147483647i, i32(-2147483648), -27606i), 38610u), vec2<u32>(0u, 0u), Struct_1(vec3<f32>(1000f, -245f, -1226f), vec2<f32>(100f, -488f), vec4<i32>(1i, i32(-2147483648), -28377i, 19224i), 32324u))), Struct_5(Struct_4(Struct_1(vec3<f32>(2125f, 2473f, -981f), vec2<f32>(-1787f, 431f), vec4<i32>(-1i, 21943i, -21375i, 9359i), 4294967295u), Struct_3(vec2<f32>(-179f, 1058f), vec4<i32>(i32(-2147483648), i32(-2147483648), -20820i, 10439i), Struct_1(vec3<f32>(474f, -671f, 968f), vec2<f32>(-928f, -141f), vec4<i32>(19696i, -66051i, 0i, 21571i), 33082u), vec2<u32>(24961u, 0u), Struct_1(vec3<f32>(815f, 2049f, -169f), vec2<f32>(-596f, 1070f), vec4<i32>(0i, -26069i, -20661i, 518i), 0u))), 23019u, true, Struct_3(vec2<f32>(1030f, -744f), vec4<i32>(22594i, 2147483647i, -1i, i32(-2147483648)), Struct_1(vec3<f32>(144f, -1000f, 970f), vec2<f32>(-1106f, -1371f), vec4<i32>(74405i, 0i, -1691i, 7740i), 39008u), vec2<u32>(42552u, 1u), Struct_1(vec3<f32>(1000f, 498f, 960f), vec2<f32>(-892f, 661f), vec4<i32>(49213i, -1i, 0i, 2889i), 15304u))), Struct_5(Struct_4(Struct_1(vec3<f32>(847f, -2877f, 1616f), vec2<f32>(-391f, 639f), vec4<i32>(19019i, -15271i, -1i, i32(-2147483648)), 4117u), Struct_3(vec2<f32>(159f, 1024f), vec4<i32>(-29634i, 50606i, 17267i, -12999i), Struct_1(vec3<f32>(-1173f, -191f, 479f), vec2<f32>(177f, -347f), vec4<i32>(-69296i, -1i, -19938i, 54076i), 1u), vec2<u32>(18583u, 18344u), Struct_1(vec3<f32>(-186f, 564f, 1165f), vec2<f32>(572f, -751f), vec4<i32>(1i, 1i, -26071i, 15468i), 0u))), 25154u, true, Struct_3(vec2<f32>(1081f, 786f), vec4<i32>(-19870i, 0i, 18266i, -53695i), Struct_1(vec3<f32>(997f, -809f, -1000f), vec2<f32>(-396f, -1000f), vec4<i32>(-19339i, i32(-2147483648), 2147483647i, -6000i), 1010u), vec2<u32>(1u, 0u), Struct_1(vec3<f32>(-1056f, 1268f, -1000f), vec2<f32>(-1336f, 285f), vec4<i32>(15795i, -28030i, -24937i, 41536i), 12611u))), Struct_5(Struct_4(Struct_1(vec3<f32>(-643f, -635f, 123f), vec2<f32>(1078f, -428f), vec4<i32>(-56643i, 13898i, 0i, i32(-2147483648)), 21497u), Struct_3(vec2<f32>(-442f, -218f), vec4<i32>(1i, -41744i, -22595i, -16445i), Struct_1(vec3<f32>(1033f, 651f, -935f), vec2<f32>(-660f, 634f), vec4<i32>(0i, -21489i, 0i, 13507i), 4294967295u), vec2<u32>(1u, 4294967295u), Struct_1(vec3<f32>(291f, 1692f, -1596f), vec2<f32>(1490f, 449f), vec4<i32>(26539i, -1i, 1i, 1i), 12636u))), 58924u, true, Struct_3(vec2<f32>(-1147f, 1331f), vec4<i32>(-15414i, i32(-2147483648), 28450i, i32(-2147483648)), Struct_1(vec3<f32>(1325f, -1442f, -1123f), vec2<f32>(-1118f, -672f), vec4<i32>(1i, 13142i, -59397i, -1i), 1u), vec2<u32>(3821u, 19585u), Struct_1(vec3<f32>(1475f, 1000f, 1633f), vec2<f32>(-2463f, 1196f), vec4<i32>(-12490i, 29367i, 2147483647i, i32(-2147483648)), 1u))), Struct_5(Struct_4(Struct_1(vec3<f32>(2581f, -994f, 1856f), vec2<f32>(-1972f, -426f), vec4<i32>(0i, 2147483647i, 1i, -35316i), 22328u), Struct_3(vec2<f32>(1464f, -1625f), vec4<i32>(-21765i, 30712i, 2147483647i, 1i), Struct_1(vec3<f32>(1310f, -1000f, 920f), vec2<f32>(-1000f, -711f), vec4<i32>(2147483647i, -50715i, -62987i, 1i), 11028u), vec2<u32>(0u, 105903u), Struct_1(vec3<f32>(-1065f, 331f, 791f), vec2<f32>(410f, -430f), vec4<i32>(-956i, 2147483647i, 25547i, i32(-2147483648)), 23820u))), 4294967295u, false, Struct_3(vec2<f32>(631f, 936f), vec4<i32>(-40307i, -16031i, 1i, i32(-2147483648)), Struct_1(vec3<f32>(-1000f, -1000f, 326f), vec2<f32>(1033f, 816f), vec4<i32>(-2536i, i32(-2147483648), 1i, 1i), 1u), vec2<u32>(0u, 4294967295u), Struct_1(vec3<f32>(-1391f, 299f, -568f), vec2<f32>(417f, -273f), vec4<i32>(19487i, 6926i, 3797i, 47015i), 124245u))), Struct_5(Struct_4(Struct_1(vec3<f32>(446f, 173f, -515f), vec2<f32>(-680f, 530f), vec4<i32>(2147483647i, -1i, -20919i, -7639i), 0u), Struct_3(vec2<f32>(341f, -532f), vec4<i32>(0i, 0i, -5585i, 0i), Struct_1(vec3<f32>(768f, -233f, -1000f), vec2<f32>(1130f, 1169f), vec4<i32>(-1i, 2147483647i, 0i, -1i), 1u), vec2<u32>(28855u, 1u), Struct_1(vec3<f32>(1352f, -1041f, 1000f), vec2<f32>(-679f, -278f), vec4<i32>(1i, -57211i, -44484i, 61968i), 0u))), 9966u, true, Struct_3(vec2<f32>(-392f, 289f), vec4<i32>(2147483647i, 2147483647i, 0i, i32(-2147483648)), Struct_1(vec3<f32>(308f, 446f, -902f), vec2<f32>(-783f, -538f), vec4<i32>(-4411i, 1i, 36241i, 0i), 0u), vec2<u32>(4294967295u, 4299u), Struct_1(vec3<f32>(1000f, 273f, 1000f), vec2<f32>(1292f, 371f), vec4<i32>(-48846i, 41595i, 2147483647i, 44521i), 29732u))));

var<private> global1: i32;

var<private> global2: bool;

var<private> global3: array<vec3<u32>, 9>;

var<private> global4: array<i32, 22> = array<i32, 22>(20096i, -1i, 32954i, 21346i, -61300i, 1i, -1004i, 0i, 1611i, i32(-2147483648), -9233i, 2147483647i, -1i, i32(-2147483648), 5194i, 2623i, -5531i, 0i, -5323i, i32(-2147483648), 1i, -57652i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_3) -> u32 {
    var var_0 = true;
    var_0 = any(vec4<bool>(true | all(!vec2<bool>(true, arg_1)), !(abs(arg_2.e.c.x) < _wgslsmith_add_i32(arg_2.e.c.x, global4[_wgslsmith_index_u32(u_input.a, 22u)])), any(vec3<bool>(all(vec3<bool>(true, false, arg_1)), any(vec2<bool>(true, true)), arg_1 || true)), arg_1));
    var var_1 = ~_wgslsmith_sub_i32(arg_0.x, _wgslsmith_mult_i32(arg_0.x, i32(-1i) * -1i));
    global1 = ~_wgslsmith_div_i32(_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(28663u, 22u)] ^ _wgslsmith_div_i32(arg_2.b.x, u_input.b), 13258i), -1i);
    return max(firstTrailingBit(~(~70622u)), ~(~44045u >> (1u % 32u)));
}

fn func_2(arg_0: vec3<bool>) -> vec3<u32> {
    global0 = array<Struct_5, 28>();
    global1 = u_input.b;
    global0 = array<Struct_5, 28>();
    let var_0 = global0[_wgslsmith_index_u32(~(reverseBits(38292u) & _wgslsmith_dot_vec2_u32(min(min(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, 8232u)), ~vec2<u32>(u_input.a, u_input.a)), firstLeadingBit(vec2<u32>(3621u, 0u)))), 28u)];
    var var_1 = ~(~(~global3[_wgslsmith_index_u32(select(countOneBits(u_input.a), func_3(vec2<i32>(var_0.d.e.c.x, u_input.b), var_0.c, Struct_3(var_0.a.a.b, var_0.d.b, Struct_1(vec3<f32>(-1000f, -242f, var_0.a.b.c.b.x), vec2<f32>(var_0.a.b.c.a.x, 947f), vec4<i32>(var_0.a.b.b.x, -63441i, u_input.b, 43150i), 35861u), var_0.a.b.d, Struct_1(vec3<f32>(-1811f, var_0.a.a.a.x, var_0.a.a.a.x), vec2<f32>(var_0.d.a.x, 1485f), var_0.d.c.c, u_input.a))), arg_0.x), 9u)]));
    return min(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.x, ~var_1.x), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a << (~18413u % 32u), ~u_input.a), 9u)]), _wgslsmith_clamp_vec3_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~global3[_wgslsmith_index_u32(41138u, 9u)], global3[_wgslsmith_index_u32(var_1.x | 91253u, 9u)], vec3<u32>(u_input.a, 22610u, var_0.b)), countOneBits(global3[_wgslsmith_index_u32(firstTrailingBit(var_0.a.b.e.d), 9u)])), 9u)], abs(~(~vec3<u32>(0u, 13127u, 11959u))), _wgslsmith_mult_vec3_u32(select(firstLeadingBit(global3[_wgslsmith_index_u32(var_1.x, 9u)]), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 17379u), 9u)], false), vec3<u32>(var_0.b, 174u, 4294967295u) & reverseBits(global3[_wgslsmith_index_u32(u_input.a, 9u)]))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> Struct_2 {
    global1 = _wgslsmith_dot_vec3_i32((-_wgslsmith_mult_vec3_i32(vec3<i32>(-25244i, u_input.b, 1i), vec3<i32>(0i, global4[_wgslsmith_index_u32(u_input.a, 22u)], u_input.b)) >> (~func_2(arg_0.zwx) % vec3<u32>(32u))) & firstTrailingBit(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(15433i, u_input.b, u_input.b)), ~vec3<i32>(global4[_wgslsmith_index_u32(0u, 22u)], -10176i, u_input.b))), ~max(vec3<i32>(~u_input.b, 2147483647i, -45587i), vec3<i32>(abs(1i), global4[_wgslsmith_index_u32(~0u, 22u)], _wgslsmith_add_i32(u_input.b, 0i))));
    let var_0 = vec4<bool>(any(vec3<bool>(!arg_0.x, false, false)) & !(!arg_0.x), all(select(arg_0.wx, arg_0.zw, vec2<bool>(true, true))), false, any(!vec4<bool>(u_input.a >= u_input.a, select(arg_0.x, arg_0.x, arg_0.x), arg_0.x && arg_0.x, arg_0.x)));
    let var_1 = Struct_1(vec3<f32>(1317f, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 + arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -218f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, _wgslsmith_f_op_f32(-1597f + _wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_div_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-9075i, u_input.b, global4[_wgslsmith_index_u32(4294967295u, 22u)], u_input.b), vec4<i32>(u_input.b, global4[_wgslsmith_index_u32(132479u, 22u)], u_input.b, -4147i)), vec4<i32>(-u_input.b, u_input.b, global4[_wgslsmith_index_u32(u_input.a, 22u)] ^ u_input.b, 1i)) << (firstTrailingBit(~(vec4<u32>(u_input.a, u_input.a, 55466u, 59235u) | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)), reverseBits(1u));
    let var_2 = Struct_2(var_1.c.x, var_1, vec3<u32>(_wgslsmith_clamp_u32(var_1.d, var_1.d, u_input.a), ~reverseBits(var_1.d), _wgslsmith_mult_u32(0u, 4294967295u)), var_1.b.x, var_1);
    global1 = var_2.a;
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: i32) -> i32 {
    var var_0 = select(!(!select(select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, arg_1.c), vec2<bool>(arg_1.c, arg_1.c)), select(vec2<bool>(true, arg_1.c), vec2<bool>(arg_1.c, arg_1.c), arg_1.c), true)), !select(select(vec2<bool>(true, arg_1.c), select(vec2<bool>(true, true), vec2<bool>(true, arg_1.c), false), !vec2<bool>(arg_1.c, false)), select(vec2<bool>(false, arg_1.c), vec2<bool>(arg_1.c, true), arg_1.c), !(false || arg_1.c)), !vec2<bool>(true == arg_1.c, arg_1.c));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(~(-1i), 1i), arg_1.d.b.yy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 28>();
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1085f, -864f, -388f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(373f, -421f, 827f))), false)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1678f, 297f, 915f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1502f, 557f, 163f)), u_input.a < u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-364f, 1000f, 622f)))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(576f, 1235f, -496f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-444f, 1430f, -809f), vec3<f32>(1064f, -214f, -1288f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -936f, 802f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(552f, 454f, 1095f) * vec3<f32>(2171f, -1396f, 1277f))))))));
    global4 = array<i32, 22>();
    var var_1 = vec4<bool>(any(vec3<bool>(true, true, true)), false, true, false);
    global0 = array<Struct_5, 28>();
    var var_2 = false;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1161f, var_0.x), -992f, _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-607f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, var_0.x), var_0.zx)))))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(43003u, u_input.a), 22u)], -76855i << (u_input.a % 32u)), u_input.b), u_input.b, func_4(func_1(!vec4<bool>(var_1.x, var_1.x, var_1.x, false), _wgslsmith_f_op_f32(f32(-1f) * -1677f)), Struct_5(Struct_4(Struct_1(var_0, vec2<f32>(var_0.x, -1000f), vec4<i32>(global4[_wgslsmith_index_u32(5979u, 22u)], 56981i, global4[_wgslsmith_index_u32(21815u, 22u)], global4[_wgslsmith_index_u32(0u, 22u)]), 1u), Struct_3(var_0.xy, vec4<i32>(4514i, 2147483647i, -1i, global4[_wgslsmith_index_u32(u_input.a, 22u)]), Struct_1(vec3<f32>(-454f, 1221f, var_0.x), var_0.yy, vec4<i32>(u_input.b, -74126i, -40009i, global4[_wgslsmith_index_u32(4294967295u, 22u)]), u_input.a), vec2<u32>(4778u, 46723u), Struct_1(var_0, var_0.zy, vec4<i32>(-1i, u_input.b, u_input.b, global4[_wgslsmith_index_u32(u_input.a, 22u)]), 1u))), 1u, all(var_1.xxx), Struct_3(vec2<f32>(var_0.x, 932f), vec4<i32>(0i, 1341i, global4[_wgslsmith_index_u32(u_input.a, 22u)], -1i), Struct_1(vec3<f32>(var_0.x, var_0.x, -1131f), var_0.yy, vec4<i32>(-2147483647i, -2147483647i, 11099i, u_input.b), 46158u), vec2<u32>(1u, u_input.a), Struct_1(vec3<f32>(var_0.x, var_0.x, var_0.x), var_0.yy, vec4<i32>(-66203i, u_input.b, -1i, 15586i), 4294967295u))), u_input.b), _wgslsmith_add_i32(-firstTrailingBit(-3231i), -908i)), u_input.a);
    let var_4 = ~u_input.a;
    let var_5 = _wgslsmith_f_op_f32(var_3.b.x - var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_5, func_1(!(!vec4<bool>(false, var_1.x, var_1.x, true)), _wgslsmith_f_op_f32(select(941f, _wgslsmith_f_op_f32(max(var_3.b.x, var_0.x)), !var_1.x))).e.b.x), -1041f, -1i);
}

