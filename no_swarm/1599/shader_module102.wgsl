struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 13> = array<Struct_5, 13>(Struct_5(Struct_3(Struct_1(vec4<u32>(1u, 0u, 0u, 4294967295u), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), -1431f, vec3<f32>(-1000f, 251f, 806f)), vec3<i32>(22594i, -17296i, -49372i), 0u, Struct_1(vec4<u32>(0u, 1u, 43323u, 59947u), vec3<i32>(2147483647i, -61124i, -22465i), -1000f, vec3<f32>(102f, -2295f, 1389f))), true, vec4<bool>(true, false, false, true), vec4<f32>(-1681f, -689f, -1834f, -1051f)), Struct_5(Struct_3(Struct_1(vec4<u32>(31992u, 46888u, 4294967295u, 32028u), vec3<i32>(1i, 5431i, i32(-2147483648)), 1211f, vec3<f32>(-610f, -2049f, 424f)), vec3<i32>(i32(-2147483648), 1i, -19356i), 72726u, Struct_1(vec4<u32>(0u, 5159u, 94267u, 1u), vec3<i32>(36589i, -1i, -21937i), 154f, vec3<f32>(-885f, -1530f, -675f))), true, vec4<bool>(false, true, true, true), vec4<f32>(1344f, -356f, -369f, 917f)), Struct_5(Struct_3(Struct_1(vec4<u32>(78667u, 0u, 4294967295u, 80002u), vec3<i32>(2147483647i, -1i, 20325i), -233f, vec3<f32>(-812f, 1681f, 925f)), vec3<i32>(1i, 0i, -1i), 57961u, Struct_1(vec4<u32>(81265u, 0u, 120812u, 1u), vec3<i32>(11313i, 0i, 38983i), -629f, vec3<f32>(-385f, 1595f, -355f))), true, vec4<bool>(false, false, true, false), vec4<f32>(-829f, -980f, 169f, -213f)), Struct_5(Struct_3(Struct_1(vec4<u32>(4294967295u, 37529u, 22664u, 6625u), vec3<i32>(-130i, 45498i, -74122i), 538f, vec3<f32>(-425f, 492f, -1856f)), vec3<i32>(0i, -31306i, 22024i), 43972u, Struct_1(vec4<u32>(10026u, 1u, 1u, 38864u), vec3<i32>(-10615i, -13310i, 29564i), -710f, vec3<f32>(-1927f, 1566f, -458f))), true, vec4<bool>(true, true, true, false), vec4<f32>(-1809f, -1891f, -1083f, 1771f)), Struct_5(Struct_3(Struct_1(vec4<u32>(1u, 26243u, 59380u, 0u), vec3<i32>(-1i, 2147483647i, -59740i), 1401f, vec3<f32>(-383f, 823f, -457f)), vec3<i32>(34228i, -15205i, -2568i), 56047u, Struct_1(vec4<u32>(1u, 16426u, 72371u, 896u), vec3<i32>(9317i, 550i, 0i), -153f, vec3<f32>(-396f, -507f, 595f))), false, vec4<bool>(false, false, true, true), vec4<f32>(1000f, 881f, 143f, 688f)), Struct_5(Struct_3(Struct_1(vec4<u32>(1u, 4294967295u, 19760u, 1u), vec3<i32>(1i, -21292i, -40678i), -1003f, vec3<f32>(-313f, -2086f, 144f)), vec3<i32>(0i, -69464i, i32(-2147483648)), 0u, Struct_1(vec4<u32>(2673u, 4294967295u, 4294967295u, 0u), vec3<i32>(79150i, i32(-2147483648), -14289i), -294f, vec3<f32>(633f, -549f, -300f))), true, vec4<bool>(true, false, false, true), vec4<f32>(809f, 847f, -125f, 1431f)), Struct_5(Struct_3(Struct_1(vec4<u32>(1u, 32264u, 1u, 37226u), vec3<i32>(13471i, -11568i, 29492i), -1372f, vec3<f32>(105f, -1107f, -107f)), vec3<i32>(0i, 40284i, 2147483647i), 5339u, Struct_1(vec4<u32>(33748u, 1u, 4294967295u, 51578u), vec3<i32>(-21568i, 1i, -1i), -824f, vec3<f32>(1000f, -165f, -224f))), false, vec4<bool>(false, false, false, true), vec4<f32>(1076f, -1237f, -1558f, -961f)), Struct_5(Struct_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 67581u), vec3<i32>(-6693i, 2147483647i, 1i), -1919f, vec3<f32>(156f, 1176f, 1538f)), vec3<i32>(-36681i, 1i, 0i), 9882u, Struct_1(vec4<u32>(1u, 12538u, 35958u, 0u), vec3<i32>(7826i, -48116i, 22158i), -1397f, vec3<f32>(162f, 316f, -1000f))), true, vec4<bool>(false, false, false, true), vec4<f32>(-620f, 1762f, 1599f, 461f)), Struct_5(Struct_3(Struct_1(vec4<u32>(45347u, 0u, 0u, 25661u), vec3<i32>(i32(-2147483648), 0i, 16102i), 415f, vec3<f32>(393f, 286f, -597f)), vec3<i32>(2147483647i, -69608i, 15854i), 27895u, Struct_1(vec4<u32>(0u, 0u, 1u, 27395u), vec3<i32>(-17335i, i32(-2147483648), -18901i), 1000f, vec3<f32>(-1000f, 321f, 106f))), true, vec4<bool>(true, false, false, true), vec4<f32>(1000f, 589f, 1390f, -1402f)), Struct_5(Struct_3(Struct_1(vec4<u32>(1u, 20383u, 1u, 19995u), vec3<i32>(-1i, -1i, 13499i), -238f, vec3<f32>(1035f, -212f, 2513f)), vec3<i32>(4506i, 24213i, i32(-2147483648)), 41751u, Struct_1(vec4<u32>(0u, 0u, 1u, 4294967295u), vec3<i32>(39665i, 12301i, -53224i), 1212f, vec3<f32>(670f, 375f, -130f))), false, vec4<bool>(true, true, false, false), vec4<f32>(380f, 264f, -2134f, -1000f)), Struct_5(Struct_3(Struct_1(vec4<u32>(5118u, 4294967295u, 89358u, 4294967295u), vec3<i32>(39744i, -49857i, 0i), 795f, vec3<f32>(146f, -1106f, 802f)), vec3<i32>(-5846i, 1i, -1i), 14792u, Struct_1(vec4<u32>(1u, 30421u, 1u, 1u), vec3<i32>(2147483647i, -20621i, -12848i), 285f, vec3<f32>(-747f, -834f, -100f))), false, vec4<bool>(true, false, true, true), vec4<f32>(-907f, 545f, 1306f, 2104f)), Struct_5(Struct_3(Struct_1(vec4<u32>(20372u, 24676u, 1u, 24382u), vec3<i32>(1i, -26845i, i32(-2147483648)), -704f, vec3<f32>(-2118f, 947f, -745f)), vec3<i32>(i32(-2147483648), 1i, 0i), 12948u, Struct_1(vec4<u32>(5893u, 1044u, 24609u, 4294967295u), vec3<i32>(30407i, -15755i, 1i), -1215f, vec3<f32>(-1132f, -398f, -414f))), true, vec4<bool>(true, true, true, true), vec4<f32>(1421f, 395f, -930f, -1894f)), Struct_5(Struct_3(Struct_1(vec4<u32>(4294967295u, 53566u, 1u, 1u), vec3<i32>(47614i, -2214i, 14345i), 880f, vec3<f32>(1460f, -1138f, -806f)), vec3<i32>(67225i, -47709i, 1i), 14331u, Struct_1(vec4<u32>(1u, 1u, 0u, 18149u), vec3<i32>(i32(-2147483648), 53786i, 1i), 853f, vec3<f32>(-383f, 1060f, -455f))), true, vec4<bool>(false, false, true, false), vec4<f32>(-1000f, -1085f, 1160f, -1000f)));

var<private> global1: u32 = 112386u;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<bool> {
    let var_0 = u_input.d.x;
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(~(vec4<u32>(66228u, var_0, var_0, 17975u) & u_input.d), u_input.d >> (u_input.d % vec4<u32>(32u))), firstTrailingBit(vec3<i32>(1i, 1i, 1i)) & vec3<i32>(firstLeadingBit(-28195i), 1i, 15450i), _wgslsmith_f_op_f32(ceil(1f)), vec3<f32>(1961f, -231f, -1000f));
    global1 = _wgslsmith_dot_vec3_u32(abs(var_1.a.xwy), u_input.d.wwx);
    let var_2 = -179f;
    var var_3 = countOneBits(~var_1.a | u_input.d);
    return vec3<bool>(any(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))), !select(select(51431u < var_1.a.x, true, true), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), !(4294967295u == var_0)), var_1.c < var_1.d.x);
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    var var_0 = Struct_1(u_input.d, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(~35633i, 2147483647i, _wgslsmith_mod_i32(1i, -1i)), abs(vec3<i32>(2147483647i, 0i, -7979i)) >> (~vec3<u32>(20029u, u_input.c.x, u_input.e.x) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(12865i, -1i, 1i), vec3<i32>(i32(-1i) * -1i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 45496i, 2147483647i), vec3<i32>(1i, 1i, 1783i))))), -2128f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1081f, _wgslsmith_f_op_f32(min(1526f, 1486f)), -193f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-265f * 874f), -1118f, _wgslsmith_f_op_f32(f32(-1f) * -829f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1081f, _wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c))), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2135f, -813f))) - var_0.d);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-276f)), 652f), 700f, all(!(!vec4<bool>(true, false, arg_0.x, true)))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(918f - var_0.d.x)), -724f);
    var var_3 = true;
    return _wgslsmith_mult_u32(countOneBits(1u), _wgslsmith_mod_u32(~u_input.e.x, _wgslsmith_dot_vec4_u32(max(max(var_0.a, var_0.a), u_input.d), vec4<u32>(~40616u, 7385u, 0u, 57996u))));
}

fn func_2() -> vec2<bool> {
    global1 = func_4(func_3()) << (countOneBits(_wgslsmith_div_u32((u_input.e.x | 1u) >> (u_input.d.x % 32u), ~(1u >> (1u % 32u)))) % 32u);
    var var_0 = Struct_4(~(~(~vec3<u32>(u_input.a.x, 1u, u_input.d.x))) | ~((u_input.e << (u_input.d.ywx % vec3<u32>(32u))) >> (vec3<u32>(4294967295u, u_input.a.x, u_input.c.x) % vec3<u32>(32u))), false, true, _wgslsmith_add_i32(abs(min(-52117i, 7378i)), _wgslsmith_div_i32(27798i, ~_wgslsmith_mod_i32(-44043i, -18185i))));
    var var_1 = _wgslsmith_f_op_f32(-2239f + -719f);
    var var_2 = vec3<i32>(_wgslsmith_add_i32(-27259i, (_wgslsmith_sub_i32(var_0.d, var_0.d) << (_wgslsmith_div_u32(73875u, u_input.e.x) % 32u)) >> (~_wgslsmith_mod_u32(1u, 68466u) % 32u)), var_0.d, _wgslsmith_div_i32(_wgslsmith_div_i32(~(-29695i), 2147483647i), min(1i, abs(var_0.d)) ^ _wgslsmith_div_i32(-2147483647i, ~var_0.d)));
    global0 = array<Struct_5, 13>();
    return vec2<bool>(any(select(!select(vec2<bool>(false, var_0.c), vec2<bool>(true, var_0.b), false), !vec2<bool>(false, var_0.b), vec2<bool>(false, true))), false);
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), func_2(), false)), func_3().xz, true);
    var var_1 = vec3<bool>(!var_0.x, all(!(!vec3<bool>(var_0.x, false, var_0.x))), !all(var_0));
    global1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(~u_input.e.xx), vec2<u32>(_wgslsmith_add_u32(22727u, u_input.b), 45057u >> (1u % 32u))), u_input.e.zx);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1823f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-855f, -1986f)), -743f, !var_0.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -1417f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -224f))))) + -1924f));
    var var_3 = _wgslsmith_sub_vec3_i32(~select(~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, arg_0, 32703i), vec3<i32>(arg_0, arg_0, 664i), vec3<i32>(0i, arg_0, arg_0)), (vec3<i32>(1i, arg_0, arg_0) | vec3<i32>(6892i, arg_0, -225i)) & vec3<i32>(arg_0, -1i, arg_0), true), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0), select(vec4<i32>(-5459i, 2147483647i, arg_0, arg_0), vec4<i32>(arg_0, arg_0, 13447i, arg_0), true)), 1i), -5702i, _wgslsmith_clamp_i32(arg_0, select(-1i, ~arg_0, 2147483647i != arg_0), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 24503i, 0i, arg_0), vec4<i32>(-1i, arg_0, arg_0, arg_0)))));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(31839i);
    let var_1 = !(!select(!func_3(), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_sub_u32(1u, 1u);
    global1 = var_0;
    var var_3 = Struct_1(countOneBits(u_input.d), vec3<i32>(1i, select(_wgslsmith_add_i32(-36215i, -35954i), _wgslsmith_sub_i32(0i, -2147483647i), true) & 2147483647i, firstLeadingBit(-40599i)), _wgslsmith_f_op_f32(492f - -1134f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-526f, 783f, -1337f))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(1139f + -113f), _wgslsmith_f_op_f32(420f - 182f), 321f))), var_1.x)));
    var_3 = Struct_1(reverseBits(var_3.a), vec3<i32>(_wgslsmith_div_i32(var_3.b.x, var_3.b.x), var_3.b.x, _wgslsmith_mod_i32(var_3.b.x, -1i >> ((4294967295u >> (var_3.a.x % 32u)) % 32u))), -701f, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-190f, 1359f, var_3.c) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.d.x, var_3.c, var_3.d.x), var_3.d)), var_3.d)))));
    let var_4 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, 2147483647i);
}

