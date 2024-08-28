struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    var var_0 = -204f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(332f)))));
    var var_1 = -firstLeadingBit(countOneBits(vec4<i32>(1i, -1i, 2147483647i, 17543i) << (vec4<u32>(4294967295u, 57740u, u_input.a, 0u) % vec4<u32>(32u))) << (vec4<u32>(min(u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 13138u), vec2<u32>(37032u, u_input.a)), 15225u, 50574u) % vec4<u32>(32u)));
    var var_2 = Struct_1(firstTrailingBit(~_wgslsmith_mult_u32(1u, u_input.a)) << (11607u % 32u));
    return -vec4<i32>(countOneBits(~(~(-1i))), _wgslsmith_dot_vec3_i32(~var_1.ywx, var_1.zxx), 19012i, var_1.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_u32(61299u, ~u_input.a) & u_input.a);
    let var_1 = !(!select(true || all(vec2<bool>(false, false)), all(vec4<bool>(true, false, true, false)), true));
    var var_2 = Struct_1(4930u);
    var_2 = var_0;
    var var_3 = ~countOneBits(-(~func_3()));
    return Struct_1(10655u);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(646f - _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1264f, arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))) + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + arg_0)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0)), -938f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))))));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(4294967295u, ~countOneBits(arg_1.a)));
    var var_3 = arg_1;
    var_1 = Struct_1(func_2().a);
    return Struct_1(_wgslsmith_mult_u32(var_3.a, abs(max(max(var_1.a, 75275u), u_input.a))));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(846f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1870f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(941f + -215f)), 684f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 102f, -480f, 595f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(-1642f, -562f, 690f, -1080f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-131f, _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -394f, -834f, var_0.x) * vec4<f32>(-297f, 1000f, var_0.x, -474f)), vec4<f32>(1358f, -378f, 611f, var_0.x), !vec4<bool>(arg_1.x, arg_0, true, false))))))));
    let var_1 = ~vec2<u32>(u_input.a, ~_wgslsmith_mod_u32(0u, ~arg_3.a));
    var var_2 = 12513u;
    return Struct_1(4294967295u);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_f32(round(812f)), func_5(!any(vec3<bool>(true, true, true)), vec4<bool>(true == (arg_0.a != 17234u), all(vec2<bool>(true, false)) && true, true, true), -((vec3<i32>(-1i, 1i, 1i) << (vec3<u32>(arg_0.a, 0u, 1u) % vec3<u32>(32u))) & max(vec3<i32>(-31243i, -9351i, 0i), vec3<i32>(-1i, -9797i, 0i))), arg_0));
    let var_1 = Struct_1(_wgslsmith_mod_u32(abs(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_0.a), vec3<u32>(0u, var_0.a, 4294967295u)))), u_input.a));
    let var_2 = false;
    var var_3 = func_2();
    var var_4 = ~abs(1i) >> (func_2().a % 32u);
    return arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = all(!(!vec3<bool>(true, true, any(vec3<bool>(true, false, false)))));
    let var_1 = func_6(func_5(var_0, vec4<bool>(true, true, true, true), ~abs(vec3<i32>(-24957i, -2147483647i, -30577i)), func_4(_wgslsmith_div_f32(1098f, -860f), func_2())));
    let var_2 = Struct_1(_wgslsmith_sub_u32(u_input.a, ~_wgslsmith_add_u32(u_input.a, max(var_1.a, var_1.a))));
    var var_3 = !(!(!any(vec2<bool>(true, true))));
    let var_4 = var_2;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = all(!select(vec2<bool>(true, false), vec2<bool>(true, all(vec3<bool>(true, false, true))), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true))));
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-563f * -520f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1375f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(427f)) * -673f), -283f)))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-472f - _wgslsmith_f_op_f32(min(-253f, _wgslsmith_f_op_f32(trunc(371f)))))));
    var_1 = !(abs(-20409i) > firstTrailingBit(firstTrailingBit(-2147483647i)));
    var_1 = !any(vec4<bool>(any(vec4<bool>(false, true, true, true)), true, true, false));
    var var_2 = -23607i;
    var_1 = !any(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), any(vec2<bool>(false, false))), true));
    var_2 = _wgslsmith_sub_i32(-(-710i >> (0u % 32u)) & (1i << (u_input.a % 32u)), -39445i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-517f, 935f, 519f)))))), reverseBits(~(~vec2<u32>(u_input.a, u_input.a))) << (firstTrailingBit(~(~vec2<u32>(1u, 5205u))) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1648u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a, 14631u, 55570u, 1u), reverseBits(vec4<u32>(u_input.a, 0u, u_input.a, 32535u)))), firstTrailingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 5655u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_0.a, var_0.a))))));
}

