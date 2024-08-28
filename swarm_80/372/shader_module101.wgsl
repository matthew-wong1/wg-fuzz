struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: Struct_3;

var<private> global2: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(6178u, vec4<f32>(-1210f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * global1.b.x))), global1.b.x, _wgslsmith_f_op_f32(-global1.b.x)), -1i);
}

