struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(Struct_1(vec2<u32>(1u, 0u), vec4<f32>(126f, -519f, 1651f, -1719f), vec4<i32>(-40043i, 20616i, 2147483647i, 12189i), vec2<i32>(21987i, -1i)), 1596f, 56668i, Struct_4(vec4<i32>(30011i, 8184i, 1i, -1i), 0u)), Struct_5(Struct_1(vec2<u32>(20861u, 0u), vec4<f32>(1161f, 212f, -853f, 156f), vec4<i32>(-14309i, 13602i, 1i, 2654i), vec2<i32>(-1i, -1i)), 913f, i32(-2147483648), Struct_4(vec4<i32>(-79727i, -5531i, -1i, 12210i), 66687u)), Struct_5(Struct_1(vec2<u32>(0u, 4294967295u), vec4<f32>(-1369f, 227f, 1425f, -557f), vec4<i32>(0i, -22459i, 17646i, 2147483647i), vec2<i32>(33050i, 1i)), 792f, -24569i, Struct_4(vec4<i32>(0i, -31871i, 4439i, -1i), 12821u)), Struct_5(Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(982f, 982f, -679f, 824f), vec4<i32>(0i, 1i, -1i, 14018i), vec2<i32>(-1i, -5702i)), 1221f, -52058i, Struct_4(vec4<i32>(2147483647i, 2147483647i, 0i, i32(-2147483648)), 4294967295u)), Struct_5(Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(-1536f, -783f, -747f, 1703f), vec4<i32>(-52539i, 1i, 2147483647i, -3636i), vec2<i32>(2147483647i, 0i)), 235f, 17278i, Struct_4(vec4<i32>(2147483647i, -18682i, 1i, 1i), 1u)), Struct_5(Struct_1(vec2<u32>(37656u, 30269u), vec4<f32>(1337f, 349f, -100f, -253f), vec4<i32>(-3944i, 0i, i32(-2147483648), -63443i), vec2<i32>(-1i, 0i)), -1186f, -24139i, Struct_4(vec4<i32>(-18629i, 28292i, 2147483647i, i32(-2147483648)), 1u)), Struct_5(Struct_1(vec2<u32>(26415u, 59445u), vec4<f32>(257f, 1000f, 2583f, -607f), vec4<i32>(2645i, -17217i, 26635i, -1i), vec2<i32>(0i, i32(-2147483648))), -803f, -8253i, Struct_4(vec4<i32>(-38336i, -16346i, 0i, 2147483647i), 1u)), Struct_5(Struct_1(vec2<u32>(1u, 1u), vec4<f32>(-382f, 2102f, -431f, -821f), vec4<i32>(-28346i, -1i, 1i, 0i), vec2<i32>(-1i, 0i)), -413f, -23845i, Struct_4(vec4<i32>(-1i, 64722i, i32(-2147483648), 1i), 1u)), Struct_5(Struct_1(vec2<u32>(45847u, 48537u), vec4<f32>(-471f, 1048f, -1513f, -2048f), vec4<i32>(4692i, 1i, 1i, i32(-2147483648)), vec2<i32>(-42895i, 1i)), 119f, i32(-2147483648), Struct_4(vec4<i32>(-38287i, -11504i, -37036i, -7279i), 1u)), Struct_5(Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(880f, 1315f, -1414f, -513f), vec4<i32>(-7248i, i32(-2147483648), 1i, i32(-2147483648)), vec2<i32>(35603i, 1i)), 863f, 1i, Struct_4(vec4<i32>(0i, i32(-2147483648), 17434i, i32(-2147483648)), 0u)), Struct_5(Struct_1(vec2<u32>(90687u, 0u), vec4<f32>(527f, 1148f, -161f, 1127f), vec4<i32>(-11827i, 0i, 1i, 1i), vec2<i32>(-12821i, -1i)), 387f, 2147483647i, Struct_4(vec4<i32>(2147483647i, -1i, -1i, -27157i), 561u)), Struct_5(Struct_1(vec2<u32>(908u, 121739u), vec4<f32>(-159f, -387f, -218f, 575f), vec4<i32>(20538i, 13853i, 45498i, 18294i), vec2<i32>(2147483647i, 2147483647i)), -1000f, 1i, Struct_4(vec4<i32>(i32(-2147483648), -65526i, -4508i, 2147483647i), 47151u)), Struct_5(Struct_1(vec2<u32>(11115u, 13510u), vec4<f32>(-425f, 653f, 1402f, 889f), vec4<i32>(1499i, i32(-2147483648), 10312i, 2147483647i), vec2<i32>(0i, 35457i)), -196f, -33605i, Struct_4(vec4<i32>(-21516i, 2147483647i, 8671i, 1i), 1u)), Struct_5(Struct_1(vec2<u32>(1u, 60105u), vec4<f32>(1404f, -2215f, 1000f, -780f), vec4<i32>(-38239i, 1i, -1i, -4702i), vec2<i32>(1i, -1i)), -723f, 20483i, Struct_4(vec4<i32>(i32(-2147483648), i32(-2147483648), -4840i, 2147483647i), 61123u)), Struct_5(Struct_1(vec2<u32>(0u, 0u), vec4<f32>(-702f, 629f, 529f, 1579f), vec4<i32>(-21906i, -1i, -5032i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648))), 545f, -1i, Struct_4(vec4<i32>(0i, i32(-2147483648), -20843i, -1i), 53611u)), Struct_5(Struct_1(vec2<u32>(1u, 1u), vec4<f32>(1000f, 1013f, 275f, 471f), vec4<i32>(1i, -1i, 0i, 1i), vec2<i32>(30105i, i32(-2147483648))), -176f, 27807i, Struct_4(vec4<i32>(15102i, -2028i, 0i, 0i), 129590u)), Struct_5(Struct_1(vec2<u32>(1u, 1u), vec4<f32>(-302f, -1122f, -525f, 1161f), vec4<i32>(0i, -30510i, -1i, 21622i), vec2<i32>(2147483647i, 2147483647i)), 344f, -26488i, Struct_4(vec4<i32>(2147483647i, -38296i, 2147483647i, i32(-2147483648)), 1u)), Struct_5(Struct_1(vec2<u32>(0u, 0u), vec4<f32>(-1008f, -122f, -562f, -109f), vec4<i32>(41809i, 0i, 2147483647i, 1i), vec2<i32>(25635i, 42114i)), 1315f, -3249i, Struct_4(vec4<i32>(26899i, -30804i, 1i, 1i), 4294967295u)), Struct_5(Struct_1(vec2<u32>(16780u, 28183u), vec4<f32>(-634f, 476f, 1130f, -579f), vec4<i32>(2147483647i, -38205i, 52099i, 0i), vec2<i32>(-36828i, -12221i)), -1455f, 7009i, Struct_4(vec4<i32>(12811i, -50409i, -8223i, -1i), 0u)), Struct_5(Struct_1(vec2<u32>(4294967295u, 17063u), vec4<f32>(1261f, 312f, -1002f, -1000f), vec4<i32>(-16815i, 0i, 0i, 0i), vec2<i32>(29770i, 2147483647i)), -711f, 1i, Struct_4(vec4<i32>(-39031i, 4206i, -56550i, 2147483647i), 3404u)), Struct_5(Struct_1(vec2<u32>(40593u, 4294967295u), vec4<f32>(395f, 838f, 1065f, 1091f), vec4<i32>(21143i, -19533i, 2147483647i, -51700i), vec2<i32>(0i, -34371i)), -543f, 22284i, Struct_4(vec4<i32>(i32(-2147483648), -42391i, 25308i, 11988i), 44186u)), Struct_5(Struct_1(vec2<u32>(1u, 16033u), vec4<f32>(2003f, 914f, 111f, -2092f), vec4<i32>(-8779i, 2147483647i, 0i, 0i), vec2<i32>(-1i, 2147483647i)), 399f, 2147483647i, Struct_4(vec4<i32>(-38166i, 2147483647i, -9138i, -22789i), 1u)), Struct_5(Struct_1(vec2<u32>(91973u, 31912u), vec4<f32>(1000f, 1903f, 863f, 142f), vec4<i32>(57506i, 2147483647i, -1i, -31i), vec2<i32>(2147483647i, 1i)), 1049f, -61960i, Struct_4(vec4<i32>(0i, 26530i, 2147483647i, 1i), 22389u)), Struct_5(Struct_1(vec2<u32>(4294967295u, 0u), vec4<f32>(-1230f, -588f, -1137f, -1084f), vec4<i32>(10259i, 6400i, -6060i, -54564i), vec2<i32>(i32(-2147483648), 36626i)), 2423f, -1i, Struct_4(vec4<i32>(2147483647i, 26833i, 1i, 71771i), 7141u)), Struct_5(Struct_1(vec2<u32>(12499u, 325u), vec4<f32>(439f, 235f, -1007f, 329f), vec4<i32>(-9792i, -31429i, 1i, 0i), vec2<i32>(29433i, i32(-2147483648))), 657f, -25364i, Struct_4(vec4<i32>(i32(-2147483648), -37438i, 0i, i32(-2147483648)), 1u)), Struct_5(Struct_1(vec2<u32>(5268u, 1u), vec4<f32>(-2056f, 248f, 798f, -381f), vec4<i32>(2147483647i, 20054i, i32(-2147483648), 2147483647i), vec2<i32>(-10079i, -1531i)), -634f, i32(-2147483648), Struct_4(vec4<i32>(21936i, -2606i, 56001i, 0i), 132988u)), Struct_5(Struct_1(vec2<u32>(46829u, 14158u), vec4<f32>(1926f, 109f, 1160f, 251f), vec4<i32>(981i, 3246i, -1i, 1i), vec2<i32>(-183i, 0i)), -379f, -90111i, Struct_4(vec4<i32>(0i, 7565i, 0i, 40170i), 68901u)), Struct_5(Struct_1(vec2<u32>(0u, 1u), vec4<f32>(797f, 1734f, 827f, -915f), vec4<i32>(23281i, i32(-2147483648), 2147483647i, -36126i), vec2<i32>(36248i, 0i)), 1000f, -1i, Struct_4(vec4<i32>(22316i, 0i, 29689i, -57701i), 6168u)), Struct_5(Struct_1(vec2<u32>(0u, 78438u), vec4<f32>(-519f, 406f, -623f, 328f), vec4<i32>(2147483647i, -36340i, 86649i, -1i), vec2<i32>(-23207i, -1i)), 305f, -4988i, Struct_4(vec4<i32>(-44380i, -4833i, 27847i, 9456i), 0u)), Struct_5(Struct_1(vec2<u32>(0u, 0u), vec4<f32>(436f, -395f, 773f, -904f), vec4<i32>(22612i, -17526i, -1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 28905i)), 226f, 0i, Struct_4(vec4<i32>(-29627i, -1i, 71929i, -1i), 15549u)), Struct_5(Struct_1(vec2<u32>(71812u, 1u), vec4<f32>(-693f, -914f, -519f, -756f), vec4<i32>(54467i, 51379i, i32(-2147483648), 12747i), vec2<i32>(2147483647i, -3771i)), -1339f, -35903i, Struct_4(vec4<i32>(-14053i, 81678i, -8404i, 0i), 68155u)), Struct_5(Struct_1(vec2<u32>(4294967295u, 42943u), vec4<f32>(-1827f, 624f, -705f, -244f), vec4<i32>(2147483647i, -1i, i32(-2147483648), -1i), vec2<i32>(-1i, -1439i)), 589f, -55346i, Struct_4(vec4<i32>(-9879i, 1i, -1i, 18503i), 0u)));

var<private> global2: array<Struct_3, 2>;

var<private> global3: u32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: u32, arg_3: vec4<u32>) -> vec4<bool> {
    global0 = 891f;
    var var_0 = -u_input.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_1.d.b.x) * _wgslsmith_f_op_f32(min(-1438f, -951f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.d.b.x), arg_1.d.b.x)))) * 432f);
    var var_2 = arg_1.d;
    let var_3 = Struct_4(vec4<i32>(var_2.d.x >> (4294967295u % 32u), -(1i >> (_wgslsmith_mod_u32(arg_2, var_2.a.x) % 32u)), ~23884i, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, arg_2), vec2<u32>(_wgslsmith_div_u32(arg_1.d.a.x, 4294967295u), var_2.a.x)));
    return select(!vec4<bool>(any(vec3<bool>(false, false, false)), true, false, arg_3.x <= ~u_input.b), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.d.b.x, _wgslsmith_f_op_f32(-arg_1.d.b.x))) * 1f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, 768f)) + 157f) * var_2.b.x));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: u32) -> i32 {
    let var_0 = -(~vec3<i32>(u_input.a, ~1i, -u_input.a));
    var var_1 = !vec4<bool>(any(!func_3(-1000f, Struct_3(Struct_2(6681i), arg_2.zxw, vec4<i32>(u_input.a, u_input.a, u_input.c.x, var_0.x), Struct_1(vec2<u32>(arg_0, arg_2.x), vec4<f32>(660f, arg_1.x, arg_1.x, 550f), vec4<i32>(-1i, 2147483647i, 0i, 24727i), vec2<i32>(u_input.c.x, var_0.x))), 4294967295u, arg_2)), true, true, false);
    let var_2 = Struct_4(_wgslsmith_add_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(11139i, var_0.x, var_0.x, 0i), select(vec4<i32>(0i, -7550i, 38462i, u_input.c.x), vec4<i32>(-2754i, -2147483647i, var_0.x, -31230i), vec4<bool>(var_1.x, false, false, true))), (vec4<i32>(u_input.a, u_input.a, u_input.c.x, var_0.x) | vec4<i32>(-26810i, u_input.a, -19168i, u_input.a)) & (vec4<i32>(u_input.a, u_input.a, var_0.x, 70587i) ^ vec4<i32>(-25464i, 4429i, var_0.x, 37365i)), select(!vec4<bool>(var_1.x, var_1.x, true, true), select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, true)), func_3(-626f, Struct_3(Struct_2(26156i), vec3<u32>(1u, 8272u, arg_3), vec4<i32>(u_input.c.x, -1i, -1i, u_input.a), Struct_1(u_input.d, vec4<f32>(-736f, arg_1.x, arg_1.x, 462f), vec4<i32>(var_0.x, var_0.x, 17601i, var_0.x), var_0.xy)), u_input.b, arg_2).x)), ~select(~vec4<i32>(-2147483647i, -56896i, 10611i, u_input.a), -vec4<i32>(-1i, -38589i, -14813i, 0i), vec4<bool>(var_1.x, var_1.x, var_1.x, false))), arg_0 ^ 1u);
    var var_3 = Struct_5(Struct_1(vec2<u32>(~0u, _wgslsmith_div_u32(~26619u, 66475u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1427f, arg_1.x, arg_1.x)))))), var_2.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(-1i), -54314i), ~_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(-1i, 0i)), u_input.c)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_1.x), 233f)), var_2.a.x, Struct_4(reverseBits((vec4<i32>(u_input.a, var_2.a.x, 1567i, var_0.x) ^ vec4<i32>(2147483647i, 71690i, 19926i, u_input.c.x)) ^ var_2.a), 1u | select(~arg_2.x, 4294967295u, var_1.x)));
    var_3 = Struct_5(Struct_1(reverseBits(~vec2<u32>(100231u, 1u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-437f, var_3.a.b.x, arg_1.x, 1000f) - var_3.a.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-887f, var_3.b, var_3.a.b.x, -2191f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1297f, arg_1.x, arg_1.x, var_3.a.b.x))), (arg_3 >> (20770u % 32u)) <= var_2.b)), _wgslsmith_add_vec4_i32(vec4<i32>(-38643i, var_2.a.x, -43557i, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, u_input.a, var_3.c), var_2.a)) ^ var_3.d.a, -u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -287f), u_input.a, Struct_4(var_3.d.a, ~1u));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-9025i, -var_3.a.d.x, countOneBits(firstTrailingBit(-2147483647i))), var_3.a.c.yxx) & 16786i;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: u32) -> Struct_2 {
    var var_0 = func_3(arg_0.b.x, Struct_3(Struct_2(-(~arg_1.x)), ~_wgslsmith_mod_vec3_u32(max(vec3<u32>(arg_3, arg_3, arg_2.b), vec3<u32>(arg_0.a.x, arg_3, 17306u)), vec3<u32>(u_input.b, arg_2.b, arg_3) << (vec3<u32>(u_input.b, 0u, arg_3) % vec3<u32>(32u))), arg_0.c, arg_0), 55400u, ~(~select(~vec4<u32>(25364u, 0u, arg_3, arg_2.b), vec4<u32>(arg_0.a.x, 20348u, 0u, arg_0.a.x), all(vec2<bool>(false, true))))).xxz;
    global3 = u_input.d.x;
    var var_1 = global2[_wgslsmith_index_u32(arg_2.b, 2u)];
    let var_2 = select(~(-(~arg_0.c.xyy)), arg_1, func_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.b.x)))), global2[_wgslsmith_index_u32(0u, 2u)], u_input.d.x | u_input.b, ~countOneBits(vec4<u32>(arg_0.a.x, 40150u, 1u, 9822u)) >> ((vec4<u32>(15376u, arg_3, 1u, arg_0.a.x) | firstLeadingBit(vec4<u32>(arg_3, 22253u, arg_0.a.x, var_1.d.a.x))) % vec4<u32>(32u))).yxw);
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(979f * 218f), _wgslsmith_div_f32(-329f, 312f))))));
    return var_1.a;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = abs(~max(~firstTrailingBit(u_input.d), vec2<u32>(abs(23162u), ~u_input.b)));
    var var_1 = vec3<i32>(~_wgslsmith_div_i32(2147483647i, arg_0.a | countOneBits(u_input.c.x)), func_2(~0u, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1462f, 766f) + vec2<f32>(-958f, -1469f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1373f, -1452f)))))), ((vec4<u32>(var_0.x, 42057u, u_input.b, 105574u) >> (vec4<u32>(68619u, var_0.x, 1u, var_0.x) % vec4<u32>(32u))) | (vec4<u32>(4294967295u, var_0.x, u_input.d.x, var_0.x) & vec4<u32>(var_0.x, u_input.d.x, u_input.d.x, 0u))) & ~vec4<u32>(var_0.x, u_input.b, 0u, var_0.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 68192u), firstLeadingBit(var_0.x & u_input.b))), arg_0.a);
    global2 = array<Struct_3, 2>();
    global2 = array<Struct_3, 2>();
    var var_2 = vec3<u32>(1u, ~1u >> (u_input.d.x % 32u), ~0u);
    return Struct_3(arg_0, vec3<u32>(~_wgslsmith_clamp_u32(var_2.x >> (var_2.x % 32u), u_input.b, ~u_input.b), 4294967295u, _wgslsmith_mod_u32(~4294967295u, _wgslsmith_clamp_u32(1u, var_2.x, var_2.x) << ((var_0.x >> (u_input.b % 32u)) % 32u))), ~max(select(vec4<i32>(-1i, arg_0.a, 1i, arg_0.a), vec4<i32>(u_input.a, 0i, var_1.x, var_1.x), vec4<bool>(false, true, false, true)), vec4<i32>(-2147483647i, u_input.c.x, var_1.x, var_1.x) & vec4<i32>(arg_0.a, -1i, -2147483647i, -1i)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.zx, abs(vec2<u32>(13809u, var_2.x))), ~_wgslsmith_div_u32(var_2.x, var_0.x), firstLeadingBit(abs(var_0.x)), 5427u) % vec4<u32>(32u)), Struct_1(vec2<u32>(u_input.d.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 1u, var_2.x), vec3<u32>(u_input.b, var_0.x, 29441u) & vec3<u32>(u_input.b, 69752u, 1u))), vec4<f32>(403f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(179f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - -233f))), 501f), vec4<i32>(var_1.x, 1i << (_wgslsmith_mod_u32(0u, 74362u) % 32u), max(u_input.a, var_1.x), _wgslsmith_clamp_i32(-1i << (var_2.x % 32u), var_1.x, var_1.x)), -var_1.zx));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_4 {
    global3 = ~(~(~11208u));
    global2 = array<Struct_3, 2>();
    var var_0 = _wgslsmith_sub_i32(u_input.c.x, arg_1.a.x) & 19503i;
    var var_1 = ~4294967295u;
    global3 = ~arg_0.d.a.x;
    return Struct_4(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -23879i, -arg_1.a.x, firstTrailingBit(42079i)), min(arg_1.a, arg_1.a & arg_1.a)), 0u);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: i32) -> vec4<i32> {
    var var_0 = arg_2.d;
    global2 = array<Struct_3, 2>();
    let var_1 = firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, 75835u), ~51090u, firstLeadingBit(var_0.b), _wgslsmith_mult_u32(u_input.b, 4294967295u)), ~vec4<u32>(_wgslsmith_div_u32(28203u, var_0.b), arg_1.x, 31956u, 4277u << (u_input.b % 32u))));
    var var_2 = func_6(func_5(func_4(arg_2.a, vec3<i32>(-arg_3, func_2(96805u, vec2<f32>(-423f, 1405f), var_1, var_1.x), -2147483647i & arg_3), Struct_4(~vec4<i32>(u_input.a, -1i, 2147483647i, -1298i), 63684u << (0u % 32u)), ~(1u << (arg_1.x % 32u)))), arg_2.d, var_0.a.xy, func_5(Struct_2(arg_2.c)).d);
    let var_3 = !(true && arg_0);
    return func_5(Struct_2(firstTrailingBit(~countOneBits(var_0.a.x)))).d.c;
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_3) -> f32 {
    global3 = arg_1.d.a.x;
    var var_0 = Struct_5(Struct_1(max(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.b.x, 1u), vec2<u32>(1u, arg_1.b.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_1.d.a.x), vec2<u32>(arg_1.b.x, arg_1.b.x) ^ arg_1.d.a)), vec4<f32>(arg_1.d.b.x, _wgslsmith_f_op_f32(abs(arg_1.d.b.x)), _wgslsmith_f_op_f32(631f + -316f), 564f), -arg_0, select(func_5(arg_1.a).d.d & -vec2<i32>(-5210i, arg_1.a.a), _wgslsmith_mod_vec2_i32(-arg_1.c.wz, arg_1.c.wy << (arg_1.b.zz % vec2<u32>(32u))), true)), _wgslsmith_f_op_f32(step(1097f, _wgslsmith_f_op_f32(select(func_5(Struct_2(arg_1.c.x)).d.b.x, arg_1.d.b.x, true)))), u_input.a, func_6(func_5(func_5(Struct_2(-1i)).a), Struct_4(~arg_0, arg_1.d.a.x), countOneBits(vec2<i32>(-55716i, -37414i)), func_5(Struct_2(-1i & arg_0.x)).d));
    var_0 = Struct_5(Struct_1(~var_0.a.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-216f, var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + var_0.b) + var_0.a.b.x), _wgslsmith_f_op_f32(select(var_0.b, func_5(arg_1.a).d.b.x, true)), -686f), abs(vec4<i32>(-2147483647i, func_1(false, vec2<u32>(1u, arg_1.d.a.x), Struct_5(Struct_1(vec2<u32>(12922u, 28607u), vec4<f32>(arg_1.d.b.x, arg_1.d.b.x, -1672f, 1143f), vec4<i32>(-1i, u_input.a, -1i, 0i), vec2<i32>(0i, 34959i)), arg_1.d.b.x, -1i, Struct_4(vec4<i32>(1i, 2147483647i, u_input.c.x, arg_1.d.d.x), 1u)), u_input.c.x).x, arg_1.d.d.x, ~(-1i))), arg_1.d.d), _wgslsmith_f_op_f32(-var_0.b), arg_1.c.x, Struct_4(select(arg_0, var_0.d.a, all(vec4<bool>(true, true, true, true))), arg_1.b.x >> (~firstLeadingBit(1u) % 32u)));
    global3 = (26826u & ~var_0.d.b) & 26962u;
    var var_1 = -_wgslsmith_dot_vec3_i32(abs(~arg_1.c.yxz), vec3<i32>(u_input.c.x, firstLeadingBit(-4624i), -u_input.a)) >= u_input.c.x;
    return arg_1.d.b.x;
}

fn func_8(arg_0: f32, arg_1: vec3<u32>) -> Struct_3 {
    global2 = array<Struct_3, 2>();
    global1 = array<Struct_5, 32>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(317f, -437f, arg_0)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(291f, arg_0, arg_0) * vec3<f32>(arg_0, 1311f, -613f)) - vec3<f32>(-928f, -1505f, 1000f))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_7(vec4<i32>(-16814i, u_input.c.x, u_input.a, -15313i), global2[_wgslsmith_index_u32(0u, 2u)])), _wgslsmith_f_op_f32(arg_0 + -471f), _wgslsmith_f_op_f32(abs(1899f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 262f, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -856f, arg_0)))))));
    var var_1 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), !func_3(arg_0, Struct_3(Struct_2(u_input.a), vec3<u32>(8441u, u_input.d.x, 33790u), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(arg_1.yz, vec4<f32>(-1000f, -205f, -1000f, var_0.x), vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, -39474i), vec2<i32>(-2147483647i, u_input.a))), ~u_input.b, ~vec4<u32>(arg_1.x, arg_1.x, 14590u, 7237u)).zzy, false));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * 1081f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -2039f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_0.x, 674f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -583f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true)))))))));
    return Struct_3(func_4(Struct_1(~vec2<u32>(1964u, 5724u), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(arg_0 * var_0.x), _wgslsmith_f_op_f32(-var_2.x)), vec4<i32>(abs(36840i), _wgslsmith_div_i32(0i, -1i), ~u_input.c.x, u_input.c.x), (vec2<i32>(2147483647i, u_input.a) >> (u_input.d % vec2<u32>(32u))) << (arg_1.xx % vec2<u32>(32u))), vec3<i32>(firstTrailingBit(1i), max(u_input.a, _wgslsmith_mult_i32(u_input.a, -1i)), u_input.c.x), Struct_4(func_6(Struct_3(Struct_2(u_input.a), arg_1, vec4<i32>(-48562i, 12278i, 1i, 2147483647i), Struct_1(u_input.d, vec4<f32>(var_2.x, arg_0, arg_0, 593f), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.a), vec2<i32>(0i, u_input.c.x))), func_6(global2[_wgslsmith_index_u32(u_input.b, 2u)], Struct_4(vec4<i32>(u_input.a, -2962i, -2147483647i, u_input.c.x), 1u), u_input.c, Struct_1(u_input.d, vec4<f32>(-1223f, 582f, -1000f, -955f), vec4<i32>(-2382i, -2147483647i, u_input.c.x, -8437i), vec2<i32>(-30847i, -1i))), vec2<i32>(-16506i, -6262i), func_5(Struct_2(-27513i)).d).a, _wgslsmith_sub_u32(u_input.b, ~arg_1.x)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_1.x), vec2<u32>(arg_1.x, u_input.b)))), max(firstLeadingBit(vec3<u32>(reverseBits(87703u), 37469u, u_input.b)), reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 1u, 1u), vec3<u32>(6996u, u_input.b, 11486u), vec3<u32>(49893u, arg_1.x, 16408u)))), -vec4<i32>(u_input.c.x, 0i, -(u_input.c.x & u_input.c.x), func_6(func_5(Struct_2(37165i)), Struct_4(vec4<i32>(u_input.c.x, -2147483647i, 0i, u_input.c.x), 4294967295u), vec2<i32>(u_input.a, u_input.c.x), func_5(Struct_2(u_input.c.x)).d).a.x), func_5(Struct_2(_wgslsmith_div_i32(u_input.a, -u_input.a))).d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(func_1(all(vec2<bool>(false, false)), vec2<u32>(u_input.b, u_input.d.x), Struct_5(Struct_1(vec2<u32>(23661u, u_input.d.x), vec4<f32>(-759f, -1000f, -2103f, -694f), vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, -33188i), u_input.c), 875f, u_input.c.x, Struct_4(vec4<i32>(-13164i, u_input.c.x, u_input.c.x, -2147483647i), u_input.b)), u_input.c.x), Struct_3(func_5(Struct_2(2147483647i)).a, ~vec3<u32>(u_input.d.x, u_input.b, 1u), -vec4<i32>(u_input.a, u_input.a, u_input.a, 67629i), Struct_1(u_input.d, vec4<f32>(-1481f, 1243f, -156f, -1037f), vec4<i32>(-1i, -54438i, 66292i, u_input.c.x), u_input.c))))), ~vec3<u32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(41100u, 40760u, 60480u, 1u), vec4<u32>(u_input.b, 15360u, 42538u, u_input.d.x)), ~select(u_input.d.x, 1u, true), u_input.d.x) % vec3<u32>(32u)));
    global3 = u_input.b;
    var var_1 = !any(vec3<bool>(true, true, _wgslsmith_f_op_f32(-680f * 1278f) >= var_0.d.b.x));
    global0 = var_0.d.b.x;
    var var_2 = func_5(func_5(Struct_2(var_0.c.x)).a).a;
    global0 = _wgslsmith_f_op_f32(sign(-1904f));
    var_1 = !all(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), any(vec4<bool>(true, true, true, true))), vec3<bool>(1416f <= var_0.d.b.x, true, u_input.a == u_input.a), true));
    var var_3 = var_0.d.b.yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~u_input.b, ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.d.a.x, 106876u), ~4294967295u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.b.x * -691f) * _wgslsmith_f_op_f32(floor(715f))))), var_2.a | _wgslsmith_sub_i32(func_6(Struct_3(var_0.a, vec3<u32>(1u, var_0.d.a.x, 14435u), var_0.c, var_0.d), func_6(global2[_wgslsmith_index_u32(4294967295u, 2u)], Struct_4(var_0.d.c, 49627u), var_0.c.wy, Struct_1(var_0.d.a, var_0.d.b, var_0.d.c, var_0.d.c.wx)), -u_input.c, var_0.d).a.x, var_0.d.c.x), func_5(Struct_2(~_wgslsmith_add_i32(-2147483647i, 34585i))).d.c.yzx, -(~(~(var_0.c | var_0.d.c))));
}

