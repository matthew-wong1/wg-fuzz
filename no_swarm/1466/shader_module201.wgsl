struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_2 {
    var var_0 = 1f;
    var_0 = 844f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f))), -582f)) * _wgslsmith_f_op_f32(1770f - 2083f));
    var_0 = -986f;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -492f) - _wgslsmith_f_op_f32(f32(-1f) * -471f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(240f - -918f), -1643f)))))));
    return Struct_2(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_mult_u32(6451u, 33847u), ~37065u, 4294967295u)), vec2<u32>(~4294967295u, ~(~_wgslsmith_div_u32(1u, 42138u))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(vec4<u32>(20947u, 1u, reverseBits(44983u), ~abs(arg_0)) << ((vec4<u32>(~arg_2.b.x, 0u, 0u, arg_2.a) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, arg_0, arg_0), vec4<u32>(arg_2.b.x, arg_0, arg_2.b.x, arg_2.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), all(vec2<bool>(arg_1, arg_1)), ~arg_2.b);
    var var_1 = u_input.a;
    var_1 = ~(_wgslsmith_dot_vec3_i32(vec3<i32>(11534i >> (arg_0 % 32u), ~u_input.a, u_input.a << (var_0.c.x % 32u)), vec3<i32>(~(-1i), 21673i, -45186i)) ^ _wgslsmith_mod_i32(u_input.a, u_input.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-666f, 1201f, var_0.b)), -532f, var_0.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(round(-883f)), 439f))));
    var var_3 = vec3<i32>(-6046i, ~83419i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-7670i, u_input.b, u_input.b, u_input.a), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a, -1i, u_input.b, u_input.a)) << (var_0.a % vec4<u32>(32u)), select(countOneBits(vec4<i32>(32591i, 2147483647i, -46124i, 3475i)), max(vec4<i32>(-4067i, 1i, u_input.b, 23323i), vec4<i32>(u_input.a, -1i, u_input.b, -2147483647i)), select(var_0.b, arg_1, false))), u_input.b));
    return Struct_3(func_2(), Struct_1(abs(_wgslsmith_sub_vec4_u32(var_0.a, ~vec4<u32>(arg_2.a, arg_2.b.x, arg_0, arg_0))), (true & var_0.b) && any(vec3<bool>(false, true, true)), ~var_0.a.yw));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = Struct_4(_wgslsmith_div_vec2_i32(max(_wgslsmith_add_vec2_i32(vec2<i32>(38716i, 10824i), _wgslsmith_div_vec2_i32(vec2<i32>(-17931i, -46099i), vec2<i32>(-19615i, u_input.a))), abs(vec2<i32>(u_input.b, 1i))), ~vec2<i32>(0i, 15242i)), func_3(select(4128u, 45013u, true | arg_2.b.b), reverseBits(arg_2.a.b.x) > arg_2.b.c.x, func_2()), _wgslsmith_f_op_vec4_f32(vec4<f32>(-913f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -731f) + arg_0.x), arg_0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1098f, arg_0.x, -1332f, -928f) + arg_0))))), vec2<i32>(arg_1 << (~_wgslsmith_clamp_u32(arg_2.b.a.x, 1u, 1u) % 32u), countOneBits(u_input.b)));
    let var_1 = vec3<i32>(-u_input.a, _wgslsmith_dot_vec4_i32(reverseBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.x, -1235i, 7295i, 0i), vec4<i32>(u_input.a, -58255i, var_0.d.x, -8053i))), abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, var_0.a.x, u_input.b), vec4<i32>(1i, var_0.a.x, -2147483647i, -1i)))), u_input.b);
    var_0 = Struct_4(-firstTrailingBit(var_1.zy << (arg_2.b.a.zy % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(u_input.b), firstLeadingBit(var_1.x)), var_0.a), Struct_3(func_3(abs(_wgslsmith_clamp_u32(var_0.b.a.b.x, 1u, 17553u)), arg_2.b.b, func_2()).a, func_3(max(~74807u, ~var_0.b.a.a), all(select(vec3<bool>(true, var_0.b.b.b, arg_2.b.b), vec3<bool>(arg_2.b.b, arg_2.b.b, true), false)), Struct_2(92868u, var_0.b.a.b ^ vec2<u32>(5445u, 137672u))).b), _wgslsmith_f_op_vec4_f32(select(var_0.c, _wgslsmith_f_op_vec4_f32(step(var_0.c, var_0.c)), !(!(!vec4<bool>(true, arg_2.b.b, false, var_0.b.b.b))))), vec2<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, arg_1, var_1.x), vec4<i32>(26990i, var_0.a.x, 2147483647i, var_1.x), vec4<i32>(1i, u_input.a, var_0.a.x, var_1.x)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, 2147483647i, 16414i, 2147483647i), firstTrailingBit(vec4<i32>(24508i, arg_1, var_0.a.x, -2147483647i)), abs(vec4<i32>(2147483647i, 31160i, u_input.b, 9018i)))), arg_1));
    var_0 = Struct_4(~var_1.yz, Struct_3(arg_2.a, var_0.b.b), _wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_f_op_f32(select(-2410f, _wgslsmith_f_op_f32(trunc(-521f)), select(true, var_0.b.b.b, var_0.b.b.b))), _wgslsmith_f_op_f32(f32(-1f) * -799f))), ~(~select(var_1.zz, reverseBits(var_0.a), select(vec2<bool>(false, true), vec2<bool>(var_0.b.b.b, var_0.b.b.b), vec2<bool>(var_0.b.b.b, arg_2.b.b)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-899f, -1635f, -1000f, _wgslsmith_f_op_f32(trunc(arg_0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_0.c.x, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(-586f * arg_0.x), _wgslsmith_f_op_f32(round(arg_0.x))))), var_0.c, true));
    return ~arg_2.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(-417f));
    var_0 = 1890f;
    var var_1 = Struct_4(vec2<i32>(~(-2147483647i ^ u_input.a), -2147483647i) | vec2<i32>(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b) >> (vec3<u32>(1u, 4294967295u, 61413u) % vec3<u32>(32u)), vec3<i32>(1i, -1i, 1i) & vec3<i32>(u_input.a, u_input.a, 10594i))), Struct_3(Struct_2(~3033u, ~max(vec2<u32>(68801u, 0u), vec2<u32>(0u, 836u))), Struct_1(func_1(vec4<f32>(1357f, -1185f, -994f, 103f), 2147483647i, Struct_3(Struct_2(4294967295u, vec2<u32>(18988u, 23207u)), Struct_1(vec4<u32>(33541u, 0u, 25734u, 0u), false, vec2<u32>(1u, 4294967295u)))) | vec4<u32>(1u, 1u, 1u, 1u), false, ~_wgslsmith_add_vec2_u32(vec2<u32>(21262u, 1u), vec2<u32>(14816u, 0u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(649f, -438f, -1000f, -1025f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-285f, 125f, -1047f, -1023f))), vec4<bool>(true, true, true, -1i < u_input.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(792f, _wgslsmith_f_op_f32(f32(-1f) * -2302f), _wgslsmith_f_op_f32(abs(450f)), -1356f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -435f, 1174f, -360f) * vec4<f32>(194f, 1414f, 1298f, -113f))))), vec2<i32>(-_wgslsmith_mod_i32(countOneBits(-61213i), abs(u_input.a)), _wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(u_input.b, u_input.b, u_input.a, 3287i)), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, 2147483647i, u_input.a, u_input.b), vec4<i32>(u_input.a, u_input.b, u_input.b, -2147483647i)))));
    var_1 = Struct_4(~_wgslsmith_sub_vec2_i32(var_1.a, ~(vec2<i32>(var_1.a.x, var_1.d.x) | var_1.a)), var_1.b, vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1332f), _wgslsmith_f_op_f32(max(-941f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.x))))), _wgslsmith_f_op_f32(f32(-1f) * -178f)), -vec2<i32>(var_1.a.x, var_1.d.x));
    var var_2 = var_1.b.a;
    var_1 = Struct_4(~(-(~(~vec2<i32>(-2147483647i, var_1.a.x)))), func_3(~1u, !all(select(vec4<bool>(true, var_1.b.b.b, false, var_1.b.b.b), vec4<bool>(false, false, var_1.b.b.b, var_1.b.b.b), var_1.b.b.b)), func_2()), _wgslsmith_f_op_vec4_f32(-var_1.c), abs(var_1.d));
    var var_3 = var_1.b.a.b;
    var var_4 = Struct_4(~select(abs(select(var_1.a, var_1.d, vec2<bool>(var_1.b.b.b, var_1.b.b.b))), vec2<i32>(-1i, 9898i), !var_1.b.b.b | false), func_3(~(~_wgslsmith_mult_u32(var_2.b.x, var_3.x)), var_1.b.b.b, Struct_2(firstLeadingBit(var_1.b.b.c.x ^ 4294967295u), vec2<u32>(var_2.a, var_1.b.b.a.x))), var_1.c, vec2<i32>(-2147483647i, -u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.xy, var_4.a);
}

