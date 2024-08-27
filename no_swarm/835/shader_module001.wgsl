struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
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

var<private> global0: u32 = 13555u;

var<private> global1: array<f32, 22> = array<f32, 22>(-186f, 927f, -1053f, -521f, 1000f, -1508f, -1000f, 475f, 1031f, -1584f, -1731f, -281f, 940f, -1000f, 1000f, -1146f, 720f, -1000f, -756f, 460f, 1293f, -256f);

var<private> global2: Struct_5;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(38503i);
}

