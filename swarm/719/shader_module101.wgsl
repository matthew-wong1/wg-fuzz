struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(-1000f, u_input.a.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-750f, _wgslsmith_div_f32(-138f, 1000f), _wgslsmith_f_op_f32(ceil(902f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1787f, 605f, -709f) + vec3<f32>(-601f, -2114f, -1294f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(102f, -241f, -559f))))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-648f, -1228f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-402f, 455f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-963f, 2108f)))), vec2<bool>(true, true)))), Struct_1(min(50428u >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(u_input.a.ywx | vec3<u32>(u_input.a.x, 37612u, 10487u), vec3<u32>(58605u, u_input.a.x, u_input.a.x)))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(581f * _wgslsmith_f_op_f32(642f + _wgslsmith_f_op_f32(490f - _wgslsmith_f_op_f32(var_0.d.x * -670f)))), 4294967295u, vec3<f32>(var_0.a, var_0.d.x, var_0.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.yz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 101f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.c.xz * vec2<f32>(var_0.a, var_0.d.x))))), var_0.c.zx), Struct_1(var_0.e.a));
    var var_1 = var_0.e;
    let var_2 = _wgslsmith_add_vec3_i32(~(~(-select(vec3<i32>(0i, 26094i, 0i), vec3<i32>(-15974i, -18675i, -2147483647i), vec3<bool>(false, false, true)))), firstTrailingBit(-vec3<i32>(_wgslsmith_mod_i32(83526i, 2147483647i), i32(-1i) * -2147483647i, 26529i)));
    let var_3 = vec4<i32>(~var_2.x, var_2.x, -19620i, i32(-1i) * -_wgslsmith_mod_i32(1i, var_2.x));
    return 1u;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_u32(~u_input.a.x, 0u)), true, u_input.a.x);
    var_0 = Struct_2(Struct_1(var_0.c), true, ~u_input.a.x);
    var_0 = Struct_2(Struct_1(_wgslsmith_sub_u32(1u, ~52957u & ~var_0.a.a)), false, ~firstLeadingBit(_wgslsmith_div_u32(var_0.a.a, 1u)));
    var var_1 = Struct_1((4294967295u ^ countOneBits(_wgslsmith_sub_u32(var_0.a.a, var_0.a.a))) | _wgslsmith_div_u32(abs(func_3()), ~u_input.a.x));
    var var_2 = Struct_4(Struct_1(var_0.c));
    return Struct_4(var_0.a);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = vec4<u32>(41676u, ~arg_0.a.a, ~(~arg_0.a.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a));
    let var_1 = _wgslsmith_f_op_f32(round(1529f));
    let var_2 = arg_1;
    let var_3 = u_input.a;
    var var_4 = 1u;
    return _wgslsmith_f_op_f32(var_1 * var_1);
}

fn func_1(arg_0: bool, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2413f), _wgslsmith_f_op_f32(func_4(func_2(), 10047i, true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1031f, -878f) - vec2<f32>(-2789f, 239f)) - vec2<f32>(-1726f, 267f)))));
    var var_1 = !arg_0;
    var var_2 = firstLeadingBit(select(_wgslsmith_sub_vec3_u32(~u_input.a.zwy, min(u_input.a.ywz, firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 0u)))), _wgslsmith_div_vec3_u32(u_input.a.xwx, ~vec3<u32>(0u, u_input.a.x, u_input.a.x)), false));
    var_2 = ~u_input.a.yzw;
    var var_3 = _wgslsmith_f_op_f32(-728f - _wgslsmith_f_op_f32(f32(-1f) * -1437f));
    return _wgslsmith_f_op_f32(select(-206f, _wgslsmith_div_f32(1073f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2435f)))), all(!select(!vec3<bool>(arg_0, false, true), !vec3<bool>(false, false, arg_0), !arg_0))));
}

fn func_5(arg_0: f32, arg_1: u32) -> Struct_4 {
    var var_0 = _wgslsmith_div_f32(arg_0, arg_0);
    var var_1 = vec2<bool>(!(false || !any(vec3<bool>(true, true, true))), all(vec4<bool>(true, true, true, true)));
    var_1 = vec2<bool>(false, all(!select(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, true, var_1.x, var_1.x)), vec4<bool>(true, var_1.x, false, var_1.x))));
    var_1 = select(select(!vec2<bool>(select(var_1.x, var_1.x, false), any(vec4<bool>(var_1.x, false, false, var_1.x))), vec2<bool>(!var_1.x, true), true), !select(!select(vec2<bool>(false, var_1.x), vec2<bool>(true, var_1.x), var_1.x), !(!vec2<bool>(true, var_1.x)), select(vec2<bool>(true, false), select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, true), false), !vec2<bool>(true, var_1.x))), !(!(!select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, false)))));
    var var_2 = select(select(vec2<bool>(var_1.x, false), vec2<bool>(226f >= _wgslsmith_f_op_f32(sign(arg_0)), !(!var_1.x)), true), !vec2<bool>(all(vec3<bool>(true, true, true)), false), false);
    return func_2();
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_1(0u);
    let var_1 = u_input.a;
    let var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -1126f))), 17508u).a;
    let var_3 = Struct_1(25721u);
    var var_4 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(select(~5625u, 50537u, arg_3), _wgslsmith_mod_u32(~31814u, _wgslsmith_add_u32(var_0.a, var_0.a)))), vec2<u32>(max(~var_2.a, var_1.x), ~(~_wgslsmith_mult_u32(4294967295u, var_1.x))));
    return Struct_2(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-160f)), _wgslsmith_f_op_f32(-449f - _wgslsmith_f_op_f32(-1000f - arg_1))), ~0u).a, select(arg_2.x, all(select(arg_2.xw, vec2<bool>(true, arg_3), true)), arg_2.x), _wgslsmith_clamp_u32(func_5(_wgslsmith_f_op_f32(func_4(Struct_4(var_0), 2147483647i, arg_2.x)), var_0.a).a.a, arg_0.a.a, func_3() & _wgslsmith_add_u32(1u, var_3.a)) >> (arg_0.a.a % 32u));
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = func_6(func_2(), _wgslsmith_f_op_f32(677f * -581f), vec4<bool>(!all(vec2<bool>(arg_1.b, false)) | true, ((arg_1.b & false) | !arg_1.b) | all(!vec3<bool>(false, arg_1.b, arg_1.b)), true, true), arg_1.b);
    var_0 = func_6(Struct_4(arg_2), _wgslsmith_f_op_f32(323f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-640f, -1149f)) + _wgslsmith_f_op_f32(step(808f, 572f))), _wgslsmith_div_f32(-1297f, -1118f))), vec4<bool>(any(vec3<bool>(true, arg_1.b, select(true, false, arg_1.b))), arg_1.b, false, all(select(vec2<bool>(arg_1.b, var_0.b), vec2<bool>(true, true), select(vec2<bool>(false, arg_1.b), vec2<bool>(arg_1.b, var_0.b), true)))), arg_1.b);
    let var_1 = false;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-974f - _wgslsmith_div_f32(275f, 1550f)) - _wgslsmith_f_op_f32(sign(574f))) - 269f), 0u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(272f, 916f))), 1151f, 165f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(312f, -815f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(971f, 2018f))) + vec2<f32>(_wgslsmith_div_f32(-2106f, 967f), _wgslsmith_f_op_f32(720f * -179f))), select(!select(vec2<bool>(false, true), vec2<bool>(var_0.b, true), false), !vec2<bool>(false, arg_1.b), !vec2<bool>(false, arg_1.b)))), arg_1.a);
    var var_3 = func_2();
    return vec4<u32>(0u, ~arg_3.x, _wgslsmith_dot_vec3_u32(u_input.a.wyy, vec3<u32>(var_2.e.a, 30970u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 73081u, arg_0), vec4<u32>(arg_0, 0u, 9714u, u_input.a.x)))), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let var_1 = func_7(min(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 54187u, 1u) ^ u_input.a, firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 6048u, u_input.a.x))), min(u_input.a.x, 54324u)), func_6(func_5(_wgslsmith_f_op_f32(func_1(true, 14616i)), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(951f - -1409f))) + 914f), select(vec4<bool>(true, true, true, all(vec3<bool>(true, true, false))), vec4<bool>(select(true, true, true), any(vec4<bool>(false, false, true, true)), true, true), false), true), Struct_1(81595u), select((u_input.a.zw ^ u_input.a.zy) << (~u_input.a.wz % vec2<u32>(32u)), ~(~min(u_input.a.wy, u_input.a.wx)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(98080u, abs(vec4<u32>(~(~1u), var_1.x, (4294967295u & u_input.a.x) & ~var_1.x, 0u)), var_0);
}

