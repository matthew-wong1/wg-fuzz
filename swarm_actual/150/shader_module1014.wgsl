struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1300f;
    var var_1 = !(!vec3<bool>(select(true, true, true), select(24098u < u_input.b.x, true, u_input.b.x >= 27758u), ~74778u < u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.d << (u_input.c.x % 32u)), u_input.a, ~u_input.b.xyx, min(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, u_input.b.x, 14139u, u_input.d), u_input.b), vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.d), 1u, ~u_input.c.x, ~4294967295u)), u_input.b));
}

