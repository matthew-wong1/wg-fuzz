struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(-1i, -1i, -2675i), vec3<i32>(-75324i, 1i, 84118i), vec3<i32>(i32(-2147483648), -1i, 17473i), vec3<i32>(i32(-2147483648), -21589i, -1i), vec3<i32>(41022i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), 23320i, 7020i), vec3<i32>(0i, -1i, -29464i), vec3<i32>(-22071i, -375i, -16874i), vec3<i32>(8384i, -1i, -1i), vec3<i32>(0i, 0i, 89746i), vec3<i32>(2147483647i, -27081i, -13995i), vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(-59991i, 38645i, 1i), vec3<i32>(-67778i, 0i, 13570i), vec3<i32>(0i, 0i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(10719i, -30129i, -7613i), vec3<i32>(-785i, -1i, 30465i), vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(1i, 1963i, i32(-2147483648)), vec3<i32>(0i, 7849i, 2147483647i), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), 39339i, 12670i), vec3<i32>(-1i, -12132i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, 28817i));

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_2(Struct_1(vec3<i32>(28751i, -48128i, 36395i), vec4<f32>(2839f, -134f, -1058f, 1513f), vec3<f32>(-644f, -157f, 414f), vec2<f32>(-171f, -2047f), vec2<f32>(-746f, -399f)), vec4<i32>(0i, i32(-2147483648), 7792i, -17382i), 1u, Struct_1(vec3<i32>(0i, 21864i, 27122i), vec4<f32>(-353f, -1820f, -557f, -2662f), vec3<f32>(-1166f, 449f, -1090f), vec2<f32>(-2130f, -1000f), vec2<f32>(-801f, 486f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(-1i, 32638i, 80146i), vec4<f32>(-1536f, 481f, -914f, -120f), vec3<f32>(-1225f, -1192f, 313f), vec2<f32>(929f, 831f), vec2<f32>(-2289f, 210f)), vec4<i32>(22948i, 2147483647i, i32(-2147483648), -44041i), 63301u, Struct_1(vec3<i32>(31551i, 21049i, 45415i), vec4<f32>(320f, -927f, 695f, 1000f), vec3<f32>(-1000f, 931f, -531f), vec2<f32>(-1080f, -667f), vec2<f32>(187f, 499f))), false), Struct_3(Struct_2(Struct_1(vec3<i32>(12300i, i32(-2147483648), -1i), vec4<f32>(-962f, -292f, 248f, 1807f), vec3<f32>(1340f, 157f, 1292f), vec2<f32>(1474f, -1421f), vec2<f32>(-439f, 1451f)), vec4<i32>(-10806i, 0i, 0i, i32(-2147483648)), 23525u, Struct_1(vec3<i32>(0i, -36855i, -83352i), vec4<f32>(1294f, -551f, -856f, -1000f), vec3<f32>(410f, 1425f, -1544f), vec2<f32>(1000f, -976f), vec2<f32>(-552f, 719f))), false), Struct_3(Struct_2(Struct_1(vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec4<f32>(151f, 1048f, 553f, 1286f), vec3<f32>(801f, 1269f, 369f), vec2<f32>(-571f, -1031f), vec2<f32>(-505f, -1182f)), vec4<i32>(29194i, 56903i, 0i, 13968i), 19271u, Struct_1(vec3<i32>(-422i, 817i, 0i), vec4<f32>(433f, 383f, 1180f, 1196f), vec3<f32>(1000f, 305f, -1922f), vec2<f32>(1943f, -1093f), vec2<f32>(366f, -213f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(10986i, -12127i, i32(-2147483648)), vec4<f32>(-829f, 940f, -2121f, 190f), vec3<f32>(802f, -1000f, -478f), vec2<f32>(-1893f, 779f), vec2<f32>(138f, -668f)), vec4<i32>(2147483647i, 0i, -16329i, -7590i), 32560u, Struct_1(vec3<i32>(17844i, 31083i, -59199i), vec4<f32>(1087f, -405f, -412f, -123f), vec3<f32>(191f, 454f, 222f), vec2<f32>(427f, 1534f), vec2<f32>(-187f, -1000f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -23244i), vec4<f32>(-1856f, 379f, -733f, 498f), vec3<f32>(678f, 784f, 805f), vec2<f32>(864f, -752f), vec2<f32>(663f, 584f)), vec4<i32>(-1i, 3185i, 55059i, 1i), 4294967295u, Struct_1(vec3<i32>(53791i, -9217i, -23128i), vec4<f32>(995f, 480f, -3132f, 1077f), vec3<f32>(1062f, 492f, 950f), vec2<f32>(774f, 848f), vec2<f32>(1178f, 902f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(0i, 3548i, -28262i), vec4<f32>(-2096f, 905f, 617f, -1000f), vec3<f32>(1670f, 861f, 1460f), vec2<f32>(1047f, 1039f), vec2<f32>(-1689f, -1104f)), vec4<i32>(-1i, 12503i, 1i, i32(-2147483648)), 0u, Struct_1(vec3<i32>(17606i, -32700i, -21422i), vec4<f32>(-1485f, -674f, -802f, 1106f), vec3<f32>(-1772f, 249f, 1486f), vec2<f32>(1707f, -809f), vec2<f32>(1510f, 1911f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(32001i, 7469i, 96039i), vec4<f32>(-467f, 1176f, 430f, 1766f), vec3<f32>(-134f, 1000f, -676f), vec2<f32>(-371f, 765f), vec2<f32>(-963f, -1710f)), vec4<i32>(2147483647i, -6876i, -2645i, -26430i), 14728u, Struct_1(vec3<i32>(6454i, -1i, 1i), vec4<f32>(947f, -834f, 633f, -924f), vec3<f32>(-1502f, 1754f, -1795f), vec2<f32>(816f, -968f), vec2<f32>(-825f, 1304f))), false), Struct_3(Struct_2(Struct_1(vec3<i32>(1i, 1i, 1i), vec4<f32>(-558f, -1240f, 1000f, -808f), vec3<f32>(976f, -1753f, 425f), vec2<f32>(833f, -581f), vec2<f32>(523f, -131f)), vec4<i32>(26305i, -9156i, 1i, 2147483647i), 1220u, Struct_1(vec3<i32>(-19691i, -18687i, -14163i), vec4<f32>(-168f, -582f, -645f, -323f), vec3<f32>(1222f, -1000f, 769f), vec2<f32>(162f, -502f), vec2<f32>(-698f, 2033f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(-77991i, -1i, 0i), vec4<f32>(-750f, 170f, -1339f, -2445f), vec3<f32>(-1198f, -1107f, 1537f), vec2<f32>(-732f, 1000f), vec2<f32>(508f, 336f)), vec4<i32>(-1i, -5824i, -5712i, -67983i), 35890u, Struct_1(vec3<i32>(2147483647i, -36880i, -12705i), vec4<f32>(466f, 961f, 2393f, 369f), vec3<f32>(1000f, -693f, 983f), vec2<f32>(619f, 577f), vec2<f32>(754f, 1313f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(41815i, 0i, -7248i), vec4<f32>(-1620f, 158f, 477f, 1210f), vec3<f32>(-1819f, -1000f, -1102f), vec2<f32>(1115f, 1108f), vec2<f32>(-401f, -1153f)), vec4<i32>(1i, -2836i, -969i, 13844i), 1u, Struct_1(vec3<i32>(44388i, -16598i, -1i), vec4<f32>(939f, 750f, -885f, -1000f), vec3<f32>(-516f, -343f, -143f), vec2<f32>(-380f, 949f), vec2<f32>(-794f, -290f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(0i, 41473i, 2147483647i), vec4<f32>(-1000f, -1000f, 580f, -1607f), vec3<f32>(-879f, 1259f, -289f), vec2<f32>(884f, 963f), vec2<f32>(-773f, 1152f)), vec4<i32>(-11423i, 28760i, 18210i, i32(-2147483648)), 4294967295u, Struct_1(vec3<i32>(-53684i, 0i, -40501i), vec4<f32>(2676f, 567f, 583f, -540f), vec3<f32>(855f, 690f, 1654f), vec2<f32>(365f, 258f), vec2<f32>(700f, 1219f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(24973i, 18741i, i32(-2147483648)), vec4<f32>(967f, -477f, 240f, 1457f), vec3<f32>(-926f, -1170f, -1169f), vec2<f32>(985f, 1700f), vec2<f32>(1010f, 465f)), vec4<i32>(2147483647i, -42544i, -1i, 39222i), 4294967295u, Struct_1(vec3<i32>(1i, -5569i, 1i), vec4<f32>(-103f, -720f, 444f, -853f), vec3<f32>(682f, 318f, -791f), vec2<f32>(1000f, 683f), vec2<f32>(186f, 284f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 22342i, 2096i), vec4<f32>(391f, 1000f, -2291f, -292f), vec3<f32>(3765f, 865f, 1265f), vec2<f32>(424f, -186f), vec2<f32>(-293f, 460f)), vec4<i32>(-1i, i32(-2147483648), 7885i, 8276i), 37578u, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec4<f32>(1364f, 233f, 1000f, 1692f), vec3<f32>(921f, 611f, 263f), vec2<f32>(2228f, 474f), vec2<f32>(221f, -1060f))), false), Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -32323i, 1i), vec4<f32>(1090f, 843f, -375f, -692f), vec3<f32>(-1562f, -757f, 416f), vec2<f32>(1000f, 1161f), vec2<f32>(1777f, -228f)), vec4<i32>(27887i, -1i, 2147483647i, -5792i), 67088u, Struct_1(vec3<i32>(-1i, 40607i, 1i), vec4<f32>(825f, 875f, -676f, 1000f), vec3<f32>(-893f, -346f, 227f), vec2<f32>(-728f, 151f), vec2<f32>(-1083f, -131f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -17842i, 10440i), vec4<f32>(-390f, 761f, 654f, -1000f), vec3<f32>(-1236f, 1000f, 344f), vec2<f32>(1383f, -804f), vec2<f32>(756f, -921f)), vec4<i32>(-8459i, 2147483647i, 1i, 21642i), 1u, Struct_1(vec3<i32>(0i, -1i, 0i), vec4<f32>(-1919f, -1000f, 1500f, -860f), vec3<f32>(-982f, -1088f, -103f), vec2<f32>(194f, 560f), vec2<f32>(-826f, 1000f))), false), Struct_3(Struct_2(Struct_1(vec3<i32>(9745i, -1i, 0i), vec4<f32>(680f, -1000f, -355f, -616f), vec3<f32>(1186f, -1525f, 1061f), vec2<f32>(-163f, -411f), vec2<f32>(316f, 371f)), vec4<i32>(6352i, 2147483647i, -1i, -1i), 131472u, Struct_1(vec3<i32>(-41966i, 56966i, -20139i), vec4<f32>(1031f, -1442f, 1239f, 142f), vec3<f32>(262f, -854f, -2216f), vec2<f32>(-809f, -652f), vec2<f32>(463f, 207f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(1i, 9220i, 1765i), vec4<f32>(806f, -205f, 578f, 226f), vec3<f32>(160f, -535f, -782f), vec2<f32>(132f, -946f), vec2<f32>(-1099f, -1000f)), vec4<i32>(-1i, 2147483647i, -1i, 1i), 19908u, Struct_1(vec3<i32>(2147483647i, -66015i, 37382i), vec4<f32>(-309f, 1220f, -426f, -1474f), vec3<f32>(1000f, -267f, -2645f), vec2<f32>(-1569f, -618f), vec2<f32>(931f, 628f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(1i, i32(-2147483648), -21929i), vec4<f32>(1249f, 1677f, 911f, -747f), vec3<f32>(174f, -919f, -135f), vec2<f32>(-399f, 101f), vec2<f32>(-334f, -425f)), vec4<i32>(-32743i, -1i, i32(-2147483648), 1i), 65697u, Struct_1(vec3<i32>(0i, 65036i, 2147483647i), vec4<f32>(1894f, 498f, -119f, 792f), vec3<f32>(-316f, -2437f, -1737f), vec2<f32>(448f, 1650f), vec2<f32>(-900f, 267f))), false), Struct_3(Struct_2(Struct_1(vec3<i32>(0i, -27681i, -1i), vec4<f32>(-1000f, 3230f, -345f, 767f), vec3<f32>(748f, -1852f, 1395f), vec2<f32>(-1160f, -1065f), vec2<f32>(1532f, 1574f)), vec4<i32>(2147483647i, 1i, 2147483647i, -42738i), 1u, Struct_1(vec3<i32>(-1i, 1i, -20274i), vec4<f32>(-2074f, 2117f, 990f, 376f), vec3<f32>(935f, -562f, -1261f), vec2<f32>(-535f, -1137f), vec2<f32>(1000f, 222f))), false), Struct_3(Struct_2(Struct_1(vec3<i32>(31828i, -1i, -16654i), vec4<f32>(-334f, -181f, -1503f, -390f), vec3<f32>(-1164f, -841f, -2694f), vec2<f32>(-247f, -649f), vec2<f32>(-789f, 1109f)), vec4<i32>(-62626i, 2147483647i, -324i, i32(-2147483648)), 25164u, Struct_1(vec3<i32>(2147483647i, 20468i, 0i), vec4<f32>(1000f, -409f, -509f, -1000f), vec3<f32>(-1020f, -935f, 713f), vec2<f32>(503f, -939f), vec2<f32>(2020f, -1000f))), false), Struct_3(Struct_2(Struct_1(vec3<i32>(-46444i, i32(-2147483648), 47227i), vec4<f32>(720f, 574f, 339f, -1000f), vec3<f32>(-3366f, 188f, -971f), vec2<f32>(-871f, -167f), vec2<f32>(-289f, 293f)), vec4<i32>(29486i, -57011i, i32(-2147483648), 2147483647i), 0u, Struct_1(vec3<i32>(-41447i, 2147483647i, i32(-2147483648)), vec4<f32>(-1617f, -1505f, 2385f, 1143f), vec3<f32>(-430f, 674f, 1918f), vec2<f32>(-495f, -221f), vec2<f32>(973f, 1157f))), false), Struct_3(Struct_2(Struct_1(vec3<i32>(0i, 21117i, 0i), vec4<f32>(565f, -186f, -323f, 433f), vec3<f32>(-2102f, 882f, -331f), vec2<f32>(371f, -342f), vec2<f32>(-1303f, -148f)), vec4<i32>(1i, -1i, -15971i, 1i), 35150u, Struct_1(vec3<i32>(63790i, 51706i, 0i), vec4<f32>(-1079f, 822f, 523f, -168f), vec3<f32>(631f, 301f, -1003f), vec2<f32>(1058f, -248f), vec2<f32>(531f, 720f))), true), Struct_3(Struct_2(Struct_1(vec3<i32>(-18244i, -3214i, -55830i), vec4<f32>(-118f, -1498f, 2090f, 1000f), vec3<f32>(-751f, -347f, 1366f), vec2<f32>(-1754f, 162f), vec2<f32>(130f, 503f)), vec4<i32>(1i, 21042i, i32(-2147483648), 0i), 12166u, Struct_1(vec3<i32>(i32(-2147483648), 96834i, 1i), vec4<f32>(-1404f, 1423f, -672f, -1831f), vec3<f32>(-1120f, -1456f, -902f), vec2<f32>(618f, 1919f), vec2<f32>(-2109f, -1000f))), false));

var<private> global2: Struct_3;

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<i32>(1i, 17322i, -84820i), vec4<f32>(444f, -1940f, 291f, 410f), vec3<f32>(853f, -720f, 629f), vec2<f32>(919f, -594f), vec2<f32>(-1000f, 471f)), vec4<i32>(-77628i, i32(-2147483648), 42088i, -7506i), 61054u, Struct_1(vec3<i32>(1i, i32(-2147483648), 35841i), vec4<f32>(1067f, 1457f, -2079f, 536f), vec3<f32>(-2134f, 121f, 735f), vec2<f32>(-593f, 2265f), vec2<f32>(-907f, -773f))), true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    global0 = array<vec3<i32>, 26>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.a.c, 4294967295u), 24u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(241f, global3.a.a.b.x, 1464f, var_0.a.a.c.x) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, var_0.a.d.b.x, -467f, global2.a.a.c.x), var_0.a.d.b))) - var_0.a.d.b)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(930f, -1155f, -880f, 935f))), var_0.a.d.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(global2.a.d.b.x, 327f)), -1588f, -1376f, global3.a.a.e.x), _wgslsmith_f_op_vec4_f32(floor(global2.a.a.b)), select(!vec4<bool>(false, global2.b, false, false), vec4<bool>(global3.b, false, false, true), any(vec2<bool>(true, var_0.b))))))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.a.c.x) - _wgslsmith_f_op_f32(min(384f, 444f))))));
    let var_3 = global2.a.a.a.zy;
    return var_3.x;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    global2 = global1[_wgslsmith_index_u32(reverseBits(1u), 24u)];
    let var_0 = -func_3() | 1i;
    let var_1 = Struct_2(Struct_1(~_wgslsmith_add_vec3_i32(select(vec3<i32>(global2.a.a.a.x, global3.a.d.a.x, u_input.a), global0[_wgslsmith_index_u32(global2.a.c, 26u)], global2.b), -global0[_wgslsmith_index_u32(arg_0, 26u)]), _wgslsmith_f_op_vec4_f32(-global2.a.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.a.d.c - global2.a.a.c) - _wgslsmith_f_op_vec3_f32(-global2.a.a.c))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global2.a.a.d * vec2<f32>(global2.a.a.d.x, global3.a.a.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.d.e.x, global2.a.d.c.x))), true)), vec2<f32>(global2.a.d.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-625f - global2.a.a.d.x) * _wgslsmith_f_op_f32(abs(-1102f))))), _wgslsmith_sub_vec4_i32(global2.a.b, -vec4<i32>(u_input.a, global2.a.a.a.x >> (arg_0 % 32u), u_input.a, 684i)), 1u, Struct_1(-select(global3.a.a.a, global3.a.d.a, global2.b) >> (vec3<u32>(~arg_0, global3.a.c, ~20705u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global2.a.a.b, global3.a.a.b)))), global2.a.a.b.xww, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(754f, 165f)) * vec2<f32>(977f, global2.a.d.d.x)), global3.a.d.b.xw));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.b.x)));
    return select(select(!vec4<bool>(global2.a.d.d.x < 279f, true, false, -1i > var_0), select(vec4<bool>(true, false, true, false), select(select(vec4<bool>(global3.b, false, false, global3.b), vec4<bool>(false, false, global3.b, global2.b), global3.b), !vec4<bool>(var_2, global3.b, false, false), vec4<bool>(false, global3.b, true, false)), (global2.a.a.e.x <= global2.a.d.c.x) | !global3.b), !(!(!vec4<bool>(global2.b, true, global2.b, false)))), vec4<bool>(true, var_2, var_2 || true, ~(global3.a.d.a.x ^ global3.a.b.x) == _wgslsmith_dot_vec4_i32(global3.a.b, max(vec4<i32>(global2.a.d.a.x, 0i, -36528i, -1i), global2.a.b))), !select(select(vec4<bool>(global2.b, global2.b, true, var_2), !vec4<bool>(var_2, global2.b, false, false), vec4<bool>(global3.b, false, var_2, global2.b)), vec4<bool>(true, all(vec3<bool>(false, global3.b, false)), any(vec4<bool>(true, true, false, false)), all(vec2<bool>(var_2, true))), select(!vec4<bool>(global2.b, global3.b, true, global3.b), select(vec4<bool>(global3.b, true, false, true), vec4<bool>(false, var_2, true, global3.b), vec4<bool>(global2.b, false, false, true)), vec4<bool>(false, true, false, global3.b))));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = all(select(!select(vec4<bool>(global2.b, true, global2.b, global3.b), func_2(global3.a.c), func_2(39777u)), vec4<bool>(~53758u > _wgslsmith_sub_u32(global2.a.c, 11588u), global2.b, global3.b, true), select(!vec4<bool>(true, global2.b, global2.b, global2.b), !select(vec4<bool>(global3.b, false, global2.b, false), vec4<bool>(true, global2.b, true, global2.b), false), func_2(~global2.a.c))));
    var var_1 = Struct_3(global2.a, false);
    global3 = Struct_3(global3.a, select(arg_1.d.b.x < _wgslsmith_f_op_f32(-global3.a.d.d.x), any(select(vec3<bool>(false, global2.b, false), !vec3<bool>(global3.b, global3.b, global3.b), vec3<bool>(false, var_1.b, true))), var_1.b));
    var_0 = global3.b;
    var var_2 = Struct_1(abs(~(~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(global3.a.b.x, var_1.a.a.a.x, global2.a.d.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a.c.x, global3.a.d.e.x, 909f, arg_0)))) * var_1.a.a.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1003f, _wgslsmith_f_op_f32(912f * global3.a.d.d.x), var_1.a.d.c.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(761f, -1375f, arg_1.d.e.x))), _wgslsmith_f_op_vec3_f32(-var_1.a.d.c), global2.b)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(203f, -1000f), _wgslsmith_f_op_vec2_f32(-var_1.a.a.c.yy), false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global3.a.d.c.x, 350f), _wgslsmith_f_op_f32(516f + global2.a.d.b.x)))));
    return all(func_2(global2.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~reverseBits(global2.a.d.a.zy));
    var var_1 = ~(~4294967295u);
    global1 = array<Struct_3, 24>();
    global1 = array<Struct_3, 24>();
    var var_2 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.d.c.x) + _wgslsmith_f_op_f32(ceil(585f)))))), global2.a);
    var var_3 = Struct_1(vec3<i32>(i32(-1i) * -var_0.x, global3.a.d.a.x, ~17384i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(141f, global3.a.d.b.x, global2.a.a.e.x, global3.a.a.b.x) + vec4<f32>(global3.a.d.d.x, -1197f, -1062f, 1130f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.a.d.x, global2.a.d.c.x, -565f, -896f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global2.a.d.b)))), _wgslsmith_f_op_vec4_f32(-global2.a.a.b), global2.a.c == firstTrailingBit(_wgslsmith_clamp_u32(global3.a.c, 43818u, 1u)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.a.d.b.wwx)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.a.c), _wgslsmith_f_op_vec3_f32(trunc(global3.a.a.c))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.d.c.x, -1253f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a.b.x, -247f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a.e.x, global3.a.a.c.x))))), vec2<f32>(global2.a.d.e.x, _wgslsmith_f_op_f32(f32(-1f) * -608f)));
    let var_4 = -40422i << (countOneBits(global3.a.c) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(1u, 1u | ~global2.a.c, _wgslsmith_mod_u32(~global2.a.c, global2.a.c))), 15131u, abs(~vec3<u32>(reverseBits(global3.a.c), ~36504u, global3.a.c << (global3.a.c % 32u))), ~2435i, vec4<u32>(1u, countOneBits(global2.a.c), global2.a.c, min(select(_wgslsmith_div_u32(global2.a.c, global3.a.c), select(global3.a.c, 38607u, false), !global2.b), global2.a.c)));
}

