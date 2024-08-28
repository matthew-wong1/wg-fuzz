struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(false, false, true, false, true, false, true, false, true, false, true, false);

var<private> global1: array<vec3<bool>, 16>;

var<private> global2: f32;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

