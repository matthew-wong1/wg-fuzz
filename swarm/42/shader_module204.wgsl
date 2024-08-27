struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1778f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(select(vec3<bool>(false, true || any(vec4<bool>(true, true, true, false)), select(u_input.b == 2147483647i, any(vec2<bool>(true, true)), true)), vec3<bool>(all(vec2<bool>(true, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), true), vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(-101471i, u_input.b, u_input.b, 43423i), vec4<i32>(1i, -7118i, u_input.b, 1i)) <= firstTrailingBit(u_input.b), true, true)), vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, u_input.b))) ^ max(11991i, u_input.b), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, -2147483647i, 0i), vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)) & _wgslsmith_mult_i32(-10432i, -78749i)), u_input.b & u_input.b), firstLeadingBit(-1i));
    var var_1 = select(vec3<bool>(true, all(vec2<bool>(true, all(vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x)))), var_0.a.x), var_0.a, vec3<bool>(true, all(!select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), vec4<bool>(false, var_0.a.x, false, true))), false));
    var_1 = select(!select(var_0.a, !select(vec3<bool>(true, var_1.x, false), var_0.a, var_1.x), vec3<bool>(!var_1.x, var_0.c >= var_0.c, select(true, false, var_1.x))), !vec3<bool>(true, !var_1.x, true), select(!vec3<bool>(any(vec4<bool>(false, var_1.x, false, var_0.a.x)), var_0.a.x, false), !vec3<bool>(true, u_input.b > -42737i, var_0.a.x || true), !(!select(var_0.a, vec3<bool>(true, var_0.a.x, var_0.a.x), var_0.a.x))));
    let var_2 = var_0;
    var_1 = select(!var_2.a, select(!(!var_2.a), vec3<bool>(false, any(vec3<bool>(var_0.a.x, false, var_0.a.x)), !select(false, var_1.x, var_0.a.x)), 1u >= select(u_input.a.x, 6813u, var_1.x)), var_2.a);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1384f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1333f)), -185f)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1019f, -2063f, 112f) * vec3<f32>(-145f, 309f, -659f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(170f, 929f, -1634f), vec3<f32>(-325f, -1249f, 1300f), arg_2.a.x)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-853f, -914f, -678f), vec3<f32>(280f, -2191f, 100f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(765f, -955f, -777f)))))));
    global0 = var_0.x;
    global0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = min(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), vec4<u32>(_wgslsmith_clamp_u32(36612u, u_input.a.x, 27003u), 0u, u_input.a.x, ~u_input.a.x)), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 33166u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), abs(abs(min(38264u, u_input.a.x)))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 0u, u_input.a.x), max(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<u32>(45734u, 1u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 24148u), vec3<u32>(u_input.a.x, u_input.a.x, 0u)))));
    global0 = 2390f;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1055f) + 1055f) + _wgslsmith_f_op_f32(func_3())))));
    let var_0 = 973f;
    var var_1 = func_2(func_2(func_2(Struct_1(!vec3<bool>(false, false, arg_2.a.x), countOneBits(arg_1.b), ~2147483647i), Struct_1(select(arg_1.a, arg_0.a, false), -arg_0.b, arg_3.c), Struct_1(!vec3<bool>(arg_1.a.x, false, false), max(vec3<i32>(-2147483647i, u_input.b, 2147483647i), vec3<i32>(arg_2.c, 1i, arg_0.c)), _wgslsmith_clamp_i32(u_input.b, u_input.b, arg_2.c)), !(u_input.a.x <= 70024u)), func_2(arg_2, Struct_1(!arg_1.a, vec3<i32>(1i, 7984i, -1i), _wgslsmith_dot_vec2_i32(arg_0.b.zx, vec2<i32>(u_input.b, arg_1.b.x))), arg_3, false), arg_2, false), Struct_1(select(vec3<bool>(true, !arg_2.a.x, arg_1.a.x), vec3<bool>(arg_3.a.x, true, true), select(!vec3<bool>(arg_0.a.x, true, true), arg_3.a, !arg_0.a.x)), arg_2.b, -1i), func_2(func_2(Struct_1(arg_2.a, vec3<i32>(0i, arg_3.c, arg_0.b.x), arg_2.b.x), arg_1, func_2(arg_1, arg_3, Struct_1(arg_3.a, arg_0.b, u_input.b), !arg_3.a.x), false), func_2(arg_3, Struct_1(arg_1.a, ~arg_0.b, 0i), Struct_1(arg_0.a, vec3<i32>(1i, arg_0.c, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, arg_2.b.x, arg_1.b.x), vec3<i32>(1i, 27043i, arg_1.b.x))), u_input.b == 2147483647i), func_2(func_2(arg_1, Struct_1(vec3<bool>(arg_3.a.x, true, arg_3.a.x), arg_3.b, u_input.b), func_2(arg_3, Struct_1(vec3<bool>(arg_1.a.x, false, arg_0.a.x), vec3<i32>(arg_0.b.x, arg_2.b.x, -6938i), arg_2.c), Struct_1(vec3<bool>(true, true, arg_2.a.x), vec3<i32>(-1i, arg_1.c, -29243i), arg_0.c), arg_0.a.x), true | arg_3.a.x), Struct_1(!vec3<bool>(arg_1.a.x, true, arg_2.a.x), vec3<i32>(-48992i, u_input.b, -2147483647i), firstLeadingBit(arg_1.c)), func_2(Struct_1(arg_0.a, arg_0.b, 1i), Struct_1(vec3<bool>(arg_2.a.x, arg_1.a.x, arg_1.a.x), vec3<i32>(2147483647i, -38920i, arg_2.b.x), arg_2.c), func_2(Struct_1(arg_3.a, arg_2.b, 2147483647i), arg_0, arg_0, false), all(vec4<bool>(true, arg_1.a.x, false, arg_2.a.x))), true), any(vec4<bool>(arg_3.a.x, arg_2.a.x, true, true))), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(var_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(902f, -588f), vec2<f32>(1269f, var_0)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, var_0)))) * vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1528f + var_0))))));
    let var_3 = select(vec3<bool>(!(!(!arg_0.a.x)), any(vec3<bool>(!arg_3.a.x, -30068i < arg_3.c, true)), !any(vec4<bool>(arg_0.a.x, arg_3.a.x, arg_2.a.x, arg_3.a.x)) && arg_1.a.x), func_2(arg_3, arg_2, func_2(arg_2, Struct_1(select(vec3<bool>(true, var_1.a.x, arg_2.a.x), arg_3.a, false), var_1.b, _wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(-2147483647i, u_input.b, u_input.b))), arg_0, !arg_3.a.x), all(select(!arg_1.a.zy, select(arg_1.a.yx, arg_3.a.xy, arg_2.a.x), true))).a, !var_1.a);
    return arg_1.c;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<u32>) -> vec3<i32> {
    let var_0 = Struct_1(vec3<bool>(arg_0.a.x, true, !(_wgslsmith_f_op_f32(-339f * arg_1) != _wgslsmith_f_op_f32(arg_1 + 1899f))), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-arg_0.b.x, 1i, select(arg_0.c, arg_0.c, true)), vec3<i32>(min(u_input.b, arg_0.c), 2147483647i ^ arg_0.b.x, i32(-1i) * -2147483647i))), _wgslsmith_mult_i32(-14608i, func_4(Struct_1(arg_0.a, arg_0.b, u_input.b), Struct_1(arg_0.a, arg_0.b, -26791i), arg_0, func_2(Struct_1(vec3<bool>(false, true, true), arg_0.b, -22649i), arg_0, arg_0, arg_0.a.x))) << (~_wgslsmith_mod_u32(u_input.a.x, select(arg_3.x, u_input.a.x, true)) % 32u));
    var var_1 = vec4<f32>(883f, _wgslsmith_f_op_f32(arg_1 * 1885f), _wgslsmith_f_op_f32(max(arg_1, 115f)), -721f);
    let var_2 = -1000f;
    global0 = -112f;
    global0 = 476f;
    return -vec3<i32>(_wgslsmith_mod_i32(abs(-var_0.c), _wgslsmith_mod_i32(max(17138i, var_0.b.x), u_input.b)), ~arg_0.b.x, ~(-u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_0 = Struct_1(vec3<bool>(true, select(false, true, true), any(vec3<bool>(false, true, false)) | (u_input.b > -1i)), _wgslsmith_div_vec3_i32(~(-vec3<i32>(0i, u_input.b, -866i)), func_1(Struct_1(vec3<bool>(true, true, true), min(vec3<i32>(-1i, u_input.b, -37728i), vec3<i32>(-2147483647i, 44241i, 16217i)), u_input.b), -743f, vec2<bool>(true, true), vec3<u32>(_wgslsmith_clamp_u32(8254u, u_input.a.x, 1u), 18357u, ~u_input.a.x))), u_input.b);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1492f))), _wgslsmith_f_op_f32(trunc(574f)))));
    let var_1 = Struct_1(!vec3<bool>(all(func_2(Struct_1(vec3<bool>(false, var_0.a.x, var_0.a.x), var_0.b, var_0.b.x), Struct_1(var_0.a, vec3<i32>(u_input.b, var_0.c, u_input.b), var_0.c), Struct_1(var_0.a, var_0.b, u_input.b), var_0.a.x).a.zy), all(select(var_0.a.zz, var_0.a.xy, vec2<bool>(var_0.a.x, true))), all(!var_0.a)), firstLeadingBit(-_wgslsmith_div_vec3_i32(~var_0.b, countOneBits(var_0.b))), func_1(Struct_1(var_0.a, abs(select(vec3<i32>(-1i, u_input.b, 0i), vec3<i32>(u_input.b, var_0.c, u_input.b), var_0.a.x)), var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-516f)) + _wgslsmith_f_op_f32(min(261f, -1582f)))), !select(vec2<bool>(var_0.a.x, false), func_2(Struct_1(vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<i32>(621i, 0i, u_input.b), -33503i), Struct_1(var_0.a, vec3<i32>(3647i, u_input.b, 2147483647i), 1i), Struct_1(var_0.a, var_0.b, u_input.b), var_0.a.x).a.zx, vec2<bool>(true, var_0.a.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), abs(vec3<u32>(u_input.a.x, 1u, 4294967295u)) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(0u, 50932u, u_input.a.x)))).x);
    global0 = _wgslsmith_f_op_f32(func_3());
    let var_2 = Struct_1(select(var_1.a, select(vec3<bool>(true, func_2(var_1, var_1, Struct_1(vec3<bool>(var_1.a.x, true, var_0.a.x), vec3<i32>(var_1.b.x, var_0.b.x, u_input.b), var_1.b.x), var_1.a.x).a.x, var_0.a.x), vec3<bool>(false, true, true), true), !var_1.a), var_1.b, 20211i);
    let var_3 = vec2<u32>(~(4294967295u & (~u_input.a.x ^ _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 21580u)))), ~(~_wgslsmith_mod_u32(select(24385u, 32708u, var_2.a.x), u_input.a.x)));
    let var_4 = var_0.b.xy;
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1949f, 748f, -1407f, -738f), vec4<f32>(-607f, 1177f, 130f, 593f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1217f, -198f, -925f, 1128f) * vec4<f32>(1346f, 1120f, -629f, -393f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1106f, 973f, -1041f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-623f, -274f, -472f, -2877f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5, var_5.x, ~vec2<i32>(33303i, u_input.b), vec2<u32>(39586u, ~0u), _wgslsmith_div_f32(var_5.x, _wgslsmith_div_f32(-771f, _wgslsmith_f_op_f32(ceil(1152f)))));
}

