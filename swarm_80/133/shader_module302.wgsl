struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<f32>(117f, -1570f, -1019f));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, true, false), vec3<i32>(-44668i, 1i, -17139i), true);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~1u, ~(~0u)), ~(~(~(~38926u))));
}

