struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
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

var<private> global0: array<Struct_2, 25>;

var<private> global1: Struct_3 = Struct_3(Struct_2(28279u), Struct_1(vec2<u32>(0u, 62097u), 8097i, -200f, vec2<i32>(29482i, i32(-2147483648)), 41985u));

var<private> global2: vec2<i32>;

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.a);
}

