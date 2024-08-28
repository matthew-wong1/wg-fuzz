struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(4294967295u, 0u, 4294967295u, 1u, 0u, 1u, 0u, 4294967295u, 4294967295u, 4294967295u, 4294967295u);

var<private> global1: array<bool, 20>;

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(18832i, 1u, vec3<f32>(-791f, 383f, 950f)), Struct_2(30129i, 0u, vec3<f32>(363f, -1801f, 292f)), Struct_2(-1i, 78260u, vec3<f32>(258f, 1155f, -1941f)), Struct_2(0i, 28568u, vec3<f32>(-334f, -693f, -785f)), Struct_2(-7773i, 32239u, vec3<f32>(-1316f, -2186f, 1000f)), Struct_2(2147483647i, 44166u, vec3<f32>(1841f, -1450f, 753f)), Struct_2(0i, 1u, vec3<f32>(588f, 331f, 291f)), Struct_2(15481i, 82243u, vec3<f32>(179f, -197f, -702f)), Struct_2(-23588i, 1u, vec3<f32>(-1414f, 1428f, 182f)), Struct_2(2147483647i, 70831u, vec3<f32>(793f, -1656f, 222f)), Struct_2(2147483647i, 0u, vec3<f32>(1297f, -230f, -596f)), Struct_2(-32751i, 25372u, vec3<f32>(953f, 100f, 1002f)), Struct_2(39434i, 0u, vec3<f32>(1602f, -135f, -1000f)), Struct_2(2147483647i, 68225u, vec3<f32>(-493f, -660f, 271f)), Struct_2(0i, 4294967295u, vec3<f32>(342f, 488f, 1000f)), Struct_2(-11225i, 31792u, vec3<f32>(-767f, -304f, -2309f)), Struct_2(-1i, 88486u, vec3<f32>(-219f, -959f, 808f)), Struct_2(-600i, 0u, vec3<f32>(550f, -610f, 808f)), Struct_2(-1i, 4102u, vec3<f32>(565f, 708f, 1028f)), Struct_2(38817i, 124347u, vec3<f32>(2027f, 1452f, 1785f)), Struct_2(37415i, 27564u, vec3<f32>(1659f, 676f, -484f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec4<f32> {
    global2 = array<Struct_2, 21>();
    let var_0 = _wgslsmith_f_op_f32(518f * 323f);
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    global2 = array<Struct_2, 21>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(min(-1705f, 1059f))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(530f + var_0) + _wgslsmith_f_op_f32(ceil(-1419f))), _wgslsmith_f_op_f32(round(-555f))))));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec3<bool>(any(select(select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(2437u, 20u)], global1[_wgslsmith_index_u32(2121u, 20u)], true), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], true, true, global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(63762u, 20u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15234u, 11u)], 11u)], 11u)], 11u)], 11u)], 20u)], false, global1[_wgslsmith_index_u32(42334u, 20u)])), !vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75365u, 11u)], 20u)], true, false)), select(vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67885u, 11u)], 20u)], true, global1[_wgslsmith_index_u32(1u, 20u)]), !vec4<bool>(global1[_wgslsmith_index_u32(71665u, 20u)], true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55276u, 11u)], 20u)], global1[_wgslsmith_index_u32(1u, 20u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(36659u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 20u)])), !(!vec4<bool>(global1[_wgslsmith_index_u32(22619u, 20u)], false, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15781u, 11u)], 11u)], 11u)], 20u)])))), any(select(select(!vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25170u, 11u)], 11u)], 20u)]), vec2<bool>(true, true), !vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 20u)], true)), vec2<bool>(true, global1[_wgslsmith_index_u32(63121u << (global0[_wgslsmith_index_u32(80937u, 11u)] % 32u), 20u)]), select(select(vec2<bool>(global1[_wgslsmith_index_u32(16291u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<bool>(global1[_wgslsmith_index_u32(12759u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(86976u, 11u)], 20u)]), vec2<bool>(global1[_wgslsmith_index_u32(9909u, 20u)], false)), !vec2<bool>(global1[_wgslsmith_index_u32(7265u, 20u)], true), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 20u)])))), all(select(select(vec3<bool>(global1[_wgslsmith_index_u32(115806u, 20u)], global1[_wgslsmith_index_u32(36761u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 20u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)], true, global1[_wgslsmith_index_u32(1u, 20u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(40618u, 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(41188u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1519u, 11u)], 11u)], 11u)], 20u)], global1[_wgslsmith_index_u32(106692u, 20u)])), !vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(93961u, 11u)], 11u)], 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60347u, 11u)], 11u)], 11u)], 20u)])), vec3<bool>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62896u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)] > global0[_wgslsmith_index_u32(2602u, 11u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(43920u, global0[_wgslsmith_index_u32(43742u, 11u)]), 20u)], true), !global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 11u)], 20u)])));
    var var_1 = 45279u;
    global2 = array<Struct_2, 21>();
    global2 = array<Struct_2, 21>();
    let var_2 = Struct_3(!(true && select(any(vec2<bool>(true, true)), true, false)), false, vec4<bool>(global1[_wgslsmith_index_u32(59291u, 20u)], _wgslsmith_f_op_f32(floor(1212f)) < -1722f, !(!(-2147483647i == u_input.a.x)), all(vec3<bool>(!var_0.x, any(var_0.yx), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60554u, 11u)], 11u)], global0[_wgslsmith_index_u32(29001u, 11u)]), 20u)]))));
    return select(var_2.c.zwy, select(!vec3<bool>(global1[_wgslsmith_index_u32(reverseBits(0u), 20u)], all(var_0), all(var_2.c.xwz)), vec3<bool>(true, var_0.x, var_0.x || true), vec3<bool>(true, -6798i != (u_input.a.x >> (global0[_wgslsmith_index_u32(1u, 11u)] % 32u)), true)), !(!(!select(vec3<bool>(false, false, var_2.b), vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec3<bool>(false, true, false)))));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(480f, -496f, 1724f, -1000f)), vec4<f32>(-133f, -168f, -708f, _wgslsmith_f_op_f32(278f - 557f))), _wgslsmith_f_op_vec4_f32(func_2()), vec4<bool>(select(global1[_wgslsmith_index_u32(0u, 20u)], true, global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(43100u, 11u)], 20u)]), abs(global0[_wgslsmith_index_u32(15449u, 11u)]) >= 15389u, -729f == _wgslsmith_f_op_f32(round(-450f)), true))));
    let var_1 = abs(26795i);
    var var_2 = Struct_3(any(select(vec3<bool>(global1[_wgslsmith_index_u32(30252u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30487u, 11u)], 11u)], 20u)], var_1 != 96097i, true), select(vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46297u, 11u)], 11u)], 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29328u, 11u)], 20u)], global1[_wgslsmith_index_u32(26527u, 20u)]), func_3()), !(!vec3<bool>(false, global1[_wgslsmith_index_u32(2535u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 20u)])))), any(!vec3<bool>(global1[_wgslsmith_index_u32(~0u, 20u)], true, true)), select(!(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 20u)], true, global1[_wgslsmith_index_u32(25924u, 20u)], true)), select(vec4<bool>(true, all(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)], 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(64304u, 20u)], true)), true, false), select(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(41840u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(49389u, 20u)], global1[_wgslsmith_index_u32(81651u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], false), vec4<bool>(global1[_wgslsmith_index_u32(33867u, 20u)], false, true, global1[_wgslsmith_index_u32(32679u, 20u)]), true), vec4<bool>(true, true, true, true)), !(!vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 20u)], false, global1[_wgslsmith_index_u32(66018u, 20u)], true))), global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~(~53693u), 11u)], 20u)]));
    let var_3 = vec3<u32>(global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 4294967295u) << (countOneBits(21543u) % 32u)), 11u)]), 11u)], global0[_wgslsmith_index_u32(~(~(~0u)), 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46731u, 11u)], 11u)]);
    let var_4 = vec3<bool>(!(countOneBits(_wgslsmith_sub_i32(var_1, u_input.a.x)) >= (var_1 ^ -var_1)), false, func_3().x);
    return all(vec4<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(5538u, 11u)]), 20u)], all(vec3<bool>(true, var_2.b, var_4.x)))), any(!(!vec4<bool>(var_4.x, true, var_2.b, var_2.a))), true, true));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> bool {
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 1u, 1u), 1u, global0[_wgslsmith_index_u32(~1u, 11u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 11u)], 11u)], 11u)], 11u)]);
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    global2 = array<Struct_2, 21>();
    let var_1 = var_0;
    var var_2 = vec4<bool>(!any(vec2<bool>(true, all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], false, global1[_wgslsmith_index_u32(4294967295u, 20u)], false)))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, global0[_wgslsmith_index_u32(~var_0.x, 11u)]), 20u)], any(!vec3<bool>(true, true | global1[_wgslsmith_index_u32(33464u, 20u)], false)), true);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -965f), -753f, func_4(min(var_1.wxx, vec3<u32>(34773u, 24162u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)])), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.x, 4294967295u, var_0.x) << (countOneBits(0u) % 32u), 21u)], func_1()) && true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(var_0, ~(~(~vec4<u32>(21891u, 1u, 0u, 9889u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(835f)))) + _wgslsmith_f_op_f32(f32(-1f) * -264f)));
}

