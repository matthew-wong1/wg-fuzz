struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~(~vec2<u32>(4294967295u, 0u))), _wgslsmith_f_op_f32(-196f + _wgslsmith_f_op_f32(-548f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 176f), -254f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(819f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(517f)) * -374f)));
}

