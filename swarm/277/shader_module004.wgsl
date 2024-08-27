struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(-8894i, vec4<f32>(-1000f, 1502f, -2339f, 1356f), Struct_1(vec3<i32>(9236i, i32(-2147483648), 0i), vec2<bool>(true, true), 41351u, -1i)), Struct_2(-9515i, vec4<f32>(-398f, -1000f, -1375f, -1156f), Struct_1(vec3<i32>(0i, -1i, 14213i), vec2<bool>(false, true), 4294967295u, -1i)), Struct_2(-514i, vec4<f32>(-1446f, 1000f, -387f, 1733f), Struct_1(vec3<i32>(-40711i, 50187i, 0i), vec2<bool>(true, false), 1u, 1i)), Struct_2(31902i, vec4<f32>(-584f, -328f, -2376f, 108f), Struct_1(vec3<i32>(i32(-2147483648), 0i, -1i), vec2<bool>(false, true), 2966u, -38482i)), Struct_2(14484i, vec4<f32>(-1645f, -907f, -1494f, -943f), Struct_1(vec3<i32>(-44049i, -32759i, -25106i), vec2<bool>(false, true), 1u, i32(-2147483648))), Struct_2(i32(-2147483648), vec4<f32>(-1000f, -774f, 1090f, -1000f), Struct_1(vec3<i32>(-28159i, 43514i, 0i), vec2<bool>(true, false), 44365u, 1i)), Struct_2(-68252i, vec4<f32>(-1233f, -1307f, -693f, -608f), Struct_1(vec3<i32>(58125i, -47056i, 1i), vec2<bool>(false, true), 19850u, 10871i)), Struct_2(26634i, vec4<f32>(-738f, -1000f, -842f, -802f), Struct_1(vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec2<bool>(false, false), 8052u, -1i)), Struct_2(-32719i, vec4<f32>(-213f, 818f, 3309f, -1587f), Struct_1(vec3<i32>(5773i, 1i, 1i), vec2<bool>(true, true), 4294967295u, -1i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(934f, -350f, -237f, 846f) * vec4<f32>(1000f, -2126f, -360f, 1030f)), vec4<f32>(-415f, -1219f, -1007f, -948f))))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -159f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(810f, -123f) * _wgslsmith_f_op_f32(f32(-1f) * -442f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -308f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1077f)), _wgslsmith_f_op_f32(-987f * -325f)))))));
    var var_1 = _wgslsmith_mult_i32(global0.x, _wgslsmith_sub_i32(global0.x, min(~_wgslsmith_clamp_i32(36485i, -7382i, -1i), _wgslsmith_mult_i32(~global0.x, _wgslsmith_mod_i32(global0.x, u_input.d.x)))));
    let var_2 = 4294967295u;
    var var_3 = _wgslsmith_sub_i32(1i, min(-(~global0.x), -1i));
    let var_4 = -countOneBits(u_input.d.x);
    return _wgslsmith_add_u32(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(43085u, 54733u), 1u), abs(u_input.b));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = max(reverseBits(firstTrailingBit(0u)), _wgslsmith_mod_u32(u_input.b, countOneBits(~(u_input.b << (0u % 32u)))));
    global1 = array<Struct_2, 9>();
    var_0 = 11113u;
    global0 = ~(-vec2<i32>(global0.x, -2147483647i));
    var var_1 = Struct_2(-3870i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(101f, 534f) + _wgslsmith_f_op_f32(-1000f - -636f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-219f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1293f)) - -1255f)), _wgslsmith_f_op_f32(min(1181f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -525f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(304f + -456f)))))), Struct_1(-vec3<i32>(-13683i, -u_input.d.x, u_input.c), vec2<bool>(true, any(vec3<bool>(true, false, true))), u_input.b, firstTrailingBit(39177i | global0.x) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, arg_0, global0.x), select(vec4<i32>(u_input.a.x, 1i, u_input.d.x, 16508i), vec4<i32>(u_input.d.x, arg_0, 0i, u_input.c), vec4<bool>(false, false, false, false)))));
    return -_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(~u_input.d, firstLeadingBit(var_1.c.a.zz)), ~u_input.c, 22399i, firstLeadingBit(firstLeadingBit(56202i))), vec4<i32>(i32(-1i) * -36527i, -1i, var_1.c.a.x, -14653i));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>) -> u32 {
    let var_0 = func_2();
    global0 = vec2<i32>(min(~(~u_input.d.x), _wgslsmith_dot_vec4_i32(func_3(0i), ~vec4<i32>(0i, global0.x, global0.x, u_input.d.x))), -1i) | func_3(u_input.d.x).xz;
    return _wgslsmith_sub_u32(4294967295u, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<u32>(u_input.b | _wgslsmith_add_u32(u_input.b, ~u_input.b), u_input.b), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.b, 16796u)), vec2<u32>(u_input.b, func_1(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)))), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(27178u, 0u)))), any(!vec2<bool>(any(vec3<bool>(false, true, false)), true)));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(_wgslsmith_mod_u32(~u_input.b, _wgslsmith_add_u32(1u, u_input.b)), _wgslsmith_mod_u32(var_0.x, 1u))), func_1(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, 0u < u_input.b, true, all(vec4<bool>(false, true, false, true))))), var_0.x);
    let var_2 = ~60831u;
    let var_3 = Struct_2(2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-542f, _wgslsmith_f_op_f32(round(-273f)), _wgslsmith_f_op_f32(1000f + 557f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-537f, 1218f, -752f, 152f) * vec4<f32>(1097f, 837f, -1000f, -1281f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(981f, 167f, 1025f, -612f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-693f, -1822f, -749f, 1591f) + vec4<f32>(1002f, 1213f, -817f, -1000f)), true)))), Struct_1(u_input.a, select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false), 30225u, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_sub_i32(-global0.x, _wgslsmith_mult_i32(u_input.a.x, global0.x)))));
    let var_4 = vec3<f32>(var_3.b.x, var_3.b.x, _wgslsmith_f_op_f32(floor(var_3.b.x)));
    var var_5 = Struct_1(vec3<i32>(countOneBits(~abs(global0.x)), -(~u_input.d.x), var_3.a), var_3.c.b, 7372u, _wgslsmith_mult_i32(~(-1601i), var_3.c.a.x) << (var_0.x % 32u));
    var_5 = Struct_1(max(_wgslsmith_add_vec3_i32(-(~vec3<i32>(var_5.d, u_input.a.x, 36915i)), ~u_input.a), _wgslsmith_sub_vec3_i32(var_5.a, firstLeadingBit(vec3<i32>(-71969i, -2147483647i, var_3.a)))), !vec2<bool>(all(vec4<bool>(var_3.c.b.x, true, true, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.d.x, -1i, 26969i), vec4<i32>(global0.x, -1i, u_input.a.x, global0.x)) >= var_3.a), _wgslsmith_mult_u32(u_input.b, select(func_2(), 0u, false)), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_3(var_3.a).x, reverseBits(-43193i), _wgslsmith_div_i32(1i, 4560i << (var_0.x % 32u)), ~0i) << (vec4<u32>(_wgslsmith_mult_u32(var_0.x, firstTrailingBit(0u)), u_input.b, 0u, var_1.x) % vec4<u32>(32u)), var_5.c & 4284u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_f_op_f32(130f - var_3.b.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-234f)) - var_3.b.x)))), 26260u);
}

