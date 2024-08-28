struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(26655i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, 14819i), vec2<i32>(-50127i, -12093i), vec2<i32>(28620i, -12143i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(-53391i, 0i), vec2<i32>(0i, 21110i), vec2<i32>(2147483647i, -13489i), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), -2377i), vec2<i32>(-26006i, 1i), vec2<i32>(0i, 5942i), vec2<i32>(i32(-2147483648), 29461i), vec2<i32>(4081i, i32(-2147483648)), vec2<i32>(-32655i, -19280i), vec2<i32>(-6190i, i32(-2147483648)), vec2<i32>(-55186i, 46889i), vec2<i32>(9481i, -64305i), vec2<i32>(1i, 1i), vec2<i32>(-1i, 25645i), vec2<i32>(-52578i, i32(-2147483648)), vec2<i32>(18372i, 15760i), vec2<i32>(2147483647i, -1i), vec2<i32>(-2259i, 3435i), vec2<i32>(2379i, -70210i));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(u_input.b <= _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 1u, select(4294967295u, u_input.b, false), 69283u), vec4<u32>(11558u, 39860u, ~47885u, u_input.b)));
    let var_1 = Struct_1(all(!(!vec3<bool>(true, false, var_0.a))));
    let var_2 = var_1;
    let var_3 = false;
    var var_4 = ~(_wgslsmith_add_vec4_u32(vec4<u32>(min(u_input.b, u_input.b), _wgslsmith_sub_u32(27949u, 0u), 4294967295u << (u_input.b % 32u), u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(83984u, u_input.b, u_input.b, 0u), ~vec4<u32>(u_input.b, 4116u, u_input.b, 47884u))) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.b, 4294967295u, u_input.b), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 53354u), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(0u, 26854u, u_input.b, u_input.b)), ~vec4<u32>(4294967295u, u_input.b, u_input.b, 0u))));
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f + 1142f));
    var_0 = arg_0;
    let var_2 = u_input.b;
    var_0 = Struct_1(!(!(!var_0.a)) && false);
    return func_2(var_0.a, -645f);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<bool>) -> vec3<bool> {
    global0 = array<vec2<i32>, 32>();
    global0 = array<vec2<i32>, 32>();
    global0 = array<vec2<i32>, 32>();
    var var_0 = func_3(func_2(!(true && arg_2.x), -996f), -420f);
    let var_1 = vec3<i32>(~_wgslsmith_add_i32(1i, -arg_1), 4515i, (~2147483647i >> (firstLeadingBit(u_input.b) % 32u)) << (max(~1u | u_input.b, _wgslsmith_div_u32(u_input.b, u_input.b)) % 32u));
    return select(vec3<bool>(true, arg_2.x, !arg_2.x), !select(select(arg_2.zzy, !arg_2.yzx, vec3<bool>(true, true, true)), arg_2.wzx, select(false, true, false) & true), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(any(func_1(vec3<i32>(u_input.a.x, select(-2147483647i, u_input.a.x, true), ~2147483647i), 1i, vec4<bool>(true, u_input.a.x > -71317i, true, true))));
    let var_2 = _wgslsmith_f_op_f32(-1644f - -328f);
    let var_3 = all(!(!(!vec4<bool>(false, var_1.a, true, false))));
    let var_4 = vec3<f32>(-444f, 292f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2)) * _wgslsmith_f_op_f32(var_2 - var_2)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1746f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(766f, 1322f, var_2, var_4.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -826f, -156f, var_2)), var_3))))));
}

