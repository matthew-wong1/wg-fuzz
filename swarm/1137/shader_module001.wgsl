struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: Struct_5 = Struct_5(4294967295u, vec2<i32>(-23767i, i32(-2147483648)), 1u);

var<private> global2: Struct_5;

var<private> global3: array<f32, 24>;

var<private> global4: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(1539f, vec2<bool>(false, false), 4294967295u, 338f), Struct_1(1000f, vec2<bool>(false, true), 97935u, -221f), true, vec4<f32>(1198f, 107f, 1621f, -957f), Struct_1(194f, vec2<bool>(false, true), 15371u, -1381f)), Struct_2(Struct_1(-312f, vec2<bool>(false, true), 0u, 1002f), Struct_1(-290f, vec2<bool>(false, false), 4294967295u, -969f), false, vec4<f32>(-1853f, 178f, -442f, -280f), Struct_1(-153f, vec2<bool>(false, true), 21940u, -485f)), Struct_2(Struct_1(449f, vec2<bool>(false, true), 23878u, -821f), Struct_1(193f, vec2<bool>(true, true), 1u, 1707f), true, vec4<f32>(-1000f, 1309f, 1204f, -1500f), Struct_1(791f, vec2<bool>(false, false), 41837u, 192f)), Struct_2(Struct_1(-441f, vec2<bool>(false, true), 61553u, -320f), Struct_1(830f, vec2<bool>(true, true), 30117u, 181f), false, vec4<f32>(734f, -1050f, 1008f, 101f), Struct_1(-675f, vec2<bool>(false, false), 4294967295u, 1000f)), Struct_2(Struct_1(274f, vec2<bool>(true, true), 1u, 1000f), Struct_1(-1807f, vec2<bool>(false, false), 2211u, -1478f), true, vec4<f32>(-279f, -1453f, 1388f, -701f), Struct_1(943f, vec2<bool>(true, false), 11163u, 804f)), Struct_2(Struct_1(-248f, vec2<bool>(false, false), 4124u, 2136f), Struct_1(-1000f, vec2<bool>(true, true), 0u, 371f), false, vec4<f32>(295f, -117f, -808f, -1609f), Struct_1(296f, vec2<bool>(false, true), 1u, 815f)), Struct_2(Struct_1(1032f, vec2<bool>(true, false), 254u, -449f), Struct_1(2515f, vec2<bool>(true, true), 38018u, -675f), false, vec4<f32>(466f, 1267f, 464f, -578f), Struct_1(303f, vec2<bool>(true, false), 1u, -1275f)), Struct_2(Struct_1(-1313f, vec2<bool>(false, true), 92610u, -1292f), Struct_1(506f, vec2<bool>(true, false), 23204u, 964f), false, vec4<f32>(-558f, 249f, 1236f, 249f), Struct_1(1277f, vec2<bool>(true, false), 15099u, -381f)), Struct_2(Struct_1(289f, vec2<bool>(false, false), 0u, -196f), Struct_1(-1000f, vec2<bool>(true, false), 1u, 1398f), true, vec4<f32>(-579f, 536f, 2177f, 1548f), Struct_1(-140f, vec2<bool>(false, false), 1u, -1397f)), Struct_2(Struct_1(637f, vec2<bool>(false, true), 1u, -466f), Struct_1(126f, vec2<bool>(false, false), 0u, 1000f), true, vec4<f32>(395f, -1435f, 247f, -1268f), Struct_1(1651f, vec2<bool>(true, false), 4294967295u, -576f)), Struct_2(Struct_1(141f, vec2<bool>(true, false), 1u, -151f), Struct_1(-498f, vec2<bool>(true, true), 12675u, 1060f), false, vec4<f32>(-1327f, 573f, -2586f, 320f), Struct_1(-891f, vec2<bool>(true, true), 1u, 752f)), Struct_2(Struct_1(943f, vec2<bool>(false, false), 1u, -1168f), Struct_1(1314f, vec2<bool>(false, false), 13028u, 275f), true, vec4<f32>(-1000f, -883f, -227f, -699f), Struct_1(822f, vec2<bool>(true, true), 4294967295u, -214f)), Struct_2(Struct_1(283f, vec2<bool>(false, false), 7181u, 1575f), Struct_1(518f, vec2<bool>(true, true), 4294967295u, -228f), true, vec4<f32>(204f, -381f, -351f, -214f), Struct_1(1635f, vec2<bool>(false, true), 59975u, 1035f)), Struct_2(Struct_1(-1693f, vec2<bool>(false, false), 42647u, 1628f), Struct_1(203f, vec2<bool>(false, true), 11906u, 461f), true, vec4<f32>(1586f, -685f, -1068f, 490f), Struct_1(-1114f, vec2<bool>(true, true), 4294967295u, 204f)), Struct_2(Struct_1(-887f, vec2<bool>(false, true), 18397u, 1508f), Struct_1(-906f, vec2<bool>(true, true), 0u, -1504f), false, vec4<f32>(1000f, 516f, -164f, 1000f), Struct_1(547f, vec2<bool>(false, true), 11355u, 922f)), Struct_2(Struct_1(100f, vec2<bool>(true, false), 0u, -299f), Struct_1(1134f, vec2<bool>(true, false), 11380u, 1138f), false, vec4<f32>(-455f, -1386f, -1000f, 850f), Struct_1(147f, vec2<bool>(false, false), 4294967295u, 421f)), Struct_2(Struct_1(-1171f, vec2<bool>(false, false), 29697u, 889f), Struct_1(-159f, vec2<bool>(true, true), 10421u, 144f), false, vec4<f32>(-1484f, 2520f, -385f, -110f), Struct_1(758f, vec2<bool>(true, false), 4294967295u, -1000f)), Struct_2(Struct_1(-847f, vec2<bool>(true, true), 0u, 1629f), Struct_1(-1000f, vec2<bool>(true, true), 30248u, -1858f), true, vec4<f32>(104f, 1145f, -970f, -1615f), Struct_1(-442f, vec2<bool>(false, false), 0u, -136f)), Struct_2(Struct_1(607f, vec2<bool>(true, false), 7089u, -663f), Struct_1(1490f, vec2<bool>(true, true), 1u, -542f), true, vec4<f32>(623f, 287f, -1002f, 323f), Struct_1(265f, vec2<bool>(true, false), 38051u, -555f)), Struct_2(Struct_1(872f, vec2<bool>(true, true), 58148u, 1000f), Struct_1(126f, vec2<bool>(false, false), 30464u, -1025f), false, vec4<f32>(1352f, 491f, -470f, 1153f), Struct_1(-307f, vec2<bool>(true, false), 0u, -1306f)), Struct_2(Struct_1(-490f, vec2<bool>(false, true), 102037u, -723f), Struct_1(408f, vec2<bool>(false, true), 1u, 2082f), true, vec4<f32>(459f, 618f, 974f, -1810f), Struct_1(-214f, vec2<bool>(false, true), 1273u, 910f)), Struct_2(Struct_1(375f, vec2<bool>(true, true), 1u, 724f), Struct_1(1370f, vec2<bool>(true, false), 4294967295u, -304f), false, vec4<f32>(809f, -980f, -695f, -1000f), Struct_1(901f, vec2<bool>(true, false), 12251u, 603f)), Struct_2(Struct_1(1227f, vec2<bool>(false, true), 60581u, -223f), Struct_1(-924f, vec2<bool>(false, false), 1u, 534f), false, vec4<f32>(-985f, -222f, 1000f, 2398f), Struct_1(435f, vec2<bool>(false, false), 95041u, 594f)), Struct_2(Struct_1(-348f, vec2<bool>(true, false), 8105u, 105f), Struct_1(2578f, vec2<bool>(false, false), 15030u, 791f), true, vec4<f32>(-884f, 818f, -2298f, -784f), Struct_1(1000f, vec2<bool>(true, false), 46579u, 1845f)), Struct_2(Struct_1(563f, vec2<bool>(true, false), 0u, 368f), Struct_1(644f, vec2<bool>(true, true), 1u, 1000f), true, vec4<f32>(1308f, 304f, -1434f, -1250f), Struct_1(514f, vec2<bool>(false, true), 1u, 106f)), Struct_2(Struct_1(-1632f, vec2<bool>(true, false), 4294967295u, -790f), Struct_1(1000f, vec2<bool>(true, true), 38924u, -1616f), false, vec4<f32>(757f, 1000f, 1000f, 709f), Struct_1(1599f, vec2<bool>(false, false), 1u, 1414f)), Struct_2(Struct_1(-1000f, vec2<bool>(false, false), 0u, -1144f), Struct_1(137f, vec2<bool>(true, true), 0u, -239f), false, vec4<f32>(-1225f, -1144f, 226f, -139f), Struct_1(-293f, vec2<bool>(false, true), 1u, 1025f)), Struct_2(Struct_1(-917f, vec2<bool>(false, false), 0u, 265f), Struct_1(393f, vec2<bool>(true, true), 4294967295u, -774f), true, vec4<f32>(394f, -342f, 449f, 473f), Struct_1(1000f, vec2<bool>(true, true), 19770u, -522f)), Struct_2(Struct_1(770f, vec2<bool>(false, true), 10062u, 777f), Struct_1(-395f, vec2<bool>(true, false), 0u, -1259f), true, vec4<f32>(-1000f, -182f, 732f, -103f), Struct_1(-397f, vec2<bool>(true, false), 0u, -188f)), Struct_2(Struct_1(-232f, vec2<bool>(false, true), 4294967295u, -410f), Struct_1(2323f, vec2<bool>(false, true), 23413u, 204f), true, vec4<f32>(378f, -647f, 505f, -1793f), Struct_1(-1598f, vec2<bool>(false, false), 4294967295u, 1794f)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<i32>) -> Struct_5 {
    var var_0 = vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(-(~(-arg_3.wy)), global1.b), ~abs(global2.b.x | global1.b.x));
    let var_1 = arg_1.x;
    global4 = array<Struct_2, 30>();
    var var_2 = true;
    var_0 = _wgslsmith_mult_vec3_i32(~(-(~_wgslsmith_mult_vec3_i32(vec3<i32>(57684i, 2147483647i, u_input.d), vec3<i32>(global2.b.x, 9814i, global1.b.x)))), vec3<i32>(~(-(~(-1i))), _wgslsmith_add_i32(~global2.b.x, ~var_0.x), global1.b.x));
    return Struct_5(~firstLeadingBit(~(4294967295u << (global1.a % 32u))), arg_3.yz, global1.a);
}

fn func_3(arg_0: Struct_5) -> vec2<bool> {
    global1 = func_2(Struct_1(_wgslsmith_f_op_f32(-529f + _wgslsmith_div_f32(-2812f, -1990f)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(any(vec2<bool>(false, false)), all(vec2<bool>(false, false)), all(vec3<bool>(false, true, false)))), reverseBits(func_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 24u)], vec2<bool>(false, false), u_input.a, 1593f), vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global2.c, 24u)], 1u, 18125u), 24u)], _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 8258i, -1i), vec4<i32>(u_input.d, global1.b.x, global2.b.x, global2.b.x))).c), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(firstLeadingBit(20849u) >> (_wgslsmith_mod_u32(u_input.c, global0[_wgslsmith_index_u32(global2.c, 24u)]) % 32u), 24u)], 1123f))), vec3<bool>(all(vec4<bool>(true, select(true, true, true), true, all(vec2<bool>(true, true)))), select(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false)), select(true, true, true), true), true), global3[_wgslsmith_index_u32(~88338u, 24u)], vec4<i32>(-17923i, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(-35577i), 0i & global1.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(9960i, arg_0.b.x, global1.b.x, 0i), vec4<i32>(-2147483647i, global2.b.x, -2147483647i, 35746i))), -max(vec3<i32>(global2.b.x, u_input.d, 17583i), vec3<i32>(arg_0.b.x, arg_0.b.x, 7704i))), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, 29469i, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 45603i, global2.b.x), vec3<i32>(arg_0.b.x, arg_0.b.x, 0i))) >> (global1.a % 32u), u_input.d));
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 4294967295u, arg_0.a) << (~vec4<u32>(4294967295u, u_input.a, arg_0.c, 3657u) % vec4<u32>(32u)), vec4<u32>(52591u ^ arg_0.a, u_input.a, countOneBits(4294967295u), 8387u << (u_input.b.x % 32u))), abs(vec4<u32>(~arg_0.c, global1.c, 0u, 1u))) ^ global1.c;
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(select(abs(69522u), 20471u, true), ~global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 13053u, 49760u), ~abs(reverseBits(countOneBits(vec4<u32>(0u, global0[_wgslsmith_index_u32(global1.c, 24u)], 1u, 41726u)))));
    let var_2 = Struct_4(abs(4294967295u), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b), var_1.x), _wgslsmith_sub_u32(_wgslsmith_div_u32(~33388u, ~2187u), max(global0[_wgslsmith_index_u32(arg_0.c, 24u)], ~global0[_wgslsmith_index_u32(global2.a, 24u)])), ~(1u | (var_1.x & 0u)), ~(~arg_0.c)), u_input.b, select(~firstTrailingBit(arg_0.b) | ~(-arg_0.b), arg_0.b, vec2<bool>(true, true)));
    var var_3 = true;
    return select(vec2<bool>(true, any(vec4<bool>(false, true, true, true))), select(vec2<bool>(false, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), all(vec3<bool>(false, true, false))))), select(vec2<bool>(any(vec3<bool>(true, false, false)), false), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> u32 {
    global1 = Struct_5(_wgslsmith_clamp_u32(arg_1.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, 0u, 6479u, arg_2.x), vec4<u32>(73577u, global1.a, 1u, 7553u))), select(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_add_u32(arg_1.x, 4294967295u)), 13949u, arg_0.x || true)), reverseBits(global2.b | global1.b), ~_wgslsmith_add_u32(~firstLeadingBit(1u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u), ~global1.a)));
    let var_0 = global4[_wgslsmith_index_u32(countOneBits(0u), 30u)];
    var var_1 = Struct_4(arg_2.x, vec4<u32>(1u, max(_wgslsmith_dot_vec3_u32(~arg_1.zwx, vec3<u32>(0u, arg_1.x, 18625u)), 1u), _wgslsmith_add_u32(40822u, max(~var_0.a.c, ~global0[_wgslsmith_index_u32(global1.c, 24u)])), 23874u), arg_2, _wgslsmith_mult_vec2_i32(select(min(_wgslsmith_add_vec2_i32(global1.b, vec2<i32>(14317i, 2147483647i)), global2.b), select(global1.b, global2.b, arg_0.x), true), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2.b.x, 1i), vec3<i32>(-2147483647i, global1.b.x, u_input.d)), u_input.d) >> (((arg_2 & u_input.b) | abs(u_input.b)) % vec2<u32>(32u))));
    let var_2 = func_2(var_0.b, vec3<bool>(!(!select(false, true, var_0.c)), true, _wgslsmith_mod_i32(var_1.d.x & global2.b.x, i32(-1i) * -1i) >= 1i), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.b.d, 336f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(898f, var_0.d.x, var_0.b.b.x))) - -369f))), ~select(~countOneBits(vec4<i32>(2147483647i, 3905i, -36694i, -2147483647i)), ~vec4<i32>(24900i, global2.b.x, 0i, u_input.d), !select(vec4<bool>(var_0.c, arg_0.x, var_0.a.b.x, false), vec4<bool>(var_0.c, true, false, false), arg_0.x)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-var_0.d.x), 4294967295u);
    return _wgslsmith_sub_u32(~(~4294967295u), 0u);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>) -> Struct_5 {
    var var_0 = -vec3<i32>(global1.b.x, -global1.b.x & _wgslsmith_sub_i32(-2147483647i, 1i), -1i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(arg_0.x, 24u)], 1f)), vec2<bool>((i32(-1i) * -2147483647i) != -firstLeadingBit(global2.b.x), !select(true, false, true)), 42664u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-487f + -224f))));
    global2 = Struct_5(func_4(func_3(func_2(var_1, arg_1.zwz, 1000f, reverseBits(vec4<i32>(91989i, global2.b.x, -16796i, global2.b.x)))), ~vec4<u32>(global2.a, global2.c, 125915u, 47544u) | reverseBits(countOneBits(vec4<u32>(4294967295u, u_input.c, global0[_wgslsmith_index_u32(global1.a, 24u)], 1u))), u_input.b), global1.b, firstTrailingBit(~(~_wgslsmith_mult_u32(global1.c, u_input.b.x))));
    var var_2 = (vec4<i32>(var_0.x, ~(global1.b.x | global2.b.x), min(~14816i, -1i), u_input.d) ^ abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.x, global1.b.x, -7628i, 1i), vec4<i32>(2147483647i, 1i, global2.b.x, global1.b.x)))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(~global2.a), 1u, ~0u << ((74325u ^ arg_0.x) % 32u), ~func_4(vec2<bool>(true, var_1.b.x), vec4<u32>(1u, 4294967295u, var_1.c, 4294967295u), u_input.b)), _wgslsmith_div_vec4_u32(~min(vec4<u32>(2002u, arg_0.x, 1u, 0u), vec4<u32>(1u, arg_0.x, global2.a, 9951u)), firstLeadingBit(~vec4<u32>(50161u, 22124u, 18162u, 4294967295u)))) % vec4<u32>(32u));
    var var_3 = func_2(var_1, select(arg_1.wzw, !vec3<bool>(any(var_1.b), arg_1.x | arg_1.x, arg_1.x), var_1.b.x), global3[_wgslsmith_index_u32(~u_input.b.x, 24u)], _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(4903i, -1i, 1i, global2.b.x)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(38068i, var_0.x, 1i, -3595i), -vec4<i32>(var_0.x, var_2.x, 33307i, -34297i), vec4<i32>(1i, 1i, 4327i, 1i) | vec4<i32>(u_input.d, var_0.x, 1i, global2.b.x)), reverseBits(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, 1i, var_0.x, global1.b.x), vec4<i32>(var_2.x, 13922i, -39849i, var_2.x), vec4<i32>(global1.b.x, var_0.x, -1i, var_0.x))), vec4<i32>(5242i | global1.b.x, -23025i, _wgslsmith_sub_i32(var_2.x, 0i), var_2.x) << (select(~vec4<u32>(u_input.b.x, 4294967295u, global0[_wgslsmith_index_u32(43157u, 24u)], 20658u), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.c, var_1.c, 1u, arg_0.x), vec4<u32>(87410u, 1u, global1.c, 4866u)), true) % vec4<u32>(32u))));
    return func_2(Struct_1(_wgslsmith_f_op_f32(abs(var_1.d)), vec2<bool>(true, false), ~global1.a ^ (max(30163u, global2.c) & ~u_input.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.d, var_1.a)) - -143f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(step(1538f, 3017f))), arg_1.x))), arg_1.wwx, 1948f, -_wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(var_3.b.x), var_3.b.x, -46078i, -global2.b.x), reverseBits(-vec4<i32>(global2.b.x, var_2.x, var_2.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 30>();
    global2 = func_1(u_input.b, vec4<bool>(true, true, true, true));
    let var_0 = u_input.b & u_input.b;
    var var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0 >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), var_0) % vec2<u32>(32u)), u_input.b), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, var_0) & ~vec2<u32>(var_0.x, 61842u), _wgslsmith_mod_vec2_u32(reverseBits(u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.c, 29689u), vec2<u32>(global2.c, 8066u))), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(select(var_0, ~var_0, vec2<bool>(true, true)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), true)).c, firstTrailingBit(reverseBits(vec4<u32>(4294967295u, var_0.x, ~global2.c, firstLeadingBit(93365u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-442f, global3[_wgslsmith_index_u32(global2.c, 24u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 24u)], 24u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 24u)], 24u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global1.c, 24u)], global3[_wgslsmith_index_u32(4215u, 24u)], global3[_wgslsmith_index_u32(4459u, 24u)], -591f))))), vec3<i32>(global2.b.x, firstTrailingBit(-15064i), _wgslsmith_mult_i32(~global1.b.x << (abs(u_input.b.x) % 32u), -1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], -822f, -1439f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-932f, -1409f, -280f), vec3<f32>(288f, global3[_wgslsmith_index_u32(0u, 24u)], 777f))))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 24u)] - -1257f), global3[_wgslsmith_index_u32(global1.c, 24u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a, 24u)], 24u)]) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(var_0.x, 24u)], global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(global2.a, 24u)]), vec3<f32>(-1484f, global3[_wgslsmith_index_u32(var_0.x, 24u)], -676f))))));
}

