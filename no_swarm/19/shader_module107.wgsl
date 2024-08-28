struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32 = 13609u;

var<private> global2: i32 = 18002i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.a;
    let var_1 = Struct_2(Struct_1(select(~min(arg_0.a, 2860u), abs(abs(27330u)), arg_0.a < _wgslsmith_mod_u32(arg_0.a, 35942u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-658f * -1000f))), vec4<f32>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1503f - arg_0.b), _wgslsmith_div_f32(arg_0.b, -1458f))), _wgslsmith_f_op_f32(trunc(arg_0.b)))), 49546u, arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1250f))), arg_0.c.x)), ~3438u);
    let var_2 = !vec3<bool>(1f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.c.x - 1398f), -432f), true, any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)));
    var var_3 = Struct_2(var_1.c, ~(~abs(var_1.c.a)) << (~select(4294967295u, 1u, true) % 32u), var_1.c, 313f, _wgslsmith_mult_u32(~1u, abs(_wgslsmith_mult_u32(17586u, min(u_input.b, arg_0.a)))));
    var_3 = var_1;
    return 409f;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(621f, _wgslsmith_f_op_f32(f32(-1f) * -1146f)))) * _wgslsmith_f_op_f32(func_3(Struct_1(firstLeadingBit(_wgslsmith_div_u32(72892u, u_input.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -188f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1028f, 332f, 1335f, -568f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(236f, -582f, 414f, -1022f)))))));
    var var_2 = min(1220u, ~26182u);
    global1 = ~24816u;
    var_1 = _wgslsmith_f_op_f32(max(150f, 1f));
    return Struct_2(Struct_1(u_input.b, -1303f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-824f, _wgslsmith_f_op_f32(sign(1000f)), 151f, 1000f)))), countOneBits(u_input.b), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, 25731u, 0u)), u_input.b) << (_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(u_input.b, 27144u)) % 32u), _wgslsmith_f_op_f32(-1376f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1375f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-942f, -1453f, 1894f, 233f)))))), _wgslsmith_f_op_f32(abs(316f)), ~(48319u << (~_wgslsmith_clamp_u32(u_input.b, 38188u, u_input.b) % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global1 = arg_1.e;
    let var_0 = arg_0.c;
    let var_1 = -(~firstLeadingBit(u_input.a.x));
    global1 = ~(~arg_1.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(var_0.c));
    return ~1i;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global2 = _wgslsmith_add_i32(func_4(func_2(), Struct_2(func_2().a, _wgslsmith_dot_vec2_u32(arg_0.yx, ~vec2<u32>(16539u, 61255u)), func_2().c, _wgslsmith_f_op_f32(ceil(-373f)), u_input.b), func_2().a), -12079i);
    let var_0 = Struct_2(Struct_1(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-375f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-646f, -111f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1065f, _wgslsmith_div_f32(1483f, 2354f), -384f, -451f)))), 12463u, func_2().c, _wgslsmith_f_op_f32(func_3(Struct_1(32460u, 1f, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1591f), _wgslsmith_f_op_f32(min(-703f, 412f)), _wgslsmith_f_op_f32(803f + -808f), _wgslsmith_f_op_f32(f32(-1f) * -985f))))), 4294967295u);
    var var_1 = firstTrailingBit(_wgslsmith_sub_u32(countOneBits(~arg_0.x), min(u_input.b, u_input.b) >> (~46772u % 32u))) ^ 4294967295u;
    global1 = arg_0.x;
    let var_2 = vec3<bool>(true, true, false);
    return var_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_0.a;
    let var_1 = ~(~arg_0.e | arg_0.a.a);
    var var_2 = arg_0;
    let var_3 = func_2();
    let var_4 = select(!(!(!select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(false, false, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))), select(select(!select(vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), arg_1.x), vec3<bool>(true, !arg_1.x, -2147483647i >= arg_3.x), arg_1.x), arg_1.xzx, true), 1u != var_0.a);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(Struct_2(func_1(~vec3<u32>(21069u, u_input.b, u_input.b)), ~(~u_input.b), Struct_1(~30385u, -1000f, _wgslsmith_f_op_vec4_f32(vec4<f32>(289f, 572f, 2515f, -891f) - vec4<f32>(167f, 117f, -790f, 178f))), func_2().a.b, abs(u_input.b)), select(vec4<bool>(u_input.a.x >= u_input.a.x, false, any(vec4<bool>(false, true, false, false)), true), vec4<bool>(true, true, true, true), false), 34993u, vec4<i32>(1i, -_wgslsmith_clamp_i32(u_input.a.x, 64737i, u_input.a.x), firstLeadingBit(1i), ~1i)), u_input.b, Struct_1(u_input.b, 378f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-929f, _wgslsmith_f_op_f32(floor(-527f)), -1191f, _wgslsmith_f_op_f32(-1000f + 917f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2().a.b - -885f))), _wgslsmith_f_op_f32(-func_1(vec3<u32>(u_input.b, 4294967295u, 1u)).b), true)), u_input.b);
    let var_1 = _wgslsmith_f_op_f32(-var_0.d);
    var_0 = func_2();
    let var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(0u, 65981u), ~max(0u, 19302u)), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1273f + -765f)) + 237f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.d, var_1, true)) - var_0.a.c.x) - var_0.c.c.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0.a.c * _wgslsmith_f_op_vec4_f32(var_0.c.c * vec4<f32>(var_1, var_0.d, var_1, 137f))))));
    var var_3 = var_0.c;
    var var_4 = u_input.a;
    let var_5 = var_2.a;
    let var_6 = _wgslsmith_add_vec2_u32(vec2<u32>(1u, ~var_5 | ~var_0.b), ~vec2<u32>(~var_0.b, 69027u)) & vec2<u32>(4294967295u, abs(var_2.a >> (4294967295u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer((u_input.a.x | _wgslsmith_add_i32(-var_4.x, u_input.a.x)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_5, var_2.a, max(u_input.b, 27231u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_3.a, u_input.b, var_0.a.a), vec3<u32>(var_3.a, 2900u, 0u)) & ~vec3<u32>(4931u, 14967u, var_5)) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-762f)), _wgslsmith_f_op_f32(-658f * -392f)))), func_2().e, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mult_i32(var_4.x, ~var_4.x)));
}

