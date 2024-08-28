struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> bool {
    var var_0 = arg_1.c;
    let var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    var_0 = Struct_1(var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1037f, _wgslsmith_f_op_f32(var_0.b.x + -832f), 2147f, _wgslsmith_div_f32(2105f, 506f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, -281f, arg_1.d.x, arg_1.c.b.x) + var_0.b)), var_0.b), u_input.d.x >= -(~u_input.c.x), max(69350u, min(_wgslsmith_mult_u32(u_input.b, reverseBits(47043u)), abs(1u))), false);
    var var_2 = arg_1;
    var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.x, var_2.c.a.x), abs(vec2<u32>(u_input.b, arg_1.c.a.x))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.d, 0u), ~arg_1.c.a)), vec4<f32>(1426f, -779f, var_2.b, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-242f, _wgslsmith_f_op_f32(ceil(var_0.b.x)))))), (_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d.x, 266i, 13084i, -1i)), vec4<i32>(1i, u_input.c.x, u_input.d.x, u_input.e.x)) < ~(0i ^ u_input.d.x)) | var_0.e, min(var_0.a.x, var_0.a.x), false);
    return false || var_2.e;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<i32>) -> vec2<u32> {
    let var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(24291u, ~1u), 38176u, arg_1.c.d, reverseBits(~u_input.b)), vec4<u32>(arg_0.d, arg_1.c.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.a.x, 1u, 1u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, arg_1.c.d, 4294967295u, u_input.a), vec4<u32>(4294967295u, 62337u, arg_0.a.x, 4294967295u))), _wgslsmith_clamp_u32(1u, arg_1.c.d, arg_1.c.d) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.d, arg_0.a.x, 34318u, 85584u), vec4<u32>(u_input.a, arg_0.a.x, 1u, 1u))));
    var var_1 = var_0.x;
    var var_2 = arg_0.b.x;
    return var_0.zx ^ select(arg_0.a, arg_0.a, !vec2<bool>(true, select(true, false, arg_0.c)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<bool>(!any(vec4<bool>(true, true, false, true)), true || (28892u < _wgslsmith_clamp_u32(4294967295u, 1u, u_input.b)));
    return Struct_1(_wgslsmith_div_vec2_u32(func_4(Struct_1(vec2<u32>(1u, 54664u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, 1268f, -1445f, 1000f)), func_3(1457f, Struct_3(vec2<f32>(594f, -716f), -810f, Struct_1(vec2<u32>(u_input.b, u_input.b), vec4<f32>(1193f, 211f, 437f, -625f), var_0.x, u_input.b, false), vec2<f32>(-1480f, 558f), false), vec2<u32>(4294967295u, 1u)), ~u_input.a, true), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(753f, 973f)), _wgslsmith_div_f32(-642f, -1005f), Struct_1(vec2<u32>(4294967295u, 70279u), vec4<f32>(945f, 2854f, -1595f, 694f), var_0.x, u_input.a, false), _wgslsmith_div_vec2_f32(vec2<f32>(772f, -149f), vec2<f32>(-1012f, -161f)), any(vec3<bool>(var_0.x, var_0.x, var_0.x))), _wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.c.xx), u_input.e.xx & vec2<i32>(-2147483647i, -2147483647i))), ~vec2<u32>(u_input.a, u_input.b << (4294967295u % 32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1910f, _wgslsmith_f_op_f32(min(1000f, 574f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-698f)) * -1276f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-387f + -695f), 965f)))), _wgslsmith_f_op_f32(f32(-1f) * -1369f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-727f)))), _wgslsmith_f_op_f32(min(243f, -1000f)))), any(select(!vec3<bool>(var_0.x, true, false), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, false, var_0.x), false), true), true)), 76185u, all(!vec3<bool>(var_0.x, any(vec3<bool>(true, var_0.x, true)), var_0.x)));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_2(select(abs(min(u_input.d.x, ~u_input.e.x)), ~u_input.c.x, !func_3(_wgslsmith_f_op_f32(trunc(-1983f)), Struct_3(arg_2, arg_2.x, Struct_1(vec2<u32>(4294967295u, 4294967295u), arg_0.c.b, arg_0.c.c, arg_0.c.d, true), arg_2, true), arg_0.c.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(415f, 867f), vec2<f32>(arg_0.a.x, 399f))) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, 814f), arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.x, 2052f), vec2<f32>(-508f, -717f), vec2<bool>(true, false))) + arg_2), vec2<bool>(arg_0.c.e && arg_3, true))) - vec2<f32>(-2180f, func_2().b.x)), select(!(!vec4<bool>(arg_3, false, arg_0.e, true)), select(select(select(vec4<bool>(false, arg_3, false, arg_3), vec4<bool>(arg_0.e, false, arg_0.e, false), arg_3), select(vec4<bool>(arg_3, true, true, arg_0.c.e), vec4<bool>(true, arg_0.c.c, arg_0.c.e, true), false), !arg_3), select(vec4<bool>(true, arg_0.c.e, false, arg_0.c.c), select(vec4<bool>(true, arg_0.c.e, false, true), vec4<bool>(false, true, false, arg_3), arg_0.e), !vec4<bool>(true, arg_3, true, arg_0.e)), select(vec4<bool>(arg_0.e, arg_3, true, true), select(vec4<bool>(true, true, arg_0.c.c, false), vec4<bool>(arg_0.c.c, arg_0.c.c, arg_3, false), arg_3), vec4<bool>(false, false, arg_0.e, false))), arg_3), vec4<bool>(all(select(vec2<bool>(true, arg_3), vec2<bool>(true, false), false)) & (u_input.a == ~27602u), arg_3, arg_0.c.e, arg_0.c.e));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(arg_0.d + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1172f, -686f) * vec2<f32>(-813f, -518f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, arg_2.x)))), func_2().b.x), Struct_1(~(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.c.a.x, u_input.a), arg_0.c.a) >> (~vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_2.x, -640f, var_0.b.x), vec4<f32>(var_0.b.x, arg_2.x, -226f, arg_0.a.x)))), false, _wgslsmith_add_u32(arg_0.c.d, 49350u), arg_0.c.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(763f)) + -1000f), var_0.b.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_2.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -609f)))), any(vec3<bool>(all(var_0.d.ww) || func_3(arg_1, Struct_3(vec2<f32>(-118f, var_0.b.x), -1891f, arg_0.c, arg_0.c.b.yw, true), arg_0.c.a), var_0.c.x, true)));
    var_0 = Struct_2(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.b.x, arg_0.d.x)), _wgslsmith_f_op_f32(max(311f, 278f)))), arg_1), !(!(!vec4<bool>(true, arg_0.e, var_0.c.x, true))), !(!select(vec4<bool>(false, true, var_0.c.x, true), !var_0.c, true)));
    var_0 = Struct_2(firstTrailingBit(-42893i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.b.zx) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(-arg_0.c.b.yw)))), select(!(!(!var_0.d)), !var_0.d, !var_0.d.x), !vec4<bool>(_wgslsmith_clamp_u32(14658u, var_1.c.a.x, 0u) > arg_0.c.d, !select(arg_0.c.e, var_1.c.e, var_1.e), func_2().e, true));
    let var_2 = var_0.b.x;
    return func_2();
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1907f), _wgslsmith_f_op_f32(762f - 171f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-227f, 951f), vec2<f32>(163f, 182f))) + vec2<f32>(-385f, 357f)), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(1478f - _wgslsmith_f_op_f32(step(func_2().b.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, 1000f), -176f, select(false, false, true)))))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1374f, 873f)))))), false);
    let var_1 = ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(select(select(var_0.a.x, 1u, var_0.e), ~78117u, true), 1u), ~1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_0.b.xyz);
    var var_3 = Struct_2(2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.b.x, -1442f)))), var_2.x)), !vec4<bool>(all(select(vec3<bool>(var_0.e, var_0.c, var_0.c), vec3<bool>(var_0.e, var_0.c, var_0.e), false)), var_0.e, false, var_0.e), select(!vec4<bool>(all(vec4<bool>(var_0.c, true, var_0.e, var_0.e)), any(vec3<bool>(var_0.e, false, false)), all(vec2<bool>(var_0.c, var_0.c)), true), vec4<bool>(var_0.c, var_0.c, !(var_0.e | var_0.c), !var_0.c), !var_0.c));
    let var_4 = var_0.b.xzz;
    return Struct_2(_wgslsmith_clamp_i32(-53421i, -57415i, 2147483647i), vec2<f32>(var_3.b.x, 239f), vec4<bool>(var_3.c.x, var_3.c.x, abs(var_0.d) <= var_0.d, true || var_3.c.x), !vec4<bool>(true, false, false, ~u_input.b <= 55609u));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(func_2().a ^ arg_1.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.b, arg_1.b), _wgslsmith_f_op_vec4_f32(-arg_1.b)) * vec4<f32>(_wgslsmith_f_op_f32(-932f * arg_1.b.x), _wgslsmith_f_op_f32(arg_0.b.x * 176f), -692f, -1000f)))), true, u_input.b, all(vec4<bool>(!arg_1.e && true, all(!arg_0.c.xyy), all(select(vec3<bool>(arg_0.d.x, arg_0.c.x, true), arg_0.d.yzw, arg_0.d.zyw)), arg_0.d.x)));
    var_0 = func_5(Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.wy - var_0.b.xz) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.b.x, arg_0.b.x), arg_0.b, vec2<bool>(arg_1.e, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-311f))), func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 1129f))), true), 671f, _wgslsmith_f_op_vec2_f32(arg_0.b * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, arg_1.b.x)))))), arg_0.d.x);
    var_0 = func_5(Struct_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b.x, 763f))), var_0.b.x, Struct_1(vec2<u32>(8063u, 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-167f * -1343f)), any(vec2<bool>(var_0.c, false)) & any(vec4<bool>(true, true, false, false)), (u_input.a ^ 6161u) | arg_1.d, false), arg_0.b, true), 1000f, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(-313f)), -1357f))), false);
    let var_1 = func_2();
    let var_2 = arg_0.d.yxy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_6(func_1(), Struct_1(~vec2<u32>(u_input.a, 68541u), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1622f, 810f, -1152f))), true, 0u, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(851f)))), func_1().b.x, _wgslsmith_f_op_f32(1000f - func_1().b.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 461f, 1412f, 1045f))))));
    var var_1 = u_input.e.xz;
    var_1 = ~(-(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, -2147483647i), u_input.e.xz)));
    var var_2 = func_1();
    let var_3 = _wgslsmith_mult_u32(1u, 4294967295u);
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-var_2.b), var_2.b.x, func_2(), var_0.yx, -34998i == firstLeadingBit(_wgslsmith_add_i32(var_2.a << (0u % 32u), var_1.x)));
    var var_5 = func_2().b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, u_input.b, var_4.c.a);
}

