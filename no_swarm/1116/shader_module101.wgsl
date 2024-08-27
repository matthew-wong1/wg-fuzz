struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(-1581f, Struct_3(Struct_2(vec3<f32>(1000f, -127f, -1000f), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 31786i, -1i), false))), vec4<bool>(false, false, false, true), vec3<f32>(2761f, -2031f, 366f)), Struct_4(1094f, Struct_3(Struct_2(vec3<f32>(-526f, 977f, -682f), Struct_1(vec4<i32>(12562i, 0i, 8130i, 1i), true))), vec4<bool>(false, true, true, false), vec3<f32>(780f, 643f, 129f)), Struct_4(-1000f, Struct_3(Struct_2(vec3<f32>(-1000f, -1000f, -1001f), Struct_1(vec4<i32>(-18519i, 0i, 1i, i32(-2147483648)), false))), vec4<bool>(true, true, false, false), vec3<f32>(-1000f, -673f, -363f)), Struct_4(1205f, Struct_3(Struct_2(vec3<f32>(261f, 492f, -655f), Struct_1(vec4<i32>(33514i, 19022i, -45509i, 0i), false))), vec4<bool>(false, true, true, true), vec3<f32>(676f, -651f, 757f)), Struct_4(-1278f, Struct_3(Struct_2(vec3<f32>(-257f, 1354f, -681f), Struct_1(vec4<i32>(-38174i, 1i, 1i, -1i), true))), vec4<bool>(true, true, true, false), vec3<f32>(1000f, 958f, -994f)), Struct_4(-1000f, Struct_3(Struct_2(vec3<f32>(-561f, 1186f, -687f), Struct_1(vec4<i32>(53186i, 2147483647i, 0i, i32(-2147483648)), true))), vec4<bool>(false, true, true, true), vec3<f32>(755f, 230f, -1006f)), Struct_4(-993f, Struct_3(Struct_2(vec3<f32>(-398f, 447f, -1820f), Struct_1(vec4<i32>(40486i, 21881i, i32(-2147483648), -4336i), true))), vec4<bool>(false, false, true, true), vec3<f32>(429f, -2415f, -329f)), Struct_4(-1520f, Struct_3(Struct_2(vec3<f32>(-480f, 803f, -1000f), Struct_1(vec4<i32>(1i, 1i, 0i, -35429i), false))), vec4<bool>(true, true, true, true), vec3<f32>(-716f, 603f, 204f)), Struct_4(-920f, Struct_3(Struct_2(vec3<f32>(-293f, -2984f, -710f), Struct_1(vec4<i32>(0i, 2147483647i, -29638i, 5985i), true))), vec4<bool>(false, true, false, false), vec3<f32>(1115f, 767f, 2071f)), Struct_4(247f, Struct_3(Struct_2(vec3<f32>(-858f, 2380f, -1525f), Struct_1(vec4<i32>(848i, -4658i, 0i, -16850i), false))), vec4<bool>(true, true, true, true), vec3<f32>(-630f, -1100f, -886f)), Struct_4(915f, Struct_3(Struct_2(vec3<f32>(326f, -1194f, -180f), Struct_1(vec4<i32>(i32(-2147483648), 47725i, i32(-2147483648), 0i), false))), vec4<bool>(false, false, true, false), vec3<f32>(1217f, 2435f, 451f)), Struct_4(-146f, Struct_3(Struct_2(vec3<f32>(732f, 917f, -753f), Struct_1(vec4<i32>(-9097i, 0i, -4773i, 1i), false))), vec4<bool>(false, true, true, false), vec3<f32>(-780f, 1320f, -1520f)), Struct_4(171f, Struct_3(Struct_2(vec3<f32>(-827f, 1281f, 861f), Struct_1(vec4<i32>(-1i, -1i, 2147483647i, i32(-2147483648)), true))), vec4<bool>(false, true, true, false), vec3<f32>(-630f, 2502f, -393f)), Struct_4(428f, Struct_3(Struct_2(vec3<f32>(-580f, -1202f, 332f), Struct_1(vec4<i32>(23668i, -16506i, -7252i, 2147483647i), true))), vec4<bool>(false, false, false, true), vec3<f32>(1452f, 1035f, 1061f)), Struct_4(1391f, Struct_3(Struct_2(vec3<f32>(558f, 341f, 1317f), Struct_1(vec4<i32>(-1i, i32(-2147483648), 0i, -41956i), true))), vec4<bool>(true, true, true, false), vec3<f32>(1347f, -565f, 408f)));

var<private> global1: array<f32, 7>;

var<private> global2: array<i32, 26> = array<i32, 26>(47879i, -1i, 30924i, 1i, -19896i, 0i, i32(-2147483648), 2147483647i, 1i, 17370i, i32(-2147483648), 48893i, -23832i, i32(-2147483648), 0i, 0i, 2434i, 4316i, -1i, 1i, i32(-2147483648), -1001i, 11449i, -1i, -16146i, 28328i);

var<private> global3: array<bool, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<f32> {
    global2 = array<i32, 26>();
    global3 = array<bool, 5>();
    global3 = array<bool, 5>();
    var var_0 = arg_1;
    global3 = array<bool, 5>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0)));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 1170f, 1058f), vec3<f32>(1456f, arg_0, arg_0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(11542u, 7u)], -979f, 125f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1003f, 563f, global1[_wgslsmith_index_u32(20475u, 7u)]) * vec3<f32>(-1273f, global1[_wgslsmith_index_u32(1u, 7u)], -1032f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(-753f, -229f, -937f), Struct_1(vec4<i32>(3769i, 41900i, 1i, u_input.b.x), true), vec2<f32>(-181f, global1[_wgslsmith_index_u32(0u, 7u)]))) + vec3<f32>(1770f, arg_0, global1[_wgslsmith_index_u32(46154u, 7u)])))), Struct_1((vec4<i32>(-1i) * -vec4<i32>(arg_1.x, -1i, u_input.a.x, global2[_wgslsmith_index_u32(25876u, 26u)])) ^ vec4<i32>(min(global2[_wgslsmith_index_u32(10262u, 26u)], 1i), _wgslsmith_add_i32(-28801i, global2[_wgslsmith_index_u32(443u, 26u)]), _wgslsmith_clamp_i32(u_input.a.x, -26105i, global2[_wgslsmith_index_u32(1u, 26u)]), -1i), any(!select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(1u, 5u)]), vec2<bool>(global3[_wgslsmith_index_u32(19018u, 5u)], false), vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 5u)])))));
    var var_1 = Struct_2(vec3<f32>(1f, 1f, 1f), Struct_1(var_0.b.a, true));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(var_0.b.a, ~(-vec4<i32>(global2[_wgslsmith_index_u32(1u, 26u)], var_0.b.a.x, global2[_wgslsmith_index_u32(70306u, 26u)], 2147483647i) ^ var_0.b.a)), vec4<i32>(~(-_wgslsmith_div_i32(32852i, -80686i)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, u_input.a.x ^ 1i), vec2<i32>(global2[_wgslsmith_index_u32(47516u, 26u)], _wgslsmith_sub_i32(arg_1.x, 0i))), -2147483647i, -(~abs(-36622i))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(round(var_1.a.x)), Struct_3(var_0), !select(vec4<bool>(any(vec2<bool>(true, var_1.b.b)), true, var_0.a.x >= -523f, true), select(select(vec4<bool>(var_1.b.b, var_0.b.b, global3[_wgslsmith_index_u32(41183u, 5u)], var_1.b.b), vec4<bool>(global3[_wgslsmith_index_u32(1u, 5u)], false, global3[_wgslsmith_index_u32(19161u, 5u)], true), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], var_0.b.b, var_0.b.b, global3[_wgslsmith_index_u32(15849u, 5u)])), select(vec4<bool>(true, var_0.b.b, false, true), vec4<bool>(true, var_0.b.b, var_0.b.b, true), global3[_wgslsmith_index_u32(24457u, 5u)]), !vec4<bool>(var_0.b.b, true, false, global3[_wgslsmith_index_u32(25620u, 5u)])), vec4<bool>(var_1.b.b & var_0.b.b, false, !var_0.b.b, true)), _wgslsmith_f_op_vec3_f32(exp2(var_1.a)));
    global2 = array<i32, 26>();
    return var_3.b.a;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global2[_wgslsmith_index_u32(76833u, 26u)], u_input.b.x, global2[_wgslsmith_index_u32(89645u, 26u)], 43181i), ~vec4<i32>(u_input.a.x, 2147483647i, 6120i, global2[_wgslsmith_index_u32(4294967295u, 26u)]));
    global0 = array<Struct_4, 15>();
    global2 = array<i32, 26>();
    let var_1 = -select(-_wgslsmith_dot_vec2_i32(var_0.yx, ~var_0.xy), u_input.b.x, global3[_wgslsmith_index_u32(1u, 5u)] & global3[_wgslsmith_index_u32(1u, 5u)]);
    global2 = array<i32, 26>();
    return func_2(_wgslsmith_f_op_f32(select(-188f, -331f, ~select(40728u, 1u, true) < 1u)), ~(~(countOneBits(var_0.yx) & _wgslsmith_div_vec2_i32(u_input.a, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global3[_wgslsmith_index_u32(~33180u, 5u)]);
    global3 = array<bool, 5>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 7u)]), _wgslsmith_f_op_f32(f32(-1f) * -520f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-261f, global1[_wgslsmith_index_u32(1u, 7u)]) - _wgslsmith_f_op_vec2_f32(var_0.a.xy - vec2<f32>(-117f, 260f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-346f, _wgslsmith_f_op_f32(round(-884f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(897f, _wgslsmith_f_op_f32(-func_1(var_0.b.b).a.x), any(vec4<bool>(false, true, false, false))))));
    let var_3 = _wgslsmith_mult_u32(4294967295u, countOneBits(_wgslsmith_sub_u32(32291u, select(50451u, 0u, global3[_wgslsmith_index_u32(67676u, 5u)])) & ~_wgslsmith_mod_u32(119509u, 2337u)));
    global3 = array<bool, 5>();
    var var_4 = var_0.b;
    global0 = array<Struct_4, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.yy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-725f, -155f))) + vec2<f32>(_wgslsmith_div_f32(-1088f, -1249f), _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_div_vec2_f32(vec2<f32>(-345f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_3, 7u)] - var_0.a.x)), var_0.a.yx))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], -671f, var_0.a.x, -1132f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_3, 7u)], 1372f, 169f, -291f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-190f, -1000f, global1[_wgslsmith_index_u32(var_3, 7u)], 247f) + vec4<f32>(global1[_wgslsmith_index_u32(var_3, 7u)], -1225f, global1[_wgslsmith_index_u32(var_3, 7u)], var_0.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_3, 7u)]), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1028f, -1000f))))), -(func_2(_wgslsmith_f_op_f32(-2295f - var_0.a.x), _wgslsmith_clamp_vec2_i32(var_0.b.a.wy, u_input.b, u_input.a)).b.a.x ^ _wgslsmith_add_i32(~var_0.b.a.x, -1714i)), _wgslsmith_f_op_f32(min(-701f, _wgslsmith_f_op_f32(ceil(var_0.a.x)))), vec4<u32>(countOneBits(~min(var_3, var_3)), 0u >> (var_3 % 32u), max(var_3, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, var_3)), abs(vec2<u32>(1u, 17388u)))), 4294967295u));
}

