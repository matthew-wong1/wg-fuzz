struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = ~_wgslsmith_clamp_i32(u_input.a.x, 10501i, arg_1.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(362f, -884f, -1000f, arg_0.x))))), vec4<f32>(1000f, 1000f, _wgslsmith_f_op_f32(ceil(-804f)), arg_0.x))));
    return ~(~(~(~0u)));
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(1i, ~reverseBits(-5733i)), 32245u, u_input.a.x, -2147483647i, countOneBits(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(72884u, 0u, 1u, 61894u)), vec4<u32>(~4294967295u, ~1390u, 1u, 1u))));
    let var_1 = 0u;
    let var_2 = vec4<bool>(true, true, true, true);
    let var_3 = var_0;
    var var_4 = _wgslsmith_div_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b, func_3(vec3<f32>(-1078f, 938f, -1333f), Struct_1(var_0.a, 2500u, u_input.a.x, 0i, 47386u), var_0.b), 14577u, abs(var_0.b)), firstLeadingBit(vec4<u32>(19695u, var_3.b, var_0.e, var_1) & vec4<u32>(var_1, var_0.e, 1u, var_1)))), ~vec4<u32>(86695u, var_3.b, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, var_0.e, var_1)), vec3<u32>(31272u, var_3.b, var_0.e) << (vec3<u32>(0u, var_0.b, 1u) % vec3<u32>(32u))), _wgslsmith_mod_u32(var_3.e, 0u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(308f - -1797f))))), _wgslsmith_f_op_f32(f32(-1f) * -2672f)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = 1854f;
    var var_1 = arg_0;
    var_1 = arg_0;
    var_1 = Struct_1(-16172i, reverseBits(20442u), -2147483647i << (~arg_0.b % 32u), arg_0.a, _wgslsmith_mult_u32(abs(30448u), 1u));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_i32(arg_0.c, 1i, u_input.a.x) >> (~384u % 32u))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(360f - 997f)), _wgslsmith_f_op_f32(ceil(1226f)))), _wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = vec3<bool>(false, !all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true);
    var var_2 = Struct_1(-2147483647i, 1u, u_input.a.x, ~0i, _wgslsmith_mod_u32(135021u, firstTrailingBit(4134u)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-262f, 373f) * _wgslsmith_f_op_f32(func_1(Struct_1(0i, 34343u, 1i, u_input.a.x, 13815u))))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1119f + -2032f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -557f), -1984f) - 1986f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(244f)) - 1f))), -683f);
    var_2 = Struct_1(0i, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_2.b), ~vec2<u32>(39351u, 9568u)), min(18740u, var_2.b), var_2.b, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, var_2.b, var_2.e, 4294967295u)), ~vec4<u32>(var_2.e, 0u, var_2.e, 14390u))), ~(~(~vec4<u32>(4294967295u, var_2.b, 10362u, var_2.e)))), 2147483647i, -(~_wgslsmith_clamp_i32(var_2.a, u_input.a.x >> (var_2.e % 32u), 0i)), ~var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.zxz) + var_3.wxw), Struct_1(min(-22733i, 1i), firstTrailingBit(0u), firstLeadingBit(var_2.a), abs(u_input.a.x), _wgslsmith_mult_u32(var_2.b, var_2.e)), firstLeadingBit(var_2.e))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), var_3.x) * -1003f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(674f, 214f)), 359f) - var_3.x)));
}

