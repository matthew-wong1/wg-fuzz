struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> u32 {
    global0 = all(vec4<bool>(!any(vec4<bool>(true, true, false, true)), all(vec2<bool>(true, any(vec3<bool>(true, true, true)))), !all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), any(vec3<bool>(true, true, true))));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(sign(-342f)), true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b.zy * _wgslsmith_f_op_vec2_f32(arg_2.b.xy + arg_2.b.wz)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + arg_2.b.x)), _wgslsmith_f_op_f32(-arg_2.b.x)), vec2<f32>(arg_1, arg_2.b.x), true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x - -195f) + _wgslsmith_f_op_f32(403f * 254f)), 1107f, 147f) + arg_2.b.xyy));
    let var_2 = Struct_4(i32(-1i) * -(~15673i << (~arg_2.a.x % 32u)), u_input.a);
    var var_3 = Struct_1(vec2<u32>(~(~7646u ^ arg_0), 1u));
    return 36697u;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(u_input.a.zz, ~vec4<u32>(46113u, 28334u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 28194u, 4294967295u), vec3<u32>(1u, 1u, 1u)), ~abs(0u)));
    var var_1 = Struct_4(_wgslsmith_add_i32(var_0.a.x, _wgslsmith_div_i32(16149i << (_wgslsmith_mult_u32(1u, var_0.b.x) % 32u), ~1i)), vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_div_i32(u_input.b, 24312i), 14774i), u_input.a.x, 1i, -1i));
    var_0 = Struct_3(var_0.a, ~(vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.b.www, vec3<u32>(0u, var_0.b.x, var_0.b.x)), var_0.b.x, ~0u, ~10151u) << (select(vec4<u32>(99369u, var_0.b.x, 10670u, var_0.b.x), var_0.b, vec4<bool>(true, true, true, true)) % vec4<u32>(32u))));
    var var_2 = vec3<i32>(countOneBits(countOneBits(var_0.a.x)), _wgslsmith_dot_vec4_i32(-u_input.a, vec4<i32>(_wgslsmith_sub_i32(0i, u_input.b), 26800i, _wgslsmith_dot_vec2_i32(var_1.b.yw & vec2<i32>(-1i, u_input.b), _wgslsmith_sub_vec2_i32(var_0.a, u_input.a.ww)), -(i32(-1i) * -91638i))), -24498i);
    var var_3 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(4294967295u, ~var_0.b.x), func_3(~var_0.b.x, _wgslsmith_f_op_f32(max(1675f, -458f)), Struct_2(vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), vec4<f32>(915f, 1013f, 125f, 747f), Struct_1(var_0.b.ww), -20948i)) << ((_wgslsmith_dot_vec3_u32(var_0.b.zwx, var_0.b.yyz) >> (0u % 32u)) % 32u)));
    return Struct_3(-_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a, firstLeadingBit(vec2<i32>(8730i, var_2.x))), -_wgslsmith_mod_vec2_i32(var_2.yz, var_2.xy)), ~var_0.b);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: i32, arg_3: vec2<i32>) -> Struct_2 {
    global0 = select(any(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)), !(!all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))), false || !any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))));
    global0 = true;
    let var_0 = u_input.a.zyw;
    var var_1 = arg_0;
    global0 = !(_wgslsmith_f_op_f32(f32(-1f) * -163f) != _wgslsmith_f_op_f32(-arg_1.a.x));
    return Struct_2(vec3<u32>(var_1.b.x, arg_0.b.x, 6145u), _wgslsmith_div_vec4_f32(vec4<f32>(830f, _wgslsmith_f_op_f32(min(-1686f, arg_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(498f, -463f, arg_1.a.x, arg_1.a.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.a.x, 911f, arg_1.a.x, arg_1.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 1385f, arg_1.a.x, -1045f) * vec4<f32>(2775f, arg_1.a.x, arg_1.a.x, arg_1.a.x))))), Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(782u, 92361u), countOneBits(vec2<u32>(4294967295u, 0u)), firstLeadingBit(var_1.b.yw))), _wgslsmith_div_i32(51245i, 7690i));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<f32>) -> f32 {
    global0 = !((select(false, all(vec2<bool>(true, false)), true) & true) & true);
    global0 = true;
    let var_0 = vec4<bool>(any(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), false, false, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_2.wxw)))));
    let var_2 = func_4(func_2(), Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(step(721f, arg_1)), arg_2.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -366f, 439f) * vec3<f32>(1091f, arg_2.x, arg_1)))), -70755i, u_input.a.zy);
    return -1000f;
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    global0 = any(vec3<bool>(true, false, !(!select(true, false, true))));
    var var_0 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, -1012f, arg_2))) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, 859f), vec3<f32>(arg_0, -232f, arg_0))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-688f, -469f, 173f)) * vec3<f32>(-422f, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, 158f, arg_2))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1221f, -821f)))))));
    let var_1 = Struct_3(-(~firstLeadingBit(_wgslsmith_mod_vec2_i32(u_input.a.wx, vec2<i32>(-2147483647i, u_input.b)))), vec4<u32>(4294967295u, 1u, func_2().b.x, 55390u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-557f, arg_2)), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-arg_2))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -479f), _wgslsmith_f_op_f32(select(683f, var_0.a.x, true)))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-467f)), arg_0, arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(823f, var_0.a.x, -145f))));
    let var_3 = Struct_5(vec3<f32>(_wgslsmith_div_f32(arg_2, arg_2), arg_2, _wgslsmith_f_op_f32(-712f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_0.a.x)))));
    return Struct_1(vec2<u32>(_wgslsmith_sub_u32(abs(var_1.b.x), var_1.b.x >> (4294967295u % 32u)), var_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~u_input.a.zzy, _wgslsmith_f_op_f32(298f + 1312f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1026f, -2194f, 379f, -175f))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-771f, _wgslsmith_f_op_f32(1000f * -250f)))))), Struct_4(u_input.b, vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zw, u_input.a.yy), i32(-1i) * -8144i, -5345i, 1i)), _wgslsmith_f_op_f32(f32(-1f) * -228f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), 1171f));
    var var_2 = vec2<bool>(false, any(select(vec3<bool>(any(vec3<bool>(false, true, false)), false, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))));
    var var_3 = vec2<i32>(-1i) * -vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a ^ vec4<i32>(u_input.a.x, u_input.b, 12595i, -1i)));
    let var_4 = u_input.a.wz;
    let var_5 = _wgslsmith_clamp_u32(~var_0.a.x, ~_wgslsmith_mult_u32(~var_0.a.x, 4294967295u), 0u);
    var var_6 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1648f) - -1532f), _wgslsmith_f_op_f32(1369f + _wgslsmith_f_op_f32(-1021f * 985f)), _wgslsmith_f_op_f32(sign(-635f))) + vec3<f32>(897f, -617f, -1000f)), vec3<i32>(~abs(~var_4.x), -1i, firstLeadingBit(-17638i)), _wgslsmith_f_op_f32(abs(-372f)), var_5, var_0.a.x << (((~38421u >> (~var_0.a.x % 32u)) ^ ~func_4(Struct_3(u_input.a.xx, vec4<u32>(29960u, var_5, 1u, 1u)), Struct_5(vec3<f32>(1234f, -971f, -669f)), -1i, var_4).a.x) % 32u));
}

