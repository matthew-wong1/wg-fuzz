struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(u_input.c | u_input.c, countOneBits(u_input.c)), select(~max(vec4<u32>(arg_0.x, 0u, arg_0.x, 37595u), vec4<u32>(0u, arg_0.x, u_input.d, 18957u)), max(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 37548u), vec4<u32>(arg_0.x, arg_0.x, 0u, 55578u)), arg_1.x)) ^ vec4<u32>(~u_input.c.x ^ arg_0.x, arg_0.x, ~14078u, max(46415u, 21729u));
    let var_1 = arg_1.yx;
    var var_2 = _wgslsmith_f_op_f32(-arg_3);
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), 2028f);
    let var_3 = var_0.xy;
    return u_input.e;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: bool) -> Struct_3 {
    var var_0 = u_input.c.x;
    var_0 = ~(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 61880u), u_input.c.zz))));
    var var_1 = arg_2;
    var var_2 = vec4<i32>(~u_input.b.x, func_3(~u_input.c.yxz, !(!(!vec3<bool>(true, arg_2, arg_2))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.xz, ~u_input.b.xx, ~u_input.b.yy), _wgslsmith_mod_vec2_i32(vec2<i32>(8254i, -52032i), vec2<i32>(u_input.b.x, u_input.b.x))), _wgslsmith_f_op_f32(-arg_0.x)), ~_wgslsmith_mod_i32(u_input.e, u_input.b.x), ~func_3(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) & (vec3<u32>(4294967295u, 19780u, arg_1) & vec3<u32>(4294967295u, arg_1, 52852u)), !select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, false, arg_2), true), _wgslsmith_add_i32(u_input.b.x, 0i), 660f));
    var var_3 = min(u_input.c.yww, _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 96u, 1u) ^ vec3<u32>(arg_1, 4294967295u, arg_1), vec3<u32>(4294967295u, 8215u, arg_1)), u_input.c.zwx));
    return Struct_3(var_3.x, any(!select(vec4<bool>(false, false, true, arg_2), vec4<bool>(arg_2, true, false, true), true)) && !arg_2, Struct_2(-1516f, ~(~u_input.c.yx) | vec2<u32>(firstTrailingBit(67116u), _wgslsmith_div_u32(var_3.x, var_3.x)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), any(vec4<bool>(arg_2, arg_2, true, arg_2)), !vec4<bool>(arg_2, true, arg_2, arg_2), any(!vec3<bool>(true, arg_2, false))), Struct_1(arg_0.x, true, !(!vec4<bool>(true, arg_2, false, true)), true), false));
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1067f, arg_0.c.d.a, arg_0.c.a, arg_0.c.a), vec4<f32>(arg_0.c.a, arg_0.c.d.a, arg_0.c.c.a, 443f), vec4<bool>(true, true, false, true))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-746f, -822f, arg_0.c.a, arg_0.c.c.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.c.a, 766f, -1050f, arg_0.c.a))))), 19617u, select(arg_0.b, all(select(!arg_0.c.d.c.yy, vec2<bool>(true, true), !arg_0.c.d.c.xz)), arg_0.c.d.b)).c.a;
    let var_1 = !arg_0.c.c.c.wzy;
    let var_2 = func_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c.d.a)), _wgslsmith_f_op_f32(var_0 + arg_0.c.a), arg_0.c.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - -865f)))), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(u_input.c.x), _wgslsmith_div_u32(~0u, arg_0.c.b.x), _wgslsmith_dot_vec2_u32(arg_0.c.b, vec2<u32>(0u, 1u)) << (~arg_0.c.b.x % 32u), ~5734u), ~vec4<u32>(u_input.c.x, 0u, ~0u, _wgslsmith_clamp_u32(40248u, 16512u, 44820u))), !var_1.x).c.d;
    var var_3 = func_2(vec4<f32>(_wgslsmith_f_op_f32(415f + var_0), -1420f, -1101f, -1760f), 0u, u_input.d > arg_0.c.b.x).c.d;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(598f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.c.a), -477f))), var_0, _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, -375f, 1630f, var_3.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, arg_0.c.a, var_2.a, var_0) - vec4<f32>(var_0, 1214f, var_0, -1000f)))), abs(~4790u), !(!arg_0.b)).c.a));
    return var_0;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = false & !any(!(!vec3<bool>(arg_0.c.d, arg_0.d.b, arg_0.e)));
    let var_1 = ~u_input.e;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * -426f) + 208f);
    var_2 = func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1006f + -2005f), _wgslsmith_f_op_f32(ceil(-1099f)), func_2(vec4<f32>(721f, arg_0.d.a, 181f, 330f), u_input.c.x, arg_0.e).c.d.a, _wgslsmith_f_op_f32(-arg_0.a)))))), ~firstLeadingBit(4256u), any(arg_0.d.c.wy)).c.c.a;
    var var_3 = Struct_3(~4294967295u, true, func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -827f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0.a)), arg_0.d.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)) * _wgslsmith_f_op_f32(round(arg_0.d.a))), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(627f + arg_0.a))), reverseBits(u_input.d), arg_0.c.d).c);
    return arg_0.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    let var_0 = ~(~vec4<u32>(u_input.c.x, u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), ~u_input.c.x) ^ ~(vec4<u32>(u_input.c.x, u_input.d, u_input.d, 3380u) | countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 28359u))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-arg_0.a), vec2<u32>(abs(~(~4294967295u)), ~(~var_0.x & countOneBits(u_input.d))), func_5(Struct_2(_wgslsmith_f_op_f32(func_4(func_2(vec4<f32>(925f, arg_1.x, arg_0.a, 254f), 40686u, arg_0.d))), ~(~vec2<u32>(0u, u_input.c.x)), arg_0, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-399f, -2246f, arg_0.a, arg_0.a) * vec4<f32>(1231f, -814f, arg_0.a, 1151f)), abs(29200u), arg_0.c.x).c.d, any(vec2<bool>(arg_0.c.x, false)) || (u_input.a == u_input.b.x))), arg_0, true);
    let var_2 = abs(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.e, 0i, u_input.b.x), vec4<i32>(1i, 43187i, -58193i, 0i)), i32(-1i) * -1i) << (~(~reverseBits(vec2<u32>(var_0.x, 4294967295u))) % vec2<u32>(32u)));
    var var_3 = func_5(Struct_2(arg_1.x, vec2<u32>(~(~u_input.d), ~_wgslsmith_add_u32(var_1.b.x, var_0.x)), Struct_1(_wgslsmith_f_op_f32(1683f * var_1.c.a), false, select(select(vec4<bool>(true, true, arg_0.d, true), var_1.c.c, vec4<bool>(false, arg_0.d, var_1.e, var_1.c.d)), !arg_0.c, true), all(arg_0.c.xwy)), Struct_1(1725f, any(func_2(vec4<f32>(-1227f, var_1.d.a, -1147f, arg_1.x), var_1.b.x, true).c.c.c.xyy), arg_0.c, select(!var_1.d.d, var_1.c.d, false)), select(var_1.d.b, !func_2(vec4<f32>(-1582f, 116f, arg_1.x, -1827f), u_input.c.x, true).c.d.c.x, arg_0.d))).c.zw;
    var_3 = vec2<bool>(all(vec3<bool>(false, any(vec4<bool>(false, true, var_1.e, true)), var_3.x)), true);
    return -_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(1i, _wgslsmith_div_i32(var_2.x, var_2.x), u_input.b.x, ~(-13609i))), abs(625i | (18011i << (var_0.x % 32u))), _wgslsmith_sub_i32(2147483647i, _wgslsmith_clamp_i32(u_input.e, 43975i, ~0i)));
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_3) -> i32 {
    let var_0 = -firstTrailingBit(reverseBits(~vec2<i32>(arg_0, arg_1) << (vec2<u32>(arg_3.a, 44112u) % vec2<u32>(32u))));
    var var_1 = firstTrailingBit(arg_0 & _wgslsmith_sub_i32(-arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 12398i), vec3<i32>(arg_1, -1i, 2147483647i)))) ^ (arg_0 << (arg_3.c.b.x % 32u));
    var_1 = u_input.e;
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-185f, arg_2.x, 2375f, 552f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.c.a, -1451f, 781f, arg_2.x)))))), u_input.d, (_wgslsmith_dot_vec4_u32(~u_input.c, u_input.c) << (~(u_input.d | u_input.d) % 32u)) < (arg_3.a ^ abs(_wgslsmith_div_u32(arg_3.a, u_input.d)))).c;
    let var_3 = func_2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1340f + arg_3.c.c.a))))), var_2.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.c.a)) + func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1472f, 1094f, var_2.d.a, var_2.a)), reverseBits(arg_3.c.b.x), func_5(var_2).b).c.c.a), var_2.c.a), _wgslsmith_add_u32(~abs(~1u), var_2.b.x), all(!(!vec4<bool>(true, false, arg_3.c.d.d, var_2.e))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_6(~(firstLeadingBit(func_1(Struct_1(-1636f, false, vec4<bool>(var_0, false, true, false), false), vec2<f32>(-319f, 1000f))) | (max(-19072i, -9332i) & _wgslsmith_div_i32(34792i, u_input.e))), u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-664f, 513f, 790f), _wgslsmith_div_vec3_f32(vec3<f32>(554f, 194f, -1000f), vec3<f32>(-3014f, 211f, 1022f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1175f, -465f, 829f), vec3<f32>(235f, -1179f, 203f), vec3<bool>(false, var_0, true)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1042f - -1911f)), _wgslsmith_f_op_f32(f32(-1f) * -1376f), _wgslsmith_f_op_f32(trunc(-1317f)))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-747f, -684f, 509f, 832f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-736f, 1320f, -419f, -273f) + _wgslsmith_div_vec4_f32(vec4<f32>(-1222f, -1000f, 1113f, 762f), vec4<f32>(-562f, 186f, -1122f, -1629f)))), _wgslsmith_div_u32(~1u, reverseBits(_wgslsmith_clamp_u32(36543u, 47190u, 4294967295u))), _wgslsmith_f_op_f32(floor(-562f)) < 278f));
    var_1 = u_input.b.x;
    let var_2 = true;
    var_1 = func_6(func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1089f)), func_5(func_2(vec4<f32>(106f, 1195f, 424f, 108f), 28703u, true).c).c.x, select(select(vec4<bool>(false, var_2, var_0, var_2), vec4<bool>(var_2, var_2, var_0, false), vec4<bool>(true, false, var_2, var_0)), select(vec4<bool>(false, false, var_2, var_2), vec4<bool>(var_2, var_2, true, var_0), var_0), !vec4<bool>(var_2, false, false, true)), var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(821f, 517f) * vec2<f32>(1283f, 666f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1259f, 1691f))))), 0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1968f, -425f, _wgslsmith_f_op_f32(step(1915f, -755f))))), Struct_3(107859u, all(!func_5(Struct_2(-714f, u_input.c.xy, Struct_1(1101f, true, vec4<bool>(var_2, true, var_0, var_2), true), Struct_1(-242f, var_0, vec4<bool>(true, false, var_0, var_0), var_2), var_2)).c), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1696f, 729f, -759f, 389f))), u_input.d, !(!var_2)).c));
    var var_3 = ~45i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1463f - -423f), 735f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1855f)))), _wgslsmith_div_f32(-1153f, _wgslsmith_f_op_f32(f32(-1f) * -592f)), -744f) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-225f, -433f, 669f, -1553f), _wgslsmith_div_vec4_f32(vec4<f32>(-590f, -584f, 2155f, -1465f), vec4<f32>(336f, -405f, 115f, 1326f))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1f)))));
}

