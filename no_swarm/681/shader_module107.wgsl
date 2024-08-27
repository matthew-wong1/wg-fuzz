struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: array<bool, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 17>();
    var var_0 = _wgslsmith_div_vec4_u32(u_input.b, ~u_input.b ^ vec4<u32>(4294967295u, ~abs(u_input.b.x), ~(~u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), min(u_input.e.yx, u_input.e.yy))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 13u)]) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(countOneBits(u_input.e.x), 13u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(34835u, 13u)], 330f))))))), _wgslsmith_f_op_f32(-2174f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(50689u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)])))) * _wgslsmith_f_op_f32(floor(-244f)))));
    var var_2 = vec3<bool>(global1[_wgslsmith_index_u32(~abs(0u), 17u)], true, global1[_wgslsmith_index_u32(0u, 17u)]);
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_0.xwx, _wgslsmith_div_vec3_u32(u_input.b.zxy, vec3<u32>(u_input.e.x, var_0.x, var_0.x))), _wgslsmith_sub_vec3_u32(var_0.wyz, _wgslsmith_clamp_vec3_u32(var_0.wyw, u_input.b.wzz, vec3<u32>(u_input.e.x, var_0.x, 0u)))), countOneBits(u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(651f, 1651f, -1623f, -966f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 13u)], -1284f, -1574f, var_1.x) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 13u)], -2227f, 1481f, 115f))))));
}

