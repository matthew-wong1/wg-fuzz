struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>) -> vec3<f32> {
    let var_0 = min(_wgslsmith_add_vec2_i32(vec2<i32>(~u_input.a, abs(arg_0.x)), countOneBits(arg_0)), -arg_0);
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1847f, 918f, 263f), vec3<f32>(-400f, -443f, 450f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 594f, -1114f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2080f, -1355f, -754f), vec3<f32>(453f, -212f, -1913f), vec3<bool>(true, false, true))), _wgslsmith_div_vec3_f32(vec3<f32>(162f, 1234f, -1000f), vec3<f32>(-1063f, -865f, -493f)), vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(248f, -847f, -1711f), vec3<f32>(-836f, 2171f, -1104f), vec3<bool>(true, false, true))))), vec3<f32>(-119f, _wgslsmith_f_op_f32(abs(-350f)), _wgslsmith_f_op_f32(trunc(-1129f))))));
    let var_2 = select(select(select(vec2<bool>(any(vec4<bool>(false, true, false, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(true, true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), true), false), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))), !vec2<bool>(_wgslsmith_f_op_f32(sign(var_1.b.x)) != _wgslsmith_div_f32(2042f, var_1.a.x), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))));
    var var_3 = arg_0;
    var_3 = arg_0;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(ceil(var_1.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, false)), -1638f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x) + var_1.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x * 1434f), var_1.b.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, -347f, var_1.a.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-545f, var_1.b.x, var_1.a.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)))));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(181f, 961f, -733f)), _wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(u_input.a, u_input.a)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-665f * -869f), 1533f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-147f, -442f, 599f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, -472f))))))))) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(1i, u_input.a))).x), _wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -50924i), vec2<i32>(1i, u_input.a)))).x));
    let var_1 = firstTrailingBit(~abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, 16005i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(234f, var_0.x)))), -1914f, var_0.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(~vec2<i32>(27460i, u_input.a))).x, var_0.x), -1198f, var_0.x));
    return Struct_3(!select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-649f, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_vec3_f32(func_3(abs(vec2<i32>(19358i, var_1.x)))).x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(u_input.a, u_input.a))).x)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-741f, -1225f, -263f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, 1672f), vec4<bool>(true, false, true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 412f, 1000f)))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(253f - 1f))));
    var var_1 = 1u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - -470f) + -359f);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_3.zyz, arg_0.b.xww, arg_0.a.x)) - arg_1.b.yzz))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_3.wxw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.xwz))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(833f, arg_3.x, -352f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.zyy) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, 143f, -826f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-307f, 1788f, 1344f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2, arg_3.x, -1188f)))))), _wgslsmith_mod_vec2_i32(vec2<i32>(min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-1i, -2147483647i)), 0i), 0i), -_wgslsmith_div_vec2_i32(select(vec2<i32>(-4296i, u_input.a), vec2<i32>(u_input.a, 35101i), vec2<bool>(false, arg_1.a.x)), -vec2<i32>(u_input.a, -1i))), arg_3.zyw, countOneBits(u_input.a));
    var_0 = arg_0.b.x;
    return _wgslsmith_clamp_i32(-7667i, ~min(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_div_i32(var_3.c.x, var_3.c.x), 16331i)), reverseBits(u_input.a));
}

fn func_5(arg_0: i32) -> Struct_1 {
    let var_0 = ~0u;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-404f)) + _wgslsmith_f_op_f32(ceil(-556f))), 378f);
    let var_2 = arg_0;
    var var_3 = any(vec3<bool>(!func_2().a.x, all(vec3<bool>(true, true, true)), ~var_0 >= 77337u)) != true;
    var var_4 = firstTrailingBit(~var_0);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -262f, 550f), _wgslsmith_f_op_vec3_f32(vec3<f32>(909f, 1073f, var_1.x) + vec3<f32>(var_1.x, 1041f, -412f)), vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-479f * 173f), -707f))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = func_5(func_4(func_2(), Struct_3(vec2<bool>(true, true), vec4<f32>(-1365f, _wgslsmith_div_f32(-180f, 648f), -583f, _wgslsmith_f_op_f32(max(-348f, -1088f)))), _wgslsmith_mult_u32(arg_0.x, arg_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2560f * -1000f), _wgslsmith_f_op_f32(max(-869f, 316f)), -1334f, _wgslsmith_f_op_f32(step(108f, 128f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2126f, -431f, -1273f, -1000f), vec4<f32>(190f, 2283f, -994f, -138f)))))));
    let var_1 = Struct_4(Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_0.b.x + -264f), _wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x - -1173f)))), _wgslsmith_mod_i32(~_wgslsmith_div_i32(u_input.a, max(-29046i, u_input.a)), 2697i));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -435f), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(sign(var_0.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-2678f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(-var_0.b))), var_0.a)));
    var var_2 = Struct_5(var_1, abs(arg_1), var_1.a.a.x, ~vec4<i32>(~0i, func_4(Struct_3(var_1.a.a, var_1.a.b), Struct_3(vec2<bool>(true, var_1.a.a.x), var_1.a.b), arg_0.x, var_1.a.b) | arg_1.x, abs(arg_1.x), _wgslsmith_clamp_i32(-1i, 2357i, 1i) << (~arg_0.x % 32u)));
    var var_3 = any(select(!(!(!vec3<bool>(var_2.a.a.a.x, false, var_2.a.a.a.x))), select(vec3<bool>(true, var_2.c, !var_1.a.a.x), vec3<bool>(select(false, var_1.a.a.x, var_2.c), true, var_1.a.a.x), !vec3<bool>(var_2.a.a.a.x, true, var_2.c)), select(0u <= select(27483u, 1u, var_1.a.a.x), !var_1.a.a.x || true, true)));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.x)), var_1.a.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b.x - -1023f) * _wgslsmith_f_op_f32(max(var_1.a.b.x, 496f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.b.x, _wgslsmith_f_op_f32(select(var_2.a.a.b.x, var_2.a.a.b.x, var_2.a.a.a.x)), false && var_1.a.a.x))), func_5(-8846i).b.x, _wgslsmith_f_op_f32(abs(var_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_sub_vec4_u32(max(abs(~vec4<u32>(49718u, 4294967295u, 17573u, 4294967295u)), select(~vec4<u32>(1u, 1u, 1u, 72240u), vec4<u32>(66110u, 1776u, 1u, 35335u), vec4<bool>(true, true, false, true))), vec4<u32>(49356u, firstTrailingBit(27797u), 1u, 99138u)), vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), 0i | -(~u_input.a)));
    var var_1 = 38749i;
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(-_wgslsmith_mod_i32(u_input.a, i32(-1i) * -11895i), abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(50713i, u_input.a, u_input.a), vec3<i32>(0i, 2147483647i, u_input.a) >> (vec3<u32>(0u, 1u, 4294967295u) % vec3<u32>(32u))))), abs(~(_wgslsmith_sub_vec2_i32(vec2<i32>(29818i, u_input.a), vec2<i32>(-2507i, u_input.a)) >> (vec2<u32>(24707u, 0u) % vec2<u32>(32u)))));
    var_1 = _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, abs(_wgslsmith_mod_i32(-var_2.x, var_2.x))), var_2.x);
    let var_3 = Struct_3(vec2<bool>(any(vec3<bool>(false, true, all(vec4<bool>(false, false, false, true)))), 4294967295u == _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u))), vec4<f32>(func_2().b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-695f)), var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(1367f + _wgslsmith_div_f32(-508f, _wgslsmith_f_op_f32(-var_0.b.x)))));
    var_1 = firstTrailingBit(-u_input.a);
    var var_4 = Struct_4(Struct_3(vec2<bool>(var_3.a.x == true, any(vec3<bool>(var_3.a.x, true, var_3.a.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, 126f, var_3.b.x, -277f)), var_3.b))), -abs(func_4(func_2(), var_3, 11054u, _wgslsmith_f_op_vec4_f32(var_3.b * vec4<f32>(-612f, -1000f, var_3.b.x, -1498f)))));
    let var_5 = _wgslsmith_mult_u32(57279u, ~(~0u));
    var var_6 = vec2<i32>(1i, u_input.a) << (abs(vec2<u32>(var_5, _wgslsmith_sub_u32(var_5, max(var_5, var_5)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~var_5, 4294967295u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_4.a.b.x + _wgslsmith_f_op_f32(select(var_3.b.x, var_3.b.x, !var_4.a.a.x))), var_3.b.x)));
}

