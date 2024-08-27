struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(0u, 316u, 0u, 0u, 104657u, 4294967295u, 1u, 30877u, 0u, 19410u, 0u, 0u, 112974u, 4294967295u, 0u, 93151u, 1u, 1u, 48553u, 0u, 40220u, 31530u, 0u, 0u, 64443u, 0u, 32531u, 1u, 0u, 1u, 98797u);

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

