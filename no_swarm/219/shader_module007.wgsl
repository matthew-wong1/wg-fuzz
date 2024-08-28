struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~u_input.a.x, u_input.b.x, u_input.b.x | ~u_input.b.x, _wgslsmith_mult_u32(31187u, ~u_input.b.x)), 1712f);
}

