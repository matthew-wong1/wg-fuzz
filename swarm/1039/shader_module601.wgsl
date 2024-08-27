struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3;
    global0 = 1u << (_wgslsmith_add_u32(u_input.a.x, ~1u) % 32u);
    let var_1 = ~17159u > u_input.a.x;
    global0 = _wgslsmith_sub_u32(0u, ~u_input.a.x);
    global0 = u_input.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, 745f)) * _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(601f, var_0.a.x)) - -978f)));
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(873f, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(911f, arg_1), vec2<f32>(arg_1, arg_1)))))));
    var var_1 = !(!(!any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))));
    var_1 = any(vec4<bool>(true, (abs(u_input.b.x) >> (_wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.wy) % 32u)) <= u_input.b.x, true, all(vec4<bool>(true, true, true, true))));
    let var_2 = max(abs(arg_0), _wgslsmith_sub_u32(abs(_wgslsmith_dot_vec4_u32(abs(u_input.a), select(u_input.a, u_input.a, vec4<bool>(true, false, true, false)))), arg_0));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a));
    return 1u;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = _wgslsmith_dot_vec4_u32(select(u_input.a ^ max(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(25392u, 6742u, u_input.a.x, 8413u) >> (u_input.a % vec4<u32>(32u))), u_input.a, !vec4<bool>(false, true, arg_0, arg_0)), vec4<u32>(0u, func_3(u_input.a.x, _wgslsmith_f_op_f32(func_2(456f, _wgslsmith_f_op_f32(1435f * 1269f), vec4<f32>(204f, -257f, 224f, -134f), Struct_1(vec2<f32>(-1171f, 361f))))), 0u, select(0u, 0u, false)));
    let var_0 = any(!(!vec2<bool>(arg_0, all(vec2<bool>(false, false)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1318f, 1173f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(769f, 919f), vec2<f32>(-405f, 1568f), false)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-722f, -1113f))) * vec2<f32>(-224f, -687f))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(var_1.a.x, var_1.a.x)) - vec2<f32>(_wgslsmith_f_op_f32(round(434f)), _wgslsmith_f_op_f32(ceil(var_1.a.x))))));
    var var_3 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false);
    let var_1 = 1i;
    global0 = ~_wgslsmith_mult_u32(16617u | _wgslsmith_mod_u32(u_input.a.x, 1u), ~u_input.a.x);
    global0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a.x)), var_0.a);
}

