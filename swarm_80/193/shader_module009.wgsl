struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec2<bool> {
    var var_0 = ~56662u;
    var var_1 = -520f;
    let var_2 = ~abs(46665u);
    let var_3 = u_input.c;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-573f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1443f + -234f))));
    return vec2<bool>(false, !all(vec2<bool>(true, true)));
}

fn func_3() -> vec2<i32> {
    var var_0 = -232f;
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1095f * 1370f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1727f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1540f * 525f), _wgslsmith_f_op_f32(abs(-910f))) - 544f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -920f)))), reverseBits(abs(firstLeadingBit(~vec3<u32>(u_input.a.x, 6877u, u_input.e.x)))), 0u, !vec3<bool>(true, any(vec2<bool>(true, true)), true), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1339f - _wgslsmith_f_op_f32(min(-192f, -306f))))), _wgslsmith_div_f32(269f, -1396f)));
    var_0 = var_1.a.x;
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-753f + var_1.a.x) + var_1.a.x)), _wgslsmith_f_op_f32(-1750f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1467f * var_1.e.x) * _wgslsmith_f_op_f32(trunc(var_1.a.x)))), -212f), vec3<u32>(var_1.c, var_1.b.x, ~_wgslsmith_mod_u32(4294967295u, min(var_1.b.x, 1u))), ~(~1u), select(var_1.d, var_1.d, ~_wgslsmith_add_u32(22631u, var_1.c) <= _wgslsmith_clamp_u32(u_input.e.x, reverseBits(57267u), ~var_1.c)), var_1.a.yz);
    let var_2 = Struct_3(~firstLeadingBit(u_input.b & u_input.e.zy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-730f, 1016f, -195f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2093f - var_1.a.x) - _wgslsmith_f_op_f32(trunc(-1683f))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.e.x, var_1.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1072f)))));
    return vec2<i32>(~u_input.d, u_input.d);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> StorageBuffer {
    let var_0 = vec3<bool>(!(!all(vec2<bool>(true, true))), any(!(!func_2())), true);
    let var_1 = vec4<bool>(var_0.x, false, true, var_0.x);
    var var_2 = u_input.e.x;
    let var_3 = ~_wgslsmith_div_u32(u_input.a.x, (~u_input.e.x & u_input.b.x) << (_wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(33180u, u_input.b.x)) % 32u));
    let var_4 = func_2();
    return StorageBuffer(select(vec2<i32>(u_input.d, abs(u_input.d)), func_3(), all(!(!var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_u32(u_input.e.x ^ ~(~u_input.a.x), reverseBits(~u_input.b.x), ~u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-387f * -596f))))));
    var_0 = ~reverseBits(u_input.a.x);
    let var_2 = select(vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -710f) < _wgslsmith_f_op_f32(-1794f - _wgslsmith_f_op_f32(-var_1)), !all(vec2<bool>(false, true))), !(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), any(vec2<bool>(true, true)))), var_1 >= _wgslsmith_f_op_f32(1313f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * 1094f))));
    let var_3 = true;
    let x = u_input.a;
    s_output = func_1(u_input.a, 52682i);
}

