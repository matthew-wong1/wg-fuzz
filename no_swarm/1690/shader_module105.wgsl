struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> bool {
    var var_0 = Struct_1(max(arg_0.yw, arg_0.ww));
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(-u_input.a.zx);
    let var_1 = arg_1;
    var_0 = Struct_1(u_input.a.zz);
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(615f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1225f)))), any(select(vec2<bool>(true, true), select(vec2<bool>(false, arg_2), vec2<bool>(true, true), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2), arg_2)), vec2<bool>(any(vec2<bool>(true, arg_2)), func_3(u_input.a, Struct_2(258f, arg_2))))));
    let var_1 = vec3<i32>(-2147483647i, u_input.a.x, arg_0.a.x);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-var_0.a), !select(var_0.b, 14184u == u_input.b, arg_2));
    let var_3 = var_2.b;
    let var_4 = var_0;
    return vec3<f32>(1000f, _wgslsmith_f_op_f32(abs(-180f)), _wgslsmith_f_op_f32(abs(var_4.a)));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_1(-abs(vec2<i32>(u_input.a.x, u_input.a.x)) & (vec2<i32>(countOneBits(-1i), ~(-2147483647i)) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.zx);
    var var_2 = 1922f;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, -420f)) * _wgslsmith_f_op_f32(-228f + arg_1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -2037f)) - _wgslsmith_f_op_f32(1541f + _wgslsmith_f_op_f32(-arg_1.x)))), any(!select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))));
    var_0 = Struct_1(u_input.a.yw);
    return ~(~(min(u_input.b, u_input.b) >> (59566u % 32u))) & min(u_input.b, ~(~select(4294967295u, u_input.b, true)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_mod_u32(84249u, func_5(vec4<bool>(!(-2147483647i < arg_0.a.x), select(any(vec2<bool>(true, false)), true, true), any(vec2<bool>(true, true)), all(vec4<bool>(true, true, false, false)) && true), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a.x, 1i), vec2<i32>(u_input.a.x, u_input.a.x))), arg_0, !func_3(vec4<i32>(arg_0.a.x, -1i, 1i, 18469i), Struct_2(-1625f, false))))));
    let var_1 = 18947u;
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1), ~vec2<u32>(u_input.b, var_1)), ~_wgslsmith_div_u32(var_1, 4294967295u)), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32((vec3<u32>(45208u, var_1, var_1) & vec3<u32>(var_1, 5042u, 4294967295u)) | vec3<u32>(u_input.b, u_input.b, var_1), vec3<u32>(~u_input.b, ~27030u, 18439u)), _wgslsmith_div_u32(u_input.b, ~var_1), 62207u | _wgslsmith_mult_u32(101486u | u_input.b, ~var_1)));
    var_0 = 4294967295u;
    return Struct_1(abs(vec2<i32>(min(-u_input.a.x, ~2147483647i), 43444i)));
}

fn func_1() -> vec3<bool> {
    let var_0 = func_2(Struct_1(_wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.a.x, -21274i), vec2<i32>(-1i, u_input.a.x) >> (vec2<u32>(30770u, 0u) % vec2<u32>(32u)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(max(u_input.a.zw, u_input.a.wy), select(vec2<i32>(-1i, 23372i), vec2<i32>(9423i, -32562i), true), vec2<bool>(true, false)))));
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, func_2(Struct_1(var_0.a)).a.x), select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(var_0.a.x, u_input.a.x, -534i), u_input.a.yxy, true)), abs(var_0.a.x)));
    let var_2 = vec4<f32>(-333f, -212f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-142f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(236f, 513f) + 116f))) + _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2139f))), _wgslsmith_f_op_f32(min(-1219f, _wgslsmith_f_op_f32(select(-1888f, 333f, true)))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1015f) + 1052f), 700f);
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(u_input.a.zw), Struct_1(var_1.a), (true && any(vec2<bool>(true, false))) && true)).x, all(vec3<bool>(true, !(var_3 > 298f), true)));
    return select(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, var_4.b, var_4.b), vec3<bool>(var_4.b, true, var_4.b)), !vec3<bool>(true, var_4.b, var_4.b), vec3<bool>(false, var_4.b, var_4.b)), vec3<bool>(true, true, u_input.b >= 0u), select(vec3<bool>(var_4.b, var_4.b, false), select(vec3<bool>(var_4.b, true, var_4.b), vec3<bool>(true, var_4.b, false), var_4.b), u_input.b == u_input.b)), select(!vec3<bool>(!var_4.b, var_4.b, true), !vec3<bool>(var_4.b, var_4.b, false), true), vec3<bool>(any(vec4<bool>(var_4.b, !var_4.b, false, true)), true, false));
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = -(~(~_wgslsmith_clamp_vec4_i32(~u_input.a, vec4<i32>(u_input.a.x, -468i, u_input.a.x, 60740i) | vec4<i32>(u_input.a.x, 26551i, u_input.a.x, -37774i), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -2147483647i))));
    let var_1 = arg_1.b && all(vec2<bool>(func_3(_wgslsmith_clamp_vec4_i32(u_input.a, var_0, var_0), Struct_2(arg_2.x, false)), !arg_1.b));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-1368f - 302f)))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))), false);
    var_2 = 261f;
    return Struct_1(u_input.a.wy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, u_input.a.x)) << (vec2<u32>(u_input.b, 46218u) % vec2<u32>(32u)), firstLeadingBit(select(u_input.a.yy, vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(false, false)))));
    var_0 = func_6(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1585f * 885f))), -739f, !any(func_1()))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-407f * 630f)))), !(-u_input.a.x > var_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -333f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(239f, _wgslsmith_div_f32(-175f, -553f)))), -531f, _wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec2<i32>(-25996i, -12371i)), func_2(Struct_1(vec2<i32>(1i, var_0.a.x))), false)).x));
    var_0 = func_6(-1000f, Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -227f))), ~func_5(vec4<bool>(true, false, false, true), vec3<f32>(501f, 915f, 348f)) >= ~(u_input.b >> (u_input.b % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(-354f, 206f)), _wgslsmith_f_op_f32(max(-1704f, -281f)), _wgslsmith_f_op_f32(sign(-525f)), _wgslsmith_f_op_f32(step(-1762f, -329f))), vec4<f32>(-794f, _wgslsmith_f_op_f32(-334f * -164f), _wgslsmith_f_op_f32(round(1012f)), 638f), true))));
    var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1376f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 530f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-440f - -1050f) * 1f), _wgslsmith_f_op_f32(max(-837f, _wgslsmith_f_op_f32(828f + -432f))), any(vec3<bool>(true, true, true))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec2<i32>(var_0.a.x, 0i)), func_2(Struct_1(var_0.a)), all(vec4<bool>(true, false, false, false)))).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1396f))), func_1().x || func_1().x), vec4<f32>(601f, _wgslsmith_f_op_f32(f32(-1f) * -245f), 668f, _wgslsmith_f_op_f32(f32(-1f) * -222f)));
    var_0 = Struct_1(func_6(_wgslsmith_f_op_f32(ceil(166f)), Struct_2(_wgslsmith_f_op_f32(abs(-533f)), func_1().x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(163f, -1798f, -713f, 666f) * vec4<f32>(593f, 1191f, 716f, 1499f))))).a & (countOneBits(u_input.a.xx) << (_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, u_input.b), vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))));
    var_0 = func_2(Struct_1(select(countOneBits(_wgslsmith_mod_vec2_i32(u_input.a.xx, var_0.a)), func_6(_wgslsmith_f_op_f32(sign(1000f)), Struct_2(1213f, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-624f, -113f, 569f, 1387f))).a, !any(vec3<bool>(true, true, true)))));
    var_0 = Struct_1(select(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(61129i, u_input.a.x), u_input.a.x), vec2<i32>(2147483647i, -u_input.a.x)), (_wgslsmith_div_vec2_i32(vec2<i32>(16392i, u_input.a.x), vec2<i32>(-47255i, 50410i)) >> (reverseBits(vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) ^ firstLeadingBit(-u_input.a.zx), false));
    var var_1 = -_wgslsmith_div_vec4_i32(u_input.a, firstTrailingBit(_wgslsmith_mult_vec4_i32(-u_input.a, vec4<i32>(var_0.a.x, u_input.a.x, 0i, var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-393f, firstTrailingBit(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(var_1.x, 1i)), firstLeadingBit(-var_0.a))), reverseBits(countOneBits(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 25067u, u_input.b), vec3<u32>(u_input.b, u_input.b, 121101u))))), 46066u, vec3<i32>(-45941i, _wgslsmith_sub_i32(-8549i, u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a.xyw, var_1.zzw), var_0.a.x) ^ var_1.x));
}

