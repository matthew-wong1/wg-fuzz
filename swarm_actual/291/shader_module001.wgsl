struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec4<bool>(false, false, false, false), vec2<f32>(488f, -536f), 756f, Struct_1(2147483647i, vec3<i32>(0i, -1i, -48891i), vec4<u32>(31103u, 4294967295u, 25973u, 4452u), vec3<f32>(-1389f, -207f, -586f), vec3<u32>(28123u, 7637u, 0u)), -11899i), Struct_2(vec4<bool>(true, false, true, true), vec2<f32>(364f, 895f), -1000f, Struct_1(-21809i, vec3<i32>(0i, 33604i, 2147483647i), vec4<u32>(0u, 1u, 0u, 45883u), vec3<f32>(-408f, -1479f, -810f), vec3<u32>(4294967295u, 24409u, 1u)), 2147483647i), Struct_2(vec4<bool>(false, false, true, false), vec2<f32>(-1031f, 250f), -447f, Struct_1(1i, vec3<i32>(-1i, -2328i, 2147483647i), vec4<u32>(34737u, 26024u, 4294967295u, 1u), vec3<f32>(-894f, 355f, 1635f), vec3<u32>(1u, 2282u, 11758u)), 20429i), Struct_2(vec4<bool>(true, true, false, false), vec2<f32>(1514f, 469f), -1000f, Struct_1(1i, vec3<i32>(1i, 2147483647i, 1i), vec4<u32>(0u, 64029u, 0u, 10014u), vec3<f32>(-106f, 2412f, -467f), vec3<u32>(1u, 27598u, 1u)), -51405i), Struct_2(vec4<bool>(false, false, true, true), vec2<f32>(1520f, 169f), 1644f, Struct_1(18679i, vec3<i32>(i32(-2147483648), 0i, 1i), vec4<u32>(30383u, 4294967295u, 57688u, 69584u), vec3<f32>(-152f, 335f, -893f), vec3<u32>(0u, 1u, 20721u)), 11988i), Struct_2(vec4<bool>(true, true, true, false), vec2<f32>(1000f, 506f), -922f, Struct_1(142i, vec3<i32>(38987i, 32i, 38360i), vec4<u32>(0u, 45229u, 32683u, 22935u), vec3<f32>(721f, -1389f, -581f), vec3<u32>(97134u, 36227u, 4294967295u)), -25709i), Struct_2(vec4<bool>(true, false, false, false), vec2<f32>(-401f, -1378f), -1285f, Struct_1(-78473i, vec3<i32>(i32(-2147483648), 1i, 1i), vec4<u32>(1u, 4349u, 54543u, 6637u), vec3<f32>(-569f, -206f, -1338f), vec3<u32>(53372u, 0u, 0u)), 0i), Struct_2(vec4<bool>(false, false, false, false), vec2<f32>(1689f, 307f), 251f, Struct_1(-1i, vec3<i32>(4537i, 2786i, 8992i), vec4<u32>(14865u, 121275u, 62609u, 61471u), vec3<f32>(-505f, -819f, -1000f), vec3<u32>(0u, 55996u, 0u)), 1i), Struct_2(vec4<bool>(true, false, false, true), vec2<f32>(1375f, -195f), -767f, Struct_1(2147483647i, vec3<i32>(3446i, 39299i, i32(-2147483648)), vec4<u32>(9513u, 76209u, 0u, 1u), vec3<f32>(1061f, -1109f, -1198f), vec3<u32>(0u, 21817u, 1u)), 6368i), Struct_2(vec4<bool>(false, true, true, false), vec2<f32>(311f, 2542f), 1085f, Struct_1(-1i, vec3<i32>(-3072i, -16415i, 0i), vec4<u32>(1u, 15883u, 2140u, 0u), vec3<f32>(-513f, 771f, -518f), vec3<u32>(14940u, 11169u, 116101u)), 9465i), Struct_2(vec4<bool>(true, false, false, true), vec2<f32>(484f, -1202f), -355f, Struct_1(36086i, vec3<i32>(2147483647i, 1i, -3020i), vec4<u32>(24502u, 4294967295u, 77507u, 11427u), vec3<f32>(1875f, 1375f, 993f), vec3<u32>(1u, 4294967295u, 60106u)), 0i), Struct_2(vec4<bool>(true, false, true, true), vec2<f32>(444f, -471f), 117f, Struct_1(-24250i, vec3<i32>(9932i, 2147483647i, 1i), vec4<u32>(1u, 0u, 25198u, 29957u), vec3<f32>(-1549f, -809f, -1931f), vec3<u32>(31423u, 1u, 7679u)), 2147483647i), Struct_2(vec4<bool>(true, true, false, false), vec2<f32>(-1081f, 1214f), -1000f, Struct_1(i32(-2147483648), vec3<i32>(-45257i, 29571i, 2147483647i), vec4<u32>(7980u, 1u, 80211u, 0u), vec3<f32>(1000f, -372f, 752f), vec3<u32>(0u, 4294967295u, 4294967295u)), 38294i), Struct_2(vec4<bool>(true, false, true, true), vec2<f32>(1484f, -1304f), 469f, Struct_1(1i, vec3<i32>(736i, -23230i, i32(-2147483648)), vec4<u32>(1u, 4294967295u, 44900u, 0u), vec3<f32>(-2247f, -589f, 610f), vec3<u32>(21762u, 4294967295u, 4294967295u)), -21317i), Struct_2(vec4<bool>(true, true, true, true), vec2<f32>(-435f, -873f), -250f, Struct_1(15659i, vec3<i32>(1i, -25162i, i32(-2147483648)), vec4<u32>(3296u, 9262u, 4294967295u, 0u), vec3<f32>(-1628f, 1297f, 1046f), vec3<u32>(74815u, 40241u, 4294967295u)), 30125i), Struct_2(vec4<bool>(false, true, false, false), vec2<f32>(1163f, -1424f), 1344f, Struct_1(1i, vec3<i32>(2147483647i, 0i, 1i), vec4<u32>(50111u, 53978u, 4294967295u, 0u), vec3<f32>(359f, -1797f, -319f), vec3<u32>(75566u, 1u, 0u)), -8046i), Struct_2(vec4<bool>(true, true, false, false), vec2<f32>(165f, -172f), -438f, Struct_1(-1i, vec3<i32>(i32(-2147483648), -6265i, 23975i), vec4<u32>(1690u, 4294967295u, 22204u, 30357u), vec3<f32>(372f, 1432f, 306f), vec3<u32>(4294967295u, 4294967295u, 111163u)), 2147483647i), Struct_2(vec4<bool>(false, false, false, false), vec2<f32>(-1000f, 906f), -948f, Struct_1(-10031i, vec3<i32>(i32(-2147483648), 2336i, 0i), vec4<u32>(96436u, 20535u, 27638u, 0u), vec3<f32>(-945f, 851f, 1243f), vec3<u32>(95829u, 1u, 4294967295u)), 2147483647i), Struct_2(vec4<bool>(false, true, true, false), vec2<f32>(2854f, -2080f), 493f, Struct_1(14321i, vec3<i32>(0i, 23970i, -101i), vec4<u32>(15387u, 0u, 0u, 69862u), vec3<f32>(409f, -2065f, -1288f), vec3<u32>(4294967295u, 4294967295u, 1u)), 0i), Struct_2(vec4<bool>(true, true, false, false), vec2<f32>(216f, -408f), 926f, Struct_1(2147483647i, vec3<i32>(-1i, -45883i, i32(-2147483648)), vec4<u32>(4294967295u, 41923u, 29268u, 769u), vec3<f32>(965f, -247f, -885f), vec3<u32>(0u, 39688u, 13018u)), 27532i), Struct_2(vec4<bool>(true, true, false, true), vec2<f32>(2330f, 213f), 361f, Struct_1(2812i, vec3<i32>(35489i, 2147483647i, 1i), vec4<u32>(25713u, 1u, 1u, 4294967295u), vec3<f32>(256f, -209f, 277f), vec3<u32>(4294967295u, 4294967295u, 0u)), 2147483647i), Struct_2(vec4<bool>(false, true, false, true), vec2<f32>(-301f, -1168f), -445f, Struct_1(i32(-2147483648), vec3<i32>(7671i, -1i, -14559i), vec4<u32>(4294967295u, 0u, 11063u, 33542u), vec3<f32>(-422f, 138f, 1488f), vec3<u32>(0u, 1u, 84179u)), 8433i), Struct_2(vec4<bool>(true, true, false, false), vec2<f32>(689f, -1244f), -1534f, Struct_1(42143i, vec3<i32>(1i, 0i, -20024i), vec4<u32>(40780u, 1u, 79649u, 0u), vec3<f32>(-1506f, 279f, -310f), vec3<u32>(33040u, 29320u, 3445u)), 2147483647i), Struct_2(vec4<bool>(true, true, true, true), vec2<f32>(-352f, -2631f), 345f, Struct_1(-1i, vec3<i32>(2147483647i, 1i, 13682i), vec4<u32>(36953u, 10574u, 1u, 26602u), vec3<f32>(1735f, 1182f, -947f), vec3<u32>(0u, 2405u, 0u)), 1i), Struct_2(vec4<bool>(false, false, true, false), vec2<f32>(-138f, 268f), 1085f, Struct_1(0i, vec3<i32>(2147483647i, 0i, -1i), vec4<u32>(64258u, 13584u, 0u, 1u), vec3<f32>(1661f, 397f, 623f), vec3<u32>(1u, 0u, 22164u)), 2147483647i), Struct_2(vec4<bool>(true, false, false, false), vec2<f32>(474f, 2886f), 311f, Struct_1(1i, vec3<i32>(25086i, -37109i, 1i), vec4<u32>(50913u, 25286u, 18991u, 0u), vec3<f32>(1000f, -995f, 428f), vec3<u32>(0u, 1u, 0u)), 7021i), Struct_2(vec4<bool>(true, false, false, true), vec2<f32>(-1027f, 619f), 1107f, Struct_1(2147483647i, vec3<i32>(-1i, 19778i, 0i), vec4<u32>(59365u, 4294967295u, 5688u, 0u), vec3<f32>(-688f, -993f, 1000f), vec3<u32>(52350u, 0u, 3667u)), 2147483647i), Struct_2(vec4<bool>(true, false, true, false), vec2<f32>(-1481f, -1329f), -870f, Struct_1(73837i, vec3<i32>(-8349i, -16868i, 2147483647i), vec4<u32>(12826u, 46650u, 23911u, 1u), vec3<f32>(1972f, -1000f, 194f), vec3<u32>(0u, 1u, 4294967295u)), -48861i), Struct_2(vec4<bool>(true, true, false, true), vec2<f32>(958f, -628f), -762f, Struct_1(20265i, vec3<i32>(-12403i, 1i, 0i), vec4<u32>(4294967295u, 46130u, 42720u, 1u), vec3<f32>(977f, 739f, -382f), vec3<u32>(4294967295u, 0u, 67509u)), -60696i), Struct_2(vec4<bool>(false, true, false, true), vec2<f32>(970f, 3814f), 1796f, Struct_1(55262i, vec3<i32>(-38258i, 0i, 26300i), vec4<u32>(1u, 0u, 20018u, 2691u), vec3<f32>(-448f, 1683f, 167f), vec3<u32>(46273u, 0u, 4294967295u)), -29665i), Struct_2(vec4<bool>(true, false, true, true), vec2<f32>(1000f, -763f), 201f, Struct_1(16952i, vec3<i32>(2147483647i, -14212i, -14147i), vec4<u32>(483u, 4294967295u, 66880u, 23466u), vec3<f32>(670f, -1149f, -389f), vec3<u32>(68762u, 4294967295u, 1u)), 21241i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-566f, -1897f)), _wgslsmith_div_f32(-1073f, 1754f), _wgslsmith_f_op_f32(f32(-1f) * -701f), -566f) * vec4<f32>(_wgslsmith_f_op_f32(round(-2278f)), _wgslsmith_div_f32(1000f, -111f), 808f, -1000f)))));
    let var_1 = firstTrailingBit(_wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, u_input.b, u_input.b) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(52877u, 1u, u_input.b), vec3<u32>(u_input.b, 50690u, u_input.b), vec3<u32>(u_input.b, 17901u, u_input.b)) % vec3<u32>(32u))), vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 41645u, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 26296u), vec2<u32>(u_input.b, 1u))))));
    let var_2 = Struct_4(var_0.zwz);
    var var_3 = true;
    var var_4 = ~firstLeadingBit(vec4<i32>(0i, u_input.a.x, u_input.c, firstLeadingBit(-1067i))) ^ -abs(vec4<i32>(abs(u_input.a.x), -2147483647i, _wgslsmith_div_i32(-24373i, u_input.d), -2147483647i));
    return _wgslsmith_clamp_u32(u_input.b, ~_wgslsmith_div_u32(countOneBits(88847u), ~39064u), 0u) << (~_wgslsmith_dot_vec3_u32(var_1, var_1) % 32u);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(938f, -898f, -2005f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(213f, 1058f, 326f) + vec3<f32>(2240f, 209f, -1000f))), vec3<f32>(1354f, 968f, _wgslsmith_f_op_f32(-1550f + 523f))), vec3<bool>(true, _wgslsmith_f_op_f32(ceil(1000f)) < _wgslsmith_f_op_f32(778f * 697f), all(vec4<bool>(true, true, false, false))))));
    let var_1 = Struct_4(var_0.a);
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(var_1.a)));
    let var_2 = global0[_wgslsmith_index_u32(~func_3(), 31u)];
    var_0 = var_1;
    return global0[_wgslsmith_index_u32(min(func_3(), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(var_2.d.c.yz, vec2<u32>(var_2.d.e.x, u_input.b)) >> (_wgslsmith_div_u32(1u, firstTrailingBit(100930u)) % 32u), _wgslsmith_sub_u32(86763u, 38418u), ~_wgslsmith_div_u32(~var_2.d.e.x, u_input.b))), 31u)];
}

fn func_1() -> f32 {
    var var_0 = func_2();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 31>();
    let var_0 = firstLeadingBit(vec3<u32>(~(u_input.b ^ u_input.b), u_input.b, u_input.b));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(-1032f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-486f - -1000f) + -459f))), _wgslsmith_f_op_f32(sign(962f)), 1686f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f) * 2349f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(154f * 986f), _wgslsmith_f_op_f32(f32(-1f) * -238f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1086f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1130f))))), _wgslsmith_f_op_f32(func_1())), vec3<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), true, 0u > _wgslsmith_dot_vec2_u32(var_0.yy, ~vec2<u32>(u_input.b, var_0.x)))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_clamp_i32(u_input.d, _wgslsmith_sub_i32(-26287i, 23588i) >> (1u % 32u), u_input.d), max(vec3<i32>(-u_input.d, -8303i, u_input.a.x), -firstTrailingBit(vec3<i32>(u_input.a.x, u_input.c, u_input.c))), ~(~(vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u) << (vec4<u32>(var_0.x, u_input.b, 15681u, u_input.b) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(var_1, var_1), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, -1000f), vec3<f32>(var_1.x, var_1.x, -2004f), false)))))), var_0));
    var var_3 = var_2.a.b.yx;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_2.a.d.x, -824f, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1000f, 637f) - vec4<f32>(-785f, var_2.a.d.x, 1304f, var_2.a.d.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-817f + var_2.a.d.x), _wgslsmith_f_op_f32(921f * 583f))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(309f)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-506f * 289f), -843f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a.d.x - 402f))))))), ((abs(var_2.a.e.zy) | ~vec2<u32>(0u, 45586u)) | var_0.xz) & vec2<u32>(61478u, u_input.b));
}

