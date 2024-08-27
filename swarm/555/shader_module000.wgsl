struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-2126f, -1000f, 432f, -2122f), 2147483647i, 54688u);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(-299f, -427f, -1000f, 615f), 33168i, 1283u));

var<private> global2: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(-970f, -344f, -548f), vec3<f32>(-551f, -219f, -599f), vec3<f32>(122f, 1258f, 852f), vec3<f32>(258f, 998f, -2028f), vec3<f32>(-235f, 382f, 1825f), vec3<f32>(-367f, 884f, 1524f), vec3<f32>(1224f, -909f, 1636f), vec3<f32>(-203f, 982f, 1000f), vec3<f32>(436f, -1695f, -995f), vec3<f32>(1115f, 282f, -334f), vec3<f32>(-1481f, -265f, 952f), vec3<f32>(-800f, -991f, -596f), vec3<f32>(-762f, -571f, 902f), vec3<f32>(156f, 216f, 304f), vec3<f32>(555f, -252f, 1000f), vec3<f32>(697f, 588f, 1700f), vec3<f32>(-329f, -805f, 1297f), vec3<f32>(460f, -937f, -1418f), vec3<f32>(-1569f, 2944f, -612f), vec3<f32>(923f, 1262f, -3279f), vec3<f32>(-1008f, 1018f, 747f), vec3<f32>(-1136f, -442f, -474f));

var<private> global3: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_1(vec4<f32>(589f, -1000f, -812f, 1394f), 34558i, 4294967295u), vec3<f32>(-432f, 121f, -463f), Struct_2(Struct_1(vec4<f32>(-250f, -1888f, 207f, 501f), -33069i, 23058u)), 2433i), Struct_3(Struct_1(vec4<f32>(665f, 608f, -332f, -1417f), 109745i, 5420u), vec3<f32>(-299f, 933f, 1307f), Struct_2(Struct_1(vec4<f32>(-315f, -1630f, -434f, -538f), 3735i, 104557u)), 1119i), Struct_3(Struct_1(vec4<f32>(521f, 871f, 311f, -421f), 0i, 1135u), vec3<f32>(-1565f, 433f, 633f), Struct_2(Struct_1(vec4<f32>(580f, 1511f, -1022f, 905f), i32(-2147483648), 17632u)), 1i), Struct_3(Struct_1(vec4<f32>(1000f, -282f, 766f, -765f), -36321i, 0u), vec3<f32>(-1028f, 478f, -1888f), Struct_2(Struct_1(vec4<f32>(1000f, 529f, -267f, -712f), 22692i, 31971u)), 9674i), Struct_3(Struct_1(vec4<f32>(-1319f, -747f, -102f, 510f), 1i, 4294967295u), vec3<f32>(-376f, 1649f, 456f), Struct_2(Struct_1(vec4<f32>(250f, 1273f, -812f, -396f), -1i, 101350u)), 0i), Struct_3(Struct_1(vec4<f32>(747f, 492f, -1843f, -1010f), 7963i, 0u), vec3<f32>(1211f, 1513f, 1000f), Struct_2(Struct_1(vec4<f32>(675f, -994f, 1700f, -1000f), i32(-2147483648), 4294967295u)), 2147483647i), Struct_3(Struct_1(vec4<f32>(626f, -367f, -266f, -151f), 2147483647i, 110404u), vec3<f32>(1000f, -2619f, -1000f), Struct_2(Struct_1(vec4<f32>(-1358f, -1247f, 591f, -1231f), -10829i, 4294967295u)), 2147483647i), Struct_3(Struct_1(vec4<f32>(-331f, 1714f, 994f, 457f), 0i, 33316u), vec3<f32>(220f, 1322f, 2063f), Struct_2(Struct_1(vec4<f32>(1000f, -1174f, -594f, 169f), -8062i, 17469u)), -30828i), Struct_3(Struct_1(vec4<f32>(-1152f, 1000f, 2150f, 1183f), 1i, 0u), vec3<f32>(243f, 1357f, -234f), Struct_2(Struct_1(vec4<f32>(101f, 263f, 808f, -1095f), -31324i, 50825u)), -24614i), Struct_3(Struct_1(vec4<f32>(-527f, -1522f, -382f, -309f), 46353i, 29919u), vec3<f32>(-168f, -801f, -1273f), Struct_2(Struct_1(vec4<f32>(1993f, -1170f, 221f, -571f), 56506i, 1u)), 8516i), Struct_3(Struct_1(vec4<f32>(244f, -463f, -186f, -1839f), 1i, 0u), vec3<f32>(-541f, 335f, -513f), Struct_2(Struct_1(vec4<f32>(624f, -593f, -510f, -1145f), 24708i, 33098u)), -11972i), Struct_3(Struct_1(vec4<f32>(1607f, -1473f, -537f, 128f), 1i, 30721u), vec3<f32>(462f, 644f, -1328f), Struct_2(Struct_1(vec4<f32>(-933f, 445f, 829f, -1033f), 0i, 74721u)), 50222i), Struct_3(Struct_1(vec4<f32>(-1825f, -139f, -685f, 1857f), 5221i, 0u), vec3<f32>(1073f, 481f, 2736f), Struct_2(Struct_1(vec4<f32>(1567f, -1764f, -1140f, -132f), -51375i, 5201u)), 16541i), Struct_3(Struct_1(vec4<f32>(138f, 809f, -793f, -153f), -30474i, 75959u), vec3<f32>(-1636f, 1726f, -1275f), Struct_2(Struct_1(vec4<f32>(1372f, -947f, -1951f, -1117f), i32(-2147483648), 4294967295u)), i32(-2147483648)), Struct_3(Struct_1(vec4<f32>(-431f, -170f, -535f, -481f), -30662i, 0u), vec3<f32>(1430f, -2102f, 548f), Struct_2(Struct_1(vec4<f32>(537f, -1085f, -1678f, -1011f), 43139i, 1u)), 12888i), Struct_3(Struct_1(vec4<f32>(470f, -181f, -203f, -843f), 1i, 37750u), vec3<f32>(906f, 544f, -1075f), Struct_2(Struct_1(vec4<f32>(-577f, -435f, -1849f, 520f), -1i, 19675u)), 18810i), Struct_3(Struct_1(vec4<f32>(-570f, -1197f, -241f, 1000f), i32(-2147483648), 4294967295u), vec3<f32>(-1800f, -976f, 878f), Struct_2(Struct_1(vec4<f32>(-995f, -115f, 1901f, -955f), 8796i, 17430u)), 1i), Struct_3(Struct_1(vec4<f32>(1542f, 278f, 1000f, -759f), 19746i, 30700u), vec3<f32>(468f, 892f, -1285f), Struct_2(Struct_1(vec4<f32>(-698f, -741f, 858f, -200f), -3496i, 46595u)), -23539i), Struct_3(Struct_1(vec4<f32>(481f, -355f, 347f, -165f), -1i, 4294967295u), vec3<f32>(-220f, 701f, 1059f), Struct_2(Struct_1(vec4<f32>(-349f, -420f, 245f, -1363f), i32(-2147483648), 41797u)), -66222i), Struct_3(Struct_1(vec4<f32>(-1472f, -150f, -300f, 749f), 1i, 53988u), vec3<f32>(1332f, 1247f, 282f), Struct_2(Struct_1(vec4<f32>(-665f, 1272f, -342f, 1222f), 0i, 4294967295u)), 38182i), Struct_3(Struct_1(vec4<f32>(476f, -564f, -1028f, -1037f), 10470i, 4808u), vec3<f32>(307f, 1000f, 139f), Struct_2(Struct_1(vec4<f32>(1519f, 392f, 439f, -960f), 975i, 72399u)), -36395i), Struct_3(Struct_1(vec4<f32>(394f, 1348f, 692f, 104f), -1i, 69635u), vec3<f32>(1203f, -1645f, 497f), Struct_2(Struct_1(vec4<f32>(752f, -1168f, 1854f, 1000f), 52299i, 0u)), 0i), Struct_3(Struct_1(vec4<f32>(-345f, 115f, -1012f, 407f), 1i, 60666u), vec3<f32>(-2349f, -1000f, -238f), Struct_2(Struct_1(vec4<f32>(272f, 1913f, 120f, 382f), 1i, 12511u)), -2825i), Struct_3(Struct_1(vec4<f32>(-808f, -620f, 616f, 1580f), 2147483647i, 2877u), vec3<f32>(-779f, -538f, -1000f), Struct_2(Struct_1(vec4<f32>(-946f, -522f, -1000f, -1803f), -1i, 31742u)), 45467i));

var<private> global4: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(ceil(arg_0.a.x));
    var var_2 = 50382u;
    let var_3 = global1.a.c == arg_0.c;
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a.a * vec4<f32>(-1142f, -547f, global1.a.a.x, var_0.a.x)) - global0.a), var_0.b, firstTrailingBit(0u ^ select(var_0.c, 20156u, false))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(588f, _wgslsmith_f_op_f32(-global1.a.a.x), global4.x))), Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.a)), vec4<f32>(arg_0.a.x, 1273f, global0.a.x, -760f)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.b, arg_0.b, arg_0.b, arg_0.b), vec4<i32>(var_0.b, var_0.b, -2147483647i, 5330i)), abs(vec4<i32>(2147483647i, 0i, arg_0.b, -2147483647i))), 47664u)), -_wgslsmith_div_i32(47586i, -countOneBits(40254i)));
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-317f, var_0.a.x, 1032f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_2() -> Struct_1 {
    var var_0 = 13921i;
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global1.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a.a + global1.a.a)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.a.a.x), global0.a.x, -493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(206f)) + global1.a.a.x))), ~(-1i), global1.a.c);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(156f)) + -177f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.x))), 410f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(740f, _wgslsmith_div_f32(global1.a.a.x, global4.x), true))))), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -412f)), global0.a.x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global4.x), 831f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - global1.a.a.x), 133f))), _wgslsmith_mult_i32(7i, -((1i >> (u_input.a.x % 32u)) & firstTrailingBit(global1.a.b))), reverseBits(~43575u ^ (u_input.a.x | u_input.a.x)) | (~firstTrailingBit(6316u) << (global1.a.c % 32u)));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> vec2<bool> {
    let var_0 = global1.a.b;
    global4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.a.x)), 1000f, _wgslsmith_f_op_f32(1789f - _wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-834f * -1141f) - _wgslsmith_f_op_f32(global1.a.a.x + 1000f)))), global0.a);
    global4 = vec4<f32>(-432f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(995f * -1000f) - global1.a.a.x))) * global1.a.a.x), _wgslsmith_f_op_f32(945f * -1000f), _wgslsmith_f_op_f32(-701f * _wgslsmith_f_op_f32(abs(-889f))));
    var var_1 = !(!vec4<bool>(false, true, true, !(global0.a.x != -459f)));
    var var_2 = Struct_3(func_2(), global4.yzy, Struct_2(func_2()), global0.b);
    return vec2<bool>(var_1.x, var_1.x);
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    global0 = func_2();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global1.a.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -1776f, 1000f, global4.x))), global0.b << ((select(global1.a.c, 12883u, false) | ~global1.a.c) % 32u), reverseBits(~1u)));
    let var_1 = Struct_2(Struct_1(vec4<f32>(global4.x, var_0.a.a.x, _wgslsmith_f_op_f32(round(global0.a.x)), 876f), -2147483647i, 1u));
    global2 = array<vec3<f32>, 22>();
    global0 = arg_3;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.a) - func_2().a), _wgslsmith_add_i32(global0.b, var_0.a.b), _wgslsmith_div_u32(1u, u_input.a.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_3 {
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-445f, global0.a.x, _wgslsmith_f_op_vec4_f32(func_3(arg_1.a)).x, global0.a.x), global0.a)) - _wgslsmith_f_op_vec4_f32(arg_0.a.a - global0.a));
    global4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_0.a.a)) + func_2().a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1310f * -415f), global0.a.x, 922f, global4.x) - func_4(arg_2.x, vec2<bool>(arg_2.x, arg_2.x), _wgslsmith_f_op_f32(-global1.a.a.x), arg_1.a).a.a))), all(arg_2.ww)));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.a.zy))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1327f, global1.a.a.x), global4.x) * vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(621f - global0.a.x)))) + func_2().a.xx);
    global1 = Struct_2(arg_1.a);
    var var_1 = func_2();
    return Struct_3(arg_1.a, vec3<f32>(2522f, var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(119f))))), func_4(false, !vec2<bool>(any(vec2<bool>(arg_2.x, arg_2.x)), arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - 251f)), func_4(arg_2.x | all(arg_2.wzy), select(select(arg_2.yw, arg_2.yw, arg_2.wz), vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x) + global4.x), Struct_1(vec4<f32>(var_1.a.x, var_1.a.x, global1.a.a.x, global1.a.a.x), global1.a.b, _wgslsmith_dot_vec4_u32(vec4<u32>(12932u, 38629u, arg_1.a.c, 40336u), vec4<u32>(42777u, arg_0.a.c, 1u, arg_0.a.c)))).a), countOneBits(_wgslsmith_add_i32(~global1.a.b, global0.b)) >> (select(_wgslsmith_sub_u32(arg_1.a.c, 0u) | ~global1.a.c, 900u, true) % 32u));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    var var_0 = vec3<f32>(-232f, _wgslsmith_f_op_f32(global0.a.x - -217f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)));
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a.a + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global1.a.a, arg_1.c.a.a)) + _wgslsmith_f_op_vec4_f32(arg_1.c.a.a + arg_1.c.a.a)), vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(-411f + -928f), global4.x))) - vec4<f32>(_wgslsmith_f_op_f32(round(global0.a.x)), func_2().a.x, global0.a.x, 969f));
    global1 = func_5(Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(global4.x, 1487f)), _wgslsmith_f_op_f32(768f * 886f), _wgslsmith_f_op_f32(floor(1160f)), _wgslsmith_f_op_f32(step(-2070f, arg_1.c.a.a.x))), global0.b, _wgslsmith_clamp_u32(min(arg_1.a.c, global1.a.c), abs(58617u), _wgslsmith_div_u32(arg_1.a.c, 44462u)))), func_4(-countOneBits(arg_1.d) == func_5(Struct_2(arg_0), Struct_2(arg_1.c.a), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false)).c.a.b, vec2<bool>(true || any(vec2<bool>(false, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2162f))), func_4(true, func_1(var_0.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1633f, global4.x, global0.a.x, -841f), vec4<f32>(global4.x, arg_1.b.x, global1.a.a.x, -557f), vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-929f, var_0.x))), Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a), global1.a.b, _wgslsmith_sub_u32(42197u, u_input.a.x))).a), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, false))).c;
    global3 = array<Struct_3, 24>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-755f * global0.a.x), _wgslsmith_f_op_f32(-495f - _wgslsmith_f_op_f32(f32(-1f) * -891f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + var_0.x) - _wgslsmith_f_op_f32(-arg_1.b.x))) * vec3<f32>(1868f, -1523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1004f - global0.a.x)))));
    return Struct_2(Struct_1(global0.a, _wgslsmith_div_i32(firstTrailingBit(~(-1i)), arg_0.b), _wgslsmith_add_u32(arg_1.c.a.c, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(3254u, global1.a.c, 3761u), vec3<u32>(1u, global1.a.c, 1u)), u_input.a.x))));
}

fn func_7(arg_0: Struct_2, arg_1: vec3<bool>) -> StorageBuffer {
    let var_0 = (_wgslsmith_mult_u32(global1.a.c, ~u_input.a.x) >= ~global1.a.c) & ((~(~global0.c) << (~reverseBits(4294967295u) % 32u)) >= global0.c);
    var var_1 = func_5(Struct_2(global1.a), arg_0, select(select(select(select(vec4<bool>(var_0, true, arg_1.x, true), vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(false, false, var_0, var_0)), vec4<bool>(arg_1.x, arg_1.x, var_0, true), vec4<bool>(true, arg_1.x, true, arg_1.x)), !select(vec4<bool>(false, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, var_0, var_0, var_0), arg_1.x), !(!vec4<bool>(true, arg_1.x, true, false))), !(!select(vec4<bool>(var_0, arg_1.x, var_0, true), vec4<bool>(true, false, true, var_0), vec4<bool>(false, true, arg_1.x, arg_1.x))), select(select(vec4<bool>(arg_1.x, false, var_0, true), vec4<bool>(var_0, true, var_0, true), vec4<bool>(false, var_0, false, var_0)), vec4<bool>(arg_1.x, all(vec4<bool>(var_0, arg_1.x, arg_1.x, false)), var_0, all(vec2<bool>(true, arg_1.x))), true)));
    var var_2 = ~(~40520u);
    let var_3 = func_5(func_6(arg_0.a, global3[_wgslsmith_index_u32(1u, 24u)]), func_5(arg_0, arg_0, !select(vec4<bool>(var_0, true, var_0, false), select(vec4<bool>(var_0, arg_1.x, false, false), vec4<bool>(var_0, false, true, arg_1.x), var_0), !vec4<bool>(false, var_0, true, arg_1.x))).c, !select(vec4<bool>(arg_1.x, global0.b == global0.b, var_0, arg_1.x), select(select(vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, var_0, false), true), vec4<bool>(arg_1.x, false, arg_1.x, var_0), !vec4<bool>(arg_1.x, false, false, var_0)), any(select(arg_1, vec3<bool>(false, true, var_0), vec3<bool>(true, true, true)))));
    var var_4 = -var_1.a.b;
    return StorageBuffer(arg_0.a.a.x, vec3<i32>(~(-22949i >> (1u % 32u)), ~global1.a.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-41712i, -1i << (global0.c % 32u), _wgslsmith_add_i32(2147483647i, -31076i)), vec3<i32>(1810i, -35796i, -global1.a.b))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(func_6(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global0.a, global1.a.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(650f, 342f, -415f, 1641f), global0.a, vec4<bool>(true, true, true, false)))), (-38074i & global1.a.b) | -global1.a.b, ~102845u >> (u_input.a.x % 32u)), func_5(Struct_2(Struct_1(global1.a.a, -55117i, u_input.a.x)), func_4(true, func_1(-814f, vec4<f32>(global0.a.x, -1765f, global1.a.a.x, global0.a.x)), -1769f, func_2()), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)))), vec3<bool>(!(!all(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1846f) - global0.a.x) == _wgslsmith_f_op_f32(floor(global4.x)), true));
}

