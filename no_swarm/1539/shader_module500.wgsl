struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-530f, -1000f), vec2<f32>(-339f, 1482f), vec2<f32>(-251f, -266f), vec2<f32>(-1047f, 324f), vec2<f32>(-553f, 1446f), vec2<f32>(236f, -1032f), vec2<f32>(395f, 445f), vec2<f32>(1114f, -244f), vec2<f32>(1582f, -542f), vec2<f32>(-742f, 2359f), vec2<f32>(-572f, 374f));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-382f);
}

