struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(430f, -276f, -846f, 824f, -181f, 1612f, 275f, -634f, -2192f, 785f, 3439f, 739f, 941f, 1247f, 1618f, 714f, 156f, -202f, 1087f, 1000f, -424f, -1668f, -1311f, 703f, 1000f, 691f, 1233f, -1000f, -536f, 1402f, -727f, 541f);

var<private> global1: array<vec4<u32>, 15>;

var<private> global2: array<f32, 10> = array<f32, 10>(-383f, -679f, -467f, 928f, 1034f, 857f, -871f, -1358f, -1149f, -1000f);

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(0u), 32u)] + arg_1.a.a)));
    let var_1 = u_input.a.x;
    let var_2 = vec3<bool>(false, true, all(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), true)));
    let var_3 = firstLeadingBit(vec3<u32>(~0u & global3.x, _wgslsmith_mult_u32(~firstTrailingBit(19156u), ~(~global3.x)), arg_0));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(2278f)), global0[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_f_op_f32(-var_0))) - vec3<f32>(var_0, 1236f, _wgslsmith_f_op_f32(var_0 + -623f))), vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 10u)]), _wgslsmith_f_op_f32(f32(-1f) * -963f)));
    return ~vec4<i32>(6240i, u_input.b, ~2147483647i, ~var_1);
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = Struct_4(func_3(16346u, Struct_3(Struct_1(arg_0), global0[_wgslsmith_index_u32(abs(4294967295u), 32u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1634f, -1625f)), _wgslsmith_div_f32(-504f, global2[_wgslsmith_index_u32(1u, 10u)])))), -731f);
    global1 = array<vec4<u32>, 15>();
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(~0u), _wgslsmith_add_u32(~global3.x, u_input.c)), 32u)])));
    global1 = array<vec4<u32>, 15>();
    return u_input.b;
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global0 = array<f32, 32>();
    global1 = array<vec4<u32>, 15>();
    var var_0 = vec2<i32>(~2147483647i, -_wgslsmith_dot_vec3_i32(firstLeadingBit(arg_0.zxz), arg_0.zwx)) | ~(~(~u_input.a.zz & vec2<i32>(u_input.a.x, u_input.a.x)));
    global1 = array<vec4<u32>, 15>();
    var var_1 = 26215u;
    return func_2(global2[_wgslsmith_index_u32(4294967295u, 10u)]);
}

fn func_4(arg_0: i32) -> Struct_1 {
    global2 = array<f32, 10>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-789f, global0[_wgslsmith_index_u32(global3.x, 32u)])))), _wgslsmith_f_op_f32(trunc(1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -614f), global2[_wgslsmith_index_u32(firstLeadingBit(1u), 10u)], false)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> Struct_4 {
    global3 = ~(~(~(~u_input.d))) | firstLeadingBit(vec4<u32>(firstLeadingBit(62446u), firstTrailingBit(~u_input.c), _wgslsmith_div_u32(u_input.d.x, 0u), _wgslsmith_mult_u32(max(global3.x, global3.x), 0u)));
    var var_0 = -arg_0.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.x, global3.x), 10u)], _wgslsmith_f_op_f32(arg_0.b - arg_0.b))) * -528f));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(-arg_0.b))), select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false)), false), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, false, false)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false))), vec2<bool>(true, true)), Struct_1(156f));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d.x, 10u)])), var_2.c.a, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a)))))));
    return Struct_4(vec4<i32>(-1i) * -(~(vec4<i32>(u_input.a.x, u_input.a.x, -31468i, 37854i) | vec4<i32>(12231i, arg_0.a.x, arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_f32(-598f + global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, 1u >> (global3.x % 32u)), 32u)]));
}

fn func_6(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    global2 = array<f32, 10>();
    var var_0 = Struct_2(func_4(-_wgslsmith_sub_i32(arg_1.a.x, arg_1.a.x) & _wgslsmith_dot_vec2_i32(arg_1.a.yx, countOneBits(u_input.a.yz))), !vec2<bool>(true, arg_3), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1755f)));
    var var_1 = select(vec2<bool>(!var_0.b.x, true), vec2<bool>(select(true, var_0.b.x, var_0.b.x), !all(!vec3<bool>(true, var_0.b.x, false))), arg_0);
    global0 = array<f32, 32>();
    global1 = array<vec4<u32>, 15>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(true, func_5(Struct_4(vec4<i32>(select(24569i, 38476i, false), u_input.a.x, 14911i, 30683i), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~u_input.d.x, 10u)], 1856f)), func_4(func_1(select(vec4<i32>(u_input.b, 2147483647i, u_input.a.x, 30054i), vec4<i32>(u_input.a.x, -2147483647i, 56835i, 2147483647i), true)))), Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1138f + global2[_wgslsmith_index_u32(global3.x, 10u)]), -155f)), global2[_wgslsmith_index_u32(firstTrailingBit(global3.x) | 16683u, 10u)], -412f), !(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, 24887i, 14694i) ^ vec4<i32>(-1i, 1i, u_input.b, 25312i), max(vec4<i32>(-10371i, -32969i, 2147483647i, u_input.a.x), vec4<i32>(-13292i, -47907i, u_input.b, 73184i))) <= func_5(Struct_4(vec4<i32>(2147483647i, u_input.a.x, 0i, 1i), global2[_wgslsmith_index_u32(0u, 10u)]), Struct_1(898f)).a.x));
    let var_1 = ~2147483647i;
    var var_2 = _wgslsmith_mod_vec2_i32(u_input.a.zz, firstTrailingBit(vec2<i32>(u_input.a.x ^ u_input.b, _wgslsmith_mult_i32(var_1, 12307i))) ^ func_5(Struct_4(firstTrailingBit(vec4<i32>(var_1, 0i, var_1, var_1)), _wgslsmith_f_op_f32(abs(-827f))), Struct_1(func_6(true, Struct_4(vec4<i32>(var_1, var_1, var_1, 2147483647i), global0[_wgslsmith_index_u32(45586u, 32u)]), Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 32u)]), global0[_wgslsmith_index_u32(global3.x, 32u)], var_0.b), true).a.a)).a.zw);
    var var_3 = -u_input.a.x;
    global2 = array<f32, 10>();
    let var_4 = func_5(Struct_4(vec4<i32>(-10238i, var_2.x, _wgslsmith_mult_i32(-37158i, var_2.x), ~select(var_1, 2147483647i, false)), var_0.c), Struct_1(774f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4.b, _wgslsmith_div_f32(540f, global2[_wgslsmith_index_u32(u_input.d.x, 10u)]), global2[_wgslsmith_index_u32(firstTrailingBit(0u), 10u)]), vec3<f32>(func_6(false, var_4, Struct_3(Struct_1(global2[_wgslsmith_index_u32(37246u, 10u)]), global2[_wgslsmith_index_u32(u_input.c, 10u)], 1000f), false).b, -196f, _wgslsmith_f_op_f32(-var_0.b))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f)), global2[_wgslsmith_index_u32(~(~global3.x), 10u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-560f, -1480f)), global0[_wgslsmith_index_u32(29227u, 32u)]), -768f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(480f, global2[_wgslsmith_index_u32(20947u, 10u)], -1655f, var_0.b))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-720f, 862f, global2[_wgslsmith_index_u32(u_input.c, 10u)], var_0.a.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(217f, var_0.a.a, 1000f, global0[_wgslsmith_index_u32(0u, 32u)]), vec4<f32>(1987f, -575f, -749f, -609f), true))))), _wgslsmith_mult_u32(3418u & ~max(u_input.c, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), 0u << (global3.x % 32u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.wz, vec2<u32>(global3.x, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(25514u, 4294967295u), vec2<u32>(u_input.d.x, u_input.c))))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(41179u, 4294967295u), countOneBits(1u << (0u % 32u))), 15u)]);
}

