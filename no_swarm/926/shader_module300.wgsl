struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, _wgslsmith_dot_vec3_u32(~(vec3<u32>(1u, 66841u, 47493u) & vec3<u32>(u_input.b, u_input.b, 1u)), abs(vec3<u32>(u_input.b, 65833u, u_input.b) ^ vec3<u32>(u_input.b, u_input.b, u_input.b))) < 28037u, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.d);
}

