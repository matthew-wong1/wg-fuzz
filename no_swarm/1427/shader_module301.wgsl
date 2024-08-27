struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!any(vec3<bool>(true, true, true)), true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1057f, -1161f))) <= 1f));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(159f - -1052f)) * -1184f)), _wgslsmith_f_op_f32(f32(-1f) * -431f)));
    var_1 = 1043f;
    var var_2 = !select(vec3<bool>(var_0.x, var_0.x || !var_0.x, !all(var_0.xy)), select(select(!vec3<bool>(var_0.x, true, true), !vec3<bool>(false, true, var_0.x), true), vec3<bool>(any(vec3<bool>(var_0.x, false, var_0.x)), any(vec2<bool>(var_0.x, false)), true), !vec3<bool>(false, true, var_0.x)), vec3<bool>(u_input.b <= -u_input.b, !(u_input.a.x >= u_input.a.x), false));
    var var_3 = _wgslsmith_sub_u32(4294967295u, 7416u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1086f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1957f - 2082f)))));
}

