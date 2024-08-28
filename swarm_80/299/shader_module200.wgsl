struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
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

var<private> global0: array<Struct_3, 17>;

var<private> global1: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

