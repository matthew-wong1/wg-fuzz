struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-1000f, 1123f, 1735f), vec3<u32>(12959u, 52983u, 4294967295u))), Struct_2(Struct_1(vec3<f32>(1175f, -801f, -195f), vec3<u32>(6015u, 4294967295u, 1u))), vec4<f32>(1000f, 1371f, -676f, -457f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(557f, 171f, 1000f), vec3<u32>(39034u, 21927u, 29551u))), Struct_2(Struct_1(vec3<f32>(1555f, 293f, 509f), vec3<u32>(53479u, 4294967295u, 41794u))), vec4<f32>(424f, -1198f, -1040f, -1019f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(2033f, 681f, -1495f), vec3<u32>(0u, 0u, 1u))), Struct_2(Struct_1(vec3<f32>(767f, 1024f, 1000f), vec3<u32>(1u, 6625u, 690u))), vec4<f32>(-439f, -402f, -1026f, 609f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(165f, -923f, -884f), vec3<u32>(4294967295u, 4294967295u, 53221u))), Struct_2(Struct_1(vec3<f32>(-1310f, 783f, -286f), vec3<u32>(1u, 0u, 1u))), vec4<f32>(1266f, -1000f, -1120f, -790f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(873f, 586f, -1318f), vec3<u32>(16502u, 50067u, 0u))), Struct_2(Struct_1(vec3<f32>(668f, 1404f, -1224f), vec3<u32>(0u, 0u, 3127u))), vec4<f32>(1081f, -1000f, -660f, 1261f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-103f, 2552f, 270f), vec3<u32>(122344u, 1u, 1318u))), Struct_2(Struct_1(vec3<f32>(-1217f, -1000f, 352f), vec3<u32>(38924u, 48580u, 999u))), vec4<f32>(-870f, 756f, 2368f, 1050f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-2282f, -436f, -1000f), vec3<u32>(4294967295u, 1u, 4294967295u))), Struct_2(Struct_1(vec3<f32>(740f, -1624f, 200f), vec3<u32>(74733u, 101317u, 1u))), vec4<f32>(659f, -893f, 1796f, 613f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(1000f, -533f, 1688f), vec3<u32>(1u, 9687u, 54131u))), Struct_2(Struct_1(vec3<f32>(-1446f, -301f, -698f), vec3<u32>(7218u, 6990u, 11367u))), vec4<f32>(858f, 999f, 747f, 2776f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(1070f, -208f, -577f), vec3<u32>(36250u, 75137u, 1u))), Struct_2(Struct_1(vec3<f32>(-157f, 1140f, -414f), vec3<u32>(21231u, 7140u, 66445u))), vec4<f32>(-740f, -925f, -668f, 369f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(748f, 1000f, -1000f), vec3<u32>(8809u, 0u, 4294967295u))), Struct_2(Struct_1(vec3<f32>(514f, 126f, 1509f), vec3<u32>(4294967295u, 1u, 9000u))), vec4<f32>(-1694f, 330f, -1051f, 1000f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(1000f, 143f, -437f), vec3<u32>(44618u, 35154u, 1u))), Struct_2(Struct_1(vec3<f32>(-1834f, -321f, -830f), vec3<u32>(1u, 4294967295u, 4294967295u))), vec4<f32>(-982f, 522f, 1736f, 1000f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-755f, 516f, -333f), vec3<u32>(0u, 0u, 4294967295u))), Struct_2(Struct_1(vec3<f32>(-2178f, -429f, -1565f), vec3<u32>(1u, 0u, 28994u))), vec4<f32>(-105f, 980f, -900f, -1830f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-2085f, 616f, 469f), vec3<u32>(4294967295u, 1u, 33904u))), Struct_2(Struct_1(vec3<f32>(316f, 708f, -1000f), vec3<u32>(4294967295u, 1u, 0u))), vec4<f32>(-407f, -483f, 748f, -266f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-241f, -718f, 1000f), vec3<u32>(49059u, 18780u, 28735u))), Struct_2(Struct_1(vec3<f32>(656f, -102f, -244f), vec3<u32>(36785u, 0u, 4294967295u))), vec4<f32>(778f, -708f, -101f, -1189f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-1000f, 830f, -1000f), vec3<u32>(1u, 8593u, 1u))), Struct_2(Struct_1(vec3<f32>(561f, -357f, -754f), vec3<u32>(27129u, 6531u, 1640u))), vec4<f32>(-197f, 869f, -897f, -1857f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(816f, -464f, -473f), vec3<u32>(0u, 0u, 4294967295u))), Struct_2(Struct_1(vec3<f32>(1632f, -1214f, 895f), vec3<u32>(8214u, 17446u, 4294967295u))), vec4<f32>(1356f, 2303f, 1865f, -128f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-291f, 1084f, 1517f), vec3<u32>(0u, 0u, 20166u))), Struct_2(Struct_1(vec3<f32>(-2939f, -745f, 570f), vec3<u32>(4294967295u, 13985u, 4294967295u))), vec4<f32>(-1000f, 1000f, 374f, 1308f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(698f, 1178f, 793f), vec3<u32>(1u, 0u, 1u))), Struct_2(Struct_1(vec3<f32>(167f, -549f, 803f), vec3<u32>(80974u, 56022u, 4294967295u))), vec4<f32>(-1608f, -2132f, 726f, -316f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-468f, 1000f, 1102f), vec3<u32>(4294967295u, 4294967295u, 301u))), Struct_2(Struct_1(vec3<f32>(500f, 241f, 1124f), vec3<u32>(1u, 10102u, 1u))), vec4<f32>(308f, 122f, -225f, 1797f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-870f, 1000f, -1273f), vec3<u32>(38164u, 0u, 39351u))), Struct_2(Struct_1(vec3<f32>(874f, -292f, 1588f), vec3<u32>(4084u, 41254u, 4294967295u))), vec4<f32>(1386f, 1000f, 913f, -1163f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(1193f, 1154f, 848f), vec3<u32>(1u, 0u, 0u))), Struct_2(Struct_1(vec3<f32>(433f, -918f, -1217f), vec3<u32>(4762u, 0u, 23504u))), vec4<f32>(-1606f, -1366f, 2190f, 1144f))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(2374f, 295f, 877f), vec3<u32>(4742u, 41647u, 60303u))), Struct_2(Struct_1(vec3<f32>(-1542f, 912f, 857f), vec3<u32>(5059u, 21773u, 1u))), vec4<f32>(-520f, 667f, -2135f, 751f))));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: f32) -> vec3<f32> {
    var var_0 = 36158i >> ((reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(100602u, 80858u), vec2<u32>(84860u, 4294967295u)), vec2<u32>(11290u, u_input.a))) >> (arg_0 % 32u)) % 32u);
    var_0 = _wgslsmith_dot_vec3_i32(~arg_1.yww, ~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i >> (u_input.a % 32u), -u_input.b, min(-1i, arg_1.x)), -arg_1.yyw));
    global0 = array<Struct_4, 22>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, -650f, arg_2), vec3<f32>(-971f, -802f, arg_2)) - vec3<f32>(arg_2, arg_2, arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, -155f, true)) - _wgslsmith_f_op_f32(arg_2 + arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -219f), arg_2)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-922f, -354f, arg_2))))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_5(true);
    var var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(max(_wgslsmith_mult_vec3_i32(vec3<i32>(-6707i, u_input.b, 43586i), max(vec3<i32>(-2147483647i, -2291i, u_input.b), vec3<i32>(-1i, arg_3, arg_3))), vec3<i32>(u_input.b, 33495i, u_input.b & -427i)), -((vec3<i32>(arg_3, arg_3, arg_3) << (vec3<u32>(52426u, u_input.a, 14017u) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3, -46847i, 26305i), vec3<i32>(16072i, 12263i, arg_3)))), vec3<i32>(-1i) * -min(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(arg_3, u_input.b, u_input.b)), firstTrailingBit(vec3<i32>(arg_3, 2147483647i, 2147483647i))));
    var_0 = Struct_5(any(vec2<bool>(true, !(!var_0.a))));
    global0 = array<Struct_4, 22>();
    var var_2 = arg_1;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_3(select(0u, arg_1, arg_0), -_wgslsmith_add_vec4_i32(vec4<i32>(-6146i, -32618i, -33358i, -1i), vec4<i32>(-2147483647i, arg_3, -2147483647i, 19463i)), -1145f)), arg_2.a.b));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_4) -> vec2<f32> {
    var var_0 = func_2(true, _wgslsmith_add_u32(25098u, ~abs(reverseBits(28143u))), arg_2.a.a, ~(i32(-1i) * -39638i));
    global0 = array<Struct_4, 22>();
    global0 = array<Struct_4, 22>();
    var var_1 = reverseBits(-_wgslsmith_sub_i32(i32(-1i) * -u_input.b, -1i));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(min(429f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.a.a.x, arg_0.c.x)))), 335f, _wgslsmith_f_op_f32(trunc(-677f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.a.a.x, arg_1.a.a.x, true))), arg_1.a.a.x <= -458f))), true));
    return _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -911f)), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a.a.a.x) * _wgslsmith_f_op_f32(ceil(544f))))), arg_2.a.a.a.a.zy);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: vec4<u32>) -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(41894u), 22u)];
    var_0 = arg_2;
    global0 = array<Struct_4, 22>();
    var var_1 = !select(!vec4<bool>(all(vec2<bool>(arg_0.a, true)), true, true, false), select(select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), any(vec2<bool>(arg_0.a, arg_0.a))), vec4<bool>(arg_0.a, true, true, false), true), any(select(!vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), !vec4<bool>(arg_0.a, true, arg_0.a, true), !vec4<bool>(false, arg_0.a, false, false))));
    var var_2 = _wgslsmith_div_i32(0i, min(-388i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, -2147483647i), vec3<i32>(-1i, u_input.b, -39629i)) >> (reverseBits(0u) % 32u)) << (u_input.a % 32u));
    return ~arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(func_4(Struct_5(true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_3(Struct_2(Struct_1(vec3<f32>(-548f, 456f, -398f), vec3<u32>(1u, 51389u, 34173u))), Struct_2(Struct_1(vec3<f32>(-119f, 592f, 1064f), vec3<u32>(13890u, u_input.a, u_input.a))), vec4<f32>(277f, -102f, 990f, 112f)), Struct_2(Struct_1(vec3<f32>(177f, 198f, 580f), vec3<u32>(u_input.a, u_input.a, 56023u))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-1608f, -1149f, 1723f), vec3<u32>(u_input.a, 11648u, 4294967295u))), Struct_2(Struct_1(vec3<f32>(-393f, -514f, -195f), vec3<u32>(10780u, 54808u, 35794u))), vec4<f32>(356f, 541f, 1046f, -542f)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(956f, -1155f)), vec2<f32>(-1021f, -1419f)))), Struct_4(Struct_3(func_2(false, u_input.a, Struct_2(Struct_1(vec3<f32>(-1204f, -1000f, 686f), vec3<u32>(u_input.a, u_input.a, 30359u))), u_input.b), func_2(true, u_input.a, Struct_2(Struct_1(vec3<f32>(-306f, -838f, -1243f), vec3<u32>(u_input.a, u_input.a, u_input.a))), 2147483647i), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1161f, 897f, -215f), vec4<f32>(-801f, 405f, 1934f, -175f)))), min(firstTrailingBit(abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))), firstLeadingBit(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)))), _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a)), max(vec4<u32>(4294967295u, 0u, 2834u, u_input.a), vec4<u32>(2525u, u_input.a, u_input.a, 4294967295u))), ~func_4(Struct_5(true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1257f, 1325f), vec2<f32>(-1111f, -755f), false)), global0[_wgslsmith_index_u32(0u, 22u)], ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u))));
    var var_1 = Struct_5(false);
    var_1 = Struct_5((false || (all(vec4<bool>(true, var_1.a, var_1.a, true)) & true)) & true);
    var_1 = Struct_5(var_1.a);
    let var_2 = ~u_input.a;
    let var_3 = !select(select(select(select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, false, var_1.a), true), vec3<bool>(var_1.a, true, false), var_0.x == 4294967295u), vec3<bool>(true, true, true), vec3<bool>(false, true, any(vec2<bool>(var_1.a, true)))), vec3<bool>(var_1.a, any(vec3<bool>(false, true, false)), var_1.a), all(select(vec2<bool>(true, true), vec2<bool>(var_1.a, true), var_1.a)));
    var var_4 = Struct_5(_wgslsmith_dot_vec3_i32(vec3<i32>(max(28889i, u_input.b), ~(-1i), u_input.b << (4294967295u % 32u)), ~(-vec3<i32>(0i, u_input.b, 2147483647i))) < _wgslsmith_mult_i32(-u_input.b << (var_0.x % 32u), u_input.b));
    var var_5 = ~1i;
    let var_6 = Struct_5(true);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<i32>(_wgslsmith_add_i32(0i, u_input.b), -u_input.b, _wgslsmith_clamp_i32(u_input.b, 0i, u_input.b)) | (vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -359f) * _wgslsmith_f_op_f32(round(575f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(788f * -127f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(1u, vec4<i32>(u_input.b, -1i, -2147483647i, 0i), -334f)).x)))))));
}

