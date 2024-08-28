struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
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
    s_output = StorageBuffer(vec3<i32>(~(~u_input.e.x), u_input.d.x, u_input.e.x) >> ((~(~vec3<u32>(u_input.b, 38583u, u_input.b)) | u_input.c.zww) % vec3<u32>(32u)), ~(~u_input.e >> (~select(u_input.c, vec4<u32>(37978u, 4294967295u, u_input.c.x, 4294967295u), vec4<bool>(true, true, true, false)) % vec4<u32>(32u))));
}

