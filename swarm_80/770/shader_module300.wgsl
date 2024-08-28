struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
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

var<private> global0: array<u32, 1> = array<u32, 1>(43666u);

var<private> global1: array<Struct_2, 6>;

var<private> global2: u32 = 11979u;

var<private> global3: u32 = 48788u;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a.x));
}

