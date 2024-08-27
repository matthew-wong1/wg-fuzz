struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, 1i), vec3<bool>(true, true, true), -453f, 71u), Struct_1(vec3<i32>(-1973i, 0i, i32(-2147483648)), vec3<bool>(false, true, true), 1000f, 9589u), 1201f), Struct_2(Struct_1(vec3<i32>(-9960i, 16699i, -43885i), vec3<bool>(false, false, true), -349f, 4294967295u), Struct_1(vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<bool>(true, true, true), 1586f, 1u), 722f), Struct_2(Struct_1(vec3<i32>(-16858i, -20811i, 2147483647i), vec3<bool>(true, false, false), -479f, 4003u), Struct_1(vec3<i32>(1i, 17026i, 0i), vec3<bool>(true, false, false), 852f, 18418u), -941f), Struct_2(Struct_1(vec3<i32>(-9117i, 18273i, 9465i), vec3<bool>(false, false, true), -598f, 27598u), Struct_1(vec3<i32>(2147483647i, 0i, 7169i), vec3<bool>(false, false, true), 479f, 1u), 196f), Struct_2(Struct_1(vec3<i32>(-74669i, 63853i, 27949i), vec3<bool>(true, false, true), -829f, 18485u), Struct_1(vec3<i32>(8279i, -18918i, 2147483647i), vec3<bool>(false, false, true), -283f, 91139u), -1462f), Struct_2(Struct_1(vec3<i32>(18259i, 31773i, -23686i), vec3<bool>(true, true, true), 508f, 14636u), Struct_1(vec3<i32>(-4110i, 51884i, -1i), vec3<bool>(true, true, true), 1143f, 1u), 1045f), Struct_2(Struct_1(vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<bool>(false, true, true), 1448f, 40078u), Struct_1(vec3<i32>(1i, -1i, 2147483647i), vec3<bool>(true, false, false), 824f, 24433u), 892f), Struct_2(Struct_1(vec3<i32>(36484i, -1i, i32(-2147483648)), vec3<bool>(false, true, true), -456f, 0u), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 15200i), vec3<bool>(false, true, true), 210f, 0u), -1825f), Struct_2(Struct_1(vec3<i32>(1i, 4376i, -3355i), vec3<bool>(true, true, false), -1577f, 29206u), Struct_1(vec3<i32>(-22081i, -46684i, 1i), vec3<bool>(false, false, false), -465f, 4294967295u), 763f), Struct_2(Struct_1(vec3<i32>(2147483647i, 17774i, 0i), vec3<bool>(false, false, true), 1000f, 0u), Struct_1(vec3<i32>(-1i, 11321i, -21360i), vec3<bool>(false, false, false), -714f, 4294967295u), 1258f), Struct_2(Struct_1(vec3<i32>(1i, 0i, 50321i), vec3<bool>(false, true, true), -321f, 52446u), Struct_1(vec3<i32>(328i, 0i, 0i), vec3<bool>(true, false, true), 652f, 47681u), 1240f), Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, -33397i), vec3<bool>(false, false, false), 1467f, 4294967295u), Struct_1(vec3<i32>(1946i, -22144i, -39434i), vec3<bool>(true, true, true), 1674f, 47649u), -1511f), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -49055i), vec3<bool>(false, false, false), -609f, 14997u), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -48931i), vec3<bool>(false, false, false), 1391f, 4294967295u), -1055f), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, -4734i), vec3<bool>(true, false, true), -374f, 26082u), Struct_1(vec3<i32>(1i, 18293i, 10194i), vec3<bool>(true, false, true), -2034f, 1u), 1234f), Struct_2(Struct_1(vec3<i32>(55382i, i32(-2147483648), 15930i), vec3<bool>(false, true, false), -172f, 154534u), Struct_1(vec3<i32>(-1i, 92990i, 0i), vec3<bool>(false, false, false), 1343f, 4294967295u), 1965f), Struct_2(Struct_1(vec3<i32>(-40962i, 0i, 9771i), vec3<bool>(false, false, true), 2783f, 1u), Struct_1(vec3<i32>(i32(-2147483648), -22287i, -14208i), vec3<bool>(false, false, false), 1602f, 8648u), 2236f), Struct_2(Struct_1(vec3<i32>(25983i, 0i, i32(-2147483648)), vec3<bool>(true, false, false), -355f, 4294967295u), Struct_1(vec3<i32>(51634i, 9539i, 1i), vec3<bool>(false, true, false), 958f, 14106u), -817f), Struct_2(Struct_1(vec3<i32>(66585i, 2147483647i, 0i), vec3<bool>(true, false, false), -1782f, 74239u), Struct_1(vec3<i32>(2147483647i, -41283i, -1i), vec3<bool>(true, true, false), -938f, 4294967295u), -2087f), Struct_2(Struct_1(vec3<i32>(-8150i, 2147483647i, 2147483647i), vec3<bool>(true, true, true), -2067f, 1u), Struct_1(vec3<i32>(-10069i, i32(-2147483648), 12718i), vec3<bool>(false, true, true), 286f, 4294967295u), 1603f), Struct_2(Struct_1(vec3<i32>(28836i, 2147483647i, -4351i), vec3<bool>(false, true, true), -774f, 4294967295u), Struct_1(vec3<i32>(-24033i, -13757i, -1i), vec3<bool>(false, true, true), -651f, 0u), -1992f));

var<private> global1: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(-576f, -293f), vec2<f32>(1000f, 148f), vec2<f32>(1085f, 1000f), vec2<f32>(-670f, -1071f), vec2<f32>(-1816f, 157f), vec2<f32>(-811f, 1050f), vec2<f32>(314f, -1265f), vec2<f32>(-387f, -564f), vec2<f32>(1434f, -726f), vec2<f32>(-1339f, -1234f), vec2<f32>(-260f, -332f), vec2<f32>(404f, -1673f), vec2<f32>(366f, -539f), vec2<f32>(2470f, -688f), vec2<f32>(-199f, 3492f), vec2<f32>(-868f, 2091f), vec2<f32>(1499f, 783f), vec2<f32>(659f, -665f), vec2<f32>(1047f, 1429f), vec2<f32>(431f, -1443f), vec2<f32>(578f, -800f), vec2<f32>(-294f, -448f), vec2<f32>(394f, -1000f));

var<private> global2: vec2<i32> = vec2<i32>(-47708i, -5431i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = vec2<u32>(~firstLeadingBit(~arg_1.b.d), ~_wgslsmith_clamp_u32(select(arg_1.a.d, max(arg_1.a.d, arg_1.a.d), arg_1.b.b.x), ~(62024u << (arg_1.b.d % 32u)), 1u));
    var_0 = vec2<u32>(countOneBits(12634u), u_input.c);
    var var_1 = firstTrailingBit(vec2<i32>(global2.x, 2147483647i)) >> (~reverseBits(~firstTrailingBit(vec2<u32>(4294967295u, 49379u))) % vec2<u32>(32u));
    var_1 = vec2<i32>(_wgslsmith_clamp_i32(-1i, ~_wgslsmith_add_i32(-21769i >> (0u % 32u), arg_1.a.a.x), _wgslsmith_clamp_i32(arg_0, _wgslsmith_dot_vec3_i32(u_input.b.yxz, arg_1.a.a), -2147483647i)), 19821i);
    var var_2 = arg_1.b.c;
    return arg_1.b;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_2(arg_0, Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-24963i, -2147483647i, 16205i) << (vec3<u32>(arg_2.b.d, arg_0.d, 0u) % vec3<u32>(32u)), ~vec3<i32>(-1i, 0i, u_input.a)) & reverseBits(min(arg_0.a, vec3<i32>(arg_0.a.x, u_input.b.x, u_input.a))), arg_0.b, arg_3, arg_0.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1697f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-136f, 447f)), _wgslsmith_f_op_f32(-685f * _wgslsmith_f_op_f32(round(127f))))), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 24322u), ~vec2<u32>(arg_0.d, arg_0.d)) == ~arg_2.b.d)));
    global0 = array<Struct_2, 20>();
    let var_2 = !any(!select(select(vec4<bool>(arg_0.b.x, true, true, true), vec4<bool>(true, false, false, var_1.a.b.x), vec4<bool>(true, true, true, false)), vec4<bool>(true, arg_0.b.x, var_1.b.b.x, arg_0.b.x), true));
    global0 = array<Struct_2, 20>();
    return Struct_1(firstLeadingBit(var_1.a.a), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3), -892f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3)))), ~(~firstLeadingBit(4294967295u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> u32 {
    return 8395u;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(func_4(func_3(func_2(-2147483647i, Struct_2(arg_1, arg_1, 1027f), vec3<f32>(103f, arg_1.c, -1118f)), 0u, global0[_wgslsmith_index_u32(arg_1.d, 20u)], -1000f), global0[_wgslsmith_index_u32(76509u, 20u)], arg_1.c, firstLeadingBit(min(u_input.c, 12920u))), ~(4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(87645u, arg_1.d), vec2<u32>(4294967295u, 1u)))), (arg_1.d & u_input.c) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.d, 41678u, 41153u, 0u), ~vec4<u32>(u_input.c, 19300u, u_input.c, u_input.c)), vec4<u32>(1u, abs(0u), max(4294967295u, 27517u), reverseBits(4294967295u))) % 32u), _wgslsmith_add_u32(~_wgslsmith_div_u32(arg_1.d, _wgslsmith_mult_u32(0u, 5749u)), ~((arg_1.d | 41923u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d, 46719u), vec2<u32>(1u, 4294967295u)) % 32u))), _wgslsmith_sub_u32(arg_1.d, arg_1.d));
    var_0 = abs(~(~vec4<u32>(~92450u, 18827u, u_input.c, _wgslsmith_div_u32(arg_1.d, 58316u))));
    var var_1 = func_3(arg_1, select(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(83533u, var_0.x, u_input.c), reverseBits(vec3<u32>(u_input.c, 4294967295u, var_0.x))), 77786u), var_0.x, true), global0[_wgslsmith_index_u32(var_0.x, 20u)], arg_1.c);
    let var_2 = Struct_1(vec3<i32>(3253i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 36838i, -48489i) | ~var_1.a, vec3<i32>(_wgslsmith_sub_i32(-20453i, 0i), ~global2.x, 1i)), ~(-37052i) >> (~firstTrailingBit(0u) % 32u)), func_2(i32(-1i) * -10645i, Struct_2(Struct_1(~u_input.b.zyx, !var_1.b, -235f, ~2528u), func_3(func_2(80039i, Struct_2(arg_1, Struct_1(vec3<i32>(-1i, 1i, global2.x), var_1.b, -1818f, var_1.d), 398f), vec3<f32>(234f, arg_1.c, arg_1.c)), countOneBits(u_input.c), global0[_wgslsmith_index_u32(44516u, 20u)], _wgslsmith_f_op_f32(step(var_1.c, var_1.c))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-184f, arg_1.c, var_1.c), vec3<f32>(423f, 1000f, -641f), vec3<bool>(false, arg_1.b.x, arg_1.b.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, 638f, -1369f)), vec3<f32>(1994f, 2743f, -386f), arg_1.b))))).b, 699f, var_0.x);
    global2 = u_input.b.zz;
    return func_3(func_3(var_2, 41330u, global0[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_f_op_f32(var_2.c * arg_1.c)), 1u, global0[_wgslsmith_index_u32(var_2.d, 20u)], _wgslsmith_f_op_f32(-var_2.c));
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    var var_1 = abs(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d, ~var_0.d, ~var_0.d), vec3<u32>(_wgslsmith_mod_u32(1u, var_0.d), func_1(vec3<bool>(var_0.b.x, arg_0.b.x, arg_0.b.x), Struct_1(arg_0.a, vec3<bool>(arg_0.b.x, var_0.b.x, false), 1000f, arg_0.d)).d, u_input.c)), _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.d, var_0.d, arg_0.d), vec3<u32>(arg_0.d, arg_0.d, 57463u)), vec3<u32>(20881u, var_0.d, ~14837u))));
    global1 = array<vec2<f32>, 23>();
    let var_2 = select(arg_0.d, var_0.d, arg_0.b.x);
    var var_3 = u_input.b;
    return _wgslsmith_clamp_u32(var_2, ~(~_wgslsmith_add_u32(func_4(arg_0, global0[_wgslsmith_index_u32(arg_0.d, 20u)], -517f, 75864u), 69390u)), _wgslsmith_dot_vec2_u32(abs(max(var_1.xz, vec2<u32>(4294967295u, 4294967295u))), var_1.xz) | 53478u);
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2(-1i, Struct_2(arg_0.b, func_2(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, global2.x), arg_3.a.x), arg_0, vec3<f32>(arg_3.c, -718f, -231f)), arg_3.c), vec3<f32>(_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c), arg_0.c)), _wgslsmith_f_op_f32(abs(arg_0.b.c)), 1000f)).a.x;
    var var_1 = func_2(_wgslsmith_mod_i32(func_3(arg_3, u_input.c, arg_0, arg_3.c).a.x, arg_3.a.x), Struct_2(arg_3, arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c)))), vec3<f32>(-531f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.c, -930f) - arg_0.b.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f * -254f) - arg_0.c))).a.xz;
    global0 = array<Struct_2, 20>();
    var var_2 = func_3(func_3(func_1(select(arg_0.b.b, arg_3.b, !vec3<bool>(arg_0.a.b.x, false, arg_3.b.x)), func_2(u_input.d & 0i, Struct_2(arg_3, arg_0.b, -1000f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3.c, arg_0.b.c, 419f))))), ~firstTrailingBit(u_input.c), global0[_wgslsmith_index_u32(0u, 20u)], -1086f), arg_0.a.d >> (30757u % 32u), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c) * -652f));
    var_2 = func_1(select(!(!vec3<bool>(arg_3.b.x, true, arg_3.b.x)), select(vec3<bool>(!var_2.b.x, true & arg_0.b.b.x, true), vec3<bool>(select(arg_0.b.b.x, true, arg_3.b.x), arg_3.b.x, !arg_0.b.b.x), vec3<bool>(true, arg_3.b.x, true)), !(!select(true, false, var_2.b.x))), arg_0.b);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 23>();
    var var_0 = func_6(global0[_wgslsmith_index_u32(~(~abs(u_input.c)), 20u)], _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32((vec2<i32>(u_input.d, u_input.d) & u_input.b.zz) & select(vec2<i32>(-8161i, u_input.a), vec2<i32>(9027i, -15118i), false), firstLeadingBit(min(vec2<i32>(u_input.d, u_input.d), vec2<i32>(8698i, global2.x)))), u_input.b.zz), vec3<u32>(_wgslsmith_mult_u32(u_input.c, _wgslsmith_div_u32(~24005u, 11433u)), 0u, max(u_input.c, func_5(func_1(vec3<bool>(true, false, false), Struct_1(u_input.b.yyw, vec3<bool>(true, true, true), -720f, u_input.c))))), Struct_1(u_input.b.ywz, !vec3<bool>(true, false, any(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -833f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2311f * -758f) + _wgslsmith_f_op_f32(f32(-1f) * -442f)))), min(~u_input.c, u_input.c)));
    let var_1 = ~abs(vec2<u32>(u_input.c, func_3(func_2(-10114i, global0[_wgslsmith_index_u32(52359u, 20u)], vec3<f32>(var_0.c, var_0.c, 592f)), ~23549u, Struct_2(Struct_1(vec3<i32>(var_0.a.x, global2.x, global2.x), var_0.b, var_0.c, var_0.d), Struct_1(var_0.a, var_0.b, -458f, 35787u), var_0.c), 2040f).d));
    global0 = array<Struct_2, 20>();
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c)));
    var_0 = Struct_1(var_0.a, vec3<bool>(var_0.b.x, select(!var_0.b.x, false, all(select(vec4<bool>(var_0.b.x, true, false, var_0.b.x), vec4<bool>(true, var_0.b.x, true, var_0.b.x), true))), true), var_2, 10709u);
    global0 = array<Struct_2, 20>();
    var var_3 = select(vec4<bool>(func_3(func_1(var_0.b, Struct_1(vec3<i32>(var_0.a.x, -5223i, 30711i), vec3<bool>(true, false, var_0.b.x), var_2, var_1.x)), var_0.d, Struct_2(Struct_1(u_input.b.xxw, var_0.b, var_0.c, 0u), Struct_1(vec3<i32>(0i, u_input.b.x, u_input.d), vec3<bool>(var_0.b.x, true, true), var_2, var_1.x), _wgslsmith_f_op_f32(-717f + 1000f)), _wgslsmith_f_op_f32(724f * _wgslsmith_f_op_f32(-var_0.c))).b.x, !(~u_input.c != _wgslsmith_sub_u32(var_1.x, u_input.c)), false, !func_3(func_1(var_0.b, Struct_1(var_0.a, vec3<bool>(var_0.b.x, var_0.b.x, false), 817f, u_input.c)), u_input.c | 4294967295u, Struct_2(Struct_1(var_0.a, var_0.b, var_0.c, 1u), Struct_1(vec3<i32>(1i, var_0.a.x, 1i), var_0.b, -992f, 15005u), 1538f), _wgslsmith_f_op_f32(var_0.c + var_2)).b.x), select(select(vec4<bool>(false, 0u >= var_1.x, true, var_0.b.x), vec4<bool>(true, var_0.b.x, !var_0.b.x, !var_0.b.x), select(true, true, any(vec2<bool>(false, var_0.b.x)))), select(select(!vec4<bool>(false, var_0.b.x, false, var_0.b.x), !vec4<bool>(false, false, var_0.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), select(vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), select(vec4<bool>(var_0.b.x, true, var_0.b.x, false), vec4<bool>(false, var_0.b.x, false, var_0.b.x), true), !var_0.b.x), var_0.b.x), var_0.b.x), !vec4<bool>(true, any(vec3<bool>(false, false, var_0.b.x)), func_3(Struct_1(vec3<i32>(global2.x, 15825i, u_input.b.x), vec3<bool>(true, true, var_0.b.x), 972f, u_input.c), var_1.x, global0[_wgslsmith_index_u32(~4294967295u, 20u)], _wgslsmith_f_op_f32(round(var_2))).b.x, u_input.c > var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(2147483647i, global2.x) | -14106i, 345f, -1i, func_6(global0[_wgslsmith_index_u32(8935u, 20u)], ~global2.x, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, ~var_1.x, var_1.x), vec3<u32>(~0u, ~var_0.d, func_5(Struct_1(var_0.a, var_3.zxz, var_2, 20032u)))), Struct_1(~u_input.b.zzx, func_6(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(36059u, u_input.c, 4294967295u), vec3<u32>(78728u, var_1.x, var_1.x)), 20u)], _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), ~vec3<u32>(11064u, var_1.x, 27252u), func_2(-2147483647i, Struct_2(Struct_1(vec3<i32>(var_0.a.x, global2.x, global2.x), vec3<bool>(var_0.b.x, var_3.x, var_0.b.x), -241f, var_0.d), Struct_1(var_0.a, var_0.b, var_0.c, 0u), -325f), vec3<f32>(-458f, -882f, -653f))).b, var_0.c, var_1.x)).a.x, ~min(vec3<u32>(1u, firstLeadingBit(4294967295u), var_0.d), ~vec3<u32>(var_0.d, var_0.d, var_1.x)));
}

