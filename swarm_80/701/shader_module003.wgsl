struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(100472u, 36895u), vec2<u32>(4294967295u, 26806u), vec2<u32>(0u, 1u), vec2<u32>(1u, 44707u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(22445u, 0u), vec2<u32>(1u, 50759u), vec2<u32>(4294967295u, 0u), vec2<u32>(27507u, 45678u));

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

