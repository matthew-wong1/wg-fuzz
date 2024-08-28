struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(22953u, 0u), vec2<u32>(0u, 0u), vec2<u32>(125666u, 1u), vec2<u32>(1u, 111140u), vec2<u32>(64462u, 17861u));

var<private> global2: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec3<f32>(-382f, 972f, -404f), 37884u, Struct_2(Struct_1(-1301f, vec4<f32>(608f, -1154f, -928f, 1873f), vec2<bool>(false, true), i32(-2147483648)), 4294967295u, 400f), vec2<bool>(false, true), Struct_2(Struct_1(-2513f, vec4<f32>(1865f, -285f, -200f, -506f), vec2<bool>(false, true), 3316i), 19989u, 255f)), Struct_3(vec3<f32>(1292f, 1099f, -1662f), 7473u, Struct_2(Struct_1(815f, vec4<f32>(-2840f, 848f, -1198f, -362f), vec2<bool>(true, false), 13204i), 0u, 116f), vec2<bool>(false, true), Struct_2(Struct_1(174f, vec4<f32>(-450f, -823f, 1000f, 783f), vec2<bool>(true, false), 0i), 1u, -250f)), Struct_3(vec3<f32>(-1371f, -1505f, 1000f), 29982u, Struct_2(Struct_1(-630f, vec4<f32>(-571f, 1000f, 972f, -212f), vec2<bool>(true, false), i32(-2147483648)), 1u, 884f), vec2<bool>(false, true), Struct_2(Struct_1(-572f, vec4<f32>(-956f, -830f, -507f, 2031f), vec2<bool>(true, false), 26637i), 4294967295u, -118f)), Struct_3(vec3<f32>(211f, 203f, 692f), 3487u, Struct_2(Struct_1(-121f, vec4<f32>(-662f, -945f, -761f, 295f), vec2<bool>(false, true), 30030i), 76002u, -685f), vec2<bool>(true, false), Struct_2(Struct_1(-469f, vec4<f32>(580f, 954f, -1955f, 261f), vec2<bool>(false, false), 81139i), 24378u, -430f)), Struct_3(vec3<f32>(127f, -479f, 503f), 1616u, Struct_2(Struct_1(1751f, vec4<f32>(148f, 510f, 550f, -2473f), vec2<bool>(true, false), 1i), 0u, 428f), vec2<bool>(true, false), Struct_2(Struct_1(-1000f, vec4<f32>(176f, -588f, 933f, -1658f), vec2<bool>(false, false), 1i), 0u, 303f)), Struct_3(vec3<f32>(-376f, 1126f, 319f), 21382u, Struct_2(Struct_1(-190f, vec4<f32>(-1169f, 627f, -1000f, 1242f), vec2<bool>(false, false), i32(-2147483648)), 76765u, 120f), vec2<bool>(false, false), Struct_2(Struct_1(-482f, vec4<f32>(-334f, 859f, -560f, 516f), vec2<bool>(false, true), -16869i), 1u, 616f)), Struct_3(vec3<f32>(507f, 1065f, 931f), 4294967295u, Struct_2(Struct_1(269f, vec4<f32>(-1469f, 758f, 626f, -671f), vec2<bool>(false, true), i32(-2147483648)), 57887u, -1235f), vec2<bool>(true, true), Struct_2(Struct_1(-670f, vec4<f32>(494f, 1018f, -1208f, -1126f), vec2<bool>(false, true), -8603i), 1u, -731f)), Struct_3(vec3<f32>(-156f, -293f, -1291f), 4294967295u, Struct_2(Struct_1(1684f, vec4<f32>(-440f, -1628f, 948f, -555f), vec2<bool>(false, false), i32(-2147483648)), 1u, -173f), vec2<bool>(false, false), Struct_2(Struct_1(1901f, vec4<f32>(-1114f, -1089f, -255f, -1470f), vec2<bool>(false, false), -591i), 1u, -186f)), Struct_3(vec3<f32>(426f, 246f, 1498f), 0u, Struct_2(Struct_1(-1384f, vec4<f32>(-612f, -1000f, -1938f, -1000f), vec2<bool>(true, false), -441i), 0u, -291f), vec2<bool>(false, false), Struct_2(Struct_1(283f, vec4<f32>(473f, 1035f, 1474f, -140f), vec2<bool>(false, false), -71730i), 4294967295u, -1406f)), Struct_3(vec3<f32>(1362f, -1000f, -244f), 4294967295u, Struct_2(Struct_1(-766f, vec4<f32>(1132f, -628f, -168f, 411f), vec2<bool>(true, true), 2147483647i), 38114u, 134f), vec2<bool>(false, false), Struct_2(Struct_1(850f, vec4<f32>(-1015f, -575f, 575f, 698f), vec2<bool>(true, false), 28951i), 4294967295u, -1000f)), Struct_3(vec3<f32>(-1105f, -986f, 216f), 1u, Struct_2(Struct_1(-296f, vec4<f32>(289f, 261f, 707f, 886f), vec2<bool>(true, true), 2147483647i), 46966u, -874f), vec2<bool>(true, false), Struct_2(Struct_1(611f, vec4<f32>(468f, -872f, 554f, 261f), vec2<bool>(true, true), -1i), 23084u, 309f)), Struct_3(vec3<f32>(1000f, -1360f, -811f), 0u, Struct_2(Struct_1(-978f, vec4<f32>(572f, 144f, -895f, 351f), vec2<bool>(false, false), 7483i), 59116u, 1439f), vec2<bool>(true, true), Struct_2(Struct_1(1817f, vec4<f32>(-163f, 371f, 1000f, 309f), vec2<bool>(true, true), 0i), 0u, 113f)), Struct_3(vec3<f32>(-1477f, 1084f, -1538f), 4294967295u, Struct_2(Struct_1(-1237f, vec4<f32>(-846f, 512f, -1677f, -289f), vec2<bool>(true, true), 49059i), 0u, 288f), vec2<bool>(false, false), Struct_2(Struct_1(1000f, vec4<f32>(388f, 1167f, -761f, -1310f), vec2<bool>(false, false), -1i), 4294967295u, -813f)), Struct_3(vec3<f32>(-1934f, 154f, 785f), 1u, Struct_2(Struct_1(-101f, vec4<f32>(-108f, 632f, 186f, -320f), vec2<bool>(true, true), i32(-2147483648)), 4294967295u, 450f), vec2<bool>(true, false), Struct_2(Struct_1(-608f, vec4<f32>(1483f, 946f, 165f, -2398f), vec2<bool>(false, false), -28491i), 4294967295u, -528f)), Struct_3(vec3<f32>(-435f, -279f, 1440f), 1u, Struct_2(Struct_1(1093f, vec4<f32>(-291f, 1620f, -1745f, 860f), vec2<bool>(false, true), 0i), 1u, -483f), vec2<bool>(true, true), Struct_2(Struct_1(-1060f, vec4<f32>(506f, -804f, -120f, -1000f), vec2<bool>(false, true), -5539i), 13136u, -798f)), Struct_3(vec3<f32>(-551f, 607f, -1361f), 36383u, Struct_2(Struct_1(172f, vec4<f32>(-200f, -1654f, -412f, -823f), vec2<bool>(true, true), 32598i), 41618u, 1959f), vec2<bool>(false, false), Struct_2(Struct_1(-1115f, vec4<f32>(1689f, 1377f, -1000f, 1480f), vec2<bool>(false, false), 2880i), 0u, 1367f)), Struct_3(vec3<f32>(2284f, 166f, 407f), 1u, Struct_2(Struct_1(152f, vec4<f32>(-1000f, -303f, 768f, -834f), vec2<bool>(true, true), 1i), 0u, 138f), vec2<bool>(true, false), Struct_2(Struct_1(-923f, vec4<f32>(1333f, 933f, 1083f, 1772f), vec2<bool>(false, false), 16690i), 4294967295u, -647f)));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-505f, vec4<f32>(374f, -310f, -551f, 680f), vec2<bool>(true, false), -3195i), Struct_1(916f, vec4<f32>(-1094f, 1904f, -535f, 459f), vec2<bool>(false, false), -16744i), Struct_1(-779f, vec4<f32>(151f, -1580f, -130f, -1000f), vec2<bool>(true, false), 21404i), Struct_1(358f, vec4<f32>(-1689f, 1181f, 338f, 1113f), vec2<bool>(true, false), 50490i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = arg_0.e.c;
    var var_1 = ~u_input.a;
    let var_2 = arg_0;
    let var_3 = abs(_wgslsmith_clamp_vec2_i32(~select(vec2<i32>(-8687i, var_2.e.a.d), -vec2<i32>(arg_0.e.a.d, var_2.c.a.d), select(var_2.e.a.c, vec2<bool>(arg_0.e.a.c.x, true), var_2.e.a.c)), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.c.a.d, -2147483647i), vec2<i32>(var_2.e.a.d, arg_0.e.a.d)))), select(_wgslsmith_div_vec2_i32(~vec2<i32>(1i, 15109i), vec2<i32>(51660i, arg_0.c.a.d)), select(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -29246i), vec2<i32>(var_2.c.a.d, 0i)), -vec2<i32>(-32923i, arg_0.e.a.d), arg_0.c.a.c), !arg_0.c.a.c)));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(round(-1313f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-990f * var_0)), var_0, -532f);
    return _wgslsmith_f_op_f32(trunc(var_0));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = !(!(!vec2<bool>(true, arg_0.a.c.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(816f + arg_0.a.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1000f)))))));
    let var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(4294967295u, 17u)], 0u)), _wgslsmith_f_op_f32(select(961f, arg_0.c, var_0.x)))), -1241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - -195f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1834f, arg_0.a.a, var_0.x)) + _wgslsmith_f_op_f32(max(-2487f, 1023f))))), u_input.c, arg_0, select(arg_0.a.c, !arg_0.a.c, select(false, any(vec2<bool>(var_0.x, arg_0.a.c.x)) && var_0.x, any(!vec4<bool>(true, false, var_0.x, true)))), arg_0);
    var var_3 = _wgslsmith_f_op_f32(-1307f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1087f - var_2.c.a.a))), _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(sign(1911f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -422f))))));
    let var_4 = vec4<f32>(1271f, -1489f, var_2.e.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - var_2.a.x)))));
    return select(max(reverseBits(select(u_input.c, var_2.b, var_0.x)), u_input.a.x), 0u, arg_0.a.c.x) & arg_0.b;
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, ~(arg_0.b >> (u_input.c % 32u)), 85341u), u_input.a), ~u_input.a.x);
    var var_1 = min(vec4<u32>(1u ^ ~arg_0.b, ~func_2(arg_0), _wgslsmith_mult_u32(~4294967295u, ~41191u), 11586u) & vec4<u32>(179u, ~u_input.b, u_input.b, _wgslsmith_sub_u32(var_0.x, 64715u)), ~vec4<u32>(arg_0.b, _wgslsmith_dot_vec2_u32(var_0.zx, u_input.a.yx) & ~360u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4478u, 0u, u_input.a.x), vec4<u32>(35209u, arg_0.b, var_0.x, var_0.x)), var_0.x, true), var_0.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.a.b), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-arg_0.c), arg_0.c, -313f)))), true));
    global0 = arg_0.a.d;
    let var_3 = !vec4<bool>(!arg_0.a.c.x, !arg_0.a.c.x, !arg_0.a.c.x, all(vec3<bool>(true, all(vec2<bool>(arg_0.a.c.x, arg_0.a.c.x)), all(vec3<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x)))));
    return global2[_wgslsmith_index_u32(firstLeadingBit(1u), 17u)];
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = -20830i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-838f, arg_0.e.c, arg_0.e.c));
    return global3[_wgslsmith_index_u32(48212u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 17u)];
    var var_1 = vec2<bool>(any(select(vec3<bool>(all(vec4<bool>(false, var_0.e.a.c.x, var_0.e.a.c.x, false)), false, false), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), var_0.c.a.c.x), var_0.c.a.c.x)), true);
    var var_2 = Struct_1(2407f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1192f, var_0.e.c, -121f, 1902f)))), vec2<bool>(var_0.d.x, select(!all(vec3<bool>(var_0.e.a.c.x, var_1.x, var_1.x)), any(!vec3<bool>(var_0.e.a.c.x, var_1.x, var_1.x)), !(!var_1.x))), _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 2147483647i, var_0.c.a.d, -1i), -vec4<i32>(var_0.e.a.d, 0i, -2147483647i, -20979i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.c.a.d, var_0.e.a.d), -1583i)));
    var var_3 = _wgslsmith_sub_vec3_i32(-(~vec3<i32>(var_2.d, 1i, var_0.e.a.d) | vec3<i32>(-var_2.d, var_2.d, ~(-7612i))), vec3<i32>(select(~5131i, ~var_0.c.a.d, all(vec2<bool>(var_2.c.x, false))) ^ var_2.d, var_0.c.a.d, -select(var_0.c.a.d, var_0.e.a.d & var_2.d, var_2.b.x >= 678f)));
    global0 = ~_wgslsmith_mult_i32(var_3.x, _wgslsmith_add_i32(~_wgslsmith_mult_i32(var_2.d, var_2.d), reverseBits(var_2.d)));
    var var_4 = var_0.c;
    global1 = array<vec2<u32>, 5>();
    var var_5 = Struct_3(var_2.b.xww, ~var_0.b, var_0.e, select(var_4.a.c, vec2<bool>(true, any(!vec3<bool>(true, var_2.c.x, true))), var_2.c.x), Struct_2(func_4(func_1(var_0.c)), 4294967295u, var_0.a.x));
    let var_6 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.e.a.d, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_5.c.a.d, var_2.d, var_2.d, 2147483647i), vec4<i32>(var_3.x, var_4.a.d, var_2.d, var_5.e.a.d), vec4<i32>(var_2.d, 0i, var_5.c.a.d, var_5.e.a.d)), vec4<i32>(-2147483647i, -1i, var_2.d, var_2.d)) >> (_wgslsmith_clamp_u32(var_5.b, _wgslsmith_mult_u32(var_4.b, 1u), firstLeadingBit(28268u)) % 32u)), vec3<f32>(var_5.e.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1924f - _wgslsmith_f_op_f32(var_2.a * -1634f))), _wgslsmith_f_op_f32(abs(-168f))), -30755i, vec4<f32>(var_4.c, _wgslsmith_f_op_f32(select(-1273f, var_4.c, true)), -242f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a.b.x), _wgslsmith_f_op_f32(ceil(615f))) + -682f)), var_2.b.x);
}

