struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-1581f, 1198f, -2368f, 899f), vec4<f32>(-180f, -648f, -1000f, 1087f), vec4<f32>(205f, 974f, 233f, 801f), vec4<f32>(-1021f, -1102f, 1946f, -527f), vec4<f32>(754f, 776f, 682f, -1292f), vec4<f32>(598f, 160f, -444f, -1916f), vec4<f32>(353f, -711f, -1000f, 2198f));

var<private> global2: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(Struct_3(vec2<bool>(false, false)), Struct_2(vec3<f32>(-1301f, 749f, -760f), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(0i, 1i, -17100i, i32(-2147483648)), 1i, vec4<f32>(482f, -760f, 511f, 382f)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-1i, -1i, 7098i, 1203i), -55974i, vec4<f32>(-2085f, -640f, -678f, -1431f))), 1146f, Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(2065i, -1i, -15450i, -23269i), -26059i, vec4<f32>(-2156f, -2222f, -1213f, -278f)), vec2<bool>(true, false)), Struct_4(Struct_3(vec2<bool>(false, true)), Struct_2(vec3<f32>(1179f, -349f, 1763f), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(0i, -26845i, -3265i, -43299i), -9216i, vec4<f32>(1470f, 1656f, 1515f, 1000f)), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(-1i, -1i, 1i, 2147483647i), 0i, vec4<f32>(2238f, 2455f, 1152f, -1000f))), 1176f, Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(4214i, -8187i, -1i, -43501i), 13746i, vec4<f32>(1000f, -344f, 371f, -1000f)), vec2<bool>(true, false)), Struct_4(Struct_3(vec2<bool>(false, true)), Struct_2(vec3<f32>(1867f, -698f, 1594f), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-44848i, -1i, 20664i, 0i), -1i, vec4<f32>(826f, 447f, -425f, 759f)), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(16908i, -1i, -1i, -14932i), 2147483647i, vec4<f32>(-290f, 1034f, -1857f, 141f))), 657f, Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(45764i, -62387i, 196i, 0i), 3122i, vec4<f32>(704f, 686f, 311f, -736f)), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<bool>(true, true)), Struct_2(vec3<f32>(-2035f, -547f, 784f), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(1215i, -24986i, 97684i, -1i), 1i, vec4<f32>(-708f, 445f, -410f, 1178f)), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(1i, 1i, 39584i, -14019i), 20372i, vec4<f32>(-2633f, 597f, -1020f, -1388f))), -1119f, Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-35633i, 33650i, -1i, 2147483647i), 0i, vec4<f32>(908f, 215f, 1338f, 1044f)), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<bool>(false, true)), Struct_2(vec3<f32>(-946f, 1090f, 669f), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(i32(-2147483648), -1i, 2147483647i, -46100i), -1i, vec4<f32>(673f, 831f, 1440f, -658f)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-1i, -38467i, 32483i, 26931i), 36555i, vec4<f32>(292f, -343f, -216f, -1163f))), 2161f, Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(23455i, 2147483647i, 38831i, 0i), 25141i, vec4<f32>(1487f, -1345f, 2634f, 1900f)), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<bool>(false, true)), Struct_2(vec3<f32>(457f, 139f, -452f), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(i32(-2147483648), 62579i, 0i, -1i), -1i, vec4<f32>(-1496f, -654f, 1962f, 1014f)), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-12520i, -6744i, -43480i, -38236i), 24194i, vec4<f32>(2469f, -583f, -1000f, 876f))), 255f, Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(16464i, -12474i, -88i, 1i), i32(-2147483648), vec4<f32>(-1430f, -432f, -1095f, 827f)), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<bool>(false, false)), Struct_2(vec3<f32>(2613f, 938f, -195f), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(0i, -10588i, -1i, 17665i), i32(-2147483648), vec4<f32>(2890f, -303f, 202f, -431f)), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-1279i, -1365i, -1i, -28095i), -43457i, vec4<f32>(-112f, -1000f, 512f, 1737f))), -1129f, Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(49467i, 0i, -1i, i32(-2147483648)), i32(-2147483648), vec4<f32>(-591f, -580f, 268f, 422f)), vec2<bool>(false, true)), Struct_4(Struct_3(vec2<bool>(false, false)), Struct_2(vec3<f32>(191f, 602f, -443f), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(53835i, -1i, 59837i, 82833i), 1i, vec4<f32>(721f, -1000f, -1234f, -815f)), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(1i, 59466i, 1i, -40951i), -8041i, vec4<f32>(1000f, -239f, -219f, 1000f))), 423f, Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(2147483647i, 23088i, 18623i, -3748i), -35036i, vec4<f32>(1027f, 1016f, 2234f, 317f)), vec2<bool>(true, false)), Struct_4(Struct_3(vec2<bool>(true, false)), Struct_2(vec3<f32>(1315f, 361f, 720f), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-5762i, -13565i, -1i, -26385i), -1i, vec4<f32>(-382f, 357f, -376f, -1212f)), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(9321i, -23118i, 9772i, i32(-2147483648)), i32(-2147483648), vec4<f32>(-116f, -717f, 1018f, 931f))), 1000f, Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-5308i, -46647i, -1i, 0i), i32(-2147483648), vec4<f32>(-1531f, 146f, 325f, -733f)), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<bool>(true, true)), Struct_2(vec3<f32>(-1356f, 1178f, 236f), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(7090i, 56569i, 2147483647i, i32(-2147483648)), -46634i, vec4<f32>(326f, 213f, -1495f, 473f)), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-50195i, -7900i, 0i, -31924i), 7177i, vec4<f32>(1000f, -327f, 885f, -311f))), -1214f, Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(3397i, 1i, i32(-2147483648), 1i), -12568i, vec4<f32>(475f, -492f, -1000f, -335f)), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<bool>(false, false)), Struct_2(vec3<f32>(-1059f, 920f, 135f), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(i32(-2147483648), -34350i, -5860i, -1578i), 26923i, vec4<f32>(-1891f, -1323f, -2249f, -211f)), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(-1i, -3014i, 1i, -56714i), -1i, vec4<f32>(360f, -1265f, 179f, -1000f))), 335f, Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(-28689i, 1i, -1i, 19499i), 23321i, vec4<f32>(-1621f, -1000f, -255f, 590f)), vec2<bool>(false, true)), Struct_4(Struct_3(vec2<bool>(true, false)), Struct_2(vec3<f32>(1076f, -859f, -933f), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(54590i, i32(-2147483648), 2147483647i, -1i), -17551i, vec4<f32>(-2686f, -829f, 944f, 557f)), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(28622i, 0i, -4030i, 49720i), i32(-2147483648), vec4<f32>(-423f, 305f, 543f, -942f))), 152f, Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(-822i, 0i, 2147483647i, -1i), 17628i, vec4<f32>(864f, 892f, -813f, -467f)), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<bool>(true, true)), Struct_2(vec3<f32>(-437f, -958f, 415f), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(-103333i, 28710i, -9375i, 13907i), -82348i, vec4<f32>(169f, -558f, -515f, -219f)), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(1i, -12224i, 38273i, 2147483647i), 2147483647i, vec4<f32>(353f, 1682f, 905f, 682f))), -2170f, Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(-1i, i32(-2147483648), 2147483647i, -3078i), -5526i, vec4<f32>(1000f, -157f, 1644f, -325f)), vec2<bool>(false, false)), Struct_4(Struct_3(vec2<bool>(false, true)), Struct_2(vec3<f32>(1000f, 1639f, 111f), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(2147483647i, 12905i, -1i, 29877i), 13076i, vec4<f32>(-690f, 464f, -1197f, 331f)), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(2147483647i, 4442i, i32(-2147483648), i32(-2147483648)), 32673i, vec4<f32>(313f, -1200f, -937f, -342f))), 455f, Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(-1i, 582i, 24702i, 18736i), -43713i, vec4<f32>(-756f, -212f, -1000f, 1000f)), vec2<bool>(false, true)), Struct_4(Struct_3(vec2<bool>(true, false)), Struct_2(vec3<f32>(2182f, -2767f, 221f), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(0i, 0i, 0i, -46132i), -6853i, vec4<f32>(-302f, -1976f, 954f, 137f)), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(-46756i, 620i, 0i, i32(-2147483648)), i32(-2147483648), vec4<f32>(172f, 1000f, 698f, 240f))), -1161f, Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(12730i, 2374i, 0i, 0i), 2147483647i, vec4<f32>(-2186f, 869f, -1520f, -759f)), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<bool>(false, false)), Struct_2(vec3<f32>(231f, 266f, 2054f), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(0i, 17677i, -8053i, -46251i), i32(-2147483648), vec4<f32>(545f, 539f, -1282f, -121f)), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(2147483647i, -1i, 37080i, i32(-2147483648)), -1i, vec4<f32>(751f, 912f, -340f, 742f))), -1327f, Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(2147483647i, 19007i, 3651i, -1i), 1i, vec4<f32>(-321f, 701f, 730f, -485f)), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<bool>(false, true)), Struct_2(vec3<f32>(-867f, -386f, -521f), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(17148i, -43689i, 1i, -20561i), -51742i, vec4<f32>(-2042f, -929f, -1000f, -1712f)), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(3664i, -1i, 39885i, -1i), 2147483647i, vec4<f32>(-1453f, 1861f, -302f, 1461f))), -575f, Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-974i, 1i, 0i, 0i), 2147483647i, vec4<f32>(-1323f, -587f, -681f, 1000f)), vec2<bool>(false, true)), Struct_4(Struct_3(vec2<bool>(true, true)), Struct_2(vec3<f32>(-218f, 973f, 580f), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(2147483647i, -1i, 1i, -1i), 1i, vec4<f32>(-103f, -518f, -478f, -2365f)), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(26553i, i32(-2147483648), -10895i, 0i), i32(-2147483648), vec4<f32>(158f, -846f, 586f, -244f))), -234f, Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(9692i, 2147483647i, -30851i, 2147483647i), 107633i, vec4<f32>(245f, -1000f, 585f, 218f)), vec2<bool>(true, false)), Struct_4(Struct_3(vec2<bool>(false, true)), Struct_2(vec3<f32>(-131f, 246f, -2175f), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(-18098i, -1i, 26976i, 0i), -1i, vec4<f32>(910f, 211f, -715f, 541f)), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-12033i, 1i, 54585i, -15821i), i32(-2147483648), vec4<f32>(-134f, -177f, -1621f, -1002f))), 1000f, Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(0i, 19734i, -13218i, -7539i), -13290i, vec4<f32>(167f, 435f, -1647f, -104f)), vec2<bool>(false, false)), Struct_4(Struct_3(vec2<bool>(false, true)), Struct_2(vec3<f32>(-1000f, -582f, -1131f), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-25663i, 2147483647i, -17034i, 5182i), -54369i, vec4<f32>(437f, 979f, -314f, 879f)), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(1201i, -10936i, 0i, 5428i), -8252i, vec4<f32>(1381f, 921f, 3521f, -345f))), 1131f, Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(1i, 1i, -21173i, i32(-2147483648)), 29994i, vec4<f32>(-1000f, 225f, -619f, -1273f)), vec2<bool>(false, false)), Struct_4(Struct_3(vec2<bool>(false, true)), Struct_2(vec3<f32>(1033f, 1605f, 1786f), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(0i, -1i, 9756i, -1i), 22332i, vec4<f32>(2058f, -274f, 458f, -1246f)), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(60516i, -15055i, -53683i, -43435i), -31047i, vec4<f32>(-1000f, 1383f, -2039f, 421f))), -954f, Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(49556i, i32(-2147483648), 1767i, 7202i), -1i, vec4<f32>(1674f, -354f, -933f, 354f)), vec2<bool>(false, true)), Struct_4(Struct_3(vec2<bool>(true, true)), Struct_2(vec3<f32>(-921f, 399f, -655f), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(54034i, i32(-2147483648), -1i, 2147483647i), 2147483647i, vec4<f32>(729f, -500f, -248f, -475f)), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(i32(-2147483648), i32(-2147483648), 70000i, -1i), 0i, vec4<f32>(509f, 2059f, 647f, -1777f))), -1261f, Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(30431i, -4194i, -688i, -1i), 1i, vec4<f32>(194f, 458f, -802f, 1093f)), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<bool>(false, false)), Struct_2(vec3<f32>(-778f, -207f, 1301f), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(1i, 4286i, -8591i, -34883i), -18460i, vec4<f32>(-809f, -790f, 302f, 902f)), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(1i, -8712i, -1i, 2147483647i), 2147483647i, vec4<f32>(820f, -270f, -226f, 406f))), -303f, Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 9345i), -11242i, vec4<f32>(-2165f, -3344f, 1013f, -866f)), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<bool>(false, false)), Struct_2(vec3<f32>(-349f, 387f, 1775f), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-12025i, 0i, -2038i, 2147483647i), 43759i, vec4<f32>(-1000f, -1000f, -1024f, -1590f)), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(0i, 15740i, -28685i, -1i), 16311i, vec4<f32>(-186f, 1492f, -2361f, -237f))), 794f, Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-46793i, -47691i, i32(-2147483648), 2147483647i), -1i, vec4<f32>(114f, 902f, 1354f, -1000f)), vec2<bool>(true, false)), Struct_4(Struct_3(vec2<bool>(false, false)), Struct_2(vec3<f32>(134f, -280f, 456f), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(-1i, 26901i, 1i, 1i), -22183i, vec4<f32>(942f, -719f, -804f, -215f)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(22595i, 2576i, -1i, -29926i), -3248i, vec4<f32>(-1003f, 747f, 632f, -2916f))), -745f, Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(2147483647i, 0i, 0i, 2147483647i), 1i, vec4<f32>(-1473f, 212f, -490f, -1000f)), vec2<bool>(true, false)), Struct_4(Struct_3(vec2<bool>(true, true)), Struct_2(vec3<f32>(341f, 381f, -1424f), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(i32(-2147483648), 2147483647i, -7120i, -1i), 65971i, vec4<f32>(-1000f, 1000f, 851f, 434f)), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(7165i, i32(-2147483648), 29104i, i32(-2147483648)), -1i, vec4<f32>(430f, -474f, 278f, 432f))), -760f, Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-17064i, -17500i, -1i, 10741i), 2147483647i, vec4<f32>(-1884f, -860f, -1164f, 1151f)), vec2<bool>(false, false)), Struct_4(Struct_3(vec2<bool>(false, false)), Struct_2(vec3<f32>(-1936f, -1054f, -403f), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(1i, 10257i, 0i, -1i), -1i, vec4<f32>(-1155f, -1000f, -651f, -226f)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-34208i, i32(-2147483648), 0i, 18697i), -11850i, vec4<f32>(-1007f, 1000f, 1249f, -1000f))), 1000f, Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(2147483647i, -5244i, 0i, 0i), 0i, vec4<f32>(-469f, -119f, 686f, 1247f)), vec2<bool>(false, false)), Struct_4(Struct_3(vec2<bool>(true, false)), Struct_2(vec3<f32>(-234f, -633f, 2198f), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(2544i, -52215i, 48585i, 3057i), 37974i, vec4<f32>(1433f, 219f, 728f, 1576f)), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(i32(-2147483648), -1149i, 13684i, 1i), -18772i, vec4<f32>(-273f, 826f, -499f, -1241f))), 223f, Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(33410i, 1i, -21252i, -15472i), 2329i, vec4<f32>(874f, -408f, 199f, -2229f)), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<bool>(true, false)), Struct_2(vec3<f32>(430f, 1063f, -1265f), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(32524i, -941i, 1i, -1i), 50211i, vec4<f32>(840f, 1000f, -299f, 737f)), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(0i, 15542i, -411i, -9688i), -5177i, vec4<f32>(459f, 1312f, -1000f, 1724f))), 105f, Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-2957i, 29571i, -18570i, -1180i), 2147483647i, vec4<f32>(916f, 1122f, 155f, 104f)), vec2<bool>(false, false)), Struct_4(Struct_3(vec2<bool>(false, true)), Struct_2(vec3<f32>(1000f, -533f, -566f), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(2147483647i, i32(-2147483648), -15072i, 87880i), i32(-2147483648), vec4<f32>(1450f, -1138f, -1000f, -731f)), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(-24896i, -11347i, 1i, -24996i), 2147483647i, vec4<f32>(945f, 1261f, 937f, 510f))), -1415f, Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(68i, 1i, -1i, 26144i), 104482i, vec4<f32>(1082f, -955f, -2374f, 708f)), vec2<bool>(false, false)));

var<private> global3: array<Struct_3, 30>;

var<private> global4: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = vec2<f32>(291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2770f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-334f)) - _wgslsmith_f_op_f32(-1548f + -329f)))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.yyx, _wgslsmith_clamp_vec3_u32(u_input.a.zzx, firstTrailingBit(vec3<u32>(1u, 0u, u_input.a.x)), vec3<u32>(u_input.b, u_input.b, u_input.b))), vec3<u32>(max(1u, ~1u), u_input.a.x, u_input.a.x)) << (60379u % 32u), 7u)];
    global1 = array<vec4<f32>, 7>();
    var var_2 = 62296u;
    var var_3 = ~(~_wgslsmith_mod_u32(~110840u, ~_wgslsmith_add_u32(u_input.a.x, u_input.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_0.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f)) - _wgslsmith_f_op_f32(round(-459f)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    global3 = array<Struct_3, 30>();
    var var_0 = !arg_0;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.b.yxw))) * -1232f), arg_1.d.x)) - _wgslsmith_f_op_f32(round(arg_1.d.x)));
    let var_2 = Struct_3(arg_0);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.d.x, arg_1.d.x, arg_1.d.x))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(arg_1.d.x * 1037f), _wgslsmith_f_op_f32(-1704f * 125f))) + _wgslsmith_div_vec3_f32(arg_1.d.yww, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1609f, -341f, -2744f), arg_1.d.wyw)))))), arg_1, Struct_1(!vec4<bool>(101286u == u_input.a.x, arg_1.d.x > -510f, true, 0u > u_input.a.x), min(vec4<i32>(_wgslsmith_mod_i32(arg_1.c, arg_1.c), 46838i, _wgslsmith_mod_i32(34663i, -2147483647i), u_input.c), ~arg_1.b << (~u_input.a % vec4<u32>(32u))), arg_1.c, vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_1.b.xzw)), _wgslsmith_div_f32(arg_1.d.x, 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-124f)) - _wgslsmith_f_op_f32(-543f + 1000f)), arg_1.d.x)));
    return Struct_1(select(arg_1.a, select(vec4<bool>(true, true, arg_0.x, false && arg_0.x), global4[_wgslsmith_index_u32(min(42106u, 12038u) | _wgslsmith_clamp_u32(u_input.a.x, u_input.b, u_input.a.x), 20u)], arg_1.a.x || true), arg_0.x), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(6838i ^ u_input.c, i32(-1i) * -16848i, firstLeadingBit(0i), _wgslsmith_mult_i32(u_input.c, arg_1.b.x))), abs(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c, -3083i, 1i, u_input.c)), arg_1.b, var_3.b.b))), 0i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.b.d.x + arg_1.d.x), 1737f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-338f * arg_1.d.x), _wgslsmith_div_f32(arg_1.d.x, 1093f), var_0.x)), 1163f, var_3.a.x), var_3.c.d, !select(vec4<bool>(arg_0.x, false, false, var_3.b.a.x), vec4<bool>(true, true, var_3.b.a.x, true), !arg_0.x))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<bool>, arg_3: vec4<bool>) -> i32 {
    global2 = array<Struct_4, 30>();
    var var_0 = Struct_5(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(141f - 802f), -184f)), 119f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(618f - -1971f), _wgslsmith_f_op_f32(max(-1039f, 482f)), true))), Struct_1(global4[_wgslsmith_index_u32(arg_1, 20u)], _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -6377i, 0i, arg_0) & vec4<i32>(-22486i, arg_0, 1i, -34060i), -vec4<i32>(15360i, arg_0, u_input.c, -23952i)), countOneBits(-1i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.b, 7u)])))), func_2(select(vec2<bool>(true, true), select(arg_2.zz, vec2<bool>(arg_3.x, arg_2.x), arg_3.x), select(vec2<bool>(true, false), vec2<bool>(true, true), arg_3.yy)), Struct_1(vec4<bool>(arg_2.x, arg_3.x, arg_2.x, arg_3.x), -vec4<i32>(u_input.c, arg_0, -26124i, arg_0), _wgslsmith_mod_i32(arg_0, -12878i), vec4<f32>(601f, -458f, 912f, -199f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1246f)))), 898f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(round(global1[_wgslsmith_index_u32(arg_1, 7u)])))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 159f, 1680f, -1000f))), arg_2.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -225f), func_2(func_2(vec2<bool>(true, arg_2.x), Struct_1(global4[_wgslsmith_index_u32(0u, 20u)], vec4<i32>(arg_0, 2147483647i, 1i, arg_0), u_input.c, vec4<f32>(1152f, 1000f, -1893f, -1527f))).a.yz, Struct_1(vec4<bool>(arg_3.x, false, true, arg_2.x), vec4<i32>(9642i, -1i, arg_0, -2147483647i), -1i, global1[_wgslsmith_index_u32(arg_1, 7u)])).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(597f))), 1045f)));
    var_0 = Struct_5(var_0.a, var_0.a.b.d.x, -1000f, global1[_wgslsmith_index_u32(abs(~(arg_1 << (4294967295u % 32u)) | u_input.a.x), 7u)]);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(-vec3<i32>(u_input.c, arg_0, _wgslsmith_dot_vec4_i32(var_0.a.b.b, vec4<i32>(-1i, -2147483647i, 22529i, var_0.a.b.c))))), _wgslsmith_f_op_f32(2250f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.d.x - _wgslsmith_f_op_f32(var_0.a.b.d.x * 1000f))))));
    var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(661f, -1221f, var_0.b))), var_0.a.b, func_2(select(!var_0.a.c.a.yx, arg_2.zx, !var_0.a.b.a.zx), var_0.a.c)), _wgslsmith_div_f32(1658f, _wgslsmith_f_op_f32(var_1 + -164f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(320f - -973f))))), var_0.a.b.d);
    return _wgslsmith_dot_vec2_i32(vec2<i32>(29777i, ~min(abs(48332i), _wgslsmith_add_i32(arg_0, u_input.c))), min(vec2<i32>(u_input.c, -arg_0) & _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.c.b.x, arg_0), vec2<i32>(arg_0, -20519i)), var_0.a.c.b.yy), max(vec2<i32>(57751i, 0i), max(var_0.a.c.b.xy | var_0.a.c.b.yy, vec2<i32>(41181i, 2147483647i)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    var var_0 = select(select(!(!select(arg_3.a.wyz, vec3<bool>(arg_3.a.x, true, true), arg_3.a.yzw)), func_2(func_2(!vec2<bool>(arg_3.a.x, arg_2.a.x), arg_3).a.yy, arg_3).a.yzx, arg_3.a.x), !(!arg_3.a.zxx), arg_3.a.zxy);
    let var_1 = u_input.a.x;
    let var_2 = func_1(arg_1.x << (u_input.a.x % 32u), ~10943u, arg_3.a.wyz, func_2(arg_2.a, arg_3).a);
    global3 = array<Struct_3, 30>();
    global1 = array<vec4<f32>, 7>();
    return 1192f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(459f, -1612f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -1792f)))))));
    let var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-902f, 1113f, -260f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-208f, -979f, 631f), vec3<f32>(316f, -870f, 809f)))))), vec3<f32>(_wgslsmith_f_op_f32(max(1568f, _wgslsmith_div_f32(-809f, 1715f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f))))), vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(~1i), -71872i), func_1(countOneBits(-u_input.c), ~17565u, vec3<bool>(true, true, true), select(!global4[_wgslsmith_index_u32(0u, 20u)], vec4<bool>(false, false, false, true), global4[_wgslsmith_index_u32(~4294967295u, 20u)])), u_input.c), Struct_3(!vec2<bool>(true, select(false, false, false))), func_2(vec2<bool>(true, 1i > -u_input.c), func_2(vec2<bool>(true, true), Struct_1(global4[_wgslsmith_index_u32(60158u, 20u)], vec4<i32>(-10045i, u_input.c, -42948i, -19792i), u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1039f, 348f, 960f, 860f)))))));
    global4 = array<vec4<bool>, 20>();
    global3 = array<Struct_3, 30>();
    global2 = array<Struct_4, 30>();
    global0 = u_input.b & ~27944u;
    var var_2 = ~(~(~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~reverseBits(u_input.a.x), u_input.a.x, u_input.a.x), u_input.a, vec2<i32>(-(~firstTrailingBit(u_input.c)), _wgslsmith_clamp_i32(-(u_input.c << (u_input.a.x % 32u)), ~(~0i), abs(_wgslsmith_mult_i32(u_input.c, 18278i)))), countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.xw, u_input.a.wy), _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.a.x), ~u_input.a.x))), ~1u);
}

