struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(159f + _wgslsmith_f_op_f32(step(587f, 1000f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1566f)))))) + 1398f);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 6229u, 4294967295u, 0u), vec4<u32>(1u, 62770u, 31036u, 19730u)), ~(~46730u), ~4294967295u));
}

