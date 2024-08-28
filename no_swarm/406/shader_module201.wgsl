struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -92625i;

var<private> global1: vec4<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = all(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_add_i32(-(~_wgslsmith_clamp_i32(~u_input.a.x, 0i, -5004i | u_input.a.x)), 27830i << (arg_0.x % 32u));
    let var_2 = ~firstLeadingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), arg_0.yx), arg_0.xx) ^ ~arg_0.zy);
    var_1 = min(1i, _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -39907i, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, 1i, -3168i, 2147483647i)), vec4<i32>(1494i, u_input.a.x, 2709i, -25405i)), vec4<i32>(~u_input.a.x, countOneBits(firstTrailingBit(-294i)), 22176i, -2147483647i)));
    var_1 = -10483i;
    return _wgslsmith_f_op_f32(-global1.x);
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    global0 = 1i;
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(min(344f, _wgslsmith_div_f32(-1509f, -713f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(func_3(arg_0))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 917f, 1676f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.xwx)) - vec3<f32>(global1.x, global1.x, 292f)))))));
    let var_1 = ~vec2<i32>(6072i, ~(-22483i));
    var var_2 = Struct_4(true);
    let var_3 = Struct_1(reverseBits(_wgslsmith_mult_u32(46595u, 31269u)), _wgslsmith_add_u32(select(arg_0.x, 1u ^ (27170u ^ arg_0.x), var_2.a), _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 45647u), ~15999u << (_wgslsmith_mod_u32(arg_0.x, 1u) % 32u))));
    return arg_0.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: f32) -> f32 {
    var var_0 = reverseBits(~_wgslsmith_add_u32(select(53905u, 4294967295u, false), 1u) | _wgslsmith_sub_u32(func_2(~vec3<u32>(52343u, 4294967295u, 150917u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(47279u, 1u), 1u)));
    var var_1 = -12640i;
    let var_2 = select(any(arg_0.xx), arg_1, false);
    let var_3 = !vec2<bool>(arg_0.x, _wgslsmith_add_i32(u_input.a.x | u_input.a.x, -25650i) != max(~18184i, _wgslsmith_dot_vec4_i32(vec4<i32>(-41710i, u_input.a.x, 32733i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x))));
    var var_4 = ~1476u;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec3<bool>(false, true, true), true, -478f)), -118f, true)), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) + _wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, true), true, global1.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.x, -220f, true)), -1166f), true)), _wgslsmith_f_op_f32(-global1.x)));
    var var_0 = vec4<bool>(false, any(vec4<bool>(true, true, true, true)), true, true);
    var var_1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1422f)), vec2<i32>(1i, ~(-36942i)));
}

