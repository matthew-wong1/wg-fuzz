struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1245i, _wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(23911i, -41977i, 31764i, 2147483647i)), _wgslsmith_add_vec4_i32(~vec4<i32>(1i, 1i, 1i, -2246i), vec4<i32>(54782i, -1004i, 18093i, -1i))), countOneBits(_wgslsmith_mod_i32(-62363i, ~(-2147483647i))), ~(-2147483647i)), select(vec4<i32>(max(min(0i, 0i), -7695i), min(9759i, _wgslsmith_mult_i32(1665i, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, -1i), countOneBits(vec3<i32>(34311i, 29397i, 2147483647i))), _wgslsmith_sub_i32(0i, 0i) << (min(15540u, u_input.a.x) % 32u)), vec4<i32>(-1i, countOneBits(firstTrailingBit(-1i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(-3414i, 21129i), vec2<i32>(3957i, -8405i)), abs(i32(-1i) * -47612i)), vec4<bool>(true, true, false, true)));
    let var_1 = u_input.a.wx;
    var_0 = min(-1i, ~0i);
    var_0 = i32(-1i) * -1i;
    var_0 = 8736i ^ abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(2147483647i, 72i, -2147483647i, 3382i)) | _wgslsmith_dot_vec4_i32(vec4<i32>(61857i, -1i, -55350i, -2147483647i), -vec4<i32>(7764i, 27855i, 2147483647i, 26982i)));
    return ~2147483647i;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~(~u_input.a), reverseBits(~min(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u)))), u_input.a.x);
    let var_1 = _wgslsmith_add_i32(select(abs(abs(-14992i)) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(13540u, 21751u, var_0.x, 70060u)), u_input.a | vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, var_0.x)) % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(-22350i, -2147483647i, 1i, 2147483647i), _wgslsmith_mod_vec4_i32(-vec4<i32>(44246i, -2147483647i, -11325i, 28794i), _wgslsmith_add_vec4_i32(vec4<i32>(43923i, -19095i, -75202i, -56960i), vec4<i32>(0i, 2147483647i, 0i, 46556i)))), all(vec2<bool>(true, true)) | true), 2147483647i);
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_i32((var_1 << (var_0.x % 32u)) & _wgslsmith_sub_i32(var_1, 35852i), func_3())));
    var_0 = min(u_input.a.xx, firstLeadingBit(min(~u_input.a.xy, firstLeadingBit(u_input.a.yz))));
    var_2 = Struct_2(var_2.a);
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: vec4<i32>) -> Struct_2 {
    return Struct_2(Struct_1(arg_0.a));
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(352f, -1226f, 1362f, -1264f), vec4<f32>(-1071f, 131f, 1119f, -1868f))))))), _wgslsmith_f_op_f32(step(-1424f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1761f, -196f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(296f * -307f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(955f))) * _wgslsmith_f_op_f32(round(-571f))))), vec4<i32>(arg_0.a.a, _wgslsmith_div_i32(~arg_0.a.a, ~arg_0.a.a), ~_wgslsmith_mod_i32(func_3(), -2147483647i), min(0i, select(arg_0.a.a, arg_0.a.a, false) ^ arg_0.a.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.a.a, -1i), 34612i), arg_0.a.a, ~func_2(vec4<f32>(1000f, 1285f, 705f, -1000f), -1228f).a, -1i), -vec4<i32>(-8138i, 0i << (1u % 32u), ~1i, _wgslsmith_sub_i32(arg_0.a.a, arg_0.a.a)), firstLeadingBit((vec4<i32>(-78544i, 1i, 0i, arg_0.a.a) | vec4<i32>(-69650i, arg_0.a.a, -1781i, arg_0.a.a)) << (~u_input.a % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-267f, 235f, -356f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1703f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -287f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, 1111f, 1160f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-203f, 1308f, -444f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1307f, 1172f, 1142f), vec3<f32>(316f, -1000f, -102f))))))), !(true | (func_3() > arg_0.a.a))));
    var var_2 = arg_0;
    var var_3 = vec4<bool>(true && ((_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) < u_input.a.x) == true), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(15571u, 1u, 0u), ~u_input.a.xwy), u_input.a.xxw) == u_input.a.x, var_1.x > -742f, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true))));
    var_3 = !(!vec4<bool>(all(!vec2<bool>(var_3.x, var_3.x)), any(var_3.zx) | any(var_3.yyx), _wgslsmith_f_op_f32(-var_1.x) >= 427f, var_3.x));
    return vec4<f32>(169f, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -1106f)), -741f, 1507f);
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = u_input.a.x;
    let var_1 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(func_4(Struct_1(0i), -1484f, vec4<i32>(arg_1.x, 9463i, arg_1.x, -6111i), vec4<i32>(-1i, arg_1.x, 0i, -1i)).a))).x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1402f))))));
    let var_2 = func_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.x, 772f, 265f) + arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -516f)), -1000f, abs(~_wgslsmith_add_vec4_i32(vec4<i32>(52199i, arg_1.x, arg_1.x, 2147483647i), vec4<i32>(arg_1.x, 63690i, -1i, arg_1.x)) ^ vec4<i32>(abs(39252i), -arg_1.x, arg_1.x, ~arg_1.x)), ~vec4<i32>(_wgslsmith_dot_vec3_i32(arg_1 ^ arg_1, vec3<i32>(arg_1.x, 24048i, -1i)), firstLeadingBit(arg_1.x | -1i), _wgslsmith_div_i32(12816i, -33511i), _wgslsmith_mod_i32(-66434i, arg_1.x)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -670f);
    let var_4 = vec4<u32>(u_input.a.x, reverseBits(0u), select(5690u, countOneBits(4294967295u), -242f >= var_3) & min(u_input.a.x, min(u_input.a.x, u_input.a.x)), reverseBits(u_input.a.x)) & u_input.a;
    return func_4(Struct_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, -73193i >> (u_input.a.x % 32u)), 13913i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -180f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), ~vec4<i32>(var_2.a.a, 0i, 2147483647i, arg_1.x << (var_4.x % 32u)), max(~abs(vec4<i32>(var_2.a.a, var_2.a.a, 1i, 0i) ^ vec4<i32>(6771i, var_2.a.a, 13171i, arg_1.x)), countOneBits(~(~vec4<i32>(var_2.a.a, var_2.a.a, -1i, arg_1.x)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> bool {
    let var_0 = arg_0.a;
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1446f, -1572f, 660f, 226f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-495f, -1886f, -1062f, -107f) + vec4<f32>(-113f, 1277f, -506f, -660f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_1(func_5(vec4<f32>(659f, -202f, -196f, -1692f), vec3<i32>(arg_1.a.a, arg_0.a.a, arg_0.a.a)))).x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - 400f), 1031f)))));
    let var_2 = vec3<f32>(3127f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(func_5(vec4<f32>(450f, 286f, 1020f, -136f), vec3<i32>(0i, 34885i, 11969i)))).x), -1060f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(831f)) * _wgslsmith_f_op_f32(f32(-1f) * -967f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f * -860f)))));
    var var_3 = firstLeadingBit(~vec4<u32>(arg_2, 65650u, ~26617u, u_input.a.x));
    var_1 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) - -832f)) - var_2.x) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, false)) + 1477f) + _wgslsmith_f_op_f32(-var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(Struct_1(0i)), func_5(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(-1i)))), min(max(~vec3<i32>(1i, 1i, 13426i), vec3<i32>(2147483647i, 0i, 2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -1i, 33570i), firstTrailingBit(vec3<i32>(0i, 0i, -30269i))))), u_input.a.x);
    let var_1 = _wgslsmith_mult_vec2_i32(max(-vec2<i32>(~41147i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 19808i, 0i, 26226i), vec4<i32>(0i, -36966i, 1i, -1i))), countOneBits(-vec2<i32>(1i, 1i))), max(vec2<i32>((i32(-1i) * -2147483647i) >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, 1i, 2147483647i, 10799i)), vec4<i32>(62666i, -30931i, -753i, -1i))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(-33133i, -42195i))) ^ ~(-vec2<i32>(0i, 0i))));
    let var_2 = ~u_input.a.x;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-149f - _wgslsmith_div_f32(_wgslsmith_div_f32(541f, -337f), _wgslsmith_f_op_f32(round(533f)))), 1027f)), -830f, 1496f, 1f);
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 133f, var_3.x, var_3.x), vec4<f32>(1587f, 754f, 1072f, var_3.x)))) * vec4<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + 680f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-326f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.x))))) - _wgslsmith_f_op_vec4_f32(func_1(Struct_2(func_4(Struct_1(var_1.x), _wgslsmith_f_op_f32(-1684f - var_3.x), ~vec4<i32>(-77952i, var_1.x, -41538i, var_1.x), vec4<i32>(-1i, var_1.x, var_1.x, var_1.x)).a))));
    let var_4 = vec3<bool>(true, var_0, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_div_f32(var_3.x, var_3.x)))), _wgslsmith_f_op_f32(1000f + 449f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-770f)), _wgslsmith_div_f32(var_3.x, -539f), all(vec4<bool>(false, false, var_4.x, false)))), _wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-var_3.x)), var_3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_f_op_f32(select(-711f, 399f, true))))))), ~max(~reverseBits(vec2<u32>(28965u, 15712u)), ~(~u_input.a.yy)), _wgslsmith_f_op_f32(var_3.x * var_3.x), var_3.x);
}

