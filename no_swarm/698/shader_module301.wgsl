struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: array<vec2<u32>, 4>;

var<private> global2: array<f32, 21> = array<f32, 21>(1201f, -475f, 1071f, 763f, -2174f, -2032f, 472f, -625f, 229f, -1000f, -513f, 204f, 659f, 625f, 1077f, 1511f, -1437f, 2147f, -454f, 1016f, 755f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 156f;
    global0 = array<i32, 28>();
    global1 = array<vec2<u32>, 4>();
    global2 = array<f32, 21>();
    var var_1 = all(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))));
    global1 = array<vec2<u32>, 4>();
    global1 = array<vec2<u32>, 4>();
    global1 = array<vec2<u32>, 4>();
    var var_2 = Struct_3(u_input.a.wzz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0)))))), ~(-44280i), -112f, _wgslsmith_dot_vec2_u32(~(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_2.a.x), global1[_wgslsmith_index_u32(1u, 4u)]) | (var_2.a.yz << (global1[_wgslsmith_index_u32(2501u, 4u)] % vec2<u32>(32u)))), u_input.a.xy));
}

