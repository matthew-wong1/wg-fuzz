struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> bool {
    let var_0 = Struct_5(Struct_3(true, Struct_2(false, Struct_1(select(vec4<bool>(false, false, arg_1.b.a.x, arg_1.b.a.x), vec4<bool>(false, false, false, true), arg_1.a.x))), _wgslsmith_add_i32(~(~(-2147483647i)), arg_0), !(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 4294967295u, 33942u)) <= 8160u)), reverseBits(-66542i), select(true, !(!(arg_1.b.a.x && false)), max(~2147483647i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)) != _wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, -1i), 11976i >> (u_input.a % 32u), _wgslsmith_dot_vec2_i32(u_input.c.wz, vec2<i32>(u_input.c.x, u_input.c.x)))), ~_wgslsmith_add_i32(u_input.b, ~arg_0), u_input.b);
    return -1000f <= _wgslsmith_f_op_f32(ceil(-1000f));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = Struct_5(Struct_3(true, Struct_2(u_input.a > ~64484u, arg_2.b), _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, u_input.b), ~(~u_input.b)), arg_2.a), u_input.c.x, select(arg_2.b.a.x, arg_2.a, any(!arg_2.b.a)), -(~u_input.b), -u_input.b);
    let var_2 = Struct_5(var_1.a, var_1.a.c, func_3(16999i, Struct_4(select(var_1.a.b.b.a.zy, vec2<bool>(var_1.a.a, false), vec2<bool>(var_1.c, true)), arg_2.b)) || true, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-u_input.c.x, ~(-26488i), max(var_1.b, -37610i)) >> (~var_0 % 32u), firstLeadingBit(abs(20157i))), ~abs(~(-76699i)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2083f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2274f + arg_1), _wgslsmith_f_op_f32(exp2(arg_1))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-482f * arg_0))) - -153f));
    let var_4 = _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-400f * _wgslsmith_f_op_f32(arg_1 + var_3))), arg_1)));
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_4) -> bool {
    let var_0 = func_2(515f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), func_2(-1300f, -545f, arg_0)).b;
    let var_1 = Struct_5(Struct_3(true, func_2(_wgslsmith_f_op_f32(350f - _wgslsmith_f_op_f32(f32(-1f) * -493f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), func_2(816f, 1182f, Struct_2(arg_3.a.x, Struct_1(var_0.a)))), (u_input.b >> (~u_input.a % 32u)) ^ (_wgslsmith_mod_i32(1i, u_input.c.x) << ((u_input.a | u_input.a) % 32u)), select(true, arg_2.a.x, var_0.a.x) && arg_0.b.a.x), 64572i, !(u_input.a > _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(5136u, 4294967295u)), vec2<u32>(u_input.a, 4294967295u))), _wgslsmith_add_i32(~_wgslsmith_div_i32(u_input.c.x, u_input.c.x), _wgslsmith_add_i32(abs(-1i), u_input.c.x)), u_input.b);
    let var_2 = var_1;
    var var_3 = u_input.c.x;
    var var_4 = var_2.b;
    return select(any(vec2<bool>(true, true)), arg_3.a.x, !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + -518f))) >= arg_1));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: bool, arg_3: vec2<bool>) -> vec4<f32> {
    var var_0 = _wgslsmith_mult_vec2_u32(select(~(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(83640u, u_input.a)), ~firstTrailingBit(vec2<u32>(u_input.a, 48726u)), !arg_0.zy), abs(select(max(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 9772u) % vec2<u32>(32u)), select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(12617u, u_input.a), false)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(71738u, 1u), vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)), firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), vec2<bool>(arg_2, false)), func_4(func_2(arg_1, -977f, Struct_2(false, Struct_1(vec4<bool>(true, arg_0.x, arg_0.x, false)))), _wgslsmith_f_op_f32(f32(-1f) * -2225f), Struct_1(vec4<bool>(arg_0.x, false, false, arg_2)), Struct_4(vec2<bool>(true, false), Struct_1(vec4<bool>(arg_3.x, true, false, arg_2)))))));
    var_0 = vec2<u32>(~var_0.x, u_input.a);
    var var_1 = u_input.b;
    var var_2 = !(!(~u_input.c.x < 2147483647i)) | (min(var_0.x | reverseBits(var_0.x), ~35190u) == u_input.a);
    var var_3 = ~u_input.c.x;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_1, arg_1, -742f), vec4<f32>(1026f, arg_1, 1000f, -1000f), arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, 254f))), vec4<f32>(_wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(arg_1 * -869f), _wgslsmith_f_op_f32(-801f + arg_1), _wgslsmith_f_op_f32(arg_1 - -912f)), !vec4<bool>(true, false, arg_2, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(570f, arg_1, 674f, arg_1))))));
}

fn func_1(arg_0: u32, arg_1: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(vec3<bool>(func_4(func_2(-757f, _wgslsmith_f_op_f32(-1031f - 1000f), Struct_2(true, Struct_1(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(2276f)), _wgslsmith_f_op_f32(max(1039f, 185f)), true)), Struct_1(vec4<bool>(false, false, false, false)), Struct_4(vec2<bool>(false, false), Struct_1(vec4<bool>(true, false, true, false)))), !func_2(_wgslsmith_f_op_f32(min(1450f, -1000f)), 1f, func_2(-1000f, 734f, Struct_2(true, Struct_1(vec4<bool>(false, false, false, false))))).b.a.x, 27214i > arg_1), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1235f, 1344f)), _wgslsmith_f_op_f32(-757f * 752f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1617f))), false, func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1180f, -145f) * _wgslsmith_f_op_f32(select(-898f, -224f, true))))), -1000f, func_2(_wgslsmith_f_op_f32(floor(-569f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-111f)))), Struct_2(true, Struct_1(vec4<bool>(false, true, true, true))))).b.a.zz));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~arg_0, 1u), 1u, 71018u, arg_0), countOneBits(abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, arg_0, 0u), vec4<u32>(u_input.a, 4294967295u, 2041u, u_input.a))))), _wgslsmith_div_u32(~(~firstTrailingBit(1u)), u_input.a), _wgslsmith_dot_vec3_u32((_wgslsmith_mod_vec3_u32(vec3<u32>(2744u, 6774u, arg_0), vec3<u32>(u_input.a, 1u, arg_0)) & ~vec3<u32>(u_input.a, 10483u, 45629u)) | countOneBits(~vec3<u32>(u_input.a, 234u, 50168u)), vec3<u32>(select(~u_input.a, arg_0, true), arg_0, 0u)), 1u);
    let var_2 = Struct_1(vec4<bool>(any(vec4<bool>(true, -422f < var_0.x, true, true)), all(func_2(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)), Struct_2(true, Struct_1(vec4<bool>(true, true, false, false)))).b.a.xww), !(true && any(vec4<bool>(true, false, true, true))), !(!select(true, false, false))));
    var var_3 = var_2;
    var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(359f))), -1006f)), -1769f, func_2(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(792f))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(812f, 112f)) - _wgslsmith_f_op_f32(step(-1320f, 622f))), 662f, Struct_2(var_3.a.x, var_2)))).b;
    return !(!func_2(_wgslsmith_f_op_vec4_f32(func_5(var_3.a.zzx, 467f, false, vec2<bool>(true, true))).x, _wgslsmith_f_op_f32(-var_0.x), Struct_2(true && var_2.a.x, Struct_1(vec4<bool>(var_2.a.x, false, false, true)))).b.a.zw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f) - -732f) - -592f), _wgslsmith_f_op_f32(f32(-1f) * -1908f)));
    let var_2 = Struct_4(func_1(u_input.a, ~1i), func_2(var_1.x, _wgslsmith_f_op_f32(-var_1.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1589f, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_5(vec3<bool>(true, false, true), var_1.x, false, vec2<bool>(false, true))).x - _wgslsmith_f_op_f32(select(var_1.x, 811f, true))), Struct_2(638f != var_1.x, func_2(var_1.x, var_1.x, Struct_2(false, Struct_1(vec4<bool>(true, true, false, true)))).b))).b);
    var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -616f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + 1692f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-185f, var_1.x))), vec2<bool>(true, all(vec3<bool>(false, true, var_2.a.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1335f)))))), !var_2.a.x));
    let var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(-abs(min(u_input.c, vec4<i32>(var_0, var_0, 0i, -16210i))), u_input.c), _wgslsmith_div_i32(u_input.c.x, var_0), ~(max(_wgslsmith_div_i32(-17836i, 48701i), 1i) ^ u_input.c.x));
    var var_4 = var_2.b;
    var var_5 = !all(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(956f, var_1.x, 902f) - vec3<f32>(var_1.x, 272f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.x, var_1.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-576f, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_1.x, -1136f), vec3<f32>(var_1.x, 739f, 870f))))))), u_input.a);
}

