struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    global0 = array<i32, 9>();
    let var_0 = true;
    global0 = array<i32, 9>();
    let var_1 = !(!vec3<bool>(true & !var_0, !var_0, var_0));
    var var_2 = var_1;
    return var_2.yx;
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> bool {
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    var var_0 = min(_wgslsmith_dot_vec4_i32(arg_0, -abs(vec4<i32>(28053i, -1i, 4309i, global0[_wgslsmith_index_u32(37383u, 9u)]))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(global0[_wgslsmith_index_u32(24778u, 9u)], 0i)), 0i) >> (firstTrailingBit(~34038u) % 32u)) << (_wgslsmith_mod_u32(abs(abs(4294967295u)), abs(~34933u)) % 32u);
    let var_1 = Struct_1(true && any(vec4<bool>(all(vec2<bool>(true, true)), true, true, -1559f == arg_1)));
    let var_2 = var_1;
    return true;
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> u32 {
    var var_0 = Struct_3(!func_2(_wgslsmith_f_op_f32(f32(-1f) * -1283f)));
    var var_1 = Struct_4(arg_1.a, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(652f * arg_0)), select(func_3(firstLeadingBit(vec4<i32>(arg_1.d, arg_1.a.x, u_input.c.x, -1i) ^ vec4<i32>(20759i, u_input.b, -11597i, -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -1033f)), all(vec3<bool>(true, !arg_1.c, true)), var_0.a.x), _wgslsmith_mod_i32(-1i, global0[_wgslsmith_index_u32(arg_2, 9u)]), u_input.a);
    var var_2 = select(select(!vec4<bool>(arg_1.c, true, var_0.a.x, 11716i == var_1.e), !select(!vec4<bool>(false, false, arg_1.c, false), vec4<bool>(var_1.c, var_0.a.x, true, false), !vec4<bool>(var_1.c, arg_1.c, true, var_0.a.x)), !vec4<bool>(arg_2 != arg_2, true, arg_1.c, true)), select(!vec4<bool>(!var_0.a.x, !var_0.a.x, var_0.a.x, func_2(-744f).x), vec4<bool>(arg_1.c, any(vec2<bool>(var_0.a.x, var_0.a.x)), true, var_0.a.x), !(1000f > arg_0) || (var_0.a.x | true)), var_1.c);
    var var_3 = firstTrailingBit(var_1.e);
    global0 = array<i32, 9>();
    return (arg_2 << ((~arg_2 << (arg_2 % 32u)) % 32u)) >> (_wgslsmith_mult_u32(~arg_2, reverseBits(~firstTrailingBit(1960u))) % 32u);
}

fn func_4(arg_0: bool) -> f32 {
    var var_0 = Struct_2(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), true), vec3<bool>(true, false, arg_0)), select(!select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0)), vec3<bool>(arg_0, all(vec4<bool>(arg_0, false, false, true)), true), true)), vec3<f32>(1f, 1f, 1f), select(!vec4<bool>(arg_0 | false, arg_0, all(vec2<bool>(true, false)), all(vec3<bool>(true, arg_0, arg_0))), !select(vec4<bool>(false, true, false, arg_0), vec4<bool>(arg_0, arg_0, true, false), true), any(select(vec4<bool>(false, true, arg_0, arg_0), !vec4<bool>(false, arg_0, false, arg_0), false | arg_0))), Struct_1(all(vec4<bool>(!arg_0, false, true, true))), Struct_1(!((arg_0 != false) & false)));
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    let var_1 = ~1i;
    let var_2 = Struct_3(select(vec2<bool>(arg_0 | true, func_2(_wgslsmith_f_op_f32(round(1000f))).x), !var_0.a.zz, var_0.c.zy));
    return _wgslsmith_f_op_f32(667f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-426f)) + var_0.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(201f - var_0.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(firstTrailingBit(u_input.c) & (vec3<i32>(-52016i, _wgslsmith_add_i32(u_input.d, 25119i), i32(-1i) * -7050i) ^ _wgslsmith_add_vec3_i32(u_input.c, -vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(48403u, 9u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(func_1(-1736f, Struct_4(vec3<i32>(15495i, -1i, -25882i), -132f, true, -1i, 91033i), 4294967295u) != 1u)))), true, u_input.c.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, ~global0[_wgslsmith_index_u32(0u, 9u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 1i, -7307i, 1i), vec4<i32>(0i, u_input.a, -10553i, -1i))), u_input.c | countOneBits(u_input.c), all(vec2<bool>(true, true))), u_input.c));
    let var_1 = var_0.d ^ (global0[_wgslsmith_index_u32(53358u, 9u)] ^ abs(abs(1i)));
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    let var_2 = max(1u, min(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 17053u, 9204u), ~vec3<u32>(0u, 42256u, 54562u)), abs(1u)), 4294967295u));
    global0 = array<i32, 9>();
    var var_3 = Struct_4(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_0.c)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b))) * -1168f), any(select(select(select(vec4<bool>(true, false, false, var_0.c), vec4<bool>(true, true, false, var_0.c), vec4<bool>(var_0.c, true, var_0.c, true)), !vec4<bool>(var_0.c, var_0.c, var_0.c, true), var_0.c != var_0.c), !select(vec4<bool>(false, var_0.c, var_0.c, var_0.c), vec4<bool>(true, false, true, false), vec4<bool>(var_0.c, true, var_0.c, false)), !var_0.c)), -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-4729i, -48863i, global0[_wgslsmith_index_u32(72464u, 9u)], 0i), vec4<i32>(0i, 33152i, var_1, 688i)), vec4<i32>(-1i) * -vec4<i32>(var_1, 2147483647i, var_0.d, var_0.a.x)), ~vec4<i32>(var_0.e, abs(var_0.a.x), -1i, var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(countOneBits(firstLeadingBit(~vec4<u32>(0u, var_2, var_2, var_2)))), vec2<f32>(var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * 2026f) + var_0.b) - 600f)));
}

