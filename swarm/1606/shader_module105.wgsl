struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
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

var<private> global0: array<vec4<f32>, 20>;

var<private> global1: array<vec3<bool>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 8>();
    let var_0 = global1[_wgslsmith_index_u32(0u, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~(~u_input.a), 20u)] + vec4<f32>(_wgslsmith_f_op_f32(trunc(-711f)), _wgslsmith_f_op_f32(f32(-1f) * -418f), -534f, -1000f))));
}

