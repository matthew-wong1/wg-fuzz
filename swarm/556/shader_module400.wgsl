struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
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

var<private> global0: u32 = 4294967295u;

@compute
@workgroup_size(1)
fn main() {
    global0 = 12345u ^ u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}

