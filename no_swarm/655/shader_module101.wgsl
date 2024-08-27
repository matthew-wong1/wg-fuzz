struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
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

var<private> global0: array<i32, 14> = array<i32, 14>(1i, -29756i, 3845i, 0i, 1i, 13555i, 47674i, 2147483647i, -1i, 1i, 2147483647i, -19875i, 35122i, -1i);

var<private> global1: array<i32, 14>;

var<private> global2: u32 = 25182u;

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

