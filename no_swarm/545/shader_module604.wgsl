struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(0u, i32(-2147483648), Struct_3(0u, Struct_2(vec3<u32>(48529u, 26698u, 11928u), vec3<f32>(-905f, 414f, 338f)), Struct_2(vec3<u32>(45506u, 0u, 1u), vec3<f32>(-474f, -227f, -237f)), vec3<f32>(458f, 1000f, 267f), vec3<u32>(48843u, 114121u, 36843u)), Struct_3(31391u, Struct_2(vec3<u32>(28382u, 7686u, 65036u), vec3<f32>(-428f, -1373f, -1204f)), Struct_2(vec3<u32>(63694u, 4294967295u, 1u), vec3<f32>(-2128f, -1075f, 1124f)), vec3<f32>(-749f, 298f, -1896f), vec3<u32>(24640u, 0u, 0u))), Struct_4(36605u, 7227i, Struct_3(0u, Struct_2(vec3<u32>(40234u, 0u, 1u), vec3<f32>(1313f, -1721f, 164f)), Struct_2(vec3<u32>(9820u, 4294967295u, 12038u), vec3<f32>(895f, 240f, -1986f)), vec3<f32>(-586f, -348f, -827f), vec3<u32>(1u, 4294967295u, 0u)), Struct_3(18158u, Struct_2(vec3<u32>(4294967295u, 23047u, 0u), vec3<f32>(-186f, -413f, 138f)), Struct_2(vec3<u32>(0u, 77472u, 74225u), vec3<f32>(2298f, 1000f, -885f)), vec3<f32>(749f, 359f, -154f), vec3<u32>(1u, 8443u, 5238u))), Struct_4(15236u, i32(-2147483648), Struct_3(37397u, Struct_2(vec3<u32>(31581u, 4294967295u, 0u), vec3<f32>(1000f, 1071f, -226f)), Struct_2(vec3<u32>(4294967295u, 20359u, 55776u), vec3<f32>(-1024f, 2375f, -1036f)), vec3<f32>(306f, 1796f, 1113f), vec3<u32>(1u, 89391u, 0u)), Struct_3(0u, Struct_2(vec3<u32>(43268u, 1u, 1u), vec3<f32>(-1440f, 1602f, 631f)), Struct_2(vec3<u32>(1u, 79252u, 4294967295u), vec3<f32>(-269f, 511f, 182f)), vec3<f32>(-2026f, 1846f, 573f), vec3<u32>(22887u, 65913u, 10363u))), Struct_4(43416u, 1i, Struct_3(1u, Struct_2(vec3<u32>(6243u, 0u, 0u), vec3<f32>(-780f, 245f, 323f)), Struct_2(vec3<u32>(7929u, 23437u, 577u), vec3<f32>(-776f, 759f, -306f)), vec3<f32>(1128f, 1000f, 686f), vec3<u32>(4294967295u, 4294967295u, 48240u)), Struct_3(4294967295u, Struct_2(vec3<u32>(1u, 40893u, 34802u), vec3<f32>(1125f, -920f, -1961f)), Struct_2(vec3<u32>(0u, 8134u, 90721u), vec3<f32>(-858f, 1221f, 1000f)), vec3<f32>(-1229f, 1675f, -756f), vec3<u32>(5553u, 4294967295u, 60059u))), Struct_4(4294967295u, 2147483647i, Struct_3(21616u, Struct_2(vec3<u32>(19746u, 59739u, 1u), vec3<f32>(891f, -1010f, -247f)), Struct_2(vec3<u32>(68111u, 7021u, 1u), vec3<f32>(-333f, -847f, -657f)), vec3<f32>(-1000f, -643f, 1515f), vec3<u32>(4294967295u, 4294967295u, 19491u)), Struct_3(2131u, Struct_2(vec3<u32>(138151u, 38021u, 0u), vec3<f32>(1071f, -192f, 455f)), Struct_2(vec3<u32>(16916u, 39926u, 1u), vec3<f32>(-179f, -455f, 641f)), vec3<f32>(-837f, 169f, 534f), vec3<u32>(43247u, 4294967295u, 4294967295u))), Struct_4(38028u, 3619i, Struct_3(107272u, Struct_2(vec3<u32>(10417u, 1045u, 1u), vec3<f32>(1000f, 267f, -1000f)), Struct_2(vec3<u32>(11478u, 0u, 24678u), vec3<f32>(-1690f, 2683f, -549f)), vec3<f32>(532f, -709f, 354f), vec3<u32>(19851u, 0u, 1u)), Struct_3(0u, Struct_2(vec3<u32>(4294967295u, 7159u, 7030u), vec3<f32>(419f, -1744f, 1000f)), Struct_2(vec3<u32>(0u, 0u, 4294967295u), vec3<f32>(993f, -1649f, -522f)), vec3<f32>(119f, 268f, -182f), vec3<u32>(1u, 41054u, 16476u))), Struct_4(4294967295u, 27496i, Struct_3(56535u, Struct_2(vec3<u32>(0u, 51228u, 4659u), vec3<f32>(1440f, 1345f, 1104f)), Struct_2(vec3<u32>(24496u, 1u, 80069u), vec3<f32>(1000f, -616f, 307f)), vec3<f32>(1159f, 689f, 1169f), vec3<u32>(10163u, 1u, 32489u)), Struct_3(37043u, Struct_2(vec3<u32>(1u, 56058u, 14241u), vec3<f32>(-731f, -352f, -220f)), Struct_2(vec3<u32>(1u, 0u, 0u), vec3<f32>(914f, 606f, 315f)), vec3<f32>(-1078f, 1643f, -822f), vec3<u32>(0u, 0u, 29103u))), Struct_4(1u, 2147483647i, Struct_3(8687u, Struct_2(vec3<u32>(4294967295u, 4294967295u, 30991u), vec3<f32>(314f, -226f, 1485f)), Struct_2(vec3<u32>(4294967295u, 0u, 39461u), vec3<f32>(-423f, 123f, -1000f)), vec3<f32>(412f, -1739f, -749f), vec3<u32>(1u, 1u, 0u)), Struct_3(4294967295u, Struct_2(vec3<u32>(1u, 0u, 51727u), vec3<f32>(-1603f, -1802f, -895f)), Struct_2(vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(-1193f, -154f, 312f)), vec3<f32>(-999f, 2485f, -595f), vec3<u32>(0u, 31688u, 0u))), Struct_4(4294967295u, -1i, Struct_3(79154u, Struct_2(vec3<u32>(30108u, 6172u, 0u), vec3<f32>(-2271f, -314f, 1521f)), Struct_2(vec3<u32>(4294967295u, 31734u, 0u), vec3<f32>(-270f, 802f, 111f)), vec3<f32>(1193f, -131f, -1902f), vec3<u32>(10275u, 1u, 7368u)), Struct_3(0u, Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(-1222f, -792f, 1116f)), Struct_2(vec3<u32>(23829u, 34112u, 4294967295u), vec3<f32>(-702f, 598f, 446f)), vec3<f32>(-850f, 171f, 797f), vec3<u32>(1u, 0u, 1u))), Struct_4(18842u, 3055i, Struct_3(8278u, Struct_2(vec3<u32>(1u, 30690u, 55601u), vec3<f32>(-722f, -374f, -771f)), Struct_2(vec3<u32>(1639u, 0u, 1u), vec3<f32>(188f, -1000f, 319f)), vec3<f32>(1459f, -436f, -691f), vec3<u32>(1u, 1u, 67690u)), Struct_3(69113u, Struct_2(vec3<u32>(4294967295u, 26684u, 4294967295u), vec3<f32>(-1495f, -1351f, 1213f)), Struct_2(vec3<u32>(3299u, 52059u, 1u), vec3<f32>(676f, -1000f, -872f)), vec3<f32>(-1408f, 1487f, -1000f), vec3<u32>(0u, 4294967295u, 1u))), Struct_4(33320u, -1i, Struct_3(5986u, Struct_2(vec3<u32>(19393u, 9777u, 61370u), vec3<f32>(-444f, 863f, 885f)), Struct_2(vec3<u32>(4294967295u, 1u, 0u), vec3<f32>(-999f, -204f, 224f)), vec3<f32>(-467f, 149f, -1054f), vec3<u32>(20970u, 1u, 0u)), Struct_3(85361u, Struct_2(vec3<u32>(1u, 4294967295u, 0u), vec3<f32>(369f, -2042f, -1138f)), Struct_2(vec3<u32>(4294967295u, 10475u, 8852u), vec3<f32>(340f, -582f, 739f)), vec3<f32>(-1000f, 289f, -333f), vec3<u32>(874u, 42026u, 1177u))), Struct_4(55353u, 26446i, Struct_3(29858u, Struct_2(vec3<u32>(4294967295u, 12322u, 4294967295u), vec3<f32>(1000f, -1000f, 666f)), Struct_2(vec3<u32>(1u, 47087u, 113233u), vec3<f32>(264f, -617f, 705f)), vec3<f32>(577f, -1000f, -1420f), vec3<u32>(0u, 0u, 239u)), Struct_3(20636u, Struct_2(vec3<u32>(7387u, 14767u, 112416u), vec3<f32>(1000f, 1118f, 1713f)), Struct_2(vec3<u32>(4294967295u, 1u, 1u), vec3<f32>(-251f, 1874f, -948f)), vec3<f32>(479f, 1000f, -1332f), vec3<u32>(0u, 8051u, 112393u))), Struct_4(101519u, 45077i, Struct_3(0u, Struct_2(vec3<u32>(4294967295u, 1u, 102853u), vec3<f32>(-838f, 2333f, -1611f)), Struct_2(vec3<u32>(26514u, 4890u, 1u), vec3<f32>(-1000f, 792f, -1000f)), vec3<f32>(181f, 353f, 342f), vec3<u32>(13440u, 4294967295u, 0u)), Struct_3(41830u, Struct_2(vec3<u32>(31381u, 89022u, 0u), vec3<f32>(765f, -168f, -865f)), Struct_2(vec3<u32>(81040u, 4294967295u, 17900u), vec3<f32>(-2414f, -1000f, -945f)), vec3<f32>(134f, 595f, -1234f), vec3<u32>(78147u, 4294967295u, 39653u))), Struct_4(0u, 0i, Struct_3(7303u, Struct_2(vec3<u32>(48724u, 4294967295u, 69239u), vec3<f32>(-1000f, -423f, -2566f)), Struct_2(vec3<u32>(4294967295u, 1u, 77858u), vec3<f32>(998f, -174f, -518f)), vec3<f32>(1406f, 820f, -2007f), vec3<u32>(4294967295u, 1u, 0u)), Struct_3(0u, Struct_2(vec3<u32>(1u, 4294967295u, 18583u), vec3<f32>(-371f, -494f, -425f)), Struct_2(vec3<u32>(27892u, 0u, 0u), vec3<f32>(-753f, -1415f, -102f)), vec3<f32>(-1181f, 753f, 2020f), vec3<u32>(38492u, 0u, 4294967295u))), Struct_4(1u, -10894i, Struct_3(37002u, Struct_2(vec3<u32>(1u, 1u, 27206u), vec3<f32>(-2310f, 1000f, 1264f)), Struct_2(vec3<u32>(4294967295u, 0u, 71221u), vec3<f32>(-2826f, 1672f, 262f)), vec3<f32>(-1461f, 1136f, -268f), vec3<u32>(87899u, 63510u, 29210u)), Struct_3(19475u, Struct_2(vec3<u32>(4294967295u, 19661u, 104018u), vec3<f32>(1135f, 637f, -1506f)), Struct_2(vec3<u32>(62190u, 0u, 4294967295u), vec3<f32>(-1399f, -1000f, -1904f)), vec3<f32>(-1916f, -199f, 1015f), vec3<u32>(4294967295u, 4294967295u, 0u))), Struct_4(1u, 6264i, Struct_3(4294967295u, Struct_2(vec3<u32>(1u, 4294967295u, 52386u), vec3<f32>(593f, -1021f, 1124f)), Struct_2(vec3<u32>(1u, 6904u, 0u), vec3<f32>(191f, 1098f, 947f)), vec3<f32>(119f, 198f, 830f), vec3<u32>(3632u, 55088u, 19176u)), Struct_3(0u, Struct_2(vec3<u32>(59351u, 4294967295u, 33705u), vec3<f32>(1288f, -192f, -1244f)), Struct_2(vec3<u32>(27801u, 15590u, 30761u), vec3<f32>(-1392f, 401f, 211f)), vec3<f32>(2028f, 372f, 401f), vec3<u32>(33771u, 4294967295u, 4294967295u))), Struct_4(4294967295u, -1293i, Struct_3(1u, Struct_2(vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(401f, 1901f, -972f)), Struct_2(vec3<u32>(404u, 109u, 28219u), vec3<f32>(-2219f, 2113f, -238f)), vec3<f32>(-128f, -710f, -1901f), vec3<u32>(1u, 11031u, 63194u)), Struct_3(1u, Struct_2(vec3<u32>(5374u, 5387u, 4294967295u), vec3<f32>(1413f, 583f, 119f)), Struct_2(vec3<u32>(107015u, 44228u, 1u), vec3<f32>(-799f, 2212f, -822f)), vec3<f32>(909f, -441f, -256f), vec3<u32>(21867u, 1u, 1u))), Struct_4(0u, 12090i, Struct_3(4294967295u, Struct_2(vec3<u32>(0u, 1u, 1u), vec3<f32>(-549f, 297f, 517f)), Struct_2(vec3<u32>(4294967295u, 1u, 1u), vec3<f32>(-1994f, -397f, -302f)), vec3<f32>(-1991f, 1369f, -1857f), vec3<u32>(10391u, 1u, 0u)), Struct_3(0u, Struct_2(vec3<u32>(22261u, 4294967295u, 1u), vec3<f32>(-1026f, -331f, -381f)), Struct_2(vec3<u32>(35523u, 4294967295u, 78027u), vec3<f32>(-2688f, -302f, -1238f)), vec3<f32>(316f, -206f, -756f), vec3<u32>(1u, 1u, 4294967295u))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: i32, arg_3: i32) -> vec4<u32> {
    global0 = array<Struct_4, 18>();
    var var_0 = abs(_wgslsmith_mod_u32(~(~countOneBits(arg_0)), reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(41342u, u_input.a, 4294967295u), vec3<u32>(arg_1.x, arg_0, 13282u)))));
    var_0 = ~arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-123f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1419f, -966f))), -190f)));
    var_0 = arg_0;
    return arg_1;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = global0[_wgslsmith_index_u32(~max(arg_0 ^ _wgslsmith_clamp_u32(13525u, arg_2.a.x, u_input.d), u_input.a) & (arg_2.a.x >> (min(arg_0, 4294967295u) % 32u)), 18u)];
    let var_1 = Struct_3(0u, arg_2, var_0.c.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b))), vec3<u32>(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_dot_vec2_u32(var_0.d.b.a.yz, min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u))) | ~(~arg_0), u_input.a & 1u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_2.b.xz);
    var var_3 = 0u;
    var var_4 = _wgslsmith_clamp_vec4_u32(func_3(~u_input.d, _wgslsmith_div_vec4_u32((vec4<u32>(var_0.d.a, 81374u, 1u, 0u) >> (vec4<u32>(62314u, 0u, 1u, u_input.a) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, 0u, u_input.a), vec4<u32>(52760u, 53738u, u_input.d, u_input.a)), abs(vec4<u32>(0u, 0u, 4294967295u, 0u) << (vec4<u32>(1u, arg_2.a.x, 1u, arg_0) % vec4<u32>(32u)))), -u_input.b, -1i), vec4<u32>(_wgslsmith_sub_u32(~arg_2.a.x, abs(arg_0)), _wgslsmith_sub_u32(~(~92216u), _wgslsmith_dot_vec2_u32(arg_2.a.xy >> (arg_2.a.zx % vec2<u32>(32u)), vec2<u32>(0u, 4294967295u))), var_0.a | ~(0u ^ var_1.a), var_1.e.x), _wgslsmith_mod_vec4_u32(max(vec4<u32>(1u, 0u << (var_1.b.a.x % 32u), abs(var_1.b.a.x), u_input.d ^ var_0.d.e.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.d.e.x, 51884u, 0u), vec4<u32>(u_input.a, 0u, 1u, u_input.d))), vec4<u32>(arg_2.a.x, arg_0, ~1190u ^ arg_2.a.x, ~firstLeadingBit(27462u))));
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(min(574f, _wgslsmith_f_op_f32(f32(-1f) * -123f))), arg_2.b.x, -1449f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = 1i;
    global0 = array<Struct_4, 18>();
    var var_1 = max(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, -30355i), u_input.c.xy), 31967i, arg_3.x, 0i)), ~(~reverseBits(u_input.c ^ vec4<i32>(u_input.e, arg_1.b, u_input.b, arg_1.b))));
    var_0 = ~(~firstLeadingBit(-1i) & arg_1.b);
    var_0 = 0i;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.b.x), -1000f), _wgslsmith_dot_vec2_i32(var_1.xx, max(reverseBits(vec2<i32>(-31345i, 1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-12881i, 2147483647i), vec2<i32>(-44625i, 719i), vec2<i32>(0i, 33631i))) & -max(var_1.xz, vec2<i32>(arg_3.x, -1i))));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = -1275f;
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(71435u, true, Struct_2(arg_1, vec3<f32>(-636f, var_0, arg_0))))) * vec4<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(877f * -334f)), _wgslsmith_div_f32(388f, 499f), var_0, 1f)), Struct_4(arg_1.x, abs(-2147483647i ^ u_input.c.x), Struct_3(~1u, Struct_2(arg_1 >> (arg_1 % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, arg_0, var_0))), Struct_2(firstLeadingBit(vec3<u32>(4294967295u, arg_1.x, arg_1.x)), vec3<f32>(var_0, arg_0, 969f)), _wgslsmith_f_op_vec4_f32(func_2(4294967295u, -2147483647i >= u_input.e, Struct_2(arg_1, vec3<f32>(579f, -378f, 921f)))).xzy, arg_1), Struct_3(~24097u, Struct_2(vec3<u32>(29016u, 33590u, 1u) << (vec3<u32>(66925u, 63549u, arg_1.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_0, -1000f))), Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1000f, -1486f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-104f)), -933f, _wgslsmith_f_op_f32(max(arg_0, var_0))), vec3<u32>(~0u, arg_1.x, _wgslsmith_sub_u32(u_input.d, 4294967295u)))), Struct_3(~(~4294967295u) | _wgslsmith_dot_vec3_u32(firstLeadingBit(arg_1), min(arg_1, arg_1)), Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, var_0, arg_0), vec3<f32>(arg_0, arg_0, arg_0)))), Struct_2(abs(countOneBits(arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1573f, 501f, arg_0) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1554f, arg_0) - vec3<f32>(arg_0, -1040f, -990f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1588f, arg_0, arg_0), vec3<f32>(-1556f, 151f, 764f)) * vec3<f32>(var_0, 406f, arg_0))), select(min(_wgslsmith_sub_vec3_u32(arg_1, vec3<u32>(u_input.d, 37130u, arg_1.x)), vec3<u32>(u_input.a, 1u, 4294967295u)), ~countOneBits(arg_1), true)), vec2<i32>(u_input.e, ~_wgslsmith_mult_i32(u_input.e, 0i)) ^ u_input.c.yw);
    global0 = array<Struct_4, 18>();
    return Struct_3(u_input.d, Struct_2(vec3<u32>(_wgslsmith_mod_u32(~arg_1.x, ~arg_1.x), u_input.d, ~_wgslsmith_add_u32(1u, arg_1.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * 182f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(min(35532u, arg_1.x), countOneBits(arg_1.x), ~arg_1.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 11579u, arg_1.x, 4294967295u), vec4<u32>(0u, 1u, 7608u, arg_1.x)), u_input.a, u_input.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1353f, 811f, var_0))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a, 449f, -1429f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(366f, -878f, 262f)))), ~arg_1);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    global0 = array<Struct_4, 18>();
    var var_0 = true;
    let var_1 = _wgslsmith_sub_i32(max(_wgslsmith_dot_vec4_i32(abs(-u_input.c), select(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -2147483647i, -1i, -23333i), u_input.c), u_input.c, arg_1.x)), ~(-1666i)), firstLeadingBit(u_input.c.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(vec4<f32>(arg_2.b.x, -381f, 1320f, 1321f), Struct_4(0u, var_1, arg_0, Struct_3(1u, arg_0.c, arg_0.c, arg_2.b, vec3<u32>(35904u, arg_3, 4294967295u))), Struct_3(0u, Struct_2(arg_2.a, vec3<f32>(arg_2.b.x, 514f, arg_0.d.x)), Struct_2(vec3<u32>(arg_3, 14775u, 21249u), vec3<f32>(771f, arg_2.b.x, arg_2.b.x)), arg_0.b.b, arg_0.c.a), ~u_input.c.yw).a) - arg_0.d.x), 6355i);
    var_0 = false;
    return Struct_2(~_wgslsmith_add_vec3_u32(select(func_1(arg_2.b.x, arg_0.c.a).b.a, ~arg_2.a, !arg_1.x), ~max(vec3<u32>(arg_3, arg_0.b.a.x, u_input.d), vec3<u32>(arg_0.e.x, 16359u, 29845u))), vec3<f32>(-427f, _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.b.x * _wgslsmith_f_op_f32(step(708f, var_2.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d >> (1u % 32u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-304f + _wgslsmith_f_op_f32(floor(1074f))))), u_input.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -775f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(424f, var_1.a)))))));
    let var_3 = true && all(vec3<bool>(true, true, true));
    let var_4 = abs(vec4<i32>(var_1.b, u_input.c.x ^ -1i, u_input.c.x, -22975i) & -u_input.c);
    var var_5 = func_5(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) - var_2.x), ~(~vec3<u32>(u_input.a, 1u, u_input.d))), vec4<bool>(true | any(select(vec4<bool>(var_3, true, true, true), vec4<bool>(var_3, false, var_3, var_3), var_3)), false, min(0i << (u_input.d % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, var_1.b), vec4<i32>(u_input.e, var_4.x, var_4.x, u_input.c.x))) <= -56324i, (!var_3 & (false && var_3)) & !var_3), Struct_2(vec3<u32>(_wgslsmith_mod_u32(u_input.a, 19469u) & u_input.d, u_input.d, _wgslsmith_sub_u32(0u, _wgslsmith_add_u32(12213u, u_input.a))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 455f, 456f)))))), ~4294967295u);
    var var_6 = max(firstTrailingBit(_wgslsmith_dot_vec3_u32(~max(var_5.a, var_5.a), _wgslsmith_mult_vec3_u32(~var_5.a, ~var_5.a))), 133064u);
    var_0 = _wgslsmith_mult_u32(u_input.d, u_input.d);
    global0 = array<Struct_4, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(min(~vec2<u32>(u_input.d, var_5.a.x) << (vec2<u32>(var_5.a.x, u_input.d) % vec2<u32>(32u)), abs(var_5.a.xy))), 18667i, 868f, u_input.c.x);
}

