struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>) -> vec2<f32> {
    var var_0 = !vec2<bool>(all(select(arg_1.d.b.d.xz, !vec2<bool>(arg_0, true), !arg_1.d.b.d.yx)), arg_0);
    let var_1 = -33821i;
    let var_2 = -24522i;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.b, vec2<f32>(-1300f, _wgslsmith_f_op_f32(643f * 956f))) * _wgslsmith_f_op_vec2_f32(arg_1.b + arg_1.b)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1906f + -1363f), -1000f, 925f, _wgslsmith_f_op_f32(-1771f + arg_1.c.x))))), arg_1.d);
    var var_4 = var_3.d.b;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-265f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.c.x))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1042f, -568f, true)))), _wgslsmith_f_op_f32(-var_3.b.x)));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    var var_0 = arg_2.d.b;
    var var_1 = vec4<bool>(!var_0.d.x, true, !(u_input.c.x != _wgslsmith_add_u32(53009u, arg_3)), arg_2.d.b.d.x);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(887f, arg_2.c.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1414f, arg_2.a))) + _wgslsmith_f_op_vec2_f32(func_3(var_1.x, Struct_3(arg_2.c.x, arg_2.b, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2552f, arg_2.c.x, arg_2.b.x, -1370f))), Struct_2(11415i, arg_2.d.b)), u_input.c.xy))), arg_2.c, Struct_2(14277i, Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(21977i, u_input.d, -2147483647i, 1i), vec4<i32>(u_input.b, 2147483647i, arg_2.d.b.b, 21260i)), u_input.e.x), -22789i, 17137i, arg_2.d.b.d)));
    let var_3 = Struct_2(0i, Struct_1(arg_2.d.b.a, 0i, -var_2.d.b.a, !vec3<bool>(any(vec4<bool>(false, arg_2.d.b.d.x, true, var_0.d.x)), arg_2.d.b.d.x, false == arg_0)));
    var_1 = select(!vec4<bool>(arg_2.d.b.d.x, any(!vec2<bool>(true, arg_2.d.b.d.x)), true, true), vec4<bool>(!((false == var_2.d.b.d.x) & true), _wgslsmith_f_op_f32(select(1515f, _wgslsmith_f_op_f32(1649f + -927f), false)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-391f - var_2.c.x) - _wgslsmith_f_op_f32(floor(arg_2.b.x))), !var_2.d.b.d.x, true), arg_1.x);
    return var_2.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(i32(-1i) * -arg_1.b.c, -19795i, -(i32(-1i) * -u_input.b), vec3<bool>(true, all(!(!vec4<bool>(arg_1.b.d.x, false, arg_1.b.d.x, arg_2.d.x))), all(select(!vec2<bool>(arg_2.d.x, false), vec2<bool>(true, true), any(arg_2.d.yx)))));
    let var_1 = Struct_3(1011f, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f)) + arg_0.x)), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(!arg_1.b.d.x, Struct_3(-859f, vec2<f32>(arg_0.x, -706f), vec4<f32>(arg_0.x, arg_0.x, -481f, arg_0.x), Struct_2(arg_1.a, Struct_1(arg_2.c, arg_1.b.a, 38203i, arg_1.b.d))), firstTrailingBit(u_input.c.zz))).x), _wgslsmith_f_op_f32(f32(-1f) * -248f), 863f), Struct_2(-1i, arg_2));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, -1124f) + var_1.c.wx);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(270f, var_2.x)))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -735f)), vec2<f32>(_wgslsmith_f_op_f32(sign(-131f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1041f, -1348f)))), var_1.c, Struct_2(-2147483647i, Struct_1(var_0.a, arg_2.a, max(0i, arg_1.a & arg_1.b.a), select(var_1.d.b.d, vec3<bool>(var_0.d.x, arg_1.b.d.x, true), vec3<bool>(arg_1.b.d.x, true, true)))));
    var var_4 = func_2(arg_1.b.d.x, select(!select(vec2<bool>(false, false), vec2<bool>(true, true), !arg_1.b.d.x), func_2(arg_1.b.d.x, vec2<bool>(false, var_3.d.b.d.x), var_1, ~abs(1u)).b.d.yz, func_2(var_3.d.b.d.x, select(vec2<bool>(false, true), select(arg_1.b.d.xz, vec2<bool>(arg_2.d.x, var_1.d.b.d.x), false), !var_3.d.b.d.zx), Struct_3(_wgslsmith_f_op_f32(step(var_1.a, var_3.c.x)), vec2<f32>(var_2.x, 1000f), var_1.c, Struct_2(2147483647i, Struct_1(var_3.d.b.a, arg_1.a, arg_1.b.a, var_3.d.b.d))), u_input.a).b.d.x), Struct_3(_wgslsmith_f_op_vec2_f32(func_3(true, Struct_3(var_3.b.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-258f, var_1.a), var_3.c.xw, true)), var_3.c, arg_1), min(countOneBits(vec2<u32>(58000u, 1u)), vec2<u32>(u_input.a, u_input.a)))).x, arg_0, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a, var_2.x, -603f, -1937f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-279f, var_2.x, 850f, arg_0.x))), vec4<bool>(true, true, true, var_0.d.x))))), var_3.d), ~(~u_input.a ^ (4294967295u ^ u_input.c.x))).b.d;
    return Struct_1(-14839i, -47375i, _wgslsmith_add_i32(var_1.d.a, ~arg_1.b.a), var_0.d);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(763f, -145f, 742f, -943f)))))), vec4<f32>(_wgslsmith_f_op_f32(-998f * 697f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-613f - _wgslsmith_f_op_f32(228f + 1440f))), 1000f, 419f)));
    var var_1 = 1112f;
    let var_2 = select(vec4<bool>(false, arg_0.d.x & arg_0.d.x, all(arg_0.d.yx), !arg_0.d.x), vec4<bool>(true, func_2(!(var_0.x > var_0.x), vec2<bool>(!arg_0.d.x, all(vec2<bool>(false, false))), Struct_3(259f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-465f, var_0.x) + vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -857f, var_0.x)), Struct_2(arg_0.b, Struct_1(u_input.d, -37546i, -48378i, vec3<bool>(false, arg_0.d.x, arg_0.d.x)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(46460u, 0u, u_input.a, 273u), vec4<u32>(14181u, u_input.a, 13716u, u_input.a)), 0u)).b.d.x, !(!any(arg_0.d.xz)), arg_0.d.x), any(vec2<bool>(true, true)));
    var var_3 = arg_0.d.xx;
    var var_4 = Struct_3(var_0.x, _wgslsmith_f_op_vec2_f32(var_0.wy - var_0.wz), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(select(1049f, -470f, !var_3.x)), var_0.x) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - -619f), var_0.x, _wgslsmith_f_op_f32(-765f + -1127f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1288f, var_0.x, var_0.x, -1000f)))))), func_2(-784f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_div_f32(1000f, var_0.x)), !(!vec2<bool>(true, arg_0.d.x)), Struct_3(_wgslsmith_f_op_f32(abs(449f)), vec2<f32>(-847f, -433f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -390f, 255f, var_0.x) * _wgslsmith_div_vec4_f32(vec4<f32>(-447f, 672f, 611f, var_0.x), vec4<f32>(459f, 185f, var_0.x, -274f))), func_2(all(vec3<bool>(var_2.x, arg_0.d.x, true)), vec2<bool>(arg_0.d.x, true), Struct_3(-1396f, vec2<f32>(796f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_2(arg_0.b, arg_0)), 1u)), abs(u_input.c.x) << (1u % 32u)));
    return var_4.d;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = !select(vec2<bool>(all(vec4<bool>(false, arg_0.b.d.x, arg_2.x, arg_0.b.d.x)) & func_2(arg_0.b.d.x, arg_2.zx, Struct_3(-417f, vec2<f32>(1000f, 176f), vec4<f32>(234f, -992f, -947f, -603f), Struct_2(-1i, Struct_1(arg_0.b.b, 2147483647i, arg_3.x, vec3<bool>(true, false, true)))), 0u).b.d.x, all(!vec3<bool>(true, true, arg_1.b.d.x))), vec2<bool>(true, true), arg_1.b.d.zx);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_f_op_f32(floor(387f)))), -166f) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(980f, -1122f)) - -2515f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-451f, -1304f)))), 161f));
    var var_2 = _wgslsmith_add_vec4_u32(~(~abs(vec4<u32>(u_input.c.x, 78516u, u_input.c.x, u_input.c.x))) ^ _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, u_input.a, u_input.c.x, u_input.a), vec4<u32>(40219u, u_input.a, u_input.a, 45137u), arg_2.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, 28629u, 1u), vec4<u32>(10383u, 0u, 4294967295u, 47305u), vec4<u32>(u_input.a, u_input.c.x, u_input.a, u_input.c.x))), vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(1u, u_input.c.x), abs(u_input.c.x), 1u)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zx, ~(~u_input.c.xy)), _wgslsmith_mod_u32(33965u, 44695u), ~u_input.c.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, 0u)), max(u_input.a, 28956u)) >> (35300u % 32u)));
    var var_3 = reverseBits(_wgslsmith_mult_u32(~(~(~var_2.x)), ~(37584u & ~u_input.c.x)));
    let var_4 = ~(~vec4<u32>(abs(1u), ~20199u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 77714u, 1u), u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 4294967295u), select(vec3<u32>(u_input.c.x, 1u, u_input.c.x), var_2.xxz, arg_0.b.d.x))));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -202f)), true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(562f, -271f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-324f, 875f), vec2<f32>(var_1.x, var_1.x))), func_5(func_5(Struct_1(-1i, arg_1.a, arg_3.x, arg_2)).b).b.d.yx)), vec2<f32>(_wgslsmith_f_op_f32(trunc(583f)), 190f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(round(var_1.x))), -371f, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -218f)), -227f) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -567f), var_1.x)), func_5(func_4(vec2<f32>(_wgslsmith_f_op_f32(2249f + var_1.x), _wgslsmith_f_op_f32(856f * -670f)), arg_0, func_5(Struct_1(arg_1.b.c, u_input.b, arg_3.x, vec3<bool>(true, arg_2.x, var_0.x))).b)));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = func_6(func_5(func_4(vec2<f32>(-2164f, _wgslsmith_f_op_f32(min(1897f, 1000f))), func_2(true, vec2<bool>(false, false), Struct_3(-1414f, vec2<f32>(arg_0.x, arg_0.x), vec4<f32>(845f, arg_0.x, arg_0.x, arg_0.x), Struct_2(-1i, Struct_1(24108i, 57783i, u_input.b, vec3<bool>(false, true, true)))), 0u), Struct_1(u_input.e.x, min(u_input.e.x, u_input.b), ~(-1i), vec3<bool>(true, true, true)))), func_2(any(vec3<bool>(true, true, true)), !select(func_4(arg_0, Struct_2(-30680i, Struct_1(2147483647i, arg_1, 41083i, vec3<bool>(false, false, true))), Struct_1(60560i, arg_1, -2147483647i, vec3<bool>(true, false, true))).d.xy, select(vec2<bool>(true, true), vec2<bool>(true, true), false), u_input.a > u_input.c.x), Struct_3(_wgslsmith_f_op_f32(-549f + _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, -1254f), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(875f, -586f, arg_0.x, -1031f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(286f, arg_0.x, arg_0.x, arg_0.x) - vec4<f32>(-1000f, 1800f, arg_0.x, 702f))), Struct_2(firstTrailingBit(arg_1), func_2(false, vec2<bool>(true, false), Struct_3(895f, arg_0, vec4<f32>(arg_0.x, arg_0.x, 1048f, -1500f), Struct_2(-23958i, Struct_1(-14344i, 1i, arg_1, vec3<bool>(true, true, false)))), u_input.a).b)), max(firstLeadingBit(4294967295u) & u_input.a, abs(max(u_input.a, u_input.c.x)))), vec3<bool>(!(-745f <= _wgslsmith_f_op_f32(-arg_0.x)), any(vec4<bool>(true, true, true, true)), func_2(select(all(vec4<bool>(false, true, false, true)), true, false), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1096f, arg_0.x)), Struct_2(u_input.b, Struct_1(u_input.b, u_input.e.x, 0i, vec3<bool>(true, false, true))), func_4(arg_0, Struct_2(-52427i, Struct_1(arg_1, arg_1, u_input.d, vec3<bool>(true, false, true))), Struct_1(u_input.e.x, 1i, 41387i, vec3<bool>(false, true, false)))).d.yx, Struct_3(arg_0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 418f) - vec2<f32>(-595f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), func_2(false, vec2<bool>(true, true), Struct_3(-1072f, vec2<f32>(550f, -673f), vec4<f32>(arg_0.x, -1000f, arg_0.x, arg_0.x), Struct_2(arg_1, Struct_1(2147483647i, -1i, u_input.e.x, vec3<bool>(true, true, false)))), 75984u)), min(min(u_input.a, u_input.c.x), u_input.a)).b.d.x), ~u_input.e);
    let var_1 = 1679f;
    let var_2 = var_0;
    let var_3 = func_2(all(select(func_2(false & var_2.d.b.d.x, func_6(Struct_2(arg_1, var_0.d.b), var_0.d, vec3<bool>(var_2.d.b.d.x, true, var_0.d.b.d.x), u_input.e).d.b.d.zy, Struct_3(-1000f, var_2.c.zy, var_0.c, Struct_2(-22806i, Struct_1(-65508i, var_2.d.b.c, 1i, vec3<bool>(true, var_2.d.b.d.x, false)))), u_input.a).b.d, vec3<bool>(!var_0.d.b.d.x, -962f >= var_2.c.x, var_2.b.x < -871f), vec3<bool>(!var_2.d.b.d.x, !var_2.d.b.d.x, var_0.d.b.d.x))), var_0.d.b.d.xy, var_0, max(u_input.c.x, 1u << (u_input.a % 32u))).b;
    let var_4 = var_0.d.b.a;
    return var_2.d.b;
}

fn func_7(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<bool> {
    let var_0 = 1u;
    var var_1 = vec3<bool>(true, arg_2.d.x, false);
    var var_2 = func_2(select(true, var_1.x, var_1.x), !arg_2.d.zx, Struct_3(_wgslsmith_f_op_f32(-arg_3.x), arg_3, vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(false, func_6(Struct_2(-1i, Struct_1(u_input.e.x, u_input.e.x, u_input.e.x, arg_2.d)), Struct_2(arg_2.c, Struct_1(arg_2.b, arg_2.c, 2147483647i, vec3<bool>(true, false, arg_2.d.x))), vec3<bool>(true, false, var_1.x), u_input.e), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 8380u), vec2<u32>(46836u, arg_0)))).x, _wgslsmith_f_op_f32(-arg_1), arg_3.x, 605f), Struct_2(arg_2.a, arg_2)), _wgslsmith_mult_u32(~arg_0, ~var_0));
    let var_3 = min(max(vec3<i32>(var_2.b.b, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -90710i, u_input.e.x, arg_2.b), vec4<i32>(u_input.b, u_input.b, arg_2.a, 2147483647i)), abs(var_2.a)), _wgslsmith_add_i32(-2147483647i, var_2.b.c) & (-2147483647i >> (u_input.c.x % 32u))), ~countOneBits(-vec3<i32>(u_input.e.x, 2147483647i, u_input.e.x))), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.e.x, -1i, -arg_2.a), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-44158i, -2147483647i, -17699i), vec3<i32>(2147483647i, var_2.b.c, var_2.a))) | _wgslsmith_mult_vec3_i32(vec3<i32>(57085i, u_input.d, arg_2.c) & vec3<i32>(u_input.e.x, var_2.b.c, arg_2.c), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a, var_2.a, -3383i), vec3<i32>(arg_2.a, 16682i, u_input.e.x)))));
    var_2 = Struct_2(var_3.x, Struct_1(_wgslsmith_dot_vec2_i32(-select(var_3.xx, vec2<i32>(1i, -1i), var_1.x), u_input.e), var_3.x, min(0i, var_2.b.c), vec3<bool>(var_2.b.d.x, !func_4(vec2<f32>(arg_1, 1032f), Struct_2(33477i, Struct_1(var_2.b.b, var_3.x, var_3.x, vec3<bool>(var_1.x, true, var_2.b.d.x))), Struct_1(var_3.x, -2147483647i, 0i, arg_2.d)).d.x, any(func_1(arg_3, 0i).d))));
    return vec3<bool>(var_2.b.d.x, var_1.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(func_7(~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2211f - -504f)), func_1(vec2<f32>(457f, -953f), 2147483647i >> (u_input.a % 32u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-758f, 2306f))))), func_7(firstTrailingBit(u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1439f)) + _wgslsmith_div_f32(-1436f, -1896f)), Struct_1(select(8602i, u_input.b, false), 2147483647i, _wgslsmith_mod_i32(u_input.e.x, u_input.d), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(697f, -887f), vec2<f32>(-169f, 1050f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-277f * -1183f), 707f, true)) > _wgslsmith_f_op_f32(trunc(-674f))));
    let var_1 = Struct_1(~(-1i) << (~u_input.c.x % 32u), u_input.d, firstLeadingBit(abs(u_input.e.x)), func_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(280f, -397f) - vec2<f32>(-1535f, -1864f))))), 2147483647i).d);
    let var_2 = 889f;
    var var_3 = func_6(Struct_2(~firstLeadingBit(-2147483647i), Struct_1(_wgslsmith_mod_i32(firstTrailingBit(-47879i), u_input.d), var_1.b, func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1018f, -650f), vec2<f32>(435f, var_2), var_1.d.x)), ~u_input.d).b, func_2(any(vec2<bool>(true, var_0)), var_1.d.yy, func_6(Struct_2(-63049i, Struct_1(var_1.c, var_1.c, 1i, var_1.d)), Struct_2(u_input.b, Struct_1(u_input.b, 0i, -17616i, vec3<bool>(false, true, var_1.d.x))), vec3<bool>(var_0, false, true), vec2<i32>(-2147483647i, 1i)), u_input.c.x).b.d)), Struct_2(-26616i << (u_input.a % 32u), func_4(vec2<f32>(_wgslsmith_div_f32(-957f, -1263f), var_2), func_5(var_1), var_1)), !(!func_2(var_1.d.x, vec2<bool>(var_1.d.x, false), func_6(Struct_2(var_1.b, Struct_1(var_1.a, 2147483647i, u_input.e.x, var_1.d)), Struct_2(-37961i, Struct_1(u_input.d, var_1.a, u_input.b, vec3<bool>(false, var_1.d.x, false))), var_1.d, u_input.e), 1u | u_input.a).b.d), -(~(~vec2<i32>(-28177i, -49454i) >> (u_input.c.xx % vec2<u32>(32u)))));
    let var_4 = min(reverseBits(u_input.c) | (abs(u_input.c) | countOneBits(~vec3<u32>(1u, 4294967295u, 17531u))), _wgslsmith_sub_vec3_u32(u_input.c, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, ~31512u, u_input.a >> (u_input.a % 32u)), vec3<u32>(firstLeadingBit(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(27515u, u_input.a), vec2<u32>(1u, 1u)), u_input.c.x))));
    var var_5 = -_wgslsmith_clamp_i32(var_3.d.b.b, u_input.e.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.x, 1u), abs(vec2<u32>(u_input.a, var_4.x))) % 32u), 1i);
    var_3 = func_6(var_3.d, Struct_2(func_2(var_3.d.b.d.x, !(!vec2<bool>(var_0, var_1.d.x)), Struct_3(_wgslsmith_f_op_vec2_f32(func_3(false, Struct_3(var_3.a, var_3.c.yz, var_3.c, var_3.d), vec2<u32>(111030u, u_input.a))).x, var_3.c.wy, vec4<f32>(-2534f, 1919f, var_2, var_2), var_3.d), var_4.x).b.b, Struct_1(reverseBits(14819i), u_input.b, abs(_wgslsmith_mod_i32(34655i, var_1.c)), func_6(func_6(Struct_2(var_1.a, var_3.d.b), var_3.d, var_1.d, vec2<i32>(1i, 2147483647i)).d, func_2(false, vec2<bool>(false, true), Struct_3(var_2, vec2<f32>(var_2, -1116f), vec4<f32>(var_2, -1738f, var_2, var_3.c.x), var_3.d), var_4.x), func_7(var_4.x, -1414f, Struct_1(-64643i, u_input.b, var_3.d.b.c, var_3.d.b.d), vec2<f32>(372f, -515f)), firstTrailingBit(u_input.e)).d.b.d)), vec3<bool>(u_input.a != _wgslsmith_sub_u32(min(4294967295u, u_input.c.x), 35659u), var_1.d.x, !(~0u > ~u_input.a)), max(-vec2<i32>(~(-3226i), -var_1.a), ~(-vec2<i32>(var_1.c, u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(vec2<u32>(var_4.x, ~0u))));
}

