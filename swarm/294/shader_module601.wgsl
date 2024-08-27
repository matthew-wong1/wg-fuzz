struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 16>;

var<private> global2: u32 = 23345u;

var<private> global3: vec2<bool>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

