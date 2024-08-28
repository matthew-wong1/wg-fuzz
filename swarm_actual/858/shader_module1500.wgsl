struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(-_wgslsmith_sub_i32(2147483647i, u_input.a.x));
    let var_1 = vec2<bool>(any(vec4<bool>(true, true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), true)), any(vec3<bool>(all(vec3<bool>(false, false, false)) | true, true, !any(vec4<bool>(true, true, true, true)))));
    var var_2 = true;
    var_2 = !(~1u <= u_input.c);
    let var_3 = -max(_wgslsmith_add_i32(var_0.a >> (~u_input.c % 32u), u_input.d), ~(var_0.a << (firstTrailingBit(u_input.c) % 32u)));
    return var_1.x;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = func_3();
    var_0 = true;
    var_0 = select(false, false, true);
    var var_1 = 28206i;
    let var_2 = ~0u ^ u_input.c;
    return _wgslsmith_mult_i32(reverseBits(-1i), -(~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(0i, u_input.d, -15629i)), u_input.a.zxz)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = vec3<u32>(10294u, u_input.c, 4294967295u) | (countOneBits(min(vec3<u32>(u_input.c, u_input.c, 19383u) | vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, 4294967295u, 0u))) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 16425u), vec3<u32>(26761u, 7900u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(37995u, u_input.c, u_input.c))) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1.a.x)), _wgslsmith_f_op_f32(-2305f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -785f), 930f, arg_2.c))), false)) + 509f);
    var var_3 = 1u > (_wgslsmith_mod_u32(~countOneBits(4294967295u), min(36066u, var_1.x) << (_wgslsmith_div_u32(var_1.x, 4294967295u) % 32u)) & 49362u);
    var var_4 = Struct_1(_wgslsmith_mod_i32(var_0.e, abs(~_wgslsmith_add_i32(26569i, u_input.d))));
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    let var_0 = 524f;
    var var_1 = arg_0.a.x;
    let var_2 = Struct_2(arg_0.a, true, any(vec2<bool>(_wgslsmith_f_op_f32(-1119f * -443f) > arg_0.a.x, any(vec2<bool>(arg_1.x, arg_1.x)))), Struct_1(34310i), ~0i);
    let var_3 = select(~(select(abs(vec3<u32>(74689u, 0u, 0u)), vec3<u32>(u_input.c, u_input.c, u_input.c), !vec3<bool>(false, arg_1.x, false)) << (~(~vec3<u32>(u_input.c, 4730u, u_input.c)) % vec3<u32>(32u))), vec3<u32>(reverseBits(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, u_input.c, 0u)), ~vec3<u32>(56745u, u_input.c, 0u))), countOneBits(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.c, 4294967295u, 1u), ~30893u)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, u_input.c)), vec2<u32>(u_input.c, 1u) | firstTrailingBit(vec2<u32>(10638u, 98179u)))), select(vec3<bool>(arg_0.b, select(var_2.c, var_2.c, true), false), vec3<bool>(arg_0.b, true, all(!vec4<bool>(var_2.c, false, arg_0.b, false))), vec3<bool>(all(vec4<bool>(true, arg_1.x, var_2.c, true)), !var_2.c, all(arg_1) | all(vec3<bool>(var_2.c, arg_0.c, var_2.c)))));
    let var_4 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~var_3.x, ~1u), ~_wgslsmith_add_u32(u_input.c, 4294967295u)), var_3.x) <= _wgslsmith_dot_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_3.x, 6071u), vec4<u32>(1252u, u_input.c, u_input.c, 15344u), vec4<u32>(u_input.c, var_3.x, 37568u, 1u)) | vec4<u32>(var_3.x, 1u, 4294967295u, 1u), ~vec4<u32>(var_3.x, u_input.c, u_input.c, 66814u) ^ reverseBits(vec4<u32>(u_input.c, u_input.c, 1u, 24002u))), ~vec4<u32>(0u, 21103u, u_input.c, 100518u) ^ vec4<u32>(abs(4294967295u), 4294967295u, ~var_3.x, 4294967295u));
    return arg_0.b;
}

fn func_6(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = !(!all(select(select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, false, arg_0.x), true), select(vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), arg_0.x), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), false))));
    var var_1 = arg_1 ^ arg_2.x;
    var_1 = func_4(arg_1 | _wgslsmith_div_i32(arg_1 << (min(56205u, 4294967295u) % 32u), arg_1), func_4(2147483647i, func_4(0i, func_4(-u_input.b.x, func_4(u_input.a.x, Struct_2(arg_3, var_0, arg_0.x, Struct_1(arg_1), 1i), Struct_2(vec2<f32>(1633f, -1740f), arg_0.x, arg_0.x, Struct_1(2147483647i), u_input.a.x), 682f), Struct_2(arg_3, false, arg_0.x, Struct_1(-1i), arg_1), 1374f), func_4(_wgslsmith_sub_i32(-9716i, arg_2.x), Struct_2(vec2<f32>(661f, arg_3.x), false, var_0, Struct_1(-1i), arg_1), Struct_2(arg_3, true, false, Struct_1(u_input.b.x), arg_1), -607f), 2640f), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -117f)), all(vec2<bool>(var_0, arg_0.x)), var_0, func_4(arg_2.x & -2147483647i, func_4(-52968i, Struct_2(vec2<f32>(1939f, -938f), false, false, Struct_1(1i), 2147483647i), Struct_2(vec2<f32>(-973f, arg_3.x), true, false, Struct_1(arg_1), 1i), 1075f), Struct_2(arg_3, true, false, Struct_1(u_input.a.x), 1i), _wgslsmith_f_op_f32(exp2(arg_3.x))).d, -31841i), 1000f), Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, 1027f)))), !(true && all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), true, Struct_1(_wgslsmith_div_i32(-u_input.a.x, -1i)), 1i), _wgslsmith_f_op_f32(f32(-1f) * -789f)).e;
    let var_2 = func_4(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-14096i, arg_2.x >> (1527u % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(arg_2, arg_2), vec2<i32>(-36945i, -47735i), select(vec2<i32>(-4853i, u_input.a.x), vec2<i32>(arg_2.x, 11334i), arg_0)), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zw, vec2<i32>(arg_1, 1i), u_input.a.yy), reverseBits(vec2<i32>(2147483647i, 18393i))))), func_4(~1i, func_4(func_4(u_input.a.x, Struct_2(vec2<f32>(arg_3.x, arg_3.x), true, arg_0.x, Struct_1(arg_1), 50033i), Struct_2(vec2<f32>(arg_3.x, arg_3.x), arg_0.x, true, Struct_1(1i), -1i), 528f).d.a & -2147483647i, Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.x, arg_3.x), arg_3, vec2<bool>(true, false))), !var_0, arg_0.x, func_4(-17616i, Struct_2(vec2<f32>(-1486f, arg_3.x), var_0, var_0, Struct_1(-1i), u_input.a.x), Struct_2(arg_3, arg_0.x, false, Struct_1(u_input.a.x), u_input.b.x), 1985f).d, max(-15402i, arg_1)), func_4(-1170i, Struct_2(arg_3, false, false, Struct_1(arg_1), -21525i), Struct_2(vec2<f32>(-1396f, -368f), true, false, Struct_1(1i), u_input.d), 1000f), func_4(u_input.b.x, func_4(-29588i, Struct_2(arg_3, arg_0.x, true, Struct_1(-79742i), arg_2.x), Struct_2(arg_3, false, false, Struct_1(1i), arg_1), arg_3.x), Struct_2(arg_3, var_0, true, Struct_1(19060i), u_input.d), arg_3.x).a.x), func_4(-_wgslsmith_add_i32(arg_1, u_input.a.x), func_4(_wgslsmith_dot_vec2_i32(u_input.a.xw, vec2<i32>(arg_1, u_input.d)), func_4(-1i, Struct_2(arg_3, true, var_0, Struct_1(37411i), arg_2.x), Struct_2(arg_3, arg_0.x, false, Struct_1(u_input.d), arg_2.x), arg_3.x), Struct_2(vec2<f32>(-825f, arg_3.x), false, var_0, Struct_1(-60696i), -24255i), _wgslsmith_f_op_f32(-arg_3.x)), func_4(5369i, Struct_2(vec2<f32>(arg_3.x, -1995f), var_0, false, Struct_1(arg_1), arg_1), Struct_2(vec2<f32>(arg_3.x, -1000f), var_0, arg_0.x, Struct_1(arg_2.x), -17591i), _wgslsmith_div_f32(arg_3.x, arg_3.x)), arg_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-582f)))) * _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(-1880f * 747f)))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3 * _wgslsmith_f_op_vec2_f32(max(arg_3, vec2<f32>(448f, arg_3.x))))), arg_0.x, false, func_4((arg_1 >> (u_input.c % 32u)) >> (u_input.c % 32u), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-859f, -399f) * arg_3), true, any(vec4<bool>(var_0, true, false, false)), Struct_1(arg_2.x), arg_1), func_4(2147483647i, Struct_2(vec2<f32>(-487f, arg_3.x), true, false, Struct_1(-2147483647i), 45756i), Struct_2(vec2<f32>(arg_3.x, -139f), true, false, Struct_1(12980i), 76470i), arg_3.x), arg_3.x).d, u_input.d), 1514f).d;
    var_1 = arg_1;
    return func_4(arg_2.x, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, 347f)) * arg_3) + arg_3), any(!(!vec4<bool>(arg_0.x, var_0, true, false))), var_0, func_4(~var_2.a, Struct_2(arg_3, var_0, true, Struct_1(2147483647i), arg_2.x), Struct_2(vec2<f32>(957f, arg_3.x), true, true, Struct_1(-1i), countOneBits(arg_1)), _wgslsmith_f_op_f32(-1219f * _wgslsmith_f_op_f32(-arg_3.x))).d, firstTrailingBit(min(64467i, -16475i) << (u_input.c % 32u))), Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1349f, _wgslsmith_f_op_f32(-arg_3.x)))), true, !(_wgslsmith_mult_i32(u_input.a.x, -14881i) > -2147483647i), func_4(-abs(2147483647i), Struct_2(_wgslsmith_f_op_vec2_f32(arg_3 - arg_3), true, all(vec4<bool>(var_0, var_0, false, arg_0.x)), var_2, -arg_2.x), func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_2.a), u_input.b), Struct_2(arg_3, arg_0.x, true, var_2, arg_1), func_4(arg_1, Struct_2(arg_3, arg_0.x, var_0, var_2, -1i), Struct_2(arg_3, false, true, var_2, u_input.a.x), 528f), _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(-1636f * _wgslsmith_f_op_f32(trunc(arg_3.x)))).d, -arg_2.x), arg_3.x).d;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -358f);
    return func_6(vec2<bool>(false, func_5(func_4(func_2(Struct_1(u_input.b.x)), Struct_2(vec2<f32>(-399f, 1650f), false, true, Struct_1(1i), -50233i), Struct_2(vec2<f32>(var_0, var_0), true, false, Struct_1(u_input.d), u_input.a.x), _wgslsmith_f_op_f32(floor(-1240f))), vec2<bool>(true, all(vec3<bool>(false, false, false))))), _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(-(~(-1i)), firstTrailingBit(1i))), ~(-u_input.b), vec2<f32>(var_0, var_0));
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-558f - _wgslsmith_f_op_f32(floor(-1591f))), 1025f))));
    var var_1 = func_4(_wgslsmith_mult_i32(u_input.a.x, -(~32176i)), func_4(-2182i, func_4(arg_1.a << (12050u % 32u), func_4(u_input.b.x, Struct_2(vec2<f32>(-347f, -312f), arg_0.x, arg_0.x, arg_1, arg_1.a), func_4(-3522i, Struct_2(vec2<f32>(-362f, -352f), true, true, arg_1, 2147483647i), Struct_2(vec2<f32>(-393f, 1584f), false, true, arg_1, 2147483647i), -230f), -156f), func_4(-16119i, Struct_2(vec2<f32>(-548f, 174f), arg_0.x, false, arg_1, u_input.d), Struct_2(vec2<f32>(240f, -330f), arg_0.x, arg_0.x, Struct_1(11749i), u_input.b.x), _wgslsmith_f_op_f32(574f * 1591f)), _wgslsmith_f_op_f32(614f - -906f)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-685f, 487f))), arg_0.x | any(arg_0.wx), true, Struct_1(u_input.b.x), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-406f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(365f, -1411f)), -1102f)))), Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-724f, 408f)))))), false, arg_0.x, arg_1, 66182i), _wgslsmith_f_op_f32(f32(-1f) * -1126f));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(644f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * 918f))));
    var var_2 = _wgslsmith_mult_vec2_i32(u_input.a.xw, abs(vec2<i32>(-1i) * -(~vec2<i32>(-1i, -1i))));
    var var_3 = var_1.a;
    return Struct_1(-_wgslsmith_sub_i32(~(~18443i), u_input.b.x));
}

fn func_8(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_1.wy;
    var var_1 = reverseBits(_wgslsmith_add_u32(var_0.x, _wgslsmith_mult_u32(u_input.c, arg_1.x)) >> (min(min(2350u, 79004u), _wgslsmith_mod_u32(u_input.c, 26147u)) % 32u)) ^ var_0.x;
    var var_2 = arg_0.a.x;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-988f)));
    let var_3 = arg_2;
    return func_7(!select(!vec4<bool>(false, var_3.b, var_3.c, true), vec4<bool>(func_4(29684i, Struct_2(arg_0.a, var_3.b, arg_0.b, Struct_1(2147483647i), 23702i), Struct_2(arg_2.a, false, var_3.c, Struct_1(var_3.d.a), 0i), -1000f).c, -33596i <= arg_0.e, true, arg_0.b), !(!arg_0.c)), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(0i, var_3.e), u_input.a.zz), max(reverseBits(vec2<i32>(u_input.d, -1i)), -u_input.a.ww))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-737f * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1323f), 1678f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1088f + -873f))))) * 815f);
    let var_1 = func_8(Struct_2(vec2<f32>(1f, 1f), all(vec2<bool>(true, true)), _wgslsmith_sub_i32(~1752i, u_input.b.x & -10657i) <= u_input.d, func_7(vec4<bool>(1u <= u_input.c, true, true, false), func_1()), _wgslsmith_div_i32(func_7(vec4<bool>(true, true, true, true), Struct_1(u_input.b.x)).a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.a.x), -vec2<i32>(2147483647i, u_input.b.x)))), vec4<u32>(0u, u_input.c, _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(u_input.c, 22068u, u_input.c)), ~vec3<u32>(4294967295u, u_input.c, 7929u) | reverseBits(vec3<u32>(u_input.c, 11949u, u_input.c))), _wgslsmith_mult_u32(~abs(u_input.c), _wgslsmith_div_u32(9592u, ~20785u))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1084f, 956f), vec2<f32>(850f, -561f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -619f), -211f)), !all(vec2<bool>(false, false)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)), Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-1i, u_input.a.x)), min(33581i, u_input.d))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i >> (u_input.c % 32u), i32(-1i) * -1i), -func_7(vec4<bool>(false, false, false, true), Struct_1(-2147483647i)).a, 10700i)));
    var var_2 = u_input.b;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(643f * _wgslsmith_f_op_f32(sign(-530f))), -117f)) - _wgslsmith_f_op_f32(ceil(-145f)));
    var var_3 = u_input.c;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(785f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-176f)) * _wgslsmith_f_op_f32(sign(557f))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-535f)), _wgslsmith_f_op_f32(select(-910f, -599f, false))), 241f)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(413f))), _wgslsmith_div_f32(-848f, _wgslsmith_f_op_f32(1353f - -1477f)), false)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-576f, 249f))))), 1f);
    var var_4 = _wgslsmith_add_vec3_i32(-vec3<i32>(firstLeadingBit(var_1.a), ~var_1.a, func_4(u_input.a.x, func_4(-15724i, Struct_2(vec2<f32>(-498f, 126f), false, true, var_1, 1i), Struct_2(vec2<f32>(-267f, -559f), true, false, var_1, 78530i), 1000f), func_4(var_2.x, Struct_2(vec2<f32>(820f, 1273f), false, false, Struct_1(var_2.x), 17107i), Struct_2(vec2<f32>(1421f, -203f), true, false, Struct_1(47164i), -34391i), 371f), _wgslsmith_f_op_f32(step(-1000f, -1629f))).d.a), u_input.a.yzz);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-488f, 635f) * _wgslsmith_div_f32(-941f, -830f))))), ~u_input.c, 1000f, func_4(165i, func_4(u_input.a.x, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1556f, -634f)), true, true, var_1, i32(-1i) * -2147483647i), Struct_2(vec2<f32>(-1236f, 156f), true, false, func_8(Struct_2(vec2<f32>(-386f, 388f), true, true, var_1, 1i), vec4<u32>(0u, u_input.c, 0u, 57421u), Struct_2(vec2<f32>(555f, 335f), true, false, var_1, var_1.a)), _wgslsmith_div_i32(u_input.d, 0i)), _wgslsmith_f_op_f32(-436f * _wgslsmith_f_op_f32(f32(-1f) * -534f))), func_4(func_6(vec2<bool>(false, true), var_2.x, var_4.zx, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1030f, -2267f), vec2<f32>(-1000f, 116f)))).a, func_4(var_4.x | var_4.x, func_4(-2147483647i, Struct_2(vec2<f32>(-1088f, 768f), false, true, var_1, u_input.b.x), Struct_2(vec2<f32>(-610f, 844f), false, true, Struct_1(var_2.x), 59663i), 196f), Struct_2(vec2<f32>(-477f, 627f), true, false, var_1, var_2.x), _wgslsmith_f_op_f32(-626f * 1365f)), func_4(i32(-1i) * -5204i, func_4(u_input.b.x, Struct_2(vec2<f32>(-606f, 1701f), false, false, Struct_1(var_4.x), var_4.x), Struct_2(vec2<f32>(-189f, 174f), false, false, Struct_1(2147483647i), var_2.x), 1355f), func_4(var_1.a, Struct_2(vec2<f32>(-1341f, -661f), false, true, var_1, 0i), Struct_2(vec2<f32>(-180f, -339f), true, false, Struct_1(var_2.x), var_2.x), -1790f), _wgslsmith_div_f32(1628f, 164f)), _wgslsmith_f_op_f32(min(421f, _wgslsmith_div_f32(-212f, 1996f)))), -1295f).a.x);
}

