struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(500f, 618f, false))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2210f)), 1226f, any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(max(-239f, _wgslsmith_f_op_f32(select(1000f, -567f, false)))))))), vec3<i32>(-1i, u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a)), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -2487i) | max(u_input.a | u_input.a, u_input.a), select(u_input.a, _wgslsmith_add_i32(~u_input.a, _wgslsmith_clamp_i32(-2147483647i, u_input.a, u_input.a)), true), _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(u_input.a, 2147483647i, 22255i)), min(-vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(-32414i, 1i, u_input.a))), u_input.a), 25749u, select(abs(_wgslsmith_mod_vec2_u32(min(vec2<u32>(4294967295u, 7667u), vec2<u32>(63892u, 0u)), vec2<u32>(1u, 1u))), vec2<u32>(1u, 1u), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var var_1 = Struct_3(137f, var_0.c, !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true), ~var_0.d == countOneBits(var_0.e.x)), vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(abs(var_0.b), vec3<i32>(18906i, 0i, -1i)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2570f))) - -233f)), _wgslsmith_mod_vec3_i32(var_0.b ^ select(vec3<i32>(-11424i, u_input.a, 14046i), var_1.d, true), var_1.b.zzy) ^ max(-(var_0.c.yxy ^ var_0.c.wwx), var_1.d), vec4<i32>(0i << (_wgslsmith_div_u32(var_0.d, var_0.d) % 32u), u_input.a, var_0.c.x, u_input.a) | ~var_1.b, 36729u, vec2<u32>(_wgslsmith_mult_u32(var_0.d, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), var_0.e)) & (abs(var_0.e.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.e.x, 143464u, 4294967295u), vec4<u32>(26438u, 27815u, var_0.d, var_0.d))), _wgslsmith_mod_u32(var_0.d >> (1u % 32u), _wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.e.x, var_0.d), abs(var_0.d)))));
    var var_3 = Struct_2(vec2<i32>(12413i, reverseBits(_wgslsmith_dot_vec4_i32(var_0.c, ~var_1.b))), Struct_1(var_2.a, min(-(vec3<i32>(var_1.d.x, var_0.b.x, var_1.d.x) ^ vec3<i32>(var_0.b.x, 22069i, 2147483647i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, var_0.c.x), var_0.b)), vec4<i32>(55162i, ~var_1.d.x, abs(-2147483647i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 28167i, -101343i), vec3<i32>(10285i, -17739i, u_input.a))), _wgslsmith_div_u32(var_0.e.x, var_0.e.x), vec2<u32>(firstLeadingBit(~39748u), var_2.e.x)), _wgslsmith_add_vec2_u32(min(reverseBits(var_2.e) | var_0.e, ~var_2.e), var_0.e));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f - var_2.a)), vec4<i32>(firstLeadingBit(reverseBits(~(-28109i))), max(var_1.d.x, ~12012i ^ u_input.a), 2147483647i, var_3.b.c.x), var_1.c, -vec3<i32>(var_1.d.x ^ var_3.a.x, -2147483647i, abs(1i)) >> (select(vec3<u32>(var_3.c.x, _wgslsmith_div_u32(4294967295u, var_3.b.d), _wgslsmith_add_u32(var_0.e.x, var_2.d)), ~(~vec3<u32>(var_0.e.x, var_2.d, 1u)), !(var_1.c.x && var_1.c.x)) % vec3<u32>(32u)));
    return -var_0.b;
}

fn func_2() -> Struct_3 {
    var var_0 = !(!all(vec4<bool>(true, true, true, true)));
    let var_1 = func_3();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-1915f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(922f, 1039f))))), ~(~min(vec4<i32>(6038i, 0i, var_1.x, var_1.x), -vec4<i32>(var_1.x, u_input.a, 18424i, u_input.a))), vec2<bool>(false, true), vec3<i32>(min(abs(var_1.x), -6357i) >> (1u % 32u), -(u_input.a | 1i), 16835i));
    let var_3 = true;
    var_0 = true;
    return Struct_3(var_2.a, var_2.b, vec2<bool>(true, var_2.c.x), var_2.b.yzz);
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    let var_1 = Struct_1(-1338f, _wgslsmith_sub_vec3_i32(var_0.d, var_0.d), -vec4<i32>(-19412i, min(~var_0.d.x, ~u_input.a), u_input.a, ~var_0.d.x << (0u % 32u)), 24890u, max(select(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(10695u, 13838u)), vec2<u32>(1u, 3150u)), _wgslsmith_div_f32(182f, var_0.a) > -110f), ~(~(~vec2<u32>(9457u, 9519u)))));
    var var_2 = _wgslsmith_f_op_f32(-267f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 1478f)) - var_0.a))));
    var_2 = var_1.a;
    let var_3 = vec2<u32>(max(_wgslsmith_sub_u32(4294967295u, 86270u), var_1.e.x), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e.x, 32626u), vec2<u32>(var_1.e.x, 108497u)), 0u)) & _wgslsmith_add_vec2_u32(~(~vec2<u32>(36732u, 2281u)) | _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(var_1.e, vec2<u32>(var_1.d, var_1.e.x)), _wgslsmith_add_vec2_u32(var_1.e, var_1.e)), var_1.e);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2859i;
    var_0 = u_input.a;
    let var_1 = _wgslsmith_clamp_u32(~5684u, 88394u, 1u);
    let var_2 = _wgslsmith_add_i32(u_input.a, 1i);
    var var_3 = func_1();
    var_0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer((var_1 ^ ~countOneBits(var_1)) & ~var_1, var_1, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.a)) + _wgslsmith_f_op_f32(max(var_3.a, var_3.a))), func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2561f)), var_3.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(258f, var_3.a, -777f, var_3.a))))))));
}

