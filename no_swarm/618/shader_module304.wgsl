struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(1509f, 330f, 2263f, 925f, 280f, 197f, -1712f, 356f, 1078f, 220f, 794f, 928f, 204f, 185f, -1095f, 1033f, -224f, 1517f, -1580f, 1203f, -1113f, -292f, -1000f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> bool {
    var var_0 = -804f;
    return any(!(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))));
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = true;
    let var_1 = Struct_1(vec2<bool>(true, true), select(false, !(916f > global0[_wgslsmith_index_u32(0u, 23u)]), true) || func_2(max(vec2<i32>(1i, 1i), vec2<i32>(54973i, 50208i)), 1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(9034u, 23u)]) - _wgslsmith_f_op_f32(max(-1581f, 815f)))))));
    var_0 = true;
    return StorageBuffer(1u, 0i >> ((u_input.a | max(~4294967295u, 30655u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 23>();
    var var_0 = Struct_5(Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 23u)] - 690f))), ~(~vec3<u32>(17789u, 76223u, u_input.a))));
    global0 = array<f32, 23>();
    var_0 = Struct_5(Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(690f)), var_0.a.a, true)), max(~var_0.a.b, vec3<u32>(min(49532u, u_input.a), var_0.a.b.x, 31791u))));
    var_0 = Struct_5(Struct_4(269f, _wgslsmith_clamp_vec3_u32(vec3<u32>(8040u, 1u, select(u_input.a, u_input.a, false)), var_0.a.b, vec3<u32>(u_input.a, _wgslsmith_mult_u32(1u, 6684u), u_input.a))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], var_0.a.a, -785f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1628f, -1183f, var_0.a.a, var_0.a.a), vec4<f32>(global0[_wgslsmith_index_u32(83549u, 23u)], 1561f, var_0.a.a, var_0.a.a))), 321f > global0[_wgslsmith_index_u32(1u, 23u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, 1657f, -1000f, 1851f)), vec4<bool>(false, true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), false))));
}

