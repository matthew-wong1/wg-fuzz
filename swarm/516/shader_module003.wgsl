struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1505f * -1120f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1530f))))))), vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(min(u_input.a, u_input.a), ~vec4<u32>(1u, 4294967295u, 4294967295u, 1u)), u_input.a.x, max(~52163u, u_input.a.x | 4294967295u) & u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(224f, 810f), vec2<f32>(1561f, 304f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-758f, 1084f), vec2<f32>(1638f, -351f), vec2<bool>(false, false)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-615f, 962f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-968f, -684f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1750f - 724f), _wgslsmith_f_op_f32(f32(-1f) * -626f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-427f, 184f)), select(vec2<bool>(false, true), vec2<bool>(true, true), true)))));
}

