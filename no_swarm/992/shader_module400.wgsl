struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = ~firstTrailingBit(~84468u) >> (0u % 32u);
    var var_1 = Struct_3(Struct_1(vec2<f32>(-1325f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(255f))))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 1u) & vec2<u32>(13953u, 103704u), _wgslsmith_add_vec2_u32(vec2<u32>(var_0, u_input.c), vec2<u32>(1u, 35751u))) == select(abs(u_input.b), u_input.b | u_input.b, any(vec2<bool>(true, arg_0))), arg_0, -_wgslsmith_add_i32(1i, i32(-1i) * -1i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(338f, var_1.a.a.x, -734f), vec3<f32>(var_1.a.a.x, -461f, var_1.a.a.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1041f, 688f, var_1.a.a.x)))))));
    let var_3 = var_0;
    var_1 = Struct_3(var_1.a);
    return 1413f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = arg_2;
    let var_1 = any(!select(vec3<bool>(!arg_2, true, true || arg_2), select(select(vec3<bool>(true, false, true), vec3<bool>(arg_3.b, arg_3.b, arg_3.b), arg_3.b), select(vec3<bool>(arg_3.c, arg_3.b, false), vec3<bool>(arg_3.c, false, arg_3.b), vec3<bool>(true, arg_2, arg_2)), arg_3.d >= arg_3.d), all(select(vec4<bool>(arg_2, true, arg_2, true), vec4<bool>(arg_3.b, false, arg_3.c, arg_3.c), vec4<bool>(arg_2, true, arg_3.c, true)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.d.x, _wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))))) - -695f);
    var_0 = arg_3.c;
    let var_3 = Struct_3(arg_3);
    return ~(-_wgslsmith_div_vec3_i32(select(vec3<i32>(44933i, -58375i, 0i), vec3<i32>(arg_3.d, var_3.a.d, 2147483647i), arg_2) >> ((vec3<u32>(u_input.b, u_input.c, 1u) & vec3<u32>(0u, 32442u, arg_1.a)) % vec3<u32>(32u)), reverseBits(~vec3<i32>(arg_3.d, var_3.a.d, 35363i))));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> vec4<u32> {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(func_3(true)), -1068f, _wgslsmith_f_op_f32(abs(908f)))))), Struct_2(~u_input.b, 22913u, ~vec3<u32>(select(u_input.b, arg_0, true), min(4294967295u, u_input.a), 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1108f, -1847f), _wgslsmith_f_op_f32(trunc(1003f)), _wgslsmith_f_op_f32(abs(1051f)), _wgslsmith_f_op_f32(f32(-1f) * -480f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(464f, 1062f, 340f, 911f), vec4<f32>(-963f, 2035f, 1191f, 656f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(697f, -2114f, -2089f, -514f))))), _wgslsmith_div_f32(1033f, 909f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(474f, 181f)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2925f)) * 1746f), _wgslsmith_f_op_f32(f32(-1f) * -209f)), true, true, ~2147483647i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(372f - 1532f), _wgslsmith_div_f32(-792f, -602f))))));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-393f, -757f)));
    let var_4 = ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c, u_input.a) ^ firstTrailingBit(1u), 4294967295u), min(~abs(4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 1u, 0u, arg_0), vec4<u32>(u_input.a, arg_0, 1u, arg_0))), ~arg_0);
    return _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0, u_input.c, reverseBits(~var_4.x), u_input.c), vec4<u32>(var_4.x, u_input.c | ~(arg_0 >> (u_input.a % 32u)), ~abs(~4294967295u), u_input.b));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = select(vec2<i32>(abs(13595i), func_4(arg_1, Struct_2(func_2(58757u, vec3<i32>(-12315i, arg_3.d, 2147483647i)).x, countOneBits(1u), arg_2.xxy, vec4<f32>(688f, -1018f, 2150f, -386f)), true, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_3.a), all(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true)), _wgslsmith_div_i32(0i, arg_3.d))).x), -firstLeadingBit(-vec2<i32>(arg_3.d, arg_3.d)), select(!(!(!vec2<bool>(arg_3.b, arg_3.b))), !(!select(vec2<bool>(arg_3.c, arg_3.b), vec2<bool>(false, arg_3.b), vec2<bool>(false, arg_3.c))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(463f, arg_1.x) - _wgslsmith_f_op_f32(-arg_3.a.x)) <= -709f));
    let var_1 = -vec4<i32>(_wgslsmith_add_i32(~(-var_0.x), 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(32502i), -2147483647i, arg_3.d), -vec3<i32>(0i, 5502i, 0i)), i32(-1i) * -5469i, select(~(arg_3.d & 1i), select(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 23713i, 25069i), vec3<i32>(var_0.x, 12535i, var_0.x)), -16881i >> (arg_2.x % 32u), arg_3.b), arg_3.c));
    var var_2 = vec4<i32>(~(~var_0.x), arg_3.d << (0u % 32u), abs(var_0.x), 36658i);
    let var_3 = ~(~firstLeadingBit(_wgslsmith_div_vec3_u32(arg_2.xwx, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, u_input.b, arg_0.x), arg_2.wzy))));
    var var_4 = arg_0;
    return Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(arg_3.a.x + _wgslsmith_f_op_f32(-420f * -218f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(680f, -678f)))), 18950i != var_0.x, !(!arg_3.b | (arg_3.b && true)), var_1.x >> (arg_2.x % 32u)));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_4(arg_0.wz, arg_1.a.d, select(!vec3<bool>(any(arg_0.wy), true, true | arg_0.x), select(select(arg_0.yxz, !arg_0.zzz, !arg_0.zxw), arg_0.xxy, !select(vec3<bool>(arg_0.x, false, arg_1.a.c), arg_0.yyx, arg_0.x)), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-231f + 156f) - _wgslsmith_div_f32(687f, 429f)), arg_1.a.a.x, -1633f)), Struct_2(6341u, 17793u, reverseBits(vec3<u32>(~4132u, 59643u, min(u_input.c, 60781u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x, 1603f), vec4<f32>(1134f, -311f, 416f, arg_1.a.a.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a.x, 158f, arg_1.a.a.x, 1171f) + vec4<f32>(1984f, arg_1.a.a.x, 969f, arg_1.a.a.x)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(508f + arg_1.a.a.x) * _wgslsmith_f_op_f32(round(arg_1.a.a.x))))), arg_1.a.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(arg_1.a.a.x - -673f)), 1355f)), _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e.d), _wgslsmith_f_op_vec4_f32(floor(var_0.e.d)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.e.d.zx)), ~var_0.e.c.x != 1u, !func_5(var_0.e.c.zx, vec3<f32>(745f, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(var_1.x * arg_1.a.a.x)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, var_0.e.b, var_0.e.a), vec4<u32>(111430u, 3049u, u_input.a, var_0.e.a))), arg_1.a).a.c, -13502i);
    var_1 = var_0.e.d;
    var_0 = Struct_4(vec2<bool>(false, _wgslsmith_add_u32(var_0.e.a, u_input.a) >= _wgslsmith_dot_vec2_u32(select(var_0.e.c.zx, vec2<u32>(var_0.e.c.x, u_input.a), true), max(vec2<u32>(var_0.e.b, var_0.e.c.x), var_0.e.c.xx))), -1i, var_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(false)))), -531f, 1000f)), Struct_2(61175u, var_0.e.b, vec3<u32>(_wgslsmith_mod_u32(func_2(u_input.b, vec3<i32>(-2147483647i, 0i, 1169i)).x, abs(1u)), ~1u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.e.a, 0u)), vec2<u32>(63572u, 32908u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(233f, var_2.a.x, 586f, -1319f))))));
    return Struct_4(vec2<bool>(false, false), _wgslsmith_sub_i32(-var_0.b, i32(-1i) * -27185i) | func_4(var_0.e.d.xyy, var_0.e, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, var_2.b, true), arg_0)), func_5(var_0.e.c.yy, var_1.yxy, ~vec4<u32>(12736u, u_input.c, 1u, 0u), Struct_1(vec2<f32>(-2353f, 418f), arg_0.x, arg_0.x, 15306i)).a).x, !vec3<bool>(true, !arg_1.a.b, func_5(_wgslsmith_add_vec2_u32(var_0.e.c.xz, var_0.e.c.xx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-328f, var_2.a.x, var_2.a.x)), vec4<u32>(u_input.a, 8343u, 0u, u_input.b), Struct_1(var_1.xw, var_0.c.x, true, 2147483647i)).a.c), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a.x, var_1.x, var_2.a.x)))))), var_0.e);
}

fn func_7(arg_0: Struct_4) -> Struct_4 {
    var var_0 = arg_0.e.c | vec3<u32>(46399u, _wgslsmith_add_u32(u_input.b, func_2(67837u, vec3<i32>(-2147483647i, -1i, arg_0.b)).x), func_2(max(4294967295u, 4294967295u), min(vec3<i32>(arg_0.b, -20325i, 9801i) << (arg_0.e.c % vec3<u32>(32u)), ~vec3<i32>(2147483647i, 1i, 34620i))).x);
    var_0 = arg_0.e.c;
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_sub_vec3_u32(select(select(firstLeadingBit(arg_0.e.c), _wgslsmith_div_vec3_u32(arg_0.e.c, vec3<u32>(0u, var_0.x, 36193u)), arg_0.c), arg_0.e.c, true) >> (func_6(!select(vec4<bool>(arg_0.a.x, true, arg_0.c.x, arg_0.c.x), vec4<bool>(true, true, arg_0.c.x, false), arg_0.c.x), func_5(vec2<u32>(arg_0.e.b, 45033u), _wgslsmith_f_op_vec3_f32(floor(arg_0.d)), reverseBits(vec4<u32>(1u, u_input.b, 4294967295u, 4294967295u)), func_5(vec2<u32>(38978u, 46910u), vec3<f32>(2120f, arg_0.e.d.x, -425f), vec4<u32>(32830u, 12701u, 4294967295u, 1u), Struct_1(arg_0.d.zy, arg_0.c.x, arg_0.a.x, arg_0.b)).a)).e.c % vec3<u32>(32u)), ~(~vec3<u32>(var_0.x, 109786u, arg_0.e.c.x) ^ vec3<u32>(arg_0.e.a << (0u % 32u), min(arg_0.e.a, var_0.x), _wgslsmith_mod_u32(arg_0.e.c.x, u_input.b))));
    var var_3 = u_input.c;
    return Struct_4(!(!vec2<bool>(arg_0.a.x, true)), arg_0.b, func_6(select(!vec4<bool>(true, arg_0.a.x, arg_0.c.x, false), select(!vec4<bool>(arg_0.a.x, arg_0.c.x, arg_0.a.x, arg_0.c.x), !vec4<bool>(false, false, true, arg_0.a.x), true), true), Struct_3(Struct_1(vec2<f32>(1100f, arg_0.e.d.x), !arg_0.c.x, true, arg_0.b))).c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(318f, -2309f, 145f)))), arg_0.e);
}

fn func_8(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: i32) -> vec3<bool> {
    let var_0 = ~(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(81641u, 4294967295u, u_input.c, arg_2.e.a)), ~abs(vec4<u32>(15175u, arg_2.e.b, u_input.b, 53819u))));
    var var_1 = vec3<f32>(-372f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(1614f - arg_2.d.x))), 147f), -269f, all(arg_2.c.yy) || false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_6(vec4<bool>(arg_2.a.x, arg_0.x, false, false), Struct_3(Struct_1(arg_2.e.d.xy, arg_0.x, arg_0.x, arg_3))).d.x, _wgslsmith_f_op_f32(ceil(arg_1.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f))))));
    let var_2 = func_5(~_wgslsmith_sub_vec2_u32(vec2<u32>(25449u, u_input.a), func_6(select(vec4<bool>(arg_2.c.x, arg_2.a.x, arg_2.a.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(false, arg_0.x, false, arg_0.x)), func_5(var_0.wz, vec3<f32>(var_1.x, var_1.x, arg_2.e.d.x), vec4<u32>(u_input.a, u_input.a, u_input.b, 82973u), Struct_1(arg_1.zx, arg_0.x, arg_0.x, -23234i))).e.c.xy), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x + 1655f), _wgslsmith_f_op_f32(arg_1.x + -1697f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(791f))))) - vec3<f32>(func_5(~var_0.wz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-875f, 1424f, 718f)), vec4<u32>(26424u, arg_2.e.c.x, 1u, 4294967295u), Struct_1(vec2<f32>(-375f, 1094f), false, true, arg_3)).a.a.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(arg_2.d.x - 229f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.d.x * arg_2.e.d.x)))), firstTrailingBit(min(vec4<u32>(arg_2.e.b >> (arg_2.e.a % 32u), 1u & arg_2.e.c.x, u_input.b, _wgslsmith_mod_u32(4294967295u, 16890u)), vec4<u32>(max(1u, 21549u), func_2(2183u, vec3<i32>(arg_3, 2759i, -7256i)).x, ~var_0.x, func_6(vec4<bool>(true, false, arg_0.x, arg_2.a.x), Struct_3(Struct_1(vec2<f32>(-1462f, -263f), arg_2.c.x, arg_0.x, -2147483647i))).e.a))), func_5(var_0.yy, _wgslsmith_f_op_vec3_f32(-arg_2.e.d.wyx), var_0, func_5(firstLeadingBit(~vec2<u32>(11673u, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(1074f - -676f), arg_1.x, arg_1.x), vec4<u32>(29773u, ~4294967295u, ~4072u, 4294967295u), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(643f, arg_1.x) + arg_2.d.zy), true, arg_0.x, -arg_3)).a).a);
    let var_3 = true | any(!select(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(var_2.a.c, var_2.a.b, var_2.a.c, false), vec4<bool>(arg_0.x, var_2.a.c, true, arg_0.x), arg_2.c.x), !vec4<bool>(true, true, arg_0.x, arg_2.c.x)));
    var var_4 = arg_2.e.c;
    return vec3<bool>(!(!arg_0.x), arg_0.x, !(~var_0.x < _wgslsmith_add_u32(_wgslsmith_div_u32(arg_2.e.b, var_4.x), 0u)));
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = func_8(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1033f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(abs(-245f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1522f * arg_0))))), func_7(func_6(vec4<bool>(true, true, true, true), func_5(select(vec2<u32>(1u, u_input.b), vec2<u32>(4294967295u, 0u), vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-544f, arg_0, 1529f), vec3<f32>(arg_0, arg_0, arg_0))), func_2(u_input.a, vec3<i32>(39681i, -18610i, -2147483647i)), Struct_1(vec2<f32>(1338f, arg_0), false, true, -1i)))), ~(~11803i >> (u_input.b % 32u)) & _wgslsmith_mult_i32(-56964i, ~(~0i)));
    var var_1 = _wgslsmith_sub_vec3_u32(~(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.b, u_input.a))) & vec3<u32>(select(u_input.c, 3481u, true), 29878u, firstLeadingBit(u_input.b))), select(vec3<u32>(func_7(Struct_4(var_0.zy, 4230i, var_0, vec3<f32>(arg_0, 196f, arg_0), Struct_2(u_input.b, 20681u, vec3<u32>(11151u, 11643u, u_input.c), vec4<f32>(509f, -1247f, arg_0, 1472f)))).e.a, func_6(vec4<bool>(true, false, var_0.x, false), Struct_3(Struct_1(vec2<f32>(arg_0, -380f), var_0.x, var_0.x, 2147483647i))).e.c.x, ~firstTrailingBit(u_input.b)), func_7(Struct_4(select(vec2<bool>(true, var_0.x), var_0.xx, var_0.x), ~(-1364i), !var_0, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-366f, -162f, 1711f))), func_6(vec4<bool>(false, var_0.x, var_0.x, var_0.x), Struct_3(Struct_1(vec2<f32>(1000f, -1007f), var_0.x, var_0.x, -2147483647i))).e)).e.c, select(vec3<bool>(!var_0.x, var_0.x != var_0.x, func_7(Struct_4(var_0.zz, -2147483647i, var_0, vec3<f32>(1805f, arg_0, -2298f), Struct_2(u_input.c, 18339u, vec3<u32>(4294967295u, 0u, u_input.b), vec4<f32>(1158f, arg_0, arg_0, 1096f)))).a.x), select(func_8(vec3<bool>(false, var_0.x, var_0.x), vec4<f32>(arg_0, 570f, 1408f, arg_0), Struct_4(vec2<bool>(var_0.x, false), 2147483647i, vec3<bool>(var_0.x, false, var_0.x), vec3<f32>(-1339f, 1259f, -655f), Struct_2(u_input.c, 63125u, vec3<u32>(u_input.a, 15859u, 26508u), vec4<f32>(-374f, 809f, arg_0, 219f))), 39231i), vec3<bool>(var_0.x, false, false), var_0.x), var_0.x || any(vec3<bool>(var_0.x, var_0.x, false)))));
    let var_2 = ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-41968i, (i32(-1i) * -57293i) << (var_1.x % 32u), 1i), _wgslsmith_div_i32(~(-9455i), _wgslsmith_sub_i32(26414i, 45382i)));
    var_1 = vec3<u32>(~func_2(var_1.x, countOneBits(vec3<i32>(var_2, var_2, var_2))).x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(~30069u, 1u), ~vec2<u32>(var_1.x, 97777u) | (vec2<u32>(var_1.x, 0u) << (var_1.xz % vec2<u32>(32u)))), ~firstTrailingBit(43292u), firstLeadingBit(~(~(~u_input.c))));
    let var_3 = reverseBits(-(~firstLeadingBit(vec2<i32>(0i, 59470i) | vec2<i32>(7342i, var_2))));
    return func_6(!vec4<bool>(!var_0.x, false, false, !var_0.x | all(var_0)), Struct_3(func_5(vec2<u32>(u_input.b, u_input.c) | var_1.zz, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(451f, 1546f, arg_0), vec3<f32>(-2062f, -384f, -1190f), vec3<bool>(var_0.x, true, var_0.x))))), ~(~vec4<u32>(var_1.x, 1u, var_1.x, 4294967295u)), func_5(countOneBits(var_1.zz), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-374f, 1428f, arg_0), vec3<f32>(-946f, 698f, 348f))), ~vec4<u32>(77687u, 1u, u_input.b, 62394u), func_5(var_1.yy, vec3<f32>(arg_0, arg_0, -948f), vec4<u32>(u_input.c, u_input.c, var_1.x, u_input.b), Struct_1(vec2<f32>(2499f, arg_0), var_0.x, var_0.x, -32628i)).a).a).a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1702f)))))), !any(vec4<bool>(true, true, true, true)), any(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), 1i);
    let var_1 = func_1(var_0.a.x);
    var var_2 = reverseBits(~(~(~vec4<u32>(20889u, 4294967295u, var_1.e.c.x, u_input.a)) & _wgslsmith_add_vec4_u32(vec4<u32>(1333u, 77785u, 1u, 118717u), ~vec4<u32>(4294967295u, var_1.e.b, 4294967295u, 53727u))));
    var var_3 = func_5(~vec2<u32>(~13744u, reverseBits(var_2.x)), _wgslsmith_f_op_vec3_f32(select(var_1.d, vec3<f32>(func_1(-126f).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1751f - 550f)), var_1.e.d.x), var_1.a.x)), ~_wgslsmith_mult_vec4_u32(select(~vec4<u32>(21189u, 0u, 6636u, var_2.x), vec4<u32>(u_input.c, u_input.b, var_1.e.b, var_1.e.a) & vec4<u32>(u_input.b, 22281u, 1u, var_2.x), vec4<bool>(var_1.a.x, var_0.c, var_1.a.x, var_0.c)), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_2.x, var_2.x, 0u, 4294967295u)), abs(vec4<u32>(28190u, var_2.x, 2163u, var_1.e.a)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 1115f)))), var_0.b, var_0.b, 86775i));
    var var_4 = -func_7(Struct_4(select(!vec2<bool>(var_1.a.x, false), select(var_1.c.zy, vec2<bool>(var_0.b, false), true), 12866u == var_1.e.a), func_7(var_1).b, var_1.c, _wgslsmith_f_op_vec3_f32(var_1.e.d.xzw * _wgslsmith_f_op_vec3_f32(-var_1.d)), var_1.e)).b;
    var var_5 = Struct_4(var_1.a, -func_4(_wgslsmith_f_op_vec3_f32(-var_1.e.d.ywx), func_1(-1830f).e, var_0.c, var_3.a).x, vec3<bool>(func_7(func_7(func_7(var_1))).a.x, func_5(~var_2.yy, var_1.e.d.zzz, vec4<u32>(1u, u_input.a, var_1.e.b, 4294967295u), Struct_1(vec2<f32>(var_3.a.a.x, 834f), true, var_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.d, var_1.b, 7410i, 27364i), vec4<i32>(-2445i, var_1.b, 2147483647i, -2207i)))).a.c, false), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_3.a.a.x), _wgslsmith_f_op_f32(ceil(var_3.a.a.x))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -884f, var_0.a.x)), _wgslsmith_f_op_vec3_f32(-var_1.e.d.yyw)))))), var_1.e);
    let var_6 = all(func_1(-320f).c.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1325f)))));
}

