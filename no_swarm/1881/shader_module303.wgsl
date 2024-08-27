struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 292f;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 27>;

var<private> global3: array<Struct_3, 14>;

var<private> global4: vec2<f32>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, vec3<i32>(12378i, 1i, ~abs(u_input.a)), 62267i, ~u_input.c, -u_input.a);
}

