struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 18>;

var<private> global2: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global3: array<u32, 9>;

var<private> global4: array<f32, 10> = array<f32, 10>(148f, 583f, 684f, 820f, -122f, -1228f, 718f, -189f, 1490f, -661f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_u32(~abs(~global3[_wgslsmith_index_u32(1u, 9u)]), ~(~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)], global3[_wgslsmith_index_u32(15394u, 9u)]), 9u)])), 1u, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(24236u, 9u)])), select(vec4<u32>(u_input.a.x, u_input.a.x, 18854u, 39698u), vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17852u, 9u)], 9u)], 6310u) >> (vec4<u32>(u_input.a.x, 26610u, global3[_wgslsmith_index_u32(u_input.a.x, 9u)], 65323u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true))), u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_mult_u32(22496u, 0u)), 9u)], 9u)]), 10u)], global2.x);
    let var_1 = _wgslsmith_f_op_f32(-1157f * global4[_wgslsmith_index_u32(~1u, 10u)]);
    global3 = array<u32, 9>();
    global3 = array<u32, 9>();
    let var_2 = -global2.x;
    global3 = array<u32, 9>();
    global1 = array<i32, 18>();
    var var_3 = var_1;
    let var_4 = select(vec3<bool>(true & (~(-39394i) != var_0.d), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), true), vec3<bool>(true, true, true), true);
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, var_0.a), 10u)], u_input.a.x);
}

