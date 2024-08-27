struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(95938u, 1029f, 2834f, vec3<bool>(false, true, true), 0u), Struct_2(42906i, vec2<bool>(true, false), vec3<bool>(false, true, false), 19900u), Struct_1(11817u, -1000f, -1046f, vec3<bool>(true, false, false), 129420u), Struct_2(9317i, vec2<bool>(true, false), vec3<bool>(true, true, false), 20570u)), Struct_3(Struct_1(63896u, -621f, -210f, vec3<bool>(false, true, true), 70671u), Struct_2(1i, vec2<bool>(false, true), vec3<bool>(false, false, false), 22332u), Struct_1(107489u, 1180f, 809f, vec3<bool>(false, true, true), 13682u), Struct_2(i32(-2147483648), vec2<bool>(false, false), vec3<bool>(false, true, false), 87681u)), Struct_3(Struct_1(27214u, -542f, -401f, vec3<bool>(false, false, true), 26220u), Struct_2(i32(-2147483648), vec2<bool>(true, true), vec3<bool>(false, true, true), 45402u), Struct_1(1u, 1622f, -639f, vec3<bool>(true, true, true), 14049u), Struct_2(2147483647i, vec2<bool>(false, false), vec3<bool>(false, false, true), 4294967295u)), Struct_3(Struct_1(32355u, 1000f, 424f, vec3<bool>(false, false, false), 4294967295u), Struct_2(1i, vec2<bool>(true, true), vec3<bool>(false, false, true), 4294967295u), Struct_1(28457u, -645f, 304f, vec3<bool>(true, true, false), 4294967295u), Struct_2(i32(-2147483648), vec2<bool>(false, false), vec3<bool>(true, true, true), 1634u)), Struct_3(Struct_1(23532u, -1715f, 472f, vec3<bool>(true, false, true), 0u), Struct_2(0i, vec2<bool>(true, false), vec3<bool>(true, false, true), 31876u), Struct_1(0u, -118f, -1000f, vec3<bool>(true, false, true), 1u), Struct_2(2147483647i, vec2<bool>(false, false), vec3<bool>(true, false, false), 9262u)), Struct_3(Struct_1(0u, 143f, 479f, vec3<bool>(false, false, false), 94015u), Struct_2(-1i, vec2<bool>(true, true), vec3<bool>(true, false, true), 78478u), Struct_1(0u, -753f, -1635f, vec3<bool>(true, true, false), 29633u), Struct_2(-49166i, vec2<bool>(false, false), vec3<bool>(false, false, false), 0u)), Struct_3(Struct_1(0u, 671f, -393f, vec3<bool>(true, true, false), 24865u), Struct_2(-1i, vec2<bool>(true, true), vec3<bool>(true, false, false), 14445u), Struct_1(0u, -1000f, -119f, vec3<bool>(true, false, true), 0u), Struct_2(2147483647i, vec2<bool>(false, true), vec3<bool>(true, true, false), 1u)), Struct_3(Struct_1(12537u, -1564f, -1203f, vec3<bool>(false, false, true), 4294967295u), Struct_2(-64175i, vec2<bool>(true, false), vec3<bool>(true, true, true), 10490u), Struct_1(46256u, 515f, 1397f, vec3<bool>(false, true, true), 1u), Struct_2(60422i, vec2<bool>(true, true), vec3<bool>(true, false, true), 0u)), Struct_3(Struct_1(8706u, 863f, 162f, vec3<bool>(true, true, true), 12608u), Struct_2(-49160i, vec2<bool>(true, false), vec3<bool>(false, false, true), 2744u), Struct_1(4294967295u, 289f, -245f, vec3<bool>(true, false, true), 4294967295u), Struct_2(i32(-2147483648), vec2<bool>(false, false), vec3<bool>(true, false, true), 87315u)), Struct_3(Struct_1(1u, 967f, 312f, vec3<bool>(true, false, false), 1u), Struct_2(0i, vec2<bool>(false, true), vec3<bool>(true, false, true), 0u), Struct_1(30258u, -890f, -254f, vec3<bool>(false, true, false), 58860u), Struct_2(14491i, vec2<bool>(false, true), vec3<bool>(true, false, true), 53285u)), Struct_3(Struct_1(1u, -1242f, 1000f, vec3<bool>(true, true, false), 0u), Struct_2(6671i, vec2<bool>(true, false), vec3<bool>(false, true, false), 8040u), Struct_1(4294967295u, -615f, 132f, vec3<bool>(false, false, false), 61653u), Struct_2(32096i, vec2<bool>(true, true), vec3<bool>(false, true, false), 4294967295u)), Struct_3(Struct_1(104299u, 569f, -1603f, vec3<bool>(false, false, true), 0u), Struct_2(-17464i, vec2<bool>(false, false), vec3<bool>(true, false, false), 3372u), Struct_1(1u, -2512f, 1087f, vec3<bool>(false, true, false), 4294967295u), Struct_2(16065i, vec2<bool>(true, true), vec3<bool>(false, false, true), 4294967295u)), Struct_3(Struct_1(21725u, -661f, 1481f, vec3<bool>(true, true, false), 4294967295u), Struct_2(i32(-2147483648), vec2<bool>(true, false), vec3<bool>(true, false, false), 0u), Struct_1(1u, -1229f, 450f, vec3<bool>(false, true, false), 32422u), Struct_2(2147483647i, vec2<bool>(false, false), vec3<bool>(false, true, false), 20849u)), Struct_3(Struct_1(4294967295u, -1000f, 691f, vec3<bool>(false, true, true), 4560u), Struct_2(i32(-2147483648), vec2<bool>(true, true), vec3<bool>(false, false, false), 0u), Struct_1(0u, -603f, -466f, vec3<bool>(false, true, false), 1u), Struct_2(15141i, vec2<bool>(false, false), vec3<bool>(false, false, false), 26930u)), Struct_3(Struct_1(0u, -680f, -1912f, vec3<bool>(true, true, false), 68602u), Struct_2(-30013i, vec2<bool>(true, true), vec3<bool>(true, false, false), 17549u), Struct_1(4645u, 753f, 835f, vec3<bool>(true, false, true), 0u), Struct_2(2147483647i, vec2<bool>(false, false), vec3<bool>(false, true, true), 1u)), Struct_3(Struct_1(1u, -1000f, 331f, vec3<bool>(false, true, true), 22961u), Struct_2(0i, vec2<bool>(true, false), vec3<bool>(false, true, false), 6933u), Struct_1(17342u, 1239f, 384f, vec3<bool>(true, false, true), 0u), Struct_2(-1i, vec2<bool>(true, false), vec3<bool>(true, true, true), 1u)), Struct_3(Struct_1(31156u, -1162f, -1233f, vec3<bool>(true, false, false), 0u), Struct_2(i32(-2147483648), vec2<bool>(true, false), vec3<bool>(true, false, false), 4294967295u), Struct_1(49823u, 856f, 1385f, vec3<bool>(false, true, false), 4294967295u), Struct_2(-11565i, vec2<bool>(true, false), vec3<bool>(false, false, false), 4294967295u)), Struct_3(Struct_1(1u, 1095f, 491f, vec3<bool>(false, true, true), 57239u), Struct_2(1i, vec2<bool>(true, true), vec3<bool>(false, true, false), 8561u), Struct_1(1u, -2085f, 444f, vec3<bool>(false, true, false), 4294967295u), Struct_2(-82508i, vec2<bool>(false, false), vec3<bool>(true, false, false), 49553u)), Struct_3(Struct_1(53140u, 901f, -879f, vec3<bool>(true, true, false), 1u), Struct_2(2147483647i, vec2<bool>(false, false), vec3<bool>(false, false, false), 61408u), Struct_1(48843u, -493f, -180f, vec3<bool>(true, true, true), 1u), Struct_2(1i, vec2<bool>(false, true), vec3<bool>(true, true, true), 1u)), Struct_3(Struct_1(1u, 1106f, -190f, vec3<bool>(true, false, false), 0u), Struct_2(1i, vec2<bool>(true, false), vec3<bool>(false, true, false), 0u), Struct_1(4294967295u, 368f, -388f, vec3<bool>(true, false, false), 21775u), Struct_2(-1i, vec2<bool>(false, true), vec3<bool>(false, false, true), 15699u)), Struct_3(Struct_1(80777u, -1000f, 1358f, vec3<bool>(true, true, true), 6341u), Struct_2(0i, vec2<bool>(false, true), vec3<bool>(true, true, false), 0u), Struct_1(1u, 1240f, -635f, vec3<bool>(true, false, true), 1u), Struct_2(62088i, vec2<bool>(false, false), vec3<bool>(true, false, false), 1u)), Struct_3(Struct_1(1u, 1804f, 372f, vec3<bool>(true, true, true), 0u), Struct_2(1i, vec2<bool>(true, true), vec3<bool>(false, true, true), 8732u), Struct_1(1u, -940f, -857f, vec3<bool>(false, true, false), 4294967295u), Struct_2(1i, vec2<bool>(false, false), vec3<bool>(false, false, true), 52250u)));

var<private> global1: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: bool) -> u32 {
    global1 = false;
    var var_0 = _wgslsmith_f_op_f32(round(arg_0.c));
    let var_1 = Struct_2(u_input.a, vec2<bool>(arg_0.d.x, (arg_0.a | arg_0.e) >= 1u), arg_0.d, _wgslsmith_clamp_u32(~(_wgslsmith_sub_u32(1u, arg_0.a) & 0u), 3808u, arg_0.a));
    global0 = array<Struct_3, 22>();
    let var_2 = global0[_wgslsmith_index_u32(1u, 22u)];
    return _wgslsmith_clamp_u32(0u, 1u, 1u);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: vec2<f32>) -> bool {
    global0 = array<Struct_3, 22>();
    global1 = select(!(false && arg_1.b.c.x), any(arg_1.c.d), !(true && any(select(vec2<bool>(arg_0, false), vec2<bool>(false, true), arg_1.b.c.yy))));
    global1 = true;
    global1 = arg_1.a.d.x;
    var var_0 = global0[_wgslsmith_index_u32(abs(func_3(Struct_1(arg_1.c.a, arg_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.c.b)), -379f), select(arg_1.c.d, arg_1.d.c, select(true, arg_0, arg_0)), min(4294967295u, 0u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -497f, arg_3.x, arg_3.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(436f, -363f, 666f, arg_1.a.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-786f, arg_1.c.b, arg_3.x, arg_3.x))))), !(15033i < u_input.a), arg_2)), 22u)];
    return false;
}

fn func_2() -> vec2<u32> {
    global0 = array<Struct_3, 22>();
    var var_0 = func_4(firstLeadingBit(_wgslsmith_add_i32(u_input.a, u_input.a)) != _wgslsmith_add_i32(firstLeadingBit(firstLeadingBit(u_input.a)), 22877i), global0[_wgslsmith_index_u32(abs(func_3(Struct_1(firstLeadingBit(19519u), _wgslsmith_f_op_f32(f32(-1f) * -2341f), _wgslsmith_f_op_f32(1506f * 1810f), vec3<bool>(true, true, true), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 29691u), vec2<u32>(4294967295u, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1065f, -1000f, -676f, 1475f), vec4<f32>(-874f, -1432f, -266f, -615f)) * vec4<f32>(2127f, -526f, -1090f, -1369f)), select(true, false, all(vec4<bool>(true, false, true, false))), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true)))), 22u)], true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2261f, 589f)) - 1616f)), -992f));
    global1 = !(u_input.a == -1i);
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    return vec2<u32>(1u, 1u);
}

fn func_5(arg_0: vec2<u32>, arg_1: i32) -> vec2<u32> {
    let var_0 = global0[_wgslsmith_index_u32(66011u, 22u)];
    global1 = true;
    var var_1 = abs(-(~(-35818i)));
    global0 = array<Struct_3, 22>();
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(43991u, ~4294967295u), ~arg_0.x);
    return arg_0;
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_1(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), func_5(func_2(), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1447f, -542f)) - _wgslsmith_f_op_f32(-1436f * _wgslsmith_f_op_f32(655f + -1158f))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(round(-896f)))), select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(sign(1000f)) == 1f), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true))), reverseBits(~reverseBits(_wgslsmith_div_u32(0u, 27670u))));
    let var_1 = var_0.a;
    return vec3<u32>(4294967295u, func_5(vec2<u32>(54617u, ~(~0u)), u_input.a).x, select(34182u, max(~(~79021u), min(var_0.a, _wgslsmith_mult_u32(var_0.e, 1u))), var_0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -646f;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(var_0 + var_0)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, -969f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, -1000f), vec2<f32>(580f, var_0))))), vec2<f32>(-522f, _wgslsmith_f_op_f32(ceil(var_0)))));
    global0 = array<Struct_3, 22>();
    let var_3 = ~((vec3<u32>(26842u, ~8581u, _wgslsmith_dot_vec4_u32(vec4<u32>(36365u, 372u, 43959u, 51812u), vec4<u32>(4294967295u, 25990u, 52093u, 4294967295u))) << (firstTrailingBit(~vec3<u32>(1u, 14281u, 23932u)) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(func_1(), vec3<u32>(1u, 1u, 1u)));
    let var_4 = ~(~11223u);
    let var_5 = Struct_1(~5853u, _wgslsmith_f_op_f32(-1739f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1426f, -451f)))))), 264f, select(vec3<bool>(!(!var_1), var_1, false), select(select(vec3<bool>(var_1, false, var_1), select(vec3<bool>(var_1, true, var_1), vec3<bool>(true, false, true), vec3<bool>(var_1, var_1, false)), false), select(vec3<bool>(true, var_1, var_1), vec3<bool>(true, true, true), !vec3<bool>(var_1, false, var_1)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), !vec3<bool>(true, var_1, var_1), false)), !(!(!vec3<bool>(true, true, var_1)))), firstTrailingBit(reverseBits(~_wgslsmith_div_u32(0u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 15040u), countOneBits(var_3.xy)), min(var_5.e, var_4) >> (var_4 % 32u), abs(func_5(var_3.zz, 80836i).x)));
}

