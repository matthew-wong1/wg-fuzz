struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 16> = array<Struct_5, 16>(Struct_5(Struct_1(vec3<bool>(false, false, false), -718f, vec2<f32>(625f, -535f), vec4<u32>(4294967295u, 32579u, 31275u, 4294967295u), vec4<f32>(-889f, 308f, 231f, -828f)), vec2<i32>(1i, -78759i), Struct_1(vec3<bool>(false, false, false), 307f, vec2<f32>(356f, -1265f), vec4<u32>(1u, 4294967295u, 4294967295u, 43028u), vec4<f32>(728f, -1131f, -120f, 958f)), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 2687i), vec4<u32>(1u, 1u, 1u, 439u)), Struct_5(Struct_1(vec3<bool>(false, true, false), 176f, vec2<f32>(-314f, 1000f), vec4<u32>(40629u, 54732u, 56465u, 12587u), vec4<f32>(597f, 993f, 146f, 1056f)), vec2<i32>(-39194i, 0i), Struct_1(vec3<bool>(true, false, true), -313f, vec2<f32>(610f, 715f), vec4<u32>(44153u, 4294967295u, 0u, 0u), vec4<f32>(-178f, -1482f, -441f, -2685f)), vec4<i32>(-83185i, 2926i, i32(-2147483648), -44752i), vec4<u32>(20048u, 0u, 14709u, 21287u)), Struct_5(Struct_1(vec3<bool>(false, false, true), 386f, vec2<f32>(505f, -634f), vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<f32>(1267f, -241f, -1000f, -1657f)), vec2<i32>(-23737i, 47088i), Struct_1(vec3<bool>(false, true, true), 483f, vec2<f32>(-710f, 1514f), vec4<u32>(31068u, 473u, 4483u, 2800u), vec4<f32>(-1471f, 1157f, 661f, -1755f)), vec4<i32>(-5162i, 2548i, i32(-2147483648), -13740i), vec4<u32>(4294967295u, 79654u, 40970u, 10908u)), Struct_5(Struct_1(vec3<bool>(true, false, true), 910f, vec2<f32>(1846f, 551f), vec4<u32>(0u, 6852u, 44560u, 30203u), vec4<f32>(-2006f, -1000f, -427f, 1201f)), vec2<i32>(0i, i32(-2147483648)), Struct_1(vec3<bool>(true, false, true), 269f, vec2<f32>(-429f, 910f), vec4<u32>(0u, 45222u, 50326u, 30538u), vec4<f32>(1452f, -503f, 650f, 647f)), vec4<i32>(i32(-2147483648), -14928i, 163i, 12571i), vec4<u32>(0u, 4294967295u, 51703u, 26802u)), Struct_5(Struct_1(vec3<bool>(true, false, false), 728f, vec2<f32>(-1106f, -1766f), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<f32>(580f, 548f, -467f, 280f)), vec2<i32>(1i, 1i), Struct_1(vec3<bool>(false, true, true), 1699f, vec2<f32>(-974f, 1428f), vec4<u32>(38792u, 0u, 4294967295u, 50978u), vec4<f32>(1000f, 453f, -288f, -156f)), vec4<i32>(i32(-2147483648), 54648i, -17265i, 0i), vec4<u32>(1u, 0u, 4294967295u, 1308u)), Struct_5(Struct_1(vec3<bool>(true, false, false), 253f, vec2<f32>(1366f, 904f), vec4<u32>(0u, 31425u, 4294967295u, 44372u), vec4<f32>(-634f, 1017f, 1306f, 847f)), vec2<i32>(-25730i, 2147483647i), Struct_1(vec3<bool>(false, true, false), 135f, vec2<f32>(552f, 890f), vec4<u32>(19234u, 21537u, 31851u, 1u), vec4<f32>(-1000f, -595f, -138f, -437f)), vec4<i32>(i32(-2147483648), -1i, -18941i, 22735i), vec4<u32>(24350u, 53739u, 0u, 4294967295u)), Struct_5(Struct_1(vec3<bool>(true, true, true), 191f, vec2<f32>(1484f, 1533f), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<f32>(-990f, 484f, 136f, -695f)), vec2<i32>(7053i, -1i), Struct_1(vec3<bool>(true, true, false), 1000f, vec2<f32>(-672f, -100f), vec4<u32>(1u, 99840u, 1u, 4294967295u), vec4<f32>(686f, -1000f, 588f, 1024f)), vec4<i32>(0i, i32(-2147483648), 1i, -32045i), vec4<u32>(11520u, 1u, 1u, 0u)), Struct_5(Struct_1(vec3<bool>(false, false, false), 173f, vec2<f32>(-1439f, -468f), vec4<u32>(1u, 4294967295u, 22433u, 0u), vec4<f32>(1070f, 1196f, -1000f, 1000f)), vec2<i32>(-1i, i32(-2147483648)), Struct_1(vec3<bool>(true, true, true), -630f, vec2<f32>(-341f, 1425f), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<f32>(926f, -754f, 606f, -465f)), vec4<i32>(-1i, -1i, -1i, 0i), vec4<u32>(1u, 0u, 4294967295u, 25647u)), Struct_5(Struct_1(vec3<bool>(false, false, false), -232f, vec2<f32>(-908f, 733f), vec4<u32>(32514u, 77162u, 41504u, 49413u), vec4<f32>(790f, -1000f, 192f, -519f)), vec2<i32>(0i, -9783i), Struct_1(vec3<bool>(false, true, true), -584f, vec2<f32>(-1599f, -516f), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<f32>(891f, 222f, 1276f, -1390f)), vec4<i32>(83704i, -12191i, 60880i, -36257i), vec4<u32>(65637u, 23306u, 2156u, 4294967295u)), Struct_5(Struct_1(vec3<bool>(false, false, false), -2765f, vec2<f32>(676f, 783f), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<f32>(-513f, -1725f, -426f, 106f)), vec2<i32>(-2781i, 2147483647i), Struct_1(vec3<bool>(true, false, true), -1315f, vec2<f32>(1142f, 1000f), vec4<u32>(1u, 4294967295u, 1u, 31032u), vec4<f32>(-760f, 1147f, -250f, -564f)), vec4<i32>(i32(-2147483648), 1i, -46610i, 0i), vec4<u32>(41786u, 41876u, 0u, 62999u)), Struct_5(Struct_1(vec3<bool>(false, true, false), -900f, vec2<f32>(-1000f, -1737f), vec4<u32>(1u, 16004u, 0u, 1u), vec4<f32>(895f, -177f, -1299f, 1325f)), vec2<i32>(0i, 0i), Struct_1(vec3<bool>(true, true, true), -1076f, vec2<f32>(816f, -378f), vec4<u32>(103721u, 61298u, 5947u, 15651u), vec4<f32>(1105f, 1000f, -2153f, -627f)), vec4<i32>(20528i, -65853i, 11901i, -16323i), vec4<u32>(66682u, 1689u, 67061u, 1u)), Struct_5(Struct_1(vec3<bool>(false, false, false), -1679f, vec2<f32>(-466f, -1552f), vec4<u32>(1u, 84931u, 18431u, 12538u), vec4<f32>(223f, 1446f, 1193f, 1256f)), vec2<i32>(-1i, 0i), Struct_1(vec3<bool>(false, true, false), 152f, vec2<f32>(584f, -1160f), vec4<u32>(0u, 9563u, 0u, 49515u), vec4<f32>(107f, -646f, 1249f, 638f)), vec4<i32>(5884i, -1i, -13281i, -12095i), vec4<u32>(1u, 4294967295u, 0u, 5364u)), Struct_5(Struct_1(vec3<bool>(true, false, false), -1000f, vec2<f32>(265f, -241f), vec4<u32>(1u, 4294967295u, 10423u, 0u), vec4<f32>(896f, -1501f, 984f, -680f)), vec2<i32>(17178i, -32176i), Struct_1(vec3<bool>(true, false, true), 491f, vec2<f32>(626f, -1161f), vec4<u32>(154688u, 0u, 0u, 27716u), vec4<f32>(-185f, -553f, 384f, -394f)), vec4<i32>(25860i, 16036i, -1i, 13040i), vec4<u32>(1u, 1u, 1548u, 38245u)), Struct_5(Struct_1(vec3<bool>(false, false, false), -1000f, vec2<f32>(-541f, 802f), vec4<u32>(0u, 42792u, 52627u, 77178u), vec4<f32>(-823f, 353f, 715f, -365f)), vec2<i32>(-1i, 30943i), Struct_1(vec3<bool>(true, false, true), -885f, vec2<f32>(-1680f, -1318f), vec4<u32>(4294967295u, 1u, 8294u, 46263u), vec4<f32>(-894f, 952f, 1139f, 1000f)), vec4<i32>(-22127i, 1i, 18608i, 2147483647i), vec4<u32>(4294967295u, 0u, 1u, 0u)), Struct_5(Struct_1(vec3<bool>(false, true, true), 944f, vec2<f32>(-586f, 215f), vec4<u32>(0u, 20944u, 0u, 0u), vec4<f32>(-919f, 631f, 751f, -526f)), vec2<i32>(i32(-2147483648), -1i), Struct_1(vec3<bool>(true, true, false), 1000f, vec2<f32>(377f, 667f), vec4<u32>(4294967295u, 45208u, 4294967295u, 17641u), vec4<f32>(131f, -120f, 1000f, -2585f)), vec4<i32>(2147483647i, -1i, 13581i, 0i), vec4<u32>(1u, 2776u, 0u, 24607u)), Struct_5(Struct_1(vec3<bool>(false, true, true), 984f, vec2<f32>(687f, 726f), vec4<u32>(1u, 19527u, 6014u, 22079u), vec4<f32>(-335f, -716f, 872f, 1295f)), vec2<i32>(1i, 40198i), Struct_1(vec3<bool>(false, false, false), -1557f, vec2<f32>(-250f, 493f), vec4<u32>(24673u, 0u, 1u, 548u), vec4<f32>(-321f, -1000f, 527f, 778f)), vec4<i32>(53413i, 0i, 0i, -17829i), vec4<u32>(3026u, 0u, 35935u, 19046u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    global0 = array<Struct_5, 16>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(round(arg_0.b)), arg_0.d.x);
    var var_1 = Struct_3(Struct_1(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-120f, arg_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1460f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(arg_0.c, vec2<f32>(arg_0.e.x, 624f))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, 253f), _wgslsmith_f_op_vec2_f32(sign(arg_0.e.xw))))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b, 1u, 82831u, var_0.b), arg_0.d >> (vec4<u32>(0u, 4405u, 1u, arg_0.d.x) % vec4<u32>(32u))), arg_0.d), vec4<f32>(1f, _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(-arg_0.e.x)), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) * _wgslsmith_f_op_f32(f32(-1f) * -1180f)))));
    var var_2 = true;
    var var_3 = Struct_4(484f, _wgslsmith_clamp_u32(var_1.a.d.x, abs(30899u), abs(_wgslsmith_sub_u32(var_0.b, var_1.a.d.x) ^ _wgslsmith_add_u32(arg_0.d.x, 64746u))));
    return 10090i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_2) -> vec4<i32> {
    global0 = array<Struct_5, 16>();
    global0 = array<Struct_5, 16>();
    let var_0 = true;
    var var_1 = Struct_2(arg_1, Struct_1(select(select(arg_0.a, arg_2.c.a, arg_1.a.x && true), arg_3.b.a, arg_3.a.a.x & true), arg_1.c.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * 852f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(565f, 889f)) * arg_1.c.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d.x, arg_0.d.x, arg_3.a.d.x), vec3<u32>(26375u, 0u, 19287u)) | _wgslsmith_div_u32(arg_1.d.x, arg_1.d.x), countOneBits(arg_3.b.d.x ^ 0u), arg_0.d.x ^ ~arg_3.b.d.x, 0u), vec4<f32>(2267f, _wgslsmith_f_op_f32(-1272f * _wgslsmith_f_op_f32(arg_1.c.x + 1469f)), arg_3.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.e.x, 1693f))))), 2147483647i);
    global0 = array<Struct_5, 16>();
    return _wgslsmith_mod_vec4_i32(~firstLeadingBit(-(~vec4<i32>(-2147483647i, 2147483647i, arg_2.d.x, arg_3.c))), arg_2.d);
}

fn func_2(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = arg_1.x;
    var var_1 = func_4(arg_0.a, Struct_1(arg_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) + arg_0.a.b), arg_0.a.e.yz, arg_0.c.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_0.a.e), arg_0.c.e)))), Struct_5(arg_0.c, vec2<i32>(~u_input.a ^ func_3(arg_0.c, arg_1.x), -_wgslsmith_add_i32(u_input.c, u_input.a)), arg_0.a, _wgslsmith_mod_vec4_i32(-max(vec4<i32>(arg_0.d.x, -1i, -24573i, 0i), u_input.d), vec4<i32>(-1i) * -vec4<i32>(2565i, -1i, u_input.a, 33464i)), vec4<u32>(~_wgslsmith_sub_u32(arg_0.a.d.x, arg_0.e.x), 1u, 1u, 1977u)), Struct_2(Struct_1(select(!arg_0.c.a, arg_0.c.a, !vec3<bool>(arg_1.x, arg_0.a.a.x, arg_0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(918f))), _wgslsmith_f_op_vec2_f32(exp2(arg_0.c.c)), ~arg_0.e, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1547f, arg_0.c.c.x, 1072f, arg_0.a.b))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.b, arg_0.a.e.x, -376f, -1539f), arg_0.c.e)))), Struct_1(select(vec3<bool>(false, true, arg_0.c.a.x), !vec3<bool>(true, false, arg_1.x), vec3<bool>(false, false, arg_0.c.a.x)), arg_0.c.e.x, _wgslsmith_f_op_vec2_f32(exp2(arg_0.a.e.ww)), select(abs(vec4<u32>(1u, 21381u, arg_0.c.d.x, arg_0.a.d.x)), arg_0.a.d, vec4<bool>(arg_0.a.a.x, false, true, arg_0.c.a.x)), vec4<f32>(arg_0.a.b, _wgslsmith_f_op_f32(-arg_0.c.c.x), _wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_f32(-arg_0.c.e.x))), -13166i));
    var var_2 = 19733i >= countOneBits(arg_0.b.x);
    var_0 = all(select(select(vec4<bool>(true, arg_1.x, arg_0.c.a.x, false), select(!vec4<bool>(true, false, true, arg_1.x), vec4<bool>(false, arg_1.x, arg_0.c.a.x, false), true || arg_0.a.a.x), !select(vec4<bool>(true, false, arg_1.x, arg_0.c.a.x), vec4<bool>(arg_0.c.a.x, arg_1.x, true, true), arg_1.x)), select(vec4<bool>(arg_0.a.c.x <= -129f, true, true, true), select(vec4<bool>(true, arg_0.c.a.x, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, arg_0.c.a.x, false, arg_1.x), arg_1.x), u_input.a <= 0i), any(!vec4<bool>(arg_1.x, true, arg_0.c.a.x, arg_1.x))), 38907u <= ((0u << (arg_2.x % 32u)) & 67035u)));
    var_0 = false & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.e.x * 506f))) != _wgslsmith_f_op_f32(-701f * -419f));
    return -select(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-20605i, arg_0.b.x), arg_0.d.yy, vec2<i32>(-26472i, var_1.x))) >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.c.d.x, arg_2.x), vec2<u32>(1u, arg_0.e.x)) & (vec2<u32>(4294967295u, arg_0.a.d.x) << (vec2<u32>(1u, 77975u) % vec2<u32>(32u)))) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, u_input.a) | vec2<i32>(-1i, u_input.a), var_1.zw), select(arg_0.c.a.xz, arg_1.yx, select(vec2<bool>(false, arg_1.x), arg_1.xx, vec2<bool>(arg_1.x, arg_0.c.a.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    let var_0 = arg_1.a;
    var var_1 = ~(~8531i);
    let var_2 = ~func_2(Struct_5(arg_1, firstLeadingBit(vec2<i32>(u_input.a, -33324i)), arg_1, ~vec4<i32>(8834i, arg_0.x, -1i, -63363i) & countOneBits(u_input.d), arg_1.d), arg_1.a, abs(arg_1.d.wyz));
    return select(!select(vec3<bool>(any(arg_1.a.xz), u_input.c >= u_input.c, var_0.x == true), vec3<bool>(true, true, true), !any(vec3<bool>(var_0.x, true, false))), !select(!arg_1.a, select(var_0, !vec3<bool>(arg_1.a.x, true, arg_1.a.x), var_0), true), !(_wgslsmith_mult_u32(arg_2 | arg_2, ~arg_1.d.x) <= arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = func_1(vec2<i32>(u_input.c, u_input.c), Struct_1(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(667f, _wgslsmith_div_f32(286f, 516f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(633f, -1183f)))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(48242u, 0u, 77471u, 1u), vec4<u32>(1u, 4294967295u, 97828u, 27512u)), vec4<u32>(1848u, 57758u, 57670u, 32609u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(513f, -382f, -309f, 261f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-778f, 1000f, -217f, -190f)))))), _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, 1u), ~_wgslsmith_add_u32(~4294967295u, 1u)));
    var var_2 = 0i;
    var var_3 = Struct_5(Struct_1(select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), !var_1, true), vec3<bool>(true, var_1.x, var_1.x), all(var_1.zx)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -479f))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(649f)), _wgslsmith_f_op_f32(select(-2962f, 1039f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1171f)) - -568f)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(19102u, 4294967295u, 57237u, 22208u), vec4<u32>(7032u, 19924u, 1u, 4294967295u), vec4<u32>(23301u, 0u, 4294967295u, 6312u)) ^ vec4<u32>(19986u, 1u, 0u, 1u)), vec4<f32>(_wgslsmith_div_f32(-516f, _wgslsmith_f_op_f32(select(-193f, 1019f, var_1.x))), -1493f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1056f * -938f)), _wgslsmith_f_op_f32(-517f + _wgslsmith_f_op_f32(-858f + -1248f)))), max(vec2<i32>(min(func_4(Struct_1(vec3<bool>(var_1.x, var_1.x, var_1.x), -477f, vec2<f32>(-348f, 1642f), vec4<u32>(29701u, 1u, 108299u, 1u), vec4<f32>(474f, -442f, 462f, 720f)), Struct_1(vec3<bool>(true, var_1.x, var_1.x), 2049f, vec2<f32>(1000f, 1026f), vec4<u32>(10853u, 4294967295u, 0u, 25272u), vec4<f32>(1852f, 1314f, 602f, 215f)), Struct_5(Struct_1(vec3<bool>(true, true, false), -180f, vec2<f32>(1375f, -315f), vec4<u32>(4294967295u, 1u, 25689u, 29384u), vec4<f32>(907f, 152f, 773f, -204f)), u_input.d.yz, Struct_1(var_1, 560f, vec2<f32>(-810f, 664f), vec4<u32>(26632u, 0u, 1u, 0u), vec4<f32>(-891f, 807f, -1537f, 880f)), u_input.d, vec4<u32>(28931u, 0u, 42008u, 0u)), Struct_2(Struct_1(var_1, -1078f, vec2<f32>(-2233f, 2500f), vec4<u32>(26863u, 0u, 25043u, 40900u), vec4<f32>(-373f, 1302f, -107f, -556f)), Struct_1(vec3<bool>(var_1.x, false, var_1.x), 1609f, vec2<f32>(-525f, -586f), vec4<u32>(0u, 0u, 4113u, 0u), vec4<f32>(-1000f, 130f, -721f, -600f)), 43972i)).x, u_input.d.x), ~countOneBits(u_input.c)), countOneBits(u_input.d.yx)), Struct_1(vec3<bool>(var_1.x, true, false), 715f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1484f, -296f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-499f, -1282f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1030f, 1000f), vec2<f32>(389f, 439f), vec2<bool>(var_1.x, false))))), !select(var_1.yz, var_1.yz, vec2<bool>(false, var_1.x)))), ~(~abs(vec4<u32>(1u, 0u, 1u, 13158u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-187f, -1000f, 989f, 423f), vec4<f32>(765f, -1094f, 818f, -1295f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-486f, 700f, -1583f, -211f) + vec4<f32>(-1352f, -342f, 2633f, 987f))) + vec4<f32>(_wgslsmith_f_op_f32(-793f - 1550f), -522f, _wgslsmith_f_op_f32(650f - 1160f), _wgslsmith_f_op_f32(-1030f * -530f)))), ((vec4<i32>(u_input.a, -2147483647i, 20051i, -1i) >> (vec4<u32>(48959u, 31213u, 4294967295u, 32327u) % vec4<u32>(32u))) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) | u_input.d, ~vec4<u32>(~1u, ~_wgslsmith_mod_u32(0u, 62505u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 31175u, 22983u), ~vec4<u32>(1u, 51730u, 0u, 21083u)), 4294967295u));
    let var_4 = !func_1(~u_input.d.zw, var_3.c, reverseBits(abs(50619u))).yx;
    global0 = array<Struct_5, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.c.e.x, -136f, -288f, var_3.a.b), vec4<f32>(354f, 1079f, var_3.c.e.x, var_3.c.e.x)))) - var_3.c.e) - _wgslsmith_f_op_vec4_f32(floor(var_3.c.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-129f, var_3.a.b, var_3.c.b))))), countOneBits(vec3<i32>(-28806i, _wgslsmith_dot_vec3_i32(u_input.d.www, vec3<i32>(0i, -2147483647i, u_input.b)), 2147483647i)));
}

