struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21>;

var<private> global1: array<u32, 32>;

var<private> global2: Struct_5;

var<private> global3: array<i32, 18> = array<i32, 18>(36421i, -1039i, 0i, i32(-2147483648), i32(-2147483648), 39261i, 0i, i32(-2147483648), 2147483647i, -57949i, i32(-2147483648), -4612i, 1i, 17664i, 0i, -1i, -1i, -1i);

var<private> global4: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(vec3<f32>(846f, 768f, 684f), Struct_4(2147483647i, 781f, Struct_1(true, vec2<i32>(-1i, 0i), vec4<bool>(false, false, true, false))), Struct_3(2030f, vec3<bool>(false, true, true), Struct_2(Struct_1(false, vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(false, false, false, false)), Struct_1(true, vec2<i32>(1i, 2632i), vec4<bool>(true, true, true, false)), Struct_1(false, vec2<i32>(-15605i, 2147483647i), vec4<bool>(true, false, true, false)))), Struct_4(2147483647i, -320f, Struct_1(true, vec2<i32>(2147483647i, 34521i), vec4<bool>(false, false, false, true)))), Struct_5(vec3<f32>(-407f, -1730f, -950f), Struct_4(-18921i, 236f, Struct_1(true, vec2<i32>(40528i, 2147483647i), vec4<bool>(false, true, false, false))), Struct_3(-345f, vec3<bool>(true, false, true), Struct_2(Struct_1(true, vec2<i32>(28565i, 0i), vec4<bool>(false, false, false, true)), Struct_1(true, vec2<i32>(46719i, 0i), vec4<bool>(true, false, true, false)), Struct_1(false, vec2<i32>(i32(-2147483648), 1i), vec4<bool>(true, true, false, true)))), Struct_4(-16128i, -921f, Struct_1(false, vec2<i32>(-21745i, 1i), vec4<bool>(false, false, false, false)))), Struct_5(vec3<f32>(-773f, -193f, 1091f), Struct_4(-10971i, -1568f, Struct_1(false, vec2<i32>(-25886i, 2147483647i), vec4<bool>(true, false, true, true))), Struct_3(2415f, vec3<bool>(false, true, true), Struct_2(Struct_1(false, vec2<i32>(-6188i, 1i), vec4<bool>(true, false, false, false)), Struct_1(true, vec2<i32>(2147483647i, 22515i), vec4<bool>(true, false, true, false)), Struct_1(false, vec2<i32>(-10667i, 31078i), vec4<bool>(false, false, false, false)))), Struct_4(-1i, 1679f, Struct_1(true, vec2<i32>(-19566i, 2147483647i), vec4<bool>(true, false, true, false)))), Struct_5(vec3<f32>(-200f, -107f, 1930f), Struct_4(-1i, -1351f, Struct_1(false, vec2<i32>(-12376i, i32(-2147483648)), vec4<bool>(false, false, false, true))), Struct_3(-850f, vec3<bool>(true, true, true), Struct_2(Struct_1(false, vec2<i32>(-1i, -63849i), vec4<bool>(false, false, false, true)), Struct_1(false, vec2<i32>(i32(-2147483648), -63453i), vec4<bool>(true, false, false, true)), Struct_1(false, vec2<i32>(52763i, -46081i), vec4<bool>(false, true, false, true)))), Struct_4(2147483647i, -939f, Struct_1(true, vec2<i32>(2147483647i, 30901i), vec4<bool>(true, false, false, true)))), Struct_5(vec3<f32>(550f, 869f, 1598f), Struct_4(21326i, -1177f, Struct_1(true, vec2<i32>(2147483647i, -1i), vec4<bool>(false, true, false, false))), Struct_3(945f, vec3<bool>(true, false, true), Struct_2(Struct_1(false, vec2<i32>(-35781i, -3124i), vec4<bool>(false, true, true, false)), Struct_1(true, vec2<i32>(-1i, -1i), vec4<bool>(false, true, false, false)), Struct_1(false, vec2<i32>(0i, -9572i), vec4<bool>(false, true, true, true)))), Struct_4(0i, 1748f, Struct_1(true, vec2<i32>(1i, -55418i), vec4<bool>(false, true, false, false)))), Struct_5(vec3<f32>(-1000f, -1489f, 925f), Struct_4(1i, -246f, Struct_1(true, vec2<i32>(2147483647i, 1i), vec4<bool>(false, false, false, false))), Struct_3(899f, vec3<bool>(true, true, true), Struct_2(Struct_1(true, vec2<i32>(i32(-2147483648), 0i), vec4<bool>(true, false, false, true)), Struct_1(true, vec2<i32>(-1i, -1i), vec4<bool>(false, false, false, false)), Struct_1(true, vec2<i32>(-1i, -1i), vec4<bool>(false, true, false, false)))), Struct_4(-88546i, 545f, Struct_1(false, vec2<i32>(31213i, 1i), vec4<bool>(true, false, true, false)))), Struct_5(vec3<f32>(1855f, -837f, -1061f), Struct_4(-50001i, -515f, Struct_1(true, vec2<i32>(9651i, 32100i), vec4<bool>(true, true, false, true))), Struct_3(1792f, vec3<bool>(true, false, true), Struct_2(Struct_1(false, vec2<i32>(-19727i, 3853i), vec4<bool>(true, false, true, true)), Struct_1(false, vec2<i32>(-77073i, -51839i), vec4<bool>(false, false, false, false)), Struct_1(false, vec2<i32>(-1i, -1i), vec4<bool>(false, false, true, true)))), Struct_4(19243i, 957f, Struct_1(true, vec2<i32>(-15541i, 0i), vec4<bool>(true, true, false, true)))), Struct_5(vec3<f32>(-1414f, 513f, 1254f), Struct_4(3672i, 420f, Struct_1(true, vec2<i32>(-22446i, -1i), vec4<bool>(false, false, true, true))), Struct_3(-311f, vec3<bool>(true, false, false), Struct_2(Struct_1(true, vec2<i32>(-17180i, 2147483647i), vec4<bool>(true, true, false, false)), Struct_1(false, vec2<i32>(8742i, 2147483647i), vec4<bool>(true, false, true, true)), Struct_1(false, vec2<i32>(-16240i, 0i), vec4<bool>(true, false, false, false)))), Struct_4(547i, -1195f, Struct_1(true, vec2<i32>(-3280i, 1i), vec4<bool>(true, false, false, false)))), Struct_5(vec3<f32>(-956f, 1000f, 219f), Struct_4(5339i, -155f, Struct_1(false, vec2<i32>(i32(-2147483648), -1i), vec4<bool>(false, false, false, true))), Struct_3(1029f, vec3<bool>(false, false, true), Struct_2(Struct_1(true, vec2<i32>(-1i, i32(-2147483648)), vec4<bool>(true, true, false, false)), Struct_1(true, vec2<i32>(22365i, -38494i), vec4<bool>(true, false, true, false)), Struct_1(false, vec2<i32>(16187i, 49027i), vec4<bool>(true, true, false, true)))), Struct_4(-1i, 889f, Struct_1(false, vec2<i32>(35979i, -26864i), vec4<bool>(false, false, false, true)))), Struct_5(vec3<f32>(1493f, 1000f, -1585f), Struct_4(-1i, 108f, Struct_1(true, vec2<i32>(2147483647i, 2147483647i), vec4<bool>(false, true, true, true))), Struct_3(111f, vec3<bool>(true, true, false), Struct_2(Struct_1(false, vec2<i32>(i32(-2147483648), 15186i), vec4<bool>(false, true, true, false)), Struct_1(false, vec2<i32>(-5752i, 0i), vec4<bool>(false, true, false, true)), Struct_1(false, vec2<i32>(7165i, -26630i), vec4<bool>(false, true, false, true)))), Struct_4(-35176i, 409f, Struct_1(false, vec2<i32>(24515i, 0i), vec4<bool>(false, true, false, true)))), Struct_5(vec3<f32>(2291f, -715f, 1100f), Struct_4(-13355i, 556f, Struct_1(true, vec2<i32>(11064i, -26421i), vec4<bool>(true, false, false, true))), Struct_3(1518f, vec3<bool>(false, false, false), Struct_2(Struct_1(false, vec2<i32>(-1i, i32(-2147483648)), vec4<bool>(false, true, false, false)), Struct_1(true, vec2<i32>(31116i, -12186i), vec4<bool>(true, true, false, true)), Struct_1(true, vec2<i32>(0i, -12669i), vec4<bool>(true, false, true, true)))), Struct_4(11737i, -789f, Struct_1(true, vec2<i32>(-1i, 1i), vec4<bool>(true, true, false, false)))), Struct_5(vec3<f32>(736f, 750f, 1028f), Struct_4(1i, -769f, Struct_1(false, vec2<i32>(81464i, i32(-2147483648)), vec4<bool>(false, true, false, false))), Struct_3(592f, vec3<bool>(true, true, false), Struct_2(Struct_1(true, vec2<i32>(-29213i, 0i), vec4<bool>(false, true, true, true)), Struct_1(true, vec2<i32>(1i, 0i), vec4<bool>(true, true, true, false)), Struct_1(true, vec2<i32>(0i, -41518i), vec4<bool>(false, false, false, false)))), Struct_4(-1i, -447f, Struct_1(true, vec2<i32>(18413i, 3615i), vec4<bool>(false, true, false, true)))), Struct_5(vec3<f32>(258f, -727f, -2113f), Struct_4(0i, -506f, Struct_1(false, vec2<i32>(14001i, 3227i), vec4<bool>(false, false, true, false))), Struct_3(-233f, vec3<bool>(false, true, true), Struct_2(Struct_1(false, vec2<i32>(-1i, -1i), vec4<bool>(false, true, false, false)), Struct_1(false, vec2<i32>(36852i, 10529i), vec4<bool>(true, false, true, false)), Struct_1(false, vec2<i32>(-24207i, 114118i), vec4<bool>(false, true, false, false)))), Struct_4(-8939i, -1000f, Struct_1(false, vec2<i32>(-8558i, 0i), vec4<bool>(true, true, false, true)))), Struct_5(vec3<f32>(425f, -257f, 1023f), Struct_4(-1i, -742f, Struct_1(true, vec2<i32>(i32(-2147483648), -23352i), vec4<bool>(false, true, true, true))), Struct_3(-596f, vec3<bool>(false, false, false), Struct_2(Struct_1(true, vec2<i32>(-1i, -18129i), vec4<bool>(false, false, true, true)), Struct_1(true, vec2<i32>(i32(-2147483648), -7552i), vec4<bool>(false, true, true, true)), Struct_1(true, vec2<i32>(0i, -44458i), vec4<bool>(false, true, true, true)))), Struct_4(2147483647i, -532f, Struct_1(true, vec2<i32>(55810i, 35818i), vec4<bool>(true, false, false, false)))), Struct_5(vec3<f32>(889f, 212f, -741f), Struct_4(0i, 676f, Struct_1(false, vec2<i32>(-69397i, 0i), vec4<bool>(false, false, true, false))), Struct_3(359f, vec3<bool>(false, false, true), Struct_2(Struct_1(false, vec2<i32>(0i, -35901i), vec4<bool>(true, true, false, false)), Struct_1(true, vec2<i32>(-19699i, 1i), vec4<bool>(true, false, false, true)), Struct_1(true, vec2<i32>(0i, 2147483647i), vec4<bool>(false, false, true, false)))), Struct_4(31020i, -298f, Struct_1(false, vec2<i32>(1i, 3207i), vec4<bool>(true, false, true, true)))), Struct_5(vec3<f32>(-703f, 832f, 924f), Struct_4(0i, -458f, Struct_1(false, vec2<i32>(2147483647i, -95127i), vec4<bool>(false, false, true, false))), Struct_3(-2706f, vec3<bool>(false, false, true), Struct_2(Struct_1(true, vec2<i32>(i32(-2147483648), 23035i), vec4<bool>(false, false, false, false)), Struct_1(true, vec2<i32>(-15584i, 1i), vec4<bool>(true, true, false, true)), Struct_1(true, vec2<i32>(-10038i, 3717i), vec4<bool>(false, false, true, true)))), Struct_4(-1i, 330f, Struct_1(true, vec2<i32>(0i, 2147483647i), vec4<bool>(false, false, true, false)))), Struct_5(vec3<f32>(799f, -913f, 674f), Struct_4(37075i, -734f, Struct_1(true, vec2<i32>(0i, 2147483647i), vec4<bool>(false, true, false, true))), Struct_3(441f, vec3<bool>(false, false, true), Struct_2(Struct_1(false, vec2<i32>(1i, -55153i), vec4<bool>(true, false, true, true)), Struct_1(true, vec2<i32>(0i, 1i), vec4<bool>(false, false, true, true)), Struct_1(false, vec2<i32>(i32(-2147483648), -37793i), vec4<bool>(true, true, true, false)))), Struct_4(1i, 591f, Struct_1(false, vec2<i32>(1i, i32(-2147483648)), vec4<bool>(true, false, true, false)))), Struct_5(vec3<f32>(1337f, 363f, -181f), Struct_4(-53155i, -404f, Struct_1(true, vec2<i32>(17804i, 1i), vec4<bool>(false, true, true, false))), Struct_3(1000f, vec3<bool>(true, false, true), Struct_2(Struct_1(false, vec2<i32>(0i, -11566i), vec4<bool>(false, true, false, false)), Struct_1(true, vec2<i32>(0i, -1i), vec4<bool>(false, true, true, false)), Struct_1(true, vec2<i32>(i32(-2147483648), 1i), vec4<bool>(false, false, false, false)))), Struct_4(2147483647i, -659f, Struct_1(false, vec2<i32>(i32(-2147483648), -48205i), vec4<bool>(false, false, true, false)))), Struct_5(vec3<f32>(-495f, -991f, 117f), Struct_4(0i, 246f, Struct_1(true, vec2<i32>(-12317i, 2147483647i), vec4<bool>(true, true, false, false))), Struct_3(428f, vec3<bool>(false, false, true), Struct_2(Struct_1(true, vec2<i32>(-11579i, -1i), vec4<bool>(false, true, true, true)), Struct_1(true, vec2<i32>(16354i, 0i), vec4<bool>(false, true, true, true)), Struct_1(true, vec2<i32>(28567i, 20201i), vec4<bool>(false, false, false, true)))), Struct_4(2147483647i, 106f, Struct_1(false, vec2<i32>(-1i, 6862i), vec4<bool>(true, true, true, true)))), Struct_5(vec3<f32>(1000f, -2213f, -922f), Struct_4(1i, 2124f, Struct_1(true, vec2<i32>(i32(-2147483648), -12885i), vec4<bool>(false, false, true, true))), Struct_3(1181f, vec3<bool>(false, false, false), Struct_2(Struct_1(true, vec2<i32>(2147483647i, 1i), vec4<bool>(true, true, false, true)), Struct_1(true, vec2<i32>(64992i, 2147483647i), vec4<bool>(true, false, false, false)), Struct_1(true, vec2<i32>(1i, -1i), vec4<bool>(false, false, false, true)))), Struct_4(-34311i, -677f, Struct_1(false, vec2<i32>(35190i, -17611i), vec4<bool>(false, false, true, true)))), Struct_5(vec3<f32>(-2003f, 424f, 1170f), Struct_4(-1i, 1226f, Struct_1(true, vec2<i32>(1i, 1i), vec4<bool>(false, true, true, true))), Struct_3(-745f, vec3<bool>(true, true, true), Struct_2(Struct_1(false, vec2<i32>(-22063i, -1i), vec4<bool>(true, false, true, true)), Struct_1(true, vec2<i32>(-1i, -9403i), vec4<bool>(true, false, true, true)), Struct_1(false, vec2<i32>(48286i, i32(-2147483648)), vec4<bool>(false, true, true, false)))), Struct_4(1i, 731f, Struct_1(true, vec2<i32>(-10128i, -50429i), vec4<bool>(false, true, true, false)))), Struct_5(vec3<f32>(-326f, 398f, -264f), Struct_4(2147483647i, -390f, Struct_1(true, vec2<i32>(12705i, -1i), vec4<bool>(true, false, false, true))), Struct_3(-685f, vec3<bool>(false, true, false), Struct_2(Struct_1(true, vec2<i32>(36513i, 4522i), vec4<bool>(false, false, true, true)), Struct_1(false, vec2<i32>(i32(-2147483648), -10227i), vec4<bool>(true, false, true, false)), Struct_1(true, vec2<i32>(2147483647i, 2147483647i), vec4<bool>(true, true, true, false)))), Struct_4(0i, 1177f, Struct_1(true, vec2<i32>(i32(-2147483648), 18020i), vec4<bool>(false, true, false, true)))));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 258f, _wgslsmith_f_op_f32(exp2(global2.c.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global2.d.b, global2.a.x, false)), _wgslsmith_f_op_f32(floor(global2.d.b)), -156f) * vec3<f32>(-1718f, -1000f, _wgslsmith_f_op_f32(floor(534f)))), arg_0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.b, 941f, -1650f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-115f, 1087f, -2251f) + vec3<f32>(-1000f, global2.b.b, -300f))))));
    global4 = array<Struct_5, 22>();
    var var_1 = ~(countOneBits(abs(~vec3<u32>(82077u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], u_input.d.x))) >> (_wgslsmith_sub_vec3_u32(~firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 32u)], u_input.a, 10442u)), _wgslsmith_div_vec3_u32(vec3<u32>(16853u, 42384u, 39306u) & vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35111u, 32u)], 32u)], 32u)], 69043u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 32u)], 32u)], 0u, 1u))) % vec3<u32>(32u)));
    global1 = array<u32, 32>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(696f - 920f), _wgslsmith_f_op_f32(-var_0.x)))))), select(select(global2.c.c.a.c.wzz, !vec3<bool>(global2.b.c.a, arg_0.x, true), arg_0), select(arg_0, vec3<bool>(!arg_0.x, all(vec4<bool>(arg_0.x, true, true, arg_0.x)), !global2.b.c.c.x), any(global2.b.c.c)), false), global2.c.c);
    return vec3<i32>(var_2.c.b.b.x, abs(-88161i), select(firstTrailingBit(-u_input.c), 1i, true));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_3 {
    var var_0 = ~select(-max(u_input.c >> (arg_1.x % 32u), firstTrailingBit(global2.b.c.b.x)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(global3[_wgslsmith_index_u32(arg_1.x, 18u)], global2.b.a, -1i), vec3<i32>(34275i, 2147483647i, global2.c.c.a.b.x), global2.b.c.a) ^ func_3(vec3<bool>(global2.b.c.a, global2.d.c.c.x, arg_0.x)), -vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 18u)], 2726i, u_input.c)), !(all(arg_0.xx) || (global2.c.a <= 2877f)));
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.d, select(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 32u)], 1u, 88340u), ~arg_1.x), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.d.x, 0u)) << (~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)]) % vec2<u32>(32u))), arg_1.xy, global2.c.b.x));
    var var_2 = vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~0u)), firstTrailingBit(7611u)), 32u)], ~26024u);
    var var_3 = Struct_5(global2.a, global2.d, global2.c, global2.d);
    let var_4 = vec4<bool>(!(!(!(global2.d.c.a || global2.b.c.a))), true, !any(vec2<bool>(true, true)) | !all(global2.c.b), var_3.d.c.c.x);
    return Struct_3(-353f, vec3<bool>(all(var_3.c.c.b.c), !global2.b.c.c.x, (global2.a.x > -805f) || true), Struct_2(Struct_1(arg_0.x, _wgslsmith_div_vec2_i32(vec2<i32>(8738i, 1i), ~var_3.b.c.b), select(global2.d.c.c, global2.b.c.c, vec4<bool>(arg_0.x, var_3.c.b.x, arg_0.x, false))), Struct_1(true, min(vec2<i32>(global3[_wgslsmith_index_u32(1u, 18u)], 0i), var_3.b.c.b), select(var_3.c.c.c.c, arg_0, !vec4<bool>(global2.d.c.c.x, false, false, global2.c.c.b.c.x))), var_3.c.c.c));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(global2.a.x));
    global2 = Struct_5(global2.a, global2.b, global2.c, Struct_4(31807i, _wgslsmith_f_op_f32(f32(-1f) * -754f), arg_1.c.a));
    var var_1 = (50978u >= u_input.d.x) || (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 + global2.d.b), 1f, global2.b.c.c.x & global2.c.c.c.a)))) <= var_0);
    var var_2 = Struct_4(~(-1i), arg_1.a, func_2(arg_1.c.b.c, _wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 7246u), vec3<u32>(52535u, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)]), vec3<u32>(u_input.d.x, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)])), select(vec3<u32>(29943u, u_input.d.x, 1u), vec3<u32>(39485u, u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(81944u, 32u)], 32u)]), false) << ((vec3<u32>(u_input.a, u_input.a, 1u) | vec3<u32>(global1[_wgslsmith_index_u32(1u, 32u)], 45360u, 27470u)) % vec3<u32>(32u)))).c.b);
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global2.a)))), global2.b, global2.c, global2.d);
    return u_input.a;
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = vec3<u32>(1u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~firstTrailingBit(5058u), 32u)] & (abs(1u) >> (1u % 32u)), func_4(!(!global2.d.c.c.x), func_2(!global2.b.c.c, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], global1[_wgslsmith_index_u32(0u, 32u)], 15345u) | vec3<u32>(4294967295u, 0u, 4294967295u)), -(vec4<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 18u)], 2147483647i, 60887i, global2.c.c.b.b.x) ^ vec4<i32>(arg_0, 57880i, -23250i, arg_0)))), _wgslsmith_sub_u32(~min(~0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~0u, 11665u, firstLeadingBit(u_input.a)), vec4<u32>(u_input.a, 41487u, 4294967295u, ~1u))));
    var var_1 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.yy, var_0.yx), 1u, ~u_input.a, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(~4294967295u, max(global1[_wgslsmith_index_u32(15263u & global1[_wgslsmith_index_u32(11520u, 32u)], 32u)], _wgslsmith_add_u32(u_input.a, global1[_wgslsmith_index_u32(1u, 32u)])), var_0.x, min(0u, u_input.d.x | 4294967295u)), vec4<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 32u)], _wgslsmith_sub_u32(52612u, u_input.d.x), min(u_input.d.x, global1[_wgslsmith_index_u32(54960u, 32u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(15163u, 0u, global1[_wgslsmith_index_u32(4294967295u, 32u)]), var_0)) >> (~(vec4<u32>(4729u, var_0.x, 0u, var_0.x) | vec4<u32>(911u, 0u, 85993u, global1[_wgslsmith_index_u32(u_input.a, 32u)])) % vec4<u32>(32u))), (min(~vec4<u32>(global1[_wgslsmith_index_u32(var_0.x, 32u)], 56116u, u_input.a, var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(var_0.x, 3246u, var_0.x, u_input.d.x))) | vec4<u32>(_wgslsmith_clamp_u32(var_0.x, global1[_wgslsmith_index_u32(15466u, 32u)], u_input.a), _wgslsmith_div_u32(var_0.x, 25751u), u_input.d.x | 4294967295u, global1[_wgslsmith_index_u32(abs(1u), 32u)])) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 32u)], 32u)], ~var_0.x, 23526u, ~68265u), ~vec4<u32>(global1[_wgslsmith_index_u32(2229u, 32u)], u_input.a, global1[_wgslsmith_index_u32(var_0.x, 32u)], 4294967295u)) % vec4<u32>(32u)));
    var_1 = ~select(vec4<u32>(~var_1.x, 30703u, countOneBits(47251u) << (_wgslsmith_div_u32(global1[_wgslsmith_index_u32(var_0.x, 32u)], 63782u) % 32u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(28755u, u_input.a), ~4294967295u)), min(reverseBits(vec4<u32>(1u, u_input.d.x, 60001u, 1u) & vec4<u32>(37796u, 24830u, var_1.x, 42585u)), min(~vec4<u32>(0u, 1u, 0u, 57164u), vec4<u32>(var_0.x, var_0.x, u_input.d.x, var_1.x) >> (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], 0u, 4294967295u, u_input.a) % vec4<u32>(32u)))), !global2.c.c.a.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0, ~(~var_1.xww)), 21u)] - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(754f, -1835f), 1766f, -1615f, _wgslsmith_f_op_f32(sign(global2.c.a))), _wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(var_1.x, 21u)]))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 32u)], 7507u), 21u)]))))))));
    return global1[_wgslsmith_index_u32(11061u, 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(func_1(global2.b.c.b.x), 22u)];
    let var_1 = !(!((_wgslsmith_f_op_f32(trunc(1023f)) > _wgslsmith_f_op_f32(-var_0.d.b)) | !var_0.b.c.c.x));
    let var_2 = 0u;
    var var_3 = var_0.d.c;
    var var_4 = func_2(func_2(!global2.c.c.a.c, min(~vec3<u32>(var_2, 12043u, var_2), vec3<u32>(1u, ~global1[_wgslsmith_index_u32(var_2, 32u)], var_2))).c.a.c, vec3<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2, 32u)], 32u)], var_2, _wgslsmith_add_u32(func_1(global2.b.c.b.x), var_2))).c;
    let var_5 = func_2(vec4<bool>(false, false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1081f + global2.c.a))) != -532f, all(vec3<bool>(global2.c.b.x, select(var_0.d.c.a, false, var_1), any(var_3.c)))), vec3<u32>(min(~0u, 13985u << (var_2 % 32u)), global1[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(3217u, 32u)] >> (89465u % 32u)) ^ global1[_wgslsmith_index_u32(~1u, 32u)], 32u)], _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 1u, u_input.a), vec4<u32>(var_2, 0u, u_input.a, 1u)) ^ ~1u) << (~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], var_2, global1[_wgslsmith_index_u32(var_2, 32u)]), vec3<u32>(53337u, 33068u, global1[_wgslsmith_index_u32(4294967295u, 32u)])), vec3<u32>(0u, 1u, 51741u)) % vec3<u32>(32u))).c;
    let var_6 = _wgslsmith_mod_vec2_u32(vec2<u32>(max(var_2 << (1u % 32u), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 1u)) << (var_2 % 32u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(50205u, 1u, u_input.d.x), vec3<u32>(4294967295u, 4294967295u, u_input.a)), ~117478u, 45746u | u_input.a), global1[_wgslsmith_index_u32(u_input.d.x, 32u)])), vec2<u32>(39749u, _wgslsmith_sub_u32(var_2 << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 72958u, 1u), vec3<u32>(u_input.a, 97297u, 1u)) % 32u), _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a) ^ 34543u)));
    var_0 = global4[_wgslsmith_index_u32(70419u, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_div_vec4_u32(abs(vec4<u32>(global1[_wgslsmith_index_u32(var_2, 32u)], 4294967295u, var_6.x, u_input.d.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(var_6.x, 32u)], var_6.x, u_input.a), vec4<u32>(4294967295u, var_2, 12348u, u_input.d.x)))));
}

