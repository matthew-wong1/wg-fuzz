struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(-240f, _wgslsmith_f_op_f32(min(-618f, _wgslsmith_f_op_f32(abs(-1000f)))))), -845f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1203f + -789f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-873f + 314f) - _wgslsmith_f_op_f32(f32(-1f) * -104f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(556f, _wgslsmith_div_f32(-3437f, -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-399f, -1285f, true)) - 867f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1379f), -1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-389f, -1062f, -291f, 559f) + vec4<f32>(-1556f, -315f, -1000f, 201f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 268f, 601f, 540f) + vec4<f32>(1074f, -1376f, -599f, 971f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1849f, -1000f, -652f, -349f), vec4<f32>(108f, 181f, -1524f, 2649f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(490f, 460f, 720f, 1639f))))));
}

