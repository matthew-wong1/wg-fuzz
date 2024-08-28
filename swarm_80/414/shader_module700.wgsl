struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(305f, -634f, -1000f, -737f), vec4<f32>(1000f, 1000f, 244f, 579f), vec4<f32>(-535f, -857f, -645f, -523f), vec4<f32>(-755f, -1629f, -1021f, -1178f), vec4<f32>(811f, 1109f, -2230f, 1699f), vec4<f32>(1397f, 1000f, -510f, -1354f), vec4<f32>(-936f, 1307f, 1000f, 1361f), vec4<f32>(966f, -297f, 2689f, 188f), vec4<f32>(1563f, -1437f, 1000f, 293f), vec4<f32>(-168f, -447f, 505f, -1000f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> i32 {
    global0 = array<vec4<f32>, 10>();
    global0 = array<vec4<f32>, 10>();
    let var_0 = ~0u;
    global0 = array<vec4<f32>, 10>();
    global0 = array<vec4<f32>, 10>();
    return ~(~_wgslsmith_clamp_i32(~(i32(-1i) * -2147483647i), 23727i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, 1i, -2147483647i, 1i), vec4<i32>(45281i, 2147483647i, -28621i, 62787i), arg_1.x), vec4<i32>(0i, 2147483647i, 63160i, -1i))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(~u_input.c.x, -2147483647i, vec4<bool>(true, arg_0.c.x, 871f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -1141f), -277f)), false), vec2<u32>(~0u, ~(~1u)), _wgslsmith_f_op_f32(f32(-1f) * -698f) < _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(2072f, 685f))))));
    let var_1 = Struct_1(arg_2.d.x, -29543i, !arg_1.c, u_input.a.ww, true);
    var_0 = Struct_1(reverseBits(u_input.b), var_1.b, select(arg_2.c, select(!arg_1.c, select(select(vec4<bool>(arg_1.e, var_1.c.x, true, arg_2.e), vec4<bool>(true, var_0.c.x, arg_0.e, arg_2.e), false), arg_0.c, vec4<bool>(false, false, arg_0.e, false)), arg_0.e), true), ~firstLeadingBit(select(vec2<u32>(21644u, 0u), vec2<u32>(55676u, var_0.a), arg_1.e)), false);
    global0 = array<vec4<f32>, 10>();
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(1u, arg_1.d.x), firstLeadingBit(4294967295u), (_wgslsmith_mult_u32(5188u, firstTrailingBit(69794u)) ^ select(47894u, var_0.d.x & 24437u, arg_2.c.x)) | 59791u);
    return vec3<bool>(firstTrailingBit(~1u) != min(6387u, var_0.d.x), !any(select(var_0.c.zzx, select(arg_1.c.xxz, vec3<bool>(false, false, true), false), all(vec4<bool>(true, true, arg_1.c.x, arg_2.c.x)))), !all(var_1.c));
}

fn func_1(arg_0: vec3<f32>) -> vec3<u32> {
    global0 = array<vec4<f32>, 10>();
    var var_0 = -78990i;
    var var_1 = Struct_1(_wgslsmith_mult_u32(u_input.b, 1u), select(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec2_i32(max(-vec2<i32>(32930i, 1i), vec2<i32>(1i, 1i)), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(-71267i, -8172i)), max(vec2<i32>(-2147483647i, 0i), vec2<i32>(11397i, 20967i)))), -_wgslsmith_add_i32(21556i, 24834i) >= func_2(arg_0.x, vec4<bool>(true, true, true, true))), !vec4<bool>(select(0u < u_input.c.x, true, true), true, !all(vec3<bool>(false, false, false)), true), u_input.a.ww, any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))));
    var var_2 = Struct_1(var_1.d.x, _wgslsmith_mult_i32(12045i, _wgslsmith_div_i32(-var_1.b, -1i)), vec4<bool>(var_1.b <= -1i, true, !(!(!var_1.e)), !any(func_3(Struct_1(8349u, -30718i, vec4<bool>(false, var_1.e, var_1.c.x, false), u_input.c.yx, false), Struct_1(var_1.d.x, var_1.b, var_1.c, vec2<u32>(4294967295u, 1u), true), Struct_1(var_1.a, var_1.b, var_1.c, u_input.c.yx, true)))), var_1.d, !all(vec4<bool>(all(vec3<bool>(var_1.e, var_1.e, true)), var_1.c.x, var_1.c.x == var_1.c.x, all(vec2<bool>(false, var_1.c.x)))));
    var var_3 = vec2<bool>(false, arg_0.x < _wgslsmith_f_op_f32(1017f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f + arg_0.x))));
    return vec3<u32>(firstLeadingBit(min(reverseBits(var_2.d.x) & u_input.a.x, ~10364u)), u_input.a.x, 21016u);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 10>();
    var var_0 = -countOneBits(vec2<i32>(arg_2.b, _wgslsmith_mod_i32(min(19458i, -1i), arg_0.b)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1277f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1048f) * vec2<f32>(arg_1, 902f)))))), vec2<f32>(479f, _wgslsmith_f_op_f32(arg_1 + -952f))));
    var var_2 = vec4<bool>(all(vec3<bool>(true, arg_0.e, true)), !all(!arg_2.c.xyz) == (true == all(arg_0.c)), !arg_0.c.x, !(false & arg_2.e));
    var_2 = select(vec4<bool>(func_3(Struct_1(0u, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -26853i, arg_0.b, 2147483647i), vec4<i32>(27428i, 1i, 8785i, arg_2.b)), vec4<bool>(arg_2.c.x, false, var_2.x, false), u_input.c.yz ^ arg_2.d, select(var_2.x, false, true)), Struct_1(_wgslsmith_div_u32(u_input.c.x, 31970u), 0i, !arg_2.c, vec2<u32>(73662u, 50611u) & u_input.a.wy, !arg_0.e), arg_0).x, !all(vec4<bool>(arg_2.e, arg_0.c.x, var_2.x, true)), false, any(vec2<bool>(any(arg_0.c.xw), arg_2.e && false))), !(!arg_2.c), vec4<bool>(true, arg_2.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_1, var_1.x)))) < arg_1, false));
    return Struct_1(u_input.c.x, arg_2.b, select(select(vec4<bool>(arg_1 >= arg_1, any(vec3<bool>(arg_0.c.x, arg_0.e, var_2.x)), true && var_2.x, true), select(vec4<bool>(arg_0.c.x, var_2.x, arg_0.e, var_2.x), arg_2.c, !arg_2.c), !var_2.x), arg_0.c, !arg_0.c), vec2<u32>(0u, _wgslsmith_mult_u32(arg_0.a, _wgslsmith_mult_u32(1u, arg_0.d.x) ^ ~36403u)), arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>((u_input.c.x | firstLeadingBit(32816u)) ^ ~_wgslsmith_dot_vec4_u32(u_input.a, max(u_input.a, u_input.a)), min(1u ^ _wgslsmith_clamp_u32(u_input.b, 0u, u_input.b), u_input.a.x));
    global0 = array<vec4<f32>, 10>();
    let var_1 = reverseBits(vec2<u32>(firstLeadingBit(~var_0.x), var_0.x));
    global0 = array<vec4<f32>, 10>();
    var var_2 = func_4(Struct_1(~var_0.x, countOneBits(1i & _wgslsmith_dot_vec3_i32(vec3<i32>(-4319i, -1i, 1i), vec3<i32>(-11991i, 2364i, 2147483647i))), vec4<bool>(true, true, false, true), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_0.x), _wgslsmith_mult_vec2_u32(var_1, vec2<u32>(4294967295u, u_input.c.x))), true), -1446f, Struct_1(_wgslsmith_dot_vec3_u32(~u_input.a.xzy, func_1(vec3<f32>(1f, 1f, 1f))), select(~37229i, i32(-1i) * -2147483647i, !any(vec2<bool>(true, true))), vec4<bool>(false, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false))), true, true), vec2<u32>(var_1.x, ~var_1.x >> (~94452u % 32u)), true != all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false))));
    var var_3 = ~var_0.x;
    global0 = array<vec4<f32>, 10>();
    var_2 = func_4(Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(~var_0.x, 57418u), u_input.a.x), ~var_2.b, !func_4(func_4(Struct_1(u_input.b, var_2.b, vec4<bool>(var_2.c.x, var_2.e, var_2.c.x, var_2.c.x), vec2<u32>(40988u, 0u), true), 756f, Struct_1(21060u, var_2.b, vec4<bool>(var_2.c.x, false, true, false), var_2.d, var_2.c.x)), _wgslsmith_f_op_f32(min(1129f, -130f)), Struct_1(0u, var_2.b, vec4<bool>(var_2.c.x, var_2.c.x, true, var_2.c.x), var_1, false)).c, ~vec2<u32>(_wgslsmith_add_u32(20232u, var_2.a), var_0.x ^ 1u), -51293i <= _wgslsmith_add_i32(var_2.b & -27845i, firstLeadingBit(0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(850f, -267f)) + 217f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1116f, 1574f))))), Struct_1(~var_0.x, var_2.b, vec4<bool>(var_2.e, true || (52702u > var_0.x), -831f != _wgslsmith_f_op_f32(floor(-1418f)), true), vec2<u32>(11493u, ~firstLeadingBit(var_2.a)), true));
    var_2 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~(~99258u), 24966u, var_0.x), ~select(vec4<u32>(1u, 0u, 43834u, 4294967295u), u_input.a, var_2.c.x) >> (~abs(u_input.a) % vec4<u32>(32u))), ~var_2.b, !select(var_2.c, func_4(func_4(Struct_1(u_input.a.x, var_2.b, vec4<bool>(var_2.c.x, var_2.e, var_2.e, var_2.e), vec2<u32>(0u, 1u), var_2.e), 433f, Struct_1(37928u, var_2.b, var_2.c, vec2<u32>(var_0.x, 0u), var_2.c.x)), _wgslsmith_f_op_f32(step(-1722f, 1051f)), Struct_1(8289u, var_2.b, var_2.c, vec2<u32>(var_1.x, 15223u), false)).c, func_4(Struct_1(115507u, -6496i, var_2.c, vec2<u32>(35974u, 26667u), var_2.c.x), -600f, func_4(Struct_1(5105u, var_2.b, vec4<bool>(true, true, var_2.e, var_2.c.x), var_1, var_2.c.x), -1613f, Struct_1(29828u, -15156i, var_2.c, var_2.d, true))).c), ~(~vec2<u32>(u_input.b, ~0u)), false);
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec2<i32>(2147483647i, -2147483647i)));
}

