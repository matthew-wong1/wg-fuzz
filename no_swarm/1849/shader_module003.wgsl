struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>) -> f32 {
    var var_0 = !select(vec3<bool>(all(vec3<bool>(true, false, true)), select(true, any(vec2<bool>(false, true)), true), !select(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, false, true, false)), false), true), vec3<bool>(_wgslsmith_div_f32(arg_0.x, 1083f) > -1327f, any(vec2<bool>(true, true)), select(true, true, true)));
    var_0 = select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, false, true), var_0.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1948f)))))), var_0.yz, select(_wgslsmith_div_vec3_u32(u_input.a | select(vec3<u32>(78441u, u_input.b, u_input.b), u_input.a, true), vec3<u32>(1u, u_input.a.x, ~u_input.b)), min(u_input.a, ~select(vec3<u32>(2997u, u_input.b, u_input.a.x), vec3<u32>(4294967295u, u_input.b, 98298u), true)), var_0.x), ~u_input.a);
    var var_2 = var_0.x & ((all(vec4<bool>(var_1.b.x, var_0.x, var_1.b.x, var_1.b.x)) && !all(vec2<bool>(true, false))) || !all(vec2<bool>(true, false)));
    let var_3 = Struct_4(Struct_2(var_1, var_1, _wgslsmith_f_op_f32(abs(770f))));
    return arg_0.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<f32>) -> vec3<bool> {
    return select(!vec3<bool>(_wgslsmith_f_op_f32(func_3(vec4<f32>(arg_1.a, -1246f, arg_1.a, arg_0.x), vec4<f32>(arg_3.x, arg_1.a, -918f, -1000f))) != _wgslsmith_f_op_f32(arg_0.x * arg_1.a), !(!arg_2.a.b.x), true), select(!select(vec3<bool>(true, arg_1.b.x, false), vec3<bool>(true, false, arg_1.b.x), select(vec3<bool>(false, false, false), vec3<bool>(arg_2.a.b.x, arg_1.b.x, true), arg_1.b.x)), select(!vec3<bool>(false, false, arg_1.b.x), vec3<bool>(!arg_1.b.x, false, all(vec3<bool>(arg_1.b.x, arg_1.b.x, false))), arg_1.b.x), !vec3<bool>(select(false, arg_1.b.x, arg_1.b.x), true, true)), !(!vec3<bool>(all(arg_1.b), u_input.a.x >= arg_2.a.d.x, all(vec4<bool>(arg_1.b.x, true, false, true)))));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1359f, _wgslsmith_div_f32(-1270f, 1542f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec4<f32>(-421f, -1015f, -377f, -1572f), vec4<f32>(2705f, -411f, 242f, 303f)))))), -574f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -981f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(120f - -1604f)))), -338f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -437f), select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, u_input.b, 836u), vec3<u32>(0u, 8761u, 22447u)), vec3<u32>(4294967295u, u_input.a.x, 16390u) >> (vec3<u32>(u_input.b, u_input.a.x, 0u) % vec3<u32>(32u))), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 10671u, 1831u), u_input.a))), Struct_3(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-484f - 748f), 490f)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec3<u32>(u_input.a.x & u_input.b, u_input.b << (u_input.b % 32u), _wgslsmith_clamp_u32(0u, 6522u, 0u)), u_input.a)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(-1000f, -1340f, 172f, 756f), vec4<f32>(172f, -372f, -585f, 1186f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-910f))), _wgslsmith_f_op_f32(min(-292f, _wgslsmith_f_op_f32(ceil(1358f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1428f, -333f)) - _wgslsmith_f_op_f32(314f - -309f))))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(1f + 1f), vec2<bool>(all(vec4<bool>(true, false, var_0.x, var_0.x)), select(func_4(vec4<f32>(-1751f, 911f, 2033f, 1289f), Struct_1(-730f, var_0.zz, u_input.a, vec3<u32>(60733u, u_input.b, 0u)), Struct_3(Struct_1(1000f, var_0.zz, vec3<u32>(u_input.a.x, 1u, 3301u), u_input.a)), vec4<f32>(-1090f, -1074f, -637f, 1266f)).x, !var_0.x, u_input.a.x == u_input.b)), vec3<u32>(~4294967295u, 16745u, _wgslsmith_div_u32(u_input.a.x & 56100u, u_input.a.x)), vec3<u32>(u_input.b, 64051u, ~1u)));
    let var_2 = !select(select(select(vec4<bool>(var_1.a.b.x, var_1.a.b.x, var_0.x, var_1.a.b.x), vec4<bool>(false, false, true, var_1.a.b.x), true), vec4<bool>(func_4(vec4<f32>(var_1.a.a, -499f, var_1.a.a, 1420f), var_1.a, Struct_3(var_1.a), vec4<f32>(1323f, 920f, -591f, var_1.a.a)).x, all(vec2<bool>(var_1.a.b.x, true)), true, true), (i32(-1i) * -34029i) <= select(-2147483647i, 1i, var_0.x)), select(vec4<bool>(!var_1.a.b.x, true, !var_1.a.b.x, false), select(vec4<bool>(false, var_0.x, true, false), select(vec4<bool>(false, var_0.x, var_0.x, var_1.a.b.x), vec4<bool>(var_1.a.b.x, false, true, true), false), var_0.x), 4294967295u >= _wgslsmith_sub_u32(var_1.a.d.x, var_1.a.c.x)), !select(any(var_1.a.b), var_0.x, var_1.a.b.x));
    let var_3 = Struct_1(673f, vec2<bool>(!all(vec4<bool>(false, var_2.x, true, true)), 1u >= u_input.b), _wgslsmith_mult_vec3_u32(~u_input.a, abs(~(~vec3<u32>(3591u, 4294967295u, u_input.a.x)))), reverseBits(select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.c.x, 36401u, 0u), vec3<u32>(108720u, 360u, 1u)), _wgslsmith_sub_vec3_u32(u_input.a, ~vec3<u32>(42136u, u_input.a.x, 41778u)), any(var_2.yxy) && !var_0.x)));
    let var_4 = Struct_2(Struct_1(var_1.a.a, var_2.yy, ~vec3<u32>(var_3.c.x, 2514u, 1u) << (vec3<u32>(12559u, u_input.a.x, firstTrailingBit(0u)) % vec3<u32>(32u)), vec3<u32>(0u, var_1.a.c.x, _wgslsmith_clamp_u32(~var_1.a.c.x, u_input.a.x ^ u_input.b, 45298u))), var_1.a, 516f);
    return Struct_1(-125f, func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.a.a, var_4.c, var_3.a)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.a, 433f, -313f, var_4.a.a), vec4<f32>(var_1.a.a, var_4.a.a, 2401f, var_4.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a, var_3.a, var_4.c, -296f)))), Struct_1(-1916f, vec2<bool>(true, all(vec4<bool>(true, var_4.b.b.x, var_1.a.b.x, false))), ~(~vec3<u32>(5965u, 1u, 0u)), select(firstLeadingBit(u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(66830u, var_3.c.x, var_1.a.c.x), vec3<u32>(4294967295u, var_1.a.d.x, 1u)), any(vec3<bool>(false, var_4.b.b.x, var_0.x)))), var_1, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(843f * 2745f))), 592f, var_4.c, _wgslsmith_f_op_f32(f32(-1f) * -129f))).zx, vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_1.a.c.yy, vec2<u32>(20289u, 12615u)), select(0u, 29213u, false)), select(~(var_3.c.x | var_1.a.c.x), 0u, true), 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(min(35951u, var_4.b.c.x), abs(67256u)), _wgslsmith_add_u32(~4294967295u, ~1u)), _wgslsmith_mult_vec3_u32(var_1.a.d, _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.d.x, 4294967295u, u_input.a.x), ~vec3<u32>(var_4.a.c.x, var_3.d.x, 62720u)))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-925f, _wgslsmith_f_op_f32(floor(-845f)), _wgslsmith_f_op_f32(trunc(-804f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1826f, _wgslsmith_f_op_f32(-1782f + 979f))))));
    var var_1 = var_0.yy;
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(219f, -428f, 1052f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -2426f, arg_0.b.a) + vec3<f32>(1593f, -880f, 1551f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, 415f, -712f), vec3<f32>(var_0.x, var_0.x, arg_0.c)))))))));
    var_1 = var_0.xy;
    var_1 = var_0.yx;
    return arg_1;
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-955f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(-1015f, vec2<bool>(true, true), vec3<u32>(u_input.b, 0u, u_input.a.x), vec3<u32>(8778u, 59524u, u_input.b)), Struct_1(1361f, vec2<bool>(false, false), u_input.a, vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)), -353f), _wgslsmith_f_op_f32(min(-954f, 1309f)), func_2(), select(false, true, false))))), 1f, (all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)) && any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)))) && true));
    var var_1 = -(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, 6296i), abs(-36444i), 1i), _wgslsmith_clamp_i32(abs(-2147483647i), 2147483647i, -8260i >> (u_input.a.x % 32u))) << (u_input.b % 32u));
    var var_2 = !vec3<bool>(func_4(vec4<f32>(_wgslsmith_f_op_f32(var_0 * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(-187f - -906f), _wgslsmith_div_f32(var_0, -1425f)), Struct_1(_wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(var_0, vec2<bool>(true, false), u_input.a, u_input.a), Struct_1(var_0, vec2<bool>(true, true), vec3<u32>(10062u, u_input.b, 34773u), vec3<u32>(u_input.a.x, u_input.b, u_input.b)), var_0), var_0, Struct_1(var_0, vec2<bool>(true, false), u_input.a, u_input.a), false)), vec2<bool>(true, true), vec3<u32>(u_input.a.x, 35190u, 42961u) >> (vec3<u32>(u_input.b, 4294967295u, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.b)), Struct_3(Struct_1(var_0, vec2<bool>(true, false), u_input.a, u_input.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, var_0, var_0, 1298f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -461f, var_0, 319f)))).x, true, (u_input.a.x > (12366u & u_input.b)) | all(vec4<bool>(true, false, true, false)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(398f)), _wgslsmith_f_op_f32(func_5(Struct_2(func_2(), Struct_1(var_0, var_2.yz, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), u_input.a), u_input.a), var_0), var_0, Struct_1(_wgslsmith_f_op_f32(abs(-1106f)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1487f, var_0, var_0, var_0)), Struct_1(-809f, vec2<bool>(false, var_2.x), u_input.a, u_input.a), Struct_3(Struct_1(var_0, var_2.xy, u_input.a, vec3<u32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -497f, var_0))).zy, select(select(vec3<u32>(20334u, u_input.a.x, u_input.b), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, false, true)), abs(vec3<u32>(12106u, u_input.b, u_input.a.x)), select(vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(false, false, false))), u_input.a), true)));
    let var_4 = i32(-1i) * -1i;
    return ~(~abs(~u_input.a.yx));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = ~1u;
    var var_1 = 2147483647i;
    var_1 = _wgslsmith_mod_i32(-9350i, -2147483647i);
    var_1 = _wgslsmith_dot_vec4_i32((firstTrailingBit(vec4<i32>(-38716i, 0i, -2147483647i, 0i) << (arg_0 % vec4<u32>(32u))) >> ((vec4<u32>(4294967295u, var_0, u_input.a.x, 69233u) << (arg_0 % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(4294967295u, firstLeadingBit(~arg_0.x), var_0, var_0) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(~0i, ~27194i, reverseBits(21082i), _wgslsmith_dot_vec3_i32(vec3<i32>(6569i, 2147483647i, 30340i), vec3<i32>(1i, 2147483647i, 20137i))));
    var_1 = reverseBits(_wgslsmith_mod_i32(~0i, 1i));
    return ~abs(101347u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u > ~func_6(~vec4<u32>(45725u, u_input.b, 66930u, u_input.b) << (vec4<u32>(20277u, u_input.b, 12943u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1650f, 458f)))), _wgslsmith_dot_vec2_u32(func_1(), ~vec2<u32>(50327u, 4294967295u)), Struct_1(-1195f, vec2<bool>(false, true), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.b), u_input.a), select(vec3<u32>(26115u, 92704u, u_input.a.x), vec3<u32>(u_input.b, u_input.b, 44998u), vec3<bool>(false, false, true))));
    var_0 = _wgslsmith_clamp_u32(u_input.b, countOneBits(13802u), ~_wgslsmith_mult_u32(32344u, min(1u, 1u))) >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~723u, firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, 52570u)), 0u), ~(~firstLeadingBit(vec4<u32>(20u, 1u, u_input.a.x, 14513u))));
    var_0 = any(select(!vec3<bool>(false, func_2().b.x, all(vec4<bool>(false, false, false, false))), !vec3<bool>(true, any(vec2<bool>(false, true)), true), false));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f)))) * 352f);
    var_0 = false;
    var var_2 = -1837f;
    var_0 = true;
    let var_3 = Struct_2(func_2(), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1143f + -679f) - _wgslsmith_f_op_f32(round(-1000f))))), vec2<bool>(false, true), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.b, 1u) ^ vec3<u32>(u_input.b, u_input.a.x, 4294967295u)), vec3<u32>(u_input.b, _wgslsmith_div_u32(~21466u, reverseBits(4093u)), 4294967295u)), -231f);
    let var_4 = _wgslsmith_dot_vec3_i32(max(vec3<i32>(~abs(-10339i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(56802i, 17717i, -1i, -2147483647i)), vec4<i32>(-10180i, -86036i, 1i, 43290i)), 0i), vec3<i32>(1i, 1i, 1i)), vec3<i32>(abs(select(~(-4729i), countOneBits(-1i), false)), 1i, i32(-1i) * -20991i));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec2<f32>(-108f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.c)) - _wgslsmith_f_op_f32(sign(var_3.b.a)))), 698f, ~u_input.a.xx, var_3.a.a);
}

