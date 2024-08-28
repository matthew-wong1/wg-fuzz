struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: vec2<u32>;

var<private> global2: Struct_2 = Struct_2(Struct_1(51626i, vec3<i32>(-1i, -39962i, 2147483647i), -1110f, vec3<u32>(0u, 0u, 1u), false));

var<private> global3: array<Struct_1, 16>;

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.d.zy);
}

