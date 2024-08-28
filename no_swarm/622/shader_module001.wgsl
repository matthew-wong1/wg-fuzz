struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<bool>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
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

var<private> global0: vec4<i32> = vec4<i32>(-25380i, 1i, 0i, -1i);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.d) << (abs(1u << (~4294967295u % 32u)) % 32u));
}

