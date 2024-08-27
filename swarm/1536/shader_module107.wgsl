struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -37224i;

var<private> global1: Struct_2 = Struct_2(Struct_1(true, false, 0u, true, 49730u), 1u, Struct_1(false, false, 49151u, true, 6512u));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(183f, select(12208u, u_input.a, global1.c.a));
}

