struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(1i, i32(-2147483648), 2147483647i, 36652i));

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 14971u, 19593u), vec2<f32>(1000f, 1025f), vec3<f32>(1091f, 316f, -868f)), Struct_1(vec2<bool>(false, true), vec3<u32>(56034u, 1u, 85192u), vec2<f32>(-781f, 1896f), vec3<f32>(-479f, 673f, 1386f))), 4294967295u, Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 0u, 4294967295u), vec2<f32>(-1793f, 410f), vec3<f32>(-1303f, 256f, -1122f)), vec4<bool>(false, true, true, false), Struct_1(vec2<bool>(false, false), vec3<u32>(21366u, 4294967295u, 0u), vec2<f32>(-508f, -1075f), vec3<f32>(1000f, 791f, 514f))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(43451u, 1u, 63392u), vec2<f32>(-2235f, -1564f), vec3<f32>(-1326f, -757f, -1513f)), Struct_1(vec2<bool>(false, false), vec3<u32>(25049u, 15165u, 4294967295u), vec2<f32>(1551f, -1705f), vec3<f32>(-1000f, -2358f, 606f))), 87793u, Struct_1(vec2<bool>(true, true), vec3<u32>(38892u, 92051u, 1u), vec2<f32>(407f, 616f), vec3<f32>(-722f, 462f, 776f)), vec4<bool>(false, false, true, false), Struct_1(vec2<bool>(false, false), vec3<u32>(31727u, 1u, 1u), vec2<f32>(-191f, -767f), vec3<f32>(-407f, -1000f, 1000f))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(13216u, 37561u, 0u), vec2<f32>(231f, -1753f), vec3<f32>(-339f, -186f, 1689f)), Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 1u, 1u), vec2<f32>(270f, 1195f), vec3<f32>(-290f, -1836f, -1392f))), 0u, Struct_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 24345u, 69958u), vec2<f32>(312f, -1733f), vec3<f32>(-1720f, -393f, 401f)), vec4<bool>(true, true, true, false), Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 1u, 1u), vec2<f32>(-546f, -177f), vec3<f32>(123f, 149f, 1754f))), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 71373u, 82616u), vec2<f32>(-1161f, 1237f), vec3<f32>(863f, 1918f, 1180f)), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 1u, 5297u), vec2<f32>(642f, 1292f), vec3<f32>(-428f, -286f, -473f))), 85810u, Struct_1(vec2<bool>(true, false), vec3<u32>(696u, 28571u, 1u), vec2<f32>(253f, -1459f), vec3<f32>(-969f, 1306f, -894f)), vec4<bool>(true, false, false, true), Struct_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 52445u, 0u), vec2<f32>(472f, -608f), vec3<f32>(-1000f, -155f, 353f))), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(29258u, 4294967295u, 82969u), vec2<f32>(1000f, -983f), vec3<f32>(504f, 278f, -1606f)), Struct_1(vec2<bool>(true, false), vec3<u32>(31095u, 63557u, 20817u), vec2<f32>(1796f, 368f), vec3<f32>(-828f, 237f, -534f))), 32162u, Struct_1(vec2<bool>(false, true), vec3<u32>(0u, 48313u, 0u), vec2<f32>(-614f, 988f), vec3<f32>(1454f, -639f, -1275f)), vec4<bool>(false, true, true, false), Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 0u, 55229u), vec2<f32>(1919f, -127f), vec3<f32>(-247f, 621f, -1026f))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 1u, 6955u), vec2<f32>(-574f, 441f), vec3<f32>(-139f, -540f, 1000f)), Struct_1(vec2<bool>(false, false), vec3<u32>(0u, 134957u, 92335u), vec2<f32>(-996f, 312f), vec3<f32>(-1110f, -406f, -1392f))), 5525u, Struct_1(vec2<bool>(true, false), vec3<u32>(2716u, 59161u, 1u), vec2<f32>(-1178f, 887f), vec3<f32>(903f, 130f, -356f)), vec4<bool>(false, true, false, false), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 0u, 0u), vec2<f32>(-1845f, 327f), vec3<f32>(-974f, -1922f, -409f))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 0u, 4294967295u), vec2<f32>(-395f, -642f), vec3<f32>(1829f, -1023f, 757f)), Struct_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 62084u, 47586u), vec2<f32>(-678f, -1102f), vec3<f32>(-527f, 784f, -856f))), 4294967295u, Struct_1(vec2<bool>(false, true), vec3<u32>(7773u, 1u, 0u), vec2<f32>(1000f, -1110f), vec3<f32>(581f, 297f, -798f)), vec4<bool>(true, false, false, true), Struct_1(vec2<bool>(false, false), vec3<u32>(0u, 21770u, 12042u), vec2<f32>(-679f, -976f), vec3<f32>(802f, 216f, -845f))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(41508u, 0u, 4801u), vec2<f32>(180f, 1000f), vec3<f32>(-698f, 780f, 534f)), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 0u, 31471u), vec2<f32>(1000f, -192f), vec3<f32>(-751f, -1006f, 521f))), 0u, Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 1u, 4294967295u), vec2<f32>(1311f, 847f), vec3<f32>(-270f, -3868f, 1533f)), vec4<bool>(false, false, true, false), Struct_1(vec2<bool>(true, false), vec3<u32>(13093u, 20023u, 23921u), vec2<f32>(1210f, 1006f), vec3<f32>(-900f, -122f, 1526f))), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 0u, 43371u), vec2<f32>(384f, 784f), vec3<f32>(-1484f, -1509f, -970f)), Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 32895u, 2530u), vec2<f32>(-2214f, 759f), vec3<f32>(1155f, -328f, -880f))), 0u, Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 0u, 7385u), vec2<f32>(1000f, -803f), vec3<f32>(648f, 1559f, 234f)), vec4<bool>(false, false, true, false), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 10231u, 1u), vec2<f32>(-341f, 632f), vec3<f32>(1456f, 1308f, -456f))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(56717u, 4294967295u, 0u), vec2<f32>(1079f, 245f), vec3<f32>(-385f, 1377f, -674f)), Struct_1(vec2<bool>(false, true), vec3<u32>(28598u, 33514u, 17222u), vec2<f32>(1000f, 859f), vec3<f32>(-781f, 1552f, -211f))), 1u, Struct_1(vec2<bool>(false, true), vec3<u32>(15317u, 0u, 9467u), vec2<f32>(-1153f, 649f), vec3<f32>(-1327f, 1209f, -560f)), vec4<bool>(false, false, true, true), Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 0u, 4294967295u), vec2<f32>(-167f, -645f), vec3<f32>(931f, -467f, 1701f))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 63704u, 1u), vec2<f32>(1495f, 686f), vec3<f32>(474f, -1316f, -315f)), Struct_1(vec2<bool>(true, true), vec3<u32>(11125u, 0u, 19483u), vec2<f32>(-346f, 1005f), vec3<f32>(948f, -632f, 672f))), 27130u, Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 57767u, 6979u), vec2<f32>(-2114f, 208f), vec3<f32>(-377f, 406f, 1006f)), vec4<bool>(true, false, false, false), Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 1u, 45426u), vec2<f32>(938f, 393f), vec3<f32>(-646f, -156f, -1142f))), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 4294967295u, 20222u), vec2<f32>(-301f, 457f), vec3<f32>(1159f, 611f, 1866f)), Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, 0u, 4294967295u), vec2<f32>(948f, 654f), vec3<f32>(-100f, 939f, -241f))), 3521u, Struct_1(vec2<bool>(true, true), vec3<u32>(44996u, 24818u, 50976u), vec2<f32>(-1000f, 1016f), vec3<f32>(-240f, 831f, -301f)), vec4<bool>(false, false, true, true), Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 50865u, 0u), vec2<f32>(1147f, 1312f), vec3<f32>(-1426f, 637f, -351f))), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(51029u, 4294967295u, 1u), vec2<f32>(-771f, -762f), vec3<f32>(948f, 1032f, 1731f)), Struct_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 1u, 4294967295u), vec2<f32>(-1003f, -266f), vec3<f32>(-1620f, -550f, -199f))), 0u, Struct_1(vec2<bool>(true, false), vec3<u32>(65479u, 4294967295u, 0u), vec2<f32>(303f, 1288f), vec3<f32>(1115f, 1236f, 136f)), vec4<bool>(true, true, false, true), Struct_1(vec2<bool>(false, false), vec3<u32>(127297u, 80546u, 12685u), vec2<f32>(-336f, -366f), vec3<f32>(-2203f, -1000f, 991f))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(0u, 0u, 72349u), vec2<f32>(1469f, 489f), vec3<f32>(-1000f, 1015f, 1012f)), Struct_1(vec2<bool>(true, false), vec3<u32>(65455u, 34271u, 1u), vec2<f32>(-131f, 738f), vec3<f32>(1448f, -1000f, 977f))), 4294967295u, Struct_1(vec2<bool>(false, false), vec3<u32>(74871u, 13443u, 1u), vec2<f32>(-361f, 804f), vec3<f32>(149f, -1610f, 244f)), vec4<bool>(true, true, false, false), Struct_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 42530u, 84749u), vec2<f32>(487f, 134f), vec3<f32>(-470f, 2561f, 1217f))), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 0u, 26125u), vec2<f32>(-784f, 1000f), vec3<f32>(1291f, 1432f, -1000f)), Struct_1(vec2<bool>(false, false), vec3<u32>(47016u, 1u, 31343u), vec2<f32>(1032f, -421f), vec3<f32>(505f, -1108f, 276f))), 4294967295u, Struct_1(vec2<bool>(true, true), vec3<u32>(19266u, 8287u, 30824u), vec2<f32>(868f, -166f), vec3<f32>(-1135f, 298f, 686f)), vec4<bool>(false, false, true, false), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 0u), vec2<f32>(-1085f, 1000f), vec3<f32>(-106f, 1000f, -155f))), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 53730u, 0u), vec2<f32>(244f, 1000f), vec3<f32>(322f, 1112f, 1000f)), Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 72509u, 1u), vec2<f32>(109f, -1936f), vec3<f32>(788f, -619f, -518f))), 44666u, Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 35469u, 99370u), vec2<f32>(-1000f, -401f), vec3<f32>(224f, -1237f, 1524f)), vec4<bool>(true, false, false, true), Struct_1(vec2<bool>(false, false), vec3<u32>(34625u, 32409u, 24635u), vec2<f32>(330f, 320f), vec3<f32>(-1661f, 318f, 603f))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(0u, 56241u, 6365u), vec2<f32>(-143f, 754f), vec3<f32>(704f, -946f, -204f)), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 0u, 1u), vec2<f32>(242f, -196f), vec3<f32>(-123f, 648f, -2148f))), 19829u, Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 56869u, 1u), vec2<f32>(-962f, 1234f), vec3<f32>(-531f, -153f, 492f)), vec4<bool>(false, true, false, true), Struct_1(vec2<bool>(false, false), vec3<u32>(2888u, 1u, 771u), vec2<f32>(262f, -717f), vec3<f32>(443f, -670f, 2277f))), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(18894u, 29613u, 7785u), vec2<f32>(1647f, 530f), vec3<f32>(1000f, 102f, -2390f)), Struct_1(vec2<bool>(true, false), vec3<u32>(91521u, 54322u, 45825u), vec2<f32>(-1479f, 197f), vec3<f32>(-869f, -802f, 248f))), 4294967295u, Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 35108u, 6686u), vec2<f32>(693f, -1000f), vec3<f32>(-563f, -473f, 1000f)), vec4<bool>(false, true, false, false), Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 0u, 0u), vec2<f32>(190f, -361f), vec3<f32>(340f, 367f, 465f))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(25994u, 0u, 0u), vec2<f32>(1193f, -983f), vec3<f32>(1384f, -1879f, 1157f)), Struct_1(vec2<bool>(true, false), vec3<u32>(23295u, 4294967295u, 1u), vec2<f32>(374f, -862f), vec3<f32>(-838f, -646f, 700f))), 0u, Struct_1(vec2<bool>(true, true), vec3<u32>(59377u, 0u, 55979u), vec2<f32>(-1113f, -805f), vec3<f32>(167f, -1000f, 321f)), vec4<bool>(true, false, false, false), Struct_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 11860u, 80447u), vec2<f32>(-110f, 923f), vec3<f32>(-305f, 1463f, -1592f))), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 0u, 1u), vec2<f32>(268f, 393f), vec3<f32>(420f, 1004f, -540f)), Struct_1(vec2<bool>(false, true), vec3<u32>(34559u, 0u, 1u), vec2<f32>(152f, -1031f), vec3<f32>(167f, 466f, -1000f))), 0u, Struct_1(vec2<bool>(true, false), vec3<u32>(9360u, 4294967295u, 8689u), vec2<f32>(-1000f, -388f), vec3<f32>(-1030f, 223f, -1465f)), vec4<bool>(true, false, true, true), Struct_1(vec2<bool>(false, true), vec3<u32>(23837u, 15536u, 4294967295u), vec2<f32>(-151f, -1000f), vec3<f32>(928f, -1000f, -548f))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(58083u, 1u, 1u), vec2<f32>(127f, -435f), vec3<f32>(1000f, 1000f, 1328f)), Struct_1(vec2<bool>(false, true), vec3<u32>(52118u, 4294967295u, 4294967295u), vec2<f32>(-187f, -304f), vec3<f32>(-586f, -1245f, 350f))), 4294967295u, Struct_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 1u, 34509u), vec2<f32>(-142f, -355f), vec3<f32>(-755f, 763f, 1000f)), vec4<bool>(false, true, false, true), Struct_1(vec2<bool>(false, true), vec3<u32>(0u, 61286u, 111691u), vec2<f32>(-944f, -430f), vec3<f32>(1743f, -1289f, 650f))));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(2071f, 1266f, 463f, arg_2.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, -1000f, arg_1.c.x, arg_2.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3, arg_1.c.x, arg_1.c.x, 648f), vec4<f32>(arg_1.c.x, -436f, arg_1.c.x, arg_1.d.x)))), vec4<bool>(select(1u != u_input.b.x, true, global0.x), any(arg_1.a), global0.x, false)))));
    global3 = array<Struct_3, 21>();
    global2 = vec2<i32>(12470i, ~(-arg_0));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x - 195f)))), 1334f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + -336f) - arg_1.c.x)) + -487f), arg_3);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), arg_3);
    return _wgslsmith_div_f32(336f, _wgslsmith_f_op_f32(min(arg_2.a, -1494f)));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = ~_wgslsmith_sub_vec2_i32(-select(vec2<i32>(-22010i, 49499i), -u_input.c.yw, u_input.b.x > 27065u), ~vec2<i32>(-1i, -34078i) ^ vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], vec4<i32>(-36437i, 1i, 1i, -36577i))));
    global3 = array<Struct_3, 21>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-583f + _wgslsmith_f_op_f32(334f + 640f)))))) * -1280f);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(389f + -670f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-387f)))))));
    return Struct_2(Struct_1(vec2<bool>(global0.x && select(global0.x, true, global0.x), global0.x == all(vec3<bool>(true, false, false))), ~(~firstLeadingBit(vec3<u32>(1u, var_0.x, 4294967295u))), vec2<f32>(_wgslsmith_f_op_f32(func_3(1i, Struct_1(vec2<bool>(true, global0.x), vec3<u32>(var_0.x, 4294967295u, u_input.b.x), vec2<f32>(var_3.a, var_3.a), vec3<f32>(-620f, 621f, 686f)), Struct_4(var_3.a), _wgslsmith_f_op_f32(abs(var_3.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + var_3.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, var_3.a, 209f) * vec3<f32>(var_3.a, var_3.a, -296f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, var_3.a, 1105f) - vec3<f32>(-619f, var_3.a, var_3.a)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.a, 935f, var_3.a), vec3<f32>(-520f, -1000f, var_3.a)))))), Struct_1(!vec2<bool>(!global0.x, any(vec4<bool>(false, false, false, global0.x))), ~(~u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(289f + 1141f), _wgslsmith_f_op_f32(exp2(var_3.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-533f, -907f))))), vec3<f32>(_wgslsmith_f_op_f32(784f * -1000f), _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_4(-2075f);
    global2 = ~(~vec2<i32>(global2.x, ~(global2.x | global2.x)));
    let var_1 = -255f;
    var var_2 = !(!arg_2.b.a);
    var var_3 = (global2.x >> (min(1u, ~arg_2.b.b.x) % 32u)) & 64i;
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> vec4<f32> {
    var var_0 = func_4(Struct_3(func_2(), u_input.b.x, func_2().b, !select(!vec4<bool>(false, global0.x, true, true), select(vec4<bool>(true, false, false, global0.x), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(false, true, true, false)), !vec4<bool>(global0.x, false, true, false)), func_2().a), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - _wgslsmith_f_op_f32(f32(-1f) * -256f))), func_2().a.c.x, func_2().a.c.x), func_2());
    global2 = vec2<i32>(abs(countOneBits(_wgslsmith_add_i32(-global2.x, reverseBits(1i)))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 1u)]), arg_1.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(abs(-24457i), ~(-11159i)), global2.x)));
    var var_1 = Struct_4(var_0.a.a.d.x);
    var_0 = global3[_wgslsmith_index_u32(4294967295u, 21u)];
    let var_2 = ~u_input.b.x;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-384f, arg_0, arg_0, arg_0))))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.b.c.x, _wgslsmith_f_op_f32(arg_0 + var_1.a), _wgslsmith_f_op_f32(var_1.a - var_1.a), -1037f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_0.e.d.x, arg_0, -729f) * vec4<f32>(var_1.a, var_0.e.c.x, arg_0, -255f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-1541f, 316f, _wgslsmith_f_op_f32(min(1231f, -1000f)), 1f);
    var var_1 = u_input.c.yzy;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1194f, var_0.x, -839f, 1511f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -691f, 256f, var_0.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-551f, _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(182f * -431f), countOneBits(u_input.c.zxz))))) - vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(442f, var_0.x)))))));
    global2 = countOneBits(_wgslsmith_mult_vec2_i32(var_1.zz, u_input.c.zw));
    let var_2 = 1i > (_wgslsmith_dot_vec3_i32(vec3<i32>(max(u_input.a, var_1.x), ~(-1i), 6241i | var_1.x), vec3<i32>(max(global2.x, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(6827i, -18001i, var_1.x, u_input.a), global1[_wgslsmith_index_u32(u_input.b.x, 1u)]), -var_1.x)) ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -33950i), select(vec2<i32>(u_input.a, var_1.x), u_input.c.yy, global0.x)) ^ 0i));
    let var_3 = _wgslsmith_div_vec4_u32(select(~vec4<u32>(7995u, 0u, 108190u, 0u), vec4<u32>(min(u_input.b.x, u_input.b.x), u_input.b.x, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(8059u, 1u), vec2<u32>(u_input.b.x, u_input.b.x))), !(!vec4<bool>(var_2, var_2, true, var_2))), vec4<u32>(abs(u_input.b.x), ~u_input.b.x, min(u_input.b.x, 0u), u_input.b.x) | _wgslsmith_div_vec4_u32(~vec4<u32>(21166u, u_input.b.x, 24219u, u_input.b.x), vec4<u32>(71942u, u_input.b.x, 2601u, u_input.b.x))) | abs(_wgslsmith_div_vec4_u32(~(vec4<u32>(87483u, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 1u)), ~select(vec4<u32>(u_input.b.x, u_input.b.x, 46929u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), false)));
    var var_4 = ~max(select(_wgslsmith_div_vec3_u32(~vec3<u32>(var_3.x, u_input.b.x, 14926u), var_3.yxw), ~u_input.b & func_2().b.b, !(!vec3<bool>(true, global0.x, var_2))), ~var_3.ywz);
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1944f, -1660f, var_0.x, 707f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -123f, -891f, var_0.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-419f, var_0.x, var_0.x, var_0.x)))))), vec4<f32>(-944f, 640f, -333f, -254f))));
}

