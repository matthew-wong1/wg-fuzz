struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-597f - 1241f) + _wgslsmith_f_op_f32(-520f - 660f)), 547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(488f))), -1318f))));
    global0 = array<vec3<f32>, 27>();
    let var_1 = vec4<u32>(~u_input.a, u_input.a, 26210u, ~(u_input.a << (12863u % 32u)));
    var var_2 = abs(~abs(vec3<i32>(-1i) * -vec3<i32>(u_input.e, 56370i, 12427i)));
    let var_3 = var_1.x;
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_1(~arg_1, arg_1.x);
    var_0 = Struct_1(~(arg_1 ^ ~(arg_1 >> (vec2<u32>(u_input.d, 8160u) % vec2<u32>(32u)))), ~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(28856i ^ u_input.e, var_0.b, -u_input.e), -2147483647i, -5057i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -887f)))) * -1349f);
    var_0 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(-1i, var_0.b) << (~u_input.a % 32u), _wgslsmith_sub_i32(reverseBits(u_input.e), 0i)) ^ vec2<i32>(1i, select(-39998i, u_input.e, select(false, true, false))), max(u_input.e, var_0.b));
    global0 = array<vec3<f32>, 27>();
    return Struct_2(Struct_1(min(select(arg_1, vec2<i32>(arg_1.x, 1i), true), var_0.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -11654i, -32112i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, -7939i, u_input.e), vec3<i32>(0i, 2147483647i, -50756i))), max(_wgslsmith_add_i32(2147483647i, -10312i), _wgslsmith_div_i32(var_0.a.x, -2147483647i)))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(var_0.b == 33634i, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(false, true), !all(vec4<bool>(true, true, true, true))), ~_wgslsmith_add_vec3_i32(~vec3<i32>(arg_1.x, -15869i, arg_1.x), firstTrailingBit(vec3<i32>(47553i, arg_1.x, 21471i)) << (vec3<u32>(4294967295u, 1u, u_input.b.x) % vec3<u32>(32u))), vec3<bool>(!func_3(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), 49589u <= u_input.c.x), !(!func_3(vec3<bool>(false, false, true), false)), true), !vec2<bool>(all(vec2<bool>(true, false)) & true, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec3<i32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-697f * _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(-1154f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1133f, -135f)) - _wgslsmith_f_op_f32(815f + 777f)))), 1542f, -280f, 764f);
    let var_1 = vec3<bool>(true, !(!all(!arg_1.d)), arg_1.e.x);
    let var_2 = arg_3 << (0u % 32u);
    let var_3 = func_2(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-962f - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(-var_0.x))), -_wgslsmith_clamp_vec2_i32(arg_2.a.a, vec2<i32>(arg_2.c.x, 0i), vec2<i32>(arg_0.b, arg_2.a.b) ^ arg_1.c.yz) >> (u_input.c % vec2<u32>(32u))).a;
    var var_4 = Struct_1(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(arg_0.a), ~vec2<i32>(4943i, -63814i)), arg_2.c.x), 1248i), 2147483647i);
    return -max(firstTrailingBit(min(vec3<i32>(33011i, 1i, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 2147483647i, var_2), arg_1.c))), arg_2.c);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(arg_2, !(!vec2<bool>(all(vec2<bool>(false, false)), true)), _wgslsmith_sub_vec3_i32(~arg_1, reverseBits(func_4(Struct_1(vec2<i32>(arg_1.x, -2147483647i), 0i), Struct_2(Struct_1(vec2<i32>(0i, -9878i), arg_1.x), vec2<bool>(true, false), vec3<i32>(u_input.e, 21348i, -1i), vec3<bool>(false, false, false), vec2<bool>(true, false)), func_2(global0[_wgslsmith_index_u32(4294967295u, 27u)], arg_1.xx), firstLeadingBit(arg_2.b)))), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(197f, arg_0, -1649f)), global0[_wgslsmith_index_u32(1u, 27u)], true)), ~vec2<i32>(0i, arg_1.x)).d, true), vec2<bool>(-countOneBits(1i) <= u_input.e, true));
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(-1705f, 1467f, 407f))))), vec2<i32>(u_input.e, arg_1.x)).a.a, arg_2.a), firstLeadingBit(~u_input.e));
    var var_2 = _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0));
    return func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~u_input.a, 27u)]), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(747f, 398f, _wgslsmith_f_op_f32(2258f * arg_0)), _wgslsmith_div_vec3_f32(vec3<f32>(-351f, arg_0, arg_0), vec3<f32>(arg_0, arg_0, arg_0)), all(!var_0.d)))), vec2<i32>(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(-11828i, 0i)), ~arg_1.yz << (~vec2<u32>(1u, 0u) % vec2<u32>(32u))), ~(-var_1.a.x)));
}

fn func_5(arg_0: Struct_2) -> u32 {
    global0 = array<vec3<f32>, 27>();
    var var_0 = (max(-u_input.e, ~arg_0.a.a.x) << (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 1u, u_input.d, u_input.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, 38243u, u_input.c.x), vec4<u32>(u_input.a, 4294967295u, u_input.d, 19043u))), u_input.d) % 32u)) << (~countOneBits(select(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), func_3(vec3<bool>(false, arg_0.e.x, false), arg_0.e.x))) % 32u);
    return 0u ^ _wgslsmith_mod_u32(~1u, u_input.c.x ^ abs(29882u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    let var_0 = 0i;
    var var_1 = _wgslsmith_dot_vec2_u32(~min(u_input.c, vec2<u32>(1u, u_input.d)), vec2<u32>(0u, ~_wgslsmith_div_u32(u_input.c.x, 26357u))) << (abs(max(u_input.d, u_input.c.x)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(73153u, u_input.c.x, u_input.a, func_5(func_1(-677f, vec3<i32>(u_input.e, -3884i, u_input.e), Struct_1(vec2<i32>(var_0, var_0), var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-201f)))))) - 474f), vec3<u32>(0u, _wgslsmith_add_u32(u_input.d, abs(u_input.b.x) & u_input.a), firstTrailingBit(~u_input.a)));
}

