struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_2,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(true, vec4<i32>(2147483647i, 2147483647i, 21569i, 1i), Struct_2(Struct_1(2279f, true, vec4<f32>(-322f, -657f, -850f, -233f), 2147483647i, vec4<u32>(46689u, 4294967295u, 72494u, 24756u)), Struct_1(434f, false, vec4<f32>(781f, -869f, 523f, 670f), -26450i, vec4<u32>(0u, 4294967295u, 17761u, 47147u)), Struct_1(1023f, false, vec4<f32>(-1185f, 209f, -1310f, -618f), -54020i, vec4<u32>(0u, 4294967295u, 1u, 13516u)), Struct_1(559f, true, vec4<f32>(-1160f, 1787f, 1152f, -180f), 28406i, vec4<u32>(14552u, 72954u, 58783u, 1u)), Struct_1(899f, false, vec4<f32>(-1920f, 2378f, 1132f, 847f), -1i, vec4<u32>(4294967295u, 13294u, 0u, 47804u))), vec4<i32>(42638i, 2147483647i, 0i, 22697i), -2134f), Struct_3(true, vec4<i32>(32209i, -11023i, -29551i, 0i), Struct_2(Struct_1(1188f, true, vec4<f32>(479f, -1000f, -1617f, -1761f), -1i, vec4<u32>(4294967295u, 70805u, 0u, 4294967295u)), Struct_1(-215f, true, vec4<f32>(1329f, -202f, -917f, -2651f), 49867i, vec4<u32>(1u, 4294967295u, 31059u, 38570u)), Struct_1(1097f, false, vec4<f32>(-717f, 1381f, -769f, 362f), -13758i, vec4<u32>(5208u, 45956u, 1u, 1u)), Struct_1(292f, true, vec4<f32>(-181f, -1225f, -847f, 352f), 2147483647i, vec4<u32>(1u, 38160u, 14112u, 0u)), Struct_1(1194f, false, vec4<f32>(-662f, 217f, -2030f, -1707f), 0i, vec4<u32>(1u, 26204u, 76400u, 839u))), vec4<i32>(-3544i, i32(-2147483648), 0i, 15755i), 1336f), Struct_3(true, vec4<i32>(1i, i32(-2147483648), 0i, 2147483647i), Struct_2(Struct_1(1000f, true, vec4<f32>(-1513f, 1060f, -129f, 338f), 11474i, vec4<u32>(5142u, 0u, 30669u, 4294967295u)), Struct_1(1000f, false, vec4<f32>(-915f, -451f, 122f, 478f), 339i, vec4<u32>(43938u, 2052u, 14964u, 4294967295u)), Struct_1(-232f, false, vec4<f32>(-1027f, 1143f, 1000f, 636f), 1i, vec4<u32>(0u, 0u, 81916u, 10199u)), Struct_1(840f, true, vec4<f32>(-1144f, 1000f, -306f, 2424f), -13330i, vec4<u32>(530u, 24554u, 0u, 1859u)), Struct_1(1365f, true, vec4<f32>(-1370f, -1960f, 1373f, 1000f), i32(-2147483648), vec4<u32>(0u, 4294967295u, 0u, 40030u))), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 1i), -1000f), Struct_3(true, vec4<i32>(-39464i, -174i, 0i, -1i), Struct_2(Struct_1(838f, true, vec4<f32>(181f, 1127f, -148f, -637f), -45891i, vec4<u32>(61042u, 4294967295u, 39351u, 39036u)), Struct_1(-1051f, true, vec4<f32>(156f, 425f, -900f, 2173f), 0i, vec4<u32>(5086u, 0u, 16554u, 1u)), Struct_1(113f, true, vec4<f32>(1043f, -513f, -424f, 781f), -1674i, vec4<u32>(0u, 23775u, 14337u, 103819u)), Struct_1(1253f, false, vec4<f32>(-948f, 377f, -1000f, 1024f), 7096i, vec4<u32>(0u, 7263u, 24677u, 4294967295u)), Struct_1(-1050f, true, vec4<f32>(-322f, 781f, 1125f, -213f), 0i, vec4<u32>(4294967295u, 0u, 1u, 1u))), vec4<i32>(i32(-2147483648), -1i, 52805i, -1i), -596f), Struct_3(true, vec4<i32>(26114i, -1i, -1i, 10524i), Struct_2(Struct_1(-1660f, true, vec4<f32>(-3032f, 757f, -1183f, -350f), -40365i, vec4<u32>(1u, 0u, 4294967295u, 95686u)), Struct_1(361f, false, vec4<f32>(415f, 293f, 244f, -1416f), 3254i, vec4<u32>(22938u, 45267u, 1u, 2368u)), Struct_1(-694f, false, vec4<f32>(582f, 543f, 823f, 152f), 1i, vec4<u32>(31320u, 12365u, 0u, 4294967295u)), Struct_1(-580f, false, vec4<f32>(-1123f, -544f, -2542f, 683f), 1i, vec4<u32>(87418u, 38471u, 1u, 4294967295u)), Struct_1(-347f, false, vec4<f32>(1319f, 265f, -1000f, 334f), 22500i, vec4<u32>(1u, 30458u, 45893u, 1u))), vec4<i32>(-14553i, 0i, -54962i, 21924i), 485f), Struct_3(false, vec4<i32>(i32(-2147483648), -54896i, -9840i, -1i), Struct_2(Struct_1(1890f, false, vec4<f32>(647f, 1000f, -1727f, -195f), -36353i, vec4<u32>(55737u, 62657u, 52265u, 40264u)), Struct_1(168f, false, vec4<f32>(-1187f, -642f, -1273f, -2142f), 1i, vec4<u32>(4294967295u, 0u, 0u, 1u)), Struct_1(-1949f, true, vec4<f32>(-1716f, -204f, 1520f, 1054f), 0i, vec4<u32>(0u, 0u, 75132u, 1u)), Struct_1(1154f, false, vec4<f32>(-1724f, -2050f, 1438f, -591f), 37005i, vec4<u32>(17875u, 58796u, 0u, 5055u)), Struct_1(-473f, false, vec4<f32>(-752f, 945f, -708f, 1225f), 2147483647i, vec4<u32>(1u, 30275u, 49922u, 0u))), vec4<i32>(2147483647i, -25745i, 1i, 2147483647i), -450f), Struct_3(true, vec4<i32>(2147483647i, 0i, i32(-2147483648), -1i), Struct_2(Struct_1(358f, false, vec4<f32>(-1795f, -744f, -1205f, -1680f), -32024i, vec4<u32>(0u, 36195u, 4294967295u, 4294967295u)), Struct_1(-883f, false, vec4<f32>(153f, -499f, 732f, -1000f), -18073i, vec4<u32>(50937u, 1u, 29997u, 31130u)), Struct_1(-969f, true, vec4<f32>(-2155f, -324f, -1470f, 1155f), i32(-2147483648), vec4<u32>(4294967295u, 82340u, 4294967295u, 14656u)), Struct_1(1122f, false, vec4<f32>(-1762f, 547f, 681f, -542f), 7705i, vec4<u32>(34977u, 19522u, 6893u, 44158u)), Struct_1(1429f, true, vec4<f32>(653f, -481f, -990f, 274f), 2147483647i, vec4<u32>(0u, 1u, 4294967295u, 4294967295u))), vec4<i32>(0i, 1i, -9098i, 0i), -605f), Struct_3(true, vec4<i32>(2147483647i, 0i, -11163i, 0i), Struct_2(Struct_1(-202f, true, vec4<f32>(147f, -863f, -2298f, 789f), -1294i, vec4<u32>(1u, 4294967295u, 19503u, 20805u)), Struct_1(341f, false, vec4<f32>(921f, 867f, 926f, -644f), -1i, vec4<u32>(29827u, 1u, 79729u, 2229u)), Struct_1(704f, true, vec4<f32>(-501f, 474f, -682f, 1385f), 2147483647i, vec4<u32>(17286u, 1u, 4907u, 1u)), Struct_1(-1000f, false, vec4<f32>(313f, 732f, 683f, 585f), 2147483647i, vec4<u32>(26285u, 51844u, 0u, 97781u)), Struct_1(1179f, true, vec4<f32>(432f, 287f, -1000f, 1871f), i32(-2147483648), vec4<u32>(53388u, 0u, 1u, 9716u))), vec4<i32>(12903i, 39331i, -20249i, -27926i), 1063f), Struct_3(false, vec4<i32>(-17862i, -38187i, 2147483647i, 1i), Struct_2(Struct_1(-1060f, false, vec4<f32>(-796f, 1181f, -224f, 425f), -1i, vec4<u32>(4294967295u, 23088u, 64613u, 0u)), Struct_1(-796f, false, vec4<f32>(644f, 544f, 1354f, 719f), -2633i, vec4<u32>(65042u, 78210u, 0u, 0u)), Struct_1(106f, true, vec4<f32>(-710f, 594f, 219f, 1185f), 285i, vec4<u32>(37790u, 0u, 1u, 117423u)), Struct_1(-252f, true, vec4<f32>(-995f, 1000f, 475f, -847f), 5560i, vec4<u32>(78323u, 48019u, 0u, 43024u)), Struct_1(-851f, true, vec4<f32>(2158f, -335f, 1000f, 399f), 30657i, vec4<u32>(0u, 1u, 4294967295u, 13144u))), vec4<i32>(-28548i, i32(-2147483648), -8970i, -4985i), 662f), Struct_3(true, vec4<i32>(6304i, i32(-2147483648), 0i, i32(-2147483648)), Struct_2(Struct_1(1747f, false, vec4<f32>(-185f, -1116f, 824f, -2107f), -24420i, vec4<u32>(3367u, 0u, 1u, 5563u)), Struct_1(-1000f, true, vec4<f32>(-648f, -998f, -1000f, -1683f), -22083i, vec4<u32>(0u, 4294967295u, 47357u, 60112u)), Struct_1(-997f, false, vec4<f32>(-509f, 411f, 254f, 902f), -24639i, vec4<u32>(54213u, 15665u, 27975u, 444u)), Struct_1(381f, true, vec4<f32>(471f, -2156f, -1757f, 766f), 2147483647i, vec4<u32>(55642u, 23587u, 0u, 39234u)), Struct_1(869f, false, vec4<f32>(1237f, -1703f, -521f, 1207f), 2147483647i, vec4<u32>(4294967295u, 84712u, 7084u, 54521u))), vec4<i32>(-1i, -9267i, -6771i, 0i), 1421f), Struct_3(false, vec4<i32>(-33663i, 14064i, 0i, -25569i), Struct_2(Struct_1(2033f, false, vec4<f32>(-337f, 1067f, -624f, 576f), -18353i, vec4<u32>(1u, 113824u, 44889u, 1u)), Struct_1(-681f, false, vec4<f32>(342f, 285f, -224f, 685f), 37375i, vec4<u32>(2976u, 14989u, 4294967295u, 4294967295u)), Struct_1(-143f, false, vec4<f32>(-1535f, 1000f, 1000f, 716f), 1i, vec4<u32>(71812u, 1u, 0u, 1u)), Struct_1(-1510f, true, vec4<f32>(-354f, -770f, 220f, -461f), -1i, vec4<u32>(1u, 19807u, 4294967295u, 24026u)), Struct_1(188f, true, vec4<f32>(-389f, -1391f, -2251f, 455f), -51471i, vec4<u32>(3070u, 24147u, 4294967295u, 68194u))), vec4<i32>(6777i, 7048i, i32(-2147483648), 53203i), 860f));

var<private> global1: array<f32, 13>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> bool {
    global1 = array<f32, 13>();
    let var_0 = vec4<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(69936u, ~(u_input.a >> (u_input.a % 32u))), 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1431f)) - _wgslsmith_f_op_f32(f32(-1f) * -288f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 13u)])))) * _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(select(countOneBits(u_input.a), 11311u, !arg_2.x), 13u)], 2101f))), global1[_wgslsmith_index_u32(min(u_input.a, u_input.a), 13u)], _wgslsmith_f_op_f32(f32(-1f) * -826f));
    return var_0.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(146f - -1320f)));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = !(-u_input.c != u_input.d);
    var var_1 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(~arg_1.x, 13u)], any(select(select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 13u)], global1[_wgslsmith_index_u32(arg_1.x, 13u)], global1[_wgslsmith_index_u32(4549u, 13u)], global1[_wgslsmith_index_u32(arg_1.x, 13u)])))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(7112u, 13u)], global1[_wgslsmith_index_u32(arg_0, 13u)], 107f, -1246f)), vec4<f32>(global1[_wgslsmith_index_u32(49700u, 13u)], -391f, 1031f, -221f), func_3(u_input.b, u_input.d, vec4<bool>(false, false, var_0, true), var_0)))), -1i, vec4<u32>(~_wgslsmith_mult_u32(34679u, u_input.a), 94818u, u_input.a, countOneBits(9478u))), Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x & abs(arg_2.x), 13u)]), true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(31410u, 13u)])), -1426f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.x, arg_2.x), 13u)], _wgslsmith_div_f32(-810f, global1[_wgslsmith_index_u32(17961u, 13u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 13u)], -1297f, 1000f, 298f)), vec4<bool>(any(vec4<bool>(var_0, true, true, false)), true, false, all(vec3<bool>(var_0, false, var_0))))), _wgslsmith_div_i32(abs(~(-1i)), u_input.c), ~vec4<u32>(4294967295u, 33698u, u_input.a, 0u) << (~(vec4<u32>(1u, 0u, 1u, 86483u) >> (vec4<u32>(arg_1.x, 14820u, 4294967295u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_0) ^ ~vec2<u32>(1u, arg_1.x), ~vec2<u32>(80744u, 1u)), 13u)], true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(5269u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], -1115f, global1[_wgslsmith_index_u32(u_input.a, 13u)]))), vec4<f32>(-680f, -603f, -1377f, -1000f)))), u_input.b, firstLeadingBit(~abs(vec4<u32>(7829u, 13652u, 1u, 13978u)))), Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(32277u, 39987u << (arg_1.x % 32u)), 13u)]), all(select(vec3<bool>(var_0, true, true), vec3<bool>(false, false, var_0), true)) & true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_f_op_f32(541f + -342f), global1[_wgslsmith_index_u32(44882u, 13u)], 1000f)), u_input.d, vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(arg_2, arg_1)), ~(~u_input.a), ~(~u_input.a), 106112u & ~u_input.a)), Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32((0u & arg_0) | ~4294967295u, 13u)] + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1, arg_1), 13u)] * _wgslsmith_f_op_f32(select(-852f, global1[_wgslsmith_index_u32(0u, 13u)], var_0)))), !var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], 550f, 1100f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(394f, 1069f, -904f, global1[_wgslsmith_index_u32(arg_0, 13u)])), vec4<bool>(var_0, true, var_0, var_0))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-127f, -774f, 114f, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1437f, -711f, global1[_wgslsmith_index_u32(22052u, 13u)], 1026f) + vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], -674f, global1[_wgslsmith_index_u32(4294967295u, 13u)])))), reverseBits(0i), vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u) << (vec3<u32>(11882u, 34717u, u_input.a) % vec3<u32>(32u)), vec3<u32>(arg_1.x, arg_2.x, 1u)), firstTrailingBit(countOneBits(arg_0)), firstTrailingBit(_wgslsmith_sub_u32(u_input.a, 0u)))));
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 11u)];
    var var_3 = -1380f;
    var var_4 = Struct_2(var_1.e, Struct_1(var_1.e.c.x, !any(vec4<bool>(false, var_2.c.a.b, true, var_2.c.d.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(891f * var_1.e.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-166f)) - -388f), _wgslsmith_f_op_f32(-565f * global1[_wgslsmith_index_u32(24930u, 13u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(51520u, 13u)]))), -(1i ^ -u_input.d), ~vec4<u32>(~arg_0, _wgslsmith_mult_u32(1u, u_input.a), ~0u, arg_2.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 13u)] * -158f)), (var_2.c.c.d ^ u_input.b) < _wgslsmith_mod_i32(max(46541i, var_2.c.b.d), -36268i & var_2.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a.c)) - var_2.c.b.c), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-1i, -1i, 0i), 34370i, -var_2.b.x, countOneBits(var_2.b.x)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.d, var_2.d.x, var_2.c.a.d, var_2.d.x), vec4<i32>(u_input.d, 0i, var_1.e.d, var_1.b.d)))), var_2.c.c.e), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -578f), var_0, _wgslsmith_f_op_vec4_f32(ceil(var_2.c.b.c)), _wgslsmith_mult_i32(~15672i, -u_input.b), var_2.c.c.e), var_2.c.b);
    return 8979i;
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = min(_wgslsmith_div_vec4_i32(max(~_wgslsmith_add_vec4_i32(vec4<i32>(-86971i, u_input.c, u_input.b, u_input.d), vec4<i32>(-54279i, arg_0.x, -77611i, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(-9696i, 40036i, 0i, arg_0.x), vec4<i32>(2147483647i, u_input.c, arg_0.x, arg_0.x) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 37316u) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, 20633i, arg_0.x, u_input.b), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.c, 1i, u_input.d), vec4<i32>(u_input.c, 18666i, arg_0.x, u_input.c)), -40392i, 1i, _wgslsmith_clamp_i32(u_input.c, u_input.c, arg_0.x)), countOneBits(max(vec4<i32>(u_input.c, -1i, -20978i, -85156i), vec4<i32>(arg_0.x, 36570i, arg_0.x, arg_0.x))))), max(min(vec4<i32>(arg_0.x, arg_0.x, _wgslsmith_add_i32(0i, arg_0.x), u_input.d), -vec4<i32>(1i, 25678i, u_input.d, arg_0.x)), _wgslsmith_mod_vec4_i32(~(-vec4<i32>(0i, -1i, 7969i, arg_0.x)), ~vec4<i32>(arg_0.x, 24577i, 1i, -18831i))));
    let var_1 = 5947u;
    var var_2 = Struct_3(false, vec4<i32>(-_wgslsmith_sub_i32(-arg_0.x, 1i), ~func_2(~42594u, ~vec2<u32>(u_input.a, 20630u), vec2<u32>(u_input.a, u_input.a)), abs(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, ~(-71962i), select(var_0.x, 35104i, false))), firstLeadingBit(u_input.d | u_input.d)), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1857f, global1[_wgslsmith_index_u32(1u, 13u)]) * -1447f), false, vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1, 13u)] + global1[_wgslsmith_index_u32(var_1, 13u)]), -1169f, global1[_wgslsmith_index_u32(4294967295u, 13u)], _wgslsmith_f_op_f32(-1331f - global1[_wgslsmith_index_u32(var_1, 13u)])), 0i, vec4<u32>(~var_1, ~u_input.a, ~u_input.a, abs(var_1))), Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1, 13u)] + _wgslsmith_f_op_f32(round(516f))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1149f, -575f, global1[_wgslsmith_index_u32(0u, 13u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(var_1, 13u)]) * vec4<f32>(global1[_wgslsmith_index_u32(24191u, 13u)], global1[_wgslsmith_index_u32(38281u, 13u)], -472f, -608f))), ~func_2(var_1, vec2<u32>(var_1, var_1), vec2<u32>(0u, var_1)), vec4<u32>(u_input.a << (var_1 % 32u), var_1, max(u_input.a, 39203u), u_input.a)), Struct_1(_wgslsmith_f_op_f32(-1066f - global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_1), 13u)]), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(34132u, 13u)], global1[_wgslsmith_index_u32(2842u, 13u)], global1[_wgslsmith_index_u32(var_1, 13u)])), arg_0.x, _wgslsmith_sub_vec4_u32(vec4<u32>(var_1, 4294967295u, var_1, 44589u), vec4<u32>(1u, 66202u, 22374u, 12778u)) ^ ~vec4<u32>(var_1, u_input.a, 1u, var_1)), Struct_1(_wgslsmith_f_op_f32(floor(-1000f)), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1305u, 13u)], -427f, global1[_wgslsmith_index_u32(u_input.a, 13u)], 640f), vec4<f32>(-1093f, 236f, -802f, global1[_wgslsmith_index_u32(9892u, 13u)])) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], -251f, 416f, global1[_wgslsmith_index_u32(81111u, 13u)]), vec4<f32>(132f, global1[_wgslsmith_index_u32(12974u, 13u)], 390f, global1[_wgslsmith_index_u32(var_1, 13u)])))), _wgslsmith_clamp_i32(u_input.d, u_input.c, var_0.x), countOneBits(vec4<u32>(var_1, 1u, 4294967295u, 14023u)) >> (~vec4<u32>(var_1, u_input.a, 0u, 49209u) % vec4<u32>(32u))), Struct_1(491f, true, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -393f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 13u)]), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(var_1, 13u)])), _wgslsmith_div_f32(440f, global1[_wgslsmith_index_u32(u_input.a, 13u)])), arg_0.x, vec4<u32>(var_1, ~7447u, var_1 << (62243u % 32u), 28814u))), ~vec4<i32>(57493i, min(var_0.x, -8378i) | -2147483647i, -arg_0.x, firstLeadingBit(u_input.c)), -758f);
    var var_3 = 1312f;
    var var_4 = select(!vec4<bool>(func_3(~25981i, u_input.b, !vec4<bool>(true, false, true, var_2.c.d.b), var_2.c.c.c.x > global1[_wgslsmith_index_u32(0u, 13u)]), var_2.c.a.b, _wgslsmith_mult_i32(var_0.x, 1i) < ~arg_0.x, var_2.a), !select(select(!vec4<bool>(true, var_2.a, false, false), vec4<bool>(var_2.a, var_2.a, false, var_2.c.c.b), vec4<bool>(var_2.c.b.b, true, true, true)), !(!vec4<bool>(true, var_2.c.b.b, var_2.a, var_2.a)), vec4<bool>(true, !var_2.c.c.b, true, any(vec4<bool>(true, var_2.c.c.b, true, var_2.a)))), select(true, false, var_2.a));
    return !select(!vec3<bool>(var_2.a, !var_2.a, all(vec4<bool>(var_2.c.e.b, false, var_2.a, true))), vec3<bool>(any(!var_4.xxx), !(u_input.b > var_2.c.e.d), _wgslsmith_mod_u32(31399u, var_1) < (var_1 & var_1)), vec3<bool>(false, !all(vec3<bool>(true, var_4.x, var_2.c.b.b)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 13>();
    let var_0 = select(u_input.a, 82653u, all(func_1(select(min(vec2<i32>(-9204i, u_input.b), vec2<i32>(u_input.c, 2147483647i)), vec2<i32>(0i, u_input.b), true))));
    global1 = array<f32, 13>();
    var var_1 = vec2<u32>(var_0, 4294967295u);
    let var_2 = Struct_3(!(!all(vec2<bool>(true, true))), -vec4<i32>(~(-7763i), _wgslsmith_div_i32(-23077i, 11405i), _wgslsmith_mult_i32(u_input.c, 2147483647i), func_2(u_input.a, vec2<u32>(var_0, u_input.a), vec2<u32>(u_input.a, 0u))) << (vec4<u32>(abs(var_0) ^ firstLeadingBit(0u), ~_wgslsmith_add_u32(u_input.a, u_input.a), 16423u, var_0) % vec4<u32>(32u)), Struct_2(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 13u)], true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1[_wgslsmith_index_u32(var_1.x, 13u)], -427f, 635f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(var_1.x, 13u)], -1541f, 231f) * vec4<f32>(-644f, 642f, 163f, global1[_wgslsmith_index_u32(17081u, 13u)]))), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, 1i, u_input.c), vec3<i32>(20775i, 2147483647i, u_input.b)), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.a, var_0, 4294967295u), firstLeadingBit(vec4<u32>(u_input.a, 17798u, 21859u, var_1.x)))), Struct_1(1f, all(vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 13u)] + 560f), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, 1u), 13u)], global1[_wgslsmith_index_u32(~25680u, 13u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 13u)], 206f)), -(~u_input.d), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 36864u, var_1.x, var_0), ~vec4<u32>(var_1.x, u_input.a, 33145u, 53946u), abs(vec4<u32>(var_1.x, var_0, var_1.x, u_input.a)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -772f), !select(true, false, true), vec4<f32>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(var_1.x, 13u)])), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(var_0, 13u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1651u, 13u)] + 188f), _wgslsmith_f_op_f32(step(974f, -161f))), max(u_input.b, 1i), vec4<u32>(1u | var_1.x, ~4294967295u, 63625u ^ u_input.a, u_input.a)), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 13u)], select(any(vec4<bool>(true, false, false, true)), true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(70896u, 13u)]), vec4<f32>(global1[_wgslsmith_index_u32(25871u, 13u)], -204f, global1[_wgslsmith_index_u32(27611u, 13u)], 379f))) + _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(10277u, 13u)], global1[_wgslsmith_index_u32(43607u, 13u)], -557f, global1[_wgslsmith_index_u32(var_0, 13u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], -454f, global1[_wgslsmith_index_u32(var_0, 13u)]))), u_input.c, ~vec4<u32>(0u, var_0, var_0, u_input.a)), Struct_1(global1[_wgslsmith_index_u32(abs(~u_input.a), 13u)], all(vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1629f, -536f, -628f, global1[_wgslsmith_index_u32(1u, 13u)]) + vec4<f32>(global1[_wgslsmith_index_u32(24541u, 13u)], global1[_wgslsmith_index_u32(var_1.x, 13u)], -1372f, global1[_wgslsmith_index_u32(u_input.a, 13u)])))), _wgslsmith_clamp_i32(countOneBits(u_input.d), -u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(-2147483647i, 5515i))), vec4<u32>(4294967295u, var_1.x, firstTrailingBit(var_1.x), var_0))), vec4<i32>(abs(-12637i), abs(countOneBits(u_input.b)), min(~(1i << (var_0 % 32u)), u_input.b), -58319i), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(var_0 >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 45422u, var_1.x), min(vec3<u32>(22023u, var_0, 44491u), vec3<u32>(var_1.x, 1u, 61888u))) % 32u), 13u)], _wgslsmith_f_op_f32(-697f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(20760u, 13u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(31002u, 13u)]), true))))));
    let var_3 = ~(~var_2.c.c.e.x);
    var_1 = ~(~vec2<u32>(select(u_input.a, _wgslsmith_sub_u32(u_input.a, 0u), var_2.c.a.b), var_2.c.c.e.x));
    global1 = array<f32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a.c.xyy, (-_wgslsmith_div_i32(var_2.d.x, 51680i) & min(_wgslsmith_div_i32(u_input.d, -2147483647i), 2147483647i)) | 1i, var_2.c.a.e | var_2.c.d.e, max(21475u, 1u), reverseBits(firstTrailingBit(1u)));
}

