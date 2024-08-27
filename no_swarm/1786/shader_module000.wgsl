struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14>;

var<private> global1: array<Struct_5, 9>;

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> u32 {
    global1 = array<Struct_5, 9>();
    global0 = array<Struct_5, 14>();
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -520f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1670f))))), _wgslsmith_f_op_f32(f32(-1f) * -320f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(630f)) * -2736f) + -1000f), select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, 40618u != arg_0.x), any(vec4<bool>(false, false, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false))));
    var var_1 = 29075i ^ (arg_1 & countOneBits(arg_1));
    let var_2 = var_0.c;
    return 14606u;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(956f, arg_0.c.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.c.x, -496f)), u_input.a.x < 0u)))) + _wgslsmith_f_op_vec2_f32(max(arg_0.c.c, _wgslsmith_f_op_vec2_f32(sign(arg_0.c.c))))));
    global2 = firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 0u, 1u, global2.x), vec4<u32>(1u, 56902u, u_input.a.x, 54248u)), u_input.a.x), reverseBits(vec4<u32>(u_input.a.x, global2.x, global2.x, u_input.a.x) & vec4<u32>(47560u, global2.x, 4294967295u, u_input.a.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, ~61504u, 104747u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 4294967295u, 86876u), global2.yzw)), ~vec4<u32>(u_input.a.x, 0u, global2.x, 0u) | _wgslsmith_add_vec4_u32(vec4<u32>(53644u, global2.x, 47089u, 4294967295u), vec4<u32>(global2.x, u_input.a.x, 56280u, u_input.a.x)))));
    var var_1 = _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(~4294967295u, global2.x, u_input.a.x ^ global2.x, abs(0u))), vec4<u32>(_wgslsmith_dot_vec4_u32(min(firstTrailingBit(vec4<u32>(18387u, global2.x, global2.x, 42605u)), vec4<u32>(74727u, 42159u, u_input.a.x, global2.x)), abs(vec4<u32>(u_input.a.x, 1u, 24770u, global2.x))), global2.x, 81624u, ~select(~u_input.a.x, global2.x, true)));
    global1 = array<Struct_5, 9>();
    global2 = _wgslsmith_sub_vec4_u32(~(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 46487u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 11728u, 4294967295u), vec4<u32>(30265u, global2.x, 4294967295u, 4294967295u))) << (vec4<u32>(_wgslsmith_div_u32(0u, u_input.a.x), global2.x, ~61930u, 5900u) % vec4<u32>(32u))), ~vec4<u32>(50934u, reverseBits(_wgslsmith_mult_u32(global2.x, 4294967295u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(21383u, 22913u, 1u, u_input.a.x)), reverseBits(vec4<u32>(global2.x, 0u, 33935u, 54921u))), _wgslsmith_dot_vec2_u32(vec2<u32>(42054u, 4294967295u) ^ vec2<u32>(0u, global2.x), ~u_input.a)));
    return _wgslsmith_sub_vec4_u32(~(_wgslsmith_sub_vec4_u32(vec4<u32>(23855u, 31647u, global2.x, global2.x), ~vec4<u32>(u_input.a.x, global2.x, global2.x, global2.x)) | abs(vec4<u32>(global2.x, global2.x, 27253u, 0u))), vec4<u32>(_wgslsmith_mult_u32(1u, ~1800u << (~u_input.a.x % 32u)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 37126u), vec2<u32>(0u, 1u))), (1u & ~global2.x) ^ _wgslsmith_sub_u32(~u_input.a.x, firstTrailingBit(0u)), _wgslsmith_add_u32(u_input.a.x, 4294967295u)));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_3) -> bool {
    global0 = array<Struct_5, 14>();
    global2 = func_4(Struct_3(arg_1.a, arg_1.b, global3[_wgslsmith_index_u32(func_3(~vec4<u32>(11043u, global2.x, global2.x, u_input.a.x), arg_1.c.b & -14071i), 22u)]), vec3<bool>(!arg_3.a.c.x, all(!select(vec3<bool>(arg_3.a.c.x, arg_3.c.d, arg_3.c.d), vec3<bool>(arg_3.c.a, false, false), arg_3.a.c)), false));
    let var_0 = vec4<bool>(any(!vec4<bool>(arg_1.c.d, !arg_3.b, arg_1.b, all(arg_3.a.c))), all(!arg_3.a.c) && true, !arg_3.b, arg_3.c.a);
    return select(var_0.x, arg_1.c.b >= _wgslsmith_div_i32(firstLeadingBit(33967i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_1.c.b) ^ vec2<i32>(arg_3.c.b, -1i), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.c.b, 1068i), vec2<i32>(arg_1.c.b, arg_1.c.b)))), arg_3.c.b != (~_wgslsmith_sub_i32(-23372i, arg_1.c.b) << (global2.x % 32u)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0.b;
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.c.x)) + _wgslsmith_f_op_f32(max(1799f, -593f)))), _wgslsmith_f_op_f32(101f - _wgslsmith_f_op_f32(-arg_0.c.x)), !(!(!vec3<bool>(arg_0.d, arg_0.d, false)))), !(all(vec3<bool>(arg_0.a, arg_0.a, false)) || (func_2(arg_0.c.x, Struct_3(Struct_2(-760f, arg_0.c.x, vec3<bool>(arg_0.d, false, arg_0.d)), arg_0.a, Struct_1(false, arg_0.b, vec2<f32>(1267f, 1650f), true)), vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, 348f), Struct_3(Struct_2(arg_0.c.x, arg_0.c.x, vec3<bool>(arg_0.a, false, arg_0.d)), arg_0.d, arg_0)) | false)), arg_0);
    var var_2 = var_1.a;
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_0, var_0), arg_0.b, -var_1.c.b), abs(-vec3<i32>(var_1.c.b, arg_0.b, -4076i))), 2147483647i | max(_wgslsmith_div_i32(arg_0.b, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(arg_0.b, var_1.c.b)))), vec3<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 9326i, var_1.c.b, 2147483647i), vec4<i32>(11463i, -10105i, var_0, 37148i), vec4<i32>(arg_0.b, 1i, -2147483647i, -12835i)), -vec4<i32>(-33359i, -2147483647i, -13496i, var_0)), countOneBits(arg_0.b), max(abs(arg_0.b), 12205i)));
    let var_4 = _wgslsmith_dot_vec4_i32(firstTrailingBit(abs(select(vec4<i32>(44361i, var_0, 47017i, -2147483647i), vec4<i32>(5018i, 0i, var_1.c.b, var_1.c.b), vec4<bool>(var_1.c.a, true, true, var_2.c.x)) << ((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(4294967295u, u_input.a.x, 1u, global2.x)) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, var_1.c.b), vec3<i32>(18570i, -2147483647i, var_0)), abs(17985i), ~1i), vec4<i32>(-1i, -12990i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 11398i, 2762i), vec3<i32>(var_1.c.b, 53224i, arg_0.b)), _wgslsmith_add_i32(1190i, -2147483647i))) << (firstLeadingBit(vec4<u32>(1u, _wgslsmith_div_u32(14938u, global2.x), u_input.a.x, 1u ^ global2.x)) % vec4<u32>(32u)));
    return -461f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(true, -17921i, vec2<f32>(1127f, -572f), false))) - _wgslsmith_f_op_f32(226f - -727f)) + 550f)));
    var var_1 = Struct_1((global2.x << (abs(u_input.a.x) % 32u)) < (abs(func_3(vec4<u32>(46398u, 80448u, 4294967295u, u_input.a.x), 0i)) & (func_4(Struct_3(Struct_2(var_0.a, -541f, vec3<bool>(false, false, false)), true, global3[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<bool>(true, true, true)).x ^ ~u_input.a.x)), ~(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 1i, 2147483647i), vec4<i32>(0i, 22472i, 9720i, 2147483647i)), _wgslsmith_add_i32(1885i, 1i)) ^ 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(586f, var_0.a))), all(vec3<bool>(_wgslsmith_f_op_f32(var_0.a + var_0.a) >= var_0.a, false, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(~(~u_input.a.x), 22u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(~global2.x, 22u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1235f + 713f)))));
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, countOneBits(-72305i), firstLeadingBit(var_1.b)) | abs(~(vec3<i32>(var_1.b, 1i, -1i) ^ vec3<i32>(var_1.b, -2147483647i, 0i))), min(~(vec3<i32>(-1i) * -vec3<i32>(var_1.b, var_1.b, var_1.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(66672i | var_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, -84862i), vec2<i32>(-2147483647i, var_1.b)), -64898i & var_1.b), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b, var_1.b, var_1.b), vec3<i32>(-1535i, var_1.b, 0i)))));
    global3 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(func_3(~(~vec4<u32>(u_input.a.x, 0u, 5511u, 4294967295u)), 2147483647i), i32(-1i) * -1i, vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(25403u ^ select(global2.x, 4294967295u, var_1.a), 22u)])), var_2.x, var_2.x), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(-1i, 2147483647i, 12385i, var_3)), vec4<i32>(min(_wgslsmith_mult_i32(var_3, -2147483647i), i32(-1i) * -2667i), var_3, abs(-var_3), _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1.b, 23338i, var_3), vec3<i32>(var_1.b, var_1.b, var_1.b), var_1.a), abs(vec3<i32>(-2147483647i, -98827i, var_1.b))))), var_1.c);
}

