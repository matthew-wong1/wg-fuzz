struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: Struct_3,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_2(arg_0, _wgslsmith_f_op_f32(trunc(-377f)));
    var var_1 = Struct_2(Struct_1(var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * -894f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1046f, 2470f)) - -738f)), select(!arg_0.c, vec3<bool>(var_0.a.c.x, var_0.a.c.x, false), arg_0.c), _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.d, firstTrailingBit(20094u)), ~(~14769u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f))) - 514f));
    var var_2 = vec3<i32>(-1i, u_input.a, -_wgslsmith_sub_i32(~u_input.a, u_input.d | u_input.a)) >> (countOneBits(~vec3<u32>(arg_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(38673u, u_input.c.x, var_1.a.d), vec3<u32>(69047u, 11753u, var_0.a.d)), var_1.a.d | arg_0.d)) % vec3<u32>(32u));
    var_2 = ~select(vec3<i32>(-(~(-2147483647i)), 0i, ~_wgslsmith_div_i32(var_2.x, u_input.d)), vec3<i32>(-47064i, ~(i32(-1i) * -19870i), ~reverseBits(0i)), !var_0.a.c);
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1467f, var_1.a.a)))), Struct_1(1331f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1456f, arg_0.a))), arg_0.c, _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 26070u, 2650u, 55549u), vec4<u32>(4294967295u, var_1.a.d, var_0.a.d, var_0.a.d)), firstTrailingBit(vec4<u32>(552u, 1u, var_0.a.d, 0u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1769f)), _wgslsmith_f_op_f32(min(var_0.b, 130f)), vec3<bool>(true, all(vec3<bool>(var_0.a.c.x, var_1.a.c.x, true)), true), ~0u), vec3<u32>(arg_0.d, 17746u, ~58113u) | ~(~vec3<u32>(0u, var_1.a.d, arg_0.d))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-154f, -1155f) - vec2<f32>(var_0.b, var_1.b)))))))), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, _wgslsmith_f_op_f32(ceil(-1519f)))), var_0.a, arg_0, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d, 10623u, 4294967295u) | vec3<u32>(1u, var_1.a.d, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.d, var_1.a.d, 4294967295u), vec3<u32>(71764u, u_input.c.x, 1u))), ~vec3<u32>(6664u, var_1.a.d, 1u))), var_0.a.c.x, vec4<i32>(66296i, 1i, ~(-(var_2.x << (0u % 32u))), 11546i));
    return true;
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = !select(vec4<bool>(select(true, func_3(Struct_1(-1000f, -106f, vec3<bool>(true, true, true), 15253u)), true), 1u != _wgslsmith_mod_u32(u_input.c.x, 27640u), u_input.a > (-1i ^ u_input.d), true), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, false, all(vec4<bool>(false, false, false, false))));
    let var_1 = var_0.xwy;
    let var_2 = -1000f;
    var var_3 = vec4<i32>(-1i) * -(~(-vec4<i32>(1i, 0i, u_input.a, u_input.a)) ^ vec4<i32>(u_input.a, firstTrailingBit(0i), -3536i, u_input.d));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1393f, 375f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2)))), vec3<bool>(var_1.x, !(var_3.x == u_input.a), var_2 <= -128f), firstTrailingBit(~58681u)), var_2);
    return !all(!select(!vec3<bool>(var_4.a.c.x, var_0.x, var_0.x), vec3<bool>(var_4.a.c.x, var_4.a.c.x, var_1.x), !var_4.a.c));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: bool) -> i32 {
    let var_0 = Struct_2(arg_2.c.c, arg_2.a.a.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.b.x)) - 239f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-272f * _wgslsmith_f_op_f32(-var_0.b)))), vec3<bool>(false, max(24127u, 40580u) > arg_2.a.d.x, true), abs(countOneBits(1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.a.b.a, var_0.a.a, arg_2.a.c.d <= 6790u)), 1529f));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a, arg_2.a.c.a) * arg_2.b) + arg_2.b) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-471f, 1239f), arg_2.c.a, arg_2.c.b.c.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.c.b, var_0.b) * vec2<f32>(710f, 574f)))) + arg_2.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1928f + 578f), _wgslsmith_f_op_f32(-var_1.a.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-958f + -287f) - _wgslsmith_f_op_f32(abs(arg_2.b.x))), var_0.a.c, ~var_1.a.d), Struct_1(383f, arg_2.b.x, select(select(vec3<bool>(var_0.a.c.x, arg_2.a.b.c.x, var_0.a.c.x), vec3<bool>(true, false, var_0.a.c.x), select(vec3<bool>(var_1.a.c.x, false, true), vec3<bool>(arg_1.x, arg_3, true), true)), select(select(var_0.a.c, vec3<bool>(var_0.a.c.x, arg_3, true), arg_1), !var_1.a.c, arg_2.c.a.x < var_0.a.a), select(select(vec3<bool>(var_0.a.c.x, var_1.a.c.x, false), vec3<bool>(var_1.a.c.x, true, var_0.a.c.x), arg_2.a.b.c.x), !vec3<bool>(false, var_0.a.c.x, arg_3), select(vec3<bool>(true, var_0.a.c.x, true), vec3<bool>(arg_3, false, arg_3), arg_1))), abs(~_wgslsmith_mod_u32(var_1.a.d, u_input.b))), firstTrailingBit(vec3<u32>(4294967295u, _wgslsmith_sub_u32(u_input.b, 61650u) ^ u_input.c.x, var_1.a.d)));
    var_1 = var_0;
    var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -860f) + var_1.b), arg_2.c.a.x), -181f, vec3<bool>(true, all(vec4<bool>(true, arg_1.x, true, arg_3)), func_3(Struct_1(arg_2.c.b.b, 1291f, vec3<bool>(false, arg_2.d, true), u_input.b))), var_0.a.d), -573f);
    return -13121i & ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0.x, _wgslsmith_mod_i32(arg_0.x, -2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, arg_2.e.x, -5357i), arg_2.e.yyx), ~arg_0.yxy), _wgslsmith_dot_vec3_i32(vec3<i32>(-54131i, -2147483647i, arg_0.x), firstTrailingBit(vec3<i32>(arg_2.e.x, -44602i, arg_0.x))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-521f))))) * 1000f) != -1625f;
    var_0 = _wgslsmith_clamp_i32(1i | _wgslsmith_mult_i32(u_input.a, u_input.d ^ 18407i), u_input.a, i32(-1i) * -u_input.d) < (0i ^ _wgslsmith_div_i32(u_input.a, 6774i << (u_input.b % 32u)));
    let var_1 = _wgslsmith_add_i32(-(_wgslsmith_mult_i32(min(u_input.d, u_input.a), -23075i) & 32606i), 2147483647i);
    let var_2 = vec4<i32>(-34153i, func_4(abs(reverseBits(vec4<i32>(u_input.d, -8426i, u_input.a, -42591i) | vec4<i32>(u_input.a, -2147483647i, 1i, -2312i))), !vec3<bool>(func_2(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), true, true), Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(164f, 855f) * vec2<f32>(1673f, 1733f)), Struct_1(599f, -415f, vec3<bool>(arg_0, arg_0, false), u_input.b), Struct_1(-176f, -291f, vec3<bool>(false, false, true), u_input.c.x), vec3<u32>(u_input.b, u_input.c.x, 73871u) | vec3<u32>(u_input.c.x, 33506u, 49491u)), vec2<f32>(_wgslsmith_div_f32(323f, -1260f), -274f), Struct_3(vec2<f32>(1000f, -983f), Struct_1(1265f, 1563f, vec3<bool>(arg_0, true, false), 4294967295u), Struct_1(-467f, 497f, vec3<bool>(arg_0, arg_0, arg_0), 9361u), ~vec3<u32>(0u, u_input.b, u_input.b)), !all(vec3<bool>(arg_0, true, true)), reverseBits(vec4<i32>(11780i, var_1, 68245i, -62544i) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) % vec4<u32>(32u)))), arg_0 | true), -21609i, _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, -41341i, -17675i), -vec3<i32>(53098i, var_1, 2147483647i)), func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(-48316i, 16206i, -1i, u_input.a), vec4<i32>(1i, var_1, var_1, u_input.a)), !select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, false), vec3<bool>(true, arg_0, true)), Struct_4(Struct_3(vec2<f32>(-406f, -1019f), Struct_1(2205f, -640f, vec3<bool>(arg_0, true, arg_0), u_input.b), Struct_1(-596f, -1283f, vec3<bool>(arg_0, arg_0, arg_0), 36837u), vec3<u32>(u_input.b, 78733u, u_input.b)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1051f, -852f), vec2<f32>(-965f, -763f))), Struct_3(vec2<f32>(2239f, -201f), Struct_1(-739f, 220f, vec3<bool>(arg_0, arg_0, arg_0), u_input.c.x), Struct_1(310f, -706f, vec3<bool>(arg_0, arg_0, false), u_input.c.x), vec3<u32>(4294967295u, u_input.b, 19070u)), !arg_0, vec4<i32>(var_1, 2147483647i, u_input.a, var_1)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 2147483647i, 24604i), vec3<i32>(0i, var_1, u_input.a)) <= var_1)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(979f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(425f - -604f) * _wgslsmith_f_op_f32(abs(227f))))) - -291f), -1475f, _wgslsmith_f_op_f32(f32(-1f) * -207f), -794f);
    return Struct_2(Struct_1(-486f, 395f, !(!select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, true))), ~21380u), _wgslsmith_f_op_f32(ceil(-1270f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, !all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), true)), !(false & any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)))));
    let var_1 = 2065f;
    let var_2 = func_1(true);
    var var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~firstLeadingBit(~vec4<u32>(u_input.c.x, u_input.b, u_input.b, var_2.a.d)), vec4<u32>(u_input.b, firstTrailingBit(u_input.c.x) ^ ~var_2.a.d, u_input.c.x & ~u_input.b, _wgslsmith_div_u32(u_input.c.x, ~51112u))), ~vec4<u32>(41563u, 0u, u_input.b, min(1u, _wgslsmith_div_u32(0u, 66024u))));
    let var_4 = func_1(false).a.c.x;
    let var_5 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.b, var_1)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-408f, 1000f) - vec2<f32>(var_1, var_1)) - vec2<f32>(-3137f, -1416f))), Struct_1(func_1(false).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.b * 965f) + _wgslsmith_f_op_f32(-var_1)), vec3<bool>(0u >= u_input.c.x, !var_0.x, !var_0.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 85014u, 29458u, u_input.b), vec4<u32>(var_2.a.d, var_3.x, var_2.a.d, var_2.a.d))), var_2.a, vec3<u32>(var_2.a.d, _wgslsmith_mod_u32(_wgslsmith_mod_u32(112064u, u_input.c.x), u_input.b | var_2.a.d), (24998u >> (var_2.a.d % 32u)) >> (1u % 32u))), vec2<f32>(883f, 977f), Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1597f, var_1)))))), var_2.a, var_2.a, abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.x, var_2.a.d, 19713u), var_3.wwz))), true, vec4<i32>(u_input.a, min(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -14195i, u_input.d, u_input.a), vec4<i32>(2147483647i, -14524i, -2147483647i, u_input.a)), 18911i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, -65502i, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(8522i, u_input.a, 5008i), vec3<i32>(1i, 45332i, u_input.a)), true), vec3<i32>(_wgslsmith_mod_i32(u_input.a, 34730i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 43823i, 2147483647i), vec3<i32>(-2147483647i, -2147483647i, u_input.a)), 28876i)), ~firstLeadingBit(_wgslsmith_div_i32(-6190i, u_input.a))));
    var_3 = ~(~(~vec4<u32>(var_2.a.d, var_2.a.d, u_input.c.x ^ 0u, u_input.c.x)));
    var var_6 = var_5;
    let var_7 = _wgslsmith_mult_u32(51658u, ~var_5.c.c.d >> (var_5.c.d.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(var_5.a.d.yz), vec2<u32>(var_6.c.b.d, var_7)), _wgslsmith_div_vec2_u32((vec2<u32>(39211u, var_5.a.b.d) ^ var_6.c.d.yz) ^ (var_3.wx | var_3.wx), ~vec2<u32>(var_6.c.c.d, 25062u) | _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a.d, var_5.a.c.d), u_input.c))), min(~19129i, ~_wgslsmith_div_i32(~(-19563i), -var_5.e.x)), _wgslsmith_f_op_f32(-1201f + var_5.a.b.b), var_6.a.c.d, var_2.b);
}

