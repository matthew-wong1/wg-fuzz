struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = firstTrailingBit(~(~(~0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(42059u, 4294967295u), vec2<u32>(21900u, 54177u)) % 32u))));
    return false;
}

fn func_3() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(407f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-907f)))));
    var_0 = Struct_2(484f);
    var_0 = Struct_2(_wgslsmith_f_op_f32(floor(var_0.a)));
    var_0 = Struct_2(var_0.a);
    let var_1 = Struct_2(-165f);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-208f, _wgslsmith_f_op_f32(abs(-767f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_0.a)))));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(690f, arg_0)));
    var var_1 = !vec4<bool>(!func_2(u_input.a <= -1i, _wgslsmith_div_f32(var_0, var_0)), false, ((u_input.b | 2147483647i) != (u_input.a ^ u_input.a)) && (_wgslsmith_div_f32(-1054f, 619f) <= arg_0), true);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1661f))))))));
    var_1 = select(vec4<bool>(any(vec2<bool>(true, true)), u_input.b < u_input.b, var_1.x, all(vec4<bool>(var_1.x || false, true, true, var_1.x))), select(select(!select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_1.x, true, var_1.x, true), true), vec4<bool>(var_1.x, false, false, var_1.x), select(vec4<bool>(false, false, true, var_1.x), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, false, false, false)), var_1.x)), vec4<bool>(var_1.x, any(var_1.wyz), var_1.x & true, true), var_1.x), var_1.x | any(select(!vec4<bool>(true, var_1.x, false, true), !vec4<bool>(false, false, var_1.x, var_1.x), !vec4<bool>(false, var_1.x, var_1.x, true))));
    let var_3 = min(((~vec2<i32>(u_input.b, -1i) ^ -vec2<i32>(-2147483647i, -55591i)) & -max(vec2<i32>(1i, u_input.b), vec2<i32>(-1i, u_input.b))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32((vec2<i32>(-33463i, -1i) | vec2<i32>(u_input.b, 0i)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<i32>(1i, u_input.a)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -539f, 1852f, var_2.a) - vec4<f32>(849f, 1169f, var_2.a, var_0)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(760f, 451f, 770f, 669f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1204f, -604f, -1116f, 549f)))), !var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(countOneBits(~abs(~4294967295u)), (_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(11457u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u))) & reverseBits(49996u)) ^ 1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1941f + -840f) + -1407f), -854f, _wgslsmith_f_op_f32(-341f + _wgslsmith_f_op_f32(f32(-1f) * -273f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(895f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), -876f, _wgslsmith_f_op_f32(-100f * -207f), _wgslsmith_f_op_f32(ceil(-583f))))));
    var var_1 = Struct_2(152f);
    let var_2 = select(vec3<u32>(abs(_wgslsmith_sub_u32(var_0.b, 1u) ^ ~var_0.a), max(1u, 11616u), 0u), _wgslsmith_sub_vec3_u32(min(~(~vec3<u32>(6333u, 39231u, 49165u)), ~min(vec3<u32>(var_0.b, var_0.b, var_0.b), vec3<u32>(var_0.a, var_0.b, 1u))), firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(69628u, var_0.a), var_0.a, 4294967295u))), !vec3<bool>(any(vec3<bool>(true, true, true)), (-761f < var_0.c.x) || true, true));
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - var_1.a) + 1000f) - var_0.c.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.x))))));
    var var_3 = vec4<bool>(any(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), any(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true))), false, u_input.b > -9949i);
    let var_4 = Struct_2(var_0.c.x);
    var_3 = !vec4<bool>(false, all(!(!vec4<bool>(true, var_3.x, true, false))), _wgslsmith_div_i32(~u_input.b, -17180i << (var_2.x % 32u)) >= u_input.a, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(577f, var_4.a), _wgslsmith_f_op_vec2_f32(exp2(var_0.c.yx)))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_4.a, var_1.a)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_1.a, var_4.a)), 1023f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(665f, var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -859f)))))), abs(_wgslsmith_dot_vec2_u32(var_2.yy, vec2<u32>(firstLeadingBit(0u), ~var_0.b))));
}

