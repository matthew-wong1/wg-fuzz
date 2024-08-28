struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-743f, arg_2.a) * vec2<f32>(arg_2.a, arg_2.a)))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1240f, -1102f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.c.a, 437f))))))), arg_2.a, _wgslsmith_add_vec3_i32(vec3<i32>(countOneBits(~arg_3), min(u_input.a, firstLeadingBit(2147483647i)), ~(-arg_3)), abs(vec3<i32>(_wgslsmith_div_i32(arg_3, -2147483647i), select(u_input.a, u_input.c, arg_1), u_input.a ^ 2147483647i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(174f * _wgslsmith_f_op_f32(arg_2.a - arg_0.c.a))), 399f), _wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b) >> (4294967295u % 32u)), 0u | u_input.d));
    let var_1 = Struct_3(var_0.a, arg_2.a, vec3<i32>(reverseBits(1i), u_input.a, -1i), -851f, ~(~u_input.d));
    let var_2 = -13282i;
    var var_3 = vec3<u32>(~0u, 31252u & reverseBits(var_0.e & select(u_input.b.x, 1u, arg_1)), countOneBits(~1u));
    let var_4 = arg_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b * arg_2.a), 687f);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(arg_0.a, arg_0.b, Struct_1(arg_0.b.a)), !select(false, 73491u != u_input.d, true), Struct_1(1f), _wgslsmith_div_i32(-abs(u_input.a), ~_wgslsmith_mod_i32(-38227i, u_input.c)))));
    var var_1 = _wgslsmith_sub_i32(~u_input.c, _wgslsmith_sub_i32(reverseBits(_wgslsmith_mod_i32(u_input.c, -1i)), ~(-u_input.c))) >> (~u_input.d % 32u);
    var var_2 = 1i;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.a)), arg_0.c.a);
    var var_4 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a) + _wgslsmith_f_op_f32(-1377f * arg_0.c.a)) - -741f))) * _wgslsmith_f_op_f32(f32(-1f) * -707f));
}

fn func_2() -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))))), _wgslsmith_f_op_f32(func_4(Struct_2(-1483f, Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(394f, Struct_1(226f), Struct_1(940f)), false, Struct_1(-403f), u_input.c))), Struct_1(479f)), vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), false), vec2<f32>(-533f, -287f))), abs(-vec3<i32>(2147483647i, u_input.c, 2147483647i) ^ (vec3<i32>(1i, 1i, 1i) << (abs(vec3<u32>(u_input.d, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)))), -332f, u_input.d);
    var var_1 = var_0.a;
    var var_2 = min(~_wgslsmith_add_vec2_u32(u_input.b, ~max(vec2<u32>(var_0.e, u_input.d), vec2<u32>(u_input.b.x, u_input.b.x))), u_input.b >> ((abs(u_input.b) << (vec2<u32>(countOneBits(u_input.d), 28866u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1640f, 1523f) * var_0.a)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_1.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a * vec2<f32>(var_0.b, var_1.x)), _wgslsmith_f_op_vec2_f32(ceil(var_0.a))))), _wgslsmith_f_op_f32(max(580f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_1.x, 533f))))))), vec3<i32>(min(~(i32(-1i) * -19275i), max(var_0.c.x, 2147483647i)), 34983i, ~1i), 364f, ~(~var_2.x));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(var_3.a, vec2<f32>(var_3.a.x, var_0.d))))))), 1978f, ~reverseBits(var_3.c), _wgslsmith_f_op_f32(-var_3.b), 27631u);
    return _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_f32(-var_3.a.x), Struct_1(2178f), Struct_1(var_1.x)), select(vec3<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), !any(vec3<bool>(false, true, true))), select(vec3<bool>(false, all(vec2<bool>(false, true)), true), vec3<bool>(true, all(vec2<bool>(false, false)), true), !all(vec3<bool>(true, true, true))), false), vec2<f32>(var_3.d, _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(max(var_3.d, var_0.b)), Struct_1(-1087f), Struct_1(-434f)), any(vec3<bool>(true, true, false)) | true, Struct_1(var_0.a.x), u_input.a)))));
}

fn func_1() -> i32 {
    var var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-276f - -1688f) - 1f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    var var_1 = ~(vec3<u32>(0u, _wgslsmith_clamp_u32(u_input.d, _wgslsmith_mult_u32(40427u, u_input.b.x), u_input.d), ~(~u_input.b.x)) << (_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(78110u, 11596u, 0u)), select(vec3<u32>(u_input.b.x, 0u, 1u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), abs(~vec3<u32>(u_input.d, 8352u, u_input.d))) % vec3<u32>(32u)));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -565f);
    return max(u_input.c, abs(-_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 6597i, -20227i, u_input.a), vec4<i32>(23428i, u_input.a, 30199i, u_input.a)), u_input.c)));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d, _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(ceil(-268f)))), vec3<f32>(-407f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b))), -298f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, 157f, arg_1.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-529f, -930f, -126f) + vec3<f32>(arg_1.b, arg_1.d, -261f)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-145f, arg_1.b, 1228f), vec3<f32>(arg_1.a.x, arg_1.b, 116f))), vec3<bool>(false, false, true))))), vec3<bool>(all(vec2<bool>(false, true)), true, true)));
    let var_1 = 58270u;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1241f, -2698f, var_0.x), vec3<f32>(var_0.x, -678f, 812f))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(arg_1.b, -288f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_1.b))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-965f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1890f))), _wgslsmith_f_op_f32(f32(-1f) * -1126f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 585f, arg_1.d) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1974f, 140f, arg_1.b)))), false && all(vec4<bool>(true, true, true, true)))));
    let var_2 = (((~arg_2.x <= arg_0) && any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false))) | all(vec3<bool>(true, true, false))) && true;
    var var_3 = arg_1;
    return Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_f32(trunc(var_3.b)), Struct_1(-251f), Struct_1(var_3.a.x)), select(vec3<bool>(var_2, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, var_2, var_2), true), var_2), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -953f), -1000f))))), Struct_1(-703f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.a.x, _wgslsmith_f_op_f32(-arg_1.a.x), any(vec3<bool>(var_2, var_2, var_2)))) * -709f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_sub_i32(_wgslsmith_mod_i32(func_1(), 2147483647i), -1i), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(751f, -1805f)))))), _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1439f), Struct_1(-307f), Struct_1(871f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1725f, 1032f)))))), vec3<i32>(26692i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-17873i, 25619i, u_input.c), vec3<i32>(u_input.c, -6771i, u_input.a)), abs(2147483647i), ~(-7676i)), u_input.a), _wgslsmith_f_op_f32(floor(-345f)), 86941u), select(vec2<i32>(~2147483647i, _wgslsmith_mod_i32(2147483647i, u_input.c)), vec2<i32>(~u_input.c, -64784i), 38343u <= abs(u_input.b.x)) & ~select(vec2<i32>(-45000i, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(59152i, 2147483647i)), vec2<bool>(true, true)));
    let var_1 = 1237f;
    let var_2 = any(vec4<bool>(false && (var_0.a <= _wgslsmith_f_op_f32(var_0.b.a - 666f)), any(vec4<bool>(var_1 <= var_0.b.a, any(vec4<bool>(false, false, false, true)), select(true, true, false), true)), any(vec2<bool>(true, all(vec2<bool>(false, false)))), all(!select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    let var_3 = _wgslsmith_mult_i32(-2147483647i, u_input.a) & u_input.c;
    let var_4 = func_5(-76835i, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1101f, -292f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1281f, -719f), vec2<f32>(-163f, var_1), vec2<bool>(true, false))))), _wgslsmith_f_op_f32(-714f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(972f)) * _wgslsmith_f_op_f32(func_3(Struct_2(381f, Struct_1(434f), Struct_1(-925f)), true, var_0.c, -2147483647i)))), vec3<i32>(-20168i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, var_3, var_3), -vec3<i32>(var_3, 72966i, u_input.a)), u_input.a), _wgslsmith_f_op_f32(trunc(-423f)), 0u), _wgslsmith_add_vec2_i32(select(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, -45626i)), max(vec2<i32>(13521i, u_input.a), vec2<i32>(-1i, var_3))), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.c, 22752i))), all(!vec4<bool>(var_2, var_2, var_2, var_2))), ~(~abs(vec2<i32>(-28821i, u_input.a))))).b;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * var_1)))));
    let var_6 = _wgslsmith_mult_u32(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 62392u, u_input.b.x, u_input.b.x))) >> (20303u % 32u), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5, 1000f) * vec2<f32>(var_4.a, -586f)), vec2<f32>(_wgslsmith_f_op_f32(floor(var_5)), -635f), !(!var_2)))), ~(~(~countOneBits(vec4<i32>(var_3, u_input.c, -1i, var_3)))), vec2<i32>(-59006i, _wgslsmith_add_i32(u_input.c, _wgslsmith_sub_i32(3620i, _wgslsmith_mod_i32(35041i, var_3)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -1128f)) + var_4.a))));
}

