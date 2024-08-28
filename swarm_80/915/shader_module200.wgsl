struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec4<f32>(547f, 483f, -111f, -914f), Struct_2(276f, Struct_1(vec3<u32>(33997u, 1u, 0u), vec4<f32>(1000f, 1000f, 662f, 805f))), -40055i, Struct_2(-1534f, Struct_1(vec3<u32>(1u, 22218u, 0u), vec4<f32>(259f, -944f, 318f, -222f)))), Struct_3(vec4<f32>(339f, -218f, -2813f, 262f), Struct_2(-1179f, Struct_1(vec3<u32>(11929u, 1u, 21441u), vec4<f32>(-450f, 918f, -1000f, 321f))), -32953i, Struct_2(-322f, Struct_1(vec3<u32>(19545u, 844u, 56567u), vec4<f32>(1247f, 1000f, -2185f, 731f)))), Struct_3(vec4<f32>(-1485f, -1853f, 246f, 200f), Struct_2(626f, Struct_1(vec3<u32>(38595u, 1u, 4294967295u), vec4<f32>(1000f, 1830f, 985f, -1552f))), -64377i, Struct_2(-2183f, Struct_1(vec3<u32>(64093u, 4294967295u, 48557u), vec4<f32>(-800f, -1246f, -109f, 1332f)))), Struct_3(vec4<f32>(673f, -1569f, 366f, 130f), Struct_2(868f, Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec4<f32>(-519f, 785f, 207f, 445f))), 36280i, Struct_2(248f, Struct_1(vec3<u32>(6459u, 0u, 4294967295u), vec4<f32>(137f, 612f, 455f, 1119f)))), Struct_3(vec4<f32>(-764f, 1073f, 713f, -1582f), Struct_2(886f, Struct_1(vec3<u32>(4294967295u, 46423u, 1u), vec4<f32>(-103f, 566f, -1506f, -149f))), 10763i, Struct_2(-618f, Struct_1(vec3<u32>(4294967295u, 0u, 28211u), vec4<f32>(1414f, 869f, 758f, 659f)))), Struct_3(vec4<f32>(-600f, -208f, 1065f, 692f), Struct_2(268f, Struct_1(vec3<u32>(0u, 55579u, 19594u), vec4<f32>(-712f, -309f, 1334f, -459f))), -3026i, Struct_2(-1000f, Struct_1(vec3<u32>(0u, 1u, 0u), vec4<f32>(898f, 1000f, -1528f, 917f)))), Struct_3(vec4<f32>(1562f, 136f, 1407f, -459f), Struct_2(-511f, Struct_1(vec3<u32>(18252u, 53223u, 3409u), vec4<f32>(-1389f, 610f, -733f, 632f))), 29762i, Struct_2(1776f, Struct_1(vec3<u32>(1u, 4294967295u, 7813u), vec4<f32>(-945f, 1000f, 935f, -649f)))), Struct_3(vec4<f32>(504f, -1614f, -1274f, 1000f), Struct_2(-198f, Struct_1(vec3<u32>(1u, 27614u, 1u), vec4<f32>(-805f, 1113f, 2354f, 130f))), 27401i, Struct_2(1098f, Struct_1(vec3<u32>(60098u, 60672u, 28735u), vec4<f32>(946f, -653f, 793f, -1241f)))), Struct_3(vec4<f32>(-368f, -1464f, -1241f, 1000f), Struct_2(248f, Struct_1(vec3<u32>(36069u, 1u, 1u), vec4<f32>(-759f, -1497f, -1000f, 2388f))), i32(-2147483648), Struct_2(599f, Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec4<f32>(-934f, 1110f, -1792f, -310f)))), Struct_3(vec4<f32>(648f, 520f, 276f, -936f), Struct_2(808f, Struct_1(vec3<u32>(0u, 12133u, 74655u), vec4<f32>(-739f, 1175f, -593f, -1000f))), 2032i, Struct_2(-1338f, Struct_1(vec3<u32>(12229u, 4294967295u, 6378u), vec4<f32>(148f, 103f, 322f, 1584f)))), Struct_3(vec4<f32>(222f, -1000f, -2297f, -141f), Struct_2(-340f, Struct_1(vec3<u32>(37972u, 0u, 36504u), vec4<f32>(-325f, -435f, -895f, -230f))), 2147483647i, Struct_2(337f, Struct_1(vec3<u32>(66315u, 23339u, 45214u), vec4<f32>(321f, -2576f, 319f, -789f)))), Struct_3(vec4<f32>(-1407f, 1317f, -928f, 681f), Struct_2(-439f, Struct_1(vec3<u32>(105331u, 20451u, 0u), vec4<f32>(-1413f, 2831f, 732f, -673f))), 76233i, Struct_2(416f, Struct_1(vec3<u32>(14370u, 31244u, 0u), vec4<f32>(925f, -1109f, -689f, 390f)))), Struct_3(vec4<f32>(-416f, -591f, 1089f, 858f), Struct_2(108f, Struct_1(vec3<u32>(118144u, 21427u, 55670u), vec4<f32>(848f, 483f, 1174f, 162f))), 1i, Struct_2(-1054f, Struct_1(vec3<u32>(0u, 29582u, 1u), vec4<f32>(255f, -1330f, -150f, -1000f)))), Struct_3(vec4<f32>(-1688f, -1050f, -1384f, 649f), Struct_2(247f, Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec4<f32>(-889f, -598f, 469f, 2027f))), 0i, Struct_2(289f, Struct_1(vec3<u32>(0u, 734u, 3948u), vec4<f32>(2081f, -141f, 1039f, -545f)))), Struct_3(vec4<f32>(1264f, 446f, 353f, 522f), Struct_2(1462f, Struct_1(vec3<u32>(56035u, 1u, 34285u), vec4<f32>(-2180f, 181f, -1000f, -1233f))), 43597i, Struct_2(-837f, Struct_1(vec3<u32>(0u, 0u, 44618u), vec4<f32>(-759f, -348f, -325f, -172f)))), Struct_3(vec4<f32>(233f, -265f, -1274f, 1154f), Struct_2(482f, Struct_1(vec3<u32>(1u, 1u, 13015u), vec4<f32>(775f, -1751f, 1000f, 986f))), 2147483647i, Struct_2(-1223f, Struct_1(vec3<u32>(46445u, 98903u, 0u), vec4<f32>(-1429f, 926f, 1323f, 194f)))), Struct_3(vec4<f32>(993f, 775f, -766f, -2076f), Struct_2(226f, Struct_1(vec3<u32>(29773u, 13296u, 25112u), vec4<f32>(903f, -3670f, -702f, -239f))), -15784i, Struct_2(447f, Struct_1(vec3<u32>(21898u, 1u, 4294967295u), vec4<f32>(525f, -894f, 135f, -1339f)))), Struct_3(vec4<f32>(745f, -1031f, 773f, -188f), Struct_2(198f, Struct_1(vec3<u32>(37400u, 33735u, 1u), vec4<f32>(-1588f, 653f, 945f, 1072f))), 11796i, Struct_2(1403f, Struct_1(vec3<u32>(19806u, 0u, 4294967295u), vec4<f32>(2030f, 491f, 265f, -678f)))), Struct_3(vec4<f32>(357f, -1741f, 371f, -1414f), Struct_2(545f, Struct_1(vec3<u32>(26740u, 4294967295u, 0u), vec4<f32>(-223f, 2083f, -788f, -628f))), -14116i, Struct_2(564f, Struct_1(vec3<u32>(103516u, 5255u, 4294967295u), vec4<f32>(-2211f, 288f, -368f, 512f)))), Struct_3(vec4<f32>(1560f, 375f, -1381f, 1255f), Struct_2(1792f, Struct_1(vec3<u32>(75624u, 0u, 4294967295u), vec4<f32>(-1326f, 402f, 1801f, -1000f))), 2147483647i, Struct_2(-349f, Struct_1(vec3<u32>(4294967295u, 1u, 52826u), vec4<f32>(-146f, -631f, -1754f, 969f)))), Struct_3(vec4<f32>(-263f, -2134f, 2016f, 550f), Struct_2(-694f, Struct_1(vec3<u32>(0u, 1u, 37059u), vec4<f32>(-112f, -729f, 738f, -615f))), 9637i, Struct_2(-2551f, Struct_1(vec3<u32>(60729u, 4294967295u, 53082u), vec4<f32>(1485f, 686f, -930f, 802f)))), Struct_3(vec4<f32>(-650f, -783f, -163f, 1182f), Struct_2(1528f, Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec4<f32>(-871f, -1000f, 1000f, -213f))), 0i, Struct_2(1000f, Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec4<f32>(1419f, -1954f, -2252f, -1123f)))), Struct_3(vec4<f32>(816f, 925f, -923f, -254f), Struct_2(909f, Struct_1(vec3<u32>(1u, 87758u, 1u), vec4<f32>(-729f, 288f, 970f, 1000f))), -1i, Struct_2(1255f, Struct_1(vec3<u32>(10069u, 8407u, 18533u), vec4<f32>(-666f, -517f, -2835f, -474f)))), Struct_3(vec4<f32>(1079f, 360f, 672f, 809f), Struct_2(101f, Struct_1(vec3<u32>(1u, 38049u, 1u), vec4<f32>(1769f, 464f, 1510f, 1574f))), 2147483647i, Struct_2(272f, Struct_1(vec3<u32>(9961u, 29091u, 30562u), vec4<f32>(2426f, -2777f, 863f, 1676f)))), Struct_3(vec4<f32>(856f, -617f, -669f, -140f), Struct_2(-1297f, Struct_1(vec3<u32>(18624u, 0u, 49831u), vec4<f32>(2572f, 174f, 1000f, -1543f))), -5312i, Struct_2(-891f, Struct_1(vec3<u32>(0u, 18676u, 84803u), vec4<f32>(1162f, -1798f, 895f, -602f)))), Struct_3(vec4<f32>(534f, 1358f, -128f, -132f), Struct_2(896f, Struct_1(vec3<u32>(1u, 8819u, 0u), vec4<f32>(560f, -137f, 454f, -171f))), -18602i, Struct_2(-1244f, Struct_1(vec3<u32>(1u, 50657u, 0u), vec4<f32>(-246f, -2118f, -587f, -474f)))), Struct_3(vec4<f32>(-278f, 1108f, -1036f, -780f), Struct_2(-1018f, Struct_1(vec3<u32>(9265u, 0u, 0u), vec4<f32>(1458f, 1072f, 523f, -371f))), -49884i, Struct_2(-1107f, Struct_1(vec3<u32>(1u, 1u, 0u), vec4<f32>(-729f, 1323f, 431f, 864f)))), Struct_3(vec4<f32>(904f, -830f, 1865f, 805f), Struct_2(424f, Struct_1(vec3<u32>(39360u, 4841u, 0u), vec4<f32>(1182f, 113f, -507f, 2413f))), -1372i, Struct_2(-1747f, Struct_1(vec3<u32>(78137u, 4294967295u, 30700u), vec4<f32>(1569f, -112f, -1131f, 529f)))), Struct_3(vec4<f32>(281f, 566f, -900f, -1577f), Struct_2(1153f, Struct_1(vec3<u32>(0u, 8905u, 64127u), vec4<f32>(874f, 1147f, 571f, 1000f))), 39806i, Struct_2(-1313f, Struct_1(vec3<u32>(0u, 1u, 7314u), vec4<f32>(381f, 955f, 835f, -116f)))), Struct_3(vec4<f32>(545f, -808f, -607f, 897f), Struct_2(-548f, Struct_1(vec3<u32>(2911u, 1u, 4294967295u), vec4<f32>(1087f, -2120f, 1212f, -402f))), 6484i, Struct_2(737f, Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec4<f32>(1338f, 1000f, -2232f, 1000f)))), Struct_3(vec4<f32>(1367f, 338f, 309f, 918f), Struct_2(524f, Struct_1(vec3<u32>(23011u, 0u, 4294967295u), vec4<f32>(1230f, -365f, 687f, 636f))), i32(-2147483648), Struct_2(559f, Struct_1(vec3<u32>(36421u, 1u, 0u), vec4<f32>(-646f, -705f, -1282f, 1512f)))), Struct_3(vec4<f32>(2714f, -143f, -301f, -764f), Struct_2(-2331f, Struct_1(vec3<u32>(67839u, 31997u, 39223u), vec4<f32>(1907f, 1139f, 1000f, 1369f))), 6764i, Struct_2(927f, Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec4<f32>(-717f, -340f, -1410f, -240f)))));

var<private> global2: Struct_1;

var<private> global3: Struct_3;

var<private> global4: array<vec4<u32>, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = ~_wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.d.x, u_input.d.x), u_input.d.zw, vec2<bool>(false, true)) ^ (u_input.d.wz >> (vec2<u32>(global3.b.b.a.x, global2.a.x) % vec2<u32>(32u))), u_input.d.wy) << (select(countOneBits(vec2<u32>(u_input.b.x, global3.b.b.a.x) ^ ~global2.a.xz), ~global3.b.b.a.yy, true) % vec2<u32>(32u));
    var var_0 = _wgslsmith_dot_vec2_i32(select(u_input.d.zy, u_input.d.yy, vec2<bool>(true, true)), abs(firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.d.xy, u_input.d.wx)))) | (firstTrailingBit(global3.c) & -2147483647i);
    var var_1 = Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(ceil(global2.b)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(min(global2.b.x, _wgslsmith_f_op_f32(-var_1.b.x))), global3.d.b);
    let var_3 = vec3<bool>(true, any(vec4<bool>(true, true, true, true)), all(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), ~var_2.b.a.x >= ~global3.b.b.a.x)));
    return global3.d;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = !vec4<bool>(!arg_1, false, _wgslsmith_f_op_f32(415f + arg_0.a) != global3.d.a, all(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, false, arg_1, true), arg_1)) | all(select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, arg_1, arg_1))));
    global4 = array<vec4<u32>, 12>();
    var var_1 = global2.a;
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1079f)), global3.a.x), 903f, _wgslsmith_f_op_f32(ceil(2073f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f) - 1062f), 1465f));
    let var_3 = global0.x == 2147483647i;
    return func_2(0u).b;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(min(22754u | _wgslsmith_sub_u32(global3.b.b.a.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(59842u, 1u), ~7831u)), ~10038u), 32u)];
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~18575u, _wgslsmith_clamp_u32(arg_1.a.x, _wgslsmith_add_u32(u_input.b.x | func_2(0u).b.a.x, 21513u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, 0u, 0u), vec3<u32>(var_0.b.b.a.x, global3.b.b.a.x, var_0.d.b.a.x)) << (1u % 32u)))), 32u)];
    var var_1 = _wgslsmith_div_f32(global2.b.x, 857f);
    let var_2 = _wgslsmith_dot_vec3_i32(-(-vec3<i32>(5786i, global3.c, 9651i) & ~vec3<i32>(global3.c, global3.c, -2147483647i)), u_input.d.www) >> (0u % 32u);
    global2 = global3.b.b;
    return Struct_1(abs(vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, global3.b.b.a.x)), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 71133u, arg_1.a.x, u_input.c), global4[_wgslsmith_index_u32(57132u, 12u)])), select(~82948u, 4294967295u, false))), global3.d.b.b);
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(1769f, func_4(_wgslsmith_f_op_vec4_f32(arg_0.b.b.b + _wgslsmith_f_op_vec4_f32(-arg_0.a)), func_3(func_2(1u), !arg_3.x && false, func_2(global2.a.x)), abs(global3.c), Struct_2(-947f, func_3(arg_0.d, any(vec2<bool>(true, true)), global3.d))));
    let var_1 = func_2(select(arg_0.d.b.a.x, 4294967295u, all(select(select(vec3<bool>(arg_3.x, false, true), vec3<bool>(arg_3.x, false, true), arg_3.x), select(vec3<bool>(arg_3.x, true, true), vec3<bool>(arg_3.x, false, arg_3.x), vec3<bool>(true, true, true)), vec3<bool>(arg_3.x, arg_3.x, arg_3.x))))).a;
    return Struct_1(~firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xz, global2.a.zx), ~46431u, global2.a.x >> (14346u % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b.b.b)))) + _wgslsmith_f_op_vec4_f32(floor(global2.b))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = vec4<u32>(select(~reverseBits(44267u), arg_3.b.b.a.x, true), u_input.b.x, func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_3.a)), global3.b.b.b), func_2(arg_1.a.x & u_input.c).b, -10158i, func_2(~u_input.a.x)).a.x >> (_wgslsmith_sub_u32(24095u, ~func_3(Struct_2(-553f, Struct_1(vec3<u32>(u_input.c, arg_0.b.b.a.x, 0u), vec4<f32>(global3.a.x, arg_0.b.b.b.x, -1421f, 683f))), false, global3.d).a.x) % 32u), func_3(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -253f) != arg_1.b.x, arg_3.d).a.x);
    let var_1 = arg_1;
    var var_2 = vec2<i32>(0i, _wgslsmith_mult_i32(~1i, abs(~_wgslsmith_add_i32(32402i, 1i))));
    var_0 = vec4<u32>(select(~4294967295u, var_1.a.x, !(!any(vec4<bool>(true, true, true, false)))), _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_3.d.b.a.x, 9175u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_1.a.x, arg_1.a.x, u_input.a.x, 1u) | vec4<u32>(0u, 4294967295u, var_1.a.x, 8884u)), vec4<u32>(arg_0.d.b.a.x, global3.b.b.a.x, arg_1.a.x, ~0u))), 4294967295u, _wgslsmith_dot_vec2_u32(u_input.b.yx, var_1.a.xz) >> (var_0.x % 32u));
    var var_3 = !vec2<bool>((abs(global2.a.x) ^ func_4(vec4<f32>(arg_3.d.b.b.x, 757f, arg_3.d.b.b.x, -903f), global3.b.b, global3.c, Struct_2(-399f, var_1)).a.x) <= ~_wgslsmith_clamp_u32(global3.b.b.a.x, global2.a.x, global2.a.x), !all(vec3<bool>(false, true, true)));
    return Struct_2(260f, var_1);
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = max(select(func_5(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b.x, -322f, -1187f, global3.d.b.b.x)), func_2(1u), global0.x, Struct_2(arg_3.b.b.x, arg_3.b)), func_2(arg_3.b.a.x).b, func_1(global1[_wgslsmith_index_u32(0u, 32u)], 29561u, _wgslsmith_f_op_f32(-global3.d.a), vec2<bool>(false, true)).b, global1[_wgslsmith_index_u32(~arg_1.x, 32u)]).b.a.zz, func_1(global1[_wgslsmith_index_u32(arg_3.b.a.x, 32u)], select(global3.d.b.a.x, 52762u, false), -414f, vec2<bool>(true, false)).a.yz & _wgslsmith_div_vec2_u32(~vec2<u32>(74149u, 1020u), arg_0.b.a.yz), select(vec2<bool>(-2478f != global2.b.x, true), vec2<bool>(arg_0.b.a.x < 0u, false), select(vec2<bool>(false, true), vec2<bool>(true, true), true))), select(~u_input.b.xx, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b.a.x, arg_3.b.a.x), arg_1.wx), 0u) ^ ~select(arg_0.b.a.zz, arg_3.b.a.zy, vec2<bool>(true, false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(global2.b.x > -788f, any(vec3<bool>(false, true, true))), any(vec3<bool>(false, true, false)))));
    let var_1 = func_2(u_input.b.x);
    global3 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * -670f), arg_3.a, func_4(global3.b.b.b, global3.b.b, u_input.d.x, arg_3).b.x, -198f) + arg_3.b.b), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global3.a.x, -1095f)), global3.d.b.b.x), arg_3.b.b.x, arg_3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.d.b.b.x), -1677f))), func_2(global2.a.x | arg_3.b.a.x), (global3.c >> (41154u % 32u)) & -59223i, func_2(~1u));
    global2 = global3.b.b;
    var var_2 = _wgslsmith_f_op_f32(ceil(1281f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.d.a)) * -2683f);
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 32>();
    var var_0 = any(vec2<bool>(false, false)) && any(!vec4<bool>(false, u_input.d.x > -60584i, true, false));
    global2 = func_6(func_5(global1[_wgslsmith_index_u32(~reverseBits(u_input.c), 32u)], func_1(Struct_3(global2.b, Struct_2(610f, global3.d.b), 0i, Struct_2(509f, Struct_1(vec3<u32>(62864u, 1u, 1u), global3.a))), ~_wgslsmith_mod_u32(58914u, 46550u), 702f, !select(vec2<bool>(false, true), vec2<bool>(true, false), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -880f), _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_div_f32(716f, global2.b.x))), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(global2.b, vec4<f32>(233f, 406f, 1000f, global2.b.x)), vec4<f32>(-700f, 1222f, 504f, global3.a.x), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)))), func_2(_wgslsmith_div_u32(global3.b.b.a.x, 34193u)), global0.x, global3.b)), min(~global4[_wgslsmith_index_u32(0u, 12u)], firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.b.b.a.x, global2.a.x, u_input.b.x, 1u), vec4<u32>(25372u, 46087u, 1u, 6576u))) ^ ~vec4<u32>(u_input.c, global3.d.b.a.x, global2.a.x, 60729u)), min(u_input.d.x, -_wgslsmith_mod_i32(u_input.d.x >> (4294967295u % 32u), -17472i)), global3.d);
    var var_1 = func_2(_wgslsmith_mod_u32(~firstTrailingBit(4294967295u), func_5(Struct_3(vec4<f32>(global2.b.x, 699f, 733f, global2.b.x), Struct_2(global3.a.x, Struct_1(global3.b.b.a, global2.b)), -1i, global3.b), global3.b.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1827f), global2.b.x, _wgslsmith_f_op_f32(global3.b.b.b.x + 633f), 158f), global1[_wgslsmith_index_u32(41561u, 32u)]).b.a.x));
    global0 = firstLeadingBit(u_input.d.yx);
    global1 = array<Struct_3, 32>();
    var var_2 = global3.b;
    var var_3 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 2147483647i, ~48483i >> (u_input.a.x % 32u)), min(~_wgslsmith_add_vec3_i32(u_input.d.xyz, u_input.d.xzz), countOneBits(-vec3<i32>(global3.c, -1i, u_input.d.x))));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~vec2<u32>(50510u, 4294967295u))), -55870i, vec3<u32>(countOneBits(~(~0u)), ~(~global3.d.b.a.x), ~(~u_input.a.x)), 23380u, u_input.d);
}

