struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_3;

var<private> global2: Struct_3;

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec2<i32>(-29831i, -6714i), false, -5253i, vec4<f32>(-1673f, 797f, 879f, -1455f)), Struct_1(vec2<i32>(-15446i, -33314i), false, 2147483647i, vec4<f32>(-273f, 561f, -717f, 1517f)), Struct_1(vec2<i32>(-1i, -17726i), true, -4949i, vec4<f32>(-414f, 974f, 192f, -294f)), Struct_1(vec2<i32>(2147483647i, -1i), false, i32(-2147483648), vec4<f32>(530f, -830f, -162f, 1731f)), false), Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), false, 2147483647i, vec4<f32>(-749f, -154f, 460f, -939f)), Struct_1(vec2<i32>(-59867i, 19187i), false, -40290i, vec4<f32>(1000f, -1484f, -1458f, -1813f)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), true, 1i, vec4<f32>(-753f, -987f, -2029f, -1000f)), Struct_1(vec2<i32>(0i, -16004i), false, -33782i, vec4<f32>(-459f, -659f, -666f, -1729f)), true), Struct_2(Struct_1(vec2<i32>(-24903i, -75570i), false, 2147483647i, vec4<f32>(240f, 986f, 1936f, -209f)), Struct_1(vec2<i32>(-1i, 36014i), true, 5329i, vec4<f32>(335f, 1595f, -1185f, -476f)), Struct_1(vec2<i32>(2147483647i, -1i), false, 51936i, vec4<f32>(1079f, -2119f, -1395f, -2708f)), Struct_1(vec2<i32>(20878i, -30857i), true, 0i, vec4<f32>(1000f, -846f, -1082f, 859f)), false), Struct_2(Struct_1(vec2<i32>(-49715i, 0i), false, 54442i, vec4<f32>(648f, 1000f, -380f, -124f)), Struct_1(vec2<i32>(0i, 16950i), true, -40185i, vec4<f32>(985f, -108f, 191f, 173f)), Struct_1(vec2<i32>(1i, 15901i), false, -1i, vec4<f32>(839f, 355f, -500f, 2712f)), Struct_1(vec2<i32>(2147483647i, -1i), true, 2147483647i, vec4<f32>(-393f, -124f, 510f, 1044f)), false), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), false, -1i, vec4<f32>(-159f, 164f, -1000f, -995f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), true, i32(-2147483648), vec4<f32>(1507f, -1538f, 992f, 1118f)), Struct_1(vec2<i32>(2147483647i, -45430i), true, -28865i, vec4<f32>(937f, 410f, 392f, 726f)), Struct_1(vec2<i32>(i32(-2147483648), -19220i), false, 1i, vec4<f32>(-376f, 594f, -857f, 946f)), false), Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), true, 1i, vec4<f32>(708f, -2002f, 1000f, 1048f)), Struct_1(vec2<i32>(-57456i, i32(-2147483648)), true, 2147483647i, vec4<f32>(-590f, 442f, -364f, -457f)), Struct_1(vec2<i32>(16526i, -1i), true, 0i, vec4<f32>(1076f, -228f, 1649f, 160f)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), false, 31282i, vec4<f32>(-795f, -329f, 510f, -1410f)), true), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -17318i), true, -1i, vec4<f32>(-463f, 1000f, -768f, -1180f)), Struct_1(vec2<i32>(-2671i, -29468i), true, 0i, vec4<f32>(-851f, 258f, -1000f, -331f)), Struct_1(vec2<i32>(1i, 0i), true, 18631i, vec4<f32>(-2126f, -1085f, -1697f, 1773f)), Struct_1(vec2<i32>(-6941i, -1i), true, -1i, vec4<f32>(880f, -1031f, 978f, 417f)), true), Struct_2(Struct_1(vec2<i32>(18976i, 39047i), false, i32(-2147483648), vec4<f32>(-549f, 718f, 1000f, 454f)), Struct_1(vec2<i32>(0i, -1i), true, 6978i, vec4<f32>(-1881f, 180f, 771f, -1090f)), Struct_1(vec2<i32>(0i, 1i), true, -19088i, vec4<f32>(867f, 1677f, 860f, 1103f)), Struct_1(vec2<i32>(0i, 27506i), false, 2147483647i, vec4<f32>(136f, -710f, -446f, -375f)), false), Struct_2(Struct_1(vec2<i32>(-91784i, 0i), false, -1i, vec4<f32>(-1036f, 1909f, 1279f, -1435f)), Struct_1(vec2<i32>(0i, 2147483647i), false, 11398i, vec4<f32>(241f, 278f, 1000f, -996f)), Struct_1(vec2<i32>(2147483647i, -1i), false, 1i, vec4<f32>(-774f, 887f, -1909f, -176f)), Struct_1(vec2<i32>(12786i, 2147483647i), true, 2147483647i, vec4<f32>(-313f, -935f, 100f, -642f)), false), Struct_2(Struct_1(vec2<i32>(17529i, 0i), true, 47964i, vec4<f32>(-479f, 217f, -416f, 570f)), Struct_1(vec2<i32>(-3829i, 10248i), true, -1i, vec4<f32>(491f, -424f, -242f, 184f)), Struct_1(vec2<i32>(i32(-2147483648), -1i), false, 1i, vec4<f32>(-117f, 2326f, 1000f, -1115f)), Struct_1(vec2<i32>(0i, 1i), true, 21193i, vec4<f32>(-1662f, -1398f, -940f, -1624f)), true), Struct_2(Struct_1(vec2<i32>(33169i, 2147483647i), true, -5961i, vec4<f32>(-2069f, -3602f, -950f, 1405f)), Struct_1(vec2<i32>(-1i, -4513i), false, i32(-2147483648), vec4<f32>(295f, -344f, 169f, 173f)), Struct_1(vec2<i32>(2147483647i, -62389i), true, -15226i, vec4<f32>(1507f, -1852f, 863f, -599f)), Struct_1(vec2<i32>(0i, 61323i), false, -3505i, vec4<f32>(399f, -470f, -1917f, 1807f)), false), Struct_2(Struct_1(vec2<i32>(0i, 1i), true, i32(-2147483648), vec4<f32>(-1664f, 105f, 694f, -265f)), Struct_1(vec2<i32>(2147483647i, 6104i), false, -1i, vec4<f32>(125f, -1003f, 981f, -149f)), Struct_1(vec2<i32>(i32(-2147483648), 1i), false, 4935i, vec4<f32>(541f, -2912f, -176f, -901f)), Struct_1(vec2<i32>(-52230i, 0i), true, 1i, vec4<f32>(1195f, -388f, -1286f, -2441f)), true), Struct_2(Struct_1(vec2<i32>(37871i, 10712i), false, 0i, vec4<f32>(1450f, -322f, 590f, -1284f)), Struct_1(vec2<i32>(0i, 0i), true, 38560i, vec4<f32>(-1000f, 516f, 2900f, -1263f)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), false, 33333i, vec4<f32>(540f, 395f, -302f, 151f)), Struct_1(vec2<i32>(-1i, 2147483647i), false, -53695i, vec4<f32>(-188f, 880f, 151f, 1850f)), false), Struct_2(Struct_1(vec2<i32>(11601i, 2147483647i), false, 8247i, vec4<f32>(542f, -1102f, -1000f, -620f)), Struct_1(vec2<i32>(-75775i, -33027i), false, 2147483647i, vec4<f32>(-233f, 2069f, 328f, -785f)), Struct_1(vec2<i32>(0i, 20598i), false, -8486i, vec4<f32>(769f, 204f, -1000f, 519f)), Struct_1(vec2<i32>(i32(-2147483648), -32151i), true, 2147483647i, vec4<f32>(460f, -534f, 1213f, 515f)), true), Struct_2(Struct_1(vec2<i32>(2695i, 14027i), false, 0i, vec4<f32>(-482f, 292f, -1220f, 348f)), Struct_1(vec2<i32>(i32(-2147483648), -2832i), false, -1i, vec4<f32>(1557f, -352f, -406f, -1000f)), Struct_1(vec2<i32>(1i, -1i), false, 2147483647i, vec4<f32>(1387f, -1000f, 1422f, -1197f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), false, 33188i, vec4<f32>(-1000f, 1168f, 558f, -745f)), false), Struct_2(Struct_1(vec2<i32>(27393i, i32(-2147483648)), false, 45611i, vec4<f32>(452f, -1563f, 1829f, -1047f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), true, 2147483647i, vec4<f32>(-980f, 2317f, -1285f, -892f)), Struct_1(vec2<i32>(-1i, -31703i), false, 28395i, vec4<f32>(577f, -1900f, 1166f, -1258f)), Struct_1(vec2<i32>(0i, 2147483647i), true, 11135i, vec4<f32>(657f, 196f, -601f, 116f)), true), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 48184i), false, 0i, vec4<f32>(1319f, 2643f, -1301f, 572f)), Struct_1(vec2<i32>(35603i, -56180i), true, 2147483647i, vec4<f32>(-1923f, 498f, -529f, 650f)), Struct_1(vec2<i32>(37895i, 30320i), false, 56614i, vec4<f32>(-1469f, 943f, -432f, -752f)), Struct_1(vec2<i32>(-37786i, -11367i), true, 33051i, vec4<f32>(-118f, 265f, 198f, -1184f)), false), Struct_2(Struct_1(vec2<i32>(-1i, 0i), false, i32(-2147483648), vec4<f32>(-1000f, 748f, -2627f, -1000f)), Struct_1(vec2<i32>(26140i, 2147483647i), true, -1i, vec4<f32>(-613f, -1946f, -1890f, -120f)), Struct_1(vec2<i32>(-1i, -72752i), true, -26170i, vec4<f32>(619f, -1119f, -432f, 925f)), Struct_1(vec2<i32>(1i, 61489i), true, 47326i, vec4<f32>(-1299f, 1325f, 546f, 580f)), false), Struct_2(Struct_1(vec2<i32>(-15742i, 23323i), false, -33369i, vec4<f32>(-1912f, -461f, -100f, -278f)), Struct_1(vec2<i32>(0i, 10658i), false, 2147483647i, vec4<f32>(-1804f, 1000f, 254f, 1000f)), Struct_1(vec2<i32>(0i, 2147483647i), false, 2147483647i, vec4<f32>(-692f, -949f, 1212f, -1093f)), Struct_1(vec2<i32>(52932i, -35468i), true, i32(-2147483648), vec4<f32>(663f, 931f, 442f, -1356f)), true), Struct_2(Struct_1(vec2<i32>(-37631i, -44494i), true, 30840i, vec4<f32>(1690f, -992f, -711f, 204f)), Struct_1(vec2<i32>(2147483647i, 29304i), true, i32(-2147483648), vec4<f32>(504f, 1701f, 419f, -1572f)), Struct_1(vec2<i32>(-53214i, 15756i), true, 0i, vec4<f32>(-188f, 414f, 1167f, -2519f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), true, -1i, vec4<f32>(2214f, -798f, 1021f, 576f)), true), Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), false, 1i, vec4<f32>(-547f, 423f, 974f, 2315f)), Struct_1(vec2<i32>(2147483647i, -44912i), true, 15638i, vec4<f32>(738f, 633f, 1166f, 150f)), Struct_1(vec2<i32>(2147483647i, -60181i), false, i32(-2147483648), vec4<f32>(642f, 1675f, -918f, -440f)), Struct_1(vec2<i32>(1i, 6476i), true, 8530i, vec4<f32>(123f, 605f, 2440f, 909f)), false), Struct_2(Struct_1(vec2<i32>(48865i, 2147483647i), false, 1i, vec4<f32>(-146f, 1184f, -1043f, -955f)), Struct_1(vec2<i32>(-27094i, -1i), true, 18891i, vec4<f32>(1000f, -1683f, 897f, 751f)), Struct_1(vec2<i32>(i32(-2147483648), 26113i), true, -269i, vec4<f32>(-1022f, -133f, 1115f, 528f)), Struct_1(vec2<i32>(-13491i, 21924i), false, -47281i, vec4<f32>(-865f, 991f, 618f, 1612f)), false), Struct_2(Struct_1(vec2<i32>(54573i, -1i), false, 1i, vec4<f32>(1000f, 1110f, -594f, -880f)), Struct_1(vec2<i32>(-59474i, 55617i), false, -18177i, vec4<f32>(111f, 179f, -1654f, -671f)), Struct_1(vec2<i32>(16147i, 29699i), true, 10586i, vec4<f32>(-975f, -484f, -572f, 406f)), Struct_1(vec2<i32>(0i, 2147483647i), true, 26601i, vec4<f32>(-144f, 578f, 158f, 487f)), true), Struct_2(Struct_1(vec2<i32>(-55797i, -23929i), true, -1i, vec4<f32>(115f, 1000f, -1468f, -219f)), Struct_1(vec2<i32>(0i, -1i), false, 2147483647i, vec4<f32>(-783f, -760f, -603f, -932f)), Struct_1(vec2<i32>(-1i, -45853i), false, 51735i, vec4<f32>(1505f, 155f, 1000f, -1021f)), Struct_1(vec2<i32>(-2569i, 2147483647i), true, 2147483647i, vec4<f32>(834f, -333f, 2532f, 1797f)), true), Struct_2(Struct_1(vec2<i32>(-15410i, -30321i), true, 1543i, vec4<f32>(213f, 451f, -193f, -129f)), Struct_1(vec2<i32>(-1i, 2147483647i), true, 10425i, vec4<f32>(-962f, 1444f, -1292f, -1180f)), Struct_1(vec2<i32>(-1i, -20488i), true, 31208i, vec4<f32>(-860f, 724f, 1000f, 878f)), Struct_1(vec2<i32>(1i, 1i), true, -41885i, vec4<f32>(-1000f, -890f, -497f, 1555f)), false), Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), true, -1i, vec4<f32>(-112f, -785f, 810f, 389f)), Struct_1(vec2<i32>(-50039i, -1i), true, -1083i, vec4<f32>(1487f, 162f, -286f, 1098f)), Struct_1(vec2<i32>(-1i, 1i), false, -5776i, vec4<f32>(1000f, 244f, 961f, -679f)), Struct_1(vec2<i32>(-79396i, 31272i), false, i32(-2147483648), vec4<f32>(-884f, 325f, 845f, 686f)), false), Struct_2(Struct_1(vec2<i32>(-1i, -1i), false, 0i, vec4<f32>(-1718f, -777f, 113f, 968f)), Struct_1(vec2<i32>(1i, -33026i), false, i32(-2147483648), vec4<f32>(2653f, -813f, 739f, -209f)), Struct_1(vec2<i32>(8701i, -10680i), true, -5003i, vec4<f32>(-680f, -595f, 663f, 571f)), Struct_1(vec2<i32>(i32(-2147483648), 22724i), true, 2147483647i, vec4<f32>(-1590f, 929f, -174f, 1682f)), true), Struct_2(Struct_1(vec2<i32>(20462i, i32(-2147483648)), false, 18660i, vec4<f32>(200f, 479f, 258f, 360f)), Struct_1(vec2<i32>(16778i, 14280i), true, 14471i, vec4<f32>(791f, 457f, 276f, -430f)), Struct_1(vec2<i32>(i32(-2147483648), 2396i), true, -1i, vec4<f32>(-1096f, -1140f, 262f, 238f)), Struct_1(vec2<i32>(1i, -1928i), false, i32(-2147483648), vec4<f32>(-311f, 157f, -1020f, 1448f)), true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> i32 {
    global3 = array<Struct_2, 28>();
    return 49049i;
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = vec2<u32>(21772u, ~u_input.d.x) << ((u_input.d & firstLeadingBit(countOneBits(u_input.d))) % vec2<u32>(32u));
    let var_1 = ~abs(vec3<u32>(u_input.d.x, var_0.x, 82930u));
    global1 = Struct_3(global1.a);
    global2 = Struct_3(global1.a);
    global1 = Struct_3(global1.a);
    return reverseBits(_wgslsmith_add_i32(reverseBits(u_input.a), -(-1i & u_input.a)) ^ min(16408i, _wgslsmith_div_i32(u_input.a, -global2.a.a.x)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_4 {
    return Struct_4(Struct_3(Struct_1(vec2<i32>(_wgslsmith_add_i32(u_input.a, -1i), -2147483647i), (arg_0.x ^ arg_0.x) < _wgslsmith_sub_u32(arg_0.x, 16629u), func_3(~98822i), global2.a.d)), -1244f, Struct_3(global2.a));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: i32, arg_3: vec4<u32>) -> Struct_3 {
    global2 = Struct_3(global2.a);
    global3 = array<Struct_2, 28>();
    global1 = Struct_3(Struct_1(global1.a.a << (~arg_3.xy % vec2<u32>(32u)), arg_0.c.a.b, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(arg_2, u_input.a), 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.a.d.x, -809f, global1.a.d.x, global1.a.d.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a.d + global1.a.d)))));
    global0 = (all(vec3<bool>(true, true, true)) & !select(all(vec3<bool>(false, arg_0.a.a.b, false)), global1.a.b, false)) || true;
    var var_0 = vec4<f32>(213f, arg_1.x, 659f, 195f);
    return func_2(arg_3).c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(Struct_1(countOneBits(countOneBits(u_input.c)), select(-global1.a.c, select(2923i, -33777i, global2.a.b), true) <= ~_wgslsmith_mult_i32(u_input.c.x, -1i), func_1(Struct_3(global2.a), u_input.d.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1146f) + global2.a.d.x), -1000f, -1304f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.d.x))))));
    global2 = func_4(func_2(~vec4<u32>(~u_input.b, 1u << (u_input.d.x % 32u), 4294967295u & u_input.b, 29378u)), vec3<f32>(_wgslsmith_f_op_f32(global1.a.d.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.d.x), -776f)), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a.d.x - _wgslsmith_f_op_f32(f32(-1f) * -1304f)), global1.a.d.x, global2.a.b))), 19806i, reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 0u, 9878u, 61209u), vec4<u32>(42973u, u_input.b, u_input.d.x, u_input.d.x)) | (min(vec4<u32>(u_input.b, 8978u, 0u, 1u), vec4<u32>(45281u, u_input.d.x, 0u, u_input.b)) << (vec4<u32>(4294967295u, u_input.d.x, u_input.b, 29384u) % vec4<u32>(32u)))));
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(60501u, u_input.d.x), 0u), 1u), 28u)];
    let var_1 = i32(-1i) * -2147483647i;
    let var_2 = global1.a.b;
    global0 = true == var_0.c.b;
    var var_3 = u_input.b;
    var var_4 = -(_wgslsmith_div_vec4_i32(vec4<i32>(func_1(Struct_3(global2.a), u_input.d.x), abs(-6460i), global1.a.a.x, ~0i), firstTrailingBit(vec4<i32>(u_input.c.x, 43225i, -2147483647i, -1i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -38685i, var_0.a.a.x, global2.a.c), vec4<i32>(global2.a.c, -1i, 1i, 26669i))) ^ firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.c, var_0.d.a.x, -2147483647i, global2.a.c), vec4<i32>(2147483647i, -31097i, -2147483647i, -1i)) | _wgslsmith_div_vec4_i32(vec4<i32>(var_1, var_1, -2147483647i, 0i), vec4<i32>(42208i, 0i, global1.a.a.x, 29551i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(_wgslsmith_sub_u32(1u, u_input.d.x), _wgslsmith_div_u32(u_input.d.x, 1u), ~u_input.d.x, ~1u) >> (vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 76261u, 54285u), vec3<u32>(66466u, 1u, 0u)), firstTrailingBit(u_input.b), 4294967295u) % vec4<u32>(32u))), u_input.b);
}

