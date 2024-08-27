struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: i32,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, true, false, true, false, false, false, false, true, false, true, true, false, true, true, true, false, false);

var<private> global1: array<vec4<f32>, 25>;

var<private> global2: array<bool, 28> = array<bool, 28>(true, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false, false, true, true, false, false, true, true, true, true, false, false, true);

var<private> global3: array<i32, 11> = array<i32, 11>(i32(-2147483648), -1i, i32(-2147483648), -1i, -1i, 1i, 0i, 12108i, 2147483647i, 11556i, 0i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-226f, _wgslsmith_f_op_f32(-1289f * _wgslsmith_f_op_f32(trunc(-1087f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2263f)), _wgslsmith_f_op_f32(-2532f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -688f) * -219f))));
    var var_1 = Struct_5(max(-1i, _wgslsmith_clamp_i32(u_input.c >> ((u_input.a >> (1762u % 32u)) % 32u), -_wgslsmith_div_i32(global3[_wgslsmith_index_u32(60844u, 11u)], 17047i), ~1i << (1u % 32u))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, u_input.c, 1105i, 28421i), _wgslsmith_sub_vec4_i32(vec4<i32>(20192i, 2147483647i, u_input.c, u_input.c), vec4<i32>(global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(u_input.b, 11u)], -2147483647i, u_input.c)) ^ vec4<i32>(u_input.c, global3[_wgslsmith_index_u32(u_input.b, 11u)], global3[_wgslsmith_index_u32(u_input.b, 11u)], global3[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_add_vec4_i32(vec4<i32>(0i, _wgslsmith_add_i32(-2147483647i, 1i), reverseBits(u_input.c), _wgslsmith_sub_i32(u_input.c, 2147483647i)), vec4<i32>(_wgslsmith_sub_i32(u_input.c, global3[_wgslsmith_index_u32(u_input.a, 11u)]), -17424i, countOneBits(global3[_wgslsmith_index_u32(1u, 11u)]), 2147483647i))), select(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(66778u, u_input.b, u_input.b, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.b, 73848u), vec4<u32>(828u, u_input.a, 4294967295u, u_input.b))), ~(~vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.a)), vec4<u32>(countOneBits(u_input.a), 1u, 0u, u_input.a << (u_input.b % 32u))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 49249u, 3385u, u_input.b), vec4<u32>(0u, 1u, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, u_input.a, u_input.b, 6864u), vec4<u32>(u_input.b, 58999u, u_input.b, u_input.a), ~vec4<u32>(u_input.b, 3347u, 7609u, u_input.b))), !select(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 18u)], true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], true, global0[_wgslsmith_index_u32(50282u, 18u)]), global2[_wgslsmith_index_u32(u_input.a, 28u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(35989u, 18u)], true, true, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 28u)], true, global0[_wgslsmith_index_u32(u_input.a, 18u)], true), false), global0[_wgslsmith_index_u32(26503u, 18u)])), Struct_2(Struct_1(!(!vec3<bool>(global2[_wgslsmith_index_u32(7229u, 28u)], true, global2[_wgslsmith_index_u32(56404u, 28u)])), 1i & -u_input.c, u_input.b << (~37153u % 32u)), -986f, firstLeadingBit(reverseBits(4294967295u))));
    let var_2 = Struct_4(Struct_1(vec3<bool>(any(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], false, false), var_1.d.a.a, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 28u)], true, global2[_wgslsmith_index_u32(53356u, 28u)]))), (true & var_1.d.a.a.x) & (var_1.d.a.c != 58264u), global2[_wgslsmith_index_u32(0u, 28u)] & true), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(min(var_1.b.wwx, vec3<i32>(global3[_wgslsmith_index_u32(var_1.d.a.c, 11u)], -19246i, 1308i)), ~vec3<i32>(global3[_wgslsmith_index_u32(77050u, 11u)], global3[_wgslsmith_index_u32(3371u, 11u)], global3[_wgslsmith_index_u32(0u, 11u)])), -_wgslsmith_div_vec3_i32(var_1.b.xzx, var_1.b.wyy)), var_1.d.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f)), global2[_wgslsmith_index_u32(var_1.c.x, 28u)]))), var_1.d, min(16818i, u_input.c), -var_1.b.x);
    let var_3 = countOneBits(var_1.c.x);
    var var_4 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, global3[_wgslsmith_index_u32(31349u, 11u)], max(abs(var_1.d.a.b) >> (4294967295u % 32u), _wgslsmith_add_i32(0i, 2147483647i | var_1.a)), var_1.d.a.b), var_1.b);
    return ~74852u;
}

fn func_2() -> Struct_3 {
    let var_0 = all(vec3<bool>(any(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(u_input.b, 28u)], global0[_wgslsmith_index_u32(u_input.b, 18u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 28u)], true), select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 18u)]), false))), u_input.a < 4294967295u, any(!select(vec2<bool>(global2[_wgslsmith_index_u32(17133u, 28u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 18u)], global2[_wgslsmith_index_u32(0u, 28u)]), true))));
    global0 = array<bool, 18>();
    var var_1 = any(vec3<bool>(func_3() > (abs(4294967295u) | ~u_input.b), global0[_wgslsmith_index_u32(~(~10387u), 18u)], var_0 & all(!vec2<bool>(var_0, true))));
    let var_2 = vec2<bool>(true, any(vec4<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, u_input.b), ~6761u), 28u)], true, all(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 28u)], true, false)))));
    global0 = array<bool, 18>();
    return Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(2515u, 43208u >> (u_input.b % 32u)), ~(~u_input.b)), 18u)], select(any(vec3<bool>(global0[_wgslsmith_index_u32(51586u, 18u)], var_0, global0[_wgslsmith_index_u32(u_input.a, 18u)])), true, global0[_wgslsmith_index_u32(1u, 18u)] && global2[_wgslsmith_index_u32(3641u, 28u)]) | (global3[_wgslsmith_index_u32(~u_input.b, 11u)] == ~30277i), var_2.x, (global0[_wgslsmith_index_u32(u_input.a, 18u)] | false) || true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1216f * -726f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1109f - -802f)), -548f)), 1u, Struct_1(!select(select(vec3<bool>(false, true, true), vec3<bool>(global2[_wgslsmith_index_u32(1u, 28u)], false, var_2.x), global2[_wgslsmith_index_u32(71281u, 28u)]), select(vec3<bool>(var_0, global0[_wgslsmith_index_u32(25677u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec3<bool>(var_0, true, false), var_2.x), all(var_2)), 31091i, u_input.b), _wgslsmith_mult_i32(~_wgslsmith_mod_i32(u_input.c, 2147483647i), _wgslsmith_div_i32(-global3[_wgslsmith_index_u32(u_input.a, 11u)], 2147483647i)) & global3[_wgslsmith_index_u32(~(~u_input.a << (firstLeadingBit(u_input.b) % 32u)), 11u)]);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    let var_0 = 1u;
    let var_1 = Struct_1(!vec3<bool>(select(true, false, arg_1.x), !(u_input.b < 14184u), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b & var_0, _wgslsmith_sub_u32(4294967295u, 1u)), 28u)]), global3[_wgslsmith_index_u32(~u_input.b, 11u)], 5289u);
    let var_2 = func_2();
    global3 = array<i32, 11>();
    global1 = array<vec4<f32>, 25>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 11>();
    let var_0 = vec4<u32>(firstTrailingBit(abs(0u)), u_input.b, func_1(!(!global2[_wgslsmith_index_u32(min(u_input.b, u_input.b), 28u)]), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.b, ~u_input.b), 18u)], false)), u_input.a << (reverseBits(~(~0u)) % 32u));
    let var_1 = !vec4<bool>(all(select(vec3<bool>(true, true, true), !vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 28u)], global0[_wgslsmith_index_u32(29056u, 18u)], true), true)), false, global0[_wgslsmith_index_u32(var_0.x, 18u)], select(true, true, any(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 28u)], false))));
    global0 = array<bool, 18>();
    global3 = array<i32, 11>();
    var var_2 = Struct_2(Struct_1(!(!var_1.www), 39207i, _wgslsmith_sub_u32(1427u, ~u_input.b) ^ firstLeadingBit(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(452f)), _wgslsmith_f_op_f32(259f * 1503f)))))), ~4294967295u);
    var_2 = Struct_2(Struct_1(!select(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 18u)], false), vec3<bool>(false, var_2.a.a.x, false), select(var_2.a.a, vec3<bool>(global2[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(1u, 18u)], var_1.x), global2[_wgslsmith_index_u32(27088u, 28u)])), -2839i << ((var_0.x | 4294967295u) % 32u), ~14222u), 521f, 67477u);
    var var_3 = Struct_4(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(select(var_2.b, -1733f, true))), -509f) - _wgslsmith_f_op_f32(-var_2.b)), Struct_2(var_2.a, -1000f, ~(~var_2.c)), 1i, ~reverseBits(22442i) ^ _wgslsmith_div_i32(-29239i, min(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.b, -1i, 1i), vec3<i32>(0i, global3[_wgslsmith_index_u32(1u, 11u)], 8086i)))));
    global1 = array<vec4<f32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(var_3.c.a.b, min(-1i, global3[_wgslsmith_index_u32(372u, 11u)] ^ u_input.c)), ~vec2<i32>(var_2.a.b, firstTrailingBit(global3[_wgslsmith_index_u32(1u, 11u)])), true), -(~(vec3<i32>(-1i) * -vec3<i32>(global3[_wgslsmith_index_u32(0u, 11u)], var_2.a.b, 1i))));
}

