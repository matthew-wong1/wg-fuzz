struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-1556f, 2182f, -1000f, 868f, -1228f);

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<u32, 5> = array<u32, 5>(4294967295u, 11019u, 1u, 1u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.yx;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(84047u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 5u)], 5u)]), min(vec3<u32>(global3[_wgslsmith_index_u32(16049u, 5u)], 2998u, 0u), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(1u, 5u)]))), ~global3[_wgslsmith_index_u32(21569u, 5u)]));
}

