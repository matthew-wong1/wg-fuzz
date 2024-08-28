struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 23644u);

var<private> global1: f32;

var<private> global2: array<u32, 4> = array<u32, 4>(0u, 353u, 0u, 0u);

var<private> global3: i32 = 1i;

var<private> global4: array<f32, 1> = array<f32, 1>(328f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1646f;
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(887f)), -260f));
    let var_1 = firstTrailingBit(~(~reverseBits(~vec4<u32>(59184u, 99002u, 36736u, u_input.a))));
    var var_2 = 86847u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(122f, global4[_wgslsmith_index_u32(4573u, 1u)], -399f, 103f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-419f, 1000f, 162f, var_0))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(348f, var_0, -979f, global4[_wgslsmith_index_u32(u_input.a, 1u)]))))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1139f, 575f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(669f, global4[_wgslsmith_index_u32(u_input.a, 1u)]))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 591f, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-119f, 826f, var_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1215f, global4[_wgslsmith_index_u32(u_input.a, 1u)], var_0) - vec3<f32>(global4[_wgslsmith_index_u32(0u, 1u)], -398f, 213f)))))));
}

