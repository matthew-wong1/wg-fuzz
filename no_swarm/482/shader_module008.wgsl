struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-188f))));
}

