struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: i32) -> f32 {
    return 282f;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(368f, -1000f)))), -2953f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1272f - -966f), _wgslsmith_f_op_f32(1000f + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1017f)), _wgslsmith_f_op_f32(-1024f * 613f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-929f * -1344f))))));
    var var_1 = Struct_1(u_input.b.x, ~_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~u_input.a.x), ~vec4<u32>(16271u, 4294967295u, 50039u, u_input.a.x)));
    let var_2 = 0i;
    var var_3 = var_1.b.x;
    var var_4 = vec3<bool>(false, !any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !select(any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), false));
    return _wgslsmith_f_op_f32(-var_0);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>) -> vec4<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(766f + -789f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-581f * -418f)))) * -1404f), _wgslsmith_f_op_f32(round(417f)));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1461f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) + -2764f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(arg_0.x)), _wgslsmith_f_op_f32(-1000f * -496f), true)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 507f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, 212f))))), vec2<f32>(_wgslsmith_f_op_f32(func_3()), 1207f), select(true, false, true) & (arg_1.x && arg_1.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -213f))));
    let var_1 = 0i;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))));
    return ~(~(~u_input.a | (reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b.x)) ^ (u_input.a << (vec4<u32>(4294967295u, 126923u, 68341u, 67552u) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(588f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1085f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f))), -1008f));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) - -1690f) + var_0.x)), _wgslsmith_f_op_f32(-var_0.x));
    var_0 = vec3<f32>(var_0.x, var_0.x, var_0.x);
    let var_1 = Struct_1(~u_input.b.x, func_1(vec3<i32>(1i, 1i, 1i), vec3<bool>(true, true, true)));
    var var_2 = ~(~_wgslsmith_div_u32(4294967295u, u_input.b.x | 64098u) << (~0u % 32u));
    var_2 = ~_wgslsmith_sub_u32(u_input.a.x, var_1.b.x);
    let var_3 = _wgslsmith_div_f32(-240f, -1205f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(-reverseBits(1i))), var_1.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -557f, -414f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, var_3, var_0.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(265f))), _wgslsmith_f_op_f32(f32(-1f) * -1666f), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(1563f, 192f))))), ~abs(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, u_input.b.x)), var_1.b.wy)), func_1(max(vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, 0i, 1i)), vec3<bool>(true, true, all(vec2<bool>(true, false)))).x >> ((u_input.b.x ^ ~min(0u, 13054u)) % 32u));
}

