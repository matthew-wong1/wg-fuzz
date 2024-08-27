struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-663f, 246f, -866f);

var<private> global1: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(Struct_1(15937u, vec4<i32>(-7504i, 2147483647i, 2147483647i, 0i), vec3<f32>(-155f, 1000f, -1439f)), vec4<u32>(1u, 4294967295u, 21339u, 1u), -1000f), Struct_4(Struct_1(34670u, vec4<i32>(-15144i, i32(-2147483648), -71193i, 1i), vec3<f32>(424f, 233f, -388f)), vec4<u32>(24903u, 14807u, 0u, 4294967295u), 1000f), Struct_4(Struct_1(0u, vec4<i32>(2147483647i, -22204i, 33947i, -22501i), vec3<f32>(-517f, -151f, -1306f)), vec4<u32>(46701u, 60352u, 62603u, 63264u), -383f), Struct_4(Struct_1(4294967295u, vec4<i32>(1i, 2147483647i, i32(-2147483648), 0i), vec3<f32>(504f, -919f, -1125f)), vec4<u32>(16187u, 16604u, 0u, 0u), 175f), Struct_4(Struct_1(61392u, vec4<i32>(2147483647i, i32(-2147483648), 2905i, -1i), vec3<f32>(-862f, -1147f, 896f)), vec4<u32>(18890u, 1u, 24991u, 33217u), 1530f), Struct_4(Struct_1(7138u, vec4<i32>(14393i, 0i, 2147483647i, -13466i), vec3<f32>(-443f, 123f, -2106f)), vec4<u32>(55882u, 1u, 48253u, 92371u), -528f), Struct_4(Struct_1(28701u, vec4<i32>(1i, 2147483647i, -1i, 34099i), vec3<f32>(1855f, -1342f, 820f)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), 934f), Struct_4(Struct_1(1u, vec4<i32>(-19212i, -70790i, 12631i, -82674i), vec3<f32>(164f, -1447f, 325f)), vec4<u32>(1022u, 23209u, 0u, 0u), -1508f), Struct_4(Struct_1(67375u, vec4<i32>(70007i, 14748i, i32(-2147483648), 6868i), vec3<f32>(-1020f, -235f, -573f)), vec4<u32>(50650u, 48069u, 4294967295u, 1u), 1430f), Struct_4(Struct_1(24360u, vec4<i32>(-1i, -4927i, 2147483647i, -27660i), vec3<f32>(1000f, -1093f, -469f)), vec4<u32>(0u, 0u, 14909u, 0u), -1436f), Struct_4(Struct_1(9531u, vec4<i32>(-26502i, -1i, 1i, -1i), vec3<f32>(550f, 1521f, 815f)), vec4<u32>(5665u, 16002u, 4294967295u, 1u), 354f), Struct_4(Struct_1(4294967295u, vec4<i32>(0i, 3095i, 0i, i32(-2147483648)), vec3<f32>(-239f, 450f, 1995f)), vec4<u32>(41330u, 0u, 1u, 4294967295u), -186f), Struct_4(Struct_1(27533u, vec4<i32>(60515i, 18875i, 0i, 35389i), vec3<f32>(-1756f, -772f, 2154f)), vec4<u32>(30457u, 74247u, 1u, 116895u), 1322f), Struct_4(Struct_1(58209u, vec4<i32>(1i, 18788i, -9697i, 59864i), vec3<f32>(-1647f, 2555f, 297f)), vec4<u32>(2346u, 21102u, 0u, 1u), -1168f), Struct_4(Struct_1(1u, vec4<i32>(38369i, 47528i, 42863i, 5849i), vec3<f32>(1309f, 231f, 960f)), vec4<u32>(25074u, 47666u, 78933u, 20330u), -294f), Struct_4(Struct_1(5865u, vec4<i32>(27887i, 10154i, 43076i, 0i), vec3<f32>(687f, -415f, 1754f)), vec4<u32>(30431u, 4294967295u, 54482u, 0u), -1285f), Struct_4(Struct_1(1u, vec4<i32>(i32(-2147483648), 4099i, 0i, i32(-2147483648)), vec3<f32>(594f, -1000f, -734f)), vec4<u32>(0u, 4294967295u, 9309u, 1u), -1150f), Struct_4(Struct_1(30639u, vec4<i32>(5408i, 0i, 85079i, 1i), vec3<f32>(935f, -1847f, -1870f)), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), 949f), Struct_4(Struct_1(50841u, vec4<i32>(2147483647i, 25554i, 1i, 1i), vec3<f32>(252f, 1452f, -221f)), vec4<u32>(0u, 1u, 38579u, 4294967295u), -1903f), Struct_4(Struct_1(0u, vec4<i32>(-24915i, 0i, i32(-2147483648), 2147483647i), vec3<f32>(-100f, -1249f, 128f)), vec4<u32>(0u, 70059u, 0u, 21809u), 933f), Struct_4(Struct_1(13773u, vec4<i32>(-36144i, -6558i, 2147483647i, 1i), vec3<f32>(-971f, 613f, -1490f)), vec4<u32>(52079u, 49909u, 159u, 81634u), 1000f), Struct_4(Struct_1(0u, vec4<i32>(i32(-2147483648), i32(-2147483648), -14010i, -23129i), vec3<f32>(-1000f, 123f, 414f)), vec4<u32>(51555u, 18258u, 3166u, 4294967295u), 633f), Struct_4(Struct_1(4294967295u, vec4<i32>(-1i, -14589i, 41284i, -58143i), vec3<f32>(-747f, 983f, -686f)), vec4<u32>(4294967295u, 76178u, 21635u, 55034u), -983f), Struct_4(Struct_1(0u, vec4<i32>(-3780i, i32(-2147483648), 0i, 20528i), vec3<f32>(-655f, 211f, -736f)), vec4<u32>(4294967295u, 59603u, 4294967295u, 0u), 212f));

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(Struct_1(4294967295u, vec4<i32>(-39169i, -4087i, -19989i, 1i), vec3<f32>(-1227f, 1563f, -1275f)), vec4<u32>(1u, 1u, 4294967295u, 0u), -222f), Struct_4(Struct_1(0u, vec4<i32>(-22209i, 2147483647i, -22198i, -74312i), vec3<f32>(-480f, -1000f, -389f)), vec4<u32>(0u, 1u, 47217u, 4064u), -882f), Struct_4(Struct_1(0u, vec4<i32>(1i, 1i, 11105i, i32(-2147483648)), vec3<f32>(-188f, 1786f, 139f)), vec4<u32>(1u, 76264u, 0u, 0u), -217f), Struct_4(Struct_1(31425u, vec4<i32>(24156i, i32(-2147483648), 0i, -4990i), vec3<f32>(1000f, 1606f, 1000f)), vec4<u32>(13924u, 0u, 36293u, 4294967295u), -1025f), Struct_4(Struct_1(0u, vec4<i32>(-39886i, 2147483647i, 0i, 9750i), vec3<f32>(1666f, -359f, 816f)), vec4<u32>(4294967295u, 57769u, 12119u, 54586u), -998f), Struct_4(Struct_1(0u, vec4<i32>(-25923i, 6356i, i32(-2147483648), -1i), vec3<f32>(-277f, 499f, 793f)), vec4<u32>(1u, 4294967295u, 69343u, 1u), -1070f), Struct_4(Struct_1(47259u, vec4<i32>(-1i, -14876i, -1866i, 0i), vec3<f32>(1201f, 1030f, -982f)), vec4<u32>(4294967295u, 1u, 55416u, 0u), -317f), Struct_4(Struct_1(4294967295u, vec4<i32>(2147483647i, -10002i, 48074i, 0i), vec3<f32>(-1886f, -1217f, -750f)), vec4<u32>(4294967295u, 36191u, 1u, 50712u), 1163f), Struct_4(Struct_1(116123u, vec4<i32>(-81332i, -18134i, 1i, -93916i), vec3<f32>(687f, 112f, -1642f)), vec4<u32>(85088u, 60649u, 0u, 35940u), -249f), Struct_4(Struct_1(31801u, vec4<i32>(31896i, -39728i, 76818i, -10347i), vec3<f32>(-541f, -1346f, 1008f)), vec4<u32>(0u, 4294967295u, 4294967295u, 49524u), -976f), Struct_4(Struct_1(1u, vec4<i32>(-56287i, 11982i, 1i, 2147483647i), vec3<f32>(-239f, -463f, 218f)), vec4<u32>(10705u, 4738u, 1u, 0u), -433f), Struct_4(Struct_1(4294967295u, vec4<i32>(22993i, -15667i, -16345i, 0i), vec3<f32>(-792f, 495f, 1509f)), vec4<u32>(49308u, 1u, 15974u, 129131u), -1736f), Struct_4(Struct_1(4294967295u, vec4<i32>(18591i, 1i, 0i, -40845i), vec3<f32>(1000f, -1283f, -3122f)), vec4<u32>(5124u, 4294967295u, 635u, 44216u), -108f), Struct_4(Struct_1(0u, vec4<i32>(2147483647i, -10263i, 2147483647i, 2147483647i), vec3<f32>(-224f, -210f, 161f)), vec4<u32>(1u, 1u, 7389u, 32323u), 204f), Struct_4(Struct_1(0u, vec4<i32>(39951i, -12368i, 27699i, 2147483647i), vec3<f32>(-497f, 409f, -535f)), vec4<u32>(1u, 64453u, 0u, 138293u), 157f), Struct_4(Struct_1(13266u, vec4<i32>(75283i, i32(-2147483648), -1i, -17980i), vec3<f32>(-524f, 650f, 1000f)), vec4<u32>(1u, 4294967295u, 4808u, 4294967295u), -409f), Struct_4(Struct_1(1u, vec4<i32>(-19643i, -58621i, i32(-2147483648), 28315i), vec3<f32>(388f, 2397f, 656f)), vec4<u32>(4294967295u, 1u, 5701u, 0u), 1000f));

var<private> global3: array<vec2<f32>, 32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    var var_0 = arg_1.x;
    global3 = array<vec2<f32>, 32>();
    global0 = arg_2.c;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(633f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-656f)), _wgslsmith_f_op_f32(1000f - -1319f))))) + arg_0);
    let var_2 = arg_2;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(53228u, arg_2.a ^ 57937u, ~arg_2.a), firstLeadingBit(abs(~vec3<u32>(arg_2.a, arg_1.x, 1u) ^ _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2.a, arg_2.a), vec3<u32>(4294967295u, 1u, arg_1.x)))));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(min(arg_0, arg_0), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), global0.x), max(vec2<u32>(4294967295u, arg_0), ~vec2<u32>(51371u, 34386u)), Struct_1(arg_0, -u_input.a, vec3<f32>(-1005f, global0.x, 121f)), vec4<bool>(true, global0.x >= -126f, false, true)), 1u), 35384u);
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, -825f, -318f))));
    let var_1 = Struct_2(_wgslsmith_mult_i32(-72181i, u_input.a.x), Struct_1(_wgslsmith_clamp_u32(21899u, var_0.x, _wgslsmith_sub_u32(~var_0.x, arg_0)), u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * -1177f), _wgslsmith_f_op_f32(-global0.x), global0.x))), vec3<u32>(var_0.x, firstTrailingBit(4294967295u), arg_0), ~vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 45454u, arg_0, arg_0)), firstLeadingBit(vec4<u32>(arg_0, arg_0, arg_0, 0u))), arg_0, max(1u, 4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 5948u, 18268u), vec3<u32>(1u, 4294967295u, 1u))));
    global1 = array<Struct_4, 24>();
    global3 = array<vec2<f32>, 32>();
    return !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))), select(vec4<bool>(select(true, false, false), false, all(vec4<bool>(false, true, true, true)), false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_3 {
    global2 = array<Struct_4, 17>();
    var var_0 = countOneBits(-90386i);
    var var_1 = arg_1;
    var_0 = 1i;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.c))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), var_1.b.c.x), global0.x, _wgslsmith_f_op_f32(abs(864f)))));
    return Struct_3(_wgslsmith_mult_vec4_u32(countOneBits(arg_1.d ^ vec4<u32>(var_1.b.a, var_1.c.x, var_1.d.x, var_1.d.x)) >> ((arg_1.d ^ vec4<u32>(8957u, var_1.d.x, 1u, var_1.c.x)) % vec4<u32>(32u)), vec4<u32>(~abs(4294967295u), ~(~0u), firstLeadingBit(0u ^ arg_1.b.a), ~_wgslsmith_mod_u32(arg_1.c.x, 1u))));
}

fn func_5(arg_0: Struct_3) -> vec3<u32> {
    global1 = array<Struct_4, 24>();
    global1 = array<Struct_4, 24>();
    global3 = array<vec2<f32>, 32>();
    global3 = array<vec2<f32>, 32>();
    let var_0 = _wgslsmith_f_op_f32(-global0.x);
    return vec3<u32>(arg_0.a.x, func_4(!vec4<bool>(all(vec3<bool>(true, false, false)), true, u_input.a.x == -1i, true), Struct_2(-1865i, Struct_1(arg_0.a.x >> (108607u % 32u), -u_input.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, global0.x, global0.x)))), ~vec3<u32>(arg_0.a.x, 39449u, arg_0.a.x), ~_wgslsmith_clamp_vec4_u32(arg_0.a, arg_0.a, vec4<u32>(0u, arg_0.a.x, 4294967295u, 67093u)))).a.x, 118547u);
}

fn func_1() -> i32 {
    var var_0 = func_5(func_4(func_2(~1u), Struct_2(1i, Struct_1(~43590u, abs(vec4<i32>(0i, u_input.a.x, 0i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 220f, global0.x) * vec3<f32>(global0.x, global0.x, global0.x))), ~firstLeadingBit(vec3<u32>(75480u, 0u, 1u)), ~reverseBits(vec4<u32>(0u, 4294967295u, 30196u, 4680u)))));
    var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(~var_0.x), ~(~var_0.x), ~1u), ~_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, var_0.x, 92857u), vec3<u32>(var_0.x, 31726u, 51046u))), var_0.x >> (33216u % 32u), var_0.x);
    global2 = array<Struct_4, 17>();
    var var_1 = vec3<bool>(!(all(vec2<bool>(true, true)) | false), true | !(~(-2147483647i) >= u_input.a.x), true);
    var var_2 = u_input.a.x;
    return -30526i;
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = max(countOneBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_1.a, -30327i, u_input.a.x, u_input.a.x), min(u_input.a, vec4<i32>(-31226i, arg_1.a, arg_1.b.b.x, arg_1.a)), true), -_wgslsmith_mod_vec4_i32(vec4<i32>(9099i, u_input.a.x, u_input.a.x, u_input.a.x), arg_1.b.b))), firstLeadingBit(-firstTrailingBit(u_input.a.x)) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_1.b.b.zyy, _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, arg_1.a, 60256i), u_input.a.xwy)), u_input.a.x));
    global1 = array<Struct_4, 24>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0)), global0.x))) - 2116f);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(380f, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(867f + -181f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global0.x, 1614f, true)), _wgslsmith_f_op_f32(ceil(arg_0)), true)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.b.c, vec3<f32>(arg_1.b.c.x, var_1, -2112f), func_2(arg_1.b.a).zzw))))));
    var var_2 = _wgslsmith_dot_vec2_u32(arg_1.d.ww, vec2<u32>(_wgslsmith_add_u32(4294967295u, ~arg_1.b.a), reverseBits(arg_1.b.a)));
    return StorageBuffer(u_input.a.xyx);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 32>();
    let var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(19666u, firstTrailingBit(8952u), ~1u) | ~(~vec3<u32>(15766u, 1u, 1u)), abs(max(vec3<u32>(43782u, 38260u, 72468u), vec3<u32>(1u, 1u, 1u))));
    global2 = array<Struct_4, 17>();
    var var_1 = u_input.a.wyx;
    global3 = array<vec2<f32>, 32>();
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 1145f)))), Struct_2(func_1(), Struct_1(4294967295u, -vec4<i32>(0i, u_input.a.x, -1i, -35920i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-130f, -1000f, global0.x) - vec3<f32>(global0.x, global0.x, -1259f)))), vec3<u32>(_wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x), abs(var_0.x) << (var_0.x % 32u), _wgslsmith_sub_u32(1u, ~var_0.x)), select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 0u, 56054u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), vec4<u32>(0u, 52471u, 1u, var_0.x)), abs(~vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u)), func_2(func_3(-1253f, vec2<u32>(4294967295u, 0u), Struct_1(var_0.x, u_input.a, vec3<f32>(global0.x, -1188f, global0.x)), vec4<bool>(false, true, true, false))).x)));
}

