struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<u32, 21>;

var<private> global2: bool;

var<private> global3: array<i32, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = -1019f;
    global2 = select(!(_wgslsmith_f_op_f32(sign(var_0)) == -165f), !select(true, any(vec2<bool>(false, false)), true), true) && true;
    let var_1 = global0[_wgslsmith_index_u32(arg_0.x, 30u)];
    var var_2 = !(!vec2<bool>(true, all(!vec4<bool>(true, var_1.c, false, var_1.d))));
    let var_3 = vec3<bool>(var_2.x, select(u_input.b, ~(-1i ^ u_input.c.x), var_2.x) >= -_wgslsmith_div_i32(~(-2147483647i), -19106i), all(vec3<bool>(!(!var_2.x), true, (false & var_1.b) && var_1.d)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -523f));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = array<u32, 21>();
    global3 = array<i32, 20>();
    var var_0 = Struct_1(vec2<i32>(global3[_wgslsmith_index_u32(0u, 20u)], u_input.c.x), true, !arg_0, !(false | (_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(3578u, 20u)], u_input.c.x) < countOneBits(-25426i))), _wgslsmith_div_vec4_i32(vec4<i32>(~(-2147483647i), u_input.a, _wgslsmith_div_i32(~u_input.c.x, _wgslsmith_mult_i32(-849i, u_input.a)), global3[_wgslsmith_index_u32(0u, 20u)]), -vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 2147483647i, 63536i), -2147483647i, _wgslsmith_div_i32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 20u)], u_input.a), ~(-26306i))));
    var var_1 = _wgslsmith_f_op_f32(-117f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(76815u, 21u)], 21u)], 21u)], 21u)], 21u)], 4294967295u, 62724u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53790u, 21u)], 21u)], 21u)]))), -1000f)));
    return Struct_1(vec2<i32>(min(global3[_wgslsmith_index_u32(min(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51055u, 21u)], 21u)]) | (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)] << (global1[_wgslsmith_index_u32(1u, 21u)] % 32u)), 20u)], firstTrailingBit(u_input.a ^ u_input.c.x)), -17481i), true, ((_wgslsmith_f_op_f32(trunc(-268f)) <= _wgslsmith_f_op_f32(func_3(vec4<u32>(22087u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 20334u, 4294967295u)))) && true) || true, !any(!vec3<bool>(arg_0, false, false)), vec4<i32>(_wgslsmith_mod_i32(0i, var_0.a.x), 13329i, var_0.a.x, 2147483647i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global2 = any(select(vec2<bool>(all(select(vec4<bool>(false, true, arg_2, false), vec4<bool>(true, false, false, arg_1.d), vec4<bool>(false, false, false, arg_2))), true), select(!vec2<bool>(arg_0.d, true), select(select(vec2<bool>(arg_0.d, arg_1.b), vec2<bool>(false, false), vec2<bool>(false, arg_1.c)), select(vec2<bool>(arg_1.c, arg_0.c), vec2<bool>(arg_0.d, false), vec2<bool>(false, true)), true), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(67343u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18173u, 21u)], 21u)]) < 0u), arg_1.b));
    global3 = array<i32, 20>();
    var var_0 = vec2<bool>(-1i > _wgslsmith_mod_i32(~reverseBits(0i), arg_1.e.x), arg_2);
    var var_1 = vec4<i32>(global3[_wgslsmith_index_u32(86814u, 20u)], -14739i, 1i, ~global3[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11624u, 21u)], 21u)], 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)])), 21u)]), 20u)]);
    var_1 = _wgslsmith_mod_vec4_i32(~arg_1.e, -(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.x, var_1.x, var_1.x, arg_1.a.x), u_input.c) >> (firstTrailingBit(abs(vec4<u32>(1u, 1u, global1[_wgslsmith_index_u32(50279u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]))) % vec4<u32>(32u))));
    return global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)] ^ 62749u, 21u)], global1[_wgslsmith_index_u32(~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(22304u, 21u)], global1[_wgslsmith_index_u32(23816u, 21u)], 40755u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17817u, 21u)], 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26997u, 21u)], 21u)], 60682u, 4294967295u)) | (global1[_wgslsmith_index_u32(19077u, 21u)] & 73156u))), 21u)]), 21u)], 30u)];
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = ~vec3<u32>(global1[_wgslsmith_index_u32(firstLeadingBit(25920u << (0u % 32u)), 21u)], ~14306u | _wgslsmith_dot_vec4_u32(vec4<u32>(33322u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8470u, 21u)], 21u)], 4294967295u, global1[_wgslsmith_index_u32(51546u, 21u)]), vec4<u32>(13961u, 0u, 3099u, 627u)), countOneBits(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12336u, 21u)], 21u)], 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], arg_0.d))) >> (min(abs(~vec3<u32>(0u, 4294967295u, 30682u)), ~max(~vec3<u32>(1u, 36821u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27289u, 21u)], 21u)]), vec3<u32>(global1[_wgslsmith_index_u32(108844u, 21u)], 65254u, 0u) << (vec3<u32>(57146u, 20589u, 4294967295u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    global1 = array<u32, 21>();
    global2 = !arg_0.d;
    var var_1 = arg_0.d;
    let var_2 = func_4(Struct_1(~func_4(func_4(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9873u, 21u)], 30u)], Struct_1(u_input.c.zw, arg_0.d, true, true, u_input.c), arg_0.d), func_2(false), all(vec3<bool>(false, arg_0.d, arg_0.c))).e.wz, true, arg_0.d, any(select(vec2<bool>(false, false), vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.b, arg_0.c))) || (any(vec3<bool>(arg_0.b, arg_0.b, true)) && arg_0.d), max(vec4<i32>(_wgslsmith_sub_i32(-1i, u_input.a), ~u_input.b, 1i, global3[_wgslsmith_index_u32(var_0.x, 20u)]), ~vec4<i32>(1i, global3[_wgslsmith_index_u32(11042u, 20u)], u_input.b, arg_0.e.x) >> (vec4<u32>(13328u, 3932u, var_0.x, 4294967295u) % vec4<u32>(32u)))), Struct_1(func_4(Struct_1(u_input.c.wz, var_0.x == 93627u, all(vec4<bool>(arg_0.d, true, arg_0.d, false)), all(vec4<bool>(false, true, arg_0.b, true)), vec4<i32>(arg_0.e.x, 25184i, 2147483647i, -19461i)), Struct_1(firstTrailingBit(vec2<i32>(42554i, 2147483647i)), false, arg_0.c, !arg_0.b, select(u_input.c, u_input.c, vec4<bool>(false, arg_0.b, true, false))), true & !arg_0.c).a, arg_0.c && false, any(!vec4<bool>(arg_0.c, true, false, arg_0.d)), any(!vec3<bool>(arg_0.d, arg_0.d, arg_0.d)), _wgslsmith_sub_vec4_i32(abs(u_input.c), vec4<i32>(0i, u_input.a, arg_0.a.x, 0i)) ^ vec4<i32>(1i, 2147483647i | global3[_wgslsmith_index_u32(0u, 20u)], reverseBits(arg_0.a.x), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(var_0.x, 20u)], -2147483647i))), true);
    return !vec2<bool>(any(!select(vec3<bool>(var_2.b, true, true), vec3<bool>(false, true, var_2.b), vec3<bool>(false, arg_0.d, arg_0.c))), true);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = -784f;
    var var_1 = arg_2;
    let var_2 = true;
    global3 = array<i32, 20>();
    global3 = array<i32, 20>();
    return !select(func_5(func_4(func_2(true), Struct_1(arg_1.a, arg_1.c, false, var_2, vec4<i32>(arg_0, 0i, -1i, -2147483647i)), true)), vec2<bool>(var_1.b, _wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(136007u, 21u)]) <= arg_3.x), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 21>();
    var var_0 = select(select(select(vec2<bool>(true, true), func_1(33916i, global0[_wgslsmith_index_u32(min(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17573u, 21u)], 21u)]), 30u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 21u)], 30u)], vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 37900u)), vec2<bool>(false, func_2(false).d)), !vec2<bool>(select(true, true, true), all(vec3<bool>(false, true, true))), true), select(select(!func_1(-55468i, Struct_1(vec2<i32>(-25919i, global3[_wgslsmith_index_u32(46012u, 20u)]), false, true, false, u_input.c), global0[_wgslsmith_index_u32(1u, 30u)], vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 0u, global1[_wgslsmith_index_u32(20572u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49646u, 21u)], 21u)])), vec2<bool>(func_4(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 30u)], true).b, func_4(Struct_1(vec2<i32>(global3[_wgslsmith_index_u32(1913u, 20u)], u_input.a), false, false, false, vec4<i32>(u_input.b, u_input.b, -47949i, -1i)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 21u)], 30u)], false).b), vec2<bool>(select(false, false, true), true)), vec2<bool>(true, true), true), select(vec2<bool>(u_input.c.x != global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25886u, 21u)], 21u)], 20u)], all(vec4<bool>(true, false, false, true)) && false), vec2<bool>(true, true), true));
    global0 = array<Struct_1, 30>();
    let var_1 = abs(_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(2334u, global1[_wgslsmith_index_u32(3061u, 21u)], global1[_wgslsmith_index_u32(11589u, 21u)]), vec3<u32>(0u, 0u, global1[_wgslsmith_index_u32(2392u, 21u)])), 21u)], 1594u), firstLeadingBit(_wgslsmith_div_u32(76151u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)]))), 4294967295u));
    var var_2 = Struct_1(-_wgslsmith_add_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(0u, 21u)], 1u, global1[_wgslsmith_index_u32(13536u, 21u)]), 20u)], u_input.a), u_input.c.yx), true, true && var_0.x, _wgslsmith_f_op_f32(func_3(firstLeadingBit(vec4<u32>(var_1, var_1, 16583u, 61135u)) ^ (vec4<u32>(1u, 4294967295u, 24748u, 0u) | vec4<u32>(var_1, 94466u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], var_1)))) <= 548f, vec4<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1, 21u)], 20u)], ~countOneBits(-1474i), select(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40160u, 21u)], 20u)], -2147483647i, any(!vec3<bool>(var_0.x, false, var_0.x))), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(54977u, firstLeadingBit(1u), firstLeadingBit(1u)) >> (~firstLeadingBit(~vec3<u32>(58840u, var_1, var_1)) % vec3<u32>(32u)), ~38384u);
}

