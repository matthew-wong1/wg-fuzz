struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
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

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<i32, 23> = array<i32, 23>(1i, -1941i, 1i, 0i, 2147483647i, -1i, -1i, 86889i, 1i, i32(-2147483648), -45853i, 15184i, -3560i, -51669i, 2147483647i, 17714i, -47338i, 29317i, i32(-2147483648), 1i, -31906i, 4490i, 35053i);

var<private> global2: bool = true;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(1i));
}

