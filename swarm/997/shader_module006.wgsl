struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: f32;

var<private> global2: array<u32, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 14>();
    let var_0 = -3668i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(1u), _wgslsmith_dot_vec2_u32(abs(min(vec2<u32>(u_input.b, 4294967295u), abs(vec2<u32>(global2[_wgslsmith_index_u32(41717u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)])))), ~select(vec2<u32>(27057u, u_input.b), vec2<u32>(global2[_wgslsmith_index_u32(0u, 14u)], 4294967295u) << (vec2<u32>(global2[_wgslsmith_index_u32(89436u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)]) % vec2<u32>(32u)), any(vec4<bool>(false, true, false, true)))), u_input.a);
}

