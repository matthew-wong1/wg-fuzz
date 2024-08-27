struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -730f;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(abs(~(global1.a & 32450u)) ^ 4294967295u);
    let var_1 = _wgslsmith_sub_i32(1i, u_input.a.x);
    let var_2 = firstTrailingBit(vec4<u32>(reverseBits(~var_0.a), firstLeadingBit(~global1.a), firstTrailingBit(abs(global1.a)), var_0.a) | vec4<u32>(var_0.a, _wgslsmith_mod_u32(1u, var_0.a), 0u, _wgslsmith_mult_u32(firstLeadingBit(global1.a), var_0.a)));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(813f, -370f, -291f) + vec3<f32>(1259f, -1013f, 1342f)))))));
    var var_4 = !vec4<bool>(false, !all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true))), !(!(var_2.x > var_0.a)));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(1u), 29125u, 29060u, ~_wgslsmith_add_u32(1u, global1.a) >> (_wgslsmith_div_u32(var_0.a, ~var_0.a) % 32u)), reverseBits(countOneBits(vec4<u32>(_wgslsmith_div_u32(var_0.a, 1u), abs(var_0.a), var_2.x & var_2.x, ~var_0.a))));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = Struct_2(0u);
    global1 = Struct_1(~arg_3.a);
    global0 = _wgslsmith_f_op_f32(-arg_0);
    var var_1 = vec4<u32>(arg_3.a, _wgslsmith_mult_u32(global1.a, ~0u), 1u, min(func_3(), arg_2.a));
    var var_2 = Struct_1(_wgslsmith_sub_u32(1u, ((arg_3.a & 1u) >> (func_3() % 32u)) & _wgslsmith_clamp_u32(abs(arg_2.a), abs(58229u), 4294967295u | arg_2.a)));
    return vec2<u32>(var_2.a, max(~(~(~arg_3.a)), _wgslsmith_mod_u32(34056u, 1u) << (0u % 32u)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(arg_1.a, arg_1.a, global1.a))), firstLeadingBit(vec3<u32>(20160u | _wgslsmith_div_u32(10391u, global1.a), _wgslsmith_dot_vec2_u32(func_2(arg_0, vec2<bool>(false, false), Struct_1(arg_1.a), arg_1), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a, 8468u), vec2<u32>(arg_1.a, global1.a))), (global1.a | 40899u) | ~global1.a)));
    global1 = Struct_1(arg_1.a);
    let var_1 = vec2<bool>(!(!select(false, all(vec2<bool>(false, true)), any(vec2<bool>(true, false)))), false);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)));
    let var_2 = Struct_2(abs(~(~global1.a)) ^ _wgslsmith_clamp_u32(max(_wgslsmith_mult_u32(var_0.x, var_0.x), ~12215u), ~arg_1.a, 68979u));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_mod_u32(func_3(), 1u));
    var var_1 = arg_0;
    let var_2 = Struct_1(var_0.a);
    let var_3 = !vec2<bool>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(arg_1.x + 1465f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), !(any(vec4<bool>(true, false, false, false)) & true));
    return Struct_1(_wgslsmith_sub_u32(0u, var_2.a));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    var var_0 = Struct_2(arg_2.x);
    var var_1 = func_4(arg_1, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-597f * -1219f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(474f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-223f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -301f)))), vec4<f32>(-1559f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-626f, -425f) + -611f), 1414f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) - _wgslsmith_f_op_f32(1401f - 139f))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false)))), ~vec4<u32>(~(~var_0.a), var_0.a, arg_1.a >> (global1.a % 32u), _wgslsmith_mod_u32(arg_1.a, var_0.a)));
    var var_2 = !vec4<bool>(all(vec2<bool>(true, true)), !(true & all(vec2<bool>(false, false))), any(vec3<bool>(false, false, true)) & true, true);
    var_1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1036f), arg_1);
    let var_3 = Struct_2(~(~abs(global1.a)) & ~(~(var_1.a << (arg_1.a % 32u))));
    return ~arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~global1.a);
    global1 = Struct_1(var_0.a | 12530u);
    var var_1 = Struct_1(~func_5(u_input.a.wyz, func_4(func_1(1000f, Struct_1(global1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 367f, 1528f, 124f)), vec4<u32>(11762u, 4294967295u, 0u, global1.a)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.a, 49697u, var_0.a, var_0.a), ~vec4<u32>(var_0.a, 1u, 1u, 1u))));
    var var_2 = -15257i;
    var_1 = func_4(Struct_1(var_0.a >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-113f, -787f, _wgslsmith_f_op_f32(f32(-1f) * -245f), 435f) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1729f, 833f, 1062f, -494f), vec4<f32>(871f, -1988f, 222f, -1682f), vec4<bool>(true, false, true, true))), vec4<f32>(1000f, 1193f, 710f, 594f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1690f, 135f, 313f, 761f), vec4<f32>(-146f, 461f, -646f, 287f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(850f, 574f, -1219f, 795f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(785f, -301f, 1171f, -922f))))), ~(~vec4<u32>(global1.a, global1.a, 4294967295u & var_0.a, global1.a)));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2533f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1274f, 588f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(268f - -497f))))));
    var_0 = Struct_1(_wgslsmith_clamp_u32(~(~(~30900u)), func_5(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -28074i)), countOneBits(-10506i), abs(-14161i)), func_1(_wgslsmith_f_op_f32(round(-1000f)), Struct_1(var_1.a)), select(~vec4<u32>(37281u, 4294967295u, var_1.a, var_1.a), vec4<u32>(var_1.a, 4294967295u, var_0.a, 1u), any(vec2<bool>(true, false)))), ~(~var_1.a) >> (4294967295u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(abs(~var_0.a), 0u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(718f, 101f) + vec2<f32>(-725f, -690f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-460f, 2207f))))))), ~select(-2147483647i, 12627i, all(vec2<bool>(true, true))));
}

