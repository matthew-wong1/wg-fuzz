struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
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

var<private> global0: array<vec4<i32>, 28>;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(-1871f), Struct_3(-226f), Struct_3(-1000f), Struct_3(179f), Struct_3(-1861f), Struct_3(709f), Struct_3(-1651f), Struct_3(650f), Struct_3(-1058f), Struct_3(-512f), Struct_3(1693f), Struct_3(131f), Struct_3(-411f), Struct_3(1100f), Struct_3(-881f), Struct_3(995f), Struct_3(1172f), Struct_3(1944f), Struct_3(-372f), Struct_3(-1285f), Struct_3(1472f), Struct_3(-325f), Struct_3(918f), Struct_3(-196f), Struct_3(-812f), Struct_3(-879f), Struct_3(-207f));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

