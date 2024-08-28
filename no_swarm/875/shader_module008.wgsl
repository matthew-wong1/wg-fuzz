struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), u_input.a.xzz), -1154f);
}

