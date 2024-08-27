struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
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

var<private> global0: i32 = -62848i;

var<private> global1: f32;

var<private> global2: array<u32, 6>;

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(828f);
}

