struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = Struct_1(-2147483647i << (countOneBits((u_input.c ^ 82404u) >> (0u % 32u)) % 32u), firstLeadingBit(u_input.c), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec2<u32>(5890u, 1u)), u_input.b);
}

