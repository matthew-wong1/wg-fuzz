struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<Struct_4, 15>;

var<private> global2: array<Struct_4, 21>;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<f32>(751f, -235f, -2040f), 20394u, vec4<f32>(-873f, 813f, 368f, -696f), vec4<i32>(11446i, 1i, -2224i, -12087i)), Struct_1(vec3<f32>(1500f, 138f, 926f), 1u, vec4<f32>(-1290f, 174f, -492f, -1929f), vec4<i32>(32332i, 0i, -3678i, 2147483647i)), Struct_1(vec3<f32>(-1498f, -1037f, -2379f), 21189u, vec4<f32>(578f, 1000f, 612f, -167f), vec4<i32>(1i, i32(-2147483648), 38370i, 82i)), Struct_1(vec3<f32>(-1701f, -539f, 1417f), 21923u, vec4<f32>(-249f, -904f, -1171f, -163f), vec4<i32>(23828i, -85601i, 2147483647i, i32(-2147483648))), Struct_1(vec3<f32>(-578f, 1530f, -1325f), 25185u, vec4<f32>(1589f, 737f, -443f, 443f), vec4<i32>(-17679i, -1i, -1i, 2147483647i)), Struct_1(vec3<f32>(-256f, -120f, -331f), 303u, vec4<f32>(371f, 599f, 740f, 1729f), vec4<i32>(13387i, 1i, -1i, 2147483647i)), Struct_1(vec3<f32>(-685f, -656f, -2421f), 4294967295u, vec4<f32>(1086f, 1322f, 1126f, -798f), vec4<i32>(72259i, i32(-2147483648), 54966i, i32(-2147483648))), Struct_1(vec3<f32>(1332f, -167f, -935f), 31452u, vec4<f32>(1867f, -1031f, 271f, 2193f), vec4<i32>(i32(-2147483648), 0i, -74916i, 0i)), Struct_1(vec3<f32>(-1270f, 1471f, -456f), 92747u, vec4<f32>(-186f, -484f, 113f, -412f), vec4<i32>(-1i, i32(-2147483648), -19356i, -6832i)), Struct_1(vec3<f32>(-241f, -110f, 845f), 0u, vec4<f32>(903f, 1225f, -1386f, 973f), vec4<i32>(-39117i, 2147483647i, 1i, -11991i)), Struct_1(vec3<f32>(682f, -491f, 456f), 47090u, vec4<f32>(-1000f, 805f, -1172f, 1218f), vec4<i32>(-14424i, 1i, 2081i, 41772i)), Struct_1(vec3<f32>(-557f, 635f, -616f), 10004u, vec4<f32>(133f, 194f, -1169f, 1350f), vec4<i32>(58221i, 22050i, -19727i, 12660i)), Struct_1(vec3<f32>(-125f, -850f, 750f), 31775u, vec4<f32>(1651f, 895f, 436f, 944f), vec4<i32>(12891i, 941i, 50677i, 1658i)), Struct_1(vec3<f32>(1124f, 814f, -160f), 0u, vec4<f32>(1007f, -324f, 274f, -1000f), vec4<i32>(-52909i, 2147483647i, -33284i, 27707i)), Struct_1(vec3<f32>(-1000f, 1711f, -111f), 33340u, vec4<f32>(-1667f, -732f, 1000f, 650f), vec4<i32>(25126i, 1i, 2147483647i, -21491i)), Struct_1(vec3<f32>(1312f, 1282f, 1000f), 4294967295u, vec4<f32>(-714f, -1224f, 2040f, -217f), vec4<i32>(9980i, -473i, -11217i, 2147483647i)), Struct_1(vec3<f32>(-2486f, -803f, -286f), 57491u, vec4<f32>(-988f, -159f, -289f, -665f), vec4<i32>(1i, -31265i, 1i, 2147483647i)), Struct_1(vec3<f32>(608f, -981f, 2010f), 4294967295u, vec4<f32>(-549f, 374f, -450f, -997f), vec4<i32>(-42690i, 1i, -2815i, 50787i)), Struct_1(vec3<f32>(-452f, -448f, -1078f), 4294967295u, vec4<f32>(682f, -342f, -1377f, 788f), vec4<i32>(40298i, -39731i, -61070i, 0i)), Struct_1(vec3<f32>(939f, -1000f, 1757f), 4294967295u, vec4<f32>(-355f, -1505f, 1613f, -324f), vec4<i32>(-28321i, 2147483647i, 31789i, 33641i)), Struct_1(vec3<f32>(-765f, -516f, 395f), 58231u, vec4<f32>(-498f, -249f, 574f, -393f), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 23099i)), Struct_1(vec3<f32>(-632f, -1000f, -1049f), 4294967295u, vec4<f32>(340f, 1005f, 328f, 239f), vec4<i32>(i32(-2147483648), -23013i, -30596i, 1i)), Struct_1(vec3<f32>(752f, 2150f, 491f), 4294967295u, vec4<f32>(1025f, -537f, 945f, -1000f), vec4<i32>(0i, 11816i, 87978i, 1i)), Struct_1(vec3<f32>(2083f, -555f, -826f), 35409u, vec4<f32>(1275f, -612f, -1062f, -1423f), vec4<i32>(-9006i, 65927i, -4084i, -24546i)), Struct_1(vec3<f32>(-581f, -723f, 684f), 0u, vec4<f32>(-165f, -768f, -2485f, 1562f), vec4<i32>(-730i, -45883i, -13613i, 0i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> vec4<bool> {
    global3 = array<Struct_1, 25>();
    var var_0 = Struct_4(Struct_2(_wgslsmith_div_vec3_u32(select(abs(vec3<u32>(u_input.b, 4294967295u, arg_0)), ~vec3<u32>(arg_0, arg_0, u_input.b), all(vec4<bool>(false, arg_1.x, false, arg_1.x))), (vec3<u32>(u_input.b, 27452u, u_input.b) | vec3<u32>(u_input.b, 10262u, 36004u)) >> (~vec3<u32>(3793u, u_input.b, arg_0) % vec3<u32>(32u))), ~reverseBits(46803u), vec2<bool>(arg_1.x, select(true, all(vec2<bool>(false, arg_1.x)), true & arg_1.x))));
    global2 = array<Struct_4, 21>();
    let var_1 = Struct_2(vec3<u32>(_wgslsmith_mult_u32(~arg_0, ~_wgslsmith_div_u32(arg_0, 136926u)), _wgslsmith_sub_u32(~abs(arg_0), var_0.a.b), var_0.a.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(5186u, var_0.a.b, var_0.a.b, var_0.a.a.x), vec4<u32>(arg_0, arg_0, var_0.a.b, 112577u)), _wgslsmith_div_vec4_u32(vec4<u32>(73031u, u_input.b, 81463u, u_input.b), vec4<u32>(4294967295u, 26751u, var_0.a.b, 1u)), reverseBits(vec4<u32>(35977u, var_0.a.a.x, arg_0, u_input.b))), firstTrailingBit(vec4<u32>(u_input.b, u_input.b, 12170u, var_0.a.a.x) & vec4<u32>(arg_0, 2769u, arg_0, 4294967295u))), ~vec4<u32>(select(118233u, var_0.a.b, false), u_input.b ^ arg_0, var_0.a.b, 4294967295u)), select(!arg_1.xy, vec2<bool>(var_0.a.c.x, all(select(vec3<bool>(true, true, arg_1.x), arg_1, false))), true & !(!arg_1.x)));
    var var_2 = 0i > u_input.a;
    return select(!select(!select(vec4<bool>(true, true, arg_1.x, true), vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(var_0.a.c.x, true, var_1.c.x, true)), vec4<bool>(var_1.c.x, all(vec4<bool>(var_0.a.c.x, false, var_1.c.x, false)), arg_1.x, false || arg_1.x), false), select(vec4<bool>(var_0.a.c.x, false, var_1.c.x, all(!vec2<bool>(var_0.a.c.x, true))), !vec4<bool>(var_1.c.x, var_1.c.x, var_0.a.c.x, false), select(1u, var_0.a.b | 1u, false) <= firstLeadingBit(var_1.a.x)), (~reverseBits(u_input.a) >= ~reverseBits(-2147483647i)) & true);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    global2 = array<Struct_4, 21>();
    global3 = array<Struct_1, 25>();
    let var_0 = 332f;
    global2 = array<Struct_4, 21>();
    global3 = array<Struct_1, 25>();
    return vec4<bool>(select(true, !(_wgslsmith_f_op_f32(f32(-1f) * -141f) < _wgslsmith_f_op_f32(-var_0)), arg_2 || (429f >= _wgslsmith_f_op_f32(446f * arg_1.c.x))), any(func_3(abs(arg_1.b), arg_0.zww).wyw), true, all(vec3<bool>(true, arg_0.x || true, 0i >= u_input.a)) & (true | any(arg_0.xy)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<i32>) -> Struct_4 {
    global2 = array<Struct_4, 21>();
    let var_0 = !(u_input.a != ~(-1i));
    global1 = array<Struct_4, 15>();
    var var_1 = select(func_4(select(select(vec4<bool>(var_0, false, var_0, false), select(vec4<bool>(true, var_0, false, true), vec4<bool>(true, var_0, false, var_0), vec4<bool>(false, false, var_0, var_0)), vec4<bool>(false, true, var_0, false)), !func_3(0u, vec3<bool>(var_0, var_0, var_0)), all(select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), var_0))), global3[_wgslsmith_index_u32(43291u, 25u)], var_0), !select(func_4(func_4(vec4<bool>(var_0, var_0, false, true), Struct_1(vec3<f32>(1213f, -1393f, -423f), 4294967295u, vec4<f32>(1000f, -548f, 151f, 2491f), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], 1i, global0[_wgslsmith_index_u32(arg_1, 3u)], arg_2.x)), var_0), global3[_wgslsmith_index_u32(45671u, 25u)], any(vec4<bool>(true, var_0, var_0, var_0))), vec4<bool>(true, select(var_0, var_0, var_0), var_0, var_0), vec4<bool>(true, var_0, false, func_4(vec4<bool>(true, var_0, true, true), Struct_1(vec3<f32>(-420f, -1857f, 115f), u_input.b, vec4<f32>(1037f, -237f, -1736f, -1000f), vec4<i32>(arg_2.x, global0[_wgslsmith_index_u32(55405u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(arg_1, 3u)])), false).x)), select(func_3(reverseBits(u_input.b) >> (abs(1u) % 32u), select(vec3<bool>(var_0, var_0, false), !vec3<bool>(var_0, false, var_0), false)), !select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(false, false, var_0, false), true), true));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2092f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(474f, -144f)) + _wgslsmith_f_op_f32(min(1123f, -1094f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-486f * 1925f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-342f)) - _wgslsmith_f_op_f32(select(391f, -694f, false)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), 311f)));
    return Struct_4(Struct_2(~(~(~vec3<u32>(38176u, 1u, u_input.b))), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1) & vec2<u32>(4294967295u, 8730u), _wgslsmith_add_vec2_u32(vec2<u32>(28226u, u_input.b), vec2<u32>(arg_1, 50923u)))), vec2<bool>(var_1.x, func_3(firstTrailingBit(4294967295u), vec3<bool>(false, true, false)).x)));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: u32, arg_3: vec4<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f)));
    let var_1 = -112f;
    var var_2 = true;
    return ~(~arg_3.wzw << (vec3<u32>(firstLeadingBit(~4234u), arg_1.a.a.x, _wgslsmith_sub_u32(arg_3.x, arg_2)) % vec3<u32>(32u)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = func_2(_wgslsmith_mod_vec3_i32(~vec3<i32>(4161i, u_input.a, 1i), ~reverseBits(arg_0.d.wyw)) ^ -(~arg_0.d.wyw), func_2(arg_0.d.xxx, 1u ^ _wgslsmith_mod_u32(u_input.b, firstTrailingBit(0u)), vec3<i32>(global0[_wgslsmith_index_u32(77006u, 3u)], _wgslsmith_mod_i32(u_input.a, u_input.a), global0[_wgslsmith_index_u32(1u, 3u)]) << (arg_2 % vec3<u32>(32u))).a.b, vec3<i32>(u_input.a, -firstTrailingBit(_wgslsmith_mult_i32(11403i, 0i)), u_input.a)).a.a;
    var var_1 = vec4<i32>(41367i, _wgslsmith_div_i32(~(-(-1i | arg_0.d.x)), min(i32(-1i) * -arg_0.d.x, _wgslsmith_add_i32(~global0[_wgslsmith_index_u32(29820u, 3u)], ~(-38386i)))), u_input.a, ~reverseBits(~abs(arg_0.d.x)));
    global0 = array<i32, 3>();
    var var_2 = !(785u != max(var_0.x, ~(~59970u)));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1036f, arg_0.c.x, arg_0.c.x) * vec3<f32>(513f, arg_0.c.x, 1637f)), vec3<bool>(arg_1.c.x, false, true)))), _wgslsmith_mod_u32(~17667u & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 46831u), arg_2.yx), _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, arg_1.b), arg_2.x)), vec4<f32>(_wgslsmith_f_op_f32(-1323f * -313f), 476f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(max(628f, 617f))), arg_0.d));
    return ~(~(~abs(_wgslsmith_add_vec3_u32(arg_1.a, var_0))));
}

fn func_1() -> bool {
    global0 = array<i32, 3>();
    let var_0 = vec3<u32>(u_input.b, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u) ^ vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(0u, 6838u, u_input.b) >> ((vec3<u32>(4294967295u, u_input.b, 9285u) | vec3<u32>(4294967295u, 1u, u_input.b)) % vec3<u32>(32u)))) | func_6(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(529f, -521f)), _wgslsmith_f_op_f32(175f + 1065f), _wgslsmith_f_op_f32(f32(-1f) * -733f)), u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1321f, 721f, 918f, 503f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(545f, 1751f, 1352f, 1066f) * vec4<f32>(-928f, 1714f, -298f, -440f))), vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(11646u, 3u)], -1i, global0[_wgslsmith_index_u32(u_input.b, 3u)], u_input.a)), Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), firstTrailingBit(u_input.b), u_input.b >> (u_input.b % 32u)), abs(u_input.b), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), func_5(u_input.a | 0i, func_2(vec3<i32>(14007i, global0[_wgslsmith_index_u32(0u, 3u)], u_input.a), 4294967295u, vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(29320u, 3u)], global0[_wgslsmith_index_u32(23680u, 3u)])), ~54775u, vec4<u32>(1u, 0u, 24614u, 40396u)) | _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, 39637u), vec3<u32>(0u, 1u, u_input.b)), firstTrailingBit(vec3<u32>(23158u, 111210u, 0u))));
    var var_1 = 1i;
    var var_2 = ~0i;
    let var_3 = func_3(max(_wgslsmith_div_u32(~var_0.x, 38736u), ~_wgslsmith_dot_vec3_u32(func_6(Struct_1(vec3<f32>(915f, -262f, -1473f), 4294967295u, vec4<f32>(2717f, 231f, 1701f, -1042f), vec4<i32>(u_input.a, 17922i, 2147483647i, -1i)), Struct_2(vec3<u32>(u_input.b, var_0.x, var_0.x), var_0.x, vec2<bool>(true, false)), var_0), _wgslsmith_add_vec3_u32(var_0, var_0))), vec3<bool>(true, true, true)).xxw;
    return true | all(vec3<bool>(true, true, ~35655u > _wgslsmith_mult_u32(u_input.b, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.b, abs(~52564u));
    var var_1 = vec3<bool>(false, all(select(vec3<bool>(any(vec4<bool>(true, false, false, true)), true, select(true, false, true)), vec3<bool>(true, true, func_1()), func_4(vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(1445f, 885f, -657f), 1u, vec4<f32>(-1223f, -1702f, -273f, -1669f), vec4<i32>(9482i, u_input.a, global0[_wgslsmith_index_u32(var_0.x, 3u)], -1i)), true).x)), !(~(-u_input.a) >= -reverseBits(2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(max(_wgslsmith_div_vec2_u32(var_0, var_0), vec2<u32>(var_0.x, u_input.b)), vec2<u32>(var_0.x, u_input.b)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-14001i, -2147483647i), vec2<i32>(u_input.a, 2487i)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], 1i), vec2<i32>(u_input.a, 46435i))), vec2<i32>(-1i) * -vec2<i32>(1i, global0[_wgslsmith_index_u32(82391u, 3u)])), vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(3337i, global0[_wgslsmith_index_u32(var_0.x, 3u)])), i32(-1i) * -u_input.a)), vec4<i32>(-11422i, ~1i, _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -10558i), vec2<i32>(u_input.a, 0i))), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(~var_0.x, 3u)], abs(-52553i))), ~(-min(-2147483647i, -31960i))));
}

