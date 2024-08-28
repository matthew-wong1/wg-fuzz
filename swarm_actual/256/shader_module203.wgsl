struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1661f, _wgslsmith_f_op_f32(f32(-1f) * -807f))), _wgslsmith_f_op_f32(f32(-1f) * -892f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1434f, 306f) * vec2<f32>(-437f, -459f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-708f, -613f)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(267f, -1387f))), _wgslsmith_f_op_f32(-328f - -1000f)), ~0u);
}

