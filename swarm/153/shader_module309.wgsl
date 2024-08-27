struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 19> = array<f32, 19>(245f, -561f, 729f, -501f, -314f, -226f, -637f, 410f, -203f, -346f, -947f, 305f, 396f, 475f, -1596f, -363f, -142f, -1506f, 1121f);

var<private> global2: array<vec3<bool>, 29>;

var<private> global3: array<f32, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(global0.b.c.c.x, 19u)], global0.c.c.c.yw, ~(vec2<i32>(global0.b.c.b, ~(-39978i)) << (vec2<u32>(4294967295u, u_input.e) % vec2<u32>(32u))), global0.b.c.a, global0.a.ywz);
}

