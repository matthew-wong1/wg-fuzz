struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-705f)), _wgslsmith_f_op_f32(ceil(-151f)))))), 567f, _wgslsmith_f_op_f32(f32(-1f) * -2958f));
    var var_2 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_mod_i32(u_input.d & 0i, ~u_input.d), _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.d, -7456i), vec2<i32>(20930i, u_input.d)), vec2<i32>(-833i, u_input.d) & vec2<i32>(15311i, u_input.d)), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(710f, var_1.x))));
}

