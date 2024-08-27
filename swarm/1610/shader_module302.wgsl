struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(0u, 97885u, 4294967295u, 43173u));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    var var_0 = vec3<bool>(true, false, true);
    var var_1 = Struct_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, arg_0.b.x), 4294967295u, _wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(arg_0.b.x, arg_0.a.x, 0u, 1u)), firstLeadingBit(global0.b.x)), firstTrailingBit(firstLeadingBit(vec4<u32>(arg_0.a.x, global0.b.x, global0.a.x, 33640u))), vec4<u32>(6014u, reverseBits(13684u), ~u_input.c.x, ~4294967295u)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(25055u, arg_0.a.x, 0u, 4294967295u), ~vec4<u32>(u_input.c.x, 4294967295u, global0.a.x, 4294967295u)), ~vec4<u32>(29522u, 0u, global0.b.x, global0.b.x)));
    let var_2 = Struct_1(vec4<u32>(1u, firstLeadingBit(global0.a.x), global0.b.x, global0.a.x) ^ _wgslsmith_mod_vec4_u32(firstTrailingBit(select(vec4<u32>(global0.a.x, arg_0.a.x, 43276u, u_input.a), u_input.c, var_0.x)), ~abs(arg_0.a)), max(arg_0.a, u_input.c));
    let var_3 = arg_0;
    let var_4 = var_3;
    return vec3<bool>(any(vec4<bool>(!all(vec3<bool>(var_0.x, var_0.x, true)), true, all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x)), false, !var_0.x);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = !(!func_3(Struct_1(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(arg_0.x, 28828u, 4294967295u, u_input.b.x)), u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -191f)));
    let var_1 = global0.a.x;
    var var_2 = select(false, true, var_0.x);
    var var_3 = vec2<u32>(~_wgslsmith_mod_u32(global0.a.x, 1u), _wgslsmith_dot_vec2_u32(max(~vec2<u32>(14176u, 17669u), arg_0), global0.a.yx | global0.a.xx));
    let var_4 = Struct_1(~(~vec4<u32>(select(arg_0.x, arg_0.x, true), ~1u, ~u_input.c.x, var_3.x)), _wgslsmith_add_vec4_u32(u_input.c ^ ~(vec4<u32>(49145u, 1u, global0.a.x, 109359u) << (global0.a % vec4<u32>(32u))), u_input.c & vec4<u32>(~arg_0.x, ~var_3.x, 48480u ^ arg_0.x, u_input.a | 74844u)));
    return Struct_1(_wgslsmith_sub_vec4_u32(global0.a, vec4<u32>(143200u, 1u, ~4294967295u, ~var_3.x)), reverseBits(_wgslsmith_div_vec4_u32(global0.b, var_4.a)) | (_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, u_input.c), vec4<u32>(global0.a.x, 35296u, var_3.x, 0u), select(vec4<u32>(global0.a.x, 0u, 40795u, 1u), vec4<u32>(4294967295u, var_4.a.x, 1726u, arg_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x))) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 0u, 0u), vec4<u32>(1145u, 9278u, var_3.x, global0.a.x)), var_4.a.x, 1u, 1u)));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1973f, -705f)) + _wgslsmith_f_op_f32(f32(-1f) * -1147f)))))), _wgslsmith_f_op_f32(round(136f)));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0)), var_0)));
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(~1i, i32(-1i) * -19355i, _wgslsmith_add_i32(2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(34731i, 155i, 1i), vec3<i32>(-2147483647i, 6817i, -1i)))), (vec3<i32>(2147483647i, _wgslsmith_sub_i32(12128i, 0i), -1i) >> (vec3<u32>(global0.b.x, ~1u, abs(global0.b.x)) % vec3<u32>(32u))) << (vec3<u32>(~(~u_input.b.x), 0u, 0u) % vec3<u32>(32u)));
    var_3 = -2147483647i;
    return select(vec4<bool>(_wgslsmith_f_op_f32(-var_0) >= -1088f, true, false, func_3(arg_0, var_0).x), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, true, true), true)), vec4<bool>(func_3(func_2(arg_0.a.zy), var_0).x, (4294967295u != var_1.a.x) && (1u <= arg_0.b.x), select(true, true, all(vec2<bool>(false, true))), select(true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(false, true, false)), true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)))), false);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = select(select(!vec4<bool>(u_input.c.x >= u_input.b.x, true, true, any(vec3<bool>(true, false, true))), func_4(func_2(abs(vec2<u32>(0u, 4294967295u)))), func_4(Struct_1(~u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global0.b.x, u_input.b.x, global0.b.x), u_input.c)))), !select(vec4<bool>(true, all(vec2<bool>(true, false)), all(vec2<bool>(false, true)), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, true, true)), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_4(Struct_1(vec4<u32>(u_input.b.x, 48219u, 0u, global0.b.x), vec4<u32>(4294967295u, 41753u, 2055u, 3242u))).x, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(131f, -767f, 217f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1550f)))), vec4<f32>(-440f, _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(849f * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + 785f), _wgslsmith_f_op_f32(853f - arg_0.x))))))));
    var var_2 = vec2<i32>(10409i, min(-19329i ^ countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(18194i, -3562i), vec2<i32>(58767i, -1i))), -abs(-2147483647i)));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-788f, 1648f, var_1.x, arg_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1394f, 737f)) - 307f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x - -778f))), _wgslsmith_f_op_f32(-arg_0.x), -417f)))));
    var var_3 = vec3<i32>(-var_2.x, min(~reverseBits(abs(var_2.x)), select(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1036i, var_2.x), vec3<i32>(var_2.x, -20103i, 5161i)), i32(-1i) * -37785i, 1i), 998i, !all(vec4<bool>(var_0.x, true, var_0.x, true)))), 1i);
    return Struct_1(vec4<u32>(0u, _wgslsmith_add_u32(~(~0u), countOneBits(reverseBits(u_input.a))), 0u << (~u_input.b.x % 32u), abs(global0.a.x)), abs(reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b.x, global0.b.x, 7394u, u_input.b.x), vec4<u32>(28021u, 0u, u_input.b.x, 54660u), vec4<u32>(48134u, 0u, u_input.b.x, global0.b.x)))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(-1341f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1048f, _wgslsmith_f_op_f32(1982f + 857f))))) + 1583f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1148f * -653f)) + 1241f))));
    var var_1 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(-25511i), ~arg_1.x, 1i, firstTrailingBit(_wgslsmith_mult_i32(arg_1.x, 20819i))), -(~vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), -1000f, -326f);
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(800f - 1019f), _wgslsmith_f_op_f32(select(187f, -811f, true)), 1493f), vec3<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x), 603f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, -338f), _wgslsmith_f_op_f32(step(var_0.x, 1296f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(165f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -1055f) - var_0.x), _wgslsmith_f_op_f32(-470f * -286f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1173f, 1339f, -1857f)))), vec3<f32>(var_0.x, -455f, -856f))));
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(u_input.c, global0.a);
    let var_1 = -4886i;
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_div_u32(select(_wgslsmith_dot_vec3_u32(global0.b.xxz, vec3<u32>(global0.a.x, 0u, 0u)), ~30646u, true), min(_wgslsmith_sub_u32(73009u, 0u), ~arg_0.a.x)), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(14062u, 0u), arg_1.b.x), 18578u, func_1(vec2<f32>(_wgslsmith_f_op_f32(min(611f, -208f)), _wgslsmith_f_op_f32(414f * 319f))).a.x), select(arg_0.b, firstTrailingBit(vec4<u32>(arg_0.b.x, 0u, 50772u, 759u)) & (arg_1.a >> (arg_1.b % vec4<u32>(32u))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(arg_2.b.wz, global0.b.zw), max(1u, 37618u), _wgslsmith_sub_u32(var_0.b.x, 4294967295u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, arg_1.a.x, 55238u, 38080u), u_input.c), select(vec4<u32>(0u, 26159u, var_0.b.x, 1u), u_input.c, false) ^ vec4<u32>(20839u, 20019u, global0.a.x, u_input.c.x)));
    var var_3 = Struct_1(vec4<u32>(max(~(~1u), arg_2.b.x), abs(4294967295u), 4294967295u, ~(5555u >> ((79781u << (var_2.a.x % 32u)) % 32u))), ~((vec4<u32>(var_2.a.x, 4294967295u, 4294967295u, 1u) ^ ~arg_2.a) << (~arg_2.a % vec4<u32>(32u))));
    var_3 = arg_0;
    return var_2.b;
}

fn func_7(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_clamp_i32(1i, abs(-_wgslsmith_clamp_i32(-2147483647i, -1i, ~2147483647i)), 1i);
    var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -236f));
    let var_3 = ~(~(vec3<u32>(_wgslsmith_mod_u32(var_0.b.x, 1u), firstTrailingBit(13935u), global0.b.x | var_0.a.x) >> (func_5(vec2<u32>(global0.b.x, u_input.c.x), -vec3<i32>(1i, 50718i, 2147483647i), func_1(vec2<f32>(-651f, arg_1.x))).b.zxw % vec3<u32>(32u))));
    return func_5(vec2<u32>(_wgslsmith_sub_u32(global0.b.x, var_3.x), arg_0.a.x), reverseBits(-(vec3<i32>(-7335i, 41524i, -2843i) << (u_input.c.zzy % vec3<u32>(32u))) & min(vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, -1i, 2147483647i))), func_5(firstLeadingBit(u_input.b), abs(-firstLeadingBit(vec3<i32>(-27423i, -9388i, 2147483647i))), func_5(abs(vec2<u32>(global0.a.x, 1u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, 52293i), vec3<i32>(38998i, 82034i, -1i), vec3<i32>(27720i, -1i, 0i)) & (vec3<i32>(-2147483647i, -1i, 0i) >> (var_3 % vec3<u32>(32u))), Struct_1(var_0.a, func_5(vec2<u32>(73000u, 4294967295u), vec3<i32>(12544i, 13266i, -9815i), arg_0).b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(Struct_1(vec4<u32>(u_input.b.x, abs(30855u), _wgslsmith_mod_u32(u_input.c.x, u_input.a), u_input.c.x) >> (select(firstTrailingBit(global0.b), _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(4294967295u, 7820u, 1u, u_input.b.x)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), func_6(Struct_1(global0.a | vec4<u32>(4294967295u, global0.b.x, global0.a.x, 6904u), max(u_input.c, global0.b)), Struct_1(vec4<u32>(u_input.c.x, global0.a.x, 15707u, 98034u) << (vec4<u32>(global0.b.x, 22815u, u_input.b.x, 1u) % vec4<u32>(32u)), ~global0.a), func_5(vec2<u32>(1u, u_input.b.x), ~vec3<i32>(22342i, 44685i, 112835i), func_1(vec2<f32>(780f, -1367f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-597f, 337f, -1556f, -917f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1454f, 805f, 1494f, -152f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-561f, _wgslsmith_f_op_f32(-1484f - -830f), _wgslsmith_f_op_f32(round(-615f)), _wgslsmith_f_op_f32(f32(-1f) * -878f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1441f, 1000f, 2093f, 1928f), vec4<f32>(-764f, 1257f, -1422f, -591f))), any(vec4<bool>(true, true, true, true))))));
    var var_0 = func_2(~(~vec2<u32>(113094u, u_input.c.x)) & ~countOneBits(_wgslsmith_mod_vec2_u32(u_input.c.xw, vec2<u32>(0u, u_input.b.x))));
    var var_1 = func_2(firstLeadingBit(max(_wgslsmith_div_vec2_u32(u_input.b, func_5(vec2<u32>(31103u, var_0.b.x), vec3<i32>(-1i, 8805i, -12811i), Struct_1(var_0.a, var_0.b)).a.xw), u_input.c.zz)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, 0i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, -1i), 0i) << (~(~var_1.b.x) % 32u), i32(-1i) * -38767i), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(719f, 1024f, -1320f, -357f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(885f, 819f, 314f, -840f), vec4<f32>(669f, 754f, -862f, -1410f), false)))) * vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-464f)), 1f)), -1287f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-284f)), _wgslsmith_f_op_f32(step(1724f, -1029f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f) - _wgslsmith_f_op_f32(774f + 473f)))), -390f, vec3<i32>(0i, 1i, -((i32(-1i) * -50161i) | (-2147483647i >> (var_0.a.x % 32u)))));
}

