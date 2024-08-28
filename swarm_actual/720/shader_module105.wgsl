// {"0:0":[155,12,6,121,131,69,188,192,3,105,220,76,189,35,245,247,249,180,223,82,130,43,15,107,22,54,205,19,147,44,44,15]}
// Seed: 11525028924459927838

struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(122653u, true, Struct_1(vec2<f32>(-1321f, -475f), vec3<u32>(72762u, 51086u, 4294967295u), vec3<bool>(true, false, true), 585f), vec3<i32>(8995i, -5972i, -1i), Struct_1(vec2<f32>(1442f, -197f), vec3<u32>(13979u, 60167u, 1u), vec3<bool>(true, false, true), -442f)), Struct_2(1u, true, Struct_1(vec2<f32>(660f, -272f), vec3<u32>(74942u, 24959u, 63365u), vec3<bool>(true, true, true), -487f), vec3<i32>(19832i, 261i, 11361i), Struct_1(vec2<f32>(-380f, 403f), vec3<u32>(4294967295u, 76498u, 1u), vec3<bool>(false, true, true), 1000f)), Struct_2(1u, false, Struct_1(vec2<f32>(777f, -496f), vec3<u32>(64885u, 30657u, 1u), vec3<bool>(false, true, false), -1217f), vec3<i32>(1923i, 2147483647i, 1i), Struct_1(vec2<f32>(-1894f, 898f), vec3<u32>(40126u, 0u, 1526u), vec3<bool>(false, false, false), -2143f)), Struct_2(8630u, false, Struct_1(vec2<f32>(-454f, 753f), vec3<u32>(1u, 33736u, 4294967295u), vec3<bool>(true, false, true), 801f), vec3<i32>(0i, 1i, -4940i), Struct_1(vec2<f32>(-436f, 1690f), vec3<u32>(4294967295u, 1u, 79232u), vec3<bool>(false, false, true), 1706f)), Struct_2(40622u, false, Struct_1(vec2<f32>(-2994f, 1000f), vec3<u32>(100990u, 0u, 26513u), vec3<bool>(false, false, true), -1389f), vec3<i32>(-14851i, 1i, i32(-2147483648)), Struct_1(vec2<f32>(1984f, -166f), vec3<u32>(25777u, 40923u, 25749u), vec3<bool>(false, true, true), -463f)), Struct_2(1u, true, Struct_1(vec2<f32>(1172f, 1669f), vec3<u32>(12795u, 30000u, 52483u), vec3<bool>(true, true, true), -1000f), vec3<i32>(-42318i, 1i, 0i), Struct_1(vec2<f32>(-415f, -921f), vec3<u32>(11299u, 1611u, 4294967295u), vec3<bool>(true, true, true), -508f)), Struct_2(0u, true, Struct_1(vec2<f32>(-779f, -102f), vec3<u32>(1u, 4294967295u, 57155u), vec3<bool>(true, false, true), -1385f), vec3<i32>(-42063i, 0i, 35512i), Struct_1(vec2<f32>(360f, -1000f), vec3<u32>(19488u, 1u, 1u), vec3<bool>(false, true, false), 1260f)), Struct_2(67967u, false, Struct_1(vec2<f32>(-939f, -1185f), vec3<u32>(65993u, 4294967295u, 8209u), vec3<bool>(false, true, true), 402f), vec3<i32>(0i, 2147483647i, 40030i), Struct_1(vec2<f32>(446f, 630f), vec3<u32>(0u, 30550u, 32361u), vec3<bool>(true, true, false), 925f)), Struct_2(4294967295u, false, Struct_1(vec2<f32>(-124f, -611f), vec3<u32>(1u, 23153u, 61716u), vec3<bool>(false, false, true), 215f), vec3<i32>(i32(-2147483648), -38023i, -3214i), Struct_1(vec2<f32>(-392f, -442f), vec3<u32>(0u, 19428u, 4294967295u), vec3<bool>(true, false, true), -850f)), Struct_2(57736u, false, Struct_1(vec2<f32>(-2438f, 370f), vec3<u32>(0u, 40295u, 4294967295u), vec3<bool>(false, true, false), 643f), vec3<i32>(2147483647i, 39063i, 6971i), Struct_1(vec2<f32>(1599f, -1000f), vec3<u32>(4294967295u, 1u, 7970u), vec3<bool>(true, true, true), 2139f)), Struct_2(42289u, false, Struct_1(vec2<f32>(-369f, -1513f), vec3<u32>(8614u, 0u, 25300u), vec3<bool>(false, false, true), -990f), vec3<i32>(0i, 2147483647i, -28093i), Struct_1(vec2<f32>(-422f, 730f), vec3<u32>(68753u, 36464u, 10921u), vec3<bool>(true, false, false), 987f)), Struct_2(0u, true, Struct_1(vec2<f32>(1000f, 120f), vec3<u32>(4294967295u, 4886u, 14398u), vec3<bool>(false, true, false), -762f), vec3<i32>(-1i, 2147483647i, 39331i), Struct_1(vec2<f32>(-141f, -1873f), vec3<u32>(4294967295u, 21821u, 4294967295u), vec3<bool>(true, false, true), 809f)), Struct_2(4294967295u, true, Struct_1(vec2<f32>(2241f, -320f), vec3<u32>(0u, 59293u, 6631u), vec3<bool>(false, false, true), -732f), vec3<i32>(6546i, i32(-2147483648), 48i), Struct_1(vec2<f32>(-865f, 2113f), vec3<u32>(4294967295u, 23490u, 1u), vec3<bool>(false, false, true), 223f)), Struct_2(53330u, true, Struct_1(vec2<f32>(-730f, 1894f), vec3<u32>(99887u, 0u, 29055u), vec3<bool>(false, false, false), -1000f), vec3<i32>(i32(-2147483648), -16738i, -1i), Struct_1(vec2<f32>(-866f, 727f), vec3<u32>(66652u, 0u, 3195u), vec3<bool>(true, true, true), 893f)), Struct_2(14657u, false, Struct_1(vec2<f32>(2186f, 1000f), vec3<u32>(32311u, 4294967295u, 45079u), vec3<bool>(true, true, true), -471f), vec3<i32>(-1i, 1i, 0i), Struct_1(vec2<f32>(334f, 1578f), vec3<u32>(209u, 1u, 4294967295u), vec3<bool>(true, false, false), 923f)), Struct_2(4294967295u, true, Struct_1(vec2<f32>(882f, 301f), vec3<u32>(19145u, 4294967295u, 1u), vec3<bool>(true, false, false), 1523f), vec3<i32>(0i, 1i, 5535i), Struct_1(vec2<f32>(1416f, -1698f), vec3<u32>(4294967295u, 8783u, 50296u), vec3<bool>(true, false, false), 1929f)), Struct_2(10040u, true, Struct_1(vec2<f32>(-327f, 1966f), vec3<u32>(3591u, 36137u, 1u), vec3<bool>(true, false, false), 913f), vec3<i32>(1i, 23335i, -16937i), Struct_1(vec2<f32>(935f, 1068f), vec3<u32>(1u, 4294967295u, 22798u), vec3<bool>(true, false, false), -844f)), Struct_2(70560u, true, Struct_1(vec2<f32>(-1000f, -139f), vec3<u32>(49446u, 1u, 0u), vec3<bool>(true, true, true), -140f), vec3<i32>(-27059i, i32(-2147483648), i32(-2147483648)), Struct_1(vec2<f32>(-804f, -607f), vec3<u32>(0u, 1u, 21257u), vec3<bool>(false, false, false), 1538f)), Struct_2(8176u, false, Struct_1(vec2<f32>(-645f, 702f), vec3<u32>(4294967295u, 63847u, 4294967295u), vec3<bool>(false, true, false), 769f), vec3<i32>(1i, -3218i, i32(-2147483648)), Struct_1(vec2<f32>(-796f, -1427f), vec3<u32>(31515u, 59941u, 0u), vec3<bool>(false, true, true), 1000f)), Struct_2(29533u, true, Struct_1(vec2<f32>(225f, 150f), vec3<u32>(1u, 23862u, 51866u), vec3<bool>(true, false, false), -652f), vec3<i32>(i32(-2147483648), 2147483647i, -10219i), Struct_1(vec2<f32>(-858f, 1000f), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<bool>(false, true, false), 1727f)), Struct_2(10291u, true, Struct_1(vec2<f32>(122f, 2636f), vec3<u32>(10742u, 65090u, 61968u), vec3<bool>(true, true, true), -511f), vec3<i32>(0i, -621i, i32(-2147483648)), Struct_1(vec2<f32>(-334f, -463f), vec3<u32>(4294967295u, 0u, 39211u), vec3<bool>(true, true, false), -458f)), Struct_2(0u, false, Struct_1(vec2<f32>(-1120f, -489f), vec3<u32>(75839u, 38676u, 0u), vec3<bool>(true, true, true), -578f), vec3<i32>(2147483647i, -34247i, -3676i), Struct_1(vec2<f32>(-1104f, 1000f), vec3<u32>(46050u, 1u, 1u), vec3<bool>(false, false, true), -657f)), Struct_2(1u, true, Struct_1(vec2<f32>(1722f, 768f), vec3<u32>(68181u, 16494u, 15558u), vec3<bool>(false, false, true), -511f), vec3<i32>(-6085i, -1i, 1i), Struct_1(vec2<f32>(-873f, 2972f), vec3<u32>(66292u, 4294967295u, 4294967295u), vec3<bool>(false, false, false), -1000f)), Struct_2(35473u, false, Struct_1(vec2<f32>(-641f, -1103f), vec3<u32>(4294967295u, 27924u, 84506u), vec3<bool>(false, true, false), 1476f), vec3<i32>(33652i, 10998i, 70480i), Struct_1(vec2<f32>(298f, -1227f), vec3<u32>(32306u, 4294967295u, 4294967295u), vec3<bool>(true, true, false), 745f)), Struct_2(40853u, true, Struct_1(vec2<f32>(-1000f, 364f), vec3<u32>(0u, 4294967295u, 1u), vec3<bool>(false, false, true), -638f), vec3<i32>(55030i, -1i, i32(-2147483648)), Struct_1(vec2<f32>(795f, -532f), vec3<u32>(1u, 75916u, 61902u), vec3<bool>(false, true, true), -203f)), Struct_2(36986u, false, Struct_1(vec2<f32>(-112f, -1412f), vec3<u32>(4294967295u, 35751u, 4294967295u), vec3<bool>(false, false, true), -129f), vec3<i32>(1i, -2934i, 0i), Struct_1(vec2<f32>(-196f, -403f), vec3<u32>(10591u, 74353u, 12272u), vec3<bool>(true, false, false), -1154f)), Struct_2(0u, true, Struct_1(vec2<f32>(-722f, -370f), vec3<u32>(38752u, 0u, 74206u), vec3<bool>(true, false, false), 873f), vec3<i32>(-28800i, 6433i, i32(-2147483648)), Struct_1(vec2<f32>(2157f, 776f), vec3<u32>(47388u, 1u, 4294967295u), vec3<bool>(true, true, false), 515f)), Struct_2(39649u, false, Struct_1(vec2<f32>(930f, 1043f), vec3<u32>(1u, 1u, 0u), vec3<bool>(false, false, false), 1195f), vec3<i32>(0i, 1i, 1i), Struct_1(vec2<f32>(-1688f, -874f), vec3<u32>(21837u, 73506u, 0u), vec3<bool>(true, false, true), 425f)), Struct_2(1u, false, Struct_1(vec2<f32>(-1033f, -431f), vec3<u32>(4294967295u, 67637u, 0u), vec3<bool>(false, false, true), -110f), vec3<i32>(32376i, -31310i, -3954i), Struct_1(vec2<f32>(-920f, -221f), vec3<u32>(1u, 30053u, 78318u), vec3<bool>(false, false, true), 1187f)), Struct_2(4294967295u, false, Struct_1(vec2<f32>(850f, -243f), vec3<u32>(57908u, 66201u, 4294967295u), vec3<bool>(true, false, true), 1511f), vec3<i32>(72861i, -1i, 2147483647i), Struct_1(vec2<f32>(-2087f, 875f), vec3<u32>(1u, 0u, 4294967295u), vec3<bool>(false, false, false), -994f)), Struct_2(0u, true, Struct_1(vec2<f32>(1000f, 788f), vec3<u32>(0u, 0u, 104107u), vec3<bool>(true, true, false), -746f), vec3<i32>(-1i, -1i, -1i), Struct_1(vec2<f32>(-1387f, 1000f), vec3<u32>(35790u, 7108u, 0u), vec3<bool>(false, false, false), 1309f)), Struct_2(0u, false, Struct_1(vec2<f32>(-891f, -1053f), vec3<u32>(23608u, 18271u, 6374u), vec3<bool>(true, false, false), 1366f), vec3<i32>(-24943i, 0i, -1i), Struct_1(vec2<f32>(516f, 346f), vec3<u32>(0u, 26315u, 1u), vec3<bool>(false, true, false), 688f)));

var<private> global2: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn func_3() -> i32 {
    global2 = array<vec3<bool>, 4>();
    var var_0 = vec3<i32>(min(43704i & 0i, 1i) >> 4294967295u, (-(-28929i) * 0i) >> ~firstLeadingBit(u_input.b.x), i32(-2147483648)) % abs(vec3<i32>(firstLeadingBit(49068i / i32(-2147483648)), -13943i - (11978i >> 109281u), dot(abs(vec2<i32>(-3961i, 10814i)), ~vec2<i32>(730i, -15346i))));
    var var_1 = Struct_1(vec2<f32>(sign(-(-1492f) + -543f), -191f), ~u_input.b.xyy, global2[4294967295u], ((-(-560f) + -1378f) * 1603f) - (-768f * round(-734f)));
    var var_2 = Struct_1(var_1.a, vec3<u32>(42448u, 67708u, var_1.b.x), select(var_1.c, select(var_1.c, global2[~42555u], vec3<bool>(any(var_1.c.zy), select(false, var_1.c.x, var_1.c.x), var_1.c.x)), !select(var_1.c, select(vec3<bool>(true, false, true), vec3<bool>(true, var_1.c.x, false), var_1.c.x), 4294967295u >= var_1.b.x)), var_1.a.x);
    let var_3 = select(firstTrailingBit(vec3<i32>(var_0.x >> var_1.b.x, dot(vec4<i32>(0i, var_0.x, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, var_0.x)), 15487i)) + -(firstLeadingBit(vec3<i32>(var_0.x, var_0.x, -15417i)) / min(vec3<i32>(var_0.x, -22547i, 1i), vec3<i32>(-14367i, 0i, var_0.x))), -(-vec3<i32>(i32(-2147483648), 1i, var_0.x)), -(-(-111f)) <= (-(-var_2.a.x) - -(-202f)));
    return var_0.x;
}

fn func_2() -> Struct_1 {
    global2 = array<vec3<bool>, 4>();
    var var_0 = clamp(-vec3<i32>(~0i, func_3(), ~2147483647i), reverseBits(vec3<i32>(max(-1i, -40243i), abs(-1i), ~(-9864i))), max(-(vec3<i32>(-33813i, 1i, 0i) >> u_input.b.wyx), ~vec3<i32>(-14687i, i32(-2147483648), 16264i))) / vec3<i32>(-dot(vec4<i32>(-21052i, -13094i, 1278i, i32(-2147483648)) % vec4<i32>(-36086i, 2147483647i, i32(-2147483648), 28834i), ~vec4<i32>(16912i, 1i, 0i, 1i)), countOneBits(~(-41173i)), (max(1i, 0i) << dot(u_input.b.xz, vec2<u32>(u_input.a, 71714u))) - 0i);
    var_0 = select(vec3<i32>(~(-15542i & (var_0.x | var_0.x)), 2156i, -2147483647i), min(abs(min(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, 10846i)) + ~vec3<i32>(var_0.x, var_0.x, -1i)), vec3<i32>(~2147483647i, var_0.x - firstLeadingBit(i32(-2147483648)), var_0.x)), select(!(!vec3<bool>(true, false, true)), select(global2[u_input.b.x], vec3<bool>(4294967295u != u_input.a, all(vec4<bool>(true, true, false, true)), true), select(select(global2[48455u], vec3<bool>(false, true, true), false), select(global2[u_input.a], vec3<bool>(true, true, true), false), !global2[13081u])), any(vec2<bool>(!true, !false))));
    let var_1 = Struct_1(-(-(-(-vec2<f32>(2078f, -1093f)))), u_input.b.xwy, vec3<bool>(false, !false, !(any(vec2<bool>(true, true)) & (-1000f != -1060f))), -(-1063f));
    let var_2 = global1[~(~26286u)];
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> f32 {
    var var_0 = ~(-(firstTrailingBit(6640i) ^ arg_3.d.x)) >> ~(~(~firstTrailingBit(0u)));
    var var_1 = ~arg_1.b.x;
    let var_2 = Struct_2(~(~(13104u >> 19331u)) & arg_1.b.x, !select(arg_3.b, all(arg_3.e.c.zy) != true, any(!arg_1.c.xy)), Struct_1(arg_1.a, firstLeadingBit(arg_3.c.b), arg_1.c, -669f), vec3<i32>(-11512i, arg_3.d.x, (arg_3.d.x / arg_3.d.x) / arg_3.d.x), func_2());
    var var_3 = ~(~u_input.b ^ u_input.b);
    var var_4 = var_2;
    return abs(-(-(trunc(arg_0) * -(-113f))));
}

fn func_1() -> bool {
    var var_0 = Struct_1(vec2<f32>(sign(1000f), -179f), vec3<u32>(u_input.a, ~77474u, max(reverseBits(38621u & 16820u), 23716u)), !(!select(!vec3<bool>(true, true, true), global2[4294967295u * 1u], global2[~u_input.a])), 818f);
    var var_1 = vec3<f32>(((-(-146f) - abs(-316f)) * var_0.a.x) - -func_4(-973f + var_0.d, func_2(), ceil(-794f), Struct_2(1u, true, Struct_1(vec2<f32>(1397f, -805f), vec3<u32>(1u, 50559u, var_0.b.x), vec3<bool>(true, var_0.c.x, var_0.c.x), 1000f), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), Struct_1(var_0.a, vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(false, false, var_0.c.x), var_0.a.x))), var_0.d, 2393f / var_0.a.x);
    let var_2 = 0u != (~abs(firstTrailingBit(99009u)) | 102720u);
    global0 = -60434i + -26518i;
    let var_3 = ~(firstTrailingBit(vec2<i32>(1i | i32(-2147483648), -(-27417i))) - (vec2<i32>(0i * 6228i, ~1i) + firstTrailingBit(vec2<i32>(-48204i, -1i))));
    return any(vec4<bool>(!(!var_0.c.x), !all(var_0.c), false, any(var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[~1u];
    let var_1 = select(select(!vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>((u_input.b.x - u_input.a) > u_input.a, any(!vec4<bool>(true, var_0.x, var_0.x, true)), var_0.x, !false), vec4<bool>(var_0.x, var_0.x, !all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), var_0.x && var_0.x)), select(select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(false, false, true, var_0.x), !true), !vec4<bool>(false, var_0.x, var_0.x, true), var_0.x | true), select(vec4<bool>(false, var_0.x, all(vec3<bool>(true, false, var_0.x)), var_0.x), vec4<bool>(263f <= 401f, any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true && true, func_1()), !(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))), !vec4<bool>(true, var_0.x, !true, true)), all(!func_2().c.yz));
    global1 = array<Struct_2, 32>();
    var var_2 = func_2();
    var var_3 = -((var_2.a.x + min(1269f, -(-381f))) / var_2.a.x);
    let var_4 = select(!vec2<bool>(any(select(var_2.c, var_2.c, true)), !(1250f != -150f)), select(var_2.c.zz, vec2<bool>(firstLeadingBit(i32(-2147483648)) >= (33093i >> 0u), any(var_2.c)), (~(-1i) << (12189u - 1u)) > 45274i), var_0.yy);
    let var_5 = Struct_2(u_input.b.x, false, func_2(), reverseBits(-vec3<i32>(1i | 2147483647i, -(-86i), min(2147483647i, i32(-2147483648)))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(-4243i << u_input.a, var_5.e.b.x, vec2<f32>(var_5.e.a.x, var_5.e.d), u_input.b, firstTrailingBit(-var_5.d.x));
}

