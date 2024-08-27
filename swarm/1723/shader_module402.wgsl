struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec4<u32>,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, false, true, true, true, true, false, false, true, true, false, false, true, false);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec3<i32> {
    let var_0 = !(!global0[_wgslsmith_index_u32(~countOneBits(u_input.d), 14u)]);
    global0 = array<bool, 14>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1481f)) + -1557f))), !select(vec4<bool>(!global0[_wgslsmith_index_u32(1411u, 14u)], !var_0, true, true), vec4<bool>(any(vec4<bool>(false, var_0, var_0, true)), true, var_0, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 14u)], false, global0[_wgslsmith_index_u32(u_input.d, 14u)]), true)));
    var_1 = Struct_1(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(149f))))), var_1.b);
    global0 = array<bool, 14>();
    return vec3<i32>(u_input.a.x, 0i, _wgslsmith_add_i32(1i, -18452i));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    global0 = array<bool, 14>();
    let var_0 = func_3();
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_0.yx + arg_0.wx);
    var_1 = arg_0.yw;
    let var_2 = countOneBits(var_0.x);
    return u_input.b.x;
}

fn func_1(arg_0: vec3<f32>) -> vec4<u32> {
    return firstLeadingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~u_input.b.x), vec4<u32>(_wgslsmith_mult_u32(55389u, 1u), func_2(vec4<f32>(1147f, arg_0.x, arg_0.x, arg_0.x)) << (26622u % 32u), 0u, abs(_wgslsmith_mult_u32(16824u, u_input.b.x)))));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1175f));
    global0 = array<bool, 14>();
    var var_1 = Struct_1(552f, vec4<bool>(true, true, !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, u_input.d), min(12515u, 4294967295u)), 14u)], !global0[_wgslsmith_index_u32(select(~0u, u_input.d, global0[_wgslsmith_index_u32(2416u, 14u)]), 14u)]));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, _wgslsmith_f_op_f32(-571f - 812f), -1539f)));
    let var_3 = arg_0.x;
    return Struct_1(_wgslsmith_f_op_f32(-253f + _wgslsmith_f_op_f32(trunc(-247f))), select(!(!var_1.b), !select(vec4<bool>(false, true, var_1.b.x, global0[_wgslsmith_index_u32(var_3, 14u)]), !var_1.b, var_1.b), select(select(select(var_1.b, var_1.b, vec4<bool>(false, true, var_1.b.x, false)), var_1.b, select(var_1.b, vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x), vec4<bool>(var_1.b.x, true, var_1.b.x, global0[_wgslsmith_index_u32(arg_0.x, 14u)]))), select(var_1.b, vec4<bool>(true, false, false, var_1.b.x), select(vec4<bool>(global0[_wgslsmith_index_u32(24120u, 14u)], false, var_1.b.x, var_1.b.x), vec4<bool>(global0[_wgslsmith_index_u32(var_3, 14u)], var_1.b.x, true, global0[_wgslsmith_index_u32(1u, 14u)]), true)), select(select(var_1.b, vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 14u)], true, global0[_wgslsmith_index_u32(u_input.d, 14u)], true), vec4<bool>(var_1.b.x, var_1.b.x, true, global0[_wgslsmith_index_u32(26679u, 14u)])), vec4<bool>(false, true, true, true), true))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = select(~_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.c.x, 1i, 11365i, -7475i), vec4<i32>(arg_3.c.x, -1331i, arg_3.b, 1i)), ~vec4<i32>(u_input.a.x, 8948i, -51792i, u_input.c)), select(vec4<i32>(4684i, 2147483647i, arg_3.c.x, -1i), vec4<i32>(-1i, arg_3.b, arg_3.b, u_input.c), true), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -67355i, 13832i, arg_3.b), vec4<i32>(arg_3.c.x, 57683i, arg_3.c.x, 2147483647i))), firstTrailingBit(vec4<i32>(0i, u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(arg_3.b, -47132i))), arg_3.d.x);
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1651f, arg_3.a.a, true)) + arg_1.a), arg_1.a, u_input.a.x <= -2147483647i)), vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, 23760u), ~(~0u), 11109u, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.e.a, -487f, arg_3.e.a, arg_1.a) * vec4<f32>(arg_1.a, 506f, -1101f, 483f)))), func_4(vec4<u32>(countOneBits(4294967295u), arg_0.x, arg_0.x, _wgslsmith_dot_vec4_u32(arg_1.b, arg_1.b))).b.x), vec3<i32>(firstTrailingBit(-1i), 2147483647i, -74755i), _wgslsmith_div_vec4_u32(~vec4<u32>(func_2(vec4<f32>(356f, -638f, arg_1.a, arg_3.a.a)), _wgslsmith_div_u32(arg_1.b.x, 10237u), 31395u, ~1u), vec4<u32>(~(~1u), _wgslsmith_mod_u32(~4294967295u, ~12819u), 0u, u_input.b.x)), arg_1, arg_3);
    global0 = array<bool, 14>();
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.a.a, arg_3.a.a)) - _wgslsmith_f_op_f32(-arg_3.e.a))) + 706f), countOneBits(arg_1.b), var_1.d.c);
    let var_3 = Struct_1(1183f, vec4<bool>(!global0[_wgslsmith_index_u32(u_input.d, 14u)], !(0u > (arg_1.b.x | 0u)), ~(-12351i) < firstTrailingBit(14245i), (~var_1.b.x >> (arg_0.x % 32u)) <= -reverseBits(u_input.c)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 14>();
    var var_0 = func_5(~u_input.b, Struct_3(409f, vec4<u32>(~1u, 24999u, ~(0u | u_input.b.x), 98167u), !(!(global0[_wgslsmith_index_u32(40546u, 14u)] | global0[_wgslsmith_index_u32(0u, 14u)]))), firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 47772u, 68680u), vec3<u32>(1u, 1u, 29593u))), _wgslsmith_add_u32(~u_input.d, countOneBits(53834u)), 1u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1749f))), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], false, global0[_wgslsmith_index_u32(4294967295u, 14u)]))), ~2147483647i, _wgslsmith_mult_vec2_i32(-u_input.a, ~select(u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 14u)])), select(!(!vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.d, 14u)])), !(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 14u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)])), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d & 0u, 14u)], all(vec4<bool>(true, global0[_wgslsmith_index_u32(20821u, 14u)], global0[_wgslsmith_index_u32(30792u, 14u)], false)), false, false)), func_4(func_1(vec3<f32>(-1869f, -1000f, -738f)) >> (vec4<u32>(24994u, 1u, 1u, 69223u) % vec4<u32>(32u)))));
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    var_0 = Struct_2(func_4(_wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(51225u, u_input.d, u_input.d, u_input.b.x)), ~(~vec4<u32>(5564u, u_input.d, u_input.b.x, 4294967295u)))), ~var_0.b, vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(48151i, var_0.b, u_input.a.x), vec3<i32>(u_input.a.x, 1i, var_0.b))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, var_0.c.x, 1i), vec3<i32>(u_input.c, -2147483647i, var_0.b), vec3<i32>(1i, -10594i, 0i)), ~vec3<i32>(u_input.a.x, u_input.c, u_input.c))), var_0.c.x), var_0.e.b, var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(62105u, 11664u, 1u), ~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), min(reverseBits(vec3<u32>(4294967295u, u_input.b.x, 32970u)), ~vec3<u32>(4294967295u, 0u, 1u))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(89115u, u_input.d, 0u)), u_input.b.x, 936u) ^ abs(~vec3<u32>(u_input.d, 0u, u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.a)), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, 1248f, -142f)) * vec3<f32>(var_0.a.a, _wgslsmith_f_op_f32(var_0.e.a - 199f), 199f))).x, _wgslsmith_f_op_f32(var_0.a.a * 235f), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~firstTrailingBit(vec3<u32>(1u, u_input.b.x, u_input.d)), abs(~vec3<u32>(u_input.d, 0u, 1110u))), vec3<u32>(firstLeadingBit(u_input.d), 4294967295u, u_input.d)));
}

