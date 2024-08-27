struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 10>;

var<private> global2: f32 = -1000f;

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-1258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2034f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-447f)), _wgslsmith_f_op_f32(942f + -287f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-883f, -258f))))) + -1000f), _wgslsmith_div_f32(-742f, _wgslsmith_f_op_f32(-325f - -1248f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), global0.c, 8318u);
}

