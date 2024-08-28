struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: f32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2 = Struct_2(i32(-2147483648), Struct_1(-36475i, 4294967295u, vec3<u32>(17956u, 7719u, 0u)), Struct_1(-2453i, 44621u, vec3<u32>(4294967295u, 16623u, 4675u)), Struct_1(-2794i, 4294967295u, vec3<u32>(78452u, 37485u, 0u)));

var<private> global2: array<vec3<bool>, 8>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> vec4<u32> {
    var var_0 = arg_0;
    let var_1 = 124f;
    let var_2 = _wgslsmith_add_u32(37868u & u_input.a.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(133798u, arg_2.c.c.x >> (0u % 32u)), ~arg_0.c.c.x) >> (var_0.c.c.x % 32u));
    var_0 = arg_0;
    var_0 = arg_0;
    return _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(4294967295u, arg_0.c.c.x), ~arg_2.c.b, ~_wgslsmith_clamp_u32(firstLeadingBit(11262u), 1u, arg_2.b.b & 26144u), 0u), vec4<u32>(~0u, select(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21865u, 74183u, 25337u, 0u), vec4<u32>(74695u, 4294967295u, arg_2.d.b, 0u)), _wgslsmith_add_u32(0u, u_input.a.x)), 1u, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, var_0.b.b, 4181u, var_0.c.b)), _wgslsmith_mult_vec4_u32(~vec4<u32>(53189u, arg_0.b.b, arg_1.c.x, var_2), countOneBits(vec4<u32>(var_0.b.c.x, 21690u, global1.b.c.x, 40817u)))), ~u_input.a.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: u32) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(-global1.a, global1.b.a), -1274i), u_input.a.x, vec3<u32>(_wgslsmith_mult_u32(select(26914u, 0u & global1.d.c.x, any(vec2<bool>(arg_1, false))), countOneBits(global1.d.c.x)), arg_3, ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.zw, global1.c.c.yy), min(vec2<u32>(0u, 0u), arg_0.yy))));
    let var_1 = global1.d;
    let var_2 = Struct_1(global1.b.a, ~var_1.b, _wgslsmith_add_vec3_u32(max(vec3<u32>(0u, 27331u, global1.d.b) | vec3<u32>(58201u, var_1.c.x, global1.b.b), _wgslsmith_div_vec3_u32(max(vec3<u32>(global1.d.b, 0u, global1.b.c.x), vec3<u32>(var_1.b, 34122u, var_1.b)), u_input.a)), vec3<u32>(arg_0.x, 1u, 0u)));
    var var_3 = vec4<u32>(var_0.b, abs(var_0.c.x), select(~(~16514u), arg_3 & func_3(Struct_2(var_0.a, Struct_1(var_2.a, 17403u, vec3<u32>(var_0.c.x, var_0.b, u_input.a.x)), global1.d, Struct_1(2220i, u_input.a.x, var_1.c)), global1.d, Struct_2(var_1.a, global1.d, Struct_1(23287i, arg_3, vec3<u32>(11889u, 1u, arg_3)), var_2), -426f).x, arg_1), ~_wgslsmith_div_u32(4229u, global1.c.b));
    var var_4 = min(min(vec3<i32>(reverseBits(~var_1.a), -1499i, max(~1i, global1.c.a << (0u % 32u))), -_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(var_2.a, global1.b.a, var_0.a)), vec3<i32>(var_0.a, var_2.a, var_2.a))), abs(vec3<i32>(~(~var_0.a), ~(-var_0.a), ~(-u_input.b.x))));
    return _wgslsmith_mult_vec3_u32(~vec3<u32>(~1u, global1.c.b | 1u, _wgslsmith_mod_u32(u_input.a.x, arg_3)) & reverseBits(global1.b.c), vec3<u32>(u_input.a.x ^ var_0.c.x, arg_3, _wgslsmith_clamp_u32(~arg_3, 1u, countOneBits(42827u))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4) -> Struct_1 {
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = ~global1.d.c.x;
    global0 = abs(min(u_input.a.x, 58919u)) < _wgslsmith_dot_vec3_u32(func_4(func_3(Struct_2(-2147483647i, Struct_1(0i, arg_1.b.b, vec3<u32>(1u, u_input.a.x, arg_0.b)), arg_0, Struct_1(12693i, arg_0.b, vec3<u32>(1u, 4294967295u, 83790u))), Struct_1(-2147483647i, 4294967295u, vec3<u32>(0u, global1.c.b, 46155u)), Struct_2(global1.c.a, arg_0, global1.d, Struct_1(4789i, 27425u, arg_0.c)), -998f), var_0.x, !(var_0.x && false), _wgslsmith_clamp_u32(4294967295u, select(u_input.a.x, arg_0.b, true), 4294967295u ^ global1.d.b)), ~vec3<u32>(4294967295u, 0u, ~26744u));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1099f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - 1386f))))))) != -2507f;
    var var_2 = Struct_3(Struct_2(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2283i, u_input.c, 51877i, 2147483647i), -vec4<i32>(53056i, 2147483647i, u_input.b.x, arg_1.a.b.a)), global1.b, arg_1.b, Struct_1(2147483647i, u_input.a.x, global1.b.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, 1101f, -523f, 949f)) - vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2005f, -395f, -605f, 196f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-895f, 1340f, 1294f, 1612f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1718f, 595f, 1364f, -472f), vec4<f32>(110f, -1000f, 1000f, -1757f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-506f, -146f, -607f, 1485f), vec4<f32>(-1554f, 641f, -868f, 1043f))))))), _wgslsmith_f_op_f32(-765f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f))))), var_0.yz, _wgslsmith_mod_u32(select(func_4(func_3(arg_1.a, arg_0, arg_1.a, -1369f), true, false, abs(0u)).x, 12793u, true & any(var_0.xx)), firstLeadingBit(_wgslsmith_div_u32(arg_0.c.x, global1.c.c.x)) & 47886u));
    return Struct_1(2147483647i, 25788u, ~var_2.a.b.c);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = (!any(vec2<bool>(true, false)) & false) & false;
    let var_2 = select(!(!(!(!vec2<bool>(var_1, true)))), select(vec2<bool>(!var_1, all(select(vec2<bool>(var_1, false), vec2<bool>(false, true), var_1))), !(!select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), false)), (all(vec4<bool>(true, false, var_1, true)) && select(var_1, true, false)) == var_1), select(var_1, true, true) | var_1);
    var var_3 = 345f;
    let var_4 = Struct_2(u_input.b.x, Struct_1(-31080i, _wgslsmith_div_u32(~(~1009u), 1929u), abs(vec3<u32>(_wgslsmith_mult_u32(1u, u_input.a.x), global1.d.b, ~1u))), arg_0.b, Struct_1(-max(~8534i, ~(-2147483647i)), 1u, arg_2.c));
    return func_2(Struct_1(max(arg_0.a.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.a, -18480i), vec2<i32>(39238i, global1.b.a))) >> ((~4294967295u | abs(u_input.a.x)) % 32u), min(_wgslsmith_sub_u32(~10414u, ~arg_0.b.c.x), _wgslsmith_mod_u32(1872u, ~0u)), vec3<u32>(func_3(Struct_2(global1.c.a, Struct_1(0i, 4294967295u, vec3<u32>(arg_0.b.c.x, 1u, 5148u)), var_4.d, var_4.d), func_2(Struct_1(0i, 43508u, var_4.b.c), arg_1), Struct_2(global1.a, Struct_1(arg_2.a, arg_0.b.b, arg_1.b.c), Struct_1(-18559i, u_input.a.x, u_input.a), arg_2), _wgslsmith_f_op_f32(min(124f, -526f))).x, ~abs(0u), ~(~14709u))), arg_0);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    return Struct_2(~11681i, global1.c, func_5(Struct_4(Struct_2(global1.d.a ^ u_input.b.x, Struct_1(-1467i, arg_2, arg_0), global1.c, Struct_1(-2147483647i, arg_2, vec3<u32>(1u, 1u, arg_0.x))), Struct_1(~global1.d.a, arg_2, ~global1.c.c), -_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(25267i, u_input.b.x))), Struct_4(Struct_2(u_input.b.x, Struct_1(global1.a, arg_2, u_input.a), func_2(Struct_1(2147483647i, 48573u, u_input.a), Struct_4(Struct_2(-38416i, global1.d, global1.b, global1.c), global1.d, vec2<i32>(global1.d.a, -1i))), func_2(Struct_1(global1.c.a, 23185u, vec3<u32>(u_input.a.x, arg_2, u_input.a.x)), Struct_4(Struct_2(25664i, global1.c, global1.b, global1.c), Struct_1(u_input.b.x, arg_2, arg_0), u_input.b))), global1.b, u_input.b), Struct_1(global1.c.a, 0u, _wgslsmith_add_vec3_u32(countOneBits(global1.b.c), arg_0))), global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(global1.d.c, min(global1.b.c, vec3<u32>(4294967295u, u_input.a.x, 0u)))), u_input.a.x, 1u), -1340f, ~1u);
    var var_1 = Struct_1(global1.d.a, _wgslsmith_mod_u32(~0u, func_4(vec4<u32>(~16186u, global1.b.b, var_0.c.c.x, 0u), all(vec4<bool>(false, false, true, false)) & true, any(vec3<bool>(false, true, true)), var_0.d.c.x).x), var_0.c.c);
    var var_2 = -2147483647i;
    var var_3 = func_1(vec3<u32>(4294967295u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 21754u, var_1.c.x, 19439u), vec4<u32>(global1.d.c.x, 94362u, 34263u, var_1.b)) << (~137586u % 32u), global1.c.b, true), ~_wgslsmith_dot_vec3_u32(u_input.a, max(vec3<u32>(59028u, global1.b.c.x, 36078u), global1.c.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(515f, -1117f), _wgslsmith_f_op_f32(max(1158f, -666f)), true)) + -1716f) - 1f), 47655u).c;
    var var_4 = func_5(Struct_4(func_1(u_input.a, _wgslsmith_f_op_f32(-357f + _wgslsmith_f_op_f32(abs(417f))), 0u), Struct_1(_wgslsmith_mult_i32(~u_input.c, ~var_1.a), ~var_0.d.c.x >> (global1.d.b % 32u), ~var_1.c), _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(-var_1.a, -42642i << (var_1.c.x % 32u)))), Struct_4(func_1(var_1.c, 1608f, global1.b.b), Struct_1(i32(-1i) * -1i, 0u, func_4(min(vec4<u32>(1u, 35882u, var_1.b, var_1.b), vec4<u32>(var_1.c.x, 4294967295u, var_1.c.x, 20896u)), true, true, select(1u, var_3.c.x, false))), ~(~u_input.b)), global1.d);
    var_4 = global1.c;
    let var_5 = reverseBits(-vec4<i32>(global1.d.a, -var_0.b.a, ~var_1.a, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(var_1.a, 10947i) | vec2<i32>(var_4.a, -1i))));
    global2 = array<vec3<bool>, 8>();
    let var_6 = any(select(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(all(select(global2[_wgslsmith_index_u32(var_4.c.x, 8u)], vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(4294967295u, 8u)])), _wgslsmith_f_op_f32(f32(-1f) * -785f) > _wgslsmith_f_op_f32(select(-863f, -625f, true)), true, false), true));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.b, 4294967295u, var_4.c.x, global1.c.c.x), vec4<u32>(45882u, 48459u, 66276u, 54885u)) << (abs(0u) % 32u), u_input.a.x, ~4294967295u), var_4.c, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(818f + -172f), -1428f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2359f - -431f) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1008f, 1000f), _wgslsmith_f_op_f32(round(1193f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1413f, 1000f, -797f, -1203f)) - vec4<f32>(630f, 1000f, 1971f, -282f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(722f, 1685f, 788f, -1884f) * vec4<f32>(921f, 146f, -730f, 603f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(966f, -409f, 1212f, -1676f), vec4<f32>(934f, 203f, -642f, 1899f), false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -789f)), vec4<u32>(1u, 1u, func_1(~(~var_4.c), _wgslsmith_f_op_f32(1213f * _wgslsmith_div_f32(-1000f, 599f)), u_input.a.x).d.b, ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_3.c.x, global1.b.b), _wgslsmith_mult_u32(50491u, 0u), 1u)));
}

