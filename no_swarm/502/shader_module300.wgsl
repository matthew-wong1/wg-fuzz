struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(vec2<bool>(true, true)) | true;
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-732f, -115f), -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(max(-1435f, 648f)))))) > -487f;
    global1 = array<u32, 12>();
    var_0 = _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(89592u, 12878u, u_input.a, 1u) << (vec4<u32>(u_input.a, u_input.a, 10718u, 0u) % vec4<u32>(32u)), vec4<u32>(0u, u_input.a, global1[_wgslsmith_index_u32(0u, 12u)], 0u)), 6895u) < abs(_wgslsmith_sub_u32(u_input.a, 4294967295u | max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72988u, 12u)], 12u)], u_input.a)));
    global1 = array<u32, 12>();
    var var_1 = 12670u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, 1i, 1i, 1i));
}

