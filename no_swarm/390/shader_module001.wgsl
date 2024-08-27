struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<f32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    var var_0 = u_input.a.x;
    let var_1 = vec2<u32>(abs(43970u), u_input.a.x);
    return arg_2.c.b.a;
}

fn func_2() -> vec4<bool> {
    var var_0 = -1262f;
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(round(-835f)), abs(~(~u_input.a.x)), Struct_2(Struct_1(false, vec3<bool>(false, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1016f, -1167f) + vec2<f32>(-597f, -863f)), u_input.e, vec4<i32>(23882i, u_input.e, 0i, u_input.e)), Struct_1(u_input.d == u_input.d, vec3<bool>(false, false, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-716f, -980f) - vec2<f32>(-697f, -639f)), _wgslsmith_add_i32(0i, u_input.b), ~vec4<i32>(u_input.e, u_input.e, 2147483647i, -2147483647i))), 2024f, ~_wgslsmith_add_u32(u_input.a.x & u_input.a.x, 22361u)), vec3<bool>(!(all(vec3<bool>(true, true, true)) && func_3(Struct_1(false, vec3<bool>(true, false, false), vec2<f32>(657f, -1000f), 2147483647i, vec4<i32>(54951i, -1i, 2147483647i, u_input.e)), Struct_2(Struct_1(true, vec3<bool>(false, false, false), vec2<f32>(-2570f, 859f), u_input.d, vec4<i32>(-38573i, u_input.b, u_input.b, 1i)), Struct_1(false, vec3<bool>(false, false, false), vec2<f32>(-836f, -898f), -6121i, vec4<i32>(u_input.e, u_input.e, -15348i, u_input.d))), Struct_3(596f, u_input.a.x, Struct_2(Struct_1(true, vec3<bool>(true, false, false), vec2<f32>(-1000f, 1957f), u_input.d, vec4<i32>(2147483647i, 2619i, 2147483647i, -64736i)), Struct_1(false, vec3<bool>(true, false, false), vec2<f32>(-528f, -270f), u_input.b, vec4<i32>(u_input.d, 1i, -40275i, u_input.e))), 578f, u_input.a.x), Struct_1(false, vec3<bool>(false, true, true), vec2<f32>(-159f, 661f), -8397i, vec4<i32>(u_input.e, u_input.b, u_input.e, 1i)))), !select(all(vec3<bool>(true, true, false)), true, func_3(Struct_1(true, vec3<bool>(true, true, true), vec2<f32>(2258f, -101f), 31556i, vec4<i32>(2147483647i, -49275i, u_input.e, u_input.d)), Struct_2(Struct_1(true, vec3<bool>(false, false, false), vec2<f32>(157f, -488f), -7380i, vec4<i32>(195i, u_input.d, -1i, u_input.d)), Struct_1(false, vec3<bool>(false, false, true), vec2<f32>(-385f, 250f), 0i, vec4<i32>(26412i, -2147483647i, 2147483647i, -2147483647i))), Struct_3(1779f, 123246u, Struct_2(Struct_1(false, vec3<bool>(false, true, true), vec2<f32>(3038f, 2860f), u_input.d, vec4<i32>(19994i, u_input.e, u_input.d, u_input.b)), Struct_1(false, vec3<bool>(false, true, true), vec2<f32>(-822f, -374f), 2147483647i, vec4<i32>(u_input.d, u_input.d, u_input.b, 7605i))), 638f, 61294u), Struct_1(true, vec3<bool>(false, false, false), vec2<f32>(-1000f, 1025f), -2147483647i, vec4<i32>(u_input.e, u_input.d, u_input.e, u_input.e)))), !select(any(vec3<bool>(true, false, true)), true, true)));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(540f + -291f)) * var_1.a.a))));
    global0 = array<vec2<bool>, 4>();
    var_0 = var_1.a.a;
    return !vec4<bool>(!func_3(Struct_1(var_1.b.x, vec3<bool>(var_1.b.x, true, false), var_1.a.c.b.c, -2147483647i, var_1.a.c.a.e), Struct_2(Struct_1(true, var_1.a.c.a.b, vec2<f32>(var_1.a.a, var_1.a.d), var_1.a.c.a.d, var_1.a.c.b.e), Struct_1(false, vec3<bool>(var_1.b.x, var_1.b.x, true), vec2<f32>(-1110f, var_1.a.a), var_1.a.c.b.d, vec4<i32>(u_input.e, -34780i, 16922i, 5419i))), var_1.a, Struct_1(true, vec3<bool>(var_1.a.c.a.a, var_1.a.c.b.a, false), var_1.a.c.a.c, -2147483647i, vec4<i32>(0i, -47974i, u_input.e, 1i))), true, all(var_1.b), false);
}

fn func_1() -> Struct_3 {
    var var_0 = select(select(func_2(), vec4<bool>(true, all(vec4<bool>(false, true, false, false)), false, any(vec3<bool>(true, true, true))), vec4<bool>(func_3(Struct_1(false, vec3<bool>(true, true, false), vec2<f32>(-604f, 233f), -16428i, vec4<i32>(u_input.d, u_input.e, u_input.d, 4444i)), Struct_2(Struct_1(true, vec3<bool>(true, false, false), vec2<f32>(211f, -1044f), 39470i, vec4<i32>(u_input.b, 0i, 29i, -58358i)), Struct_1(true, vec3<bool>(true, false, false), vec2<f32>(1000f, -2234f), -2147483647i, vec4<i32>(u_input.e, 15020i, -2147483647i, u_input.e))), Struct_3(-886f, u_input.a.x, Struct_2(Struct_1(false, vec3<bool>(false, true, false), vec2<f32>(-326f, -1366f), 2147483647i, vec4<i32>(-1171i, -22345i, -1i, 1i)), Struct_1(false, vec3<bool>(false, false, false), vec2<f32>(-2005f, 1388f), -16207i, vec4<i32>(-2147483647i, 34733i, u_input.b, u_input.b))), 996f, 0u), Struct_1(true, vec3<bool>(true, true, true), vec2<f32>(-1389f, -1000f), u_input.e, vec4<i32>(15691i, 1i, u_input.e, u_input.d))), !all(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, false)), !any(global0[_wgslsmith_index_u32(20523u, 4u)]))), vec4<bool>(true, true, true, true), false);
    var_0 = vec4<bool>(!(!any(!vec4<bool>(var_0.x, false, var_0.x, var_0.x))), true, select(!var_0.x, true, select(!(!var_0.x), any(func_2().wyw), false)), true);
    let var_1 = ~select(_wgslsmith_add_vec3_u32(u_input.c, select(vec3<u32>(u_input.a.x, 33394u, 14480u), vec3<u32>(41406u, 14998u, u_input.c.x), var_0.x)), ~_wgslsmith_div_vec3_u32(~u_input.c, ~vec3<u32>(u_input.a.x, u_input.a.x, 0u)), var_0.wyy);
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1440f * -388f) - -1359f)), u_input.a.x, Struct_2(Struct_1(true, var_0.wzw, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1381f, 1809f) * vec2<f32>(-182f, -334f)), ~u_input.d, countOneBits(vec4<i32>(u_input.e, u_input.b, -1i, -1i))), Struct_1(true, select(var_0.zyy, var_0.wwx, vec3<bool>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -774f) + vec2<f32>(1727f, 341f)), u_input.e, min(vec4<i32>(u_input.d, 0i, -39686i, u_input.e), vec4<i32>(u_input.d, u_input.e, 1i, u_input.d)))), _wgslsmith_f_op_f32(-1f), 1u), vec3<bool>(!(!(false | var_0.x)), func_3(Struct_1(all(vec3<bool>(false, false, var_0.x)), select(var_0.zxw, vec3<bool>(var_0.x, false, true), var_0.zxy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1742f, 1000f)), u_input.e, vec4<i32>(0i, -24420i, u_input.e, -43079i) >> (vec4<u32>(var_1.x, u_input.c.x, u_input.c.x, 35377u) % vec4<u32>(32u))), Struct_2(Struct_1(true, vec3<bool>(false, false, true), vec2<f32>(-1000f, -892f), -1i, vec4<i32>(u_input.d, u_input.e, u_input.e, 2147483647i)), Struct_1(var_0.x, vec3<bool>(true, var_0.x, false), vec2<f32>(-476f, 1353f), 1i, vec4<i32>(1i, -35189i, u_input.d, u_input.b))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -307f), ~11057u, Struct_2(Struct_1(true, var_0.zyx, vec2<f32>(1248f, -305f), u_input.e, vec4<i32>(u_input.b, 0i, 0i, u_input.b)), Struct_1(true, vec3<bool>(var_0.x, var_0.x, var_0.x), vec2<f32>(803f, -108f), u_input.b, vec4<i32>(u_input.b, -12317i, u_input.d, -1i))), 1022f, firstLeadingBit(var_1.x)), Struct_1(true, select(var_0.zzx, var_0.xzx, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-696f, -595f)), -46924i, max(vec4<i32>(-18941i, 22060i, u_input.b, 4218i), vec4<i32>(41635i, u_input.d, u_input.d, -1i)))), func_2().x));
    global0 = array<vec2<bool>, 4>();
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(407f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.d) * _wgslsmith_f_op_f32(var_2.a.c.b.c.x + -948f)))), _wgslsmith_mult_u32(0u | _wgslsmith_mod_u32(var_2.a.b, ~1u), var_2.a.b), Struct_2(Struct_1(!func_3(Struct_1(true, vec3<bool>(var_0.x, var_0.x, var_2.b.x), vec2<f32>(-653f, var_2.a.a), 1716i, vec4<i32>(var_2.a.c.a.e.x, 37182i, u_input.d, -69701i)), Struct_2(Struct_1(false, vec3<bool>(var_0.x, false, true), vec2<f32>(-323f, var_2.a.c.b.c.x), u_input.b, var_2.a.c.b.e), Struct_1(var_2.a.c.a.b.x, vec3<bool>(var_0.x, true, false), var_2.a.c.a.c, var_2.a.c.a.e.x, vec4<i32>(-26446i, var_2.a.c.b.d, -2147483647i, u_input.b))), var_2.a, Struct_1(var_2.b.x, vec3<bool>(true, var_0.x, var_2.a.c.b.b.x), var_2.a.c.a.c, var_2.a.c.b.e.x, var_2.a.c.b.e)), select(select(var_0.yww, var_2.b, vec3<bool>(var_0.x, var_0.x, true)), !var_2.a.c.b.b, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-420f, var_2.a.c.a.c.x)))), ~(~var_2.a.c.a.e.x), ~(-var_2.a.c.b.e)), Struct_1(var_0.x, !(!var_2.a.c.b.b), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, var_2.a.c.a.c.x))), (u_input.d >> (1u % 32u)) << (~4294967295u % 32u), var_2.a.c.b.e ^ ~var_2.a.c.a.e)), var_2.a.c.b.c.x, min(~(~firstLeadingBit(0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(26918u, u_input.a.x | 1u), vec2<u32>(63770u, ~var_2.a.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(427f, -669f, 1712f, 383f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1233f, -1372f, 1166f, 750f) - vec4<f32>(-1922f, -158f, 1000f, -1488f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-729f, -1067f, 155f, -202f))))))));
    var var_1 = true;
    let var_2 = func_1();
    var_1 = true & !(false && ((1059f < var_2.c.b.c.x) && true));
    var_1 = true;
    let var_3 = Struct_4(var_2, vec3<bool>(any(vec2<bool>(false || var_2.c.a.b.x, true)), true, var_2.c.a.b.x));
    var var_4 = vec4<bool>(false, true, var_3.b.x, func_3(var_2.c.b, var_2.c, func_1(), var_2.c.b));
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.d, var_2.d) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, 1002f))))))));
    var_4 = vec4<bool>(var_4.x, var_3.b.x, false & func_2().x, any(func_2().zz));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2.b), _wgslsmith_f_op_f32(var_3.a.d * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1425f, _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_mult_u32(u_input.c.x, firstLeadingBit(~var_3.a.b)) ^ var_2.e, ~14087u, u_input.a.x);
}

