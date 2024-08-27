struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> f32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1221f, _wgslsmith_f_op_f32(ceil(1000f)), 680f, -1992f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1220f, _wgslsmith_div_f32(1002f, -1222f), _wgslsmith_div_f32(-2029f, 675f), _wgslsmith_f_op_f32(f32(-1f) * -1832f))))));
    var_0 = !((u_input.b.x < -1i) && false);
    var var_2 = arg_2 & select(true, arg_2 | arg_2, !all(select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, true), vec2<bool>(arg_2, true))));
    var var_3 = -1900f;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(max(-113f, -148f)))) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)))))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(func_3(arg_0, Struct_2(69790u), true)), _wgslsmith_f_op_f32(max(1742f, 532f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-758f, -2178f, -250f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(310f, 691f))))), select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))))), select(70680i, u_input.b.x, _wgslsmith_sub_u32(u_input.a.x, 1u) == abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0, arg_0), vec4<u32>(u_input.e, u_input.d, arg_0, u_input.c)))));
    var var_1 = Struct_2(firstLeadingBit(_wgslsmith_sub_u32(u_input.d, 0u)));
    var_1 = Struct_2(_wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, u_input.a), _wgslsmith_mult_vec3_u32(u_input.a, u_input.a))), ~_wgslsmith_mult_u32(var_1.a, var_1.a)));
    var_1 = Struct_2(87098u);
    let var_2 = !((40875u >= ~(4294967295u & u_input.c)) & var_0.c.x);
    return Struct_1(vec3<f32>(521f, var_0.a.x, -1070f), _wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(vec2<f32>(-215f, -1937f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(var_0.b.x, var_0.b.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 677f))))), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(737f, 1707f, var_0.c.x)) * _wgslsmith_f_op_f32(-var_0.a.x)) != _wgslsmith_f_op_f32(-1171f + var_0.b.x), any(select(select(vec3<bool>(var_2, var_2, var_0.c.x), vec3<bool>(var_2, var_2, var_2), true), vec3<bool>(var_0.c.x, var_2, true), var_1.a == var_1.a))), _wgslsmith_sub_i32(-1i, -(~u_input.b.x)));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(min(~u_input.d, ~u_input.e));
    return Struct_2(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(4294967295u, 29755u)), vec2<u32>(u_input.e, _wgslsmith_div_u32(88066u, u_input.d))) & u_input.e);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_div_i32(-(i32(-1i) * -2147483647i), u_input.b.x | (-_wgslsmith_dot_vec3_i32(u_input.b, u_input.b) | (_wgslsmith_mult_i32(-1i, 2147483647i) & u_input.b.x)));
    var var_2 = func_1();
    let var_3 = ~firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.c, _wgslsmith_sub_u32(var_0.a, 11489u)), (43232u | u_input.d) << (min(var_0.a, 11449u) % 32u)));
    var var_4 = 1u;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.d & ~u_input.d, func_1(), ~u_input.a.zx);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1937f))));
    var_0 = Struct_2(u_input.e);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -959f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1915f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~min(var_0.a, 4294967295u), Struct_2(~u_input.e), false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-609f, -712f)) - -695f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 134f, var_2, var_2))) + vec4<f32>(var_2, _wgslsmith_f_op_f32(max(1711f, 941f)), _wgslsmith_f_op_f32(var_2 * -202f), var_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1698f, var_2, var_2, -1096f) + vec4<f32>(var_2, var_2, var_2, var_2)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1161f)), 1378f, -925f, var_2) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1717f, var_2, var_2, var_2) - vec4<f32>(-1519f, 853f, var_2, -1201f)))), vec4<f32>(_wgslsmith_f_op_f32(func_3(4294967295u, Struct_2(1u), true)), _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(var_2 * var_2)), var_2, var_2), false)), true));
    var_0 = Struct_2(u_input.e);
    var var_4 = func_4(~_wgslsmith_div_u32(u_input.d, 0u), Struct_2(18646u), vec2<u32>(27856u, ~var_0.a));
    var_1 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2))), 528f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, var_2, var_2, var_3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -1062f, -1543f, 834f))), u_input.b.x <= -1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1042f, var_3.x, var_2, -932f)))))), var_2);
}

