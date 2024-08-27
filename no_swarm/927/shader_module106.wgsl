struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: Struct_3 = Struct_3(19165u, Struct_2(2251f));

var<private> global2: array<Struct_1, 18>;

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<f32>(121f, 378f), vec3<f32>(193f, 566f, -941f), vec2<u32>(1u, 12837u), vec2<f32>(399f, -1086f), false), Struct_1(vec2<f32>(-317f, 1024f), vec3<f32>(-521f, -898f, 1203f), vec2<u32>(63057u, 46916u), vec2<f32>(1000f, 1191f), true), Struct_1(vec2<f32>(-540f, -3696f), vec3<f32>(-648f, -1000f, -102f), vec2<u32>(0u, 1u), vec2<f32>(1195f, 539f), false), Struct_1(vec2<f32>(1077f, 1708f), vec3<f32>(326f, -429f, 430f), vec2<u32>(33846u, 14680u), vec2<f32>(671f, -465f), true), Struct_1(vec2<f32>(561f, -1008f), vec3<f32>(710f, -1299f, -891f), vec2<u32>(8543u, 1u), vec2<f32>(-504f, 1000f), true), Struct_1(vec2<f32>(228f, -1767f), vec3<f32>(-1110f, -290f, 1000f), vec2<u32>(1322u, 0u), vec2<f32>(-226f, -658f), false), Struct_1(vec2<f32>(1054f, -114f), vec3<f32>(1334f, 1486f, 1878f), vec2<u32>(4294967295u, 40181u), vec2<f32>(-1028f, 992f), true), Struct_1(vec2<f32>(-320f, 1588f), vec3<f32>(871f, 496f, -400f), vec2<u32>(1u, 0u), vec2<f32>(505f, -1000f), true), Struct_1(vec2<f32>(-1866f, -767f), vec3<f32>(247f, 1783f, -662f), vec2<u32>(2505u, 4294967295u), vec2<f32>(-774f, -636f), true), Struct_1(vec2<f32>(-1398f, -2272f), vec3<f32>(-570f, 114f, 1225f), vec2<u32>(34809u, 5693u), vec2<f32>(-2072f, -1000f), false), Struct_1(vec2<f32>(-852f, 386f), vec3<f32>(1117f, 1088f, -382f), vec2<u32>(5742u, 4294967295u), vec2<f32>(-959f, -1195f), false), Struct_1(vec2<f32>(-560f, -655f), vec3<f32>(-917f, -1289f, -1308f), vec2<u32>(4294967295u, 1u), vec2<f32>(-574f, 2022f), true), Struct_1(vec2<f32>(-901f, 454f), vec3<f32>(903f, 608f, -185f), vec2<u32>(4294967295u, 50504u), vec2<f32>(-613f, -326f), true), Struct_1(vec2<f32>(-334f, 488f), vec3<f32>(952f, 1000f, -990f), vec2<u32>(0u, 1u), vec2<f32>(910f, -1485f), true), Struct_1(vec2<f32>(-2215f, -1082f), vec3<f32>(1022f, 147f, -2017f), vec2<u32>(64811u, 1u), vec2<f32>(794f, -1542f), true), Struct_1(vec2<f32>(683f, -1639f), vec3<f32>(-1743f, -1266f, -779f), vec2<u32>(4294967295u, 1u), vec2<f32>(2127f, 348f), false), Struct_1(vec2<f32>(-1159f, -1216f), vec3<f32>(1722f, 1363f, -1179f), vec2<u32>(0u, 1u), vec2<f32>(133f, -1381f), false), Struct_1(vec2<f32>(680f, -564f), vec3<f32>(679f, 762f, 1000f), vec2<u32>(60285u, 23287u), vec2<f32>(-1656f, 1903f), true), Struct_1(vec2<f32>(347f, 325f), vec3<f32>(-1324f, -589f, -444f), vec2<u32>(4294967295u, 91409u), vec2<f32>(-415f, 1000f), true), Struct_1(vec2<f32>(134f, 313f), vec3<f32>(-267f, 220f, -233f), vec2<u32>(1858u, 83134u), vec2<f32>(-753f, 1010f), true), Struct_1(vec2<f32>(-556f, 275f), vec3<f32>(-328f, 916f, -666f), vec2<u32>(1u, 9318u), vec2<f32>(997f, 935f), true), Struct_1(vec2<f32>(-533f, -408f), vec3<f32>(428f, 1270f, 874f), vec2<u32>(22132u, 0u), vec2<f32>(1257f, -972f), false), Struct_1(vec2<f32>(-458f, -125f), vec3<f32>(-561f, 382f, 364f), vec2<u32>(8213u, 6886u), vec2<f32>(1000f, -591f), false), Struct_1(vec2<f32>(-1000f, 723f), vec3<f32>(-1878f, -1217f, 1736f), vec2<u32>(0u, 4294967295u), vec2<f32>(-1664f, -837f), false), Struct_1(vec2<f32>(-185f, 264f), vec3<f32>(1770f, -2383f, 952f), vec2<u32>(4294967295u, 32077u), vec2<f32>(1005f, 2361f), false), Struct_1(vec2<f32>(271f, 651f), vec3<f32>(-1000f, 348f, 724f), vec2<u32>(51849u, 2283u), vec2<f32>(-1266f, -1101f), false), Struct_1(vec2<f32>(1000f, 534f), vec3<f32>(-751f, -420f, -1182f), vec2<u32>(23030u, 42198u), vec2<f32>(-493f, -1630f), false), Struct_1(vec2<f32>(318f, 1024f), vec3<f32>(778f, 1016f, 669f), vec2<u32>(4294967295u, 363u), vec2<f32>(-570f, 333f), false), Struct_1(vec2<f32>(1481f, 1442f), vec3<f32>(-223f, -134f, -549f), vec2<u32>(1003u, 0u), vec2<f32>(1029f, -476f), true), Struct_1(vec2<f32>(-772f, -1308f), vec3<f32>(244f, 2528f, -1623f), vec2<u32>(0u, 12911u), vec2<f32>(1198f, 561f), true));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 5u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-497f, _wgslsmith_f_op_f32(1099f - -826f))) + global1.b.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b.a, global1.b.a, arg_1))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), _wgslsmith_f_op_f32(step(1140f, _wgslsmith_f_op_f32(round(597f)))));
    return _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~28372u, reverseBits(global1.a)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, u_input.a.x), u_input.a.zx)), countOneBits(u_input.a.x));
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = func_3(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u ^ global1.a, _wgslsmith_mod_u32(global1.a, 19649u), _wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.xz), _wgslsmith_clamp_u32(0u, u_input.a.x, global1.a)), ~min(vec4<u32>(u_input.a.x, global1.a, 1735u, u_input.a.x) & vec4<u32>(46237u, u_input.a.x, 27967u, 0u), max(vec4<u32>(u_input.a.x, global1.a, u_input.a.x, 47574u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u)))), false, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-33834i, 2147483647i)), true);
    let var_1 = false;
    var var_2 = ~vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, select(32792u << (global1.a % 32u), u_input.a.x, true)), _wgslsmith_sub_u32(var_0, global1.a), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 10851u, u_input.a.x, global1.a) ^ vec4<u32>(global1.a, global1.a, var_0, 25457u), ~vec4<u32>(global1.a, global1.a, var_0, global1.a)), abs(global1.a)), var_0);
    let var_3 = !(!all(!vec3<bool>(false, false, var_1)));
    return Struct_3(~func_3(select(vec4<u32>(u_input.a.x, global1.a, 0u, global1.a), vec4<u32>(6798u, var_0, u_input.a.x, 348u), 199f > global0[_wgslsmith_index_u32(var_0, 5u)]), true, -2147483647i, true), global1.b);
}

fn func_1(arg_0: Struct_5, arg_1: vec3<i32>) -> Struct_4 {
    global1 = func_2(false);
    global0 = array<f32, 5>();
    global1 = func_2(false);
    global2 = array<Struct_1, 18>();
    global3 = array<Struct_1, 30>();
    return Struct_4(_wgslsmith_f_op_f32(-global1.b.a), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(76556u, u_input.a.x)), abs(u_input.a.yz)), 2246u), 5u)]), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), false), select(vec4<bool>(any(vec3<bool>(true, true, true)), arg_0.a <= arg_0.a, true, any(vec3<bool>(false, false, true))), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false), true), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true))), any(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: vec4<i32>) -> vec4<u32> {
    var var_0 = ~vec2<u32>(15970u, 0u);
    var var_1 = func_1(Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.a) - _wgslsmith_f_op_f32(1101f * 1977f))))), firstLeadingBit(arg_2.zwz));
    let var_2 = global1.b;
    global2 = array<Struct_1, 18>();
    let var_3 = ~max(-35032i, min(arg_2.x, arg_2.x) & _wgslsmith_dot_vec2_i32(arg_2.yz, vec2<i32>(arg_2.x, 2147483647i))) | _wgslsmith_mod_i32(37212i, 11945i);
    return vec4<u32>(~(~4294967295u), var_0.x, 4294967295u, 24726u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 18>();
    global3 = array<Struct_1, 30>();
    var var_0 = 813f;
    let var_1 = func_4(func_1(Struct_5(-1000f), _wgslsmith_div_vec3_i32(vec3<i32>(~1i, _wgslsmith_mod_i32(33805i, 12594i), 1i), vec3<i32>(1i, 1i, 1i))), func_2(all(vec3<bool>(true, true, true))).a, firstTrailingBit(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(1i, -9598i, 2147483647i, 2147483647i) << (vec4<u32>(u_input.a.x, 3214u, 0u, global1.a) % vec4<u32>(32u)), min(vec4<i32>(2147483647i, -3269i, -34959i, 2147483647i), vec4<i32>(11913i, 17917i, 1i, -21134i)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))), vec4<i32>(reverseBits(38i), -20799i >> (global1.a % 32u), abs(-2147483647i), -1i), abs(-vec4<i32>(-1i, 2147483647i, 3124i, -2147483647i)))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-369f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a + -454f) - global0[_wgslsmith_index_u32(~min(var_1.x, global1.a), 5u)])), func_1(Struct_5(global0[_wgslsmith_index_u32(1u, 5u)]), vec3<i32>(-32177i, _wgslsmith_div_i32(1i, -2147483647i), -1i)).b, !func_1(Struct_5(1580f), ~vec3<i32>(1i, 1i, 1i)).c, !(!all(vec2<bool>(true, true)) || !any(vec3<bool>(false, false, false))));
    let var_3 = u_input.a.x;
    let var_4 = Struct_5(global0[_wgslsmith_index_u32(global1.a, 5u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-firstLeadingBit(20192i) >> (reverseBits(func_4(var_2, var_3, vec4<i32>(-1i, 14505i, -2147483647i, -42932i)).x) % 32u), -_wgslsmith_add_i32(_wgslsmith_div_i32(0i, -2147483647i), abs(2692i))), var_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.a, 213f, var_2.b.a)))))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1i, 2147483647i, 1i, 2182i)), vec4<i32>(1i, 1i, -46653i, -82537i) >> (var_1 % vec4<u32>(32u))), 1i), countOneBits(1i) >> (((50548u & var_3) << ((var_1.x | var_3) % 32u)) % 32u), -(~(-1i)), -1i), _wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.x, func_3(vec4<u32>(68864u, 0u, 23518u, 1u), var_2.c.x, 1i, var_2.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3, 21644u), u_input.a.zz) & (0u ^ global1.a)) >> (0u % 32u));
}

