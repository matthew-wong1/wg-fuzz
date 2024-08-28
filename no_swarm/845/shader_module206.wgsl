struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = 1u;
    var_1 = 7769u;
    var_1 = firstLeadingBit(1u);
    var_1 = ~18628u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(355f * -1195f) + 1000f))), vec3<u32>(~1u, 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))));
}

