struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: bool,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_1(2147483647i, 39893u, vec4<u32>(0u, 0u, 1u, 63301u)), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<bool>(false, false, true), vec4<u32>(4294967295u, 49253u, 4294967295u, 1831u), Struct_2(vec3<f32>(-1108f, 200f, 2364f), Struct_1(-1i, 0u, vec4<u32>(7688u, 13892u, 1u, 47005u)))), Struct_3(Struct_1(-38113i, 4294967295u, vec4<u32>(1u, 4294967295u, 18352u, 12779u)), vec3<u32>(4294967295u, 4294967295u, 38660u), vec3<bool>(true, true, false), vec4<u32>(4294967295u, 39618u, 0u, 15993u), Struct_2(vec3<f32>(-2151f, -1377f, -1527f), Struct_1(-16558i, 55014u, vec4<u32>(1u, 36016u, 29118u, 19604u)))), Struct_3(Struct_1(-24006i, 28210u, vec4<u32>(4294967295u, 1u, 35359u, 4294967295u)), vec3<u32>(4294967295u, 31838u, 12279u), vec3<bool>(false, false, false), vec4<u32>(1u, 0u, 39437u, 4294967295u), Struct_2(vec3<f32>(-789f, -181f, -810f), Struct_1(0i, 11667u, vec4<u32>(1u, 1898u, 4294967295u, 50816u)))), Struct_3(Struct_1(-488i, 62333u, vec4<u32>(0u, 69980u, 6198u, 0u)), vec3<u32>(0u, 77033u, 1u), vec3<bool>(true, false, true), vec4<u32>(1u, 4294967295u, 84848u, 43918u), Struct_2(vec3<f32>(-732f, 847f, 423f), Struct_1(-12580i, 0u, vec4<u32>(1u, 0u, 4294967295u, 0u)))), Struct_3(Struct_1(-1i, 66759u, vec4<u32>(91945u, 4294967295u, 30203u, 0u)), vec3<u32>(8649u, 1304u, 48993u), vec3<bool>(false, false, false), vec4<u32>(0u, 40751u, 0u, 0u), Struct_2(vec3<f32>(235f, 1062f, 111f), Struct_1(44840i, 4294967295u, vec4<u32>(4294967295u, 0u, 4187u, 72640u)))), Struct_3(Struct_1(1i, 1u, vec4<u32>(4294967295u, 0u, 0u, 2267u)), vec3<u32>(73074u, 4294967295u, 14934u), vec3<bool>(true, false, true), vec4<u32>(1u, 10208u, 31733u, 18256u), Struct_2(vec3<f32>(-1198f, -1503f, 148f), Struct_1(1i, 23928u, vec4<u32>(153944u, 5654u, 4294967295u, 0u)))), Struct_3(Struct_1(-24206i, 32320u, vec4<u32>(40973u, 4294967295u, 4294967295u, 38935u)), vec3<u32>(102291u, 0u, 4294967295u), vec3<bool>(false, true, true), vec4<u32>(1u, 55554u, 4294967295u, 4294967295u), Struct_2(vec3<f32>(-331f, -837f, -959f), Struct_1(82077i, 44193u, vec4<u32>(1u, 17544u, 5857u, 39425u)))), Struct_3(Struct_1(1i, 1817u, vec4<u32>(6793u, 39576u, 0u, 0u)), vec3<u32>(0u, 2626u, 4294967295u), vec3<bool>(false, true, false), vec4<u32>(7078u, 1u, 1u, 20098u), Struct_2(vec3<f32>(-150f, -318f, 1000f), Struct_1(0i, 1u, vec4<u32>(34505u, 25078u, 21720u, 0u)))), Struct_3(Struct_1(5607i, 1u, vec4<u32>(26162u, 1u, 78476u, 0u)), vec3<u32>(4294967295u, 54284u, 1u), vec3<bool>(true, true, true), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), Struct_2(vec3<f32>(221f, -199f, 1624f), Struct_1(0i, 0u, vec4<u32>(40947u, 0u, 52373u, 41975u)))), Struct_3(Struct_1(3746i, 4294967295u, vec4<u32>(53174u, 1u, 64279u, 4294967295u)), vec3<u32>(1u, 5155u, 52733u), vec3<bool>(true, false, false), vec4<u32>(97706u, 41054u, 22257u, 37629u), Struct_2(vec3<f32>(-972f, 1000f, 398f), Struct_1(1i, 4294967295u, vec4<u32>(32911u, 0u, 21841u, 17616u)))), Struct_3(Struct_1(35166i, 62630u, vec4<u32>(4294967295u, 26585u, 47510u, 4294967295u)), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<bool>(false, false, false), vec4<u32>(1u, 1u, 15470u, 36337u), Struct_2(vec3<f32>(816f, -1369f, -1353f), Struct_1(i32(-2147483648), 1u, vec4<u32>(22093u, 0u, 4294967295u, 0u)))), Struct_3(Struct_1(-1i, 4180u, vec4<u32>(2019u, 4294967295u, 80460u, 4251u)), vec3<u32>(1u, 0u, 4294967295u), vec3<bool>(true, false, true), vec4<u32>(4294967295u, 13649u, 4294967295u, 4294967295u), Struct_2(vec3<f32>(465f, -648f, 863f), Struct_1(1i, 0u, vec4<u32>(4294967295u, 18848u, 66917u, 0u)))), Struct_3(Struct_1(i32(-2147483648), 1u, vec4<u32>(13027u, 4294967295u, 23868u, 1u)), vec3<u32>(47528u, 4294967295u, 0u), vec3<bool>(false, false, false), vec4<u32>(7207u, 1u, 0u, 23326u), Struct_2(vec3<f32>(283f, 788f, -1164f), Struct_1(i32(-2147483648), 0u, vec4<u32>(85016u, 5204u, 0u, 32105u)))), Struct_3(Struct_1(i32(-2147483648), 89534u, vec4<u32>(110445u, 1u, 4294967295u, 0u)), vec3<u32>(0u, 58860u, 18649u), vec3<bool>(true, false, true), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), Struct_2(vec3<f32>(1000f, -1476f, -1000f), Struct_1(9438i, 9095u, vec4<u32>(49484u, 50056u, 77443u, 30732u)))), Struct_3(Struct_1(0i, 8173u, vec4<u32>(117149u, 6664u, 12730u, 0u)), vec3<u32>(70208u, 8160u, 39059u), vec3<bool>(false, false, true), vec4<u32>(101954u, 11334u, 4294967295u, 59640u), Struct_2(vec3<f32>(-983f, 1392f, -265f), Struct_1(59514i, 4294967295u, vec4<u32>(57184u, 61103u, 49057u, 4294967295u)))), Struct_3(Struct_1(1i, 0u, vec4<u32>(1u, 4294967295u, 35734u, 1u)), vec3<u32>(28875u, 4294967295u, 4115u), vec3<bool>(true, false, false), vec4<u32>(15249u, 3236u, 4294967295u, 11914u), Struct_2(vec3<f32>(1955f, -876f, 1570f), Struct_1(-4108i, 1u, vec4<u32>(7407u, 4294967295u, 41528u, 48525u)))), Struct_3(Struct_1(0i, 39815u, vec4<u32>(992u, 4294967295u, 0u, 16456u)), vec3<u32>(16671u, 0u, 1u), vec3<bool>(false, true, true), vec4<u32>(7054u, 0u, 4294967295u, 0u), Struct_2(vec3<f32>(2088f, 1216f, -2640f), Struct_1(2147483647i, 0u, vec4<u32>(4294967295u, 1u, 1u, 11771u)))), Struct_3(Struct_1(0i, 341u, vec4<u32>(106711u, 4294967295u, 63582u, 4294967295u)), vec3<u32>(14216u, 57761u, 42764u), vec3<bool>(false, false, false), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), Struct_2(vec3<f32>(-726f, 2179f, -131f), Struct_1(-8789i, 1u, vec4<u32>(37305u, 2889u, 4294967295u, 1u)))), Struct_3(Struct_1(i32(-2147483648), 1u, vec4<u32>(27955u, 55118u, 1826u, 4294967295u)), vec3<u32>(1u, 47012u, 19240u), vec3<bool>(false, false, true), vec4<u32>(58474u, 4294967295u, 1u, 4294967295u), Struct_2(vec3<f32>(-1232f, 1374f, 1457f), Struct_1(12046i, 43384u, vec4<u32>(0u, 17002u, 64550u, 71223u)))), Struct_3(Struct_1(13465i, 1u, vec4<u32>(5004u, 0u, 0u, 12171u)), vec3<u32>(0u, 4294967295u, 1u), vec3<bool>(true, false, true), vec4<u32>(1u, 4294967295u, 0u, 0u), Struct_2(vec3<f32>(777f, 217f, -886f), Struct_1(-1i, 24423u, vec4<u32>(1u, 4294967295u, 24140u, 0u)))), Struct_3(Struct_1(-280i, 0u, vec4<u32>(4294967295u, 4294967295u, 75156u, 20626u)), vec3<u32>(76792u, 0u, 1u), vec3<bool>(true, false, true), vec4<u32>(19080u, 43072u, 0u, 0u), Struct_2(vec3<f32>(678f, 106f, 434f), Struct_1(2147483647i, 65341u, vec4<u32>(35807u, 4129u, 1u, 21824u)))), Struct_3(Struct_1(-20241i, 0u, vec4<u32>(47921u, 1u, 25130u, 0u)), vec3<u32>(1u, 21931u, 4173u), vec3<bool>(false, false, true), vec4<u32>(0u, 74250u, 84359u, 31198u), Struct_2(vec3<f32>(-351f, 1238f, -1534f), Struct_1(-53599i, 2172u, vec4<u32>(1u, 0u, 5793u, 4294967295u)))), Struct_3(Struct_1(31662i, 11270u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 6109u)), vec3<u32>(1u, 34678u, 58958u), vec3<bool>(false, false, true), vec4<u32>(125617u, 49627u, 29246u, 3238u), Struct_2(vec3<f32>(133f, -2091f, 410f), Struct_1(-44522i, 1u, vec4<u32>(8033u, 4294967295u, 53202u, 4294967295u)))), Struct_3(Struct_1(1i, 1u, vec4<u32>(4294967295u, 17523u, 42394u, 17451u)), vec3<u32>(16080u, 0u, 60094u), vec3<bool>(true, false, false), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), Struct_2(vec3<f32>(-808f, -585f, -1306f), Struct_1(0i, 96008u, vec4<u32>(10292u, 0u, 23672u, 0u)))), Struct_3(Struct_1(65343i, 0u, vec4<u32>(1u, 4294967295u, 0u, 1u)), vec3<u32>(8932u, 106824u, 4294967295u), vec3<bool>(true, false, false), vec4<u32>(17460u, 0u, 58720u, 0u), Struct_2(vec3<f32>(594f, -1000f, 169f), Struct_1(i32(-2147483648), 22919u, vec4<u32>(0u, 17496u, 46657u, 0u)))), Struct_3(Struct_1(20635i, 20003u, vec4<u32>(1u, 26515u, 0u, 4294967295u)), vec3<u32>(37649u, 1u, 1u), vec3<bool>(false, true, true), vec4<u32>(1u, 1u, 56129u, 63309u), Struct_2(vec3<f32>(1129f, -191f, 184f), Struct_1(i32(-2147483648), 76837u, vec4<u32>(0u, 0u, 4294967295u, 0u)))), Struct_3(Struct_1(18933i, 4294967295u, vec4<u32>(37778u, 35071u, 52797u, 0u)), vec3<u32>(57321u, 31327u, 14676u), vec3<bool>(false, false, false), vec4<u32>(53385u, 4294967295u, 457u, 1u), Struct_2(vec3<f32>(547f, -436f, -692f), Struct_1(-72403i, 52736u, vec4<u32>(4294967295u, 1u, 31534u, 13287u)))), Struct_3(Struct_1(i32(-2147483648), 22438u, vec4<u32>(0u, 0u, 1u, 54048u)), vec3<u32>(7029u, 0u, 0u), vec3<bool>(true, true, false), vec4<u32>(0u, 4294967295u, 23678u, 0u), Struct_2(vec3<f32>(-296f, 188f, -572f), Struct_1(-15125i, 2985u, vec4<u32>(1u, 8636u, 0u, 7065u)))), Struct_3(Struct_1(i32(-2147483648), 6118u, vec4<u32>(4294967295u, 79136u, 1u, 4049u)), vec3<u32>(2547u, 30657u, 4294967295u), vec3<bool>(true, false, true), vec4<u32>(1u, 15605u, 0u, 17722u), Struct_2(vec3<f32>(-683f, -1110f, 3131f), Struct_1(-2695i, 14214u, vec4<u32>(4294967295u, 1u, 32219u, 12618u)))), Struct_3(Struct_1(-84131i, 1u, vec4<u32>(1u, 0u, 1u, 56945u)), vec3<u32>(5913u, 0u, 8896u), vec3<bool>(true, false, false), vec4<u32>(1u, 18173u, 0u, 0u), Struct_2(vec3<f32>(-432f, 2921f, 1740f), Struct_1(-14390i, 46318u, vec4<u32>(4294967295u, 1u, 4294967295u, 73040u)))), Struct_3(Struct_1(-1i, 0u, vec4<u32>(39418u, 45484u, 8355u, 1u)), vec3<u32>(4294967295u, 4294967295u, 659u), vec3<bool>(true, true, true), vec4<u32>(17756u, 4294967295u, 1u, 31865u), Struct_2(vec3<f32>(-1564f, 1917f, -580f), Struct_1(18545i, 52538u, vec4<u32>(0u, 19899u, 0u, 1u)))), Struct_3(Struct_1(1i, 4559u, vec4<u32>(3751u, 0u, 31929u, 4294967295u)), vec3<u32>(83076u, 33591u, 4294967295u), vec3<bool>(true, true, true), vec4<u32>(0u, 21565u, 35092u, 30669u), Struct_2(vec3<f32>(-739f, -1000f, -674f), Struct_1(-25757i, 24964u, vec4<u32>(31813u, 63940u, 1u, 4294967295u)))));

var<private> global1: array<Struct_3, 18>;

var<private> global2: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-3214i, 1i), vec2<i32>(24043i, -8301i), vec2<i32>(-34103i, i32(-2147483648)), vec2<i32>(-53647i, 14271i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 19751i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), 11026i), vec2<i32>(-50425i, -17352i), vec2<i32>(2147483647i, 1i));

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(0i, 0u, vec4<u32>(0u, 62497u, 1u, 86631u)), Struct_1(2147483647i, 67929u, vec4<u32>(35863u, 58097u, 58117u, 1u)), Struct_1(2147483647i, 1u, vec4<u32>(1u, 4294967295u, 28361u, 1u)), Struct_1(80650i, 57474u, vec4<u32>(4294967295u, 12981u, 4294967295u, 0u)), Struct_1(-54251i, 0u, vec4<u32>(1u, 0u, 33123u, 0u)), Struct_1(9442i, 0u, vec4<u32>(33122u, 47376u, 0u, 35445u)), Struct_1(-4240i, 0u, vec4<u32>(0u, 44410u, 0u, 4294967295u)), Struct_1(47115i, 0u, vec4<u32>(0u, 63176u, 37352u, 53485u)), Struct_1(2147483647i, 50540u, vec4<u32>(22530u, 4294967295u, 0u, 13178u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = ~u_input.c ^ vec2<u32>(36430u, countOneBits(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d, arg_0), ~2969u)));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 193f))));
    var var_2 = select(2529i, ~(-abs(u_input.b.x)), true);
    global3 = array<Struct_1, 9>();
    var var_3 = firstTrailingBit(-abs(_wgslsmith_add_i32(-2147483647i, u_input.a)));
    return vec3<u32>(0u, u_input.d, ~(_wgslsmith_mod_u32(arg_0, abs(var_0.x)) | ~_wgslsmith_div_u32(4294967295u, 1u)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: bool) -> Struct_4 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.d, 18u)];
    global1 = array<Struct_3, 18>();
    global2 = array<vec2<i32>, 10>();
    return Struct_4(true, Struct_3(Struct_1(1i, _wgslsmith_add_u32(0u, 4294967295u << (u_input.c.x % 32u)), vec4<u32>(_wgslsmith_sub_u32(7840u, u_input.d), reverseBits(var_0.d.x), 4294967295u, 4294967295u)), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(arg_1.x, var_0.b.x, 0u)), ~func_3(4042u)), vec3<bool>(arg_0, select(any(var_0.c.zy), var_0.c.x, -205f < var_0.e.a.x), arg_0), ~arg_1 << (vec4<u32>(~u_input.d, arg_1.x, var_0.d.x, _wgslsmith_sub_u32(79950u, u_input.c.x)) % vec4<u32>(32u)), Struct_2(var_0.e.a, global3[_wgslsmith_index_u32(~90391u, 9u)])), !(!arg_0), Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.e.b.b, ~var_0.b.x), 9u)], vec3<u32>(~(0u ^ arg_1.x), _wgslsmith_dot_vec2_u32(var_0.d.zw, ~vec2<u32>(u_input.c.x, 55149u)), _wgslsmith_div_u32(u_input.c.x, u_input.d) & select(4294967295u, 0u, true)), select(vec3<bool>(true, any(vec2<bool>(false, false)), all(vec2<bool>(false, false))), select(vec3<bool>(true, true, var_0.c.x), var_0.c, arg_2), vec3<bool>(true, any(var_0.c), true)), vec4<u32>(23901u, var_0.b.x, 21173u, ~(~4294967295u)), var_0.e), ~(~4294967295u));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: vec4<u32>) -> u32 {
    let var_0 = abs(vec4<u32>(~1u, 1u, reverseBits(~abs(u_input.d)), ~u_input.c.x));
    var var_1 = any(!select(vec4<bool>(arg_1.x <= arg_0.b.e.b.a, any(arg_0.b.c.zy), arg_2.b.c.x | true, false), vec4<bool>(true, false, true, false), select(vec4<bool>(arg_2.c, arg_0.c, false, false), vec4<bool>(false, false, true, true), arg_2.d.c.x)));
    global1 = array<Struct_3, 18>();
    var var_2 = !select(select(!(!vec4<bool>(arg_0.b.c.x, false, true, true)), select(vec4<bool>(arg_2.d.c.x, true, arg_0.a, arg_0.c), vec4<bool>(true, true, arg_2.c, arg_0.a), select(vec4<bool>(arg_2.d.c.x, arg_0.c, arg_0.a, true), vec4<bool>(true, true, false, arg_0.c), arg_2.a)), vec4<bool>(!arg_0.c, arg_0.a, arg_2.d.c.x & true, arg_2.c)), vec4<bool>(arg_2.b.e.a.x != _wgslsmith_f_op_f32(380f * arg_0.b.e.a.x), arg_2.d.e.a.x == arg_0.b.e.a.x, (u_input.d >> (44000u % 32u)) == _wgslsmith_clamp_u32(0u, 83360u, arg_2.b.d.x), false), !(!select(vec4<bool>(arg_0.a, arg_0.c, false, false), vec4<bool>(arg_2.c, arg_2.c, arg_0.d.c.x, false), arg_2.a)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.b.e.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(arg_2.d.e.a, vec3<f32>(-157f, 746f, -822f))), vec3<f32>(arg_0.b.e.a.x, 614f, arg_0.d.e.a.x))))), global3[_wgslsmith_index_u32(firstTrailingBit(13955u), 9u)]);
    return u_input.d;
}

fn func_1(arg_0: vec4<i32>) -> StorageBuffer {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(func_4(func_2(false, select(vec4<u32>(u_input.d, u_input.d, 16740u, 51238u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d), vec4<bool>(true, false, true, true)), true), min(select(arg_0, vec4<i32>(-46915i, -1i, arg_0.x, -47404i), false), _wgslsmith_mod_vec4_i32(arg_0, vec4<i32>(1i, arg_0.x, -2147483647i, -6248i))), func_2(true, select(vec4<u32>(52268u, 0u, 1u, 83019u), vec4<u32>(4294967295u, 27598u, u_input.c.x, 21745u), vec4<bool>(false, true, true, true)), true), ~(~vec4<u32>(u_input.d, 1u, u_input.d, 0u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(14238u, u_input.c.x, 0u), vec3<u32>(u_input.d, u_input.d, u_input.d)), 1u)), 1u);
    global1 = array<Struct_3, 18>();
    let var_1 = vec2<i32>(1i, reverseBits(select(~(-37250i), u_input.e, all(vec4<bool>(true, true, true, true)))) | -61541i);
    var var_2 = !select(func_2(func_2(u_input.a <= u_input.b.x, vec4<u32>(109530u, 0u, 2125u, u_input.d), true).b.c.x, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 44561u, 0u, u_input.d), vec4<u32>(2136u, u_input.c.x, 5590u, 4294967295u)), ~vec4<u32>(45381u, u_input.d, u_input.c.x, u_input.c.x)), false).b.c.zz, select(vec2<bool>(true, true), select(func_2(true, vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.c.x), true).b.c.xx, vec2<bool>(false, false), all(vec3<bool>(false, true, false))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true))), select(select(func_2(true, vec4<u32>(u_input.c.x, 7677u, u_input.d, u_input.c.x), true).b.c.xy, vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(false, false, false)), any(vec3<bool>(true, false, false))), any(vec4<bool>(false, true, false, false)) != select(false, false, true)));
    var var_3 = var_2.x;
    return StorageBuffer(u_input.b.x, 1u, -(~(var_1.x << (u_input.c.x % 32u)) & -_wgslsmith_mult_i32(arg_0.x, u_input.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 9>();
    let var_0 = -u_input.a;
    var var_1 = true;
    global2 = array<vec2<i32>, 10>();
    let var_2 = global1[_wgslsmith_index_u32(1u, 18u)];
    global2 = array<vec2<i32>, 10>();
    global1 = array<Struct_3, 18>();
    global3 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = func_1(-(~(_wgslsmith_div_vec4_i32(vec4<i32>(58537i, 1i, 35828i, -7419i), vec4<i32>(u_input.b.x, u_input.e, var_0, var_0)) ^ reverseBits(vec4<i32>(var_2.a.a, u_input.b.x, u_input.e, -2147483647i)))));
}

