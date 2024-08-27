struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<f32>(-206f, 357f, 823f), Struct_1(-261f), false, Struct_1(-1825f)), Struct_2(vec3<f32>(-227f, 899f, -1000f), Struct_1(1948f), false, Struct_1(709f)), Struct_2(vec3<f32>(1031f, 1306f, -726f), Struct_1(430f), true, Struct_1(-888f)), Struct_2(vec3<f32>(-854f, 1873f, 403f), Struct_1(-1447f), false, Struct_1(333f)), Struct_2(vec3<f32>(658f, 1000f, 846f), Struct_1(-2285f), true, Struct_1(-696f)), Struct_2(vec3<f32>(-1456f, -852f, -335f), Struct_1(-353f), false, Struct_1(287f)), Struct_2(vec3<f32>(-694f, 167f, 114f), Struct_1(590f), false, Struct_1(626f)), Struct_2(vec3<f32>(-984f, -2450f, 1122f), Struct_1(605f), false, Struct_1(1708f)), Struct_2(vec3<f32>(-201f, -626f, -1010f), Struct_1(-1005f), false, Struct_1(-891f)), Struct_2(vec3<f32>(-1767f, 628f, -1104f), Struct_1(-563f), true, Struct_1(-367f)), Struct_2(vec3<f32>(300f, -266f, -193f), Struct_1(-915f), false, Struct_1(177f)), Struct_2(vec3<f32>(419f, 1044f, 564f), Struct_1(416f), false, Struct_1(133f)), Struct_2(vec3<f32>(-673f, 1471f, -458f), Struct_1(679f), true, Struct_1(-1248f)), Struct_2(vec3<f32>(1278f, 1703f, 1235f), Struct_1(1438f), true, Struct_1(1675f)), Struct_2(vec3<f32>(269f, 1743f, 1000f), Struct_1(2101f), false, Struct_1(-217f)), Struct_2(vec3<f32>(-552f, -1000f, 349f), Struct_1(-1885f), false, Struct_1(253f)), Struct_2(vec3<f32>(1820f, -378f, -1234f), Struct_1(-606f), false, Struct_1(-1926f)), Struct_2(vec3<f32>(437f, -311f, -1094f), Struct_1(-519f), true, Struct_1(-408f)), Struct_2(vec3<f32>(-1000f, -1366f, -393f), Struct_1(965f), false, Struct_1(-1166f)));

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec3<f32>(266f, 1996f, -282f), Struct_1(758f), true, Struct_1(-523f)), Struct_2(vec3<f32>(676f, 172f, 652f), Struct_1(-693f), true, Struct_1(936f)), Struct_2(vec3<f32>(1193f, 313f, 431f), Struct_1(562f), true, Struct_1(206f)), Struct_2(vec3<f32>(704f, 1245f, 361f), Struct_1(349f), false, Struct_1(736f)), Struct_2(vec3<f32>(-848f, 1791f, -2007f), Struct_1(-557f), false, Struct_1(1000f)), Struct_2(vec3<f32>(-211f, 2524f, -645f), Struct_1(1031f), true, Struct_1(311f)), Struct_2(vec3<f32>(380f, 786f, -1881f), Struct_1(-1000f), false, Struct_1(-1000f)), Struct_2(vec3<f32>(-1567f, 239f, 378f), Struct_1(951f), true, Struct_1(359f)), Struct_2(vec3<f32>(1919f, -1989f, -708f), Struct_1(739f), false, Struct_1(1107f)), Struct_2(vec3<f32>(1764f, -1263f, -632f), Struct_1(-1076f), false, Struct_1(236f)), Struct_2(vec3<f32>(-472f, 448f, -1907f), Struct_1(-1000f), true, Struct_1(287f)), Struct_2(vec3<f32>(-1055f, 839f, 555f), Struct_1(158f), true, Struct_1(501f)), Struct_2(vec3<f32>(-444f, -364f, -1714f), Struct_1(158f), false, Struct_1(-1000f)));

var<private> global2: u32 = 4294967295u;

var<private> global3: bool;

var<private> global4: array<Struct_2, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = 3321u;
    global3 = false;
    let var_1 = -162f;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 572f, var_1, arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -496f, -219f, var_1))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-825f, _wgslsmith_f_op_f32(f32(-1f) * -789f), _wgslsmith_f_op_f32(min(var_1, var_1)), _wgslsmith_f_op_f32(-arg_1)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -835f, var_1, arg_1) + vec4<f32>(var_1, arg_1, var_1, -902f))))));
    var var_3 = abs(vec4<u32>(~(4294967295u & u_input.a), u_input.a, _wgslsmith_div_u32(max(4759u, 0u), ~u_input.a), ~43882u)) & (vec4<u32>(0u, u_input.a, u_input.a, 1u) & vec4<u32>(u_input.a, 57172u, 46309u, ~106743u));
    return Struct_1(-113f);
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, 11276u)), select(u_input.a, u_input.a, true)), firstLeadingBit(u_input.a)), max(vec2<u32>(u_input.a << (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u), u_input.a), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.a) ^ vec2<u32>(71073u, u_input.a), vec2<u32>(~u_input.a, ~32869u)))), 19u)];
    var_0 = global1[_wgslsmith_index_u32(67229u, 13u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1465f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f))));
    global1 = array<Struct_2, 13>();
    let var_2 = Struct_1(var_0.d.a);
    return 17985i;
}

fn func_4(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = func_1(select(vec2<bool>(firstTrailingBit(u_input.a) <= 1u, any(vec2<bool>(false, false))), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), 64380u > u_input.a), vec2<bool>(true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1133f, -2031f)), 758f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-286f, -1054f)), -1313f) - _wgslsmith_f_op_f32(select(-1387f, _wgslsmith_f_op_f32(step(179f, -100f)), true))))));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-countOneBits(2147483647i)), ((i32(-1i) * -13947i) ^ min(arg_0.x, arg_0.x)) >> ((23505u >> (~u_input.a % 32u)) % 32u), -1325i >> (1u % 32u), select(~firstTrailingBit(23721i), i32(-1i) * -22004i, true)), ~u_input.c);
    global1 = array<Struct_2, 13>();
    global3 = false;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-937f, 282f, var_0.a) + vec3<f32>(1680f, -836f, -262f)))) - vec3<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f) + _wgslsmith_f_op_f32(abs(var_0.a))), var_0.a)), func_1(vec2<bool>(true, all(vec2<bool>(false, true))), _wgslsmith_div_f32(_wgslsmith_div_f32(-716f, -1084f), _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-254f + var_0.a))))), false, func_1(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), false), var_0.a));
    return !select(!(!vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.c)), select(select(vec4<bool>(var_2.c, false, true, var_2.c), vec4<bool>(true, var_2.c, false, var_2.c), true), select(select(vec4<bool>(var_2.c, false, var_2.c, false), vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.c), vec4<bool>(false, false, var_2.c, var_2.c)), !vec4<bool>(false, var_2.c, var_2.c, true), !vec4<bool>(true, false, true, var_2.c)), var_2.c), var_2.c);
}

fn func_2() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 19u)];
    global4 = array<Struct_2, 22>();
    let var_1 = func_4(vec2<i32>(~(func_3(vec3<i32>(u_input.b, -38523i, u_input.b)) << (1u % 32u)), _wgslsmith_clamp_i32(u_input.b, ~0i, 2147483647i) << (_wgslsmith_sub_u32(25692u, min(1u, 4294967295u)) % 32u)));
    var var_2 = !select(true, true, ((448f < var_0.d.a) == var_0.c) | false);
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1358f, var_0.b.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.a, var_0.a.x)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), 404f)))), var_0.a.yz, !var_1.x));
    return var_0.c;
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2.b;
    var var_1 = 1i;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(arg_1 + arg_1), Struct_1(arg_1.x), arg_0, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_2.a.x)))) + arg_1.x)));
    let var_3 = select(!(!(!func_4(vec2<i32>(1i, u_input.c.x)).xxx)), select(func_4(u_input.d).yyx, !vec3<bool>(true, !arg_2.c, true), !vec3<bool>(var_2.c, !arg_0, u_input.d.x < 44801i)), func_4(u_input.c.zz).wxw);
    let var_4 = Struct_2(_wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1179f, var_2.b.a, 201f) + _wgslsmith_f_op_vec3_f32(var_2.a * var_2.a)), vec3<f32>(var_0.a, 985f, _wgslsmith_f_op_f32(step(267f, 503f))), select(!vec3<bool>(var_3.x, false, var_3.x), !vec3<bool>(arg_0, false, true), var_2.c)))), func_1(var_3.zy, 261f), false, Struct_1(arg_2.a.x));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2279f), _wgslsmith_f_op_f32(var_4.a.x * 179f))))), -404f, -325f), Struct_1(func_1(!vec2<bool>(var_4.c, false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, var_4.a.x))).a), (all(func_4(u_input.d).yxy) & (var_2.d.a <= -1812f)) && select(all(vec2<bool>(true, true)), true, all(select(vec4<bool>(true, false, true, arg_0), vec4<bool>(true, var_2.c, var_2.c, var_3.x), vec4<bool>(false, arg_0, true, false)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + arg_1.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - var_2.a.x), _wgslsmith_f_op_f32(644f * -167f)))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    var var_0 = max(vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, arg_2)), vec2<u32>(u_input.a, u_input.a)), ~_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(69664u, 4294967295u, u_input.a), vec3<u32>(u_input.a, arg_2, 23502u)), 9660u & u_input.a), ~abs(abs(4294967295u)), reverseBits(arg_2 ^ (arg_2 >> (u_input.a % 32u)))), (~abs(vec4<u32>(u_input.a, 6496u, 14487u, 1u)) ^ ~(~vec4<u32>(86050u, 0u, arg_2, 4294967295u))) ^ _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(arg_2, 0u, u_input.a, arg_2)), ~vec4<u32>(u_input.a, u_input.a, arg_2, u_input.a)));
    var var_1 = func_1(!vec2<bool>(_wgslsmith_clamp_i32(-1i, u_input.c.x, 0i) == _wgslsmith_add_i32(2147483647i, -1i), !(arg_0.x > -886f)), arg_1.d.a);
    global4 = array<Struct_2, 22>();
    var var_2 = _wgslsmith_sub_vec4_i32(u_input.c, u_input.c);
    global4 = array<Struct_2, 22>();
    return vec4<u32>(max(arg_2, abs(var_0.x)), 41563u, _wgslsmith_div_u32(1u, (arg_2 & firstTrailingBit(arg_2)) << (_wgslsmith_sub_u32(~var_0.x, _wgslsmith_dot_vec3_u32(var_0.zzz, var_0.wxw)) % 32u)), u_input.a);
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: bool) -> vec4<f32> {
    var var_0 = u_input.c.xzy;
    var var_1 = Struct_1(arg_0.a);
    let var_2 = arg_0;
    var var_3 = arg_1;
    let var_4 = func_5(true, vec3<f32>(var_1.a, arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -772f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1825f + var_2.a) - _wgslsmith_f_op_f32(1883f + var_2.a)))), Struct_2(func_5(!arg_3, vec3<f32>(var_2.a, _wgslsmith_div_f32(216f, var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1242f)), func_5(!arg_3, _wgslsmith_f_op_vec3_f32(vec3<f32>(489f, 1564f, 1206f) - vec3<f32>(arg_0.a, -524f, 690f)), Struct_2(vec3<f32>(341f, var_2.a, var_2.a), arg_0, arg_3, var_2))).a, func_5(true, vec3<f32>(func_1(vec2<bool>(arg_3, true), 1000f).a, 520f, arg_0.a), Struct_2(vec3<f32>(903f, var_1.a, var_1.a), func_5(true, vec3<f32>(582f, var_2.a, arg_0.a), global0[_wgslsmith_index_u32(14045u, 19u)]).d, func_2(), func_1(vec2<bool>(true, arg_3), var_2.a))).b, arg_3, Struct_1(_wgslsmith_f_op_f32(round(var_2.a))))).b;
    return vec4<f32>(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a)) + _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(-390f * _wgslsmith_f_op_f32(230f - var_4.a)), 308f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - var_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_7(func_1(vec2<bool>(select(true, true, true), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2212f * 1000f), -303f))), ~u_input.a, func_6(vec3<f32>(-1623f, 590f, _wgslsmith_f_op_f32(max(509f, -1275f))), func_5(func_2(), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1000f, 200f) - vec3<f32>(-481f, 2153f, 1284f)), Struct_2(vec3<f32>(-401f, -892f, -1929f), Struct_1(110f), true, Struct_1(1005f))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, 7217u), firstTrailingBit(34924u))), all(!func_4(u_input.d).zwz)))));
    let var_1 = -2147483647i;
    let var_2 = 43236i;
    global4 = array<Struct_2, 22>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zw) + var_0.wy))))));
    var var_4 = Struct_1(1317f);
    global3 = func_4(vec2<i32>(var_1, var_2)).x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

