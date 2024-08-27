struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<f32>(1000f, -882f), false, vec2<i32>(i32(-2147483648), -63614i), Struct_1(vec4<f32>(1000f, 580f, -178f, -674f), 1824f, vec2<bool>(false, true), vec3<u32>(4294967295u, 1u, 1u), 0i), vec3<f32>(1596f, -1144f, 1855f)), Struct_2(vec2<f32>(932f, -190f), false, vec2<i32>(1i, 1i), Struct_1(vec4<f32>(-1459f, 163f, -278f, 1154f), 1407f, vec2<bool>(false, false), vec3<u32>(5010u, 1u, 0u), 0i), vec3<f32>(-306f, 203f, 2285f)), Struct_2(vec2<f32>(-602f, 388f), true, vec2<i32>(0i, -1i), Struct_1(vec4<f32>(-1000f, -444f, -1000f, 629f), 719f, vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, 42326u), 2147483647i), vec3<f32>(742f, -3077f, -1509f)), Struct_2(vec2<f32>(-238f, -2047f), true, vec2<i32>(-27062i, 13711i), Struct_1(vec4<f32>(-614f, -1000f, 1000f, 1224f), 1920f, vec2<bool>(true, true), vec3<u32>(6421u, 34554u, 4294967295u), -1i), vec3<f32>(-805f, -901f, -811f)), Struct_2(vec2<f32>(-1520f, -805f), true, vec2<i32>(1i, -28331i), Struct_1(vec4<f32>(1324f, -106f, -1326f, 1212f), -411f, vec2<bool>(false, false), vec3<u32>(55029u, 11143u, 0u), 39593i), vec3<f32>(-1309f, 310f, 1000f)), Struct_2(vec2<f32>(1000f, 1360f), false, vec2<i32>(23188i, 32664i), Struct_1(vec4<f32>(-1915f, -100f, 344f, 452f), -815f, vec2<bool>(true, true), vec3<u32>(30595u, 47400u, 36154u), -1i), vec3<f32>(1187f, 814f, -1952f)), Struct_2(vec2<f32>(1010f, 821f), true, vec2<i32>(i32(-2147483648), 11118i), Struct_1(vec4<f32>(-1460f, 793f, -776f, -1818f), -3141f, vec2<bool>(false, true), vec3<u32>(14515u, 0u, 18161u), i32(-2147483648)), vec3<f32>(-158f, 1000f, 263f)), Struct_2(vec2<f32>(600f, -298f), false, vec2<i32>(2147483647i, 1i), Struct_1(vec4<f32>(1765f, -791f, 1136f, 2757f), 567f, vec2<bool>(true, false), vec3<u32>(26537u, 23656u, 1u), 15858i), vec3<f32>(-355f, -1000f, -1836f)), Struct_2(vec2<f32>(-942f, -773f), false, vec2<i32>(-1i, 18067i), Struct_1(vec4<f32>(-1521f, -282f, 1379f, -175f), -203f, vec2<bool>(true, true), vec3<u32>(40098u, 1u, 29498u), 1i), vec3<f32>(751f, -544f, -548f)), Struct_2(vec2<f32>(1114f, 265f), false, vec2<i32>(-25227i, 102827i), Struct_1(vec4<f32>(-1264f, -1185f, -142f, 1000f), -1000f, vec2<bool>(true, true), vec3<u32>(17133u, 22550u, 5057u), -3312i), vec3<f32>(1310f, -1000f, 1428f)), Struct_2(vec2<f32>(-377f, -132f), false, vec2<i32>(-1i, 7963i), Struct_1(vec4<f32>(-1434f, 646f, -409f, -584f), -1000f, vec2<bool>(false, true), vec3<u32>(46055u, 31641u, 43980u), -78822i), vec3<f32>(614f, 273f, -673f)), Struct_2(vec2<f32>(-319f, -1456f), true, vec2<i32>(14586i, i32(-2147483648)), Struct_1(vec4<f32>(909f, -1000f, 785f, 415f), 365f, vec2<bool>(true, true), vec3<u32>(0u, 4294967295u, 0u), 717i), vec3<f32>(881f, -963f, -371f)), Struct_2(vec2<f32>(926f, -329f), false, vec2<i32>(-1i, -9344i), Struct_1(vec4<f32>(1654f, -1000f, 1651f, 550f), 146f, vec2<bool>(false, true), vec3<u32>(1u, 4294967295u, 0u), 2147483647i), vec3<f32>(429f, -596f, -1025f)), Struct_2(vec2<f32>(-450f, 1195f), true, vec2<i32>(30225i, 32906i), Struct_1(vec4<f32>(-320f, -172f, 2666f, 1000f), 1000f, vec2<bool>(false, false), vec3<u32>(22519u, 13218u, 1u), -9447i), vec3<f32>(235f, 290f, -1936f)), Struct_2(vec2<f32>(666f, -544f), true, vec2<i32>(-50552i, -36458i), Struct_1(vec4<f32>(1267f, -1000f, 1000f, -1641f), 1757f, vec2<bool>(false, false), vec3<u32>(0u, 7005u, 1u), 2147483647i), vec3<f32>(1032f, 1439f, 472f)), Struct_2(vec2<f32>(1077f, 484f), false, vec2<i32>(-19340i, 2147483647i), Struct_1(vec4<f32>(608f, -1693f, 1000f, -977f), -187f, vec2<bool>(false, true), vec3<u32>(0u, 0u, 16393u), -4605i), vec3<f32>(1617f, 130f, 682f)), Struct_2(vec2<f32>(-1612f, -392f), false, vec2<i32>(-1271i, 2147483647i), Struct_1(vec4<f32>(-741f, -1649f, 1169f, -344f), 679f, vec2<bool>(false, false), vec3<u32>(1u, 1178u, 47054u), -23856i), vec3<f32>(-735f, 505f, -388f)), Struct_2(vec2<f32>(1716f, 1158f), false, vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec4<f32>(1247f, -734f, 1276f, -558f), 1252f, vec2<bool>(false, true), vec3<u32>(70967u, 4294967295u, 4348u), i32(-2147483648)), vec3<f32>(327f, -1000f, -1397f)), Struct_2(vec2<f32>(1000f, 949f), true, vec2<i32>(-21124i, 7580i), Struct_1(vec4<f32>(-1502f, -871f, -540f, -1000f), -1203f, vec2<bool>(false, true), vec3<u32>(4294967295u, 8677u, 1u), 0i), vec3<f32>(-1175f, -1449f, 1360f)), Struct_2(vec2<f32>(493f, 953f), true, vec2<i32>(-26198i, 25311i), Struct_1(vec4<f32>(948f, 818f, -2508f, -132f), 1044f, vec2<bool>(false, true), vec3<u32>(1u, 36640u, 18404u), -1i), vec3<f32>(-565f, 626f, 593f)), Struct_2(vec2<f32>(-661f, 537f), false, vec2<i32>(16748i, 8412i), Struct_1(vec4<f32>(417f, 1522f, -1026f, -1000f), 1298f, vec2<bool>(true, false), vec3<u32>(4294967295u, 31639u, 0u), 0i), vec3<f32>(1000f, -844f, 1287f)), Struct_2(vec2<f32>(-762f, 737f), false, vec2<i32>(5429i, 0i), Struct_1(vec4<f32>(1328f, -572f, 1000f, -2149f), -1164f, vec2<bool>(false, false), vec3<u32>(0u, 4294967295u, 4294967295u), -1i), vec3<f32>(-393f, 102f, -463f)), Struct_2(vec2<f32>(1196f, 1000f), false, vec2<i32>(-1i, 1i), Struct_1(vec4<f32>(-841f, -2395f, 401f, 473f), 1601f, vec2<bool>(false, false), vec3<u32>(2555u, 34168u, 0u), -390i), vec3<f32>(-856f, 449f, 856f)), Struct_2(vec2<f32>(1000f, -605f), false, vec2<i32>(-21636i, 2147483647i), Struct_1(vec4<f32>(-2001f, -554f, 1097f, -704f), 892f, vec2<bool>(true, true), vec3<u32>(4294967295u, 57998u, 11263u), i32(-2147483648)), vec3<f32>(-279f, 414f, -109f)), Struct_2(vec2<f32>(2512f, 531f), true, vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec4<f32>(-1723f, 1000f, 675f, 620f), 106f, vec2<bool>(true, true), vec3<u32>(30262u, 123110u, 4294967295u), 22074i), vec3<f32>(398f, 169f, 1035f)), Struct_2(vec2<f32>(995f, 1399f), false, vec2<i32>(56953i, i32(-2147483648)), Struct_1(vec4<f32>(293f, -622f, -767f, -453f), -2120f, vec2<bool>(true, true), vec3<u32>(9320u, 36925u, 1u), -6716i), vec3<f32>(-109f, -808f, -1000f)), Struct_2(vec2<f32>(1000f, -131f), true, vec2<i32>(i32(-2147483648), 3243i), Struct_1(vec4<f32>(-994f, 3064f, -1104f, 172f), -817f, vec2<bool>(true, true), vec3<u32>(1u, 11346u, 44352u), -1i), vec3<f32>(317f, 557f, -420f)));

var<private> global1: array<Struct_3, 32>;

var<private> global2: bool;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<f32>(-311f, -2083f, -449f, 357f), 999f, vec2<bool>(false, false), vec3<u32>(1u, 24472u, 7691u), 1i), Struct_1(vec4<f32>(206f, 494f, 1069f, -1174f), 830f, vec2<bool>(true, true), vec3<u32>(4294967295u, 25816u, 32692u), 19873i), Struct_1(vec4<f32>(1527f, -446f, -379f, -393f), -1538f, vec2<bool>(true, false), vec3<u32>(61034u, 1u, 42578u), 33352i), Struct_1(vec4<f32>(1332f, 1100f, 1073f, -358f), -602f, vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 1u), -19486i), Struct_1(vec4<f32>(610f, 1000f, -930f, -126f), 803f, vec2<bool>(true, true), vec3<u32>(0u, 90034u, 1u), 1i), Struct_1(vec4<f32>(958f, -2385f, -390f, 1589f), -550f, vec2<bool>(false, false), vec3<u32>(31017u, 4294967295u, 4294967295u), 0i), Struct_1(vec4<f32>(479f, -1190f, 3011f, -1900f), -104f, vec2<bool>(true, false), vec3<u32>(9046u, 1u, 0u), -1i), Struct_1(vec4<f32>(142f, -1669f, 505f, 1000f), -2028f, vec2<bool>(true, false), vec3<u32>(1u, 43076u, 4294967295u), 39256i), Struct_1(vec4<f32>(412f, -1000f, 1000f, -521f), -1023f, vec2<bool>(false, true), vec3<u32>(18562u, 13265u, 13647u), 1i), Struct_1(vec4<f32>(-218f, 1244f, -140f, 904f), 1175f, vec2<bool>(false, true), vec3<u32>(0u, 0u, 0u), -16466i), Struct_1(vec4<f32>(1321f, 560f, 790f, -522f), 900f, vec2<bool>(false, true), vec3<u32>(0u, 1u, 0u), 0i), Struct_1(vec4<f32>(1358f, 730f, 790f, 575f), 153f, vec2<bool>(false, true), vec3<u32>(4294967295u, 16913u, 4294967295u), -1i), Struct_1(vec4<f32>(-846f, -293f, -578f, 762f), -1700f, vec2<bool>(false, false), vec3<u32>(0u, 1u, 1u), 52361i), Struct_1(vec4<f32>(1710f, 346f, -841f, -797f), -638f, vec2<bool>(false, false), vec3<u32>(4294967295u, 53528u, 4294967295u), 2147483647i), Struct_1(vec4<f32>(836f, 399f, -105f, 948f), 109f, vec2<bool>(false, false), vec3<u32>(61182u, 77128u, 4294967295u), i32(-2147483648)), Struct_1(vec4<f32>(3170f, -484f, 549f, -2257f), 1119f, vec2<bool>(true, false), vec3<u32>(37351u, 30669u, 0u), -11079i), Struct_1(vec4<f32>(-1239f, 303f, 235f, -289f), 344f, vec2<bool>(true, true), vec3<u32>(43891u, 4294967295u, 47918u), 2147483647i), Struct_1(vec4<f32>(915f, 672f, 457f, 200f), 1595f, vec2<bool>(true, true), vec3<u32>(8559u, 10606u, 1u), 25305i), Struct_1(vec4<f32>(-819f, -716f, 325f, -784f), 1000f, vec2<bool>(true, true), vec3<u32>(4294967295u, 4294967295u, 0u), 18947i));

var<private> global4: vec3<i32> = vec3<i32>(37137i, 1i, -15483i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    let var_0 = firstLeadingBit(_wgslsmith_add_i32(global4.x << (2175u % 32u), -_wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, 0i, global4.x), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, global4.x), vec3<i32>(global4.x, 38332i, 0i)))));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1584f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -879f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(106f)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(447f, -814f))), -760f);
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 32u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(522f, -373f, 746f, var_1.x)), var_1.x, vec2<bool>(false, false), ~vec3<u32>(_wgslsmith_mod_u32(abs(1074u), _wgslsmith_dot_vec3_u32(var_2.b.d, var_2.a.d)), _wgslsmith_mod_u32(0u, ~6570u), var_2.a.d.x), 15100i);
    var var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1384f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a.b * 1633f))), var_2.b.b) - vec3<f32>(-390f, _wgslsmith_f_op_f32(-var_3.a.x), var_2.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1321f, 1648f, -1341f) * var_1.yww) * vec3<f32>(1067f, var_3.a.x, var_1.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-456f, -153f, var_2.a.b))), !select(vec3<bool>(var_3.c.x, var_2.b.c.x, var_2.b.c.x), vec3<bool>(false, true, true), false))))));
    return _wgslsmith_f_op_f32(abs(var_4.x));
}

fn func_2() -> f32 {
    global0 = array<Struct_2, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(677f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-224f, 1359f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3())))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-670f, -394f, -920f) - vec3<f32>(_wgslsmith_f_op_f32(min(-1447f, -858f)), _wgslsmith_f_op_f32(-495f + 614f), _wgslsmith_f_op_f32(1320f + -577f)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1288f - 727f), 852f), -1995f, 1959f), true)));
    var var_1 = Struct_4(vec4<bool>((_wgslsmith_clamp_i32(-41314i, global4.x, -62557i) == 1i) & true, false, true, _wgslsmith_f_op_f32(ceil(-247f)) != 457f), -firstTrailingBit(0i) & global4.x, ~(-(-global4.x | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -11762i, global4.x), vec3<i32>(-16925i, global4.x, 0i)))), ~firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(26375u, 27470u)), ~0u, 1u, u_input.a)));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1511f, 695f) + vec4<f32>(1010f, -1079f, 1025f, -442f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(852f, var_0.x, var_0.x, var_0.x) - vec4<f32>(772f, var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_f32(sign(var_0.x)), vec2<bool>(false, any(select(var_1.a.xy, vec2<bool>(var_1.a.x, false), vec2<bool>(false, var_1.a.x)))), countOneBits(vec3<u32>(~u_input.a, ~u_input.a, var_1.d.x & 4294967295u)), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, -23726i, var_1.b, var_1.c), vec4<i32>(global4.x, 1i, 0i, global4.x))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(var_0.x)), var_0.x), vec4<f32>(231f, _wgslsmith_f_op_f32(func_3()), var_0.x, var_0.x)), var_0.x, !(!var_1.a.wz), var_1.d.yyy, ~(~var_1.b << (var_1.d.x % 32u))), any(select(!var_1.a, !vec4<bool>(true, true, var_1.a.x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x), all(var_1.a.zw)))));
    var_2 = global1[_wgslsmith_index_u32(var_2.b.d.x, 32u)];
    return _wgslsmith_f_op_f32(ceil(-137f));
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = Struct_4(!select(select(vec4<bool>(false, false, false, false), !vec4<bool>(arg_0.b, arg_0.b, false, arg_0.d.c.x), vec4<bool>(arg_0.d.c.x, arg_0.b, arg_0.b, true)), select(vec4<bool>(true, false, arg_0.b, true), !vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), any(vec3<bool>(arg_0.d.c.x, false, true))), !(!vec4<bool>(false, false, arg_0.d.c.x, arg_0.b))), select(~(~_wgslsmith_mult_i32(-1i, global4.x)), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(177f - 779f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - -946f)), countOneBits(global4.x << (u_input.a % 32u)), vec4<u32>(_wgslsmith_div_u32(arg_0.d.d.x >> (~19376u % 32u), 39402u), u_input.a ^ (arg_0.d.d.x ^ 0u), arg_0.d.d.x, arg_0.d.d.x));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-310f, _wgslsmith_f_op_f32(-arg_0.e.x), any(!vec4<bool>(true, arg_0.d.c.x, arg_0.b, var_0.a.x)))), arg_0.d.a.x));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(arg_0.e.yy)), false, ~_wgslsmith_mult_vec2_i32(vec2<i32>(-var_0.c, -2147483647i), -(~global4.xx)), Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.d.a + vec4<f32>(_wgslsmith_f_op_f32(func_2()), arg_0.e.x, _wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1662f))), _wgslsmith_f_op_f32(-178f * arg_0.d.b), !arg_0.d.c, vec3<u32>(4294967295u, u_input.a, select(var_0.d.x, u_input.a, arg_0.d.d.x <= u_input.a)), -(var_0.c | -global4.x)), arg_0.d.a.wyx);
    global4 = vec3<i32>(1i, 16653i & var_0.c, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-global4.x, _wgslsmith_mult_i32(var_2.d.e, arg_0.c.x), select(-702i, -7728i, true), var_2.d.e), vec4<i32>(arg_0.c.x, -3579i, ~var_0.c, 11151i)));
    global0 = array<Struct_2, 27>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = abs(~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-2147483647i, global4.x, 16771i)), vec3<i32>(global4.x, -2147483647i, global4.x)), vec3<i32>(32558i, countOneBits(2147483647i), i32(-1i) * -21730i)));
    global2 = -global4.x > -2147483647i;
    let var_0 = Struct_4(vec4<bool>(func_1(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2277f, -655f)), true, global4.yx, Struct_1(vec4<f32>(-220f, 2129f, 416f, 1000f), 587f, vec2<bool>(true, true), vec3<u32>(u_input.a, 0u, 57875u), -53926i), vec3<f32>(-744f, 520f, -1223f))), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), false, all(vec2<bool>(true, func_1(global0[_wgslsmith_index_u32(4294967295u, 27u)])))), global4.x, -2147483647i, _wgslsmith_div_vec4_u32(~vec4<u32>(~u_input.a, 57145u ^ u_input.a, ~u_input.a, select(u_input.a, 15446u, true)), min(max(vec4<u32>(u_input.a, u_input.a, 43030u, 0u), abs(vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), vec4<u32>(~60650u, 17579u, u_input.a, u_input.a >> (0u % 32u)))));
    global1 = array<Struct_3, 32>();
    let var_1 = any(select(vec3<bool>(var_0.a.x, true, all(select(var_0.a.zx, vec2<bool>(false, true), var_0.a.yz))), select(select(!var_0.a.xzz, vec3<bool>(var_0.a.x, var_0.a.x, true), vec3<bool>(var_0.a.x, true, var_0.a.x)), select(select(var_0.a.wzy, var_0.a.wwz, var_0.a.x), var_0.a.wwz, func_1(global0[_wgslsmith_index_u32(var_0.d.x, 27u)])), !var_0.a.zww), !(!(!var_0.a.xzw))));
    global0 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-621f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_div_f32(-575f, -1123f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-430f + -1000f))), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-395f, 1f, _wgslsmith_f_op_f32(min(-302f, -510f)), _wgslsmith_f_op_f32(373f * 263f))), var_0.a)), 2147483647i);
}

