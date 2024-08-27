struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(0u, 98637u, 59600u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 42927u), vec3<u32>(29211u, 24775u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 55372u, 0u), vec3<u32>(12854u, 0u, 4294967295u));

var<private> global1: vec4<i32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec4<i32> {
    let var_0 = Struct_2(67832i, vec3<bool>(false, arg_1, true));
    var var_1 = u_input.c.x;
    let var_2 = var_0;
    let var_3 = vec4<u32>(u_input.a.x ^ u_input.d, ~abs(arg_0), 30965u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 6673u, 24105u, u_input.b.x) & vec4<u32>(u_input.e, 86883u, 54828u, 1u), select(u_input.a, u_input.a, false))));
    var var_4 = Struct_2(15341i, !vec3<bool>(!(false | arg_1), var_0.b.x, true));
    return ~vec4<i32>(var_0.a, u_input.c.x, ~var_2.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_4.a, -24588i, 2147483647i, var_0.a), vec4<i32>(-58762i, 1i, var_0.a, 53947i)), vec4<i32>(var_2.a, -1i, u_input.c.x, var_4.a)), max(-vec4<i32>(1i, var_2.a, var_0.a, -155i), -vec4<i32>(u_input.c.x, var_2.a, var_4.a, -43501i))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    let var_0 = arg_1;
    var var_1 = -func_2(_wgslsmith_clamp_u32(u_input.b.x, 59331u, u_input.b.x), arg_3);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(exp2(arg_0.a.x)), arg_2.a.x)));
    let var_3 = !arg_3;
    global0 = array<vec3<u32>, 7>();
    return vec2<bool>(!(!(!(!var_3))), !(!all(vec4<bool>(var_3, arg_3, var_3, var_3)) | (u_input.b.x > ~u_input.a.x)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = arg_0;
    global1 = _wgslsmith_sub_vec4_i32(~vec4<i32>(firstLeadingBit(arg_1), _wgslsmith_clamp_i32(1i, arg_1, arg_1), -global1.x, -1i) << (~vec4<u32>(36069u, u_input.a.x, select(124306u, u_input.d, false), countOneBits(18780u)) % vec4<u32>(32u)), func_2(_wgslsmith_mult_u32(_wgslsmith_sub_u32(countOneBits(0u), u_input.b.x), ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, u_input.a.x))), false));
    var var_1 = !(!vec4<bool>(true, true, !func_1(Struct_1(vec2<f32>(var_0.a.x, -427f)), 2147483647i, Struct_1(vec2<f32>(-111f, var_0.a.x)), arg_2.x).x, all(vec4<bool>(arg_2.x, true, arg_2.x, false))));
    global0 = array<vec3<u32>, 7>();
    var_1 = vec4<bool>(true, all(select(!select(vec3<bool>(true, var_1.x, arg_2.x), vec3<bool>(var_1.x, var_1.x, true), var_1.x), select(select(arg_2.yzz, vec3<bool>(var_1.x, true, false), true), var_1.wwy, !arg_2.x), vec3<bool>(true, arg_2.x | true, true))), arg_2.x, false);
    return arg_2.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, all(vec3<bool>(select(true, true, false), true, true))), select(vec2<bool>(true, 0u <= max(48548u, u_input.e)), vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), func_1(Struct_1(vec2<f32>(-685f, 241f)), -32737i, Struct_1(vec2<f32>(-354f, 1379f)), false)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), func_3(Struct_1(vec2<f32>(-538f, -1142f)), -u_input.c.x, vec4<bool>(false, true, false, true)))), vec2<bool>(any(vec4<bool>(true, true, true, true)), !(true || (u_input.c.x <= u_input.c.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-523f, 1388f), vec2<f32>(383f, -347f)) - vec2<f32>(360f, 266f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-773f, -313f) - vec2<f32>(-266f, -1692f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1079f, 306f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) + vec2<f32>(1532f, 535f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(369f, 1725f) + vec2<f32>(121f, -1009f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-644f, 417f)))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a + var_1.a));
    global1 = -vec4<i32>(u_input.c.x, countOneBits(20634i), ~countOneBits(-2147483647i), 0i & _wgslsmith_mod_i32(_wgslsmith_mod_i32(18605i, u_input.c.x), -1i));
    var_1 = Struct_1(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(global1.ww, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-41802i, u_input.c.x, -36351i), ~global1.zwy), _wgslsmith_add_i32(abs(global1.x), -1i >> (0u % 32u)))), vec2<u32>(1u, 1u), vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.d, u_input.a.x) >> (_wgslsmith_sub_u32(~268u, 76183u) % 32u), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(58206u, 1u), u_input.a.xw), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 9338u), u_input.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1336f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(920f, _wgslsmith_f_op_f32(f32(-1f) * -781f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2865f)) - var_1.a.x)))));
}

