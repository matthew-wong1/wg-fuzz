struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(max(-437f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(868f, 1203f)) * -804f))));
}

