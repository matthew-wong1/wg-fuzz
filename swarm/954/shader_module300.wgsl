struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(31413u, vec4<f32>(-755f, -174f, -795f, -1000f), vec3<i32>(1i, -6532i, 2147483647i), vec4<bool>(false, false, false, false), vec3<f32>(-949f, 587f, 1283f)), Struct_1(27342u, vec4<f32>(-140f, 345f, -1000f, -927f), vec3<i32>(-3050i, 64992i, 65628i), vec4<bool>(true, false, false, false), vec3<f32>(816f, 266f, -890f)), Struct_1(1u, vec4<f32>(-1509f, -249f, -1658f, -1657f), vec3<i32>(0i, 2147483647i, 1i), vec4<bool>(false, false, true, true), vec3<f32>(-866f, -1495f, 1129f)), -1000f), Struct_2(Struct_1(4294967295u, vec4<f32>(-1288f, -651f, 1000f, -1259f), vec3<i32>(2147483647i, -13515i, 16576i), vec4<bool>(true, false, false, false), vec3<f32>(1000f, -465f, -914f)), Struct_1(0u, vec4<f32>(-738f, 1941f, -597f, -948f), vec3<i32>(-1i, -32217i, 11702i), vec4<bool>(true, true, false, true), vec3<f32>(-2689f, 1757f, 367f)), Struct_1(0u, vec4<f32>(-940f, 1794f, -967f, 387f), vec3<i32>(-1i, -25785i, 3627i), vec4<bool>(true, false, false, false), vec3<f32>(413f, 586f, -1572f)), -135f), Struct_2(Struct_1(51668u, vec4<f32>(-737f, -785f, -295f, -161f), vec3<i32>(1i, -1i, 2147483647i), vec4<bool>(false, true, false, true), vec3<f32>(942f, -1067f, 2565f)), Struct_1(1u, vec4<f32>(690f, -1989f, -473f, 2093f), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec4<bool>(true, false, true, true), vec3<f32>(465f, -393f, 1039f)), Struct_1(1u, vec4<f32>(561f, -1159f, 237f, -2224f), vec3<i32>(-109612i, 1i, -1i), vec4<bool>(false, false, true, true), vec3<f32>(-1000f, -429f, 2257f)), -455f), Struct_2(Struct_1(5512u, vec4<f32>(2182f, 199f, 541f, -1434f), vec3<i32>(-11945i, 31537i, -50089i), vec4<bool>(false, false, true, true), vec3<f32>(711f, -1678f, -239f)), Struct_1(0u, vec4<f32>(575f, 518f, -337f, 1611f), vec3<i32>(1i, -41634i, -3951i), vec4<bool>(true, true, true, false), vec3<f32>(144f, 224f, -319f)), Struct_1(107032u, vec4<f32>(-1000f, -1565f, -691f, -1000f), vec3<i32>(1i, 13170i, -1i), vec4<bool>(true, true, false, true), vec3<f32>(367f, 663f, -2027f)), 1654f), Struct_2(Struct_1(58518u, vec4<f32>(-742f, -127f, 385f, -1000f), vec3<i32>(0i, -12636i, -1i), vec4<bool>(true, false, false, true), vec3<f32>(-279f, 1422f, 299f)), Struct_1(0u, vec4<f32>(1485f, -938f, -765f, -1000f), vec3<i32>(1i, 711i, 1i), vec4<bool>(false, false, false, true), vec3<f32>(794f, -786f, -1926f)), Struct_1(1u, vec4<f32>(-1031f, 624f, 851f, -243f), vec3<i32>(10956i, -40966i, 27188i), vec4<bool>(true, true, false, false), vec3<f32>(-377f, 104f, -1231f)), 757f), Struct_2(Struct_1(4294967295u, vec4<f32>(-704f, 162f, 1614f, 836f), vec3<i32>(0i, 2147483647i, 38515i), vec4<bool>(false, true, true, true), vec3<f32>(1861f, -759f, -434f)), Struct_1(4294967295u, vec4<f32>(-1397f, -2040f, -208f, 434f), vec3<i32>(26676i, -1i, -27957i), vec4<bool>(true, true, false, true), vec3<f32>(-1526f, -1064f, 107f)), Struct_1(68064u, vec4<f32>(-494f, -549f, 2761f, -1789f), vec3<i32>(-55173i, 2147483647i, 56818i), vec4<bool>(false, true, false, true), vec3<f32>(-180f, 201f, 379f)), -256f), Struct_2(Struct_1(2192u, vec4<f32>(295f, -1194f, -133f, 359f), vec3<i32>(-27560i, -23696i, 16021i), vec4<bool>(false, false, false, false), vec3<f32>(-263f, -1000f, 941f)), Struct_1(22488u, vec4<f32>(1000f, 1369f, 841f, 363f), vec3<i32>(i32(-2147483648), -1i, 0i), vec4<bool>(true, false, false, false), vec3<f32>(-634f, -895f, 1348f)), Struct_1(49504u, vec4<f32>(-1307f, 1143f, -265f, -193f), vec3<i32>(79589i, 2147483647i, 1i), vec4<bool>(true, false, false, true), vec3<f32>(-116f, 112f, -1000f)), 1883f), Struct_2(Struct_1(4294967295u, vec4<f32>(883f, 1000f, -193f, 994f), vec3<i32>(i32(-2147483648), 0i, -58823i), vec4<bool>(true, true, false, true), vec3<f32>(-844f, 214f, -734f)), Struct_1(29664u, vec4<f32>(918f, 1214f, -620f, 1779f), vec3<i32>(0i, -14834i, i32(-2147483648)), vec4<bool>(false, false, false, false), vec3<f32>(-342f, -432f, -1084f)), Struct_1(14323u, vec4<f32>(-801f, -1550f, -1343f, 1908f), vec3<i32>(-11346i, -1i, -88461i), vec4<bool>(false, true, true, true), vec3<f32>(-1057f, -281f, 2120f)), 1000f), Struct_2(Struct_1(4294967295u, vec4<f32>(414f, -917f, -1062f, -1400f), vec3<i32>(-25241i, 20182i, 2147483647i), vec4<bool>(true, true, false, true), vec3<f32>(-475f, 137f, -781f)), Struct_1(21618u, vec4<f32>(1680f, -760f, -1000f, 2017f), vec3<i32>(-1770i, -1i, 0i), vec4<bool>(true, true, true, true), vec3<f32>(1074f, 201f, -1459f)), Struct_1(26650u, vec4<f32>(-750f, -553f, -556f, -117f), vec3<i32>(i32(-2147483648), 2134i, 1i), vec4<bool>(true, true, false, false), vec3<f32>(1051f, 180f, -210f)), 926f));

var<private> global1: u32 = 18384u;

var<private> global2: bool = true;

var<private> global3: vec3<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1929f, arg_0.x, -927f)))), _wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true)))));
    var_0 = arg_0;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * 1776f))) + -1096f) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(var_0.x - 843f))))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-600f)), _wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -269f));
    global1 = ~(~u_input.c);
    global1 = 1u;
    return 3657u;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_4(global3.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(491f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -686f))), Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(160f, -523f, 210f, 470f), vec4<f32>(-1900f, 1000f, -266f, -1000f)))))), ~(~u_input.d), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2110f, 443f, -531f) - vec3<f32>(720f, 2206f, 1294f)))))), global0[_wgslsmith_index_u32(0u, 9u)]);
    let var_1 = vec3<u32>(66670u, 1u, _wgslsmith_add_u32(108373u, func_3(vec4<f32>(var_0.c.e.x, -2122f, _wgslsmith_f_op_f32(-280f - -2265f), 1f), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(var_0.c.a, u_input.a)), firstTrailingBit(vec2<u32>(u_input.a, u_input.c))))));
    var var_2 = Struct_3(abs(-vec4<i32>(global3.x, 2147483647i, _wgslsmith_dot_vec2_i32(global3.yx, vec2<i32>(-26706i, global3.x)), 1i)), firstLeadingBit(u_input.d.x), all(vec4<bool>(true, any(vec2<bool>(var_0.c.d.x, var_0.c.d.x)), all(!var_0.d.b.d.zwz), var_0.d.a.d.x)), global0[_wgslsmith_index_u32(var_1.x, 9u)]);
    var var_3 = var_0.d.c.d.x;
    let var_4 = var_0.d.b.c.zx;
    return !vec3<bool>(true, var_0.c.d.x, var_2.c);
}

fn func_1() -> u32 {
    global0 = array<Struct_2, 9>();
    var var_0 = 0u;
    global2 = all(func_2());
    var var_1 = vec4<bool>(!any(vec2<bool>(true, true)) || !select(true, all(vec3<bool>(true, true, true)), any(vec2<bool>(false, true))), !(true && ((-31812i ^ u_input.d.x) <= global3.x)), u_input.b.x == 2147483647i, !(~0u != _wgslsmith_sub_u32(1u, ~u_input.c)));
    global2 = false;
    return 65887u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1447f;
    var var_1 = vec2<u32>(func_1(), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 9178u, u_input.c, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), vec4<u32>(71375u, u_input.a, 6656u, u_input.c))) << (u_input.a % 32u));
    let var_2 = !vec4<bool>(true == !any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true, !all(vec4<bool>(true, true, true, true)));
    global1 = ~var_1.x;
    let var_3 = Struct_1(_wgslsmith_mod_u32(var_1.x | ~(u_input.a ^ 57891u), select((var_1.x << (var_1.x % 32u)) << (~var_1.x % 32u), u_input.a, (global3.x <= global3.x) || true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(428f, 1232f, var_0, -1000f) * vec4<f32>(837f, var_0, 818f, 2957f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0, var_0, var_0) * vec4<f32>(952f, -320f, 977f, var_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(533f, -1703f, -178f, -1262f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-327f, var_0, var_0, var_0))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2503f, -737f, var_0, -356f) + vec4<f32>(-358f, -411f, 1968f, var_0)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0, var_0, var_0), vec4<f32>(var_0, -896f, var_0, 502f))))), vec3<i32>(-global3.x, -50071i, firstLeadingBit(global3.x)), select(!select(!var_2, vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), var_2, var_2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_0 * var_0)), 487f, _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, -1205f, 242f), vec3<f32>(-1553f, 1695f, var_0))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, var_0, -396f)))), vec3<f32>(881f, _wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-var_0)))));
    global2 = false & var_2.x;
    global3 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, select(var_3.c.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-6966i, var_3.c.x) ^ reverseBits(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, 59267i, u_input.d.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(37997i, u_input.b.x, global3.x), vec3<i32>(global3.x, var_3.c.x, u_input.b.x), var_3.c))), true), select(-_wgslsmith_add_vec3_i32(u_input.d, u_input.d), ~u_input.d, !var_2.yxy) & (vec3<i32>(i32(-1i) * -9093i, var_3.c.x & global3.x, 2539i) << (~vec3<u32>(u_input.a, u_input.c, u_input.c) % vec3<u32>(32u))));
}

