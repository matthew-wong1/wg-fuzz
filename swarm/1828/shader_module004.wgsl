struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: i32;

var<private> global2: i32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(min(max(min(vec3<i32>(-2147483647i, u_input.b.x, -38458i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], u_input.b.x)), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) | vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.b.x)) & _wgslsmith_mod_vec3_i32(select(vec3<i32>(2147483647i, 1i, global0[_wgslsmith_index_u32(34433u, 27u)]), vec3<i32>(-8781i, -2074i, u_input.b.x), true), vec3<i32>(-21532i, -1i, global0[_wgslsmith_index_u32(58261u, 27u)]) ^ vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], -13483i, -2147483647i)), firstLeadingBit(~(-vec3<i32>(u_input.b.x, 1i, 1i)))), u_input.b.x & -26748i, -24841i);
}

