struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_2,
    d: vec3<bool>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: vec3<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1253f, arg_2.a.x, arg_0.c.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.a.x, arg_2.a.x, 259f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(116f, -920f, arg_2.a.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.a.x, arg_0.c.a.x, arg_0.c.a.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c.a.x, arg_2.a.x, 1341f), vec3<f32>(arg_1.b.a.x, arg_1.b.a.x, arg_2.a.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-213f, arg_0.c.a.x, 202f) - vec3<f32>(arg_2.a.x, 368f, -958f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.a.x, -189f, 624f))))));
    return 1341u;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = arg_3;
    let var_1 = !vec4<bool>(arg_2 || false, arg_2, (_wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(0u, 64431u)) ^ u_input.a) <= func_3(Struct_4(vec2<f32>(865f, 1278f), u_input.d, arg_3, vec3<bool>(false, arg_2, arg_2), true), Struct_3(Struct_1(vec2<bool>(false, arg_2)), arg_3, true), arg_3), !(!arg_2));
    let var_2 = Struct_3(Struct_1(vec2<bool>(1u > u_input.a, all(!vec3<bool>(true, var_1.x, true)))), Struct_2(vec2<f32>(-639f, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(trunc(var_0.a.x))))), select(var_0.a.x != var_0.a.x, all(vec4<bool>(all(var_1.yw), var_1.x, true, !var_1.x)), true));
    return select(!vec4<bool>(arg_0.x > _wgslsmith_dot_vec2_i32(arg_0.zy, vec2<i32>(-1i, 0i)), any(vec2<bool>(true, true)), all(!var_2.a.a), select(arg_2, 4294967295u > u_input.b, true)), var_1, vec4<bool>(all(vec2<bool>(arg_2, var_2.a.a.x)), var_2.a.a.x, !(!all(var_1.xx)), arg_2));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_4 {
    let var_0 = Struct_5(Struct_1(vec2<bool>(true, select(arg_2.e, true, false))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a.x))), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -545f))))), _wgslsmith_clamp_u32(arg_2.b.x, 1u, max(82078u, _wgslsmith_sub_u32(arg_2.b.x, arg_2.b.x))) ^ _wgslsmith_add_u32(~(~4294967295u), arg_2.b.x), arg_2.d, Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -666f)), true))), ~(~vec4<u32>(u_input.d.x, u_input.b, arg_2.b.x, 4294967295u) >> (u_input.d % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a.x, arg_0.a.x))))), arg_2.d, all(vec4<bool>(true, arg_1.x, u_input.e != u_input.e, true))));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.a.x);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(663f - _wgslsmith_f_op_f32(var_1 + arg_0.a.x)))));
    return arg_2;
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = 156f;
    var_0 = _wgslsmith_f_op_f32(-941f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * 642f), arg_0.a.x)))));
    var var_1 = 4294967295u;
    var var_2 = !(!select(!func_2(vec3<i32>(u_input.e, 1i, u_input.e), 1189f, false, arg_2), vec4<bool>(arg_0.d.x, true, arg_0.d.x, !arg_1), select(!vec4<bool>(false, arg_1, false, true), vec4<bool>(arg_1, false, arg_0.e, arg_1), func_2(vec3<i32>(u_input.e, 1i, u_input.e), -394f, arg_0.e, Struct_2(arg_2.a)).x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(arg_2.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(490f * 271f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, arg_0.c.a.x) * _wgslsmith_f_op_f32(arg_0.c.a.x + arg_2.a.x))), select((u_input.e >> (41934u % 32u)) != _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, u_input.e, -26410i), vec4<i32>(u_input.e, -46673i, 54615i, -8334i)), false, arg_1)))));
    return select(!(!vec4<bool>(select(arg_1, true, false), arg_0.b.x <= 4294967295u, any(vec3<bool>(true, arg_1, arg_1)), func_2(vec3<i32>(u_input.e, -1i, -2147483647i), 360f, false, arg_0.c).x)), select(vec4<bool>(var_2.x, arg_0.e, true, true), select(vec4<bool>(arg_0.d.x & false, true, true, false), func_2(~vec3<i32>(-1i, -3358i, 18141i), _wgslsmith_f_op_f32(sign(-1026f)), true, arg_2), vec4<bool>(all(var_2.yx), func_2(vec3<i32>(u_input.e, u_input.e, -1i), arg_2.a.x, true, Struct_2(vec2<f32>(-1000f, 478f))).x, all(vec2<bool>(arg_0.e, arg_1)), true)), func_2(vec3<i32>(i32(-1i) * -22598i, 2147483647i, u_input.e), _wgslsmith_f_op_f32(-arg_2.a.x), !arg_0.d.x, func_4(Struct_2(vec2<f32>(-191f, -1000f)), select(vec4<bool>(arg_0.e, false, true, true), vec4<bool>(false, true, var_2.x, arg_1), true), func_4(Struct_2(vec2<f32>(1357f, 470f)), vec4<bool>(var_2.x, var_2.x, true, arg_1), Struct_4(arg_2.a, u_input.d, Struct_2(arg_2.a), vec3<bool>(false, false, var_2.x), arg_1))).c)), select(select(!(!vec4<bool>(arg_1, var_2.x, true, arg_1)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(var_2.x, false, false, true), vec4<bool>(false, false, false, arg_1), true), select(vec4<bool>(false, true, false, arg_1), vec4<bool>(true, arg_1, arg_1, false), arg_0.e), !vec4<bool>(false, var_2.x, var_2.x, true))), vec4<bool>(true, true, true, true), vec4<bool>(u_input.e < -u_input.e, true, all(vec4<bool>(false, true, false, var_2.x)), any(select(vec4<bool>(true, arg_1, arg_0.e, var_2.x), vec4<bool>(false, false, false, arg_1), arg_0.e)))));
}

fn func_1() -> Struct_5 {
    let var_0 = -vec2<i32>(2147483647i, _wgslsmith_div_i32(u_input.e | (u_input.e ^ -17413i), -(u_input.e << (86146u % 32u))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-274f - 1439f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1275f, 1550f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(783f, 1504f))))));
    var var_2 = vec4<bool>(!(true | !all(vec4<bool>(false, false, false, false))), false, !(u_input.b > u_input.d.x), all(vec3<bool>(all(vec3<bool>(false, true, true)), !(4294967295u >= u_input.c), false)));
    var_2 = vec4<bool>(any(select(var_2.xy, !(!var_2.wz), vec2<bool>(any(vec2<bool>(false, var_2.x)), true))), true, any(func_5(func_4(Struct_2(var_1.a), func_2(vec3<i32>(var_0.x, -2147483647i, 0i), var_1.a.x, var_2.x, var_1), Struct_4(var_1.a, u_input.d, var_1, var_2.yzx, var_2.x)), true || all(var_2.yyw), func_4(func_4(Struct_2(var_1.a), vec4<bool>(true, var_2.x, var_2.x, true), Struct_4(var_1.a, vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.a), var_1, var_2.yww, var_2.x)).c, vec4<bool>(var_2.x, true, false, true), func_4(var_1, vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), Struct_4(var_1.a, vec4<u32>(4294967295u, 43054u, u_input.b, u_input.a), var_1, vec3<bool>(false, var_2.x, var_2.x), var_2.x))).c)), var_2.x && (u_input.b < u_input.b));
    let var_3 = Struct_2(var_1.a);
    return Struct_5(Struct_1(func_2(vec3<i32>(0i, -u_input.e, reverseBits(var_0.x)), 558f, func_5(Struct_4(vec2<f32>(var_1.a.x, -320f), vec4<u32>(24351u, u_input.d.x, u_input.d.x, u_input.a), Struct_2(var_3.a), vec3<bool>(true, true, true), var_2.x), u_input.a >= u_input.a, var_3).x, func_4(Struct_2(vec2<f32>(var_1.a.x, var_3.a.x)), !vec4<bool>(var_2.x, false, var_2.x, false), Struct_4(vec2<f32>(-269f, -1540f), vec4<u32>(1u, u_input.c, u_input.a, u_input.c), Struct_2(var_3.a), var_2.xzy, var_2.x)).c).zz), vec2<f32>(1736f, var_1.a.x), _wgslsmith_dot_vec3_u32(~min(u_input.d.zzx, ~vec3<u32>(u_input.d.x, 39499u, u_input.b)), (~u_input.d.wyx >> (~u_input.d.yzx % vec3<u32>(32u))) | firstLeadingBit(vec3<u32>(u_input.b, 0u, u_input.b))), var_2.zzz, func_4(var_1, select(vec4<bool>(!var_2.x, true, false, !var_2.x), !vec4<bool>(var_2.x, false, var_2.x, true), !vec4<bool>(var_2.x, true, true, false)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x)), u_input.d, Struct_2(_wgslsmith_f_op_vec2_f32(select(var_3.a, var_1.a, false))), var_2.yzy, -560f < _wgslsmith_f_op_f32(max(1000f, var_3.a.x)))));
}

fn func_6(arg_0: f32, arg_1: Struct_5, arg_2: Struct_4) -> vec4<f32> {
    var var_0 = u_input.e <= u_input.e;
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(209f)), arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -622f));
    var_0 = any(!vec2<bool>(arg_1.e.d.x, true));
    var var_2 = !any(!vec4<bool>(arg_2.d.x, !arg_2.d.x, any(arg_1.d), false));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.a.x, arg_0, -178f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1473f, arg_1.b.x, arg_0))))));
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1005f - var_1.x)))), var_3.x, var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(660f, _wgslsmith_f_op_f32(abs(1439f))))))));
}

fn func_7(arg_0: vec4<f32>, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = func_1().e;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-643f, -161f, -160f) - arg_0.wwy) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(371f, arg_0.x, arg_0.x), arg_0.zwy))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-394f, arg_0.x, func_4(var_0.c, vec4<bool>(true, var_0.e, var_0.e, true), Struct_4(vec2<f32>(473f, -369f), var_0.b, var_0.c, vec3<bool>(false, true, var_0.d.x), var_0.d.x)).c.a.x))) - arg_0.zzy), !(!func_2(vec3<i32>(-3884i, 21483i, 0i), _wgslsmith_f_op_f32(ceil(906f)), false, var_0.c).yyy)));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2374f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1036f) * -896f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1152f, 1000f, var_0.a.x)))) + vec3<f32>(func_1().b.x, -1732f, _wgslsmith_f_op_f32(select(456f, _wgslsmith_f_op_f32(round(-1430f)), false)))));
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c.a.x, -2292f), arg_0.zx)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.ww)))) * vec2<f32>(_wgslsmith_f_op_f32(-475f - var_0.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_6(var_0.c.a.x, Struct_5(Struct_1(vec2<bool>(true, true)), vec2<f32>(-1000f, 1056f), var_0.b.x, var_0.d, Struct_4(vec2<f32>(1000f, var_0.a.x), u_input.d, Struct_2(arg_0.yy), var_0.d, false)), Struct_4(vec2<f32>(var_1.x, var_0.a.x), u_input.d, var_0.c, var_0.d, true))).x * _wgslsmith_div_f32(-1000f, var_1.x)))), ~vec4<u32>(var_0.b.x, 1u >> (~u_input.d.x % 32u), u_input.c, ~u_input.d.x), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yw + vec2<f32>(902f, var_1.x)) * arg_0.xy))), !(!func_4(Struct_2(var_0.c.a), func_5(Struct_4(vec2<f32>(var_0.c.a.x, 953f), vec4<u32>(u_input.d.x, 4294967295u, 23301u, u_input.a), var_0.c, vec3<bool>(var_0.d.x, true, var_0.e), var_0.d.x), var_0.e, var_0.c), func_1().e).d), all(func_4(Struct_2(arg_0.zw), select(vec4<bool>(var_0.e, var_0.e, var_0.d.x, var_0.e), vec4<bool>(var_0.e, var_0.e, var_0.e, var_0.d.x), all(vec2<bool>(var_0.d.x, true))), Struct_4(_wgslsmith_f_op_vec2_f32(sign(var_1.xx)), ~vec4<u32>(62103u, 0u, 0u, var_0.b.x), func_1().e.c, !vec3<bool>(true, false, var_0.e), false || var_0.e)).d.zx));
    var var_2 = 780f;
    return Struct_3(Struct_1(vec2<bool>(var_0.d.x, var_0.d.x)), Struct_2(vec2<f32>(274f, 909f)), !all(func_5(Struct_4(arg_0.yy, var_0.b, Struct_2(arg_0.yz), vec3<bool>(var_0.d.x, true, true), true), false, func_4(Struct_2(vec2<f32>(var_0.a.x, 416f)), vec4<bool>(true, var_0.d.x, true, true), Struct_4(var_1.zx, var_0.b, Struct_2(vec2<f32>(var_0.a.x, arg_0.x)), vec3<bool>(var_0.e, false, var_0.d.x), var_0.e)).c).yxy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -708f)), _wgslsmith_f_op_f32(-493f + 1036f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1670f * _wgslsmith_f_op_f32(f32(-1f) * -881f))))));
    var_0 = vec3<f32>(1f, var_0.x, var_0.x);
    var var_1 = 113175u;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_f_op_f32(-871f * -635f))));
    var var_2 = -1000f;
    let var_3 = _wgslsmith_f_op_f32(sign(116f));
    let var_4 = func_7(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f)), func_1(), Struct_4(vec2<f32>(var_0.x, var_0.x), u_input.d, Struct_2(vec2<f32>(729f, var_0.x)), vec3<bool>(false, true, true), true))))), vec2<i32>(min(u_input.e, reverseBits(min(-1i, -2147483647i))), firstLeadingBit(u_input.e & -14720i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.zy), -996f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-295f - var_4.b.a.x))), var_4.b.a.x));
}

