struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(select(false, any(vec3<bool>(true, true, true)), !any(vec2<bool>(false, false))), true, true, select(!all(vec3<bool>(false, true, false)), true | !any(vec2<bool>(false, false)), true & all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))));
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -540f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-831f + -1000f))))), vec3<u32>(1u, 1u, _wgslsmith_sub_u32(select(1u, 68681u, var_0.x), 1u)) >> (~vec3<u32>(1u, ~4294967295u, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1816f)) - _wgslsmith_f_op_f32(-392f * -1000f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(418f - _wgslsmith_f_op_f32(f32(-1f) * -741f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-505f, 510f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 805f) * vec2<f32>(-359f, -539f)), vec2<f32>(-554f, -470f)))));
}

