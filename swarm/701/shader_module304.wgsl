struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<Struct_1, 6>;

var<private> global2: bool;

var<private> global3: array<bool, 10> = array<bool, 10>(false, false, false, false, true, false, false, false, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    global0 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_mult_i32(~(-2147483647i << ((min(20095u, 25271u) | u_input.a) % 32u)), ~u_input.d);
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(min(~u_input.a, u_input.c.x), 0u), 1u);
    global3 = array<bool, 10>();
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~(51872u << (min(44387u, var_1) % 32u))), countOneBits(u_input.a)), 10u)];
    return ~(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(30877u, 35246u, var_1), vec3<u32>(63135u, 15545u, 0u)), vec3<u32>(firstLeadingBit(var_1), 16972u, var_1 | u_input.b.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(25320u, 19u)];
    var var_1 = arg_1;
    var var_2 = var_0.a.x;
    global0 = array<Struct_1, 19>();
    global3 = array<bool, 10>();
    return Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~abs(1u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.b.x, 26193u), max(77434u, var_1.a.x))), vec2<u32>(~countOneBits(arg_1.b.x), abs(4294967295u))), func_3(), -1000f);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> u32 {
    global3 = array<bool, 10>();
    let var_0 = any(!select(!select(vec2<bool>(false, global3[_wgslsmith_index_u32(arg_2, 10u)]), vec2<bool>(false, true), global3[_wgslsmith_index_u32(4294967295u, 10u)]), select(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 10u)], global3[_wgslsmith_index_u32(73855u, 10u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(arg_2, 10u)]), global3[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec2<bool>(true, false), !global3[_wgslsmith_index_u32(arg_2, 10u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 10u)], all(vec2<bool>(global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(u_input.c.x, 10u)])))));
    let var_1 = var_0;
    var var_2 = vec3<bool>(!(!var_1 && true), false, all(vec2<bool>((true & var_1) != (var_0 & var_0), _wgslsmith_f_op_f32(arg_1 * arg_1) < _wgslsmith_f_op_f32(-arg_0.c))));
    var var_3 = all(select(select(!vec3<bool>(true, false, var_2.x), select(vec3<bool>(false, false, var_0), vec3<bool>(global3[_wgslsmith_index_u32(14324u, 10u)], global3[_wgslsmith_index_u32(0u, 10u)], true), var_0), false), select(vec3<bool>(var_1, global3[_wgslsmith_index_u32(105270u, 10u)], false), !vec3<bool>(var_1, true, false), var_2.x), false)) & any(!vec3<bool>(var_0, true, var_1 & true));
    return _wgslsmith_mult_u32(~4294967295u, arg_2);
}

fn func_1() -> f32 {
    global3 = array<bool, 10>();
    global0 = array<Struct_1, 19>();
    var var_0 = countOneBits(vec4<u32>(u_input.c.x, 1u, u_input.b.x, func_4(func_2(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 10u)], global3[_wgslsmith_index_u32(43022u, 10u)], global3[_wgslsmith_index_u32(u_input.b.x, 10u)]), global1[_wgslsmith_index_u32(~68119u, 6u)], ~vec2<u32>(1u, 0u), vec3<i32>(-38170i, u_input.e, u_input.e)), -879f, ~4294967295u | u_input.a)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2999f)))), func_2(!(!select(vec3<bool>(false, true, false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 10u)], false, global3[_wgslsmith_index_u32(31266u, 10u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(var_0.x, 10u)], false))), global0[_wgslsmith_index_u32(var_0.x, 19u)], firstLeadingBit(vec2<u32>(~23737u, firstLeadingBit(u_input.c.x))), -vec3<i32>(3560i, abs(u_input.e), 2147483647i)).c);
    var var_2 = countOneBits(1u);
    return func_2(vec3<bool>(true, !(!global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 10u)]), !global3[_wgslsmith_index_u32(u_input.c.x, 10u)]), func_2(select(select(!vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 10u)], false, true), vec3<bool>(true, true, global3[_wgslsmith_index_u32(53059u, 10u)]), global3[_wgslsmith_index_u32(27184u, 10u)] & true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 10u)] && true, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.a), 10u)], global3[_wgslsmith_index_u32(43059u, 10u)] && global3[_wgslsmith_index_u32(var_0.x, 10u)]), all(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 10u)], true, global3[_wgslsmith_index_u32(1u, 10u)], false), vec4<bool>(false, false, false, true), false))), Struct_1(var_0.ww >> (reverseBits(vec2<u32>(0u, 1u)) % vec2<u32>(32u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 46420u, 0u), vec3<u32>(1u, var_0.x, u_input.c.x)), -220f), vec2<u32>(~select(var_0.x, var_0.x, true), firstLeadingBit(u_input.a)), -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -14894i, -22152i), vec3<i32>(18496i, u_input.d, 3066i))), ~abs(var_0.wx), countOneBits(~(-vec3<i32>(u_input.d, u_input.d, -19264i) << ((vec3<u32>(1u, var_0.x, u_input.b.x) >> (var_0.wyx % vec3<u32>(32u))) % vec3<u32>(32u))))).c;
}

fn func_5(arg_0: f32, arg_1: f32) -> Struct_1 {
    global3 = array<bool, 10>();
    var var_0 = select(!select(!vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.c.x, 10u)], true), !(!vec4<bool>(global3[_wgslsmith_index_u32(56701u, 10u)], true, global3[_wgslsmith_index_u32(u_input.c.x, 10u)], false)), vec4<bool>(any(vec3<bool>(true, false, false)), arg_1 != -1046f, any(vec2<bool>(false, true)), true)), select(select(select(!vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(u_input.c.x, 10u)], global3[_wgslsmith_index_u32(0u, 10u)], true), vec4<bool>(global3[_wgslsmith_index_u32(751u, 10u)], false, false, global3[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(1u, 10u)], false, true)), select(vec4<bool>(true, false, false, true), !vec4<bool>(global3[_wgslsmith_index_u32(43789u, 10u)], global3[_wgslsmith_index_u32(17940u, 10u)], global3[_wgslsmith_index_u32(u_input.b.x, 10u)], global3[_wgslsmith_index_u32(u_input.c.x, 10u)]), any(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 10u)]))), vec4<bool>(u_input.d > u_input.e, !global3[_wgslsmith_index_u32(u_input.c.x, 10u)], true, global3[_wgslsmith_index_u32(u_input.a, 10u)])), !(!select(vec4<bool>(global3[_wgslsmith_index_u32(375u, 10u)], false, false, false), vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(u_input.c.x, 10u)], true), true)), !vec4<bool>(true, false, global3[_wgslsmith_index_u32(1u, 10u)], true)), !(true & all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 10u)], true, global3[_wgslsmith_index_u32(u_input.b.x, 10u)], global3[_wgslsmith_index_u32(u_input.a, 10u)]))));
    global2 = !var_0.x;
    let var_1 = max(-u_input.d, _wgslsmith_mult_i32(8619i, u_input.e));
    let var_2 = ~(~u_input.e);
    return Struct_1(~u_input.b, func_3() | (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(4294967295u, 0u, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, u_input.a), vec3<u32>(u_input.c.x, u_input.c.x, u_input.a))) ^ ~(~vec3<u32>(u_input.b.x, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1573f)))));
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> StorageBuffer {
    global2 = global3[_wgslsmith_index_u32(u_input.a, 10u)];
    let var_0 = true;
    global0 = array<Struct_1, 19>();
    global1 = array<Struct_1, 6>();
    var var_1 = false && any(select(!select(vec3<bool>(true, var_0, var_0), vec3<bool>(global3[_wgslsmith_index_u32(1u, 10u)], true, var_0), true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 10u)], var_0, true)), var_0)));
    return StorageBuffer(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 10>();
    var var_0 = vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, 0i, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.d), vec3<i32>(5705i, u_input.e, -1230i), vec3<i32>(u_input.e, 2147483647i, 28800i)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(44165u, u_input.c.x, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, u_input.c.x)) % vec3<u32>(32u))) != min(reverseBits(81750i), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, -2147483647i), vec3<i32>(u_input.d, -1i, u_input.e))), false);
    var var_1 = _wgslsmith_mod_u32(1u, u_input.c.x);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, u_input.a), 1u, ~(~u_input.a), u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a >> (12594u % 32u), u_input.a, abs(20310u), 15603u & u_input.b.x), abs(~vec4<u32>(u_input.c.x, 0u, 0u, 13975u))))), 19u)];
    var var_3 = firstLeadingBit(~_wgslsmith_clamp_i32(firstLeadingBit(u_input.d), _wgslsmith_mult_i32(max(u_input.d, 55807i), -2147483647i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, -25996i), vec3<i32>(u_input.d, u_input.e, u_input.e)), 1i)));
    global3 = array<bool, 10>();
    let var_4 = vec3<u32>(~(~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 14483u), 4294967295u)), ~_wgslsmith_mult_u32(min(countOneBits(var_2.a.x), 4294967295u), ~4294967295u), ~(~5472u));
    var_1 = u_input.b.x;
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(384f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f)))), func_5(var_2.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1())))))));
}

