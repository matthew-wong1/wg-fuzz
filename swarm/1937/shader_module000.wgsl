struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    var var_0 = u_input.d.x;
    let var_1 = any(vec4<bool>(~u_input.a.x == -select(2147483647i, 22735i, false), true, arg_0 != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 1965f) - arg_0), all(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true)))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_0, arg_0)))), Struct_1(min(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(50131i, 21480i, u_input.d.x))), -2147483647i), 4294967295u));
    var var_3 = var_2.b;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-var_2.a), Struct_1(-(var_3.a >> (48599u % 32u)), var_2.b.b));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1424f, 1853f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1430f, 759f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(787f - -813f))), _wgslsmith_f_op_f32(-var_2.a))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -455f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, 1173f), vec2<f32>(arg_0, 346f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(666f, arg_0), vec2<f32>(113f, 2673f)))), _wgslsmith_f_op_f32(ceil(472f)) >= 265f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(arg_0)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(353f, 467f)))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 678f), 1824f));
    let var_1 = firstTrailingBit(0u);
    let var_2 = any(vec3<bool>(false, _wgslsmith_mod_i32(0i, ~u_input.b) >= u_input.c, reverseBits(u_input.c) != min(i32(-1i) * -65776i, -2147483647i)));
    let var_3 = vec4<i32>(u_input.b, u_input.a.x, firstLeadingBit(~u_input.a.x), u_input.c);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(arg_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(598f - var_0.x), 214f) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-arg_0))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 328f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1082f, arg_0) - var_0)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(794f, -610f)))), vec2<f32>(157f, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-1323f + var_0.x)))))));
    return Struct_1(26380i, var_1);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3;
    var_0 = Struct_1(~(-firstLeadingBit(u_input.b)) | -2147483647i, arg_2);
    var_0 = Struct_1(var_0.a, arg_3.b);
    var var_1 = _wgslsmith_div_u32(~arg_3.b, firstTrailingBit(~(~4294967295u)) | arg_3.b);
    let var_2 = func_2(1359f);
    return _wgslsmith_f_op_f32(ceil(arg_1.x));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1476f) - arg_1.x));
    var var_1 = vec2<bool>(all(select(vec2<bool>(arg_0, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), arg_0), true)), true);
    var var_2 = func_2(arg_1.x);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1594f), _wgslsmith_f_op_vec2_f32(func_3(1243f)).x)) - _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(sign(-129f)))).x), 506f, _wgslsmith_f_op_f32(-468f * arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-196f, arg_1.x), _wgslsmith_f_op_f32(round(1000f)))) + arg_1.x));
    let var_4 = _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(func_1(vec4<bool>(var_1.x, false, false, true), vec2<f32>(-1000f, var_3.x), 89249u, Struct_1(0i, var_2.b)))), 1133f)));
    return func_2(arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_4(var_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(618f, -706f), _wgslsmith_f_op_vec2_f32(vec2<f32>(439f, -872f) - vec2<f32>(179f, 598f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-281f, 576f))), vec2<f32>(_wgslsmith_f_op_f32(380f - 1000f), _wgslsmith_f_op_f32(func_1(vec4<bool>(var_0, var_0, true, var_0), vec2<f32>(525f, -718f), 0u, Struct_1(u_input.b, 41658u))))), true)), u_input.d.xw);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-429f + -316f) + -1226f) * 1062f))).x, func_4(false, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -506f), _wgslsmith_f_op_f32(-1502f - 423f)), vec2<f32>(-3199f, 994f), select(vec2<bool>(true, var_0), select(vec2<bool>(true, var_0), vec2<bool>(var_0, true), vec2<bool>(true, false)), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, true))))), reverseBits(-vec2<i32>(36484i, -1i))));
    var_1 = func_4(~var_2.b.b > 0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, _wgslsmith_f_op_f32(693f * var_2.a)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-240f, var_2.a) + vec2<f32>(828f, var_2.a)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-357f, var_2.a), vec2<f32>(var_2.a, 1000f)))))), vec2<i32>(-1i) * -u_input.a.xx);
    var var_3 = vec3<bool>(true, var_0, true);
    var_1 = Struct_1(abs(u_input.b), 4025u);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~17127u), ~firstLeadingBit(_wgslsmith_add_u32(0u, var_2.b.b)), 27299u, _wgslsmith_div_u32((0u & var_1.b) << (var_1.b % 32u), max(~1u, reverseBits(32234u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_1.b, var_1.b), ~3968u, ~105606u) & min(vec3<u32>(var_2.b.b, var_2.b.b, var_2.b.b) >> (vec3<u32>(0u, var_1.b, 25452u) % vec3<u32>(32u)), min(vec3<u32>(var_2.b.b, 14572u, var_1.b), vec3<u32>(var_1.b, 18877u, 0u))), ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(var_1.b, 1u, 0u)), vec3<u32>(17677u, var_2.b.b, var_2.b.b) ^ vec3<u32>(66949u, 4294967295u, var_2.b.b))), vec4<i32>(10573i, _wgslsmith_add_i32(firstTrailingBit(-76487i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, 27037i, 2147483647i)), u_input.a)), countOneBits(_wgslsmith_mult_i32(2147483647i, select(u_input.c, 0i, var_4))), _wgslsmith_clamp_i32(var_2.b.a, var_1.a >> (var_1.b % 32u), _wgslsmith_mod_i32(var_1.a, func_2(569f).a))), ~var_1.b, vec2<u32>(var_1.b, _wgslsmith_add_u32(var_2.b.b, 30402u)));
}

