struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -388f;

var<private> global1: f32 = -209f;

var<private> global2: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(Struct_2(1084f, Struct_1(2245f, vec3<f32>(-700f, 1172f, 1358f)), vec3<bool>(false, true, false), Struct_1(-1707f, vec3<f32>(-511f, 347f, 987f)), 405f), Struct_4(vec2<i32>(-13349i, 0i)), Struct_1(190f, vec3<f32>(1054f, 888f, 932f)), vec3<f32>(-975f, -1000f, -537f)), Struct_5(Struct_2(804f, Struct_1(-1729f, vec3<f32>(-1655f, 1100f, 155f)), vec3<bool>(true, true, false), Struct_1(635f, vec3<f32>(-927f, -2378f, 2677f)), 1000f), Struct_4(vec2<i32>(-1i, -1i)), Struct_1(131f, vec3<f32>(1221f, -596f, -262f)), vec3<f32>(770f, -1000f, -528f)), Struct_5(Struct_2(-484f, Struct_1(979f, vec3<f32>(-229f, 1419f, 1000f)), vec3<bool>(true, true, true), Struct_1(1172f, vec3<f32>(1507f, 433f, 295f)), 153f), Struct_4(vec2<i32>(47138i, 2059i)), Struct_1(736f, vec3<f32>(-1000f, -400f, 803f)), vec3<f32>(-202f, -289f, -436f)), Struct_5(Struct_2(-205f, Struct_1(-1594f, vec3<f32>(-523f, 1433f, -2059f)), vec3<bool>(true, false, false), Struct_1(-244f, vec3<f32>(-1867f, -574f, 1170f)), -1781f), Struct_4(vec2<i32>(1i, 1i)), Struct_1(-296f, vec3<f32>(1076f, 1481f, 1358f)), vec3<f32>(422f, -1150f, 430f)), Struct_5(Struct_2(414f, Struct_1(-558f, vec3<f32>(-179f, -974f, 1320f)), vec3<bool>(false, false, true), Struct_1(-619f, vec3<f32>(272f, -526f, 686f)), -960f), Struct_4(vec2<i32>(i32(-2147483648), -6375i)), Struct_1(-332f, vec3<f32>(-1045f, -1363f, -1069f)), vec3<f32>(987f, 1168f, -438f)), Struct_5(Struct_2(-207f, Struct_1(312f, vec3<f32>(-388f, 751f, 608f)), vec3<bool>(true, false, false), Struct_1(-285f, vec3<f32>(-335f, -423f, -1561f)), -507f), Struct_4(vec2<i32>(i32(-2147483648), -15335i)), Struct_1(767f, vec3<f32>(2063f, -1008f, 885f)), vec3<f32>(1242f, -1067f, 782f)), Struct_5(Struct_2(-1755f, Struct_1(432f, vec3<f32>(-526f, 763f, -1549f)), vec3<bool>(false, true, true), Struct_1(-1000f, vec3<f32>(-1165f, -419f, 1346f)), -718f), Struct_4(vec2<i32>(34269i, -60924i)), Struct_1(952f, vec3<f32>(-1000f, -249f, 2514f)), vec3<f32>(1086f, 1173f, -365f)), Struct_5(Struct_2(-466f, Struct_1(657f, vec3<f32>(436f, -1822f, 507f)), vec3<bool>(false, true, true), Struct_1(-2213f, vec3<f32>(-874f, -1091f, -248f)), -441f), Struct_4(vec2<i32>(-17646i, 1i)), Struct_1(-392f, vec3<f32>(1000f, 1345f, 220f)), vec3<f32>(169f, -360f, 481f)), Struct_5(Struct_2(-646f, Struct_1(1000f, vec3<f32>(996f, 2532f, 905f)), vec3<bool>(false, false, false), Struct_1(1796f, vec3<f32>(-377f, -1000f, 1042f)), 1000f), Struct_4(vec2<i32>(-31352i, 1i)), Struct_1(-813f, vec3<f32>(-346f, -223f, -458f)), vec3<f32>(-1455f, -409f, -943f)), Struct_5(Struct_2(-1334f, Struct_1(675f, vec3<f32>(-154f, 1017f, -451f)), vec3<bool>(true, false, false), Struct_1(1000f, vec3<f32>(-1047f, 1066f, -1059f)), 1000f), Struct_4(vec2<i32>(-1121i, -11059i)), Struct_1(-240f, vec3<f32>(832f, -575f, -105f)), vec3<f32>(-875f, -377f, 762f)), Struct_5(Struct_2(-1599f, Struct_1(1005f, vec3<f32>(-744f, 802f, 910f)), vec3<bool>(true, true, false), Struct_1(123f, vec3<f32>(256f, -600f, -3387f)), 1354f), Struct_4(vec2<i32>(-1i, 0i)), Struct_1(-819f, vec3<f32>(-605f, -573f, -993f)), vec3<f32>(-1066f, 1409f, -798f)), Struct_5(Struct_2(1000f, Struct_1(2530f, vec3<f32>(-618f, -674f, 861f)), vec3<bool>(true, false, true), Struct_1(-697f, vec3<f32>(-972f, -2503f, 977f)), 1664f), Struct_4(vec2<i32>(-22024i, 2147483647i)), Struct_1(-2229f, vec3<f32>(1778f, 1000f, 898f)), vec3<f32>(277f, 489f, 1000f)), Struct_5(Struct_2(-1184f, Struct_1(658f, vec3<f32>(1152f, -1472f, -329f)), vec3<bool>(true, true, false), Struct_1(625f, vec3<f32>(-1348f, 1000f, -292f)), -1589f), Struct_4(vec2<i32>(2147483647i, 1i)), Struct_1(-104f, vec3<f32>(904f, 489f, -189f)), vec3<f32>(1212f, -1340f, 758f)), Struct_5(Struct_2(257f, Struct_1(-1169f, vec3<f32>(-343f, -373f, 1186f)), vec3<bool>(false, true, false), Struct_1(1363f, vec3<f32>(-700f, -1756f, 645f)), -189f), Struct_4(vec2<i32>(0i, -13842i)), Struct_1(-1097f, vec3<f32>(243f, -513f, 456f)), vec3<f32>(-1119f, -215f, -362f)), Struct_5(Struct_2(1000f, Struct_1(432f, vec3<f32>(692f, -434f, 1149f)), vec3<bool>(false, false, false), Struct_1(212f, vec3<f32>(534f, 190f, -229f)), -1109f), Struct_4(vec2<i32>(475i, 21517i)), Struct_1(-139f, vec3<f32>(329f, -1501f, -503f)), vec3<f32>(-1458f, -642f, 2081f)), Struct_5(Struct_2(-1505f, Struct_1(435f, vec3<f32>(-542f, 353f, -279f)), vec3<bool>(true, false, false), Struct_1(-182f, vec3<f32>(-725f, 285f, -529f)), 460f), Struct_4(vec2<i32>(-32621i, -20347i)), Struct_1(-921f, vec3<f32>(786f, -1363f, -1623f)), vec3<f32>(405f, -758f, -763f)), Struct_5(Struct_2(326f, Struct_1(819f, vec3<f32>(773f, -319f, 1078f)), vec3<bool>(false, false, true), Struct_1(-276f, vec3<f32>(-448f, -1529f, -379f)), -900f), Struct_4(vec2<i32>(1i, -1i)), Struct_1(367f, vec3<f32>(279f, -257f, 153f)), vec3<f32>(1226f, 427f, -735f)), Struct_5(Struct_2(2022f, Struct_1(529f, vec3<f32>(-2711f, -1062f, -1007f)), vec3<bool>(true, false, false), Struct_1(-1181f, vec3<f32>(2441f, 399f, -1211f)), 370f), Struct_4(vec2<i32>(-13056i, i32(-2147483648))), Struct_1(935f, vec3<f32>(198f, 536f, -148f)), vec3<f32>(-2739f, 485f, 149f)), Struct_5(Struct_2(-359f, Struct_1(1000f, vec3<f32>(-1268f, 1307f, 434f)), vec3<bool>(false, true, false), Struct_1(1000f, vec3<f32>(1000f, 1177f, 460f)), 313f), Struct_4(vec2<i32>(-5806i, 2147483647i)), Struct_1(639f, vec3<f32>(-715f, 418f, 490f)), vec3<f32>(-334f, -1055f, -1569f)), Struct_5(Struct_2(-197f, Struct_1(-119f, vec3<f32>(-812f, 1533f, 2167f)), vec3<bool>(true, true, true), Struct_1(1207f, vec3<f32>(1000f, -1255f, -1401f)), -1000f), Struct_4(vec2<i32>(0i, i32(-2147483648))), Struct_1(1000f, vec3<f32>(-959f, -1445f, 141f)), vec3<f32>(-1000f, -700f, 501f)), Struct_5(Struct_2(-165f, Struct_1(-1921f, vec3<f32>(609f, 1515f, -161f)), vec3<bool>(true, true, false), Struct_1(-1330f, vec3<f32>(559f, 1000f, 286f)), 696f), Struct_4(vec2<i32>(16295i, 2010i)), Struct_1(-737f, vec3<f32>(248f, 224f, 1391f)), vec3<f32>(205f, 1021f, 720f)), Struct_5(Struct_2(2113f, Struct_1(-725f, vec3<f32>(-1461f, -1155f, 162f)), vec3<bool>(false, true, true), Struct_1(2585f, vec3<f32>(-264f, -735f, -1217f)), -527f), Struct_4(vec2<i32>(70105i, 2147483647i)), Struct_1(-2108f, vec3<f32>(-863f, 313f, -2864f)), vec3<f32>(-1000f, 370f, 410f)), Struct_5(Struct_2(406f, Struct_1(422f, vec3<f32>(-1000f, -2700f, 513f)), vec3<bool>(false, true, true), Struct_1(-1006f, vec3<f32>(-624f, -480f, -860f)), -1049f), Struct_4(vec2<i32>(-14544i, 46051i)), Struct_1(1742f, vec3<f32>(1230f, 1070f, -324f)), vec3<f32>(-599f, -1394f, -1158f)), Struct_5(Struct_2(1965f, Struct_1(948f, vec3<f32>(-1189f, 332f, 1155f)), vec3<bool>(true, false, true), Struct_1(-1000f, vec3<f32>(-1265f, 420f, 2077f)), 785f), Struct_4(vec2<i32>(1i, 50600i)), Struct_1(-1522f, vec3<f32>(1722f, 338f, 437f)), vec3<f32>(-2160f, 410f, 360f)), Struct_5(Struct_2(-619f, Struct_1(-385f, vec3<f32>(280f, 1228f, 2083f)), vec3<bool>(false, false, true), Struct_1(-1330f, vec3<f32>(-198f, -978f, 276f)), -597f), Struct_4(vec2<i32>(-31624i, 49997i)), Struct_1(-1266f, vec3<f32>(-836f, 1207f, -1659f)), vec3<f32>(664f, 1000f, 1524f)), Struct_5(Struct_2(876f, Struct_1(-691f, vec3<f32>(-1305f, -1094f, -1630f)), vec3<bool>(true, true, true), Struct_1(437f, vec3<f32>(-1585f, 1178f, -786f)), 203f), Struct_4(vec2<i32>(52661i, 0i)), Struct_1(1113f, vec3<f32>(-1636f, -364f, 121f)), vec3<f32>(-644f, -183f, -337f)), Struct_5(Struct_2(1107f, Struct_1(629f, vec3<f32>(1191f, -673f, -293f)), vec3<bool>(false, false, false), Struct_1(355f, vec3<f32>(735f, -602f, 295f)), -983f), Struct_4(vec2<i32>(-2857i, i32(-2147483648))), Struct_1(-1465f, vec3<f32>(2860f, -768f, 1206f)), vec3<f32>(325f, -1000f, 1068f)), Struct_5(Struct_2(105f, Struct_1(-936f, vec3<f32>(-813f, 1385f, 759f)), vec3<bool>(false, true, true), Struct_1(-718f, vec3<f32>(-611f, -1000f, -899f)), -991f), Struct_4(vec2<i32>(12046i, 0i)), Struct_1(707f, vec3<f32>(-788f, 173f, -1170f)), vec3<f32>(-2431f, 651f, 855f)), Struct_5(Struct_2(-237f, Struct_1(1603f, vec3<f32>(566f, -460f, 625f)), vec3<bool>(false, false, false), Struct_1(-650f, vec3<f32>(1126f, -286f, 577f)), -1000f), Struct_4(vec2<i32>(-9886i, 0i)), Struct_1(-619f, vec3<f32>(-623f, -332f, 1036f)), vec3<f32>(1589f, 882f, -136f)));

var<private> global3: array<f32, 4> = array<f32, 4>(-1000f, 329f, -302f, -1235f);

var<private> global4: vec3<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> f32 {
    let var_0 = -1123f;
    global3 = array<f32, 4>();
    global2 = array<Struct_5, 29>();
    let var_1 = u_input.b;
    var var_2 = Struct_2(arg_1, Struct_1(_wgslsmith_f_op_f32(ceil(474f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 400f, 177f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-197f, arg_1, var_0))))))), vec3<bool>(false, any(!select(global4.yz, global4.xz, vec2<bool>(false, global4.x))), any(vec3<bool>(global4.x, arg_0.a.x >= -2147483647i, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(var_1, 4u)])))), vec3<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(0u, 4u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.b, 4u)], 1321f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(726f)) * _wgslsmith_f_op_f32(round(968f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), global3[_wgslsmith_index_u32(~0u, 4u)]))));
    return arg_1;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> f32 {
    global4 = vec3<bool>(!all(select(!vec4<bool>(global4.x, global4.x, true, arg_2), vec4<bool>(arg_2, false, false, true), arg_0 <= global3[_wgslsmith_index_u32(0u, 4u)])), global4.x, arg_2);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec2<i32>(min(9744i, arg_3), arg_3)), arg_1.x)));
    var var_0 = Struct_3(abs(select(_wgslsmith_div_i32(6058i, u_input.a), 21136i, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), global3[_wgslsmith_index_u32(~firstLeadingBit(~1u), 4u)], ~arg_3);
    let var_1 = Struct_3(firstTrailingBit(-_wgslsmith_clamp_i32(var_0.d & 31819i, arg_3, firstTrailingBit(u_input.a))), 249f, 1000f, arg_3);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1204f - 2261f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 4u)] + arg_1.x))))))), 122f, arg_0);
    return arg_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global4 = vec3<bool>(global4.x, !global4.x, true);
    global2 = array<Struct_5, 29>();
    var var_0 = vec4<bool>(select(-_wgslsmith_sub_i32(1i, u_input.a) >= u_input.a, any(select(vec2<bool>(global4.x, global4.x), select(global4.yx, vec2<bool>(false, false), global4.yz), vec2<bool>(global4.x, true))), !(_wgslsmith_div_i32(u_input.c, u_input.c) < firstTrailingBit(14250i))), true, global4.x, !any(vec2<bool>(global4.x, arg_3 != -1186f)));
    global2 = array<Struct_5, 29>();
    let var_1 = select(var_0.xyz, vec3<bool>(true, any(vec3<bool>(false, any(vec4<bool>(true, true, var_0.x, global4.x)), true)), global4.x), select(vec3<bool>(var_0.x, true, global4.x), vec3<bool>(false, !(!var_0.x), !(!global4.x)), all(vec2<bool>(any(vec4<bool>(true, true, false, var_0.x)), any(vec4<bool>(var_0.x, true, var_0.x, false))))));
    return Struct_1(global3[_wgslsmith_index_u32(countOneBits(~4294967295u), 4u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-524f, -551f, _wgslsmith_f_op_f32(f32(-1f) * -2601f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_5(Struct_2(arg_0.x, arg_3, !vec3<bool>(u_input.b <= u_input.b, !global4.x, global4.x), Struct_1(1000f, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1000f, 510f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(113f, 760f, 117f) - arg_1.b))), _wgslsmith_f_op_f32(f32(-1f) * -919f)), Struct_4(vec2<i32>(countOneBits(_wgslsmith_div_i32(0i, u_input.a)), i32(-1i) * -71541i)), func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_3.b.x, arg_3.b.x, 697f) * vec4<f32>(arg_3.b.x, arg_2.x, -141f, -329f)))))), select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 0u), vec3<u32>(u_input.b, u_input.b, 47978u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 56106u), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<bool>(true, true, true)) >> (reverseBits(vec3<u32>(u_input.b, 1u, 0u)) % vec3<u32>(32u)), func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1199f, arg_1.a, arg_2.x, arg_0.x))), vec4<f32>(arg_3.b.x, arg_2.x, global3[_wgslsmith_index_u32(0u, 4u)], -1905f), select(vec4<bool>(global4.x, global4.x, false, global4.x), vec4<bool>(global4.x, global4.x, true, false), vec4<bool>(global4.x, true, global4.x, false)))), abs(abs(vec3<u32>(1u, 4294967295u, u_input.b))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(821f, 874f, arg_0.x, -475f)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 24534u), vec3<u32>(u_input.b, 31437u, u_input.b)), func_4(vec4<f32>(arg_0.x, global3[_wgslsmith_index_u32(u_input.b, 4u)], -827f, 760f), vec3<u32>(u_input.b, 4294967295u, 4294967295u), arg_1, -814f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global3[_wgslsmith_index_u32(1u | (u_input.b >> (0u % 32u)), 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1044f - arg_1.b.x))), _wgslsmith_f_op_vec3_f32(-arg_3.b));
    var var_1 = select((_wgslsmith_mod_vec3_u32(~vec3<u32>(25928u, u_input.b, 0u), vec3<u32>(0u, 4294967295u, u_input.b)) & (vec3<u32>(50096u, 0u, u_input.b) & vec3<u32>(u_input.b, u_input.b, u_input.b))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b)), vec3<u32>(max(2747u, 4294967295u), ~u_input.b, abs(0u))), abs(vec3<u32>(abs(_wgslsmith_mod_u32(2697u, u_input.b)), 71892u, firstLeadingBit(u_input.b))), !(!vec3<bool>(true, all(vec4<bool>(var_0.a.c.x, var_0.a.c.x, true, var_0.a.c.x)), true)));
    global3 = array<f32, 4>();
    let var_2 = false;
    let var_3 = var_0.a.c.x;
    return false;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = ~select(vec2<u32>(arg_2, abs(~16198u)), ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2, 40100u), vec2<u32>(34693u, 4294967295u), vec2<u32>(4294967295u, u_input.b)) >> (~vec2<u32>(u_input.b, arg_2) % vec2<u32>(32u))), !vec2<bool>(true, any(vec2<bool>(global4.x, false))));
    global4 = !vec3<bool>((-1431f < _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 4u)] - 2245f)) | all(!vec4<bool>(true, true, false, arg_3)), func_5(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(0u, 4u)], -484f, global3[_wgslsmith_index_u32(0u, 4u)]) * vec3<f32>(-543f, global3[_wgslsmith_index_u32(17069u, 4u)], 298f)))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1212f, 949f, global3[_wgslsmith_index_u32(u_input.b, 4u)], 1000f)), vec3<u32>(arg_2, 114547u, arg_2), Struct_1(global3[_wgslsmith_index_u32(u_input.b, 4u)], vec3<f32>(global3[_wgslsmith_index_u32(var_0.x, 4u)], global3[_wgslsmith_index_u32(var_0.x, 4u)], global3[_wgslsmith_index_u32(arg_2, 4u)])), _wgslsmith_f_op_f32(func_2(global3[_wgslsmith_index_u32(var_0.x, 4u)], vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], -521f), global4.x, 73154i))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(345f, global3[_wgslsmith_index_u32(var_0.x, 4u)]), vec2<f32>(372f, global3[_wgslsmith_index_u32(23302u, 4u)])))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-631f, global3[_wgslsmith_index_u32(0u, 4u)], 1205f, global3[_wgslsmith_index_u32(0u, 4u)])), abs(vec3<u32>(4294967295u, 9344u, var_0.x)), Struct_1(1000f, vec3<f32>(-1100f, global3[_wgslsmith_index_u32(4294967295u, 4u)], -1809f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_2, 4u)]))), func_5(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(var_0.x, 4u)], 287f, global3[_wgslsmith_index_u32(1u, 4u)]), vec3<f32>(global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], 374f)), func_4(vec4<f32>(-671f, global3[_wgslsmith_index_u32(56574u, 4u)], -422f, -101f), vec3<u32>(52536u, arg_2, 4294967295u), Struct_1(global3[_wgslsmith_index_u32(1u, 4u)], vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 4u)], -194f, 1000f)), 785f).b), Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, arg_2, arg_2), 4u)], _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-698f, -1052f, global3[_wgslsmith_index_u32(arg_2, 4u)]), vec3<f32>(1274f, 585f, global3[_wgslsmith_index_u32(55316u, 4u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(486f, 1000f)), Struct_1(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 4u)] - 331f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 4u)], -1034f, -266f) + vec3<f32>(413f, 526f, -1000f)))));
    let var_1 = all(select(!vec3<bool>(all(vec3<bool>(global4.x, global4.x, false)), true, false), select(vec3<bool>(global4.x || false, true, all(vec4<bool>(arg_3, global4.x, global4.x, false))), vec3<bool>(!global4.x, true, !global4.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(arg_3, true, false), vec3<bool>(arg_3, global4.x, false)), true)), vec3<bool>(global4.x, true, arg_3)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(~12540u, 4u)], _wgslsmith_f_op_f32(-173f + 1f)));
    global4 = vec3<bool>(!arg_3, var_1, select(global4.x, func_5(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_2, 4u)], global3[_wgslsmith_index_u32(11831u, 4u)], global3[_wgslsmith_index_u32(1u, 4u)]) + vec3<f32>(global3[_wgslsmith_index_u32(arg_2, 4u)], global3[_wgslsmith_index_u32(var_0.x, 4u)], global3[_wgslsmith_index_u32(87370u, 4u)])))), Struct_1(_wgslsmith_f_op_f32(1082f * -545f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_2, 4u)], 1334f, -566f) - vec3<f32>(global3[_wgslsmith_index_u32(33832u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], 166f))), _wgslsmith_f_op_vec2_f32(min(func_4(vec4<f32>(1000f, 105f, global3[_wgslsmith_index_u32(arg_2, 4u)], 1000f), vec3<u32>(var_0.x, 9630u, 12207u), Struct_1(global3[_wgslsmith_index_u32(1u, 4u)], vec3<f32>(265f, global3[_wgslsmith_index_u32(21856u, 4u)], global3[_wgslsmith_index_u32(60434u, 4u)])), 1330f).b.xz, _wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], -789f), vec2<f32>(global3[_wgslsmith_index_u32(arg_2, 4u)], -1082f)))), func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-583f, global3[_wgslsmith_index_u32(u_input.b, 4u)], global3[_wgslsmith_index_u32(arg_2, 4u)], global3[_wgslsmith_index_u32(var_0.x, 4u)]), vec4<f32>(global3[_wgslsmith_index_u32(arg_2, 4u)], 445f, global3[_wgslsmith_index_u32(73553u, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)]))), vec3<u32>(arg_2, 45060u, 0u), func_4(vec4<f32>(global3[_wgslsmith_index_u32(arg_2, 4u)], 464f, global3[_wgslsmith_index_u32(u_input.b, 4u)], global3[_wgslsmith_index_u32(80688u, 4u)]), vec3<u32>(1u, 0u, u_input.b), Struct_1(621f, vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], -1005f)), global3[_wgslsmith_index_u32(0u, 4u)]), _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(var_0.x, 4u)])))), !(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_0.x, 4u)], 1000f) > _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(arg_2, 4u)])))));
    return func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(~0u, 4u)], global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 4u)], -271f, -954f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(1u, 4u)], 411f, var_1)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_2, 4u)] - -1086f), global3[_wgslsmith_index_u32(~arg_2, 4u)], _wgslsmith_f_op_f32(-1492f - global3[_wgslsmith_index_u32(u_input.b, 4u)])) * vec4<f32>(global3[_wgslsmith_index_u32(countOneBits(arg_2), 4u)], 1800f, _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(arg_2, 4u)])), -726f))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(arg_2, 50041u), 1u ^ (arg_2 << (1u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, var_0.x) & vec2<u32>(arg_2, u_input.b), ~vec2<u32>(var_0.x, var_0.x))), abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(87214u, u_input.b, u_input.b), vec3<u32>(arg_2, var_0.x, 24977u))), vec3<u32>(min(1u, _wgslsmith_mod_u32(var_0.x, u_input.b)), var_0.x, u_input.b)), Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.b, var_0.x), select(vec3<u32>(arg_2, u_input.b, 35644u), vec3<u32>(u_input.b, arg_2, 0u), vec3<bool>(true, false, global4.x))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 56664u, var_0.x), vec3<u32>(4294967295u, arg_2, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(100525u, u_input.b, arg_2), vec3<u32>(19361u, u_input.b, 29015u), vec3<u32>(arg_2, 6931u, 1u)))), 4u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 4u)], -966f, global3[_wgslsmith_index_u32(0u, 4u)]) - vec3<f32>(global3[_wgslsmith_index_u32(91604u, 4u)], global3[_wgslsmith_index_u32(72439u, 4u)], -972f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(457f, -769f, global3[_wgslsmith_index_u32(79075u, 4u)])))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1424f), global3[_wgslsmith_index_u32(abs(arg_2), 4u)], -1000f))), -2009f);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_5 {
    global4 = vec3<bool>(global4.x, true, true);
    global2 = array<Struct_5, 29>();
    let var_0 = arg_1.b.zz;
    global0 = var_0.x;
    var var_1 = _wgslsmith_div_vec2_i32(reverseBits(-(vec2<i32>(-5284i, 2147483647i) ^ (vec2<i32>(-2147483647i, u_input.c) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))))), abs(select(vec2<i32>(_wgslsmith_div_i32(u_input.c, u_input.c), u_input.a), vec2<i32>(2147483647i, u_input.a) | (vec2<i32>(u_input.c, 23893i) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))), any(global4.yy))));
    return Struct_5(Struct_2(var_0.x, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1091f * -1163f), _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.yyw, vec3<f32>(arg_1.b.x, arg_1.b.x, 2065f)))), select(vec3<bool>(all(vec4<bool>(global4.x, global4.x, false, false)), true, all(vec3<bool>(true, false, false))), vec3<bool>(!global4.x, global4.x, all(vec2<bool>(false, true))), !global4.x), arg_1, 1000f), Struct_4(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, u_input.a), vec2<i32>(u_input.c, -1i))))), Struct_1(549f, func_1(-_wgslsmith_mod_i32(var_1.x, -1i), ~abs(vec4<i32>(u_input.c, 44969i, -2147483647i, -1i)), _wgslsmith_mod_u32(u_input.b, 1u), true).b), vec3<f32>(global3[_wgslsmith_index_u32(reverseBits(0u), 4u)], _wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-484f)) + 191f)));
}

fn func_7(arg_0: Struct_5, arg_1: vec4<f32>) -> vec3<u32> {
    var var_0 = arg_0.b;
    global1 = -719f;
    global2 = array<Struct_5, 29>();
    global2 = array<Struct_5, 29>();
    let var_1 = 1i;
    return ~(~(~((vec3<u32>(56445u, u_input.b, 84992u) >> (vec3<u32>(u_input.b, 4294967295u, 2645u) % vec3<u32>(32u))) ^ vec3<u32>(0u, u_input.b, 25373u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b ^ 4294967295u, 4u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 4u)] * global3[_wgslsmith_index_u32(u_input.b, 4u)]), -1000f, -1749f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(u_input.b, 4u)], -329f)))), func_1(firstTrailingBit(-2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -39802i, u_input.c, u_input.a) | vec4<i32>(-2147483647i, u_input.c, -2147483647i, 23776i), vec4<i32>(1i, u_input.a, 18214i, -1i)), ~985u, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 4u)]) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 4u)] * global3[_wgslsmith_index_u32(0u, 4u)])), _wgslsmith_f_op_f32(-1330f + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 4u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1493f + global3[_wgslsmith_index_u32(0u, 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(1u, 4u)])) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 4u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-991f, -1661f, global3[_wgslsmith_index_u32(u_input.b, 4u)], 196f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1374f, global3[_wgslsmith_index_u32(u_input.b, 4u)], 1347f, global3[_wgslsmith_index_u32(1u, 4u)]))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, min(1u, 1u) << (u_input.b % 32u)), 4u)], _wgslsmith_f_op_f32(f32(-1f) * -220f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = func_7(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1159f, global3[_wgslsmith_index_u32(var_0.x, 4u)], global3[_wgslsmith_index_u32(u_input.b, 4u)], global3[_wgslsmith_index_u32(99637u, 4u)])))))), func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3[_wgslsmith_index_u32(var_0.x, 4u)], 1109f, global3[_wgslsmith_index_u32(u_input.b, 4u)], 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1632f, global3[_wgslsmith_index_u32(u_input.b, 4u)], 470f, global3[_wgslsmith_index_u32(u_input.b, 4u)]))), ~(~vec3<u32>(u_input.b, var_0.x, 58380u)), Struct_1(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 4u)] - global3[_wgslsmith_index_u32(var_0.x, 4u)]), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(u_input.b, 4u)], -1000f)))), global3[_wgslsmith_index_u32(~(~2553u), 4u)])), vec4<f32>(-722f, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, _wgslsmith_add_u32(66557u, u_input.b)) | _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(var_0.x, var_0.x, u_input.b)), countOneBits(vec3<u32>(88950u, 111820u, var_0.x))), 4u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(reverseBits(firstLeadingBit(u_input.b)), 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(28017u, 4u)], 776f) * _wgslsmith_div_f32(649f, global3[_wgslsmith_index_u32(var_0.x, 4u)])))));
    global4 = select(!vec3<bool>(global4.x, global4.x, !global4.x), !vec3<bool>((true & global4.x) != true, global4.x, global3[_wgslsmith_index_u32(28327u, 4u)] > _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.x, 4u)])), global3[_wgslsmith_index_u32(42622u, 4u)] <= global3[_wgslsmith_index_u32(u_input.b, 4u)]);
    global2 = array<Struct_5, 29>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(var_0.x, 4u)], global3[_wgslsmith_index_u32(5349u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(u_input.b, 4u)]), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(1u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(var_0.x, 4u)]), vec4<bool>(global4.x, global4.x, true, true)))))));
    var_0 = func_7(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(960f, -978f, global3[_wgslsmith_index_u32(var_0.x, 4u)], -1584f) * vec4<f32>(var_1.x, var_1.x, -512f, -1289f))))), Struct_1(var_1.x, var_1.wxw)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 4u)], -1000f, -1318f, var_1.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, 241f, var_1.x, var_1.x))))))));
    let var_2 = ~firstLeadingBit(~_wgslsmith_mult_u32(func_7(Struct_5(Struct_2(-849f, Struct_1(var_1.x, var_1.xzw), vec3<bool>(true, true, global4.x), Struct_1(global3[_wgslsmith_index_u32(13611u, 4u)], var_1.zwz), -536f), Struct_4(vec2<i32>(0i, u_input.a)), Struct_1(global3[_wgslsmith_index_u32(u_input.b, 4u)], var_1.xzw), vec3<f32>(-1610f, 1000f, 609f)), vec4<f32>(652f, var_1.x, global3[_wgslsmith_index_u32(u_input.b, 4u)], 1000f)).x, _wgslsmith_dot_vec2_u32(vec2<u32>(1915u, u_input.b), vec2<u32>(23730u, 22365u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~var_0.x >> (~abs(24374u) % 32u), 4029u, ~(~countOneBits(14072u)), 1u), u_input.a, _wgslsmith_div_u32(4294967295u, reverseBits(~(~49929u))), u_input.a, vec3<u32>(var_2 >> (~(~0u) % 32u), var_0.x << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_2, var_0.x, u_input.b), vec4<u32>(1u, 63369u, var_0.x, 13906u)) << (_wgslsmith_mult_u32(28512u, var_0.x) % 32u)) % 32u), max(reverseBits(17963u), 0u | _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 80109u), vec3<u32>(34098u, var_2, 0u)))));
}

