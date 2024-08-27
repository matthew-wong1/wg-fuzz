struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> f32 {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 + arg_0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -264f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -194f))))), arg_0));
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1289f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(503f, arg_0), vec2<f32>(2317f, arg_0)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(853f, arg_0) * vec2<f32>(arg_0, -1077f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1506f, arg_0) + vec2<f32>(438f, 220f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(578f, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1057f, 1366f) + vec2<f32>(-504f, arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2792f, arg_0))))))) + vec2<f32>(arg_0, _wgslsmith_f_op_f32(-var_1.x)));
    var var_2 = u_input.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_div_f32(var_1.x, var_1.x)))))), 362f);
}

fn func_2(arg_0: vec4<f32>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_0 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(-43735i, 47588i, 1i)), ~countOneBits(vec3<i32>(-25541i, -20777i, -1i)) >> (vec3<u32>(~u_input.a, u_input.a | 0u, ~u_input.a) % vec3<u32>(32u)), vec3<i32>(9778i, 0i, 0i)));
    let var_1 = vec3<u32>(min(1u, ~reverseBits(u_input.a)), u_input.a & ~(_wgslsmith_div_u32(u_input.a, 3720u) & u_input.a), ~1u >> ((15720u << (u_input.a % 32u)) % 32u));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(-557f)))) + _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) - _wgslsmith_f_op_f32(686f * arg_0.x)))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(max(-490f, arg_0.x))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-3051f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(-226f)), -1046f, true)))), -1054f);
    return _wgslsmith_f_op_vec2_f32(-arg_0.zy);
}

fn func_1() -> vec3<u32> {
    global0 = -1040f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(691f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(239f * -546f) + 1132f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2169f))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f - -745f), _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(152f, -1272f, -247f, 632f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-198f, 561f), vec2<f32>(931f, 964f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(666f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-224f))))))), all(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), true)), true);
    var var_1 = !select(select(!(!vec2<bool>(var_0.d, var_0.d)), vec2<bool>(var_0.d, true), !(!vec2<bool>(var_0.d, true))), !(!(!vec2<bool>(true, var_0.d))), var_0.d);
    let var_2 = var_1.x;
    return max(~vec3<u32>(67179u, firstLeadingBit(u_input.a), u_input.a), select(vec3<u32>(4294967295u, u_input.a, ~u_input.a), vec3<u32>(reverseBits(4294967295u) << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u), u_input.a, u_input.a), !all(select(vec2<bool>(var_1.x, var_0.d), vec2<bool>(false, true), vec2<bool>(false, false)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> bool {
    global0 = arg_1.b;
    return !(!(true != select(true, all(vec3<bool>(arg_1.d, false, false)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1785f), _wgslsmith_f_op_f32(f32(-1f) * -1528f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-311f)), -1765f))))), func_4(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(25532u, 97245u, u_input.a)), reverseBits(vec3<u32>(17443u, 1u, u_input.a)), func_1()) >> ((select(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(0u, u_input.a, u_input.a), vec3<bool>(true, false, false)) ^ ~vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-510f, 433f)), 526f, true, true), -9210i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(588f - -208f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -760f) + _wgslsmith_f_op_f32(trunc(-1613f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(585f, 768f, -562f, -903f), vec4<f32>(1196f, -699f, -230f, 865f))))).x + 160f));
    var var_1 = vec2<u32>(~(~(u_input.a ^ 113206u)) << (u_input.a % 32u), ~(_wgslsmith_add_u32(u_input.a, 1293u) >> (1u % 32u)) & 24935u);
    let var_2 = 1f;
    let var_3 = select(!vec4<bool>(true, var_0.d, any(!vec3<bool>(var_0.c, false, true)), !var_0.d), select(!vec4<bool>(all(vec2<bool>(var_0.c, true)), false, var_0.d && false, true), !select(select(vec4<bool>(var_0.c, true, var_0.d, var_0.d), vec4<bool>(true, false, var_0.d, false), vec4<bool>(true, true, false, var_0.c)), vec4<bool>(false, true, var_0.c, var_0.d), var_0.a.x > 1000f), select(vec4<bool>(select(true, false, false), var_0.d && var_0.d, true, false), select(!vec4<bool>(var_0.d, var_0.c, var_0.c, var_0.d), !vec4<bool>(var_0.d, var_0.d, true, var_0.d), all(vec4<bool>(var_0.d, var_0.d, true, var_0.c))), true)), var_0.a.x == _wgslsmith_f_op_f32(-var_2));
    let var_4 = vec2<bool>(var_3.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
}

