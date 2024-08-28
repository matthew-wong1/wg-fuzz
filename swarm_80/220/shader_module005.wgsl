struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(-1188f, 984f, -899f, -917f));

var<private> global1: array<Struct_2, 26>;

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    global1 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1930f), 1015f), 1158f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-410f * -721f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f)));
}

