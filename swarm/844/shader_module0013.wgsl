struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    var var_0 = 913f;
    var_0 = -852f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-310f, -1121f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(983f, _wgslsmith_f_op_f32(abs(926f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(635f)))))) - -234f);
    var_0 = 544f;
    return _wgslsmith_f_op_f32(f32(-1f) * -915f);
}

fn func_3() -> bool {
    var var_0 = Struct_1(true, select(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(false, false)), true)), vec2<bool>(true, all(vec4<bool>(false, false, false, true))), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true)));
    var_0 = Struct_1(all(select(select(select(vec4<bool>(false, var_0.b.x, var_0.a, false), vec4<bool>(var_0.a, true, var_0.b.x, var_0.a), vec4<bool>(false, false, var_0.a, var_0.b.x)), !vec4<bool>(false, false, var_0.a, true), !vec4<bool>(var_0.a, var_0.a, var_0.b.x, var_0.b.x)), vec4<bool>(all(vec4<bool>(true, true, true, true)), var_0.a, true, true), vec4<bool>(true, var_0.a, true, all(vec4<bool>(true, var_0.a, false, var_0.b.x))))), select(var_0.b, select(var_0.b, select(vec2<bool>(true, true), !vec2<bool>(true, var_0.a), var_0.b), select(any(vec4<bool>(true, false, var_0.b.x, true)), var_0.b.x, false)), var_0.a));
    var var_1 = false;
    let var_2 = Struct_1(!var_0.a, !select(var_0.b, var_0.b, true));
    var var_3 = vec2<u32>(~_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 64870u, 72494u, 22547u), vec4<u32>(1u, 1u, 1u, 1u))), firstTrailingBit(0u) >> (_wgslsmith_sub_u32(1u, ~firstTrailingBit(64684u)) % 32u));
    return all(vec2<bool>(var_0.a, var_0.b.x)) && false;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(any(vec2<bool>(true, true)), select(!vec2<bool>(true, func_3()), !vec2<bool>(true, any(vec3<bool>(true, false, false))), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(~(~0u), _wgslsmith_clamp_u32(41383u, 1u, max(52687u, 3184u)) | 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(~(~4294967295u), 134050u), _wgslsmith_add_vec2_u32(~(~vec2<u32>(1u, 1u)), min(reverseBits(vec2<u32>(30479u, 1u)), ~vec2<u32>(4294967295u, 3470u)))));
    var var_2 = var_0;
    let var_3 = max(var_1.x, var_1.x);
    let var_4 = !vec3<bool>(false, var_0.a, func_3());
    return Struct_1(false, vec2<bool>(true, any(vec4<bool>(false, false, false, var_4.x)) | var_0.b.x));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = select(select(!select(!vec4<bool>(var_0.b.x, arg_1.a, true, true), select(vec4<bool>(var_0.a, true, arg_1.a, var_0.a), vec4<bool>(var_0.a, var_0.a, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, var_0.a, var_0.a, false)), !arg_1.b.x), select(select(select(vec4<bool>(var_0.b.x, var_0.a, arg_1.a, var_0.a), vec4<bool>(true, false, false, arg_1.b.x), vec4<bool>(false, var_0.a, false, var_0.b.x)), select(vec4<bool>(false, true, false, false), vec4<bool>(arg_1.a, arg_1.b.x, true, arg_1.b.x), var_0.a), true), select(select(vec4<bool>(arg_1.a, var_0.a, arg_1.a, false), vec4<bool>(false, true, arg_1.a, arg_1.b.x), arg_1.b.x), !vec4<bool>(true, arg_1.a, arg_1.b.x, true), !vec4<bool>(false, arg_1.b.x, var_0.a, var_0.b.x)), vec4<bool>(var_0.a || arg_1.a, arg_0 > 32463u, false, arg_1.a | true)), select(!(!vec4<bool>(arg_1.a, var_0.b.x, false, true)), select(select(vec4<bool>(true, var_0.b.x, var_0.b.x, true), vec4<bool>(var_0.a, false, true, false), true), select(vec4<bool>(var_0.a, arg_1.a, false, false), vec4<bool>(var_0.a, arg_1.a, var_0.a, arg_1.a), vec4<bool>(arg_1.b.x, arg_1.a, arg_1.b.x, false)), !vec4<bool>(false, var_0.b.x, var_0.b.x, false)), true)), !(!select(vec4<bool>(var_0.b.x, false, var_0.a, true), !vec4<bool>(var_0.b.x, false, false, var_0.a), !vec4<bool>(var_0.b.x, false, true, true))), !(!vec4<bool>(all(vec3<bool>(false, true, false)), false, arg_1.a, true)));
    var var_2 = 1000f;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -670f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1229f + 1283f), 491f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1162f) * -785f))));
    var var_4 = all(select(func_2().b, arg_1.b, !(!(!arg_1.b))));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_sub_u32(select(arg_1.x, _wgslsmith_div_u32(arg_1.x, select(_wgslsmith_div_u32(arg_1.x, 87299u), ~arg_1.x, any(arg_2.b))), !func_3()), _wgslsmith_dot_vec2_u32(~arg_1.xz, vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(arg_1.yy, arg_1.yy)) ^ arg_1.zz));
    var_0 = arg_1.x;
    var_0 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(~1u, ~arg_1.x), arg_1.yx, !arg_2.a) >> (reverseBits(arg_1.xy) % vec2<u32>(32u)), vec2<u32>(~abs(4294967295u), 27052u));
    var var_1 = arg_0;
    var_1 = Struct_1(!arg_0.b.x, select(arg_2.b, vec2<bool>(!var_1.a, arg_0.b.x), true && all(!vec2<bool>(false, arg_2.b.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x));
}

fn func_6(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(29808i, u_input.a.x);
    return func_4(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(11405u, 4294967295u, 3770u, 0u), ~vec4<u32>(4294967295u, 25776u, 4294967295u, 0u)), vec4<u32>(~(~0u), 1u >> (firstLeadingBit(27357u) % 32u), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 28299u), _wgslsmith_sub_u32(4294967295u, 29944u)), firstLeadingBit(5258u) << (1u % 32u))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, vec2<bool>(select(all(vec3<bool>(false, true, false)), true, false), all(vec4<bool>(true, true, true, true))));
    let var_1 = var_0;
    var var_2 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-769f, _wgslsmith_f_op_f32(round(-542f)), _wgslsmith_f_op_f32(select(-662f, 1000f, true)), _wgslsmith_f_op_f32(-188f * -1190f)))) - vec4<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(var_0.a, var_0.b.x, var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1053f * 2502f) - _wgslsmith_f_op_f32(107f + -1165f)), 1f, _wgslsmith_f_op_f32(-733f * -646f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(1u, func_2()), vec3<u32>(1u, 1u, 1u), var_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(-798f, 863f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1138f, -188f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 0u)), vec3<u32>(48608u, 19755u, 106644u)) >> (((_wgslsmith_sub_u32(57395u, 1u) >> (1u % 32u)) | select(1u, ~17023u, true || var_0.a)) % 32u), ~56781u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(778f, 2028f, 329f) - _wgslsmith_div_vec3_f32(vec3<f32>(268f, -2086f, 1748f), vec3<f32>(-2626f, 324f, 953f))) + vec3<f32>(-1403f, _wgslsmith_div_f32(1330f, 448f), -136f))), _wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(abs(8807u)), 14956u, countOneBits(firstTrailingBit(93395u))), reverseBits(~_wgslsmith_div_vec3_u32(vec3<u32>(7741u, 21561u, 75974u), vec3<u32>(86796u, 62447u, 26349u)))));
}

