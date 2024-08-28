struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -503f);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: u32) -> bool {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(153f * -1015f))))));
    var var_1 = var_0.zx;
    var_1 = var_0.xx;
    var var_2 = !(!vec2<bool>(!(var_1.x <= var_1.x), true));
    var var_3 = vec4<bool>(any(select(vec4<bool>(true, true, select(var_2.x, false, false), func_2(vec2<u32>(0u, 23050u), false, 4294967295u)), !select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(false, true, var_2.x, var_2.x)), vec4<bool>(true, -1018i == u_input.a, var_2.x, var_0.x >= var_1.x))), !var_2.x, true, !var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yz) * _wgslsmith_f_op_vec2_f32(-var_0.yz)))), firstTrailingBit(37626u), var_0.x, vec4<i32>(-abs(u_input.a) & -45891i, 48819i, u_input.a, 1i));
}

