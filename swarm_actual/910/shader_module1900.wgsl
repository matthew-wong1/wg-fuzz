struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-1215f, -548f, -1000f, 640f, 786f, 1299f, -2575f, -1783f, 1294f, 157f, 1152f, -926f);

var<private> global1: array<bool, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 12u)], -1000f)))));
    let var_1 = vec4<bool>(select(false, global1[_wgslsmith_index_u32(u_input.a >> (~u_input.a % 32u), 30u)], !global1[_wgslsmith_index_u32(u_input.a, 30u)]), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(select(20209u, u_input.a, true), firstLeadingBit(u_input.a << (u_input.a % 32u)))), 30u)], countOneBits(4294967295u & u_input.a) >= _wgslsmith_clamp_u32(_wgslsmith_mult_u32(37866u << (u_input.a % 32u), ~4294967295u), reverseBits(u_input.a | u_input.a), 49877u), global1[_wgslsmith_index_u32(65022u, 30u)]);
    global1 = array<bool, 30>();
    global0 = array<f32, 12>();
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a, 59256u), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~18425u, u_input.a, u_input.a), _wgslsmith_add_vec2_u32(~min(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 0u), global1[_wgslsmith_index_u32(11363u, 30u)]), vec2<u32>(1u, u_input.a)), max(vec2<u32>(~4294967295u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), countOneBits(vec2<u32>(u_input.a, 1u))))), abs(firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 1i, -38650i, 2147483647i), ~vec4<i32>(1i, 2147483647i, -26999i, u_input.b)))), ~vec2<u32>(4294967295u, 12213u), u_input.b);
}

