struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = (_wgslsmith_div_u32(1275u, abs(~u_input.b.x)) << (firstTrailingBit(~(~arg_0)) % 32u)) | 27864u;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-491f)), 647f), _wgslsmith_f_op_f32(-1f))));
    let var_2 = Struct_2(Struct_1(vec4<i32>(-36322i, _wgslsmith_clamp_i32(firstTrailingBit(arg_2.a.x), firstTrailingBit(-18949i), arg_2.a.x), ~countOneBits(11999i), u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-632f + _wgslsmith_f_op_f32(ceil(928f))))), -1084f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-338f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-859f - 199f), _wgslsmith_div_f32(809f, 287f)), 1f, _wgslsmith_div_f32(-134f, -956f)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-448f, 872f, -1113f, 1000f) * vec4<f32>(381f, 991f, -1162f, -1614f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1505f, -728f, -314f, 520f) - vec4<f32>(-1000f, -536f, -589f, -775f)))))), Struct_1(-reverseBits(u_input.a)), arg_2);
    var_0 = u_input.b.x;
    var_1 = 934f;
    return (~(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 79704i, arg_2.a.x, arg_2.a.x), vec4<i32>(2147483647i, 8631i, u_input.a.x, 0i))) & _wgslsmith_mod_vec4_i32((vec4<i32>(11790i, arg_2.a.x, 1i, arg_2.a.x) << (vec4<u32>(arg_0, 1u, arg_1.x, 1u) % vec4<u32>(32u))) >> ((vec4<u32>(1u, 0u, u_input.b.x, 1u) ^ vec4<u32>(arg_0, arg_0, 51955u, u_input.b.x)) % vec4<u32>(32u)), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, arg_2.a.x, -1i, -15693i), u_input.a, u_input.a)))) << (vec4<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(1u, firstTrailingBit(0u), u_input.b.x, 0u)), ~u_input.b.x, 0u) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    let var_0 = Struct_1(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 16089i), func_3(0u, u_input.b, Struct_1(u_input.a))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(-arg_3), -615f, _wgslsmith_f_op_f32(-arg_3))) + vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1431f, arg_3), -1192f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_2.x)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(ceil(-485f)), true)), -181f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(348f - 1109f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1070f)) * _wgslsmith_f_op_f32(1400f - arg_3))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(156f, -769f, arg_3, -662f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.x, 1303f, arg_3, arg_2.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(529f, -2063f, 1009f, arg_2.x))))), !select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, false, false), vec4<bool>(false, true, false, true))))));
    var var_2 = firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(abs(abs(0i)), var_0.a.x), _wgslsmith_mult_i32(1i, max(countOneBits(var_0.a.x), -arg_0.a.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(711f, 1000f, var_1.x))) - vec3<f32>(_wgslsmith_f_op_f32(round(-438f)), -601f, _wgslsmith_f_op_f32(-arg_3)))), _wgslsmith_f_op_vec3_f32(var_1.xyw + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.x, -2705f, -1000f))), var_1.yzz, !vec3<bool>(arg_1, arg_1, arg_1))))))));
    var_3 = var_1.yxz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-436f, var_3.x))) - -383f));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.c.x))), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(abs(arg_0.c.x)))))) * _wgslsmith_f_op_f32(func_2(arg_0.a, true, vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.b)), _wgslsmith_f_op_f32(-317f * arg_2.x)), arg_0.b)));
    let var_1 = !all(vec2<bool>(true, true));
    var var_2 = vec4<bool>(!var_1, var_1, all(!(!select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, false, false), vec3<bool>(var_1, false, var_1)))), _wgslsmith_div_i32(1i, ~_wgslsmith_mult_i32(-1i, u_input.a.x)) >= u_input.a.x);
    var_2 = vec4<bool>(all(!var_2.xx), all(vec2<bool>(true, true)) || var_2.x, true, var_1);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1616f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-630f, _wgslsmith_f_op_f32(-arg_0.b), var_1)))) + -191f));
    return ~(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(28871u, u_input.b.x)), u_input.b.x, u_input.b.x, 19183u) << (_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(u_input.b.x, 43650u, 1u, arg_1)), select(vec4<u32>(4294967295u, 56500u, u_input.b.x, u_input.b.x), vec4<u32>(60878u, 23889u, 74581u, 55822u), select(vec4<bool>(var_2.x, true, false, true), vec4<bool>(false, var_1, false, false), var_1))) % vec4<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: bool) -> bool {
    var var_0 = vec3<u32>(~48924u, 1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(2646u, u_input.b.x), 1u));
    var var_1 = _wgslsmith_mult_i32(min(u_input.a.x, 0i), _wgslsmith_add_i32(-46562i, -11686i));
    let var_2 = _wgslsmith_mod_i32(~abs(reverseBits(-u_input.a.x)), u_input.a.x);
    var_0 = abs(~u_input.b);
    var_0 = _wgslsmith_div_vec3_u32(firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, arg_0, var_0.x), func_1(Struct_2(Struct_1(u_input.a), -1000f, vec4<f32>(800f, 2823f, 1197f, 890f), Struct_1(vec4<i32>(1i, u_input.a.x, 9353i, var_2)), Struct_1(u_input.a)), arg_1, vec3<f32>(700f, -2054f, 1516f)).xzx)) ^ ~(~u_input.b), vec3<u32>(arg_1, ~(~(~4294967295u)), arg_0));
    return !(!(u_input.b.x <= _wgslsmith_mod_u32(~arg_0, _wgslsmith_div_u32(arg_0, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(2147483647i <= countOneBits(u_input.a.x << (u_input.b.x % 32u)), true, func_4(_wgslsmith_dot_vec4_u32(func_1(Struct_2(Struct_1(vec4<i32>(-7630i, -12459i, 2147483647i, -1i)), -116f, vec4<f32>(1317f, -1439f, 457f, -1354f), Struct_1(u_input.a), Struct_1(vec4<i32>(78103i, -3470i, 42752i, u_input.a.x))), 0u, vec3<f32>(1432f, -870f, -819f)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), 1u, true, any(vec2<bool>(true, true))), all(vec4<bool>(false, select(false, false, true), true, true))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, false, false)), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), any(vec3<bool>(false, false, false)), false)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), false))), any(select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(select(true, true, true), all(vec2<bool>(false, false)), all(vec2<bool>(true, false))))));
    var var_1 = Struct_5(abs(~u_input.b), vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(abs(u_input.b.xx)), func_1(Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -42287i, -2147483647i)), -1211f, vec4<f32>(657f, 1168f, -990f, -524f), Struct_1(vec4<i32>(-28833i, u_input.a.x, u_input.a.x, 1i)), Struct_1(u_input.a)), u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(422f, -449f, -234f))).xw), ~_wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(29073u, 1u)), ~4294967295u), _wgslsmith_clamp_u32(~countOneBits(4294967295u), firstLeadingBit(_wgslsmith_mod_u32(57649u, u_input.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), min(vec4<u32>(u_input.b.x, u_input.b.x, 3134u, 4294967295u), vec4<u32>(84267u, u_input.b.x, u_input.b.x, 48431u)))), u_input.b.x & 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1907f, 1000f, _wgslsmith_f_op_f32(step(-1000f, 722f)), 1435f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-997f, 194f, 464f, 873f)))), true))));
    var_1 = Struct_5(vec3<u32>(~_wgslsmith_dot_vec4_u32(var_1.b, var_1.b), 10751u, abs(var_1.a.x)), var_1.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_1.c + _wgslsmith_f_op_vec4_f32(vec4<f32>(-513f, var_1.c.x, var_1.c.x, var_1.c.x) + _wgslsmith_f_op_vec4_f32(ceil(var_1.c)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * -1000f), var_1.c.x, _wgslsmith_f_op_f32(trunc(1008f)), _wgslsmith_f_op_f32(var_1.c.x - var_1.c.x))))));
    var var_2 = Struct_5(~vec3<u32>(firstLeadingBit(min(var_1.a.x, u_input.b.x)), func_1(Struct_2(Struct_1(vec4<i32>(14217i, 0i, 0i, -2147483647i)), 1285f, var_1.c, Struct_1(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(u_input.a)), ~u_input.b.x, var_1.c.zxw).x, _wgslsmith_sub_u32(var_1.a.x | 53176u, 1u)), reverseBits(var_1.b), vec4<f32>(var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(round(-565f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -137f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_3 = Struct_3(vec3<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(26246u, 29270u, 1u), ~vec3<u32>(var_2.b.x, var_1.b.x, 4294967295u)), min(72114u, 4294967295u) ^ _wgslsmith_mult_u32(var_1.b.x, var_1.b.x)), ~(abs(1u) << (countOneBits(var_1.a.x) % 32u)), _wgslsmith_sub_u32(5908u, var_2.b.x)));
    var_3 = Struct_3(countOneBits(u_input.b));
    var_2 = Struct_5(vec3<u32>(~1u, 1u, u_input.b.x), ~(~vec4<u32>(min(14289u, var_2.b.x), 4294967295u, ~4294967295u, var_2.a.x)), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, abs(reverseBits(u_input.a.xxw)), countOneBits(~max(var_2.b, var_1.b & vec4<u32>(1u, var_3.a.x, 1u, 20134u))));
}

