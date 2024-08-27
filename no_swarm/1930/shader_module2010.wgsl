struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec4<u32>(20523u, 15169u, 11919u, 1u), vec2<u32>(67305u, 4294967295u), 27908i, false, vec3<i32>(i32(-2147483648), 2147483647i, -1i))), Struct_2(Struct_1(vec4<u32>(1u, 16172u, 1u, 18356u), vec2<u32>(4294967295u, 0u), 54759i, true, vec3<i32>(-29418i, 2147483647i, -41293i))), Struct_2(Struct_1(vec4<u32>(0u, 939u, 0u, 39912u), vec2<u32>(4294967295u, 38050u), 1i, true, vec3<i32>(0i, -1539i, -37908i))), Struct_2(Struct_1(vec4<u32>(5711u, 0u, 11712u, 16358u), vec2<u32>(30716u, 28988u), i32(-2147483648), true, vec3<i32>(32290i, 2354i, i32(-2147483648)))), Struct_2(Struct_1(vec4<u32>(1u, 29951u, 0u, 17823u), vec2<u32>(4294967295u, 0u), -1i, false, vec3<i32>(16527i, -5993i, -24519i))), Struct_2(Struct_1(vec4<u32>(75300u, 22632u, 4294967295u, 4294967295u), vec2<u32>(4294967295u, 43896u), -5335i, true, vec3<i32>(-1i, 1i, 29481i))), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 15122u, 1u), vec2<u32>(102922u, 1u), 42790i, false, vec3<i32>(-1i, 0i, 1i))), Struct_2(Struct_1(vec4<u32>(1u, 12816u, 13924u, 15811u), vec2<u32>(19838u, 11555u), 0i, true, vec3<i32>(-1i, -7410i, 1i))), Struct_2(Struct_1(vec4<u32>(42141u, 0u, 0u, 40239u), vec2<u32>(107662u, 44819u), -2618i, true, vec3<i32>(2147483647i, 0i, 0i))), Struct_2(Struct_1(vec4<u32>(0u, 11660u, 53323u, 50958u), vec2<u32>(94996u, 4620u), -1i, false, vec3<i32>(2147483647i, -6660i, 30393i))), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 0u, 1u), vec2<u32>(75962u, 35175u), 49069i, false, vec3<i32>(-6830i, 0i, i32(-2147483648)))), Struct_2(Struct_1(vec4<u32>(97593u, 7956u, 0u, 0u), vec2<u32>(1u, 5911u), -23164i, true, vec3<i32>(-25366i, -1i, 30894i))), Struct_2(Struct_1(vec4<u32>(52759u, 7956u, 1u, 24957u), vec2<u32>(18738u, 6314u), 41653i, false, vec3<i32>(2147483647i, 41603i, -32200i))), Struct_2(Struct_1(vec4<u32>(0u, 58261u, 1u, 99406u), vec2<u32>(4294967295u, 18052u), 0i, false, vec3<i32>(2147483647i, 2147483647i, -61148i))), Struct_2(Struct_1(vec4<u32>(4294967295u, 46610u, 55415u, 40755u), vec2<u32>(37013u, 1u), 2147483647i, true, vec3<i32>(-45097i, -1i, i32(-2147483648)))), Struct_2(Struct_1(vec4<u32>(0u, 28616u, 50385u, 1u), vec2<u32>(4294967295u, 0u), 1i, false, vec3<i32>(2147483647i, -1i, 869i))), Struct_2(Struct_1(vec4<u32>(17439u, 4294967295u, 0u, 793u), vec2<u32>(0u, 43282u), 2147483647i, true, vec3<i32>(25208i, 2147483647i, 27670i))), Struct_2(Struct_1(vec4<u32>(5648u, 61959u, 20543u, 1u), vec2<u32>(24687u, 4294967295u), 34301i, false, vec3<i32>(-7330i, i32(-2147483648), -6227i))), Struct_2(Struct_1(vec4<u32>(41080u, 72745u, 4294967295u, 13185u), vec2<u32>(47055u, 23452u), i32(-2147483648), false, vec3<i32>(1i, 50878i, 1i))), Struct_2(Struct_1(vec4<u32>(69180u, 1u, 0u, 49883u), vec2<u32>(57074u, 4294967295u), -67612i, true, vec3<i32>(-2244i, i32(-2147483648), 39802i))), Struct_2(Struct_1(vec4<u32>(1u, 1u, 4294967295u, 0u), vec2<u32>(36144u, 7834u), -1i, true, vec3<i32>(2147483647i, 36747i, -12488i))), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 67599u, 22032u), vec2<u32>(0u, 42440u), 29397i, false, vec3<i32>(-1i, -20544i, i32(-2147483648)))), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 68182u), vec2<u32>(0u, 129416u), -61831i, false, vec3<i32>(1i, i32(-2147483648), -5396i))), Struct_2(Struct_1(vec4<u32>(57360u, 1u, 14428u, 7385u), vec2<u32>(1u, 20736u), i32(-2147483648), false, vec3<i32>(-52312i, -12029i, 2147483647i))), Struct_2(Struct_1(vec4<u32>(0u, 0u, 0u, 21422u), vec2<u32>(89519u, 68688u), -1i, true, vec3<i32>(0i, i32(-2147483648), -12066i))));

var<private> global1: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(726f, 998f, -213f), vec3<f32>(-1692f, 971f, 654f), vec3<f32>(-1656f, 1729f, -217f), vec3<f32>(-1000f, -1079f, -698f), vec3<f32>(1132f, 1418f, -413f), vec3<f32>(-644f, 186f, -377f), vec3<f32>(-890f, 777f, 795f), vec3<f32>(337f, 1226f, 1621f), vec3<f32>(-1809f, -212f, -1627f), vec3<f32>(-1042f, -1301f, -463f), vec3<f32>(-4115f, -126f, -1732f), vec3<f32>(-1217f, -574f, 523f), vec3<f32>(-1000f, -2265f, 1768f), vec3<f32>(1624f, 232f, -224f), vec3<f32>(775f, 1182f, 586f), vec3<f32>(815f, 968f, -125f), vec3<f32>(-1390f, 306f, -2574f), vec3<f32>(-887f, -2699f, 772f), vec3<f32>(-1032f, -1744f, 2356f), vec3<f32>(423f, 3434f, -975f));

var<private> global2: array<u32, 22> = array<u32, 22>(1u, 0u, 1u, 0u, 0u, 4294967295u, 4294967295u, 72369u, 5998u, 1u, 4294967295u, 4294967295u, 1u, 4294967295u, 0u, 0u, 36351u, 0u, 4294967295u, 4294967295u, 1u, 4294967295u);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(10840u, 1u, 41165u, 0u), vec2<u32>(0u, 1u), i32(-2147483648), true, vec3<i32>(-13819i, 6874i, 1i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(1000f * -1000f), 1f, _wgslsmith_f_op_f32(1547f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(553f + -1586f))));
}

fn func_3() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 25u)];
    let var_1 = global3.a.a.wyw;
    global1 = array<vec3<f32>, 20>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_f_op_f32(f32(-1f) * -998f), false)) - 1577f);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4530u, abs(global3.a.a.x | global3.a.a.x) << (global2[_wgslsmith_index_u32(var_1.x, 22u)] % 32u)), ~(~global3.a.a.wxy));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1231f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(141f, -1000f)))))));
    let var_1 = vec4<u32>(_wgslsmith_add_u32(global3.a.b.x, _wgslsmith_add_u32(firstLeadingBit(~u_input.a), _wgslsmith_div_u32(4294967295u, ~u_input.a))), select(~_wgslsmith_dot_vec4_u32(global3.a.a, ~global3.a.a), _wgslsmith_mult_u32(1u, global2[_wgslsmith_index_u32(u_input.a, 22u)]), _wgslsmith_f_op_f32(-305f * _wgslsmith_f_op_f32(step(221f, 690f))) < _wgslsmith_f_op_vec3_f32(func_1(true == global3.a.d)).x), ~_wgslsmith_mult_u32(u_input.a | (global3.a.a.x << (u_input.a % 32u)), func_3()), _wgslsmith_sub_u32(~firstLeadingBit(global2[_wgslsmith_index_u32(max(1u, global2[_wgslsmith_index_u32(9063u, 22u)]), 22u)]), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 22u)], select(_wgslsmith_dot_vec3_u32(global3.a.a.xwy, global3.a.a.xyw), ~global3.a.b.x, global3.a.d))));
    let var_2 = global3.a.e;
    var var_3 = ~(max(~var_1.ww, vec2<u32>(global3.a.a.x, global2[_wgslsmith_index_u32(14919u, 22u)]) ^ ~global3.a.b) & ~max(global3.a.b & var_1.xx, global3.a.b));
    var var_4 = global3.a;
    return min(~vec2<u32>(u_input.a, func_3()), var_1.yx);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(337f, _wgslsmith_f_op_f32(2941f - -609f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1740f, -244f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(216f, -161f) + vec2<f32>(-394f, -926f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-753f, -400f) + vec2<f32>(-667f, -820f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1039f, 371f) * vec2<f32>(844f, 239f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-560f * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(abs(-1937f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1344f)), _wgslsmith_f_op_f32(680f - 2072f))) * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1422f) + var_0.x))));
    global0 = array<Struct_2, 25>();
    global2 = array<u32, 22>();
    var var_2 = global3.a;
    return Struct_2(Struct_1(vec4<u32>(min(1u, global2[_wgslsmith_index_u32(~4294967295u, 22u)]), _wgslsmith_mult_u32(125581u | global3.a.a.x, max(4539u, global3.a.b.x)), 4294967295u, 40979u), vec2<u32>(_wgslsmith_div_u32(u_input.a << (u_input.a % 32u), 29059u), 13775u), 1389i, all(select(vec3<bool>(arg_0.a.d, var_2.d, arg_0.a.d), !vec3<bool>(true, var_2.d, false), select(vec3<bool>(arg_0.a.d, global3.a.d, false), vec3<bool>(true, false, arg_0.a.d), vec3<bool>(true, arg_1, false)))), min(vec3<i32>(arg_0.a.c, abs(-1i), ~arg_0.a.c), vec3<i32>(_wgslsmith_dot_vec2_i32(global3.a.e.yz, vec2<i32>(var_2.c, -4475i)), var_2.c, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 22>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(true)));
    var var_1 = !(!(true & any(vec3<bool>(false, global3.a.d, true))));
    global3 = func_4(Struct_2(Struct_1(abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, global2[_wgslsmith_index_u32(81473u, 22u)], 54820u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 22u)], 1u, global3.a.b.x, u_input.a))), _wgslsmith_clamp_vec2_u32(func_2(), vec2<u32>(68655u, global2[_wgslsmith_index_u32(0u, 22u)]), global3.a.b), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, min(global3.a.e.x, -65051i)), !(true & global3.a.d), min(~vec3<i32>(global3.a.c, global3.a.c, global3.a.c), global3.a.e))), !all(vec3<bool>(false, global3.a.d, 15450i > global3.a.c)));
    global3 = Struct_2(func_4(func_4(func_4(Struct_2(Struct_1(vec4<u32>(global3.a.b.x, 39034u, u_input.a, 4294967295u), vec2<u32>(u_input.a, global3.a.b.x), global3.a.c, false, global3.a.e)), global3.a.d & true), !global3.a.d), false | (true != global3.a.d)).a);
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec4<u32>(~35493u, firstTrailingBit(global3.a.b.x), ~u_input.a, 1u << (1u % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.a.b.x, 22u)], 22u)], 22u)]), max(global3.a.a, vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], 1u, 0u, global2[_wgslsmith_index_u32(1u, 22u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 358f, var_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, 963f), vec3<f32>(-804f, 1938f, -1845f)))) * global1[_wgslsmith_index_u32(min(global3.a.b.x, ~global3.a.a.x), 20u)])), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + 477f), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(ceil(var_0.x))), ~(~vec3<i32>(countOneBits(global3.a.e.x), 1i, 1i)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -797f))) - _wgslsmith_f_op_f32(-var_0.x)), -178f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), -616f)), _wgslsmith_f_op_f32(-var_0.x)));
}

