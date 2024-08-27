struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
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

var<private> global0: Struct_1;

var<private> global1: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, false))))));
    let var_0 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, global0.a, 183f, global0.a)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a, -681f, 1183f, 678f), vec4<f32>(global0.a, -1722f, 809f, global0.a)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.a, 876f, -1092f))));
}

