struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(vec3<i32>(2147483647i, 11905i, 27287i), 4294967295u), Struct_5(vec3<i32>(1i, 2147483647i, 1i), 16175u), Struct_5(vec3<i32>(i32(-2147483648), i32(-2147483648), -23465i), 0u), Struct_5(vec3<i32>(-47104i, i32(-2147483648), 0i), 1u), Struct_5(vec3<i32>(1i, -5054i, 0i), 0u), Struct_5(vec3<i32>(27724i, 1i, i32(-2147483648)), 30969u), Struct_5(vec3<i32>(2147483647i, 1i, 1i), 43934u), Struct_5(vec3<i32>(2147483647i, -16001i, 1i), 0u), Struct_5(vec3<i32>(-6081i, 33195i, -997i), 4294967295u), Struct_5(vec3<i32>(i32(-2147483648), -16607i, 0i), 61432u), Struct_5(vec3<i32>(i32(-2147483648), i32(-2147483648), -4668i), 4294967295u), Struct_5(vec3<i32>(-1989i, -66051i, 18384i), 1u), Struct_5(vec3<i32>(i32(-2147483648), -35660i, -8659i), 4858u), Struct_5(vec3<i32>(0i, -10397i, 2147483647i), 41044u), Struct_5(vec3<i32>(32981i, 11843i, -32067i), 14333u), Struct_5(vec3<i32>(-6527i, -4601i, -6596i), 1u), Struct_5(vec3<i32>(26526i, 24435i, -6043i), 1u), Struct_5(vec3<i32>(2147483647i, -1i, -2129i), 12333u), Struct_5(vec3<i32>(0i, -2636i, -1i), 0u), Struct_5(vec3<i32>(-1i, 1i, 0i), 7335u), Struct_5(vec3<i32>(3252i, 2147483647i, 0i), 0u), Struct_5(vec3<i32>(1i, -31957i, -3726i), 12438u), Struct_5(vec3<i32>(i32(-2147483648), 29638i, -33594i), 1u), Struct_5(vec3<i32>(0i, -1i, 32202i), 12977u), Struct_5(vec3<i32>(i32(-2147483648), -21817i, -12599i), 0u), Struct_5(vec3<i32>(1i, 2147483647i, -9086i), 23914u), Struct_5(vec3<i32>(2147483647i, -20836i, 25158i), 41068u), Struct_5(vec3<i32>(2147483647i, 0i, -34551i), 4294967295u), Struct_5(vec3<i32>(1i, -1i, 3880i), 25692u), Struct_5(vec3<i32>(2147483647i, 3780i, 0i), 5898u));

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(false, 7388u, vec3<f32>(499f, 165f, 1805f), 81715u, vec2<u32>(22416u, 4294967295u)), Struct_1(false, 4294967295u, vec3<f32>(-252f, 711f, 587f), 8689u, vec2<u32>(42955u, 1u)), Struct_1(true, 1423u, vec3<f32>(-197f, -1086f, 331f), 4696u, vec2<u32>(1u, 69465u)), Struct_1(false, 25153u, vec3<f32>(-1000f, 1163f, -118f), 4294967295u, vec2<u32>(0u, 106350u)), Struct_1(false, 0u, vec3<f32>(-1193f, -620f, 473f), 10182u, vec2<u32>(16843u, 4294967295u)), Struct_1(false, 95389u, vec3<f32>(-682f, -340f, 488f), 4294967295u, vec2<u32>(66122u, 1u)), Struct_1(true, 1u, vec3<f32>(689f, 868f, 115f), 4294967295u, vec2<u32>(4294967295u, 1u)), Struct_1(true, 4294967295u, vec3<f32>(1423f, -1493f, 715f), 65551u, vec2<u32>(4294967295u, 16430u)), Struct_1(false, 4294967295u, vec3<f32>(211f, -116f, 1099f), 11053u, vec2<u32>(0u, 6951u)), Struct_1(false, 11561u, vec3<f32>(404f, 240f, -526f), 5008u, vec2<u32>(0u, 67186u)), Struct_1(true, 1u, vec3<f32>(136f, 436f, 1543f), 0u, vec2<u32>(24348u, 1u)), Struct_1(false, 64266u, vec3<f32>(1028f, -1498f, -731f), 5915u, vec2<u32>(29401u, 47043u)), Struct_1(true, 0u, vec3<f32>(-2606f, -611f, 1200f), 1u, vec2<u32>(2621u, 0u)), Struct_1(false, 1u, vec3<f32>(245f, 2315f, 1466f), 1u, vec2<u32>(7750u, 63986u)), Struct_1(false, 4294967295u, vec3<f32>(1462f, -538f, 1063f), 2939u, vec2<u32>(1u, 36158u)), Struct_1(false, 60769u, vec3<f32>(-146f, -1151f, -2095f), 4294967295u, vec2<u32>(4294967295u, 33885u)), Struct_1(false, 42386u, vec3<f32>(-413f, 230f, -489f), 74580u, vec2<u32>(1u, 0u)), Struct_1(false, 4294967295u, vec3<f32>(724f, -1882f, -1000f), 6268u, vec2<u32>(22938u, 1u)), Struct_1(false, 4294967295u, vec3<f32>(-402f, -519f, -1536f), 29482u, vec2<u32>(0u, 80734u)), Struct_1(false, 0u, vec3<f32>(301f, 296f, -415f), 4277u, vec2<u32>(35327u, 26398u)), Struct_1(false, 1u, vec3<f32>(-1033f, -1057f, 1094f), 19308u, vec2<u32>(103415u, 55914u)), Struct_1(true, 1u, vec3<f32>(1012f, 988f, -2181f), 34445u, vec2<u32>(40204u, 65759u)), Struct_1(true, 1u, vec3<f32>(-783f, -1000f, -885f), 13280u, vec2<u32>(1u, 1037u)), Struct_1(false, 28546u, vec3<f32>(-1000f, 296f, 524f), 4294967295u, vec2<u32>(893u, 10995u)), Struct_1(true, 4294967295u, vec3<f32>(-1000f, -1402f, 537f), 4294967295u, vec2<u32>(1u, 4294967295u)));

var<private> global2: array<f32, 24> = array<f32, 24>(-110f, 1966f, 2717f, -255f, 138f, 153f, 934f, 178f, 183f, -1138f, 510f, -733f, -199f, 1000f, 862f, -363f, -1000f, 1658f, 431f, 659f, 595f, 190f, 667f, -663f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: i32) -> vec4<f32> {
    var var_0 = !vec3<bool>(true & !any(vec2<bool>(false, true)), !any(vec4<bool>(true, false, true, true)) && !(12324i >= arg_1.a.x), !any(vec3<bool>(true, true, true)));
    var_0 = select(!vec3<bool>(var_0.x, true, true), !vec3<bool>(false, var_0.x | (-1023f > global2[_wgslsmith_index_u32(30310u, 24u)]), var_0.x), false);
    let var_1 = global2[_wgslsmith_index_u32(arg_1.b, 24u)];
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 24u)]), global2[_wgslsmith_index_u32(~1u, 24u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(25248u, 24u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-331f)) + _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(arg_0.b, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)])))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(40865u), 24u)] - global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(59729u, ~arg_0.b, firstTrailingBit(arg_1.b)), 24u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-805f * global2[_wgslsmith_index_u32(arg_1.b, 24u)])))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32) -> bool {
    global1 = array<Struct_1, 25>();
    let var_0 = u_input.b.zw;
    var var_1 = 97401u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.d.c.x)), arg_1.d.c.x, arg_1.d.c.x, global2[_wgslsmith_index_u32(max(80720u, var_0.x), 24u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 71274u), 30u)], global0[_wgslsmith_index_u32(~4294967295u, 30u)], arg_0.x)))));
    let var_3 = !vec3<bool>(all(vec3<bool>(false, !arg_1.d.a, all(vec4<bool>(false, true, false, arg_1.c.a)))), 59040u < _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 4294967295u, var_0.x), u_input.b.yzx, vec3<bool>(true, false, false)), ~u_input.b.xyz), true);
    return var_3.x;
}

fn func_1() -> Struct_5 {
    var var_0 = u_input.b.yx;
    let var_1 = !(!vec3<bool>(false, true, !func_2(u_input.a, Struct_2(0u, u_input.d.x, Struct_1(true, u_input.b.x, vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 559f, global2[_wgslsmith_index_u32(1221u, 24u)]), u_input.b.x, u_input.b.wx), global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), 4294967295u)));
    global2 = array<f32, 24>();
    global2 = array<f32, 24>();
    let var_2 = select(select(var_1, select(vec3<bool>(true, var_1.x, false), var_1, var_1), !vec3<bool>(all(vec4<bool>(var_1.x, var_1.x, false, var_1.x)), 1u < u_input.b.x, true)), vec3<bool>(any(!select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x))), -u_input.c != (-u_input.a.x << (reverseBits(var_0.x) % 32u)), true), true);
    return Struct_5(vec3<i32>(max(-u_input.c, firstLeadingBit(-1i)), abs(u_input.a.x & (u_input.d.x ^ u_input.a.x)), ~u_input.d.x), reverseBits(select(u_input.b.x, firstTrailingBit(~var_0.x), true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0, _wgslsmith_f_op_vec4_f32(arg_0 * arg_0))) * _wgslsmith_f_op_vec4_f32(-arg_0))));
    var var_1 = Struct_4(Struct_1(all(vec4<bool>(arg_3.b < u_input.b.x, var_0.x < -1105f, any(vec2<bool>(true, true)), true)), arg_2.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-621f, var_0.x, global2[_wgslsmith_index_u32(4294967295u, 24u)])), arg_0.wzy), arg_3.b, min(vec2<u32>(_wgslsmith_add_u32(arg_1.x, u_input.b.x), ~14483u), vec2<u32>(_wgslsmith_mod_u32(16209u, 51160u), arg_3.b))));
    return global1[_wgslsmith_index_u32(reverseBits(4294967295u >> (max(var_1.a.e.x, ~0u) % 32u)), 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 25>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 24u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(48882u, 24u)], -199f, true))))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(~57537u), 24u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), global2[_wgslsmith_index_u32(~(~u_input.b.x), 24u)]);
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(173f, -1557f, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], -350f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], -906f, 1048f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(172f, var_0.x, var_0.x, -881f) + vec4<f32>(var_0.x, var_0.x, 1168f, -112f))))), ~(~reverseBits(u_input.b)), func_1(), Struct_5(u_input.a.zxw, ~0u));
    var var_2 = Struct_2(~(~(~(~u_input.b.x))), countOneBits(u_input.d.x), func_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 24u)])))), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(max(var_1.e.x, 87735u), 24u)], 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 24u)])), -1556f), u_input.b, Struct_5(countOneBits(u_input.a.zxx), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 59429u, 4294967295u, 4294967295u), vec4<u32>(49199u, var_1.b, 1u, 17259u))), func_1()), Struct_1(!any(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)), 0u, _wgslsmith_f_op_vec3_f32(var_1.c + func_4(vec4<f32>(var_1.c.x, 990f, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], var_0.x), select(vec4<u32>(75713u, var_1.b, var_1.d, 0u), u_input.b, vec4<bool>(true, false, true, var_1.a)), Struct_5(vec3<i32>(u_input.d.x, u_input.d.x, -16238i), 4294967295u), global0[_wgslsmith_index_u32(abs(var_1.b), 30u)]).c), _wgslsmith_dot_vec4_u32(~vec4<u32>(24097u, 4294967295u, u_input.b.x, var_1.d), ~vec4<u32>(u_input.b.x, 5501u, 4294967295u, u_input.b.x)), vec2<u32>(u_input.b.x ^ firstLeadingBit(113100u), 0u)));
    var var_3 = !select(select(select(vec4<bool>(var_2.c.a, false, true, var_2.d.a), select(vec4<bool>(true, var_1.a, var_1.a, true), vec4<bool>(false, var_1.a, false, false), var_1.a), true & var_2.c.a), select(vec4<bool>(false, var_2.d.a, false, false), !vec4<bool>(var_1.a, false, var_2.d.a, false), vec4<bool>(false, false, var_1.a, true)), !select(vec4<bool>(var_1.a, var_2.c.a, var_1.a, var_1.a), vec4<bool>(true, var_1.a, true, false), var_1.a)), select(select(vec4<bool>(var_2.d.a, var_2.c.a, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(var_2.c.a, false, true, true), var_2.d.a), vec4<bool>(false, false, true, var_2.c.a)), vec4<bool>(false, var_2.d.e.x > 4294967295u, true, var_1.a && false), !var_1.a), !select(select(vec4<bool>(var_2.d.a, false, true, var_2.d.a), vec4<bool>(false, var_2.d.a, true, false), var_2.d.a), select(vec4<bool>(true, true, var_1.a, false), vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(false, var_2.c.a, var_2.c.a, false)), !vec4<bool>(false, var_1.a, true, var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yz, u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.d.c.x)) * -204f) - _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(var_2.c.b, 30u)], func_1(), _wgslsmith_mod_i32(1i >> (var_2.d.d % 32u), i32(-1i) * -36120i))).x));
}

