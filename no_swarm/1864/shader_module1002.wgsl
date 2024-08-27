struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
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

var<private> global0: f32;

var<private> global1: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(-1i), Struct_4(-46606i), Struct_4(2147483647i), Struct_4(0i), Struct_4(29507i), Struct_4(0i), Struct_4(i32(-2147483648)), Struct_4(0i), Struct_4(2147483647i), Struct_4(83501i), Struct_4(2542i), Struct_4(-1i), Struct_4(1i), Struct_4(-1i), Struct_4(1i), Struct_4(30162i), Struct_4(0i), Struct_4(i32(-2147483648)), Struct_4(2147483647i), Struct_4(-43822i), Struct_4(-17748i), Struct_4(0i), Struct_4(-27914i), Struct_4(2147483647i), Struct_4(-51375i), Struct_4(-1i));

var<private> global2: array<Struct_3, 16>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-16813i);
}

