struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~0u), _wgslsmith_mod_u32(~63u, u_input.b));
}

