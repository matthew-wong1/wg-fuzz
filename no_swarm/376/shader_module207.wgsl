struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
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

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 77410u;
    var_0 = ~u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.b, 1u, 35484u), ~(vec4<u32>(1u, u_input.d, 31244u, u_input.b) >> (vec4<u32>(u_input.d, u_input.d, u_input.b, u_input.b) % vec4<u32>(32u)))) ^ ~(select(vec4<u32>(u_input.d, u_input.b, u_input.d, u_input.d), vec4<u32>(u_input.b, u_input.d, 5855u, 1u), vec4<bool>(false, false, true, false)) >> ((vec4<u32>(u_input.b, 5253u, 28266u, u_input.d) << (vec4<u32>(26523u, u_input.b, 9730u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), -6403i);
}

