struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
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

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec4<u32>(46559u, 10084u, 1u, 0u), 151f, vec2<i32>(-16569i, 3261i), vec2<f32>(885f, -1817f)), Struct_1(vec4<u32>(1u, 26588u, 1u, 4294967295u), -314f, vec2<i32>(2147483647i, -1i), vec2<f32>(788f, -263f)), Struct_1(vec4<u32>(4294967295u, 61269u, 25796u, 5116u), 841f, vec2<i32>(0i, 275i), vec2<f32>(1393f, 1000f))), Struct_2(Struct_1(vec4<u32>(0u, 51487u, 55911u, 47486u), -133f, vec2<i32>(-1i, 1i), vec2<f32>(1000f, -2312f)), Struct_1(vec4<u32>(0u, 0u, 1u, 25772u), 1201f, vec2<i32>(36730i, -32188i), vec2<f32>(-758f, -1225f)), Struct_1(vec4<u32>(18225u, 44888u, 1u, 0u), 493f, vec2<i32>(30243i, i32(-2147483648)), vec2<f32>(233f, -122f))), Struct_2(Struct_1(vec4<u32>(82130u, 0u, 0u, 4294967295u), 1169f, vec2<i32>(0i, -31635i), vec2<f32>(-567f, 1587f)), Struct_1(vec4<u32>(65971u, 0u, 78272u, 0u), -1361f, vec2<i32>(-45356i, -16466i), vec2<f32>(-1010f, -794f)), Struct_1(vec4<u32>(31212u, 0u, 0u, 23487u), 564f, vec2<i32>(-2009i, 41268i), vec2<f32>(-2261f, 1000f))), Struct_2(Struct_1(vec4<u32>(1u, 14687u, 6623u, 0u), -390f, vec2<i32>(13224i, 76945i), vec2<f32>(-884f, 935f)), Struct_1(vec4<u32>(33700u, 95325u, 4294967295u, 4294967295u), 1898f, vec2<i32>(-23826i, 42242i), vec2<f32>(727f, 641f)), Struct_1(vec4<u32>(67127u, 1u, 4294967295u, 23533u), 304f, vec2<i32>(58420i, 44572i), vec2<f32>(1514f, 945f))), Struct_2(Struct_1(vec4<u32>(52018u, 14252u, 4294967295u, 0u), 389f, vec2<i32>(1i, 9667i), vec2<f32>(1572f, 488f)), Struct_1(vec4<u32>(0u, 31169u, 28021u, 98099u), 1657f, vec2<i32>(-1i, -3299i), vec2<f32>(264f, 510f)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 2172u), -1053f, vec2<i32>(i32(-2147483648), -453i), vec2<f32>(-1048f, -1462f))), Struct_2(Struct_1(vec4<u32>(26254u, 14668u, 0u, 0u), -555f, vec2<i32>(50688i, -1i), vec2<f32>(1095f, -866f)), Struct_1(vec4<u32>(0u, 22722u, 21925u, 0u), 1605f, vec2<i32>(1i, 2147483647i), vec2<f32>(-346f, -111f)), Struct_1(vec4<u32>(5450u, 0u, 0u, 101561u), 1808f, vec2<i32>(0i, 0i), vec2<f32>(1041f, 1267f))), Struct_2(Struct_1(vec4<u32>(32755u, 4294967295u, 66015u, 1u), -559f, vec2<i32>(i32(-2147483648), 1i), vec2<f32>(-1157f, 409f)), Struct_1(vec4<u32>(49354u, 34287u, 133020u, 51101u), 1043f, vec2<i32>(2147483647i, -38359i), vec2<f32>(1068f, -1674f)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 6695u), 869f, vec2<i32>(-33109i, 0i), vec2<f32>(-1838f, -750f))), Struct_2(Struct_1(vec4<u32>(0u, 1u, 58519u, 27452u), 677f, vec2<i32>(-9783i, -12997i), vec2<f32>(643f, -1149f)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 3272u, 1u), 441f, vec2<i32>(66583i, 2147483647i), vec2<f32>(-382f, -1000f)), Struct_1(vec4<u32>(21405u, 1u, 13061u, 27672u), -2342f, vec2<i32>(34554i, 2147483647i), vec2<f32>(474f, -226f))), Struct_2(Struct_1(vec4<u32>(23958u, 0u, 38340u, 0u), 218f, vec2<i32>(2147483647i, -60960i), vec2<f32>(-431f, 190f)), Struct_1(vec4<u32>(33517u, 6764u, 1u, 0u), -533f, vec2<i32>(-40385i, 25764i), vec2<f32>(-1047f, 1575f)), Struct_1(vec4<u32>(4294967295u, 51273u, 54667u, 39559u), 1659f, vec2<i32>(11573i, 13171i), vec2<f32>(1655f, 1329f))), Struct_2(Struct_1(vec4<u32>(0u, 14904u, 44373u, 15583u), -817f, vec2<i32>(-24828i, -1i), vec2<f32>(614f, -371f)), Struct_1(vec4<u32>(24383u, 0u, 84136u, 4682u), 1497f, vec2<i32>(-1i, -54654i), vec2<f32>(-1063f, 142f)), Struct_1(vec4<u32>(1u, 4294967295u, 73302u, 12887u), 1860f, vec2<i32>(-11543i, 3386i), vec2<f32>(2763f, -1659f))), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 40109u), 1974f, vec2<i32>(13275i, i32(-2147483648)), vec2<f32>(-603f, -1730f)), Struct_1(vec4<u32>(4294967295u, 43889u, 4294967295u, 1u), -757f, vec2<i32>(1i, 8507i), vec2<f32>(536f, -445f)), Struct_1(vec4<u32>(9087u, 33636u, 1u, 14923u), -999f, vec2<i32>(1i, 31818i), vec2<f32>(-1000f, 1597f))), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 3981u, 1u), 1233f, vec2<i32>(16195i, -1i), vec2<f32>(-856f, -284f)), Struct_1(vec4<u32>(0u, 26789u, 1u, 0u), 654f, vec2<i32>(-1i, 54998i), vec2<f32>(361f, -452f)), Struct_1(vec4<u32>(0u, 0u, 0u, 4294967295u), -717f, vec2<i32>(i32(-2147483648), -27363i), vec2<f32>(-116f, -320f))), Struct_2(Struct_1(vec4<u32>(4294967295u, 11352u, 3457u, 4294967295u), 1661f, vec2<i32>(-37002i, 0i), vec2<f32>(483f, 312f)), Struct_1(vec4<u32>(9477u, 1u, 38588u, 33184u), -639f, vec2<i32>(15266i, -55037i), vec2<f32>(-1375f, 314f)), Struct_1(vec4<u32>(32146u, 0u, 16397u, 58304u), -595f, vec2<i32>(-1i, -16294i), vec2<f32>(1114f, -1098f))), Struct_2(Struct_1(vec4<u32>(63034u, 34426u, 70056u, 1u), 2005f, vec2<i32>(-11160i, 28754i), vec2<f32>(-1436f, -325f)), Struct_1(vec4<u32>(42409u, 0u, 1u, 499u), 1095f, vec2<i32>(4812i, -12279i), vec2<f32>(-501f, 1921f)), Struct_1(vec4<u32>(86796u, 13939u, 24267u, 23469u), 1246f, vec2<i32>(44883i, -25542i), vec2<f32>(762f, 835f))));

var<private> global1: array<f32, 31>;

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec2<f32>(378f, 751f), Struct_2(Struct_1(vec4<u32>(0u, 0u, 56431u, 0u), -1000f, vec2<i32>(6915i, -29703i), vec2<f32>(-589f, 958f)), Struct_1(vec4<u32>(43469u, 0u, 1u, 94471u), 1080f, vec2<i32>(-9076i, -1683i), vec2<f32>(-167f, -374f)), Struct_1(vec4<u32>(24687u, 4294967295u, 22441u, 56608u), 1000f, vec2<i32>(-27411i, -1i), vec2<f32>(733f, 747f))), vec2<u32>(49302u, 1u), vec4<u32>(0u, 0u, 4294967295u, 58542u)), Struct_3(vec2<f32>(1997f, -1965f), Struct_2(Struct_1(vec4<u32>(64029u, 48206u, 0u, 16959u), -1896f, vec2<i32>(-1i, 2944i), vec2<f32>(2188f, 1216f)), Struct_1(vec4<u32>(55783u, 59244u, 7736u, 42707u), -1151f, vec2<i32>(-65557i, -2550i), vec2<f32>(540f, 363f)), Struct_1(vec4<u32>(0u, 1u, 1u, 949u), -691f, vec2<i32>(i32(-2147483648), 1i), vec2<f32>(455f, 223f))), vec2<u32>(1u, 41506u), vec4<u32>(3108u, 4294967295u, 4294967295u, 4294967295u)), Struct_3(vec2<f32>(-1683f, 1491f), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 65758u, 1u), -310f, vec2<i32>(2147483647i, -32367i), vec2<f32>(631f, 545f)), Struct_1(vec4<u32>(29764u, 80146u, 273u, 26359u), 305f, vec2<i32>(2147483647i, i32(-2147483648)), vec2<f32>(1286f, 1127f)), Struct_1(vec4<u32>(0u, 46924u, 6811u, 4294967295u), -895f, vec2<i32>(i32(-2147483648), 1i), vec2<f32>(1003f, 2525f))), vec2<u32>(20032u, 15505u), vec4<u32>(41098u, 48309u, 25869u, 40932u)), Struct_3(vec2<f32>(1025f, -974f), Struct_2(Struct_1(vec4<u32>(9511u, 0u, 19279u, 17185u), 643f, vec2<i32>(-30263i, 30447i), vec2<f32>(1166f, -1274f)), Struct_1(vec4<u32>(4294967295u, 37174u, 4225u, 19871u), 1010f, vec2<i32>(12888i, -1i), vec2<f32>(418f, -469f)), Struct_1(vec4<u32>(4294967295u, 0u, 19250u, 4294967295u), -768f, vec2<i32>(-22802i, -57954i), vec2<f32>(897f, 2335f))), vec2<u32>(54178u, 24617u), vec4<u32>(1u, 1u, 4294967295u, 17862u)), Struct_3(vec2<f32>(-1000f, 1391f), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 87145u, 28982u), 773f, vec2<i32>(i32(-2147483648), 0i), vec2<f32>(802f, -387f)), Struct_1(vec4<u32>(26005u, 1u, 89178u, 4294967295u), 111f, vec2<i32>(16140i, 0i), vec2<f32>(-1709f, -707f)), Struct_1(vec4<u32>(1u, 11545u, 34608u, 37863u), -1155f, vec2<i32>(2147483647i, 0i), vec2<f32>(576f, -127f))), vec2<u32>(11444u, 0u), vec4<u32>(0u, 55568u, 25610u, 0u)), Struct_3(vec2<f32>(-753f, 444f), Struct_2(Struct_1(vec4<u32>(24216u, 1u, 1u, 1u), 2921f, vec2<i32>(-8196i, 458i), vec2<f32>(-1000f, 482f)), Struct_1(vec4<u32>(23630u, 1u, 63205u, 99189u), 1639f, vec2<i32>(-31555i, -63116i), vec2<f32>(-234f, 1210f)), Struct_1(vec4<u32>(4294967295u, 21933u, 4294967295u, 4294967295u), 1317f, vec2<i32>(1i, 52933i), vec2<f32>(-1541f, -721f))), vec2<u32>(27188u, 37448u), vec4<u32>(20705u, 4294967295u, 1u, 1u)), Struct_3(vec2<f32>(1149f, -1077f), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 16586u, 0u), -419f, vec2<i32>(-1i, 1i), vec2<f32>(-530f, 585f)), Struct_1(vec4<u32>(1u, 1u, 26495u, 20049u), -862f, vec2<i32>(16621i, -39725i), vec2<f32>(-287f, 580f)), Struct_1(vec4<u32>(0u, 105740u, 6570u, 11063u), -583f, vec2<i32>(13824i, 10112i), vec2<f32>(-2224f, 686f))), vec2<u32>(7915u, 16439u), vec4<u32>(1u, 30520u, 880u, 27842u)), Struct_3(vec2<f32>(-470f, 597f), Struct_2(Struct_1(vec4<u32>(9368u, 1u, 1u, 0u), -650f, vec2<i32>(-32014i, -42637i), vec2<f32>(459f, -632f)), Struct_1(vec4<u32>(0u, 11990u, 1u, 0u), 836f, vec2<i32>(26662i, 42397i), vec2<f32>(470f, 1809f)), Struct_1(vec4<u32>(30397u, 0u, 1u, 74110u), 1000f, vec2<i32>(1i, -13491i), vec2<f32>(382f, 490f))), vec2<u32>(0u, 0u), vec4<u32>(4294967295u, 119206u, 4294967295u, 61850u)), Struct_3(vec2<f32>(-1831f, 851f), Struct_2(Struct_1(vec4<u32>(4294967295u, 4311u, 4294967295u, 20081u), 163f, vec2<i32>(-3068i, -1i), vec2<f32>(-686f, -354f)), Struct_1(vec4<u32>(0u, 4294967295u, 9210u, 0u), 781f, vec2<i32>(24005i, -74513i), vec2<f32>(-729f, -379f)), Struct_1(vec4<u32>(12212u, 1u, 30480u, 18495u), -122f, vec2<i32>(i32(-2147483648), 2147483647i), vec2<f32>(1276f, 2223f))), vec2<u32>(37259u, 1u), vec4<u32>(27988u, 34878u, 4294967295u, 14918u)), Struct_3(vec2<f32>(-652f, -493f), Struct_2(Struct_1(vec4<u32>(37423u, 41343u, 1u, 5526u), 1000f, vec2<i32>(36434i, -1i), vec2<f32>(-448f, 174f)), Struct_1(vec4<u32>(1u, 1u, 52118u, 0u), -980f, vec2<i32>(i32(-2147483648), 3419i), vec2<f32>(-1507f, -1812f)), Struct_1(vec4<u32>(45375u, 2771u, 4294967295u, 1460u), -1188f, vec2<i32>(-8940i, -17449i), vec2<f32>(1284f, -2747f))), vec2<u32>(4294967295u, 49254u), vec4<u32>(4294967295u, 15414u, 82861u, 0u)), Struct_3(vec2<f32>(329f, -1992f), Struct_2(Struct_1(vec4<u32>(13396u, 0u, 5056u, 4294967295u), -1000f, vec2<i32>(-1i, 9178i), vec2<f32>(-1059f, 1443f)), Struct_1(vec4<u32>(33766u, 122995u, 71280u, 1u), -1000f, vec2<i32>(-1i, -1i), vec2<f32>(-1506f, 1020f)), Struct_1(vec4<u32>(57987u, 55452u, 4294967295u, 9057u), 1000f, vec2<i32>(-98974i, -3737i), vec2<f32>(-1140f, 750f))), vec2<u32>(41393u, 34926u), vec4<u32>(4294967295u, 16396u, 1u, 1u)), Struct_3(vec2<f32>(1000f, -1896f), Struct_2(Struct_1(vec4<u32>(20191u, 6963u, 0u, 1u), 1518f, vec2<i32>(1i, -1i), vec2<f32>(537f, 2506f)), Struct_1(vec4<u32>(20537u, 79549u, 17833u, 4294967295u), 525f, vec2<i32>(22250i, -1i), vec2<f32>(-949f, -847f)), Struct_1(vec4<u32>(85889u, 0u, 42136u, 0u), 2654f, vec2<i32>(44216i, -1i), vec2<f32>(1105f, 304f))), vec2<u32>(1u, 1u), vec4<u32>(27165u, 1u, 53790u, 0u)), Struct_3(vec2<f32>(-1000f, -236f), Struct_2(Struct_1(vec4<u32>(0u, 119867u, 10269u, 9605u), 227f, vec2<i32>(0i, -4746i), vec2<f32>(1239f, -172f)), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), -1000f, vec2<i32>(-34859i, -1i), vec2<f32>(1261f, -2115f)), Struct_1(vec4<u32>(35535u, 4294967295u, 1u, 1u), 1008f, vec2<i32>(-5227i, 1i), vec2<f32>(661f, -150f))), vec2<u32>(16210u, 2836u), vec4<u32>(4294967295u, 1u, 66717u, 0u)), Struct_3(vec2<f32>(1590f, -1109f), Struct_2(Struct_1(vec4<u32>(25786u, 4797u, 0u, 0u), -1496f, vec2<i32>(2147483647i, -19509i), vec2<f32>(-286f, -265f)), Struct_1(vec4<u32>(1u, 0u, 19891u, 0u), 396f, vec2<i32>(-13378i, -1i), vec2<f32>(2297f, -1297f)), Struct_1(vec4<u32>(112493u, 15532u, 1u, 0u), -1328f, vec2<i32>(2147483647i, 53743i), vec2<f32>(-323f, -367f))), vec2<u32>(6027u, 0u), vec4<u32>(1u, 3657u, 4294967295u, 84693u)), Struct_3(vec2<f32>(-1200f, -510f), Struct_2(Struct_1(vec4<u32>(66545u, 0u, 56037u, 36733u), 517f, vec2<i32>(1i, 41884i), vec2<f32>(828f, -753f)), Struct_1(vec4<u32>(70203u, 4294967295u, 4294967295u, 0u), 210f, vec2<i32>(-5170i, -1i), vec2<f32>(1719f, 859f)), Struct_1(vec4<u32>(0u, 4294967295u, 4185u, 0u), 1000f, vec2<i32>(-3788i, i32(-2147483648)), vec2<f32>(-247f, 1919f))), vec2<u32>(54487u, 1u), vec4<u32>(52785u, 25439u, 1u, 38572u)), Struct_3(vec2<f32>(-1132f, -1491f), Struct_2(Struct_1(vec4<u32>(94952u, 55085u, 0u, 0u), 118f, vec2<i32>(2147483647i, 36320i), vec2<f32>(-1523f, -2332f)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 85191u, 11119u), 434f, vec2<i32>(i32(-2147483648), 3899i), vec2<f32>(-1953f, -1000f)), Struct_1(vec4<u32>(0u, 8676u, 7169u, 27342u), 929f, vec2<i32>(2147483647i, 1i), vec2<f32>(623f, 1000f))), vec2<u32>(51266u, 6987u), vec4<u32>(0u, 32702u, 10036u, 71823u)), Struct_3(vec2<f32>(-658f, 1000f), Struct_2(Struct_1(vec4<u32>(15092u, 0u, 4294967295u, 0u), 456f, vec2<i32>(1i, 1i), vec2<f32>(-727f, -389f)), Struct_1(vec4<u32>(54717u, 48247u, 1u, 18250u), 400f, vec2<i32>(0i, 2147483647i), vec2<f32>(1001f, 2026f)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), 395f, vec2<i32>(i32(-2147483648), 2147483647i), vec2<f32>(1404f, -1331f))), vec2<u32>(30243u, 1u), vec4<u32>(1u, 69147u, 29318u, 1203u)), Struct_3(vec2<f32>(-444f, -329f), Struct_2(Struct_1(vec4<u32>(0u, 18882u, 0u, 4294967295u), 1450f, vec2<i32>(-11302i, 1i), vec2<f32>(483f, -309f)), Struct_1(vec4<u32>(1u, 70341u, 54125u, 43351u), -1324f, vec2<i32>(2147483647i, 32751i), vec2<f32>(-234f, -156f)), Struct_1(vec4<u32>(45086u, 4294967295u, 0u, 40750u), -910f, vec2<i32>(2147483647i, -16030i), vec2<f32>(-1117f, -373f))), vec2<u32>(3851u, 0u), vec4<u32>(4294967295u, 4294967295u, 0u, 32175u)), Struct_3(vec2<f32>(-645f, 2551f), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 18918u, 49116u), 592f, vec2<i32>(8126i, 19709i), vec2<f32>(-1551f, -231f)), Struct_1(vec4<u32>(0u, 0u, 20043u, 4294967295u), -1032f, vec2<i32>(44393i, 34260i), vec2<f32>(633f, -410f)), Struct_1(vec4<u32>(1u, 19409u, 4294967295u, 4294967295u), 977f, vec2<i32>(-7743i, i32(-2147483648)), vec2<f32>(-2090f, 237f))), vec2<u32>(1u, 71318u), vec4<u32>(4792u, 716u, 0u, 71122u)), Struct_3(vec2<f32>(-1766f, -712f), Struct_2(Struct_1(vec4<u32>(0u, 0u, 1u, 1u), 871f, vec2<i32>(1i, 0i), vec2<f32>(-283f, -480f)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1173u, 88150u), -660f, vec2<i32>(i32(-2147483648), -2136i), vec2<f32>(580f, 519f)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 18674u), 231f, vec2<i32>(0i, -1467i), vec2<f32>(1000f, 1400f))), vec2<u32>(4294967295u, 4294967295u), vec4<u32>(370u, 0u, 0u, 4294967295u)), Struct_3(vec2<f32>(302f, -138f), Struct_2(Struct_1(vec4<u32>(852u, 48742u, 50133u, 56820u), -672f, vec2<i32>(-677i, 0i), vec2<f32>(1000f, -710f)), Struct_1(vec4<u32>(5873u, 0u, 33440u, 30448u), 835f, vec2<i32>(2147483647i, -30736i), vec2<f32>(710f, 223f)), Struct_1(vec4<u32>(4294967295u, 27848u, 0u, 0u), -1349f, vec2<i32>(-1i, -7435i), vec2<f32>(-1358f, 741f))), vec2<u32>(4294967295u, 61020u), vec4<u32>(1u, 44436u, 14000u, 27993u)), Struct_3(vec2<f32>(266f, 1907f), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 49979u, 36874u), -522f, vec2<i32>(i32(-2147483648), 1i), vec2<f32>(1252f, 1000f)), Struct_1(vec4<u32>(36675u, 64644u, 1u, 49134u), 1968f, vec2<i32>(1i, 34957i), vec2<f32>(739f, 189f)), Struct_1(vec4<u32>(0u, 0u, 29010u, 4294967295u), -252f, vec2<i32>(-40275i, -60730i), vec2<f32>(-786f, -1249f))), vec2<u32>(31338u, 20673u), vec4<u32>(1u, 38728u, 4294967295u, 1u)), Struct_3(vec2<f32>(-428f, -403f), Struct_2(Struct_1(vec4<u32>(0u, 88539u, 4294967295u, 0u), -446f, vec2<i32>(-128i, -1i), vec2<f32>(-815f, -1027f)), Struct_1(vec4<u32>(33742u, 4294967295u, 49748u, 1u), -1160f, vec2<i32>(0i, 39246i), vec2<f32>(-806f, -459f)), Struct_1(vec4<u32>(4294967295u, 0u, 54522u, 56626u), 877f, vec2<i32>(i32(-2147483648), 0i), vec2<f32>(151f, -112f))), vec2<u32>(27297u, 4294967295u), vec4<u32>(3840u, 63908u, 94315u, 1u)), Struct_3(vec2<f32>(821f, 1446f), Struct_2(Struct_1(vec4<u32>(5809u, 75069u, 0u, 31080u), 315f, vec2<i32>(2147483647i, 34065i), vec2<f32>(1592f, 328f)), Struct_1(vec4<u32>(0u, 79339u, 91851u, 53387u), -959f, vec2<i32>(38415i, 13840i), vec2<f32>(1431f, -229f)), Struct_1(vec4<u32>(9188u, 0u, 31837u, 0u), -1880f, vec2<i32>(-18252i, 1i), vec2<f32>(-556f, -1160f))), vec2<u32>(58105u, 70464u), vec4<u32>(23610u, 4294967295u, 34646u, 1u)), Struct_3(vec2<f32>(-262f, -954f), Struct_2(Struct_1(vec4<u32>(0u, 9185u, 63939u, 1u), 628f, vec2<i32>(-1i, 35885i), vec2<f32>(1490f, 276f)), Struct_1(vec4<u32>(37211u, 32950u, 58428u, 13750u), 1058f, vec2<i32>(17646i, -79795i), vec2<f32>(-666f, -325f)), Struct_1(vec4<u32>(35806u, 4294967295u, 4294967295u, 4294967295u), -664f, vec2<i32>(6134i, 50547i), vec2<f32>(-1000f, -1443f))), vec2<u32>(38900u, 28959u), vec4<u32>(57445u, 1u, 47584u, 1u)), Struct_3(vec2<f32>(-1189f, 461f), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 7933u), -510f, vec2<i32>(39540i, 53502i), vec2<f32>(-1517f, 598f)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 1u), 1000f, vec2<i32>(i32(-2147483648), 60046i), vec2<f32>(1000f, 1662f)), Struct_1(vec4<u32>(7524u, 0u, 25830u, 0u), 179f, vec2<i32>(i32(-2147483648), 1i), vec2<f32>(-690f, 112f))), vec2<u32>(37712u, 0u), vec4<u32>(16914u, 98553u, 62159u, 4294967295u)), Struct_3(vec2<f32>(332f, 1908f), Struct_2(Struct_1(vec4<u32>(0u, 19978u, 1u, 12966u), -1000f, vec2<i32>(0i, 0i), vec2<f32>(-877f, 805f)), Struct_1(vec4<u32>(44189u, 0u, 9989u, 0u), -882f, vec2<i32>(1i, -7289i), vec2<f32>(-498f, 415f)), Struct_1(vec4<u32>(3731u, 20091u, 1u, 1u), 1129f, vec2<i32>(i32(-2147483648), 12574i), vec2<f32>(1413f, -579f))), vec2<u32>(45025u, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)), Struct_3(vec2<f32>(-314f, 1461f), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 1u, 79754u), 1050f, vec2<i32>(-1i, i32(-2147483648)), vec2<f32>(-1227f, 1086f)), Struct_1(vec4<u32>(14316u, 25609u, 0u, 4294967295u), -1026f, vec2<i32>(69116i, 0i), vec2<f32>(1122f, 377f)), Struct_1(vec4<u32>(1u, 49873u, 37869u, 4294967295u), 343f, vec2<i32>(-50526i, -1637i), vec2<f32>(-165f, 244f))), vec2<u32>(4294967295u, 0u), vec4<u32>(0u, 0u, 7698u, 4294967295u)));

var<private> global3: vec3<u32> = vec3<u32>(30492u, 78192u, 25765u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: i32) -> vec3<f32> {
    global0 = array<Struct_2, 14>();
    let var_0 = 28119i;
    let var_1 = global2[_wgslsmith_index_u32(u_input.a, 28u)];
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(1124f)), -1000f, arg_0.x);
    global1 = array<f32, 31>();
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2)), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, var_2.x, true))), _wgslsmith_f_op_f32(698f - arg_0.x)))));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<Struct_2, 14>();
    var var_0 = vec4<i32>(u_input.b.x >> (abs(~firstLeadingBit(112272u)) % 32u), reverseBits(0i), u_input.d, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, u_input.c.x)), u_input.b.x) << (~_wgslsmith_mod_u32(global3.x, ~14122u) % 32u));
    let var_1 = Struct_1(reverseBits(abs(~vec4<u32>(u_input.a, 1u, 0u, arg_0))) >> (_wgslsmith_clamp_vec4_u32(max(vec4<u32>(1495u, arg_0, u_input.a, arg_0) ^ vec4<u32>(arg_0, arg_0, 1u, global3.x), ~vec4<u32>(global3.x, 29432u, global3.x, 21551u)), vec4<u32>(arg_0, _wgslsmith_mod_u32(39579u, u_input.a), _wgslsmith_dot_vec2_u32(global3.zx, global3.yx), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 15773u, u_input.a), vec3<u32>(global3.x, arg_0, 1u))), vec4<u32>(_wgslsmith_mult_u32(u_input.a, global3.x), 4294967295u, ~u_input.a, firstTrailingBit(1u))) % vec4<u32>(32u)), 1528f, u_input.b.zx, vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 31u)], global1[_wgslsmith_index_u32(52608u, 31u)]));
    global2 = array<Struct_3, 28>();
    let var_2 = false;
    return 557f;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(func_3(firstLeadingBit(0u))), global1[_wgslsmith_index_u32(~(global3.x | global3.x), 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1031f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(34618u)), 31u)], _wgslsmith_f_op_f32(round(-854f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1865f - 225f))))));
    let var_1 = all(vec4<bool>(true, _wgslsmith_clamp_u32(u_input.a, 4294967295u, ~1u) <= abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 62796u, 0u, 4294967295u), vec4<u32>(u_input.a, 42763u, 0u, arg_1))), !any(vec4<bool>(true, false, false, false)) | true, true));
    var var_2 = Struct_1(firstLeadingBit(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, 0u, global3.x, global3.x)), ~countOneBits(vec4<u32>(17864u, 4294967295u, 0u, global3.x)), vec4<u32>(_wgslsmith_mult_u32(arg_1, u_input.a), u_input.a, _wgslsmith_sub_u32(4294967295u, 4294967295u), 17536u))), global1[_wgslsmith_index_u32(arg_1, 31u)], ~(~arg_0), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 31u)]), _wgslsmith_f_op_f32(f32(-1f) * -1713f)), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global3.x, 31u)]))))));
    let var_3 = global2[_wgslsmith_index_u32(var_2.a.x, 28u)];
    var var_4 = global0[_wgslsmith_index_u32(0u, 14u)];
    return vec3<u32>(105843u, max(~abs(_wgslsmith_mod_u32(var_2.a.x, var_3.d.x)), ~(var_3.c.x << (15923u % 32u))), _wgslsmith_clamp_u32(~14083u << ((0u & ~var_3.b.a.a.x) % 32u), _wgslsmith_sub_u32(u_input.a, min(1u, arg_1)), 14949u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-341f, 392f, global1[_wgslsmith_index_u32(~(~0u), 31u)]))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1000f + -2208f), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(101977u, 31u)])), _wgslsmith_f_op_f32(f32(-1f) * -303f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-285f * 517f) - _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global3.x, 31u)], global1[_wgslsmith_index_u32(global3.x, 31u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(922f)))), -713f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 31u)]))) * 725f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~global3.x, 31u)])), _wgslsmith_f_op_f32(-754f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1000f, -317f)))))), vec2<u32>(~u_input.a, ~(~(~global3.x))), -1i));
    let var_2 = _wgslsmith_add_i32(u_input.b.x, -u_input.c.x);
    var var_3 = -451f;
    let var_4 = _wgslsmith_mod_vec3_u32(func_2(vec2<i32>(-30476i, min(firstLeadingBit(u_input.b.x), -u_input.d)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global3.x, 0u, 4894u), vec4<u32>(0u, 33069u, 4294967295u, 4294967295u)), ~_wgslsmith_sub_vec2_i32(~u_input.c.xx, vec2<i32>(var_2, 2147483647i))), _wgslsmith_mod_vec3_u32(vec3<u32>(5876u, ~(~u_input.a), ~(~u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(~0u, _wgslsmith_div_u32(4294967295u, global3.x), global3.x ^ u_input.a), countOneBits(vec3<u32>(67701u, u_input.a, 65198u)))));
    var var_5 = 2147483647i;
    global3 = _wgslsmith_mod_vec3_u32(min(_wgslsmith_add_vec3_u32(firstTrailingBit(var_4), ~vec3<u32>(var_4.x, var_4.x, 24049u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, var_4.x), _wgslsmith_clamp_vec3_u32(var_4, var_4, vec3<u32>(0u, u_input.a, 33995u)))) & (vec3<u32>(44929u, var_4.x, 2637u >> (0u % 32u)) ^ vec3<u32>(var_4.x, global3.x, var_4.x ^ var_4.x)), _wgslsmith_mod_vec3_u32(~var_4 << (var_4 % vec3<u32>(32u)), ~vec3<u32>(global3.x, global3.x, _wgslsmith_mult_u32(4294967295u, var_4.x))));
    global3 = ~vec3<u32>(u_input.a ^ _wgslsmith_clamp_u32(~var_4.x, 4294967295u, ~global3.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(reverseBits(var_4.x), ~53406u), ~firstTrailingBit(var_4.x)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(351f);
}

