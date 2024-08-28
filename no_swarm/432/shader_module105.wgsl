struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 30>;

var<private> global2: Struct_4;

var<private> global3: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec2<f32>(-1000f, -1519f), 645f, 95959u, vec3<u32>(65830u, 25531u, 0u), 1u), Struct_1(vec2<f32>(1356f, -1938f), -1000f, 0u, vec3<u32>(8963u, 4294967295u, 9605u), 27755u), 1346f, Struct_1(vec2<f32>(-771f, -1819f), -639f, 38771u, vec3<u32>(1u, 32776u, 64310u), 4294967295u), Struct_1(vec2<f32>(-424f, -619f), 262f, 11292u, vec3<u32>(4294967295u, 342u, 12407u), 128u)), Struct_2(Struct_1(vec2<f32>(729f, -1000f), -577f, 47656u, vec3<u32>(0u, 34491u, 7029u), 1u), Struct_1(vec2<f32>(-843f, -774f), -530f, 19967u, vec3<u32>(4294967295u, 25279u, 8679u), 65116u), -310f, Struct_1(vec2<f32>(-718f, 628f), -1775f, 0u, vec3<u32>(1u, 18836u, 22526u), 29075u), Struct_1(vec2<f32>(256f, 1000f), -1000f, 1u, vec3<u32>(29471u, 1770u, 32105u), 8682u)), Struct_2(Struct_1(vec2<f32>(-612f, 102f), 786f, 1u, vec3<u32>(1u, 42127u, 0u), 32639u), Struct_1(vec2<f32>(-198f, -831f), -1147f, 14670u, vec3<u32>(40661u, 10402u, 4294967295u), 39615u), 384f, Struct_1(vec2<f32>(-168f, 339f), -1459f, 83648u, vec3<u32>(57664u, 5052u, 61375u), 1u), Struct_1(vec2<f32>(-695f, -1245f), -276f, 0u, vec3<u32>(60110u, 1u, 4294967295u), 41741u)), Struct_2(Struct_1(vec2<f32>(-1905f, 948f), 1342f, 4294967295u, vec3<u32>(1u, 1u, 1u), 2320u), Struct_1(vec2<f32>(-1000f, 415f), -876f, 31506u, vec3<u32>(1u, 4294967295u, 4294967295u), 4294967295u), -279f, Struct_1(vec2<f32>(-1138f, -1000f), -530f, 68997u, vec3<u32>(4294967295u, 0u, 11469u), 13653u), Struct_1(vec2<f32>(396f, -1000f), -192f, 28199u, vec3<u32>(4294967295u, 1u, 1u), 0u)), Struct_2(Struct_1(vec2<f32>(679f, 2682f), -543f, 4294967295u, vec3<u32>(4294967295u, 18779u, 9468u), 4294967295u), Struct_1(vec2<f32>(-226f, 1000f), -1346f, 4294967295u, vec3<u32>(4294967295u, 0u, 4978u), 4294967295u), -973f, Struct_1(vec2<f32>(1000f, -127f), -1626f, 64841u, vec3<u32>(24571u, 81986u, 4294967295u), 109839u), Struct_1(vec2<f32>(1454f, 1423f), 292f, 1u, vec3<u32>(47214u, 24163u, 1u), 1u)), Struct_2(Struct_1(vec2<f32>(1338f, 129f), 2056f, 1u, vec3<u32>(49545u, 4294967295u, 0u), 36014u), Struct_1(vec2<f32>(-2019f, 1539f), -820f, 20586u, vec3<u32>(23791u, 54410u, 1u), 96936u), -681f, Struct_1(vec2<f32>(-512f, 1096f), 1019f, 2860u, vec3<u32>(4294967295u, 134155u, 1u), 25536u), Struct_1(vec2<f32>(488f, 613f), 913f, 0u, vec3<u32>(0u, 41566u, 1u), 1u)), Struct_2(Struct_1(vec2<f32>(-367f, -1000f), 1000f, 0u, vec3<u32>(15286u, 19431u, 0u), 5337u), Struct_1(vec2<f32>(454f, -1000f), -1073f, 4294967295u, vec3<u32>(57237u, 4294967295u, 88567u), 24953u), 1015f, Struct_1(vec2<f32>(1622f, 1759f), 1000f, 1u, vec3<u32>(1u, 1u, 62863u), 42879u), Struct_1(vec2<f32>(-1326f, 1150f), -1406f, 33213u, vec3<u32>(1u, 1u, 4294967295u), 4294967295u)), Struct_2(Struct_1(vec2<f32>(-226f, 136f), 468f, 1u, vec3<u32>(79929u, 1u, 27524u), 4294967295u), Struct_1(vec2<f32>(-1000f, -225f), -482f, 0u, vec3<u32>(15622u, 4294967295u, 49459u), 69264u), 913f, Struct_1(vec2<f32>(417f, 2053f), 2579f, 77146u, vec3<u32>(14614u, 0u, 4294967295u), 4294967295u), Struct_1(vec2<f32>(-355f, -1000f), -565f, 0u, vec3<u32>(55913u, 0u, 15343u), 0u)), Struct_2(Struct_1(vec2<f32>(-1324f, 714f), 164f, 1u, vec3<u32>(4294967295u, 0u, 3382u), 4294967295u), Struct_1(vec2<f32>(142f, -542f), -609f, 1u, vec3<u32>(26018u, 46486u, 90544u), 14397u), -726f, Struct_1(vec2<f32>(576f, -139f), -531f, 27367u, vec3<u32>(3212u, 0u, 1u), 0u), Struct_1(vec2<f32>(-968f, 586f), -2061f, 1u, vec3<u32>(1u, 0u, 4294967295u), 6550u)), Struct_2(Struct_1(vec2<f32>(672f, 202f), -942f, 1u, vec3<u32>(12039u, 17245u, 4294967295u), 0u), Struct_1(vec2<f32>(-1000f, -687f), 722f, 0u, vec3<u32>(8631u, 1814u, 31864u), 4294967295u), 976f, Struct_1(vec2<f32>(465f, -444f), 631f, 14682u, vec3<u32>(0u, 7742u, 1u), 0u), Struct_1(vec2<f32>(407f, 1033f), -536f, 1u, vec3<u32>(72336u, 4294967295u, 50592u), 1u)), Struct_2(Struct_1(vec2<f32>(425f, 492f), -529f, 0u, vec3<u32>(4294967295u, 0u, 4294967295u), 54574u), Struct_1(vec2<f32>(-1088f, -592f), -1000f, 0u, vec3<u32>(4294967295u, 4294967295u, 83855u), 1u), -338f, Struct_1(vec2<f32>(181f, -815f), -1452f, 95510u, vec3<u32>(1u, 58516u, 0u), 0u), Struct_1(vec2<f32>(-274f, 866f), 272f, 27199u, vec3<u32>(1u, 75976u, 51263u), 44949u)), Struct_2(Struct_1(vec2<f32>(2355f, 680f), 1411f, 11016u, vec3<u32>(1u, 35683u, 1u), 4294967295u), Struct_1(vec2<f32>(-940f, -949f), 700f, 1u, vec3<u32>(0u, 32503u, 1u), 1u), -716f, Struct_1(vec2<f32>(-459f, -641f), 224f, 78247u, vec3<u32>(29452u, 13524u, 1u), 1u), Struct_1(vec2<f32>(-690f, 1000f), -2498f, 45027u, vec3<u32>(1u, 14259u, 73615u), 11648u)), Struct_2(Struct_1(vec2<f32>(865f, 1098f), 702f, 118189u, vec3<u32>(9055u, 67036u, 11430u), 51553u), Struct_1(vec2<f32>(172f, -487f), -2180f, 4891u, vec3<u32>(0u, 0u, 35928u), 76033u), 858f, Struct_1(vec2<f32>(821f, 635f), 585f, 4294967295u, vec3<u32>(1644u, 420u, 4479u), 22139u), Struct_1(vec2<f32>(698f, 1806f), -218f, 0u, vec3<u32>(72987u, 1u, 0u), 1u)), Struct_2(Struct_1(vec2<f32>(1300f, -578f), 1140f, 4294967295u, vec3<u32>(30967u, 90026u, 7813u), 15325u), Struct_1(vec2<f32>(988f, -296f), -701f, 1u, vec3<u32>(85132u, 4294967295u, 544u), 24444u), -659f, Struct_1(vec2<f32>(-204f, 525f), 528f, 1u, vec3<u32>(6577u, 61483u, 0u), 0u), Struct_1(vec2<f32>(2378f, 1517f), -817f, 4294967295u, vec3<u32>(1u, 98758u, 113767u), 128423u)), Struct_2(Struct_1(vec2<f32>(1949f, 121f), 441f, 81550u, vec3<u32>(0u, 15492u, 42497u), 60815u), Struct_1(vec2<f32>(211f, -1762f), -662f, 48003u, vec3<u32>(36168u, 52437u, 43923u), 48097u), 720f, Struct_1(vec2<f32>(169f, 821f), -1306f, 4294967295u, vec3<u32>(1u, 4294967295u, 1u), 4294967295u), Struct_1(vec2<f32>(166f, 278f), -1062f, 58465u, vec3<u32>(37645u, 0u, 73091u), 0u)), Struct_2(Struct_1(vec2<f32>(-1287f, 1170f), -751f, 26026u, vec3<u32>(36996u, 0u, 10999u), 4294967295u), Struct_1(vec2<f32>(-1592f, -1399f), 551f, 77098u, vec3<u32>(0u, 43577u, 47137u), 1u), 1725f, Struct_1(vec2<f32>(-765f, -388f), 872f, 4294967295u, vec3<u32>(8184u, 39362u, 1u), 1u), Struct_1(vec2<f32>(157f, -1357f), 662f, 4294967295u, vec3<u32>(6984u, 25849u, 29801u), 80654u)), Struct_2(Struct_1(vec2<f32>(-1301f, -781f), 640f, 0u, vec3<u32>(4294967295u, 17002u, 50653u), 26315u), Struct_1(vec2<f32>(-395f, 258f), 1262f, 4294967295u, vec3<u32>(1u, 18712u, 16745u), 111827u), 1641f, Struct_1(vec2<f32>(-981f, 1756f), -243f, 0u, vec3<u32>(4294967295u, 25185u, 1u), 18204u), Struct_1(vec2<f32>(338f, -1105f), 326f, 55893u, vec3<u32>(0u, 0u, 135361u), 65218u)), Struct_2(Struct_1(vec2<f32>(229f, 961f), 656f, 11139u, vec3<u32>(38747u, 0u, 0u), 1452u), Struct_1(vec2<f32>(165f, 1211f), 783f, 69208u, vec3<u32>(4294967295u, 0u, 26193u), 4294967295u), -421f, Struct_1(vec2<f32>(912f, -378f), -1023f, 11568u, vec3<u32>(0u, 16456u, 31778u), 1u), Struct_1(vec2<f32>(1447f, -1193f), 1843f, 1u, vec3<u32>(4294967295u, 1u, 59712u), 1u)), Struct_2(Struct_1(vec2<f32>(1000f, -1628f), 739f, 4294967295u, vec3<u32>(0u, 39793u, 54597u), 42396u), Struct_1(vec2<f32>(958f, -1167f), -522f, 0u, vec3<u32>(23011u, 4294967295u, 1u), 1u), -667f, Struct_1(vec2<f32>(-1558f, 809f), 768f, 35986u, vec3<u32>(1u, 22314u, 70486u), 4294967295u), Struct_1(vec2<f32>(-464f, -2509f), 559f, 80726u, vec3<u32>(3490u, 31803u, 58718u), 0u)), Struct_2(Struct_1(vec2<f32>(-2189f, -911f), 513f, 1u, vec3<u32>(57465u, 51695u, 39897u), 38469u), Struct_1(vec2<f32>(1302f, 1000f), -187f, 4294967295u, vec3<u32>(0u, 53220u, 46988u), 4294967295u), 1000f, Struct_1(vec2<f32>(-1000f, 1934f), 1183f, 38870u, vec3<u32>(121371u, 44951u, 110884u), 4294967295u), Struct_1(vec2<f32>(-1550f, -656f), 830f, 1u, vec3<u32>(45856u, 4294967295u, 1u), 33450u)), Struct_2(Struct_1(vec2<f32>(551f, -1000f), 323f, 1u, vec3<u32>(0u, 0u, 30932u), 3243u), Struct_1(vec2<f32>(270f, 186f), -591f, 10175u, vec3<u32>(26550u, 24179u, 15804u), 1u), -1152f, Struct_1(vec2<f32>(1111f, 1487f), 1675f, 4294967295u, vec3<u32>(0u, 1u, 16516u), 1u), Struct_1(vec2<f32>(463f, 498f), 473f, 10954u, vec3<u32>(1u, 2356u, 16597u), 1u)), Struct_2(Struct_1(vec2<f32>(192f, 542f), 989f, 65738u, vec3<u32>(13448u, 1u, 3571u), 0u), Struct_1(vec2<f32>(1000f, 730f), -1117f, 0u, vec3<u32>(16453u, 39359u, 26599u), 50415u), -257f, Struct_1(vec2<f32>(-1074f, 2066f), -1178f, 0u, vec3<u32>(1u, 4294967295u, 89961u), 0u), Struct_1(vec2<f32>(-1356f, -1837f), -214f, 4294967295u, vec3<u32>(36886u, 13724u, 37303u), 4294967295u)), Struct_2(Struct_1(vec2<f32>(-495f, 1655f), -926f, 113482u, vec3<u32>(0u, 0u, 6462u), 1u), Struct_1(vec2<f32>(1018f, 1115f), 623f, 0u, vec3<u32>(21654u, 118u, 0u), 25982u), -1225f, Struct_1(vec2<f32>(-171f, -1047f), 936f, 4294967295u, vec3<u32>(0u, 18672u, 1u), 1u), Struct_1(vec2<f32>(199f, -1837f), 1000f, 1566u, vec3<u32>(1u, 53410u, 40114u), 1432u)));

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(global2.b));
    global1 = array<u32, 30>();
    global4 = global2.e.x;
    let var_1 = ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 13451u, global2.c), firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(73485u, 30u)], global2.c))) ^ (vec3<u32>(global1[_wgslsmith_index_u32(global2.c, 30u)], global2.c, 7055u) ^ ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.c, 30u)], 30u)], 0u, 0u)), ~max(_wgslsmith_add_vec3_u32(vec3<u32>(global2.c, 7913u, global2.c), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(18705u, 30u)], global1[_wgslsmith_index_u32(2597u, 30u)])), ~vec3<u32>(92889u, global1[_wgslsmith_index_u32(global2.c, 30u)], global1[_wgslsmith_index_u32(19794u, 30u)])));
    global2 = Struct_4(-select(reverseBits(global2.a) | reverseBits(global2.e), vec4<i32>(-1469i, 0i, u_input.a, global2.e.x >> (12591u % 32u)), ~global2.e.x >= ~274i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.d))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - var_0.x), -1687f))), global2.d, 1000f, -1255f), max(~_wgslsmith_clamp_u32(var_1.x, ~0u, var_1.x), ~_wgslsmith_clamp_u32(~var_1.x, 4294967295u, var_1.x)), _wgslsmith_div_f32(global2.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(select(-632f, global2.b.x, false))), _wgslsmith_f_op_f32(f32(-1f) * -521f))), global2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(min(_wgslsmith_add_u32(23384u, 1u), 21728u), global2.c), global2.a.x);
}

