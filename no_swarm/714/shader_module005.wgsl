struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 23>;

var<private> global2: Struct_5 = Struct_5(Struct_3(-13569i, 1i, 1006f));

var<private> global3: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true));

var<private> global4: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<u32>(1u, 0u, 1u), Struct_1(vec4<f32>(-1806f, -1705f, -427f, 786f), vec2<u32>(74461u, 4294967295u), -1906f, vec4<f32>(617f, -505f, 1054f, 250f), vec4<u32>(18504u, 39656u, 1u, 4294967295u)), Struct_1(vec4<f32>(-261f, -1000f, -1032f, -258f), vec2<u32>(29103u, 4294967295u), -775f, vec4<f32>(232f, -1000f, -576f, -2750f), vec4<u32>(15418u, 6407u, 19229u, 1u)), vec2<u32>(4294967295u, 49450u), vec2<f32>(332f, -162f)), Struct_2(vec3<u32>(4294967295u, 1u, 0u), Struct_1(vec4<f32>(1076f, -2917f, -1000f, -824f), vec2<u32>(1u, 4273u), 761f, vec4<f32>(-747f, -710f, -282f, -968f), vec4<u32>(0u, 66185u, 32747u, 33486u)), Struct_1(vec4<f32>(-290f, 397f, 596f, 1020f), vec2<u32>(1u, 903u), 2064f, vec4<f32>(-509f, -510f, -2223f, 952f), vec4<u32>(1u, 11884u, 4294967295u, 0u)), vec2<u32>(4294967295u, 12837u), vec2<f32>(-1373f, 1000f)), Struct_2(vec3<u32>(57741u, 4294967295u, 4294967295u), Struct_1(vec4<f32>(-1151f, 299f, 1119f, -1280f), vec2<u32>(1u, 4294967295u), 778f, vec4<f32>(1000f, -1107f, -714f, 336f), vec4<u32>(111612u, 27901u, 24280u, 0u)), Struct_1(vec4<f32>(-1000f, -570f, 1494f, -1423f), vec2<u32>(37985u, 4294967295u), -526f, vec4<f32>(732f, -225f, -1974f, 1130f), vec4<u32>(34650u, 34440u, 44259u, 22099u)), vec2<u32>(0u, 4294967295u), vec2<f32>(-2240f, -244f)), Struct_2(vec3<u32>(1u, 0u, 0u), Struct_1(vec4<f32>(-1368f, 343f, -775f, -1155f), vec2<u32>(1u, 38198u), 157f, vec4<f32>(1000f, -962f, -1753f, -918f), vec4<u32>(0u, 4294967295u, 0u, 1u)), Struct_1(vec4<f32>(-521f, -938f, 441f, 1594f), vec2<u32>(1u, 108135u), 570f, vec4<f32>(-1369f, -899f, 1399f, 359f), vec4<u32>(71778u, 0u, 4294967295u, 49928u)), vec2<u32>(4294967295u, 0u), vec2<f32>(-132f, 1736f)), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(vec4<f32>(675f, -680f, 1000f, 1088f), vec2<u32>(13631u, 26515u), 252f, vec4<f32>(1156f, 332f, 488f, -1451f), vec4<u32>(0u, 4294967295u, 48076u, 56467u)), Struct_1(vec4<f32>(-1000f, -1027f, -1927f, -751f), vec2<u32>(54301u, 4294967295u), 1835f, vec4<f32>(303f, -2070f, 418f, 1725f), vec4<u32>(10978u, 13941u, 0u, 49779u)), vec2<u32>(0u, 49281u), vec2<f32>(2931f, -1747f)), Struct_2(vec3<u32>(0u, 108586u, 12550u), Struct_1(vec4<f32>(-310f, 567f, 850f, 325f), vec2<u32>(69922u, 71465u), 413f, vec4<f32>(-512f, 1000f, -800f, 1485f), vec4<u32>(23516u, 1u, 1u, 13005u)), Struct_1(vec4<f32>(952f, -1519f, -578f, 567f), vec2<u32>(53449u, 1u), 368f, vec4<f32>(406f, -253f, -1000f, 1201f), vec4<u32>(94132u, 2167u, 13217u, 0u)), vec2<u32>(4294967295u, 0u), vec2<f32>(-348f, -680f)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 73122u), Struct_1(vec4<f32>(-1746f, -308f, -605f, 114f), vec2<u32>(0u, 0u), 1214f, vec4<f32>(-147f, 127f, -1062f, -1000f), vec4<u32>(32528u, 36773u, 0u, 4294967295u)), Struct_1(vec4<f32>(1254f, 515f, 1168f, 288f), vec2<u32>(1u, 59526u), -112f, vec4<f32>(414f, -1315f, -175f, -430f), vec4<u32>(1u, 30920u, 4294967295u, 22053u)), vec2<u32>(0u, 1u), vec2<f32>(1612f, 668f)), Struct_2(vec3<u32>(0u, 0u, 0u), Struct_1(vec4<f32>(-1043f, 454f, -1114f, 477f), vec2<u32>(0u, 4294967295u), -642f, vec4<f32>(2398f, 1458f, 1168f, -417f), vec4<u32>(44440u, 24780u, 31626u, 0u)), Struct_1(vec4<f32>(954f, 1016f, -388f, -964f), vec2<u32>(36534u, 14574u), -341f, vec4<f32>(1509f, -873f, 1480f, -370f), vec4<u32>(34894u, 4294967295u, 73784u, 18742u)), vec2<u32>(1u, 30564u), vec2<f32>(671f, -164f)), Struct_2(vec3<u32>(4294967295u, 3556u, 1u), Struct_1(vec4<f32>(-692f, -2538f, -116f, 900f), vec2<u32>(28292u, 107910u), -306f, vec4<f32>(-1285f, -1707f, 277f, 114f), vec4<u32>(1u, 0u, 1u, 22297u)), Struct_1(vec4<f32>(-1000f, 1176f, -584f, 1000f), vec2<u32>(9200u, 34988u), -1442f, vec4<f32>(-1181f, 139f, 1341f, 807f), vec4<u32>(1u, 0u, 4476u, 17653u)), vec2<u32>(4294967295u, 30985u), vec2<f32>(-1818f, -927f)), Struct_2(vec3<u32>(4294967295u, 47629u, 1u), Struct_1(vec4<f32>(794f, -268f, 837f, -2529f), vec2<u32>(3949u, 29470u), 810f, vec4<f32>(-798f, 481f, -332f, 1000f), vec4<u32>(84721u, 5577u, 7535u, 0u)), Struct_1(vec4<f32>(-1000f, 777f, -385f, -157f), vec2<u32>(42197u, 52247u), -429f, vec4<f32>(663f, -665f, 881f, 1124f), vec4<u32>(1u, 0u, 18671u, 4294967295u)), vec2<u32>(4294967295u, 0u), vec2<f32>(564f, -798f)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(vec4<f32>(-624f, -395f, 645f, 614f), vec2<u32>(1u, 1u), 300f, vec4<f32>(-1000f, 558f, -196f, 2018f), vec4<u32>(1u, 0u, 1u, 511u)), Struct_1(vec4<f32>(1000f, -299f, -1000f, -2256f), vec2<u32>(31270u, 11355u), 691f, vec4<f32>(829f, -342f, -427f, 220f), vec4<u32>(55095u, 92074u, 102770u, 4294967295u)), vec2<u32>(0u, 0u), vec2<f32>(-1000f, -145f)), Struct_2(vec3<u32>(90659u, 1u, 4294967295u), Struct_1(vec4<f32>(-1370f, 500f, 911f, 167f), vec2<u32>(0u, 24532u), -1681f, vec4<f32>(-104f, -774f, 1379f, -693f), vec4<u32>(0u, 112514u, 44318u, 1u)), Struct_1(vec4<f32>(-1611f, -1882f, -1610f, -1000f), vec2<u32>(37058u, 6908u), 1015f, vec4<f32>(-141f, -1000f, 664f, 936f), vec4<u32>(23683u, 0u, 1u, 1u)), vec2<u32>(96607u, 4294967295u), vec2<f32>(-2079f, 964f)), Struct_2(vec3<u32>(0u, 43171u, 20384u), Struct_1(vec4<f32>(-1000f, -1167f, -1808f, 1000f), vec2<u32>(4294967295u, 0u), 1444f, vec4<f32>(188f, 178f, -1000f, -1281f), vec4<u32>(1u, 10482u, 1u, 1u)), Struct_1(vec4<f32>(-140f, -1289f, -978f, -1184f), vec2<u32>(1u, 1u), 726f, vec4<f32>(2555f, -635f, 1000f, -606f), vec4<u32>(19054u, 39718u, 4152u, 8674u)), vec2<u32>(49047u, 4294967295u), vec2<f32>(-569f, -231f)), Struct_2(vec3<u32>(51164u, 4294967295u, 1u), Struct_1(vec4<f32>(1774f, -155f, 213f, -2040f), vec2<u32>(0u, 15822u), -145f, vec4<f32>(461f, -2760f, 626f, 682f), vec4<u32>(93280u, 16302u, 0u, 70494u)), Struct_1(vec4<f32>(-641f, 348f, 295f, -154f), vec2<u32>(2793u, 0u), -814f, vec4<f32>(-400f, -874f, 1000f, 538f), vec4<u32>(21085u, 54932u, 48362u, 4294967295u)), vec2<u32>(4294967295u, 85180u), vec2<f32>(-1998f, -1972f)), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(vec4<f32>(-1569f, 1000f, 688f, 580f), vec2<u32>(6814u, 0u), 867f, vec4<f32>(100f, -844f, -256f, -515f), vec4<u32>(51263u, 14585u, 0u, 18866u)), Struct_1(vec4<f32>(2633f, -878f, -472f, 346f), vec2<u32>(4294967295u, 1u), -488f, vec4<f32>(191f, -921f, -964f, -1162f), vec4<u32>(71841u, 1u, 2589u, 65498u)), vec2<u32>(0u, 14873u), vec2<f32>(-813f, -1158f)), Struct_2(vec3<u32>(0u, 4294967295u, 43615u), Struct_1(vec4<f32>(-1675f, -240f, -1675f, 977f), vec2<u32>(43515u, 1u), 588f, vec4<f32>(1113f, 1082f, 264f, 580f), vec4<u32>(51339u, 1u, 48951u, 0u)), Struct_1(vec4<f32>(109f, 1734f, -1305f, -1007f), vec2<u32>(4294967295u, 51952u), 483f, vec4<f32>(-327f, 934f, 1448f, -100f), vec4<u32>(1u, 1u, 53038u, 4752u)), vec2<u32>(13827u, 37520u), vec2<f32>(-1000f, -750f)), Struct_2(vec3<u32>(25451u, 1u, 0u), Struct_1(vec4<f32>(-372f, -1784f, 631f, -1002f), vec2<u32>(0u, 38770u), -674f, vec4<f32>(-1203f, 1798f, 423f, -494f), vec4<u32>(5631u, 4294967295u, 4294967295u, 65756u)), Struct_1(vec4<f32>(171f, -638f, -179f, 1575f), vec2<u32>(1u, 16454u), -625f, vec4<f32>(202f, -1807f, 187f, 783f), vec4<u32>(28111u, 4294967295u, 0u, 1u)), vec2<u32>(8799u, 22313u), vec2<f32>(1000f, 280f)), Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(vec4<f32>(920f, -565f, 209f, 1732f), vec2<u32>(90065u, 27600u), -1432f, vec4<f32>(347f, 1117f, -1307f, -367f), vec4<u32>(4294967295u, 81394u, 4294967295u, 42156u)), Struct_1(vec4<f32>(-1086f, -233f, -784f, 1025f), vec2<u32>(1u, 37497u), 187f, vec4<f32>(-682f, 425f, -1878f, 224f), vec4<u32>(19813u, 4294967295u, 35072u, 4294967295u)), vec2<u32>(1u, 58825u), vec2<f32>(-1000f, 897f)), Struct_2(vec3<u32>(79381u, 4014u, 1u), Struct_1(vec4<f32>(137f, 1639f, -1652f, -346f), vec2<u32>(66459u, 4294967295u), 1407f, vec4<f32>(-490f, 1323f, 1010f, 1000f), vec4<u32>(2324u, 30948u, 92615u, 1u)), Struct_1(vec4<f32>(707f, -130f, -942f, -384f), vec2<u32>(88958u, 1u), -1215f, vec4<f32>(-807f, -2023f, -339f, 798f), vec4<u32>(25532u, 0u, 0u, 4294967295u)), vec2<u32>(0u, 52149u), vec2<f32>(-1780f, 1411f)), Struct_2(vec3<u32>(1u, 11395u, 21798u), Struct_1(vec4<f32>(-101f, -1120f, -952f, -714f), vec2<u32>(15088u, 48854u), -794f, vec4<f32>(-1000f, -121f, 276f, 652f), vec4<u32>(1u, 23129u, 1u, 54349u)), Struct_1(vec4<f32>(-984f, 1000f, -835f, -191f), vec2<u32>(4294967295u, 35347u), 300f, vec4<f32>(-549f, -704f, -254f, 372f), vec4<u32>(55134u, 1u, 0u, 4607u)), vec2<u32>(19334u, 1u), vec2<f32>(221f, 676f)), Struct_2(vec3<u32>(26849u, 0u, 0u), Struct_1(vec4<f32>(-378f, 1115f, -2352f, 1079f), vec2<u32>(4294967295u, 3393u), 929f, vec4<f32>(264f, 1503f, -234f, -2642f), vec4<u32>(27095u, 6920u, 66558u, 1u)), Struct_1(vec4<f32>(-1559f, -712f, -1000f, -665f), vec2<u32>(39991u, 4294967295u), 2455f, vec4<f32>(-1477f, 1642f, 315f, -951f), vec4<u32>(0u, 55532u, 32306u, 1u)), vec2<u32>(0u, 4294967295u), vec2<f32>(305f, -241f)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_5, arg_3: i32) -> bool {
    global3 = array<vec4<bool>, 22>();
    global1 = array<Struct_2, 23>();
    global2 = arg_2;
    let var_0 = reverseBits(7707u);
    let var_1 = true;
    return !any(vec4<bool>(true, !var_1, true, !var_1)) && !var_1;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: i32) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a.c, 295f, 621f, global2.a.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.c, 321f, global2.a.c, -519f)), arg_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1121f, -376f, 1775f, 1077f)) - vec4<f32>(1000f, 1000f, global2.a.c, -116f)), vec4<bool>(true, func_3(arg_2, global2.a.a, Struct_5(Struct_3(0i, global2.a.a, global2.a.c)), global2.a.b), true, arg_1))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.c, -454f, -1005f, -1856f) - vec4<f32>(-726f, global2.a.c, global2.a.c, global2.a.c))))), min(abs(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(51312u, u_input.a, u_input.a), vec3<u32>(36844u, u_input.a, u_input.a)), u_input.a)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 0u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(28446u, firstLeadingBit(89642u)), vec2<bool>(true, all(vec3<bool>(false, true, arg_1))))), global2.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-160f, global2.a.c, 858f, global2.a.c) + vec4<f32>(global2.a.c, 836f, 1956f, 1707f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 650f, -1728f, global2.a.c))))))), vec4<u32>(69164u, countOneBits(_wgslsmith_mult_u32(1u, u_input.a)), reverseBits(reverseBits(u_input.a)), 19652u) ^ min(vec4<u32>(~u_input.a, 4294967295u, ~u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a), vec4<u32>(10858u, u_input.a, 0u, u_input.a)), ~vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u))));
    let var_1 = min(1u, var_0.b.x | (1u << ((reverseBits(12637u) ^ ~var_0.e.x) % 32u)));
    var var_2 = !(!(arg_1 | true));
    let var_3 = Struct_4(var_0.e, Struct_2(vec3<u32>(0u, u_input.a, 49728u), Struct_1(var_0.d, ~abs(vec2<u32>(52395u, var_0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-471f - var_0.d.x) + _wgslsmith_f_op_f32(-global2.a.c)), var_0.d, var_0.e), Struct_1(var_0.d, reverseBits(~vec2<u32>(88640u, u_input.a)), -1164f, vec4<f32>(-1137f, var_0.d.x, _wgslsmith_f_op_f32(exp2(var_0.c)), global2.a.c), reverseBits(vec4<u32>(33532u, var_0.b.x, var_0.b.x, var_0.e.x)) | ~vec4<u32>(u_input.a, 24607u, 52702u, 2065u)), ~var_0.b, var_0.d.xy), _wgslsmith_clamp_vec4_i32(~(~(-vec4<i32>(14744i, 1i, -50509i, 2367i))), reverseBits(vec4<i32>(-9555i, 0i, -2147483647i, arg_2) ^ ~vec4<i32>(-2147483647i, global2.a.a, 27058i, arg_0)), min(vec4<i32>(global0.x, countOneBits(u_input.b.x), -1i, -44685i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(18669i, -1i, 2147483647i, 2147483647i), vec4<i32>(-2147483647i, -45747i, global2.a.b, -1i)))), vec2<bool>(~abs(arg_2) < (_wgslsmith_add_i32(5564i, arg_2) << (select(67027u, 79673u, false) % 32u)), u_input.a != 26220u));
    var_2 = arg_1;
    return var_3;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_3 {
    global4 = array<Struct_2, 21>();
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f * -1330f)))));
    global0 = select(abs(u_input.b.yx & (select(vec2<i32>(arg_2.c.x, 1i), u_input.b.zx, arg_2.d) | ~vec2<i32>(arg_2.c.x, -21991i))), min(u_input.b.xy, -vec2<i32>(global2.a.a, 30087i) & vec2<i32>(-86508i, arg_1.x)) ^ _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.yy, _wgslsmith_sub_vec2_i32(arg_2.c.yy, vec2<i32>(u_input.b.x, arg_2.c.x))), -arg_1.zz), vec2<bool>(true, false));
    var_0 = _wgslsmith_f_op_vec3_f32(round(arg_2.b.b.d.yxw));
    global2 = Struct_5(Struct_3(func_2(min(_wgslsmith_mult_i32(arg_2.c.x, arg_1.x), arg_1.x), true, -global0.x << (_wgslsmith_dot_vec2_u32(arg_2.b.c.b, arg_2.a.zy) % 32u)).c.x, 12465i, 447f));
    return Struct_3(global0.x, -global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(340f, arg_2.b.e.x, select(any(vec4<bool>(arg_3.x, false, arg_3.x, false)), arg_3.x, any(arg_2.d))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> Struct_5 {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.c)) + _wgslsmith_f_op_f32(-arg_0.e.x)), vec3<i32>(arg_1.a, -firstTrailingBit(-36200i), _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mod_i32(select(-2147483647i, global2.a.b, true), 39409i))), func_2(12204i, false, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-1i, 1i, 12357i)), u_input.b), (u_input.b & u_input.b) << ((vec3<u32>(arg_0.d.x, 1u, u_input.a) << (arg_0.c.e.yww % vec3<u32>(32u))) % vec3<u32>(32u)))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec3<bool>(false, false, true)))));
    var var_1 = func_2(2147483647i, true, _wgslsmith_sub_i32(firstLeadingBit(2147483647i), countOneBits(1i))).b.b;
    let var_2 = vec4<bool>(any(vec2<bool>(true, false)) && any(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true))), _wgslsmith_f_op_f32(-var_1.d.x) < _wgslsmith_f_op_f32(-312f + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.e.x * 124f)))) == var_0.c, false);
    let var_3 = !(!vec4<bool>(var_2.x, any(global3[_wgslsmith_index_u32(~42241u, 22u)]), all(var_2.yw), var_2.x));
    var var_4 = countOneBits(~min(~69396u, arg_0.b.b.x));
    return Struct_5(func_4(-1811f, vec3<i32>(~38156i, 1i << (u_input.a % 32u), global0.x) ^ vec3<i32>(reverseBits(-1i), global2.a.a, 19379i), Struct_4(vec4<u32>(arg_0.d.x, arg_0.c.e.x, var_1.b.x, 4294967295u) ^ (vec4<u32>(u_input.a, 0u, 1422u, arg_0.d.x) ^ vec4<u32>(arg_0.a.x, 50130u, var_1.e.x, var_1.b.x)), Struct_2(~arg_0.b.e.ywy, func_2(u_input.b.x, var_2.x, var_0.a).b.c, func_2(0i, true, 43819i).b.c, vec2<u32>(9468u, 1u), _wgslsmith_f_op_vec2_f32(var_1.d.wx * vec2<f32>(arg_0.b.c, global2.a.c))), abs(vec4<i32>(2147483647i, 1i, 14125i, -1216i) << (vec4<u32>(u_input.a, 0u, 46899u, arg_0.b.b.x) % vec4<u32>(32u))), vec2<bool>(var_3.x != false, all(global3[_wgslsmith_index_u32(var_1.b.x, 22u)]))), var_2.wzy));
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_5) -> bool {
    global0 = ~u_input.b.yz;
    let var_0 = func_1(Struct_2(reverseBits(countOneBits(func_2(1i, true, arg_2.a.b).b.a)), func_2(~(global0.x << (1u % 32u)), arg_1 == all(vec2<bool>(arg_1, arg_1)), abs(_wgslsmith_div_i32(2147483647i, -2613i))).b.c, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(212f, arg_2.a.c, global2.a.c, -118f) + vec4<f32>(1634f, -652f, -594f, arg_2.a.c)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.c, arg_2.a.c, -506f, arg_2.a.c))), arg_0.xz, _wgslsmith_f_op_f32(-global2.a.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.a.c, arg_2.a.c, 482f, arg_2.a.c))), vec4<f32>(-1530f, arg_2.a.c, 857f, -232f), select(global3[_wgslsmith_index_u32(arg_0.x, 22u)], vec4<bool>(false, arg_1, arg_1, true), arg_1))), ~firstTrailingBit(arg_0)), arg_0.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-159f, _wgslsmith_f_op_f32(-arg_2.a.c)))), Struct_3(global2.a.a, u_input.b.x, _wgslsmith_f_op_f32(floor(-836f))));
    global1 = array<Struct_2, 23>();
    var var_1 = func_2(-669i, true, ~(i32(-1i) * -1i)).b.b;
    global1 = array<Struct_2, 23>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.c, select(_wgslsmith_clamp_vec2_u32(vec2<u32>(10210u, u_input.a), vec2<u32>(0u, 3655u), vec2<u32>(4294967295u, u_input.a)) & vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), vec2<u32>(~u_input.a, u_input.a), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(u_input.a <= u_input.a, true), func_5(vec4<u32>(u_input.a, 34740u, u_input.a, u_input.a), 0u != u_input.a, func_1(Struct_2(vec3<u32>(5539u, u_input.a, 1u), Struct_1(vec4<f32>(-1993f, global2.a.c, global2.a.c, global2.a.c), vec2<u32>(u_input.a, u_input.a), global2.a.c, vec4<f32>(-2036f, -1152f, 493f, 1000f), vec4<u32>(u_input.a, u_input.a, 57400u, u_input.a)), Struct_1(vec4<f32>(global2.a.c, global2.a.c, 2002f, 923f), vec2<u32>(1u, u_input.a), -106f, vec4<f32>(global2.a.c, -2145f, 1045f, -1028f), vec4<u32>(u_input.a, 74835u, 30483u, 41781u)), vec2<u32>(u_input.a, u_input.a), vec2<f32>(global2.a.c, 862f)), global2.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(631f, global2.a.c, -1000f, global2.a.c)))) + vec4<f32>(_wgslsmith_f_op_f32(-global2.a.c), _wgslsmith_f_op_f32(func_2(57467i, true, -1i).b.b.c + func_4(global2.a.c, vec3<i32>(global0.x, u_input.b.x, global2.a.a), Struct_4(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), global1[_wgslsmith_index_u32(4294967295u, 23u)], vec4<i32>(u_input.b.x, 5968i, global2.a.a, global2.a.a), vec2<bool>(true, true)), vec3<bool>(false, false, false)).c), global2.a.c, -1386f)), -1203f);
}

