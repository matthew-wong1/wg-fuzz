struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> vec2<bool> {
    var var_0 = min(_wgslsmith_dot_vec4_i32(~vec4<i32>(2869i, u_input.b, u_input.b & -44272i, 1i), u_input.d), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(u_input.a.x, 7534i) << ((vec2<u32>(4294967295u, u_input.c) ^ vec2<u32>(u_input.c, 1u)) % vec2<u32>(32u))), ~(select(vec2<i32>(2147483647i, u_input.d.x), u_input.a.yx, false) | _wgslsmith_clamp_vec2_i32(u_input.d.xx, u_input.a.zz, vec2<i32>(-2147483647i, 34581i)))));
    let var_1 = ~_wgslsmith_mult_u32(u_input.e, _wgslsmith_sub_u32(u_input.c, ~u_input.c));
    var_0 = _wgslsmith_dot_vec3_i32(u_input.a, firstLeadingBit(u_input.d.zwy) ^ vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -47600i, -2147483647i), _wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(-1i, u_input.d.x, 1i, u_input.b))), min(u_input.a.x, 1i) >> (u_input.e % 32u), 1i));
    var var_2 = abs(_wgslsmith_div_u32(4294967295u, 38018u));
    let var_3 = vec4<u32>(~(~u_input.c), _wgslsmith_sub_u32(var_1, 5369u), _wgslsmith_mod_u32(1u, ~var_1) | min(u_input.e, ~1u), 18898u) << (firstLeadingBit((~vec4<u32>(14671u, 88691u, var_1, var_1) >> (countOneBits(vec4<u32>(u_input.e, var_1, u_input.e, u_input.c)) % vec4<u32>(32u))) ^ ((vec4<u32>(u_input.e, u_input.e, 53553u, 0u) & vec4<u32>(7485u, 4294967295u, var_1, u_input.c)) >> (vec4<u32>(var_1, 0u, 72412u, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    return select(vec2<bool>(false, !all(vec3<bool>(true, true, true))), select(vec2<bool>(-157f < arg_0, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !(!all(vec3<bool>(false, true, true)))), !vec2<bool>(any(vec4<bool>(false, false, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> i32 {
    let var_0 = select(abs(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d)), u_input.b, arg_1.x);
    var var_1 = select(!select(vec3<bool>(false & arg_2.x, false, true), select(vec3<bool>(arg_1.x, arg_2.x, false), select(vec3<bool>(false, arg_1.x, false), vec3<bool>(arg_2.x, arg_2.x, arg_1.x), vec3<bool>(false, false, false)), any(vec3<bool>(arg_1.x, true, true))), arg_1.x), !select(!(!vec3<bool>(false, arg_2.x, false)), select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_2.x, false, arg_2.x), select(vec3<bool>(arg_2.x, arg_1.x, false), vec3<bool>(arg_1.x, false, true), vec3<bool>(arg_2.x, arg_2.x, arg_1.x))), !select(vec3<bool>(true, true, arg_1.x), vec3<bool>(false, true, arg_2.x), vec3<bool>(arg_2.x, arg_1.x, arg_2.x))), !select(vec3<bool>(true && arg_2.x, arg_2.x, u_input.d.x > var_0), vec3<bool>(arg_2.x, var_0 == 68242i, true), all(vec2<bool>(false, false))));
    var_1 = vec3<bool>(true, true, all(vec3<bool>(false, any(select(arg_2, vec2<bool>(arg_1.x, false), var_1.xz)), true)));
    var_1 = !(!select(select(vec3<bool>(arg_1.x, true, false), vec3<bool>(arg_1.x, true, true), !vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(false, true, all(vec2<bool>(var_1.x, var_1.x))), !(var_0 >= 39645i)));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-649f - _wgslsmith_f_op_f32(trunc(-2779f))))), Struct_2(Struct_1(1000f)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-654f))))));
    return 51881i;
}

fn func_2() -> Struct_3 {
    let var_0 = vec3<i32>(u_input.b, func_4(abs(select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, 39913u, 55017u), vec3<u32>(u_input.e, u_input.c, u_input.c)), vec3<u32>(u_input.e, 4294967295u, u_input.e), vec3<bool>(true, true, true))), select(func_3(_wgslsmith_f_op_f32(sign(586f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-117f, 318f, -1008f, -869f))), select(func_3(-809f, vec4<f32>(1061f, -1000f, -1087f, 619f)), vec2<bool>(true, true), any(vec3<bool>(true, false, false))), all(vec4<bool>(true, true, false, false))), select(vec2<bool>(true, true), func_3(_wgslsmith_f_op_f32(776f * 559f), _wgslsmith_div_vec4_f32(vec4<f32>(521f, -266f, -995f, -944f), vec4<f32>(-1000f, -1795f, -952f, 393f))), true)), u_input.a.x);
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(419f)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(718f, -620f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-933f - 343f) * -264f)));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    var_0 = func_2();
    var_0 = Struct_3(func_2().b.a, func_2().b, var_0.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1327f) - var_0.c.a) + -471f) * 965f));
    var var_2 = var_0.b;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-755f + var_0.b.a.a)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(min(arg_3, 19318u)), 0u), select(max(~vec2<u32>(4294967295u, 77796u), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3, 1u), vec2<u32>(u_input.c, arg_3), vec2<u32>(arg_3, u_input.c))), vec2<u32>(u_input.c << (41992u % 32u), u_input.e | 1u), !select(vec2<bool>(true, true), vec2<bool>(false, false), false))) << (_wgslsmith_add_u32(_wgslsmith_add_u32(arg_3, firstTrailingBit(abs(arg_3))), ~max(select(u_input.e, arg_3, false), 1u)) % 32u);
    let var_1 = Struct_2(func_2().c);
    let var_2 = any(!func_3(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-1287f - 973f)), vec4<f32>(var_1.a.a, arg_2, _wgslsmith_f_op_f32(sign(1180f)), _wgslsmith_f_op_f32(var_1.a.a - -1041f))));
    var var_3 = true;
    var_3 = var_2;
    return arg_0.xw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(460f, 713f, 226f, 1168f) + vec4<f32>(-422f, 391f, -403f, -1345f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(171f, 822f, -147f, 572f), vec4<f32>(490f, 2236f, 167f, 275f), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(765f, 2023f, -463f, 119f) * vec4<f32>(-2099f, -976f, 1636f, 1843f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-831f, 293f, -951f, -283f), vec4<f32>(147f, 922f, 962f, -635f)))))), Struct_3(Struct_1(-1148f), func_1(), func_2().b.a), -443f, _wgslsmith_div_u32(~(~(~1u)), countOneBits(1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.e, 6117u) | ~vec2<u32>(37973u, 29690u)), select(_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.e, u_input.e), true), ~vec2<u32>(u_input.c, 0u)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.e), ~vec2<u32>(1u, u_input.c)), all(vec2<bool>(true, true))), firstLeadingBit(~(~vec2<u32>(u_input.c, u_input.c)))), u_input.d.yx, max(vec2<u32>(0u, u_input.e) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.e, u_input.c) & vec2<u32>(34085u, 86348u)), max(vec2<u32>(~u_input.e, min(u_input.e, 1u)), select(vec2<u32>(u_input.c, 29019u) & vec2<u32>(43647u, 1u), vec2<u32>(21882u, 19106u), select(vec2<bool>(false, true), vec2<bool>(false, true), true)))));
}

