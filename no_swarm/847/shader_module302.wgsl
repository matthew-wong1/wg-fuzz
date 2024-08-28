struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(573f, vec4<f32>(572f, -1425f, -592f, 688f), -12634i, vec2<u32>(40760u, 36465u), vec3<f32>(-169f, -585f, -1381f)), Struct_1(1143f, vec4<f32>(1204f, 577f, -505f, -299f), -1i, vec2<u32>(62475u, 1443u), vec3<f32>(381f, 471f, -1879f)), Struct_1(671f, vec4<f32>(-1405f, 400f, 693f, 479f), 2147483647i, vec2<u32>(27389u, 1u), vec3<f32>(-1000f, -1263f, -868f)), Struct_1(939f, vec4<f32>(-796f, 207f, -726f, 250f), 18710i, vec2<u32>(24372u, 11329u), vec3<f32>(-243f, 562f, 2217f)), Struct_1(-869f, vec4<f32>(415f, 571f, 723f, -1563f), 26950i, vec2<u32>(0u, 4294967295u), vec3<f32>(753f, 1847f, 1000f)), Struct_1(-1932f, vec4<f32>(-787f, -750f, 1000f, 200f), 30675i, vec2<u32>(28374u, 0u), vec3<f32>(2134f, 616f, 1006f)), Struct_1(694f, vec4<f32>(1028f, 1603f, -328f, -1000f), i32(-2147483648), vec2<u32>(0u, 0u), vec3<f32>(-1373f, -954f, 592f)), Struct_1(-850f, vec4<f32>(-704f, -1248f, 578f, 123f), 12591i, vec2<u32>(1u, 0u), vec3<f32>(-2121f, 1025f, -968f)), Struct_1(681f, vec4<f32>(-811f, 270f, 396f, 1000f), 54717i, vec2<u32>(16507u, 1u), vec3<f32>(1462f, 199f, 438f)), Struct_1(-524f, vec4<f32>(-1000f, -351f, -2975f, -179f), i32(-2147483648), vec2<u32>(4314u, 36272u), vec3<f32>(538f, -1325f, -237f)), Struct_1(492f, vec4<f32>(1171f, 379f, 914f, -1811f), 1i, vec2<u32>(33227u, 75033u), vec3<f32>(-1000f, -1317f, 1057f)), Struct_1(-588f, vec4<f32>(-1131f, 1377f, -2303f, -2002f), -31731i, vec2<u32>(50579u, 51634u), vec3<f32>(-1042f, 289f, 491f)), Struct_1(-207f, vec4<f32>(1436f, -937f, -984f, 183f), 10639i, vec2<u32>(4294967295u, 0u), vec3<f32>(-1176f, 2184f, -1296f)), Struct_1(-439f, vec4<f32>(-425f, 576f, 373f, -1374f), -1i, vec2<u32>(10392u, 4294967295u), vec3<f32>(536f, 218f, -1218f)), Struct_1(548f, vec4<f32>(-466f, -253f, -893f, 797f), -1i, vec2<u32>(2963u, 4294967295u), vec3<f32>(1109f, 1106f, -1000f)), Struct_1(-1071f, vec4<f32>(-128f, -1039f, -1607f, 1000f), -1i, vec2<u32>(4294967295u, 30668u), vec3<f32>(442f, -140f, -650f)), Struct_1(-1000f, vec4<f32>(220f, 1000f, 1629f, -1246f), -24422i, vec2<u32>(3004u, 42597u), vec3<f32>(1966f, 186f, -575f)), Struct_1(-859f, vec4<f32>(179f, 101f, -2447f, -293f), i32(-2147483648), vec2<u32>(1u, 1u), vec3<f32>(-1000f, 825f, 1365f)), Struct_1(1886f, vec4<f32>(-1000f, -638f, -500f, 854f), -46756i, vec2<u32>(1u, 4294967295u), vec3<f32>(1755f, -1624f, -862f)), Struct_1(291f, vec4<f32>(646f, -167f, 716f, -1064f), 0i, vec2<u32>(0u, 24932u), vec3<f32>(-1665f, 1000f, 387f)), Struct_1(1299f, vec4<f32>(1451f, -685f, -152f, 1422f), -40990i, vec2<u32>(1u, 99104u), vec3<f32>(-370f, -257f, 754f)), Struct_1(1599f, vec4<f32>(-917f, 821f, -149f, 1042f), 1i, vec2<u32>(1u, 1u), vec3<f32>(310f, -732f, 516f)), Struct_1(-531f, vec4<f32>(1025f, 1239f, -359f, -281f), 16409i, vec2<u32>(39195u, 0u), vec3<f32>(887f, 224f, -1310f)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1194f, vec4<f32>(-1946f, 1457f, -100f, 581f), 23962i, vec2<u32>(48436u, 14630u), vec3<f32>(116f, -1182f, -120f)), Struct_1(1357f, vec4<f32>(1000f, 1056f, -1693f, -337f), 1i, vec2<u32>(8962u, 4294967295u), vec3<f32>(985f, 1000f, -729f)), Struct_1(1110f, vec4<f32>(-1000f, -614f, 1506f, 332f), -10224i, vec2<u32>(1u, 1u), vec3<f32>(726f, 418f, 392f)), Struct_1(1000f, vec4<f32>(-771f, -1321f, 1135f, 506f), 24382i, vec2<u32>(1u, 15230u), vec3<f32>(270f, -149f, -1439f)), Struct_1(242f, vec4<f32>(1435f, -803f, -1488f, 1000f), -20826i, vec2<u32>(101139u, 0u), vec3<f32>(-490f, 1177f, -229f)), Struct_1(-1446f, vec4<f32>(-1823f, -420f, 1284f, -537f), -26244i, vec2<u32>(14967u, 98074u), vec3<f32>(-1243f, 2717f, 697f)), Struct_1(1630f, vec4<f32>(1654f, 1808f, 456f, 257f), 2147483647i, vec2<u32>(45529u, 11491u), vec3<f32>(314f, 1414f, -770f)), Struct_1(937f, vec4<f32>(-1000f, 1000f, -750f, 1261f), 0i, vec2<u32>(8330u, 4294967295u), vec3<f32>(-474f, -657f, -860f)), Struct_1(207f, vec4<f32>(245f, 3464f, 715f, -941f), -1i, vec2<u32>(25190u, 15947u), vec3<f32>(-773f, -843f, -908f)), Struct_1(-775f, vec4<f32>(-999f, 560f, 1000f, 581f), -32062i, vec2<u32>(49389u, 7081u), vec3<f32>(-1405f, 3265f, 125f)), Struct_1(-723f, vec4<f32>(-1137f, 296f, 779f, -838f), 26891i, vec2<u32>(29487u, 67339u), vec3<f32>(604f, 1376f, -1000f)), Struct_1(1901f, vec4<f32>(-315f, -1183f, 420f, -773f), -1i, vec2<u32>(1u, 69751u), vec3<f32>(769f, 632f, 747f)), Struct_1(-1235f, vec4<f32>(-360f, -174f, 148f, -1000f), -1i, vec2<u32>(1u, 31578u), vec3<f32>(629f, 499f, -1000f)), Struct_1(639f, vec4<f32>(-2511f, 228f, 1047f, 1359f), 1i, vec2<u32>(0u, 1u), vec3<f32>(-466f, -1285f, 530f)), Struct_1(-255f, vec4<f32>(-1162f, 1543f, -364f, -1266f), 2403i, vec2<u32>(0u, 31637u), vec3<f32>(314f, 1252f, 875f)), Struct_1(-1985f, vec4<f32>(-224f, -1000f, 158f, 117f), 2147483647i, vec2<u32>(1u, 33609u), vec3<f32>(193f, 408f, 392f)), Struct_1(918f, vec4<f32>(-1454f, -593f, -1000f, -353f), i32(-2147483648), vec2<u32>(32837u, 5885u), vec3<f32>(137f, 529f, -284f)));

var<private> global3: i32 = 1i;

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-813f, vec4<f32>(-627f, 1630f, -226f, 1000f), 24375i, vec2<u32>(1u, 80879u), vec3<f32>(493f, 299f, -2016f)), Struct_1(263f, vec4<f32>(-1471f, 794f, -1602f, 2585f), 1i, vec2<u32>(12015u, 53891u), vec3<f32>(-637f, 969f, 1444f)), Struct_1(844f, vec4<f32>(668f, -2109f, -1000f, -140f), 0i, vec2<u32>(0u, 0u), vec3<f32>(416f, -1038f, 898f)), Struct_1(922f, vec4<f32>(-1000f, 210f, 1857f, -1208f), 2246i, vec2<u32>(1u, 47375u), vec3<f32>(873f, 634f, -1361f)), Struct_1(838f, vec4<f32>(-303f, 215f, -166f, -667f), 12796i, vec2<u32>(1u, 1u), vec3<f32>(-1446f, 1117f, 327f)), Struct_1(1585f, vec4<f32>(-235f, 303f, -405f, -1000f), -33087i, vec2<u32>(1u, 1u), vec3<f32>(-2014f, 1336f, -875f)), Struct_1(-951f, vec4<f32>(1276f, -613f, -536f, 361f), 2147483647i, vec2<u32>(121917u, 58387u), vec3<f32>(-876f, -1000f, -297f)), Struct_1(833f, vec4<f32>(1000f, 387f, -1567f, -253f), 0i, vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-1000f, -610f, -1000f)), Struct_1(428f, vec4<f32>(-1000f, 1349f, -178f, -1022f), -42735i, vec2<u32>(0u, 4294967295u), vec3<f32>(-751f, 550f, 1164f)), Struct_1(280f, vec4<f32>(520f, 886f, -817f, 1887f), -1i, vec2<u32>(55898u, 4294967295u), vec3<f32>(-691f, 1848f, 993f)), Struct_1(1000f, vec4<f32>(-1202f, -787f, -749f, -1306f), i32(-2147483648), vec2<u32>(0u, 2672u), vec3<f32>(776f, -453f, 394f)), Struct_1(958f, vec4<f32>(900f, -1000f, -111f, -464f), 2147483647i, vec2<u32>(22317u, 26437u), vec3<f32>(1252f, -1031f, -567f)), Struct_1(231f, vec4<f32>(-1301f, 331f, -276f, -666f), i32(-2147483648), vec2<u32>(26473u, 1u), vec3<f32>(1000f, 1278f, -1417f)), Struct_1(-457f, vec4<f32>(-604f, 2414f, -184f, 104f), -12575i, vec2<u32>(0u, 0u), vec3<f32>(564f, -1322f, 1221f)), Struct_1(709f, vec4<f32>(544f, -736f, 313f, 725f), -76364i, vec2<u32>(1u, 1u), vec3<f32>(1259f, 572f, -236f)), Struct_1(-1000f, vec4<f32>(1192f, 434f, 315f, -630f), 6213i, vec2<u32>(17135u, 4294967295u), vec3<f32>(-1622f, 558f, -437f)), Struct_1(-547f, vec4<f32>(-1380f, -820f, 1094f, 976f), -52716i, vec2<u32>(0u, 28431u), vec3<f32>(-1208f, -1000f, -1425f)), Struct_1(642f, vec4<f32>(-544f, 1000f, 1000f, 101f), i32(-2147483648), vec2<u32>(37378u, 0u), vec3<f32>(-836f, -403f, -1196f)), Struct_1(-901f, vec4<f32>(435f, 1487f, -504f, 1575f), i32(-2147483648), vec2<u32>(4294967295u, 64356u), vec3<f32>(-1249f, -670f, 1145f)), Struct_1(1389f, vec4<f32>(-1000f, -1474f, -1104f, 1130f), 0i, vec2<u32>(4294967295u, 106361u), vec3<f32>(228f, 401f, -1650f)), Struct_1(-1698f, vec4<f32>(704f, 172f, -210f, -641f), -1i, vec2<u32>(6691u, 22168u), vec3<f32>(1380f, -913f, -282f)), Struct_1(-403f, vec4<f32>(1078f, 1474f, -1079f, 1974f), 0i, vec2<u32>(0u, 0u), vec3<f32>(-265f, 168f, 1367f)), Struct_1(-285f, vec4<f32>(250f, -831f, 445f, -524f), 5883i, vec2<u32>(25444u, 29432u), vec3<f32>(-1814f, 1433f, 164f)), Struct_1(1177f, vec4<f32>(-175f, -150f, -1000f, -272f), -6639i, vec2<u32>(1u, 6036u), vec3<f32>(-710f, -777f, -1522f)), Struct_1(-922f, vec4<f32>(1000f, -1687f, 1536f, -2860f), 2147483647i, vec2<u32>(0u, 43405u), vec3<f32>(846f, 281f, 1375f)), Struct_1(-832f, vec4<f32>(625f, 615f, -245f, 1670f), -18525i, vec2<u32>(1u, 3294u), vec3<f32>(570f, 781f, 1615f)), Struct_1(347f, vec4<f32>(1462f, 717f, 102f, -1486f), i32(-2147483648), vec2<u32>(45376u, 29341u), vec3<f32>(-457f, 2147f, -593f)), Struct_1(-1000f, vec4<f32>(-589f, -396f, 287f, -944f), 4954i, vec2<u32>(0u, 4294967295u), vec3<f32>(-805f, 2136f, 232f)), Struct_1(-916f, vec4<f32>(-640f, 1028f, -2120f, 1171f), -16105i, vec2<u32>(0u, 21454u), vec3<f32>(-213f, 878f, -1748f)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<f32> {
    global2 = array<Struct_1, 17>();
    global0 = array<Struct_1, 23>();
    var var_0 = Struct_1(global1.e.x, global1.b, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a << (abs(1u) % 32u), global1.c), u_input.a), global1.d | global1.d, _wgslsmith_f_op_vec3_f32(-global1.b.wyx));
    global2 = array<Struct_1, 17>();
    var_0 = Struct_1(-1325f, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.b * vec4<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-530f)), var_0.b.x, _wgslsmith_div_f32(var_0.e.x, -602f))))), global1.c, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, firstLeadingBit(1u)), ~global1.d), vec3<f32>(663f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x * var_0.a), global1.b.x), 122f)), _wgslsmith_f_op_f32(-global1.a)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, 293f), _wgslsmith_f_op_f32(global1.b.x * -1802f))))) - 669f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.a))), arg_1.e.x)), _wgslsmith_f_op_f32(min(1252f, _wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(var_0.x * -1616f))))) - _wgslsmith_f_op_f32(exp2(arg_0.e.x)));
    var var_2 = -vec2<i32>(min(global1.c, _wgslsmith_mod_i32(~0i, 1i)), ~select(_wgslsmith_mult_i32(arg_1.c, arg_0.c), abs(global1.c), true));
    var var_3 = global2[_wgslsmith_index_u32(4294967295u, 17u)];
    let var_4 = select(vec3<bool>(false, !(!(0u >= arg_0.d.x)), true), !vec3<bool>(any(vec4<bool>(false, false, false, false)), true, !any(vec3<bool>(false, false, false))), true);
    return arg_1.d.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = vec2<bool>(true, false);
    global1 = global4[_wgslsmith_index_u32(arg_0, 29u)];
    global0 = array<Struct_1, 23>();
    let var_1 = global1.a;
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), global1.b.x), global1.b, -max(_wgslsmith_add_i32(-1i, global1.c), u_input.a & 2147483647i) | _wgslsmith_div_i32(~abs(6470i), _wgslsmith_clamp_i32(u_input.a, u_input.a | -24479i, _wgslsmith_clamp_i32(global1.c, -16430i, u_input.a))), vec2<u32>(_wgslsmith_div_u32(~global1.d.x, 26910u) ^ ~global1.d.x, func_4(global2[_wgslsmith_index_u32(~min(global1.d.x, arg_0), 17u)], Struct_1(-239f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a, global1.e.x, -622f, global1.e.x), vec4<f32>(global1.a, -1334f, -583f, global1.e.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x))), ~0i, global1.d, _wgslsmith_f_op_vec3_f32(func_3())))), global1.b.xzz);
    return var_2;
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = select(countOneBits(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.d.x, 27943u), firstTrailingBit(37947u))), 0u, func_2(34534u).c == u_input.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1003f, _wgslsmith_f_op_f32(ceil(global1.b.x))), _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_vec4_f32(exp2(global1.b)), firstLeadingBit(-arg_0.c), ~(~reverseBits(global1.d)), global1.b.zzx);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a, global1.a, arg_0.b.x, -586f)))))));
    let var_3 = 1068f;
    let var_4 = 1i;
    return func_2(arg_0.d.x).a;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-373f)) - _wgslsmith_f_op_f32(-108f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_2(373u))), arg_2.e.x)));
    var var_1 = min(~arg_0.d.x, arg_0.d.x);
    var var_2 = func_2(firstLeadingBit(4294967295u));
    let var_3 = all(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.d.x > 20398u, true, true), vec3<bool>(arg_0.b.x <= 192f, true, arg_0.d.x >= 1u), false), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(true, false, true))));
    var_2 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(5341u, ~arg_0.d.x), 29u)];
    return StorageBuffer(_wgslsmith_f_op_f32(abs(1389f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 17>();
    global4 = array<Struct_1, 29>();
    var var_0 = abs(4294967295u);
    global0 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = func_1(Struct_1(global1.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a, global1.a, global1.a, 194f), global1.b)) + vec4<f32>(global1.b.x, -194f, global1.e.x, _wgslsmith_div_f32(1263f, 196f))), _wgslsmith_div_i32(_wgslsmith_mod_i32(~u_input.a, ~u_input.a), -40i), vec2<u32>(global1.d.x & 4294967295u, global1.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.b.x * 1082f), _wgslsmith_f_op_f32(global1.a - -2116f), _wgslsmith_f_op_f32(-global1.e.x)))), 0i, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1784f, global1.b.x, 1000f, -1000f), vec4<f32>(global1.a, -1404f, -938f, global1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(909f, -234f, 1000f, global1.e.x))), firstLeadingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, global1.c, 1i), vec4<i32>(u_input.a, global1.c, u_input.a, -2147483647i))), vec2<u32>(global1.d.x << (_wgslsmith_add_u32(global1.d.x, 0u) % 32u), 38561u), _wgslsmith_f_op_vec3_f32(vec3<f32>(1892f, global1.b.x, -1000f) + _wgslsmith_f_op_vec3_f32(floor(global1.b.wyz)))));
}

