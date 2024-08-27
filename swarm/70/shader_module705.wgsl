struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: f32,
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
    var var_0 = 47510i;
    let var_1 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(34857i, 1u, vec2<i32>(var_1, 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(949f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-516f + -1000f))));
}

