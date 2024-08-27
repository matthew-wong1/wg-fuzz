struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(164f + 691f), 1022f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1279f, -2147483647i, -371f, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec2<f32>(196f, -803f), vec4<f32>(152f, -617f, -1391f, 345f)), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec2<f32>(-2906f, -929f), vec4<f32>(-1082f, 1446f, 1418f, -594f)))), -1522f), 512f), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1335f + -764f), 1000f, true)), 1465f)));
}

