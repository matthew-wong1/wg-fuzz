struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(385f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(705f + -682f) * _wgslsmith_f_op_f32(-1364f - -607f)));
    var var_1 = arg_0.x;
    var var_2 = -1127f;
    var var_3 = Struct_4(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 1132u, u_input.a.x), vec4<u32>(50077u, 24638u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, 37055u, u_input.a.x, u_input.a.x)), ~abs(u_input.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(184f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -906f) - _wgslsmith_f_op_f32(-1724f * 429f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1000f - 277f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2491f)) * _wgslsmith_f_op_f32(397f - 596f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, 1000f, 1973f, -619f)), vec4<f32>(-380f, 339f, 911f, 245f), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))))), arg_0.x, Struct_3(true, Struct_1(_wgslsmith_sub_vec3_u32(~u_input.a.yxw, ~u_input.a.xxz), min(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-28935i, -1i, 1i)), ~(-1i)), arg_0.xwx, select(!arg_0.wz, select(arg_0.xw, arg_0.yw, false), !arg_0.wy)), 1692f, _wgslsmith_mult_u32(0u, u_input.a.x) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 1u, 1u)), vec4<u32>(56036u, 19622u, 45218u, 26601u)) % 32u)));
    return 28724u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(-966f * arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x))));
    var var_1 = abs(vec3<u32>(~u_input.a.x, func_3(vec4<bool>(false, false, true, true)), 70117u));
    return Struct_2(Struct_1(u_input.a.zzw, u_input.b.x, !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> i32 {
    let var_0 = arg_0.x;
    var var_1 = arg_0.zwz;
    var_1 = arg_1.a.c;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -795f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-301f, 192f))))));
    var var_3 = (func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, 334f))))).a.a.x ^ 13873u) << (28471u % 32u);
    return reverseBits(_wgslsmith_add_i32(~(-2147483647i), _wgslsmith_mult_i32(arg_1.a.b, 1i)));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_4 {
    var var_0 = select(1i, -15579i, all(vec3<bool>(false, false, arg_1.c.x)));
    var var_1 = false;
    var var_2 = arg_1;
    var var_3 = select(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.b, ~0i, var_2.b, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_1.b, 15763i, -1i), vec4<i32>(-2147483647i, -17867i, u_input.b.x, var_2.b)) | ~vec4<i32>(u_input.b.x, arg_1.b, -2147483647i, 34301i))), vec4<i32>(-3875i, arg_1.b >> (18965u % 32u), -90421i, arg_1.b), arg_1.d.x);
    let var_4 = select(!(!(!select(vec4<bool>(arg_1.d.x, false, false, false), vec4<bool>(true, false, arg_1.d.x, false), vec4<bool>(false, arg_1.c.x, arg_1.c.x, var_2.c.x)))), vec4<bool>(all(var_2.c), (any(var_2.c) & func_2(vec3<f32>(1909f, 734f, arg_2)).a.c.x) || var_2.d.x, !(!arg_1.d.x) | arg_1.d.x, true), select(!(!vec4<bool>(arg_1.d.x, false, var_2.c.x, arg_1.c.x)), !vec4<bool>(true, all(vec4<bool>(false, false, arg_1.c.x, true)), false, var_2.c.x), arg_1.c.x));
    return Struct_4(~(~abs(~var_2.a.zz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_0, -1145f, -605f), vec4<f32>(arg_2, -152f, arg_0, 1419f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -690f, 735f, 396f) + vec4<f32>(-833f, -1000f, arg_2, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -1413f, -315f) * vec4<f32>(-1000f, arg_2, arg_0, arg_0)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(926f, -1255f, -895f, -247f)))))), !var_4.x, Struct_3(!any(!var_4), arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(arg_0 - arg_2)), arg_0)), _wgslsmith_dot_vec3_u32(var_2.a, vec3<u32>(_wgslsmith_clamp_u32(1u, var_2.a.x, 82756u), max(1u, var_2.a.x), u_input.a.x))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = u_input.a.x;
    let var_1 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))) * arg_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x)))), Struct_1(u_input.a.ywy, -func_4(vec4<bool>(false, true, true, false), func_2(vec3<f32>(arg_0.x, -210f, arg_0.x))), select(vec3<bool>(any(vec2<bool>(false, false)), true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), func_2(arg_0.zww).a.c)), !func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(207f, -1538f, arg_1)))).a.c.xz), _wgslsmith_div_f32(-649f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * 1000f)));
    let var_2 = false;
    var var_3 = func_2(_wgslsmith_f_op_vec3_f32(trunc(arg_0.wxy)));
    let var_4 = Struct_2(Struct_1(var_3.a.a, -29375i, select(var_1.d.b.c, vec3<bool>(true, var_1.d.b.c.x, var_2), vec3<bool>(true, true, var_3.a.c.x & var_2)), func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-910f, 1304f, 1498f), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 509f, arg_2.x), vec3<f32>(var_1.d.c, 841f, 501f)), func_5(arg_0.x, var_1.d.b, arg_1).d.b.c))).a.d));
    return Struct_4(select(~(~var_1.a) & var_1.d.b.a.yz, var_1.a ^ firstLeadingBit(select(vec2<u32>(var_1.a.x, 4294967295u), u_input.a.ww, var_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1179f), _wgslsmith_f_op_f32(1763f + -1829f)) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1382f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, 1124f, -675f, arg_1), _wgslsmith_div_vec4_f32(vec4<f32>(2036f, 879f, arg_2.x, -1097f), arg_0))), arg_0, true)) + arg_0), true, Struct_3(var_2, var_1.d.b, _wgslsmith_f_op_f32(trunc(1f)), var_1.a.x));
}

fn func_6(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    let var_0 = select(arg_2.d.b.c.yx, func_2(arg_3.b.xwz).a.d, !func_1(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.d.c)), arg_3.d.c, -296f, -293f), arg_3.d.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_2.b.xw)))).d.b.c.yz);
    let var_1 = vec3<bool>(false, arg_1, func_1(func_1(_wgslsmith_f_op_vec4_f32(exp2(arg_3.b)), -244f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_3.b.zz)) * arg_2.b.yx)).b, arg_2.d.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.d.c, arg_2.b.x), _wgslsmith_f_op_vec2_f32(-arg_3.b.xx)))).c);
    var var_2 = reverseBits(_wgslsmith_mod_i32(arg_0.x, i32(-1i) * -abs(arg_2.d.b.b)));
    var_2 = -950i;
    let var_3 = _wgslsmith_f_op_vec3_f32(arg_2.b.wxz + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(arg_3.b.wyx))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, arg_3.b.x, 477f) + vec3<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x))))));
    return Struct_1(~vec3<u32>(14249u, _wgslsmith_mult_u32(firstTrailingBit(u_input.a.x), arg_3.a.x << (u_input.a.x % 32u)), firstTrailingBit(~14734u)), _wgslsmith_mult_i32(arg_2.d.b.b, _wgslsmith_dot_vec3_i32(~u_input.b, u_input.b)), vec3<bool>(any(!select(vec4<bool>(arg_1, var_1.x, false, false), vec4<bool>(arg_3.c, false, true, false), true)), func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_3.b.x, 826f, -490f)), _wgslsmith_f_op_vec4_f32(arg_2.b + vec4<f32>(var_3.x, var_3.x, 201f, arg_3.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.c)), _wgslsmith_f_op_vec2_f32(arg_3.b.xw + _wgslsmith_f_op_vec2_f32(vec2<f32>(936f, arg_3.b.x) + vec2<f32>(286f, 512f)))).d.a, arg_2.d.b.c.x | arg_1), var_1.yx);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> f32 {
    let var_0 = func_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-1515f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 864f)), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(arg_2 + -378f)), arg_2), vec4<f32>(_wgslsmith_f_op_f32(622f * arg_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), 364f), _wgslsmith_f_op_f32(max(-497f, arg_2)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(312f, arg_2) + func_1(vec4<f32>(1159f, arg_2, arg_2, -1184f), arg_2, vec2<f32>(-1000f, 413f)).d.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1304f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, -1157f))), vec2<f32>(329f, 589f), !arg_1.a.d)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(168f, -1000f), vec2<f32>(arg_2, arg_2)) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_2, -241f))))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.d.c))));
    var var_2 = -vec2<i32>(-45968i, arg_0.b);
    var_2 = u_input.b.yx;
    var_2 = -vec2<i32>(0i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, 2147483647i, 14434i, -1i), vec4<i32>(1i, var_2.x, u_input.b.x, 69932i), vec4<bool>(true, true, false, true)), max(vec4<i32>(-45696i, -53391i, -1i, var_2.x), vec4<i32>(var_0.d.b.b, 21683i, -2147483647i, 34838i)))) >> ((vec2<u32>(21900u, 1u) | ~vec2<u32>(~91346u, ~arg_1.a.a.x)) % vec2<u32>(32u));
    return -436f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f * -360f)), -1110f, -1540f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1125f, 2042f, 913f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-773f, -1630f, 1790f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1691f, 537f, -1089f))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(134f + _wgslsmith_f_op_f32(func_7(func_6(select(vec4<i32>(u_input.b.x, u_input.b.x, -52894i, u_input.b.x), vec4<i32>(-1i, u_input.b.x, 0i, 66469i), true), true, func_1(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), 329f, vec2<f32>(-1000f, var_0.x)), Struct_4(vec2<u32>(u_input.a.x, 4294967295u), vec4<f32>(-145f, -171f, var_0.x, -252f), false, Struct_3(true, Struct_1(u_input.a.wyz, 2147483647i, vec3<bool>(true, false, true), vec2<bool>(false, false)), var_0.x, 26579u))), func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(160f, 218f, var_0.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1737f))))))), var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(564f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(func_6(vec4<i32>(-59252i, 69075i, -2147483647i, 1i), true, Struct_4(vec2<u32>(27804u, u_input.a.x), vec4<f32>(425f, var_0.x, var_0.x, var_0.x), true, Struct_3(false, Struct_1(vec3<u32>(u_input.a.x, 10265u, u_input.a.x), -2147483647i, vec3<bool>(false, false, true), vec2<bool>(true, false)), var_0.x, u_input.a.x)), Struct_4(u_input.a.xw, vec4<f32>(852f, -1805f, 664f, -2281f), true, Struct_3(false, Struct_1(u_input.a.ywy, -2209i, vec3<bool>(false, true, false), vec2<bool>(true, true)), var_0.x, u_input.a.x))), Struct_2(Struct_1(u_input.a.ywx, u_input.b.x, vec3<bool>(false, false, false), vec2<bool>(true, true))), var_0.x))), -1461f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))), 39286u, u_input.a);
}

