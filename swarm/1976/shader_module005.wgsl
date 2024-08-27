struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(594f, 0i, Struct_1(17957u, vec2<i32>(-56385i, 1i), vec4<f32>(247f, 1551f, -505f, -794f), vec4<u32>(730u, 11204u, 54454u, 1u), vec3<f32>(288f, -1737f, -2090f))), Struct_2(-1534f, 22049i, Struct_1(1u, vec2<i32>(i32(-2147483648), 1i), vec4<f32>(-781f, 879f, 1000f, 1589f), vec4<u32>(4294967295u, 51102u, 0u, 83440u), vec3<f32>(-811f, -764f, -245f))), Struct_2(-1397f, -1i, Struct_1(4698u, vec2<i32>(0i, -1i), vec4<f32>(1000f, 275f, -235f, 1440f), vec4<u32>(4294967295u, 0u, 53060u, 4294967295u), vec3<f32>(224f, 129f, -2049f))), Struct_2(1296f, i32(-2147483648), Struct_1(1u, vec2<i32>(-1i, 15084i), vec4<f32>(406f, -1008f, -462f, 1293f), vec4<u32>(0u, 28293u, 48332u, 55310u), vec3<f32>(-168f, -1262f, 106f))), Struct_2(-1716f, 37024i, Struct_1(72097u, vec2<i32>(-7065i, 1i), vec4<f32>(-381f, -477f, 1067f, -339f), vec4<u32>(115659u, 40901u, 50353u, 1u), vec3<f32>(960f, -1550f, 221f))), Struct_2(-1000f, -30230i, Struct_1(45594u, vec2<i32>(-51158i, -1i), vec4<f32>(782f, 399f, 355f, 1333f), vec4<u32>(5793u, 4294967295u, 0u, 15757u), vec3<f32>(-481f, 1380f, 354f))), Struct_2(-747f, -12018i, Struct_1(1u, vec2<i32>(2147483647i, 24376i), vec4<f32>(-867f, -610f, 645f, -1561f), vec4<u32>(4294967295u, 39339u, 4294967295u, 4294967295u), vec3<f32>(-127f, 1578f, -260f))), Struct_2(-148f, 29588i, Struct_1(4294967295u, vec2<i32>(71170i, -29764i), vec4<f32>(-2361f, 524f, 1237f, 506f), vec4<u32>(0u, 22332u, 4294967295u, 4294967295u), vec3<f32>(-210f, -207f, -191f))), Struct_2(548f, -14963i, Struct_1(4294967295u, vec2<i32>(21920i, 2147483647i), vec4<f32>(-1472f, -1000f, -311f, 255f), vec4<u32>(1u, 0u, 1u, 23500u), vec3<f32>(1367f, 296f, 100f))), Struct_2(-762f, 59186i, Struct_1(28107u, vec2<i32>(-30218i, -1i), vec4<f32>(-519f, -1861f, -104f, -729f), vec4<u32>(11595u, 4294967295u, 37001u, 4294967295u), vec3<f32>(-161f, 507f, 702f))), Struct_2(2416f, 1i, Struct_1(1u, vec2<i32>(-6161i, 50949i), vec4<f32>(1374f, -1079f, 1386f, -1583f), vec4<u32>(0u, 599u, 4294967295u, 113411u), vec3<f32>(1885f, -697f, 293f))), Struct_2(335f, 21516i, Struct_1(0u, vec2<i32>(-9103i, -7380i), vec4<f32>(1060f, 372f, 1308f, 916f), vec4<u32>(1u, 36995u, 4294967295u, 11819u), vec3<f32>(201f, 1005f, -463f))), Struct_2(720f, -17989i, Struct_1(17916u, vec2<i32>(-50738i, 0i), vec4<f32>(-1616f, 1109f, 1519f, 778f), vec4<u32>(30864u, 20432u, 0u, 7256u), vec3<f32>(717f, 1069f, -469f))), Struct_2(874f, 28056i, Struct_1(39330u, vec2<i32>(2147483647i, -111818i), vec4<f32>(-811f, -1000f, -442f, 341f), vec4<u32>(1u, 14482u, 4294967295u, 3432u), vec3<f32>(-319f, 749f, 1000f))), Struct_2(152f, -60079i, Struct_1(1u, vec2<i32>(-17870i, 2147483647i), vec4<f32>(-688f, 417f, -1004f, 1000f), vec4<u32>(60572u, 0u, 19036u, 0u), vec3<f32>(-1356f, 470f, 526f))), Struct_2(499f, 0i, Struct_1(1u, vec2<i32>(0i, -15616i), vec4<f32>(539f, 1189f, 2583f, 1000f), vec4<u32>(6979u, 11086u, 45887u, 1u), vec3<f32>(-916f, 257f, 1036f))), Struct_2(-1040f, 12729i, Struct_1(4294967295u, vec2<i32>(33343i, 34002i), vec4<f32>(818f, 2298f, -347f, 461f), vec4<u32>(66849u, 0u, 4294967295u, 1u), vec3<f32>(-1960f, -1000f, 608f))), Struct_2(-846f, -1530i, Struct_1(4294967295u, vec2<i32>(0i, -1i), vec4<f32>(364f, -1698f, 1000f, -859f), vec4<u32>(21120u, 4294967295u, 66146u, 0u), vec3<f32>(-475f, -611f, 1886f))), Struct_2(-1711f, -1i, Struct_1(0u, vec2<i32>(1i, -45393i), vec4<f32>(-1283f, 1449f, -524f, 603f), vec4<u32>(43965u, 50616u, 33598u, 4294967295u), vec3<f32>(946f, 772f, -2271f))), Struct_2(-1192f, -1i, Struct_1(54059u, vec2<i32>(2147483647i, 0i), vec4<f32>(164f, -543f, -790f, -945f), vec4<u32>(31270u, 4294967295u, 0u, 0u), vec3<f32>(352f, -1000f, -515f))), Struct_2(740f, -1i, Struct_1(33920u, vec2<i32>(6473i, 2147483647i), vec4<f32>(-1308f, 1583f, -1072f, -1038f), vec4<u32>(60384u, 4294967295u, 1u, 0u), vec3<f32>(-353f, -1017f, -525f))), Struct_2(-292f, 16741i, Struct_1(0u, vec2<i32>(-11781i, 0i), vec4<f32>(283f, -1000f, 1000f, -1475f), vec4<u32>(0u, 0u, 60486u, 0u), vec3<f32>(-132f, -472f, 1548f))), Struct_2(-811f, -6071i, Struct_1(86342u, vec2<i32>(-75i, -34753i), vec4<f32>(-1309f, -797f, -647f, -1041f), vec4<u32>(1u, 67954u, 0u, 69171u), vec3<f32>(1976f, 493f, 1335f))), Struct_2(-1179f, 28826i, Struct_1(62978u, vec2<i32>(1i, 31314i), vec4<f32>(446f, 770f, -462f, -1194f), vec4<u32>(4294967295u, 19114u, 1u, 2591u), vec3<f32>(1247f, -831f, -589f))), Struct_2(-666f, 2147483647i, Struct_1(0u, vec2<i32>(1i, 40643i), vec4<f32>(-524f, -1342f, -866f, -903f), vec4<u32>(0u, 25419u, 1u, 26901u), vec3<f32>(548f, -1285f, -2550f))), Struct_2(671f, 2147483647i, Struct_1(119285u, vec2<i32>(21012i, 0i), vec4<f32>(2338f, -1716f, -1306f, 177f), vec4<u32>(34668u, 4294967295u, 49920u, 58860u), vec3<f32>(-1412f, 1166f, -541f))), Struct_2(269f, -69342i, Struct_1(1u, vec2<i32>(2147483647i, -4764i), vec4<f32>(-1723f, 302f, -420f, 1000f), vec4<u32>(1u, 0u, 85091u, 4294967295u), vec3<f32>(-1051f, 871f, -584f))), Struct_2(358f, 1i, Struct_1(67796u, vec2<i32>(-44224i, 1i), vec4<f32>(185f, -1211f, 178f, 1000f), vec4<u32>(18856u, 38493u, 54380u, 0u), vec3<f32>(-156f, 646f, 1000f))), Struct_2(-868f, 0i, Struct_1(0u, vec2<i32>(1i, i32(-2147483648)), vec4<f32>(352f, 737f, 200f, -929f), vec4<u32>(4294967295u, 0u, 76587u, 28634u), vec3<f32>(188f, -1000f, 1627f))), Struct_2(235f, -1i, Struct_1(1u, vec2<i32>(6986i, 0i), vec4<f32>(-1145f, 202f, 527f, 1000f), vec4<u32>(0u, 0u, 6560u, 13429u), vec3<f32>(-927f, 1875f, -1228f))), Struct_2(702f, 1i, Struct_1(40404u, vec2<i32>(0i, 0i), vec4<f32>(-1020f, 456f, -129f, 118f), vec4<u32>(1u, 1u, 10u, 4294967295u), vec3<f32>(-779f, 492f, 814f))), Struct_2(123f, 1i, Struct_1(0u, vec2<i32>(-1i, 1i), vec4<f32>(-522f, 1279f, -1122f, -272f), vec4<u32>(1u, 114971u, 35038u, 134245u), vec3<f32>(685f, 1083f, 2139f))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5) -> vec4<f32> {
    let var_0 = ~_wgslsmith_dot_vec2_u32(arg_0.d.ww, arg_0.d.wy);
    let var_1 = _wgslsmith_f_op_f32(trunc(146f));
    let var_2 = !(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), var_1 == _wgslsmith_div_f32(arg_0.e.x, 852f)));
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    return arg_1.a.c;
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_3(_wgslsmith_add_u32(min(~u_input.a >> (min(0u, u_input.a) % 32u), 4294967295u ^ arg_0), countOneBits(max(_wgslsmith_mod_u32(1u, 99500u), 1u))));
    var var_1 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(false, true, false)), !vec3<bool>(true, any(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(false, true)), true, true)), vec3<bool>(true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), all(vec2<bool>(false, true))), vec3<bool>(true, !(u_input.a < var_0.a), true)));
    let var_2 = !vec4<bool>(all(!(!vec3<bool>(var_1.x, true, var_1.x))), any(vec2<bool>(!var_1.x, true)), var_1.x, !(!(true != var_1.x)));
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(~max(34599i, 28342i), -abs(1i)), 28817i, _wgslsmith_mult_i32(~abs(39225i), -90690i << (select(var_0.a, 0u, var_2.x) % 32u))), vec3<i32>(i32(-1i) * -37680i, -2147483647i, abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, -48929i, 1i, 1i), vec4<i32>(-1i, -2455i, 2147483647i, 0i), var_2), select(vec4<i32>(1i, 1i, 6359i, 32243i), vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -16644i), var_2.x)))));
    var var_4 = Struct_2(289f, ~0i, Struct_1(_wgslsmith_clamp_u32(select(1u, ~var_0.a, var_1.x), 9788u, u_input.a), select(firstLeadingBit(-vec2<i32>(-2147483647i, var_3.x)), min(var_3.xx, ~var_3.zy), vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -525f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1456f, 1023f, true)))), _wgslsmith_f_op_f32(-151f + _wgslsmith_f_op_f32(-2059f - -382f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1074f) - _wgslsmith_f_op_vec4_f32(func_2(Struct_1(var_0.a, var_3.yx, vec4<f32>(1000f, 1264f, -242f, -701f), vec4<u32>(u_input.a, u_input.a, 29710u, 0u), vec3<f32>(-1027f, 250f, 1000f)), Struct_5(Struct_1(43443u, var_3.yx, vec4<f32>(816f, -460f, 821f, -404f), vec4<u32>(28244u, 1u, arg_0, u_input.a), vec3<f32>(2067f, -1116f, -1533f))))).x)), vec4<u32>(1u, ~_wgslsmith_add_u32(1u, 37614u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, u_input.a, var_0.a, var_0.a)), vec4<u32>(98012u, 19900u, arg_0, arg_0) >> (vec4<u32>(66034u, 39155u, 38417u, u_input.a) % vec4<u32>(32u))), arg_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(120f, -809f, 843f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-407f, -293f, -444f))), vec3<bool>(any(vec4<bool>(false, var_2.x, var_1.x, false)), var_2.x, true)))));
    return var_0.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    let var_0 = _wgslsmith_div_u32(u_input.a, ~u_input.a);
    global0 = array<Struct_2, 32>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(305f + -475f)) - -972f)), 2147483647i, Struct_1(1u, ~(~vec2<i32>(12862i, -40320i)) >> (~(vec2<u32>(45368u, var_0) & vec2<u32>(44691u, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(u_input.a, vec2<i32>(-2147483647i, -84789i), vec4<f32>(arg_2.x, -386f, arg_2.x, -1000f), vec4<u32>(29893u, var_0, var_0, 1u), vec3<f32>(-485f, arg_2.x, arg_2.x)), Struct_5(Struct_1(var_0, vec2<i32>(-1i, -1i), vec4<f32>(1567f, 1513f, arg_2.x, -714f), vec4<u32>(u_input.a, 10121u, 1u, 10301u), vec3<f32>(-943f, 1000f, arg_0.x))))))), min(firstTrailingBit(~vec4<u32>(27103u, 33295u, 1u, 1u)), vec4<u32>(73947u, func_3(4294967295u), _wgslsmith_div_u32(12512u, u_input.a), var_0)), _wgslsmith_f_op_vec3_f32(-arg_2)));
    return 29199u;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec2<f32> {
    global0 = array<Struct_2, 32>();
    let var_0 = Struct_3(arg_0.c.a);
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), arg_0.b, Struct_1(abs(_wgslsmith_dot_vec3_u32(~arg_0.c.d.xxy, reverseBits(arg_0.c.d.wxw))), arg_0.c.b, _wgslsmith_f_op_vec4_f32(arg_0.c.c + vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(arg_0.a - -766f), arg_0.a, arg_0.a)), arg_0.c.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c.c.xxy + vec3<f32>(arg_0.c.c.x, arg_0.c.e.x, arg_0.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_0.a, -1470f))))));
    return vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 1747f))))), _wgslsmith_f_op_f32(round(1260f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(global0[_wgslsmith_index_u32(func_1(vec2<f32>(191f, 1005f), false, vec3<f32>(1000f, 1302f, 1652f)), 32u)], -683f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(f32(-1f) * -1482f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(548f, -340f), vec2<f32>(-1065f, 1131f))))))));
    global0 = array<Struct_2, 32>();
    var var_1 = _wgslsmith_f_op_f32(-340f - 499f);
    let var_2 = Struct_5(Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(33279u, u_input.a, 0u)), (u_input.a & 4294967295u) << (u_input.a % 32u)), ~vec2<i32>(1i, 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1855f, 596f, var_0.x, 953f)) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(696f * 3008f), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -453f))), select(~(vec4<u32>(0u, 1u, 0u, 58895u) << (vec4<u32>(u_input.a, 0u, 14593u, 29248u) % vec4<u32>(32u))), vec4<u32>(u_input.a, u_input.a, select(u_input.a, 30976u, true), u_input.a), any(vec4<bool>(false, false, false, false)) & false), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1427f, var_0.x))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(func_4(Struct_2(var_0.x, ~(-var_2.a.b.x), Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, var_2.a.d.x, 10865u, u_input.a)), vec2<i32>(-2147483647i, firstTrailingBit(2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1456f, 843f, -760f, var_0.x)), _wgslsmith_div_vec4_u32(~var_2.a.d, var_2.a.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_2.a.c.ywx))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(var_2.a, Struct_5(Struct_1(4294967295u, var_2.a.b, vec4<f32>(var_0.x, var_2.a.e.x, -1896f, var_0.x), var_2.a.d, vec3<f32>(var_0.x, -861f, -1000f))))).x - _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(var_2.a.c.x, -1574f))))))).x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstLeadingBit(_wgslsmith_mod_vec2_u32(var_2.a.d.xx, var_2.a.d.xy)) << (~var_2.a.d.wy % vec2<u32>(32u))));
}

