struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-1000f, -2350f), vec2<f32>(845f, 1403f), vec2<f32>(-228f, -1365f), vec2<f32>(1229f, 1000f), vec2<f32>(230f, -1765f), vec2<f32>(1000f, -1140f), vec2<f32>(1130f, 453f), vec2<f32>(-2043f, -352f), vec2<f32>(689f, -931f), vec2<f32>(-987f, 157f), vec2<f32>(-357f, 947f), vec2<f32>(-217f, 635f), vec2<f32>(485f, 965f), vec2<f32>(1141f, -135f), vec2<f32>(-391f, -947f), vec2<f32>(-494f, -1163f), vec2<f32>(-711f, 149f), vec2<f32>(1209f, 1630f), vec2<f32>(103f, -626f), vec2<f32>(-420f, -548f), vec2<f32>(416f, -650f), vec2<f32>(-1719f, -1928f), vec2<f32>(239f, 1000f), vec2<f32>(2015f, 345f), vec2<f32>(749f, -1194f), vec2<f32>(-514f, -1616f), vec2<f32>(-1000f, -678f), vec2<f32>(-588f, 1000f), vec2<f32>(-201f, -1251f), vec2<f32>(-579f, 369f), vec2<f32>(-216f, -1000f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = vec2<i32>(~abs(_wgslsmith_clamp_i32(firstLeadingBit(-5085i), 1i, ~6460i)), _wgslsmith_dot_vec4_i32(~(-_wgslsmith_div_vec4_i32(vec4<i32>(30154i, 6834i, -21129i, 0i), vec4<i32>(486i, -977i, 26038i, 2147483647i))), _wgslsmith_div_vec4_i32(firstTrailingBit(abs(vec4<i32>(0i, 55347i, -43631i, 65683i))), vec4<i32>(0i, 6101i, 56699i, 2147483647i) << (~u_input.b % vec4<u32>(32u)))));
    let var_1 = Struct_1(select(_wgslsmith_add_vec2_i32(~vec2<i32>(-28734i, var_0.x), -vec2<i32>(-14459i, var_0.x)), vec2<i32>(var_0.x, var_0.x) >> (u_input.b.zz % vec2<u32>(32u)), false) | vec2<i32>(_wgslsmith_div_i32(-24841i, var_0.x) & _wgslsmith_add_i32(var_0.x, var_0.x), -(~var_0.x)), var_0.x, ~((~vec2<u32>(1u, 1u) ^ ~u_input.b.yy) >> (u_input.b.wz % vec2<u32>(32u))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_div_vec2_i32(~vec2<i32>(var_1.b, 0i), firstLeadingBit(vec2<i32>(var_1.b, var_0.x))) << (_wgslsmith_div_vec2_u32(vec2<u32>(var_1.c.x, 8870u), _wgslsmith_add_vec2_u32(var_1.c, vec2<u32>(u_input.a.x, u_input.b.x))) % vec2<u32>(32u)), var_0.x, var_1.c), 0u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(341f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-624f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1242f)), 358f))));
    let var_3 = Struct_2(var_1, vec3<bool>(true, select(arg_1, all(vec2<bool>(arg_0, false)) && true, all(!vec4<bool>(arg_1, arg_1, true, false))), any(select(!vec2<bool>(arg_1, arg_0), vec2<bool>(false, arg_1), !vec2<bool>(arg_0, arg_1)))), ~vec4<u32>(max(u_input.a.x, countOneBits(u_input.b.x)), abs(min(72860u, var_1.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, u_input.a.x, 19635u, 0u), vec4<u32>(u_input.c.x, 2202u, var_2.a.c.x, 31639u) << (u_input.b % vec4<u32>(32u))), u_input.a.x));
    var_0 = vec2<i32>(i32(-1i) * -(~36672i), _wgslsmith_clamp_i32(-31447i, _wgslsmith_div_i32(select(var_0.x, var_1.b, true) & _wgslsmith_mult_i32(-10369i, -23794i), reverseBits(var_0.x)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_3.a.b, var_2.a.b), vec3<i32>(-1i, -67493i, var_2.a.b)))));
    return 2147483647i;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec2<f32>, 31>();
    global0 = array<vec2<f32>, 31>();
    global0 = array<vec2<f32>, 31>();
    let var_0 = Struct_3(Struct_1(-(~countOneBits(vec2<i32>(0i, arg_2.a.b))), -12344i & func_3(arg_0 >= arg_0, any(arg_2.b)), max(arg_2.a.c, ~arg_2.c.yx >> (vec2<u32>(81977u, 4294967295u) % vec2<u32>(32u)))), arg_1.c.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))) + arg_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 262f) - _wgslsmith_f_op_f32(min(arg_0, -2510f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(866f)) + _wgslsmith_f_op_f32(sign(arg_0)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(u_input.c.x), select(arg_1.c.x, 1u, arg_2.b.x)) >> ((~u_input.b.x << (arg_2.a.c.x % 32u)) % 32u), 31u)]));
    return Struct_1(var_0.a.a, -12019i, abs(arg_2.c.zw));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = func_2(-453f, Struct_1(_wgslsmith_mod_vec2_i32(~vec2<i32>(0i, 2147483647i), abs(countOneBits(vec2<i32>(arg_0, arg_0)))), -2147483647i, vec2<u32>(u_input.c.x, 1u << ((46244u >> (u_input.a.x % 32u)) % 32u))), Struct_2(Struct_1(-vec2<i32>(arg_0, 13012i), ~arg_0, vec2<u32>(1u, firstLeadingBit(4294967295u))), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true), vec4<u32>(u_input.c.x, 54927u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, 1u), u_input.b.x), _wgslsmith_mult_u32(19332u, 0u))));
    global0 = array<vec2<f32>, 31>();
    let var_1 = !(-2147483647i < (~(arg_0 << (36560u % 32u)) | _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_0.a.x, var_0.a.x, -48740i, -8176i), vec4<i32>(1i, 7812i, arg_0, arg_0)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, 0i, arg_0, arg_0), vec4<i32>(2147483647i, arg_0, arg_0, -76168i)))));
    var var_2 = Struct_2(func_2(670f, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(539f)), _wgslsmith_f_op_f32(sign(142f))), Struct_1(_wgslsmith_add_vec2_i32(var_0.a, var_0.a), arg_0, vec2<u32>(0u, u_input.c.x)), Struct_2(Struct_1(vec2<i32>(arg_0, 52300i), arg_0, vec2<u32>(55748u, 11328u)), !vec3<bool>(var_1, true, true), ~u_input.c)), Struct_2(Struct_1(vec2<i32>(3057i, 1i) >> (vec2<u32>(var_0.c.x, 53583u) % vec2<u32>(32u)), -54765i, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, var_0.c.x), u_input.a, vec2<u32>(74855u, 0u))), vec3<bool>(!var_1, !var_1, all(vec4<bool>(var_1, var_1, false, var_1))), max(u_input.c, u_input.b))), !(!(!select(vec3<bool>(var_1, false, true), vec3<bool>(false, false, false), var_1))), _wgslsmith_sub_vec4_u32(reverseBits(u_input.c), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 5336u), u_input.b.x, var_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 18414u, u_input.c.x), firstTrailingBit(vec3<u32>(u_input.a.x, u_input.c.x, u_input.b.x))))));
    let var_3 = 3180u;
    return _wgslsmith_f_op_f32(-1259f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(261f, -451f))))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1.c;
    var var_1 = Struct_2(arg_1.a, arg_1.b, vec4<u32>(~4294967295u ^ u_input.a.x, _wgslsmith_sub_u32(90763u, abs(arg_1.c.x)), ~(~u_input.c.x), u_input.b.x));
    let var_2 = Struct_2(Struct_1(var_1.a.a, -1i, firstTrailingBit(~select(vec2<u32>(arg_1.c.x, 41328u), vec2<u32>(44981u, u_input.b.x), vec2<bool>(false, true)))), select(vec3<bool>(!any(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), !(!arg_1.b.x), false), vec3<bool>(!(!arg_1.b.x), all(select(vec4<bool>(true, arg_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(true, var_1.b.x, false, var_1.b.x), vec4<bool>(false, var_1.b.x, var_1.b.x, false))), all(select(vec3<bool>(false, false, arg_1.b.x), var_1.b, vec3<bool>(false, false, false)))), false), arg_1.c);
    let var_3 = var_1.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-604f, -1838f, -2124f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -2728f) - vec3<f32>(765f, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 660f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(809f, arg_0, arg_0) * vec3<f32>(arg_0, -191f, -3459f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1516f, 900f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(178f, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -894f, arg_0) * vec3<f32>(-234f, -1000f, 700f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-214f, arg_0, -119f)) + vec3<f32>(-657f, -339f, 1736f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 684f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1097f, arg_0) - vec3<f32>(1000f, arg_0, -464f)))))));
    return Struct_2(arg_1.a, select(!arg_1.b, select(vec3<bool>(var_2.a.a.x < var_2.a.a.x, false, any(vec3<bool>(false, arg_1.b.x, arg_1.b.x))), select(!vec3<bool>(arg_1.b.x, true, var_2.b.x), select(vec3<bool>(arg_1.b.x, var_2.b.x, true), vec3<bool>(false, var_2.b.x, true), var_2.b.x), true), var_1.b.x), true), firstTrailingBit(~vec4<u32>(firstLeadingBit(22532u), ~var_2.a.c.x, var_3.c.x, ~43053u)));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> vec2<i32> {
    global0 = array<vec2<f32>, 31>();
    var var_0 = _wgslsmith_clamp_vec4_i32(max(reverseBits(firstTrailingBit(~vec4<i32>(-47936i, arg_0.a.b, -2147483647i, arg_0.a.a.x))), abs(firstTrailingBit(vec4<i32>(arg_0.a.b, 34083i, 14487i, arg_0.a.b))) ^ ~vec4<i32>(2147483647i, arg_0.a.b, arg_0.a.a.x, -23473i)), vec4<i32>(firstTrailingBit(-1i) ^ (_wgslsmith_div_i32(arg_0.a.b, -16968i) & firstTrailingBit(arg_0.a.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.a.x, -38438i, arg_0.a.b), -vec3<i32>(arg_0.a.a.x, 2147483647i, 2147483647i)) ^ ~1i, arg_0.a.a.x, -17338i), ~(-abs(vec4<i32>(6367i, 7202i, arg_0.a.b, 0i)) << (arg_0.c % vec4<u32>(32u))));
    global0 = array<vec2<f32>, 31>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1631f, 540f, 426f)))))))) + vec3<f32>(_wgslsmith_f_op_f32(max(-1009f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2032f + -460f))))), _wgslsmith_f_op_f32(1101f + 557f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2032f, -1738f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, 624f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.zz, global0[_wgslsmith_index_u32(7274u, 31u)], false)), global0[_wgslsmith_index_u32(~4294967295u, 31u)])));
    return arg_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(func_5(func_4(_wgslsmith_f_op_f32(func_1(0i)), Struct_2(Struct_1(vec2<i32>(7793i, -12205i), 0i, u_input.a), vec3<bool>(false, false, true), vec4<u32>(0u, 4294967295u, u_input.b.x, 0u))), _wgslsmith_dot_vec4_u32(vec4<u32>(72211u, 54503u, 7824u, 0u), u_input.b & u_input.c)), max(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(-24410i, 597i, 42445i)), _wgslsmith_mult_i32(countOneBits(-1i), abs(1i))), abs(select(abs(vec2<u32>(u_input.a.x, u_input.b.x)), ~vec2<u32>(4294967295u, 0u), true))), !(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, ~48044u, 4294967295u, func_4(-1000f, Struct_2(Struct_1(vec2<i32>(2147483647i, -6411i), -57121i, vec2<u32>(u_input.a.x, u_input.b.x)), vec3<bool>(true, true, false), vec4<u32>(u_input.b.x, 1u, 10170u, u_input.a.x))).a.c.x), ~vec4<u32>(u_input.a.x, 55329u, u_input.c.x, u_input.b.x)));
    let var_1 = abs(func_2(-741f, Struct_1(vec2<i32>(~var_0.a.b, var_0.a.b), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.a.a.x, var_0.a.a.x, 2147483647i, var_0.a.b), firstTrailingBit(vec4<i32>(var_0.a.b, var_0.a.b, var_0.a.a.x, var_0.a.b))), vec2<u32>(u_input.b.x >> (4294967295u % 32u), var_0.c.x)), var_0).c.x);
    global0 = array<vec2<f32>, 31>();
    global0 = array<vec2<f32>, 31>();
    global0 = array<vec2<f32>, 31>();
    var var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1540f)), -299f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1792f, 276f, -553f, 784f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1424f, -893f, 550f, -1435f)))))), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(func_4(-322f, var_0).a.c.x, 31u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-111f, -1250f, var_0.b.x)) * 1f)));
}

