struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<bool>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(min(54690u, ~u_input.d << (_wgslsmith_div_u32(u_input.d, 1399u) % 32u)), u_input.d), vec2<u32>(_wgslsmith_add_u32(0u, u_input.d) | ~u_input.d, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, u_input.d), 42435u)) ^ vec2<u32>(~(~u_input.d), u_input.d));
    var_0 = 25766u;
    var_0 = u_input.d;
    var_0 = ~countOneBits(u_input.d);
    return firstTrailingBit(reverseBits(firstLeadingBit(~firstLeadingBit(vec3<i32>(-3914i, 1i, 1i)))));
}

fn func_2(arg_0: vec4<bool>) -> vec2<f32> {
    var var_0 = Struct_4(0u, Struct_3(Struct_1(u_input.b, vec3<f32>(_wgslsmith_div_f32(-1418f, 464f), _wgslsmith_f_op_f32(-408f - 300f), 470f), vec3<i32>(-2147483647i, -22370i, u_input.c.x), any(!vec4<bool>(arg_0.x, arg_0.x, false, true)), ~(vec4<i32>(33375i, 0i, 1i, u_input.a) & vec4<i32>(-24034i, u_input.e.x, u_input.e.x, 1i))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(122f)))), Struct_1(0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-628f, 950f, 359f) - vec3<f32>(540f, -675f, -663f))), func_3(u_input.d < u_input.d, Struct_2(vec4<i32>(-1i, -13062i, u_input.a, u_input.a)), arg_0.x & true), true, min(vec4<i32>(1i, u_input.a, 2147483647i, u_input.b), vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, -11557i) >> (vec4<u32>(63753u, u_input.d, 26444u, u_input.d) % vec4<u32>(32u))))), vec4<bool>(any(arg_0.zx), true, select(arg_0.x, false, true), true), reverseBits(reverseBits(abs(u_input.d))) | ~(~u_input.d >> (u_input.d % 32u)), !select(vec2<bool>(!arg_0.x, false), !select(vec2<bool>(arg_0.x, true), arg_0.wz, false), any(arg_0.zxy)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.x) + var_0.b.c.b.x);
    var_0 = Struct_4(max(abs(u_input.d), var_0.d), var_0.b, !(!select(arg_0, vec4<bool>(false, false, true, var_0.e.x), select(vec4<bool>(arg_0.x, var_0.c.x, true, true), vec4<bool>(var_0.e.x, var_0.b.c.d, true, true), vec4<bool>(true, arg_0.x, false, false)))), var_0.d, select(var_0.e, vec2<bool>(false, any(select(arg_0.zyz, vec3<bool>(true, arg_0.x, true), var_0.e.x))), all(arg_0)));
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec2_i32(firstLeadingBit(~(-var_0.b.c.c.yy)), vec2<i32>(15323i, 1i) ^ ~_wgslsmith_div_vec2_i32(u_input.e, var_0.b.a.c.yy)));
    let var_3 = _wgslsmith_div_i32(~func_3(true, Struct_2(vec4<i32>(2147483647i, 24579i, u_input.e.x, var_0.b.a.c.x)), true).x, u_input.c.x) & min(u_input.b, -1i >> (0u % 32u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(select(var_0.b.b.x, 1022f, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c.b.x, -1895f)), _wgslsmith_f_op_vec2_f32(max(var_0.b.c.b.xx, vec2<f32>(215f, 1712f))), vec2<bool>(false, false)))), !var_0.e)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(min(~arg_2, ~vec4<i32>(_wgslsmith_dot_vec3_i32(arg_2.zxx, arg_1.e.xzx), -87514i, 71073i, _wgslsmith_add_i32(2147483647i, arg_2.x))));
    var var_1 = arg_1.d;
    let var_2 = Struct_3(arg_1, _wgslsmith_f_op_vec2_f32(func_2(!(!vec4<bool>(arg_1.d, arg_1.d, true, arg_1.d)))), arg_1);
    var var_3 = Struct_1(_wgslsmith_sub_i32(-u_input.c.x, -2858i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-490f, 314f, _wgslsmith_f_op_f32(var_2.c.b.x + arg_1.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-954f + 1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.b.x - 234f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1398f)) + _wgslsmith_div_f32(arg_1.b.x, arg_1.b.x)))), -reverseBits(vec3<i32>(38475i, 15598i, -29772i) | arg_2.yxz) | ~(~(~var_2.a.c)), true, var_2.c.e);
    let var_4 = select(!select(select(!vec3<bool>(false, var_3.d, var_3.d), !vec3<bool>(arg_1.d, var_2.c.d, false), true), vec3<bool>(false, var_2.a.d, 4294967295u >= arg_0), var_2.c.d == var_2.a.d), !select(vec3<bool>(var_2.c.d, true, false), vec3<bool>(true, true, true), false), any(!(!select(vec2<bool>(true, true), vec2<bool>(true, var_3.d), var_3.d))));
    return Struct_2(vec4<i32>(~_wgslsmith_div_i32(arg_1.a, var_3.e.x), -1i, ~1i, -10854i));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = func_1(~u_input.d, Struct_1(19453i, vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-767f - 275f), _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false))), vec3<i32>(0i, 8545i, -5835i), true, countOneBits(select(vec4<i32>(arg_1.a.x, 0i, -1i, -2147483647i), arg_1.a, true))), ~arg_1.a).a.x != -2147483647i;
    var var_1 = min(55113u, ~(~(~u_input.d)));
    var var_2 = !(!vec4<bool>(_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(true, false, true, false))).x == 1124f, !all(vec3<bool>(true, false, true)), true, true));
    let var_3 = Struct_1(-(~u_input.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0))), _wgslsmith_mult_vec3_i32(func_1(~u_input.d, Struct_1(0i, arg_0, vec3<i32>(-2147483647i, 2147483647i, -47329i), var_2.x, arg_1.a), -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.x, 1i, -1i, u_input.a), arg_1.a, arg_1.a)).a.zxx, firstLeadingBit(firstTrailingBit(vec3<i32>(arg_1.a.x, -2147483647i, -2147483647i)))), !(~0i <= reverseBits(u_input.a)), vec4<i32>(arg_1.a.x, ~(-18423i), -1i, arg_1.a.x));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1771f)), -963f)))) <= arg_0.x;
    return -464f;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_5 {
    let var_0 = arg_1.c.d && all(select(!select(vec3<bool>(arg_1.c.d, arg_1.c.d, true), vec3<bool>(arg_1.c.d, arg_1.c.d, true), arg_1.a.d), vec3<bool>(all(vec4<bool>(false, arg_1.c.d, arg_1.a.d, false)), arg_1.c.d, arg_1.c.d), arg_1.c.d));
    var var_1 = ~(firstTrailingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(88086u, 13649u), abs(vec2<u32>(u_input.d, u_input.d)))) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1406u, u_input.d), 1u), vec2<u32>(0u, _wgslsmith_add_u32(u_input.d, 8340u))));
    let var_2 = ~_wgslsmith_mod_vec2_i32(func_1(41272u, arg_1.c, max(vec4<i32>(u_input.b, u_input.e.x, arg_1.a.e.x, arg_1.a.e.x), arg_1.a.e)).a.xw, vec2<i32>(min(_wgslsmith_clamp_i32(arg_1.a.e.x, arg_1.c.c.x, arg_1.c.e.x), u_input.e.x), -2147483647i));
    let var_3 = 368f;
    var var_4 = Struct_2(vec4<i32>(u_input.c.x, 1i, arg_1.c.c.x, -8637i));
    return Struct_5(arg_1.a.d, 0u, Struct_3(arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.c.b.xx, arg_1.c.b.zx)) + vec2<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(var_3 + var_3))), Struct_1(min(i32(-1i) * -1i, _wgslsmith_add_i32(-24262i, arg_1.c.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_1.c.b.x, 1610f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-844f, arg_1.c.b.x, var_3)))), -arg_1.a.c, any(select(vec3<bool>(arg_1.a.d, arg_1.c.d, var_0), vec3<bool>(true, var_0, arg_1.a.d), true)), countOneBits(vec4<i32>(2147483647i, arg_1.c.a, 2147483647i, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~abs(~_wgslsmith_add_u32(4294967295u, u_input.d)));
    var var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1196f, 672f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(734f, 1051f, 1138f)), func_1(var_0, Struct_1(23203i, vec3<f32>(346f, -682f, 1000f), vec3<i32>(-18614i, u_input.e.x, u_input.b), true, vec4<i32>(u_input.a, u_input.e.x, u_input.c.x, -1i)), vec4<i32>(u_input.a, u_input.a, u_input.e.x, u_input.b))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(535f + -1551f))))), Struct_3(Struct_1(_wgslsmith_clamp_i32(u_input.a, -2147483647i >> (u_input.d % 32u), -2147483647i >> (var_0 % 32u)), vec3<f32>(1f, 232f, _wgslsmith_f_op_f32(trunc(929f))), func_1(var_0, Struct_1(u_input.b, vec3<f32>(808f, 1074f, 2240f), vec3<i32>(u_input.b, 10766i, 1i), false, vec4<i32>(-53332i, u_input.c.x, 38375i, -36517i)), vec4<i32>(6893i, u_input.b, -2147483647i, 2147483647i)).a.wxw >> (~vec3<u32>(91397u, 18311u, 4294967295u) % vec3<u32>(32u)), select(var_0, u_input.d, true) >= ~0u, abs(vec4<i32>(u_input.c.x, u_input.e.x, -1i, u_input.e.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1408f, -283f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -512f)), _wgslsmith_f_op_f32(-482f + _wgslsmith_f_op_f32(f32(-1f) * -645f))), Struct_1(_wgslsmith_sub_i32(u_input.c.x, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(324f, 1000f, -1000f) - vec3<f32>(-2048f, -792f, 941f)), abs(select(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.e.x, -16995i, u_input.b), true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, 1i, 0i), vec4<i32>(u_input.e.x, u_input.c.x, u_input.e.x, u_input.a)), vec4<i32>(30232i, u_input.e.x, u_input.e.x, -5214i)))));
    var_1 = Struct_5(true, var_1.b, Struct_3(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.b.x, -1324f))), var_1.c).c.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.c.b, var_1.c.c.b.zy, vec2<bool>(var_1.c.c.d, var_1.c.c.d)))))), var_1.c.a));
    let var_2 = Struct_3(func_5(389f, Struct_3(func_5(_wgslsmith_f_op_f32(min(var_1.c.b.x, var_1.c.b.x)), func_5(var_1.c.c.b.x, var_1.c).c).c.c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(var_1.c.b, vec2<f32>(-123f, var_1.c.a.b.x))))), func_5(var_1.c.b.x, Struct_3(Struct_1(2147483647i, vec3<f32>(var_1.c.a.b.x, -1163f, var_1.c.a.b.x), vec3<i32>(1i, -6978i, var_1.c.a.c.x), var_1.c.a.d, var_1.c.c.e), vec2<f32>(1105f, -1553f), var_1.c.a)).c.a)).c.c, vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.c.b.x), _wgslsmith_div_f32(var_1.c.b.x, _wgslsmith_f_op_f32(round(488f)))), func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-667f, var_1.c.c.b.x)) * _wgslsmith_f_op_f32(-1218f - -777f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(154f + var_1.c.b.x))), func_5(func_5(_wgslsmith_f_op_f32(-var_1.c.b.x), Struct_3(Struct_1(54860i, vec3<f32>(267f, var_1.c.a.b.x, -856f), vec3<i32>(u_input.a, var_1.c.c.c.x, 2147483647i), true, vec4<i32>(0i, u_input.b, u_input.c.x, 0i)), vec2<f32>(-331f, var_1.c.c.b.x), Struct_1(var_1.c.c.e.x, vec3<f32>(-443f, -2748f, -1394f), vec3<i32>(var_1.c.c.a, u_input.c.x, -4758i), var_1.c.a.d, vec4<i32>(11563i, var_1.c.a.c.x, 60785i, 0i)))).c.b.x, func_5(_wgslsmith_div_f32(-170f, var_1.c.a.b.x), var_1.c).c).c).c.c);
    var var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~var_1.c.c.e, _wgslsmith_clamp_vec4_i32(-(vec4<i32>(-33758i, 27548i, 1i, var_1.c.c.e.x) << (vec4<u32>(var_0, var_0, 34899u, 1u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(reverseBits(var_1.c.c.e), var_1.c.a.e), -(~vec4<i32>(var_1.c.c.e.x, var_1.c.c.c.x, 0i, var_2.c.a)))), ~13411i);
    let var_4 = var_1.b;
    let var_5 = Struct_2(vec4<i32>(var_2.a.a, _wgslsmith_mod_i32(i32(-1i) * -1i, min(-11075i, u_input.a)) ^ var_1.c.c.a, -u_input.e.x, u_input.e.x));
    let var_6 = Struct_4(~(~0u), func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.a.b.x + var_1.c.a.b.x) - _wgslsmith_f_op_f32(func_4(vec3<f32>(var_1.c.c.b.x, -1207f, var_2.b.x), Struct_2(var_5.a)))))), var_1.c).c, !select(select(vec4<bool>(var_1.c.c.d, var_1.a, true, true), select(vec4<bool>(var_2.a.d, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(var_1.c.a.d, var_2.a.d, var_2.a.d, var_2.c.d)), vec4<bool>(true, true, true, true)), !(!vec4<bool>(false, true, false, var_2.a.d)), true), _wgslsmith_div_u32(1u, ~_wgslsmith_mult_u32(~u_input.d, 41108u)), vec2<bool>(all(vec3<bool>(!var_1.c.c.d, var_2.a.d, true)), any(vec4<bool>(any(vec2<bool>(var_1.a, var_1.a)), var_1.c.c.d, var_1.c.a.d & true, u_input.d > 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1157f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.b.x), -1283f, all(var_6.c))))), -301f, -764f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.c.c.b.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -247f)))), var_1.c.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-473f, _wgslsmith_f_op_f32(f32(-1f) * -351f))) - var_1.c.a.b.x), 1f), abs(~(~(~vec2<u32>(4294967295u, 1u)))), ~(~var_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(var_1.c.b.x, -175f), _wgslsmith_f_op_f32(exp2(var_2.a.b.x)), _wgslsmith_f_op_f32(1254f * var_6.b.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c.a.b))))));
}

