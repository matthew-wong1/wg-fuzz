struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    let var_0 = Struct_1(!all(vec3<bool>(arg_2, true, any(vec3<bool>(true, false, arg_2)))));
    return _wgslsmith_f_op_f32(634f + -190f);
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_2(any(!select(select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(true, false, arg_0, true), arg_0), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, true, arg_0, arg_0))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(374f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<u32>(22307u, 10530u, 51279u, 0u), vec2<bool>(true, false), true))), -162f, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-303f, 964f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -758f)))))));
    var_0 = Struct_2(all(vec4<bool>(!var_0.a, var_0.a, !(!arg_0), true)));
    var_0 = Struct_2(false);
    var_0 = Struct_2(var_0.a);
    return select(vec4<bool>(arg_0 || select(true, true, var_0.a), var_0.a, all(vec4<bool>(select(var_0.a, true, var_0.a), true, false, !arg_0)), true), !vec4<bool>(!(var_0.a && arg_0), false, any(vec2<bool>(arg_0, var_0.a)), arg_0), select(!(!(!vec4<bool>(arg_0, var_0.a, false, arg_0))), select(!(!vec4<bool>(var_0.a, false, arg_0, var_0.a)), !(!vec4<bool>(false, var_0.a, arg_0, true)), vec4<bool>(!arg_0, u_input.a.x > 2147483647i, var_0.a, !arg_0)), !(~u_input.a.x >= u_input.a.x)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = !(!vec4<bool>(79027u < _wgslsmith_sub_u32(arg_1.x, arg_1.x), false, true, true));
    var_0 = select(!func_3(true), vec4<bool>(var_0.x, false | var_0.x, any(var_0.wz), true), any(vec4<bool>(var_0.x, true, var_0.x, !any(var_0.zw))));
    var var_1 = vec4<u32>(1u, 1u, _wgslsmith_mod_u32(reverseBits(1u), ~0u), 1u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(163f - 208f), _wgslsmith_f_op_f32(f32(-1f) * -256f), all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)))), arg_0) * _wgslsmith_f_op_f32(func_1((arg_1 << (vec4<u32>(18711u, 1u, 55476u, arg_1.x) % vec4<u32>(32u))) << ((arg_1 << (vec4<u32>(arg_1.x, 57774u, arg_1.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), var_0.xx, false))));
    let var_3 = vec4<u32>(var_1.x, _wgslsmith_dot_vec3_u32(arg_1.zxy, _wgslsmith_add_vec3_u32(arg_1.zxy, ~var_1.wwz)), ~4294967295u, 1u);
    return Struct_3(select(!select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true)), vec4<bool>(false, false, var_0.x, var_0.x), !vec4<bool>(true, false, true, var_0.x)), vec4<bool>(true, var_0.x, !(u_input.a.x >= u_input.a.x), -u_input.a.x < u_input.a.x), !(!vec4<bool>(var_0.x, false, var_0.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~(~vec4<u32>(41262u, 4294967295u, 0u, 6802u)), vec2<bool>(true, true), false && all(vec3<bool>(true, true, true))))), vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 4294967295u, 0u, 22446u)), min(_wgslsmith_mod_vec4_u32(vec4<u32>(33216u, 21193u, 23179u, 15514u), vec4<u32>(4294967295u, 63114u, 65821u, 4930u)), vec4<u32>(4294967295u, 4294967295u, 20271u, 13563u))), firstLeadingBit(1u), abs(_wgslsmith_clamp_u32(87539u, 4294967295u, 4294967295u)) & 1u, ~abs(~11405u)));
    var var_1 = var_0.a;
    var_1 = var_0.a;
    var var_2 = min(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 19477u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 1u, 1u, 1696u)) | abs(vec4<u32>(34732u, 0u, 73997u, 1u)), vec4<u32>(40659u, _wgslsmith_dot_vec2_u32(vec2<u32>(70293u, 9319u), vec2<u32>(11076u, 27301u)), ~4294967295u, ~4294967295u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(45823u, 4294967295u, 4294967295u), vec3<u32>(1u, 4717u, 0u)) | countOneBits(select(4294967295u, 4294967295u, true))), _wgslsmith_sub_u32(~15427u, 1u));
    var var_3 = Struct_5(var_0, select(vec3<bool>(true, (u_input.a.x >= -1i) && all(var_1.xy), !(!var_1.x)), vec3<bool>(var_0.a.x, var_0.a.x, false), !vec3<bool>(var_0.a.x, true, all(var_1.xw))), Struct_1(!var_0.a.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1455f)) - _wgslsmith_f_op_f32(-870f - -646f))), _wgslsmith_mod_vec4_u32(vec4<u32>(max(0u, 0u), 0u, _wgslsmith_div_u32(4294967295u, 32578u), _wgslsmith_add_u32(3714u, 44494u)), vec4<u32>(1u, 1u, 1u, 1u))).a.xx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1879f, 767f) + vec2<f32>(-1124f, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1482f, -1000f))))));
}

