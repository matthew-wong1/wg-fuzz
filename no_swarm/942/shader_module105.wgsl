struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    let var_1 = Struct_1(vec3<u32>(arg_1.a.x, u_input.c, arg_1.a.x), vec3<f32>(-492f, arg_1.b.x, _wgslsmith_f_op_f32(min(-325f, -457f))), -85575i);
    let var_2 = ~select(-2147483647i, _wgslsmith_mult_i32(72719i, -17660i), false) >> ((1u ^ select(var_0.a.x, 36765u, arg_0)) % 32u);
    let var_3 = abs(max(select(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.c, var_1.a.x, arg_1.a.x) ^ vec4<u32>(var_0.a.x, 35014u, 57246u, var_0.a.x)), ~(~vec4<u32>(4294967295u, 4294967295u, var_0.a.x, u_input.c)), vec4<bool>(select(true, arg_0, false), !arg_0, false, !arg_0)), ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(arg_1.a.x, 4294967295u, 56614u, 1u), vec4<u32>(0u, var_0.a.x, 17048u, var_0.a.x), vec4<bool>(arg_0, arg_0, true, arg_0)), vec4<u32>(4760u, u_input.c, arg_1.a.x, var_0.a.x))));
    return arg_0;
}

fn func_4(arg_0: vec4<bool>) -> vec3<f32> {
    var var_0 = Struct_2(!select(!select(arg_0.wzy, vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x)), select(arg_0.zwz, select(arg_0.yxz, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), false), select(arg_0.zyw, arg_0.wxx, vec3<bool>(arg_0.x, arg_0.x, true))), u_input.a >= u_input.d));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1101f, -109f)), -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-595f + -398f))))) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2224f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(419f - 134f), _wgslsmith_f_op_f32(select(-376f, -1000f, false))))), all(vec2<bool>(true, true))));
    var_1 = select(func_3(((u_input.b.x & u_input.b.x) == min(30792u, u_input.c)) || !any(vec3<bool>(arg_0.x, true, arg_0.x)), Struct_1(~u_input.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1226f), _wgslsmith_f_op_f32(step(1278f, 1976f)), _wgslsmith_f_op_f32(step(-791f, 140f))), ~(~1i))), all(var_0.a.xy) || (true | arg_0.x), any(vec3<bool>(any(select(vec2<bool>(true, var_0.a.x), vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(false, var_0.a.x))), true, !select(true, true, arg_0.x))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(226f, 275f, 623f) - vec3<f32>(1019f, -565f, 763f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-598f, _wgslsmith_f_op_f32(795f * -696f), _wgslsmith_f_op_f32(max(-548f, 165f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(685f, -1802f, -605f)) * vec3<f32>(723f, -719f, -913f)))))));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-337f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-109f, 542f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(657f * 1585f) + _wgslsmith_f_op_f32(123f * 895f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(722f, -1000f))))), vec2<f32>(-239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1106f)))));
    var var_1 = Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(true, !func_3(true, Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<f32>(var_0.x, var_0.x, var_0.x), -35737i)), !any(vec4<bool>(false, true, true, true)), all(vec3<bool>(true, true, true))))), ~(arg_0 << (1u % 32u)));
    var_1 = Struct_1(_wgslsmith_mult_vec3_u32(select(abs(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 14572u, u_input.b.x), var_1.a)), vec3<u32>(_wgslsmith_clamp_u32(72415u, 33571u, u_input.b.x), ~728u, 1u), func_3(true, Struct_1(u_input.b, var_1.b, var_1.c))), ~(vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x) | _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x)))), var_1.b, -var_1.c);
    var var_2 = vec4<i32>(countOneBits(u_input.d), -1i, var_1.c, arg_0 & ~var_1.c);
    let var_3 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(var_1.a.x, 0u, var_1.a.x)), u_input.b), vec3<u32>(_wgslsmith_add_u32(1u, 13898u), _wgslsmith_div_u32(1u, 27384u), ~0u)) << (_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.c, 4294967295u, 0u), vec3<u32>(var_1.a.x, var_1.a.x, u_input.b.x), vec3<bool>(false, false, true)) | vec3<u32>(u_input.b.x, u_input.c, var_1.a.x), vec3<u32>(var_1.a.x, firstLeadingBit(1u), var_1.a.x)) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(var_1.b * vec3<f32>(_wgslsmith_f_op_f32(-1000f * var_1.b.x), var_1.b.x, _wgslsmith_f_op_f32(var_0.x - 356f)))), min(~arg_0, var_2.x));
    return var_3.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_u32(u_input.b, select(~select(u_input.b, vec3<u32>(arg_0.a.x, 64014u, 4294967295u), arg_2.a), _wgslsmith_sub_vec3_u32(u_input.b, arg_0.a), _wgslsmith_f_op_f32(step(-165f, 1000f)) != -705f)), _wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_div_i32(firstLeadingBit(arg_0.c), ~(~_wgslsmith_clamp_i32(u_input.a, 26209i, 2079i))));
    var var_1 = arg_2;
    var_1 = arg_2;
    var_0 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(~var_0.a.x, min(u_input.b.x, u_input.c) << (0u % 32u), func_2(~u_input.d)), firstLeadingBit(var_0.a) << (var_0.a % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-497f * var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.b.x)), 480f, true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x)))), -574f), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, ~firstTrailingBit(-1i), -23987i, _wgslsmith_div_i32(select(var_0.c, 33776i, true), abs(arg_0.c))), -(~(vec4<i32>(arg_0.c, u_input.d, -25558i, var_0.c) | vec4<i32>(arg_0.c, arg_0.c, var_0.c, 1i)))));
    var_1 = arg_2;
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    var var_1 = _wgslsmith_mod_i32(u_input.a, 1i) >> (1u % 32u);
    var var_2 = _wgslsmith_dot_vec4_i32(-select(-vec4<i32>(u_input.a, 35454i, -1i, 2147483647i), firstLeadingBit(~vec4<i32>(u_input.a, 18230i, 0i, 6020i)), vec4<bool>(-2147483647i == u_input.d, true, var_0 >= var_0, func_1(Struct_1(u_input.b, vec3<f32>(-1650f, -2504f, var_0), u_input.d), true, Struct_2(vec3<bool>(true, false, false))))), _wgslsmith_clamp_vec4_i32(-reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -30839i, u_input.a), vec4<i32>(31779i, -2045i, u_input.a, -30312i))), -(vec4<i32>(14620i, u_input.a, -1i, u_input.a) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(39410i, u_input.a, u_input.a, 11648i), vec4<i32>(-4292i, -67794i, u_input.a, u_input.d))), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.a, u_input.d), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), vec4<i32>(1i, 1i, u_input.a, 1i)), u_input.d, min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_mult_i32(u_input.a, -17187i)), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(1i, u_input.a, -3437i)), ~vec3<i32>(-1174i, 50738i, -3577i)))));
    var_2 = 39430i;
    var var_3 = 2147483647i;
    let var_4 = Struct_2(vec3<bool>(any(vec4<bool>(true, true, false, false)), true, select(false, any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)) & func_1(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec3<f32>(var_0, 174f, var_0), u_input.d), false, Struct_2(vec3<bool>(true, false, true))))));
    var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 8309i, u_input.a, u_input.d)), ~vec4<i32>(u_input.a, u_input.d, 1i, u_input.a)) & u_input.a, u_input.a) << (func_2(_wgslsmith_mod_i32(-18233i, 1i)) % 32u);
    var var_5 = -max(select(vec4<i32>(u_input.d, u_input.a & 23590i, _wgslsmith_div_i32(-8920i, u_input.d), u_input.a ^ -2147483647i), reverseBits(countOneBits(vec4<i32>(-8360i, u_input.d, -1i, 33730i))), select(vec4<bool>(var_4.a.x, var_4.a.x, var_4.a.x, true), vec4<bool>(true, false, var_4.a.x, var_4.a.x), vec4<bool>(var_4.a.x, false, var_4.a.x, var_4.a.x))), select(abs(vec4<i32>(-17007i, 5903i, -2147483647i, u_input.d)), max(~vec4<i32>(u_input.d, -2147483647i, -28669i, u_input.a), vec4<i32>(u_input.a, -2147483647i, -18159i, u_input.a)), select(false, true, select(true, false, var_4.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(564f + -555f) - _wgslsmith_f_op_f32(f32(-1f) * -617f)) * var_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))))), 872f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-158f, var_0)))))));
}

