struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 9>();
    global0 = array<vec4<f32>, 9>();
    global0 = array<vec4<f32>, 9>();
    global0 = array<vec4<f32>, 9>();
    let var_0 = u_input.a.x & ~u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(558f, -1892f, 1081f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2195f, -1899f, _wgslsmith_f_op_f32(min(-1277f, 456f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-274f, 408f, 1105f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-728f, -751f, -895f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1399f, -642f, 811f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-343f, -1667f, 405f)))) * vec3<f32>(_wgslsmith_f_op_f32(1193f + -407f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -139f)), 907f)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x);
}

