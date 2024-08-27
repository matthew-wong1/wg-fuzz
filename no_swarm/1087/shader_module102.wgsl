struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 273f;

var<private> global1: vec3<i32> = vec3<i32>(-29669i, -43545i, 0i);

var<private> global2: array<Struct_1, 22>;

var<private> global3: Struct_2 = Struct_2(vec4<f32>(551f, -1613f, -1178f, -396f), Struct_1(vec4<u32>(19017u, 0u, 4294967295u, 1u), vec2<f32>(353f, 762f)), Struct_1(vec4<u32>(53767u, 25156u, 3368u, 4294967295u), vec2<f32>(-1724f, -1143f)), Struct_1(vec4<u32>(86050u, 971u, 4778u, 0u), vec2<f32>(-1118f, -1000f)));

var<private> global4: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec4<f32>(-248f, 1224f, 1000f, -225f), Struct_1(vec4<u32>(0u, 38130u, 0u, 0u), vec2<f32>(254f, 651f)), Struct_1(vec4<u32>(1u, 4294967295u, 50320u, 11218u), vec2<f32>(564f, 454f)), Struct_1(vec4<u32>(5131u, 4294967295u, 0u, 1u), vec2<f32>(-402f, 526f))), Struct_2(vec4<f32>(-1290f, -1705f, 341f, 224f), Struct_1(vec4<u32>(47848u, 4294967295u, 5255u, 0u), vec2<f32>(137f, -1349f)), Struct_1(vec4<u32>(96907u, 36568u, 0u, 1u), vec2<f32>(-269f, -648f)), Struct_1(vec4<u32>(4294967295u, 10032u, 25987u, 1564u), vec2<f32>(-357f, 832f))), Struct_2(vec4<f32>(395f, -542f, -1557f, 241f), Struct_1(vec4<u32>(15154u, 11375u, 6431u, 45161u), vec2<f32>(-523f, 655f)), Struct_1(vec4<u32>(82390u, 4294967295u, 0u, 0u), vec2<f32>(-1143f, -1590f)), Struct_1(vec4<u32>(17431u, 4294967295u, 1u, 53959u), vec2<f32>(2455f, -977f))), Struct_2(vec4<f32>(556f, 1926f, 106f, -1427f), Struct_1(vec4<u32>(1u, 27598u, 2456u, 4294967295u), vec2<f32>(-356f, -1000f)), Struct_1(vec4<u32>(4606u, 37290u, 0u, 1u), vec2<f32>(377f, 1567f)), Struct_1(vec4<u32>(13925u, 0u, 29168u, 0u), vec2<f32>(1423f, 320f))), Struct_2(vec4<f32>(-682f, -961f, 1104f, 823f), Struct_1(vec4<u32>(0u, 27623u, 44069u, 64504u), vec2<f32>(-236f, -472f)), Struct_1(vec4<u32>(49295u, 1u, 1u, 23854u), vec2<f32>(-1734f, -240f)), Struct_1(vec4<u32>(5068u, 13845u, 45077u, 4294967295u), vec2<f32>(1634f, -409f))), Struct_2(vec4<f32>(745f, -525f, 1318f, -142f), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec2<f32>(-180f, -1779f)), Struct_1(vec4<u32>(4294967295u, 1u, 48630u, 0u), vec2<f32>(684f, 314f)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 35801u), vec2<f32>(376f, -1208f))), Struct_2(vec4<f32>(-1182f, -1317f, -375f, -328f), Struct_1(vec4<u32>(1u, 1u, 23790u, 4294967295u), vec2<f32>(1000f, 597f)), Struct_1(vec4<u32>(47689u, 5257u, 0u, 0u), vec2<f32>(856f, -237f)), Struct_1(vec4<u32>(43416u, 75081u, 33014u, 1u), vec2<f32>(386f, -2210f))), Struct_2(vec4<f32>(-907f, -776f, -1000f, 1161f), Struct_1(vec4<u32>(22429u, 77495u, 4294967295u, 0u), vec2<f32>(1570f, -1000f)), Struct_1(vec4<u32>(9537u, 4294967295u, 0u, 4294967295u), vec2<f32>(-425f, 1523f)), Struct_1(vec4<u32>(1u, 0u, 104935u, 4294967295u), vec2<f32>(494f, -1000f))), Struct_2(vec4<f32>(1317f, -162f, -569f, 625f), Struct_1(vec4<u32>(40854u, 14687u, 4294967295u, 1u), vec2<f32>(1104f, -950f)), Struct_1(vec4<u32>(84004u, 1u, 13095u, 41809u), vec2<f32>(807f, 985f)), Struct_1(vec4<u32>(14354u, 4294967295u, 17118u, 4294967295u), vec2<f32>(-123f, -410f))), Struct_2(vec4<f32>(936f, 310f, -1643f, 830f), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 70525u), vec2<f32>(1000f, -324f)), Struct_1(vec4<u32>(18216u, 96076u, 11858u, 0u), vec2<f32>(-1789f, 211f)), Struct_1(vec4<u32>(38135u, 72266u, 1u, 1u), vec2<f32>(-994f, 133f))), Struct_2(vec4<f32>(2196f, 405f, 450f, 1237f), Struct_1(vec4<u32>(1u, 4294967295u, 7385u, 1u), vec2<f32>(337f, -334f)), Struct_1(vec4<u32>(7738u, 25244u, 16563u, 0u), vec2<f32>(1000f, -471f)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 9958u), vec2<f32>(-819f, -543f))), Struct_2(vec4<f32>(311f, -990f, 1723f, -1557f), Struct_1(vec4<u32>(4294967295u, 12568u, 0u, 54792u), vec2<f32>(1000f, -1512f)), Struct_1(vec4<u32>(4294967295u, 14784u, 1u, 1u), vec2<f32>(-365f, -715f)), Struct_1(vec4<u32>(19466u, 4294967295u, 1u, 1248u), vec2<f32>(-732f, 1637f))), Struct_2(vec4<f32>(-2287f, -674f, 708f, -873f), Struct_1(vec4<u32>(76838u, 4294967295u, 18101u, 66543u), vec2<f32>(-460f, 1458f)), Struct_1(vec4<u32>(4294967295u, 0u, 13686u, 27107u), vec2<f32>(330f, 107f)), Struct_1(vec4<u32>(0u, 7838u, 71119u, 1u), vec2<f32>(1000f, -373f))), Struct_2(vec4<f32>(-494f, 2272f, -201f, 343f), Struct_1(vec4<u32>(14691u, 4294967295u, 22422u, 0u), vec2<f32>(725f, -259f)), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 10668u), vec2<f32>(343f, 1000f)), Struct_1(vec4<u32>(1u, 23347u, 26425u, 1u), vec2<f32>(1072f, -1143f))), Struct_2(vec4<f32>(-464f, -287f, -806f, 413f), Struct_1(vec4<u32>(4294967295u, 1408u, 59550u, 39510u), vec2<f32>(-636f, -995f)), Struct_1(vec4<u32>(1959u, 48036u, 1511u, 15040u), vec2<f32>(-1059f, -1166f)), Struct_1(vec4<u32>(10824u, 28501u, 0u, 64581u), vec2<f32>(1292f, 132f))), Struct_2(vec4<f32>(-1323f, -189f, 1358f, -1138f), Struct_1(vec4<u32>(33941u, 1u, 8251u, 47577u), vec2<f32>(1989f, -1000f)), Struct_1(vec4<u32>(41341u, 24538u, 37709u, 29679u), vec2<f32>(-241f, 354f)), Struct_1(vec4<u32>(1u, 0u, 0u, 27138u), vec2<f32>(-1064f, -1094f))), Struct_2(vec4<f32>(-477f, -455f, -1708f, -1095f), Struct_1(vec4<u32>(4294967295u, 31890u, 79663u, 102872u), vec2<f32>(829f, 329f)), Struct_1(vec4<u32>(4294967295u, 85738u, 1u, 21815u), vec2<f32>(567f, -210f)), Struct_1(vec4<u32>(7190u, 61111u, 4294967295u, 1u), vec2<f32>(2054f, -1240f))), Struct_2(vec4<f32>(-2193f, 1000f, -1185f, 1223f), Struct_1(vec4<u32>(0u, 4294967295u, 4694u, 0u), vec2<f32>(500f, 147f)), Struct_1(vec4<u32>(0u, 19016u, 106661u, 12965u), vec2<f32>(170f, -204f)), Struct_1(vec4<u32>(6877u, 69766u, 99669u, 62812u), vec2<f32>(409f, -2214f))), Struct_2(vec4<f32>(1480f, -1062f, 144f, -3600f), Struct_1(vec4<u32>(45837u, 0u, 0u, 45257u), vec2<f32>(-478f, 1794f)), Struct_1(vec4<u32>(499u, 4294967295u, 4294967295u, 4689u), vec2<f32>(251f, -475f)), Struct_1(vec4<u32>(2166u, 1u, 1u, 0u), vec2<f32>(399f, -199f))), Struct_2(vec4<f32>(-1000f, -259f, 618f, -1361f), Struct_1(vec4<u32>(50715u, 54123u, 26507u, 32743u), vec2<f32>(-825f, 452f)), Struct_1(vec4<u32>(4069u, 0u, 25202u, 4294967295u), vec2<f32>(-1405f, 1000f)), Struct_1(vec4<u32>(31163u, 1u, 59778u, 26659u), vec2<f32>(-679f, 1000f))), Struct_2(vec4<f32>(178f, -542f, -1708f, -561f), Struct_1(vec4<u32>(6868u, 0u, 49243u, 118759u), vec2<f32>(-907f, -510f)), Struct_1(vec4<u32>(59253u, 94916u, 1u, 4294967295u), vec2<f32>(115f, -878f)), Struct_1(vec4<u32>(0u, 50005u, 4294967295u, 0u), vec2<f32>(1587f, 357f))), Struct_2(vec4<f32>(1000f, 401f, 570f, 1755f), Struct_1(vec4<u32>(247u, 626u, 1u, 10463u), vec2<f32>(-414f, -791f)), Struct_1(vec4<u32>(24105u, 0u, 1u, 1u), vec2<f32>(954f, -786f)), Struct_1(vec4<u32>(29856u, 0u, 64730u, 17124u), vec2<f32>(-1000f, 645f))), Struct_2(vec4<f32>(-1000f, -362f, -1000f, 416f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 23608u, 53383u), vec2<f32>(-411f, 634f)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 15046u), vec2<f32>(-130f, 160f)), Struct_1(vec4<u32>(0u, 72879u, 10894u, 30444u), vec2<f32>(-1646f, -1228f))), Struct_2(vec4<f32>(1079f, -836f, -1707f, 478f), Struct_1(vec4<u32>(24691u, 0u, 20164u, 4294967295u), vec2<f32>(-1660f, 1797f)), Struct_1(vec4<u32>(49406u, 21560u, 12031u, 4294967295u), vec2<f32>(613f, 598f)), Struct_1(vec4<u32>(4294967295u, 1041u, 1u, 65585u), vec2<f32>(-1000f, 575f))), Struct_2(vec4<f32>(-904f, 1009f, 855f, 120f), Struct_1(vec4<u32>(54531u, 1u, 2130u, 0u), vec2<f32>(-173f, 559f)), Struct_1(vec4<u32>(0u, 0u, 26493u, 166966u), vec2<f32>(329f, -954f)), Struct_1(vec4<u32>(1u, 11243u, 0u, 36575u), vec2<f32>(888f, -1394f))), Struct_2(vec4<f32>(-243f, 1414f, -2751f, 192f), Struct_1(vec4<u32>(4294967295u, 17866u, 22246u, 1u), vec2<f32>(369f, -842f)), Struct_1(vec4<u32>(17385u, 0u, 1u, 25555u), vec2<f32>(1011f, 226f)), Struct_1(vec4<u32>(1u, 4294967295u, 37649u, 1u), vec2<f32>(-414f, -404f))), Struct_2(vec4<f32>(-913f, -1253f, -390f, 1514f), Struct_1(vec4<u32>(20780u, 22605u, 1691u, 12896u), vec2<f32>(1108f, -971f)), Struct_1(vec4<u32>(89138u, 86818u, 1u, 4294967295u), vec2<f32>(-1669f, -182f)), Struct_1(vec4<u32>(45239u, 23152u, 0u, 1u), vec2<f32>(-277f, 528f))), Struct_2(vec4<f32>(-1877f, 1016f, -1000f, 244f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 10825u, 1u), vec2<f32>(1763f, -974f)), Struct_1(vec4<u32>(0u, 9029u, 52255u, 1u), vec2<f32>(1000f, 210f)), Struct_1(vec4<u32>(3228u, 4294967295u, 8723u, 4294967295u), vec2<f32>(-990f, 844f))), Struct_2(vec4<f32>(-1279f, -125f, -742f, 236f), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec2<f32>(-202f, -1300f)), Struct_1(vec4<u32>(51307u, 1u, 20970u, 60581u), vec2<f32>(204f, 156f)), Struct_1(vec4<u32>(35213u, 1u, 50099u, 4294967295u), vec2<f32>(-973f, 1000f))), Struct_2(vec4<f32>(-1832f, -409f, -1123f, 300f), Struct_1(vec4<u32>(60028u, 4294967295u, 51955u, 1u), vec2<f32>(136f, -1570f)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec2<f32>(-1393f, -288f)), Struct_1(vec4<u32>(28317u, 46609u, 69055u, 10075u), vec2<f32>(-1314f, 2320f))), Struct_2(vec4<f32>(-2835f, 565f, 757f, 903f), Struct_1(vec4<u32>(4294967295u, 11591u, 36702u, 0u), vec2<f32>(-752f, 175f)), Struct_1(vec4<u32>(4294967295u, 28212u, 1u, 4294967295u), vec2<f32>(150f, 1226f)), Struct_1(vec4<u32>(4782u, 7149u, 5535u, 16183u), vec2<f32>(471f, 1000f))));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global3 = global4[_wgslsmith_index_u32(global3.c.a.x, 31u)];
    let var_1 = Struct_1(global3.c.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.b * _wgslsmith_f_op_vec2_f32(-vec2<f32>(809f, 653f))))))));
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(~100220u, 22u)], global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, ~8404u), 31u)]);
    global1 = abs(-select(_wgslsmith_mod_vec3_i32(u_input.a, -u_input.a), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(arg_2, 0i, u_input.c)), u_input.a), vec3<bool>(true, arg_0.x, false)));
    return 115114u;
}

fn func_2() -> vec3<bool> {
    global3 = Struct_2(global3.a, Struct_1(countOneBits(_wgslsmith_add_vec4_u32(global3.c.a, vec4<u32>(0u, 36949u, u_input.b.x, 0u))) ^ vec4<u32>(~0u, global3.d.a.x, global3.b.a.x, 10767u), global3.c.b), Struct_1(~vec4<u32>(firstLeadingBit(4294967295u), func_3(vec2<bool>(true, false), Struct_1(vec4<u32>(global3.c.a.x, global3.c.a.x, 31655u, u_input.b.x), global3.d.b), 0i), 32363u, _wgslsmith_clamp_u32(u_input.b.x, 25582u, u_input.b.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), Struct_1(abs(min(vec4<u32>(45723u, global3.d.a.x, global3.c.a.x, global3.b.a.x), vec4<u32>(u_input.b.x, u_input.b.x, global3.c.a.x, 88853u))), vec2<f32>(_wgslsmith_f_op_f32(abs(global3.b.b.x)), global3.b.b.x)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.d.b.x + global3.d.b.x)))) + _wgslsmith_f_op_f32(select(-899f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -338f)), true))));
    global0 = global3.b.b.x;
    let var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 22u)];
    global0 = _wgslsmith_f_op_f32(global3.c.b.x + -166f);
    return vec3<bool>(all(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), (-29760i & global1.x) > abs(u_input.a.x), true, select(any(vec3<bool>(false, true, true)), true, -331f <= global3.d.b.x))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, u_input.c < u_input.c, true), select(false, true, true))), !all(vec2<bool>(true, true)));
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    global1 = ~firstLeadingBit(firstTrailingBit(u_input.a) ^ (select(vec3<i32>(global1.x, u_input.a.x, -2147483647i), u_input.a, arg_0.x) << (~u_input.b % vec3<u32>(32u))));
    let var_0 = arg_0.x;
    let var_1 = 1u;
    global3 = global4[_wgslsmith_index_u32(u_input.b.x, 31u)];
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(global3.c.a.x, 22u)], Struct_2(global3.a, global3.c, global3.d, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.c.a.x, global3.d.a.x, 1u, var_1) | vec4<u32>(global3.b.a.x, 160685u, var_1, 0u), min(vec4<u32>(4294967295u, var_1, var_1, var_1), vec4<u32>(52352u, 0u, global3.c.a.x, 1u))), _wgslsmith_f_op_vec2_f32(-global3.b.b))));
    return global4[_wgslsmith_index_u32(~0u, 31u)];
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: bool) -> u32 {
    global2 = array<Struct_1, 22>();
    global4 = array<Struct_2, 31>();
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(firstTrailingBit(~global3.d.a), global3.d.a) | _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2, arg_2, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 48461u, arg_2, 17861u), vec4<u32>(u_input.b.x, global3.b.a.x, arg_2, 12340u))), arg_1.yy);
    let var_1 = (~u_input.a.x << (u_input.b.x % 32u)) ^ global1.x;
    global3 = func_4(func_2());
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global3.a, global2[_wgslsmith_index_u32(func_1(-5635i, _wgslsmith_f_op_vec3_f32(global3.a.wyz + global3.a.wwy), ~_wgslsmith_dot_vec3_u32(global3.c.a.zww, vec3<u32>(24075u, global3.d.a.x, u_input.b.x)), !(~u_input.b.x != (0u ^ global3.d.a.x))), 22u)], Struct_1(global3.d.a, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-704f + global3.c.b.x))), 1521f)), func_4(select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec3<bool>(false, false, false)), any(vec3<bool>(true, false, false))), !func_2())).d);
    global2 = array<Struct_1, 22>();
    let var_0 = global3.d;
    let var_1 = func_4(!select(select(vec3<bool>(true, true, true), func_2(), false), vec3<bool>(false, var_0.a.x >= 1u, true), any(vec3<bool>(true, true, true))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_1.d.b.x, -608f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))));
    var var_3 = Struct_4(vec3<bool>(any(vec3<bool>(true, true, true)), !(0u == u_input.b.x), true), Struct_3(global3.c, Struct_2(vec4<f32>(-211f, _wgslsmith_f_op_f32(ceil(var_1.c.b.x)), _wgslsmith_f_op_f32(var_0.b.x + -445f), -174f), var_1.d, func_4(vec3<bool>(true, true, false)).d, Struct_1(global3.d.a, var_2))));
    var var_4 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, var_3.b.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b.x) * var_3.b.a.b.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1063f, var_2.x), 611f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f - var_0.b.x)))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(102f))), var_3.b.b.a.x, true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-792f - -1094f), _wgslsmith_f_op_f32(-997f + 2401f))))));
}

