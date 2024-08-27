struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))) * global1.x), global1.x), vec3<f32>(-849f, -1691f, _wgslsmith_f_op_f32(arg_0 * 1089f)));
    global1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, -1772f, global1.x), vec3<f32>(global1.x, 1254f, -1000f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-200f, global1.x, arg_0) * vec3<f32>(-1642f, 691f, global1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -422f, 1941f))))))));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -149f, _wgslsmith_f_op_f32(-1374f * _wgslsmith_f_op_f32(abs(arg_0)))));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-677f + -249f) * arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-191f, global1.x))))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1223f, 1523f, 1438f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, global1.x))))), vec3<f32>(arg_0, arg_0, arg_0)));
    return vec4<u32>(arg_2.a.x, arg_2.b.x, min(arg_2.b.x, arg_2.c.x), arg_2.c.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = !select(vec2<bool>(true, select(arg_3.d, true, all(vec4<bool>(false, arg_1.d, arg_1.d, arg_1.d)))), vec2<bool>(true, any(select(vec2<bool>(true, arg_1.d), vec2<bool>(false, arg_1.d), vec2<bool>(false, arg_1.d)))), vec2<bool>(!arg_1.d, u_input.a < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 1i, u_input.a), vec4<i32>(1i, -23244i, -1i, u_input.a))));
    global0 = u_input.a;
    var var_1 = true;
    let var_2 = _wgslsmith_mult_vec4_i32(firstLeadingBit(reverseBits(~select(vec4<i32>(u_input.a, 32589i, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i), true))), _wgslsmith_sub_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 40457i, u_input.a, -2147483647i) ^ vec4<i32>(u_input.a, -1i, 58379i, u_input.a), ~vec4<i32>(-2147483647i, u_input.a, u_input.a, -1i))), -min(select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(25534i, u_input.a, -5538i, 0i), true), ~vec4<i32>(0i, u_input.a, -2147483647i, u_input.a))));
    let var_3 = var_2.x;
    return 31232u;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<i32> {
    var var_0 = -726f;
    let var_1 = !(!(!select(vec2<bool>(true, true), vec2<bool>(false, arg_2.d), select(vec2<bool>(arg_2.d, false), vec2<bool>(true, true), vec2<bool>(arg_2.d, true)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -804f);
    global0 = firstTrailingBit(-1i);
    let var_2 = vec3<bool>(!any(select(!var_1, select(vec2<bool>(var_1.x, false), var_1, var_1.x), select(vec2<bool>(false, true), vec2<bool>(true, arg_2.d), var_1))), arg_2.d, false);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(abs(firstTrailingBit(func_1(global1.x, true, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<u32>(6846u, 24748u, 4294967295u, 4294967295u), vec2<u32>(0u, 24748u), false)) & vec4<u32>(1u, 0u, 51033u, 6450u))), vec3<i32>(-33405i, -(~_wgslsmith_clamp_i32(u_input.a, -2147483647i, u_input.a)), u_input.a), Struct_1(vec2<u32>(max(func_2(-1000f, Struct_1(vec2<u32>(33869u, 43798u), vec4<u32>(21254u, 1u, 0u, 4294967295u), vec2<u32>(72576u, 0u), true), Struct_1(vec2<u32>(1u, 4294967295u), vec4<u32>(0u, 25077u, 4294967295u, 0u), vec2<u32>(0u, 1u), false), Struct_1(vec2<u32>(1u, 21837u), vec4<u32>(0u, 18913u, 45027u, 1u), vec2<u32>(13138u, 0u), false)), _wgslsmith_mod_u32(1u, 1u)), ~abs(4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(36541u, 32072u), abs(vec2<u32>(1u, 1u)), vec2<u32>(1u, 4294967295u)), false), ~(~(~(~vec4<u32>(1u, 18811u, 109u, 54957u)))));
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    var var_1 = _wgslsmith_add_u32(~countOneBits(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(18300u, 30022u, 20858u, 13018u)), ~vec4<u32>(1u, 9043u, 0u, 10920u))), 0u << (1u % 32u));
    let var_2 = Struct_1(abs(_wgslsmith_div_vec2_u32(abs(vec2<u32>(9724u, 1u)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(11204u, 31855u), vec2<u32>(81835u, 4294967295u), vec2<u32>(4294967295u, 0u))))), abs(vec4<u32>(1u, 1u, 4294967295u, min(1u, countOneBits(4294967295u)))), reverseBits(vec2<u32>(~_wgslsmith_add_u32(105628u, 26743u), ~(~5996u))), _wgslsmith_div_i32(~2147483647i, ~min(var_0.x, -2041i)) < (_wgslsmith_mod_i32(-13285i, -2147483647i) & _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.a), vec4<i32>(-1i, u_input.a, 19520i, var_0.x))));
    var var_3 = -517f;
    var var_4 = var_2.b.wx;
    let var_5 = select(select(vec2<bool>(var_2.d, global1.x > -475f), select(vec2<bool>(var_2.d, false), !select(vec2<bool>(true, var_2.d), vec2<bool>(var_2.d, true), vec2<bool>(false, var_2.d)), var_2.d), vec2<bool>(true, true)), select(vec2<bool>(!var_2.d, false), vec2<bool>(false, false), true), !(!(!vec2<bool>(var_2.d, var_2.d))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(var_4.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_4.x, var_2.b.x), ~var_2.c.x), var_4.x), 4294967295u, ~4294967295u, _wgslsmith_add_u32(var_2.b.x, var_2.c.x)), global1.x, max(firstTrailingBit(1u), min(~var_4.x, 15962u)) << (var_4.x % 32u), countOneBits(select(~reverseBits(vec4<i32>(u_input.a, 0i, 1i, u_input.a)), vec4<i32>(2147483647i, abs(3238i), select(var_0.x, 41538i, false), -var_0.x), vec4<bool>(true, false, var_4.x < 4294967295u, var_5.x & var_2.d))), ~abs(2147483647i));
}

