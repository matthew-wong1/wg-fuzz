struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(303f, -1199f, -1048f, 326f);

var<private> global1: array<Struct_3, 24>;

var<private> global2: array<Struct_2, 22>;

var<private> global3: bool = true;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yz, global0.x, -10549i);
}

