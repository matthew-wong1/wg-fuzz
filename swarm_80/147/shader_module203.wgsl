struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(52986u, 1u), vec2<u32>(44214u, 1u), vec2<u32>(53914u, 11840u), vec2<u32>(9942u, 0u), vec2<u32>(57867u, 4294967295u), vec2<u32>(47886u, 1u), vec2<u32>(0u, 75913u), vec2<u32>(67054u, 0u), vec2<u32>(25705u, 0u), vec2<u32>(104912u, 48068u), vec2<u32>(16249u, 40245u), vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(50762u, 115071u), vec2<u32>(1974u, 1u));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, 1i));
}

