struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(7887u, vec3<bool>(false, false, true), vec3<u32>(4294967295u, 26293u, 22231u), 2147483647i, vec2<f32>(-1726f, 726f));

var<private> global1: Struct_4;

var<private> global2: array<Struct_2, 17>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(4304u, firstTrailingBit(2147483647i));
}

