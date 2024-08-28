struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(sign(1186f));
    let var_1 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(arg_1.b, 178f));
    let var_2 = 55435u;
    let var_3 = select(select(vec4<bool>(all(vec2<bool>(true, true)), !any(vec3<bool>(true, true, false)), false, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(~u_input.a >= u_input.a, all(vec3<bool>(true, true, true)), false && (1i >= u_input.a), true)), vec4<bool>(all(vec2<bool>(true, true)), var_2 < 1u, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)))), false), !vec4<bool>(true, true, abs(arg_1.a.x) > 18889u, any(vec2<bool>(false, false))));
    let var_4 = 0u;
    return vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(514f + arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))) * 1022f), _wgslsmith_f_op_f32(-233f * _wgslsmith_f_op_f32(sign(var_1))));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = -1000f;
    let var_1 = Struct_1(~vec4<u32>(4294967295u << (select(46399u, 59326u, true) % 32u), ~min(81512u, 39939u), 1u, abs(91394u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-502f, arg_0))))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(arg_0 + 1433f)))), Struct_1(~min(vec4<u32>(72087u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 60372u, 4294967295u, 15319u)), 502f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(596f, -2086f, arg_0) - vec3<f32>(319f, arg_0, 877f)))))));
    let var_2 = 1u;
    var_0 = _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + -131f), 1000f)));
    var var_3 = Struct_1(_wgslsmith_mult_vec4_u32(abs(var_1.a), ~vec4<u32>(var_1.a.x, 7370u, 42753u, 8738u) >> (vec4<u32>(34377u, 0u, 1u, ~1u) % vec4<u32>(32u))), var_1.c.x, _wgslsmith_f_op_vec3_f32(var_1.c + vec3<f32>(-888f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c.x)) * _wgslsmith_f_op_f32(select(arg_0, arg_0, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1007f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_3.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1273f, var_3.b, true)), _wgslsmith_f_op_f32(var_3.c.x * -430f), any(vec4<bool>(false, false, true, true)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))))));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(~(~vec4<u32>(0u, arg_1, arg_1, 4130u)), _wgslsmith_f_op_f32(372f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1227f)) + _wgslsmith_div_f32(-193f, -628f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-229f, -862f, -2003f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1413f, 242f, 799f), vec3<f32>(1107f, 673f, -124f), vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2079f, 1000f, 405f))))))));
    let var_1 = abs(_wgslsmith_clamp_u32(~31779u, ~(~22383u & var_0.a.x), ~(~(~var_0.a.x))));
    let var_2 = vec2<bool>(false, !(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_1, 67301u, 0u)), vec3<u32>(var_0.a.x, 4294967295u, var_1)) != countOneBits(34246u)));
    var_0 = Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, arg_1, 3665u, var_0.a.x), var_0.a << (var_0.a % vec4<u32>(32u))) >> ((var_0.a & abs(vec4<u32>(arg_1, var_1, 57096u, 16886u))) % vec4<u32>(32u)), _wgslsmith_div_f32(984f, var_0.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1108f * 343f)), _wgslsmith_f_op_f32(step(-1715f, _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(select(103f, var_0.b, false)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.c)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.c))))));
    var var_3 = false;
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(var_0.b, Struct_1(var_0.a, -1128f, vec3<f32>(var_0.c.x, var_0.b, var_0.b)))).x), _wgslsmith_f_op_f32(sign(var_0.c.x)), !var_2.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * -244f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.c.x)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, var_0.b))) + -1153f), var_0.c.x, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.b, var_0.c.x), _wgslsmith_f_op_f32(abs(1359f)))), Struct_1(_wgslsmith_clamp_vec4_u32(var_0.a, var_0.a, vec4<u32>(var_1, 10783u, var_0.a.x, 0u)), var_0.c.x, var_0.c))).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(2147483647i, u_input.a, u_input.a);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(1396f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(466f, -427f, false))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-143f, _wgslsmith_f_op_f32(-1354f + -378f))) + _wgslsmith_f_op_f32(f32(-1f) * -1473f))));
    let var_2 = var_0.xy;
    let var_3 = func_1(0i, 1u);
    let var_4 = vec4<u32>(93002u, firstTrailingBit(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.x, var_3.a.x), vec2<u32>(var_3.a.x, var_3.a.x)), select(var_3.a.x, 4294967295u, true))), 47203u, var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, ~(~vec2<u32>(var_4.x, var_3.a.x)), vec2<u32>(var_4.x, ~(var_4.x & (var_3.a.x | 1u))));
}

