struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 494f;

var<private> global1: bool;

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(select(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, any(vec2<bool>(true, false)), true), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(any(vec4<bool>(true, false, true, false)), true, true, true), u_input.a.x > ~1u), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), 24228u <= u_input.a.x, true)), true);
    var var_1 = !(!select(vec4<bool>(select(true, false, false), all(var_0.a), !var_0.a.x, true), var_0.a, _wgslsmith_f_op_f32(trunc(462f)) < -186f));
    var var_2 = Struct_2(_wgslsmith_mod_vec2_i32(~_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(8743i, -2147483647i)), ~vec2<i32>(5998i, 38031i)), max(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))), vec3<bool>(true, !var_0.a.x & false, var_1.x));
    return var_2.a.x;
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(173f * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))) + -251f), _wgslsmith_f_op_f32(-arg_0), arg_0), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(46828i, 59906i, -2147483647i, -2147483647i), -vec4<i32>(-28062i, 2147483647i, -1i, -1i))), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, abs(-2147483647i), i32(-1i) * -35112i), 1i, abs(-1i)), u_input.b, func_3());
    var var_1 = _wgslsmith_sub_i32(1i, -2147483647i >> (u_input.b % 32u));
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(var_0.a.x - 1281f))))));
    var_3 = -170f;
    return -2147483647i;
}

fn func_1() -> f32 {
    let var_0 = vec4<i32>(-(~func_2(_wgslsmith_f_op_f32(f32(-1f) * -645f))), 62108i, _wgslsmith_mult_i32(_wgslsmith_add_i32(func_3(), _wgslsmith_add_i32(0i, -15102i)), -1i), max(func_2(_wgslsmith_f_op_f32(1000f + 131f)), 1018i));
    let var_1 = ~(~1u);
    return _wgslsmith_f_op_f32(-1008f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f) * 851f), 281f));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> Struct_5 {
    global1 = arg_2.a.x;
    var var_0 = vec4<bool>(all(vec4<bool>(arg_2.a.x, all(select(vec4<bool>(true, false, arg_2.b, true), vec4<bool>(false, true, arg_2.a.x, arg_2.b), arg_2.a)), arg_2.b, true | all(vec3<bool>(arg_2.a.x, true, true)))), false, arg_2.a.x, arg_2.a.x);
    global2 = firstTrailingBit((i32(-1i) * -_wgslsmith_sub_i32(-1i, -24994i)) >> (u_input.a.x % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, 1181f, -670f), vec4<f32>(1684f, 914f, 698f, arg_0))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-var_1.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-726f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.x, arg_2.a.x))))));
    return Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-601f, _wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(-652f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1931f, -234f, -154f, 1000f)))))), -(i32(-1i) * -_wgslsmith_div_i32(-2147483647i, 1i)), abs(vec3<i32>(countOneBits(abs(12872i)), 1i, 1i)), ~firstTrailingBit(48856u | ~arg_1), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_clamp_i32(-36087i, ~(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(85316i, -1i, 0i), vec3<i32>(-2147483647i, 0i, 15759i)), ~1i) & ~(i32(-1i) * -1i)), -5466i);
    global2 = -10232i;
    var var_0 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(1337f * 2303f))), _wgslsmith_f_op_f32(-1f))), select(u_input.b, ~(~u_input.b), true && any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), Struct_4(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(any(vec3<bool>(false, false, true)), true, true, true), vec4<bool>(true, true, false, true)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), false))));
    global0 = 1156f;
    let var_1 = (~vec4<i32>(i32(-1i) * -1i, var_0.c.x, -1i, 1i) | _wgslsmith_add_vec4_i32(select(~vec4<i32>(2147483647i, var_0.c.x, -1i, var_0.e), vec4<i32>(-3371i, 2147483647i, 2147483647i, var_0.e) ^ vec4<i32>(var_0.e, var_0.c.x, -42238i, var_0.b), vec4<bool>(true, true, true, true)), vec4<i32>(var_0.e, 2147483647i, var_0.e, 35196i) & _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.e, -12924i, var_0.b, -15027i), vec4<i32>(var_0.e, 48422i, -20110i, var_0.b)))) >> (_wgslsmith_add_vec4_u32(reverseBits(select(~vec4<u32>(var_0.d, var_0.d, 58691u, 1u), vec4<u32>(6511u, u_input.a.x, u_input.a.x, u_input.b), true)), _wgslsmith_sub_vec4_u32(~(vec4<u32>(u_input.b, 7500u, var_0.d, u_input.a.x) >> (vec4<u32>(u_input.a.x, var_0.d, u_input.a.x, var_0.d) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d, 35396u, var_0.d, 29032u), vec4<u32>(u_input.b, 4294967295u, 59599u, u_input.b)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1976f - _wgslsmith_f_op_f32(func_1())))));
}

