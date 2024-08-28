struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -107f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = 8780u;
    var_0 = ~4294967295u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1606f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-635f - -977f) - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -978f)))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-484f, 191f, var_1.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2557f, 1492f, -275f, var_1.x) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 1362f, var_1.x, 1029f), vec4<f32>(917f, var_1.x, var_1.x, -1054f)))), vec4<f32>(_wgslsmith_f_op_f32(round(-537f)), -1411f, var_1.x, var_1.x))));
    var var_2 = !vec2<bool>(arg_1.a.x, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1903f) + -1363f) + _wgslsmith_f_op_f32(-162f - _wgslsmith_f_op_f32(-var_1.x)));
}

fn func_3() -> i32 {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(u_input.a, ~(~4294967295u)) >> (4294967295u % 32u), ~u_input.a, u_input.a);
    global0 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(462f, -171f) + -475f), -931f)));
    var var_1 = Struct_1(!(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)))), reverseBits(_wgslsmith_mod_vec3_u32(max(var_0, vec3<u32>(u_input.a, 65204u, 4294967295u)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, var_0.x, 32106u), vec3<u32>(u_input.a, var_0.x, 1u)), vec3<u32>(_wgslsmith_sub_u32(7637u, 0u), u_input.a, 85270u))));
    var var_2 = Struct_1(select(select(vec4<bool>(true, all(var_1.a.wwx), true, select(var_1.a.x, true, var_1.a.x)), var_1.a, vec4<bool>(false || var_1.a.x, var_1.a.x, any(var_1.a.xz), var_1.a.x)), var_1.a, vec4<bool>(all(!vec4<bool>(var_1.a.x, false, true, var_1.a.x)), true, false, any(select(vec2<bool>(false, var_1.a.x), vec2<bool>(var_1.a.x, var_1.a.x), var_1.a.wx)))), var_0);
    global0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-279f * -498f))));
    return -(max(36088i, reverseBits(1i)) | firstTrailingBit(1i));
}

fn func_2() -> f32 {
    var var_0 = 17253i;
    var_0 = ~(~func_3()) & firstLeadingBit(1i);
    var_0 = ~(-(firstTrailingBit(51308i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(-6212i, 1i), vec2<i32>(-1i, -2147483647i), vec2<bool>(false, true)))));
    var var_1 = any(vec4<bool>(true, all(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), true, false));
    var var_2 = abs(~select(vec3<u32>(33039u << (u_input.a % 32u), _wgslsmith_mult_u32(0u, 19558u), ~u_input.a), vec3<u32>(u_input.a, 38892u, 0u) | vec3<u32>(0u, 0u, 4294967295u), all(vec2<bool>(true, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1520f + _wgslsmith_f_op_f32(228f * _wgslsmith_f_op_f32(f32(-1f) * -1752f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1431f + 1006f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2230f), _wgslsmith_f_op_f32(min(479f, 2141f)), false))))));
    var var_0 = vec2<bool>(true, !select(select(true, false, true) || all(vec4<bool>(false, true, false, true)), false, !any(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(172f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1i, Struct_1(vec4<bool>(true, false, var_0.x, var_0.x), vec3<u32>(48032u, u_input.a, 22771u)), u_input.a)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(sign(var_1))), _wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1558f), _wgslsmith_f_op_f32(func_2())), vec4<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1)))), _wgslsmith_f_op_f32(f32(-1f) * -1854f), 2191f, var_1)));
    var_0 = !vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, var_0.x), all(vec2<bool>(var_0.x, var_0.x)))), any(vec2<bool>(true, true)));
    var var_3 = select(vec2<bool>(false, !(!var_0.x)), select(vec2<bool>(all(!vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true || any(vec2<bool>(var_0.x, var_0.x))), select(select(vec2<bool>(true, true), !vec2<bool>(var_0.x, false), any(vec4<bool>(var_0.x, true, var_0.x, false))), !(!vec2<bool>(var_0.x, false)), select(vec2<bool>(var_0.x, true), select(vec2<bool>(false, false), vec2<bool>(false, var_0.x), true), true)), vec2<bool>(true, any(select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, var_0.x, false), false)))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x - var_2.x))), -1674f)), 25019i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.yx) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1410f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-704f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(-var_1))))));
}

