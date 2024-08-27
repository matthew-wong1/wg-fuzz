struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -489f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(674f))), 1000f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, -283f))))), _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(-var_0.a)))));
    var var_2 = var_0.a;
    var_2 = _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2654f), _wgslsmith_f_op_f32(var_1 + var_0.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, var_0.a)))) + -342f)));
    var_2 = 1000f;
    var_2 = -707f;
    var_2 = 613f;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

