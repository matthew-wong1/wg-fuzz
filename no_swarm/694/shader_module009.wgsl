struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f + _wgslsmith_f_op_f32(f32(-1f) * -167f)) * _wgslsmith_f_op_f32(408f * _wgslsmith_f_op_f32(f32(-1f) * -541f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a - -1005f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1882f)) + _wgslsmith_f_op_f32(-var_0.a))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1273f, 603f, -537f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-738f, 732f, var_0.a) * vec3<f32>(812f, 826f, -729f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) + vec3<f32>(-517f, var_0.a, -299f)) - vec3<f32>(-2338f, 1175f, var_0.a))))));
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 845f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-598f, var_0.a)))))));
    var_2 = u_input.e;
    var_2 = -2147483647i;
    var var_4 = max(42557u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.yx), firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.d.x) & (u_input.d.x & u_input.d.x), 1u, 24907u, ~(~u_input.d.x))), ~countOneBits(~vec3<i32>(u_input.a, 2147483647i, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x - var_3.x), _wgslsmith_f_op_f32(ceil(var_0.a)), 1000f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1267f, var_3.x)) * vec3<f32>(1f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(258f - 648f)))));
}

