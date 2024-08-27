struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = 571u;
    var var_1 = arg_0.a.x;
    let var_2 = Struct_2(arg_0.a, ~(-(-arg_0.b << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0.d.x, u_input.d, 1u), vec4<u32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, 0u)) % vec4<u32>(32u)))), Struct_1(_wgslsmith_div_f32(-1080f, _wgslsmith_div_f32(arg_0.c.a, -1593f))), ~vec2<u32>(~0u, u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.x, arg_0.c.a) + arg_0.e) + vec2<f32>(arg_0.c.a, 1000f))) - arg_0.e));
    let var_3 = ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.d.x, 34094u, arg_0.d.x, 1u), vec4<u32>(arg_0.d.x, u_input.c, arg_0.d.x, arg_0.d.x) & vec4<u32>(45916u, 1u, 61520u, 12637u)), ~(u_input.d | arg_0.d.x)));
    var var_4 = _wgslsmith_dot_vec2_i32(~var_2.b.wx, _wgslsmith_sub_vec2_i32(arg_0.b.wx, u_input.b));
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<i32> {
    let var_0 = func_2(func_2(func_2(func_2(Struct_2(arg_1.a, arg_1.b, arg_1.c, vec2<u32>(1u, u_input.d), vec2<f32>(-662f, arg_1.c.a))))));
    let var_1 = var_0.a.x;
    var var_2 = Struct_3(vec3<f32>(var_0.e.x, arg_1.e.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - _wgslsmith_f_op_f32(-var_0.e.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(265f, _wgslsmith_f_op_f32(sign(arg_1.c.a)), -1465f, _wgslsmith_div_f32(-594f, var_0.e.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2808f, var_0.e.x, arg_1.c.a, var_0.e.x)))))));
    let var_3 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2.b.x, arg_1.e.x), var_2.b.x, var_0.e.x), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-305f, 1296f)))), _wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_f_op_f32(min(-756f, _wgslsmith_f_op_f32(-var_2.a.x))))), _wgslsmith_div_vec4_f32(var_2.b, _wgslsmith_f_op_vec4_f32(-var_2.b)));
    var_2 = Struct_3(var_2.a, var_3.b);
    return arg_1.b;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    var var_0 = false;
    let var_1 = arg_1.a;
    let var_2 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1366f, 806f, arg_3.x), vec3<f32>(arg_3.x, 788f, arg_1.c.a), vec3<bool>(false, true, arg_0))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.c.a, 1053f, 1647f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.e.x)), _wgslsmith_f_op_f32(147f * arg_1.c.a), _wgslsmith_f_op_f32(-1194f + -1149f)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(477f, -449f, arg_3.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2314f, -1142f, arg_1.e.x), vec3<f32>(arg_1.c.a, arg_3.x, 1312f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(698f))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_1.c.a)), -896f, arg_2 & false)))), arg_1.c.a, arg_1.e.x));
    let var_3 = !var_1.x & arg_0;
    let var_4 = _wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(u_input.d, 1u)), 1u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + arg_1.e.x) + -607f);
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(true, Struct_2(vec3<bool>(true, any(vec2<bool>(true, true)), true), func_3(select(true, false, false), func_2(Struct_2(vec3<bool>(false, false, true), vec4<i32>(u_input.b.x, 2147483647i, 0i, u_input.a), Struct_1(846f), vec2<u32>(u_input.d, u_input.d), vec2<f32>(-1000f, 1422f))), func_2(Struct_2(vec3<bool>(true, false, false), vec4<i32>(u_input.a, -4585i, u_input.b.x, u_input.a), Struct_1(-1038f), vec2<u32>(1520u, 4294967295u), vec2<f32>(-234f, -125f))).a.yz), func_2(func_2(Struct_2(vec3<bool>(true, true, false), vec4<i32>(u_input.b.x, u_input.b.x, 13799i, 2147483647i), Struct_1(-1000f), vec2<u32>(u_input.c, u_input.d), vec2<f32>(1000f, -710f)))).c, ~(vec2<u32>(u_input.d, 1u) ^ vec2<u32>(u_input.d, u_input.c)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1145f, -1068f) + vec2<f32>(226f, 1089f)), vec2<f32>(357f, -485f)))), !func_2(Struct_2(vec3<bool>(false, false, true), vec4<i32>(u_input.a, u_input.a, 2147483647i, -46649i), Struct_1(1284f), vec2<u32>(u_input.c, u_input.c), vec2<f32>(-638f, 706f))).a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -461f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-236f, -721f) + vec2<f32>(197f, 1685f)), false)), vec2<f32>(250f, -1365f), vec2<bool>(all(vec3<bool>(false, true, false)), false))))));
    let var_1 = _wgslsmith_sub_vec3_i32(firstTrailingBit(select(~(~vec3<i32>(-13712i, 33238i, 19077i)), vec3<i32>(2226i, 0i, -u_input.b.x), func_2(func_2(Struct_2(vec3<bool>(true, false, false), vec4<i32>(u_input.a, u_input.a, -23612i, -2147483647i), Struct_1(-131f), vec2<u32>(0u, 6809u), vec2<f32>(var_0, -778f)))).a)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(abs(1i), i32(-1i) * -1i, _wgslsmith_div_i32(u_input.a, u_input.a)), vec3<i32>(_wgslsmith_sub_i32(0i, -34594i), abs(u_input.a), min(u_input.b.x, -28404i))));
    var var_2 = func_2(func_2(Struct_2(vec3<bool>(true, true, true), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-68711i, u_input.b.x), vec2<i32>(1i, -10314i)), abs(0i), -55770i, ~var_1.x), func_2(func_2(Struct_2(vec3<bool>(true, false, false), vec4<i32>(var_1.x, u_input.b.x, u_input.b.x, -44916i), Struct_1(var_0), vec2<u32>(u_input.d, u_input.d), vec2<f32>(-411f, var_0)))).c, _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.d, u_input.c), vec2<u32>(0u, 1u)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, 1601f), vec2<f32>(var_0, var_0))), vec2<f32>(var_0, 1108f))))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-390f, 861f), 696f, -703f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.e.x, var_0, var_2.e.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1200f, var_0, var_2.e.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1886f, 193f, -852f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(558f + 553f), -876f), var_0), _wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(var_2.c.a * _wgslsmith_f_op_f32(f32(-1f) * -519f)), -1697f));
    var_3 = Struct_3(vec3<f32>(var_3.b.x, var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.a), var_3.a.x, _wgslsmith_f_op_f32(round(var_3.a.x)), var_2.e.x))));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4((u_input.a << (var_0.x % 32u)) < 38692i, func_2(func_2(Struct_2(vec3<bool>(true, false, true), vec4<i32>(21893i, u_input.a, -1i, -1i), Struct_1(1434f), vec2<u32>(1u, u_input.d), vec2<f32>(-1784f, 989f)))), !any(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1857f, -893f))))));
    var var_2 = ~vec2<u32>(_wgslsmith_add_u32(func_2(func_2(Struct_2(vec3<bool>(true, true, false), vec4<i32>(2147483647i, u_input.b.x, 22283i, u_input.b.x), Struct_1(var_1.a), vec2<u32>(4294967295u, 1u), vec2<f32>(-417f, 1852f)))).d.x, _wgslsmith_add_u32(u_input.d, var_0.x)), u_input.c);
    let var_3 = _wgslsmith_clamp_u32(u_input.c, abs(var_0.x), ~(~(~var_2.x) ^ _wgslsmith_div_u32(0u | var_2.x, ~var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1822f, -875f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)))))), select(vec3<u32>(_wgslsmith_sub_u32(func_2(Struct_2(vec3<bool>(true, false, false), vec4<i32>(2147483647i, 0i, u_input.a, -6030i), Struct_1(-174f), vec2<u32>(55020u, var_0.x), vec2<f32>(var_1.a, var_1.a))).d.x, 24449u), var_2.x, ~var_2.x), abs(vec3<u32>(min(30063u, 1u), 1u, ~var_0.x)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)))), u_input.a & u_input.b.x, var_1.a, ~select(~4294967295u, 35249u, func_2(Struct_2(vec3<bool>(true, false, false), vec4<i32>(13869i, u_input.a, u_input.b.x, -1i), Struct_1(1435f), vec2<u32>(var_2.x, 23243u), vec2<f32>(var_1.a, 166f))).a.x));
}

