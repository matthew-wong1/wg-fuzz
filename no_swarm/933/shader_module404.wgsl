struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = 2147483647i;
    let var_1 = Struct_1(-1897f, arg_1.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1223f, -373f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_f32(-arg_1.a))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a))) - _wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))));
    let var_4 = vec3<bool>(true, any(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)))), select(all(vec3<bool>(any(vec2<bool>(false, true)), u_input.a <= u_input.a, u_input.a > 900u)), !select(true, var_0 == 2147483647i, true), true));
    return _wgslsmith_f_op_f32(f32(-1f) * -693f);
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(1f - -509f);
    var var_2 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_2.a))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(-1i, 0i), Struct_1(var_1, var_2.b), var_0.a)) * var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-120f, -1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f)))));
    let var_3 = countOneBits(abs(_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, 59248u, u_input.a)), countOneBits(vec4<u32>(u_input.a, 24567u, 1554u, 35987u)) | (vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) | vec4<u32>(u_input.a, u_input.a, 8801u, u_input.a)))));
    return false;
}

fn func_4(arg_0: bool) -> vec4<f32> {
    let var_0 = 1u >> (_wgslsmith_dot_vec4_u32(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a, 4294967295u, u_input.a, 30733u) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 48246u) % vec4<u32>(32u)), !arg_0), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 69081u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) & vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), ~(~vec4<u32>(77105u, 29124u, 42273u, 66563u)))) % 32u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(115f - 735f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(614f + -591f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(115f - 1450f) * _wgslsmith_f_op_f32(f32(-1f) * -173f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(935f)) * _wgslsmith_f_op_f32(min(-2006f, -1237f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1000f, 1554f, true)))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(839f + -770f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b)) * -1000f)))) - 1562f);
    let var_3 = ~1u;
    var_1 = Struct_1(var_1.a, var_1.b);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-222f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-639f + var_1.b)))), var_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-190f, _wgslsmith_f_op_f32(trunc(var_1.a))))), var_1.b));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(196f, 1133f, 1351f, 1000f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-739f, 1124f, 1727f, -800f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(Struct_1(-1377f, -652f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-763f, 1047f, -843f, -679f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(193f, 325f, -1033f, 915f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1348f, -338f, 962f, 239f) + vec4<f32>(-1268f, -1264f, -736f, -207f)), vec4<f32>(-1266f, 892f, -795f, 284f))))), select(select(vec4<bool>(u_input.a >= 1u, true, false, all(vec3<bool>(false, true, false))), vec4<bool>(all(vec2<bool>(false, false)), true, true, true), true & any(vec3<bool>(false, true, true))), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), any(vec3<bool>(true, true, true))), false)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -845f, var_0.x, var_0.x)) - vec4<f32>(var_0.x, var_0.x, var_0.x, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-1684f * -270f))), _wgslsmith_f_op_f32(f32(-1f) * -565f), 524f, var_0.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(false, false)), true, any(vec4<bool>(false, false, true, false)), true), vec4<bool>(false, true, false, true)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))) + var_0.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(sign(-924f)))), var_0.x));
    var var_2 = select(vec4<bool>(false, var_1 <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, var_0.x)) - _wgslsmith_f_op_f32(min(-673f, 278f))), !select(true, true, true), true), !vec4<bool>(true, !all(vec2<bool>(true, true)), true | select(true, true, false), true), select(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(true, true, false, true)), true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, true), false, false, true), vec4<bool>(true, true, true, true)), true));
    let var_3 = _wgslsmith_div_f32(var_1, var_1);
    return Struct_1(-431f, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-444f - -690f);
    let var_1 = var_0 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1028f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(f32(-1f) * -266f))));
    var var_2 = func_1();
    var var_3 = func_1();
    let var_4 = vec3<f32>(var_0, var_0, func_1().a);
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(_wgslsmith_clamp_i32(-1i, 2147483647i, 436i) >> (min(4294967295u, u_input.a) % 32u)));
}

