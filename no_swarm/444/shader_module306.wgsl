struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-642f + _wgslsmith_f_op_f32(round(arg_0.d.x))))), Struct_2(-1803f));
    let var_1 = var_0.b;
    var var_2 = Struct_2(-1431f);
    var var_3 = vec4<bool>(false, all(arg_1), true, !(!(arg_1.x & arg_1.x)));
    var_3 = select(select(vec4<bool>(all(var_3.yxy) | true, all(select(vec4<bool>(true, var_3.x, true, var_3.x), vec4<bool>(var_3.x, true, arg_1.x, false), vec4<bool>(var_3.x, arg_1.x, arg_1.x, var_3.x))), all(vec4<bool>(var_3.x, arg_1.x, false, false)), all(var_3.yw)), !vec4<bool>(!arg_1.x, var_3.x || var_3.x, any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), -1000f < var_0.a.a), !(!(!vec4<bool>(true, var_3.x, false, false)))), !select(vec4<bool>(false, true, arg_1.x, any(vec3<bool>(arg_1.x, true, arg_1.x))), select(select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(true, true, arg_1.x, arg_1.x), false), !vec4<bool>(var_3.x, false, arg_1.x, true), !vec4<bool>(false, false, arg_1.x, false)), select(!vec4<bool>(var_3.x, arg_1.x, var_3.x, true), !vec4<bool>(true, var_3.x, var_3.x, arg_1.x), false)), !(!vec4<bool>(!arg_1.x, all(vec4<bool>(var_3.x, var_3.x, true, false)), arg_1.x, all(vec3<bool>(arg_1.x, var_3.x, true)))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-594f, _wgslsmith_f_op_f32(ceil(arg_0.c)), arg_1.x)), -1215f))));
}

fn func_2(arg_0: f32, arg_1: u32) -> f32 {
    let var_0 = Struct_1(i32(-1i) * -1i, ~(-2147483647i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1183f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-313f, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2036f, 1774f, -865f, arg_0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2238f, arg_0, arg_0, arg_0), vec4<f32>(161f, 1935f, -258f, 1845f)))))), _wgslsmith_div_i32(select(1i, -2147483647i, _wgslsmith_clamp_u32(arg_1, arg_1, u_input.a) <= 1u), 1i | firstTrailingBit(1i)));
    var var_1 = -1458f;
    var_1 = _wgslsmith_f_op_f32(func_3(var_0, vec2<bool>(all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false))), true)));
    let var_2 = Struct_1(abs(-11618i), 1i, _wgslsmith_f_op_f32(arg_0 * -505f), var_0.d, 27990i);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -981f));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.d.x, -1113f)))))), _wgslsmith_f_op_f32(1927f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-681f, _wgslsmith_f_op_f32(-var_2.d.x)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> u32 {
    var var_0 = abs(~1i);
    let var_1 = Struct_1(abs(_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, 1i), (arg_1 ^ 1i) << (firstLeadingBit(u_input.a) % 32u))), 7008i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -431f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1990f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(func_2(-823f, 95330u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1588f)), 1198f)))), -943f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -218f) + _wgslsmith_f_op_f32(f32(-1f) * -522f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-663f * 929f) - _wgslsmith_f_op_f32(ceil(770f))))), (-12249i << (abs(u_input.a) % 32u)) ^ arg_1);
    var var_2 = Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(step(var_1.c, var_1.c))), _wgslsmith_f_op_f32(func_3(Struct_1(arg_1, var_1.a, var_1.d.x, vec4<f32>(757f, var_1.c, var_1.c, 1000f), -2147483647i), arg_0)))), Struct_2(var_1.c));
    let var_3 = _wgslsmith_mod_i32(min(min(~arg_1, -2147483647i), arg_1), ~max(-max(arg_1, arg_1), -1i));
    var var_4 = vec2<u32>(0u, u_input.b.x);
    return ~(16699u << (var_4.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(func_1(vec2<bool>(false, false), -1i << (u_input.a % 32u)), u_input.b.x, ~(~0u)) >> (~(~(firstLeadingBit(vec3<u32>(1u, 54156u, u_input.a)) << (u_input.b.yzw % vec3<u32>(32u)))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(601f, -829f)), -675f)), _wgslsmith_div_f32(-215f, -1747f), 417f)));
    var var_2 = Struct_1(firstLeadingBit(41171i), ~(-1i), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -124f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(813f, var_1.x)) + _wgslsmith_f_op_f32(var_1.x + 685f)), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-566f - var_1.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) + _wgslsmith_f_op_f32(ceil(var_1.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1935f, 1769f, -472f, var_1.x), vec4<f32>(var_1.x, -991f, -1000f, var_1.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -178f, var_1.x, var_1.x) + vec4<f32>(-1000f, -619f, var_1.x, var_1.x)) + vec4<f32>(744f, -633f, var_1.x, var_1.x)))), _wgslsmith_div_i32(select(1i, 1i, !any(vec3<bool>(true, false, true))), ~1i));
    var_2 = Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.a, var_2.e) >> (vec2<u32>(2055u, 0u) % vec2<u32>(32u)), vec2<i32>(var_2.b, _wgslsmith_sub_i32(var_2.a, -22878i))) >> (1u % 32u), var_2.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(var_2.e, firstLeadingBit(var_2.e), 1775f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1340f, var_1.x, var_2.d.x, var_1.x)), var_2.e), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1992f) - -1452f)), var_2.d, -1i);
    let var_3 = !vec4<bool>(any(vec3<bool>(false, true, false)) == false, !(true && all(vec2<bool>(false, false))), true & all(vec3<bool>(false, false, false)), false);
    var_2 = Struct_1(var_2.b, 2147483647i, 452f, vec4<f32>(_wgslsmith_f_op_f32(func_2(var_2.d.x, u_input.b.x)), _wgslsmith_f_op_f32(max(-1351f, -1091f)), var_2.c, 221f), ~abs(_wgslsmith_mod_i32(var_2.b, 0i) << (_wgslsmith_sub_u32(0u, u_input.a) % 32u)));
    let var_4 = !(~_wgslsmith_dot_vec2_u32(u_input.b.wz, _wgslsmith_sub_vec2_u32(var_0.xx, var_0.yx)) <= abs(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) >> (4294967295u % 32u)));
    let var_5 = var_4;
    var_2 = Struct_1(2147483647i, var_2.e, -2035f, var_2.d, min(-(~abs(var_2.e)), ~(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~vec4<i32>(reverseBits(0i), abs(15669i), 35276i, ~var_2.b), vec4<i32>(2147483647i, 40816i, -1i, var_2.b ^ _wgslsmith_div_i32(2147483647i, var_2.e))));
}

