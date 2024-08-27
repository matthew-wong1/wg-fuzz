struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(i32(-2147483648), 17279i, 34394i), vec3<i32>(1i, i32(-2147483648), -1i), vec3<i32>(17456i, -1i, -37554i), vec3<i32>(46745i, -22826i, 58287i), vec3<i32>(0i, 12213i, -1i), vec3<i32>(55782i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), -43787i, 12757i), vec3<i32>(39240i, -13487i, 20707i), vec3<i32>(i32(-2147483648), -1i, 16338i), vec3<i32>(2147483647i, 0i, -221i), vec3<i32>(-1i, 2911i, i32(-2147483648)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, arg_0.c.b.x, -842f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2319f, -738f, -345f) + vec3<f32>(1460f, -520f, 1000f))))));
    var var_1 = !(1u > arg_0.c.a.x);
    var_1 = arg_1 == var_0.x;
    let var_2 = _wgslsmith_mult_i32(u_input.a.x, select(11696i, 10088i, (firstTrailingBit(arg_2) != ~u_input.d) | ((-3309i > u_input.a.x) & false)));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1000f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(759f, var_0.x, -502f) - vec3<f32>(arg_1, 2171f, -1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 956f) * vec3<f32>(1000f, var_0.x, arg_0.c.b.x)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, 100f, var_0.x), vec3<f32>(arg_1, -448f, 1536f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-621f, -474f, _wgslsmith_f_op_f32(round(arg_0.c.b.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b.x, -915f, arg_1)) * vec3<f32>(arg_0.a.b.x, arg_0.a.b.x, -753f)) - vec3<f32>(1826f, _wgslsmith_f_op_f32(max(-977f, 137f)), arg_0.a.b.x))), vec3<bool>(!select(true, any(vec2<bool>(false, false)), all(vec3<bool>(true, true, true))), true, ~var_2 > -_wgslsmith_add_i32(u_input.a.x, var_2))));
    return arg_0.c.b.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> vec2<u32> {
    global0 = array<vec3<i32>, 11>();
    global0 = array<vec3<i32>, 11>();
    var var_0 = max((38575i >> (_wgslsmith_div_u32(u_input.c, 1u) % 32u)) << (u_input.d % 32u), ~_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(~u_input.a.x, -1i)));
    var_0 = 94920i;
    var var_1 = Struct_1(arg_0.zy, vec2<f32>(_wgslsmith_f_op_f32(floor(339f)), _wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(arg_0.yy, arg_2.a.ww), vec2<u32>(49503u, u_input.c), Struct_1(arg_0.yz, arg_2.a.wy)), arg_1, 59432u)))));
    return arg_0.yx;
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = ~min(func_2(firstLeadingBit(vec3<u32>(u_input.b, arg_1, u_input.d) ^ vec3<u32>(arg_1, 1u, 82888u)), arg_0.c.x, Struct_2(vec4<f32>(arg_0.c.x, arg_2.x, arg_2.x, arg_0.c.x))), ~reverseBits(vec2<u32>(arg_1, 4294967295u)) | ~max(vec2<u32>(33763u, arg_1), vec2<u32>(arg_1, arg_1)));
    let var_1 = _wgslsmith_div_vec2_u32(var_0, max(~_wgslsmith_mult_vec2_u32(var_0, vec2<u32>(34357u, var_0.x)) << (vec2<u32>(_wgslsmith_add_u32(23186u, 0u), 35318u) % vec2<u32>(32u)), var_0));
    global0 = array<vec3<i32>, 11>();
    global0 = array<vec3<i32>, 11>();
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c.x))))));
    return Struct_1(var_1, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 11>();
    global0 = array<vec3<i32>, 11>();
    let var_0 = 0i;
    global0 = array<vec3<i32>, 11>();
    global0 = array<vec3<i32>, 11>();
    var var_1 = 19858i;
    var_1 = var_0;
    global0 = array<vec3<i32>, 11>();
    var var_2 = func_1(Struct_4(true, !(14261u >= u_input.c) & false, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-334f, 644f, 263f, 1281f)))))), _wgslsmith_add_u32(_wgslsmith_add_u32(11628u, ~42064u), ~(u_input.d & min(0u, 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(822f, 2491f), vec2<f32>(1159f, 598f), vec2<bool>(false, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(select(-22073i, i32(-1i) * -4082i, true))), _wgslsmith_mult_i32(~var_0, u_input.a.x), vec4<f32>(var_2.b.x, var_2.b.x, _wgslsmith_f_op_f32(select(-809f, _wgslsmith_f_op_f32(exp2(var_2.b.x)), all(vec2<bool>(true, true)))), -475f), 1269f, _wgslsmith_f_op_f32(-var_2.b.x));
}

