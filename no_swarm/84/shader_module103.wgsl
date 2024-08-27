struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(1000f, -138f, -355f, -1558f, -1000f, 1989f, 1203f, 1251f);

var<private> global1: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(Struct_4(Struct_1(94818u, false), Struct_2(Struct_1(0u, true), 43932i, Struct_1(0u, true)), Struct_3(vec4<i32>(-11375i, 51423i, 0i, 1i), 88644u)), vec2<f32>(663f, 650f), 34520i, -1000f, 4294967295u), Struct_5(Struct_4(Struct_1(4294967295u, true), Struct_2(Struct_1(28901u, false), 34075i, Struct_1(27763u, true)), Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 912i), 3146u)), vec2<f32>(495f, -1216f), -1i, -123f, 1u), Struct_5(Struct_4(Struct_1(4294967295u, false), Struct_2(Struct_1(0u, false), -42250i, Struct_1(51010u, false)), Struct_3(vec4<i32>(0i, -1i, 10013i, 1730i), 35653u)), vec2<f32>(-1165f, 1269f), 1i, 453f, 107621u), Struct_5(Struct_4(Struct_1(1u, false), Struct_2(Struct_1(4294967295u, false), 61065i, Struct_1(1u, true)), Struct_3(vec4<i32>(31566i, 0i, i32(-2147483648), -53341i), 0u)), vec2<f32>(-1000f, 295f), 129643i, -176f, 1u), Struct_5(Struct_4(Struct_1(23269u, true), Struct_2(Struct_1(49039u, true), -8522i, Struct_1(4294967295u, false)), Struct_3(vec4<i32>(-2533i, -17501i, 1i, i32(-2147483648)), 1u)), vec2<f32>(-109f, -1085f), -1i, 1250f, 3672u), Struct_5(Struct_4(Struct_1(10619u, false), Struct_2(Struct_1(1u, false), -1i, Struct_1(2840u, true)), Struct_3(vec4<i32>(2147483647i, 1i, -1i, -43865i), 4294967295u)), vec2<f32>(440f, -1298f), i32(-2147483648), -1000f, 20336u), Struct_5(Struct_4(Struct_1(4294967295u, false), Struct_2(Struct_1(33770u, false), 9797i, Struct_1(19395u, false)), Struct_3(vec4<i32>(-2043i, i32(-2147483648), 2147483647i, 5727i), 1u)), vec2<f32>(-1000f, -1493f), -32830i, 1164f, 38811u), Struct_5(Struct_4(Struct_1(80578u, false), Struct_2(Struct_1(42846u, false), 19158i, Struct_1(0u, true)), Struct_3(vec4<i32>(-27868i, -1678i, 5893i, 5877i), 0u)), vec2<f32>(236f, 714f), 1762i, -1000f, 0u), Struct_5(Struct_4(Struct_1(83803u, true), Struct_2(Struct_1(0u, true), 36392i, Struct_1(59197u, false)), Struct_3(vec4<i32>(-1i, -31894i, 2147483647i, -813i), 12751u)), vec2<f32>(763f, 542f), -56059i, 1019f, 0u), Struct_5(Struct_4(Struct_1(9377u, false), Struct_2(Struct_1(23725u, false), 33035i, Struct_1(69112u, false)), Struct_3(vec4<i32>(14606i, -43214i, 767i, 25728i), 4294967295u)), vec2<f32>(951f, 494f), -39582i, -1000f, 0u), Struct_5(Struct_4(Struct_1(1u, true), Struct_2(Struct_1(1u, false), 41182i, Struct_1(18304u, true)), Struct_3(vec4<i32>(-1i, 1i, -60246i, -1i), 0u)), vec2<f32>(422f, -1253f), -21087i, -290f, 1u), Struct_5(Struct_4(Struct_1(1u, false), Struct_2(Struct_1(77035u, false), -1i, Struct_1(4294967295u, true)), Struct_3(vec4<i32>(-42545i, 0i, i32(-2147483648), 1i), 1u)), vec2<f32>(-1000f, -839f), 7481i, 1212f, 33607u), Struct_5(Struct_4(Struct_1(1u, false), Struct_2(Struct_1(1u, false), 0i, Struct_1(46911u, true)), Struct_3(vec4<i32>(53400i, 2147483647i, 35971i, 2147483647i), 13179u)), vec2<f32>(618f, -263f), -23387i, -427f, 22819u), Struct_5(Struct_4(Struct_1(26528u, false), Struct_2(Struct_1(4294967295u, true), -6824i, Struct_1(28890u, false)), Struct_3(vec4<i32>(16677i, 16594i, 10208i, 21732i), 32156u)), vec2<f32>(-330f, 1207f), -24271i, -253f, 4294967295u), Struct_5(Struct_4(Struct_1(1u, true), Struct_2(Struct_1(24197u, true), 1i, Struct_1(30563u, true)), Struct_3(vec4<i32>(2634i, 18588i, -21533i, -48041i), 89203u)), vec2<f32>(1457f, 1760f), -1i, -679f, 13350u), Struct_5(Struct_4(Struct_1(0u, true), Struct_2(Struct_1(45733u, true), 8419i, Struct_1(26987u, false)), Struct_3(vec4<i32>(i32(-2147483648), -29886i, i32(-2147483648), 1i), 4294967295u)), vec2<f32>(-114f, 621f), i32(-2147483648), 1078f, 0u), Struct_5(Struct_4(Struct_1(1u, false), Struct_2(Struct_1(1u, true), 41077i, Struct_1(1u, false)), Struct_3(vec4<i32>(1i, -34540i, 1i, i32(-2147483648)), 8528u)), vec2<f32>(1452f, -638f), 11107i, 292f, 44459u), Struct_5(Struct_4(Struct_1(4294967295u, true), Struct_2(Struct_1(4294967295u, false), 19194i, Struct_1(132228u, true)), Struct_3(vec4<i32>(2147483647i, -4434i, -64952i, -24453i), 27086u)), vec2<f32>(652f, -745f), -44307i, -689f, 0u));

var<private> global2: array<vec4<u32>, 31>;

var<private> global3: array<u32, 9> = array<u32, 9>(1u, 84958u, 4294967295u, 54076u, 36816u, 0u, 10320u, 22632u, 1591u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_5) -> u32 {
    let var_0 = arg_3;
    global2 = array<vec4<u32>, 31>();
    global3 = array<u32, 9>();
    global2 = array<vec4<u32>, 31>();
    global2 = array<vec4<u32>, 31>();
    return _wgslsmith_clamp_u32(u_input.a.x, reverseBits(~abs(24099u)), 11181u);
}

fn func_2() -> Struct_1 {
    global3 = array<u32, 9>();
    global2 = array<vec4<u32>, 31>();
    global0 = array<f32, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(12905u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]) - vec4<f32>(-2059f, -1095f, 241f, 794f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], 8u)], global0[_wgslsmith_index_u32(1u, 8u)], -1000f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)]) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], -305f, global0[_wgslsmith_index_u32(48915u, 8u)], -1466f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1251f, 843f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(41872u, 8u)], 316f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 8u)]) - vec4<f32>(-1903f, -493f, global0[_wgslsmith_index_u32(43229u, 8u)], -350f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], 1000f, 815f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(681f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(67232u, 8u)], -812f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(887u, 8u)])), global0[_wgslsmith_index_u32(0u & ~global3[_wgslsmith_index_u32(67435u, 9u)], 8u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a.x, 8u)])), global0[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(global3[_wgslsmith_index_u32(0u, 9u)], true), -48801i, Struct_1(4294967295u, true)), -2147483647i, vec3<f32>(-1592f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20211u, 9u)], 8u)], -237f), global1[_wgslsmith_index_u32(0u, 18u)]), 8u)])), _wgslsmith_f_op_f32(f32(-1f) * -703f)))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)));
    return Struct_1(1u, false);
}

fn func_1() -> i32 {
    var var_0 = func_2();
    let var_1 = Struct_2(Struct_1(~(~41725u), var_0.b), 1i, Struct_1(1u, true));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(635f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(67976u, 8u)], 945f)), vec2<bool>(var_0.b, var_1.c.b))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(551f, 1599f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(694f, global0[_wgslsmith_index_u32(1u, 8u)]))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(0u, 8u)], var_2.x, -440f, global0[_wgslsmith_index_u32(var_0.a, 8u)])))))));
    var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_0.a, 8u)], -1074f, var_2.x, -304f), vec4<f32>(-462f, -814f, 847f, -269f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1313f, var_3.x, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], -2595f)))))), vec4<f32>(_wgslsmith_f_op_f32(round(229f)), 340f, 997f, -814f));
    return -firstLeadingBit(0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1245f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], -474f, -1000f) - _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 8u)], 1654f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3132u, 9u)], 8u)], -1110f), vec4<f32>(global0[_wgslsmith_index_u32(1u, 8u)], -949f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)]))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(365f - 322f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 8u)] + 1055f) + -247f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)], 8u)])), global0[_wgslsmith_index_u32(0u, 8u)]))));
    var var_1 = vec3<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(-(~_wgslsmith_add_i32(25766i, 40372i)), _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_add_i32(-10509i, 0i)), i32(-1i) * -74294i, 1i)), countOneBits(-func_1()));
    let var_2 = true;
    let var_3 = ~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x) & -vec3<i32>(0i, var_1.x, var_1.x), select(vec3<i32>(0i, -1i, -1i), vec3<i32>(17220i, var_1.x, var_1.x) >> (vec3<u32>(23019u, 1u, u_input.a.x) % vec3<u32>(32u)), vec3<bool>(var_2, var_2, var_2))), abs(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-42041i, 2147483647i, var_1.x), vec3<i32>(0i, 21697i, var_1.x), vec3<i32>(var_1.x, var_1.x, -11243i))));
    global1 = array<Struct_5, 18>();
    global0 = array<f32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(13889u, firstLeadingBit(var_1.x), var_3);
}

