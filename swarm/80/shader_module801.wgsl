struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_3(arg_0, vec2<bool>(true, all(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    var_0 = Struct_3(arg_0, !vec2<bool>(!var_0.b.x, select(var_0.b.x, var_0.b.x, all(vec2<bool>(false, var_0.b.x)))));
    var var_1 = -522f;
    var var_2 = Struct_3(Struct_1(-var_0.a.a, _wgslsmith_clamp_vec4_u32(max(var_0.a.b, vec4<u32>(1u, arg_0.b.x, var_0.a.b.x, 38527u)) >> (vec4<u32>(arg_0.b.x, 69057u, arg_0.b.x, var_0.a.b.x) % vec4<u32>(32u)), vec4<u32>(54252u, _wgslsmith_clamp_u32(4294967295u, arg_0.b.x, var_0.a.b.x), _wgslsmith_clamp_u32(4294967295u, arg_0.b.x, 96485u), ~20044u), select(vec4<u32>(45755u, 3427u, 1u, var_0.a.b.x), min(vec4<u32>(11059u, 131225u, 110711u, arg_0.b.x), vec4<u32>(4294967295u, arg_0.b.x, arg_0.b.x, 56259u)), true))), vec2<bool>(all(!var_0.b), false));
    let var_3 = var_2.a;
    return -(~(-_wgslsmith_div_i32(0i, -44214i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_i32(0i, u_input.a.x), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 1u, 4294967295u, 1u)), ~min(vec4<u32>(4294967295u, 36723u, 0u, 4294967295u), vec4<u32>(17683u, 53757u, 13020u, 4294967295u)))), vec2<bool>(true, true));
    var_0 = Struct_3(Struct_1(6567i, reverseBits(~min(vec4<u32>(var_0.a.b.x, 38609u, 47752u, var_0.a.b.x), vec4<u32>(0u, var_0.a.b.x, 0u, var_0.a.b.x)))), !vec2<bool>(var_0.b.x, true));
    var var_1 = Struct_2(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -135f), abs(~var_0.a.b.x), ~var_0.a.b.x ^ (~var_0.a.b.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(30601u, 37036u), var_0.a.b.xy) % 32u)), var_0.a);
    var var_2 = countOneBits(~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 0u, var_0.a.b.x, 33889u), _wgslsmith_add_vec4_u32(var_0.a.b, vec4<u32>(4294967295u, 9111u, var_0.a.b.x, 0u))) | vec4<u32>(~22497u, _wgslsmith_mod_u32(var_1.d, 46052u) >> (_wgslsmith_mod_u32(61015u, 4294967295u) % 32u), _wgslsmith_dot_vec4_u32(var_0.a.b | vec4<u32>(var_0.a.b.x, 21884u, 0u, 1u), select(vec4<u32>(var_1.e.b.x, var_1.d, 4294967295u, 0u), var_0.a.b, true)), _wgslsmith_mult_u32(~var_1.d, _wgslsmith_add_u32(var_1.e.b.x, 0u))));
    var_1 = Struct_2(vec3<i32>(~(-20816i), -12266i, _wgslsmith_div_i32(i32(-1i) * -2147483647i, var_1.a.x)), var_1.b, _wgslsmith_mod_u32(var_2.x, ~34493u), _wgslsmith_mult_u32(reverseBits(~abs(var_0.a.b.x)), 0u), Struct_1(var_1.a.x, var_0.a.b));
    return ~(~reverseBits(~var_2.x) & _wgslsmith_mod_u32(var_0.a.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(59446u, 4294967295u, 40844u, 1u), countOneBits(vec4<u32>(4294967295u, 1u, 4294967295u, 1u)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> Struct_2 {
    let var_0 = ~(vec3<u32>(_wgslsmith_sub_u32(arg_0.a.b.x, func_3()), func_3() >> (1u % 32u), max(0u, 18284u)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(52467u << (arg_0.a.b.x % 32u), 39166u, arg_1.e.b.x >> (4294967295u % 32u)), ~abs(arg_1.e.b.zwy)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, 379f, arg_2)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b, arg_2, arg_2))), vec3<bool>(arg_0.b.x, arg_0.b.x, false))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, 1299f, arg_1.b)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(384f, 162f, arg_1.b), vec3<f32>(arg_1.b, 1024f, 716f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-395f, arg_2, -624f) * vec3<f32>(arg_1.b, -857f, arg_2))))));
    let var_2 = Struct_3(Struct_1(arg_0.a.a, vec4<u32>(4294967295u, firstLeadingBit(85021u), var_0.x, (var_0.x >> (47411u % 32u)) ^ arg_0.a.b.x)), vec2<bool>(false, select(true, var_0.x >= arg_1.c, !arg_0.b.x) && arg_0.b.x));
    let var_3 = vec3<f32>(-1279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_1.b, arg_2)))))), 1584f);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2))) * var_1.x)));
    return Struct_2(u_input.b.yxz >> (_wgslsmith_clamp_vec3_u32(min(select(vec3<u32>(4294967295u, 0u, arg_1.e.b.x), vec3<u32>(1u, 65420u, 4294967295u), vec3<bool>(false, var_2.b.x, false)), ~var_2.a.b.yxy), arg_1.e.b.xwy, var_2.a.b.zxw) % vec3<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(260f)), -549f)))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.a.b.xwx, vec3<u32>(1u, arg_1.d, 52163u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 102821u, 0u), arg_1.e.b.wzx)), _wgslsmith_div_u32(4294967295u, 69866u), 49206u) ^ (var_2.a.b.x >> (abs(var_0.x) % 32u)), ~(~min(var_0.x, ~var_2.a.b.x)), Struct_1(_wgslsmith_sub_i32(arg_0.a.a, ~1i), ~abs(var_2.a.b)));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0.e.b;
    var_0 = vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x);
    let var_1 = vec4<i32>(max(min(reverseBits(u_input.a.x), 91886i), 0i), u_input.a.x, _wgslsmith_add_i32(~arg_0.e.a ^ (arg_0.e.a << (42857u % 32u)), 1i), arg_0.a.x) << (~vec4<u32>(0u, 25403u, arg_0.d, var_0.x) % vec4<u32>(32u));
    var_0 = vec4<u32>(~_wgslsmith_dot_vec3_u32(func_4(Struct_3(Struct_1(46647i, vec4<u32>(13843u, var_0.x, var_0.x, 8950u)), vec2<bool>(false, true)), Struct_2(vec3<i32>(var_1.x, -21024i, -24208i), 433f, 48805u, 55646u, Struct_1(arg_0.e.a, vec4<u32>(var_0.x, 7442u, 16157u, 1u))), 773f, -46710i >> (0u % 32u)).e.b.yyx, ~var_0.yzx), var_0.x, _wgslsmith_mod_u32(abs(63740u), 21296u), 90591u);
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(var_0.x), ~0u, ~26046u) | firstLeadingBit(~vec3<u32>(arg_0.c, 14258u, 0u)), ~(~vec3<u32>(1u, var_0.x, var_0.x))), ~4294967295u);
    return Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x << (1u % 32u), var_1.x, _wgslsmith_mod_i32(min(-2147483647i, arg_0.a.x), -21043i & u_input.a.x)), func_4(Struct_3(arg_0.e, select(vec2<bool>(true, false), vec2<bool>(false, false), false)), func_4(Struct_3(Struct_1(arg_0.a.x, vec4<u32>(arg_0.d, var_2.x, 1u, var_0.x)), vec2<bool>(true, false)), arg_0, arg_0.b, ~3557i), _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-1538f * 938f)), u_input.b.x).a), -427f, 1u, ~firstLeadingBit(~var_2.x) & ~(firstLeadingBit(arg_0.d) >> (0u % 32u)), func_4(Struct_3(arg_0.e, vec2<bool>(true, true)), func_4(Struct_3(Struct_1(-44711i, vec4<u32>(23770u, 1822u, arg_0.d, arg_0.e.b.x)), vec2<bool>(true, false)), arg_0, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_mult_i32(-u_input.b.x, _wgslsmith_clamp_i32(var_1.x, u_input.b.x, u_input.a.x))), -581f, -arg_0.a.x).e);
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(func_4(Struct_3(Struct_1(func_2(Struct_1(1i, vec4<u32>(4294967295u, 4404u, 0u, 0u))), select(vec4<u32>(10511u, 4294967295u, 4294967295u, 79826u), vec4<u32>(15883u, 13641u, 0u, 59075u), true)), vec2<bool>(true, true)), Struct_2(~vec3<i32>(26239i, -10949i, u_input.a.x) | u_input.a, -2058f, ~48571u >> (func_3() % 32u), _wgslsmith_mult_u32(10920u, 114212u) >> (0u % 32u), Struct_1(15879i, vec4<u32>(4294967295u, 0u, 0u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -936f)) + 1f)), countOneBits(u_input.b.x)));
    var_0 = Struct_2(~vec3<i32>(0i, 16452i, u_input.a.x), 975f, func_4(Struct_3(var_0.e, vec2<bool>(true, true)), Struct_2(_wgslsmith_sub_vec3_i32(-u_input.b.xzz, countOneBits(vec3<i32>(-31544i, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(abs(505f))), abs(var_0.d), 20377u, func_4(Struct_3(Struct_1(-21605i, vec4<u32>(var_0.d, var_0.c, var_0.e.b.x, var_0.d)), vec2<bool>(true, false)), Struct_2(vec3<i32>(0i, -52790i, u_input.a.x), -463f, var_0.c, var_0.d, var_0.e), _wgslsmith_f_op_f32(sign(483f)), reverseBits(var_0.e.a)).e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, var_0.b) - _wgslsmith_f_op_f32(var_0.b * var_0.b))), -7489i).e.b.x, max(~(var_0.c ^ var_0.e.b.x) ^ 1u, reverseBits(~var_0.d << (~var_0.e.b.x % 32u))), var_0.e);
    let var_1 = min(_wgslsmith_mult_i32(firstLeadingBit(func_5(Struct_2(vec3<i32>(u_input.a.x, var_0.e.a, u_input.b.x), 1595f, 0u, 0u, var_0.e)).a.x) & -2266i, (min(0i, 2147483647i) >> ((var_0.c >> (0u % 32u)) % 32u)) & abs(_wgslsmith_add_i32(67142i, -12246i))), var_0.e.a << (var_0.e.b.x % 32u));
    var var_2 = Struct_2(vec3<i32>(2627i, -_wgslsmith_add_i32(~(-1i), ~var_0.e.a), -reverseBits(-39440i)), _wgslsmith_f_op_f32(abs(1033f)), 0u, func_5(Struct_2(-vec3<i32>(var_1, var_0.a.x, -2147483647i), _wgslsmith_f_op_f32(max(-118f, 388f)), abs(1u), ~27293u ^ var_0.c, var_0.e)).c, Struct_1(u_input.a.x, var_0.e.b));
    var var_3 = var_2.e;
    return func_5(Struct_2(~(var_2.a ^ ~u_input.b.zxx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-338f, 1581f), var_0.b, true))), ~func_5(Struct_2(var_2.a, var_2.b, var_0.d, 84270u, var_2.e)).d | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), var_0.e.b.wz ^ vec2<u32>(var_0.e.b.x, var_3.b.x)), ~17896u >> (_wgslsmith_clamp_u32(var_2.e.b.x ^ var_2.c, select(52548u, var_0.c, true), 22746u) % 32u), Struct_1(var_3.a, vec4<u32>(4294967295u, func_5(Struct_2(var_0.a, -722f, var_2.d, 1u, var_0.e)).d, ~var_3.b.x, var_2.e.b.x >> (var_0.d % 32u))))).e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(_wgslsmith_div_i32(27598i << (var_0.b.x % 32u), _wgslsmith_div_i32((u_input.a.x & u_input.b.x) & 0i, _wgslsmith_clamp_i32(abs(u_input.a.x), func_5(Struct_2(vec3<i32>(0i, u_input.a.x, -23297i), -158f, 128519u, 4294967295u, Struct_1(u_input.b.x, vec4<u32>(62350u, var_0.b.x, var_0.b.x, 75853u)))).a.x, var_0.a))), vec4<u32>(var_0.b.x, 6593u, var_0.b.x, 0u));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(-1366f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1121f)))), ~(35027u << (var_0.b.x % 32u)) != var_0.b.x)), 365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-319f - 1719f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1097f, 790f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1214f - 281f)))))));
    let var_2 = ~abs(var_0.b.xx);
    var_0 = func_5(Struct_2(-(countOneBits(vec3<i32>(-2147483647i, var_0.a, var_0.a)) | func_4(Struct_3(Struct_1(u_input.a.x, vec4<u32>(var_2.x, 65685u, var_0.b.x, 1u)), vec2<bool>(true, false)), Struct_2(u_input.b.yyw, -110f, var_0.b.x, 17386u, Struct_1(2087i, vec4<u32>(44589u, var_2.x, 1u, 1u))), -889f, u_input.b.x).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(225f)) * _wgslsmith_f_op_f32(-var_1.x)), ~var_2.x, ~(~(var_2.x ^ 0u)), func_4(Struct_3(Struct_1(-45147i, var_0.b), vec2<bool>(false, true)), Struct_2(vec3<i32>(u_input.b.x, u_input.b.x, var_0.a), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(47264u, var_2.x, var_0.b.x, 66498u)), ~4294967295u, func_5(Struct_2(u_input.b.wxw, 1335f, var_0.b.x, 1u, Struct_1(var_0.a, var_0.b))).e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(599f - -1000f), 926f), func_4(Struct_3(Struct_1(var_0.a, vec4<u32>(4294967295u, var_0.b.x, var_2.x, var_2.x)), vec2<bool>(false, true)), func_5(Struct_2(vec3<i32>(var_0.a, var_0.a, u_input.a.x), var_1.x, var_2.x, var_0.b.x, Struct_1(25701i, vec4<u32>(var_0.b.x, var_2.x, 1u, var_0.b.x)))), _wgslsmith_f_op_f32(ceil(312f)), 22777i).e.a).e)).e;
    var_0 = Struct_1(func_1().a, vec4<u32>(firstLeadingBit(~abs(var_2.x)), 49825u, 4294967295u, 49187u));
    let var_3 = select(vec2<bool>(true, true), vec2<bool>(false, any(vec3<bool>(true, true, -236f == var_1.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(-159f, vec2<u32>(0u, ~var_2.x), vec2<f32>(-467f, _wgslsmith_f_op_f32(128f * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-750f, var_1.x))))), ~select(vec2<u32>(1u & var_0.b.x, _wgslsmith_dot_vec2_u32(var_0.b.wy, vec2<u32>(var_2.x, 0u))), var_0.b.yy, select(vec2<bool>(var_3.x, var_3.x), var_3, false)));
}

