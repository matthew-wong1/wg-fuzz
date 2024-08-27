struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 927f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> i32 {
    var var_0 = arg_1;
    var var_1 = arg_1;
    var_1 = Struct_4(var_1.a);
    var var_2 = arg_1;
    let var_3 = Struct_4(Struct_1(arg_1.a.a, 285f, arg_0.d.c, ~(-(~vec2<i32>(65622i, var_0.a.a.x)))));
    return arg_0.c.a.x;
}

fn func_2() -> Struct_4 {
    var var_0 = -57390i ^ (~firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.e.x, 58197i), vec4<i32>(u_input.b, u_input.b, 1i, u_input.b))) >> (62421u % 32u));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1362f);
    let var_1 = ~vec4<i32>(~abs(u_input.b), -29714i >> (abs(62513u & u_input.a.x) % 32u), ~u_input.b, abs(max(func_3(Struct_3(true, vec2<f32>(1017f, -918f), Struct_1(vec4<i32>(-33707i, u_input.e.x, u_input.b, u_input.b), 591f, false, vec2<i32>(1i, u_input.e.x)), Struct_1(vec4<i32>(u_input.e.x, u_input.b, -33256i, -11936i), -1045f, false, u_input.e.zz), u_input.d), Struct_4(Struct_1(vec4<i32>(0i, u_input.c, 26835i, u_input.c), -713f, true, vec2<i32>(u_input.e.x, -15909i)))), abs(u_input.c))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(259f - 335f) - _wgslsmith_f_op_f32(f32(-1f) * -269f))), _wgslsmith_f_op_f32(round(-807f))));
    var var_3 = _wgslsmith_mod_i32(~_wgslsmith_sub_i32(abs(1i), ~0i), ~var_1.x);
    return Struct_4(Struct_1(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_2.x) + 502f)), true, _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.c, 57036i), _wgslsmith_sub_i32(-26795i, 43215i)), _wgslsmith_add_vec2_i32(min(vec2<i32>(var_1.x, -58312i), vec2<i32>(0i, var_1.x)), u_input.e.yz))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(936f + 1147f)))))));
    var var_0 = vec2<u32>(u_input.a.x, abs(4294967295u));
    var var_1 = select(_wgslsmith_div_u32(~arg_2, u_input.d) != 1u, true, arg_2 >= (0u ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, arg_2, 12626u, 1u), vec4<u32>(1u, u_input.d, 34222u, 6804u)), vec4<u32>(0u, u_input.d, 1u, 1u))));
    let var_2 = func_2();
    global0 = _wgslsmith_f_op_f32(-arg_0.b);
    return Struct_3(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.b, arg_0.b))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(112f, 1000f), vec2<f32>(-914f, arg_0.b), vec2<bool>(false, var_2.a.c))), arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1362f, arg_0.b) + vec2<f32>(-2138f, var_2.a.b)))))), Struct_1(arg_0.a, var_2.a.b, _wgslsmith_div_i32(i32(-1i) * -16515i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), var_2.a.a.yx)) >= _wgslsmith_div_i32(u_input.c, 4220i << (0u % 32u)), arg_0.d), var_2.a, 4294967295u);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_2(vec2<f32>(arg_0.d.b, 1000f), arg_0.c.a.yyz, func_1(arg_0.c, !vec2<bool>(arg_0.a, true), arg_0.e).d, Struct_1(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, arg_0.d.d.x, -4073i, -1i) << (vec4<u32>(47277u, 1u, arg_0.e, arg_0.e) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(-2147483647i, arg_0.d.a.x, u_input.e.x, 63079i))), 809f, arg_0.c.c, _wgslsmith_clamp_vec2_i32(~min(vec2<i32>(arg_0.d.d.x, 43102i), arg_0.c.d), ~arg_0.d.d | abs(arg_1), vec2<i32>(-1i) * -vec2<i32>(u_input.b, arg_0.d.d.x))));
    var_0 = Struct_2(vec2<f32>(arg_0.d.b, func_2().a.b), firstTrailingBit(-u_input.e), arg_0.c, func_1(func_2().a, select(vec2<bool>(!arg_0.d.c, true), !vec2<bool>(arg_0.a, var_0.c.c), func_2().a.c), 1u).d);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x))), var_0.d.b)), firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(func_3(Struct_3(arg_0.c.c, vec2<f32>(-1214f, -398f), arg_0.c, var_0.d, arg_0.e), Struct_4(var_0.c)), func_3(arg_0, Struct_4(Struct_1(vec4<i32>(arg_0.d.a.x, u_input.e.x, -1i, arg_1.x), 763f, true, var_0.d.a.xw)))), ~u_input.c | 3367i, -1i)), func_1(func_2().a, !select(vec2<bool>(arg_0.a, arg_0.c.c), vec2<bool>(true, false), vec2<bool>(false, true)), 1u).d, Struct_1(select(firstLeadingBit(vec4<i32>(arg_0.d.a.x, arg_1.x, u_input.b, -1i)) | (var_0.c.a | vec4<i32>(arg_0.d.a.x, 41984i, arg_1.x, -1i)), -abs(vec4<i32>(arg_1.x, 1i, 35043i, 2147483647i)), arg_0.d.c), 668f, !arg_0.c.c, var_0.c.a.ww));
    var var_1 = Struct_3(!(any(!vec2<bool>(arg_0.c.c, false)) | (1f < _wgslsmith_f_op_f32(-1085f - var_0.c.b))), var_0.a, Struct_1(_wgslsmith_add_vec4_i32(arg_0.d.a, arg_0.c.a), _wgslsmith_f_op_f32(ceil(1126f)), all(!select(vec2<bool>(true, arg_0.c.c), vec2<bool>(arg_0.c.c, var_0.d.c), vec2<bool>(arg_0.a, var_0.c.c))), ~(-vec2<i32>(arg_0.c.a.x, arg_0.c.d.x)) ^ reverseBits(vec2<i32>(-1i, 17269i))), Struct_1(arg_0.d.a, _wgslsmith_f_op_f32(arg_0.d.b * 1419f), !any(!vec4<bool>(false, false, var_0.d.c, false)), ~vec2<i32>(~(-3681i), -arg_1.x)), u_input.d);
    let var_2 = Struct_5(Struct_2(vec2<f32>(1343f, _wgslsmith_f_op_f32(-arg_0.c.b)), vec3<i32>(_wgslsmith_dot_vec4_i32(arg_0.d.a, abs(var_0.c.a)), 0i, -1i >> ((65789u << (var_1.e % 32u)) % 32u)), Struct_1(vec4<i32>(~(-2147483647i), -32630i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.a.x, -2147483647i, -2147483647i), vec3<i32>(-1i, 2147483647i, var_0.b.x))), _wgslsmith_f_op_f32(-var_1.b.x), !(var_0.c.c & false), (arg_0.c.d | var_1.d.d) & _wgslsmith_clamp_vec2_i32(var_1.d.d, vec2<i32>(var_0.c.a.x, -37953i), vec2<i32>(26120i, u_input.b))), Struct_1(~(-vec4<i32>(-31193i, -45547i, 0i, 1i)), arg_0.c.b, var_1.c.c, var_0.c.d)), func_1(var_0.c, vec2<bool>(!(false || var_1.a), !any(vec2<bool>(true, false))), var_1.e), arg_0, func_1(Struct_1(var_1.d.a, _wgslsmith_div_f32(-1700f, _wgslsmith_f_op_f32(sign(1000f))), func_1(var_0.d, !vec2<bool>(arg_0.d.c, true), firstLeadingBit(0u)).a, vec2<i32>(arg_0.c.a.x, _wgslsmith_div_i32(-1i, 2147483647i))), vec2<bool>(func_1(Struct_1(vec4<i32>(0i, -28421i, var_0.c.a.x, arg_0.d.a.x), arg_0.d.b, false, var_1.d.d), vec2<bool>(arg_0.d.c, var_0.d.c), var_1.e).a, false), ~var_1.e), vec2<bool>(true, true));
    return reverseBits(~_wgslsmith_sub_i32(2147483647i, 2147483647i) ^ -(~var_2.b.d.d.x));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_5) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1568f - arg_3.d.c.b) * arg_3.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-12108i, 2147483647i, u_input.b) & ~(~firstTrailingBit(vec3<i32>(u_input.b, -2147483647i, u_input.c) | u_input.e));
    global0 = _wgslsmith_f_op_f32(func_5(min(i32(-1i) * -var_0.x, func_4(func_1(Struct_1(vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.b), -2246f, false, vec2<i32>(u_input.e.x, var_0.x)), vec2<bool>(false, false), min(9714u, 95776u)), vec2<i32>(2147483647i & u_input.c, 1i))), vec3<bool>(any(vec4<bool>(true, false, all(vec3<bool>(true, true, false)), all(vec2<bool>(false, false)))), 36235u >= (_wgslsmith_mult_u32(u_input.d, u_input.a.x) | 1u), false), vec2<i32>(i32(-1i) * -1i, ~2147483647i), Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(297f, -710f) + vec2<f32>(240f, 1893f)))), reverseBits(vec3<i32>(var_0.x, 0i, -2147483647i)), func_2().a, func_1(func_1(Struct_1(vec4<i32>(2147483647i, -12862i, u_input.e.x, 2955i), 428f, false, var_0.yy), vec2<bool>(true, false), 27672u).d, select(vec2<bool>(false, true), vec2<bool>(true, true), true), 17189u).c), Struct_3(false, _wgslsmith_f_op_vec2_f32(vec2<f32>(380f, -382f) - vec2<f32>(747f, -607f)), func_2().a, Struct_1(vec4<i32>(u_input.e.x, 0i, -78310i, -16367i), _wgslsmith_div_f32(-1247f, 226f), func_1(Struct_1(vec4<i32>(-2147483647i, u_input.e.x, u_input.c, -16820i), -1039f, true, vec2<i32>(u_input.e.x, -11372i)), vec2<bool>(true, false), u_input.a.x).a, vec2<i32>(-6675i, u_input.c) & u_input.e.zx), u_input.d), func_1(func_2().a, vec2<bool>(true, true), ~(~u_input.a.x)), Struct_3(select(true, all(vec3<bool>(false, false, false)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1337f, 943f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1887f), vec2<f32>(-1417f, 498f))), Struct_1(vec4<i32>(u_input.c, -2147483647i, 53576i, var_0.x), 1f, true, -vec2<i32>(-2147483647i, -2147483647i)), Struct_1(vec4<i32>(u_input.e.x, -54715i, var_0.x, 9152i), _wgslsmith_f_op_f32(f32(-1f) * -174f), true, vec2<i32>(u_input.e.x, u_input.e.x)), u_input.d), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(false, false, true))))));
    global0 = 1236f;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = Struct_1(~(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-63631i, u_input.e.x, var_0.x, var_0.x)), ~vec4<i32>(var_0.x, 0i, 1i, var_0.x)) | firstTrailingBit(vec4<i32>(0i, u_input.e.x, var_0.x, u_input.e.x) & vec4<i32>(1i, var_0.x, var_0.x, var_0.x))), -374f, !func_2().a.c, vec2<i32>(-_wgslsmith_mod_i32(u_input.b >> (u_input.a.x % 32u), -18944i), 1i));
    global0 = var_1.b;
    var_0 = var_1.a.zzz;
    let var_2 = any(vec2<bool>(false, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2145f, var_1.b) * _wgslsmith_f_op_f32(-var_1.b)), u_input.e, u_input.a.x, ~(~_wgslsmith_div_u32(u_input.a.x, 22601u)));
}

