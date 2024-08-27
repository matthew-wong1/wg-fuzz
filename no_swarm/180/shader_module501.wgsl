struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(2147483647i, vec3<u32>(14827u, 38492u, 1u), Struct_2(45691i, 4294967295u, 1i, Struct_1(vec3<f32>(-2172f, 696f, 179f), vec2<u32>(0u, 4294967295u), vec3<f32>(670f, -1000f, 774f)), vec2<f32>(-2249f, 352f)), vec3<u32>(4294967295u, 46373u, 4294967295u), vec2<f32>(101f, -1085f)), Struct_3(-951i, vec3<u32>(0u, 1u, 1u), Struct_2(-1i, 53484u, -40875i, Struct_1(vec3<f32>(131f, -540f, 325f), vec2<u32>(1849u, 44970u), vec3<f32>(377f, 1209f, -816f)), vec2<f32>(-1643f, -751f)), vec3<u32>(104514u, 1u, 1u), vec2<f32>(-1174f, -964f)), Struct_3(-11625i, vec3<u32>(1u, 0u, 55351u), Struct_2(i32(-2147483648), 43523u, -1i, Struct_1(vec3<f32>(454f, 1604f, 728f), vec2<u32>(12340u, 41039u), vec3<f32>(448f, 372f, 362f)), vec2<f32>(757f, -1118f)), vec3<u32>(13181u, 39114u, 45522u), vec2<f32>(-876f, 292f)), Struct_3(1i, vec3<u32>(36254u, 1u, 40660u), Struct_2(-4331i, 4294967295u, -1i, Struct_1(vec3<f32>(-700f, 806f, 1521f), vec2<u32>(4503u, 10524u), vec3<f32>(1000f, -913f, -1000f)), vec2<f32>(803f, -279f)), vec3<u32>(0u, 4294967295u, 726u), vec2<f32>(345f, 686f)), Struct_3(1i, vec3<u32>(54209u, 17785u, 1u), Struct_2(53117i, 4294967295u, 0i, Struct_1(vec3<f32>(555f, 1412f, -641f), vec2<u32>(25719u, 1u), vec3<f32>(505f, 1014f, 1000f)), vec2<f32>(1388f, 429f)), vec3<u32>(1u, 11062u, 67318u), vec2<f32>(1674f, -1381f)), Struct_3(2147483647i, vec3<u32>(34506u, 1u, 38601u), Struct_2(i32(-2147483648), 4294967295u, 49754i, Struct_1(vec3<f32>(-1000f, 1000f, -1000f), vec2<u32>(18974u, 4294967295u), vec3<f32>(1550f, -133f, -547f)), vec2<f32>(-1000f, 492f)), vec3<u32>(1u, 23751u, 4294967295u), vec2<f32>(-1093f, -1372f)), Struct_3(-38438i, vec3<u32>(15942u, 34899u, 0u), Struct_2(33798i, 14962u, -32029i, Struct_1(vec3<f32>(-2124f, 257f, -555f), vec2<u32>(21368u, 35252u), vec3<f32>(1463f, 566f, -1000f)), vec2<f32>(1796f, -2153f)), vec3<u32>(37052u, 91u, 4294967295u), vec2<f32>(273f, -849f)), Struct_3(1i, vec3<u32>(38124u, 70693u, 4294967295u), Struct_2(-1i, 21172u, 1i, Struct_1(vec3<f32>(-910f, -1128f, -1936f), vec2<u32>(47777u, 0u), vec3<f32>(899f, -718f, 1353f)), vec2<f32>(429f, -379f)), vec3<u32>(9976u, 4294967295u, 3841u), vec2<f32>(1138f, -1113f)), Struct_3(2147483647i, vec3<u32>(4294967295u, 1u, 29583u), Struct_2(0i, 26119u, i32(-2147483648), Struct_1(vec3<f32>(-140f, 1542f, 1087f), vec2<u32>(19701u, 4294967295u), vec3<f32>(-449f, 1000f, 832f)), vec2<f32>(-419f, -1282f)), vec3<u32>(0u, 4294967295u, 66403u), vec2<f32>(-221f, -1000f)), Struct_3(i32(-2147483648), vec3<u32>(0u, 37318u, 62298u), Struct_2(-3439i, 8348u, 1i, Struct_1(vec3<f32>(-1000f, 897f, 237f), vec2<u32>(32074u, 32800u), vec3<f32>(-971f, -124f, -103f)), vec2<f32>(-948f, 2666f)), vec3<u32>(25826u, 0u, 4294967295u), vec2<f32>(599f, 1513f)), Struct_3(6926i, vec3<u32>(4294967295u, 1u, 24424u), Struct_2(-1i, 4294967295u, -18062i, Struct_1(vec3<f32>(265f, -749f, 206f), vec2<u32>(45357u, 105975u), vec3<f32>(424f, 615f, -253f)), vec2<f32>(-977f, -985f)), vec3<u32>(14926u, 0u, 48181u), vec2<f32>(-938f, 1072f)), Struct_3(19163i, vec3<u32>(1u, 16012u, 972u), Struct_2(i32(-2147483648), 11019u, -4057i, Struct_1(vec3<f32>(-1000f, 783f, -1000f), vec2<u32>(55673u, 75725u), vec3<f32>(1752f, 1311f, 168f)), vec2<f32>(-305f, -436f)), vec3<u32>(25269u, 73512u, 4294967295u), vec2<f32>(117f, 187f)), Struct_3(-1i, vec3<u32>(48737u, 35803u, 1133u), Struct_2(-8859i, 0u, 1i, Struct_1(vec3<f32>(1000f, 315f, -1542f), vec2<u32>(68932u, 1u), vec3<f32>(-1000f, 585f, -250f)), vec2<f32>(-749f, 1072f)), vec3<u32>(1u, 4294967295u, 0u), vec2<f32>(458f, 545f)));

var<private> global1: vec4<u32> = vec4<u32>(1u, 4294967295u, 4294967295u, 0u);

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec2<i32>(1i, 12750i), Struct_2(0i, 3038u, -25245i, Struct_1(vec3<f32>(820f, 205f, -691f), vec2<u32>(4294967295u, 4294967295u), vec3<f32>(144f, 116f, 2262f)), vec2<f32>(-2001f, 1438f)), 39276i, Struct_3(-25037i, vec3<u32>(4294967295u, 0u, 4294967295u), Struct_2(-27149i, 11601u, -1i, Struct_1(vec3<f32>(700f, -274f, 823f), vec2<u32>(27355u, 45466u), vec3<f32>(618f, -293f, -924f)), vec2<f32>(1051f, 2012f)), vec3<u32>(20190u, 31841u, 15830u), vec2<f32>(179f, -295f)), 1i), Struct_4(vec2<i32>(2147483647i, -11906i), Struct_2(i32(-2147483648), 0u, -40049i, Struct_1(vec3<f32>(1000f, -553f, 236f), vec2<u32>(0u, 16174u), vec3<f32>(-2033f, -1584f, 1000f)), vec2<f32>(-1799f, -456f)), 10636i, Struct_3(-22295i, vec3<u32>(34054u, 39273u, 4294967295u), Struct_2(80030i, 1u, -14401i, Struct_1(vec3<f32>(-715f, -317f, -1038f), vec2<u32>(84442u, 38376u), vec3<f32>(-291f, -746f, 523f)), vec2<f32>(-732f, 896f)), vec3<u32>(1u, 13796u, 16925u), vec2<f32>(-1304f, -183f)), -9973i), Struct_4(vec2<i32>(0i, 2147483647i), Struct_2(0i, 52211u, i32(-2147483648), Struct_1(vec3<f32>(694f, 992f, 321f), vec2<u32>(4294967295u, 1u), vec3<f32>(-564f, 551f, 1000f)), vec2<f32>(-1024f, 594f)), 10665i, Struct_3(44911i, vec3<u32>(104130u, 4294967295u, 103416u), Struct_2(-33442i, 0u, -1i, Struct_1(vec3<f32>(-1708f, 1142f, -1160f), vec2<u32>(4294967295u, 27425u), vec3<f32>(-1000f, 1504f, 820f)), vec2<f32>(-538f, -509f)), vec3<u32>(4294967295u, 1u, 25386u), vec2<f32>(-495f, 1147f)), 2147483647i), Struct_4(vec2<i32>(-27854i, 2147483647i), Struct_2(2147483647i, 4294967295u, 2147483647i, Struct_1(vec3<f32>(-1000f, 913f, 863f), vec2<u32>(37566u, 0u), vec3<f32>(1028f, -259f, 381f)), vec2<f32>(-1178f, 256f)), 2522i, Struct_3(1i, vec3<u32>(0u, 34442u, 0u), Struct_2(40095i, 13005u, -45770i, Struct_1(vec3<f32>(-1465f, 1140f, 712f), vec2<u32>(1u, 7705u), vec3<f32>(-1314f, -907f, -849f)), vec2<f32>(-1344f, -862f)), vec3<u32>(38126u, 1u, 121491u), vec2<f32>(-534f, -906f)), 0i), Struct_4(vec2<i32>(32816i, 8135i), Struct_2(i32(-2147483648), 3209u, 9229i, Struct_1(vec3<f32>(1089f, -842f, 1080f), vec2<u32>(2946u, 27269u), vec3<f32>(-406f, -725f, 1000f)), vec2<f32>(-189f, -229f)), -10885i, Struct_3(11513i, vec3<u32>(32009u, 39229u, 9729u), Struct_2(11981i, 0u, 93678i, Struct_1(vec3<f32>(1000f, 438f, 797f), vec2<u32>(4294967295u, 0u), vec3<f32>(295f, -1308f, -858f)), vec2<f32>(-142f, -2187f)), vec3<u32>(26119u, 0u, 4294967295u), vec2<f32>(-1495f, -381f)), 0i), Struct_4(vec2<i32>(2147483647i, -27851i), Struct_2(-25194i, 997u, 10235i, Struct_1(vec3<f32>(-217f, -388f, -114f), vec2<u32>(24584u, 1u), vec3<f32>(1000f, -295f, -414f)), vec2<f32>(299f, 1894f)), 2147483647i, Struct_3(-6328i, vec3<u32>(1u, 8952u, 1u), Struct_2(15453i, 8494u, -1i, Struct_1(vec3<f32>(-443f, -2381f, 800f), vec2<u32>(1u, 93133u), vec3<f32>(672f, 732f, -814f)), vec2<f32>(547f, -1060f)), vec3<u32>(1u, 30845u, 1u), vec2<f32>(-477f, -480f)), -1i), Struct_4(vec2<i32>(-12021i, 0i), Struct_2(-32701i, 50286u, i32(-2147483648), Struct_1(vec3<f32>(-636f, -1204f, -201f), vec2<u32>(4294967295u, 96115u), vec3<f32>(112f, 235f, 2161f)), vec2<f32>(1000f, -252f)), 0i, Struct_3(-1i, vec3<u32>(45945u, 19144u, 4294967295u), Struct_2(i32(-2147483648), 0u, -1i, Struct_1(vec3<f32>(1081f, 1000f, 148f), vec2<u32>(1u, 51295u), vec3<f32>(-1134f, 1000f, 303f)), vec2<f32>(-522f, 219f)), vec3<u32>(4294967295u, 56787u, 60856u), vec2<f32>(635f, -386f)), -1i), Struct_4(vec2<i32>(-10208i, 2147483647i), Struct_2(-63183i, 4294967295u, -16997i, Struct_1(vec3<f32>(-850f, 597f, -901f), vec2<u32>(25159u, 0u), vec3<f32>(-734f, 381f, 469f)), vec2<f32>(1015f, 379f)), 6638i, Struct_3(46266i, vec3<u32>(80385u, 78960u, 0u), Struct_2(i32(-2147483648), 0u, i32(-2147483648), Struct_1(vec3<f32>(396f, 316f, -1512f), vec2<u32>(1u, 4294967295u), vec3<f32>(-2619f, 596f, 339f)), vec2<f32>(-1788f, 217f)), vec3<u32>(4294967295u, 0u, 112600u), vec2<f32>(437f, 1000f)), 0i), Struct_4(vec2<i32>(-1847i, -1i), Struct_2(0i, 1u, 2147483647i, Struct_1(vec3<f32>(396f, 1413f, 957f), vec2<u32>(0u, 44438u), vec3<f32>(1953f, 1000f, -381f)), vec2<f32>(291f, 1182f)), -1i, Struct_3(-17824i, vec3<u32>(36363u, 44445u, 0u), Struct_2(-52141i, 1u, 91486i, Struct_1(vec3<f32>(571f, -1007f, -158f), vec2<u32>(4294967295u, 1u), vec3<f32>(1740f, -1363f, -302f)), vec2<f32>(-428f, 1593f)), vec3<u32>(0u, 48380u, 0u), vec2<f32>(-1155f, -2630f)), -49393i), Struct_4(vec2<i32>(49410i, 2147483647i), Struct_2(1i, 38430u, -2153i, Struct_1(vec3<f32>(2089f, -339f, -433f), vec2<u32>(1u, 0u), vec3<f32>(553f, -1000f, -780f)), vec2<f32>(-739f, 365f)), 5128i, Struct_3(-22420i, vec3<u32>(1u, 17434u, 19476u), Struct_2(19477i, 1u, 40412i, Struct_1(vec3<f32>(-1026f, 1405f, 843f), vec2<u32>(0u, 9022u), vec3<f32>(807f, -1000f, -443f)), vec2<f32>(-1013f, 1008f)), vec3<u32>(1u, 0u, 39754u), vec2<f32>(1000f, -1125f)), 1089i), Struct_4(vec2<i32>(78600i, 31540i), Struct_2(2147483647i, 0u, -17896i, Struct_1(vec3<f32>(1000f, 1000f, 322f), vec2<u32>(1u, 53780u), vec3<f32>(-2590f, 405f, -1000f)), vec2<f32>(-704f, 539f)), -67655i, Struct_3(-1i, vec3<u32>(4294967295u, 11779u, 23481u), Struct_2(-1i, 3468u, 3663i, Struct_1(vec3<f32>(570f, -901f, -1000f), vec2<u32>(1u, 0u), vec3<f32>(-741f, 1000f, 1016f)), vec2<f32>(-443f, 482f)), vec3<u32>(58043u, 0u, 0u), vec2<f32>(223f, 693f)), -1i), Struct_4(vec2<i32>(-105585i, -52881i), Struct_2(-44821i, 34165u, i32(-2147483648), Struct_1(vec3<f32>(-585f, 486f, 1298f), vec2<u32>(43603u, 87665u), vec3<f32>(-292f, -781f, 1072f)), vec2<f32>(408f, 1413f)), i32(-2147483648), Struct_3(-11041i, vec3<u32>(8616u, 23247u, 1u), Struct_2(-20589i, 18084u, 1i, Struct_1(vec3<f32>(-1258f, -542f, 1728f), vec2<u32>(65035u, 23443u), vec3<f32>(-1453f, -1468f, -844f)), vec2<f32>(-825f, -202f)), vec3<u32>(60497u, 55332u, 0u), vec2<f32>(-769f, 598f)), 9731i), Struct_4(vec2<i32>(-4574i, -1i), Struct_2(-1i, 0u, 0i, Struct_1(vec3<f32>(-1000f, 1282f, -906f), vec2<u32>(40725u, 20770u), vec3<f32>(1448f, 272f, 1310f)), vec2<f32>(348f, 802f)), i32(-2147483648), Struct_3(1i, vec3<u32>(68329u, 4294967295u, 0u), Struct_2(-1i, 1u, -1i, Struct_1(vec3<f32>(1000f, 641f, -936f), vec2<u32>(32699u, 0u), vec3<f32>(-265f, 987f, -1000f)), vec2<f32>(-1164f, -1855f)), vec3<u32>(37839u, 4294967295u, 31965u), vec2<f32>(-746f, -667f)), 0i), Struct_4(vec2<i32>(373i, 1i), Struct_2(0i, 0u, 95377i, Struct_1(vec3<f32>(645f, 1000f, 1011f), vec2<u32>(1u, 0u), vec3<f32>(-1000f, 983f, 271f)), vec2<f32>(-226f, 673f)), 2147483647i, Struct_3(-6137i, vec3<u32>(0u, 31958u, 31663u), Struct_2(-7964i, 72843u, 2759i, Struct_1(vec3<f32>(-409f, -566f, -945f), vec2<u32>(0u, 28482u), vec3<f32>(747f, 687f, -445f)), vec2<f32>(-1379f, 1000f)), vec3<u32>(0u, 4294967295u, 14157u), vec2<f32>(894f, 974f)), 2147483647i), Struct_4(vec2<i32>(i32(-2147483648), 24198i), Struct_2(-1i, 4294967295u, 76849i, Struct_1(vec3<f32>(1045f, 1051f, -1000f), vec2<u32>(0u, 22791u), vec3<f32>(-2333f, 296f, 101f)), vec2<f32>(307f, -799f)), 24786i, Struct_3(-25146i, vec3<u32>(1u, 14656u, 4294967295u), Struct_2(26009i, 1u, 1i, Struct_1(vec3<f32>(-770f, 737f, 478f), vec2<u32>(53650u, 59309u), vec3<f32>(-515f, 1499f, 1422f)), vec2<f32>(826f, 538f)), vec3<u32>(0u, 48637u, 35325u), vec2<f32>(-2734f, 1086f)), 29252i), Struct_4(vec2<i32>(1i, 10760i), Struct_2(51415i, 10023u, -13941i, Struct_1(vec3<f32>(-715f, -1553f, 872f), vec2<u32>(1u, 4828u), vec3<f32>(1096f, -276f, -497f)), vec2<f32>(-647f, -1000f)), 1i, Struct_3(65047i, vec3<u32>(1u, 52990u, 4294967295u), Struct_2(1i, 0u, -33453i, Struct_1(vec3<f32>(1193f, 660f, -433f), vec2<u32>(0u, 0u), vec3<f32>(917f, 1736f, -1000f)), vec2<f32>(-330f, -1663f)), vec3<u32>(17995u, 59998u, 46897u), vec2<f32>(-329f, -379f)), i32(-2147483648)), Struct_4(vec2<i32>(9211i, i32(-2147483648)), Struct_2(0i, 62492u, -3699i, Struct_1(vec3<f32>(-699f, -371f, -2118f), vec2<u32>(7261u, 4294967295u), vec3<f32>(118f, -1000f, 730f)), vec2<f32>(-370f, -1000f)), 0i, Struct_3(-1i, vec3<u32>(0u, 4294967295u, 1u), Struct_2(-35029i, 1u, 21092i, Struct_1(vec3<f32>(456f, 1361f, 1000f), vec2<u32>(3342u, 16202u), vec3<f32>(718f, -623f, -903f)), vec2<f32>(626f, -1047f)), vec3<u32>(0u, 33341u, 0u), vec2<f32>(227f, -1676f)), i32(-2147483648)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = arg_0.d.x;
    return arg_1.d;
}

fn func_3() -> vec2<u32> {
    return u_input.a.zz;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_2 {
    global0 = array<Struct_3, 13>();
    var var_0 = Struct_2(u_input.b, ~(~(~select(global1.x, 18540u, false))), ~abs(-1i), func_1(Struct_3(-firstLeadingBit(2147483647i), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(global1.x, 1u, arg_2.x)), vec3<u32>(35121u, 16397u, 0u)), Struct_2(~15808i, arg_3.c.b, -13225i, Struct_1(arg_3.c.d.a, vec2<u32>(global1.x, 4294967295u), vec3<f32>(526f, arg_3.e.x, -256f)), _wgslsmith_f_op_vec2_f32(-arg_3.e)), ~(~vec3<u32>(3432u, 0u, 0u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.c.d.c.zx), _wgslsmith_div_vec2_f32(vec2<f32>(488f, arg_1), vec2<f32>(1831f, arg_1)))), arg_3.c), arg_3.c.e);
    global1 = vec4<u32>(0u, 4294967295u, 131163u, var_0.b);
    var var_1 = Struct_4(abs(firstLeadingBit(-vec2<i32>(var_0.a, 7227i))), Struct_2(arg_3.c.a, 52851u, 1446i, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_0.d.a.x, 504f))), func_3(), var_0.d.c), _wgslsmith_f_op_vec2_f32(var_0.d.a.xz + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(arg_3.e)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-845f, 562f) - var_0.d.a.yy), vec2<bool>(false, false))))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(~min(arg_3.c.c, 0i), -1i), -2147483647i & var_0.a), Struct_3(-16470i, ~arg_2.www, Struct_2(0i, 72537u, 0i & arg_3.c.a, func_1(global0[_wgslsmith_index_u32(23114u & arg_2.x, 13u)], Struct_2(u_input.b, arg_2.x, u_input.b, var_0.d, vec2<f32>(-358f, -2274f))), var_0.d.c.yz), vec3<u32>(min(arg_2.x | arg_0.x, 0u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(var_0.b, 0u, arg_3.d.x, var_0.d.b.x))), ~(0u ^ arg_2.x)), vec2<f32>(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(trunc(arg_1))), var_0.e.x)), -29986i);
    var var_2 = _wgslsmith_clamp_i32(firstTrailingBit(4871i) & arg_3.c.c, _wgslsmith_dot_vec3_i32(-(~reverseBits(vec3<i32>(arg_3.a, -11399i, var_1.e))), firstLeadingBit(vec3<i32>(var_0.a & var_0.c, var_1.c, 9111i))), -1i);
    return arg_3.c;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = select(u_input.a, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(func_2(arg_1.d.b, arg_0.b.d.c.x, u_input.a, arg_1.d).b, 8421u, _wgslsmith_sub_u32(61234u, arg_0.b.d.b.x), 4294967295u), u_input.a, firstLeadingBit(vec4<u32>(arg_1.d.b.x, arg_0.b.d.b.x, 49278u, arg_1.d.d.x))), vec4<bool>(true, false, true, true));
    global2 = array<Struct_4, 17>();
    var_0 = abs(~(u_input.a ^ ~select(u_input.a, u_input.a, vec4<bool>(true, false, false, false))));
    let var_1 = true;
    global0 = array<Struct_3, 13>();
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d.a.x * _wgslsmith_f_op_f32(-arg_0.b.d.a.x)) * 1000f), _wgslsmith_f_op_f32(-arg_1.b.d.a.x), _wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(-373f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f) * 346f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-257f)), _wgslsmith_f_op_f32(min(644f, arg_2.e.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(655f, _wgslsmith_f_op_f32(f32(-1f) * -520f), 405f, _wgslsmith_f_op_f32(2544f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-644f, -899f)) + -1000f))), _wgslsmith_f_op_vec4_f32(func_4(Struct_4((vec2<i32>(u_input.b, -1i) >> (u_input.a.xw % vec2<u32>(32u))) ^ vec2<i32>(2147483647i, u_input.b), Struct_2(-52i, u_input.a.x, _wgslsmith_mod_i32(u_input.b, 1i), func_1(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], Struct_2(u_input.b, 4294967295u, 0i, Struct_1(vec3<f32>(-1100f, -1340f, -1000f), vec2<u32>(u_input.a.x, u_input.a.x), vec3<f32>(361f, 463f, 2300f)), vec2<f32>(689f, -2094f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-526f, 1258f))), -max(-2147483647i, u_input.b), global0[_wgslsmith_index_u32(~(~u_input.a.x), 13u)], _wgslsmith_mod_i32(-11062i, ~(-12228i))), global2[_wgslsmith_index_u32(1u, 17u)], func_2(global1.xzw, _wgslsmith_f_op_f32(f32(-1f) * -685f), u_input.a, Struct_3(u_input.b, countOneBits(vec3<u32>(1u, global1.x, 8344u)), Struct_2(u_input.b, 4294967295u, -54467i, Struct_1(vec3<f32>(559f, 1078f, -180f), global1.yz, vec3<f32>(433f, -1790f, -264f)), vec2<f32>(-608f, -1706f)), ~u_input.a.wxy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1976f, -1625f))))))));
    global1 = vec4<u32>(0u, _wgslsmith_sub_u32(global1.x, ~18560u), u_input.a.x, u_input.a.x);
    global2 = array<Struct_4, 17>();
    var var_1 = Struct_3(~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-22273i, u_input.b, -36392i, 10673i)), ~vec4<i32>(u_input.b, u_input.b, 36627i, -2147483647i)), firstLeadingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(global1.xxw, vec3<u32>(global1.x, 110075u, u_input.a.x)), max(vec3<u32>(0u, global1.x, 1u), global1.xzx))), func_2(global1.wyw, 1138f, u_input.a >> (~min(u_input.a, vec4<u32>(u_input.a.x, global1.x, u_input.a.x, 34947u)) % vec4<u32>(32u)), Struct_3(-_wgslsmith_clamp_i32(2147483647i, -22146i, u_input.b), ~u_input.a.xwx, func_2(global1.zyz, 863f, vec4<u32>(20708u, u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(1u, 13u)]), ~(~u_input.a.zxw), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(232f, -963f))))))), vec3<u32>(1u, ~0u, 4294967295u) ^ (u_input.a.zxw >> (abs(vec3<u32>(u_input.a.x, 3150u, 0u)) % vec3<u32>(32u))), vec2<f32>(var_0.x, -989f));
    let var_2 = global0[_wgslsmith_index_u32(90220u, 13u)];
    var var_3 = countOneBits(~firstLeadingBit(-(vec4<i32>(37196i, 27577i, -2147483647i, u_input.b) >> (u_input.a % vec4<u32>(32u)))));
    let var_4 = global0[_wgslsmith_index_u32(62450u, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(0u, func_2(var_4.d, func_1(global0[_wgslsmith_index_u32(30098u, 13u)], Struct_2(var_3.x, 7286u, i32(-1i) * -2147483647i, func_2(vec3<u32>(0u, var_4.b.x, 25091u), var_0.x, vec4<u32>(u_input.a.x, 0u, 0u, 36981u), global0[_wgslsmith_index_u32(1u, 13u)]).d, var_2.c.d.a.zx)).a.x, ~u_input.a, Struct_3(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, u_input.b)), vec2<i32>(6813i, -1475i)), countOneBits(var_2.b), Struct_2(-8921i, 1u | var_4.d.x, reverseBits(var_4.a), func_2(var_2.b, var_0.x, vec4<u32>(var_1.d.x, 13475u, var_2.b.x, 27974u), Struct_3(u_input.b, global1.zxy, Struct_2(var_4.c.a, u_input.a.x, 6409i, var_1.c.d, var_2.e), var_1.b, var_1.c.e)).d, _wgslsmith_f_op_vec2_f32(floor(var_0.yz))), ~var_4.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1740f, -1000f) * var_0.zy)))).d.b, _wgslsmith_f_op_f32(min(var_4.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.e.x)))))), 41357u);
}

