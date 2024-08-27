struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(6097i, i32(-2147483648)), vec2<i32>(-79967i, -23030i));

var<private> global1: array<u32, 1> = array<u32, 1>(23691u);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<f32>(1204f, 659f, 764f, -1000f), vec4<f32>(-1742f, 553f, -922f, 944f)), Struct_1(vec4<f32>(869f, 965f, 2430f, 192f), vec4<f32>(-508f, -913f, 448f, 639f)), Struct_1(vec4<f32>(-165f, 1416f, -735f, 1000f), vec4<f32>(-551f, 1076f, -794f, 2678f)), Struct_1(vec4<f32>(-1374f, 1850f, 367f, 1000f), vec4<f32>(-283f, 1024f, -439f, 592f)), Struct_1(vec4<f32>(-1438f, 213f, -775f, -1156f), vec4<f32>(-234f, 1182f, 713f, -1496f)), Struct_1(vec4<f32>(-636f, -1240f, -311f, -1000f), vec4<f32>(-1627f, -2183f, 531f, -421f)), Struct_1(vec4<f32>(749f, -344f, 382f, 231f), vec4<f32>(-1168f, -138f, -291f, -681f)), Struct_1(vec4<f32>(-2186f, 1413f, -455f, -317f), vec4<f32>(-717f, -1000f, -435f, 202f)), Struct_1(vec4<f32>(952f, 1037f, 905f, -674f), vec4<f32>(-1259f, 420f, 982f, 1263f)), Struct_1(vec4<f32>(1262f, -1276f, -664f, 135f), vec4<f32>(1347f, 351f, -410f, -1697f)), Struct_1(vec4<f32>(1705f, 181f, -403f, 1141f), vec4<f32>(-1020f, -1000f, -790f, -881f)), Struct_1(vec4<f32>(-1253f, -285f, 671f, -1122f), vec4<f32>(-694f, -1000f, -2892f, -953f)), Struct_1(vec4<f32>(-620f, -854f, 659f, 971f), vec4<f32>(-1599f, 1530f, -583f, 786f)), Struct_1(vec4<f32>(-292f, -519f, -391f, 870f), vec4<f32>(2503f, -1177f, 1043f, -248f)), Struct_1(vec4<f32>(2135f, 1000f, -567f, -1006f), vec4<f32>(1027f, 771f, -1104f, -1145f)), Struct_1(vec4<f32>(698f, -1447f, 1000f, 257f), vec4<f32>(-1000f, 581f, -832f, 514f)), Struct_1(vec4<f32>(1500f, 198f, 436f, 262f), vec4<f32>(986f, -1057f, 506f, 360f)), Struct_1(vec4<f32>(-580f, 3045f, -695f, -763f), vec4<f32>(-982f, 167f, -675f, -1000f)), Struct_1(vec4<f32>(-1000f, 786f, -935f, 276f), vec4<f32>(741f, -1167f, 1342f, -927f)), Struct_1(vec4<f32>(-1322f, -1523f, 1000f, -113f), vec4<f32>(956f, -168f, 719f, -1314f)), Struct_1(vec4<f32>(638f, 2244f, 1864f, 572f), vec4<f32>(477f, -2384f, -633f, -1496f)), Struct_1(vec4<f32>(-1254f, -424f, 578f, 1427f), vec4<f32>(1175f, -1000f, 946f, 201f)), Struct_1(vec4<f32>(-1000f, 524f, -271f, -911f), vec4<f32>(249f, 1000f, 826f, -1256f)), Struct_1(vec4<f32>(1055f, 1407f, -878f, -2701f), vec4<f32>(-1677f, 1000f, 1000f, 1000f)), Struct_1(vec4<f32>(100f, 1282f, 268f, -1000f), vec4<f32>(1326f, -555f, -1210f, -558f)), Struct_1(vec4<f32>(-1000f, -391f, -287f, 1178f), vec4<f32>(-332f, 370f, -1814f, 284f)), Struct_1(vec4<f32>(-183f, 499f, 984f, 763f), vec4<f32>(654f, -1186f, -262f, -528f)), Struct_1(vec4<f32>(752f, -1789f, -327f, -109f), vec4<f32>(1002f, -363f, -740f, 929f)), Struct_1(vec4<f32>(-515f, -854f, -1000f, 958f), vec4<f32>(182f, 319f, -1000f, -136f)), Struct_1(vec4<f32>(2064f, 168f, -692f, -202f), vec4<f32>(-143f, 1612f, 1199f, 1000f)));

var<private> global3: array<bool, 10> = array<bool, 10>(false, false, false, true, true, false, false, true, false, false);

var<private> global4: vec4<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_5) -> vec3<bool> {
    global4 = vec4<u32>(53211u, 21802u, firstTrailingBit(u_input.a), 1u);
    global0 = array<vec2<i32>, 2>();
    global3 = array<bool, 10>();
    global4 = firstLeadingBit(~_wgslsmith_sub_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(15302u, 0u, 68806u, u_input.b), vec4<u32>(global4.x, u_input.b, 39017u, global4.x)), vec4<u32>(global4.x, 30046u, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]), select(vec4<bool>(true, arg_2.x, arg_3.a, arg_2.x), vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(global4.x, 10u)]), vec4<bool>(false, false, arg_3.a, arg_2.x))), ~_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 1u)], 1u)], 6205u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 1u)], 1u)], u_input.a), vec4<u32>(1u, global1[_wgslsmith_index_u32(0u, 1u)], u_input.a, global4.x))));
    let var_0 = select(select(!(!select(vec4<bool>(false, false, false, arg_2.x), vec4<bool>(false, arg_3.a, arg_2.x, false), false)), !select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(global4.x, 10u)], arg_3.a, false), vec4<bool>(true, true, true, arg_2.x), false), select(vec4<bool>(true, false, false, true), vec4<bool>(arg_3.a, arg_2.x, false, true), false), arg_2.x || false), !(_wgslsmith_f_op_f32(floor(arg_1.x)) > arg_1.x)), !vec4<bool>(false, all(!vec4<bool>(false, global3[_wgslsmith_index_u32(34245u, 10u)], false, true)), all(vec4<bool>(true, false, true, false)) | any(arg_2), !(2147483647i <= arg_0.x)), true);
    return vec3<bool>(var_0.x, (_wgslsmith_add_u32(50059u << (u_input.a % 32u), u_input.a) >= abs(_wgslsmith_mod_u32(74244u, 4294967295u))) | arg_2.x, false);
}

fn func_2() -> vec4<u32> {
    global2 = array<Struct_1, 30>();
    let var_0 = 210f;
    let var_1 = !(!global3[_wgslsmith_index_u32(4294967295u & _wgslsmith_mod_u32(5062u, u_input.b), 10u)]) == ((_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) - _wgslsmith_f_op_f32(floor(-1685f)))) & true);
    let var_2 = vec3<bool>(false, !var_1, all(func_3(global0[_wgslsmith_index_u32(~21520u, 2u)] | (vec2<i32>(2147483647i, 20259i) >> (vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)]) % vec2<u32>(32u))), vec4<f32>(-1175f, _wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_div_f32(-1000f, var_0)), vec3<bool>(any(vec4<bool>(false, var_1, var_1, var_1)), var_1 && false, true), Struct_5(!global3[_wgslsmith_index_u32(58779u, 10u)], -1i))));
    var var_3 = 418f;
    return abs(vec4<u32>(4294967295u, _wgslsmith_sub_u32(select(8399u, u_input.b, true) >> (firstTrailingBit(u_input.b) % 32u), _wgslsmith_clamp_u32(9637u, ~0u, _wgslsmith_dot_vec2_u32(global4.zz, vec2<u32>(global4.x, u_input.a)))), ~global1[_wgslsmith_index_u32(55274u, 1u)], u_input.b));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    var var_0 = select(arg_1, arg_1, select(select(arg_1, arg_1, global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global4.x, 0u), 10u)]), arg_1, false));
    global4 = ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, global4.x, 4294967295u, 119838u), ~func_2()));
    let var_1 = firstLeadingBit(14653i);
    global0 = array<vec2<i32>, 2>();
    global0 = array<vec2<i32>, 2>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1579f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1053f)), -1712f)), Struct_2(i32(-1i) * -(-2147483647i << (u_input.b % 32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4.x, 5047u, u_input.a), vec4<u32>(0u, 21152u, 1u, 65134u)), func_1(countOneBits(2147483647i), vec2<bool>(true, true))), abs(~vec2<u32>(0u, u_input.a))));
    var var_1 = !vec3<bool>(false, global3[_wgslsmith_index_u32(max(~1u, 101410u), 10u)], !(1u != global4.x));
    var_1 = vec3<bool>(-149f == _wgslsmith_div_f32(209f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-893f)), var_0.a, global3[_wgslsmith_index_u32(1u, 10u)]))), true, var_1.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(-795f)), var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-369f * -481f)), var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(448f, -880f, -263f, -901f) * vec4<f32>(var_0.a, 1615f, var_0.a, var_0.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a))))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global4.wzz, func_2().zyw), 10u)])));
    global2 = array<Struct_1, 30>();
    global0 = array<vec2<i32>, 2>();
    var var_3 = Struct_2(_wgslsmith_dot_vec2_i32(min(-global0[_wgslsmith_index_u32(128096u, 2u)], -vec2<i32>(var_0.b.a, var_0.b.a)), vec2<i32>(~firstTrailingBit(-2147483647i), 2147483647i)));
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_2.x, 394f)), _wgslsmith_f_op_f32(trunc(var_0.a))));
    global1 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2310f), var_2.x)), 130f, var_2.x), _wgslsmith_f_op_f32(-var_0.a));
}

