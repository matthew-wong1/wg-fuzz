struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: Struct_4,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, false, false, true, false, true, true, true, false, true, true, false, false, false, true, true, true, true, true, true, true, false, true, true, true, true, true, false, false, true, false);

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_2(Struct_1(1647f, -554f, vec3<i32>(-501i, 1i, 0i), vec2<bool>(false, true), 2147483647i), -345f), Struct_2(Struct_1(556f, -2937f, vec3<i32>(0i, 0i, i32(-2147483648)), vec2<bool>(true, true), -1i), -1135f), Struct_2(Struct_1(-142f, -175f, vec3<i32>(-20386i, -17983i, -1i), vec2<bool>(true, false), 0i), -260f), -980f), Struct_3(Struct_2(Struct_1(473f, -1068f, vec3<i32>(-1i, -43463i, 1i), vec2<bool>(true, false), 36815i), 981f), Struct_2(Struct_1(253f, 121f, vec3<i32>(-3001i, 0i, -18648i), vec2<bool>(true, true), 0i), -1276f), Struct_2(Struct_1(-1507f, 1481f, vec3<i32>(-1i, 0i, 10920i), vec2<bool>(true, false), 41734i), 1570f), -689f), Struct_3(Struct_2(Struct_1(649f, 300f, vec3<i32>(9550i, 29425i, -17665i), vec2<bool>(true, true), 0i), 1103f), Struct_2(Struct_1(-892f, -1125f, vec3<i32>(-20272i, 2147483647i, -19994i), vec2<bool>(false, false), 103608i), 478f), Struct_2(Struct_1(-1526f, 156f, vec3<i32>(-14533i, -26262i, -5097i), vec2<bool>(false, false), i32(-2147483648)), 1205f), 1454f), Struct_3(Struct_2(Struct_1(-1000f, 626f, vec3<i32>(40689i, 1i, -50017i), vec2<bool>(false, false), 1i), -262f), Struct_2(Struct_1(2608f, -440f, vec3<i32>(1i, -4734i, 0i), vec2<bool>(true, true), -10854i), 826f), Struct_2(Struct_1(1000f, -1495f, vec3<i32>(1675i, 6587i, 13237i), vec2<bool>(true, true), -23497i), -1335f), 595f), Struct_3(Struct_2(Struct_1(-952f, 841f, vec3<i32>(15446i, 2147483647i, -1i), vec2<bool>(true, true), 14111i), 859f), Struct_2(Struct_1(-2034f, -717f, vec3<i32>(13476i, -12500i, i32(-2147483648)), vec2<bool>(false, true), 1i), -1037f), Struct_2(Struct_1(1368f, -478f, vec3<i32>(2147483647i, 544i, 1i), vec2<bool>(false, true), 39826i), 533f), -324f), Struct_3(Struct_2(Struct_1(378f, 1176f, vec3<i32>(-1i, 11973i, 22982i), vec2<bool>(true, true), -1i), 526f), Struct_2(Struct_1(-1547f, -803f, vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec2<bool>(false, true), -1736i), -598f), Struct_2(Struct_1(-184f, -1001f, vec3<i32>(-47955i, 0i, -22995i), vec2<bool>(false, true), -38714i), -624f), -558f), Struct_3(Struct_2(Struct_1(1095f, 414f, vec3<i32>(0i, -1i, 1i), vec2<bool>(true, false), -57393i), -449f), Struct_2(Struct_1(538f, 308f, vec3<i32>(1i, -71914i, 0i), vec2<bool>(true, true), -20476i), -581f), Struct_2(Struct_1(-1000f, 1003f, vec3<i32>(-9423i, 0i, -44879i), vec2<bool>(false, false), -43457i), 745f), -279f), Struct_3(Struct_2(Struct_1(-292f, -637f, vec3<i32>(-30561i, 24231i, -1i), vec2<bool>(false, false), 0i), -500f), Struct_2(Struct_1(-432f, 308f, vec3<i32>(13740i, 2147483647i, 2147483647i), vec2<bool>(false, false), -17111i), 983f), Struct_2(Struct_1(-830f, -354f, vec3<i32>(2147483647i, 2147483647i, -27696i), vec2<bool>(true, false), 21836i), -885f), 1190f), Struct_3(Struct_2(Struct_1(857f, -700f, vec3<i32>(-1i, 45826i, 1i), vec2<bool>(true, true), -13298i), -1941f), Struct_2(Struct_1(-639f, 626f, vec3<i32>(0i, -5681i, -1i), vec2<bool>(false, true), i32(-2147483648)), 1489f), Struct_2(Struct_1(-1000f, 1000f, vec3<i32>(4283i, 64243i, 0i), vec2<bool>(false, false), -1i), 308f), 657f), Struct_3(Struct_2(Struct_1(317f, -501f, vec3<i32>(6981i, 1i, -76494i), vec2<bool>(true, false), -1048i), 1077f), Struct_2(Struct_1(-887f, 1000f, vec3<i32>(-11065i, -19561i, 0i), vec2<bool>(false, false), 38763i), -267f), Struct_2(Struct_1(2367f, -722f, vec3<i32>(0i, -578i, 7029i), vec2<bool>(true, true), 26657i), 441f), -1000f), Struct_3(Struct_2(Struct_1(210f, -230f, vec3<i32>(-1i, 2147483647i, 0i), vec2<bool>(false, false), 67463i), -483f), Struct_2(Struct_1(270f, 166f, vec3<i32>(2147483647i, 26532i, 0i), vec2<bool>(true, false), 53603i), -1401f), Struct_2(Struct_1(-517f, 1000f, vec3<i32>(i32(-2147483648), 6625i, 1i), vec2<bool>(false, true), 37615i), 1364f), -1011f), Struct_3(Struct_2(Struct_1(-477f, -608f, vec3<i32>(2147483647i, -1i, 32383i), vec2<bool>(false, false), 40882i), -1172f), Struct_2(Struct_1(-650f, 1797f, vec3<i32>(-1i, -16603i, 2147483647i), vec2<bool>(false, false), -5557i), 1104f), Struct_2(Struct_1(1000f, -1073f, vec3<i32>(-7858i, 14760i, i32(-2147483648)), vec2<bool>(true, true), -509i), -265f), 949f), Struct_3(Struct_2(Struct_1(-235f, -508f, vec3<i32>(-13933i, 0i, 16205i), vec2<bool>(false, true), -1i), -2273f), Struct_2(Struct_1(166f, -1374f, vec3<i32>(2147483647i, 19731i, 18059i), vec2<bool>(true, false), 0i), -1188f), Struct_2(Struct_1(1205f, 102f, vec3<i32>(i32(-2147483648), -43010i, 1i), vec2<bool>(true, false), -36261i), -334f), 1577f), Struct_3(Struct_2(Struct_1(-695f, -1148f, vec3<i32>(-15274i, -1i, 1i), vec2<bool>(false, true), 0i), -870f), Struct_2(Struct_1(1074f, -840f, vec3<i32>(2147483647i, 15239i, -97013i), vec2<bool>(true, false), 0i), 1584f), Struct_2(Struct_1(403f, 1466f, vec3<i32>(-2078i, -30572i, 0i), vec2<bool>(true, false), 48633i), 2444f), -1311f), Struct_3(Struct_2(Struct_1(-426f, -1000f, vec3<i32>(-1i, 50616i, -1i), vec2<bool>(false, true), 45652i), -232f), Struct_2(Struct_1(-824f, 1997f, vec3<i32>(-1i, 0i, 2147483647i), vec2<bool>(false, true), 1i), 1000f), Struct_2(Struct_1(369f, 141f, vec3<i32>(0i, i32(-2147483648), 7988i), vec2<bool>(false, false), -33966i), -2359f), 179f), Struct_3(Struct_2(Struct_1(771f, -982f, vec3<i32>(1i, -59647i, -5951i), vec2<bool>(false, false), -20893i), -1278f), Struct_2(Struct_1(756f, 363f, vec3<i32>(-1416i, -3945i, i32(-2147483648)), vec2<bool>(false, false), -14542i), -2521f), Struct_2(Struct_1(-1285f, -470f, vec3<i32>(-34040i, -13612i, 1i), vec2<bool>(false, false), 2571i), 1136f), 264f), Struct_3(Struct_2(Struct_1(100f, -128f, vec3<i32>(16411i, -25475i, 1i), vec2<bool>(false, false), i32(-2147483648)), 2060f), Struct_2(Struct_1(600f, 354f, vec3<i32>(-36526i, 51391i, -6703i), vec2<bool>(true, false), -57396i), 129f), Struct_2(Struct_1(306f, 223f, vec3<i32>(2147483647i, 3329i, -928i), vec2<bool>(false, false), i32(-2147483648)), 264f), -1390f), Struct_3(Struct_2(Struct_1(-252f, -794f, vec3<i32>(-1i, -12048i, i32(-2147483648)), vec2<bool>(false, false), 52902i), -232f), Struct_2(Struct_1(475f, -1973f, vec3<i32>(1i, 9758i, -1i), vec2<bool>(true, false), i32(-2147483648)), 1092f), Struct_2(Struct_1(1234f, -513f, vec3<i32>(4394i, -5173i, i32(-2147483648)), vec2<bool>(true, false), -57183i), -192f), -1000f), Struct_3(Struct_2(Struct_1(415f, -363f, vec3<i32>(1i, 1i, 0i), vec2<bool>(false, true), 1i), 652f), Struct_2(Struct_1(625f, 163f, vec3<i32>(6608i, -11954i, -35125i), vec2<bool>(true, true), 9080i), -1699f), Struct_2(Struct_1(1226f, 464f, vec3<i32>(2147483647i, -11475i, -8166i), vec2<bool>(false, false), i32(-2147483648)), -679f), -1517f), Struct_3(Struct_2(Struct_1(-683f, 925f, vec3<i32>(-7560i, i32(-2147483648), 0i), vec2<bool>(true, false), -30430i), 728f), Struct_2(Struct_1(-2916f, -763f, vec3<i32>(-1i, 33223i, 1i), vec2<bool>(true, false), -63586i), -829f), Struct_2(Struct_1(-546f, -1369f, vec3<i32>(-25535i, -1i, i32(-2147483648)), vec2<bool>(false, true), 28128i), 1382f), -584f), Struct_3(Struct_2(Struct_1(-1875f, -800f, vec3<i32>(i32(-2147483648), 45057i, -20496i), vec2<bool>(false, true), 11131i), -319f), Struct_2(Struct_1(-1060f, 230f, vec3<i32>(0i, 29374i, 17795i), vec2<bool>(true, true), 1i), 1000f), Struct_2(Struct_1(521f, -1010f, vec3<i32>(27786i, -28402i, 2147483647i), vec2<bool>(true, true), 45499i), -914f), -318f), Struct_3(Struct_2(Struct_1(-694f, -512f, vec3<i32>(-42005i, 14292i, -93583i), vec2<bool>(false, false), -4792i), -1084f), Struct_2(Struct_1(-1542f, -914f, vec3<i32>(28550i, -1i, 2396i), vec2<bool>(true, false), i32(-2147483648)), 213f), Struct_2(Struct_1(-351f, 1898f, vec3<i32>(-4676i, 2147483647i, 9159i), vec2<bool>(false, false), -12688i), 313f), 1000f), Struct_3(Struct_2(Struct_1(-170f, 1000f, vec3<i32>(i32(-2147483648), 2147483647i, 32047i), vec2<bool>(false, true), 0i), -1839f), Struct_2(Struct_1(466f, 1184f, vec3<i32>(0i, i32(-2147483648), 1i), vec2<bool>(true, true), 1i), 472f), Struct_2(Struct_1(590f, 1344f, vec3<i32>(1713i, -14447i, 2147483647i), vec2<bool>(true, false), 0i), 1118f), -393f), Struct_3(Struct_2(Struct_1(-1000f, 1000f, vec3<i32>(2147483647i, -1i, 2147483647i), vec2<bool>(true, false), 4406i), 778f), Struct_2(Struct_1(-282f, 2230f, vec3<i32>(-55693i, -65843i, -1i), vec2<bool>(false, false), 20921i), 818f), Struct_2(Struct_1(922f, 742f, vec3<i32>(30518i, -1744i, -12481i), vec2<bool>(true, false), 2147483647i), -1705f), 876f), Struct_3(Struct_2(Struct_1(-1471f, -580f, vec3<i32>(-11247i, 1i, 60600i), vec2<bool>(true, true), 7072i), -346f), Struct_2(Struct_1(974f, -815f, vec3<i32>(2147483647i, i32(-2147483648), 1i), vec2<bool>(true, false), i32(-2147483648)), 118f), Struct_2(Struct_1(-1178f, 209f, vec3<i32>(-64075i, -214i, -1i), vec2<bool>(false, true), -1i), -1010f), 128f), Struct_3(Struct_2(Struct_1(-253f, 757f, vec3<i32>(2147483647i, -15633i, 0i), vec2<bool>(false, false), 41263i), 298f), Struct_2(Struct_1(1595f, -927f, vec3<i32>(61555i, 24070i, 17254i), vec2<bool>(false, true), -27152i), 422f), Struct_2(Struct_1(2500f, -1241f, vec3<i32>(-32377i, 2147483647i, -1i), vec2<bool>(true, false), 21524i), -1464f), 432f), Struct_3(Struct_2(Struct_1(1000f, 827f, vec3<i32>(44257i, 2147483647i, 35450i), vec2<bool>(false, true), -9665i), -1679f), Struct_2(Struct_1(-1000f, 646f, vec3<i32>(87482i, 2147483647i, i32(-2147483648)), vec2<bool>(true, true), -1i), 2997f), Struct_2(Struct_1(-385f, -274f, vec3<i32>(37477i, 2147483647i, -40718i), vec2<bool>(true, false), i32(-2147483648)), 1013f), 3225f), Struct_3(Struct_2(Struct_1(968f, -483f, vec3<i32>(91245i, -21695i, 46881i), vec2<bool>(false, true), 1i), -143f), Struct_2(Struct_1(-715f, -1550f, vec3<i32>(2147483647i, -1i, 2147483647i), vec2<bool>(true, false), -38095i), 1628f), Struct_2(Struct_1(-876f, 839f, vec3<i32>(2147483647i, 53910i, 2147483647i), vec2<bool>(false, true), i32(-2147483648)), 636f), 1000f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec3<i32>) -> u32 {
    global0 = array<bool, 31>();
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1647f), -1868f, -1091f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1020f, _wgslsmith_f_op_f32(278f - -1380f), -495f))))));
    global1 = array<Struct_3, 28>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1615f, 1000f, -1349f, var_0.x))) - vec4<f32>(448f, -178f, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(min(var_0.x, 151f)))) - vec4<f32>(376f, 1005f, -861f, _wgslsmith_f_op_f32(sign(var_0.x)))));
    var var_2 = arg_0.x;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, firstTrailingBit(countOneBits(0u)), ~(~u_input.e), ~u_input.b.x), ~(~vec4<u32>(4294967295u, 5450u, 24869u, u_input.d.x))) << (_wgslsmith_dot_vec2_u32(u_input.d.zz, arg_0.zw) % 32u);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    global0 = array<bool, 31>();
    let var_0 = arg_2;
    global0 = array<bool, 31>();
    global1 = array<Struct_3, 28>();
    var var_1 = Struct_5(~_wgslsmith_clamp_u32(u_input.b.x, u_input.d.x | (1u << (u_input.d.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(5883u, 25934u, 4294967295u), ~vec3<u32>(1u, u_input.d.x, u_input.e))), Struct_4(abs(~firstTrailingBit(u_input.b.wwx)), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 28u)], Struct_3(Struct_2(Struct_1(var_0.b, arg_2.b, vec3<i32>(arg_2.c.x, var_0.c.x, 0i), arg_2.d, u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -330f)), Struct_2(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1201f)), Struct_2(Struct_1(var_0.a, 1445f, var_0.c, vec2<bool>(var_0.d.x, false), 0i), _wgslsmith_f_op_f32(arg_2.a - arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 472f)))), Struct_4(vec3<u32>(min(~1u, ~u_input.e), 4294967295u, 10840u), Struct_3(Struct_2(arg_2, var_0.a), Struct_2(Struct_1(var_0.b, arg_1.x, arg_2.c, vec2<bool>(global0[_wgslsmith_index_u32(52816u, 31u)], arg_2.d.x), var_0.e), _wgslsmith_f_op_f32(-arg_2.a)), Struct_2(Struct_1(-330f, -269f, arg_2.c, arg_2.d, 0i), 1904f), 1379f), global1[_wgslsmith_index_u32(u_input.e, 28u)]), firstTrailingBit(u_input.d));
    return _wgslsmith_f_op_f32(trunc(arg_1.x));
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_4(vec3<u32>(max(_wgslsmith_mult_u32(1u, u_input.e), _wgslsmith_div_u32(func_2(u_input.b, vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], global0[_wgslsmith_index_u32(u_input.e, 31u)], false), vec3<i32>(0i, u_input.a, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(11443u, 4294967295u), vec2<u32>(u_input.e, u_input.e)))), _wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.d.x, 0u), 48783u), ~reverseBits(~u_input.e)), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(-636f)), _wgslsmith_f_op_f32(max(-778f, -948f)), vec3<i32>(u_input.c, -43601i, u_input.c) << (vec3<u32>(0u, u_input.e, u_input.e) % vec3<u32>(32u)), vec2<bool>(global0[_wgslsmith_index_u32(78453u, 31u)], true), firstTrailingBit(u_input.c)), -692f), Struct_2(Struct_1(-573f, _wgslsmith_f_op_f32(func_3(56010i, vec3<f32>(-1239f, -792f, 1806f), Struct_1(-925f, -1926f, vec3<i32>(0i, u_input.c, 0i), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 31u)]), 1i))), vec3<i32>(48929i, u_input.c, 2147483647i), select(vec2<bool>(global0[_wgslsmith_index_u32(70098u, 31u)], true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 31u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], true)), 2147483647i), 1102f), Struct_2(Struct_1(_wgslsmith_f_op_f32(1220f + 1000f), -927f, firstLeadingBit(vec3<i32>(u_input.c, u_input.c, u_input.c)), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 31u)], false), vec2<bool>(global0[_wgslsmith_index_u32(39960u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), vec2<bool>(true, false)), firstTrailingBit(u_input.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(1000f * -2568f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1094f, _wgslsmith_f_op_f32(1302f + 756f), global0[_wgslsmith_index_u32(~4294967295u, 31u)])))), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(-1710f)), -1000f, vec3<i32>(u_input.c, u_input.c, u_input.c) & vec3<i32>(-21618i, u_input.c, u_input.a), vec2<bool>(false, false), -2147483647i), _wgslsmith_div_f32(-1276f, _wgslsmith_div_f32(586f, -1058f))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-483f - -475f), _wgslsmith_f_op_f32(-1317f + -1254f), min(vec3<i32>(1i, -26306i, u_input.a), vec3<i32>(u_input.c, u_input.a, u_input.c)), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 31u)], true), _wgslsmith_sub_i32(40449i, u_input.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(209f, 248f)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(861f - 305f), _wgslsmith_f_op_f32(step(-625f, 597f)), max(vec3<i32>(u_input.a, -1i, -56079i), vec3<i32>(1i, -32695i, 45853i)), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), -u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f) * -174f)), 1111f));
    global0 = array<bool, 31>();
    global1 = array<Struct_3, 28>();
    var var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, ~var_0.c.a.a.e, 0i << (0u % 32u)), var_0.c.b.a.c), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, u_input.c) ^ vec3<i32>(u_input.c, u_input.c, -47152i), vec3<i32>(u_input.a, var_0.c.b.a.e, -34668i) & vec3<i32>(u_input.c, -24812i, -59835i))), u_input.a, u_input.a);
    var var_2 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(-47393i, var_0.c.a.a.e), var_1.x, u_input.c), -14317i);
    return StorageBuffer(vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-797f))), var_0.b.b.b)), _wgslsmith_f_op_f32(-1200f + -1336f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    global1 = array<Struct_3, 28>();
    let var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(min(u_input.b.ywz, ~vec3<u32>(5426u, u_input.e, 1u)), u_input.b.zwz), abs(~u_input.b.yxx));
    let x = u_input.a;
    s_output = func_1();
}

