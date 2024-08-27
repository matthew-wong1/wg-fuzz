struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(1i, 1i, 1i)), reverseBits(abs(vec2<u32>(4294967295u, u_input.a)) << (select(~vec2<u32>(0u, u_input.a), firstLeadingBit(vec2<u32>(20964u, u_input.a)), false) % vec2<u32>(32u))), min(vec2<i32>(max(2147483647i, -2147483647i), 0i), vec2<i32>(53876i, -13323i)));
}

