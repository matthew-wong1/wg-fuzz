struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(2147483647i, 2147483647i, -23015i, -17898i, -14127i, 17162i, 23112i);

var<private> global1: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_1(vec2<f32>(-1563f, -180f), vec4<i32>(-4180i, 11074i, 16174i, 38544i), 493f, 44249u), Struct_1(vec2<f32>(600f, 823f), vec4<i32>(-5715i, 2606i, i32(-2147483648), 12086i), 300f, 96701u), vec4<f32>(-369f, -447f, -986f, 160f), 606f, -1i), Struct_3(Struct_1(vec2<f32>(-667f, 1498f), vec4<i32>(-37738i, 1i, -1i, -8755i), -959f, 1u), Struct_1(vec2<f32>(214f, -1481f), vec4<i32>(0i, 1i, 2147483647i, -3891i), 685f, 4294967295u), vec4<f32>(-2503f, -1437f, -2070f, 572f), 472f, -20956i), Struct_3(Struct_1(vec2<f32>(-1115f, -1000f), vec4<i32>(25642i, 1i, -12963i, 2147483647i), 949f, 0u), Struct_1(vec2<f32>(-513f, -1000f), vec4<i32>(1i, -54241i, -1i, -23312i), -209f, 13634u), vec4<f32>(941f, -970f, -1569f, 1803f), 423f, -55928i), Struct_3(Struct_1(vec2<f32>(1000f, 746f), vec4<i32>(-2061i, 0i, i32(-2147483648), i32(-2147483648)), -191f, 4294967295u), Struct_1(vec2<f32>(300f, 874f), vec4<i32>(2147483647i, 1i, 2885i, 2147483647i), -1468f, 31502u), vec4<f32>(1540f, 493f, 1810f, 492f), -845f, 0i), Struct_3(Struct_1(vec2<f32>(-1000f, 1309f), vec4<i32>(2147483647i, 2147483647i, 16046i, -1i), -389f, 64545u), Struct_1(vec2<f32>(-1265f, -727f), vec4<i32>(-1i, -6256i, i32(-2147483648), -22470i), 169f, 63533u), vec4<f32>(196f, 904f, -131f, 691f), -402f, 102684i), Struct_3(Struct_1(vec2<f32>(523f, -386f), vec4<i32>(-1i, -26417i, 18533i, -8154i), 350f, 85609u), Struct_1(vec2<f32>(160f, -976f), vec4<i32>(2147483647i, 2147483647i, -1i, 16960i), -408f, 471u), vec4<f32>(-1099f, -223f, 662f, 1430f), -1361f, -1i), Struct_3(Struct_1(vec2<f32>(-1408f, -548f), vec4<i32>(i32(-2147483648), 14180i, i32(-2147483648), 0i), -667f, 2145u), Struct_1(vec2<f32>(255f, -1027f), vec4<i32>(1i, 2147483647i, 1i, 1183i), 500f, 22961u), vec4<f32>(253f, -832f, -1038f, -557f), 1535f, -18613i), Struct_3(Struct_1(vec2<f32>(-295f, -474f), vec4<i32>(i32(-2147483648), -53747i, 60097i, -9425i), -128f, 4294967295u), Struct_1(vec2<f32>(1939f, 621f), vec4<i32>(-1i, -6832i, -13424i, 1i), -1000f, 65349u), vec4<f32>(115f, -102f, 284f, 747f), -1162f, -43852i), Struct_3(Struct_1(vec2<f32>(-661f, -1262f), vec4<i32>(2147483647i, -1i, -41404i, 33007i), 1036f, 0u), Struct_1(vec2<f32>(-1935f, -2021f), vec4<i32>(1i, 15233i, 16109i, -1i), 802f, 0u), vec4<f32>(-963f, 1174f, 1000f, -172f), -385f, 46886i), Struct_3(Struct_1(vec2<f32>(-345f, -735f), vec4<i32>(1i, 1i, -1i, -1i), 1327f, 4294967295u), Struct_1(vec2<f32>(1254f, -699f), vec4<i32>(-36867i, 32730i, 1i, 2147483647i), -469f, 4294967295u), vec4<f32>(-164f, 835f, 1940f, 285f), -137f, 153i), Struct_3(Struct_1(vec2<f32>(-355f, 870f), vec4<i32>(i32(-2147483648), -53i, 0i, 3919i), -715f, 6929u), Struct_1(vec2<f32>(362f, 1144f), vec4<i32>(1i, -53355i, 20409i, 2147483647i), 437f, 4294967295u), vec4<f32>(-436f, -203f, -471f, -237f), 1247f, -259i), Struct_3(Struct_1(vec2<f32>(-1726f, 1094f), vec4<i32>(1i, -38578i, -36958i, 5204i), -1279f, 4294967295u), Struct_1(vec2<f32>(408f, 1411f), vec4<i32>(2147483647i, i32(-2147483648), 0i, -58812i), -1505f, 0u), vec4<f32>(-351f, 722f, 609f, -693f), -1000f, 0i), Struct_3(Struct_1(vec2<f32>(1062f, -613f), vec4<i32>(2147483647i, 1i, 2147483647i, 1i), -1856f, 124354u), Struct_1(vec2<f32>(-956f, -1000f), vec4<i32>(3739i, -33497i, i32(-2147483648), -2606i), 269f, 4294967295u), vec4<f32>(407f, 198f, -513f, 1500f), -987f, 20666i), Struct_3(Struct_1(vec2<f32>(-219f, -2982f), vec4<i32>(-33168i, -1i, 43920i, -18766i), 577f, 46034u), Struct_1(vec2<f32>(-115f, 639f), vec4<i32>(0i, 1i, i32(-2147483648), -60763i), -620f, 1u), vec4<f32>(268f, 1216f, 958f, 754f), -694f, 60147i), Struct_3(Struct_1(vec2<f32>(480f, -1516f), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 0i), 1237f, 36800u), Struct_1(vec2<f32>(368f, -316f), vec4<i32>(-1i, -83516i, 25812i, 1i), -839f, 0u), vec4<f32>(396f, 302f, 190f, -745f), -1336f, 2147483647i), Struct_3(Struct_1(vec2<f32>(2310f, 1317f), vec4<i32>(0i, -88081i, -10362i, 2147483647i), 892f, 51380u), Struct_1(vec2<f32>(1815f, -1000f), vec4<i32>(-37574i, i32(-2147483648), -1i, -1i), 209f, 75146u), vec4<f32>(856f, 2013f, -972f, -292f), 1698f, -6488i), Struct_3(Struct_1(vec2<f32>(-833f, -650f), vec4<i32>(-55807i, i32(-2147483648), 2147483647i, -1i), 1000f, 11601u), Struct_1(vec2<f32>(-131f, -2344f), vec4<i32>(-7628i, 1i, -67539i, -22617i), -1000f, 4294967295u), vec4<f32>(-127f, 135f, 591f, 2412f), 1284f, 1i), Struct_3(Struct_1(vec2<f32>(-574f, -222f), vec4<i32>(2096i, i32(-2147483648), -27693i, i32(-2147483648)), 1732f, 26099u), Struct_1(vec2<f32>(819f, -234f), vec4<i32>(-20449i, 13463i, 75872i, 2466i), 1014f, 4294967295u), vec4<f32>(-1076f, 216f, -1000f, -459f), -347f, -19105i), Struct_3(Struct_1(vec2<f32>(-610f, -343f), vec4<i32>(0i, 19523i, 18267i, -49099i), -897f, 1u), Struct_1(vec2<f32>(-373f, 625f), vec4<i32>(42549i, i32(-2147483648), 4079i, -19641i), 252f, 4403u), vec4<f32>(1043f, -991f, 1073f, -586f), -1288f, 19146i), Struct_3(Struct_1(vec2<f32>(3501f, 518f), vec4<i32>(2147483647i, -21052i, -51581i, i32(-2147483648)), -249f, 1u), Struct_1(vec2<f32>(-1000f, 2429f), vec4<i32>(25898i, 24357i, -1i, -4459i), -1348f, 0u), vec4<f32>(565f, -1000f, -922f, 278f), -1836f, -1i), Struct_3(Struct_1(vec2<f32>(-1256f, -736f), vec4<i32>(i32(-2147483648), -1i, 0i, 1i), -1728f, 28187u), Struct_1(vec2<f32>(908f, -550f), vec4<i32>(i32(-2147483648), 2147483647i, 19081i, 38309i), 1112f, 27766u), vec4<f32>(-345f, -614f, 448f, -149f), 896f, 63907i), Struct_3(Struct_1(vec2<f32>(-1044f, -1093f), vec4<i32>(0i, 18450i, 47568i, 1i), -736f, 4294967295u), Struct_1(vec2<f32>(644f, -2274f), vec4<i32>(2105i, -30972i, 49209i, 13630i), 906f, 51268u), vec4<f32>(-181f, -448f, 427f, -1669f), -1121f, -28915i), Struct_3(Struct_1(vec2<f32>(-467f, -346f), vec4<i32>(-22598i, 32656i, 418i, -35451i), 413f, 0u), Struct_1(vec2<f32>(1143f, -589f), vec4<i32>(-1i, 32180i, 2147483647i, i32(-2147483648)), -505f, 1u), vec4<f32>(-1329f, 2502f, -1144f, -186f), -1105f, i32(-2147483648)), Struct_3(Struct_1(vec2<f32>(-824f, -148f), vec4<i32>(28174i, -17921i, 2147483647i, -48589i), -254f, 128840u), Struct_1(vec2<f32>(107f, 1000f), vec4<i32>(-54336i, 1i, -1i, -31134i), -502f, 1u), vec4<f32>(297f, 155f, -495f, 1622f), -902f, -8764i), Struct_3(Struct_1(vec2<f32>(888f, 2195f), vec4<i32>(17948i, 35739i, 1i, 5428i), 1000f, 70871u), Struct_1(vec2<f32>(-647f, 1912f), vec4<i32>(-31682i, -38673i, 0i, 0i), 158f, 0u), vec4<f32>(-922f, 1755f, -556f, -1090f), 2201f, 1i), Struct_3(Struct_1(vec2<f32>(-454f, -976f), vec4<i32>(0i, -54105i, i32(-2147483648), 16380i), -1000f, 4294967295u), Struct_1(vec2<f32>(-1000f, -105f), vec4<i32>(-20014i, 1i, i32(-2147483648), -43514i), 639f, 4294967295u), vec4<f32>(-721f, -1117f, -1574f, -245f), 977f, 14400i), Struct_3(Struct_1(vec2<f32>(-408f, -2086f), vec4<i32>(1i, 0i, 1007i, 1782i), 433f, 0u), Struct_1(vec2<f32>(-2542f, 845f), vec4<i32>(2147483647i, -23626i, 2862i, 2147483647i), 1000f, 21084u), vec4<f32>(-441f, 384f, -1346f, -1000f), -526f, 29973i), Struct_3(Struct_1(vec2<f32>(886f, -1406f), vec4<i32>(15496i, 20177i, 2147483647i, 9362i), -791f, 1u), Struct_1(vec2<f32>(-1057f, -2544f), vec4<i32>(1i, 16893i, -9278i, 21973i), 2146f, 4294967295u), vec4<f32>(-772f, 1632f, 1000f, -188f), -1547f, 2147483647i));

var<private> global3: i32 = -1i;

var<private> global4: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = 1i;
    var var_1 = arg_0.a.b.yzy;
    let var_2 = countOneBits(1i);
    let var_3 = Struct_2(abs(firstLeadingBit(44922i << (u_input.b % 32u))) >> (_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(arg_0.b.d, arg_0.a.d << (1u % 32u))) % 32u));
    global2 = array<Struct_3, 28>();
    return arg_0.b.b.x;
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-279f, _wgslsmith_f_op_f32(194f - 1000f))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(3242i, u_input.a), i32(-1i) * -2147483647i, 0i, u_input.a), _wgslsmith_sub_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 7u)], 14934i, u_input.a, 0i), -vec4<i32>(8551i, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 7u)], u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1006u, 7u)], 18395i, global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(-11178i, global0[_wgslsmith_index_u32(u_input.b, 7u)], -35593i, -1i), vec4<i32>(-2147483647i, u_input.a, -2147483647i, 0i), vec4<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 7u)], 1i)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1232f, 619f)) - 1120f))), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1616f)), !any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)));
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_0.a.b.x, countOneBits(_wgslsmith_mult_i32(func_3(Struct_3(Struct_1(vec2<f32>(var_0.a.a.x, -1000f), vec4<i32>(-2147483647i, var_0.a.b.x, 12563i, global0[_wgslsmith_index_u32(u_input.b, 7u)]), var_0.b, 2933u), Struct_1(var_0.a.a, vec4<i32>(2147483647i, 1i, var_0.a.b.x, -2886i), -1161f, 0u), vec4<f32>(1000f, -763f, 720f, -155f), var_0.a.a.x, u_input.a)), ~u_input.a)), ~max(max(55941i, var_0.a.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(37892u, 7u)], var_0.a.b.x), var_0.a.b.xx))), ~(~(~(-var_0.a.b))), firstLeadingBit(-vec4<i32>(21165i, global0[_wgslsmith_index_u32(1u, 7u)], 14609i, -6065i)) | _wgslsmith_mult_vec4_i32(~(-vec4<i32>(u_input.a, 33560i, var_0.a.b.x, 19417i)), -vec4<i32>(57245i, u_input.a, global0[_wgslsmith_index_u32(203u, 7u)], -2147483647i)));
    let var_2 = vec2<i32>(1i, 0i);
    var var_3 = global2[_wgslsmith_index_u32(4294967295u, 28u)];
    var var_4 = Struct_4(Struct_2(_wgslsmith_add_i32(-select(1i, -1i, false), _wgslsmith_mod_i32(~var_2.x, var_3.e))), vec3<i32>(abs(abs(var_0.a.b.x >> (0u % 32u))), var_2.x, -6809i), ~u_input.b != (64500u << (~u_input.b % 32u)));
    return ~(_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(55857u, 37679u, var_0.a.d, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(59471u, 92997u, var_3.a.d, var_0.a.d), reverseBits(vec4<u32>(51095u, var_3.b.d, 46754u, var_3.b.d))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.d, u_input.b, 0u, u_input.b), firstLeadingBit(vec4<u32>(4294967295u, var_3.b.d, 4294967295u, var_3.b.d)))) | firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(var_0.a.d, var_3.a.d, var_3.a.d), ~var_0.a.d, u_input.b, 20926u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<u32>) -> i32 {
    var var_0 = !any(select(global1[_wgslsmith_index_u32(~1u | _wgslsmith_mult_u32(u_input.b, arg_2), 13u)], !(!global1[_wgslsmith_index_u32(arg_2, 13u)]), true));
    let var_1 = u_input.a == -global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u & u_input.b, ~3195u), _wgslsmith_sub_u32(select(70648u, 54797u, false), u_input.b)), 7u)];
    global0 = array<i32, 7>();
    let var_2 = func_2();
    let var_3 = Struct_3(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1.xw))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1494f, arg_1.x))), vec4<i32>(1i, -(~(-94286i)), 2147483647i, u_input.a), 601f, reverseBits(_wgslsmith_div_u32(1u, arg_3.x >> (4294967295u % 32u)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(arg_1.wx)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_1.xz)) + _wgslsmith_f_op_vec2_f32(exp2(arg_1.yx)))), max((vec4<i32>(u_input.a, 39966i, -1i, global0[_wgslsmith_index_u32(arg_2, 7u)]) ^ vec4<i32>(1i, 65132i, -2147483647i, -1i)) | vec4<i32>(14457i, 9521i, 40453i, -1i), ~firstLeadingBit(vec4<i32>(u_input.a, 0i, u_input.a, global0[_wgslsmith_index_u32(arg_2, 7u)]))), arg_1.x, _wgslsmith_dot_vec2_u32(arg_0.xx, ~arg_3)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_1)))), _wgslsmith_f_op_vec4_f32(trunc(arg_1)))), arg_1.x, global0[_wgslsmith_index_u32(5112u, 7u)]);
    return 42706i;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global3 = _wgslsmith_dot_vec4_i32(arg_0.b, arg_0.b);
    var var_0 = all(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), any(vec2<bool>(true, true))), vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(true, true)), select(vec2<bool>(any(vec4<bool>(false, false, true, true)), false), vec2<bool>(all(global1[_wgslsmith_index_u32(1u, 13u)]), false), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true)), true));
    var var_1 = !any(vec2<bool>(all(vec4<bool>(false, true, true, false)), !any(vec4<bool>(false, true, false, false))));
    var_0 = all(global1[_wgslsmith_index_u32(1u, 13u)]);
    global3 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d, 0u), ~vec2<u32>(u_input.b, ~1u))), 7u)];
    return Struct_1(arg_0.a, vec4<i32>(-38533i, arg_0.b.x, abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.b.x, global0[_wgslsmith_index_u32(arg_0.d, 7u)], u_input.a), vec3<i32>(u_input.a, 15910i, arg_0.b.x))), 8047i), _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.c)), firstLeadingBit(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 7>();
    global1 = array<vec3<bool>, 13>();
    var var_0 = Struct_5(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(204f, -318f), vec2<f32>(927f, 715f))), vec4<i32>(-24229i, func_1(vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<f32>(1360f, 1310f, -1166f, 1000f), 4294967295u, vec2<u32>(4294967295u, u_input.b)), -56933i, global0[_wgslsmith_index_u32(u_input.b, 7u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(524f + 386f), -1006f, true)), 70766u)), _wgslsmith_div_f32(-1516f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f))), false | any(!global1[_wgslsmith_index_u32(~4294967295u, 13u)]));
    let var_1 = Struct_2(firstLeadingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(32381u, 7u)]), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(var_0.a.d, 7u)], u_input.a))) << (63594u % 32u));
    let var_2 = 46586i;
    let var_3 = global2[_wgslsmith_index_u32(29039u, 28u)];
    let var_4 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(795f)), _wgslsmith_f_op_f32(-var_3.a.c)), vec2<f32>(-684f, var_0.b))), vec4<i32>(_wgslsmith_clamp_i32(29640i, u_input.a, var_0.a.b.x) | 1i, 2147483647i, var_2, ~abs(global0[_wgslsmith_index_u32(var_0.a.d, 7u)])), var_0.a.a.x, _wgslsmith_mult_u32(~var_0.a.d & ~var_3.b.d, 29479u)));
    let var_5 = Struct_4(Struct_2(var_4.b.x), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-57872i, u_input.a, var_0.a.b.x, 8282i), var_0.a.b), -18124i), -select(var_4.b.x, u_input.a, var_0.c) <= ~(1i << (~4294967295u % 32u)));
    global2 = array<Struct_3, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.x, 52470i << (abs(func_4(func_4(Struct_1(vec2<f32>(1304f, var_0.b), vec4<i32>(u_input.a, var_1.a, var_2, var_4.b.x), -1219f, var_3.b.d))).d) % 32u), var_4.b.xw, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-2040f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(540f))))))), var_0.a.a.x);
}

