struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: Struct_4,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5>;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec2<f32>(483f, -1470f), Struct_2(Struct_1(vec2<bool>(false, true), -362f, vec4<f32>(1537f, -941f, -148f, 1293f), vec4<u32>(0u, 42821u, 1u, 653u), vec4<i32>(-65862i, 0i, i32(-2147483648), -20799i))), Struct_1(vec2<bool>(false, true), 658f, vec4<f32>(224f, -394f, -1307f, -406f), vec4<u32>(26606u, 4294967295u, 1u, 49112u), vec4<i32>(-14131i, -1i, 21296i, 27192i)), Struct_1(vec2<bool>(false, true), -1711f, vec4<f32>(-462f, -1146f, -611f, -2519f), vec4<u32>(4294967295u, 75057u, 17638u, 1u), vec4<i32>(-2632i, 2147483647i, -1i, 1203i)), vec3<u32>(0u, 29986u, 65064u)), Struct_3(vec2<f32>(-773f, 520f), Struct_2(Struct_1(vec2<bool>(true, true), -239f, vec4<f32>(-1000f, 262f, -1358f, -1090f), vec4<u32>(1u, 23757u, 43292u, 4294967295u), vec4<i32>(2147483647i, -13240i, -4372i, -1i))), Struct_1(vec2<bool>(false, true), -629f, vec4<f32>(-1067f, 246f, 1595f, -1161f), vec4<u32>(30079u, 98113u, 42015u, 0u), vec4<i32>(20590i, 0i, -1i, 6693i)), Struct_1(vec2<bool>(true, true), -127f, vec4<f32>(154f, -280f, 1506f, 249f), vec4<u32>(33729u, 1u, 1u, 9088u), vec4<i32>(32325i, 2147483647i, i32(-2147483648), 1i)), vec3<u32>(20370u, 0u, 3369u)), Struct_3(vec2<f32>(-405f, -1506f), Struct_2(Struct_1(vec2<bool>(false, false), 378f, vec4<f32>(782f, -178f, -1583f, -229f), vec4<u32>(12929u, 0u, 4294967295u, 1u), vec4<i32>(2147483647i, 16206i, 2147483647i, 17141i))), Struct_1(vec2<bool>(true, false), -994f, vec4<f32>(-2216f, 1720f, -968f, -1880f), vec4<u32>(0u, 0u, 0u, 1u), vec4<i32>(15370i, 2147483647i, 1i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), -1005f, vec4<f32>(1186f, -617f, -1571f, -280f), vec4<u32>(0u, 34781u, 1u, 39313u), vec4<i32>(1i, 1517i, i32(-2147483648), 0i)), vec3<u32>(49291u, 1u, 4294967295u)), Struct_3(vec2<f32>(-565f, -161f), Struct_2(Struct_1(vec2<bool>(true, false), -1678f, vec4<f32>(-1023f, 451f, -219f, -627f), vec4<u32>(47879u, 0u, 0u, 19431u), vec4<i32>(i32(-2147483648), 1i, -14149i, 32728i))), Struct_1(vec2<bool>(true, true), -917f, vec4<f32>(-1440f, -2735f, 233f, -328f), vec4<u32>(4328u, 4294967295u, 0u, 1u), vec4<i32>(63448i, -25294i, 1i, 0i)), Struct_1(vec2<bool>(false, false), 530f, vec4<f32>(-996f, -101f, 1000f, 1848f), vec4<u32>(1u, 22268u, 21327u, 28158u), vec4<i32>(1i, 468i, 1i, 2147483647i)), vec3<u32>(0u, 0u, 38548u)), Struct_3(vec2<f32>(1000f, -192f), Struct_2(Struct_1(vec2<bool>(true, true), 609f, vec4<f32>(-577f, -633f, 741f, -370f), vec4<u32>(43698u, 40617u, 571u, 44149u), vec4<i32>(0i, 2147483647i, -5794i, 19565i))), Struct_1(vec2<bool>(false, false), 1224f, vec4<f32>(1997f, 211f, 790f, 872f), vec4<u32>(0u, 38624u, 0u, 0u), vec4<i32>(0i, 0i, -71285i, 0i)), Struct_1(vec2<bool>(true, false), 1797f, vec4<f32>(-488f, -621f, -1000f, -622f), vec4<u32>(104u, 4294967295u, 71306u, 1u), vec4<i32>(i32(-2147483648), -19391i, i32(-2147483648), 2147483647i)), vec3<u32>(25585u, 2688u, 4294967295u)), Struct_3(vec2<f32>(677f, 255f), Struct_2(Struct_1(vec2<bool>(true, false), 951f, vec4<f32>(636f, -1117f, -1668f, 549f), vec4<u32>(4294967295u, 33412u, 24743u, 4294967295u), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 2147483647i))), Struct_1(vec2<bool>(true, false), -1769f, vec4<f32>(-933f, 371f, -1588f, -854f), vec4<u32>(0u, 28745u, 0u, 4294967295u), vec4<i32>(-9022i, -1i, 33399i, -38007i)), Struct_1(vec2<bool>(true, true), 229f, vec4<f32>(879f, 1212f, 1068f, 3954f), vec4<u32>(25468u, 57663u, 1u, 4294967295u), vec4<i32>(1i, 16734i, -11073i, i32(-2147483648))), vec3<u32>(4294967295u, 67131u, 32038u)), Struct_3(vec2<f32>(1000f, 413f), Struct_2(Struct_1(vec2<bool>(true, false), -518f, vec4<f32>(-415f, -306f, 701f, -1526f), vec4<u32>(0u, 10987u, 1u, 9765u), vec4<i32>(-12492i, 1i, -12807i, 22770i))), Struct_1(vec2<bool>(true, true), 1248f, vec4<f32>(-1000f, -109f, 504f, 899f), vec4<u32>(25120u, 1u, 0u, 0u), vec4<i32>(0i, 1i, -17809i, -6422i)), Struct_1(vec2<bool>(false, false), 1131f, vec4<f32>(1242f, -1000f, -523f, -1000f), vec4<u32>(1u, 28734u, 0u, 13578u), vec4<i32>(56929i, 7538i, 47819i, 2147483647i)), vec3<u32>(0u, 64423u, 0u)), Struct_3(vec2<f32>(1059f, -2868f), Struct_2(Struct_1(vec2<bool>(true, false), -1000f, vec4<f32>(-837f, 1329f, -861f, 511f), vec4<u32>(0u, 28264u, 40959u, 39907u), vec4<i32>(-24990i, -1i, -1i, 0i))), Struct_1(vec2<bool>(true, true), -806f, vec4<f32>(-1080f, 1104f, -908f, 3450f), vec4<u32>(7619u, 63725u, 4294967295u, 1u), vec4<i32>(0i, 5055i, -1i, 73723i)), Struct_1(vec2<bool>(false, true), 1426f, vec4<f32>(1000f, -370f, -1818f, -1000f), vec4<u32>(1u, 8661u, 16497u, 71182u), vec4<i32>(i32(-2147483648), 2147483647i, -59270i, 24332i)), vec3<u32>(0u, 3539u, 34287u)), Struct_3(vec2<f32>(628f, -704f), Struct_2(Struct_1(vec2<bool>(true, false), -1000f, vec4<f32>(186f, 1808f, -2342f, -649f), vec4<u32>(19469u, 84695u, 8668u, 20652u), vec4<i32>(52378i, -1i, 1i, -24142i))), Struct_1(vec2<bool>(true, true), 1398f, vec4<f32>(251f, -924f, 1000f, 419f), vec4<u32>(1u, 0u, 321u, 83901u), vec4<i32>(-1i, 0i, 0i, -25546i)), Struct_1(vec2<bool>(false, true), -606f, vec4<f32>(-2049f, -1437f, -1076f, -713f), vec4<u32>(14941u, 4294967295u, 1u, 0u), vec4<i32>(-65857i, -1i, -67775i, -30084i)), vec3<u32>(7485u, 90550u, 72603u)), Struct_3(vec2<f32>(-596f, -686f), Struct_2(Struct_1(vec2<bool>(true, true), -163f, vec4<f32>(1413f, -572f, -1158f, -922f), vec4<u32>(1u, 4294967295u, 25011u, 4294967295u), vec4<i32>(i32(-2147483648), 0i, -47047i, -500i))), Struct_1(vec2<bool>(false, false), -472f, vec4<f32>(1489f, -928f, -319f, 126f), vec4<u32>(54891u, 0u, 29478u, 4294967295u), vec4<i32>(10051i, 2147483647i, i32(-2147483648), 1i)), Struct_1(vec2<bool>(true, false), -423f, vec4<f32>(100f, -509f, -1192f, 1000f), vec4<u32>(54041u, 1u, 13787u, 0u), vec4<i32>(-65712i, -74251i, 0i, 2147483647i)), vec3<u32>(36461u, 56086u, 0u)), Struct_3(vec2<f32>(-917f, -1378f), Struct_2(Struct_1(vec2<bool>(true, false), -984f, vec4<f32>(1272f, -106f, -860f, -544f), vec4<u32>(1u, 36353u, 731u, 51466u), vec4<i32>(-60088i, 2772i, i32(-2147483648), 6185i))), Struct_1(vec2<bool>(false, false), -714f, vec4<f32>(-628f, 920f, 2858f, -654f), vec4<u32>(34516u, 42352u, 1u, 1996u), vec4<i32>(44854i, 2147483647i, 69389i, 0i)), Struct_1(vec2<bool>(false, false), -499f, vec4<f32>(-498f, 1396f, 1105f, -1559f), vec4<u32>(40707u, 4294967295u, 4294967295u, 1u), vec4<i32>(9425i, 0i, 1i, -1i)), vec3<u32>(1u, 1u, 30452u)), Struct_3(vec2<f32>(-226f, 744f), Struct_2(Struct_1(vec2<bool>(true, false), -900f, vec4<f32>(-1393f, -382f, 908f, 131f), vec4<u32>(22083u, 4567u, 0u, 0u), vec4<i32>(i32(-2147483648), 1i, -1i, 1i))), Struct_1(vec2<bool>(true, false), -2009f, vec4<f32>(-1000f, -2521f, -314f, 582f), vec4<u32>(24576u, 45733u, 4294967295u, 42039u), vec4<i32>(2147483647i, 0i, 53106i, -1i)), Struct_1(vec2<bool>(false, true), -420f, vec4<f32>(-778f, -645f, -1154f, -562f), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<i32>(1i, -81522i, 1i, -1i)), vec3<u32>(7937u, 49126u, 4294967295u)), Struct_3(vec2<f32>(-817f, -1788f), Struct_2(Struct_1(vec2<bool>(true, false), -1202f, vec4<f32>(-704f, -377f, 1818f, -316f), vec4<u32>(35548u, 4294967295u, 4294967295u, 4294967295u), vec4<i32>(38578i, 24085i, i32(-2147483648), 0i))), Struct_1(vec2<bool>(false, true), 216f, vec4<f32>(-371f, 987f, -278f, -223f), vec4<u32>(0u, 48169u, 1067u, 0u), vec4<i32>(2147483647i, 1i, -9991i, 0i)), Struct_1(vec2<bool>(true, true), -120f, vec4<f32>(-1250f, 617f, -1382f, 466f), vec4<u32>(0u, 0u, 1u, 0u), vec4<i32>(-1554i, 0i, -1i, -44923i)), vec3<u32>(50340u, 4294967295u, 0u)), Struct_3(vec2<f32>(-201f, 750f), Struct_2(Struct_1(vec2<bool>(true, true), 538f, vec4<f32>(-726f, -1580f, 1000f, 120f), vec4<u32>(4294967295u, 67045u, 1u, 0u), vec4<i32>(25408i, -15513i, 2147483647i, 1i))), Struct_1(vec2<bool>(true, true), -154f, vec4<f32>(-1508f, 486f, 1128f, 1655f), vec4<u32>(60529u, 0u, 1u, 29866u), vec4<i32>(-3415i, i32(-2147483648), i32(-2147483648), i32(-2147483648))), Struct_1(vec2<bool>(true, false), 1000f, vec4<f32>(323f, -749f, 361f, -292f), vec4<u32>(1u, 40785u, 95236u, 70083u), vec4<i32>(51565i, 49010i, 17797i, 26285i)), vec3<u32>(1u, 89542u, 0u)), Struct_3(vec2<f32>(807f, 2972f), Struct_2(Struct_1(vec2<bool>(true, true), -1941f, vec4<f32>(802f, 1629f, -1000f, 531f), vec4<u32>(36332u, 35741u, 55533u, 1u), vec4<i32>(i32(-2147483648), 1i, 38924i, 16928i))), Struct_1(vec2<bool>(false, true), 991f, vec4<f32>(-739f, -1000f, -2058f, -411f), vec4<u32>(36229u, 4348u, 84363u, 12988u), vec4<i32>(2147483647i, 0i, i32(-2147483648), -37856i)), Struct_1(vec2<bool>(true, true), -480f, vec4<f32>(914f, -584f, 2106f, 519f), vec4<u32>(45413u, 20799u, 4294967295u, 4294967295u), vec4<i32>(0i, 17114i, 0i, -29433i)), vec3<u32>(79086u, 33394u, 4294967295u)), Struct_3(vec2<f32>(-944f, 404f), Struct_2(Struct_1(vec2<bool>(true, true), -212f, vec4<f32>(-1612f, 1191f, -1504f, -2318f), vec4<u32>(49064u, 71917u, 11294u, 21677u), vec4<i32>(2681i, 2147483647i, 12473i, -19018i))), Struct_1(vec2<bool>(false, false), -362f, vec4<f32>(1156f, 1336f, 1996f, -1053f), vec4<u32>(4294967295u, 1u, 78416u, 1u), vec4<i32>(-17585i, 512i, i32(-2147483648), 2147483647i)), Struct_1(vec2<bool>(true, false), -1063f, vec4<f32>(432f, -1324f, 948f, 654f), vec4<u32>(49233u, 17748u, 1u, 31546u), vec4<i32>(i32(-2147483648), -19369i, 1i, 1i)), vec3<u32>(0u, 1u, 1u)), Struct_3(vec2<f32>(631f, -804f), Struct_2(Struct_1(vec2<bool>(true, true), -169f, vec4<f32>(-247f, 1000f, -157f, -187f), vec4<u32>(6779u, 4294967295u, 30094u, 4294967295u), vec4<i32>(52904i, i32(-2147483648), 2147483647i, -5780i))), Struct_1(vec2<bool>(true, false), 369f, vec4<f32>(1440f, -807f, 981f, 975f), vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<i32>(5013i, 2147483647i, -47949i, 2147483647i)), Struct_1(vec2<bool>(true, true), -1515f, vec4<f32>(-769f, 715f, 396f, 954f), vec4<u32>(13084u, 36741u, 1u, 1u), vec4<i32>(-93987i, i32(-2147483648), -6360i, 1i)), vec3<u32>(21531u, 8046u, 4294967295u)), Struct_3(vec2<f32>(2452f, 797f), Struct_2(Struct_1(vec2<bool>(true, true), 786f, vec4<f32>(-854f, 486f, -601f, 155f), vec4<u32>(52639u, 9020u, 17571u, 0u), vec4<i32>(-10433i, -72i, -1i, -8117i))), Struct_1(vec2<bool>(false, false), 651f, vec4<f32>(255f, -1177f, 1000f, 1398f), vec4<u32>(1u, 60495u, 1u, 26627u), vec4<i32>(-37568i, 1i, 1i, 2147483647i)), Struct_1(vec2<bool>(false, false), -346f, vec4<f32>(1000f, 164f, -1000f, -1593f), vec4<u32>(12969u, 44114u, 4294967295u, 1u), vec4<i32>(-1i, -1i, -32836i, i32(-2147483648))), vec3<u32>(30483u, 31778u, 4294967295u)), Struct_3(vec2<f32>(-300f, -1000f), Struct_2(Struct_1(vec2<bool>(true, false), -1012f, vec4<f32>(1049f, 985f, 952f, -259f), vec4<u32>(12951u, 20228u, 1u, 4294967295u), vec4<i32>(1i, 25283i, i32(-2147483648), 5152i))), Struct_1(vec2<bool>(true, false), 1290f, vec4<f32>(463f, 1000f, 368f, -430f), vec4<u32>(0u, 57878u, 25864u, 1u), vec4<i32>(1i, -5445i, 0i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), -2078f, vec4<f32>(344f, 263f, 931f, -573f), vec4<u32>(1u, 0u, 29213u, 21218u), vec4<i32>(i32(-2147483648), -1i, 16486i, -1i)), vec3<u32>(4294967295u, 4294967295u, 40661u)), Struct_3(vec2<f32>(226f, -2927f), Struct_2(Struct_1(vec2<bool>(true, true), -1595f, vec4<f32>(-251f, 418f, -1966f, -2411f), vec4<u32>(114u, 8354u, 7299u, 82262u), vec4<i32>(1i, -24004i, -10986i, -1i))), Struct_1(vec2<bool>(false, false), 329f, vec4<f32>(1818f, 494f, 361f, -830f), vec4<u32>(4294967295u, 0u, 23339u, 4294967295u), vec4<i32>(6668i, -1i, -44007i, 17201i)), Struct_1(vec2<bool>(true, false), 471f, vec4<f32>(295f, -1053f, -426f, 1000f), vec4<u32>(77747u, 4294967295u, 0u, 1u), vec4<i32>(-5566i, 2147483647i, 35210i, 2147483647i)), vec3<u32>(4294967295u, 0u, 1u)), Struct_3(vec2<f32>(-1010f, -1819f), Struct_2(Struct_1(vec2<bool>(true, true), 774f, vec4<f32>(719f, -1000f, 397f, 1000f), vec4<u32>(31374u, 14868u, 0u, 4294967295u), vec4<i32>(2147483647i, -53131i, 1i, -15733i))), Struct_1(vec2<bool>(true, true), 699f, vec4<f32>(997f, 271f, 770f, 885f), vec4<u32>(1u, 7634u, 22389u, 1815u), vec4<i32>(-37431i, 2355i, -1i, 54452i)), Struct_1(vec2<bool>(true, false), -1157f, vec4<f32>(991f, 554f, 746f, -1130f), vec4<u32>(0u, 4294967295u, 1u, 8981u), vec4<i32>(2147483647i, 0i, 1i, -49690i)), vec3<u32>(4294967295u, 148729u, 26950u)), Struct_3(vec2<f32>(-682f, 719f), Struct_2(Struct_1(vec2<bool>(false, true), -316f, vec4<f32>(594f, 260f, -554f, -1901f), vec4<u32>(55853u, 4294967295u, 4294967295u, 1u), vec4<i32>(2147483647i, 38450i, -40994i, -1i))), Struct_1(vec2<bool>(true, false), 150f, vec4<f32>(1301f, -196f, -392f, -325f), vec4<u32>(17156u, 4294967295u, 56132u, 1u), vec4<i32>(2147483647i, -40425i, -1i, 76107i)), Struct_1(vec2<bool>(false, true), -248f, vec4<f32>(450f, 797f, -519f, -206f), vec4<u32>(1u, 4932u, 86230u, 35371u), vec4<i32>(45327i, i32(-2147483648), -11145i, 2147483647i)), vec3<u32>(22425u, 12735u, 1u)), Struct_3(vec2<f32>(-690f, 747f), Struct_2(Struct_1(vec2<bool>(true, true), 402f, vec4<f32>(121f, -1174f, -1254f, -1980f), vec4<u32>(0u, 9962u, 0u, 1u), vec4<i32>(1i, i32(-2147483648), 2147483647i, -65272i))), Struct_1(vec2<bool>(true, false), -321f, vec4<f32>(894f, -128f, 1410f, -741f), vec4<u32>(67285u, 1u, 4294967295u, 1u), vec4<i32>(9814i, 1i, 36584i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), 332f, vec4<f32>(205f, -1000f, 986f, 644f), vec4<u32>(52572u, 1u, 1u, 98840u), vec4<i32>(-12745i, -6993i, -1i, 0i)), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_3(vec2<f32>(271f, -525f), Struct_2(Struct_1(vec2<bool>(false, true), 341f, vec4<f32>(1000f, -838f, -1037f, -499f), vec4<u32>(1u, 4294967295u, 0u, 8369u), vec4<i32>(67228i, 0i, 992i, -31712i))), Struct_1(vec2<bool>(true, true), -382f, vec4<f32>(-246f, -839f, 1197f, -977f), vec4<u32>(4294967295u, 6906u, 1u, 1u), vec4<i32>(i32(-2147483648), 31598i, -9574i, 11827i)), Struct_1(vec2<bool>(true, true), 1058f, vec4<f32>(662f, -948f, -691f, -1634f), vec4<u32>(0u, 9872u, 25481u, 4294967295u), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 1i)), vec3<u32>(47183u, 1u, 4294967295u)), Struct_3(vec2<f32>(-2571f, 956f), Struct_2(Struct_1(vec2<bool>(true, false), -1993f, vec4<f32>(661f, -383f, 122f, 159f), vec4<u32>(0u, 43039u, 52492u, 8546u), vec4<i32>(i32(-2147483648), 2186i, 0i, 0i))), Struct_1(vec2<bool>(true, false), -356f, vec4<f32>(1042f, -484f, 1295f, 2098f), vec4<u32>(114141u, 4294967295u, 0u, 1u), vec4<i32>(15647i, -1i, -5676i, 0i)), Struct_1(vec2<bool>(false, false), -458f, vec4<f32>(245f, 650f, 772f, -226f), vec4<u32>(32671u, 1u, 30028u, 55750u), vec4<i32>(-23689i, -12076i, -290i, -7500i)), vec3<u32>(39931u, 4294967295u, 28455u)), Struct_3(vec2<f32>(-1005f, 1000f), Struct_2(Struct_1(vec2<bool>(true, true), 1000f, vec4<f32>(-590f, 1000f, -954f, -698f), vec4<u32>(5649u, 1u, 12377u, 4294967295u), vec4<i32>(i32(-2147483648), 32279i, -11831i, i32(-2147483648)))), Struct_1(vec2<bool>(true, false), 1000f, vec4<f32>(-1609f, -414f, -478f, 681f), vec4<u32>(24091u, 0u, 25409u, 65611u), vec4<i32>(2147483647i, -1i, 1i, 0i)), Struct_1(vec2<bool>(false, false), 1000f, vec4<f32>(2608f, -151f, -548f, -596f), vec4<u32>(44242u, 4294967295u, 8184u, 0u), vec4<i32>(-29253i, 28709i, 33806i, i32(-2147483648))), vec3<u32>(26925u, 26630u, 0u)), Struct_3(vec2<f32>(-1005f, -177f), Struct_2(Struct_1(vec2<bool>(true, false), 500f, vec4<f32>(-966f, 761f, 574f, 1827f), vec4<u32>(11242u, 0u, 0u, 21275u), vec4<i32>(-57060i, 34349i, -13330i, -22491i))), Struct_1(vec2<bool>(true, false), -720f, vec4<f32>(-383f, 2175f, -1166f, -269f), vec4<u32>(1u, 0u, 45696u, 65609u), vec4<i32>(-52928i, 1i, -6306i, 0i)), Struct_1(vec2<bool>(false, true), 423f, vec4<f32>(1672f, -537f, 732f, 859f), vec4<u32>(4294967295u, 4294967295u, 1u, 41957u), vec4<i32>(-1i, 58014i, 2147483647i, 23518i)), vec3<u32>(0u, 4294967295u, 1u)), Struct_3(vec2<f32>(2119f, -1000f), Struct_2(Struct_1(vec2<bool>(true, false), 2314f, vec4<f32>(439f, -977f, 1000f, 959f), vec4<u32>(1u, 6380u, 91035u, 4294967295u), vec4<i32>(1i, 2605i, 0i, 50062i))), Struct_1(vec2<bool>(true, false), 190f, vec4<f32>(877f, -784f, -255f, -404f), vec4<u32>(4490u, 77744u, 1u, 1u), vec4<i32>(-1i, 1i, 0i, -23324i)), Struct_1(vec2<bool>(true, false), -1000f, vec4<f32>(1833f, 227f, -427f, 292f), vec4<u32>(0u, 1u, 40233u, 73077u), vec4<i32>(0i, i32(-2147483648), 50928i, -11007i)), vec3<u32>(1u, 4294967295u, 574u)), Struct_3(vec2<f32>(1415f, 1936f), Struct_2(Struct_1(vec2<bool>(false, false), -1777f, vec4<f32>(-1685f, -1624f, 365f, -1753f), vec4<u32>(7847u, 3570u, 13335u, 4294967295u), vec4<i32>(1i, -41004i, i32(-2147483648), -1i))), Struct_1(vec2<bool>(false, false), 468f, vec4<f32>(813f, -619f, -555f, -839f), vec4<u32>(6536u, 50489u, 1u, 1u), vec4<i32>(-20158i, -1i, -46783i, -43438i)), Struct_1(vec2<bool>(true, false), 1833f, vec4<f32>(1059f, -1707f, -362f, -1000f), vec4<u32>(4294967295u, 6961u, 115914u, 4294967295u), vec4<i32>(-1i, -35359i, 0i, i32(-2147483648))), vec3<u32>(60359u, 0u, 6006u)), Struct_3(vec2<f32>(-544f, -1014f), Struct_2(Struct_1(vec2<bool>(false, true), 1269f, vec4<f32>(-1239f, -1000f, 364f, -1803f), vec4<u32>(1u, 0u, 0u, 90933u), vec4<i32>(81697i, 20902i, -15987i, i32(-2147483648)))), Struct_1(vec2<bool>(false, false), 543f, vec4<f32>(-2585f, -1000f, 1277f, 430f), vec4<u32>(4294967295u, 37643u, 63271u, 1u), vec4<i32>(1i, 4584i, i32(-2147483648), 21913i)), Struct_1(vec2<bool>(true, true), 253f, vec4<f32>(1993f, -642f, 104f, -477f), vec4<u32>(36727u, 4294967295u, 0u, 45913u), vec4<i32>(-31147i, 2147483647i, 11212i, -4825i)), vec3<u32>(32529u, 33430u, 68983u)), Struct_3(vec2<f32>(-1477f, -211f), Struct_2(Struct_1(vec2<bool>(false, true), -1392f, vec4<f32>(2275f, -757f, 385f, 1809f), vec4<u32>(25513u, 17580u, 0u, 4294967295u), vec4<i32>(1i, 12352i, 64308i, 1i))), Struct_1(vec2<bool>(true, true), 1976f, vec4<f32>(1143f, 1937f, 1592f, -625f), vec4<u32>(45437u, 49491u, 29808u, 14079u), vec4<i32>(9026i, -5979i, 1i, 2147483647i)), Struct_1(vec2<bool>(false, false), -440f, vec4<f32>(-224f, -351f, -170f, -649f), vec4<u32>(5386u, 4294967295u, 4294967295u, 31188u), vec4<i32>(-5765i, 2147483647i, 2147483647i, 30888i)), vec3<u32>(25989u, 1u, 4294967295u)));

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: i32) -> bool {
    var var_0 = u_input.b.x;
    var var_1 = -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-1921i, -8091i, 0i) & vec3<i32>(-2352i, u_input.c, 1i), -vec3<i32>(-49381i, -11903i, 30244i)), firstLeadingBit(vec3<i32>(5955i, arg_1, -1i)) << (vec3<u32>(87948u, u_input.a, u_input.b.x) % vec3<u32>(32u))), arg_1);
    let var_2 = !(global1.x != global1.x);
    var_0 = 13573u;
    var var_3 = Struct_5(Struct_4(~_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.b.x, 0u, 0u, 33970u), vec4<u32>(1u, u_input.a, 4294967295u, u_input.b.x), vec4<bool>(global3.x, true, true, false)), abs(vec4<u32>(u_input.b.x, 85467u, 74684u, u_input.b.x))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1306f, 185f, arg_0, arg_0) + vec4<f32>(arg_0, 1000f, arg_0, -1742f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -151f))), vec4<f32>(_wgslsmith_f_op_f32(select(arg_0, 1126f, false)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)))), vec3<f32>(1386f, -225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), Struct_4(_wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(u_input.a, 31861u, 13306u, u_input.b.x)), ~min(vec4<u32>(u_input.a, 0u, u_input.b.x, u_input.a), vec4<u32>(u_input.b.x, 92750u, u_input.b.x, u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -145f, arg_0)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1361f, _wgslsmith_f_op_f32(step(-275f, arg_0)), -164f, 726f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1262f, 499f, 1076f, arg_0) + vec4<f32>(-161f, arg_0, 1000f, arg_0))))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(arg_0 - arg_0), global1.x & false)), arg_0, 375f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -385f) * _wgslsmith_f_op_f32(-arg_0)))));
    return -480f > arg_0;
}

fn func_2() -> f32 {
    global1 = select(select(select(vec2<bool>(true, func_3(323f, 1i)), global0[_wgslsmith_index_u32(max(u_input.b.x, u_input.a), 5u)], any(!global3.xx)), global3.xz, vec2<bool>(false, !(!global1.x))), select(vec2<bool>(global1.x, global3.x), !(!(!global0[_wgslsmith_index_u32(19100u, 5u)])), select(!global0[_wgslsmith_index_u32(~u_input.b.x, 5u)], !(!global0[_wgslsmith_index_u32(1u, 5u)]), !select(global3.yz, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], true))), vec2<bool>(true, true));
    var var_0 = ~(~min(vec4<u32>(25006u, u_input.a | 0u, 1u, _wgslsmith_add_u32(u_input.b.x, 4294967295u)), (vec4<u32>(1u, u_input.a, u_input.b.x, 4294967295u) ^ vec4<u32>(u_input.b.x, 41026u, u_input.a, 1u)) & select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b.x), vec4<u32>(103973u, 3131u, u_input.a, u_input.a), vec4<bool>(true, global1.x, global1.x, true))));
    var var_1 = Struct_4(~vec4<u32>(~10243u << (~u_input.a % 32u), ~_wgslsmith_sub_u32(34933u, u_input.a), abs(~3673u), abs(var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2725f - 645f), 1000f, -179f, _wgslsmith_f_op_f32(trunc(568f))))));
    global2 = array<Struct_3, 31>();
    var_1 = Struct_4(vec4<u32>(abs(0u), 0u, firstTrailingBit(0u), _wgslsmith_mod_u32(~u_input.b.x, ~(~u_input.a))), vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(201f, var_1.b.x))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x))) - _wgslsmith_f_op_f32(718f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.x))))), 831f);
}

fn func_1(arg_0: i32) -> Struct_5 {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(250f + 360f)), Struct_2(Struct_1(vec2<bool>(true, global1.x), _wgslsmith_f_op_f32(341f * _wgslsmith_f_op_f32(ceil(120f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(179f, 350f, -716f, -720f)))), vec4<u32>(_wgslsmith_mod_u32(38105u, 43915u), select(u_input.a, u_input.b.x, false), ~34188u, select(4294967295u, u_input.b.x, global1.x)), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -12744i, 11597i, u_input.c), vec4<i32>(arg_0, arg_0, arg_0, u_input.c))))), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(1u), _wgslsmith_clamp_u32(32816u, u_input.b.x, 15711u), u_input.b.x) & 1u, 5u)], 1450f, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1050f, _wgslsmith_f_op_f32(round(-717f)), _wgslsmith_f_op_f32(1000f + 969f), -257f))), vec4<u32>(~54681u, 0u, firstTrailingBit(28847u), 85497u) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 23333u, u_input.a, u_input.b.x), vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.b.x)), vec4<i32>(u_input.c >> ((u_input.a >> (5455u % 32u)) % 32u), -_wgslsmith_mod_i32(1i, -2147483647i), min(2147483647i, 1i) << (~u_input.b.x % 32u), -u_input.c & -1i)), Struct_1(vec2<bool>(global1.x, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, 1000f))), _wgslsmith_f_op_f32(-1000f + 1279f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -398f), -1574f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), firstTrailingBit(~(vec4<u32>(4294967295u, 53590u, 15627u, 54095u) | vec4<u32>(60898u, u_input.b.x, 1087u, u_input.a))), abs(select(~vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, arg_0, -2147483647i, 23717i), vec4<i32>(3149i, -6127i, -976i, arg_0), vec4<i32>(1i, 0i, -1i, u_input.c)), vec4<bool>(true, false, false, false)))), ~(~(u_input.b << (~u_input.b % vec3<u32>(32u)))));
    let var_1 = Struct_5(Struct_4(var_0.c.d, vec4<f32>(-2118f, var_0.a.x, 396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - -557f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(884f, var_0.d.b, var_0.b.a.c.x))), Struct_4(_wgslsmith_add_vec4_u32(var_0.c.d, var_0.c.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-437f, var_0.a.x, -647f, var_0.b.a.c.x) - vec4<f32>(1004f, var_0.a.x, var_0.d.c.x, 2796f)) * _wgslsmith_f_op_vec4_f32(-var_0.c.c)) + var_0.d.c)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.b)), _wgslsmith_f_op_f32(-var_0.a.x), 1537f), _wgslsmith_div_vec4_f32(vec4<f32>(-2008f, _wgslsmith_f_op_f32(-var_0.a.x), var_0.c.c.x, _wgslsmith_f_op_f32(step(var_0.a.x, -1000f))), _wgslsmith_f_op_vec4_f32(var_0.b.a.c + _wgslsmith_f_op_vec4_f32(sign(var_0.b.a.c)))), global1.x)));
    global0 = array<vec2<bool>, 5>();
    var var_2 = min(vec4<u32>(var_1.c.a.x, var_0.c.d.x, u_input.b.x, var_1.a.a.x), countOneBits(var_0.b.a.d));
    global2 = array<Struct_3, 31>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec2<bool>(global3.x, !select(true, all(vec4<bool>(true, true, global1.x, false)), global1.x != global1.x)), global0[_wgslsmith_index_u32(u_input.b.x, 5u)], !global3.xx);
    global1 = select(vec2<bool>(true, global3.x), select(!(!select(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], vec2<bool>(false, false), global0[_wgslsmith_index_u32(4294967295u, 5u)])), vec2<bool>(true, false), false), global3.zw);
    let var_0 = func_1(-2147483647i);
    global2 = array<Struct_3, 31>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.b.x))) * _wgslsmith_f_op_f32(f32(-1f) * -431f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-950f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b.x)));
    let var_2 = vec2<i32>(reverseBits(abs(max(max(u_input.c, u_input.c), min(u_input.c, u_input.c)))), -10550i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(max(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(-15763i, var_2.x, 2147483647i, -25823i), vec4<i32>(u_input.c, -3931i, var_2.x, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 40709i, 0i, var_2.x), vec4<i32>(29472i, u_input.c, 0i, 1i)), select(vec4<i32>(23505i, 41248i, u_input.c, 52651i), vec4<i32>(var_2.x, -1i, var_2.x, 1i), vec4<bool>(global3.x, global3.x, global1.x, global1.x))), -_wgslsmith_sub_vec4_i32(vec4<i32>(22415i, 0i, -2147483647i, -1i), vec4<i32>(var_2.x, u_input.c, u_input.c, var_2.x))), vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -1i, u_input.c), vec3<i32>(0i, var_2.x, var_2.x)), -vec3<i32>(2147483647i, u_input.c, -33486i)), 45698i, 2147483647i)), -(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, var_2.x, -2147483647i), vec3<i32>(33366i, 0i, var_2.x)), vec3<i32>(u_input.c, var_2.x, var_2.x) & vec3<i32>(var_2.x, u_input.c, u_input.c)) << ((_wgslsmith_add_vec3_u32(vec3<u32>(74460u, var_0.c.a.x, 4294967295u), vec3<u32>(1u, u_input.a, var_0.a.a.x)) & var_0.a.a.xyx) % vec3<u32>(32u))), u_input.a);
}

