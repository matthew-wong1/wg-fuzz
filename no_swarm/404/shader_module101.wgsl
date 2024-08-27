struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec3<f32>(496f, 414f, -773f), Struct_2(Struct_1(1334f, vec3<i32>(-38129i, 0i, 1i)), Struct_1(1545f, vec3<i32>(-747i, -57833i, 2147483647i)), Struct_1(1099f, vec3<i32>(2147483647i, 1i, -1i)), Struct_1(236f, vec3<i32>(i32(-2147483648), -1i, -5543i)), Struct_1(342f, vec3<i32>(0i, 0i, -4816i))), -323f, vec4<f32>(-963f, 113f, 984f, 1092f), -1257f), Struct_3(vec3<f32>(720f, -257f, 509f), Struct_2(Struct_1(668f, vec3<i32>(-1i, 0i, 1i)), Struct_1(-178f, vec3<i32>(-31122i, i32(-2147483648), i32(-2147483648))), Struct_1(-1790f, vec3<i32>(-31041i, i32(-2147483648), -8292i)), Struct_1(927f, vec3<i32>(14110i, 1i, 51256i)), Struct_1(-549f, vec3<i32>(-36527i, 0i, 1i))), 519f, vec4<f32>(337f, 1425f, -271f, 627f), 118f), Struct_3(vec3<f32>(821f, 781f, -596f), Struct_2(Struct_1(-279f, vec3<i32>(1i, 40885i, -10798i)), Struct_1(-1567f, vec3<i32>(-4850i, 36840i, -1i)), Struct_1(-847f, vec3<i32>(-17276i, 13517i, 0i)), Struct_1(1000f, vec3<i32>(0i, 17391i, -13272i)), Struct_1(-173f, vec3<i32>(18192i, -37924i, 7356i))), -1315f, vec4<f32>(-649f, -314f, -999f, -1000f), 314f), Struct_3(vec3<f32>(-304f, -1348f, -634f), Struct_2(Struct_1(-1825f, vec3<i32>(1i, 1i, -36717i)), Struct_1(663f, vec3<i32>(-268i, 1i, 53092i)), Struct_1(1038f, vec3<i32>(37584i, 49998i, -26633i)), Struct_1(-517f, vec3<i32>(1i, 0i, -8640i)), Struct_1(1035f, vec3<i32>(8652i, 23035i, 2147483647i))), -530f, vec4<f32>(-655f, 1000f, 479f, 640f), -959f), Struct_3(vec3<f32>(-675f, 965f, 415f), Struct_2(Struct_1(-319f, vec3<i32>(45652i, -1i, 6319i)), Struct_1(2057f, vec3<i32>(2147483647i, -15143i, -26761i)), Struct_1(825f, vec3<i32>(-1i, 30508i, 0i)), Struct_1(-905f, vec3<i32>(-1i, -7549i, -28028i)), Struct_1(313f, vec3<i32>(0i, -1i, 27928i))), -914f, vec4<f32>(1192f, -670f, -812f, 871f), 656f), Struct_3(vec3<f32>(-430f, 1328f, 585f), Struct_2(Struct_1(1058f, vec3<i32>(44291i, -1i, 2147483647i)), Struct_1(-1368f, vec3<i32>(-38011i, 1i, 28216i)), Struct_1(1330f, vec3<i32>(-23029i, 7634i, 58533i)), Struct_1(-425f, vec3<i32>(2147483647i, -1i, 1i)), Struct_1(2132f, vec3<i32>(69071i, -1i, i32(-2147483648)))), -663f, vec4<f32>(952f, -1579f, 558f, -1284f), -431f), Struct_3(vec3<f32>(-1000f, -213f, 891f), Struct_2(Struct_1(131f, vec3<i32>(1606i, -14167i, 1i)), Struct_1(891f, vec3<i32>(-1i, 0i, 0i)), Struct_1(1055f, vec3<i32>(6525i, -13131i, -1i)), Struct_1(175f, vec3<i32>(-37826i, -21813i, -1i)), Struct_1(1046f, vec3<i32>(-11969i, 1i, 1i))), 706f, vec4<f32>(-634f, 1814f, 827f, 470f), 204f), Struct_3(vec3<f32>(-257f, 1000f, -857f), Struct_2(Struct_1(-1000f, vec3<i32>(-1i, i32(-2147483648), 18507i)), Struct_1(-177f, vec3<i32>(-6214i, i32(-2147483648), -10296i)), Struct_1(-963f, vec3<i32>(21024i, -38556i, 0i)), Struct_1(1595f, vec3<i32>(7075i, -5018i, -44041i)), Struct_1(-582f, vec3<i32>(2147483647i, -40031i, 25607i))), 997f, vec4<f32>(-2016f, -1105f, -469f, -135f), -330f), Struct_3(vec3<f32>(-903f, -664f, -769f), Struct_2(Struct_1(-238f, vec3<i32>(-52506i, 37202i, 2147483647i)), Struct_1(1519f, vec3<i32>(-44096i, -41247i, -1i)), Struct_1(-677f, vec3<i32>(1i, i32(-2147483648), -61606i)), Struct_1(1790f, vec3<i32>(0i, -1i, -9466i)), Struct_1(973f, vec3<i32>(i32(-2147483648), -1i, -27292i))), 1761f, vec4<f32>(276f, 1000f, 1000f, 833f), -335f), Struct_3(vec3<f32>(-874f, 239f, 811f), Struct_2(Struct_1(164f, vec3<i32>(4690i, -6293i, i32(-2147483648))), Struct_1(-1504f, vec3<i32>(-1317i, 1i, 2147483647i)), Struct_1(193f, vec3<i32>(-1i, 45342i, -1i)), Struct_1(837f, vec3<i32>(32418i, 0i, -22396i)), Struct_1(-1495f, vec3<i32>(1i, -31088i, 1i))), 1039f, vec4<f32>(279f, 1217f, -528f, -1347f), -1202f), Struct_3(vec3<f32>(-1331f, 1092f, 696f), Struct_2(Struct_1(-791f, vec3<i32>(0i, 29443i, i32(-2147483648))), Struct_1(-2417f, vec3<i32>(1i, 2147483647i, -5050i)), Struct_1(-1227f, vec3<i32>(33142i, -20517i, 1i)), Struct_1(1599f, vec3<i32>(-1i, 0i, -35332i)), Struct_1(-1340f, vec3<i32>(71363i, 2147483647i, -4668i))), 1646f, vec4<f32>(-1121f, -1212f, 2579f, 1437f), 658f), Struct_3(vec3<f32>(727f, 1156f, -1038f), Struct_2(Struct_1(218f, vec3<i32>(1i, -1i, 1i)), Struct_1(-484f, vec3<i32>(-37067i, 20408i, -58243i)), Struct_1(-383f, vec3<i32>(i32(-2147483648), 0i, -1i)), Struct_1(409f, vec3<i32>(-1i, 23500i, 48281i)), Struct_1(434f, vec3<i32>(20655i, -4081i, -12043i))), 1060f, vec4<f32>(-919f, 2267f, -2024f, 429f), 1064f), Struct_3(vec3<f32>(-828f, -1000f, 273f), Struct_2(Struct_1(180f, vec3<i32>(i32(-2147483648), -1i, -46680i)), Struct_1(1000f, vec3<i32>(2147483647i, -39987i, -10107i)), Struct_1(-1206f, vec3<i32>(-1i, 2147483647i, 1i)), Struct_1(-168f, vec3<i32>(i32(-2147483648), i32(-2147483648), -1i)), Struct_1(-465f, vec3<i32>(i32(-2147483648), 16995i, -57765i))), 550f, vec4<f32>(571f, 1707f, -1000f, -1000f), 515f), Struct_3(vec3<f32>(-994f, -609f, 537f), Struct_2(Struct_1(126f, vec3<i32>(-27773i, i32(-2147483648), -11629i)), Struct_1(-1408f, vec3<i32>(80375i, 2147483647i, 50155i)), Struct_1(-1124f, vec3<i32>(27899i, 2170i, i32(-2147483648))), Struct_1(-1659f, vec3<i32>(i32(-2147483648), i32(-2147483648), 0i)), Struct_1(-302f, vec3<i32>(-24524i, 28505i, 0i))), -983f, vec4<f32>(-610f, 304f, 1017f, -2080f), 611f), Struct_3(vec3<f32>(-2126f, -1155f, -892f), Struct_2(Struct_1(-1064f, vec3<i32>(-1i, -13975i, -26067i)), Struct_1(-1209f, vec3<i32>(2147483647i, i32(-2147483648), -8914i)), Struct_1(-1691f, vec3<i32>(40531i, 21756i, -29967i)), Struct_1(739f, vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_1(-803f, vec3<i32>(i32(-2147483648), 0i, 14387i))), -298f, vec4<f32>(-586f, -892f, -654f, -1714f), -912f), Struct_3(vec3<f32>(502f, 919f, 1000f), Struct_2(Struct_1(-1000f, vec3<i32>(1i, i32(-2147483648), -1i)), Struct_1(-560f, vec3<i32>(-13333i, -16809i, i32(-2147483648))), Struct_1(-603f, vec3<i32>(-26219i, 75904i, 70937i)), Struct_1(257f, vec3<i32>(5566i, -17745i, 2147483647i)), Struct_1(-1000f, vec3<i32>(2147483647i, 2147483647i, 27212i))), 257f, vec4<f32>(-459f, 832f, 470f, -363f), 1165f), Struct_3(vec3<f32>(1225f, 939f, -777f), Struct_2(Struct_1(264f, vec3<i32>(-32259i, 2147483647i, -22032i)), Struct_1(-555f, vec3<i32>(i32(-2147483648), -42152i, 1i)), Struct_1(1218f, vec3<i32>(2147483647i, 0i, 1i)), Struct_1(-358f, vec3<i32>(1i, 0i, -1i)), Struct_1(-758f, vec3<i32>(1i, i32(-2147483648), i32(-2147483648)))), -1745f, vec4<f32>(-688f, -1713f, -1677f, 471f), 1604f), Struct_3(vec3<f32>(1923f, 307f, -103f), Struct_2(Struct_1(734f, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_1(-1211f, vec3<i32>(0i, i32(-2147483648), 1i)), Struct_1(1827f, vec3<i32>(-13215i, -93227i, 2147483647i)), Struct_1(-156f, vec3<i32>(85370i, 20560i, -4144i)), Struct_1(-718f, vec3<i32>(45773i, 2147483647i, -16990i))), 621f, vec4<f32>(-353f, -1000f, 1097f, 1909f), 1017f), Struct_3(vec3<f32>(492f, 1000f, 786f), Struct_2(Struct_1(-2304f, vec3<i32>(0i, 27627i, i32(-2147483648))), Struct_1(428f, vec3<i32>(29195i, i32(-2147483648), 1i)), Struct_1(656f, vec3<i32>(-5196i, 96866i, 1i)), Struct_1(926f, vec3<i32>(0i, -39798i, -1i)), Struct_1(1409f, vec3<i32>(19404i, 0i, i32(-2147483648)))), -1000f, vec4<f32>(-985f, -921f, 423f, 1000f), 795f), Struct_3(vec3<f32>(-628f, -600f, 224f), Struct_2(Struct_1(-229f, vec3<i32>(4391i, 2147483647i, -76566i)), Struct_1(-1000f, vec3<i32>(-32700i, 44563i, i32(-2147483648))), Struct_1(488f, vec3<i32>(-1560i, -16559i, 52498i)), Struct_1(533f, vec3<i32>(25252i, -2259i, -70673i)), Struct_1(-315f, vec3<i32>(35868i, 2147483647i, 0i))), -844f, vec4<f32>(1000f, -167f, -320f, -565f), -733f), Struct_3(vec3<f32>(464f, -602f, 3123f), Struct_2(Struct_1(404f, vec3<i32>(2147483647i, 48091i, 0i)), Struct_1(-1062f, vec3<i32>(-1i, -1i, 2147483647i)), Struct_1(2098f, vec3<i32>(2147483647i, i32(-2147483648), 2147483647i)), Struct_1(-1732f, vec3<i32>(-20101i, 2147483647i, -4349i)), Struct_1(991f, vec3<i32>(i32(-2147483648), 35793i, 0i))), -104f, vec4<f32>(-315f, -2227f, 1209f, -721f), 863f), Struct_3(vec3<f32>(228f, -1023f, 922f), Struct_2(Struct_1(-1943f, vec3<i32>(-64410i, i32(-2147483648), i32(-2147483648))), Struct_1(455f, vec3<i32>(-45931i, 63878i, 0i)), Struct_1(1786f, vec3<i32>(2147483647i, 1i, -19682i)), Struct_1(1000f, vec3<i32>(0i, -13865i, 7223i)), Struct_1(-1202f, vec3<i32>(0i, 2147483647i, 2147483647i))), 774f, vec4<f32>(556f, 274f, -559f, 1000f), 3131f), Struct_3(vec3<f32>(-708f, -1892f, 1511f), Struct_2(Struct_1(-119f, vec3<i32>(10517i, -19706i, 7283i)), Struct_1(-1976f, vec3<i32>(47026i, -1i, -8984i)), Struct_1(-1000f, vec3<i32>(-15258i, 2147483647i, i32(-2147483648))), Struct_1(-2380f, vec3<i32>(1i, 17920i, i32(-2147483648))), Struct_1(-257f, vec3<i32>(-1i, 26124i, 34888i))), 332f, vec4<f32>(239f, -466f, -2508f, 125f), -213f));

var<private> global2: i32;

var<private> global3: array<i32, 29> = array<i32, 29>(1i, 2147483647i, 1i, -39304i, 13900i, -83790i, i32(-2147483648), -23567i, -16106i, 35034i, -1i, 2329i, 29148i, 2147483647i, -2431i, -17630i, 0i, 3637i, -1i, 7998i, i32(-2147483648), 0i, -39887i, 0i, 0i, 1i, -1846i, i32(-2147483648), -1i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<i32>, arg_3: bool) -> i32 {
    let var_0 = (-1i <= (u_input.b.x >> (select(abs(u_input.a.x), u_input.e.x << (u_input.d.x % 32u), arg_1 || arg_1) % 32u))) && arg_1;
    global3 = array<i32, 29>();
    let var_1 = 1000f;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(572f, 1062f)), vec3<i32>(_wgslsmith_dot_vec2_i32(~u_input.b, -u_input.b), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.e, u_input.e, vec3<u32>(u_input.d.x, u_input.a.x, u_input.d.x)), min(u_input.a, u_input.e)), 29u)], _wgslsmith_add_i32(-15221i, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 18175u, 4294967295u), 29u)]))), Struct_1(var_1, vec3<i32>(reverseBits(max(arg_2.x, u_input.c.x)), abs(0i), arg_2.x)), Struct_1(_wgslsmith_f_op_f32(-var_1), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_2.zz), vec2<i32>(u_input.c.x, u_input.b.x) & vec2<i32>(u_input.c.x, 1i)), arg_2.x)), Struct_1(_wgslsmith_f_op_f32(-var_1), select(firstTrailingBit(u_input.c.zwz) << (_wgslsmith_div_vec3_u32(u_input.e, u_input.e) % vec3<u32>(32u)), countOneBits(vec3<i32>(1i, 12001i, 10715i)), select(select(vec3<bool>(arg_1, true, arg_3), vec3<bool>(false, false, false), true), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, arg_3, arg_1), vec3<bool>(false, false, true)), !vec3<bool>(arg_1, false, var_0)))), Struct_1(-499f, ~_wgslsmith_add_vec3_i32(u_input.c.xwz, reverseBits(vec3<i32>(global3[_wgslsmith_index_u32(u_input.e.x, 29u)], u_input.c.x, u_input.b.x)))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-918f, 217f, _wgslsmith_f_op_f32(f32(-1f) * -672f)))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, arg_0)), min(u_input.c.xxx, firstTrailingBit(vec3<i32>(-1i, arg_2.x, 27092i)))), Struct_1(var_2.c.a, countOneBits(-vec3<i32>(6435i, global3[_wgslsmith_index_u32(u_input.d.x, 29u)], 27548i))), Struct_1(var_1, -arg_2), Struct_1(var_1, abs(vec3<i32>(1i, var_2.d.b.x, u_input.c.x))), var_2.a), 508f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(302f, -1151f, 1000f, var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-634f, 1973f, var_1, var_2.c.a) + vec4<f32>(877f, -565f, var_1, 628f))), select(vec4<bool>(var_0, true, var_0, false), select(vec4<bool>(false, true, false, arg_3), vec4<bool>(var_0, arg_1, var_0, var_0), vec4<bool>(false, false, arg_3, false)), true))), vec4<f32>(_wgslsmith_f_op_f32(max(var_2.e.a, var_2.c.a)), var_2.d.a, _wgslsmith_f_op_f32(ceil(arg_0)), -134f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -310f))));
    return ~(-21722i);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = any(!vec2<bool>(true, true != all(vec2<bool>(true, false))));
    var var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-1i, global3[_wgslsmith_index_u32(1u, 29u)] >> (u_input.a.x % 32u)), 2147483647i), u_input.c.wx), -firstLeadingBit(~vec2<i32>(global3[_wgslsmith_index_u32(1907u, 29u)], 37029i) | (u_input.b << (u_input.d % vec2<u32>(32u)))));
    let var_2 = -1000f;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-var_2), vec3<i32>(i32(-1i) * -countOneBits(u_input.c.x), func_3(1f, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, global3[_wgslsmith_index_u32(0u, 29u)]), vec2<i32>(arg_2.b.b.b.x, u_input.c.x)), i32(-1i) * -34370i, u_input.b.x), true), _wgslsmith_clamp_i32(-6671i, ~u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(39191i, var_1.x, global3[_wgslsmith_index_u32(u_input.a.x, 29u)]), u_input.c.xxz)) & 1i));
    global1 = array<Struct_3, 23>();
    return firstLeadingBit(vec2<u32>(u_input.e.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 1u, u_input.a.x, 40566u), vec4<u32>(43842u, u_input.a.x, 4294967295u, u_input.e.x))));
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    global3 = array<i32, 29>();
    var var_0 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, arg_0.b), vec2<f32>(1465f, arg_0.b)), global1[_wgslsmith_index_u32(u_input.e.x, 23u)]), abs(~arg_0.a.ww)), arg_0.a.xy);
    global0 = array<vec2<u32>, 21>();
    let var_1 = ~u_input.b.x << (1u % 32u);
    global1 = array<Struct_3, 23>();
    return Struct_1(-649f, ~vec3<i32>(-3951i | (1i << (var_0.x % 32u)), ~1i, 1i));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_5) -> Struct_4 {
    let var_0 = vec4<bool>(true, false & all(select(select(vec4<bool>(arg_1.x, false, arg_0.x, arg_1.x), vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_1.x, arg_0.x, arg_0.x, true)), !vec4<bool>(false, arg_1.x, false, false), arg_1.x)), arg_1.x, !all(arg_1));
    global1 = array<Struct_3, 23>();
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(-arg_3.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)) - arg_3.b)), _wgslsmith_f_op_f32(f32(-1f) * -1523f), arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1808f))))));
    let var_2 = arg_1;
    global0 = array<vec2<u32>, 21>();
    return Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_2.a, 122f), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1592f - arg_3.b) * _wgslsmith_f_op_f32(trunc(var_1.x)))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(963f, -314f, var_0.x)))), -553f, _wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(arg_2.a + -1453f)))), !(!select(select(vec2<bool>(false, arg_1.x), arg_0.zz, false), !arg_1.zx, !arg_1.x)));
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = ~func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + arg_0.a.x) + 579f))), var_0.b.x, u_input.c.wzy, !(!var_0.b.x));
    let var_2 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(u_input.d.x, 26716u), 10295u, _wgslsmith_add_u32(u_input.a.x, 1u), 34304u), vec4<u32>(u_input.d.x, min(_wgslsmith_add_u32(u_input.e.x, 98042u), 38463u), u_input.e.x, u_input.a.x));
    var_1 = _wgslsmith_sub_i32(reverseBits(global3[_wgslsmith_index_u32(4294967295u, 29u)] | u_input.c.x), -7065i);
    let var_3 = _wgslsmith_f_op_f32(floor(-1438f));
    return Struct_1(_wgslsmith_f_op_f32(select(arg_0.a.x, var_0.a.x, true)), firstTrailingBit(_wgslsmith_add_vec3_i32(countOneBits(u_input.c.wxx), _wgslsmith_sub_vec3_i32(func_1(Struct_5(vec4<u32>(var_2.x, 2766u, u_input.d.x, 41455u), var_0.a.x)).b, vec3<i32>(-21423i, -7602i, global3[_wgslsmith_index_u32(1u, 29u)])))));
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> Struct_5 {
    let var_0 = u_input.e.x;
    let var_1 = vec4<bool>(true, true, func_4(!vec3<bool>(all(vec3<bool>(arg_2, false, false)), false, arg_2), select(vec3<bool>(all(vec4<bool>(true, arg_0, arg_0, arg_0)), true, true), vec3<bool>(true, arg_0, !arg_0), select(select(vec3<bool>(true, arg_2, true), vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, true, false)), select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, arg_0, arg_0), vec3<bool>(arg_0, true, arg_2)), vec3<bool>(false, arg_0, true))), arg_1.e, Struct_5(countOneBits(~vec4<u32>(1u, 4283u, var_0, var_0)), -1003f)).b.x, arg_2);
    let var_2 = !(!vec2<bool>(arg_0, arg_0));
    global2 = u_input.c.x;
    var var_3 = min(arg_3, 0i & _wgslsmith_div_i32(_wgslsmith_mult_i32(~u_input.b.x, ~arg_3), -49884i));
    return Struct_5(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 23591u, 1u, min(var_0, u_input.a.x)), ~vec4<u32>(var_0, 35769u, var_0, 4294967295u)) | vec4<u32>(~max(var_0, 47611u), 1u, u_input.a.x, 1u), _wgslsmith_f_op_f32(select(-125f, _wgslsmith_div_f32(arg_1.e.a, _wgslsmith_f_op_f32(f32(-1f) * -449f)), arg_2 == !(var_0 <= u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(false, Struct_2(func_5(func_4(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(Struct_5(vec4<u32>(u_input.d.x, u_input.a.x, u_input.e.x, 8429u), -1014f)), Struct_5(vec4<u32>(u_input.d.x, u_input.d.x, 17805u, 4294967295u), -1167f))), func_5(func_4(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(Struct_5(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.d.x), 912f)), Struct_5(vec4<u32>(4294967295u, 70683u, u_input.a.x, u_input.e.x), 1140f))), Struct_1(1f, firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.c.x, -1i, 34976i)))), func_5(func_4(vec3<bool>(false, true, true), vec3<bool>(true, true, true), Struct_1(-272f, vec3<i32>(-19499i, 1i, -12812i)), Struct_5(vec4<u32>(17365u, 1u, 44355u, u_input.e.x), -288f))), func_5(Struct_4(vec3<f32>(268f, -185f, 592f), vec2<bool>(true, true)))), true, ~(~(-_wgslsmith_mod_i32(2147483647i, -4837i))));
    var var_1 = 668f;
    var var_2 = select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-450f)), _wgslsmith_f_op_f32(-852f + -392f)) >= var_0.b, any(vec3<bool>(true, true, all(vec2<bool>(false, true)))) & false, all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !any(vec2<bool>(true, false)))));
    global2 = 2147483647i;
    let var_3 = !vec2<bool>(func_4(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(false, false, true), true), vec3<bool>(-1000f > var_0.b, all(vec3<bool>(false, false, true)), true), Struct_1(_wgslsmith_f_op_f32(-1000f * 368f), vec3<i32>(-19750i, global3[_wgslsmith_index_u32(1u, 29u)], u_input.b.x) | u_input.c.ywy), func_6(all(vec4<bool>(true, true, false, true)), Struct_2(Struct_1(-305f, vec3<i32>(u_input.b.x, 64050i, 41371i)), Struct_1(var_0.b, vec3<i32>(2147483647i, -41433i, 13026i)), Struct_1(945f, vec3<i32>(global3[_wgslsmith_index_u32(var_0.a.x, 29u)], u_input.b.x, global3[_wgslsmith_index_u32(var_0.a.x, 29u)])), Struct_1(var_0.b, vec3<i32>(-30154i, 2147483647i, global3[_wgslsmith_index_u32(43157u, 29u)])), Struct_1(-972f, u_input.c.xyy)), true, func_5(Struct_4(vec3<f32>(var_0.b, var_0.b, -360f), vec2<bool>(true, true))).b.x)).b.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_0.a.x, 131u));
}

