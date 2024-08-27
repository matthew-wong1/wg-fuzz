struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    var var_0 = Struct_3(_wgslsmith_div_u32(u_input.b, ~u_input.b & u_input.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-425f, _wgslsmith_f_op_f32(-1086f * arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), vec4<bool>(false, arg_2.x, u_input.c > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 58267u, 4294967295u, u_input.c), vec4<u32>(2917u, 77171u, u_input.c, u_input.b)), true), arg_0.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), ~(-(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 2147483647i, u_input.a, 51845i))));
    var var_1 = all(!(!vec3<bool>(all(arg_2), true, any(vec4<bool>(arg_2.x, true, arg_2.x, true)))));
    global0 = arg_0.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1000f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.b.b)), _wgslsmith_f_op_f32(-var_0.b.e)))))) + arg_0.x);
    let var_2 = 4294967295u;
    return arg_0.x;
}

fn func_2() -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1171f))), 311f));
    var var_0 = !(!any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true)));
    var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1201f + -924f) + 312f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-994f)), _wgslsmith_f_op_f32(f32(-1f) * -418f))))), (all(vec3<bool>(true, false, false)) != false) & false, vec3<bool>(false, true, true)));
    let var_2 = ~2147483647i;
    return select(vec4<bool>(false, true, true, true), vec4<bool>((~0i == -u_input.a) && (true && any(vec4<bool>(true, false, false, true))), u_input.a >= u_input.a, !((5020i | var_2) <= -41426i), all(vec2<bool>(false, true))), false);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -958f), arg_2.e) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(365f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x))))));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 27518u << (0u % 32u)), select(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(37694u, u_input.c), ~1u), 0u, _wgslsmith_sub_u32(abs(u_input.c), 19719u)), ~(~(~vec3<u32>(8663u, u_input.c, u_input.c))), !arg_2.c.zxy));
    let var_3 = _wgslsmith_f_op_f32(sign(var_0.x));
    var var_4 = Struct_3(16372u, var_1, vec4<i32>(-1i) * -countOneBits(vec4<i32>(arg_1.x, -1i, 432i, u_input.a)));
    return arg_0;
}

fn func_1(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: u32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -315f);
    let var_0 = func_4(Struct_4(vec2<f32>(1f, 1f)), arg_1, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1861f - _wgslsmith_f_op_f32(select(-1003f, 251f, true))) + -1185f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1936f - -1341f), -386f), select(vec4<bool>(true, arg_0.a.x, false, select(arg_0.a.x, arg_0.a.x, true)), func_2(), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1490f, -789f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-417f, -325f)))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-345f, -1028f)))), -1301f));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.x * -1306f)))))), -730f, !(!vec4<bool>(arg_0.a.x, 877f != var_0.a.x, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) * _wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(var_0.a.x, var_0.a.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2091f) * func_4(func_4(var_0, arg_1, Struct_1(var_0.a.x, -971f, vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x), vec2<f32>(var_0.a.x, var_0.a.x), -813f)), arg_1, Struct_1(var_0.a.x, -147f, vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), var_0.a, var_0.a.x)).a.x), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, var_0.a.x, var_0.a.x)), vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)), (arg_0.a.x == arg_0.a.x) || select(true, arg_0.a.x, arg_0.a.x), func_2().zyz)))));
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_div_f32(var_1.b, -1298f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * 732f) * _wgslsmith_f_op_f32(1092f * -1561f)))));
    let var_3 = ~u_input.c;
    return Struct_1(_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-432f * -923f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)))), _wgslsmith_div_f32(-511f, 583f), select(!var_1.c, select(var_1.c, func_2(), !var_1.c), var_1.c.x & true), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -972f), _wgslsmith_f_op_f32(370f + -688f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-569f + 947f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-706f, _wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_f_op_f32(-632f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(step(var_1.a, var_1.d.x))))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-700f, arg_1.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -426f))))));
    let var_1 = select(~reverseBits(~vec4<u32>(10613u, 1u, 20774u, 1u)), _wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.c, 33494u, arg_0.x, 0u) | vec4<u32>(arg_0.x, u_input.b, 47869u, 15791u)), ~abs(vec4<u32>(u_input.c, 4294967295u, u_input.b, u_input.b))), !select(947f == var_0.a.x, !arg_1.c.x, arg_1.c.x)) | _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 20600u), vec4<u32>(1026u, 1u, u_input.b, 21208u)), u_input.b, u_input.b & arg_0.x) & vec4<u32>(arg_0.x, ~u_input.b, 0u, 4294967295u & arg_0.x), _wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, arg_0.x, 4294967295u, arg_0.x), vec4<u32>(arg_0.x, u_input.c, arg_0.x, arg_0.x)) ^ ~vec4<u32>(u_input.b, u_input.b, arg_0.x, 1u), ~vec4<u32>(88674u, 1u, 28069u, arg_0.x)));
    var var_2 = vec3<bool>(any(vec3<bool>(func_1(Struct_5(arg_1.c.yzz), vec4<i32>(u_input.a, 2147483647i, -1i, 7549i), 15914u).c.x, !arg_1.c.x || func_2().x, true)), !arg_1.c.x, arg_1.c.x);
    var_2 = !(!select(select(arg_1.c.zyw, vec3<bool>(var_2.x, false, var_2.x), false), select(arg_1.c.wyx, !vec3<bool>(var_2.x, var_2.x, var_2.x), !vec3<bool>(false, arg_1.c.x, false)), !all(vec3<bool>(false, true, false))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.a.x))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, 870f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-140f - -3002f), 2021f)));
    return vec3<bool>(!all(!var_2.yy), (2147483647i <= firstTrailingBit(abs(u_input.a))) != var_2.x, arg_1.c.x & arg_1.c.x);
}

fn func_6(arg_0: Struct_5) -> Struct_5 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -223f) - _wgslsmith_f_op_f32(f32(-1f) * -1931f)), -411f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -293f), 679f))), all(func_2().yx) && arg_0.a.x, arg_0.a)));
    var var_0 = u_input.d >> (~vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1355f - _wgslsmith_f_op_f32(sign(-736f)))))));
    let var_1 = _wgslsmith_mod_u32(4294967295u, abs(min(u_input.c, u_input.b)));
    let var_2 = -((vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(-52374i, -11955i, u_input.a))) ^ vec3<i32>(var_0.x, abs(u_input.a) & (var_0.x ^ 2147483647i), ~(339i ^ var_0.x)));
    return Struct_5(vec3<bool>(arg_0.a.x, true == all(vec4<bool>(false, arg_0.a.x, true, true)), func_5(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, var_1, 4294967295u), vec3<u32>(var_1, u_input.c, var_1)), func_1(arg_0, vec4<i32>(70278i, -12519i, 0i, var_2.x), u_input.b)).x));
}

fn func_7(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: Struct_5) -> Struct_5 {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(18901i, 2147483647i, 0i, -min(firstTrailingBit(6342i), 1i)), vec4<i32>(arg_1.x, arg_1.x << (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2.zx, vec2<u32>(arg_2.x, arg_2.x)), vec2<u32>(0u, arg_2.x)) % 32u), -(_wgslsmith_mult_i32(u_input.d.x, 0i) << (arg_2.x % 32u)), reverseBits(-19638i)));
    var var_1 = vec3<bool>(func_5(abs(arg_2), func_1(Struct_5(func_6(arg_3).a), arg_1, ~(~38992u))).x, func_1(arg_3, vec4<i32>(arg_0.x, var_0.x, arg_0.x, _wgslsmith_mult_i32(arg_0.x, 1i)), u_input.b).c.x != (~u_input.b != ~arg_2.x), select(false, arg_3.a.x, func_2().x));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_4(Struct_4(vec2<f32>(-354f, 117f)), var_0, Struct_1(-1570f, 108f, vec4<bool>(arg_3.a.x, arg_3.a.x, var_1.x, arg_3.a.x), vec2<f32>(-939f, -548f), 1803f)).a.x), -209f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-513f + 780f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_1(arg_3, arg_0, arg_2.x).d.x)) * _wgslsmith_f_op_f32(min(-306f, _wgslsmith_div_f32(1614f, -834f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(floor(1205f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-314f - 501f), 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1733f, 1085f, 151f)), vec3<f32>(-1000f, 1293f, -242f))), var_1.x, vec3<bool>(false, arg_3.a.x, !var_1.x)))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1309f);
    var var_3 = func_1(Struct_5(select(vec3<bool>(true, true, true), func_6(arg_3).a, true)), arg_1, u_input.c);
    return func_6(arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -682f;
    let var_0 = u_input.b;
    let var_1 = func_7(select(vec4<i32>(u_input.a, u_input.d.x, _wgslsmith_dot_vec2_i32(u_input.d, u_input.d), reverseBits(0i)), (_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, -1i, 0i), vec4<i32>(u_input.d.x, u_input.a, 0i, 24975i)) << (vec4<u32>(1u, u_input.b, 4294967295u, 0u) % vec4<u32>(32u))) | vec4<i32>(u_input.d.x, u_input.d.x >> (0u % 32u), -u_input.a, _wgslsmith_mod_i32(u_input.d.x, 0i)), true), vec4<i32>(firstTrailingBit(-(~49087i)), 1i, _wgslsmith_dot_vec2_i32(u_input.d, u_input.d), 1i), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(30339u, 27130u, var_0)), vec3<u32>(~(~42645u), ~0u & select(9536u, 0u, true), var_0)), func_6(Struct_5(func_5(_wgslsmith_div_vec3_u32(vec3<u32>(12227u, 1u, var_0), vec3<u32>(u_input.b, 16515u, var_0)), func_1(Struct_5(vec3<bool>(true, true, true)), vec4<i32>(u_input.a, u_input.a, u_input.d.x, 41907i), var_0)))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) - _wgslsmith_f_op_f32(-826f + 418f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(700f, -484f))) * 694f))));
    var var_2 = -abs(_wgslsmith_clamp_i32(-2147483647i, (u_input.d.x ^ -3844i) << (0u % 32u), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(abs(912f)), -1000f, -1383f), vec3<f32>(_wgslsmith_f_op_f32(-1537f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(414f * -1248f))), 1f, _wgslsmith_f_op_f32(max(1f, -1408f))));
}

