struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec2<u32>,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(4294967295u, 4294967295u, 19861u, 4294967295u), vec4<u32>(1u, 48059u, 0u, 1u), vec4<u32>(4294967295u, 18566u, 49528u, 4294967295u), vec4<u32>(9518u, 11596u, 7639u, 0u), vec4<u32>(13032u, 4294967295u, 0u, 1u), vec4<u32>(1u, 4294967295u, 21219u, 4294967295u), vec4<u32>(1u, 69347u, 24463u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 72664u), vec4<u32>(6949u, 1u, 4294967295u, 19992u), vec4<u32>(15616u, 1u, 47762u, 1u), vec4<u32>(1u, 91682u, 12212u, 98950u), vec4<u32>(0u, 23171u, 4294967295u, 6502u), vec4<u32>(4294967295u, 9481u, 4294967295u, 0u), vec4<u32>(121942u, 1u, 53894u, 1u), vec4<u32>(0u, 45036u, 34473u, 70482u), vec4<u32>(1u, 0u, 0u, 1u));

var<private> global1: Struct_1;

var<private> global2: vec4<f32> = vec4<f32>(-2036f, 421f, 536f, -970f);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~global1.a);
}

