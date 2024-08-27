struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
    d: vec2<u32>,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_3,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27>;

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(false, vec2<f32>(1561f, -1373f), Struct_1(vec3<i32>(1i, i32(-2147483648), -1i), 9267u, vec3<u32>(0u, 1u, 4294967295u)), Struct_3(1000f, vec3<f32>(-475f, 941f, 838f), Struct_2(vec4<bool>(false, true, false, true), 32607u, vec2<u32>(0u, 22155u), true, vec2<i32>(-4605i, 1i)), vec2<u32>(86842u, 0u), 910f), vec2<bool>(true, true)), Struct_4(false, vec2<f32>(-388f, -239f), Struct_1(vec3<i32>(20535i, -16863i, -18526i), 4294967295u, vec3<u32>(20858u, 33028u, 12148u)), Struct_3(-1633f, vec3<f32>(178f, -1349f, -1000f), Struct_2(vec4<bool>(false, false, false, true), 30822u, vec2<u32>(16741u, 4294967295u), true, vec2<i32>(-12610i, 1i)), vec2<u32>(24885u, 4880u), 919f), vec2<bool>(true, false)), Struct_4(true, vec2<f32>(666f, -1439f), Struct_1(vec3<i32>(i32(-2147483648), 1i, 3637i), 23512u, vec3<u32>(0u, 1u, 1u)), Struct_3(-751f, vec3<f32>(499f, 1000f, -205f), Struct_2(vec4<bool>(false, true, true, false), 3981u, vec2<u32>(0u, 0u), true, vec2<i32>(-6672i, 25166i)), vec2<u32>(4294967295u, 23433u), 107f), vec2<bool>(false, true)), Struct_4(true, vec2<f32>(-1470f, -932f), Struct_1(vec3<i32>(37867i, i32(-2147483648), 41241i), 0u, vec3<u32>(52200u, 0u, 1u)), Struct_3(-1831f, vec3<f32>(985f, -994f, 778f), Struct_2(vec4<bool>(false, false, true, true), 69850u, vec2<u32>(81309u, 9206u), true, vec2<i32>(1i, 82187i)), vec2<u32>(0u, 1888u), 990f), vec2<bool>(true, false)), Struct_4(false, vec2<f32>(375f, 521f), Struct_1(vec3<i32>(1i, 2147483647i, 2147483647i), 88998u, vec3<u32>(0u, 40583u, 33408u)), Struct_3(770f, vec3<f32>(854f, 494f, -791f), Struct_2(vec4<bool>(false, false, true, false), 0u, vec2<u32>(9484u, 4294967295u), false, vec2<i32>(2147483647i, -12095i)), vec2<u32>(4294967295u, 1u), -264f), vec2<bool>(true, false)), Struct_4(false, vec2<f32>(1460f, 706f), Struct_1(vec3<i32>(11211i, 24909i, -34176i), 1u, vec3<u32>(1u, 39385u, 2115u)), Struct_3(-1000f, vec3<f32>(-856f, -729f, 556f), Struct_2(vec4<bool>(true, true, false, true), 26987u, vec2<u32>(38076u, 5031u), false, vec2<i32>(0i, -1i)), vec2<u32>(4294967295u, 1u), -1000f), vec2<bool>(false, true)), Struct_4(false, vec2<f32>(2392f, -364f), Struct_1(vec3<i32>(i32(-2147483648), 33934i, 2147483647i), 19521u, vec3<u32>(11488u, 4294967295u, 248u)), Struct_3(-895f, vec3<f32>(-1123f, 854f, 418f), Struct_2(vec4<bool>(true, false, true, false), 8791u, vec2<u32>(32042u, 4294967295u), false, vec2<i32>(-12849i, -1i)), vec2<u32>(0u, 0u), -871f), vec2<bool>(false, true)), Struct_4(true, vec2<f32>(-1460f, 353f), Struct_1(vec3<i32>(-47770i, -10057i, 0i), 72870u, vec3<u32>(25191u, 0u, 0u)), Struct_3(999f, vec3<f32>(366f, -721f, -899f), Struct_2(vec4<bool>(false, true, true, false), 87718u, vec2<u32>(4294967295u, 0u), true, vec2<i32>(2147483647i, 37815i)), vec2<u32>(548u, 1u), 442f), vec2<bool>(true, true)), Struct_4(true, vec2<f32>(-164f, 475f), Struct_1(vec3<i32>(-7359i, i32(-2147483648), -34170i), 42754u, vec3<u32>(1u, 0u, 0u)), Struct_3(-1017f, vec3<f32>(604f, -266f, 408f), Struct_2(vec4<bool>(false, false, true, false), 0u, vec2<u32>(16254u, 4294967295u), true, vec2<i32>(0i, 1i)), vec2<u32>(52194u, 1u), -1000f), vec2<bool>(true, false)), Struct_4(true, vec2<f32>(-1183f, 864f), Struct_1(vec3<i32>(69247i, 20168i, 1i), 0u, vec3<u32>(4294967295u, 1u, 0u)), Struct_3(-566f, vec3<f32>(-848f, -1273f, 1000f), Struct_2(vec4<bool>(true, false, true, false), 1u, vec2<u32>(0u, 1905u), false, vec2<i32>(1i, 25368i)), vec2<u32>(85637u, 1u), -520f), vec2<bool>(false, true)), Struct_4(true, vec2<f32>(677f, 1739f), Struct_1(vec3<i32>(0i, -17877i, -36684i), 31584u, vec3<u32>(20392u, 4294967295u, 61004u)), Struct_3(-1733f, vec3<f32>(-1836f, -1000f, -403f), Struct_2(vec4<bool>(true, true, true, false), 0u, vec2<u32>(3910u, 36235u), false, vec2<i32>(-1i, i32(-2147483648))), vec2<u32>(30689u, 11378u), -750f), vec2<bool>(false, false)), Struct_4(false, vec2<f32>(313f, 509f), Struct_1(vec3<i32>(2147483647i, -30162i, 1i), 13563u, vec3<u32>(0u, 14733u, 36450u)), Struct_3(473f, vec3<f32>(805f, -1520f, -946f), Struct_2(vec4<bool>(true, false, false, false), 21305u, vec2<u32>(4294967295u, 83647u), false, vec2<i32>(-1i, -22883i)), vec2<u32>(32898u, 4294967295u), 2347f), vec2<bool>(false, true)), Struct_4(false, vec2<f32>(-284f, 344f), Struct_1(vec3<i32>(2873i, 34203i, 2147483647i), 51847u, vec3<u32>(72219u, 54645u, 20724u)), Struct_3(1000f, vec3<f32>(803f, 559f, 310f), Struct_2(vec4<bool>(false, false, true, true), 46547u, vec2<u32>(65658u, 1u), true, vec2<i32>(1i, 0i)), vec2<u32>(4294967295u, 4294967295u), -1154f), vec2<bool>(false, false)), Struct_4(true, vec2<f32>(511f, 1200f), Struct_1(vec3<i32>(-21211i, 2147483647i, -1408i), 86059u, vec3<u32>(100101u, 0u, 66864u)), Struct_3(-1000f, vec3<f32>(-1526f, -1186f, -361f), Struct_2(vec4<bool>(true, true, false, false), 5850u, vec2<u32>(47681u, 0u), false, vec2<i32>(1i, 2147483647i)), vec2<u32>(29179u, 4294967295u), 1000f), vec2<bool>(false, false)), Struct_4(true, vec2<f32>(1418f, -1000f), Struct_1(vec3<i32>(10249i, 9820i, 9468i), 0u, vec3<u32>(19338u, 104816u, 16708u)), Struct_3(-162f, vec3<f32>(1008f, 1029f, -2676f), Struct_2(vec4<bool>(false, true, true, false), 1u, vec2<u32>(1u, 4294967295u), true, vec2<i32>(i32(-2147483648), -13873i)), vec2<u32>(13864u, 0u), -929f), vec2<bool>(true, true)), Struct_4(true, vec2<f32>(-1589f, -1020f), Struct_1(vec3<i32>(-1i, 1i, -15468i), 55156u, vec3<u32>(99215u, 1u, 46628u)), Struct_3(488f, vec3<f32>(-2160f, -1192f, 1434f), Struct_2(vec4<bool>(true, false, true, true), 4294967295u, vec2<u32>(2903u, 4199u), true, vec2<i32>(-11534i, 2147483647i)), vec2<u32>(0u, 88926u), -378f), vec2<bool>(false, true)), Struct_4(true, vec2<f32>(-549f, -1000f), Struct_1(vec3<i32>(-11299i, -10439i, -1i), 42727u, vec3<u32>(0u, 51220u, 1u)), Struct_3(266f, vec3<f32>(1000f, 201f, -1462f), Struct_2(vec4<bool>(true, false, false, false), 90092u, vec2<u32>(40984u, 93938u), true, vec2<i32>(2921i, -1i)), vec2<u32>(13283u, 0u), 1765f), vec2<bool>(false, false)), Struct_4(true, vec2<f32>(-628f, 2455f), Struct_1(vec3<i32>(-57239i, -22467i, -75947i), 16401u, vec3<u32>(65113u, 4500u, 1u)), Struct_3(1283f, vec3<f32>(-876f, -744f, -861f), Struct_2(vec4<bool>(true, true, true, false), 4294967295u, vec2<u32>(1u, 4294967295u), true, vec2<i32>(2147483647i, 35982i)), vec2<u32>(65414u, 1u), 232f), vec2<bool>(false, true)), Struct_4(false, vec2<f32>(2305f, 1523f), Struct_1(vec3<i32>(2147483647i, 21065i, -1i), 76508u, vec3<u32>(25982u, 1u, 1u)), Struct_3(-1293f, vec3<f32>(-274f, -2076f, 198f), Struct_2(vec4<bool>(true, false, false, false), 0u, vec2<u32>(62573u, 11311u), false, vec2<i32>(2147483647i, 37282i)), vec2<u32>(1652u, 0u), 2307f), vec2<bool>(true, false)), Struct_4(true, vec2<f32>(-1553f, -791f), Struct_1(vec3<i32>(-1i, -35488i, 33985i), 4544u, vec3<u32>(30091u, 78010u, 4294967295u)), Struct_3(-1274f, vec3<f32>(751f, -1000f, 967f), Struct_2(vec4<bool>(false, false, false, true), 1u, vec2<u32>(4046u, 0u), false, vec2<i32>(2147483647i, i32(-2147483648))), vec2<u32>(11041u, 0u), -2287f), vec2<bool>(false, false)), Struct_4(false, vec2<f32>(-540f, -594f), Struct_1(vec3<i32>(-59344i, -42353i, -34831i), 4294967295u, vec3<u32>(4294967295u, 38813u, 22466u)), Struct_3(-1280f, vec3<f32>(1362f, -632f, -990f), Struct_2(vec4<bool>(true, true, false, true), 4294967295u, vec2<u32>(19095u, 40308u), true, vec2<i32>(-2732i, 2147483647i)), vec2<u32>(1u, 0u), -1539f), vec2<bool>(false, false)), Struct_4(false, vec2<f32>(-1463f, -1000f), Struct_1(vec3<i32>(-20303i, -6119i, 1i), 43947u, vec3<u32>(1u, 10839u, 4294967295u)), Struct_3(1950f, vec3<f32>(-892f, -657f, -126f), Struct_2(vec4<bool>(true, true, false, true), 77481u, vec2<u32>(0u, 4294967295u), true, vec2<i32>(11559i, 6197i)), vec2<u32>(0u, 0u), -1000f), vec2<bool>(false, false)), Struct_4(true, vec2<f32>(1442f, -299f), Struct_1(vec3<i32>(1i, -2555i, -41795i), 4294967295u, vec3<u32>(0u, 1u, 47540u)), Struct_3(393f, vec3<f32>(-1427f, -665f, -740f), Struct_2(vec4<bool>(false, false, true, false), 0u, vec2<u32>(1436u, 0u), false, vec2<i32>(-1i, i32(-2147483648))), vec2<u32>(103117u, 9663u), 247f), vec2<bool>(false, true)), Struct_4(true, vec2<f32>(935f, 580f), Struct_1(vec3<i32>(0i, 2147483647i, 1i), 0u, vec3<u32>(1u, 10938u, 7098u)), Struct_3(-1191f, vec3<f32>(205f, -422f, -2562f), Struct_2(vec4<bool>(false, true, true, true), 4294967295u, vec2<u32>(13027u, 32470u), true, vec2<i32>(-1i, -4657i)), vec2<u32>(68634u, 6905u), 1185f), vec2<bool>(false, true)), Struct_4(true, vec2<f32>(-918f, -3015f), Struct_1(vec3<i32>(8344i, 1i, 1i), 82724u, vec3<u32>(4294967295u, 4294967295u, 9852u)), Struct_3(2135f, vec3<f32>(156f, -143f, 767f), Struct_2(vec4<bool>(true, true, true, true), 4294967295u, vec2<u32>(25596u, 0u), false, vec2<i32>(-1i, 2147483647i)), vec2<u32>(52157u, 19749u), 802f), vec2<bool>(true, false)), Struct_4(true, vec2<f32>(-1157f, -626f), Struct_1(vec3<i32>(2147483647i, 0i, 2147483647i), 10749u, vec3<u32>(0u, 27803u, 33248u)), Struct_3(267f, vec3<f32>(3029f, -254f, -562f), Struct_2(vec4<bool>(false, true, true, true), 0u, vec2<u32>(1u, 0u), false, vec2<i32>(-6711i, 0i)), vec2<u32>(50490u, 33218u), 1595f), vec2<bool>(true, true)), Struct_4(false, vec2<f32>(-872f, -737f), Struct_1(vec3<i32>(52579i, -1i, 1i), 1u, vec3<u32>(19765u, 4294967295u, 31475u)), Struct_3(-336f, vec3<f32>(444f, -1694f, -1410f), Struct_2(vec4<bool>(false, false, false, false), 4294967295u, vec2<u32>(1u, 1u), true, vec2<i32>(-25153i, -40826i)), vec2<u32>(0u, 29409u), -656f), vec2<bool>(false, false)), Struct_4(false, vec2<f32>(-1000f, 1110f), Struct_1(vec3<i32>(-1i, i32(-2147483648), -158i), 1u, vec3<u32>(31815u, 15485u, 1u)), Struct_3(-729f, vec3<f32>(676f, -178f, -609f), Struct_2(vec4<bool>(false, false, false, false), 51423u, vec2<u32>(0u, 1u), false, vec2<i32>(-8384i, 23761i)), vec2<u32>(0u, 37923u), 725f), vec2<bool>(true, true)), Struct_4(false, vec2<f32>(-2333f, 373f), Struct_1(vec3<i32>(i32(-2147483648), -83068i, -356i), 43221u, vec3<u32>(1u, 52642u, 0u)), Struct_3(-705f, vec3<f32>(-395f, 163f, -660f), Struct_2(vec4<bool>(true, false, true, false), 92553u, vec2<u32>(4294967295u, 48844u), true, vec2<i32>(-60772i, 0i)), vec2<u32>(1u, 10924u), -150f), vec2<bool>(true, false)), Struct_4(false, vec2<f32>(-520f, -767f), Struct_1(vec3<i32>(0i, i32(-2147483648), 1i), 0u, vec3<u32>(4294967295u, 799u, 2527u)), Struct_3(351f, vec3<f32>(579f, -1511f, -1275f), Struct_2(vec4<bool>(true, false, true, false), 1u, vec2<u32>(6501u, 20489u), false, vec2<i32>(2147483647i, 409i)), vec2<u32>(1u, 44967u), 1000f), vec2<bool>(true, false)));

var<private> global2: f32 = -831f;

var<private> global3: array<i32, 26> = array<i32, 26>(4i, 0i, 2147483647i, 15353i, 2147483647i, -1i, -6396i, -24528i, i32(-2147483648), 2147483647i, 23062i, -51429i, -31756i, -44113i, 90746i, 23684i, 21252i, 0i, -18097i, 19872i, 2147483647i, i32(-2147483648), 2074i, 1i, -11175i, 32186i);

var<private> global4: Struct_3 = Struct_3(113f, vec3<f32>(-910f, -1234f, 290f), Struct_2(vec4<bool>(false, false, true, true), 84342u, vec2<u32>(0u, 4294967295u), false, vec2<i32>(i32(-2147483648), -1i)), vec2<u32>(42701u, 4608u), -410f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<i32>) -> vec4<bool> {
    var var_0 = Struct_2(vec4<bool>(global4.c.d, false, false, global4.c.a.x), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(364u, global4.c.b), ~global4.d.x), _wgslsmith_div_vec2_u32(~(~(~arg_0.c.zx)), ~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(32392u, global4.d.x), global4.c.c), global4.c.c, abs(vec2<u32>(0u, arg_0.b)))), true, u_input.b.xx);
    global4 = Struct_3(global4.b.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.e, -128f, arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1))))), global4.c, reverseBits(vec2<u32>(var_0.b, ~4294967295u)), 764f);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, -367f, -2340f, arg_1.x)), vec4<f32>(-2575f, arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(abs(arg_1.x)))) * vec4<f32>(354f, _wgslsmith_div_f32(1f, global4.a), 1000f, global4.e)) * vec4<f32>(arg_1.x, global4.b.x, _wgslsmith_f_op_f32(min(-858f, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1484f, _wgslsmith_f_op_f32(select(global4.a, -164f, true)))))));
    global3 = array<i32, 26>();
    global0 = array<vec3<u32>, 27>();
    return !global4.c.a;
}

fn func_2() -> Struct_5 {
    let var_0 = ~global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~(~global4.d.x)), 1u), 26u)];
    var var_1 = Struct_1(firstTrailingBit(u_input.b.wyy), global4.d.x, vec3<u32>(firstTrailingBit(~global4.c.b) & 63286u, ~46973u, global4.c.c.x));
    let var_2 = Struct_2(global4.c.a, (abs(min(4294967295u, 4294967295u)) ^ global4.d.x) ^ 1u, ~(_wgslsmith_mod_vec2_u32(~var_1.c.zx, var_1.c.yx) ^ vec2<u32>(~11399u, var_1.c.x)), false, _wgslsmith_div_vec2_i32(global4.c.e, u_input.b.ww));
    let var_3 = 2494f;
    var var_4 = -137f;
    return Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.a))) - var_3), global4.b, Struct_2(select(select(vec4<bool>(global4.c.a.x, false, false, false), vec4<bool>(false, false, var_2.a.x, true), true), !global4.c.a, global4.c.a), 0u, global4.c.c, var_2.a.x, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 3929i), vec2<i32>(2147483647i, u_input.c.x))), ~(vec2<u32>(0u, global4.c.b) << (_wgslsmith_div_vec2_u32(vec2<u32>(global4.d.x, var_1.b), vec2<u32>(var_1.c.x, 0u)) % vec2<u32>(32u))), -1828f), var_2, Struct_3(_wgslsmith_f_op_f32(-2327f + var_3), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.b) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global4.b)))), Struct_2(func_3(Struct_1(vec3<i32>(-53413i, u_input.c.x, global4.c.e.x), 47212u, vec3<u32>(42257u, 1u, var_2.c.x)), _wgslsmith_f_op_vec3_f32(global4.b - vec3<f32>(var_3, 1215f, var_3)), -vec3<i32>(-2147483647i, 13374i, global4.c.e.x)), var_1.b, vec2<u32>(~30863u, ~1u), true, max(vec2<i32>(var_1.a.x, global4.c.e.x), u_input.a.wy) & u_input.c.yy), ~(var_2.c >> (vec2<u32>(41997u, 1u) % vec2<u32>(32u))) | ~abs(vec2<u32>(55368u, var_1.b)), global4.b.x), var_2, Struct_4(any(var_2.a.wxw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, var_3)) - _wgslsmith_f_op_vec2_f32(ceil(global4.b.zz))), Struct_1(u_input.a.wxw, 79720u, global0[_wgslsmith_index_u32(~global4.d.x, 27u)]), Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -896f))), vec3<f32>(-1277f, _wgslsmith_f_op_f32(trunc(627f)), _wgslsmith_div_f32(var_3, -1662f)), Struct_2(vec4<bool>(var_2.d, global4.c.a.x, var_2.a.x, true), var_1.b & global4.d.x, ~var_1.c.xx, true && global4.c.d, u_input.b.yy), vec2<u32>(_wgslsmith_sub_u32(var_1.b, 12537u), var_2.b), 238f), select(vec2<bool>(true, true), global4.c.a.zy, select(!vec2<bool>(global4.c.d, true), global4.c.a.ww, vec2<bool>(var_2.d, false)))));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = func_2();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c.a)) - _wgslsmith_f_op_f32(global4.a + var_0.c.b.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.x, -296f)), var_0.e.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(-1458f, var_0.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -843f)))), _wgslsmith_f_op_f32(366f * -394f)));
    let var_2 = true;
    global4 = func_2().e.d;
    global3 = array<i32, 26>();
    return 49941u;
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_1(vec3<i32>(func_2().b.e.x, abs(u_input.b.x) & arg_0.b.e.x, ~27528i) ^ vec3<i32>(-2147483647i, countOneBits(arg_0.c.c.e.x), _wgslsmith_add_i32(1i, global4.c.e.x)), abs(arg_0.e.c.c.x), vec3<u32>(~13507u, 27441u, 12376u));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.a * _wgslsmith_div_f32(-914f, 176f)))), _wgslsmith_f_op_f32(step(-370f, arg_0.a.e))), _wgslsmith_f_op_f32(1f + global4.e), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-682f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_0.a.e))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.b.x))))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 245f))));
    global0 = array<vec3<u32>, 27>();
    global3 = array<i32, 26>();
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.c.a.x;
    var var_1 = -53754i;
    let var_2 = global4.c.a;
    let var_3 = func_4(Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e)), vec3<f32>(_wgslsmith_f_op_f32(-829f * global4.e), _wgslsmith_f_op_f32(f32(-1f) * -912f), _wgslsmith_f_op_f32(-1482f * global4.a)), Struct_2(!vec4<bool>(true, var_2.x, var_2.x, false), ~1u, ~global4.c.c, true, vec2<i32>(21976i, 9866i)), abs(global4.c.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.e)) - _wgslsmith_f_op_f32(239f - global4.a))), Struct_2(select(!global4.c.a, select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(true, false, global4.c.d, true), true), true), 88555u, global4.d, !var_2.x, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-3280i, u_input.b.x, 72768i), u_input.b.yyz), 2147483647i)), Struct_3(global4.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1362f, -808f, -1308f), global4.b, true)), Struct_2(global4.c.a, 0u, select(global4.d, vec2<u32>(global4.c.c.x, 4294967295u), true), global4.c.d, ~u_input.c.xy), vec2<u32>(~global4.d.x, func_1(global3[_wgslsmith_index_u32(global4.d.x, 26u)])), 1524f), func_2().b, Struct_4(global4.c.a.x, _wgslsmith_f_op_vec2_f32(global4.b.xz + _wgslsmith_f_op_vec2_f32(global4.b.zy + global4.b.xy)), Struct_1(u_input.c.ywx, ~31408u, select(vec3<u32>(34599u, 0u, global4.d.x), global0[_wgslsmith_index_u32(global4.c.c.x, 27u)], vec3<bool>(global4.c.a.x, global4.c.d, var_2.x))), func_2().e.d, func_3(Struct_1(vec3<i32>(-3011i, u_input.a.x, global3[_wgslsmith_index_u32(1u, 26u)]), global4.d.x, global0[_wgslsmith_index_u32(22552u, 27u)]), _wgslsmith_f_op_vec3_f32(round(global4.b)), vec3<i32>(-6820i, global4.c.e.x, 52689i)).xw)), select(any(vec4<bool>(true, 58791u >= global4.d.x, all(global4.c.a), global4.e < global4.e)), any(func_2().e.d.c.a), false), vec2<u32>(global4.c.b, 0u));
    global2 = 1000f;
    global4 = var_3;
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.a)));
    let x = u_input.a;
    s_output = StorageBuffer(129i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x * -1992f)), -(~_wgslsmith_mult_vec4_i32(u_input.a, -vec4<i32>(1i, global3[_wgslsmith_index_u32(1u, 26u)], var_3.c.e.x, 44190i))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(select(vec4<i32>(var_3.c.e.x, var_3.c.e.x, global4.c.e.x, var_3.c.e.x), vec4<i32>(0i, -31220i, global4.c.e.x, u_input.a.x), false), u_input.b)), _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(u_input.a, u_input.b), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -46624i, 1i, -5102i), u_input.b), -vec4<i32>(1i, u_input.a.x, -2147483647i, var_3.c.e.x)))));
}

