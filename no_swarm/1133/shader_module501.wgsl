struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.c, arg_0.c), vec2<f32>(arg_1.c, arg_0.d))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, arg_0.c))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(111f, arg_1.c), vec2<f32>(arg_0.c, arg_0.c)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, 392f) - vec2<f32>(arg_1.d, 859f)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.d, arg_1.d), vec2<f32>(2238f, 1000f)))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.d, -1589f)))))));
    var var_1 = arg_0;
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(656f, arg_0.c) - vec2<f32>(-713f, arg_0.c))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1243f, var_0.x))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.c, 259f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, -1640f) + vec2<f32>(-272f, -162f)), vec2<f32>(var_1.d, arg_0.d))))), select(vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(true, false, true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(476f, arg_0.c, 2996f, var_0.x) + vec4<f32>(arg_0.c, 1000f, -435f, 448f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, var_0.x, var_0.x, 472f)))))));
    let var_3 = true;
    return -abs(~var_1.b | -(~arg_0.b));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, i32(-1i) * -arg_2.b, -(~(-3243i))), ~(~_wgslsmith_mult_i32(-arg_3.b, 2147483647i)));
    let var_1 = func_3(arg_2, Struct_1(abs(~arg_2.a), 17115i, -155f, arg_3.d));
    var_0 = -21131i;
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, arg_3.a.x) ^ abs(89202u), 70363u), _wgslsmith_mod_u32(arg_2.a.x, 1u), _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(_wgslsmith_mod_u32(26078u, 4686u), 4294967295u | arg_3.a.x)), 4294967295u), countOneBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(33573u, arg_3.a.x, 22270u, 0u), ~vec4<u32>(arg_2.a.x, arg_3.a.x, arg_2.a.x, arg_3.a.x)), firstLeadingBit(vec4<u32>(arg_2.a.x, arg_2.a.x, arg_3.a.x, 1u)) >> (~vec4<u32>(3420u, 41044u, arg_3.a.x, arg_2.a.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(29746u, 9930u, 4294967295u, 22333u)), ~vec4<u32>(arg_3.a.x, u_input.a.x, 1u, arg_2.a.x)))));
    var_0 = arg_1;
    return arg_2;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_div_f32(-468f, -1184f)) * -138f), _wgslsmith_f_op_f32(trunc(107f))));
    var_0 = arg_2.x;
    return ~arg_1.a.x;
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    let var_0 = ~u_input.a.x << (_wgslsmith_mod_u32(func_4(u_input.a.x, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-129f, 2073f, 1161f)), _wgslsmith_clamp_i32(arg_0.x, arg_0.x, 0i), Struct_1(vec2<u32>(u_input.a.x, 42640u), 53400i, -1379f, -482f), Struct_1(vec2<u32>(101678u, 55729u), 0i, -335f, -283f)), vec2<f32>(_wgslsmith_f_op_f32(1385f + -108f), -1894f)), min(u_input.a.x, u_input.a.x)) % 32u);
    var var_1 = vec4<i32>((39964i << ((1u >> (firstLeadingBit(u_input.a.x) % 32u)) % 32u)) ^ select(i32(-1i) * -5671i, _wgslsmith_mod_i32(arg_0.x, _wgslsmith_sub_i32(-57035i, arg_0.x)), true), 1i, _wgslsmith_mod_i32(max(5239i, -59598i >> (_wgslsmith_sub_u32(0u, u_input.a.x) % 32u)), -2147483647i), firstTrailingBit(3917i));
    var_1 = vec4<i32>(-(~arg_0.x), _wgslsmith_mult_i32(1i, ~51625i ^ _wgslsmith_add_i32(17651i, var_1.x)) & -20602i, max(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, 8575i, var_1.x), vec4<i32>(2147483647i, arg_0.x, var_1.x, var_1.x)) << ((u_input.a.x >> (u_input.a.x % 32u)) % 32u), var_1.x, _wgslsmith_mult_i32(max(1i, var_1.x), countOneBits(arg_0.x))), _wgslsmith_add_i32(var_1.x, _wgslsmith_mod_i32(firstLeadingBit(0i), ~var_1.x))), -1i);
    var_1 = vec4<i32>(-func_3(func_2(vec3<f32>(1895f, -1734f, 444f), 12283i, Struct_1(u_input.a.xz, 60783i, -431f, -749f), Struct_1(vec2<u32>(var_0, 76937u), var_1.x, -489f, -1000f)), func_2(vec3<f32>(1103f, 655f, 1000f), -16018i, Struct_1(vec2<u32>(var_0, var_0), arg_0.x, -216f, 2564f), Struct_1(vec2<u32>(u_input.a.x, var_0), -1i, 588f, 1873f))), -var_1.x, ~(i32(-1i) * -arg_0.x), _wgslsmith_sub_i32(-1i, arg_0.x)) ^ ~(~(~(~vec4<i32>(var_1.x, var_1.x, -2147483647i, 1092i))));
    var var_2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(-2193f)))), _wgslsmith_f_op_f32(f32(-1f) * -682f), _wgslsmith_f_op_f32(exp2(func_2(vec3<f32>(-798f, -481f, 547f), _wgslsmith_div_i32(-2147483647i, arg_0.x), func_2(vec3<f32>(-870f, 556f, 1794f), arg_0.x, Struct_1(u_input.a.yy, arg_0.x, -254f, -146f), Struct_1(u_input.a.zy, 20052i, -2342f, 360f)), func_2(vec3<f32>(296f, 1466f, -1624f), 1i, Struct_1(vec2<u32>(u_input.a.x, 44467u), 77777i, 231f, -332f), Struct_1(vec2<u32>(u_input.a.x, 523u), var_1.x, 493f, 1621f))).c))), arg_0.x, func_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2017f), 893f, -590f), _wgslsmith_div_i32(_wgslsmith_div_i32(1i, -var_1.x), -var_1.x), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(77708u, var_0)), vec2<u32>(u_input.a.x, u_input.a.x)), -var_1.x >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_0, 0u, var_0)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1185f * 532f)), 146f), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1747f, 1000f, -708f) - vec3<f32>(1000f, -511f, -372f)) + _wgslsmith_div_vec3_f32(vec3<f32>(564f, -829f, -1000f), vec3<f32>(1076f, 997f, 653f))), _wgslsmith_add_i32(~var_1.x, _wgslsmith_sub_i32(-1i, var_1.x)), func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1349f, -694f, 995f), vec3<f32>(1000f, -1000f, 2366f))), 1i, func_2(vec3<f32>(651f, 187f, -203f), var_1.x, Struct_1(vec2<u32>(0u, 1u), -16837i, -193f, -285f), Struct_1(vec2<u32>(43214u, 4294967295u), arg_0.x, 1000f, -128f)), Struct_1(u_input.a.yz, var_1.x, 296f, -547f)), Struct_1(firstLeadingBit(vec2<u32>(var_0, 1u)), var_1.x, 743f, -529f))), Struct_1(~vec2<u32>(var_0 >> (47736u % 32u), var_0), countOneBits(var_1.x) >> (_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(2664u, 84863u)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-293f, -1239f)) - _wgslsmith_div_f32(-1000f, -788f)), 1f));
    return var_2.b & arg_0.x;
}

fn func_5(arg_0: i32) -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = arg_0;
    let var_2 = Struct_1(vec2<u32>(~u_input.a.x, 92576u), ~(~(~var_1)) & -_wgslsmith_mult_i32(-2147483647i, -arg_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-779f - 417f))))), _wgslsmith_f_op_f32(-928f * -1640f));
    let var_3 = var_2;
    return Struct_1(max(min(vec2<u32>(u_input.a.x, 14121u), ~u_input.a.zy), func_2(vec3<f32>(284f, var_2.d, var_3.d), -1i, func_2(vec3<f32>(var_2.c, -363f, 190f), 33801i, var_2, var_2), var_2).a) ^ max(abs(abs(var_2.a)), ~vec2<u32>(827u, 10239u)), _wgslsmith_mod_i32(var_3.b, countOneBits(min(arg_0, select(-22227i, 52035i, false)))), _wgslsmith_div_f32(var_3.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1428f), _wgslsmith_f_op_f32(step(-978f, -340f))))), _wgslsmith_f_op_f32(var_3.d * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(-var_3.d)))))));
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = arg_1;
    return arg_1;
}

fn func_7(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = firstTrailingBit(~arg_0.a.x) | _wgslsmith_sub_u32(~func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(177f, arg_1, arg_0.c)), arg_0.b, Struct_1(arg_0.a, arg_0.b, -885f, -532f), arg_0).a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 18346u, arg_0.a.x, 6148u), ~vec4<u32>(u_input.a.x, 44323u, 74433u, 0u)));
    var_0 = 1u;
    var_0 = ~_wgslsmith_dot_vec3_u32(u_input.a, ~(~(~vec3<u32>(1u, arg_0.a.x, arg_0.a.x))));
    var var_1 = func_6(any(vec3<bool>(true, true, true)), func_5(~(-2147483647i >> (u_input.a.x % 32u))));
    var_1 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(745f + arg_0.c) - -1631f) * _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(arg_0.d - var_1.d))) == _wgslsmith_f_op_f32(min(-970f, 246f)), func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.c, arg_0.c, _wgslsmith_f_op_f32(select(-1350f, -993f, true))))), var_1.b ^ func_6(false, arg_0).b, func_6(true, func_6(any(vec2<bool>(true, true)), Struct_1(vec2<u32>(var_1.a.x, var_1.a.x), -12672i, arg_1, 918f))), arg_0));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))) | (4294967295u < _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(48609u, 4294967295u, 1u))), func_5(func_1(-vec2<i32>(0i, -6166i)))), -1829f);
    var var_1 = !(_wgslsmith_clamp_i32(_wgslsmith_add_i32(i32(-1i) * -1i, -var_0.b), var_0.b, _wgslsmith_add_i32(-24061i, var_0.b) >> (_wgslsmith_div_u32(var_0.a.x, 4294967295u) % 32u)) == var_0.b);
    var_1 = true;
    let var_2 = func_6(any(vec4<bool>(false, true, true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))))), Struct_1(~u_input.a.xz, -14451i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_7(Struct_1(u_input.a.zy, -2147483647i, -1559f, 762f), -1204f).c), _wgslsmith_f_op_f32(-1237f + _wgslsmith_f_op_f32(-var_0.c))), 1370f));
    var_1 = any(vec2<bool>(true, (var_2.b & func_2(vec3<f32>(var_0.d, 759f, 787f), var_0.b, Struct_1(var_2.a, var_2.b, var_2.d, -411f), var_2).b) < -1i));
    let x = u_input.a;
    s_output = StorageBuffer(1i, firstTrailingBit(19585i), -(~_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(1i, 2147483647i)), vec2<i32>(-1i, 18097i))));
}

