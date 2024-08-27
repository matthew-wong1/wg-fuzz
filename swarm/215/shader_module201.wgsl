struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_1(!(!global0.a), -303f, global0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.e, 51854u, global0.e, 11615u), vec4<u32>(global0.e, 54442u, u_input.a, 79830u)), u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(902u, u_input.a, 0u)), ~global0.d, global0.d | u_input.a), vec4<u32>(1u, global0.e, _wgslsmith_div_u32(4294967295u, 34847u ^ global0.d), _wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(21561u, global0.d, global0.e)))), 17784u);
    global0 = Struct_1(!(!select(select(vec3<bool>(var_0.a.x, var_0.a.x, global0.a.x), vec3<bool>(global0.a.x, false, var_0.a.x), var_0.a.x), select(var_0.a, vec3<bool>(true, true, global0.a.x), global0.a.x), !vec3<bool>(var_0.a.x, true, global0.a.x))), -1000f, _wgslsmith_f_op_f32(-var_0.b), 4294967295u, u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2434f, 1080f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.b)), vec2<f32>(-822f, var_0.b)), var_0.a.zz))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1123f, global0.c) - vec2<f32>(463f, global0.b)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(421f, var_0.c) * vec2<f32>(global0.c, -1866f))), vec2<f32>(global0.b, _wgslsmith_f_op_f32(abs(-953f))), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1511f, 1594f) + vec2<f32>(-728f, global0.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b, global0.b)))), !any(vec4<bool>(true, global0.a.x, var_0.a.x, false)))), select(vec2<bool>(true, true), select(select(vec2<bool>(var_0.a.x, global0.a.x), vec2<bool>(false, global0.a.x), global0.a.xy), vec2<bool>(global0.a.x, global0.a.x), select(vec2<bool>(var_0.a.x, global0.a.x), var_0.a.yz, vec2<bool>(global0.a.x, global0.a.x))), false))));
    global0 = Struct_1(!var_0.a, var_0.c, _wgslsmith_f_op_f32(-var_1.x), 0u, var_0.e ^ ~(~var_0.d));
    let var_2 = var_0.a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1948f - -170f) * -1057f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> bool {
    let var_0 = arg_0;
    var var_1 = reverseBits(var_0.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2057f), -989f));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), -741f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(min(-584f, 592f)), arg_0.a.x))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.b)), -821f), arg_0.b), any(var_0.a.zx))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-115f, -490f))));
    var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, 469f), global0.c)) - _wgslsmith_f_op_f32(var_2.x - global0.b)), -1627f)));
    return arg_2;
}

fn func_1() -> u32 {
    global0 = Struct_1(!vec3<bool>(true, func_2(Struct_1(vec3<bool>(true, global0.a.x, global0.a.x), -707f, global0.b, global0.d, 98763u), select(global0.a, vec3<bool>(global0.a.x, true, true), global0.a), all(vec2<bool>(global0.a.x, global0.a.x))), (u_input.b.x & -2147483647i) <= -u_input.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()).x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-319f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(640f)) - _wgslsmith_div_f32(-257f, 1000f))), false)), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, abs(57417u)), (u_input.a >> (u_input.a % 32u)) << (reverseBits(max(global0.e, 83045u)) % 32u)));
    var var_0 = vec2<bool>(true, all(global0.a.yy));
    let var_1 = Struct_1(global0.a, global0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + global0.c))), global0.d, ~_wgslsmith_mod_u32(u_input.a, max(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, u_input.a, u_input.a, 82143u), vec4<u32>(u_input.a, 0u, u_input.a, global0.e)), ~u_input.a)));
    let var_2 = _wgslsmith_mod_u32(u_input.a >> (_wgslsmith_sub_u32(abs(select(4294967295u, global0.e, false)), _wgslsmith_mod_u32(0u, ~0u)) % 32u), ~1u);
    let var_3 = vec4<bool>(!(1i <= (u_input.b.x | u_input.b.x)) & ((u_input.b.x <= (i32(-1i) * -25152i)) | true), (all(!vec4<bool>(false, false, global0.a.x, var_0.x)) && ((false || global0.a.x) && any(var_1.a.yx))) | true, firstLeadingBit(_wgslsmith_clamp_u32(global0.e | 1u, ~var_1.d, _wgslsmith_mod_u32(var_2, var_1.e))) < 93741u, _wgslsmith_div_u32(abs(7835u), 1u & ~u_input.a) >= 4294967295u);
    return abs(43812u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec3<bool>(global0.a.x, u_input.b.x > u_input.b.x, global0.a.x), -434f, -676f, global0.e, 1u);
    var var_0 = Struct_1(vec3<bool>(true, any(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(sign(global0.b))) * 1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1310f - -263f), global0.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(func_1(), global0.d), u_input.a), ~(~vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, 0u))), global0.d);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f - -862f)))), global0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))))));
    var var_2 = _wgslsmith_add_u32(countOneBits(0u), 0u);
    var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(~0u, 1u, global0.e), firstTrailingBit(select(vec3<u32>(u_input.a, 4294967295u, 10913u), vec3<u32>(var_0.d, 1u, u_input.a), var_0.a)), true), ~vec3<u32>(44130u, 4294967295u | global0.d, reverseBits(6256u))), max(~39095u, 4294967295u ^ _wgslsmith_clamp_u32(~56595u, _wgslsmith_clamp_u32(55435u, global0.e, global0.d), _wgslsmith_mult_u32(3777u, u_input.a))));
    global0 = Struct_1(vec3<bool>(!(_wgslsmith_div_u32(u_input.a, 31158u) > 0u), global0.a.x, !(~global0.e < 23403u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(-global0.c)))), 1f, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~u_input.a, ~u_input.a), vec3<u32>(global0.e, 29032u, global0.e)), _wgslsmith_add_u32(firstLeadingBit(90506u), global0.d) ^ var_0.e), ~4294967295u);
    var var_3 = ~(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, global0.e), vec2<u32>(var_0.e, 42007u), vec2<u32>(global0.e, 4294967295u)), vec2<u32>(var_0.e, 4294967295u), !var_0.a.yz)) & (firstLeadingBit(~max(vec2<u32>(4294967295u, 43283u), vec2<u32>(4294967295u, 0u))) ^ vec2<u32>(var_0.d, _wgslsmith_mult_u32(101769u, 4294967295u >> (u_input.a % 32u))));
    var var_4 = u_input.b.x;
    var_3 = abs(countOneBits(vec2<u32>(~global0.e, firstTrailingBit(~u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(max(var_3.x, 4294967295u), abs(0u), ~39697u, 1u)));
}

