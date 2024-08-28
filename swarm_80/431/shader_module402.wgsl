struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec3<bool>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(436f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1688f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1692f, -1253f))))));
}

