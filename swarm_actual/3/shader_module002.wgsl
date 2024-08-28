struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = vec4<f32>(833f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.c.a)), arg_0.a.a.a)), _wgslsmith_f_op_f32(arg_0.a.a.a - 767f), 234f);
    var var_2 = !arg_0.a.b;
    var var_3 = abs(~(~firstTrailingBit(0u) << (u_input.d.x % 32u)));
    return firstTrailingBit(~(u_input.b >> (vec3<u32>(105387u, 4294967295u, u_input.c) % vec3<u32>(32u)))) << (vec3<u32>(u_input.c, 1u, u_input.b.x) % vec3<u32>(32u));
}

fn func_2() -> Struct_1 {
    var var_0 = func_3(Struct_3(Struct_2(Struct_1(-2557f, 0i), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(721f + -457f) + _wgslsmith_f_op_f32(max(569f, 741f))), -2147483647i), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -886f), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, -50765i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 53909i, u_input.a.x, u_input.a.x), vec4<i32>(-29832i, 1i, -47724i, 0i)))), Struct_1(350f, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(u_input.a.x, -39744i)))));
    var var_1 = u_input.e.wzx;
    let var_2 = u_input.a.x;
    var var_3 = Struct_3(Struct_2(Struct_1(-386f, _wgslsmith_dot_vec2_i32(vec2<i32>(52707i, 17155i), vec2<i32>(u_input.a.x, 1i))), !vec4<bool>(true, all(vec2<bool>(true, false)), select(false, true, false), true)), Struct_1(_wgslsmith_f_op_f32(345f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1145f))), min(-2619i, _wgslsmith_mult_i32(23732i, ~var_2))), Struct_1(_wgslsmith_f_op_f32(min(-557f, _wgslsmith_div_f32(172f, -624f))), firstTrailingBit(57390i)), Struct_1(-1000f, u_input.a.x));
    let var_4 = Struct_4(vec2<i32>(var_2 | (11104i << (~var_1.x % 32u)), var_2), Struct_3(var_3.a, var_3.d, var_3.c, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-610f)), -1000f), var_3.b.b)));
    return Struct_1(_wgslsmith_f_op_f32(floor(-2549f)), ~(-6530i));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-370f, 812f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a, -213f) + vec2<f32>(arg_1.a.a, arg_1.a.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1180f, 598f) * vec2<f32>(763f, -432f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.a.a, -427f))))))))));
    var var_1 = arg_1.a;
    let var_2 = vec2<bool>(!select(true || all(vec3<bool>(true, arg_1.b.x, arg_1.b.x)), arg_1.b.x, all(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x))), !(1i <= var_1.b) & arg_1.b.x);
    let var_3 = vec2<i32>(u_input.a.x, 399i);
    var_1 = Struct_1(-293f, -2147483647i << (0u % 32u));
    return arg_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: i32) -> bool {
    var var_0 = ~u_input.d;
    var_0 = ~u_input.d;
    var_0 = vec3<u32>(u_input.b.x, var_0.x, _wgslsmith_mod_u32(70908u, abs(1u)));
    var_0 = vec3<u32>(~(~61060u), _wgslsmith_sub_u32(1u, 1u), ~(_wgslsmith_add_u32(23394u, ~u_input.e.x) ^ _wgslsmith_mult_u32(~arg_1, _wgslsmith_mult_u32(u_input.b.x, u_input.e.x))));
    var var_1 = vec4<bool>(true, false, any(vec4<bool>(!any(vec3<bool>(true, false, true)), true, true, true)), true);
    return (_wgslsmith_add_u32(arg_1, func_3(Struct_3(Struct_2(Struct_1(-425f, 8062i), vec4<bool>(true, false, var_1.x, false)), Struct_1(arg_0.a, -2147483647i), Struct_1(arg_0.a, arg_0.b), arg_0)).x) < ~_wgslsmith_sub_u32(~0u, 1u)) || (all(!(!vec4<bool>(true, var_1.x, true, var_1.x))) || true);
}

fn func_1() -> Struct_1 {
    var var_0 = any(select(vec2<bool>(true, any(vec4<bool>(true, false, true, false))), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), vec2<bool>(true, false)), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
    var_0 = func_5(func_4(u_input.b, Struct_2(func_2(), vec4<bool>(true, true, true, true))), 4166u, _wgslsmith_mult_i32(func_2().b, _wgslsmith_mult_i32(-2147483647i, u_input.a.x)), -min(max(u_input.a.x, u_input.a.x), ~func_2().b));
    var var_1 = vec2<i32>(1i, abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), 19358i)) & -u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-768f, _wgslsmith_f_op_f32(sign(-517f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(424f, 663f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-207f, 1614f), vec2<f32>(2029f, -410f)))))))));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 351f, -2241f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -149f, var_2.x))) - vec3<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(step(-842f, -1756f)), func_4(u_input.b, Struct_2(Struct_1(var_2.x, u_input.a.x), vec4<bool>(true, true, false, false))).a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1003f, var_2.x), _wgslsmith_f_op_f32(-var_2.x), -1508f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(789f, -608f, var_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1430f, var_2.x, var_2.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, -960f, -145f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(118f, 1181f, -730f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-894f, var_2.x, -813f)), all(vec3<bool>(false, false, false)))))));
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x)))))), -14663i);
}

fn func_6(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = arg_2.a;
    let var_1 = Struct_4(select(-_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_2.a.b), u_input.a & vec2<i32>(arg_2.a.b, arg_2.a.b)), min(_wgslsmith_clamp_vec2_i32(u_input.a ^ vec2<i32>(12416i, 1i), u_input.a, vec2<i32>(arg_2.a.b, 5638i)), reverseBits(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(var_0.b, -1i)))), any(vec4<bool>(true, arg_3, true, arg_3 != false))), Struct_3(Struct_2(func_1(), arg_2.b), arg_2.a, arg_2.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, arg_1, false))), _wgslsmith_add_i32(1i, -arg_2.a.b))));
    var_0 = func_1();
    let var_2 = _wgslsmith_f_op_f32(exp2(1f));
    var_0 = func_1();
    return func_4(~u_input.d, Struct_2(func_1(), !var_1.b.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(!select(true, false, true || all(vec2<bool>(false, true))), _wgslsmith_f_op_f32(floor(1759f)), Struct_2(func_1(), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), u_input.a.x == u_input.a.x)), any(vec4<bool>(true, true, true, func_5(Struct_1(1254f, -8593i), u_input.d.x, u_input.a.x, u_input.a.x))) | true);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 692f), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, 2315f), vec2<f32>(var_0.a, var_0.a))), vec2<f32>(var_0.a, func_2().a), all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(396f, var_0.a) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(565f, var_0.a, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.a)))))));
    var var_2 = -642f;
    var var_3 = var_0.b;
    var_3 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, 0i, ~u_input.a.x), ~(~642i)) << (countOneBits(~u_input.c) % 32u);
    let var_4 = select(any(select(vec3<bool>(var_0.b <= 1i, true, all(vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), true), false)), any(vec4<bool>(func_5(Struct_1(var_1.x, 2147483647i), _wgslsmith_sub_u32(u_input.b.x, 33995u), u_input.a.x, min(var_0.b, var_0.b)), all(vec3<bool>(false, true, true)), true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.x, 579f)), _wgslsmith_f_op_f32(select(var_0.a, var_0.a, true))) + _wgslsmith_f_op_f32(f32(-1f) * -1584f)) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-743f * -1400f))));
    let var_5 = func_5(Struct_1(_wgslsmith_div_f32(276f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3181f + -477f) + 1000f)), 23279i << (u_input.c % 32u)), ~max(abs(_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.e.wy)), 4887u), 0i, ~1i);
    let var_6 = vec4<u32>(~44526u, ~firstLeadingBit(~_wgslsmith_mult_u32(u_input.e.x, 0u)), 15812u, 0u);
    var_2 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)), -756f, var_0.a), min(vec4<i32>(select(-33174i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, var_0.b, u_input.a.x), vec3<i32>(var_0.b, 1860i, -1i)), var_5), var_0.b, _wgslsmith_sub_i32(16852i, var_0.b), u_input.a.x), countOneBits(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -9453i, 14432i, -7922i)), abs(vec4<i32>(-22009i, var_0.b, -2147483647i, var_0.b))))), 1191f, select(-_wgslsmith_dot_vec2_i32(u_input.a, -vec2<i32>(u_input.a.x, u_input.a.x)), var_0.b, false));
}

