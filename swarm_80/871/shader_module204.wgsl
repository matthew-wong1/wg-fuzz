struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
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

var<private> global0: i32 = 4479i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -(u_input.a.x | 0i);
    let x = u_input.a;
    s_output = StorageBuffer((u_input.b.x << (reverseBits(_wgslsmith_sub_u32(112191u, 60676u)) % 32u)) << (firstLeadingBit(abs(37096u)) % 32u));
}

