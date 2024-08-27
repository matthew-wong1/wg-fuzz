struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: u32 = 0u;

var<private> global2: array<i32, 19> = array<i32, 19>(i32(-2147483648), -4831i, -1i, 1i, -23758i, i32(-2147483648), -32490i, 1i, 1i, 49517i, 2147483647i, 16832i, -1i, 2147483647i, 1i, i32(-2147483648), 10987i, 2147483647i, -8778i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1066f, -387f)))), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], ~_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), firstLeadingBit(36712u)), -((_wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 19u)], -13296i, global2[_wgslsmith_index_u32(49120u, 19u)], -36710i), vec4<i32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], 19u)], u_input.d.x, u_input.d.x, u_input.d.x)) << (~vec4<u32>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(4383u, 15u)], u_input.b, u_input.b) % vec4<u32>(32u))) >> (countOneBits(~vec4<u32>(56336u, 15167u, u_input.c.x, 1u)) % vec4<u32>(32u))), vec3<u32>(~abs(0u), 1u, ~(~(~0u))));
}

