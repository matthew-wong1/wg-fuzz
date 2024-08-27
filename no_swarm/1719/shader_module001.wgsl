struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec2<bool>(true, false), Struct_2(-30612i, Struct_1(vec2<f32>(-592f, 447f), vec2<f32>(552f, -618f), 409f, true, vec2<i32>(1009i, 2147483647i)), 14752i, -748f), true, Struct_1(vec2<f32>(-1689f, 206f), vec2<f32>(-569f, 1228f), -429f, true, vec2<i32>(-19996i, 47016i)), -748f), Struct_3(vec2<bool>(true, true), Struct_2(2147483647i, Struct_1(vec2<f32>(264f, 1186f), vec2<f32>(-551f, -479f), 163f, true, vec2<i32>(25661i, 44701i)), i32(-2147483648), -407f), true, Struct_1(vec2<f32>(1000f, -339f), vec2<f32>(1234f, 586f), -1649f, true, vec2<i32>(-29915i, 2147483647i)), 973f), Struct_3(vec2<bool>(true, false), Struct_2(1i, Struct_1(vec2<f32>(1000f, -2980f), vec2<f32>(137f, 599f), -368f, false, vec2<i32>(-1i, -1i)), 10369i, -517f), false, Struct_1(vec2<f32>(698f, -167f), vec2<f32>(-786f, -713f), -815f, false, vec2<i32>(-40548i, -1i)), 237f), Struct_3(vec2<bool>(false, true), Struct_2(1i, Struct_1(vec2<f32>(-1202f, 422f), vec2<f32>(-800f, 593f), -848f, true, vec2<i32>(22375i, i32(-2147483648))), 0i, 723f), false, Struct_1(vec2<f32>(432f, 798f), vec2<f32>(494f, -1008f), 263f, true, vec2<i32>(i32(-2147483648), 1i)), 733f), Struct_3(vec2<bool>(true, false), Struct_2(-77055i, Struct_1(vec2<f32>(-2221f, -1408f), vec2<f32>(-1338f, -2069f), -1477f, true, vec2<i32>(-15050i, 26794i)), -1i, -331f), true, Struct_1(vec2<f32>(-268f, 826f), vec2<f32>(-565f, -127f), -1000f, true, vec2<i32>(14877i, i32(-2147483648))), 1727f), Struct_3(vec2<bool>(false, true), Struct_2(3277i, Struct_1(vec2<f32>(-1244f, 1000f), vec2<f32>(-901f, -839f), 1000f, false, vec2<i32>(i32(-2147483648), 29540i)), 5257i, 684f), false, Struct_1(vec2<f32>(852f, -1944f), vec2<f32>(184f, -746f), 243f, true, vec2<i32>(26938i, 2147483647i)), -391f), Struct_3(vec2<bool>(false, false), Struct_2(4498i, Struct_1(vec2<f32>(668f, 434f), vec2<f32>(-1003f, 504f), -453f, false, vec2<i32>(2147483647i, -33843i)), -1i, -1019f), false, Struct_1(vec2<f32>(2127f, -153f), vec2<f32>(940f, 148f), 2034f, true, vec2<i32>(i32(-2147483648), -5060i)), -648f), Struct_3(vec2<bool>(false, true), Struct_2(38173i, Struct_1(vec2<f32>(-184f, 162f), vec2<f32>(-1000f, 113f), -101f, true, vec2<i32>(0i, 2147483647i)), 0i, 1785f), false, Struct_1(vec2<f32>(-583f, -1514f), vec2<f32>(1061f, 1000f), -1000f, false, vec2<i32>(2188i, 2147483647i)), 942f), Struct_3(vec2<bool>(true, true), Struct_2(-1i, Struct_1(vec2<f32>(-1455f, 917f), vec2<f32>(906f, -1278f), -593f, true, vec2<i32>(i32(-2147483648), -23049i)), 64620i, 153f), false, Struct_1(vec2<f32>(-198f, 1000f), vec2<f32>(541f, 1034f), 225f, true, vec2<i32>(i32(-2147483648), -24343i)), 866f), Struct_3(vec2<bool>(false, false), Struct_2(0i, Struct_1(vec2<f32>(1790f, -576f), vec2<f32>(-1000f, -971f), 307f, true, vec2<i32>(-1494i, 1i)), -1i, -766f), true, Struct_1(vec2<f32>(-1000f, -706f), vec2<f32>(-800f, 1538f), -163f, false, vec2<i32>(0i, 1i)), 399f), Struct_3(vec2<bool>(false, true), Struct_2(-9042i, Struct_1(vec2<f32>(-915f, 745f), vec2<f32>(-413f, 539f), -298f, true, vec2<i32>(i32(-2147483648), -34887i)), -7140i, -483f), true, Struct_1(vec2<f32>(-866f, 638f), vec2<f32>(406f, 322f), -1000f, true, vec2<i32>(-1i, 1i)), -1390f), Struct_3(vec2<bool>(true, false), Struct_2(13012i, Struct_1(vec2<f32>(-236f, 1862f), vec2<f32>(-1000f, -1550f), -880f, false, vec2<i32>(39684i, 2147483647i)), 2319i, -171f), true, Struct_1(vec2<f32>(165f, -489f), vec2<f32>(-1131f, -503f), 1552f, true, vec2<i32>(1i, 72239i)), 900f), Struct_3(vec2<bool>(true, false), Struct_2(10254i, Struct_1(vec2<f32>(1670f, -553f), vec2<f32>(252f, 105f), 1000f, true, vec2<i32>(3329i, 1i)), i32(-2147483648), -659f), true, Struct_1(vec2<f32>(990f, -114f), vec2<f32>(-746f, 876f), -2034f, true, vec2<i32>(15832i, i32(-2147483648))), 1000f), Struct_3(vec2<bool>(false, true), Struct_2(2147483647i, Struct_1(vec2<f32>(1352f, -919f), vec2<f32>(-323f, 292f), 432f, true, vec2<i32>(-715i, i32(-2147483648))), i32(-2147483648), -1000f), true, Struct_1(vec2<f32>(-192f, -2286f), vec2<f32>(1041f, 236f), -2799f, false, vec2<i32>(23660i, -10913i)), 1578f), Struct_3(vec2<bool>(false, true), Struct_2(17830i, Struct_1(vec2<f32>(-159f, 1207f), vec2<f32>(333f, 402f), 1283f, true, vec2<i32>(0i, i32(-2147483648))), -1i, -616f), false, Struct_1(vec2<f32>(2523f, -1449f), vec2<f32>(-135f, 1371f), 1539f, true, vec2<i32>(25458i, 19559i)), -768f), Struct_3(vec2<bool>(true, true), Struct_2(2267i, Struct_1(vec2<f32>(-1000f, 609f), vec2<f32>(1128f, 2041f), -521f, false, vec2<i32>(-1i, -1i)), 29283i, -1365f), false, Struct_1(vec2<f32>(-1349f, -744f), vec2<f32>(1478f, -380f), -269f, true, vec2<i32>(-37682i, -11776i)), -1318f), Struct_3(vec2<bool>(true, true), Struct_2(1i, Struct_1(vec2<f32>(1619f, 1000f), vec2<f32>(-117f, 195f), 281f, false, vec2<i32>(36609i, 0i)), 3098i, -738f), false, Struct_1(vec2<f32>(804f, -2134f), vec2<f32>(-1052f, -149f), 2169f, false, vec2<i32>(i32(-2147483648), 2147483647i)), 1883f), Struct_3(vec2<bool>(false, false), Struct_2(9669i, Struct_1(vec2<f32>(-392f, -795f), vec2<f32>(-460f, 896f), 161f, true, vec2<i32>(0i, 1i)), 43823i, 1026f), true, Struct_1(vec2<f32>(1772f, -903f), vec2<f32>(-999f, -1000f), -588f, false, vec2<i32>(27013i, 34019i)), -441f), Struct_3(vec2<bool>(false, true), Struct_2(2096i, Struct_1(vec2<f32>(-2067f, -555f), vec2<f32>(-1152f, -1214f), -1033f, true, vec2<i32>(2147483647i, 39985i)), 36566i, -656f), true, Struct_1(vec2<f32>(-726f, 1405f), vec2<f32>(913f, 493f), 1206f, false, vec2<i32>(-9056i, 1i)), -1389f), Struct_3(vec2<bool>(false, true), Struct_2(-15179i, Struct_1(vec2<f32>(529f, -2144f), vec2<f32>(-1061f, -884f), -395f, true, vec2<i32>(1i, -1i)), 13984i, -1253f), false, Struct_1(vec2<f32>(421f, -2619f), vec2<f32>(106f, -1811f), -1321f, false, vec2<i32>(1i, -13730i)), -116f), Struct_3(vec2<bool>(false, false), Struct_2(1i, Struct_1(vec2<f32>(2631f, 609f), vec2<f32>(-460f, -2083f), -835f, false, vec2<i32>(-41453i, 0i)), 1i, 301f), true, Struct_1(vec2<f32>(-531f, -370f), vec2<f32>(578f, -1381f), 2626f, true, vec2<i32>(2147483647i, -1i)), -735f), Struct_3(vec2<bool>(true, false), Struct_2(3319i, Struct_1(vec2<f32>(-581f, -312f), vec2<f32>(202f, 957f), 1401f, false, vec2<i32>(-11915i, i32(-2147483648))), -8091i, 1550f), true, Struct_1(vec2<f32>(-1627f, -1147f), vec2<f32>(1970f, -1000f), 1000f, true, vec2<i32>(67750i, 2147483647i)), -1961f), Struct_3(vec2<bool>(false, false), Struct_2(31927i, Struct_1(vec2<f32>(-1000f, -1000f), vec2<f32>(-1347f, 1239f), -992f, true, vec2<i32>(-6051i, -5678i)), i32(-2147483648), -193f), true, Struct_1(vec2<f32>(776f, 208f), vec2<f32>(1990f, 299f), -222f, false, vec2<i32>(1i, -61392i)), 758f), Struct_3(vec2<bool>(false, false), Struct_2(-41861i, Struct_1(vec2<f32>(-373f, -1041f), vec2<f32>(-714f, 251f), 762f, true, vec2<i32>(-14549i, -25707i)), -4009i, 775f), false, Struct_1(vec2<f32>(-287f, 2042f), vec2<f32>(-949f, 1000f), 1319f, true, vec2<i32>(-9726i, 0i)), -218f));

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec2<bool>(true, true), Struct_2(-49660i, Struct_1(vec2<f32>(471f, -381f), vec2<f32>(-243f, -926f), 1258f, true, vec2<i32>(35622i, 0i)), 0i, -1441f), true, Struct_1(vec2<f32>(-179f, 188f), vec2<f32>(830f, -307f), -1373f, false, vec2<i32>(-4892i, 7600i)), -268f), Struct_3(vec2<bool>(true, false), Struct_2(1i, Struct_1(vec2<f32>(-852f, -697f), vec2<f32>(-637f, 837f), -1166f, true, vec2<i32>(-15507i, 2147483647i)), -1i, 245f), true, Struct_1(vec2<f32>(351f, 2031f), vec2<f32>(-1797f, -915f), -1455f, true, vec2<i32>(1i, -1i)), 1025f), Struct_3(vec2<bool>(false, true), Struct_2(2147483647i, Struct_1(vec2<f32>(-858f, -475f), vec2<f32>(-1557f, 1894f), -2714f, false, vec2<i32>(2147483647i, -1i)), -47425i, 355f), true, Struct_1(vec2<f32>(691f, -775f), vec2<f32>(-1000f, 183f), 508f, false, vec2<i32>(-13073i, 41262i)), 762f), Struct_3(vec2<bool>(false, true), Struct_2(1i, Struct_1(vec2<f32>(105f, -104f), vec2<f32>(1318f, 860f), -478f, true, vec2<i32>(-21677i, 23356i)), -17122i, -636f), true, Struct_1(vec2<f32>(-367f, -180f), vec2<f32>(328f, -735f), 874f, false, vec2<i32>(35475i, -30140i)), 166f), Struct_3(vec2<bool>(false, true), Struct_2(39012i, Struct_1(vec2<f32>(-1275f, 1122f), vec2<f32>(-287f, -1203f), 247f, false, vec2<i32>(-33454i, 19029i)), -16370i, 521f), false, Struct_1(vec2<f32>(1232f, -707f), vec2<f32>(-172f, 201f), -122f, false, vec2<i32>(-918i, 627i)), 720f), Struct_3(vec2<bool>(false, true), Struct_2(38666i, Struct_1(vec2<f32>(-228f, 628f), vec2<f32>(182f, -155f), -1804f, true, vec2<i32>(0i, 0i)), 1i, -457f), false, Struct_1(vec2<f32>(-497f, 309f), vec2<f32>(-1107f, 1155f), -1446f, false, vec2<i32>(-52751i, -1i)), -3025f), Struct_3(vec2<bool>(false, true), Struct_2(2147483647i, Struct_1(vec2<f32>(-985f, -213f), vec2<f32>(-347f, 1534f), 1158f, false, vec2<i32>(-30788i, 40789i)), -16872i, -1061f), true, Struct_1(vec2<f32>(1000f, -1000f), vec2<f32>(-1479f, 1668f), -368f, false, vec2<i32>(42595i, 0i)), -552f), Struct_3(vec2<bool>(true, true), Struct_2(0i, Struct_1(vec2<f32>(340f, -1129f), vec2<f32>(331f, -494f), 1091f, true, vec2<i32>(2147483647i, -1i)), 27306i, 1000f), false, Struct_1(vec2<f32>(-921f, 1037f), vec2<f32>(-469f, 893f), 615f, true, vec2<i32>(-7359i, 13112i)), 682f), Struct_3(vec2<bool>(true, true), Struct_2(68533i, Struct_1(vec2<f32>(-491f, 1156f), vec2<f32>(2603f, -1172f), -1601f, true, vec2<i32>(17532i, -14657i)), 4543i, 1000f), true, Struct_1(vec2<f32>(1121f, 1789f), vec2<f32>(263f, 456f), -1065f, false, vec2<i32>(i32(-2147483648), 2147483647i)), -794f), Struct_3(vec2<bool>(false, true), Struct_2(29156i, Struct_1(vec2<f32>(252f, 217f), vec2<f32>(1000f, -698f), -413f, false, vec2<i32>(0i, 1i)), 21045i, -195f), true, Struct_1(vec2<f32>(-1386f, -327f), vec2<f32>(978f, -976f), 173f, false, vec2<i32>(12781i, 7058i)), -1000f), Struct_3(vec2<bool>(true, true), Struct_2(2147483647i, Struct_1(vec2<f32>(1468f, -252f), vec2<f32>(-1518f, -1000f), -1213f, true, vec2<i32>(83978i, 0i)), 1i, 497f), true, Struct_1(vec2<f32>(1845f, 505f), vec2<f32>(469f, 308f), -1892f, false, vec2<i32>(15827i, 0i)), 2050f), Struct_3(vec2<bool>(true, false), Struct_2(-1i, Struct_1(vec2<f32>(202f, 621f), vec2<f32>(992f, 1000f), 918f, true, vec2<i32>(9432i, -17507i)), 1i, 572f), false, Struct_1(vec2<f32>(907f, 206f), vec2<f32>(-252f, -1226f), -568f, false, vec2<i32>(41644i, -1i)), -1227f), Struct_3(vec2<bool>(true, false), Struct_2(2147483647i, Struct_1(vec2<f32>(443f, 2198f), vec2<f32>(1520f, -284f), -551f, false, vec2<i32>(2147483647i, -28437i)), 0i, 1000f), true, Struct_1(vec2<f32>(-238f, -218f), vec2<f32>(-189f, -1740f), 1000f, false, vec2<i32>(-40045i, -2686i)), -231f), Struct_3(vec2<bool>(false, true), Struct_2(-22963i, Struct_1(vec2<f32>(2332f, 113f), vec2<f32>(1393f, -1009f), -523f, true, vec2<i32>(13673i, -31135i)), i32(-2147483648), -1173f), true, Struct_1(vec2<f32>(574f, 906f), vec2<f32>(-450f, 828f), 1085f, true, vec2<i32>(23544i, 0i)), -1000f), Struct_3(vec2<bool>(true, true), Struct_2(0i, Struct_1(vec2<f32>(-353f, 945f), vec2<f32>(-1000f, -317f), 1235f, false, vec2<i32>(50841i, i32(-2147483648))), 51110i, -1755f), true, Struct_1(vec2<f32>(494f, 1373f), vec2<f32>(370f, 1254f), 684f, false, vec2<i32>(-39655i, i32(-2147483648))), -1000f), Struct_3(vec2<bool>(false, false), Struct_2(36372i, Struct_1(vec2<f32>(210f, 677f), vec2<f32>(631f, 229f), -782f, true, vec2<i32>(0i, 0i)), -46108i, 3362f), true, Struct_1(vec2<f32>(1587f, 1838f), vec2<f32>(-217f, 170f), -192f, true, vec2<i32>(-30302i, 0i)), 134f), Struct_3(vec2<bool>(true, false), Struct_2(i32(-2147483648), Struct_1(vec2<f32>(108f, 1236f), vec2<f32>(-545f, 323f), -640f, true, vec2<i32>(0i, 21788i)), -1i, -688f), false, Struct_1(vec2<f32>(732f, -675f), vec2<f32>(668f, 1087f), -1894f, false, vec2<i32>(1i, -1i)), -1048f), Struct_3(vec2<bool>(true, true), Struct_2(-1229i, Struct_1(vec2<f32>(1023f, 1193f), vec2<f32>(1505f, 948f), 1000f, true, vec2<i32>(1i, 0i)), 23680i, -644f), false, Struct_1(vec2<f32>(534f, 1000f), vec2<f32>(514f, -284f), -1000f, true, vec2<i32>(1i, 7029i)), -479f), Struct_3(vec2<bool>(true, true), Struct_2(40149i, Struct_1(vec2<f32>(-280f, 923f), vec2<f32>(448f, -1044f), -947f, true, vec2<i32>(-31241i, -65778i)), i32(-2147483648), -431f), false, Struct_1(vec2<f32>(-423f, -1104f), vec2<f32>(-360f, -114f), 837f, false, vec2<i32>(-23030i, 0i)), -298f), Struct_3(vec2<bool>(true, false), Struct_2(-43541i, Struct_1(vec2<f32>(-973f, -655f), vec2<f32>(-405f, 196f), 104f, false, vec2<i32>(0i, 2147483647i)), 0i, 529f), false, Struct_1(vec2<f32>(-481f, 1075f), vec2<f32>(1946f, -329f), -431f, false, vec2<i32>(-16012i, 1i)), -155f), Struct_3(vec2<bool>(false, true), Struct_2(-39458i, Struct_1(vec2<f32>(1066f, -835f), vec2<f32>(-370f, -325f), 122f, true, vec2<i32>(37008i, 2556i)), 12325i, 964f), true, Struct_1(vec2<f32>(-143f, -570f), vec2<f32>(-1966f, -1208f), -1493f, false, vec2<i32>(30046i, 9995i)), 868f), Struct_3(vec2<bool>(true, true), Struct_2(0i, Struct_1(vec2<f32>(-1000f, 1436f), vec2<f32>(1383f, -377f), -703f, true, vec2<i32>(-1i, -7656i)), 0i, 260f), false, Struct_1(vec2<f32>(-191f, -504f), vec2<f32>(-289f, -618f), 701f, false, vec2<i32>(17899i, 13633i)), -1044f), Struct_3(vec2<bool>(true, false), Struct_2(29229i, Struct_1(vec2<f32>(-1000f, 1129f), vec2<f32>(467f, 1000f), -908f, true, vec2<i32>(-1i, 23211i)), 5815i, 344f), true, Struct_1(vec2<f32>(-2289f, 222f), vec2<f32>(227f, -1523f), 852f, true, vec2<i32>(2147483647i, 0i)), 253f), Struct_3(vec2<bool>(false, true), Struct_2(11646i, Struct_1(vec2<f32>(438f, 755f), vec2<f32>(487f, -511f), -829f, false, vec2<i32>(-1i, i32(-2147483648))), -1i, 723f), false, Struct_1(vec2<f32>(-1392f, -718f), vec2<f32>(-571f, 945f), -405f, true, vec2<i32>(-20002i, -18631i)), -533f), Struct_3(vec2<bool>(true, false), Struct_2(3454i, Struct_1(vec2<f32>(-354f, -335f), vec2<f32>(281f, 1792f), -1500f, false, vec2<i32>(-3957i, -24966i)), 4234i, 1076f), true, Struct_1(vec2<f32>(-1021f, -648f), vec2<f32>(1000f, 157f), -782f, true, vec2<i32>(i32(-2147483648), i32(-2147483648))), -549f), Struct_3(vec2<bool>(true, false), Struct_2(21228i, Struct_1(vec2<f32>(-1000f, 911f), vec2<f32>(-1096f, 122f), -1000f, true, vec2<i32>(0i, 8369i)), i32(-2147483648), -1000f), true, Struct_1(vec2<f32>(-518f, -239f), vec2<f32>(321f, -635f), -894f, false, vec2<i32>(-51128i, 0i)), 361f), Struct_3(vec2<bool>(true, true), Struct_2(0i, Struct_1(vec2<f32>(-948f, -128f), vec2<f32>(631f, -185f), -1611f, false, vec2<i32>(-1i, -1i)), -59830i, 156f), false, Struct_1(vec2<f32>(-560f, -1027f), vec2<f32>(-703f, 150f), 803f, false, vec2<i32>(1i, 46488i)), -221f), Struct_3(vec2<bool>(false, true), Struct_2(0i, Struct_1(vec2<f32>(2262f, 573f), vec2<f32>(-268f, 2614f), 981f, false, vec2<i32>(34680i, 1928i)), i32(-2147483648), -1242f), false, Struct_1(vec2<f32>(576f, 557f), vec2<f32>(-324f, 943f), 580f, false, vec2<i32>(19552i, -20882i)), 828f), Struct_3(vec2<bool>(true, true), Struct_2(1i, Struct_1(vec2<f32>(-2006f, 1363f), vec2<f32>(1068f, 719f), -1592f, true, vec2<i32>(91100i, 0i)), 2147483647i, -1731f), false, Struct_1(vec2<f32>(-754f, -525f), vec2<f32>(1000f, 1481f), -100f, true, vec2<i32>(-49219i, 1i)), 125f), Struct_3(vec2<bool>(false, true), Struct_2(-1i, Struct_1(vec2<f32>(-199f, 1166f), vec2<f32>(-1532f, -1256f), -1000f, true, vec2<i32>(78524i, i32(-2147483648))), 1i, 1469f), true, Struct_1(vec2<f32>(586f, 1065f), vec2<f32>(-576f, 210f), -515f, true, vec2<i32>(-26134i, 84095i)), 1117f), Struct_3(vec2<bool>(false, false), Struct_2(27463i, Struct_1(vec2<f32>(-1327f, -1608f), vec2<f32>(-1241f, -302f), -322f, false, vec2<i32>(2768i, i32(-2147483648))), 25240i, 1298f), false, Struct_1(vec2<f32>(1321f, -373f), vec2<f32>(-970f, 560f), -253f, true, vec2<i32>(i32(-2147483648), i32(-2147483648))), -464f), Struct_3(vec2<bool>(true, false), Struct_2(0i, Struct_1(vec2<f32>(-517f, -953f), vec2<f32>(991f, 818f), 1091f, true, vec2<i32>(-31211i, 161i)), 0i, -510f), true, Struct_1(vec2<f32>(-261f, 588f), vec2<f32>(-1219f, 715f), 1851f, true, vec2<i32>(1i, i32(-2147483648))), 831f));

var<private> global2: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - 1530f));
    let var_1 = !select(3421u > ~(~u_input.a), false, false);
    var var_2 = 1179f;
    var var_3 = vec3<bool>(var_1, true, true);
    var_2 = _wgslsmith_f_op_f32(trunc(arg_2.b.a.x));
    return arg_0.b.x;
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-554f, 317f) - vec2<f32>(-1283f, -862f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1559f, 780f) * vec2<f32>(-609f, -1655f)))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(583f, 866f), vec2<f32>(-643f, -1000f), arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-143f, -675f))), arg_0))));
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(max(-334f, _wgslsmith_f_op_f32(floor(-734f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -2294f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -505f)))))));
    let var_3 = _wgslsmith_mult_vec2_u32(select(firstTrailingBit(abs(firstTrailingBit(vec2<u32>(u_input.a, 0u)))), _wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a, 93250u), vec2<u32>(0u, 2122u), vec2<bool>(false, arg_0)), vec2<u32>(u_input.a ^ 1u, var_1 << (var_1 % 32u))), all(select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), false), true))), countOneBits(vec2<u32>(u_input.a, u_input.a) | _wgslsmith_div_vec2_u32(~vec2<u32>(16301u, var_1), firstTrailingBit(vec2<u32>(14509u, 0u)))));
    var var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(6027i, -21464i, -22636i), vec3<i32>(-1i, 28089i, 59870i), false), vec3<i32>(0i, -2147483647i, 0i)), -_wgslsmith_div_i32(2147483647i, 5078i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-44525i, 23007i), vec2<i32>(31465i, -53786i)), -abs(56903i)), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i))) & 14505i;
    return -1i;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(arg_0.b.b, arg_0.b.b, arg_0.b, arg_0.a))), _wgslsmith_f_op_f32(-583f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1807f) * arg_1.a.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(arg_0.b.b, Struct_1(vec2<f32>(arg_0.b.b.b.x, -797f), arg_1.a, arg_0.e, arg_0.b.b.d, vec2<i32>(-47912i, arg_1.e.x)), Struct_2(-1i, arg_1, -38633i, arg_0.e), arg_0.a)), arg_0.e) + arg_1.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, arg_1.b.x)) * arg_1.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_0.d.b.x))))), _wgslsmith_div_f32(arg_0.b.b.c, _wgslsmith_f_op_f32(arg_1.a.x - arg_0.b.d)), arg_1.d, vec2<i32>(i32(-1i) * -_wgslsmith_dot_vec2_i32(arg_0.d.e, arg_1.e), -1i));
    global0 = array<Struct_3, 24>();
    global1 = array<Struct_3, 32>();
    var var_1 = false;
    var var_2 = _wgslsmith_sub_i32(-(func_3(any(arg_0.a)) | firstTrailingBit(_wgslsmith_mult_i32(var_0.e.x, 6817i))), var_0.e.x);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0.e.x ^ 2147483647i, countOneBits(1233i) >> ((u_input.a ^ 0u) % 32u), reverseBits(~1i)), select(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_0.e.x, arg_0.e.x, arg_0.e.x), abs(vec3<i32>(2147483647i, arg_0.e.x, arg_0.e.x))), firstLeadingBit(-vec3<i32>(2147483647i, arg_0.e.x, arg_0.e.x))), ~firstTrailingBit(max(vec3<i32>(arg_0.e.x, -22617i, -2147483647i), vec3<i32>(arg_0.e.x, 0i, 1i))), false));
    let var_1 = Struct_3(!vec2<bool>(arg_0.d, !(1000f != arg_2)), Struct_2(~var_0.x, func_2(Struct_3(select(vec2<bool>(false, arg_3), vec2<bool>(false, true), arg_0.d), Struct_2(arg_0.e.x, Struct_1(arg_0.a, arg_0.a, arg_2, true, vec2<i32>(-2147483647i, var_0.x)), 6372i, -1000f), false || arg_0.d, Struct_1(vec2<f32>(535f, arg_0.c), arg_0.b, arg_0.a.x, true, vec2<i32>(var_0.x, arg_0.e.x)), _wgslsmith_div_f32(588f, arg_0.c)), func_2(Struct_3(vec2<bool>(true, true), Struct_2(2147483647i, arg_0, 1i, arg_0.b.x), false, arg_0, 528f), arg_0)), func_2(Struct_3(vec2<bool>(arg_0.d, arg_3), Struct_2(arg_0.e.x, Struct_1(arg_0.b, vec2<f32>(2040f, -1214f), -781f, arg_0.d, var_0.yx), arg_0.e.x, 1000f), false, arg_0, arg_0.c), Struct_1(arg_0.b, vec2<f32>(arg_2, 1135f), 2144f, arg_3, var_0.xz)).e.x | arg_0.e.x, -323f), true, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(global1[_wgslsmith_index_u32(u_input.a, 32u)], arg_0).b) + vec2<f32>(_wgslsmith_f_op_f32(1511f - -1000f), _wgslsmith_f_op_f32(-arg_0.c))), arg_0.a, arg_2, true, max(min(func_2(global0[_wgslsmith_index_u32(u_input.a, 24u)], arg_0).e, vec2<i32>(37385i, 56437i)), _wgslsmith_sub_vec2_i32(~vec2<i32>(1i, 1i), countOneBits(vec2<i32>(var_0.x, arg_0.e.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), -1185f)));
    return -32718i ^ func_2(global1[_wgslsmith_index_u32(4294967295u, 32u)], Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(103f, -178f)), -708f), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(188f))), false, select(_wgslsmith_add_vec2_i32(arg_0.e, vec2<i32>(226i, var_1.b.a)), ~vec2<i32>(-5535i, var_1.b.c), any(vec3<bool>(arg_0.d, true, var_1.a.x))))).e.x;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_2.b;
    var var_1 = Struct_3(arg_2.a, arg_1, func_2(Struct_3(!arg_2.a, Struct_2(arg_1.a, Struct_1(vec2<f32>(arg_2.b.b.a.x, 434f), arg_1.b.b, arg_1.d, arg_2.d.d, vec2<i32>(14738i, arg_2.b.b.e.x)), 0i, arg_2.b.d), all(arg_2.a), Struct_1(arg_2.b.b.a, arg_1.b.b, -756f, true, vec2<i32>(var_0.b.e.x, var_0.c)), var_0.b.a.x), var_0.b).e.x != abs(arg_3.x), func_2(global1[_wgslsmith_index_u32(18174u, 32u)], Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(696f, 198f)) - arg_1.b.b), vec2<f32>(_wgslsmith_f_op_f32(ceil(641f)), arg_2.b.d), _wgslsmith_f_op_f32(func_1(Struct_1(arg_1.b.b, var_0.b.a, arg_1.d, true, var_0.b.e), Struct_1(arg_1.b.a, vec2<f32>(224f, 481f), -1549f, true, vec2<i32>(-38975i, -1i)), arg_1, !vec2<bool>(true, arg_2.a.x))), !select(false, arg_2.c, var_0.b.d), ~var_0.b.e)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_2.e, arg_1.d)))))));
    var var_2 = func_2(Struct_3(vec2<bool>(var_1.c, var_1.b.b.d), var_1.b, var_0.b.d, func_2(arg_2, Struct_1(arg_2.b.b.a, arg_1.b.b, -2627f, all(vec3<bool>(true, arg_2.b.b.d, true)), func_2(Struct_3(var_1.a, arg_1, true, arg_2.d, arg_1.b.a.x), arg_2.d).e)), -1207f), func_2(Struct_3(var_1.a, Struct_2(~(-8930i), func_2(global0[_wgslsmith_index_u32(u_input.a, 24u)], Struct_1(vec2<f32>(2165f, arg_2.e), vec2<f32>(-764f, arg_2.e), var_1.d.b.x, var_1.d.d, var_1.d.e)), arg_0, arg_2.d.c), ~4294967295u <= _wgslsmith_sub_u32(4294967295u, u_input.a), arg_1.b, arg_1.b.a.x), func_2(Struct_3(arg_2.a, arg_1, any(vec3<bool>(arg_1.b.d, var_1.b.b.d, false)), func_2(arg_2, Struct_1(var_0.b.b, arg_2.b.b.b, var_1.e, false, var_0.b.e)), -118f), func_2(Struct_3(vec2<bool>(arg_1.b.d, var_1.b.b.d), var_1.b, true, arg_1.b, -324f), arg_1.b)))).a.x;
    var_1 = global1[_wgslsmith_index_u32(~(~0u), 32u)];
    var var_3 = Struct_1(vec2<f32>(1257f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_1.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e)), all(vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.a - var_0.b.b)), -468f, !(!all(vec4<bool>(true, false, arg_2.c, var_0.b.d))) | (!arg_1.b.d | true), var_0.b.e);
    return Struct_1(var_3.b, func_2(arg_2, func_2(Struct_3(vec2<bool>(arg_1.b.d, true), var_1.b, true, func_2(global1[_wgslsmith_index_u32(u_input.a, 32u)], var_0.b), _wgslsmith_f_op_f32(min(var_3.a.x, 391f))), arg_1.b)).a, -3163f, var_1.a.x, var_0.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1116f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(-695f, 542f), vec2<f32>(-1203f, -1442f), 561f, true, vec2<i32>(90554i, -1i)), Struct_1(vec2<f32>(134f, -1006f), vec2<f32>(-642f, 1381f), 758f, false, vec2<i32>(0i, 51208i)), Struct_2(1i, Struct_1(vec2<f32>(961f, 216f), vec2<f32>(698f, -252f), 313f, true, vec2<i32>(-2147483647i, 0i)), -2147483647i, -736f), vec2<bool>(false, true))) + _wgslsmith_f_op_f32(-843f * 1138f)))) + -413f);
    global1 = array<Struct_3, 32>();
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 24u)];
    let var_1 = Struct_2(_wgslsmith_mult_i32(abs(var_0.d.e.x) | (i32(-1i) * -12974i), ~64448i), func_5(-func_4(func_2(global1[_wgslsmith_index_u32(u_input.a, 32u)], var_0.d), 4294967295u, _wgslsmith_f_op_f32(abs(var_0.e)), false), Struct_2(var_0.d.e.x, func_2(global0[_wgslsmith_index_u32(firstLeadingBit(0u), 24u)], Struct_1(vec2<f32>(var_0.b.d, var_0.b.b.c), vec2<f32>(-780f, -1563f), var_0.d.a.x, true, vec2<i32>(-2147483647i, 2147483647i))), max(-var_0.b.b.e.x, abs(29208i)), 557f), Struct_3(vec2<bool>(false, all(vec3<bool>(var_0.b.b.d, var_0.c, var_0.a.x))), var_0.b, ~var_0.d.e.x >= var_0.b.b.e.x, Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.d.a, var_0.b.b.b, vec2<bool>(var_0.b.b.d, false))), _wgslsmith_f_op_vec2_f32(-var_0.b.b.a), _wgslsmith_f_op_f32(select(var_0.e, -1512f, true)), all(vec3<bool>(false, var_0.d.d, var_0.b.b.d)), countOneBits(var_0.d.e)), var_0.d.b.x), vec4<i32>(_wgslsmith_mod_i32(-39355i, min(var_0.d.e.x, -12642i)), ~func_3(false), _wgslsmith_mod_i32(~var_0.d.e.x, _wgslsmith_div_i32(1i, -53779i)), func_2(global1[_wgslsmith_index_u32(u_input.a, 32u)], Struct_1(var_0.d.a, var_0.b.b.a, var_0.b.d, true, var_0.b.b.e)).e.x)), var_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e), 305f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e * var_0.d.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -576f), 1244f))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.e), -563f);
    let var_3 = var_0.d;
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.d)) * 241f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -var_3.e.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, 1382f, _wgslsmith_f_op_f32(max(var_0.d.b.x, var_2.x)), 952f) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.d), var_0.e, var_2.x, var_1.d))), _wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(~var_1.a, 1i), ~var_3.e.x), ~max(min(1278i, 2147483647i), -var_3.e.x)), _wgslsmith_f_op_vec2_f32(var_0.b.b.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-975f, var_0.b.d)))))), abs(-vec3<i32>(var_3.e.x, abs(var_1.a), var_0.b.b.e.x)));
}

