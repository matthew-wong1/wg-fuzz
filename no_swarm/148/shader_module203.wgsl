struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> f32 {
    let var_0 = u_input.a.x;
    var var_1 = -_wgslsmith_clamp_i32(arg_1.x, arg_1.x, -(~arg_1.x) << ((_wgslsmith_clamp_u32(u_input.a.x, 14653u, var_0) << (1928u % 32u)) % 32u));
    var var_2 = Struct_2(vec2<i32>(-(~reverseBits(-27005i)), _wgslsmith_mod_i32(~abs(42604i), arg_1.x)));
    var_2 = Struct_2(~(~vec2<i32>(_wgslsmith_mod_i32(arg_1.x, arg_1.x), 1i)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1115f)) * -731f), _wgslsmith_f_op_f32(2029f + -256f)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_1.c;
    var var_1 = 354f;
    let var_2 = !vec2<bool>(var_0 | all(!arg_1.d.zww), false);
    let var_3 = arg_1;
    var var_4 = Struct_1(reverseBits(_wgslsmith_add_i32(-719i, -firstLeadingBit(-1i))), firstTrailingBit(20025u), var_3.e.x, select(select(arg_1.d, select(vec4<bool>(true, var_2.x, false, true), select(arg_1.d, var_3.d, vec4<bool>(arg_1.d.x, var_2.x, false, var_3.c)), any(vec4<bool>(var_3.e.x, arg_1.d.x, true, false))), arg_1.d), var_3.d, true), !arg_1.d.yzz);
    return select(!var_3.d, !(!var_4.d), !vec4<bool>(false, !(!arg_1.c), var_3.c, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: i32) -> bool {
    let var_0 = 0i;
    let var_1 = min((vec4<i32>(arg_3 ^ var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_3, -12084i), vec3<i32>(var_0, -2147483647i, arg_0.a)), 37701i ^ arg_1.a.x, countOneBits(-25819i)) | max(vec4<i32>(arg_1.a.x, 0i, arg_0.a, 13878i), abs(vec4<i32>(-22942i, arg_3, arg_1.a.x, arg_3)))) ^ ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3, arg_1.a.x, var_0, arg_3), vec4<i32>(arg_0.a, -2147483647i, 0i, var_0), vec4<i32>(arg_3, var_0, -1i, arg_0.a)) << (vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x) % vec4<u32>(32u))), countOneBits(vec4<i32>(_wgslsmith_div_i32(30100i, var_0 << (arg_0.b % 32u)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, arg_1.a.x, arg_3), vec4<i32>(var_0, arg_0.a, 51750i, arg_1.a.x)), _wgslsmith_div_i32(var_0, -2147483647i), arg_0.e.x), -_wgslsmith_sub_i32(2147483647i, arg_0.a), _wgslsmith_sub_i32(abs(-17142i), abs(1i)))));
    var var_2 = arg_2.wyw;
    var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(arg_2.yxw)), arg_2.zxx, vec3<bool>(!(arg_0.e.x & any(vec2<bool>(true, false))), true, arg_0.e.x)));
    var_2 = _wgslsmith_f_op_vec3_f32(select(arg_2.yzy, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_2.zyw))), !arg_0.e));
    return arg_0.e.x;
}

fn func_2() -> Struct_2 {
    let var_0 = ~_wgslsmith_add_i32(-11085i, 1i);
    var var_1 = !func_4(Struct_1(~1i, 94488u & ~u_input.a.x, true, func_3(vec4<i32>(-38371i, var_0, var_0, var_0), Struct_1(var_0, 55503u, false, vec4<bool>(true, true, false, false), vec3<bool>(false, true, true))), func_3(reverseBits(vec4<i32>(var_0, var_0, var_0, 2147483647i)), Struct_1(-1i, 56202u, false, vec4<bool>(false, false, false, false), vec3<bool>(true, false, false))).xzw), Struct_2(vec2<i32>(32734i & var_0, -1i)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-661f, _wgslsmith_f_op_f32(trunc(637f)), _wgslsmith_f_op_f32(1534f - 343f), _wgslsmith_f_op_f32(abs(-192f))))), -7040i);
    var_1 = true;
    let var_2 = Struct_1(abs(19843i), u_input.a.x, false, vec4<bool>(!(true | all(vec3<bool>(false, true, false))), !(u_input.a.x < u_input.a.x) && (true | (u_input.a.x >= u_input.a.x)), false || func_3(vec4<i32>(var_0, var_0, 12129i, 2147483647i) | vec4<i32>(var_0, var_0, 1i, -28886i), Struct_1(-5500i, u_input.a.x, false, vec4<bool>(true, true, false, true), vec3<bool>(true, true, false))).x, false), vec3<bool>(false, ~(~u_input.a.x) <= abs(0u), 4294967295u == ~(u_input.a.x << (0u % 32u))));
    var_1 = false;
    return Struct_2(_wgslsmith_mult_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(var_0, var_2.a), vec2<i32>(var_2.a, 11907i)), select(~vec2<i32>(var_2.a, 0i), reverseBits(vec2<i32>(-1i, 1i)), false)) | _wgslsmith_mod_vec2_i32(-(vec2<i32>(66356i, 12525i) >> (u_input.a.wx % vec2<u32>(32u))), vec2<i32>(-1i) * -vec2<i32>(var_2.a, -19148i)));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) & firstTrailingBit(vec4<u32>(4294967295u, 0u, u_input.a.x, 84447u)), firstTrailingBit(vec4<u32>(reverseBits(21811u), reverseBits(u_input.a.x), ~u_input.a.x, 0u >> (u_input.a.x % 32u))), _wgslsmith_add_vec4_u32(u_input.a << (~u_input.a % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.a.x, 48450u, u_input.a.x))) | u_input.a;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2401f);
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, arg_1.a.x, arg_1.a.x), -(vec3<i32>(-1i) * -arg_2), vec3<i32>(i32(-1i) * -1496i, _wgslsmith_add_i32(arg_2.x, ~arg_1.a.x), max(2147483647i, -43638i)) >> (~(~(~vec3<u32>(u_input.a.x, 0u, u_input.a.x))) % vec3<u32>(32u)));
    var var_3 = -1i;
    var_3 = _wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(~arg_2.x, -var_2.x));
    return ~abs(_wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -1534i, arg_2.x, var_2.x), vec4<i32>(30893i, 1i, var_2.x, -34594i), vec4<i32>(var_2.x, arg_1.a.x, 2147483647i, arg_1.a.x)), select(~vec4<i32>(-1i, arg_2.x, 2147483647i, -17223i), ~vec4<i32>(3197i, -2147483647i, var_2.x, 0i), select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, true, arg_0)))));
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    let var_0 = select(!select(vec2<bool>(false, select(true, false, false)), vec2<bool>(false, arg_0.x), arg_0.x), !vec2<bool>(arg_0.x, true), arg_0);
    var var_1 = Struct_1(-1i, select(u_input.a.x & u_input.a.x, u_input.a.x, !var_0.x), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2))), func_3(_wgslsmith_add_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-50490i, 2442i, arg_1.x, 1i), vec4<i32>(arg_1.x, -1i, -31188i, -11101i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(arg_1.x, -2147483647i, -28724i, arg_1.x), max(vec4<i32>(arg_1.x, 0i, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -1i)))), Struct_1(~abs(arg_1.x), 29778u, !arg_0.x, !(!vec4<bool>(arg_0.x, false, false, false)), vec3<bool>(arg_0.x, true, arg_0.x))), func_3(abs(vec4<i32>(~57936i, -arg_1.x, ~arg_1.x, -1i & arg_1.x)), Struct_1(-abs(-11118i), firstLeadingBit(u_input.a.x), false, vec4<bool>(arg_0.x, all(vec3<bool>(false, arg_0.x, false)), var_0.x, true), !select(vec3<bool>(true, var_0.x, arg_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(false, false, arg_0.x)))).xww);
    var var_2 = Struct_1(var_1.a, 1u, true, vec4<bool>(any(!var_1.e), !(_wgslsmith_f_op_f32(ceil(395f)) == _wgslsmith_f_op_f32(select(-670f, -1695f, false))), !any(vec4<bool>(var_1.c, arg_0.x, var_1.c, arg_0.x)), var_0.x), var_1.d.xwx);
    var_1 = Struct_1(1i, min(u_input.a.x, _wgslsmith_sub_u32(var_1.b, (var_2.b << (4294967295u % 32u)) | 11278u)), !var_1.d.x, !vec4<bool>(true && any(var_0), var_2.e.x, !(920f >= arg_2), false), !vec3<bool>(false, !(var_0.x & true), true));
    let var_3 = func_2();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_1(~u_input.a.x, select(select(~vec2<i32>(-2147483647i, -1i), max(vec2<i32>(-5597i, -16900i), vec2<i32>(1i, 1i)), vec2<bool>(false, true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -22306i), vec2<i32>(1i, 41666i), vec2<i32>(2147483647i, -3022i)) | ~vec2<i32>(67116i, 0i), false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1134f)), _wgslsmith_div_f32(-182f, 868f))), _wgslsmith_f_op_f32(809f * _wgslsmith_div_f32(546f, -2005f)))), _wgslsmith_f_op_f32(func_6(select(vec2<bool>(false, true), vec2<bool>(u_input.a.x <= u_input.a.x, true), select(true, true, u_input.a.x <= 1u)), func_5(false, func_2(), reverseBits(max(vec3<i32>(-1i, -2147483647i, -1i), vec3<i32>(0i, 49454i, 24695i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-193f, -783f), _wgslsmith_f_op_f32(ceil(-557f)))), _wgslsmith_f_op_f32(f32(-1f) * -1651f), select(false, any(vec4<bool>(false, true, true, true)), func_3(vec4<i32>(-5078i, 1i, 11826i, 1i), Struct_1(2147483647i, u_input.a.x, false, vec4<bool>(true, false, false, true), vec3<bool>(false, false, false))).x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-564f, _wgslsmith_f_op_f32(f32(-1f) * -763f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - var_0.x))), -1000f)));
    var var_1 = -firstLeadingBit(_wgslsmith_mult_i32(1i, func_2().a.x));
    let var_2 = Struct_1(1i, ~_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), abs(3788u))), true, select(vec4<bool>(func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(-19898i, 26626i, 0i, -2147483647i), vec4<i32>(55282i, 1878i, 11069i, -2147483647i)), Struct_1(26820i, u_input.a.x, true, vec4<bool>(true, true, true, false), vec3<bool>(true, false, true))).x, true, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), (2258f > var_0.x) | true), !vec4<bool>(true, any(vec3<bool>(true, false, false)), true, func_4(Struct_1(2147483647i, 4294967295u, false, vec4<bool>(false, true, false, false), vec3<bool>(true, true, false)), Struct_2(vec2<i32>(28927i, 1i)), vec4<f32>(var_0.x, var_0.x, -272f, var_0.x), 1i)), true), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, func_4(Struct_1(7500i, u_input.a.x, false, vec4<bool>(true, false, false, false), vec3<bool>(false, true, true)), Struct_2(vec2<i32>(-26871i, 6293i)), vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x), -3867i)), true), !select(vec3<bool>(true, false, false), func_3(vec4<i32>(-2062i, 2147483647i, -2147483647i, -2147483647i), Struct_1(36499i, u_input.a.x, true, vec4<bool>(true, false, true, true), vec3<bool>(true, true, false))).wzx, func_4(Struct_1(-27591i, u_input.a.x, true, vec4<bool>(false, true, true, false), vec3<bool>(false, true, false)), Struct_2(vec2<i32>(25974i, -53237i)), vec4<f32>(-768f, var_0.x, -295f, 771f), -24132i)), true));
    let var_3 = var_2.d.xwy;
    let var_4 = Struct_2(vec2<i32>(_wgslsmith_mult_i32(-max(var_2.a, 2147483647i), var_2.a), ~countOneBits(_wgslsmith_sub_i32(30711i, 1i))));
    var var_5 = _wgslsmith_f_op_f32(func_1(u_input.a.x, select(var_4.a, ~(vec2<i32>(2147483647i, 28711i) << (vec2<u32>(u_input.a.x, 15812u) % vec2<u32>(32u))), var_3.x)));
    var_1 = var_2.a | countOneBits(-31165i);
    var_5 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -1i);
}

