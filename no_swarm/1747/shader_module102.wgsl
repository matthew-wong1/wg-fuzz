struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_3(Struct_2(firstLeadingBit(~arg_0), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-642f, 558f, 373f, 1115f), vec4<f32>(506f, -1000f, -1914f, -1874f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-560f, -1239f, -333f, 538f))), vec4<f32>(-349f, _wgslsmith_f_op_f32(1056f + 1750f), _wgslsmith_f_op_f32(ceil(261f)), _wgslsmith_div_f32(1202f, 584f)), u_input.a <= arg_0.x)), firstTrailingBit(vec3<i32>(abs(u_input.b), -3016i, _wgslsmith_div_i32(2147483647i, arg_1.x))), vec3<u32>(u_input.a, 269u, _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(arg_0.x, u_input.c, arg_0.x, arg_0.x))), -(~vec2<i32>(arg_1.x, -1i) & vec2<i32>(arg_1.x, -36499i))), Struct_2(select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 50160u, 1u, 22087u), arg_0) | ~vec4<u32>(21697u, 1u, 4294967295u, 61819u), vec4<u32>(arg_0.x, _wgslsmith_mult_u32(43504u, 1u), ~arg_0.x, arg_0.x), true), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(177f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 162f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1243f * 495f), _wgslsmith_f_op_f32(trunc(-712f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1018f)))), -arg_1.xyw, vec3<u32>(u_input.c, ~select(arg_0.x, arg_0.x, false), _wgslsmith_dot_vec3_u32(select(arg_0.xxy, vec3<u32>(0u, arg_0.x, arg_0.x), false), vec3<u32>(arg_0.x, u_input.c, u_input.c))), vec2<i32>(-28360i, arg_1.x | (-17482i >> (u_input.a % 32u)))), select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true)), vec4<bool>(true, true, true, true), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false))), all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-401f)), 954f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1330f, 1125f)))), -1418f)));
    return ~(var_0.a.d.x ^ arg_0.x);
}

fn func_2() -> u32 {
    let var_0 = ~reverseBits(~min(vec4<u32>(1u, u_input.c, 1u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, 4294967295u), vec4<u32>(17197u, 1u, u_input.a, u_input.c))));
    var var_1 = Struct_5(u_input.d.x);
    var var_2 = ~(~(~u_input.c)) < (countOneBits(~_wgslsmith_div_u32(u_input.c, 0u)) ^ max(17628u, var_0.x));
    let var_3 = abs(var_1.a);
    var_1 = Struct_5(var_3 << (9782u % 32u));
    return max(~min(0u, abs(1305u)), func_3(vec4<u32>(_wgslsmith_sub_u32(var_0.x, 0u), var_0.x, ~4294967295u, ~u_input.a) << ((_wgslsmith_mod_vec4_u32(var_0, vec4<u32>(var_0.x, 12314u, 4294967295u, 59075u)) | _wgslsmith_div_vec4_u32(vec4<u32>(8238u, var_0.x, 1u, 65454u), vec4<u32>(u_input.c, 17415u, var_0.x, u_input.c))) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.d.x, 3027i, max(var_1.a, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-35801i, u_input.d.x, var_3), vec3<i32>(38701i, 1i, -2147483647i))))));
}

fn func_1() -> bool {
    var var_0 = Struct_2(vec4<u32>(~u_input.a, firstLeadingBit(u_input.a | _wgslsmith_div_u32(33001u, 5073u)), abs(func_2()), 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-269f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -540f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-280f, 382f, false)), -859f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1265f, -906f))))), vec3<i32>(firstTrailingBit(firstLeadingBit(-u_input.d.x)), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(-1i, 1i)), u_input.d), ~(-u_input.d.x)), select(vec3<u32>(u_input.a, ~44589u, ~(u_input.c & u_input.a)), vec3<u32>(~u_input.c, reverseBits(43866u), u_input.c) & select(~vec3<u32>(u_input.c, u_input.c, 26972u), ~vec3<u32>(124984u, u_input.c, u_input.a), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), !any(vec2<bool>(true, true)) & (func_2() <= firstLeadingBit(u_input.a))), _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(0i), 37718i), firstLeadingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-3009i, u_input.b), u_input.d), u_input.d))));
    var_0 = Struct_2(countOneBits(var_0.a), _wgslsmith_div_vec4_f32(var_0.b, var_0.b), var_0.c, vec3<u32>(2719u, var_0.d.x, abs(~var_0.d.x) << (0u % 32u)), countOneBits(var_0.e | _wgslsmith_div_vec2_i32(var_0.c.zz, u_input.d)));
    var var_1 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.b))), var_0.c, var_0.a.yyw, -firstLeadingBit(vec2<i32>(u_input.b, u_input.b) >> (var_0.a.wx % vec2<u32>(32u))));
    var var_2 = Struct_3(Struct_2(~_wgslsmith_mod_vec4_u32(var_0.a, vec4<u32>(var_0.a.x, 51910u, 7993u, var_1.a.x)), var_1.b, var_1.c, ~(~_wgslsmith_add_vec3_u32(var_0.d, var_1.d)), countOneBits(~(~vec2<i32>(-1i, u_input.b)))), Struct_2(var_1.a, vec4<f32>(-185f, var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(f32(-1f) * -1571f)), _wgslsmith_f_op_f32(-var_1.b.x)), -vec3<i32>(_wgslsmith_mult_i32(var_0.c.x, 32515i), -2147483647i, -18754i), vec3<u32>(var_0.d.x, ~4294967295u, abs(~1u)), firstLeadingBit(max(vec2<i32>(var_1.c.x, var_1.c.x), vec2<i32>(u_input.d.x, var_1.e.x) << (var_0.d.xy % vec2<u32>(32u))))), select(vec4<bool>(true, false, _wgslsmith_f_op_f32(var_1.b.x * -319f) == 703f, false), !vec4<bool>(true, true, true, any(vec2<bool>(true, true))), vec4<bool>(all(vec3<bool>(false, true, false)), true, (1i | var_1.e.x) >= u_input.d.x, all(vec2<bool>(true, true)))), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_div_f32(var_1.b.x, var_0.b.x)) + _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))));
    var var_3 = vec3<bool>(true, true, !all(vec3<bool>(true || var_2.c.x, any(vec2<bool>(var_2.c.x, var_2.c.x)), true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) <= 828f;
}

fn func_4(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_2(~_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a, ~1u, 4294967295u, func_2()), vec4<u32>(select(0u, u_input.c, false), ~0u, u_input.c, min(50132u, u_input.c)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 53890u, 1u, 4294967295u), vec4<u32>(u_input.a, 0u, 17537u, 4294967295u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-590f, 248f, 2153f, -1708f) * vec4<f32>(881f, 871f, 264f, -1227f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2515f, -243f, -660f, 1475f), vec4<f32>(639f, -1177f, -1000f, -1125f))))), select(-(vec3<i32>(u_input.d.x, 47623i, u_input.b) >> (vec3<u32>(u_input.c, 0u, u_input.c) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.d.x, 0i), vec3<i32>(u_input.d.x, -37237i, 27947i) >> (vec3<u32>(0u, 1u, 54788u) % vec3<u32>(32u))), vec3<bool>(true, !arg_0.x, u_input.d.x >= -1i)) & vec3<i32>(-u_input.d.x, ~(~0i), -_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(-14968i, u_input.d.x))), select(~(vec3<u32>(u_input.c, u_input.a, 449u) << (vec3<u32>(34139u, u_input.a, u_input.c) % vec3<u32>(32u))), firstTrailingBit(min(vec3<u32>(u_input.c, 28762u, 0u), vec3<u32>(8807u, u_input.c, 13965u))), select(false, false, !arg_0.x)) >> (_wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.c, 1u), vec3<u32>(0u, u_input.a, u_input.a)), vec3<u32>(108729u, u_input.c | u_input.c, 1u)) % vec3<u32>(32u)), ~(-vec2<i32>(-21084i, -6046i)));
    let var_1 = countOneBits(vec3<i32>(var_0.e.x, select(var_0.e.x, _wgslsmith_add_i32(-1i, 1i) & _wgslsmith_clamp_i32(79072i, -72107i, 0i), arg_0.x), u_input.b));
    let var_2 = vec4<i32>(u_input.d.x, _wgslsmith_clamp_i32(-_wgslsmith_div_i32(-23106i, ~(-2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -35802i, _wgslsmith_clamp_i32(u_input.d.x, -23723i, 2147483647i), 40417i), vec4<i32>(u_input.d.x, countOneBits(var_1.x), 18463i, var_1.x)), var_1.x), -var_0.e.x, var_0.e.x);
    var_0 = Struct_2(~(~vec4<u32>(var_0.d.x, 0u, u_input.c, u_input.a) >> (vec4<u32>(u_input.a, 21941u, u_input.c, var_0.a.x) % vec4<u32>(32u))) << (var_0.a % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-296f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x) * var_0.b.x), 1292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))))), var_2.xwy, vec3<u32>(u_input.a, ~0u, countOneBits(_wgslsmith_div_u32(4294967295u, 9278u) << (firstTrailingBit(u_input.c) % 32u))), vec2<i32>(var_1.x, _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(var_1.x, -18595i))));
    var var_3 = Struct_2(vec4<u32>(var_0.d.x, abs(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 64925u), var_0.a.xz))), _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, 1u, var_0.d.x) >> (vec3<u32>(var_0.a.x, 58514u, 40456u) % vec3<u32>(32u))), select(~vec3<u32>(1u, u_input.c, u_input.a), vec3<u32>(u_input.c, 4294967295u, 50898u), vec3<bool>(arg_0.x, false, false))), 41241u << (var_0.d.x % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(ceil(309f)), 1348f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) + -204f))), vec3<i32>(countOneBits(51321i | _wgslsmith_add_i32(var_1.x, -1i)), ~var_0.c.x, -(~(var_0.e.x & -22714i))), var_0.a.yzz, ~vec2<i32>(firstTrailingBit(abs(var_1.x)), _wgslsmith_div_i32(max(var_0.c.x, 0i), -1i)));
    return Struct_3(Struct_2(vec4<u32>(var_0.a.x, 46587u, 0u, _wgslsmith_mod_u32(reverseBits(var_3.a.x), _wgslsmith_dot_vec2_u32(var_3.d.yy, var_0.a.xx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_3.b))), reverseBits(-vec3<i32>(u_input.b, var_2.x, 2147483647i)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(80219u, 53568u, u_input.a), vec3<u32>(u_input.c, 26076u, 61124u)) | _wgslsmith_div_vec3_u32(vec3<u32>(var_3.a.x, 0u, 36469u), var_3.a.yxz), ~vec3<u32>(var_0.d.x, u_input.a, u_input.c), countOneBits(var_3.d)), var_3.c.yz), Struct_2(var_3.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(step(131f, 250f)), var_0.b.x, _wgslsmith_f_op_f32(ceil(890f)))), var_1, ~var_0.d, _wgslsmith_div_vec2_i32(-var_1.xz, max(-vec2<i32>(var_2.x, 0i), -var_3.e))), arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * -597f), var_3.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1067f, -1253f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -452f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1479f)))), -237f));
    var var_1 = _wgslsmith_div_f32(-410f, _wgslsmith_f_op_f32(abs(285f)));
    let var_2 = func_4(vec4<bool>(func_1() | (select(false, false, true) & false), true, true, u_input.b != -6239i));
    var_1 = var_2.b.b.x;
    var_1 = _wgslsmith_f_op_f32(-var_2.d.x);
    let var_3 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, 2147483647i), var_2.a.c.yy << (var_2.a.a.xz % vec2<u32>(32u))), abs(var_2.a.e)), firstLeadingBit(vec2<i32>(var_2.a.c.x >> (var_2.b.d.x % 32u), -47267i)), vec2<i32>(-u_input.d.x, _wgslsmith_mod_i32(var_2.b.e.x | var_2.b.e.x, u_input.b))), ~(u_input.d | var_2.a.e) ^ -_wgslsmith_div_vec2_i32(~var_2.b.c.xz, -vec2<i32>(u_input.d.x, u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, abs(var_3.x)), var_2.a.e), firstTrailingBit(vec2<i32>(min(u_input.d.x, u_input.d.x), 26688i))), ~var_2.b.a.yz);
}

