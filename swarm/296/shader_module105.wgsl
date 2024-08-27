struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-1042f, 1305f, -122f), vec3<f32>(-2864f, -632f, -1000f), vec3<f32>(-862f, 1502f, 159f), vec3<f32>(1615f, -838f, -1298f), vec3<f32>(-1595f, -226f, 979f), vec3<f32>(-220f, -1000f, -475f), vec3<f32>(392f, -184f, 246f));

var<private> global1: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(-12484i, 2147483647i));

var<private> global2: i32;

var<private> global3: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(3473u, 58265u), vec2<u32>(1u, 1u), vec2<u32>(56802u, 36412u), vec2<u32>(41105u, 14919u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 43890u), vec2<u32>(1u, 56508u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(2932u, 4294967295u), vec2<u32>(0u, 228u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(1u, 13015u), vec2<u32>(56295u, 26105u), vec2<u32>(81766u, 4294967295u), vec2<u32>(41067u, 4294967295u), vec2<u32>(4294967295u, 5501u), vec2<u32>(36838u, 4294967295u), vec2<u32>(0u, 5459u), vec2<u32>(14237u, 45700u), vec2<u32>(0u, 13203u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1)), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), 347f))))));
    global2 = -(~(-(~(-1i)) & u_input.a.x));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec4_i32(-u_input.a, ~u_input.a));
    var var_2 = !(!(!select(!vec4<bool>(true, true, arg_0.a, true), select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, false, false, arg_0.a)), arg_0.a)));
    var var_3 = !vec4<bool>(!(true || arg_0.a) && all(select(vec2<bool>(arg_0.a, arg_0.a), var_2.xw, true)), (1103f != _wgslsmith_f_op_f32(var_0.x * 810f)) != all(var_2.yzx), !arg_0.a, arg_0.a == !arg_0.a);
    return firstTrailingBit(0i);
}

fn func_2() -> u32 {
    let var_0 = firstLeadingBit(min(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(10153i, u_input.a.x, -2147483647i)), 2147483647i)) & ~select(func_3(Struct_1(false), _wgslsmith_f_op_f32(1004f + 519f)), -1i, any(vec2<bool>(false, false)));
    global1 = array<vec2<i32>, 1>();
    let var_1 = u_input.a.x;
    global3 = array<vec2<u32>, 23>();
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(274f - 518f), _wgslsmith_f_op_f32(ceil(1548f)), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(787f - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -392f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1106f + -369f), 614f)))));
    return firstTrailingBit(70230u);
}

fn func_1(arg_0: f32) -> u32 {
    global0 = array<vec3<f32>, 7>();
    var var_0 = vec3<bool>(true, true, firstLeadingBit(1u) != _wgslsmith_sub_u32(func_2(), _wgslsmith_dot_vec4_u32(select(vec4<u32>(5455u, 1u, 0u, 0u), vec4<u32>(121148u, 4294967295u, 92614u, 4294967295u), vec4<bool>(false, false, false, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(11046u, 38139u, 19609u, 37702u), vec4<u32>(2750u, 1u, 1u, 0u), vec4<u32>(12822u, 61573u, 4294967295u, 0u)))));
    let var_1 = Struct_2(select(false, false, all(vec4<bool>(var_0.x | false, var_0.x & true, var_0.x, true))), ~_wgslsmith_mod_u32(~4294967295u, ~(~1u)));
    let var_2 = Struct_2(!var_0.x, firstTrailingBit(89843u));
    let var_3 = vec4<bool>(!(-u_input.a.x >= 1775i) | all(vec2<bool>(true, true)), any(vec3<bool>(true, true, var_2.a)), any(!vec4<bool>(true, !var_1.a, all(vec3<bool>(var_2.a, var_1.a, var_1.a)), any(vec2<bool>(false, var_2.a)))), var_1.a);
    return 0u;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2) -> StorageBuffer {
    global1 = array<vec2<i32>, 1>();
    let var_0 = Struct_2(true, ~(~33689u));
    var var_1 = vec2<bool>(select(all(!select(vec2<bool>(false, var_0.a), vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(true, false))), true, true), any(vec3<bool>(var_0.a, !(var_0.b < var_0.b), !any(vec3<bool>(var_0.a, arg_2.a, var_0.a)))));
    return StorageBuffer(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 1>();
    let var_0 = _wgslsmith_div_f32(-428f, 176f);
    var var_1 = all(select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, true, false, true))), vec2<bool>(true, true))) | true;
    global0 = array<vec3<f32>, 7>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))) - -483f)) + 995f);
    let x = u_input.a;
    s_output = func_4(~_wgslsmith_clamp_u32(4294967295u, reverseBits(func_1(var_2)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 0u, 11569u, 4294967295u), vec4<u32>(55145u, 1380u, 0u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(162f, var_0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(690f, -199f), _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(select(184f, var_2, true))))), -1431f), Struct_2(true, 45937u));
}

