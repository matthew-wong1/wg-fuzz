struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> bool {
    global0 = _wgslsmith_f_op_f32(-754f - arg_3);
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.e.x - -667f), _wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(min(-397f, 511f)), arg_3) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, -157f, -626f, 1222f) * vec4<f32>(arg_3, -273f, -152f, 940f))))));
    let var_2 = vec4<bool>(true, !(u_input.d != ~firstTrailingBit(4294967295u)), !(var_1.x < arg_1.e.x), all(select(vec3<bool>(arg_2.x, false, false), !select(vec3<bool>(arg_2.x, var_0.c, arg_2.x), vec3<bool>(var_0.c, arg_2.x, false), arg_2), arg_2)));
    var var_3 = Struct_1(u_input.b.x, arg_0.x, any(vec3<bool>(any(vec4<bool>(arg_1.c, arg_1.c, var_0.c, false)), -1000f < arg_3, true)) || arg_2.x, arg_1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(776f, var_0.e.x), _wgslsmith_f_op_vec2_f32(arg_1.e + var_0.e)) * vec2<f32>(1f, var_1.x)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.e.x, var_1.x)))));
    return any(vec3<bool>(var_0.c, any(vec3<bool>(!arg_2.x, var_1.x <= 264f, false)), var_2.x == var_2.x));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: f32, arg_3: bool) -> u32 {
    let var_0 = !select(vec2<bool>(arg_3, !arg_1.x), vec2<bool>(false, !any(arg_1.yw)), arg_1.wy);
    let var_1 = 1u >> (_wgslsmith_mult_u32(u_input.d, firstTrailingBit(1u)) % 32u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -486f))) * -1058f);
    let var_2 = arg_1.x;
    let var_3 = Struct_1(_wgslsmith_clamp_u32(abs(~var_1), ~_wgslsmith_dot_vec4_u32(u_input.b, max(vec4<u32>(u_input.b.x, u_input.d, 4294967295u, u_input.a), u_input.b)), select(1u, countOneBits(countOneBits(18553u)), !arg_3)), 5637u, !(!arg_3), vec3<u32>(11572u, min(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), var_1), _wgslsmith_add_u32(0u, firstLeadingBit(12220u))) | vec3<u32>(~abs(1u), 61425u, 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-608f, 623f) * vec2<f32>(-1401f, arg_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1592f)))), _wgslsmith_div_vec2_f32(vec2<f32>(287f, arg_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(1191f, 427f) + vec2<f32>(arg_2, 104f))))));
    return ~(~(~1u));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(arg_0, func_4(all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)))), vec4<bool>(true, any(vec4<bool>(false, false, true, true)), true, !func_3(u_input.b.zwy, Struct_1(u_input.d, 1u, true, u_input.b.zxz, vec2<f32>(-383f, -613f)), vec3<bool>(false, false, true), -1579f)), -1747f, select(true, all(vec2<bool>(false, true)), true)), true, select(vec3<u32>(arg_0, u_input.d, arg_0), u_input.b.zwz >> (max(vec3<u32>(arg_0, u_input.d, 2344u), ~u_input.b.zzy) % vec3<u32>(32u)), !(u_input.e >= u_input.e) || all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true))), vec2<f32>(-1509f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(403f + 1373f), _wgslsmith_f_op_f32(f32(-1f) * -2659f), true)))));
    return Struct_1(firstTrailingBit(~(u_input.d ^ u_input.b.x) & (u_input.b.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(38814u, 0u, 43010u), vec3<u32>(arg_0, 1u, 4294967295u)))), 55032u, true, reverseBits(firstLeadingBit(abs(var_0.d))), var_0.e);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(exp2(arg_1.x));
    global0 = _wgslsmith_div_f32(-1097f, arg_1.x);
    var var_0 = true;
    var var_1 = select(vec2<bool>(select(!any(vec3<bool>(true, arg_0.c, arg_0.c)), !arg_0.c, arg_0.c), 0u == (_wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(4294967295u, 12353u)) | 51300u)), !(!(!vec2<bool>(arg_0.c, false))), !select(!vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, select(arg_0.c, true, arg_0.c)), vec2<bool>(arg_0.c, arg_0.c)));
    var_1 = !(!select(!(!vec2<bool>(true, var_1.x)), select(select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x), var_1.x), !vec2<bool>(true, arg_0.c), select(vec2<bool>(arg_0.c, var_1.x), vec2<bool>(var_1.x, true), var_1.x)), !select(vec2<bool>(arg_0.c, true), vec2<bool>(arg_0.c, false), vec2<bool>(var_1.x, true))));
    return 2301f;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    let var_0 = true;
    let var_1 = arg_1;
    let var_2 = vec4<f32>(798f, _wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(func_5(func_2(52005u), _wgslsmith_f_op_vec2_f32(arg_1.e * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, -1000f) - _wgslsmith_f_op_vec2_f32(-var_1.e))))), _wgslsmith_f_op_f32(1380f - var_1.e.x));
    global0 = _wgslsmith_f_op_f32(min(-343f, _wgslsmith_f_op_f32(arg_1.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.x + 280f)))));
    var var_3 = var_1;
    return !func_2(0u).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), vec2<bool>(true, true), !func_1(u_input.b.yz, Struct_1(27286u, u_input.a, true, u_input.b.ywy, vec2<f32>(2266f, 1000f)), vec4<bool>(true, true, false, false))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), true), select(true, func_1(vec2<u32>(u_input.a, u_input.a), Struct_1(u_input.d, 0u, false, vec3<u32>(u_input.b.x, u_input.a, u_input.a), vec2<f32>(868f, 1000f)), vec4<bool>(false, true, false, false)), func_3(u_input.b.zyy, Struct_1(u_input.a, u_input.b.x, false, u_input.b.wxw, vec2<f32>(1096f, -1000f)), vec3<bool>(false, false, false), 1002f))), !(u_input.b.x != ~35487u)), select(vec2<bool>(all(vec2<bool>(true, true)), !(u_input.a > u_input.a)), vec2<bool>(true, firstTrailingBit(u_input.c) <= ~u_input.e), vec2<bool>(true, true)), !select(vec2<bool>(true, any(vec2<bool>(true, true))), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(189f, -606f)), 759f))), ~(~42411u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-773f, _wgslsmith_f_op_f32(func_5(Struct_1(9253u, 4294967295u, var_0.x, u_input.b.yxw, vec2<f32>(410f, -182f)), vec2<f32>(-347f, -1188f))))), _wgslsmith_f_op_f32(sign(958f)), -1000f), 0u, ~u_input.b.zx);
}

