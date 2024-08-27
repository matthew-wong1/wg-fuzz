struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 1u, 1u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(any(vec2<bool>(true, true)), false));
    global1 = vec4<u32>(58239u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(global1.x, (u_input.c ^ 0u) ^ (global1.x ^ 1u)), 1u), 79341u, 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-922f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-19733i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 236f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(590f, -592f, _wgslsmith_f_op_f32(-var_1)))))), -abs(~vec4<i32>(1i, u_input.a, u_input.e, 24784i)));
}

