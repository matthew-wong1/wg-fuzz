struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    let var_0 = vec2<i32>(abs(~(-8259i)), 17181i) ^ max(~_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.x, 57915i), max(u_input.d.zy, vec2<i32>(2147483647i, arg_0.x))), abs(-vec2<i32>(u_input.c, 5059i)));
    let var_1 = u_input.d.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, arg_1)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) * vec2<f32>(arg_1, -896f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(415f, arg_1) + vec2<f32>(arg_1, arg_1))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))))));
    var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(852f, -200f))), vec2<f32>(172f, -1043f), true))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(736f, arg_1) + vec2<f32>(1f, arg_1))));
    return var_2.x;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3;
    var var_1 = Struct_4(326f, vec3<bool>(any(!arg_2.b), false, !arg_2.b.x));
    var var_2 = Struct_3(~(~firstLeadingBit(1u)), var_1.b.yz, arg_3, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(max(-417f, var_0.c.a.x))), _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(1012f * 1386f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(942f - arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, arg_3.c.a.x)))), u_input.d.x), _wgslsmith_dot_vec3_u32(abs(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(24230u, 55933u, 41278u), vec3<u32>(arg_3.b.x, 0u, arg_3.b.x)))), vec3<u32>(max(~13988u, 4294967295u), 25587u, 23190u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_3.c.a * vec4<f32>(-1796f, -1186f, var_0.c.a.x, var_1.a)), u_input.d.x);
    var_0 = Struct_2(var_2.c.a, ~_wgslsmith_add_vec2_u32(var_2.c.b, vec2<u32>(4294967295u << (var_2.c.b.x % 32u), abs(45253u))), var_0.c);
    return -(-var_2.c.c.b << (4294967295u % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: vec4<i32>) -> i32 {
    let var_0 = 643f;
    let var_1 = ~_wgslsmith_add_i32(-15424i, -abs(u_input.c));
    var var_2 = ~_wgslsmith_div_i32(-1i, _wgslsmith_mod_i32(u_input.d.x, 0i));
    var var_3 = _wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(17289u, 5951u), 16665u), max(countOneBits(_wgslsmith_clamp_u32(4294967295u, arg_2, 19970u)) & (~1u & min(arg_0.b.x, arg_0.b.x)), abs(_wgslsmith_div_u32(1u, ~arg_2))));
    var_2 = func_4(any(vec3<bool>(true, any(vec4<bool>(true, false, true, false)) & true, true)), _wgslsmith_f_op_f32(-arg_1), Struct_4(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_i32(arg_3.wzw, ~vec3<i32>(arg_3.x, 26998i, -5269i)), var_0)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), false), vec3<bool>(true, true, any(vec3<bool>(false, true, true))), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), arg_0);
    return _wgslsmith_mod_i32(func_4(!select(false, true, true), 769f, Struct_4(_wgslsmith_f_op_f32(arg_0.c.a.x + arg_1), vec3<bool>(false, true, true)), arg_0) | -52913i, select(var_1, -2147483647i, !(18080i > u_input.d.x)) | (var_1 >> (_wgslsmith_add_u32(~0u, select(0u, 0u, false)) % 32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = -abs(-u_input.c);
    let var_1 = arg_0.wyy;
    var var_2 = -vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(firstLeadingBit(arg_2.x), arg_2.x), -func_2(Struct_2(vec4<i32>(u_input.c, arg_2.x, u_input.d.x, -11155i), u_input.a, Struct_1(vec4<f32>(1206f, 1798f, -654f, 412f), u_input.c)), 449f, 4294967295u, vec4<i32>(arg_2.x, u_input.c, arg_2.x, arg_2.x))), arg_2.x, arg_2.x, _wgslsmith_mult_i32(1i, abs(arg_2.x)));
    var_0 = -33338i;
    var_2 = vec4<i32>(func_4(true, _wgslsmith_f_op_f32(abs(-1090f)), Struct_4(_wgslsmith_f_op_f32(func_3(var_2.zxw, -163f)), select(vec3<bool>(false, var_1.x, arg_0.x), var_1, true)), Struct_2(vec4<i32>(-12280i, u_input.d.x, arg_2.x, 75680i), u_input.a, Struct_1(vec4<f32>(1041f, -2090f, 352f, 323f), arg_2.x))) ^ 8704i, _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(u_input.d.xy), arg_2.zx | u_input.d.zy, _wgslsmith_add_vec2_i32(arg_2.yy, vec2<i32>(-1i, u_input.d.x))), reverseBits(var_2.yw))), _wgslsmith_mod_i32(var_2.x, ~(~(var_2.x << (arg_1 % 32u)))), ~abs(u_input.c));
    return vec3<u32>(23964u, ~u_input.a.x << (_wgslsmith_add_u32(40388u, u_input.b) % 32u), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a & ((max(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, u_input.b)) ^ ~vec2<u32>(0u, 37762u)) ^ _wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.b, u_input.a.x), u_input.a, false), vec2<u32>(u_input.b, u_input.a.x), ~u_input.a)), 1f, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 90343u, 54852u), ~vec3<u32>(64894u, 4294967295u, u_input.b), ~vec3<u32>(u_input.b, 1u, u_input.a.x)), _wgslsmith_mult_vec3_u32(func_1(vec4<bool>(true, true, true, false), 4294967295u, ~u_input.d), ~(~vec3<u32>(u_input.b, u_input.a.x, u_input.b)))));
}

