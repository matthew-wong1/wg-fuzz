struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = -37640i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, arg_0.b.x))) * _wgslsmith_f_op_vec2_f32(-arg_0.d.zw)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(248f))), _wgslsmith_f_op_f32(min(-536f, -1654f)))))), vec4<f32>(_wgslsmith_f_op_f32(abs(-715f)), arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(945f + 555f)), !arg_1.a))), 14173i);
    let var_1 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(139075u, 41495u, 30587u), firstLeadingBit(4294967295u)), 67638u, arg_2) ^ ~(~select(u_input.c, 1u, arg_1.a)), Struct_1(true | any(!vec3<bool>(false, arg_1.a, false)), arg_1.d.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-255f)) * _wgslsmith_f_op_f32(abs(-387f))) - -647f), arg_1.d, (arg_0.e >> (_wgslsmith_add_u32(arg_2, arg_2) % 32u)) ^ ~firstLeadingBit(u_input.b.x)), !(!(!(!vec3<bool>(arg_1.a, false, arg_1.a)))), Struct_1(false, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x - -313f), _wgslsmith_div_f32(1513f, 1817f)), -960f), -114f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1401f, arg_0.b.x, var_0.b.x, var_0.c), vec4<f32>(arg_0.d.x, var_0.c, -1074f, 2192f)))))), ~(~_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(arg_0.e, 2147483647i, arg_0.e)))));
    var var_2 = vec2<bool>(~var_1.a > var_1.a, !arg_0.a);
    global0 = -1817f;
    var var_3 = var_1;
    return var_0.d.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(arg_1.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.zx) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.b.d.ww)))), 780f, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1.d, arg_0.d, 1u)) * _wgslsmith_f_op_f32(f32(-1f) * -517f)), arg_2.x, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.d.c)))), _wgslsmith_f_op_vec4_f32(-arg_0.d.d)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(u_input.b.x, arg_1.b.e, u_input.a, arg_1.b.e)), -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.d.e, 39167i, arg_1.d.e, arg_0.d.e), vec4<i32>(2147483647i, 73112i, 1909i, 2147483647i))), -firstTrailingBit(1i >> (0u % 32u))));
    var var_1 = arg_0;
    var var_2 = Struct_2(abs(~(countOneBits(arg_0.a) << (~u_input.c % 32u))), Struct_1(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.d.b - arg_0.d.b)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, var_1.d.d.x), vec2<f32>(var_1.b.b.x, 1090f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.b.b.x, arg_2.x)))))), _wgslsmith_f_op_f32(-arg_0.d.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.d.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0.d.d)))), var_1.d.e), !(!(!arg_1.c)), Struct_1(true, _wgslsmith_f_op_vec2_f32(arg_1.d.b + vec2<f32>(_wgslsmith_f_op_f32(ceil(141f)), var_1.d.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1911f - arg_2.x)) + _wgslsmith_f_op_f32(min(-1490f, -375f))), arg_0.b.d, firstLeadingBit(~u_input.b.x) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, u_input.c, 34640u, var_1.a), vec4<u32>(63977u, 4294967295u, var_1.a, 5319u)) % 32u)));
    var var_3 = (~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_1.a, 1u, 4294967295u, arg_1.a)), vec4<u32>(20907u, arg_1.a, arg_0.a, var_1.a)) & (~_wgslsmith_div_u32(var_2.a, 1u) ^ 4294967295u)) <= u_input.c;
    var_2 = arg_1;
    return Struct_1(!all(!vec2<bool>(var_2.b.a, var_2.c.x)), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1062f)), -221f), arg_0.b.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_1.d.c, -625f, var_1.b.d.x) + vec4<f32>(arg_2.x, var_1.d.b.x, -1720f, var_2.d.c)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(func_3(var_1.d, arg_0.d, 25131u)), _wgslsmith_f_op_f32(1967f - -422f), _wgslsmith_f_op_f32(select(arg_2.x, 387f, false))) - vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -213f), arg_1.b.d.x, _wgslsmith_f_op_f32(abs(var_2.b.b.x))))), var_2.d.e);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global1 = -reverseBits(u_input.a);
    global0 = arg_2.b.x;
    let var_0 = !vec3<bool>(true, arg_2.a, arg_1);
    return Struct_2(firstLeadingBit(max(firstTrailingBit(arg_0) >> (arg_0 % 32u), ~1u)), Struct_1(all(!var_0.xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(118f, arg_2.c)) - vec2<f32>(_wgslsmith_f_op_f32(arg_2.b.x - -291f), _wgslsmith_f_op_f32(f32(-1f) * -654f))), 1993f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(240f * arg_2.b.x), arg_2.c, _wgslsmith_f_op_f32(-1361f - 223f), _wgslsmith_f_op_f32(-arg_2.d.x)) - arg_2.d), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_2.e, arg_2.e, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(-25569i, arg_2.e, arg_2.e, u_input.a), vec4<i32>(2147483647i, -41861i, arg_2.e, arg_2.e))), vec4<i32>(arg_2.e, i32(-1i) * -16230i, arg_2.e, firstLeadingBit(u_input.b.x)))), select(vec3<bool>(true, !(!arg_2.a), max(u_input.c, arg_0) > firstLeadingBit(0u)), vec3<bool>(arg_1, true, false), var_0), Struct_1(true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(arg_2.d.xy)))), func_2(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c), vec4<u32>(43579u, u_input.c, arg_0, arg_0)), func_2(Struct_2(arg_0, Struct_1(var_0.x, vec2<f32>(-101f, -407f), 1570f, vec4<f32>(408f, arg_2.c, -1000f, -1167f), -39206i), vec3<bool>(arg_2.a, false, arg_1), Struct_1(false, arg_2.b, arg_2.c, arg_2.d, arg_2.e)), Struct_2(arg_0, arg_2, vec3<bool>(true, arg_1, arg_1), Struct_1(arg_1, vec2<f32>(arg_2.d.x, arg_2.c), 330f, vec4<f32>(arg_2.b.x, arg_2.c, 951f, arg_2.d.x), arg_2.e)), vec3<f32>(781f, arg_2.c, arg_2.c)), select(vec3<bool>(arg_1, var_0.x, false), var_0, var_0), func_2(Struct_2(arg_0, arg_2, vec3<bool>(arg_2.a, false, var_0.x), Struct_1(true, arg_2.b, 708f, vec4<f32>(230f, -211f, -1660f, arg_2.d.x), u_input.b.x)), Struct_2(arg_0, arg_2, vec3<bool>(arg_1, true, arg_1), arg_2), arg_2.d.yyx)), Struct_2(35596u, func_2(Struct_2(4294967295u, arg_2, vec3<bool>(false, false, true), arg_2), Struct_2(4294967295u, Struct_1(true, vec2<f32>(1000f, arg_2.b.x), arg_2.b.x, arg_2.d, arg_2.e), vec3<bool>(true, false, false), Struct_1(true, arg_2.d.wz, arg_2.d.x, arg_2.d, -1i)), arg_2.d.zyy), !var_0, func_2(Struct_2(0u, Struct_1(arg_2.a, arg_2.d.xy, -435f, arg_2.d, u_input.b.x), vec3<bool>(arg_2.a, arg_2.a, arg_2.a), Struct_1(false, vec2<f32>(-215f, 653f), 1486f, vec4<f32>(-329f, arg_2.c, arg_2.d.x, -1000f), 0i)), Struct_2(172u, arg_2, vec3<bool>(arg_2.a, false, var_0.x), Struct_1(true, arg_2.d.xx, 719f, arg_2.d, -24653i)), arg_2.d.wwz)), _wgslsmith_div_vec3_f32(arg_2.d.zxy, vec3<f32>(arg_2.c, 421f, arg_2.c))).d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(arg_2.d)), _wgslsmith_f_op_vec4_f32(-arg_2.d), true))), _wgslsmith_mult_i32(arg_2.e, u_input.a)));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    return func_4(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 28204u, u_input.c, u_input.c)), vec4<u32>(_wgslsmith_mod_u32(min(1u, u_input.c), _wgslsmith_mult_u32(arg_1, 18469u)), ~24223u, arg_1, firstTrailingBit(func_4(arg_3.a, arg_3.d.a, Struct_1(false, vec2<f32>(arg_2, -2566f), arg_2, vec4<f32>(-961f, arg_3.b.d.x, arg_2, arg_3.d.d.x), 1i)).a))), true, arg_3.b);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    global1 = -_wgslsmith_dot_vec3_i32(~(-vec3<i32>(-1i, -1i, u_input.b.x)), abs(u_input.b) ^ -vec3<i32>(1i, 1i, -33483i));
    let var_0 = func_5(-vec4<i32>(2147483647i, firstLeadingBit(_wgslsmith_div_i32(-2147483647i, 42924i)), firstLeadingBit(_wgslsmith_div_i32(-2147483647i, 2147483647i)), 2147483647i), func_4(func_5(vec4<i32>(_wgslsmith_mult_i32(1844i, u_input.a), func_5(vec4<i32>(arg_3.e, arg_1.b.e, arg_1.d.e, u_input.a), arg_1.a, arg_0.d.b.x, Struct_2(4294967295u, arg_1.b, arg_1.c, Struct_1(false, vec2<f32>(arg_0.b.d.x, arg_0.d.c), -390f, arg_1.d.d, arg_1.d.e))).b.e, ~arg_3.e, u_input.a), arg_0.a, arg_0.d.c, Struct_2(func_4(5707u, true, Struct_1(arg_3.a, vec2<f32>(arg_2.x, arg_2.x), 1004f, vec4<f32>(-476f, arg_3.c, arg_1.d.d.x, arg_1.d.d.x), arg_0.d.e)).a, Struct_1(true, vec2<f32>(-267f, -971f), -1000f, arg_1.b.d, 47893i), func_4(0u, arg_3.a, Struct_1(false, vec2<f32>(1022f, arg_2.x), arg_3.b.x, arg_1.b.d, -90036i)).c, Struct_1(arg_1.d.a, vec2<f32>(1066f, 1459f), arg_2.x, arg_3.d, -20666i))).a, true, Struct_1(!arg_0.d.a, _wgslsmith_f_op_vec2_f32(trunc(arg_2.zz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.b.x, 189f))), arg_1.b.d, -813i)).a, arg_2.x, func_5(_wgslsmith_add_vec4_i32(vec4<i32>(1i, abs(arg_1.d.e), func_4(u_input.c, arg_3.a, Struct_1(arg_1.b.a, vec2<f32>(-130f, -185f), 1000f, vec4<f32>(-2012f, arg_0.d.d.x, arg_1.b.b.x, -824f), u_input.a)).b.e, max(u_input.b.x, arg_0.b.e)), select(vec4<i32>(arg_1.b.e, 2147483647i, -1i, -6291i) << (vec4<u32>(arg_1.a, arg_0.a, arg_1.a, 0u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(45223i, arg_1.b.e, u_input.a, arg_0.d.e), vec4<i32>(-9879i, arg_3.e, arg_1.b.e, 2147483647i)), false)), 35037u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(select(532f, arg_3.b.x, arg_3.a)))), Struct_2(~arg_0.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 4294967295u, arg_1.a), vec3<u32>(27572u, 1u, arg_1.a)) % 32u), Struct_1(true, _wgslsmith_f_op_vec2_f32(arg_1.d.d.xy + arg_2.xz), _wgslsmith_div_f32(arg_0.d.b.x, arg_0.d.c), _wgslsmith_f_op_vec4_f32(-arg_0.b.d), _wgslsmith_div_i32(-1i, -7314i)), arg_1.c, Struct_1(func_2(arg_0, Struct_2(arg_1.a, Struct_1(true, vec2<f32>(1208f, arg_2.x), 496f, arg_0.b.d, 51392i), vec3<bool>(true, arg_3.a, true), Struct_1(true, vec2<f32>(1922f, arg_3.c), -452f, arg_0.b.d, 2147483647i)), vec3<f32>(arg_2.x, arg_0.b.c, arg_0.d.c)).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.x, arg_2.x)), 778f, arg_0.d.d, _wgslsmith_sub_i32(-2147483647i, u_input.a))))).b;
    var var_1 = _wgslsmith_clamp_i32(arg_1.b.e >> (((~35754u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, arg_0.a, 93927u), vec4<u32>(55475u, arg_0.a, arg_1.a, 52214u)) % 32u)) & ~19256u) % 32u), ~abs(arg_1.d.e), u_input.a);
    let var_2 = select(~(~(~(vec2<u32>(u_input.c, 4294967295u) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))))), abs(vec2<u32>(1u, arg_1.a)), arg_0.c.yz);
    var_1 = reverseBits(-u_input.b.x);
    return func_2(arg_0, func_4(4294967295u, true, var_0), vec3<f32>(_wgslsmith_div_f32(var_0.d.x, arg_1.d.c), arg_0.d.d.x, 1f));
}

fn func_1() -> Struct_2 {
    global0 = -148f;
    let var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, u_input.b.x > u_input.b.x)));
    global1 = u_input.b.x;
    var var_1 = Struct_2(~6715u, func_6(func_5(-vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(658f))), func_4(4294967295u, false, func_2(Struct_2(u_input.c, Struct_1(true, vec2<f32>(-1579f, 2986f), -121f, vec4<f32>(-1580f, -145f, 1000f, 643f), u_input.a), vec3<bool>(true, false, var_0.x), Struct_1(var_0.x, vec2<f32>(-1158f, -145f), -1795f, vec4<f32>(125f, -1644f, -432f, -167f), u_input.b.x)), Struct_2(u_input.c, Struct_1(var_0.x, vec2<f32>(-1183f, 1000f), 981f, vec4<f32>(-3037f, 692f, 1543f, 1000f), u_input.a), vec3<bool>(false, var_0.x, false), Struct_1(true, vec2<f32>(277f, 205f), 1676f, vec4<f32>(732f, 1000f, -1454f, -1000f), u_input.b.x)), vec3<f32>(-249f, -703f, -1000f)))), Struct_2(56169u, func_4(abs(u_input.c), true, func_2(Struct_2(24580u, Struct_1(true, vec2<f32>(-369f, 1000f), 1000f, vec4<f32>(1198f, 1631f, -268f, -2212f), -16360i), vec3<bool>(false, false, false), Struct_1(var_0.x, vec2<f32>(957f, -1749f), 1000f, vec4<f32>(924f, 1000f, 288f, -1966f), -35116i)), Struct_2(u_input.c, Struct_1(true, vec2<f32>(-1386f, 943f), 584f, vec4<f32>(1025f, 570f, -877f, 592f), u_input.b.x), vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_1(var_0.x, vec2<f32>(-1116f, 486f), -2348f, vec4<f32>(586f, -885f, 1433f, 1053f), u_input.b.x)), vec3<f32>(502f, -535f, -1048f))).b, !vec3<bool>(true, false, var_0.x), func_2(Struct_2(4294967295u, Struct_1(var_0.x, vec2<f32>(967f, -824f), -1189f, vec4<f32>(1018f, 312f, 1000f, -1449f), u_input.a), vec3<bool>(var_0.x, false, true), Struct_1(true, vec2<f32>(1242f, 195f), 1000f, vec4<f32>(1946f, -1150f, -1000f, -143f), 54789i)), Struct_2(0u, Struct_1(true, vec2<f32>(-1000f, -168f), 731f, vec4<f32>(489f, -988f, 2029f, -583f), 1i), vec3<bool>(var_0.x, var_0.x, true), Struct_1(var_0.x, vec2<f32>(-484f, 863f), 966f, vec4<f32>(1591f, 1050f, 1000f, 2067f), u_input.b.x)), vec3<f32>(730f, 1000f, 232f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(632f, -686f, -301f))), _wgslsmith_div_vec3_f32(vec3<f32>(-514f, 345f, 1632f), vec3<f32>(-1446f, -928f, -401f)))), func_5(vec4<i32>(func_5(vec4<i32>(1i, u_input.b.x, u_input.a, u_input.a), 1u, 482f, Struct_2(u_input.c, Struct_1(var_0.x, vec2<f32>(766f, -1033f), 1102f, vec4<f32>(1000f, -400f, 1165f, -1506f), 1i), vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_1(false, vec2<f32>(155f, 2155f), -550f, vec4<f32>(859f, -121f, -1085f, -2098f), u_input.a))).b.e, _wgslsmith_mod_i32(u_input.a, u_input.a), i32(-1i) * -32072i, firstTrailingBit(16243i)), ~u_input.c ^ ~78370u, 204f, func_5(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -5402i), u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -2211f), func_4(u_input.c, var_0.x, Struct_1(true, vec2<f32>(280f, -132f), 181f, vec4<f32>(1374f, 2849f, -1665f, 1481f), 4583i)))).b), func_4(u_input.c, u_input.b.x < (u_input.b.x << (~u_input.c % 32u)), Struct_1(func_5(vec4<i32>(0i, 32217i, 34349i, u_input.b.x), u_input.c, -335f, Struct_2(u_input.c, Struct_1(true, vec2<f32>(429f, -126f), 301f, vec4<f32>(-228f, 2089f, 1376f, 419f), 0i), vec3<bool>(false, true, false), Struct_1(var_0.x, vec2<f32>(-506f, -874f), 1000f, vec4<f32>(1062f, -1814f, 2878f, -535f), 1i))).d.a || var_0.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(890f, 648f) - vec2<f32>(-636f, 2418f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -457f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(541f - -734f))), func_4(0u, func_4(40043u, true, Struct_1(var_0.x, vec2<f32>(206f, -826f), -1532f, vec4<f32>(-2686f, 477f, 1000f, -882f), 1i)).b.a, Struct_1(false, vec2<f32>(904f, 418f), -112f, vec4<f32>(-1583f, 396f, 1000f, 1404f), 0i)).b.d, ~(u_input.b.x & u_input.b.x))).c, func_2(Struct_2(10677u, func_6(Struct_2(u_input.c, Struct_1(true, vec2<f32>(-1597f, -786f), 1304f, vec4<f32>(1090f, 2000f, 574f, 1613f), -53769i), vec3<bool>(var_0.x, false, true), Struct_1(false, vec2<f32>(-1641f, 437f), 932f, vec4<f32>(843f, -210f, -1000f, 161f), -2147483647i)), func_4(4294967295u, false, Struct_1(var_0.x, vec2<f32>(-359f, -183f), 506f, vec4<f32>(917f, 708f, 764f, 1000f), -1i)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-918f, -808f, 379f), vec3<f32>(895f, 558f, -257f))), Struct_1(false, vec2<f32>(455f, -438f), -1698f, vec4<f32>(1000f, -1018f, 1306f, 1616f), -2147483647i)), !vec3<bool>(var_0.x, var_0.x, false), Struct_1(true, vec2<f32>(-2200f, -857f), _wgslsmith_div_f32(1400f, -1261f), vec4<f32>(-905f, -757f, -651f, -844f), -2147483647i)), Struct_2(u_input.c, Struct_1(false, func_5(vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.a), u_input.c, -585f, Struct_2(u_input.c, Struct_1(var_0.x, vec2<f32>(-1455f, 1000f), 591f, vec4<f32>(-1876f, 1090f, -1585f, -282f), 6359i), vec3<bool>(false, false, var_0.x), Struct_1(var_0.x, vec2<f32>(1000f, 154f), -1676f, vec4<f32>(-1611f, -677f, 852f, -1256f), 2147483647i))).b.b, -1906f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 225f, -704f, 1000f) + vec4<f32>(-350f, -143f, -388f, -1442f)), firstLeadingBit(u_input.a)), vec3<bool>(true, var_0.x, all(vec3<bool>(var_0.x, false, false))), func_4(~u_input.c, true, func_2(Struct_2(u_input.c, Struct_1(true, vec2<f32>(-1271f, -1539f), -534f, vec4<f32>(-570f, 1014f, -169f, -234f), -22491i), vec3<bool>(var_0.x, false, false), Struct_1(var_0.x, vec2<f32>(189f, 1000f), 422f, vec4<f32>(1000f, 2084f, -1000f, 1000f), 1i)), Struct_2(u_input.c, Struct_1(var_0.x, vec2<f32>(-1047f, -330f), -634f, vec4<f32>(900f, 728f, 278f, 1897f), u_input.b.x), vec3<bool>(true, false, true), Struct_1(var_0.x, vec2<f32>(-917f, 1881f), -226f, vec4<f32>(-1091f, 424f, 1309f, -1315f), 50197i)), vec3<f32>(1957f, 1000f, -1000f))).b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(496f, 180f)), -341f, _wgslsmith_f_op_f32(-839f * _wgslsmith_div_f32(1500f, -404f)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b.x) - var_1.d.d.x);
    return func_5(vec4<i32>(2147483647i, _wgslsmith_div_i32(abs(var_1.b.e & -93878i), _wgslsmith_add_i32(max(u_input.b.x, -2147483647i), _wgslsmith_mod_i32(u_input.b.x, 35866i))), -1i, ~23332i), u_input.c, var_1.b.c, Struct_2(~abs(firstTrailingBit(4294967295u)), var_1.d, select(vec3<bool>(!var_1.c.x, false, !var_0.x), vec3<bool>(var_0.x, false & var_0.x, any(var_1.c)), any(vec3<bool>(var_1.d.a, true, var_1.c.x))), func_6(func_5(-vec4<i32>(u_input.a, u_input.a, var_1.b.e, var_1.d.e), firstLeadingBit(u_input.c), _wgslsmith_f_op_f32(579f + 1066f), Struct_2(60404u, var_1.d, vec3<bool>(var_1.b.a, var_1.d.a, var_0.x), Struct_1(var_1.b.a, vec2<f32>(var_1.d.b.x, var_1.d.b.x), -1040f, vec4<f32>(var_1.b.d.x, 366f, var_1.d.d.x, var_1.d.b.x), 17264i))), Struct_2(var_1.a, func_4(1u, false, var_1.d).b, !vec3<bool>(var_0.x, false, var_0.x), Struct_1(false, var_1.d.b, var_1.b.c, var_1.b.d, u_input.b.x)), var_1.d.d.xwy, Struct_1(false, _wgslsmith_f_op_vec2_f32(step(var_1.d.d.wz, vec2<f32>(-829f, var_1.b.d.x))), 626f, vec4<f32>(var_1.d.d.x, 383f, var_1.d.c, var_1.d.d.x), -16273i))));
}

fn func_7(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = 27075i << (arg_0 % 32u);
    let var_1 = abs(func_4(0u, arg_1.d.a, arg_1.b).d.e);
    let var_2 = arg_1.b;
    let var_3 = ~vec2<u32>(u_input.c, ~(~arg_0));
    global1 = -21516i;
    return func_5(vec4<i32>(func_5(vec4<i32>(2147483647i, var_1 ^ u_input.b.x, var_2.e, arg_1.d.e), ~(~u_input.c), 1000f, arg_1).b.e, var_0, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(var_0, 45869i, var_1), -vec3<i32>(var_2.e, var_0, var_0)), u_input.b), _wgslsmith_add_i32(0i, u_input.a)), firstTrailingBit(0u), _wgslsmith_f_op_f32(floor(1332f)), arg_1);
}

fn func_8(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: vec2<u32>) -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b.x));
    global1 = -2147483647i;
    var var_0 = vec4<u32>(arg_3.x, ~countOneBits(arg_1), ~_wgslsmith_mult_u32(~(1u & arg_0.a), func_5(vec4<i32>(arg_0.b.e, 5416i, 1i, arg_0.d.e), 16281u, 1018f, func_5(vec4<i32>(-1i, arg_0.d.e, 22171i, arg_2), 0u, -1000f, arg_0)).a), ~_wgslsmith_add_u32(arg_0.a, u_input.c));
    var var_1 = arg_0;
    var var_2 = arg_0;
    return var_1.d.a != true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = 1402u;
    let var_2 = _wgslsmith_div_f32(1077f, _wgslsmith_f_op_f32(1f * 1000f));
    let var_3 = Struct_2(~u_input.c, Struct_1(!any(vec4<bool>(true, true, true, true)), vec2<f32>(var_2, 343f), 1292f, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(534f)), var_2, 1f, var_2))), _wgslsmith_add_i32(countOneBits(0i), u_input.a)), vec3<bool>(-(i32(-1i) * -19195i) >= u_input.b.x, func_8(func_7(~u_input.c, func_1()), 10679u, _wgslsmith_mod_i32(-7456i, abs(-2147483647i)), ~vec2<u32>(u_input.c, u_input.c)), true & (_wgslsmith_f_op_f32(-var_2) != _wgslsmith_f_op_f32(max(var_2, 102f)))), func_1().d);
    let var_4 = reverseBits(func_5(vec4<i32>(_wgslsmith_add_i32(-1i, 16318i) >> (u_input.c % 32u), ~countOneBits(u_input.a), firstLeadingBit(var_3.b.e), func_5(countOneBits(vec4<i32>(var_3.b.e, var_3.d.e, u_input.b.x, 1i)), select(36861u, 1u, var_3.d.a), -235f, Struct_2(64485u, var_3.b, vec3<bool>(true, false, var_3.c.x), Struct_1(var_3.d.a, vec2<f32>(var_3.b.b.x, var_3.b.b.x), var_2, vec4<f32>(-201f, -1093f, 704f, -1000f), -10867i))).b.e), var_3.a, var_2, var_3).a);
    var var_5 = Struct_2(1u, func_7((1u >> (0u % 32u)) ^ ~var_4, Struct_2(_wgslsmith_add_u32(reverseBits(u_input.c), var_4), var_3.d, func_7(14661u, Struct_2(1u, var_3.b, var_3.c, Struct_1(true, var_3.b.b, 390f, vec4<f32>(var_3.d.c, 1182f, var_2, -1378f), var_3.d.e))).c, Struct_1(all(vec2<bool>(var_3.d.a, var_3.d.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.d.c, 1237f) + vec2<f32>(var_2, -160f)), func_4(var_4, true, var_3.b).b.b.x, var_3.d.d, func_1().b.e))).b, vec3<bool>(var_3.c.x, all(!func_7(var_4, Struct_2(102963u, var_3.b, vec3<bool>(var_3.d.a, true, false), Struct_1(false, vec2<f32>(var_2, -1463f), var_2, var_3.d.d, var_3.d.e))).c), var_3.b.a), var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(func_6(Struct_2(1u, Struct_1(true, var_5.b.d.wy, var_3.b.c, var_5.b.d, -1i), var_5.c, var_3.d), Struct_2(4294967295u, Struct_1(var_3.c.x, var_5.d.d.wx, var_2, var_3.b.d, -17120i), var_3.c, Struct_1(false, var_5.b.b, -116f, var_3.b.d, -31291i)), vec3<f32>(-1000f, var_3.b.b.x, var_5.d.c), Struct_1(true, vec2<f32>(-104f, var_2), 512f, vec4<f32>(var_3.b.c, var_2, 584f, -1459f), 2147483647i)).d.zzz, vec3<f32>(var_5.b.d.x, var_3.d.b.x, var_5.d.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.b.c, var_5.b.d.x, var_3.d.c) * vec3<f32>(-2135f, -568f, 165f)))), select(u_input.a << (~(u_input.c << (4294967295u % 32u)) % 32u), var_3.d.e, func_6(var_3, Struct_2(4294967295u, var_5.d, !vec3<bool>(false, var_5.c.x, false), var_5.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_5.d.d.yww)), _wgslsmith_div_vec3_f32(var_5.d.d.zwz, var_3.b.d.yzz)), var_3.b).a), abs(var_5.a));
}

