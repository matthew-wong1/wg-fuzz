struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-2364f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-496f, 1128f, 2408f, -140f) * vec4<f32>(-461f, 531f, 159f, -139f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2589f, -2955f, 496f, 1395f) - vec4<f32>(-2618f, -1766f, -941f, 1299f))))))));
}

