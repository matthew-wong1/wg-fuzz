struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

var<private> global0: Struct_3 = Struct_3(120169u);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x);
}

