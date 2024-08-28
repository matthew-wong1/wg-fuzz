struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<f32, 6>;

var<private> global2: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(1808i, 2162i), vec2<i32>(-11825i, -28838i), vec2<i32>(-11060i, 0i), vec2<i32>(14122i, -1i), vec2<i32>(2147483647i, -31963i), vec2<i32>(1i, 62491i), vec2<i32>(-7909i, 34778i), vec2<i32>(1i, -3875i), vec2<i32>(0i, 67531i), vec2<i32>(-2957i, -1i), vec2<i32>(22385i, 10541i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 33582i), vec2<i32>(2147483647i, -1795i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 9842i), vec2<i32>(i32(-2147483648), 29034i), vec2<i32>(15520i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(14273i, -16634i), vec2<i32>(-13490i, 11978i), vec2<i32>(-191i, 5102i), vec2<i32>(57340i, 20162i), vec2<i32>(66176i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, -38383i), vec2<i32>(1i, 1i), vec2<i32>(-5893i, 36831i));

var<private> global3: vec2<f32>;

var<private> global4: array<bool, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    return select(vec4<bool>(select(arg_1.a, arg_0.b >= 1i, true) | select(any(vec3<bool>(global4[_wgslsmith_index_u32(11737u, 19u)], global4[_wgslsmith_index_u32(arg_1.d, 19u)], arg_1.a)), !global4[_wgslsmith_index_u32(arg_1.d, 19u)], true), !(arg_0.c.a && any(vec4<bool>(true, false, arg_1.a, global4[_wgslsmith_index_u32(arg_0.c.c, 19u)]))), arg_1.a, !all(select(vec4<bool>(arg_1.a, false, arg_0.c.a, arg_1.a), vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 19u)], global4[_wgslsmith_index_u32(4294967295u, 19u)], global4[_wgslsmith_index_u32(1u, 19u)], true), false))), vec4<bool>(!all(vec2<bool>(true, arg_0.c.a)), arg_0.c.a, select(arg_1.a, true, true), true), arg_0.c.a);
}

fn func_2() -> u32 {
    global4 = array<bool, 19>();
    var var_0 = Struct_3(Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(42621u, u_input.e.x, 4294967295u, u_input.e.x), vec4<u32>(u_input.d, 13294u, u_input.a, 39575u)), ~vec4<u32>(0u, u_input.d, 1u, 58437u)), vec4<u32>(min(u_input.e.x, u_input.e.x), 8745u, _wgslsmith_add_u32(0u, 1u), ~u_input.a)), -9748i, Struct_1(false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(84085u, 6u)])), vec2<f32>(global1[_wgslsmith_index_u32(1u, 6u)], global3.x)), _wgslsmith_clamp_u32(0u, ~0u, ~47153u), ~1u), vec3<u32>(1u, ~_wgslsmith_mod_u32(17519u, u_input.d), max(firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(u_input.d, 14825u)))), u_input.e.x), countOneBits(23878u), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(648f, global3.x, global1[_wgslsmith_index_u32(u_input.a, 6u)]) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global3.x, -616f) * vec3<f32>(global3.x, global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)])))))), !select(!(!vec4<bool>(global4[_wgslsmith_index_u32(0u, 19u)], false, false, global4[_wgslsmith_index_u32(u_input.e.x, 19u)])), select(func_3(Struct_2(vec4<u32>(u_input.a, 4294967295u, u_input.e.x, u_input.a), 5881i, Struct_1(global4[_wgslsmith_index_u32(u_input.a, 19u)], vec2<f32>(global3.x, global1[_wgslsmith_index_u32(4294967295u, 6u)]), 0u, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.e.x), 31153u), Struct_1(true, vec2<f32>(global0.x, 518f), 21087u, u_input.a)), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 19u)], global4[_wgslsmith_index_u32(39413u, 19u)], global4[_wgslsmith_index_u32(0u, 19u)]), func_3(Struct_2(vec4<u32>(4294967295u, u_input.e.x, 34872u, u_input.e.x), 1i, Struct_1(true, vec2<f32>(1000f, -2403f), u_input.a, 5u), vec3<u32>(u_input.a, 1u, u_input.e.x), 4294967295u), Struct_1(true, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], -470f), 11420u, u_input.a))), vec4<bool>(u_input.c.x != u_input.b, 36089u >= u_input.a, select(true, false, global4[_wgslsmith_index_u32(4294967295u, 19u)]), false)));
    let var_1 = all(vec4<bool>(true, select(true, ~u_input.b <= u_input.c.x, true), false, var_0.a.c.a));
    var var_2 = ~(-vec3<i32>(-1i, _wgslsmith_clamp_i32(50194i >> (var_0.a.a.x % 32u), i32(-1i) * -14773i, 1i), var_0.a.b));
    var_2 = _wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.a.b, _wgslsmith_add_i32(var_2.x, var_2.x), var_2.x ^ -1i) & abs(_wgslsmith_mod_vec3_i32(vec3<i32>(1578i, 2147483647i, u_input.c.x), vec3<i32>(-53075i, u_input.c.x, -2147483647i)) << (_wgslsmith_div_vec3_u32(var_0.a.a.zwz, vec3<u32>(56975u, u_input.a, var_0.b)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(1i << (u_input.a % 32u), abs(-35883i)), countOneBits(0i), u_input.b) & ~(vec3<i32>(var_0.a.b, var_0.a.b, u_input.c.x) ^ vec3<i32>(47908i, u_input.c.x, var_2.x)));
    return _wgslsmith_clamp_u32(max(4294967295u, 36136u), _wgslsmith_dot_vec3_u32(firstLeadingBit(var_0.a.d), ~var_0.a.a.zww) ^ (_wgslsmith_add_u32(u_input.d, var_0.a.c.c) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.d.x, u_input.d, u_input.e.x, var_0.a.e), vec4<u32>(u_input.e.x, 99471u, var_0.a.a.x, 1u)) % 32u)), ~_wgslsmith_sub_u32(u_input.a, ~select(u_input.d, 1u, global4[_wgslsmith_index_u32(u_input.d, 19u)])));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = max(_wgslsmith_div_vec3_u32(vec3<u32>((4294967295u << (0u % 32u)) << (u_input.e.x % 32u), arg_0.d.x, 4294967295u & func_2()), ~vec3<u32>(_wgslsmith_div_u32(0u, 9104u), _wgslsmith_mod_u32(94892u, 29469u), 0u)), firstTrailingBit(vec3<u32>(3000u, u_input.d, _wgslsmith_dot_vec4_u32(arg_0.a, firstLeadingBit(arg_1.a)))));
    var var_1 = 887f;
    global4 = array<bool, 19>();
    global1 = array<f32, 6>();
    global2 = array<vec2<i32>, 28>();
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(42071u, 6u)]))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(abs(-2163f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global0.x) + _wgslsmith_f_op_f32(global3.x * -463f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2542f, _wgslsmith_f_op_f32(step(global3.x, -239f))))));
    let var_1 = Struct_1(!(global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 15438u, u_input.e.x), vec3<u32>(u_input.d, u_input.d, u_input.d))), 19u)] & !global4[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-331f, global1[_wgslsmith_index_u32(45331u, 6u)])))) * vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_1(Struct_2(vec4<u32>(u_input.d, 4294967295u, 20831u, 44609u), 0i, Struct_1(true, vec2<f32>(global0.x, global0.x), u_input.e.x, 1u), vec3<u32>(73007u, u_input.a, u_input.e.x), 3434u), Struct_2(vec4<u32>(u_input.a, u_input.e.x, u_input.a, 26835u), 0i, Struct_1(global4[_wgslsmith_index_u32(5862u, 19u)], vec2<f32>(-715f, 2024f), u_input.d, 20328u), vec3<u32>(1u, 4294967295u, u_input.d), 1u)), vec4<u32>(0u, 4294967295u, u_input.d, u_input.d)), 6u)], global1[_wgslsmith_index_u32(22026u, 6u)])), 1418u, u_input.d);
    let var_2 = vec4<u32>(u_input.e.x, var_1.c, _wgslsmith_mult_u32(31083u << (u_input.a % 32u), u_input.a), _wgslsmith_mod_u32(abs(abs(var_1.c)) >> (_wgslsmith_div_u32(var_1.c, var_1.d) % 32u), u_input.d ^ u_input.a));
    let var_3 = var_2.x;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) + _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.c, 6u)]) - _wgslsmith_f_op_f32(-393f * -556f)))));
    let var_4 = u_input.c.x;
    var var_5 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, false, global4[_wgslsmith_index_u32(19365u, 19u)]), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.x, u_input.a), 19u)], select(var_1.a, var_1.a, true), all(vec3<bool>(false, global4[_wgslsmith_index_u32(var_3, 19u)], false))), func_3(Struct_2(var_2, u_input.c.x, Struct_1(false, var_1.b, 73289u, u_input.e.x), var_2.yyw, 35907u), var_1)), select(vec4<bool>(func_3(Struct_2(vec4<u32>(34849u, 18720u, var_2.x, 34926u), -4808i, Struct_1(false, var_1.b, var_3, 34850u), vec3<u32>(0u, 7126u, var_3), var_3), var_1).x, false, var_1.a, false), select(select(!vec4<bool>(true, false, global4[_wgslsmith_index_u32(var_1.d, 19u)], var_1.a), select(vec4<bool>(true, var_1.a, global4[_wgslsmith_index_u32(var_3, 19u)], false), vec4<bool>(var_1.a, true, var_1.a, true), vec4<bool>(true, true, true, true)), false), select(!vec4<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 19u)], false, var_1.a), !vec4<bool>(false, global4[_wgslsmith_index_u32(27498u, 19u)], var_1.a, false), any(vec2<bool>(true, var_1.a))), vec4<bool>(false | var_1.a, global4[_wgslsmith_index_u32(var_2.x, 19u)], !global4[_wgslsmith_index_u32(var_2.x, 19u)], global4[_wgslsmith_index_u32(4294967295u, 19u)])), !global4[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(true, var_1.a, !(!all(vec2<bool>(true, false))), false));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(u_input.a, 28u)], global0.x, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(round(-190f)))))), 0i, vec4<u32>(~abs(~25653u), func_1(Struct_2(vec4<u32>(var_3, u_input.a, 44078u, u_input.e.x), ~(-65526i), Struct_1(false, vec2<f32>(-897f, var_1.b.x), 50162u, 0u), var_2.yxz | vec3<u32>(var_1.d, var_1.c, 0u), func_2()), Struct_2(~vec4<u32>(var_2.x, 4294967295u, var_2.x, var_3), -var_4, var_1, firstTrailingBit(vec3<u32>(0u, 18796u, u_input.a)), ~1u)).x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3, 2585u), var_2.xy) >> (792u % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, u_input.a, 1u, u_input.e.x), vec4<u32>(4294967295u, 1u, var_2.x, 34210u)) << ((0u >> (var_1.d % 32u)) % 32u)));
}

