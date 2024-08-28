struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -1213f, _wgslsmith_f_op_f32(max(841f, -620f)), _wgslsmith_f_op_f32(sign(1866f))) + vec4<f32>(_wgslsmith_f_op_f32(max(-1327f, 449f)), -1000f, 146f, 627f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1219f, -1548f, -1000f, 602f), vec4<f32>(399f, 127f, 1000f, 1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, -960f, -336f, 908f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-247f, -879f, -1336f, -300f), _wgslsmith_f_op_vec4_f32(vec4<f32>(278f, -1000f, -1690f, 151f) + vec4<f32>(852f, 501f, 507f, -915f)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f))));
}

