struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = 891f;
    let var_1 = !(!select(vec4<bool>(any(vec2<bool>(false, false)), true, true, any(vec4<bool>(true, true, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true)), true));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1936f + 2116f))) - -378f)));
    var var_3 = !(!select(!var_1.zwz, vec3<bool>(true, true, true), !(!vec3<bool>(var_1.x, false, false))));
    var var_4 = Struct_1(u_input.b.x, ~_wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, u_input.b.x));
    return u_input.d;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = firstLeadingBit(vec4<u32>(abs(select(arg_0.b, 4294967295u, true)), arg_0.a, func_3(), 1u));
    var var_1 = Struct_1(1u, 4294967295u);
    var var_2 = all(vec3<bool>(true, any(vec4<bool>(select(false, true, false), true, true, true)), abs(~u_input.b.x) < ~(~var_1.a)));
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-567f + -162f), -518f)))) + _wgslsmith_f_op_f32(f32(-1f) * -158f));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(1386f + _wgslsmith_f_op_f32(exp2(var_4))), _wgslsmith_f_op_f32(max(var_4, _wgslsmith_f_op_f32(var_4 * _wgslsmith_f_op_f32(var_4 - var_4)))));
}

fn func_1() -> f32 {
    var var_0 = -285f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.c, u_input.d))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f)), true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-863f * _wgslsmith_f_op_f32(sign(627f))) * -2450f), 1f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-291f + 525f) - -240f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2336f, -105f) - 863f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1331f))))));
    let var_2 = Struct_1(u_input.c, u_input.c);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.e, reverseBits(1i));
    var var_1 = u_input.b.x;
    var_1 = u_input.d;
    var var_2 = Struct_1(_wgslsmith_mod_u32(4294967295u, u_input.b.x), 4294967295u);
    var var_3 = Struct_1(u_input.c, ~firstTrailingBit(0u & ~var_2.b));
    let var_4 = u_input.a.x;
    var var_5 = -1007f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1177f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(185f, 1000f, all(vec4<bool>(false, false, false, true))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))))), vec3<i32>(var_0.x, 3289i, u_input.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1725f, -1000f, -1060f, -304f)) - vec4<f32>(_wgslsmith_f_op_f32(max(136f, -677f)), _wgslsmith_f_op_f32(sign(-425f)), _wgslsmith_f_op_f32(func_1()), -829f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_div_f32(563f, -978f), _wgslsmith_f_op_f32(func_2(Struct_1(u_input.a.x, 1u)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1216f, -863f, -547f, -1818f) * vec4<f32>(1060f, 1546f, -992f, -621f)))), -297f);
}

