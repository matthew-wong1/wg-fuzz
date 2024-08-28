struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> StorageBuffer {
    let var_0 = -646f;
    global0 = true;
    let var_1 = vec2<bool>(16303u < abs(_wgslsmith_div_u32(0u >> (u_input.a.x % 32u), 372u)), false);
    global0 = true;
    global0 = true & !(!var_1.x);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, 1212f, var_1.x)) + -216f), var_0) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, var_0))) - vec2<f32>(var_0, -1562f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !all(!vec2<bool>(true, all(vec2<bool>(true, false))));
    global0 = !all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), 1659u == min(u_input.a.x, u_input.a.x)));
    global0 = _wgslsmith_f_op_f32(select(855f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -251f))), any(vec2<bool>(true, true)))) != -152f;
    let x = u_input.a;
    s_output = func_1();
}

