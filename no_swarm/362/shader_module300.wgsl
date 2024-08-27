struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = vec3<u32>(0u, firstTrailingBit(select(u_input.a, u_input.a, true)), u_input.a);
    let var_1 = Struct_2(_wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(abs(0i), i32(-1i) * -27749i)), vec3<f32>(1f, 1f, 1f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(733f, 567f) * vec2<f32>(-793f, -844f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1136f, -300f) + vec2<f32>(630f, -849f)), select(vec2<bool>(true, true), vec2<bool>(false, false), false))))));
    var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.x, countOneBits(var_0.x)), vec3<u32>(min(~u_input.a, u_input.a) << (_wgslsmith_dot_vec2_u32(select(var_0.yy, vec2<u32>(4294967295u, 28756u), true), ~var_0.xy) % 32u), u_input.a, 48670u >> (~u_input.a % 32u)));
    var_0 = max(countOneBits(vec3<u32>(u_input.a, var_0.x, u_input.a)), firstLeadingBit(vec3<u32>(var_0.x, firstTrailingBit(u_input.a) ^ u_input.a, ~var_0.x)));
    var_0 = ~(~(~select(vec3<u32>(4294967295u, 53363u, 0u), ~vec3<u32>(80689u, 0u, 1u), vec3<bool>(false, true, true))));
    return false;
}

fn func_2(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = vec2<bool>(any(!vec4<bool>(any(vec4<bool>(true, false, true, false)), func_3(), true, true)), 2689i != arg_0.a);
    var var_1 = select(!var_0, vec2<bool>(!all(!vec2<bool>(var_0.x, var_0.x)), var_0.x), -1i <= _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, 41952i) >> (~vec2<u32>(78734u, u_input.a) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mod_i32(arg_0.a, -26663i), 0i >> (u_input.a % 32u))));
    var_1 = !select(select(select(!var_0, var_0, !var_1.x), vec2<bool>(all(vec4<bool>(var_1.x, true, var_0.x, var_1.x)), false), _wgslsmith_mult_u32(0u, u_input.a) < 54533u), var_0, var_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(arg_0.b - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-164f)), _wgslsmith_f_op_f32(f32(-1f) * -1282f)))), -572f));
    var var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(step(var_2.x, 745f)), _wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(floor(-1374f)))), arg_0.b.x), arg_0.a, select(vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(40690u, u_input.a, u_input.a, 48559u)), vec4<u32>(u_input.a, 5638u, 1u, 46412u)), u_input.a, ~max(u_input.a, u_input.a)), vec4<u32>(u_input.a, _wgslsmith_mod_u32(max(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), true));
    return select(~var_3.c, vec4<u32>(1u, countOneBits(47024u), 0u, u_input.a), true);
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: u32) -> Struct_2 {
    let var_0 = firstTrailingBit(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, u_input.a, arg_2), func_2(Struct_2(2147483647i, vec3<f32>(895f, 856f, -261f), Struct_1(vec2<f32>(-453f, -909f))))), _wgslsmith_clamp_u32(arg_1, 1u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, arg_2, 39788u, 103816u), vec4<u32>(arg_1, arg_2, arg_1, u_input.a)), vec4<u32>(1u, arg_1, 74144u, arg_2))), !all(select(arg_0, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x))));
    let var_1 = abs(vec3<i32>(1i, ~countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -13603i))), i32(-1i) * -firstTrailingBit(16050i)));
    var var_2 = false;
    let var_3 = !select(vec3<bool>(arg_0.x, _wgslsmith_f_op_f32(round(1266f)) > _wgslsmith_div_f32(-1000f, 166f), true), select(select(vec3<bool>(arg_0.x, arg_0.x, true), select(arg_0, vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), !vec3<bool>(arg_0.x, false, arg_0.x)), select(arg_0, arg_0, select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, true), arg_0)), any(vec3<bool>(arg_0.x, arg_0.x, true))), arg_0.x);
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(468f + -1634f), _wgslsmith_f_op_f32(max(1034f, -232f)), -1000f)))), var_1.x, _wgslsmith_div_vec4_u32(~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 87403u, 18736u, var_0), vec4<u32>(59446u, 1u, arg_2, var_0))), firstLeadingBit(vec4<u32>(0u, 52698u, 19929u, 22286u)) | abs(select(vec4<u32>(var_0, 1u, var_0, arg_1), vec4<u32>(4132u, arg_1, var_0, 4294967295u), arg_0.x))));
    return Struct_2(var_1.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f + -223f)), var_4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -588f))))), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-801f, _wgslsmith_f_op_f32(trunc(-1841f))), _wgslsmith_f_op_vec2_f32(-var_4.a.yx))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = Struct_1(arg_1.xy);
    var_0 = arg_2.c;
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -628f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.c.a.x, 816f)), 1000f) - _wgslsmith_f_op_f32(max(-1996f, _wgslsmith_f_op_f32(trunc(arg_2.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-962f)), arg_2.b.x)))), arg_2.a << (44721u % 32u), ~(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(35649u, u_input.a, u_input.a, 47937u), vec4<u32>(22780u, 4294967295u, 1u, u_input.a))) >> (~vec4<u32>(4294967295u, 35331u, u_input.a, u_input.a) % vec4<u32>(32u))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0));
    let var_2 = func_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, func_3(), true), true), ~(~(u_input.a ^ ~var_1.c.x)), ~_wgslsmith_add_u32(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_1.c, vec4<u32>(u_input.a, 59222u, var_1.c.x, 0u)), select(u_input.a, 1u, false))));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) + _wgslsmith_f_op_vec3_f32(-var_2.b)), var_1.a)) - var_1.a)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = !vec3<bool>(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-arg_0.a.x) < -877f, any(vec3<bool>(33935u >= var_0, any(vec4<bool>(false, true, false, false)), true)));
    let var_2 = Struct_3(vec3<f32>(arg_1.a.x, arg_0.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)), 0i, select(vec4<u32>(abs(64451u), _wgslsmith_add_u32(select(1u, arg_0.c.x, true), abs(var_0)), ~arg_0.c.x, arg_0.c.x), ~vec4<u32>(var_0, ~4294967295u, u_input.a | 52016u, ~var_0), vec4<bool>(true, all(!var_1.xz), false, true | var_1.x)));
    let var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.b, var_2.b), firstLeadingBit(min(vec2<i32>(var_2.b << (62174u % 32u), 1i), vec2<i32>(_wgslsmith_clamp_i32(-38169i, var_2.b, var_2.b), -84507i))));
    var_1 = vec3<bool>(var_1.x, !(!select(var_2.a.x >= 2080f, var_1.x, var_1.x)), true);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(func_4(vec2<f32>(704f, 853f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(657f, -545f, 746f, -709f), vec4<f32>(-1586f, -1933f, -1021f, -436f), vec4<bool>(false, true, true, true))), func_1(vec3<bool>(false, true, false), u_input.a, u_input.a), Struct_1(vec2<f32>(-1155f, 2476f)))))), _wgslsmith_mod_i32((i32(-1i) * -15221i) << (0u % 32u), (i32(-1i) * -3513i) ^ firstTrailingBit(-2147483647i)), ~vec4<u32>(select(0u, 5682u, true), u_input.a, u_input.a << (u_input.a % 32u), 4294967295u)), func_1(vec3<bool>(all(vec4<bool>(false, false, false, true)), true, false), max(~func_2(Struct_2(-1i, vec3<f32>(-984f, -522f, 936f), Struct_1(vec2<f32>(1113f, -697f)))).x, u_input.a), u_input.a).c);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.x, var_0.a.x), var_0.a))) * _wgslsmith_f_op_vec2_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1818f, var_0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1324f))), func_1(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), u_input.a, u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) + _wgslsmith_f_op_vec2_f32(-var_0.a))))).yy);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(629f, _wgslsmith_f_op_f32(round(258f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1746f, var_0.a.x, 319f, 1116f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(832f, -1395f, var_0.a.x, var_0.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(912f, -1306f, var_0.a.x, -162f) - vec4<f32>(var_0.a.x, var_0.a.x, 1065f, var_0.a.x)))), Struct_2(1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 399f, -195f) - vec3<f32>(var_0.a.x, var_0.a.x, -919f)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a))), func_5(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2224f, -322f, -686f)), ~(-4411i), vec4<u32>(4294967295u, u_input.a, 33974u, 1u)), func_1(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), min(u_input.a, u_input.a), u_input.a).c))).x, _wgslsmith_f_op_f32(f32(-1f) * -237f));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)));
    var_1 = _wgslsmith_f_op_f32(abs(var_2.a.x));
    let var_3 = ~vec3<i32>(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 17003i)), 1i), 1i << (reverseBits(~u_input.a) % 32u));
    var_1 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_vec2_f32(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(sign(-1238f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, var_2.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(596f, 694f, 1402f, var_2.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(897f, var_0.a.x, var_0.a.x, 1000f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2386f, var_0.a.x, 409f, 1000f) - vec4<f32>(var_0.a.x, var_2.a.x, var_2.a.x, 1000f))))), Struct_2(-40052i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, 429f, var_0.a.x))), func_1(vec3<bool>(true, true, true), ~firstLeadingBit(63709u), ~82340u).c), func_5(Struct_3(vec3<f32>(1165f, -612f, _wgslsmith_f_op_f32(var_2.a.x - -840f)), -2147483647i, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, 0u, 1u), select(vec4<u32>(u_input.a, u_input.a, 45831u, 1u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 4294967295u), vec4<bool>(true, false, true, false)))), func_5(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(226f, var_0.a.x, var_2.a.x)), 15359i, abs(vec4<u32>(u_input.a, u_input.a, 6126u, u_input.a))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-103f, 813f) + vec2<f32>(1165f, 2831f))))))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a.x, var_0.a.x, 336f), vec3<f32>(var_0.a.x, var_0.a.x, -858f), vec3<bool>(false, false, true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-972f, -1033f, -242f) * vec3<f32>(var_2.a.x, -708f, -1089f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a.x, 1000f, var_0.a.x))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-864f, 1125f, 1000f)))))), _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a, u_input.a | 0u), vec2<u32>(u_input.a, 0u) & _wgslsmith_mod_vec2_u32(vec2<u32>(24163u, 33896u), vec2<u32>(12451u, 4294967295u))) ^ max(~(~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 64005u) ^ (vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, 33972u) % vec2<u32>(32u)))), 68443u);
}

