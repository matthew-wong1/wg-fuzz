struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec3<i32>,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec2<bool>(true, false), 1269f, Struct_1(vec3<f32>(1662f, -2637f, 1190f), vec2<i32>(3052i, 2147483647i), vec4<i32>(14011i, 4420i, 0i, 1i), 0u, false), Struct_2(Struct_1(vec3<f32>(-867f, -889f, -1012f), vec2<i32>(0i, 2147483647i), vec4<i32>(-39504i, 2147483647i, 2147483647i, 35722i), 4294967295u, true), vec3<f32>(-208f, -676f, -816f))), Struct_3(vec2<bool>(false, true), 1000f, Struct_1(vec3<f32>(1000f, -1478f, -314f), vec2<i32>(8060i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, 0i, -60247i), 4294967295u, true), Struct_2(Struct_1(vec3<f32>(326f, 537f, -121f), vec2<i32>(-1i, 1i), vec4<i32>(-27844i, 1i, 0i, -27126i), 63077u, false), vec3<f32>(1026f, 1000f, -1251f))), Struct_3(vec2<bool>(true, false), 395f, Struct_1(vec3<f32>(1000f, -480f, 1389f), vec2<i32>(-64534i, -35016i), vec4<i32>(45166i, i32(-2147483648), -5500i, 35655i), 4799u, false), Struct_2(Struct_1(vec3<f32>(295f, -659f, -776f), vec2<i32>(i32(-2147483648), 16409i), vec4<i32>(0i, 2147483647i, 2147483647i, -46636i), 4294967295u, false), vec3<f32>(1000f, -592f, -277f))), Struct_3(vec2<bool>(true, true), -323f, Struct_1(vec3<f32>(-105f, -1799f, 939f), vec2<i32>(2147483647i, 32165i), vec4<i32>(1i, -1735i, 0i, -8152i), 31052u, true), Struct_2(Struct_1(vec3<f32>(-980f, -1000f, 652f), vec2<i32>(1i, 38972i), vec4<i32>(13239i, 2147483647i, -1i, -18816i), 20880u, false), vec3<f32>(-391f, 495f, -364f))), Struct_3(vec2<bool>(true, true), 1434f, Struct_1(vec3<f32>(-1406f, -323f, 3726f), vec2<i32>(-22125i, -94643i), vec4<i32>(52924i, -39765i, 1i, -64783i), 11937u, true), Struct_2(Struct_1(vec3<f32>(1484f, 767f, 112f), vec2<i32>(i32(-2147483648), 56600i), vec4<i32>(-11853i, -57086i, -32032i, -8172i), 48411u, true), vec3<f32>(818f, -651f, -1273f))), Struct_3(vec2<bool>(false, false), -671f, Struct_1(vec3<f32>(-1000f, 678f, -389f), vec2<i32>(0i, -47255i), vec4<i32>(-799i, 28228i, -23271i, 82909i), 56337u, true), Struct_2(Struct_1(vec3<f32>(787f, -1000f, 1275f), vec2<i32>(2147483647i, 1i), vec4<i32>(62319i, -28249i, -1688i, 3850i), 0u, false), vec3<f32>(113f, -894f, -1763f))), Struct_3(vec2<bool>(true, false), -420f, Struct_1(vec3<f32>(280f, 2310f, -803f), vec2<i32>(-4397i, 0i), vec4<i32>(-58991i, 2147483647i, -27480i, 48248i), 1u, true), Struct_2(Struct_1(vec3<f32>(1069f, -1248f, 365f), vec2<i32>(9184i, 0i), vec4<i32>(i32(-2147483648), -2480i, 34710i, -69858i), 1u, true), vec3<f32>(192f, -1119f, 1050f))), Struct_3(vec2<bool>(false, true), 313f, Struct_1(vec3<f32>(-158f, 859f, -313f), vec2<i32>(0i, -327i), vec4<i32>(2578i, -1i, 41720i, 2147483647i), 22530u, true), Struct_2(Struct_1(vec3<f32>(1217f, 1550f, 445f), vec2<i32>(i32(-2147483648), -1i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 32765i), 11746u, false), vec3<f32>(-507f, -373f, -1350f))), Struct_3(vec2<bool>(false, false), -949f, Struct_1(vec3<f32>(192f, -545f, 1444f), vec2<i32>(-1i, i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), -15571i, 50683i), 1u, true), Struct_2(Struct_1(vec3<f32>(-422f, -1082f, -663f), vec2<i32>(2147483647i, -13060i), vec4<i32>(1i, 2147483647i, -16170i, 43108i), 25730u, false), vec3<f32>(1167f, -1000f, -1490f))), Struct_3(vec2<bool>(false, false), -1000f, Struct_1(vec3<f32>(-998f, 265f, -1441f), vec2<i32>(35708i, 59941i), vec4<i32>(i32(-2147483648), -1i, 52971i, 2147483647i), 10478u, false), Struct_2(Struct_1(vec3<f32>(1000f, -1216f, -159f), vec2<i32>(2026i, 1i), vec4<i32>(77653i, 49509i, i32(-2147483648), 32128i), 1894u, true), vec3<f32>(-1000f, 628f, 652f))), Struct_3(vec2<bool>(false, false), 408f, Struct_1(vec3<f32>(1281f, -464f, -878f), vec2<i32>(-1i, 6899i), vec4<i32>(-1i, -59136i, -21944i, -14142i), 20538u, true), Struct_2(Struct_1(vec3<f32>(1204f, 308f, 269f), vec2<i32>(2147483647i, 20643i), vec4<i32>(-1i, 2147483647i, -1i, -6505i), 0u, false), vec3<f32>(814f, -378f, -1021f))), Struct_3(vec2<bool>(true, true), -770f, Struct_1(vec3<f32>(113f, 898f, -883f), vec2<i32>(-1i, -1i), vec4<i32>(1i, 25111i, 2731i, 22787i), 10167u, false), Struct_2(Struct_1(vec3<f32>(517f, 1000f, -1030f), vec2<i32>(1i, -1i), vec4<i32>(-13403i, -13262i, -99838i, 30420i), 0u, false), vec3<f32>(-409f, 1168f, -1000f))), Struct_3(vec2<bool>(true, true), 1866f, Struct_1(vec3<f32>(-1288f, -480f, 540f), vec2<i32>(0i, 0i), vec4<i32>(6618i, -1i, 1i, -15241i), 0u, false), Struct_2(Struct_1(vec3<f32>(-880f, 1268f, 1877f), vec2<i32>(-19849i, 24570i), vec4<i32>(1i, -1i, -48636i, 2147483647i), 4294967295u, true), vec3<f32>(-630f, -488f, 597f))), Struct_3(vec2<bool>(true, false), 960f, Struct_1(vec3<f32>(-277f, 1986f, 893f), vec2<i32>(66133i, 4198i), vec4<i32>(i32(-2147483648), -51138i, i32(-2147483648), 26809i), 18430u, false), Struct_2(Struct_1(vec3<f32>(238f, 922f, 492f), vec2<i32>(-88914i, -9590i), vec4<i32>(i32(-2147483648), 1557i, 1i, -78793i), 4294967295u, false), vec3<f32>(-2320f, -1000f, 856f))), Struct_3(vec2<bool>(true, false), -1694f, Struct_1(vec3<f32>(411f, 306f, -1176f), vec2<i32>(36876i, -1i), vec4<i32>(-1i, -3208i, -1i, 73789i), 1u, false), Struct_2(Struct_1(vec3<f32>(-1069f, -765f, -283f), vec2<i32>(16545i, 72480i), vec4<i32>(24773i, 1i, -1i, i32(-2147483648)), 4294967295u, true), vec3<f32>(2014f, -487f, -775f))), Struct_3(vec2<bool>(false, true), -451f, Struct_1(vec3<f32>(676f, -677f, 446f), vec2<i32>(33279i, -70420i), vec4<i32>(0i, 14055i, 1i, 1i), 56523u, false), Struct_2(Struct_1(vec3<f32>(-429f, 336f, 140f), vec2<i32>(2147483647i, 2147483647i), vec4<i32>(2147483647i, -19635i, -22076i, 2147483647i), 4294967295u, true), vec3<f32>(-1197f, -232f, -2044f))), Struct_3(vec2<bool>(false, true), -1183f, Struct_1(vec3<f32>(1000f, -464f, 1336f), vec2<i32>(-80536i, 1i), vec4<i32>(-41392i, -1i, i32(-2147483648), -104551i), 68454u, true), Struct_2(Struct_1(vec3<f32>(-1000f, 808f, -814f), vec2<i32>(16731i, 2147483647i), vec4<i32>(2147483647i, 1i, 44872i, 9142i), 39302u, true), vec3<f32>(-2040f, -294f, -343f))), Struct_3(vec2<bool>(true, true), -114f, Struct_1(vec3<f32>(1561f, -326f, -1000f), vec2<i32>(0i, 29453i), vec4<i32>(2147483647i, 1i, 64740i, 47026i), 1u, true), Struct_2(Struct_1(vec3<f32>(-807f, 1000f, 679f), vec2<i32>(-18064i, 0i), vec4<i32>(2147483647i, -11893i, 2147483647i, -1i), 2376u, false), vec3<f32>(-1000f, 1028f, 706f))), Struct_3(vec2<bool>(false, false), 2120f, Struct_1(vec3<f32>(305f, 2316f, 502f), vec2<i32>(2147483647i, -1i), vec4<i32>(0i, 1i, 11537i, -37800i), 4294967295u, false), Struct_2(Struct_1(vec3<f32>(1643f, 370f, 669f), vec2<i32>(31741i, 1i), vec4<i32>(-33632i, 0i, -1i, 2147483647i), 100924u, true), vec3<f32>(-218f, -383f, 878f))), Struct_3(vec2<bool>(false, true), 1430f, Struct_1(vec3<f32>(-549f, -1843f, -781f), vec2<i32>(-5374i, i32(-2147483648)), vec4<i32>(16510i, -28778i, -13218i, -19128i), 10256u, false), Struct_2(Struct_1(vec3<f32>(-1000f, 2043f, 127f), vec2<i32>(8043i, 0i), vec4<i32>(i32(-2147483648), -11445i, -17486i, 2147483647i), 4253u, true), vec3<f32>(-795f, 1993f, 1429f))), Struct_3(vec2<bool>(false, true), 679f, Struct_1(vec3<f32>(110f, -1000f, -771f), vec2<i32>(34231i, -3437i), vec4<i32>(0i, -1i, 31975i, 0i), 1u, false), Struct_2(Struct_1(vec3<f32>(-384f, -558f, 558f), vec2<i32>(i32(-2147483648), 1i), vec4<i32>(i32(-2147483648), 33502i, -1i, -34863i), 4294967295u, false), vec3<f32>(1050f, -1064f, -211f))), Struct_3(vec2<bool>(false, false), 270f, Struct_1(vec3<f32>(-475f, 487f, 882f), vec2<i32>(0i, 33492i), vec4<i32>(2147483647i, i32(-2147483648), 45319i, 2147483647i), 66353u, true), Struct_2(Struct_1(vec3<f32>(492f, 301f, -378f), vec2<i32>(-18953i, -1i), vec4<i32>(0i, -18726i, 1i, 1i), 53935u, true), vec3<f32>(-209f, -906f, -1865f))), Struct_3(vec2<bool>(true, true), -181f, Struct_1(vec3<f32>(276f, 1245f, -729f), vec2<i32>(-18236i, -12644i), vec4<i32>(1i, 1i, -23625i, -1i), 1u, true), Struct_2(Struct_1(vec3<f32>(-1530f, 903f, 831f), vec2<i32>(64330i, -5782i), vec4<i32>(19529i, -13800i, -22739i, -1i), 54466u, true), vec3<f32>(1263f, 1062f, -1249f))));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<f32>(-1111f, 464f, -754f), vec2<i32>(0i, -14443i), vec4<i32>(-1i, 31443i, -50679i, i32(-2147483648)), 1u, true), vec3<f32>(1621f, 389f, -1651f));

var<private> global2: array<u32, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    global2 = array<u32, 26>();
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -2585f, global1.a.a.x) * vec3<f32>(-1000f, arg_0.a.x, -1589f)))), countOneBits(arg_0.b), ~arg_1.b.d.a.c, global2[_wgslsmith_index_u32(arg_1.e | _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 26u)] >> (_wgslsmith_div_u32(_wgslsmith_add_u32(66557u, global1.a.d), arg_1.d.a.d) % 32u), all(select(!vec4<bool>(arg_0.e, global1.a.e, global1.a.e, false), vec4<bool>(global1.a.e, arg_0.e, arg_2.c.e, arg_2.a.x), !vec4<bool>(arg_1.d.a.e, false, true, arg_0.e)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2477f, arg_2.b)), -1494f) + 2015f), arg_1.d.a.a.x, 1127f));
    global0 = array<Struct_3, 23>();
    let var_0 = Struct_4(false, global0[_wgslsmith_index_u32(18420u, 23u)], ~(~(~(~vec3<i32>(-2147483647i, arg_0.b.x, -17778i)))), Struct_2(Struct_1(global1.b, _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 59564i), vec2<i32>(arg_2.c.c.x, 17188i)), vec2<i32>(arg_2.c.c.x, arg_2.c.c.x)), ~arg_0.c, abs(~global1.a.d), arg_2.a.x), arg_0.a), arg_2.c.d & (~abs(1u) | global2[_wgslsmith_index_u32(firstLeadingBit(25441u), 26u)]));
    let var_1 = vec3<u32>(~_wgslsmith_clamp_u32(var_0.d.a.d, arg_1.d.a.d, 5285u), firstLeadingBit(1u), select(max(22346u, 0u), select(1u, ~0u, false), true)) | countOneBits(~vec3<u32>(~1u, arg_0.d & 34807u, abs(global2[_wgslsmith_index_u32(56985u, 26u)])));
    return ~(~arg_2.c.d);
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_4(true, Struct_3(!select(select(vec2<bool>(true, false), vec2<bool>(global1.a.e, true), false), select(vec2<bool>(global1.a.e, false), vec2<bool>(global1.a.e, global1.a.e), true), true), global1.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-780f, global1.a.a.x, global1.b.x), _wgslsmith_f_op_vec3_f32(exp2(global1.b)), true)), global1.a.c.xy, _wgslsmith_mod_vec4_i32(global1.a.c, firstLeadingBit(global1.a.c)), func_3(Struct_1(global1.a.a, global1.a.c.zx, global1.a.c, u_input.a.x, true), Struct_4(global1.a.e, Struct_3(vec2<bool>(false, global1.a.e), 2603f, global1.a, Struct_2(global1.a, global1.a.a)), arg_0.wwx, Struct_2(Struct_1(vec3<f32>(global1.a.a.x, -509f, 158f), global1.a.c.xz, global1.a.c, 149803u, global1.a.e), global1.a.a), global1.a.d), Struct_3(vec2<bool>(global1.a.e, global1.a.e), 489f, Struct_1(vec3<f32>(895f, global1.b.x, global1.b.x), arg_0.zz, global1.a.c, u_input.a.x, true), Struct_2(Struct_1(vec3<f32>(-843f, -748f, -1501f), vec2<i32>(-22806i, 53405i), vec4<i32>(43194i, arg_0.x, 2147483647i, -34276i), 19864u, false), vec3<f32>(-397f, -1178f, 436f)))), 1i < _wgslsmith_mod_i32(-14202i, arg_0.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(372f, -1244f, -887f))), abs(arg_0.wy), vec4<i32>(2147483647i, -92748i, arg_0.x, -1i), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)], 1u), global1.a.e), global1.a.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, firstTrailingBit(10511i), global1.a.c.x), global1.a.c.wxx) ^ max(_wgslsmith_add_vec3_i32(vec3<i32>(global1.a.b.x, 57873i, arg_0.x), global1.a.c.yyz) << (select(vec3<u32>(399u, 1u, 41284u), vec3<u32>(u_input.a.x, global1.a.d, 4294967295u), false) % vec3<u32>(32u)), vec3<i32>(1i, arg_0.x, -global1.a.b.x)), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(global1.b.x, global1.a.a.x)), _wgslsmith_f_op_f32(global1.b.x + -872f), global1.a.a.x), global1.a.b ^ arg_0.yw, countOneBits(firstLeadingBit(global1.a.c)), ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, global2[_wgslsmith_index_u32(1u, 26u)])), false), _wgslsmith_f_op_vec3_f32(-global1.a.a)), ~60014u);
    var var_1 = vec4<u32>(67099u, ~_wgslsmith_add_u32(_wgslsmith_div_u32(select(global2[_wgslsmith_index_u32(8634u, 26u)], 0u, var_0.b.a.x), global2[_wgslsmith_index_u32(~global1.a.d, 26u)]), u_input.a.x), ~_wgslsmith_sub_u32(var_0.e, _wgslsmith_div_u32(~15626u, 14559u ^ u_input.a.x)), ~(~_wgslsmith_clamp_u32(1u, ~global2[_wgslsmith_index_u32(61253u, 26u)], u_input.a.x)));
    var var_2 = vec2<u32>(var_0.d.a.d, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_1.xxw ^ var_1.xwy, abs(vec3<u32>(global2[_wgslsmith_index_u32(global1.a.d, 26u)], 68466u, var_0.e))), _wgslsmith_add_u32(3992u, _wgslsmith_add_u32(global1.a.d, 5697u))) & _wgslsmith_mult_u32(0u ^ var_1.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 0u)));
    let var_3 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), 1397f, global1.b.x), global1.a.b, max(arg_0, global1.a.c), ~var_1.x, any(select(!vec2<bool>(global1.a.e, true), var_0.b.a, var_0.d.a.e))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_0.b.c.a, var_0.b.d.b), var_0.d.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.d.a.a) - global1.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.a.a.x, -155f)))))));
    let var_4 = true;
    return Struct_2(global1.a, vec3<f32>(_wgslsmith_f_op_f32(trunc(-1172f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-244f)) * -501f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.b.x + 703f)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: Struct_3) -> vec2<bool> {
    global2 = array<u32, 26>();
    global2 = array<u32, 26>();
    global2 = array<u32, 26>();
    global2 = array<u32, 26>();
    let var_0 = ~0i;
    return vec2<bool>(false, true);
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: i32, arg_3: bool) -> Struct_2 {
    var var_0 = ~(~(-_wgslsmith_mod_i32(arg_2, arg_2))) ^ arg_2;
    var_0 = min(~2147483647i, firstTrailingBit(_wgslsmith_dot_vec4_i32(select(global1.a.c, vec4<i32>(-1i, arg_1, arg_2, -20756i), false), global1.a.c))) ^ 50932i;
    var_0 = -1i;
    let var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(reverseBits(u_input.a.x), 11703u << (global1.a.d % 32u), max(4848u, 34483u), ~36917u) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, global1.a.d, global2[_wgslsmith_index_u32(60564u, 26u)], global1.a.d), vec4<u32>(474u, global2[_wgslsmith_index_u32(0u, 26u)], 4294967295u, 21001u)), vec4<u32>(min(global1.a.d >> (u_input.a.x % 32u), 35833u), u_input.a.x, 0u, u_input.a.x) ^ vec4<u32>(_wgslsmith_mod_u32(35619u, ~1u), _wgslsmith_sub_u32(~0u, 57086u), 5020u, u_input.a.x));
    var_0 = ~(-arg_2);
    return func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(~(~0i), _wgslsmith_add_i32(global1.a.b.x, -44426i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-40462i, 9119i), vec2<i32>(arg_1, global1.a.c.x)), arg_2), global1.a.c));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> vec3<bool> {
    global2 = array<u32, 26>();
    global2 = array<u32, 26>();
    global0 = array<Struct_3, 23>();
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_add_i32(global1.a.b.x, arg_1.a.b.x), countOneBits(global1.a.c.x ^ arg_1.a.b.x));
    global1 = func_5(func_4(abs(vec2<u32>(global1.a.d, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 48239u, 1u, global1.a.d), vec4<u32>(arg_1.a.d, 40996u, u_input.a.x, 17255u)))), Struct_5(Struct_3(!vec2<bool>(global1.a.e, false), _wgslsmith_f_op_f32(-arg_1.a.a.x), Struct_1(vec3<f32>(-521f, 1682f, -516f), global1.a.c.yw, vec4<i32>(var_0.x, var_0.x, -16840i, 64478i), 4294967295u, false), func_2(arg_1.a.c)), vec2<bool>(true, global1.a.e), Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a.x, arg_1.b.x, global1.b.x) - arg_1.a.a))), Struct_3(select(vec2<bool>(false, global1.a.e), vec2<bool>(global1.a.e, arg_1.a.e), vec2<bool>(arg_0, global1.a.e)), _wgslsmith_f_op_f32(946f * -239f), global1.a, Struct_2(func_2(vec4<i32>(arg_1.a.c.x, -1i, 2147483647i, var_0.x)).a, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, 2353f, global1.a.a.x) * global1.a.a)))), reverseBits(abs(1i)), _wgslsmith_sub_i32(59723i, 0i), true);
    return select(!vec3<bool>(any(vec4<bool>(global1.a.e, false, true, true)), _wgslsmith_f_op_f32(-global1.b.x) >= _wgslsmith_f_op_f32(sign(global1.b.x)), true), vec3<bool>(any(select(!vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, true, arg_1.a.e, false), vec4<bool>(true, false, arg_1.a.e, false))), !all(vec2<bool>(false, arg_0)), true & any(vec2<bool>(false, arg_1.a.e))), select(select(!vec3<bool>(true, global1.a.e, true), vec3<bool>(global1.a.e, global1.a.e, true && arg_0), !(!vec3<bool>(arg_1.a.e, true, false))), vec3<bool>(arg_0, func_5(!vec2<bool>(arg_1.a.e, arg_0), -arg_1.a.c.x, var_0.x, false).a.e, arg_1.a.e), select(!select(vec3<bool>(arg_0, arg_1.a.e, arg_0), vec3<bool>(global1.a.e, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, arg_1.a.e), select(vec3<bool>(arg_1.a.e, true, global1.a.e), vec3<bool>(arg_0, arg_1.a.e, global1.a.e), false), true), !vec3<bool>(arg_0, arg_0, true))));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: u32, arg_3: bool) -> Struct_4 {
    let var_0 = -941f;
    var var_1 = Struct_3(select(arg_1.yy, arg_1.zx, arg_1.xz), -336f, func_2(abs(~global1.a.c)).a, Struct_2(Struct_1(global1.b, global1.a.b, global1.a.c, firstLeadingBit(74786u >> (global2[_wgslsmith_index_u32(arg_2, 26u)] % 32u)), arg_1.x), global1.a.a));
    var var_2 = Struct_4(true, global0[_wgslsmith_index_u32(4294967295u ^ arg_2, 23u)], ~(arg_0 >> (abs(abs(vec3<u32>(0u, 0u, global1.a.d))) % vec3<u32>(32u))), func_2((vec4<i32>(8388i, -2147483647i, -42072i, 0i) >> ((vec4<u32>(45224u, global2[_wgslsmith_index_u32(74918u, 26u)], 994u, 91783u) ^ vec4<u32>(102166u, 109673u, global2[_wgslsmith_index_u32(var_1.c.d, 26u)], 61829u)) % vec4<u32>(32u))) | func_2(vec4<i32>(12109i, 1i, 0i, 15346i)).a.c), global2[_wgslsmith_index_u32(u_input.a.x, 26u)]);
    global1 = Struct_2(func_5(!select(!arg_1.yz, !arg_1.zx, !arg_3), _wgslsmith_clamp_i32(-1i, arg_0.x, _wgslsmith_mult_i32(2147483647i ^ var_2.c.x, arg_0.x)), var_1.c.c.x, false).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(var_1.d.b.x, -687f)), _wgslsmith_f_op_f32(-1320f + 145f), var_1.b), vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_1.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -669f)), select(global1.a.e, all(vec3<bool>(arg_3, true, true)), var_1.d.a.e)))));
    global1 = func_2(-max(var_1.d.a.c, global1.a.c));
    return Struct_4(true, var_2.b, vec3<i32>(var_2.d.a.b.x, var_2.c.x << (u_input.a.x % 32u), _wgslsmith_clamp_i32(~(arg_0.x & 2147483647i), abs(global1.a.c.x), -21482i)), var_2.d, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~select(global1.a.c.wxy, vec3<i32>(-14034i, -12273i >> (global1.a.d % 32u), global1.a.b.x), func_1(false, Struct_2(Struct_1(vec3<f32>(2116f, global1.a.a.x, global1.a.a.x), global1.a.c.zz, vec4<i32>(-26309i, 8962i, global1.a.b.x, global1.a.b.x), 4294967295u, global1.a.e), global1.b))), select(vec3<bool>(all(!vec3<bool>(global1.a.e, global1.a.e, false)), false, select(true, !global1.a.e, select(global1.a.e, true, false))), select(vec3<bool>(select(true, global1.a.e, global1.a.e), global1.a.e | true, global1.a.e & false), vec3<bool>(global1.a.e, false, any(vec2<bool>(global1.a.e, global1.a.e))), vec3<bool>(true, global1.b.x == -747f, !global1.a.e)), func_1(_wgslsmith_f_op_f32(-global1.b.x) == -955f, func_5(!vec2<bool>(global1.a.e, false), 1i, i32(-1i) * -2147483647i, true))), global1.a.d, false);
    var var_1 = global1.b.x;
    let var_2 = var_0.b.a;
    let var_3 = var_0;
    global0 = array<Struct_3, 23>();
    var var_4 = !vec2<bool>(var_2.x, !((var_3.e & 4294967295u) < ~u_input.a.x));
    var var_5 = true & (_wgslsmith_f_op_f32(trunc(221f)) < var_0.b.b);
    let var_6 = Struct_2(Struct_1(var_0.b.d.a.a, vec2<i32>(global1.a.b.x, countOneBits(abs(global1.a.c.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.x, var_3.b.d.a.c.x, global1.a.b.x), vec3<i32>(-2147483647i, 2147483647i, -7188i)), var_0.c.x, _wgslsmith_dot_vec4_i32(var_0.d.a.c, vec4<i32>(2147483647i, 4198i, global1.a.c.x, global1.a.b.x))), func_2(-vec4<i32>(-1i, -1i, 1i, global1.a.b.x)).a.c), global1.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1531f)) * -114f) > global1.a.a.x), var_0.b.d.b);
    global0 = array<Struct_3, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(var_3.c.x, var_0.b.d.a.b.x, _wgslsmith_add_i32(var_3.c.x ^ -29017i, 32242i)), 0i, -2147483647i, countOneBits(global1.a.d), ~func_2(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-33481i, 0i, -13815i, 1i)), var_3.b.c.c)).a.c.yww);
}

