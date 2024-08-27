struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-319i, i32(-2147483648), 45521i, 2147483647i, -13872i, i32(-2147483648), 0i, -14444i, 16228i, -65936i, 2147483647i, 1i, -22711i, 2147483647i, 2147483647i, -90148i, 0i, i32(-2147483648), 2147483647i, -20362i, -1i);

var<private> global1: vec2<f32>;

var<private> global2: f32;

var<private> global3: vec2<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!((_wgslsmith_dot_vec4_i32(vec4<i32>(-36053i, -14143i, 1i, -16579i), vec4<i32>(global3.x, 54086i, global0[_wgslsmith_index_u32(0u, 21u)], global3.x)) <= global3.x) | true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1243f, -986f)), -934f), -180f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1037f, 507f) - vec3<f32>(-781f, 1086f, -2004f)))))), global1.x, _wgslsmith_f_op_f32(floor(-962f)));
}

