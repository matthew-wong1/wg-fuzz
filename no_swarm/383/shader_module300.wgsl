struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(Struct_3(Struct_2(vec4<f32>(182f, 454f, 1754f, -2234f), Struct_1(629f, true, vec4<i32>(-35424i, 2147483647i, 43520i, 2147483647i), vec2<f32>(-547f, 1268f)), Struct_1(901f, false, vec4<i32>(-26360i, -14513i, -6397i, -7852i), vec2<f32>(292f, 477f)), -2276i, 2147483647i), 0u, true, Struct_2(vec4<f32>(-374f, -379f, -982f, -1576f), Struct_1(-625f, false, vec4<i32>(-61598i, -1i, -11012i, i32(-2147483648)), vec2<f32>(594f, -1492f)), Struct_1(-862f, true, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, i32(-2147483648)), vec2<f32>(-779f, -858f)), 0i, 1i), vec4<u32>(4294967295u, 6266u, 1u, 1u)), Struct_4(Struct_3(Struct_2(vec4<f32>(-227f, -1742f, 274f, -606f), Struct_1(925f, false, vec4<i32>(2147483647i, 6609i, 698i, -9094i), vec2<f32>(-524f, 749f)), Struct_1(220f, false, vec4<i32>(61531i, -46150i, 0i, -1i), vec2<f32>(881f, 1029f)), i32(-2147483648), 40315i), 0u, true, Struct_2(vec4<f32>(142f, 1059f, -1793f, -561f), Struct_1(-756f, true, vec4<i32>(2147483647i, -32561i, -21415i, -1i), vec2<f32>(1000f, 2691f)), Struct_1(1140f, true, vec4<i32>(i32(-2147483648), -26134i, 0i, 1i), vec2<f32>(1553f, -810f)), 2147483647i, -1i), vec4<u32>(1u, 35698u, 1u, 30671u)), 1u), Struct_3(Struct_2(vec4<f32>(-856f, -203f, 950f, 1000f), Struct_1(-608f, true, vec4<i32>(i32(-2147483648), -21017i, -7456i, -26665i), vec2<f32>(1108f, -948f)), Struct_1(-1107f, false, vec4<i32>(-1i, 38876i, 27038i, 1i), vec2<f32>(971f, 385f)), -1i, 1i), 4294967295u, false, Struct_2(vec4<f32>(-1641f, 770f, 1000f, 539f), Struct_1(810f, true, vec4<i32>(0i, -22582i, -35439i, -8406i), vec2<f32>(-672f, 519f)), Struct_1(-282f, false, vec4<i32>(1i, -11552i, -1i, -1i), vec2<f32>(1306f, -251f)), 0i, -1i), vec4<u32>(25198u, 0u, 0u, 1u))), Struct_5(Struct_3(Struct_2(vec4<f32>(689f, 586f, 119f, -770f), Struct_1(593f, true, vec4<i32>(-67635i, 2147483647i, -31306i, -69069i), vec2<f32>(-130f, 859f)), Struct_1(-1103f, false, vec4<i32>(-12381i, 13956i, 2147483647i, -51033i), vec2<f32>(928f, -875f)), 1490i, 26369i), 4294967295u, true, Struct_2(vec4<f32>(-384f, 905f, -520f, -122f), Struct_1(-1083f, false, vec4<i32>(i32(-2147483648), -12739i, 83729i, 0i), vec2<f32>(1554f, -1923f)), Struct_1(996f, false, vec4<i32>(11379i, -39246i, -22966i, 2147483647i), vec2<f32>(-367f, -971f)), 2147483647i, 2147483647i), vec4<u32>(23605u, 48421u, 0u, 4294967295u)), Struct_4(Struct_3(Struct_2(vec4<f32>(-1000f, -1471f, 607f, 1000f), Struct_1(-543f, true, vec4<i32>(1i, -35116i, 2147483647i, 21277i), vec2<f32>(-1000f, -1030f)), Struct_1(-1884f, false, vec4<i32>(24382i, -8068i, -4175i, -4961i), vec2<f32>(-599f, 1400f)), 49801i, 5688i), 0u, false, Struct_2(vec4<f32>(-2111f, -1000f, 643f, 457f), Struct_1(-126f, true, vec4<i32>(27336i, i32(-2147483648), 19647i, -7832i), vec2<f32>(1113f, 539f)), Struct_1(-1000f, false, vec4<i32>(-1i, -31749i, 32491i, 2147483647i), vec2<f32>(-712f, -2078f)), -86611i, 0i), vec4<u32>(31611u, 1u, 2473u, 8258u)), 1461u), Struct_3(Struct_2(vec4<f32>(-311f, -1000f, 575f, -691f), Struct_1(-895f, false, vec4<i32>(1i, 2147483647i, 2147483647i, -86510i), vec2<f32>(490f, -1000f)), Struct_1(735f, true, vec4<i32>(2147483647i, 2147483647i, -27838i, -36121i), vec2<f32>(-926f, -489f)), -51561i, 1i), 66165u, false, Struct_2(vec4<f32>(1069f, -912f, 195f, 843f), Struct_1(703f, true, vec4<i32>(28170i, 3720i, 25641i, 1i), vec2<f32>(-108f, 163f)), Struct_1(-401f, false, vec4<i32>(1i, -1i, -1i, -1i), vec2<f32>(-1137f, 956f)), 9389i, i32(-2147483648)), vec4<u32>(78206u, 0u, 1u, 0u))), Struct_5(Struct_3(Struct_2(vec4<f32>(-832f, 847f, -898f, 856f), Struct_1(-1750f, true, vec4<i32>(i32(-2147483648), 0i, 9487i, 2147483647i), vec2<f32>(368f, -2895f)), Struct_1(-173f, false, vec4<i32>(-10594i, 2147483647i, 1i, i32(-2147483648)), vec2<f32>(-1000f, -870f)), -18529i, -8265i), 28178u, true, Struct_2(vec4<f32>(1055f, 115f, -911f, 2425f), Struct_1(-432f, true, vec4<i32>(2617i, 11295i, 1i, 28128i), vec2<f32>(296f, -1784f)), Struct_1(345f, false, vec4<i32>(6861i, 2147483647i, -13640i, -6274i), vec2<f32>(1322f, 746f)), i32(-2147483648), 0i), vec4<u32>(93068u, 1u, 12599u, 101394u)), Struct_4(Struct_3(Struct_2(vec4<f32>(-1441f, 339f, 962f, 1639f), Struct_1(-888f, true, vec4<i32>(63547i, 61142i, 1i, 45873i), vec2<f32>(-837f, -618f)), Struct_1(1368f, true, vec4<i32>(-7836i, i32(-2147483648), 22511i, -73633i), vec2<f32>(1173f, 314f)), 0i, i32(-2147483648)), 1u, false, Struct_2(vec4<f32>(-724f, -1270f, -257f, -914f), Struct_1(-979f, true, vec4<i32>(-17393i, -17501i, -1i, 13970i), vec2<f32>(843f, -1203f)), Struct_1(-752f, false, vec4<i32>(-23317i, -70488i, -1i, 2147483647i), vec2<f32>(280f, 1779f)), -1i, 39475i), vec4<u32>(4294967295u, 1u, 0u, 0u)), 1u), Struct_3(Struct_2(vec4<f32>(970f, 1240f, 1974f, 1056f), Struct_1(-1108f, true, vec4<i32>(-15408i, i32(-2147483648), 1i, 33334i), vec2<f32>(-1044f, 555f)), Struct_1(795f, true, vec4<i32>(-2429i, i32(-2147483648), 47224i, 20935i), vec2<f32>(2765f, 1358f)), -1811i, -28293i), 12306u, true, Struct_2(vec4<f32>(-1308f, -982f, 230f, 589f), Struct_1(384f, true, vec4<i32>(-35712i, -8375i, -37522i, 0i), vec2<f32>(650f, -548f)), Struct_1(1302f, true, vec4<i32>(-28370i, 56828i, 1i, 2147483647i), vec2<f32>(154f, -1171f)), -10852i, 13237i), vec4<u32>(37331u, 71169u, 4294967295u, 1u))), Struct_5(Struct_3(Struct_2(vec4<f32>(-230f, -1164f, 2545f, -1020f), Struct_1(1000f, true, vec4<i32>(-85i, 2147483647i, -1i, 1i), vec2<f32>(392f, -109f)), Struct_1(1874f, false, vec4<i32>(-65443i, 1159i, -26391i, 1i), vec2<f32>(762f, -811f)), -1i, 2147483647i), 97487u, false, Struct_2(vec4<f32>(-270f, 1000f, -917f, 816f), Struct_1(2034f, true, vec4<i32>(-1i, i32(-2147483648), 67337i, 0i), vec2<f32>(-2923f, -1165f)), Struct_1(1000f, true, vec4<i32>(-14187i, -1i, -6719i, i32(-2147483648)), vec2<f32>(617f, -300f)), 2147483647i, -51549i), vec4<u32>(0u, 36435u, 1u, 4294967295u)), Struct_4(Struct_3(Struct_2(vec4<f32>(287f, -2653f, -1000f, 1136f), Struct_1(478f, true, vec4<i32>(-43059i, -1i, 1i, 9778i), vec2<f32>(-569f, 1971f)), Struct_1(-738f, false, vec4<i32>(-5499i, -1i, -1i, 26359i), vec2<f32>(647f, -472f)), 1i, -41323i), 55038u, false, Struct_2(vec4<f32>(-659f, 1607f, 444f, -420f), Struct_1(395f, false, vec4<i32>(-11601i, 2147483647i, -47177i, 2147483647i), vec2<f32>(-1000f, 240f)), Struct_1(632f, false, vec4<i32>(2147483647i, 2147483647i, 2499i, 0i), vec2<f32>(680f, -1000f)), -1i, -13625i), vec4<u32>(37132u, 0u, 0u, 1u)), 18714u), Struct_3(Struct_2(vec4<f32>(-171f, -169f, 1083f, -428f), Struct_1(1432f, true, vec4<i32>(2147483647i, 21803i, -62783i, 6849i), vec2<f32>(-1000f, -938f)), Struct_1(175f, true, vec4<i32>(-1i, 27789i, -35036i, 28i), vec2<f32>(1000f, 533f)), -4291i, 36658i), 1u, true, Struct_2(vec4<f32>(-1749f, -1461f, -367f, -460f), Struct_1(-231f, false, vec4<i32>(-4791i, 1i, 2147483647i, 43576i), vec2<f32>(-1119f, -883f)), Struct_1(-1906f, false, vec4<i32>(33261i, 0i, -9057i, 51255i), vec2<f32>(-467f, 773f)), i32(-2147483648), -57896i), vec4<u32>(20840u, 2420u, 35046u, 4294967295u))), Struct_5(Struct_3(Struct_2(vec4<f32>(1000f, 566f, -1000f, -201f), Struct_1(1000f, true, vec4<i32>(1i, 0i, -1i, -30114i), vec2<f32>(577f, 1133f)), Struct_1(1325f, true, vec4<i32>(-1i, 2147483647i, -22436i, -1i), vec2<f32>(181f, 1000f)), 0i, 0i), 54414u, false, Struct_2(vec4<f32>(478f, 577f, 1426f, -1000f), Struct_1(222f, true, vec4<i32>(1i, 11861i, 15537i, 14259i), vec2<f32>(-502f, 795f)), Struct_1(1699f, false, vec4<i32>(-8816i, -31359i, 0i, -10656i), vec2<f32>(982f, -906f)), -1i, 0i), vec4<u32>(0u, 4294967295u, 4294967295u, 0u)), Struct_4(Struct_3(Struct_2(vec4<f32>(1212f, -1240f, -384f, 339f), Struct_1(-1530f, true, vec4<i32>(i32(-2147483648), 0i, 2147483647i, 0i), vec2<f32>(1047f, -1000f)), Struct_1(-1942f, false, vec4<i32>(16826i, i32(-2147483648), 24400i, 2147483647i), vec2<f32>(-1275f, -836f)), 2147483647i, 3256i), 1738u, true, Struct_2(vec4<f32>(-528f, 1074f, 1000f, -195f), Struct_1(-764f, false, vec4<i32>(6140i, 57199i, -1i, -1i), vec2<f32>(-1000f, -947f)), Struct_1(-1369f, true, vec4<i32>(1i, -32304i, -19429i, i32(-2147483648)), vec2<f32>(1000f, 1000f)), -64154i, 1i), vec4<u32>(1u, 0u, 43680u, 91103u)), 22950u), Struct_3(Struct_2(vec4<f32>(-121f, 744f, 1757f, -2049f), Struct_1(300f, false, vec4<i32>(-42118i, 2147483647i, 0i, 0i), vec2<f32>(-128f, -353f)), Struct_1(385f, false, vec4<i32>(2407i, -1i, -23777i, -1i), vec2<f32>(106f, -952f)), 23325i, 1i), 0u, false, Struct_2(vec4<f32>(-1000f, -566f, 291f, -3075f), Struct_1(600f, true, vec4<i32>(-1i, -1i, 2147483647i, 1i), vec2<f32>(-1300f, 1405f)), Struct_1(-319f, false, vec4<i32>(93242i, -1i, -10695i, 7329i), vec2<f32>(370f, -173f)), 77324i, 5880i), vec4<u32>(4294967295u, 19935u, 12445u, 1u))), Struct_5(Struct_3(Struct_2(vec4<f32>(992f, -594f, 2638f, -562f), Struct_1(-558f, false, vec4<i32>(26826i, -1i, 1i, -51067i), vec2<f32>(802f, 890f)), Struct_1(-1969f, true, vec4<i32>(-6530i, i32(-2147483648), 11790i, 24632i), vec2<f32>(1432f, -138f)), 2147483647i, i32(-2147483648)), 35895u, true, Struct_2(vec4<f32>(209f, 983f, -1018f, -919f), Struct_1(-1110f, false, vec4<i32>(-32020i, 2147483647i, 0i, 2147483647i), vec2<f32>(945f, -970f)), Struct_1(1000f, false, vec4<i32>(-4732i, -19159i, 1i, 1i), vec2<f32>(1465f, 621f)), 42128i, -25329i), vec4<u32>(18032u, 1u, 41857u, 26941u)), Struct_4(Struct_3(Struct_2(vec4<f32>(2378f, -652f, 1089f, -979f), Struct_1(1016f, true, vec4<i32>(0i, -29415i, 80664i, -1i), vec2<f32>(453f, 2287f)), Struct_1(1131f, true, vec4<i32>(2147483647i, -1i, i32(-2147483648), -1i), vec2<f32>(1411f, 2074f)), 57093i, 0i), 12180u, false, Struct_2(vec4<f32>(-1169f, -1591f, 645f, -1131f), Struct_1(619f, true, vec4<i32>(-1i, 31587i, -43404i, 2147483647i), vec2<f32>(-1205f, 329f)), Struct_1(998f, true, vec4<i32>(-1i, 65931i, 23576i, 18838i), vec2<f32>(504f, 1622f)), 1i, 1i), vec4<u32>(1u, 4294967295u, 17106u, 11079u)), 65498u), Struct_3(Struct_2(vec4<f32>(316f, -1437f, 728f, 301f), Struct_1(141f, false, vec4<i32>(1i, -31239i, 2147483647i, 0i), vec2<f32>(807f, -290f)), Struct_1(1262f, false, vec4<i32>(2160i, -42299i, 0i, i32(-2147483648)), vec2<f32>(798f, 1152f)), 1i, i32(-2147483648)), 1u, true, Struct_2(vec4<f32>(-1000f, -246f, -1733f, 1053f), Struct_1(-519f, true, vec4<i32>(-20315i, -10092i, -1i, -1i), vec2<f32>(-956f, 319f)), Struct_1(-969f, false, vec4<i32>(0i, 0i, 0i, 1i), vec2<f32>(-323f, 1345f)), 5896i, -7859i), vec4<u32>(21511u, 2019u, 32904u, 111235u))), Struct_5(Struct_3(Struct_2(vec4<f32>(626f, 1000f, -1000f, 672f), Struct_1(-2141f, true, vec4<i32>(13223i, 0i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-1000f, -1130f)), Struct_1(862f, false, vec4<i32>(0i, 0i, -1i, -62901i), vec2<f32>(-307f, -795f)), 10624i, -1i), 5930u, false, Struct_2(vec4<f32>(866f, 367f, 391f, 1069f), Struct_1(267f, true, vec4<i32>(-60657i, 0i, 0i, 2147483647i), vec2<f32>(334f, 2667f)), Struct_1(-128f, false, vec4<i32>(6613i, 0i, 8713i, 0i), vec2<f32>(1169f, -1418f)), -1i, i32(-2147483648)), vec4<u32>(0u, 19501u, 0u, 34854u)), Struct_4(Struct_3(Struct_2(vec4<f32>(722f, -912f, -1063f, 311f), Struct_1(504f, true, vec4<i32>(-1i, 2147483647i, 2147483647i, 1i), vec2<f32>(699f, -1000f)), Struct_1(-1183f, false, vec4<i32>(0i, -18654i, 0i, -1i), vec2<f32>(-2094f, 484f)), 20592i, i32(-2147483648)), 25402u, false, Struct_2(vec4<f32>(-420f, -1000f, -1269f, 782f), Struct_1(-158f, false, vec4<i32>(-11341i, 2147483647i, -1i, 0i), vec2<f32>(723f, -453f)), Struct_1(575f, true, vec4<i32>(-44390i, 18602i, 1i, 61592i), vec2<f32>(1030f, -484f)), 1i, -29530i), vec4<u32>(1u, 15441u, 53242u, 86873u)), 7553u), Struct_3(Struct_2(vec4<f32>(-1000f, 991f, 985f, -1535f), Struct_1(-734f, true, vec4<i32>(0i, -12740i, i32(-2147483648), -1i), vec2<f32>(206f, 785f)), Struct_1(1579f, false, vec4<i32>(2147483647i, -5326i, -78612i, -1i), vec2<f32>(311f, -211f)), i32(-2147483648), 57370i), 1u, true, Struct_2(vec4<f32>(369f, 1103f, -1886f, 1533f), Struct_1(684f, true, vec4<i32>(48105i, 2147483647i, 2147483647i, 1i), vec2<f32>(-1000f, -1081f)), Struct_1(1000f, false, vec4<i32>(-1i, 1i, 1i, 13173i), vec2<f32>(440f, -2809f)), 2147483647i, 0i), vec4<u32>(0u, 1u, 20687u, 28542u))), Struct_5(Struct_3(Struct_2(vec4<f32>(-800f, 278f, -381f, 1043f), Struct_1(413f, true, vec4<i32>(1i, 1i, 1i, 24413i), vec2<f32>(-1096f, 1823f)), Struct_1(757f, true, vec4<i32>(i32(-2147483648), 19406i, -17792i, i32(-2147483648)), vec2<f32>(-600f, 555f)), i32(-2147483648), -5378i), 1u, true, Struct_2(vec4<f32>(-159f, 227f, -2156f, 1161f), Struct_1(-173f, false, vec4<i32>(i32(-2147483648), i32(-2147483648), 78416i, 1i), vec2<f32>(564f, 411f)), Struct_1(1298f, true, vec4<i32>(-1i, 0i, 44826i, -2077i), vec2<f32>(-668f, 1461f)), 0i, i32(-2147483648)), vec4<u32>(29602u, 4294967295u, 23905u, 12548u)), Struct_4(Struct_3(Struct_2(vec4<f32>(-341f, 343f, 166f, -144f), Struct_1(1000f, true, vec4<i32>(i32(-2147483648), 0i, 2147483647i, 22284i), vec2<f32>(406f, -521f)), Struct_1(1966f, true, vec4<i32>(1i, 28078i, 0i, 37193i), vec2<f32>(605f, -281f)), 1i, 2147483647i), 0u, false, Struct_2(vec4<f32>(-1351f, -213f, 1479f, 880f), Struct_1(341f, false, vec4<i32>(3184i, -47754i, 1i, 2147483647i), vec2<f32>(374f, -1000f)), Struct_1(616f, true, vec4<i32>(2147483647i, -9656i, -28343i, -1i), vec2<f32>(1895f, -849f)), 1i, -14851i), vec4<u32>(62724u, 37622u, 1u, 4717u)), 36719u), Struct_3(Struct_2(vec4<f32>(-451f, -120f, 201f, -3108f), Struct_1(129f, true, vec4<i32>(-34714i, 2147483647i, 37704i, 0i), vec2<f32>(-496f, -214f)), Struct_1(-1969f, true, vec4<i32>(-82068i, i32(-2147483648), 1i, 2147483647i), vec2<f32>(-1000f, -667f)), 1644i, i32(-2147483648)), 29545u, false, Struct_2(vec4<f32>(-709f, 125f, 432f, 2043f), Struct_1(954f, false, vec4<i32>(i32(-2147483648), -38562i, 0i, -63680i), vec2<f32>(1510f, -1072f)), Struct_1(729f, false, vec4<i32>(10560i, i32(-2147483648), 6102i, 57317i), vec2<f32>(-278f, -1206f)), -18998i, 3585i), vec4<u32>(0u, 51365u, 75004u, 32566u))), Struct_5(Struct_3(Struct_2(vec4<f32>(1916f, 435f, 171f, -315f), Struct_1(671f, false, vec4<i32>(38064i, -3048i, 32635i, 29513i), vec2<f32>(567f, 603f)), Struct_1(-167f, false, vec4<i32>(25290i, -18488i, 1i, 1i), vec2<f32>(-505f, -1287f)), 32681i, -27203i), 4294967295u, false, Struct_2(vec4<f32>(1277f, 579f, -198f, -931f), Struct_1(-1072f, false, vec4<i32>(2147483647i, -1i, -1i, 2147483647i), vec2<f32>(-436f, -1434f)), Struct_1(-1000f, false, vec4<i32>(-4108i, -42281i, -21520i, -1i), vec2<f32>(-753f, -520f)), -51625i, 0i), vec4<u32>(23497u, 23988u, 49089u, 34167u)), Struct_4(Struct_3(Struct_2(vec4<f32>(1223f, 233f, 351f, 2283f), Struct_1(-660f, true, vec4<i32>(i32(-2147483648), 1i, 25521i, -3599i), vec2<f32>(-885f, -1789f)), Struct_1(-748f, false, vec4<i32>(i32(-2147483648), 4825i, -238i, 89063i), vec2<f32>(1000f, 803f)), 1i, 8890i), 32763u, true, Struct_2(vec4<f32>(2290f, 305f, 998f, 961f), Struct_1(563f, true, vec4<i32>(-11570i, 1i, 0i, -18493i), vec2<f32>(865f, 780f)), Struct_1(-2207f, false, vec4<i32>(1i, 2147483647i, i32(-2147483648), -13746i), vec2<f32>(1364f, -478f)), i32(-2147483648), -32353i), vec4<u32>(4580u, 1u, 32284u, 4294967295u)), 4294967295u), Struct_3(Struct_2(vec4<f32>(377f, 1000f, 986f, 1240f), Struct_1(-849f, true, vec4<i32>(0i, 2147483647i, 19915i, 2147483647i), vec2<f32>(518f, -183f)), Struct_1(-606f, false, vec4<i32>(2147483647i, 58025i, 43770i, -16668i), vec2<f32>(1000f, 823f)), -22068i, 25428i), 60674u, false, Struct_2(vec4<f32>(710f, -1569f, 1795f, -305f), Struct_1(165f, false, vec4<i32>(1i, 48532i, -1i, 2147483647i), vec2<f32>(381f, 1000f)), Struct_1(-1275f, false, vec4<i32>(0i, 29839i, 0i, 33356i), vec2<f32>(2077f, 673f)), -1i, 2147483647i), vec4<u32>(43308u, 44731u, 14356u, 9745u))), Struct_5(Struct_3(Struct_2(vec4<f32>(-422f, -880f, 1000f, -919f), Struct_1(2234f, false, vec4<i32>(35760i, -29558i, i32(-2147483648), -23937i), vec2<f32>(-1078f, -182f)), Struct_1(787f, false, vec4<i32>(0i, -50519i, -58991i, 16814i), vec2<f32>(465f, -1316f)), i32(-2147483648), -57603i), 59255u, false, Struct_2(vec4<f32>(-2525f, -974f, -1200f, 1078f), Struct_1(1000f, true, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 1i), vec2<f32>(-1326f, 1754f)), Struct_1(1160f, false, vec4<i32>(62554i, -1i, 0i, -1i), vec2<f32>(-303f, -629f)), 1i, 55790i), vec4<u32>(4294967295u, 0u, 75436u, 77392u)), Struct_4(Struct_3(Struct_2(vec4<f32>(670f, 477f, -980f, 1454f), Struct_1(-1000f, true, vec4<i32>(-67958i, 0i, 4591i, -29167i), vec2<f32>(1549f, 1568f)), Struct_1(2097f, false, vec4<i32>(0i, -1i, 42769i, 0i), vec2<f32>(-1475f, 869f)), -35115i, 0i), 1u, true, Struct_2(vec4<f32>(-223f, 446f, -358f, 1135f), Struct_1(1908f, false, vec4<i32>(0i, -11925i, 19533i, -69823i), vec2<f32>(-194f, 1309f)), Struct_1(900f, false, vec4<i32>(1i, -1i, 1i, -2145i), vec2<f32>(-499f, 727f)), 4803i, 0i), vec4<u32>(4142u, 29607u, 18440u, 0u)), 26350u), Struct_3(Struct_2(vec4<f32>(-707f, -1016f, 307f, 793f), Struct_1(-1016f, false, vec4<i32>(-11977i, 1i, -37296i, i32(-2147483648)), vec2<f32>(-839f, 535f)), Struct_1(890f, true, vec4<i32>(33371i, -1i, -10180i, -1i), vec2<f32>(-339f, 3018f)), -18369i, i32(-2147483648)), 0u, false, Struct_2(vec4<f32>(1777f, -1000f, 1000f, -582f), Struct_1(789f, false, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -24068i), vec2<f32>(594f, -109f)), Struct_1(370f, false, vec4<i32>(i32(-2147483648), -1i, 1i, 1i), vec2<f32>(370f, -1023f)), -56911i, 2147483647i), vec4<u32>(1u, 65856u, 1u, 0u))), Struct_5(Struct_3(Struct_2(vec4<f32>(197f, 219f, 1670f, 134f), Struct_1(-1225f, true, vec4<i32>(74785i, -48034i, -24371i, 5875i), vec2<f32>(1095f, 927f)), Struct_1(-860f, true, vec4<i32>(1i, i32(-2147483648), 1i, 2147483647i), vec2<f32>(-632f, 1028f)), 39209i, 6920i), 4294967295u, true, Struct_2(vec4<f32>(-1245f, -723f, -511f, 1980f), Struct_1(536f, true, vec4<i32>(-52713i, -51014i, 2147483647i, 2147483647i), vec2<f32>(-882f, 288f)), Struct_1(-1342f, true, vec4<i32>(2147483647i, -1i, 0i, -1i), vec2<f32>(738f, 142f)), -14083i, 7769i), vec4<u32>(0u, 12080u, 1u, 47696u)), Struct_4(Struct_3(Struct_2(vec4<f32>(863f, -1020f, 294f, 1000f), Struct_1(1680f, true, vec4<i32>(41475i, 38426i, 2147483647i, 1i), vec2<f32>(2001f, 309f)), Struct_1(-1089f, false, vec4<i32>(48786i, 21744i, -3740i, -4064i), vec2<f32>(-535f, 1000f)), 16372i, -22437i), 48041u, true, Struct_2(vec4<f32>(-1452f, 401f, 1584f, 1503f), Struct_1(-1409f, true, vec4<i32>(-1i, i32(-2147483648), -1i, 0i), vec2<f32>(-1000f, 1452f)), Struct_1(-626f, false, vec4<i32>(-15672i, i32(-2147483648), i32(-2147483648), 14513i), vec2<f32>(100f, 793f)), -47551i, 35500i), vec4<u32>(92252u, 80013u, 38782u, 4294967295u)), 15636u), Struct_3(Struct_2(vec4<f32>(310f, -869f, 307f, 1134f), Struct_1(428f, true, vec4<i32>(-29155i, 2147483647i, 2147483647i, 1i), vec2<f32>(418f, 932f)), Struct_1(-744f, false, vec4<i32>(-1i, -3912i, -1i, 11874i), vec2<f32>(-1134f, 1251f)), 2147483647i, 1i), 4294967295u, true, Struct_2(vec4<f32>(-300f, 918f, 446f, -1130f), Struct_1(538f, false, vec4<i32>(-357i, 5993i, 1i, -1i), vec2<f32>(-1396f, -857f)), Struct_1(326f, true, vec4<i32>(-35125i, -7971i, -1i, -26492i), vec2<f32>(474f, -1662f)), -10092i, -1i), vec4<u32>(43995u, 46049u, 4294967295u, 0u))));

var<private> global2: Struct_3 = Struct_3(Struct_2(vec4<f32>(1157f, -1144f, -210f, 155f), Struct_1(732f, true, vec4<i32>(-1361i, 0i, 74901i, 0i), vec2<f32>(-606f, -527f)), Struct_1(1270f, true, vec4<i32>(11057i, 24949i, -34210i, 420i), vec2<f32>(1850f, 1333f)), 2147483647i, 38714i), 44412u, false, Struct_2(vec4<f32>(-1298f, -2048f, 523f, -802f), Struct_1(168f, false, vec4<i32>(0i, -28784i, 0i, -12989i), vec2<f32>(-1404f, -1020f)), Struct_1(-1270f, false, vec4<i32>(-3685i, i32(-2147483648), 8841i, 33490i), vec2<f32>(1382f, 159f)), -1i, 15120i), vec4<u32>(1285u, 4294967295u, 75071u, 11942u));

var<private> global3: vec3<u32>;

var<private> global4: vec4<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_5(Struct_3(global2.d, _wgslsmith_mult_u32(1u, u_input.b), arg_0.a.d.c.b | any(vec4<bool>(arg_0.a.d.b.b, arg_0.c.d.c.b, arg_0.b.a.a.b.b, true)), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0.b.a.d.a * vec4<f32>(1132f, arg_1.x, global4.x, -169f)), _wgslsmith_f_op_vec4_f32(-arg_1), true)), arg_0.c.d.b, Struct_1(-1754f, global2.d.c.b & global2.d.c.b, global2.d.c.c, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, global2.a.b.d.x), arg_0.a.a.b.d)), -(i32(-1i) * -2147483647i), 0i), firstLeadingBit(min(~vec4<u32>(global2.b, global3.x, global2.b, global3.x), global2.e))), arg_0.b, arg_0.b.a);
    let var_1 = !var_0.b.a.c | false;
    var var_2 = -834f;
    let var_3 = arg_0.a;
    let var_4 = ~max(-2147483647i, -1i);
    return !vec3<bool>(select(true, all(select(vec3<bool>(false, global2.c, false), vec3<bool>(arg_0.a.d.c.b, var_3.a.c.b, var_0.b.a.c), false)), var_3.c), any(!(!vec4<bool>(arg_0.a.c, true, arg_0.c.a.c.b, global2.c))), var_0.c.a.c.b);
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> Struct_3 {
    global1 = array<Struct_5, 11>();
    global0 = !all(select(!vec4<bool>(arg_1.a.a.b.b, arg_1.a.d.c.b, true, arg_1.c.c), vec4<bool>(61812u > u_input.b, global2.a.b.b | false, select(true, false, false), true), _wgslsmith_mult_i32(global2.d.e, -2147483647i) == ~arg_1.a.a.e));
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !any(func_3(Struct_5(arg_1.b.a, Struct_4(arg_1.c, 24793u), Struct_3(Struct_2(arg_1.a.d.a, Struct_1(-1201f, true, global2.a.c.c, global4.zx), Struct_1(-494f, true, u_input.a, global2.d.a.wy), u_input.c.x, arg_0), global2.e.x, global2.a.c.b, Struct_2(arg_1.b.a.d.a, Struct_1(arg_1.b.a.a.a.x, arg_1.c.c, global2.a.c.c, global2.d.a.yy), global2.d.c, global2.a.d, -2147483647i), global2.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(218f, -694f, 268f, 958f) - vec4<f32>(1378f, 1560f, 288f, -1080f)))), max(~arg_1.b.a.a.b.c, vec4<i32>(~0i, ~global2.d.d, _wgslsmith_sub_i32(arg_1.a.d.b.c.x, global2.d.c.c.x), arg_0)) | vec4<i32>(u_input.c.x, global2.d.e, _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.a), u_input.a), min(-arg_0, arg_0)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2154f, _wgslsmith_f_op_f32(-global2.d.b.d.x)))), arg_1.b.a.d.b.a));
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(587f, 784f))), _wgslsmith_f_op_f32(max(-261f, _wgslsmith_f_op_f32(sign(-1848f))))));
    let var_1 = min(vec2<u32>(19923u, _wgslsmith_div_u32(~1u, global2.b)), abs(global3.zz));
    return Struct_3(global2.a, 1u, true, arg_1.b.a.d, global2.e);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: u32) -> bool {
    var var_0 = func_2(global2.d.e, global1[_wgslsmith_index_u32(abs(1u), 11u)]);
    var var_1 = global2.a;
    global2 = Struct_3(global2.d, var_0.b, var_1.b.b, global2.a, vec4<u32>(~(~30669u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(45670u, arg_2, u_input.b), 1u), reverseBits(~_wgslsmith_mod_u32(0u, 50724u)), ~(~global2.b & _wgslsmith_div_u32(44067u, 34770u))));
    let var_2 = Struct_5(func_2(2147483647i, Struct_5(func_2(var_1.e, Struct_5(Struct_3(Struct_2(vec4<f32>(-994f, var_0.d.c.a, global4.x, 1416f), global2.d.b, var_0.a.b, arg_0, -2147483647i), global2.e.x, false, var_0.a, vec4<u32>(arg_2, global3.x, arg_2, global2.b)), Struct_4(Struct_3(Struct_2(vec4<f32>(var_1.c.a, 332f, var_0.d.c.a, var_1.c.d.x), var_1.b, Struct_1(700f, true, var_0.a.c.c, vec2<f32>(-598f, global2.d.b.a)), -53084i, arg_0), 1u, arg_1.x, var_0.d, var_0.e), 19909u), Struct_3(var_0.a, 4294967295u, var_0.c, global2.a, global2.e))), Struct_4(func_2(arg_0, global1[_wgslsmith_index_u32(u_input.b, 11u)]), var_0.e.x), func_2(_wgslsmith_mod_i32(arg_0, var_1.b.c.x), global1[_wgslsmith_index_u32(~137720u, 11u)]))), Struct_4(Struct_3(global2.d, _wgslsmith_dot_vec3_u32(var_0.e.yyw, ~vec3<u32>(12039u, 0u, u_input.b)), global2.d.c.b && (var_1.c.b != global2.c), var_0.a, func_2(_wgslsmith_div_i32(var_1.b.c.x, -1i), Struct_5(Struct_3(Struct_2(vec4<f32>(var_1.a.x, var_0.d.a.x, -1172f, global4.x), Struct_1(-1141f, arg_1.x, u_input.a, vec2<f32>(global2.d.b.a, var_1.b.d.x)), Struct_1(var_1.a.x, var_0.a.c.b, vec4<i32>(0i, -2147483647i, u_input.c.x, var_1.c.c.x), vec2<f32>(var_0.d.b.d.x, 647f)), 29130i, -1i), 4294967295u, var_1.b.b, var_0.a, var_0.e), Struct_4(Struct_3(Struct_2(global2.a.a, Struct_1(548f, false, var_1.b.c, global4.ww), Struct_1(var_0.d.a.x, true, vec4<i32>(19659i, 1i, 2147483647i, -30992i), var_1.a.xw), global2.a.d, -47148i), u_input.b, global2.c, Struct_2(vec4<f32>(1000f, var_0.a.b.a, -1779f, -303f), Struct_1(var_1.b.d.x, false, u_input.a, vec2<f32>(1599f, 1477f)), global2.a.b, u_input.a.x, var_1.c.c.x), var_0.e), 0u), Struct_3(global2.d, global2.e.x, arg_1.x, Struct_2(vec4<f32>(global4.x, global2.d.c.d.x, -999f, 220f), Struct_1(global2.a.a.x, var_1.c.b, vec4<i32>(arg_0, -2147483647i, 1i, 2147483647i), global2.a.c.d), var_0.d.c, 2147483647i, 2147483647i), global2.e))).e), global2.b), func_2(abs(u_input.a.x), Struct_5(func_2(var_0.a.b.c.x, Struct_5(Struct_3(var_0.a, u_input.b, false, Struct_2(var_0.d.a, Struct_1(796f, false, u_input.a, global4.zz), Struct_1(var_1.b.a, arg_1.x, vec4<i32>(-12702i, 27608i, global2.d.e, u_input.d), vec2<f32>(1299f, global4.x)), var_1.e, var_0.d.d), vec4<u32>(16708u, 34072u, arg_2, 80180u)), Struct_4(Struct_3(global2.d, 1u, var_0.d.b.b, Struct_2(vec4<f32>(global4.x, 1191f, 572f, global2.d.c.d.x), Struct_1(-187f, global2.d.c.b, vec4<i32>(arg_0, 0i, 0i, u_input.a.x), vec2<f32>(global2.a.b.a, var_1.b.d.x)), global2.a.b, var_1.e, global2.a.c.c.x), vec4<u32>(u_input.b, var_0.e.x, 1u, arg_2)), 0u), Struct_3(global2.d, 0u, arg_1.x, Struct_2(vec4<f32>(global2.d.a.x, var_1.b.d.x, global4.x, 1000f), global2.a.b, var_0.d.b, 10016i, arg_0), vec4<u32>(global3.x, global2.b, 53169u, 2294u)))), Struct_4(func_2(78307i, global1[_wgslsmith_index_u32(arg_2, 11u)]), ~0u), Struct_3(func_2(-13113i, global1[_wgslsmith_index_u32(var_0.e.x, 11u)]).d, arg_2 ^ 21446u, true, global2.a, global2.e))));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.a)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global2.d.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.b.a.d.a.x, global4.x, -250f, -1813f)))))) * var_2.a.d.a), Struct_1(_wgslsmith_f_op_f32(-var_1.c.a), false, var_0.a.b.c, vec2<f32>(-1561f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1718f - 1215f) + _wgslsmith_f_op_f32(sign(959f))))), func_2(~_wgslsmith_mod_i32(2147483647i | var_2.c.a.c.c.x, 54782i), Struct_5(Struct_3(Struct_2(global2.d.a, global2.d.c, var_0.d.b, 2147483647i, -33166i), ~var_2.a.b, false | arg_1.x, func_2(var_2.c.a.d, Struct_5(var_2.c, var_2.b, Struct_3(Struct_2(global2.d.a, Struct_1(314f, false, var_2.c.d.c.c, vec2<f32>(1009f, var_2.b.a.d.a.x)), var_2.b.a.a.b, 2147483647i, var_0.d.d), arg_2, true, Struct_2(vec4<f32>(-1470f, -1000f, var_0.a.c.d.x, 2675f), Struct_1(var_0.d.a.x, var_1.c.b, vec4<i32>(u_input.d, arg_0, 11723i, var_1.e), global2.d.c.d), Struct_1(var_2.c.a.a.x, false, vec4<i32>(arg_0, arg_0, arg_0, -2147483647i), global2.d.c.d), -2147483647i, -10401i), vec4<u32>(var_0.b, global3.x, var_2.b.b, 27196u)))).a, ~var_2.a.e), var_2.b, func_2(-2147483647i, var_2))).a.c, abs(48856i), firstLeadingBit(~(~(-12547i))));
    return all(vec4<bool>(false, any(vec2<bool>(all(vec3<bool>(arg_1.x, false, false)), any(arg_1))), u_input.c.x != countOneBits(min(arg_0, global2.d.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-579f, global4.x)) * 1030f) >= -583f));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = vec2<i32>(-1i, ~(_wgslsmith_sub_i32(_wgslsmith_add_i32(-49029i, arg_0.d.b.c.x), global2.a.c.c.x) >> (arg_0.b % 32u)));
    var var_1 = !select(!(!vec2<bool>(false, arg_0.d.b.b)), select(!vec2<bool>(global2.d.b.b, global2.c), vec2<bool>(false, arg_0.d.c.b), !vec2<bool>(arg_0.d.b.b, false)), !vec2<bool>(true, all(vec3<bool>(false, false, false))));
    let var_2 = arg_0;
    var var_3 = global2.a.c.b;
    global2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, -724f, arg_0.a.a.x, -581f)), _wgslsmith_f_op_vec4_f32(-var_2.a.a))), func_2(_wgslsmith_mod_i32(-2147483647i, -3440i) >> (1u % 32u), global1[_wgslsmith_index_u32(var_2.b, 11u)]).a.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.b.d.x) - 358f), func_3(Struct_5(var_2, Struct_4(var_2, u_input.b), arg_0), _wgslsmith_f_op_vec4_f32(select(var_2.d.a, vec4<f32>(-1009f, arg_0.d.a.x, arg_0.a.a.x, global2.a.b.d.x), arg_0.d.b.b))).x, -vec4<i32>(u_input.a.x, 36340i, global2.a.e, arg_0.a.d), global2.d.b.d), -1i, 0i), global2.b, func_2(-1i & firstTrailingBit(global2.a.e), global1[_wgslsmith_index_u32(~10499u ^ _wgslsmith_sub_u32(1u, u_input.b), 11u)]).a.b.b | true, func_2(_wgslsmith_sub_i32(_wgslsmith_add_i32(-arg_0.d.e, 0i), var_0.x), Struct_5(Struct_3(var_2.a, ~global3.x, global2.d.b.c.x == -2147483647i, func_2(var_2.d.c.c.x, Struct_5(var_2, Struct_4(Struct_3(var_2.a, u_input.b, true, Struct_2(global2.a.a, Struct_1(-273f, false, vec4<i32>(-1i, arg_0.d.b.c.x, 7993i, u_input.a.x), vec2<f32>(global2.d.c.d.x, var_2.d.c.a)), global2.d.c, arg_0.d.c.c.x, -1i), vec4<u32>(u_input.b, arg_0.b, 4294967295u, 9991u)), global3.x), Struct_3(arg_0.d, arg_0.e.x, var_1.x, Struct_2(vec4<f32>(-407f, global4.x, -1000f, global2.d.b.a), Struct_1(-1101f, var_1.x, var_2.a.c.c, global2.d.b.d), Struct_1(584f, false, vec4<i32>(var_0.x, var_0.x, 0i, global2.d.e), arg_0.a.c.d), var_2.a.d, var_0.x), global2.e))).d, vec4<u32>(u_input.b, 64360u, 4294967295u, 34186u)), Struct_4(func_2(arg_0.d.e, global1[_wgslsmith_index_u32(0u, 11u)]), max(u_input.b, u_input.b)), func_2(firstTrailingBit(global2.a.c.c.x), Struct_5(arg_0, Struct_4(Struct_3(var_2.d, 4294967295u, true, arg_0.d, vec4<u32>(0u, var_2.b, u_input.b, var_2.b)), var_2.e.x), Struct_3(Struct_2(global2.d.a, Struct_1(global4.x, arg_0.a.b.b, u_input.a, vec2<f32>(arg_0.d.c.d.x, var_2.d.b.d.x)), Struct_1(global2.d.a.x, true, global2.a.b.c, vec2<f32>(arg_0.d.a.x, 1005f)), 0i, -1537i), u_input.b, false, global2.d, vec4<u32>(1u, 1u, 20700u, 49173u)))))).d, vec4<u32>(0u, u_input.b, _wgslsmith_add_u32(_wgslsmith_sub_u32(95413u, 40580u), 3998u), ~_wgslsmith_add_u32(59u, var_2.b)) ^ arg_0.e);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(185f)), _wgslsmith_f_op_f32(-global4.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.d.a.x)) * _wgslsmith_f_op_f32(max(-723f, arg_0.a.b.a))) - _wgslsmith_f_op_f32(trunc(-198f)))), select(_wgslsmith_f_op_f32(global4.x * 2576f) != 1194f, _wgslsmith_add_i32(_wgslsmith_div_i32(var_0.x, 1i), 1i) == _wgslsmith_div_i32(arg_0.d.e, _wgslsmith_dot_vec4_i32(global2.d.b.c, vec4<i32>(global2.d.b.c.x, 0i, -2147483647i, u_input.d))), all(select(vec2<bool>(true, true), vec2<bool>(false, arg_0.a.c.b), !var_2.c))), vec4<i32>(1i, var_0.x, i32(-1i) * -2147483647i, u_input.c.x), vec2<f32>(1009f, global2.d.a.x));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    var var_0 = global2.a.c.b & arg_0.b;
    var_0 = arg_0.b;
    let var_1 = ~arg_0.c.x;
    global3 = ~(~(~vec3<u32>(abs(u_input.b), ~6041u, _wgslsmith_sub_u32(4294967295u, 0u))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f - global4.x)) + _wgslsmith_f_op_f32(ceil(arg_0.d.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -836f)), _wgslsmith_f_op_f32(f32(-1f) * -261f))))), global2.d.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1701f, _wgslsmith_f_op_f32(max(func_4(Struct_3(Struct_2(vec4<f32>(-407f, global2.a.c.a, -1000f, -1000f), Struct_1(-865f, false, arg_0.c, global2.a.c.d), arg_0, arg_0.c.x, global2.a.d), global2.e.x, global2.a.b.b, Struct_2(vec4<f32>(-978f, -1714f, 1083f, 1305f), global2.a.c, Struct_1(-193f, true, vec4<i32>(-1i, 1i, -1i, 1i), vec2<f32>(global2.a.b.a, 744f)), -2966i, var_1), global2.e)).d.x, _wgslsmith_f_op_f32(step(arg_0.d.x, arg_0.d.x)))))))));
    return func_2(24275i, Struct_5(func_2(~max(arg_0.c.x, -42964i), Struct_5(func_2(u_input.d, global1[_wgslsmith_index_u32(1u, 11u)]), Struct_4(Struct_3(global2.d, u_input.b, global2.a.b.b, Struct_2(global2.a.a, Struct_1(-232f, global2.a.c.b, vec4<i32>(arg_0.c.x, 34159i, global2.a.d, -26661i), vec2<f32>(2179f, global2.a.b.a)), global2.a.c, -2147483647i, -8408i), global2.e), global3.x), func_2(var_1, global1[_wgslsmith_index_u32(4294967295u, 11u)]))), Struct_4(func_2(~24889i, Struct_5(Struct_3(Struct_2(vec4<f32>(arg_0.d.x, -670f, arg_0.d.x, 689f), Struct_1(var_2.x, global2.c, vec4<i32>(global2.a.e, var_1, global2.d.e, 2147483647i), vec2<f32>(-717f, 839f)), global2.a.c, 2147483647i, arg_0.c.x), global2.b, true, Struct_2(vec4<f32>(1000f, 661f, global2.a.a.x, global4.x), arg_0, global2.a.b, arg_0.c.x, var_1), vec4<u32>(global2.e.x, u_input.b, 0u, 1u)), Struct_4(Struct_3(global2.a, u_input.b, global2.d.c.b, Struct_2(global2.a.a, Struct_1(367f, arg_0.b, global2.d.c.c, arg_0.d), Struct_1(224f, false, vec4<i32>(u_input.c.x, u_input.d, -6388i, arg_0.c.x), global2.d.c.d), -1i, -2147483647i), global2.e), u_input.b), Struct_3(global2.d, 4294967295u, arg_0.b, Struct_2(vec4<f32>(-1327f, global4.x, -342f, -110f), arg_0, Struct_1(-1000f, global2.d.c.b, global2.d.b.c, arg_0.d), 8978i, global2.d.d), vec4<u32>(0u, 1u, global2.b, 1u)))), u_input.b), func_2(func_2(~(-2147483647i), Struct_5(Struct_3(global2.a, global2.b, false, Struct_2(global2.a.a, arg_0, global2.a.b, 2147483647i, 23968i), vec4<u32>(global2.e.x, global2.e.x, global3.x, 4294967295u)), Struct_4(Struct_3(global2.a, u_input.b, arg_0.b, global2.a, global2.e), u_input.b), Struct_3(global2.a, 17581u, arg_0.b, Struct_2(global2.d.a, global2.d.b, global2.d.b, u_input.a.x, 2147483647i), vec4<u32>(1u, 53033u, 16860u, global2.e.x)))).d.e, Struct_5(Struct_3(global2.d, global3.x, false, Struct_2(vec4<f32>(global4.x, global4.x, -775f, var_2.x), Struct_1(1761f, true, vec4<i32>(var_1, 2147483647i, arg_0.c.x, -2147483647i), var_2.wz), global2.d.c, u_input.a.x, 2147483647i), global2.e), Struct_4(Struct_3(Struct_2(vec4<f32>(var_2.x, var_2.x, -1316f, global2.a.a.x), arg_0, arg_0, u_input.a.x, u_input.d), 25207u, false, Struct_2(vec4<f32>(global4.x, global4.x, arg_0.d.x, 796f), Struct_1(-400f, global2.a.b.b, vec4<i32>(-4924i, 0i, global2.a.b.c.x, 25262i), vec2<f32>(var_2.x, global2.a.c.a)), Struct_1(global4.x, global2.d.c.b, arg_0.c, var_2.yz), global2.a.c.c.x, 2147483647i), vec4<u32>(92012u, u_input.b, global3.x, global2.b)), 0u), Struct_3(Struct_2(vec4<f32>(-1000f, 182f, arg_0.a, global4.x), global2.d.b, global2.d.c, 1i, -981i), 28264u, false, Struct_2(global2.a.a, Struct_1(1000f, global2.a.c.b, global2.d.c.c, arg_0.d), Struct_1(-928f, true, vec4<i32>(global2.d.e, global2.d.e, 2147483647i, -32784i), var_2.zz), 1i, var_1), global2.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.d.b.b;
    global2 = func_5(func_4(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-global2.d.a), global2.a.b, global2.a.b, -1917i, global2.d.d), ~_wgslsmith_sub_u32(0u, global3.x), !func_1(u_input.a.x, vec3<bool>(false, global2.a.b.b, global2.c), u_input.b), global2.d, _wgslsmith_mod_vec4_u32(vec4<u32>(90187u, 21841u, u_input.b, 1u), reverseBits(vec4<u32>(0u, u_input.b, 76350u, 1u))))));
    global0 = !(!(!all(vec4<bool>(global2.c, false, global2.a.c.b, true)))) == true;
    global3 = ~global2.e.yzx;
    var var_0 = firstTrailingBit(u_input.d) >= ~19144i;
    var var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(global2.d.d, ~var_1.x & (max(-61802i, global2.a.e) & firstLeadingBit(u_input.d))));
}

