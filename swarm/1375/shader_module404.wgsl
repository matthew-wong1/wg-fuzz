struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: array<vec3<f32>, 29>;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<u32>(0u, 42289u, 10762u), false, Struct_1(6616i, 2147483647i, 13568i, 2147483647i), 3773u, -21602i), Struct_2(vec3<u32>(1u, 4294967295u, 0u), false, Struct_1(-63155i, 2873i, 2147483647i, -1674i), 4294967295u, -17746i), Struct_2(vec3<u32>(4582u, 44705u, 16427u), false, Struct_1(14201i, 1i, -40216i, -4578i), 1u, 0i), Struct_2(vec3<u32>(4294967295u, 28577u, 1u), false, Struct_1(-17934i, 0i, 43373i, i32(-2147483648)), 80632u, 2147483647i), Struct_2(vec3<u32>(4294967295u, 4294967295u, 20381u), false, Struct_1(-22925i, 2147483647i, 40251i, 1i), 93993u, 1i), Struct_2(vec3<u32>(1u, 43987u, 27058u), false, Struct_1(20539i, -1i, 1i, 2147483647i), 53985u, -16142i), Struct_2(vec3<u32>(51310u, 4294967295u, 0u), true, Struct_1(24413i, -72556i, 2147483647i, 18939i), 20076u, 1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1133f, _wgslsmith_f_op_f32(353f + 732f), -926f, -345f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-127f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(543f * 237f), any(vec2<bool>(arg_0.b, true)))), _wgslsmith_f_op_f32(-131f * _wgslsmith_f_op_f32(trunc(-1027f))), -1096f)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-490f, -508f, 303f, -618f))))))));
    var var_1 = arg_1.c;
    let var_2 = min(u_input.a.zz, vec2<i32>(_wgslsmith_dot_vec4_i32(-min(vec4<i32>(arg_0.e, u_input.a.x, arg_2.b, -2147483647i), vec4<i32>(2147483647i, arg_1.e, -7892i, 1i)), ~abs(vec4<i32>(var_1.a, arg_0.e, 2147483647i, 0i))), -1i));
    var var_3 = u_input.a;
    var var_4 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.x, 4294967295u, ~arg_0.d), vec3<u32>(4294967295u, ~(~16805u), 80519u)), all(vec4<bool>(true, !(!arg_0.b), arg_0.b, arg_1.b)), arg_1.c, ~(arg_1.d << (~arg_0.d % 32u)), ~(~select(u_input.a.x ^ 10759i, 1i, any(vec4<bool>(arg_1.b, true, arg_0.b, false)))));
    return vec3<bool>(false, var_2.x <= 2147483647i, select(!(true | !arg_1.b), !all(vec2<bool>(true, false)) | true, select(any(vec2<bool>(true, arg_1.b)), true, any(vec2<bool>(false, arg_1.b)))));
}

fn func_2() -> vec3<bool> {
    global0 = array<vec3<f32>, 29>();
    let var_0 = vec4<i32>(-21096i, u_input.a.x, 2147483647i, u_input.a.x);
    var var_1 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_3(Struct_2(vec3<u32>(30421u, 4294967295u, 1u), true, Struct_1(3126i, var_0.x, u_input.a.x, 1i), 17803u, -103562i), Struct_2(vec3<u32>(4294967295u, 29796u, 9121u), true, Struct_1(0i, 18672i, var_0.x, -2534i), 48080u, u_input.a.x), Struct_1(var_0.x, -1i, var_0.x, -1i)), true), true | select(true, true, false)), vec3<bool>(false, false, false), !vec3<bool>(true, any(vec3<bool>(false, false, false)), all(vec4<bool>(true, true, false, true))));
    let var_2 = ~(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_0, max(vec4<i32>(-1i, u_input.a.x, u_input.a.x, 2147483647i), var_0)), 0i, ~(~u_input.a.x)));
    let var_3 = vec2<u32>(1u, 1u);
    return !vec3<bool>(true, !(~var_3.x != 39928u), var_1.x);
}

fn func_1() -> vec2<f32> {
    var var_0 = func_2();
    var var_1 = abs(_wgslsmith_div_u32(~(~60898u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(50594u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(70967u, 24926u), vec2<u32>(54092u, 1u), vec2<u32>(35070u, 1u)))));
    var var_2 = Struct_2(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(14362u, 91234u, 23452u), vec3<u32>(26175u, 26043u, 40917u)), ~vec3<u32>(1u, 1u, 0u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(85976u, 1u, 42945u, 0u), vec4<u32>(4294967295u, 75608u, 4294967295u, 4294967295u)), max(1u, 4294967295u))), true, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-19257i, u_input.a.x), select(vec2<i32>(2147483647i, u_input.a.x) | u_input.a.yy, u_input.a.zy, true)), _wgslsmith_sub_i32(13539i, u_input.a.x), -2592i, -19891i), _wgslsmith_mod_u32(_wgslsmith_mult_u32(48479u, countOneBits(~5960u)), ~(~select(1587u, 56011u, true))), u_input.a.x);
    let var_3 = var_2.c;
    global1 = array<Struct_2, 7>();
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-258f, -1104f), vec2<f32>(1506f, 2192f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(581f, -644f), vec2<f32>(459f, 133f))))))));
    global1 = array<Struct_2, 7>();
    global0 = array<vec3<f32>, 29>();
    var var_1 = reverseBits(1u) & _wgslsmith_clamp_u32(14733u, ~(~4294967295u), 88983u);
    var_1 = ~(~(~(~54511u)));
    let var_2 = !vec3<bool>(-8750i >= (abs(9921i) & (-12803i | u_input.a.x)), true, !all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

