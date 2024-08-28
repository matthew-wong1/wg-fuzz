struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11>;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 11>();
    global0 = array<vec4<f32>, 11>();
    let var_0 = 18714i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(global1.a * _wgslsmith_f_op_vec3_f32(-global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(17405u, _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(102521u, 11u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(118f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1598f, global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1829f + var_1.a.x) + _wgslsmith_f_op_f32(global1.a.x - global1.a.x))))));
}

