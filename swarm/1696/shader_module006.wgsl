struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> i32 {
    let var_0 = vec3<bool>(true, true, false);
    var var_1 = arg_0;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-398f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1485f) * 1159f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(step(arg_0, -1140f)))), 1000f));
    var_1 = arg_0;
    let var_2 = Struct_1(vec3<bool>(true, any(var_0), any(select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(false, var_0.x, true, var_0.x)), vec4<bool>(var_0.x, var_0.x, false, var_0.x), true))), max(vec4<i32>(select(min(-19938i, 0i), -2147483647i, true), max(_wgslsmith_div_i32(4771i, -47807i), _wgslsmith_mult_i32(1i, -5480i)), 32305i, 0i), firstLeadingBit(~vec4<i32>(13611i, -15973i, 1i, -7921i)) >> (vec4<u32>(u_input.b.x, firstLeadingBit(8584u), _wgslsmith_add_u32(u_input.a.x, 23402u), u_input.b.x) % vec4<u32>(32u))), vec3<u32>(_wgslsmith_mod_u32(~1u, u_input.b.x & ~0u), _wgslsmith_mod_u32(4294967295u, ~arg_1.x), _wgslsmith_dot_vec3_u32(arg_1, (arg_1 ^ arg_1) >> (~arg_1 % vec3<u32>(32u)))), vec3<i32>(abs(abs(select(-2805i, -8035i, true))), 24919i, firstTrailingBit(1i)), var_0);
    return -_wgslsmith_dot_vec3_i32(var_2.d, ~var_2.b.wxx);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    global0 = _wgslsmith_mult_i32(~abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -51022i), ~vec2<i32>(9560i, 28466i))), -37680i);
    global0 = _wgslsmith_add_i32(20237i, -(~2147483647i | func_3(-945f, vec3<u32>(u_input.b.x, u_input.c.x, u_input.d)))) & ~_wgslsmith_add_i32(min(1i, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, 25527i)), max(max(-1i, -1i), ~0i));
    global0 = -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(9074i, -1i, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(-20943i, -6804i, 0i), vec3<i32>(4411i, 18127i, 2147483647i))), max(~vec3<i32>(24781i, -2147483647i, -57508i), vec3<i32>(64126i, 1i, -92i))), abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-53413i, 1i, 23591i), vec3<i32>(1i, -461i, 1i)), ~vec3<i32>(1i, 0i, -38158i))));
    global0 = -5288i;
    let var_0 = !vec4<bool>(arg_1.x, arg_1.x, arg_2, true | arg_1.x);
    return Struct_1(select(var_0.zwy, var_0.wyw, false), vec4<i32>(~(min(2147483647i, -2147483647i) & func_3(arg_0, vec3<u32>(30745u, u_input.c.x, 0u))), i32(-1i) * -abs(-43651i), _wgslsmith_sub_i32(-(~1i), i32(-1i) * -2147483647i), _wgslsmith_sub_i32(-(~63240i), -20083i)), reverseBits(~(~vec3<u32>(1598u, u_input.a.x, u_input.a.x))) | min(~(vec3<u32>(88248u, u_input.b.x, u_input.c.x) | vec3<u32>(u_input.b.x, u_input.d, 39412u)), vec3<u32>(0u, firstTrailingBit(41146u), ~0u)), vec3<i32>(~reverseBits(i32(-1i) * -10395i), ~_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, 14162i), ~2147483647i), firstLeadingBit(-2147483647i)), !(!var_0.wwz));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> vec3<u32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1313f + -716f))) - _wgslsmith_f_op_f32(ceil(-707f))), 1420f, arg_0.e.x)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1396f, 141f)))), -263f), select(arg_0.e, vec3<bool>(select(arg_0.a.x, true, arg_0.a.x), true, arg_0.a.x), vec3<bool>(any(vec2<bool>(true, false)), true, arg_1.x == -2147483647i)), select(true, true, !arg_0.e.x)).e, false).a.x;
    var var_1 = min(reverseBits(62257u), 74460u << (1u % 32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-571f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1239f - 994f) * _wgslsmith_f_op_f32(floor(-1393f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-873f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-206f, 835f)) * _wgslsmith_f_op_f32(2014f + -1149f)))));
    global0 = 1i;
    let var_3 = select(-25291i, 2370i, !arg_0.e.x);
    return ~(arg_0.c >> (~vec3<u32>(max(0u, 0u), ~u_input.d, arg_0.c.x) % vec3<u32>(32u)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = firstTrailingBit(arg_1.d.yz);
    var var_1 = func_2(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)))), select(!func_2(_wgslsmith_div_f32(-841f, arg_2.x), arg_1.e, false).a, !(!vec3<bool>(arg_1.a.x, arg_1.e.x, arg_1.a.x)), arg_1.a.x), any(vec3<bool>(!(var_0.x <= arg_0.x), _wgslsmith_f_op_f32(-arg_2.x) >= _wgslsmith_f_op_f32(select(arg_3.x, 1395f, false)), arg_1.e.x)));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~arg_1.c, _wgslsmith_mod_vec3_u32(var_1.c, vec3<u32>(63380u, arg_1.c.x, 1u))) & arg_1.c, var_1.c), var_1.c.x, var_1.c.x);
    var var_3 = arg_1;
    var_1 = arg_1;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-759f, arg_3.x))), arg_3.x)), _wgslsmith_f_op_f32(max(-232f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2039f), _wgslsmith_f_op_f32(f32(-1f) * -567f))))), arg_2.x));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(-vec4<i32>(~(-2147483647i), 30794i, _wgslsmith_clamp_i32(-27542i, 38634i, -11859i), ~(-2147483647i)), Struct_1(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), ~max(vec4<i32>(1i, 1i, -7240i, 1i), vec4<i32>(61077i, 59656i, -16588i, 41647i)), func_4(func_2(-1070f, vec3<bool>(true, false, true), false), select(vec2<i32>(40028i, 1i), vec2<i32>(0i, -1i), false)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -30971i, -1i), vec3<i32>(-30499i, -24296i, -2147483647i)), vec3<i32>(1i, 1i, 1i)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-606f, -915f, 1339f, -701f) - vec4<f32>(-414f, -1000f, 226f, -2350f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-486f, -404f)), vec2<f32>(328f, -722f))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(303f, _wgslsmith_f_op_f32(-836f * -1180f), _wgslsmith_f_op_f32(min(976f, 1114f)))))));
    global0 = ~(i32(-1i) * -28486i);
    var var_1 = Struct_1(select(!(!func_2(-356f, vec3<bool>(false, true, false), false).e), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true))), vec4<i32>(max(54034i, ~min(2147483647i, -1i)), _wgslsmith_clamp_i32(firstTrailingBit(~(-26628i)), _wgslsmith_mod_i32(select(2147483647i, -9597i, false), _wgslsmith_dot_vec3_i32(vec3<i32>(-2226i, 2147483647i, -1i), vec3<i32>(199i, -2147483647i, 3921i))), func_2(_wgslsmith_f_op_f32(sign(var_0.x)), vec3<bool>(false, false, false), false).b.x), -firstLeadingBit(-101909i), 1i), ~(~reverseBits(func_4(Struct_1(vec3<bool>(false, false, true), vec4<i32>(-1844i, -2147483647i, -2147483647i, -2147483647i), vec3<u32>(u_input.d, 3521u, u_input.d), vec3<i32>(-48316i, 5892i, 0i), vec3<bool>(false, true, false)), vec2<i32>(-2147483647i, 33268i)))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, -2147483647i, 1i), vec3<i32>(~1i, reverseBits(1i), ~14811i), -select(vec3<i32>(2147483647i, -1i, 10811i), vec3<i32>(1i, -5608i, 20260i), vec3<bool>(false, true, true))), ~(-_wgslsmith_div_vec3_i32(vec3<i32>(3969i, -1i, -20724i), vec3<i32>(-20398i, -2147483647i, 1i)))), !(!vec3<bool>(any(vec3<bool>(true, true, false)), true, true)));
    let var_2 = Struct_1(var_1.a, -vec4<i32>(-1i, 66302i, var_1.d.x, -1i), ~func_4(Struct_1(func_2(var_0.x, vec3<bool>(false, false, true), var_1.e.x).e, _wgslsmith_mult_vec4_i32(vec4<i32>(-40588i, var_1.b.x, var_1.d.x, 5296i), vec4<i32>(9844i, var_1.b.x, -2147483647i, var_1.b.x)), _wgslsmith_mult_vec3_u32(var_1.c, var_1.c), var_1.d, !var_1.e), vec2<i32>(-2147483647i, -var_1.b.x)), abs(var_1.d), select(vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(false, var_1.e.x, all(!var_1.e)), !vec3<bool>(true, any(var_1.e.zz), var_1.a.x & var_1.a.x)));
    var var_3 = !(!select(!vec4<bool>(true, false, true, var_1.a.x), select(select(vec4<bool>(true, var_1.a.x, true, true), vec4<bool>(true, false, false, var_2.a.x), true), select(vec4<bool>(false, var_2.e.x, false, false), vec4<bool>(true, var_2.e.x, var_1.e.x, true), vec4<bool>(true, true, var_1.e.x, false)), var_1.e.x), any(var_2.a)));
    return Struct_1(!(!vec3<bool>(true, !var_1.a.x, var_1.a.x)), select(vec4<i32>(var_1.b.x, var_1.d.x, 1i, select(var_1.b.x, var_1.d.x, var_1.a.x)), ~(-(~vec4<i32>(-8815i, var_1.b.x, -57842i, var_2.b.x))), true || !select(var_2.e.x, var_2.a.x, false)), ~((var_1.c & (vec3<u32>(4294967295u, 46999u, 4294967295u) | var_1.c)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c.x, var_1.c.x, u_input.c.x), min(vec3<u32>(1u, var_1.c.x, 1u), vec3<u32>(10221u, 76247u, var_1.c.x))) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(var_2.d | max(abs(vec3<i32>(var_1.b.x, var_1.b.x, 5663i)), vec3<i32>(var_2.d.x, var_2.b.x, var_2.b.x)), vec3<i32>(var_2.b.x, 0i, 0i)), func_2(844f, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-193f * var_0.x) - -611f), var_1.e, var_1.e.x).e, false).a);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    var var_0 = arg_1.d;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(656f * -934f) - _wgslsmith_f_op_f32(max(1041f, -621f)))) + -458f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1466f * 818f)), _wgslsmith_f_op_f32(-153f * -936f)))));
    let var_2 = Struct_1(func_2(var_1.x, func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), arg_2.a, all(!vec4<bool>(arg_1.a.x, true, arg_2.e.x, false))).e, false).e, min(select(_wgslsmith_add_vec4_i32(~arg_2.b, max(vec4<i32>(arg_1.d.x, arg_2.b.x, arg_1.b.x, arg_2.d.x), vec4<i32>(arg_2.d.x, var_0.x, -1i, arg_1.d.x))), -vec4<i32>(arg_1.d.x, -16256i, arg_2.d.x, 2147483647i), !arg_1.a.x), -vec4<i32>(arg_1.d.x ^ arg_2.d.x, _wgslsmith_clamp_i32(arg_1.b.x, var_0.x, -23743i), arg_2.b.x, -2147483647i)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_3, 19594u, 1u) ^ ~vec3<u32>(u_input.a.x, 40501u, 57308u), vec3<u32>(~arg_1.c.x, _wgslsmith_sub_u32(0u, arg_0.x), min(arg_1.c.x, 109858u))), ~func_2(416f, func_2(1000f, vec3<bool>(false, arg_2.a.x, true), arg_2.e.x).a, true).d, func_1().e);
    var_0 = vec3<i32>(max(-_wgslsmith_mult_i32(var_0.x, var_0.x), arg_2.b.x), arg_1.d.x, ~1i);
    var var_3 = Struct_1(vec3<bool>(arg_1.a.x | func_1().e.x, !arg_2.a.x, arg_2.e.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, _wgslsmith_mod_i32(1i, -2147483647i), arg_1.d.x), -vec4<i32>(arg_1.d.x, _wgslsmith_sub_i32(-16668i, arg_2.d.x), _wgslsmith_add_i32(1i, -11465i), var_2.b.x >> (1u % 32u))), arg_0, min(_wgslsmith_div_vec3_i32(var_2.d, var_2.d), var_2.b.xyx), !(!arg_1.a));
    return arg_2.e;
}

fn func_7(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global0 = ~1i;
    let var_0 = arg_1;
    let var_1 = true;
    global0 = arg_1.b.x;
    global0 = var_0.b.x;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(-_wgslsmith_mod_vec2_i32(~vec2<i32>(28763i, 19521i), -vec2<i32>(1i, 18828i)) & min(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(5188i, 0i), vec2<i32>(-2147483647i, 0i)), -22143i), _wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, -5762i), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(1i, 32080i)))));
    let var_1 = func_7(all(!func_6(vec3<u32>(0u, 1548u, 77654u), Struct_1(vec3<bool>(true, true, true), vec4<i32>(var_0.x, -1i, -1i, var_0.x), vec3<u32>(0u, 0u, 11599u), vec3<i32>(1i, -1i, var_0.x), vec3<bool>(true, false, true)), func_1(), u_input.a.x)), func_2(1518f, vec3<bool>(true, true, true), !all(vec3<bool>(false, true, false))));
    global0 = 28113i;
    var var_2 = func_1().d.xy;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-341f * -634f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(330f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1067f)) * _wgslsmith_f_op_f32(-618f * 821f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1035f - -886f), _wgslsmith_f_op_f32(1399f + -589f)) - 146f)), all(func_7(true, func_7(var_1.e.x, var_1)).a)));
    var var_4 = min(u_input.a, ~firstTrailingBit(~vec2<u32>(u_input.a.x, 0u)));
    var_4 = vec2<u32>(1u, _wgslsmith_clamp_u32(10819u & (_wgslsmith_dot_vec2_u32(u_input.c, var_1.c.xx) & 1u), ~(u_input.a.x << (select(16363u, var_1.c.x, var_1.e.x) % 32u)), u_input.a.x));
    global0 = min(-2147483647i, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(~19282u, _wgslsmith_sub_u32(~70228u, select(u_input.b.x, var_1.c.x, true)), ~_wgslsmith_mod_u32(u_input.b.x, 19047u), ~var_1.c.x)), 10447u, vec2<i32>(var_1.d.x, var_0.x), var_1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1023f, _wgslsmith_f_op_f32(f32(-1f) * -1447f))))));
}

