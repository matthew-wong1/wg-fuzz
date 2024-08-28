struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(~0u, 4294967295u, 68397u), (~(u_input.b << (4294967295u % 32u)) & _wgslsmith_sub_u32(~u_input.a, u_input.b)) & _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.e.yy, u_input.e.zx), ~select(vec2<u32>(17486u, 20918u), u_input.e.xz, arg_0)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 25202u, u_input.b, _wgslsmith_div_u32(u_input.a, 4294967295u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.e.x, 37978u, u_input.a, 43862u), vec4<u32>(23232u, 4294967295u, u_input.a, 50419u) & vec4<u32>(78402u, u_input.b, u_input.e.x, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 22345u, 77670u, u_input.e.x), vec4<u32>(0u, u_input.a, u_input.b, 17363u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, u_input.a, u_input.a, u_input.e.x), vec4<u32>(u_input.e.x, 11955u, u_input.e.x, 12992u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.a, 52365u, u_input.b), vec4<u32>(33688u, u_input.a, u_input.a, 22540u), vec4<u32>(u_input.e.x, u_input.a, 1u, 4294967295u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 1u, 51521u, 83820u), vec4<u32>(615u, u_input.b, u_input.b, 1u), vec4<u32>(3209u, u_input.b, u_input.e.x, u_input.b)) % vec4<u32>(32u)))), u_input.a);
    var var_1 = Struct_2(Struct_1(!select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), any(vec2<bool>(false, arg_0)))), Struct_1(select(vec2<bool>(arg_0, arg_0), vec2<bool>(any(vec3<bool>(false, arg_0, arg_0)), true), arg_0)), select(vec2<bool>(0i < _wgslsmith_dot_vec4_i32(vec4<i32>(19876i, u_input.c.x, u_input.d, 2147483647i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, u_input.d)), arg_0), !select(vec2<bool>(true, arg_0), !vec2<bool>(arg_0, true), true), vec2<bool>(false, any(!vec4<bool>(arg_0, arg_0, false, true)))));
    var_1 = Struct_2(var_1.a, var_1.a, !(!(!vec2<bool>(var_1.b.a.x, var_1.c.x))));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, u_input.e.x, ~var_0.x, 8589u), vec4<u32>(~_wgslsmith_div_u32(var_0.x, 1u), ~_wgslsmith_mod_u32(~var_0.x, 1u), 37045u, 2068u));
    var var_3 = var_0.x;
    return select(vec4<bool>(all(vec4<bool>(any(vec4<bool>(false, arg_0, false, true)), arg_0 | var_1.a.a.x, var_1.b.a.x, arg_0)), false, false, true), select(vec4<bool>(!(false || arg_0), arg_0, !any(vec2<bool>(false, true)), any(select(vec4<bool>(arg_0, var_1.b.a.x, var_1.a.a.x, arg_0), vec4<bool>(arg_0, false, true, false), arg_0))), select(!vec4<bool>(false, true, arg_0, var_1.a.a.x), vec4<bool>(all(vec2<bool>(var_1.c.x, false)), !var_1.c.x, !arg_0, false), !(!vec4<bool>(true, true, arg_0, var_1.a.a.x))), var_1.c.x), !(!select(vec4<bool>(false, true, arg_0, true), !vec4<bool>(false, var_1.c.x, arg_0, true), arg_0 | false)));
}

fn func_2(arg_0: u32, arg_1: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1865f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -790f))) - 442f)), arg_1, any(select(vec4<bool>(true, false, true, true), func_3(true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))))));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(select(_wgslsmith_sub_i32(u_input.c.x, u_input.d) >> (~14089u % 32u), countOneBits(-24260i), false), 18022i, firstTrailingBit(179i)), (1495i & u_input.d) >> (~57332u % 32u));
    var var_2 = Struct_1(!vec2<bool>((arg_1 <= -2815f) && true, any(vec3<bool>(true, true, true))));
    var var_3 = any(!select(!(!var_2.a), var_2.a, func_3(true).x));
    var var_4 = vec3<u32>(arg_0, ~_wgslsmith_mod_u32(u_input.b, 1u), ~arg_0);
    return firstLeadingBit(vec3<u32>(min(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 74614u, 32178u), u_input.e), var_4.x), var_4.x, var_4.x >> (var_4.x % 32u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = abs(u_input.e);
    var var_1 = arg_2;
    var_0 = func_2(0u, -1154f);
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(2616f, _wgslsmith_f_op_f32(arg_0.x + -971f))))), _wgslsmith_div_f32(-1221f, -910f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1189f - -442f)), arg_0.x, arg_0.x);
    var_1 = arg_2;
    return Struct_2(arg_2, Struct_1(vec2<bool>(false, u_input.c.x >= ~2147483647i)), select(vec2<bool>(all(select(vec4<bool>(false, true, true, var_1.a.x), vec4<bool>(var_1.a.x, true, true, arg_1), arg_2.a.x)), arg_1), var_1.a, vec2<bool>(var_0.x == u_input.a, arg_1)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-245f)) * 235f));
    var var_1 = arg_1;
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(469f, var_0, var_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -270f, -715f)))))))), true, Struct_1(vec2<bool>(arg_0.x, true)));
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1675f, -639f, 479f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -503f) + vec3<f32>(-166f, var_0, var_0))))))), !var_1.a.a.x, Struct_1(select(vec2<bool>(true, all(vec3<bool>(false, arg_0.x, arg_1.a.a.x))), arg_1.b.a, arg_1.a.a.x)));
    let var_2 = var_0;
    return func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -496f) - _wgslsmith_div_f32(-346f, -495f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1690f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1442f * var_2)) * -1309f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0))))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-814f, var_0, 1100f)))), arg_0.x, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, -201f, var_0))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -117f, -1374f) + vec3<f32>(var_0, var_0, var_2))), arg_0.x, var_1.a).a).b);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec2<bool>(arg_0.b.a.x, arg_0.c.x)), Struct_1(vec2<bool>(arg_0.b.a.x, true)), !vec2<bool>(all(!vec4<bool>(arg_0.b.a.x, true, true, arg_0.c.x)), true));
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1013f), -926f, -1224f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(409f, 859f)), _wgslsmith_f_op_f32(floor(-238f)), -2122f) - vec3<f32>(_wgslsmith_f_op_f32(min(742f, -1003f)), _wgslsmith_f_op_f32(abs(-548f)), 815f)), !func_3(true).wyy)), !var_0.c.x, var_0.b);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(1059f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))))), -186f);
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_1.x, 353f)), _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true))) + vec3<f32>(_wgslsmith_f_op_f32(round(-1357f)), _wgslsmith_f_op_f32(f32(-1f) * -1273f), _wgslsmith_f_op_f32(ceil(-465f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -421f)))), any(select(func_3(arg_0.c.x || var_0.b.a.x), func_3(any(vec3<bool>(true, arg_0.a.a.x, var_0.b.a.x))), !(var_0.b.a.x && false))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, -928f, -598f)))), u_input.d <= 13451i, func_4(!(!vec4<bool>(arg_0.b.a.x, false, arg_0.b.a.x, true)), arg_0, u_input.a).a).a).a.a.x;
    var_0 = Struct_2(Struct_1(vec2<bool>(arg_0.c.x, false)), Struct_1(select(select(select(arg_0.a.a, vec2<bool>(true, arg_0.a.a.x), var_0.c.x), !vec2<bool>(false, var_0.b.a.x), arg_0.a.a), var_0.b.a, func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, -442f, var_1.x))), true, var_0.a).c)), func_4(func_3(true), Struct_2(Struct_1(vec2<bool>(true, true)), var_0.a, !vec2<bool>(var_2, true)), 4294967295u << (u_input.e.x % 32u)).c);
    return func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1280f, -775f, var_1.x)), !all(vec3<bool>(arg_0.b.a.x, false, arg_0.c.x)) && all(!vec2<bool>(var_2, false)), arg_0.a).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(func_4(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1197f, -327f, -764f) - vec3<f32>(-183f, 361f, -438f)), false, Struct_1(vec2<bool>(true, true))), 38928u)), Struct_1(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false)), !func_5(Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), vec2<bool>(false, false))).a)), select(vec2<bool>(false, all(vec2<bool>(false, true))), vec2<bool>(true, true), !func_4(func_3(false), func_1(vec3<f32>(167f, 645f, 1673f), true, Struct_1(vec2<bool>(true, true))), _wgslsmith_div_u32(u_input.b, 1u)).a.a));
    var var_1 = -9257i;
    var_1 = -(~u_input.c.x);
    var var_2 = ~(~max(vec4<u32>(u_input.a, u_input.a, u_input.e.x, u_input.e.x) | _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(19827u, u_input.e.x, u_input.a, u_input.e.x)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, 0u, 315u, u_input.b)), ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u))));
    var_1 = u_input.c.x;
    var_2 = abs(vec4<u32>(u_input.b, func_2(var_2.x, _wgslsmith_f_op_f32(-210f + -1629f)).x, func_2(u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(488f + 106f), _wgslsmith_f_op_f32(-430f + -611f)))).x, ~(~2266u)));
    var_2 = vec4<u32>(1u >> (1u % 32u), 1u, _wgslsmith_sub_u32(u_input.b, _wgslsmith_sub_u32(abs(var_2.x), countOneBits(64134u))), firstLeadingBit(u_input.b & u_input.e.x)) >> ((min(vec4<u32>(44582u, abs(u_input.e.x), u_input.e.x, ~0u), reverseBits(firstTrailingBit(vec4<u32>(31442u, 0u, 2846u, 25472u)))) & firstLeadingBit(~(~vec4<u32>(var_2.x, 19619u, 23925u, 0u)))) % vec4<u32>(32u));
    var var_3 = !func_3(true).yxw;
    var_2 = _wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(u_input.e.x, 4294967295u, u_input.a, var_2.x) << (vec4<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u), var_2.x, u_input.b, ~1u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(263u, u_input.a, var_2.x, u_input.e.x), vec4<u32>(54007u, var_2.x, 23601u, 47336u)), vec4<u32>(var_2.x, 6050u, var_2.x, var_2.x)), vec4<u32>(40935u, 19806u, ~var_2.x, 1u)), ~(~vec4<u32>(u_input.e.x, 31757u, 0u, u_input.a)) & ~(~vec4<u32>(4294967295u, var_2.x, var_2.x, 70290u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, ~_wgslsmith_add_u32(u_input.e.x, 25026u), _wgslsmith_sub_u32(0u, var_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1026f)), 549f)), 1915f);
}

