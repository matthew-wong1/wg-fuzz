struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-1724f, 424f), vec2<f32>(732f, 1163f), vec2<f32>(669f, -287f), vec2<f32>(-1355f, -341f), vec2<f32>(620f, 683f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> f32 {
    let var_0 = vec3<i32>(arg_1, arg_1, u_input.d.x);
    let var_1 = countOneBits(~(-var_0 << (vec3<u32>(u_input.b, ~30961u, 15298u) % vec3<u32>(32u))));
    global0 = array<vec2<f32>, 5>();
    var var_2 = Struct_4(vec2<bool>(arg_0.a, true), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-2259f, _wgslsmith_f_op_f32(abs(1791f)))))), -360f, _wgslsmith_f_op_f32(f32(-1f) * -1314f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1541f - 3292f) - _wgslsmith_f_op_f32(-1049f + 577f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(364f + 135f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-900f, _wgslsmith_div_f32(1000f, -968f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-702f)), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1264f, -869f)) - -206f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(1692f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(840f, -433f, 704f, 2173f) + vec4<f32>(-439f, -195f, 1012f, -107f)), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(true, false, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, false, true, arg_0.a), false))), vec4<f32>(-1095f, _wgslsmith_f_op_f32(1220f * 1061f), _wgslsmith_f_op_f32(-937f * -915f), -1349f))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1429f, -1000f, -560f, 606f)), arg_0.a, all(select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(false, true, false), vec3<bool>(arg_0.a, true, arg_0.a)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-452f, -285f, -320f, 987f), vec4<f32>(679f, -1140f, 376f, 2408f), arg_0.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-119f, -914f, 2125f, -1391f))), true, arg_0.a)), 33923i);
    let var_3 = vec2<u32>(778u, ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1435u, u_input.b), vec2<u32>(u_input.b, 65655u)))) | ~select(vec2<u32>(_wgslsmith_mult_u32(48211u, u_input.b), u_input.b), abs(countOneBits(vec2<u32>(4294967295u, u_input.b))), !(!var_2.a));
    return 404f;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<f32> {
    let var_0 = arg_0.d;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(428f + _wgslsmith_f_op_f32(min(1f, 168f))), _wgslsmith_f_op_f32(exp2(arg_0.b.x)), _wgslsmith_f_op_f32(func_3(Struct_3(4294967295u != u_input.b), arg_0.e)), _wgslsmith_div_f32(108f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.a.x * -310f), 493f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(304f, var_1.x)) * var_1.yy));
    let var_3 = _wgslsmith_f_op_f32(floor(769f));
    var var_4 = var_3;
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(arg_0.b.zyz, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -876f), _wgslsmith_f_op_f32(floor(var_2.x)), 541f)))));
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(248f, -252f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1021f, -479f, 881f)) * _wgslsmith_f_op_vec3_f32(func_2(Struct_4(vec2<bool>(false, true), vec4<f32>(-391f, -970f, -1727f, -1793f), vec4<f32>(-2481f, 135f, -444f, 2097f), Struct_2(Struct_1(vec4<f32>(712f, -1060f, -316f, 545f), false, true), Struct_1(vec4<f32>(633f, -333f, -1000f, -1001f), true, true)), -1082i), Struct_1(vec4<f32>(601f, -263f, 2093f, -305f), true, true), vec4<u32>(59784u, u_input.b, u_input.b, u_input.b))))), vec3<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, false)), true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-474f, 405f, -1544f) * vec3<f32>(-589f, 371f, -380f)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-418f, 103f, 780f), vec3<f32>(273f, 469f, -745f), true))))), select(vec3<bool>(all(vec4<bool>(false, false, false, false)) || all(vec2<bool>(false, true)), !(-2147483647i <= arg_0.x), select(false, true, false)), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, any(vec4<bool>(false, true, false, false)), true), true), !vec3<bool>(10677u <= u_input.b, true, all(vec4<bool>(true, true, false, true))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), var_0.xy)));
    let var_2 = Struct_4(vec2<bool>(all(vec4<bool>(true, any(vec3<bool>(false, true, true)), true, true)), true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(118f, -1003f, var_0.x, -135f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 680f, var_0.x, var_0.x) * vec4<f32>(var_0.x, -1212f, 354f, var_0.x)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 1964f, var_1.x, var_1.x), vec4<f32>(-829f, var_0.x, var_0.x, 2513f)))), (var_0.x != var_0.x) && any(vec2<bool>(false, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, 206f, _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_div_f32(var_1.x, 830f))))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1217f, var_1.x, 225f, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -678f, 2094f, var_0.x) * vec4<f32>(var_0.x, 191f, -805f, var_0.x)), vec4<bool>(true, true, true, true))), true, true), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1497f, var_1.x, -241f, -541f))) * vec4<f32>(-251f, -1414f, 926f, 633f)), _wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_f_op_f32(-590f - var_1.x), !any(vec4<bool>(false, false, true, true)))), arg_0.x);
    let var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, _wgslsmith_sub_i32(1i, 1i), select(-2329i, u_input.a.x, u_input.d.x > 1i)), vec4<i32>(~1i, -2147483647i, -18962i, -12429i)), firstLeadingBit(_wgslsmith_sub_i32(abs(u_input.d.x), var_2.e | arg_0.x) & -u_input.c.x));
    let var_4 = !(!(var_2.d.a.b != all(vec3<bool>(true, var_2.d.b.b, var_2.a.x))));
    return vec4<bool>(true, all(!select(vec2<bool>(false, var_2.a.x), var_2.a, u_input.b >= 1u)), true, 1i != ~max(var_2.e, abs(2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(true, any(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, true, true)), true), vec4<bool>(all(vec4<bool>(false, true, true, false)), true, false, !(17465u < u_input.b)), func_1(~abs(u_input.c.xz))), vec4<bool>(func_1(select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(-27339i, -6297i)), u_input.a, vec2<bool>(true, true))).x, true, !all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true)), !all(vec4<bool>(true, false, true, true))), all(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), false), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))))));
    global0 = array<vec2<f32>, 5>();
    global0 = array<vec2<f32>, 5>();
    global0 = array<vec2<f32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~select(select(u_input.d.x, abs(u_input.a.x), true), abs(u_input.a.x), all(var_0.zw) || var_0.x), vec3<u32>((u_input.b ^ 4294967295u) >> (_wgslsmith_mult_u32(abs(1u), 32675u << (u_input.b % 32u)) % 32u), u_input.b, ~(~_wgslsmith_div_u32(4294967295u, u_input.b))), ~(-7418i));
}

