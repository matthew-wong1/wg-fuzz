struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_3,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = !(!vec4<bool>(true & all(vec3<bool>(true, false, false)), true, true, true));
    var var_1 = var_0.yz;
    let var_2 = Struct_1(all(!(!vec2<bool>(var_0.x, true))), _wgslsmith_dot_vec2_i32((vec2<i32>(u_input.b.x, 0i) | _wgslsmith_mod_vec2_i32(u_input.b, u_input.b)) & vec2<i32>(u_input.b.x, u_input.e), _wgslsmith_add_vec2_i32(u_input.b, countOneBits(vec2<i32>(u_input.a, -40956i)))), _wgslsmith_add_u32(u_input.d, 4294967295u));
    let var_3 = vec2<bool>(var_2.a || false, !var_0.x);
    var var_4 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b, _wgslsmith_div_i32(20128i, 58390i)), ~abs(vec2<i32>(-973i, var_2.b))) >> (u_input.c.x % 32u), var_2.b, -var_2.b);
    return var_0.xw;
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_4) -> bool {
    let var_0 = Struct_1(arg_0.x, u_input.e >> (countOneBits(_wgslsmith_mult_u32(arg_1, ~u_input.c.x)) % 32u), abs(~32403u));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(182f)))) + _wgslsmith_f_op_f32(-arg_2.e)), _wgslsmith_sub_u32(1u << (abs(reverseBits(arg_1)) % 32u), abs(4294967295u)), arg_2.d, arg_2.c, -549f);
    var var_2 = var_0;
    let var_3 = Struct_1(true, ~var_0.b, _wgslsmith_mult_u32(min(_wgslsmith_clamp_u32(var_2.c >> (arg_2.b % 32u), 60041u >> (arg_2.b % 32u), ~u_input.d), arg_1), ~max(4294967295u, reverseBits(var_1.b))));
    var_1 = arg_2;
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = -1i;
    var var_1 = !vec3<bool>(arg_1.a, true, !func_4(func_3(arg_2.a.zw), ~57224u, Struct_4(1294f, 42906u, Struct_3(arg_2.a), arg_2, -1039f)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(168f * 582f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-129f)), 691f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-520f, arg_2.a.x, false)))))) + _wgslsmith_f_op_vec4_f32(ceil(arg_2.a)));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-424f, 1513f, -1287f, -423f) * vec4<f32>(417f, -441f, -355f, -1158f))), _wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(false, 2147483647i, u_input.c.x), Struct_1(true, 1i, u_input.c.x)), Struct_1(false, 4905i, u_input.c.x), Struct_3(vec4<f32>(130f, 453f, -1000f, 1688f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-200f, -1141f, 707f, -949f) - vec4<f32>(-1882f, 361f, 233f, -2007f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(313f, 226f, -1000f, -918f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1547f, 958f, -431f, -469f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-151f, 745f, -210f, -1099f), vec4<f32>(-227f, -788f, -597f, 1623f))), any(vec4<bool>(true, false, false, false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-842f, -490f, -766f, -1825f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -871f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(-377f, var_0.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f - var_0.x) - _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, 1949f, 125f))) + _wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(true, u_input.e, 4294967295u), Struct_1(true, 0i, u_input.d)), Struct_1(true, u_input.a, 1u), Struct_3(vec4<f32>(1433f, 1556f, var_0.x, -638f))))), _wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(true, 0i, u_input.c.x), Struct_1(false, u_input.b.x, u_input.d)), Struct_1(true, 2147483647i, u_input.d), Struct_3(vec4<f32>(672f, var_0.x, 1517f, 643f)))))));
    var var_2 = Struct_2(Struct_1(var_1.x != -1242f, -2147483647i, _wgslsmith_div_u32(1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.d), ~u_input.d))), Struct_1(true, u_input.e << (u_input.d % 32u), 4294967295u));
    return !(var_2.a.a == !(var_0.x == -714f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(vec3<bool>(true, func_1(), false), vec3<bool>(true, 2147483647i == u_input.b.x, true), vec3<bool>(true, false, u_input.d > 8470u)), vec3<bool>(true, all(vec4<bool>(true, true, true, true)) & true, true), select(!vec3<bool>(all(vec3<bool>(true, false, false)), 12670u >= u_input.d, any(vec4<bool>(true, true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(737f)) + -223f), _wgslsmith_f_op_f32(-2709f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f) - -998f)))));
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(281f * 358f), -748f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(939f)), _wgslsmith_f_op_f32(481f + 677f))) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(f32(-1f) * -1459f), _wgslsmith_f_op_f32(-1010f * -1127f)));
    var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, -1033f, var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))));
    let var_3 = -(~u_input.b.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x), var_2.a.x)) * _wgslsmith_f_op_f32(var_2.a.x * var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, 69721u, 39568u) >> (vec4<u32>(u_input.c.x, 22357u, 0u, u_input.c.x) % vec4<u32>(32u)), u_input.c) | _wgslsmith_sub_vec4_u32(u_input.c, countOneBits(u_input.c) & vec4<u32>(u_input.d, u_input.c.x, 102937u, u_input.c.x)), -1i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1610f, -323f, var_4, 539f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1178f, 470f, var_2.a.x, 998f), vec4<f32>(var_2.a.x, var_2.a.x, var_4, var_2.a.x))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_4 - 742f), _wgslsmith_f_op_f32(round(1725f)), var_4, 1f) - _wgslsmith_f_op_vec4_f32(-var_2.a)), all(select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false)))));
}

