struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(883f, 2105f, -1000f, -199f, 1578f, 588f, 368f, 1000f, -1539f, 240f, 911f, -646f, -1228f, -1014f, -804f, 2077f, 316f, -1309f, 434f, -1104f, -321f, -965f, 1046f, -402f);

var<private> global1: array<f32, 6>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(1u, vec3<bool>(false, false, false), vec4<u32>(4294967295u, 37941u, 95489u, 1u), vec2<i32>(25097i, -1i), vec3<i32>(24051i, 18868i, i32(-2147483648))), Struct_1(1u, vec3<bool>(false, true, false), vec4<u32>(1u, 0u, 35988u, 5498u), vec2<i32>(2459i, 4969i), vec3<i32>(31306i, 2147483647i, i32(-2147483648))), Struct_1(1u, vec3<bool>(false, true, false), vec4<u32>(55450u, 72416u, 20902u, 0u), vec2<i32>(3387i, 2147483647i), vec3<i32>(16017i, 40532i, 29555i)), Struct_1(1u, vec3<bool>(false, true, true), vec4<u32>(0u, 1u, 0u, 69142u), vec2<i32>(31890i, 46579i), vec3<i32>(-8042i, -11953i, 2147483647i)), Struct_1(34210u, vec3<bool>(false, true, false), vec4<u32>(0u, 1u, 0u, 0u), vec2<i32>(7365i, 2147483647i), vec3<i32>(-15398i, -1i, 5141i)), Struct_1(39662u, vec3<bool>(false, false, false), vec4<u32>(1u, 1u, 1764u, 1u), vec2<i32>(i32(-2147483648), 0i), vec3<i32>(1i, i32(-2147483648), -2137i)), Struct_1(4294967295u, vec3<bool>(false, true, true), vec4<u32>(44595u, 110485u, 1u, 66671u), vec2<i32>(-39119i, -1i), vec3<i32>(12188i, i32(-2147483648), 2147483647i)), Struct_1(13551u, vec3<bool>(true, true, true), vec4<u32>(45804u, 0u, 1u, 0u), vec2<i32>(1i, -61881i), vec3<i32>(1i, 15230i, -22999i)), Struct_1(1119u, vec3<bool>(true, true, true), vec4<u32>(4294967295u, 4294967295u, 42795u, 1u), vec2<i32>(i32(-2147483648), -1i), vec3<i32>(14168i, 1i, 1i)), Struct_1(1u, vec3<bool>(false, true, true), vec4<u32>(39604u, 67652u, 28568u, 40526u), vec2<i32>(0i, i32(-2147483648)), vec3<i32>(3269i, i32(-2147483648), i32(-2147483648))), Struct_1(43671u, vec3<bool>(true, true, true), vec4<u32>(1u, 6282u, 80025u, 70519u), vec2<i32>(1i, -10040i), vec3<i32>(-1i, 12581i, -1096i)), Struct_1(4294967295u, vec3<bool>(false, false, true), vec4<u32>(5269u, 57101u, 0u, 1u), vec2<i32>(-16716i, 0i), vec3<i32>(i32(-2147483648), -1i, 72869i)), Struct_1(1u, vec3<bool>(false, false, false), vec4<u32>(4294967295u, 4294967295u, 31572u, 68429u), vec2<i32>(2970i, 45286i), vec3<i32>(-3270i, -1i, i32(-2147483648))), Struct_1(0u, vec3<bool>(false, true, true), vec4<u32>(0u, 1u, 1u, 1u), vec2<i32>(-6655i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i)), Struct_1(0u, vec3<bool>(false, false, false), vec4<u32>(69531u, 21213u, 33420u, 102218u), vec2<i32>(-24253i, 32454i), vec3<i32>(i32(-2147483648), 1i, 1i)), Struct_1(0u, vec3<bool>(true, false, true), vec4<u32>(4294967295u, 29316u, 1u, 51349u), vec2<i32>(-1i, i32(-2147483648)), vec3<i32>(-33479i, 1i, 0i)), Struct_1(0u, vec3<bool>(true, true, false), vec4<u32>(1u, 0u, 4294967295u, 1u), vec2<i32>(-8139i, 6818i), vec3<i32>(-46867i, 5627i, i32(-2147483648))), Struct_1(34945u, vec3<bool>(false, false, false), vec4<u32>(52456u, 94380u, 40548u, 4294967295u), vec2<i32>(-11381i, -8895i), vec3<i32>(186i, 26564i, 51262i)), Struct_1(66582u, vec3<bool>(false, false, false), vec4<u32>(0u, 0u, 1u, 4294967295u), vec2<i32>(2147483647i, 1i), vec3<i32>(i32(-2147483648), 1i, 22463i)), Struct_1(1u, vec3<bool>(false, false, false), vec4<u32>(4294967295u, 4294967295u, 23003u, 10178u), vec2<i32>(i32(-2147483648), 1i), vec3<i32>(1i, 0i, 1i)), Struct_1(39566u, vec3<bool>(false, false, false), vec4<u32>(15366u, 0u, 129195u, 1u), vec2<i32>(21755i, 24690i), vec3<i32>(4778i, -46097i, 2147483647i)), Struct_1(4294967295u, vec3<bool>(false, true, false), vec4<u32>(12470u, 4294967295u, 4294967295u, 0u), vec2<i32>(246i, -37201i), vec3<i32>(22277i, 2147483647i, 23350i)), Struct_1(0u, vec3<bool>(false, true, false), vec4<u32>(27924u, 1u, 0u, 21623u), vec2<i32>(38518i, 0i), vec3<i32>(-1i, 14189i, 0i)), Struct_1(4294967295u, vec3<bool>(true, true, true), vec4<u32>(32977u, 68343u, 0u, 7048u), vec2<i32>(2147483647i, 0i), vec3<i32>(-20347i, -7396i, 5943i)), Struct_1(4294967295u, vec3<bool>(true, false, false), vec4<u32>(32817u, 40543u, 85529u, 1u), vec2<i32>(8208i, 48449i), vec3<i32>(5956i, 18987i, 2147483647i)), Struct_1(11383u, vec3<bool>(false, false, true), vec4<u32>(0u, 60270u, 0u, 31475u), vec2<i32>(2147483647i, -33619i), vec3<i32>(1i, -5283i, 29142i)), Struct_1(52095u, vec3<bool>(true, true, true), vec4<u32>(50784u, 1u, 0u, 95948u), vec2<i32>(4874i, 2147483647i), vec3<i32>(16061i, 2268i, 0i)), Struct_1(1u, vec3<bool>(true, true, false), vec4<u32>(62133u, 0u, 23516u, 10026u), vec2<i32>(-13195i, 1i), vec3<i32>(0i, -4448i, i32(-2147483648))), Struct_1(4294967295u, vec3<bool>(true, false, true), vec4<u32>(0u, 0u, 4294967295u, 1u), vec2<i32>(-54707i, -51562i), vec3<i32>(-10406i, -42778i, i32(-2147483648))), Struct_1(42315u, vec3<bool>(true, false, true), vec4<u32>(4294967295u, 1u, 77609u, 0u), vec2<i32>(2147483647i, 0i), vec3<i32>(12975i, i32(-2147483648), 41408i)), Struct_1(3477u, vec3<bool>(true, false, true), vec4<u32>(20668u, 1u, 35144u, 4294967295u), vec2<i32>(4083i, -7201i), vec3<i32>(2147483647i, 22611i, 0i)), Struct_1(4294967295u, vec3<bool>(true, true, true), vec4<u32>(4294967295u, 63771u, 38767u, 73424u), vec2<i32>(-31254i, 7495i), vec3<i32>(1i, 25500i, 1i)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_1(u_input.a.x, !select(!vec3<bool>(arg_0.b.x, arg_0.b.x, false), !(!vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), true | all(vec4<bool>(false, true, arg_0.b.x, arg_0.b.x))), u_input.c, ~(-vec2<i32>(_wgslsmith_clamp_i32(24802i, arg_1.x, arg_0.e.x), 7253i)), _wgslsmith_mod_vec3_i32(-(~u_input.d), arg_0.e));
    global3 = array<Struct_1, 32>();
    var var_1 = u_input.c.ywy;
    global0 = array<f32, 24>();
    var var_2 = Struct_3(!((var_0.c.x <= (u_input.c.x | 36145u)) & !all(arg_0.b.yx)), Struct_2(989f, vec3<f32>(_wgslsmith_div_f32(arg_2, 563f), _wgslsmith_f_op_f32(593f - -439f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))));
    return -30685i;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> vec4<bool> {
    global3 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_clamp_i32(-28294i, min(max(~0i, max(2147483647i, u_input.d.x)) << (~countOneBits(1u) % 32u), u_input.d.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x | func_3(Struct_1(u_input.a.x, vec3<bool>(true, false, true), u_input.c, vec2<i32>(2147483647i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.b.x, u_input.b.x)), vec2<i32>(-1i, u_input.b.x), global0[_wgslsmith_index_u32(1u, 24u)], vec4<f32>(-1607f, arg_1.x, -1000f, 607f)), select(u_input.d.x, 0i, true)), u_input.e));
    let var_1 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, false, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, false, true)), true), vec2<bool>(true, true), any(vec2<bool>(true, true)));
    global3 = array<Struct_1, 32>();
    let var_2 = min(vec3<i32>(-1i, abs(min(1i, func_3(global3[_wgslsmith_index_u32(u_input.c.x, 32u)], u_input.b, -1000f, vec4<f32>(-421f, arg_1.x, global1[_wgslsmith_index_u32(30382u, 6u)], 713f)))), ~u_input.d.x), vec3<i32>(~1i ^ u_input.b.x, u_input.e, 50151i));
    return !vec4<bool>(true, true, !(_wgslsmith_f_op_f32(208f + arg_1.x) != arg_0.x), var_1.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = true;
    let var_1 = u_input.a;
    let var_2 = select(func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4219u, 24u)], -603f, global0[_wgslsmith_index_u32(u_input.c.x, 24u)])), vec3<f32>(global1[_wgslsmith_index_u32(abs(47633u), 6u)], -1057f, global1[_wgslsmith_index_u32(~4294967295u, 6u)]), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_1.x, 6u)], 1337f, -1342f))) + vec3<f32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(arg_0.x, 24u)], global0[_wgslsmith_index_u32(arg_0.x >> (arg_0.x % 32u), 24u)]))), vec4<bool>(true & select(global1[_wgslsmith_index_u32(1u, 6u)] != global1[_wgslsmith_index_u32(u_input.c.x, 6u)], true, u_input.d.x <= arg_1), true, true, !(~arg_1 <= -u_input.b.x)), false);
    global3 = array<Struct_1, 32>();
    global2 = arg_0.x;
    return global3[_wgslsmith_index_u32(~(~1u), 32u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    let var_0 = arg_1.a;
    let var_1 = true;
    let var_2 = arg_1.b.x;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(39878u, 6u)])))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.b - vec3<f32>(global1[_wgslsmith_index_u32(64768u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], arg_0.b.x)), arg_0.b, !select(arg_1.b, arg_1.b, true)))));
    var_3 = Struct_2(-1801f, _wgslsmith_f_op_vec3_f32(-arg_0.b));
    return ~7885u > ~countOneBits(firstTrailingBit(_wgslsmith_mult_u32(var_0, 42899u)));
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<u32>) -> StorageBuffer {
    global3 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_clamp_vec4_u32(arg_2, firstTrailingBit(~vec4<u32>(~arg_2.x, ~arg_1, 4294967295u, 1u)), vec4<u32>(_wgslsmith_add_u32(arg_1, 0u), 0u, ~u_input.c.x, 46899u));
    var var_1 = Struct_4(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(arg_2.x << (11306u % 32u), ~0u)), 22747u), Struct_3(false, Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(32040u, 24u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1245f, global0[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)])))));
    let var_2 = u_input.d.xy;
    var var_3 = vec3<i32>(1i, i32(-1i) * -_wgslsmith_mod_i32(countOneBits(var_2.x), min(7789i, var_2.x)), u_input.b.x);
    return StorageBuffer(vec2<i32>(u_input.e, _wgslsmith_add_i32(40146i, _wgslsmith_dot_vec2_i32(u_input.b ^ vec2<i32>(var_2.x, var_3.x), -u_input.d.xx))), vec2<i32>(firstTrailingBit(-21652i), reverseBits(~var_2.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x ^ -2147483647i, var_2.x | -2147483647i, 32641i, 0i), reverseBits(vec4<i32>(var_3.x, 1i, var_2.x, var_2.x))) & firstLeadingBit(-_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(var_3.x, 2147483647i, -62i))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(select(vec4<bool>(true, abs(1u) != u_input.a.x, func_4(Struct_2(-739f, vec3<f32>(-1358f, global0[_wgslsmith_index_u32(12297u, 24u)], -798f)), func_1(u_input.a.www, u_input.b.x), vec4<i32>(u_input.d.x, u_input.d.x, -25918i, u_input.b.x)), !any(vec3<bool>(false, false, true))), vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(22128u, 6u)], -1093f, 559f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-153f, global0[_wgslsmith_index_u32(1u, 24u)], 911f))).x, true), vec4<bool>(-u_input.e > u_input.b.x, false, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), false)), 59561u >> (u_input.c.x % 32u), select(u_input.c, u_input.a, select(vec4<bool>(false, any(vec3<bool>(true, true, false)), u_input.a.x == u_input.c.x, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(37428u, 6u)], 441f, global1[_wgslsmith_index_u32(u_input.a.x, 6u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-850f, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], 660f) * vec3<f32>(196f, global1[_wgslsmith_index_u32(0u, 6u)], -760f))))));
}

