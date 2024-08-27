struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-115f, 747f), vec2<f32>(2118f, 1000f), true)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1530f, 2336f)))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(-272f - _wgslsmith_f_op_f32(518f * 1000f)))));
    let var_2 = 7736i;
    let var_3 = all(!vec3<bool>(var_0, false, var_0));
    global0 = array<vec2<bool>, 7>();
    return select(select(vec4<bool>(any(vec4<bool>(true, var_0, var_0, var_0)), false, var_0, true), select(vec4<bool>(true, var_3, false, true), !(!vec4<bool>(true, false, var_3, true)), !(var_1.a.x > var_1.a.x)), !(!(!vec4<bool>(false, var_0, false, true)))), select(vec4<bool>(false, any(vec3<bool>(false, false, var_0)) || true, any(global0[_wgslsmith_index_u32(69269u, 7u)]), var_3), vec4<bool>(!var_3, all(vec2<bool>(true, var_0)), select(true, var_3, var_0), !any(vec3<bool>(var_3, var_3, true))), !select(select(vec4<bool>(true, false, var_0, true), vec4<bool>(var_0, var_0, var_0, true), true), !vec4<bool>(true, true, true, var_0), select(vec4<bool>(false, var_0, var_3, var_3), vec4<bool>(var_0, false, var_0, var_3), false))), !any(vec4<bool>(true, any(global0[_wgslsmith_index_u32(51277u, 7u)]), true, any(vec4<bool>(false, var_3, false, true)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> bool {
    global0 = array<vec2<bool>, 7>();
    global0 = array<vec2<bool>, 7>();
    let var_0 = Struct_1(arg_1.a);
    var var_1 = abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(abs(-9737i), i32(-1i) * -29796i, -718i), max(_wgslsmith_mod_vec3_i32(vec3<i32>(53374i, 1i, u_input.a), vec3<i32>(u_input.a, -10255i, 3171i)), vec3<i32>(21773i, arg_3, u_input.a)), vec3<i32>(-48280i, 36471i, i32(-1i) * -59728i))) ^ ~(vec3<i32>(_wgslsmith_div_i32(arg_3, 2147483647i), arg_3, arg_3 & 2147483647i) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, -33047i) & vec3<i32>(34685i, u_input.a, 28807i), ~vec3<i32>(2147483647i, u_input.a, u_input.a)));
    var var_2 = 230f;
    return 0u < ~countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 55702u), vec3<u32>(12049u, 1u, 61576u)));
}

fn func_2(arg_0: i32, arg_1: f32) -> vec3<bool> {
    let var_0 = vec2<bool>(true, !func_4(true, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 640f))), func_3(), countOneBits(1i)));
    var var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-275f, arg_1) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a * vec2<f32>(-446f, arg_1)));
    var var_4 = any(vec2<bool>(true, true));
    return vec3<bool>(false, true, false);
}

fn func_1() -> Struct_1 {
    var var_0 = select(false, true, true | all(func_2(abs(-1i), _wgslsmith_f_op_f32(f32(-1f) * -543f))));
    var var_1 = select(vec3<bool>(all(vec4<bool>(true, true, true, func_4(true, Struct_1(vec2<f32>(228f, -682f)), vec4<bool>(true, false, true, false), u_input.a))), true, true), !vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), select(func_2(_wgslsmith_sub_i32(~9364i, _wgslsmith_add_i32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, 1465f))))), vec3<bool>(true, !(u_input.a < u_input.a), _wgslsmith_div_i32(-27082i, 15622i) == (u_input.a ^ 36879i)), !func_3().www));
    global0 = array<vec2<bool>, 7>();
    global0 = array<vec2<bool>, 7>();
    global0 = array<vec2<bool>, 7>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(996f, -1164f))))))))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1;
    global0 = array<vec2<bool>, 7>();
    let var_1 = var_0;
    let var_2 = func_1();
    let var_3 = 363f;
    return 1582f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(1u, 7u)], func_1())), 2589f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1575f, 1f, false)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-475f + -865f))))), _wgslsmith_f_op_f32(f32(-1f) * -611f));
    var var_1 = var_0.yz;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.zz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-943f, -166f), vec2<f32>(1382f, -820f))))));
    let var_2 = func_2(reverseBits(4635i), _wgslsmith_f_op_f32(f32(-1f) * -297f));
    let var_3 = func_1();
    global0 = array<vec2<bool>, 7>();
    let var_4 = !vec2<bool>(var_2.x, !(!func_4(var_2.x, var_3, vec4<bool>(var_2.x, true, var_2.x, false), 2147483647i)));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~(~1742u)), 67964u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), select(max(vec4<u32>(47650u, 2526u, 41788u, 0u), vec4<u32>(1u, 4294967295u, 1u, 10456u)), vec4<u32>(1u, 1u, 1u, 1u), true)), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(1u, 36854u, 39910u, 8845u))))), ~abs(~13075i), var_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2325f), 4294967295u);
}

