struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(596f, _wgslsmith_f_op_f32(691f * -124f), _wgslsmith_f_op_f32(min(-493f, arg_1.a.c)), _wgslsmith_div_f32(783f, arg_1.a.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(795f))))));
    var var_1 = global0.yw;
    var var_2 = var_0;
    let var_3 = _wgslsmith_div_f32(-352f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1207f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(417f + 556f))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(~global0.x, Struct_2(Struct_1(true, vec3<f32>(var_2.a, var_2.a, 355f), var_0.a), var_3, 0i, Struct_1(false, vec3<f32>(1010f, 519f, var_0.a), var_3)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 1000f, -432f, var_3) * vec4<f32>(-1349f, 833f, -1147f, -1957f)), vec4<f32>(-1589f, var_2.a, var_2.a, 439f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1405f, _wgslsmith_f_op_f32(exp2(var_3)), _wgslsmith_f_op_f32(trunc(var_3)), _wgslsmith_f_op_f32(ceil(var_2.a)))))));
    var var_5 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(32908i, 17750u);
}

