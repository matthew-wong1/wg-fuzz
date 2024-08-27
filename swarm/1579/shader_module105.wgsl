struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1050f;

var<private> global1: array<vec3<u32>, 8>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = !arg_2.b.x;
    var_0 = false;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -674f)))));
    global1 = array<vec3<u32>, 8>();
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(arg_2.c, _wgslsmith_mod_u32(0u, abs(9847u)), _wgslsmith_add_u32(37885u, arg_2.c)), vec3<u32>(1u, arg_1.a.c, 4294967295u));
    return arg_1;
}

fn func_3(arg_0: u32) -> Struct_1 {
    let var_0 = -1145f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 * 1388f), var_0))) * _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0)));
    var var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(_wgslsmith_div_f32(-489f, var_0), func_1(var_0, Struct_2(Struct_1(vec4<f32>(-1436f, var_0, var_0, 130f), vec3<bool>(true, false, true), 29746u), var_0, vec2<f32>(-424f, -911f), true, vec3<bool>(false, true, true)), Struct_1(vec4<f32>(-2187f, -1000f, var_0, var_0), vec3<bool>(true, false, false), arg_0)), Struct_1(vec4<f32>(787f, var_0, 931f, -638f), vec3<bool>(false, true, true), 1u)).a.b));
    let var_2 = func_1(-750f, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-822f, var_0, 576f, -1227f)))), vec3<bool>(var_1.x, var_1.x, any(vec3<bool>(var_1.x, var_1.x, false))), ~1u), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f - 383f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_0, var_0)), var_0)), var_1.x, vec3<bool>(var_1.x, var_1.x, ~u_input.a != min(u_input.c.x, 2949i))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_0, 553f)), 295f, _wgslsmith_f_op_f32(-630f - -693f), var_0)), vec3<bool>(var_1.x, select(any(vec2<bool>(true, true)), var_1.x, !var_1.x), true), ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 1u), vec3<u32>(arg_0, arg_0, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(41585u, 3968u, arg_0), vec3<u32>(arg_0, arg_0, 16728u))))).a.a.x;
    var var_3 = select(~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(0u, 26662u, 1u, arg_0)) & select(vec4<u32>(52485u, 1u, 11095u, 0u), vec4<u32>(10800u, 30597u, 104756u, 0u), vec4<bool>(false, var_1.x, var_1.x, true)), min(select(vec4<u32>(11332u, arg_0, arg_0, arg_0), vec4<u32>(85379u, arg_0, 38346u, 45073u), true), vec4<u32>(arg_0, arg_0, 18003u, arg_0) >> (vec4<u32>(5481u, arg_0, arg_0, 6667u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(vec4<u32>(~65772u, 1u, 4294967295u, 4294967295u), min(max(~vec4<u32>(4294967295u, 0u, arg_0, arg_0), ~vec4<u32>(4733u, arg_0, 0u, 4948u)), vec4<u32>(64439u, 12719u, arg_0, 4294967295u))), vec4<bool>(var_1.x, true, any(func_1(_wgslsmith_f_op_f32(f32(-1f) * -206f), func_1(275f, Struct_2(Struct_1(vec4<f32>(var_0, var_0, 533f, -1124f), vec3<bool>(var_1.x, false, false), 24792u), var_2, vec2<f32>(var_0, var_2), true, vec3<bool>(var_1.x, var_1.x, var_1.x)), Struct_1(vec4<f32>(var_0, var_0, 542f, var_2), vec3<bool>(true, var_1.x, var_1.x), 15131u)), func_1(-969f, Struct_2(Struct_1(vec4<f32>(567f, -456f, var_0, var_0), vec3<bool>(var_1.x, true, var_1.x), 0u), -1004f, vec2<f32>(-424f, var_0), false, vec3<bool>(false, var_1.x, true)), Struct_1(vec4<f32>(var_0, -586f, var_0, 1100f), vec3<bool>(var_1.x, true, var_1.x), arg_0)).a).a.b.yz), !(!var_1.x)));
    return func_1(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-433f))))), Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2120f)) - _wgslsmith_f_op_f32(-var_2)), Struct_2(func_1(var_0, Struct_2(Struct_1(vec4<f32>(1000f, var_2, var_2, var_0), vec3<bool>(var_1.x, var_1.x, true), 1983u), 631f, vec2<f32>(var_0, 162f), false, vec3<bool>(var_1.x, false, var_1.x)), Struct_1(vec4<f32>(var_2, var_0, 1492f, var_0), vec3<bool>(false, var_1.x, var_1.x), arg_0)).a, var_0, vec2<f32>(165f, var_0), 0i <= u_input.a, !vec3<bool>(false, false, var_1.x)), Struct_1(vec4<f32>(var_0, var_2, -723f, -602f), !vec3<bool>(var_1.x, false, true), 93754u)).a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(1978f, -1066f)))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -655f)), func_1(-626f, Struct_2(Struct_1(vec4<f32>(-1806f, 190f, var_0, 1032f), vec3<bool>(var_1.x, false, true), 4294967295u), 2139f, vec2<f32>(var_2, -1250f), true, vec3<bool>(false, var_1.x, var_1.x)), Struct_1(vec4<f32>(265f, var_2, var_2, 757f), vec3<bool>(false, var_1.x, false), arg_0)), func_1(929f, func_1(var_2, Struct_2(Struct_1(vec4<f32>(1338f, 249f, -1000f, -973f), vec3<bool>(var_1.x, var_1.x, false), var_3.x), var_2, vec2<f32>(var_0, var_0), var_1.x, vec3<bool>(var_1.x, var_1.x, false)), Struct_1(vec4<f32>(-431f, -516f, -998f, 1475f), vec3<bool>(false, var_1.x, var_1.x), 29807u)), Struct_1(vec4<f32>(var_2, 1074f, var_2, var_0), vec3<bool>(true, false, var_1.x), arg_0)).a).a.b.x, select(select(!vec3<bool>(false, var_1.x, false), !vec3<bool>(var_1.x, false, true), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, var_1.x))), vec3<bool>(u_input.b <= -1i, true, any(vec4<bool>(var_1.x, var_1.x, true, false))), func_1(var_2, Struct_2(Struct_1(vec4<f32>(var_2, var_0, 1463f, 106f), vec3<bool>(true, var_1.x, var_1.x), 0u), 212f, vec2<f32>(-1593f, var_0), true, vec3<bool>(var_1.x, var_1.x, var_1.x)), func_1(-973f, Struct_2(Struct_1(vec4<f32>(-1000f, -789f, -583f, 1000f), vec3<bool>(var_1.x, var_1.x, false), arg_0), 266f, vec2<f32>(var_2, -265f), var_1.x, vec3<bool>(var_1.x, var_1.x, false)), Struct_1(vec4<f32>(1859f, var_2, var_2, var_0), vec3<bool>(var_1.x, false, true), arg_0)).a).e)), func_1(_wgslsmith_f_op_f32(600f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-766f, var_0) * var_0)), func_1(_wgslsmith_f_op_f32(step(var_0, -1000f)), func_1(_wgslsmith_f_op_f32(sign(var_0)), Struct_2(Struct_1(vec4<f32>(720f, -311f, -1000f, -191f), vec3<bool>(false, false, var_1.x), var_3.x), 222f, vec2<f32>(1647f, var_2), var_1.x, vec3<bool>(var_1.x, false, var_1.x)), Struct_1(vec4<f32>(-1539f, var_0, 1000f, var_0), vec3<bool>(var_1.x, var_1.x, var_1.x), 4294967295u)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_2, var_0, 1914f)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, var_1.x), var_1.x), ~var_3.x)), func_1(var_2, func_1(var_0, func_1(var_0, Struct_2(Struct_1(vec4<f32>(875f, 341f, 240f, -498f), vec3<bool>(var_1.x, var_1.x, var_1.x), 26908u), var_0, vec2<f32>(var_0, var_0), true, vec3<bool>(true, true, var_1.x)), Struct_1(vec4<f32>(-1008f, -827f, -1099f, -1256f), vec3<bool>(var_1.x, var_1.x, var_1.x), 0u)), func_1(var_2, Struct_2(Struct_1(vec4<f32>(var_0, 962f, 384f, var_0), vec3<bool>(true, false, var_1.x), arg_0), var_2, vec2<f32>(var_2, -509f), false, vec3<bool>(var_1.x, false, var_1.x)), Struct_1(vec4<f32>(-417f, var_0, var_2, var_2), vec3<bool>(false, false, false), 0u)).a), func_1(_wgslsmith_f_op_f32(var_0 - var_0), Struct_2(Struct_1(vec4<f32>(564f, var_0, var_2, var_0), vec3<bool>(true, var_1.x, true), 40152u), var_2, vec2<f32>(var_2, 287f), var_1.x, vec3<bool>(var_1.x, false, false)), func_1(var_2, Struct_2(Struct_1(vec4<f32>(-209f, -237f, var_2, -795f), vec3<bool>(false, false, false), arg_0), var_0, vec2<f32>(var_0, var_2), false, vec3<bool>(false, var_1.x, true)), Struct_1(vec4<f32>(var_2, var_2, 109f, var_0), vec3<bool>(false, false, false), 1u)).a).a).a).a).a;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = arg_2.a.a.x;
    let var_1 = vec4<f32>(1052f, _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1084f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0)))))), arg_2.c.x);
    global1 = array<vec3<u32>, 8>();
    global1 = array<vec3<u32>, 8>();
    let var_2 = arg_2.a.c;
    return ~(~(var_2 | var_2));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_mult_u32(91403u, 0u ^ ~arg_0.a.c);
    let var_1 = Struct_1(arg_0.a.a, !(!vec3<bool>(arg_2 < 94599u, any(arg_0.a.b), arg_0.e.x && false)), ~(~firstTrailingBit(0u)));
    let var_2 = _wgslsmith_clamp_u32(23023u, func_4(select(select(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(true, true, var_1.b.x, false), true), vec4<bool>(true, true, arg_0.a.b.x, true), var_1.b.x), vec2<i32>(-2147483647i, 1i), func_1(_wgslsmith_f_op_f32(exp2(arg_1)), arg_0, func_3(32896u)), min(0i, u_input.b)) | (~_wgslsmith_add_u32(12756u, var_1.c) >> (_wgslsmith_mod_u32(~arg_2, ~arg_2) % 32u)), 4627u);
    var var_3 = func_1(_wgslsmith_f_op_f32(166f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_1)), func_3(var_2).a.x)), _wgslsmith_f_op_f32(-906f + var_1.a.x))), func_1(-384f, func_1(-629f, arg_0, func_3(var_1.c)), Struct_1(vec4<f32>(-327f, 225f, arg_0.c.x, arg_0.c.x), var_1.b, func_4(select(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, arg_0.d), vec4<bool>(true, arg_0.a.b.x, true, false), var_1.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(14485i, u_input.b), u_input.c.zx), arg_0, u_input.b))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(func_3(arg_2).a)), select(func_3(4294967295u).b, !(!vec3<bool>(var_1.b.x, var_1.b.x, arg_0.e.x)), !select(true, var_1.b.x, true)), ~(~firstTrailingBit(4580u)))).a;
    let var_4 = arg_2;
    return !vec2<bool>(false, !arg_0.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -2334f;
    let var_0 = _wgslsmith_f_op_f32(1233f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1155f)))));
    let var_1 = u_input.c;
    global1 = array<vec3<u32>, 8>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1878f, 1072f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, var_0))), 313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -1109f)))), vec3<bool>(all(func_2(func_1(1698f, Struct_2(Struct_1(vec4<f32>(-329f, var_0, -924f, var_0), vec3<bool>(false, true, false), 0u), 223f, vec2<f32>(648f, 1087f), true, vec3<bool>(true, true, true)), Struct_1(vec4<f32>(var_0, -802f, var_0, -176f), vec3<bool>(false, false, true), 1u)), _wgslsmith_f_op_f32(floor(-747f)), 37319u)), !(_wgslsmith_f_op_f32(floor(var_0)) < var_0), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), ~reverseBits(~_wgslsmith_clamp_u32(2327u, 31063u, 0u)));
    let var_3 = true;
    var var_4 = ~4294967295u;
    var var_5 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-248f * -2070f), _wgslsmith_f_op_f32(func_3(46u).a.x * _wgslsmith_f_op_f32(f32(-1f) * -1839f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0, var_0))) * 1658f), _wgslsmith_f_op_f32(ceil(func_3(4294967295u).a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.x)) - _wgslsmith_f_op_f32(min(-477f, _wgslsmith_f_op_f32(min(var_2.a.x, var_2.a.x)))))), !(!(!func_1(var_0, Struct_2(Struct_1(vec4<f32>(1585f, var_2.a.x, 1074f, 1080f), vec3<bool>(var_2.b.x, false, true), var_2.c), var_0, vec2<f32>(-306f, var_0), false, vec3<bool>(true, var_3, true)), Struct_1(var_2.a, vec3<bool>(var_3, var_2.b.x, var_2.b.x), 0u)).e)), var_2.c);
    var var_6 = vec3<f32>(_wgslsmith_f_op_f32(var_5.a.x * -273f), -1000f, 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

