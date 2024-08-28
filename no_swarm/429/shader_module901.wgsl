struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(Struct_1(vec3<f32>(1292f, 1374f, -395f), vec3<u32>(4294967295u, 52801u, 64281u), 41021i, vec3<u32>(1u, 0u, 29277u)), -1787f, Struct_1(vec3<f32>(345f, -162f, 2230f), vec3<u32>(1u, 4294967295u, 42860u), 1i, vec3<u32>(1u, 32986u, 0u)), Struct_1(vec3<f32>(1662f, -658f, 625f), vec3<u32>(39521u, 45260u, 45292u), -36758i, vec3<u32>(0u, 32393u, 107533u))), 26u, vec2<f32>(-1047f, 454f)), Struct_3(Struct_2(Struct_1(vec3<f32>(-821f, -2128f, -342f), vec3<u32>(0u, 7448u, 4294967295u), i32(-2147483648), vec3<u32>(0u, 131647u, 0u)), -1572f, Struct_1(vec3<f32>(294f, -1593f, -1578f), vec3<u32>(8748u, 4294967295u, 0u), 2147483647i, vec3<u32>(4294967295u, 35633u, 32740u)), Struct_1(vec3<f32>(1182f, -568f, -299f), vec3<u32>(71823u, 39140u, 19950u), 18053i, vec3<u32>(7078u, 1u, 4294967295u))), 57566u, vec2<f32>(-230f, -358f)), Struct_3(Struct_2(Struct_1(vec3<f32>(-1895f, 1398f, -159f), vec3<u32>(40378u, 18171u, 4294967295u), -1i, vec3<u32>(2471u, 0u, 0u)), 1967f, Struct_1(vec3<f32>(1475f, 1189f, -840f), vec3<u32>(42383u, 0u, 23169u), 0i, vec3<u32>(18156u, 1u, 0u)), Struct_1(vec3<f32>(128f, 193f, -127f), vec3<u32>(24585u, 39725u, 31653u), 14539i, vec3<u32>(45371u, 752u, 1u))), 0u, vec2<f32>(1064f, -1216f)), Struct_3(Struct_2(Struct_1(vec3<f32>(583f, -774f, -210f), vec3<u32>(1u, 55571u, 1u), -30596i, vec3<u32>(1u, 105847u, 29345u)), -221f, Struct_1(vec3<f32>(-292f, 1064f, 319f), vec3<u32>(18189u, 0u, 72797u), 1i, vec3<u32>(31132u, 4294967295u, 4294967295u)), Struct_1(vec3<f32>(-707f, 280f, 711f), vec3<u32>(0u, 4294967295u, 0u), 14675i, vec3<u32>(57343u, 6175u, 22623u))), 8247u, vec2<f32>(-329f, 289f)), Struct_3(Struct_2(Struct_1(vec3<f32>(586f, 373f, -1186f), vec3<u32>(19026u, 78762u, 3055u), 0i, vec3<u32>(62233u, 1u, 1u)), -1729f, Struct_1(vec3<f32>(429f, -1587f, -1505f), vec3<u32>(4294967295u, 1u, 0u), -8708i, vec3<u32>(4294967295u, 29304u, 16607u)), Struct_1(vec3<f32>(2648f, -1426f, 1457f), vec3<u32>(4294967295u, 0u, 34228u), -17900i, vec3<u32>(23867u, 36605u, 85917u))), 80825u, vec2<f32>(999f, -1694f)), Struct_3(Struct_2(Struct_1(vec3<f32>(1000f, -140f, 1072f), vec3<u32>(58000u, 0u, 0u), -1i, vec3<u32>(4294967295u, 1u, 49444u)), 804f, Struct_1(vec3<f32>(-476f, 196f, -196f), vec3<u32>(9561u, 0u, 4294967295u), -1i, vec3<u32>(10650u, 4294967295u, 15597u)), Struct_1(vec3<f32>(1417f, 935f, 2355f), vec3<u32>(0u, 117544u, 1u), 6440i, vec3<u32>(0u, 5115u, 27193u))), 9063u, vec2<f32>(-262f, 1141f)), Struct_3(Struct_2(Struct_1(vec3<f32>(1000f, -450f, 1157f), vec3<u32>(3794u, 45843u, 0u), 16823i, vec3<u32>(7970u, 4294967295u, 0u)), -441f, Struct_1(vec3<f32>(-1279f, 1176f, 1237f), vec3<u32>(50026u, 64237u, 24479u), 2147483647i, vec3<u32>(1u, 30945u, 42522u)), Struct_1(vec3<f32>(232f, 1716f, 916f), vec3<u32>(63937u, 38124u, 4294967295u), 11665i, vec3<u32>(10074u, 17241u, 30223u))), 4294967295u, vec2<f32>(-1292f, 560f)), Struct_3(Struct_2(Struct_1(vec3<f32>(-1656f, 1577f, 156f), vec3<u32>(1u, 1u, 1u), -1i, vec3<u32>(0u, 19322u, 16614u)), -175f, Struct_1(vec3<f32>(291f, 1025f, 1023f), vec3<u32>(0u, 22715u, 32861u), -24255i, vec3<u32>(0u, 11881u, 1u)), Struct_1(vec3<f32>(-1362f, -1033f, 639f), vec3<u32>(13095u, 0u, 4294967295u), 1i, vec3<u32>(1u, 0u, 69389u))), 16921u, vec2<f32>(-1195f, 1500f)), Struct_3(Struct_2(Struct_1(vec3<f32>(-103f, -575f, 1338f), vec3<u32>(69490u, 3855u, 17254u), -1i, vec3<u32>(0u, 3743u, 4294967295u)), 1190f, Struct_1(vec3<f32>(-237f, -561f, -1959f), vec3<u32>(0u, 4294967295u, 1u), -34563i, vec3<u32>(52198u, 15767u, 4294967295u)), Struct_1(vec3<f32>(1369f, -241f, -949f), vec3<u32>(41399u, 1u, 0u), 2147483647i, vec3<u32>(0u, 1u, 16181u))), 0u, vec2<f32>(1000f, -1353f)), Struct_3(Struct_2(Struct_1(vec3<f32>(990f, 548f, 478f), vec3<u32>(4294967295u, 0u, 33165u), 0i, vec3<u32>(1u, 4294967295u, 12702u)), 1411f, Struct_1(vec3<f32>(-1250f, -291f, 1031f), vec3<u32>(24818u, 7068u, 4294967295u), -1i, vec3<u32>(1u, 42044u, 19713u)), Struct_1(vec3<f32>(-1367f, -1669f, 282f), vec3<u32>(4294967295u, 0u, 17732u), 2147483647i, vec3<u32>(16668u, 0u, 1u))), 55770u, vec2<f32>(684f, -1688f)), Struct_3(Struct_2(Struct_1(vec3<f32>(1562f, -899f, -1225f), vec3<u32>(4294967295u, 66760u, 3727u), 5872i, vec3<u32>(4930u, 11714u, 1u)), -188f, Struct_1(vec3<f32>(2860f, 1052f, 1682f), vec3<u32>(61313u, 22975u, 1u), 14001i, vec3<u32>(1u, 1261u, 4294967295u)), Struct_1(vec3<f32>(-690f, 1624f, -715f), vec3<u32>(11835u, 44370u, 1u), 1i, vec3<u32>(103414u, 4294967295u, 1u))), 7540u, vec2<f32>(215f, -1000f)), Struct_3(Struct_2(Struct_1(vec3<f32>(1299f, 1494f, -1640f), vec3<u32>(1u, 21344u, 32463u), 16618i, vec3<u32>(1u, 10043u, 1u)), 1000f, Struct_1(vec3<f32>(-1898f, -1512f, -219f), vec3<u32>(4294967295u, 0u, 4665u), 1i, vec3<u32>(25231u, 4294967295u, 22713u)), Struct_1(vec3<f32>(1000f, -264f, -653f), vec3<u32>(41611u, 0u, 49959u), -44944i, vec3<u32>(6630u, 0u, 1u))), 1u, vec2<f32>(-802f, 814f)), Struct_3(Struct_2(Struct_1(vec3<f32>(165f, 245f, 1504f), vec3<u32>(0u, 0u, 0u), 1i, vec3<u32>(4294967295u, 0u, 1u)), -1073f, Struct_1(vec3<f32>(-1414f, 658f, -278f), vec3<u32>(1u, 0u, 32792u), 2147483647i, vec3<u32>(33539u, 11747u, 20411u)), Struct_1(vec3<f32>(-1000f, 1000f, 1537f), vec3<u32>(1u, 692u, 4294967295u), -13684i, vec3<u32>(4294967295u, 69026u, 0u))), 1u, vec2<f32>(827f, -200f)), Struct_3(Struct_2(Struct_1(vec3<f32>(-548f, 1646f, 279f), vec3<u32>(0u, 0u, 31136u), -12719i, vec3<u32>(0u, 0u, 0u)), -962f, Struct_1(vec3<f32>(1063f, 745f, 430f), vec3<u32>(0u, 8851u, 84156u), -3995i, vec3<u32>(0u, 0u, 45853u)), Struct_1(vec3<f32>(-874f, 2405f, 171f), vec3<u32>(16360u, 5026u, 27226u), -8302i, vec3<u32>(0u, 1u, 1u))), 1u, vec2<f32>(282f, -525f)), Struct_3(Struct_2(Struct_1(vec3<f32>(1000f, 819f, -2686f), vec3<u32>(4294967295u, 0u, 4294967295u), -1i, vec3<u32>(1u, 0u, 12291u)), 665f, Struct_1(vec3<f32>(1381f, 116f, 127f), vec3<u32>(18558u, 4294967295u, 4294967295u), 2147483647i, vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<f32>(-692f, 1000f, 1000f), vec3<u32>(15841u, 3267u, 4294967295u), 14683i, vec3<u32>(1u, 4294967295u, 73352u))), 4294967295u, vec2<f32>(835f, -523f)), Struct_3(Struct_2(Struct_1(vec3<f32>(-205f, -436f, 988f), vec3<u32>(0u, 0u, 0u), 22103i, vec3<u32>(28777u, 1u, 1u)), -1816f, Struct_1(vec3<f32>(-157f, 880f, 404f), vec3<u32>(8435u, 1u, 94179u), 1i, vec3<u32>(35766u, 4294967295u, 4294967295u)), Struct_1(vec3<f32>(1000f, 1081f, -1501f), vec3<u32>(24168u, 1u, 47869u), -1i, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), 0u, vec2<f32>(293f, -655f)), Struct_3(Struct_2(Struct_1(vec3<f32>(423f, 1000f, -787f), vec3<u32>(1u, 49319u, 4294967295u), 2147483647i, vec3<u32>(0u, 1u, 14791u)), 762f, Struct_1(vec3<f32>(-1000f, 1000f, 1741f), vec3<u32>(0u, 60847u, 53719u), 1i, vec3<u32>(1u, 97356u, 4294967295u)), Struct_1(vec3<f32>(-685f, -1129f, -1337f), vec3<u32>(55276u, 50070u, 41823u), -68090i, vec3<u32>(4509u, 42405u, 0u))), 4294967295u, vec2<f32>(288f, 180f)), Struct_3(Struct_2(Struct_1(vec3<f32>(-1005f, -535f, -1127f), vec3<u32>(0u, 1u, 4294967295u), 1i, vec3<u32>(34385u, 4294967295u, 13141u)), 419f, Struct_1(vec3<f32>(947f, -295f, 1000f), vec3<u32>(1u, 113930u, 1u), 14209i, vec3<u32>(1u, 30610u, 0u)), Struct_1(vec3<f32>(325f, 773f, 473f), vec3<u32>(0u, 5401u, 45222u), 69121i, vec3<u32>(30620u, 4294967295u, 1u))), 43147u, vec2<f32>(-586f, -283f)), Struct_3(Struct_2(Struct_1(vec3<f32>(1315f, -716f, -1000f), vec3<u32>(4294967295u, 79396u, 4294967295u), 11057i, vec3<u32>(1u, 36666u, 1u)), -1000f, Struct_1(vec3<f32>(301f, -400f, -768f), vec3<u32>(72033u, 38797u, 32276u), 1i, vec3<u32>(54154u, 27594u, 4294967295u)), Struct_1(vec3<f32>(-478f, 206f, -531f), vec3<u32>(29710u, 34400u, 0u), -45078i, vec3<u32>(4294967295u, 91057u, 3008u))), 5852u, vec2<f32>(343f, 1387f)), Struct_3(Struct_2(Struct_1(vec3<f32>(-722f, -636f, -225f), vec3<u32>(31582u, 4294967295u, 0u), 35231i, vec3<u32>(66890u, 79771u, 1u)), -898f, Struct_1(vec3<f32>(1696f, -2102f, 1000f), vec3<u32>(4294967295u, 0u, 0u), -31707i, vec3<u32>(11020u, 6972u, 31808u)), Struct_1(vec3<f32>(269f, 1021f, -326f), vec3<u32>(26334u, 0u, 1u), -40673i, vec3<u32>(23340u, 1u, 30443u))), 91936u, vec2<f32>(-1444f, -273f)), Struct_3(Struct_2(Struct_1(vec3<f32>(555f, 2527f, 1320f), vec3<u32>(33258u, 44917u, 0u), i32(-2147483648), vec3<u32>(0u, 0u, 1u)), -1311f, Struct_1(vec3<f32>(-1430f, 2128f, 329f), vec3<u32>(1u, 1u, 1u), -74224i, vec3<u32>(1u, 0u, 1u)), Struct_1(vec3<f32>(481f, 892f, 217f), vec3<u32>(1u, 28139u, 115829u), -27467i, vec3<u32>(4294967295u, 66711u, 25605u))), 27938u, vec2<f32>(677f, -2244f)), Struct_3(Struct_2(Struct_1(vec3<f32>(-521f, 174f, 1000f), vec3<u32>(1u, 0u, 41304u), 34321i, vec3<u32>(1u, 82308u, 53975u)), 363f, Struct_1(vec3<f32>(548f, 1622f, 296f), vec3<u32>(1u, 1u, 6534u), -1i, vec3<u32>(10910u, 0u, 1u)), Struct_1(vec3<f32>(535f, -1587f, -1000f), vec3<u32>(9125u, 77327u, 19061u), 19330i, vec3<u32>(13278u, 94889u, 4294967295u))), 14250u, vec2<f32>(-1027f, -1573f)));

var<private> global1: array<i32, 30>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> u32 {
    return 0u;
}

fn func_4(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_4(select(u_input.d, 83363u, !any(vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(arg_0, _wgslsmith_add_vec3_u32(countOneBits(arg_0), min(arg_0, vec3<u32>(u_input.d, u_input.d, u_input.d))))), 22u)], global0[_wgslsmith_index_u32(select(~(~max(4418u, arg_0.x)), ~4294967295u, abs(_wgslsmith_clamp_i32(u_input.c.x, 1i, global1[_wgslsmith_index_u32(u_input.d, 30u)])) != -(~(-6564i))), 22u)], Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-663f, -204f, 481f)), firstLeadingBit(vec3<u32>(1821u, arg_0.x, u_input.d)), -2444i, arg_0), -415f, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(911f, 1149f, -1000f)))), abs(arg_0), ~reverseBits(22973i), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(1u, 1u, u_input.d)), _wgslsmith_sub_vec3_u32(arg_0, arg_0))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(897f, -185f, 196f) + vec3<f32>(-1000f, 380f, -280f)), vec3<f32>(1067f, 126f, 1819f), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), ~max(vec3<u32>(67221u, arg_0.x, 4294967295u), arg_0), u_input.b, _wgslsmith_mod_vec3_u32(abs(arg_0), abs(vec3<u32>(41040u, arg_0.x, 21959u))))), vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_div_u32(arg_0.x, u_input.d), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, arg_0.x), vec4<u32>(arg_0.x, u_input.d, arg_0.x, arg_0.x))), _wgslsmith_add_u32(11965u, arg_0.x)));
    var var_1 = var_0.d.a.a.x;
    var_0 = Struct_4(~arg_0.x, Struct_3(Struct_2(var_0.d.d, _wgslsmith_f_op_f32(-1303f * var_0.d.a.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.a.d.a.x, -255f, -2017f), var_0.d.d.a)), var_0.b.a.c.d ^ var_0.b.a.c.d, var_0.b.a.a.c, var_0.c.a.a.b), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(var_0.b.a.c.a)), arg_0, u_input.b | u_input.c.x, firstTrailingBit(var_0.c.a.d.d))), 21040u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.c.x), _wgslsmith_f_op_f32(var_0.b.a.d.a.x * -1117f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1349f, var_0.c.a.d.a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-891f, 1000f), var_0.b.a.a.a.xx, vec2<bool>(false, true))), false)), select(vec2<bool>(true, true), vec2<bool>(false, false), u_input.b == var_0.b.a.a.c)))), Struct_3(Struct_2(var_0.c.a.d, var_0.c.a.d.a.x, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.c.a.x, var_0.b.c.x, var_0.c.a.b), vec3<f32>(var_0.d.b, -1115f, 1310f)), arg_0, ~var_0.d.a.c, var_0.c.a.c.b), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.d.a.x, var_0.b.c.x, var_0.b.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.d.c.d.x, 657u), var_0.d.c.d), ~5893i, vec3<u32>(u_input.d, u_input.d, arg_0.x))), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.x, u_input.d), u_input.d), ~(u_input.d << (0u % 32u))), vec2<f32>(var_0.d.b, _wgslsmith_f_op_f32(var_0.b.a.c.a.x + _wgslsmith_f_op_f32(step(1291f, 464f))))), Struct_2(var_0.c.a.a, _wgslsmith_f_op_f32(-var_0.d.c.a.x), Struct_1(vec3<f32>(var_0.b.a.a.a.x, _wgslsmith_f_op_f32(trunc(var_0.d.c.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1152f)), vec3<u32>(4294967295u, 0u, 32598u), _wgslsmith_add_i32(-u_input.c.x, 2147483647i), _wgslsmith_sub_vec3_u32(var_0.b.a.a.b, ~arg_0)), var_0.b.a.c), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, u_input.d), countOneBits(countOneBits(vec2<u32>(81403u, 0u)))));
    var var_2 = var_0.c;
    var_1 = var_0.b.c.x;
    return any(vec4<bool>(true, true, true, true));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = array<Struct_3, 22>();
    global1 = array<i32, 30>();
    let var_0 = !func_4(~vec3<u32>(~51265u, func_3(vec4<u32>(u_input.d, u_input.d, 4294967295u, 13728u), vec2<f32>(1331f, 1104f), vec2<bool>(true, true), vec4<f32>(197f, -965f, -2739f, -2211f)), 38468u));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(396f - 764f), 1372f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -470f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1077f), _wgslsmith_f_op_f32(102f - -504f)), var_0)), -1114f), vec3<u32>(u_input.d, _wgslsmith_sub_u32(u_input.d, 25674u), u_input.d) ^ vec3<u32>(_wgslsmith_mod_u32(1u, u_input.d), _wgslsmith_mod_u32(u_input.d, u_input.d), 3444u), -_wgslsmith_sub_i32(-339i, arg_0), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.d, 4294967295u, u_input.d)) & ~vec3<u32>(58376u, 23707u, 4294967295u), _wgslsmith_sub_vec3_u32(max(reverseBits(vec3<u32>(u_input.d, u_input.d, u_input.d)), vec3<u32>(u_input.d, u_input.d, 63800u) & vec3<u32>(0u, 1u, 54396u)), countOneBits(countOneBits(vec3<u32>(0u, u_input.d, 5789u))))));
    let var_2 = vec2<i32>(~(-abs(var_1.c)), 2147483647i);
    return Struct_2(Struct_1(var_1.a, _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(13027u, var_1.d.x, 4294967295u), ~var_1.b), _wgslsmith_mult_vec3_u32(~var_1.d, var_1.d)), -2147483647i, vec3<u32>(~_wgslsmith_clamp_u32(var_1.b.x, var_1.b.x, u_input.d), ~0u, _wgslsmith_mult_u32(var_1.b.x, 35058u) & 12075u)), _wgslsmith_f_op_f32(f32(-1f) * -244f), Struct_1(var_1.a, vec3<u32>(reverseBits(0u) & u_input.d, ~(~0u), 85664u), 20544i, ~_wgslsmith_add_vec3_u32(var_1.b, var_1.d)), Struct_1(var_1.a, var_1.d, select(_wgslsmith_mult_i32(arg_0, _wgslsmith_add_i32(arg_0, 0i)), _wgslsmith_div_i32(arg_0 << (4294967295u % 32u), countOneBits(u_input.b)), var_0), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(25578u, u_input.d), ~16241u, _wgslsmith_mod_u32(var_1.d.x, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), var_1.b) | ~var_1.d)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = abs(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.d, select(u_input.d, u_input.d, arg_0.x)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(20679u, 83195u, 0u), 1u)), u_input.d, 0u));
    let var_1 = reverseBits(abs(~(~vec4<u32>(14577u, 0u, 1131u, 1u))));
    let var_2 = vec2<i32>(_wgslsmith_add_i32(2147483647i, reverseBits(i32(-1i) * -13671i)), arg_1.x) & vec2<i32>((~u_input.a.x ^ -global1[_wgslsmith_index_u32(var_1.x, 30u)]) ^ _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(0u, 30u)] >> (30815u % 32u), _wgslsmith_div_i32(-33135i, arg_1.x)), u_input.c.x);
    var var_3 = !any(arg_0.yx);
    global1 = array<i32, 30>();
    return func_2(arg_1.x);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32) -> u32 {
    global0 = array<Struct_3, 22>();
    let var_0 = ~firstTrailingBit(~((vec4<i32>(-47689i, arg_1.a.d.c, arg_0.d.a.c, u_input.a.x) << (vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u))) >> (vec4<u32>(69581u, 49110u, 4294967295u, 0u) % vec4<u32>(32u))));
    global0 = array<Struct_3, 22>();
    let var_1 = u_input.d;
    var var_2 = arg_0;
    return abs(arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    let var_0 = false || (_wgslsmith_sub_u32(~1u, u_input.d) <= func_5(Struct_4(~23981u, Struct_3(Struct_2(Struct_1(vec3<f32>(341f, -755f, 617f), vec3<u32>(1u, u_input.d, u_input.d), 0i, vec3<u32>(u_input.d, u_input.d, 1u)), -749f, Struct_1(vec3<f32>(256f, -490f, -851f), vec3<u32>(31123u, 51760u, u_input.d), global1[_wgslsmith_index_u32(3110u, 30u)], vec3<u32>(u_input.d, 0u, 4294967295u)), Struct_1(vec3<f32>(272f, -1669f, 1908f), vec3<u32>(1u, 1u, 0u), global1[_wgslsmith_index_u32(14091u, 30u)], vec3<u32>(1u, 0u, u_input.d))), 27939u, vec2<f32>(237f, 1000f)), global0[_wgslsmith_index_u32(34118u, 22u)], func_1(vec4<bool>(true, false, false, true), u_input.a), vec2<u32>(u_input.d, u_input.d)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(34495u, u_input.d), 4294967295u), 22u)], reverseBits(u_input.d)));
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_f_op_f32(f32(-1f) * -639f))), ~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) << (vec4<u32>(24063u, u_input.d, 4294967295u, u_input.d) % vec4<u32>(32u)), vec4<u32>(88199u, 0u, 1u, u_input.d)) & ~(~vec4<u32>(1u, 1u, u_input.d, u_input.d))), vec3<f32>(1377f, 1179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -523f))));
}

