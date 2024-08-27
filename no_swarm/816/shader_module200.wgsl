struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(Struct_2(0u, vec2<f32>(111f, 1519f), Struct_1(vec2<u32>(4294967295u, 58404u)), vec2<i32>(-7942i, 5797i), i32(-2147483648)), vec4<u32>(61749u, 4294967295u, 6352u, 19508u), Struct_1(vec2<u32>(1u, 66328u)), 70074u), Struct_1(vec2<u32>(0u, 46339u)), vec3<f32>(281f, 152f, -981f), vec4<i32>(1i, -31170i, -1i, i32(-2147483648)));

var<private> global1: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(373f, 594f, 699f), vec3<f32>(604f, 352f, -2102f), vec3<f32>(-1917f, 1000f, 171f), vec3<f32>(127f, -1618f, 843f), vec3<f32>(1000f, -1587f, 1013f), vec3<f32>(-420f, -950f, 679f), vec3<f32>(-466f, -723f, -883f), vec3<f32>(1091f, -1355f, -924f), vec3<f32>(934f, -644f, -1000f), vec3<f32>(465f, 481f, -117f), vec3<f32>(1764f, 360f, 221f), vec3<f32>(-830f, 981f, -1000f), vec3<f32>(236f, -518f, 911f), vec3<f32>(1187f, -521f, 1131f), vec3<f32>(1015f, -479f, 2111f), vec3<f32>(949f, -475f, -1082f), vec3<f32>(1220f, -762f, -597f), vec3<f32>(-1342f, 1968f, 967f), vec3<f32>(1001f, 1118f, -1614f), vec3<f32>(416f, 548f, 564f), vec3<f32>(-534f, 214f, -1159f), vec3<f32>(-295f, 929f, 504f), vec3<f32>(-584f, -415f, -1579f), vec3<f32>(1699f, -127f, -1901f), vec3<f32>(-911f, -1569f, 743f), vec3<f32>(-656f, -1102f, -886f));

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_3(Struct_2(18337u, vec2<f32>(815f, 1212f), Struct_1(vec2<u32>(47598u, 4294967295u)), vec2<i32>(-27784i, -8994i), -1i), vec4<u32>(60161u, 1u, 0u, 55850u), Struct_1(vec2<u32>(58392u, 4294967295u)), 26301u), Struct_1(vec2<u32>(27371u, 0u)), vec3<f32>(702f, 1000f, 300f), vec4<i32>(44311i, 1i, 1i, 7205i)), Struct_4(Struct_3(Struct_2(1u, vec2<f32>(762f, -1809f), Struct_1(vec2<u32>(73217u, 42026u)), vec2<i32>(5954i, 0i), -24083i), vec4<u32>(24423u, 127789u, 22023u, 4294967295u), Struct_1(vec2<u32>(43880u, 0u)), 0u), Struct_1(vec2<u32>(4294967295u, 37126u)), vec3<f32>(1299f, -940f, -702f), vec4<i32>(0i, -3159i, 0i, i32(-2147483648))), Struct_4(Struct_3(Struct_2(28845u, vec2<f32>(-196f, 1122f), Struct_1(vec2<u32>(60549u, 14986u)), vec2<i32>(i32(-2147483648), 2147483647i), i32(-2147483648)), vec4<u32>(11672u, 0u, 92786u, 4294967295u), Struct_1(vec2<u32>(66035u, 0u)), 98805u), Struct_1(vec2<u32>(0u, 37199u)), vec3<f32>(-243f, -201f, 2349f), vec4<i32>(-9056i, -44781i, i32(-2147483648), 0i)), Struct_4(Struct_3(Struct_2(0u, vec2<f32>(771f, 250f), Struct_1(vec2<u32>(34602u, 1u)), vec2<i32>(-1i, -29838i), 2147483647i), vec4<u32>(79015u, 31012u, 4294967295u, 17839u), Struct_1(vec2<u32>(69172u, 42132u)), 13240u), Struct_1(vec2<u32>(56556u, 1215u)), vec3<f32>(-1000f, 471f, -650f), vec4<i32>(-11141i, i32(-2147483648), -1i, i32(-2147483648))), Struct_4(Struct_3(Struct_2(4294967295u, vec2<f32>(-834f, 172f), Struct_1(vec2<u32>(0u, 1u)), vec2<i32>(3314i, 9751i), -31601i), vec4<u32>(8858u, 31901u, 21475u, 1284u), Struct_1(vec2<u32>(1u, 1u)), 1u), Struct_1(vec2<u32>(4294967295u, 0u)), vec3<f32>(-1566f, -802f, 264f), vec4<i32>(-2654i, -43101i, -1i, 15502i)), Struct_4(Struct_3(Struct_2(40150u, vec2<f32>(140f, 672f), Struct_1(vec2<u32>(77352u, 52896u)), vec2<i32>(i32(-2147483648), 0i), -1i), vec4<u32>(4294967295u, 1u, 60919u, 54839u), Struct_1(vec2<u32>(0u, 0u)), 9279u), Struct_1(vec2<u32>(22636u, 4294967295u)), vec3<f32>(1279f, -362f, 845f), vec4<i32>(40245i, 38080i, 14867i, i32(-2147483648))), Struct_4(Struct_3(Struct_2(2946u, vec2<f32>(426f, 278f), Struct_1(vec2<u32>(4294967295u, 4294967295u)), vec2<i32>(-15531i, 1i), 0i), vec4<u32>(41633u, 4294967295u, 22249u, 41559u), Struct_1(vec2<u32>(14711u, 44878u)), 0u), Struct_1(vec2<u32>(33805u, 0u)), vec3<f32>(-376f, -317f, -752f), vec4<i32>(83269i, i32(-2147483648), 1i, 2147483647i)), Struct_4(Struct_3(Struct_2(15189u, vec2<f32>(551f, -142f), Struct_1(vec2<u32>(1u, 1u)), vec2<i32>(0i, -1i), 2147483647i), vec4<u32>(28260u, 4294967295u, 2693u, 1u), Struct_1(vec2<u32>(6026u, 80476u)), 72627u), Struct_1(vec2<u32>(1543u, 85733u)), vec3<f32>(1036f, -186f, -220f), vec4<i32>(15892i, i32(-2147483648), -14181i, -21732i)), Struct_4(Struct_3(Struct_2(10066u, vec2<f32>(1000f, 157f), Struct_1(vec2<u32>(1u, 44647u)), vec2<i32>(-61110i, -1i), -9451i), vec4<u32>(9797u, 0u, 47404u, 29206u), Struct_1(vec2<u32>(122893u, 6201u)), 63232u), Struct_1(vec2<u32>(1u, 4294967295u)), vec3<f32>(548f, -329f, 472f), vec4<i32>(12421i, -31715i, 2147483647i, 37976i)), Struct_4(Struct_3(Struct_2(4294967295u, vec2<f32>(136f, -1000f), Struct_1(vec2<u32>(4294967295u, 54883u)), vec2<i32>(1i, 0i), -42850i), vec4<u32>(0u, 1u, 1u, 1u), Struct_1(vec2<u32>(30193u, 20716u)), 0u), Struct_1(vec2<u32>(45772u, 39463u)), vec3<f32>(-1125f, 891f, 217f), vec4<i32>(3142i, 0i, 2147483647i, 0i)), Struct_4(Struct_3(Struct_2(1u, vec2<f32>(266f, -1141f), Struct_1(vec2<u32>(64271u, 4294967295u)), vec2<i32>(1i, -7132i), 50544i), vec4<u32>(4294967295u, 22518u, 59225u, 1u), Struct_1(vec2<u32>(58136u, 59654u)), 15386u), Struct_1(vec2<u32>(4294967295u, 0u)), vec3<f32>(-254f, -553f, 1752f), vec4<i32>(26349i, 1i, 50125i, -17765i)), Struct_4(Struct_3(Struct_2(107044u, vec2<f32>(-1014f, 1293f), Struct_1(vec2<u32>(0u, 1u)), vec2<i32>(-1i, 0i), 2147483647i), vec4<u32>(89206u, 31895u, 19336u, 1u), Struct_1(vec2<u32>(1u, 0u)), 0u), Struct_1(vec2<u32>(5467u, 1u)), vec3<f32>(-330f, 819f, 448f), vec4<i32>(40241i, -723i, 39472i, 0i)), Struct_4(Struct_3(Struct_2(41258u, vec2<f32>(1194f, -501f), Struct_1(vec2<u32>(29393u, 0u)), vec2<i32>(10899i, -13860i), 0i), vec4<u32>(15017u, 0u, 48655u, 0u), Struct_1(vec2<u32>(4294967295u, 35984u)), 34480u), Struct_1(vec2<u32>(4437u, 4294967295u)), vec3<f32>(-742f, 928f, 502f), vec4<i32>(-7969i, 0i, 46586i, -29680i)), Struct_4(Struct_3(Struct_2(1u, vec2<f32>(-1309f, 1000f), Struct_1(vec2<u32>(4294967295u, 1u)), vec2<i32>(-22010i, -13799i), -14121i), vec4<u32>(14492u, 63583u, 46484u, 1u), Struct_1(vec2<u32>(0u, 1u)), 4294967295u), Struct_1(vec2<u32>(4294967295u, 11761u)), vec3<f32>(964f, -1332f, -1218f), vec4<i32>(-1989i, 55016i, -18775i, i32(-2147483648))), Struct_4(Struct_3(Struct_2(45893u, vec2<f32>(-2241f, 1621f), Struct_1(vec2<u32>(7626u, 1u)), vec2<i32>(1i, -4325i), 1i), vec4<u32>(1u, 0u, 23594u, 37881u), Struct_1(vec2<u32>(1u, 1u)), 0u), Struct_1(vec2<u32>(33886u, 139092u)), vec3<f32>(-198f, 1517f, 334f), vec4<i32>(-24950i, -1i, -77396i, 0i)), Struct_4(Struct_3(Struct_2(4294967295u, vec2<f32>(-1722f, -705f), Struct_1(vec2<u32>(9912u, 18816u)), vec2<i32>(-44303i, 15828i), -1i), vec4<u32>(1u, 45440u, 4294967295u, 1u), Struct_1(vec2<u32>(4294967295u, 38357u)), 32882u), Struct_1(vec2<u32>(16250u, 16957u)), vec3<f32>(-171f, -328f, 327f), vec4<i32>(1i, 2147483647i, -30821i, 31042i)), Struct_4(Struct_3(Struct_2(37974u, vec2<f32>(529f, 1067f), Struct_1(vec2<u32>(4294967295u, 1u)), vec2<i32>(1i, 28816i), 0i), vec4<u32>(4294967295u, 6428u, 88802u, 4294967295u), Struct_1(vec2<u32>(63871u, 0u)), 1u), Struct_1(vec2<u32>(38994u, 50343u)), vec3<f32>(-200f, 1062f, 1204f), vec4<i32>(27212i, 38458i, 1i, 2147483647i)), Struct_4(Struct_3(Struct_2(41321u, vec2<f32>(525f, -1629f), Struct_1(vec2<u32>(0u, 33209u)), vec2<i32>(1i, -4756i), 24969i), vec4<u32>(0u, 5595u, 91677u, 0u), Struct_1(vec2<u32>(44211u, 697u)), 1u), Struct_1(vec2<u32>(14197u, 70219u)), vec3<f32>(456f, -1414f, 599f), vec4<i32>(-64176i, i32(-2147483648), -2943i, 1i)), Struct_4(Struct_3(Struct_2(15848u, vec2<f32>(2358f, -607f), Struct_1(vec2<u32>(1u, 118260u)), vec2<i32>(31824i, 52592i), -1i), vec4<u32>(10382u, 0u, 12989u, 68736u), Struct_1(vec2<u32>(4294967295u, 4294967295u)), 60211u), Struct_1(vec2<u32>(13927u, 1u)), vec3<f32>(-158f, 583f, -110f), vec4<i32>(15855i, 93422i, 58986i, 29758i)), Struct_4(Struct_3(Struct_2(4294967295u, vec2<f32>(-1000f, -2527f), Struct_1(vec2<u32>(4294967295u, 8053u)), vec2<i32>(-59397i, 2147483647i), -13018i), vec4<u32>(4294967295u, 97100u, 40471u, 17300u), Struct_1(vec2<u32>(0u, 1u)), 51346u), Struct_1(vec2<u32>(1u, 4294967295u)), vec3<f32>(-690f, -814f, -455f), vec4<i32>(-3019i, 1i, -1i, 1i)), Struct_4(Struct_3(Struct_2(1u, vec2<f32>(-391f, -1185f), Struct_1(vec2<u32>(6873u, 103510u)), vec2<i32>(37977i, -3287i), -7296i), vec4<u32>(0u, 48612u, 4294967295u, 17336u), Struct_1(vec2<u32>(27818u, 55387u)), 1u), Struct_1(vec2<u32>(37027u, 15985u)), vec3<f32>(-1326f, -1380f, 934f), vec4<i32>(1i, i32(-2147483648), -38199i, 6153i)), Struct_4(Struct_3(Struct_2(0u, vec2<f32>(482f, 232f), Struct_1(vec2<u32>(14962u, 1997u)), vec2<i32>(-8579i, 55758i), 59545i), vec4<u32>(23760u, 10409u, 1u, 1u), Struct_1(vec2<u32>(1u, 4294967295u)), 71793u), Struct_1(vec2<u32>(1u, 4294967295u)), vec3<f32>(-1373f, -419f, 691f), vec4<i32>(23513i, 1i, 2147483647i, 0i)), Struct_4(Struct_3(Struct_2(1u, vec2<f32>(379f, -816f), Struct_1(vec2<u32>(4294967295u, 4294967295u)), vec2<i32>(-56578i, 41918i), -1i), vec4<u32>(1647u, 962u, 0u, 1u), Struct_1(vec2<u32>(9916u, 14990u)), 18022u), Struct_1(vec2<u32>(21583u, 8668u)), vec3<f32>(1337f, -140f, -227f), vec4<i32>(14784i, 25136i, i32(-2147483648), -13665i)), Struct_4(Struct_3(Struct_2(39984u, vec2<f32>(-192f, 1000f), Struct_1(vec2<u32>(0u, 0u)), vec2<i32>(7353i, 1i), -17339i), vec4<u32>(0u, 78698u, 40849u, 59654u), Struct_1(vec2<u32>(4294967295u, 52333u)), 54550u), Struct_1(vec2<u32>(1u, 4294967295u)), vec3<f32>(-1005f, -103f, 599f), vec4<i32>(43496i, -4488i, -14623i, 1i)), Struct_4(Struct_3(Struct_2(1u, vec2<f32>(-1114f, 1197f), Struct_1(vec2<u32>(1u, 53471u)), vec2<i32>(1i, -9743i), 0i), vec4<u32>(4294967295u, 4294967295u, 40720u, 10691u), Struct_1(vec2<u32>(71740u, 0u)), 1u), Struct_1(vec2<u32>(10466u, 2094u)), vec3<f32>(-1314f, -1651f, 1000f), vec4<i32>(1i, -12394i, i32(-2147483648), -75337i)), Struct_4(Struct_3(Struct_2(10099u, vec2<f32>(1459f, -271f), Struct_1(vec2<u32>(20547u, 0u)), vec2<i32>(-27101i, i32(-2147483648)), 1i), vec4<u32>(37214u, 0u, 6535u, 0u), Struct_1(vec2<u32>(4294967295u, 1u)), 0u), Struct_1(vec2<u32>(0u, 42055u)), vec3<f32>(-773f, 1000f, 154f), vec4<i32>(-17717i, 9013i, -5122i, i32(-2147483648))), Struct_4(Struct_3(Struct_2(1u, vec2<f32>(906f, -2190f), Struct_1(vec2<u32>(35401u, 1u)), vec2<i32>(38184i, -1i), 15087i), vec4<u32>(0u, 79257u, 1u, 0u), Struct_1(vec2<u32>(1u, 1u)), 11995u), Struct_1(vec2<u32>(0u, 109726u)), vec3<f32>(-549f, -1366f, 1000f), vec4<i32>(16282i, i32(-2147483648), i32(-2147483648), 0i)), Struct_4(Struct_3(Struct_2(55083u, vec2<f32>(-1235f, -599f), Struct_1(vec2<u32>(1u, 20024u)), vec2<i32>(-1i, 1i), 1i), vec4<u32>(9766u, 1u, 20484u, 4294967295u), Struct_1(vec2<u32>(1u, 61648u)), 16516u), Struct_1(vec2<u32>(7920u, 13761u)), vec3<f32>(412f, 1259f, 1241f), vec4<i32>(47771i, -14278i, -7724i, 0i)), Struct_4(Struct_3(Struct_2(29692u, vec2<f32>(1000f, 693f), Struct_1(vec2<u32>(30569u, 82213u)), vec2<i32>(-12240i, 46943i), -1i), vec4<u32>(4294967295u, 4294967295u, 49892u, 4294967295u), Struct_1(vec2<u32>(4294967295u, 1u)), 45732u), Struct_1(vec2<u32>(1u, 1u)), vec3<f32>(-251f, -452f, 1067f), vec4<i32>(-1i, -34234i, 0i, 1i)), Struct_4(Struct_3(Struct_2(0u, vec2<f32>(821f, 342f), Struct_1(vec2<u32>(4294967295u, 0u)), vec2<i32>(-15392i, -72794i), 1i), vec4<u32>(13693u, 4294967295u, 1u, 40721u), Struct_1(vec2<u32>(1u, 1u)), 0u), Struct_1(vec2<u32>(70617u, 101316u)), vec3<f32>(-1153f, -845f, -1736f), vec4<i32>(i32(-2147483648), -1i, 46387i, 2147483647i)), Struct_4(Struct_3(Struct_2(0u, vec2<f32>(1447f, -1960f), Struct_1(vec2<u32>(1u, 19732u)), vec2<i32>(-25872i, 1i), -1i), vec4<u32>(11261u, 1u, 0u, 1u), Struct_1(vec2<u32>(1u, 0u)), 1u), Struct_1(vec2<u32>(39943u, 46544u)), vec3<f32>(-385f, -521f, 108f), vec4<i32>(1968i, -1i, 9042i, 227i)));

var<private> global4: Struct_4;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: bool) -> f32 {
    let var_0 = abs(abs(global2.www));
    var var_1 = Struct_2(~global0.a.b.x, _wgslsmith_f_op_vec2_f32(global0.a.a.b + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1001f, -1000f) + global0.a.a.b) + vec2<f32>(global0.a.a.b.x, -703f))))), Struct_1(vec2<u32>(1u, 1u)), vec2<i32>(global0.d.x, ~(u_input.c | -1i) << (_wgslsmith_div_u32(global0.a.a.c.a.x, ~arg_2.x) % 32u)), -2147483647i);
    var var_2 = ~abs(arg_2.x & u_input.b);
    global3 = array<Struct_4, 31>();
    var var_3 = global0.a.b.xxw;
    return _wgslsmith_f_op_f32(104f - 1f);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> Struct_4 {
    var var_0 = Struct_2(28540u, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(global0.a.d, 8022u)), global4.d.wwx, arg_0.a.b.yw, false)) * global4.a.a.b.x)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.a.a.b, arg_1.c.zx))))), Struct_1(arg_1.a.c.a), ~(-arg_0.a.a.d), _wgslsmith_sub_i32(reverseBits(reverseBits(1i)), arg_1.a.a.d.x));
    global4 = Struct_4(global4.a, global4.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1111f, arg_0.c.x, 1f)))), ~_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(select(global4.d, vec4<i32>(u_input.c, 0i, global4.a.a.d.x, 1i), false), ~global0.d, vec4<i32>(arg_0.a.a.e, var_0.e, 2147483647i, 18437i)), arg_0.d));
    global4 = Struct_4(Struct_3(arg_0.a.a, ~vec4<u32>(1u, 0u, min(0u, 42010u), _wgslsmith_mod_u32(global0.a.c.a.x, global0.a.d)), global0.b, 4294967295u), global4.b, _wgslsmith_div_vec3_f32(vec3<f32>(-298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1385f) + _wgslsmith_div_f32(arg_1.c.x, 183f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_1.c.x) + global4.c.x)), vec3<f32>(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -697f)), arg_0.a.a.b.x, global4.c.x)), reverseBits(vec4<i32>(-(~global0.d.x), u_input.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(arg_0.d, vec4<i32>(arg_1.a.a.e, 0i, -2147483647i, -1i)), _wgslsmith_dot_vec3_i32(global0.d.xww, global4.d.zyz)), -2147483647i)));
    let var_1 = Struct_2(_wgslsmith_dot_vec4_u32(~(_wgslsmith_clamp_vec4_u32(global0.a.b, vec4<u32>(8204u, 26377u, global0.b.a.x, 54188u), vec4<u32>(arg_0.b.a.x, var_0.a, u_input.b, global0.a.c.a.x)) & (global4.a.b << (vec4<u32>(global4.a.c.a.x, global0.a.b.x, global4.b.a.x, 66501u) % vec4<u32>(32u)))), ~firstLeadingBit(_wgslsmith_sub_vec4_u32(arg_1.a.b, vec4<u32>(u_input.a, 11912u, 1u, u_input.b)))), arg_0.a.a.b, Struct_1(_wgslsmith_div_vec2_u32(abs(arg_1.b.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.b), abs(vec2<u32>(65693u, 65263u)), reverseBits(vec2<u32>(arg_0.b.a.x, var_0.a))))), vec2<i32>(~(-2147483647i), -select(1i, u_input.c, true) | -2147483647i), min(min(arg_0.d.x, global4.a.a.d.x), _wgslsmith_add_i32(-1i, -46075i)) << (~abs(~global0.b.a.x) % 32u));
    var var_2 = var_1;
    return arg_0;
}

fn func_1(arg_0: i32) -> f32 {
    global4 = func_2(Struct_4(global0.a, Struct_1(~global0.a.a.c.a), global1[_wgslsmith_index_u32(2953u, 26u)], global0.d), Struct_4(global4.a, Struct_1(global4.b.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, 212f, global4.a.a.b.x), global1[_wgslsmith_index_u32(~global0.b.a.x, 26u)], true)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(global0.b.a.x, 26u)] + vec3<f32>(global0.c.x, global4.a.a.b.x, global4.a.a.b.x))))), vec4<i32>(abs(global4.a.a.d.x) >> (0u % 32u), ~arg_0, _wgslsmith_clamp_i32(-1i, 0i, firstLeadingBit(24298i)), arg_0)));
    let var_0 = _wgslsmith_div_vec4_i32(global4.d, vec4<i32>(-(i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(~(~global4.d), abs(vec4<i32>(1i, 2147483647i, global4.d.x, 45501i))), u_input.c, countOneBits(-_wgslsmith_sub_i32(global2.x, global2.x))));
    var var_1 = any(select(vec3<bool>(true, true, false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), true), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, true)), -1987f <= global4.a.a.b.x, true)), true));
    var var_2 = global0.b;
    global0 = func_2(func_2(func_2(func_2(func_2(global3[_wgslsmith_index_u32(u_input.a, 31u)], global3[_wgslsmith_index_u32(global0.a.b.x, 31u)]), Struct_4(Struct_3(global4.a.a, vec4<u32>(72192u, u_input.a, u_input.a, 16317u), Struct_1(global0.a.c.a), 19794u), Struct_1(vec2<u32>(u_input.b, var_2.a.x)), global0.c, vec4<i32>(var_0.x, u_input.c, global4.a.a.e, var_0.x))), Struct_4(Struct_3(global4.a.a, global0.a.b, Struct_1(vec2<u32>(var_2.a.x, global0.a.d)), 31361u), global0.b, vec3<f32>(global0.a.a.b.x, -1605f, 366f), -vec4<i32>(-1i, 1i, -34517i, u_input.c))), global3[_wgslsmith_index_u32(countOneBits(u_input.a) >> (min(_wgslsmith_sub_u32(u_input.b, global0.a.d), ~global0.a.a.a) % 32u), 31u)]), global3[_wgslsmith_index_u32(global0.b.a.x, 31u)]);
    return global4.a.a.b.x;
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = global4.a.a;
    global1 = array<vec3<f32>, 26>();
    global3 = array<Struct_4, 31>();
    let var_1 = 0u;
    var var_2 = var_0.b.x;
    return func_2(Struct_4(global4.a, global4.b, global1[_wgslsmith_index_u32(global4.b.a.x ^ 1u, 26u)], select(abs(global4.d >> (global4.a.b % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.d, global2.yw), global2.x | 31231i, global2.x, -global4.a.a.d.x), false)), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, abs(_wgslsmith_add_u32(var_0.c.a.x, 0u))), 31u)]).a.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!((all(vec2<bool>(true, false)) != (global4.c.x > global0.c.x)) || any(vec4<bool>(false, false, false, true))), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true))), !any(vec3<bool>(true, true, true)), false);
    global1 = array<vec3<f32>, 26>();
    let var_1 = select(global4.a.a.c.a, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~global4.a.c.a, global0.a.b.zy), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(global4.b.a, global4.b.a), ~vec2<u32>(4294967295u, global0.a.a.a))) >> (_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(global4.a.c.a, global4.a.a.c.a), ~select(global4.a.a.c.a, global4.b.a, var_0.yw)) % vec2<u32>(32u)), var_0.xy);
    let var_2 = 1i;
    let var_3 = Struct_3(Struct_2(var_1.x, global0.a.a.b, func_4(_wgslsmith_f_op_f32(func_1(-2147483647i))), global4.a.a.d, _wgslsmith_mult_i32(global4.a.a.e, -_wgslsmith_sub_i32(global2.x, u_input.c))), ~global0.a.b ^ _wgslsmith_div_vec4_u32(~select(vec4<u32>(40691u, global0.a.d, global0.b.a.x, var_1.x), vec4<u32>(1u, 1u, global0.b.a.x, global0.a.b.x), var_0.x), abs(~global0.a.b)), func_4(_wgslsmith_f_op_f32(abs(-1026f))), u_input.b);
    global4 = Struct_4(Struct_3(func_2(Struct_4(func_2(global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(global0.a.b.x, 31u)]).a, func_2(Struct_4(Struct_3(var_3.a, vec4<u32>(4294967295u, u_input.a, global0.a.d, global0.b.a.x), global4.b, 10069u), global0.a.a.c, vec3<f32>(var_3.a.b.x, var_3.a.b.x, global0.c.x), global4.d), Struct_4(Struct_3(global0.a.a, var_3.b, Struct_1(vec2<u32>(824u, 104682u)), 0u), global0.b, global4.c, vec4<i32>(-13946i, -1i, u_input.c, 2147483647i))).a.c, _wgslsmith_f_op_vec3_f32(global0.c + global1[_wgslsmith_index_u32(33086u, 26u)]), global4.d), global3[_wgslsmith_index_u32(global4.a.a.a, 31u)]).a.a, global0.a.b, global4.b, _wgslsmith_sub_u32(~global4.a.c.a.x, ~func_2(Struct_4(var_3, Struct_1(vec2<u32>(var_3.d, var_3.c.a.x)), global1[_wgslsmith_index_u32(1u, 26u)], vec4<i32>(50498i, global2.x, 2048i, var_2)), global3[_wgslsmith_index_u32(70518u, 31u)]).a.b.x)), global0.a.c, global0.c, _wgslsmith_add_vec4_i32(vec4<i32>(var_2, i32(-1i) * -18496i, ~0i, firstLeadingBit(global0.a.a.e >> (19936u % 32u))), global4.d));
    let x = u_input.a;
    s_output = StorageBuffer(-1176f, countOneBits(global0.a.a.d.x), global0.a.a.c.a.x);
}

