struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
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

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0u;
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(495f - _wgslsmith_f_op_f32(f32(-1f) * -1374f)))), -837f);
    global0 = u_input.b;
    global1 = array<vec4<bool>, 2>();
    global1 = array<vec4<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(1215f);
}

