struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, true, true, false, true, true, false, true, false, true, true, false, false, true, true, false, true, false, true, false, true, true);

var<private> global1: vec3<u32> = vec3<u32>(52563u, 1u, 4294967295u);

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec4<u32>(0u, 1u, 4294967295u, 44049u), Struct_1(true, vec4<f32>(1169f, 219f, -1638f, -1266f), 2041f, false), -845f), Struct_2(vec4<u32>(0u, 86687u, 0u, 1u), Struct_1(true, vec4<f32>(-960f, 209f, -803f, 725f), -2249f, true), -1211f), Struct_2(vec4<u32>(4294967295u, 2448u, 55388u, 26055u), Struct_1(false, vec4<f32>(1000f, -499f, -857f, -1810f), 499f, false), 1892f), Struct_2(vec4<u32>(18774u, 1u, 6232u, 30914u), Struct_1(true, vec4<f32>(120f, 173f, -1256f, -238f), 189f, true), -1000f), Struct_2(vec4<u32>(4521u, 4294967295u, 4294967295u, 1u), Struct_1(true, vec4<f32>(1455f, -340f, -649f, -862f), -1972f, false), -461f), Struct_2(vec4<u32>(4294967295u, 64930u, 22947u, 27776u), Struct_1(false, vec4<f32>(-420f, 175f, -801f, 1496f), 943f, true), -1256f), Struct_2(vec4<u32>(53652u, 59444u, 98066u, 1u), Struct_1(false, vec4<f32>(-2181f, -1490f, -1613f, -714f), 200f, false), -1286f), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 19626u), Struct_1(true, vec4<f32>(-1127f, -1127f, -1753f, -758f), -395f, true), 239f), Struct_2(vec4<u32>(24578u, 2751u, 0u, 4294967295u), Struct_1(true, vec4<f32>(-1435f, -996f, -858f, -1844f), -111f, false), -1738f), Struct_2(vec4<u32>(44173u, 4294967295u, 1u, 60u), Struct_1(false, vec4<f32>(843f, 1299f, -738f, -457f), 555f, true), -213f), Struct_2(vec4<u32>(0u, 19976u, 4294967295u, 4294967295u), Struct_1(true, vec4<f32>(-1105f, -410f, 1364f, 815f), -1690f, false), -155f), Struct_2(vec4<u32>(54681u, 1u, 0u, 10528u), Struct_1(true, vec4<f32>(-891f, 707f, -396f, 1880f), 172f, false), 1116f), Struct_2(vec4<u32>(4294967295u, 1u, 0u, 98482u), Struct_1(false, vec4<f32>(-578f, -795f, -1525f, 258f), -940f, false), -2699f), Struct_2(vec4<u32>(0u, 11769u, 947u, 0u), Struct_1(false, vec4<f32>(223f, 1353f, 1417f, -2073f), 492f, true), 185f), Struct_2(vec4<u32>(74449u, 20088u, 18972u, 39915u), Struct_1(true, vec4<f32>(649f, -897f, -905f, -475f), 1097f, false), -429f), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 15195u), Struct_1(true, vec4<f32>(1636f, -592f, 961f, 379f), -1112f, true), 1163f), Struct_2(vec4<u32>(1u, 1u, 32228u, 0u), Struct_1(true, vec4<f32>(1861f, -1388f, -562f, 1198f), 693f, false), 546f), Struct_2(vec4<u32>(1u, 1u, 5686u, 8477u), Struct_1(false, vec4<f32>(569f, -1949f, 369f, -1709f), -626f, false), 1000f), Struct_2(vec4<u32>(32193u, 762u, 90727u, 33447u), Struct_1(false, vec4<f32>(-266f, 117f, 103f, -947f), 1000f, true), -642f), Struct_2(vec4<u32>(1u, 0u, 4294967295u, 0u), Struct_1(false, vec4<f32>(-615f, -1009f, -621f, -769f), -1111f, true), -349f), Struct_2(vec4<u32>(4294967295u, 0u, 0u, 1u), Struct_1(true, vec4<f32>(-508f, 1118f, 828f, 1425f), 1835f, true), -950f), Struct_2(vec4<u32>(0u, 4635u, 72270u, 22378u), Struct_1(false, vec4<f32>(1057f, -2191f, 1274f, 2129f), -1620f, false), -1347f), Struct_2(vec4<u32>(0u, 16519u, 1u, 4294967295u), Struct_1(true, vec4<f32>(208f, 1137f, -1027f, -210f), 1194f, false), -576f), Struct_2(vec4<u32>(0u, 12975u, 65186u, 1u), Struct_1(false, vec4<f32>(-244f, 638f, -1000f, -436f), 609f, false), 1051f), Struct_2(vec4<u32>(23637u, 76323u, 15510u, 53856u), Struct_1(true, vec4<f32>(-1666f, 1752f, -1000f, -1915f), 1000f, false), 423f), Struct_2(vec4<u32>(0u, 0u, 11608u, 60949u), Struct_1(false, vec4<f32>(250f, 1000f, 845f, -1734f), -553f, true), 216f), Struct_2(vec4<u32>(0u, 74484u, 25420u, 4294967295u), Struct_1(true, vec4<f32>(930f, -902f, 512f, -383f), -446f, true), 1934f), Struct_2(vec4<u32>(4294967295u, 31053u, 53720u, 30814u), Struct_1(true, vec4<f32>(-381f, -405f, -239f, -316f), -323f, true), -1514f), Struct_2(vec4<u32>(1u, 38057u, 41843u, 1u), Struct_1(false, vec4<f32>(-332f, 598f, -720f, 1881f), 216f, true), 2179f), Struct_2(vec4<u32>(1u, 1u, 1u, 4294967295u), Struct_1(true, vec4<f32>(529f, 865f, -1688f, 1384f), 723f, false), -1354f), Struct_2(vec4<u32>(1u, 53481u, 4294967295u, 4294967295u), Struct_1(false, vec4<f32>(351f, 856f, -231f, 1285f), 700f, false), 685f), Struct_2(vec4<u32>(24564u, 29863u, 1u, 57941u), Struct_1(false, vec4<f32>(-1684f, -1333f, 410f, 1948f), 1076f, true), 488f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0.b.wzw;
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)));
    let var_3 = !select(vec4<bool>(!all(vec4<bool>(false, global0[_wgslsmith_index_u32(2059u, 22u)], arg_0.a, arg_0.a)), true, true, (u_input.a << (100092u % 32u)) >= u_input.a), !vec4<bool>(0u == global1.x, true, all(vec4<bool>(true, arg_0.a, false, arg_0.d)), select(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], arg_0.d, false)), select(!select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(110080u, 22u)], true), vec4<bool>(true, arg_0.d, false, false), global0[_wgslsmith_index_u32(4294967295u, 22u)]), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(114u, 22u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], false, false), global0[_wgslsmith_index_u32(27840u, 22u)]), any(vec3<bool>(global0[_wgslsmith_index_u32(14804u, 22u)], arg_0.a, global0[_wgslsmith_index_u32(67369u, 22u)]))));
    global0 = array<bool, 22>();
    return 25366u;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    global1 = arg_2.a.zyy;
    var var_0 = _wgslsmith_clamp_u32(94953u, _wgslsmith_div_u32(u_input.b.x, 1u), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, func_3(arg_0)), global1.x));
    let var_1 = Struct_4(Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.b.b, arg_0.b))), 1304f, true), Struct_2(select(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2.a, arg_2.a), arg_2.a | arg_2.a), countOneBits(arg_2.a), !all(vec3<bool>(false, arg_1, arg_2.b.d))), arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.b.c)), _wgslsmith_f_op_f32(sign(arg_2.b.b.x))))), Struct_1(false | (!arg_0.d | false), arg_2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-193f * _wgslsmith_div_f32(arg_0.c, 168f))), arg_3));
    global2 = array<Struct_2, 32>();
    var var_2 = var_1.b;
    return Struct_2(vec4<u32>(func_3(arg_2.b), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global1.x, var_2.a.x), _wgslsmith_sub_u32(arg_2.a.x, 34795u)), var_1.b.a.yw), _wgslsmith_mult_u32(~select(var_1.b.a.x, 16631u, arg_1), _wgslsmith_mult_u32(34178u, 67874u)), ~(~23447u)), var_1.a, -936f);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: vec2<bool>) -> f32 {
    var var_0 = arg_0.c;
    var var_1 = false;
    global2 = array<Struct_2, 32>();
    let var_2 = arg_0.b.x;
    let var_3 = Struct_3(u_input.b.x, func_2(arg_0, arg_0.d, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 1u) | _wgslsmith_mod_u32(27613u, ~global1.x), 32u)], true), arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 * 1000f), _wgslsmith_f_op_f32(var_3.b.b.b.x * var_3.b.c))))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = ~vec3<u32>(func_2(arg_2.b, arg_2.c != arg_2.c, arg_2, all(vec4<bool>(false, arg_1, true, false))).a.x, reverseBits(4294967295u), global1.x) ^ ~(~(~arg_2.a.zyy));
    var var_1 = 1i;
    let var_2 = Struct_2(arg_2.a, func_2(Struct_1(!arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.b.b.x, -697f, -642f, arg_2.c), arg_2.b.b)) * _wgslsmith_f_op_vec4_f32(-arg_2.b.b)), _wgslsmith_f_op_f32(675f + _wgslsmith_div_f32(566f, 101f)), func_2(func_2(Struct_1(arg_1, vec4<f32>(838f, -832f, arg_2.b.b.x, arg_0), 470f, arg_1), arg_1, arg_2, arg_2.b.d).b, !global0[_wgslsmith_index_u32(var_0.x, 22u)], func_2(Struct_1(true, arg_2.b.b, 1059f, true), true, Struct_2(arg_2.a, Struct_1(true, vec4<f32>(arg_2.c, arg_0, arg_2.b.c, arg_2.b.c), arg_0, arg_2.b.a), arg_0), false), all(vec2<bool>(arg_1, false))).b.a), !any(select(vec3<bool>(true, false, false), vec3<bool>(true, arg_2.b.a, true), vec3<bool>(false, arg_1, false))), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1093f, arg_2.c))) == _wgslsmith_f_op_f32(arg_2.c + _wgslsmith_f_op_f32(-arg_2.b.b.x))).b, -1658f);
    var var_3 = var_2.b.b.yz;
    var var_4 = vec4<bool>(any(!select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.x, 22u)], arg_1), vec4<bool>(true, false, false, var_2.b.a), vec4<bool>(global0[_wgslsmith_index_u32(arg_2.a.x, 22u)], false, var_2.b.a, global0[_wgslsmith_index_u32(var_2.a.x, 22u)]))) || var_2.b.a, arg_2.b.c >= _wgslsmith_f_op_f32(-func_2(var_2.b, global0[_wgslsmith_index_u32(0u << (1u % 32u), 22u)], func_2(Struct_1(arg_2.b.d, vec4<f32>(-432f, arg_0, arg_2.c, arg_2.b.b.x), arg_2.b.b.x, true), global0[_wgslsmith_index_u32(arg_2.a.x, 22u)], Struct_2(arg_2.a, var_2.b, 2107f), true), true).c), true, var_2.b.d);
    return StorageBuffer(arg_2.a.x, var_2.b.b.yy, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(106f * arg_0) * _wgslsmith_f_op_f32(func_1(var_2.b, -2147483647i, var_4.wz, var_4.wz)))) - vec3<f32>(_wgslsmith_div_f32(-370f, _wgslsmith_f_op_f32(trunc(arg_2.b.b.x))), _wgslsmith_f_op_f32(round(486f)), -1000f)), ~(~(~(-6743i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(all(select(vec4<bool>(34414i < u_input.a, global0[_wgslsmith_index_u32(u_input.b.x | 1u, 22u)], true, true), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], true, true, global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(global1.x, 22u)], global0[_wgslsmith_index_u32(global1.x, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]), true), global0[_wgslsmith_index_u32(~global1.x, 22u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-665f - -940f), -856f, _wgslsmith_f_op_f32(f32(-1f) * -1342f), _wgslsmith_f_op_f32(1631f * 102f))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-164f * 1000f), 1f, -111f, -353f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-825f, 647f, 1030f, -1061f) * vec4<f32>(1363f, 278f, 238f, -487f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1616f), global0[_wgslsmith_index_u32(12282u, 22u)]);
    let var_1 = global2[_wgslsmith_index_u32(~(~u_input.b.x), 32u)];
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(true, var_0.b, var_1.b.b.x, false), u_input.a, vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, true)))))), any(select(vec4<bool>(var_0.a, any(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(4294967295u, 22u)])), u_input.a > u_input.a, !var_1.b.d), select(vec4<bool>(var_1.b.d, false, false, false), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(1998u, 22u)]), true), select(!var_0.a, var_1.b.d && global0[_wgslsmith_index_u32(39796u, 22u)], any(vec2<bool>(var_0.a, var_0.d))))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(58257u, ~(~_wgslsmith_sub_u32(10999u, var_1.a.x))), 32u)]);
}

