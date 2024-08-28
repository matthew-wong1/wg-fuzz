struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: i32,
    d: vec3<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1703f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32) -> i32 {
    let var_0 = Struct_5(Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-349f, 1063f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(643f - -356f) * -1186f), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-938f, -500f), vec2<f32>(317f, 1957f)), countOneBits(u_input.b.x), -841f, !arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-596f, -2312f, 492f), vec3<f32>(249f, -1881f, 1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1231f, 397f, 1123f))), select(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, u_input.d), vec2<u32>(29192u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(9973u, arg_1), vec2<u32>(u_input.a, 4294967295u)), !vec2<bool>(arg_0, arg_0))), true, u_input.c & abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.b.x), vec4<i32>(15046i, -32041i, 18809i, 0i))), vec3<bool>(all(vec4<bool>(true, true, arg_0, arg_0)), true, arg_0)), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1119f, 1228f), vec2<f32>(-717f, 1131f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(412f + -496f))), -1366f)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1339f + 328f), _wgslsmith_f_op_f32(f32(-1f) * -1586f)), firstTrailingBit(~u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1515f), !arg_0), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(121f, _wgslsmith_f_op_f32(trunc(1278f)), -156f))), ~(~vec2<u32>(arg_1, 26705u)) << (min(select(vec2<u32>(u_input.d, arg_1), vec2<u32>(u_input.d, 74471u), vec2<bool>(arg_0, false)), ~vec2<u32>(4294967295u, arg_1)) % vec2<u32>(32u))), firstLeadingBit(min(u_input.b.x, 2147483647i)), vec3<bool>(all(vec2<bool>(true, true)), !arg_0, arg_0), Struct_4(Struct_3(Struct_2(vec2<f32>(1000f, -1546f)), _wgslsmith_f_op_f32(693f * _wgslsmith_f_op_f32(f32(-1f) * -308f)), Struct_1(vec2<f32>(129f, 300f), ~u_input.b.x, _wgslsmith_f_op_f32(sign(-360f)), all(vec3<bool>(arg_0, true, false))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1254f, 353f, 135f), vec3<f32>(1888f, 162f, -324f))))), vec2<u32>(u_input.a, abs(arg_1))), false, _wgslsmith_add_i32(reverseBits(_wgslsmith_mult_i32(u_input.b.x, 66896i)), u_input.b.x), !vec3<bool>(any(vec3<bool>(arg_0, arg_0, arg_0)), false, all(vec3<bool>(true, true, arg_0)))));
    var var_1 = var_0.c;
    var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -763f), var_0.a.a.c.a.x, true))));
    return ~var_0.b.c.b;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4) -> f32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2013f + _wgslsmith_f_op_f32(arg_1.a.a.a.x - -1392f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.e.a.d.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(903f * arg_1.a.c.c))));
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1118f + arg_0.b.c.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = any(vec3<bool>(arg_0.e.a.c.d, arg_1.d.x, true));
    let var_2 = -1i;
    global0 = arg_0.a.a.c.a.x;
    return var_0.a.x;
}

fn func_2() -> f32 {
    global0 = _wgslsmith_f_op_f32(func_4(Struct_5(Struct_4(Struct_3(Struct_2(vec2<f32>(-1000f, -689f)), _wgslsmith_f_op_f32(step(447f, 277f)), Struct_1(vec2<f32>(1276f, 526f), -55603i, -780f, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(2177f, -818f, 1065f) - vec3<f32>(241f, 1000f, -1000f)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(u_input.d, 0u))), true, func_3(true, abs(43018u)), vec3<bool>(true, u_input.a > 86209u, any(vec3<bool>(false, false, true)))), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1016f, 437f) - vec2<f32>(-1937f, -427f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 651f)), u_input.b.x, _wgslsmith_f_op_f32(892f - -2054f), u_input.a != 53313u), _wgslsmith_f_op_vec3_f32(vec3<f32>(135f, 458f, -115f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-146f, 147f, 140f)))), vec2<u32>(u_input.a, 58944u)), u_input.b.x, !vec3<bool>(true, true, all(vec2<bool>(false, false))), Struct_4(Struct_3(Struct_2(vec2<f32>(-736f, -1215f)), -1499f, Struct_1(vec2<f32>(1000f, -393f), u_input.b.x, 421f, false), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(356f, 818f, 1233f))), abs(vec2<u32>(u_input.d, 65658u))), select(true, true, false) || all(vec2<bool>(false, false)), ~_wgslsmith_sub_i32(20781i, u_input.c), vec3<bool>(true, true, true))), Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-774f, 1000f))), -354f, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1401f, -699f))), u_input.c, -235f, true), vec3<f32>(1026f, _wgslsmith_f_op_f32(272f - 239f), -1555f), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(31311u, 4294967295u), vec2<u32>(u_input.d, 25971u), vec2<u32>(1u, 4294967295u))), all(vec2<bool>(true, true)), ~(-1i), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(true, u_input.c >= u_input.c, select(false, true, true))))));
    var var_0 = -_wgslsmith_mod_i32(-reverseBits(-72758i), 58445i);
    var_0 = ~(~(-42531i));
    var var_1 = vec2<bool>(select(true, true, -2147483647i >= _wgslsmith_dot_vec2_i32(u_input.b, ~vec2<i32>(u_input.b.x, -13173i))), all(vec3<bool>(true, !(u_input.d > u_input.d), select(true, true, true) || true)));
    var var_2 = vec3<u32>(1u, min(27504u, max(4294967295u, 58774u) >> (1u % 32u)), 4294967295u) >> (~max(~vec3<u32>(2736u, 24160u, u_input.d), vec3<u32>(u_input.d << (32987u % 32u), _wgslsmith_sub_u32(26285u, 11831u), ~u_input.d)) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(553f))));
}

fn func_1() -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2())));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1594f, -835f))) - _wgslsmith_f_op_f32(step(-392f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(823f - -363f) + _wgslsmith_f_op_f32(-1737f * -1621f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1612f)) * 665f) - _wgslsmith_f_op_f32(max(-607f, 1879f))))), -1990f);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1093f, var_0.x, 1176f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(var_0.x, var_0.x, -1301f)))), vec3<f32>(2155f, _wgslsmith_f_op_f32(var_0.x * var_0.x), -170f))) - vec3<f32>(_wgslsmith_f_op_vec3_f32(func_1()).x, -1075f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(580f, 1168f)), -379f)));
    var var_1 = -abs(countOneBits(abs(vec3<i32>(-2147483647i, -1i, 18729i)))) & vec3<i32>(28518i, u_input.b.x, u_input.b.x);
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-452f, var_0.x, 439f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -190f, var_0.x)))))))))));
    var_1 = -(~(-select(vec3<i32>(u_input.c, 42253i, 4770i), vec3<i32>(var_1.x, var_1.x, 2147483647i), false)) | _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, var_1.x, 70532i), firstTrailingBit(vec3<i32>(1517i, 0i, -2147483647i))), ~countOneBits(vec3<i32>(1i, var_1.x, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.a, 0u) | (vec3<u32>(1u, u_input.a, 4294967295u) & vec3<u32>(u_input.a, u_input.a, 4294967295u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, 0u, 20866u), vec4<u32>(20824u, u_input.a, 1u, 2610u)), u_input.a, u_input.d)) << (firstLeadingBit(vec3<u32>(u_input.d, reverseBits(41998u), max(1u, u_input.a))) % vec3<u32>(32u)), firstLeadingBit(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 41066u, u_input.a, 57353u), select(vec4<u32>(4294967295u, u_input.a, u_input.a, 0u), vec4<u32>(1u, u_input.d, u_input.a, 0u), true)))));
}

