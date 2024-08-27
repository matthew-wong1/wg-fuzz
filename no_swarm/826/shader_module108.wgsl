struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(1u, vec2<bool>(true, true)), Struct_1(25954u, vec2<bool>(false, true)), Struct_1(0u, vec2<bool>(true, true)), Struct_1(36223u, vec2<bool>(false, true)), Struct_1(4294967295u, vec2<bool>(false, true)), Struct_1(1u, vec2<bool>(true, true)), Struct_1(1249u, vec2<bool>(false, false)));

var<private> global1: array<vec3<bool>, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    global0 = array<Struct_1, 7>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(672f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2540f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(max(var_0, var_0)), 356f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1057f, -532f, var_0) + vec3<f32>(-1532f, var_0, var_0))))), ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<u32>(48255u, u_input.b, u_input.b, u_input.b) << (~vec4<u32>(u_input.b, 4294967295u, 32929u, u_input.b) % vec4<u32>(32u))));
}

