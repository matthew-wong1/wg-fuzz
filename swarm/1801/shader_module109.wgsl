struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), -162f, vec2<f32>(-724f, 130f), vec3<f32>(-926f, -1491f, -525f), vec3<bool>(false, true, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global0.c + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.c * global0.c)))));
}

