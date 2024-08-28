struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = -567f;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1404f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-387f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-985f, -352f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f - -337f))), true));
    var var_1 = 11225i;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -166f))));
    var_0 = -1025f;
    return false;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<f32>) -> vec4<f32> {
    var var_0 = Struct_1(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(!func_3(), arg_1.x)), vec4<u32>(1u, ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.c.x, 4294967295u, u_input.a.x), vec3<u32>(16032u, u_input.c.x, 44313u)), firstLeadingBit(vec3<u32>(1u, 1u, u_input.c.x))), firstLeadingBit(~min(0u, 5948u)), _wgslsmith_dot_vec3_u32(max(~vec3<u32>(4260u, 18847u, u_input.c.x), ~vec3<u32>(1u, 4294967295u, u_input.a.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c.x, u_input.c.x), vec3<u32>(0u, u_input.a.x, 0u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)))));
    var_0 = Struct_1(select(var_0.a, !select(!arg_1.yx, !var_0.a, arg_1.yy), var_0.a), vec4<u32>(4294967295u, ~_wgslsmith_div_u32(~var_0.b.x, ~0u), _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a.x, 888u, var_0.b.x, 81818u)), var_0.b), _wgslsmith_sub_u32(~(var_0.b.x ^ 2106u), u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, arg_2.x), vec2<f32>(1119f, 2027f)), _wgslsmith_f_op_vec2_f32(trunc(arg_2)))))), arg_2));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(1323f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-var_1.x), -1033f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1f, _wgslsmith_f_op_f32(arg_0 - arg_2.x), _wgslsmith_f_op_f32(round(317f))), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(217f * arg_0), -1809f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -768f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2.x)), false)));
}

fn func_1() -> vec2<f32> {
    let var_0 = select(select(!vec3<bool>(true, true, all(vec3<bool>(false, true, false))), vec3<bool>(!all(vec3<bool>(false, true, true)), all(vec4<bool>(true, true, true, true)) & true, false), vec3<bool>(true, all(vec4<bool>(true, false, false, true)), all(vec2<bool>(true, false)) & all(vec4<bool>(false, false, true, false)))), vec3<bool>(!all(vec2<bool>(true, true)), 9739i <= u_input.b, any(vec3<bool>(true, true, true))), all(!vec4<bool>(u_input.a.x != u_input.a.x, any(vec3<bool>(false, false, true)), any(vec4<bool>(false, true, false, true)), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1316f + 1000f), _wgslsmith_f_op_f32(-1000f - -1053f), -109f, -1083f)))) + _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(abs(560f)))), select(select(select(vec3<bool>(var_0.x, false, false), var_0, var_0.x), var_0, any(vec2<bool>(var_0.x, var_0.x))), !var_0, any(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, false), var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-855f)), _wgslsmith_f_op_f32(1014f * -972f))))));
    var var_2 = u_input.c;
    var var_3 = Struct_1(vec2<bool>(false, var_0.x), vec4<u32>(var_2.x, 1u, ~var_2.x, var_2.x));
    let var_4 = Struct_1(!(!var_0.yz), abs(~vec4<u32>(var_3.b.x, var_2.x >> (4294967295u % 32u), ~var_3.b.x, 1u)));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_1.x), var_1.zy)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-921f, -156f) + _wgslsmith_f_op_vec2_f32(-var_1.wz)), var_1.xw))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~(~u_input.a));
    var var_1 = Struct_1(vec2<bool>(!any(vec4<bool>(true, false, true, true)), true), ~(~(~firstTrailingBit(vec4<u32>(u_input.c.x, 22052u, u_input.a.x, u_input.a.x)))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-322f, 585f), vec2<f32>(-325f, -1000f), true)) + vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-531f, -418f)))) * _wgslsmith_f_op_vec2_f32(func_1())), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-210f, _wgslsmith_f_op_f32(round(865f))) * -997f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-122f * _wgslsmith_div_f32(1258f, -433f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-868f + -461f), -1351f))))));
    var_1 = Struct_1(select(vec2<bool>(false, true), var_1.a, !(!select(vec2<bool>(true, true), var_1.a, false))), var_1.b);
    let var_3 = var_2.x;
    let var_4 = !(!any(!vec3<bool>(true, var_1.a.x, var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x + var_3)))), var_2.x), u_input.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_2.x, var_3), var_2.x, var_3, 1734f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(342f, var_3, 627f, var_3) - vec4<f32>(324f, 104f, 440f, var_3)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_3, 133f, var_3), vec4<f32>(var_3, var_2.x, -880f, var_2.x))))), !(false && any(var_1.a)))));
}

