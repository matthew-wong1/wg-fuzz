struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(arg_0.a.x, arg_0.a.x && ((false || arg_0.a.x) | false), arg_0.a.x, arg_0.a.x));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) - arg_1), arg_1)))), _wgslsmith_f_op_f32(floor(arg_1)));
    let var_1 = Struct_1(vec4<bool>(select(true, true, false), any(!(!vec4<bool>(var_0.a.x, arg_0.a.x, var_0.a.x, arg_0.a.x))), !(!select(true, var_0.a.x, false)), true));
    global0 = 1f;
    let var_2 = var_1;
    return var_0;
}

fn func_3() -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(true, true, true, true));
    var_0 = func_2(func_2(Struct_1(var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(335f, 330f))), _wgslsmith_f_op_f32(sign(-2086f))), vec4<u32>(4294967295u, abs(u_input.e), ~_wgslsmith_mod_u32(u_input.e, u_input.b.x), ~u_input.b.x), 42105u), _wgslsmith_f_op_f32(f32(-1f) * -429f), vec4<u32>(~abs(u_input.e) ^ ~countOneBits(u_input.e), 0u, ~(~1u), 4294967295u), u_input.e);
    var var_1 = u_input.a.x < _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.d.x, (u_input.a.x ^ 0i) | 1i), -(abs(u_input.c.x) & -1i), u_input.c.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(211f, -414f)), _wgslsmith_f_op_f32(-469f * -828f))))) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-742f * _wgslsmith_f_op_f32(411f - -211f)), -434f)), 839f));
    var var_3 = func_2(Struct_1(var_0.a), _wgslsmith_f_op_f32(-637f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-918f, var_2.x))))), ~(~firstLeadingBit(vec4<u32>(u_input.e, u_input.e, 0u, 1u))) >> (vec4<u32>(_wgslsmith_mod_u32(~u_input.e, _wgslsmith_mod_u32(1u, u_input.b.x)), u_input.e | u_input.b.x, 57100u, reverseBits(u_input.e)) % vec4<u32>(32u)), u_input.b.x);
    return func_2(Struct_1(select(select(vec4<bool>(var_0.a.x, false, true, var_0.a.x), var_3.a, vec4<bool>(true, var_3.a.x, false, var_0.a.x)), vec4<bool>(true, !var_3.a.x, 4294967295u > u_input.e, false), vec4<bool>(var_2.x == var_2.x, u_input.d.x >= u_input.d.x, true, !var_0.a.x))), var_2.x, abs(firstLeadingBit(min(abs(vec4<u32>(u_input.b.x, u_input.e, 41932u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 104383u, 1u, u_input.b.x), vec4<u32>(4294967295u, 4294967295u, 1u, 4145u))))), 4294967295u >> (~u_input.b.x % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = vec3<i32>(-965i, _wgslsmith_mult_i32(~(_wgslsmith_sub_i32(u_input.a.x, -13568i) << (_wgslsmith_mult_u32(arg_2, arg_2) % 32u)), 1i), -2147483647i);
    let var_1 = -1712f;
    var var_2 = vec2<u32>(select(4294967295u, ~(~arg_2), arg_0.a.x) << (12134u % 32u), _wgslsmith_dot_vec4_u32(~firstLeadingBit(~vec4<u32>(arg_2, arg_2, arg_2, 1u)), vec4<u32>(countOneBits(0u), firstTrailingBit(1u), u_input.e, max(4294967295u, ~arg_2))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1)));
    var var_4 = func_2(arg_0, -505f, countOneBits(vec4<u32>(var_2.x, _wgslsmith_clamp_u32(30347u, u_input.e, 16138u), ~u_input.e, 112636u) << ((_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 1u, 11044u, u_input.e), vec4<u32>(u_input.e, 53449u, 0u, 48144u)) & (vec4<u32>(var_2.x, 8312u, var_2.x, 4294967295u) >> (vec4<u32>(0u, 1u, u_input.e, var_2.x) % vec4<u32>(32u)))) % vec4<u32>(32u))), u_input.b.x);
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(round(266f));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(arg_0 + 160f));
    let var_1 = arg_1;
    let var_2 = vec2<bool>(!(func_2(var_1, -965f, vec4<u32>(u_input.e, arg_2.x, 28074u, 0u), 7455u).a.x & true) && select(arg_1.a.x, true, _wgslsmith_f_op_f32(exp2(arg_0)) < _wgslsmith_f_op_f32(652f - -660f)), !(true & ((u_input.e ^ arg_2.x) <= (arg_2.x | 4294967295u))));
    let var_3 = Struct_1(vec4<bool>(arg_1.a.x, all(vec3<bool>(true, true, true)) & arg_1.a.x, all(!arg_1.a), !(!all(vec2<bool>(var_1.a.x, true)))));
    return var_1;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(!select(!select(vec4<bool>(false, true, arg_0.x, false), vec4<bool>(arg_0.x, true, false, arg_0.x), arg_0.x), !(!arg_0), vec4<bool>(true, arg_0.x, select(arg_0.x, arg_0.x, false), any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1127f, 501f, 918f, -206f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1667f, -693f, -425f, 1095f)), vec4<f32>(-1174f, -164f, 1234f, -427f))))));
    let var_2 = u_input.b.x;
    var var_3 = func_5(823f, func_2(Struct_1(vec4<bool>(any(vec3<bool>(true, false, arg_0.x)), true, true, var_0.a.x)), -943f, firstLeadingBit(vec4<u32>(5657u, u_input.b.x, ~var_2, 1u)), ~4294967295u), u_input.b, select(var_0.a.yzy, func_2(func_4(func_3(), arg_0.x, ~1u), var_1.x, vec4<u32>(0u, ~1u, 1u, u_input.b.x), 1u).a.wzy, !arg_0.ywx));
    var_0 = func_3();
    return Struct_1(arg_0);
}

fn func_6(arg_0: Struct_1) -> f32 {
    global0 = 1707f;
    let var_0 = vec2<f32>(308f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(2451f)))));
    var var_1 = func_1(vec4<bool>(!(!(var_0.x < var_0.x)), all(arg_0.a), (-20487i & firstLeadingBit(u_input.c.x)) > u_input.a.x, true && (select(true, arg_0.a.x, arg_0.a.x) | true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(780f - -1717f)) + _wgslsmith_f_op_f32(775f * 1293f));
    let var_3 = vec4<u32>(abs(_wgslsmith_sub_u32(22951u, u_input.b.x)), ~max(~1u, u_input.b.x), u_input.b.x, _wgslsmith_mult_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 18391u, 1u, 47856u), ~vec4<u32>(u_input.e, 21121u, u_input.b.x, u_input.b.x)), ~79568u), 0u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -1927f)) + _wgslsmith_f_op_f32(-904f + var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, any(vec3<bool>(false, false, false))), true)));
    global0 = -2564f;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(244f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(101f + -1305f), -650f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -701f))))), var_0.x));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(199f * -627f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 1747f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1103f, 526f, !var_0.x)), _wgslsmith_f_op_f32(func_6(func_1(vec4<bool>(var_0.x, true, var_0.x, true))))))));
    global0 = 683f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1172f - _wgslsmith_f_op_f32(-603f - 1449f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))) + _wgslsmith_f_op_f32(-1641f + -1000f))), _wgslsmith_f_op_f32(trunc(1234f)))));
    let var_1 = func_5(-221f, Struct_1(func_1(func_2(func_4(Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), true, u_input.e), _wgslsmith_div_f32(-524f, -1000f), ~vec4<u32>(0u, u_input.b.x, u_input.e, u_input.b.x), u_input.b.x | 4294967295u).a).a), countOneBits(firstTrailingBit(u_input.b | u_input.b)), vec3<bool>(all(vec2<bool>(true, var_0.x)) && !(u_input.b.x <= 4294967295u), var_0.x, false));
    var var_2 = func_5(_wgslsmith_f_op_f32(202f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-165f + _wgslsmith_f_op_f32(select(-1156f, 2055f, var_1.a.x))))), Struct_1(!(!vec4<bool>(true, var_1.a.x, false, false))), u_input.b, vec3<bool>(false, select(!var_1.a.x && false, var_1.a.x, false), (-7075i == _wgslsmith_add_i32(u_input.d.x, u_input.d.x)) & true)).a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_3, var_3), _wgslsmith_f_op_f32(ceil(var_3)), _wgslsmith_f_op_f32(func_6(var_1))) + vec3<f32>(-1000f, var_3, _wgslsmith_f_op_f32(var_3 * 419f)))), _wgslsmith_add_u32(0u, ~((u_input.e & 1u) | u_input.b.x)), firstLeadingBit(u_input.c.x | 1i));
}

