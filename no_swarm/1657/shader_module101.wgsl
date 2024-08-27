struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

var<private> global1: Struct_1 = Struct_1(13708u, vec3<f32>(-824f, 1065f, -320f), vec4<u32>(10671u, 0u, 600u, 4294967295u), -1051f, 4294967295u);

var<private> global2: i32;

var<private> global3: array<u32, 3>;

var<private> global4: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(vec4<bool>(true, false, false, true), Struct_2(Struct_1(0u, vec3<f32>(568f, -1721f, -1532f), vec4<u32>(48525u, 0u, 34015u, 9748u), 268f, 49924u), vec2<u32>(1u, 0u)), Struct_1(29615u, vec3<f32>(1342f, -888f, 683f), vec4<u32>(49279u, 4294967295u, 1u, 4294967295u), 1993f, 8404u), vec4<i32>(1i, 0i, i32(-2147483648), 0i)), Struct_5(vec4<bool>(true, true, false, true), Struct_2(Struct_1(1u, vec3<f32>(-409f, -1000f, 2388f), vec4<u32>(1u, 17164u, 32759u, 4776u), -325f, 0u), vec2<u32>(12634u, 4294967295u)), Struct_1(0u, vec3<f32>(875f, 500f, 1839f), vec4<u32>(15928u, 6004u, 0u, 48004u), -348f, 33182u), vec4<i32>(i32(-2147483648), 1i, 1i, 45066i)), Struct_5(vec4<bool>(false, false, false, false), Struct_2(Struct_1(6728u, vec3<f32>(229f, -1746f, -1000f), vec4<u32>(1u, 1u, 4294967295u, 1u), -366f, 4294967295u), vec2<u32>(25423u, 26017u)), Struct_1(10938u, vec3<f32>(1555f, 321f, -1524f), vec4<u32>(7346u, 38060u, 0u, 71293u), -1416f, 8170u), vec4<i32>(-23725i, -1i, -3941i, 1i)), Struct_5(vec4<bool>(false, false, true, true), Struct_2(Struct_1(87666u, vec3<f32>(-1780f, 1140f, -1000f), vec4<u32>(4294967295u, 40897u, 1u, 67561u), 188f, 0u), vec2<u32>(69932u, 1u)), Struct_1(4294967295u, vec3<f32>(-605f, 1226f, -529f), vec4<u32>(12890u, 0u, 4349u, 3999u), 825f, 1u), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 7000i)), Struct_5(vec4<bool>(true, false, false, true), Struct_2(Struct_1(23688u, vec3<f32>(1000f, -178f, 868f), vec4<u32>(4294967295u, 4435u, 4294967295u, 22457u), 339f, 14627u), vec2<u32>(19983u, 1u)), Struct_1(30198u, vec3<f32>(-693f, 351f, 746f), vec4<u32>(4294967295u, 0u, 0u, 37228u), -424f, 62114u), vec4<i32>(0i, 26032i, 59789i, i32(-2147483648))), Struct_5(vec4<bool>(true, true, true, false), Struct_2(Struct_1(44611u, vec3<f32>(-517f, -1528f, 152f), vec4<u32>(4294967295u, 4294967295u, 11469u, 59194u), -1055f, 7226u), vec2<u32>(1236u, 0u)), Struct_1(21316u, vec3<f32>(-1054f, -441f, -195f), vec4<u32>(82737u, 5217u, 29845u, 0u), -1775f, 1u), vec4<i32>(i32(-2147483648), 36920i, -65372i, 8608i)), Struct_5(vec4<bool>(true, true, false, true), Struct_2(Struct_1(1u, vec3<f32>(-167f, 1829f, -313f), vec4<u32>(93460u, 75861u, 25984u, 17327u), 230f, 22626u), vec2<u32>(39211u, 1u)), Struct_1(125u, vec3<f32>(1330f, 790f, 207f), vec4<u32>(31242u, 7283u, 18449u, 22754u), 1450f, 56887u), vec4<i32>(1i, 0i, 27714i, 8283i)), Struct_5(vec4<bool>(true, false, false, false), Struct_2(Struct_1(11851u, vec3<f32>(-879f, -318f, 710f), vec4<u32>(4294967295u, 1u, 0u, 47859u), 253f, 18320u), vec2<u32>(1u, 54168u)), Struct_1(4294967295u, vec3<f32>(-1000f, 853f, -201f), vec4<u32>(69182u, 1u, 0u, 36623u), -482f, 1u), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648))), Struct_5(vec4<bool>(true, true, false, false), Struct_2(Struct_1(4294967295u, vec3<f32>(-167f, -2013f, -1282f), vec4<u32>(1u, 88221u, 4294967295u, 11031u), -2633f, 1u), vec2<u32>(0u, 1u)), Struct_1(27390u, vec3<f32>(-142f, 519f, -969f), vec4<u32>(0u, 1u, 30413u, 16643u), 1000f, 1u), vec4<i32>(0i, 17429i, -36445i, -1910i)), Struct_5(vec4<bool>(true, false, true, false), Struct_2(Struct_1(55621u, vec3<f32>(-2263f, 1122f, 2369f), vec4<u32>(4294967295u, 1u, 1u, 0u), 848f, 6348u), vec2<u32>(1u, 4294967295u)), Struct_1(33265u, vec3<f32>(1293f, 1006f, -1418f), vec4<u32>(1u, 1u, 23327u, 4294967295u), 1218f, 1u), vec4<i32>(i32(-2147483648), -1i, 0i, 0i)), Struct_5(vec4<bool>(true, false, false, true), Struct_2(Struct_1(4294967295u, vec3<f32>(-875f, 937f, 923f), vec4<u32>(20665u, 27667u, 1u, 55902u), -256f, 4294967295u), vec2<u32>(24090u, 4294967295u)), Struct_1(4294967295u, vec3<f32>(451f, -509f, 1276f), vec4<u32>(1u, 48373u, 4294967295u, 65525u), 434f, 3753u), vec4<i32>(49674i, 39807i, -698i, -1i)), Struct_5(vec4<bool>(false, false, false, false), Struct_2(Struct_1(52980u, vec3<f32>(-444f, 942f, 189f), vec4<u32>(50820u, 1u, 1u, 4294967295u), 1124f, 31094u), vec2<u32>(85906u, 4294967295u)), Struct_1(0u, vec3<f32>(397f, 525f, 797f), vec4<u32>(4294967295u, 49643u, 1u, 1u), 1169f, 73798u), vec4<i32>(i32(-2147483648), 1i, 2147483647i, -1i)), Struct_5(vec4<bool>(true, false, true, true), Struct_2(Struct_1(0u, vec3<f32>(-248f, 384f, 1000f), vec4<u32>(1u, 156028u, 4294967295u, 1u), 375f, 69199u), vec2<u32>(48119u, 6869u)), Struct_1(16681u, vec3<f32>(101f, 1311f, -984f), vec4<u32>(21207u, 0u, 23561u, 0u), 1515f, 38044u), vec4<i32>(0i, 55808i, -17470i, i32(-2147483648))), Struct_5(vec4<bool>(true, true, true, true), Struct_2(Struct_1(4294967295u, vec3<f32>(235f, -145f, 307f), vec4<u32>(4294967295u, 36655u, 1u, 0u), 256f, 1u), vec2<u32>(5660u, 8234u)), Struct_1(4294967295u, vec3<f32>(617f, -228f, -939f), vec4<u32>(57612u, 0u, 33209u, 60266u), 123f, 72297u), vec4<i32>(-31684i, -1i, i32(-2147483648), 5690i)), Struct_5(vec4<bool>(false, false, true, false), Struct_2(Struct_1(25478u, vec3<f32>(-955f, -1806f, 2047f), vec4<u32>(1u, 76432u, 1u, 4294967295u), 1301f, 4294967295u), vec2<u32>(4294967295u, 8199u)), Struct_1(17706u, vec3<f32>(-470f, 477f, 315f), vec4<u32>(66943u, 7158u, 4294967295u, 4294967295u), -1221f, 0u), vec4<i32>(2147483647i, 58635i, -1i, 12779i)), Struct_5(vec4<bool>(true, false, false, true), Struct_2(Struct_1(4294967295u, vec3<f32>(-1349f, 1327f, -385f), vec4<u32>(22961u, 51546u, 18726u, 111190u), -1654f, 0u), vec2<u32>(19320u, 7625u)), Struct_1(34623u, vec3<f32>(-817f, 301f, -523f), vec4<u32>(78365u, 4294967295u, 0u, 4294967295u), 544f, 4294967295u), vec4<i32>(-2530i, -1i, 0i, 1i)), Struct_5(vec4<bool>(true, true, false, true), Struct_2(Struct_1(1u, vec3<f32>(960f, -1037f, -947f), vec4<u32>(4294967295u, 76893u, 36434u, 61376u), -924f, 35163u), vec2<u32>(4294967295u, 0u)), Struct_1(12987u, vec3<f32>(336f, 1268f, 300f), vec4<u32>(60364u, 1u, 65174u, 0u), 325f, 1u), vec4<i32>(-296i, 0i, -1i, -86291i)), Struct_5(vec4<bool>(false, false, false, false), Struct_2(Struct_1(34765u, vec3<f32>(-1134f, -1073f, 1618f), vec4<u32>(9877u, 93116u, 55652u, 1u), 1282f, 0u), vec2<u32>(4294967295u, 0u)), Struct_1(1u, vec3<f32>(1858f, 295f, -1486f), vec4<u32>(4294967295u, 63640u, 4294967295u, 19340u), 1068f, 1u), vec4<i32>(0i, 14260i, 2147483647i, -16181i)), Struct_5(vec4<bool>(false, true, false, false), Struct_2(Struct_1(0u, vec3<f32>(1556f, 1526f, 874f), vec4<u32>(0u, 4294967295u, 1u, 1u), -1941f, 17645u), vec2<u32>(0u, 4294967295u)), Struct_1(4294967295u, vec3<f32>(-1525f, 1410f, -125f), vec4<u32>(39975u, 26134u, 1u, 4294967295u), 473f, 4294967295u), vec4<i32>(149i, -1i, -1i, i32(-2147483648))), Struct_5(vec4<bool>(true, true, false, true), Struct_2(Struct_1(36935u, vec3<f32>(869f, 732f, 1864f), vec4<u32>(1u, 53283u, 1u, 27318u), 935f, 33488u), vec2<u32>(113053u, 93928u)), Struct_1(1u, vec3<f32>(-1092f, -1797f, -402f), vec4<u32>(1u, 53077u, 1u, 4294967295u), 1736f, 1u), vec4<i32>(0i, -356i, 1i, 1i)), Struct_5(vec4<bool>(true, true, true, false), Struct_2(Struct_1(34578u, vec3<f32>(293f, 1903f, -495f), vec4<u32>(47067u, 0u, 22463u, 43099u), 340f, 0u), vec2<u32>(22568u, 1u)), Struct_1(4294967295u, vec3<f32>(362f, -1461f, -993f), vec4<u32>(74489u, 0u, 0u, 4294967295u), 1000f, 0u), vec4<i32>(0i, 1i, -42186i, 2147483647i)), Struct_5(vec4<bool>(false, true, true, true), Struct_2(Struct_1(0u, vec3<f32>(180f, -965f, 1275f), vec4<u32>(48888u, 20900u, 1u, 0u), -237f, 1u), vec2<u32>(51417u, 1u)), Struct_1(16433u, vec3<f32>(-615f, 1000f, 1007f), vec4<u32>(46214u, 55237u, 4294967295u, 24871u), 695f, 5179u), vec4<i32>(-26057i, 0i, -1i, -93914i)), Struct_5(vec4<bool>(false, true, false, false), Struct_2(Struct_1(1u, vec3<f32>(-1542f, -700f, -428f), vec4<u32>(0u, 14781u, 1u, 73847u), -1016f, 0u), vec2<u32>(34761u, 5751u)), Struct_1(35750u, vec3<f32>(-839f, 103f, 1036f), vec4<u32>(56878u, 1u, 4294967295u, 1u), -875f, 60164u), vec4<i32>(0i, 1i, 0i, 1i)), Struct_5(vec4<bool>(true, false, true, true), Struct_2(Struct_1(1u, vec3<f32>(-1143f, 973f, -654f), vec4<u32>(39378u, 0u, 42539u, 14705u), -751f, 9475u), vec2<u32>(0u, 0u)), Struct_1(1u, vec3<f32>(-855f, -384f, -445f), vec4<u32>(1u, 0u, 74062u, 4294967295u), 1946f, 0u), vec4<i32>(-56504i, 21679i, -14227i, -1i)), Struct_5(vec4<bool>(false, false, true, false), Struct_2(Struct_1(4294967295u, vec3<f32>(-1000f, -721f, 706f), vec4<u32>(0u, 4294967295u, 41406u, 0u), -2208f, 4294967295u), vec2<u32>(35884u, 1u)), Struct_1(4519u, vec3<f32>(-1047f, 859f, 957f), vec4<u32>(4294967295u, 674u, 1u, 168u), -951f, 22138u), vec4<i32>(0i, i32(-2147483648), 19123i, -1i)), Struct_5(vec4<bool>(true, false, true, true), Struct_2(Struct_1(4294967295u, vec3<f32>(936f, -1056f, 1307f), vec4<u32>(4294967295u, 70712u, 1u, 57131u), -1631f, 1u), vec2<u32>(80719u, 99111u)), Struct_1(4294967295u, vec3<f32>(778f, -1000f, 407f), vec4<u32>(4294967295u, 0u, 0u, 17452u), -685f, 79093u), vec4<i32>(2147483647i, 43430i, 30940i, -56613i)), Struct_5(vec4<bool>(true, true, false, false), Struct_2(Struct_1(33344u, vec3<f32>(-1039f, -321f, 302f), vec4<u32>(17076u, 8103u, 25353u, 4294967295u), 185f, 4294967295u), vec2<u32>(12069u, 36724u)), Struct_1(4294967295u, vec3<f32>(-578f, 650f, 365f), vec4<u32>(1u, 68537u, 87968u, 35871u), -1042f, 0u), vec4<i32>(13136i, 80464i, -1i, 57779i)), Struct_5(vec4<bool>(true, false, true, false), Struct_2(Struct_1(0u, vec3<f32>(579f, -2183f, -259f), vec4<u32>(5083u, 42806u, 36763u, 0u), 732f, 0u), vec2<u32>(4294967295u, 51862u)), Struct_1(4294967295u, vec3<f32>(-606f, -333f, -1706f), vec4<u32>(12231u, 36845u, 53423u, 1908u), 866f, 64181u), vec4<i32>(-26662i, 2147483647i, -2509i, 2147483647i)), Struct_5(vec4<bool>(true, true, false, true), Struct_2(Struct_1(1u, vec3<f32>(657f, -112f, -719f), vec4<u32>(36440u, 22667u, 102062u, 6398u), -233f, 0u), vec2<u32>(1u, 1u)), Struct_1(0u, vec3<f32>(-970f, 698f, -260f), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), 1166f, 0u), vec4<i32>(i32(-2147483648), 2147483647i, 40227i, 2147483647i)), Struct_5(vec4<bool>(false, true, false, true), Struct_2(Struct_1(30177u, vec3<f32>(100f, -1083f, 846f), vec4<u32>(13556u, 4294967295u, 33742u, 18486u), -1108f, 0u), vec2<u32>(0u, 1u)), Struct_1(2137u, vec3<f32>(-941f, -162f, -1755f), vec4<u32>(54757u, 1u, 10413u, 0u), -756f, 1u), vec4<i32>(26316i, -1i, 0i, 1i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(~global1.c.wxw, select(global1.c.xwy, vec3<u32>(14615u, 6063u, global1.c.x), any(vec4<bool>(arg_0.x, arg_0.x, false, true)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.d)), 1269f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * -1918f))), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.c.x, 11849u, 25084u, 1u), global1.c) ^ (global1.c >> (global1.c % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.d))))), firstLeadingBit(1u)), ~(min(~global1.c.ww, ~vec2<u32>(global3[_wgslsmith_index_u32(global1.c.x, 3u)], global1.a)) | ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.a, 3u)], 3u)], global3[_wgslsmith_index_u32(global1.c.x, 3u)])));
    let var_1 = _wgslsmith_f_op_f32(max(1000f, 556f));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a.d)), _wgslsmith_f_op_f32(f32(-1f) * -1607f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x * -1712f) + _wgslsmith_f_op_f32(1248f - var_0.a.d)) + var_1), _wgslsmith_div_f32(-1172f, -222f))));
    let var_3 = ~vec4<i32>(_wgslsmith_mod_i32(-15042i, _wgslsmith_dot_vec4_i32(~global0[_wgslsmith_index_u32(global1.e, 20u)], global0[_wgslsmith_index_u32(global1.a, 20u)])), (23901i ^ ~u_input.a.x) | firstLeadingBit(~u_input.a.x), u_input.a.x, u_input.a.x);
    var_0 = Struct_2(Struct_1(52392u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.b)) - global1.b), ~(~(~vec4<u32>(1u, global1.a, var_0.a.e, 4294967295u))), _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-1f)), 1u), _wgslsmith_mod_vec2_u32(var_0.a.c.yx, _wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global1.c.x, 3u)] & 63340u, var_0.b.x), countOneBits(global1.c.yz))));
    return _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 3u)], 4294967295u, global3[_wgslsmith_index_u32(1u, 3u)], 4294967295u), var_0.a.c) >> ((global1.a | _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(5747u, 3u)], 1u, global3[_wgslsmith_index_u32(20782u, 3u)]) >> (var_0.a.c.wyx % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(global1.c.wyx, var_0.a.c.xyz))) % 32u), 120768u, var_0.b.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_1 {
    global1 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0, vec3<f32>(global1.d, global1.d, -1447f))), _wgslsmith_f_op_vec3_f32(-arg_0))), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-451f))), ~46585u);
    let var_0 = _wgslsmith_f_op_f32(min(global1.b.x, arg_0.x));
    let var_1 = Struct_2(Struct_1(func_3(vec4<bool>(true, true, true, true)), global1.b, vec4<u32>(abs(global3[_wgslsmith_index_u32(0u, 3u)]), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_dot_vec3_u32(global1.c.zxy, vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(1u, 3u)], 1u))), firstTrailingBit(global1.a), 4294967295u), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-1f)), 76694u), countOneBits(global1.c.zy));
    var var_2 = _wgslsmith_div_u32(~(~(~(global3[_wgslsmith_index_u32(4294967295u, 3u)] << (1u % 32u)))), 0u);
    global0 = array<vec4<i32>, 20>();
    return var_1.a;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_1.c;
    let var_1 = abs(u_input.a);
    let var_2 = arg_0.c;
    var var_3 = Struct_3(vec4<u32>(max(_wgslsmith_mult_u32(~0u, ~4294967295u), ~(~0u)), ~(~1u), 24362u, firstLeadingBit(10301u)));
    global2 = ~var_1.x;
    return arg_0.a.xw;
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<i32>) -> vec2<bool> {
    return func_4(Struct_5(vec4<bool>(any(vec3<bool>(true, true, true)), true, all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))), Struct_2(func_2(_wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(402f, 561f, arg_0)), reverseBits(vec4<i32>(-2147483647i, u_input.a.x, -1i, -30724i))), _wgslsmith_sub_vec2_u32(~global1.c.ww, _wgslsmith_sub_vec2_u32(global1.c.wx, global1.c.yx))), Struct_1(global3[_wgslsmith_index_u32(firstLeadingBit(437u), 3u)], _wgslsmith_f_op_vec3_f32(select(global1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 1648f, 122f)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), vec4<u32>(35225u, ~global1.e, func_3(vec4<bool>(false, true, false, false)), 0u), _wgslsmith_f_op_f32(select(arg_2, 934f, true)), 30618u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.c.yy, abs(global1.c.ww >> (global1.c.yw % vec2<u32>(32u)))), 20u)]), Struct_1(~21539u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global1.b, _wgslsmith_div_vec3_f32(global1.b, vec3<f32>(arg_2, -1266f, arg_0)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_2, 982f) * global1.b)), ~max(vec4<u32>(global1.c.x, 4294967295u, 1757u, 1u), global1.c) >> (vec4<u32>(_wgslsmith_add_u32(global1.a, global3[_wgslsmith_index_u32(global1.c.x, 3u)]), 4294967295u, abs(44667u), global3[_wgslsmith_index_u32(60626u, 3u)] << (global3[_wgslsmith_index_u32(21460u, 3u)] % 32u)) % vec4<u32>(32u)), -1000f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(0u, global1.e), select(vec2<u32>(global1.a, 54547u), global1.c.zz, true), global1.b.x == arg_2), vec2<u32>(1u, _wgslsmith_sub_u32(4294967295u, global1.e))), 3u)]), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(362f, -1036f, -1000f), global1.b)) + vec3<f32>(_wgslsmith_f_op_f32(-121f + global1.b.x), _wgslsmith_div_f32(631f, global1.b.x), _wgslsmith_f_op_f32(-250f * arg_0))), arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a.x;
    let var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, global1.b.x), _wgslsmith_f_op_f32(global1.b.x + global1.d))), global1.b.x)) + 429f), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.xx, vec2<i32>(7597i, -2147483647i)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 4686i), u_input.a.xz)) ^ u_input.a.zx, global1.d, vec4<i32>(17661i, ~(~1i), ~_wgslsmith_mult_i32(abs(u_input.a.x), firstTrailingBit(u_input.a.x)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 1i, 0i, -26956i))), select(_wgslsmith_clamp_i32(75704i, u_input.a.x, u_input.a.x), -26685i, any(vec4<bool>(false, false, true, false))))));
    let var_1 = Struct_2(Struct_1(global1.a, global1.b, global1.c, global1.d, 1u), ~global1.c.zw);
    let var_2 = -_wgslsmith_add_i32(_wgslsmith_div_i32(0i << (func_2(vec3<f32>(global1.d, global1.b.x, -318f), global0[_wgslsmith_index_u32(16566u, 20u)]).e % 32u), u_input.a.x), -46929i | u_input.a.x);
    var var_3 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(round(global1.b.x)), var_0.x)) * var_1.a.d) <= 1f, all(vec4<bool>(true, false, true & (var_1.a.c.x <= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(28202u, 3u)], 3u)], 3u)]), false)), true, false);
    global3 = array<u32, 3>();
    var var_4 = !select(!vec4<bool>(var_3.x, var_0.x, -24173i > u_input.a.x, true), select(!(!vec4<bool>(false, var_0.x, false, true)), !select(vec4<bool>(true, var_0.x, var_3.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), true), false), !(!vec4<bool>(true, false, var_3.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.zxw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.d, 269f)) + _wgslsmith_f_op_f32(275f * -1030f)) - -637f)), _wgslsmith_sub_vec2_u32(~var_1.b, min(global1.c.xz << (var_1.b % vec2<u32>(32u)), vec2<u32>(1u, global1.e))) & max(vec2<u32>(global1.a, var_1.b.x | global1.a), global1.c.wz));
}

