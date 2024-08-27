struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    let var_0 = Struct_2(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(u_input.d.x, 10u)], global0[_wgslsmith_index_u32(u_input.d.x, 10u)]), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], true, true), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], false, global0[_wgslsmith_index_u32(31343u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), !vec4<bool>(global0[_wgslsmith_index_u32(62675u, 10u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], true, global0[_wgslsmith_index_u32(1u, 10u)])), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xw, u_input.c.wx), 10u)], any(vec3<bool>(true, true, true)), true, global0[_wgslsmith_index_u32(21105u, 10u)] || global0[_wgslsmith_index_u32(636u, 10u)])), global0[_wgslsmith_index_u32(4294967295u, 10u)]));
    global0 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -536f) - -337f)), u_input.c, u_input.c.x);
}

