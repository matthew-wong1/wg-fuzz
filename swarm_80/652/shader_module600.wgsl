struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: f32) -> vec4<u32> {
    let var_0 = ~0u;
    let var_1 = 1u;
    let var_2 = !select(vec2<bool>(!all(vec3<bool>(false, false, false)), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), any(vec4<bool>(true, true, false, true)) == true), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), _wgslsmith_f_op_f32(arg_3 * arg_3) >= _wgslsmith_f_op_f32(f32(-1f) * -884f)));
    var var_3 = -vec4<i32>(451i | -arg_2, arg_0.x & arg_1.x, 28655i, _wgslsmith_dot_vec3_i32(vec3<i32>(~0i, 2147483647i, ~arg_2), _wgslsmith_div_vec3_i32(vec3<i32>(arg_2, arg_1.x, 26859i), -vec3<i32>(0i, arg_1.x, u_input.c.x))));
    let var_4 = var_3.wyz;
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(26435u, var_1, ~u_input.d, u_input.d), ~select(reverseBits(min(vec4<u32>(var_1, u_input.e, 0u, var_1), vec4<u32>(21650u, var_0, 1u, 0u))), ~vec4<u32>(u_input.a, var_0, var_1, var_0), select(vec4<bool>(var_2.x, false, false, var_2.x), !vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, false, false, true))), select(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a | var_0, var_1), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 0u, var_1), vec3<u32>(var_1, 38421u, var_1)), var_1), 19346u, select(min(15978u, 1467u), _wgslsmith_mult_u32(65034u, 21416u), all(vec2<bool>(true, true)))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 4294967295u, u_input.a, 14462u), vec4<u32>(4294967295u, 0u, 544u, 36136u)) & ~(vec4<u32>(1u, 1u, var_0, var_1) | vec4<u32>(56509u, u_input.a, var_0, 0u)), any(!(!vec3<bool>(var_2.x, var_2.x, var_2.x)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<i32>) -> vec3<i32> {
    let var_0 = vec2<bool>(true, true);
    let var_1 = arg_1;
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -533f))) * _wgslsmith_f_op_f32(step(-1337f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1106f)))))));
    let var_4 = select(select(vec4<bool>(var_0.x, (u_input.c.x | arg_2.x) == u_input.c.x, all(vec3<bool>(true, true, true)), any(var_0)), select(vec4<bool>(true, var_0.x, var_0.x, !var_0.x), !(!vec4<bool>(var_2, var_2, true, true)), !(!vec4<bool>(false, var_0.x, var_2, false))), select(var_2 | false, true, var_0.x)), vec4<bool>(true, all(select(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, var_2, false, var_0.x), vec4<bool>(var_0.x, false, false, false)), select(vec4<bool>(var_0.x, true, var_2, var_0.x), vec4<bool>(true, var_0.x, var_2, var_0.x), var_2), false)), true, any(vec2<bool>(!var_2, any(vec2<bool>(true, false))))), !(!select(vec4<bool>(true, true, false, var_2), vec4<bool>(true, var_0.x, var_0.x, false), select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(var_2, var_0.x, var_0.x, true), var_0.x))));
    return reverseBits(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.c.x, -u_input.b, -u_input.b), arg_2.zxx));
}

fn func_5(arg_0: bool, arg_1: vec3<i32>) -> vec4<bool> {
    var var_0 = ~1u;
    var_0 = 0u;
    var var_1 = ~(~(reverseBits(vec4<u32>(u_input.e, 20857u, u_input.a, 1u) >> (vec4<u32>(u_input.d, u_input.a, u_input.d, u_input.d) % vec4<u32>(32u))) << (vec4<u32>(firstLeadingBit(u_input.e), u_input.e, 1u, ~u_input.d) % vec4<u32>(32u))));
    var_0 = 1u;
    let var_2 = any(vec2<bool>(true, arg_0));
    return vec4<bool>(any(vec3<bool>(var_2, true, any(vec4<bool>(var_2, false, arg_0, arg_0)))), any(vec2<bool>(true, all(vec4<bool>(true, var_2, arg_0, arg_0)) != all(vec4<bool>(true, false, var_2, arg_0)))), true, arg_0);
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-894f * 126f)), -1000f);
    var var_1 = Struct_2(_wgslsmith_clamp_u32(~1u, ~_wgslsmith_mult_u32(u_input.a, 0u) & 23764u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.e, 3441u, u_input.a)), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, 1u, 5092u), vec3<u32>(34649u, u_input.d, u_input.d))))));
    var_1 = Struct_2(~var_1.a);
    var var_2 = Struct_2(u_input.d);
    var var_3 = func_5(arg_0, -func_4(_wgslsmith_clamp_vec4_u32(func_3(vec2<i32>(2147483647i, -33050i), u_input.c, u_input.b, 243f), vec4<u32>(81370u, 4294967295u, 0u, 58432u) & vec4<u32>(var_1.a, var_2.a, var_1.a, 50333u), _wgslsmith_div_vec4_u32(vec4<u32>(5099u, var_1.a, var_2.a, 0u), vec4<u32>(61072u, u_input.a, var_2.a, var_2.a))), _wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_mult_vec4_i32(~vec4<i32>(-42314i, u_input.c.x, -48156i, u_input.c.x), -vec4<i32>(u_input.b, 86411i, 8746i, u_input.b))));
    return u_input.e;
}

fn func_6(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = Struct_4(_wgslsmith_sub_vec2_u32(vec2<u32>(48719u, u_input.d), _wgslsmith_sub_vec2_u32(arg_2.yy, vec2<u32>(u_input.a, arg_0.x) >> (arg_0.xw % vec2<u32>(32u)))) & ~arg_0.wx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(415f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-886f, 329f)) + -367f))) * -1357f), vec2<bool>(func_5(func_5(arg_1 & arg_1, -vec3<i32>(0i, 1i, u_input.b)).x, select(vec3<i32>(u_input.b, -2147483647i, -56842i) | vec3<i32>(u_input.b, 9508i, 0i), vec3<i32>(10270i, u_input.b, u_input.c.x), false)).x, func_5(false, vec3<i32>(-1i, 1i, u_input.b)).x));
    let var_1 = var_0.b;
    var var_2 = vec3<i32>(1i, 0i, _wgslsmith_div_i32(~_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_add_i32(u_input.b, u_input.c.x)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(4465i, 10145i, u_input.c.x), firstLeadingBit(vec3<i32>(u_input.c.x, 0i, u_input.c.x))), _wgslsmith_mult_vec3_i32(~vec3<i32>(56689i, -2147483647i, 0i), vec3<i32>(-1410i, u_input.c.x, u_input.b)))));
    var var_3 = firstTrailingBit(-max(vec3<i32>(2147483647i, 2147483647i, u_input.c.x), vec3<i32>(-15933i, var_2.x, var_2.x)) | countOneBits(vec3<i32>(u_input.b, var_2.x, u_input.b))) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(10704i, u_input.c.x, -2147483647i), vec3<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, var_2.x)))), -min(1i, var_2.x), -var_2.x);
    var var_4 = func_5(arg_1, -(max(~vec3<i32>(0i, 711i, 0i), vec3<i32>(u_input.c.x, 0i, var_2.x)) >> (~arg_2 % vec3<u32>(32u)))).x;
    return var_0.c;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_3 {
    let var_0 = Struct_1(!vec3<bool>(true, true, any(vec2<bool>(true, true))), vec4<i32>(16605i, select(-u_input.b, -1i, select(true, any(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, false, true, true)))), abs(firstTrailingBit(-70817i)) >> (1u % 32u), select(_wgslsmith_sub_i32(-u_input.b, u_input.b), _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(u_input.b, u_input.b)), any(vec3<bool>(false, true, true)))), vec4<f32>(-1000f, arg_1, -551f, arg_1), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -169f, _wgslsmith_f_op_f32(arg_1 - arg_1), -1000f)))), ~(-41188i));
    var var_1 = Struct_3(vec3<bool>(all(vec4<bool>(var_0.a.x, false, 1u == arg_0, var_0.a.x)), all(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), any(select(vec2<bool>(var_0.a.x, var_0.a.x), select(var_0.a.xz, var_0.a.yy, vec2<bool>(false, false)), var_0.a.x))));
    let var_2 = func_6(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 0u, arg_0, _wgslsmith_add_u32(arg_0, arg_0)), vec4<u32>(firstLeadingBit(62397u << (arg_0 % 32u)), 6289u, ~(~4294967295u), ~func_2(var_1.a.x))), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-410f))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.d.x * arg_1)))) || all(vec3<bool>(var_1.a.x, any(vec4<bool>(false, false, false, true)), true)), min(vec3<u32>(~1u, min(~45434u, reverseBits(78081u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(4294967295u, 401u, 4294967295u, 0u))), ~(~abs(vec3<u32>(u_input.a, u_input.d, arg_0)))));
    return Struct_3(select(var_1.a, select(func_5(var_0.a.x, var_0.b.zxx).yxw, var_1.a, true), select(select(var_1.a, func_5(false, var_0.b.yyz).wwx, select(vec3<bool>(var_1.a.x, true, var_2.x), vec3<bool>(true, true, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(var_1.a.x, false, false), select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(var_0.a.x, false, var_2.x), true)), var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-633f * -490f), 109f, _wgslsmith_f_op_f32(f32(-1f) * -904f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -980f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-236f))), -842f)));
    var var_1 = Struct_3(select(vec3<bool>(true, !(u_input.a < u_input.d), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec3<bool>(true, true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), vec3<bool>(!all(vec3<bool>(false, false, true)), true, true != (u_input.c.x != u_input.b))));
    var_1 = func_1(u_input.e, var_0.x);
    var var_2 = Struct_1(select(!select(!var_1.a, vec3<bool>(var_1.a.x, true, var_1.a.x), !var_1.a.x), select(!var_1.a, select(var_1.a, var_1.a, var_1.a), var_1.a.x), _wgslsmith_div_u32(4294967295u, abs(1u)) >= ~u_input.d), ~vec4<i32>(1i, u_input.c.x, _wgslsmith_div_i32(_wgslsmith_div_i32(26449i, u_input.c.x), u_input.b & -15853i), reverseBits(select(3307i, u_input.b, false))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + -1717f))) - var_0.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, 1056f, -280f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -789f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 109f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1267f, var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1042f, 1627f))))))), func_4(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.e, u_input.d), vec4<u32>(u_input.d, u_input.a, u_input.d, 3237u)), vec4<u32>(35928u, u_input.a, u_input.e, 8884u)), vec4<u32>(u_input.a, 2417u, max(1u, 1u), u_input.e)), 371f, reverseBits(select(abs(vec4<i32>(41763i, 14239i, 26136i, u_input.c.x)), abs(vec4<i32>(u_input.c.x, u_input.b, u_input.b, -27402i)), select(vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), vec4<bool>(false, true, var_1.a.x, true), vec4<bool>(true, var_1.a.x, false, true))))).x);
    let var_3 = func_6(~vec4<u32>(~1u, 20037u, u_input.e, u_input.a | u_input.e), var_2.a.x, ~(~vec3<u32>(firstLeadingBit(u_input.d), func_2(false), u_input.d ^ 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-634f))), vec4<i32>(-12510i, 46205i, u_input.c.x, -2147483647i));
}

