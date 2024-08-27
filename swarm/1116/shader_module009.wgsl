struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(-2349f, Struct_2(5451u, vec2<f32>(936f, 298f)), vec2<bool>(false, false)), Struct_3(-1214f, Struct_2(12025u, vec2<f32>(-274f, -156f)), vec2<bool>(false, false)), Struct_3(213f, Struct_2(4294967295u, vec2<f32>(-1000f, 462f)), vec2<bool>(true, false)), Struct_3(1000f, Struct_2(4294967295u, vec2<f32>(891f, 583f)), vec2<bool>(false, false)), Struct_3(-2663f, Struct_2(58189u, vec2<f32>(-740f, 401f)), vec2<bool>(false, false)), Struct_3(-544f, Struct_2(32002u, vec2<f32>(-637f, -1121f)), vec2<bool>(true, true)), Struct_3(-312f, Struct_2(0u, vec2<f32>(-663f, 2350f)), vec2<bool>(false, true)), Struct_3(448f, Struct_2(4294967295u, vec2<f32>(-1534f, 327f)), vec2<bool>(true, true)), Struct_3(454f, Struct_2(12778u, vec2<f32>(-1000f, -710f)), vec2<bool>(false, false)), Struct_3(-846f, Struct_2(1204u, vec2<f32>(-1796f, -676f)), vec2<bool>(false, false)), Struct_3(1122f, Struct_2(0u, vec2<f32>(447f, -261f)), vec2<bool>(true, true)), Struct_3(1078f, Struct_2(28127u, vec2<f32>(751f, 1418f)), vec2<bool>(false, true)), Struct_3(-304f, Struct_2(4842u, vec2<f32>(-110f, -980f)), vec2<bool>(false, true)), Struct_3(286f, Struct_2(53194u, vec2<f32>(-1274f, 113f)), vec2<bool>(false, true)), Struct_3(-160f, Struct_2(36994u, vec2<f32>(-1937f, 804f)), vec2<bool>(false, false)), Struct_3(1000f, Struct_2(1u, vec2<f32>(-2323f, 1591f)), vec2<bool>(false, true)), Struct_3(2298f, Struct_2(12101u, vec2<f32>(-1771f, -2155f)), vec2<bool>(false, true)), Struct_3(189f, Struct_2(1u, vec2<f32>(137f, 340f)), vec2<bool>(false, false)), Struct_3(321f, Struct_2(4294967295u, vec2<f32>(312f, 1000f)), vec2<bool>(true, false)), Struct_3(1048f, Struct_2(39042u, vec2<f32>(827f, -1843f)), vec2<bool>(true, false)), Struct_3(-1416f, Struct_2(39271u, vec2<f32>(-1020f, -269f)), vec2<bool>(false, true)), Struct_3(-1005f, Struct_2(4294967295u, vec2<f32>(-439f, -709f)), vec2<bool>(true, false)), Struct_3(-160f, Struct_2(80063u, vec2<f32>(-1440f, -1000f)), vec2<bool>(false, false)), Struct_3(1145f, Struct_2(9356u, vec2<f32>(-291f, -1000f)), vec2<bool>(true, true)), Struct_3(1000f, Struct_2(422u, vec2<f32>(-1000f, 967f)), vec2<bool>(true, true)), Struct_3(-120f, Struct_2(82447u, vec2<f32>(-368f, -1726f)), vec2<bool>(false, false)), Struct_3(1690f, Struct_2(0u, vec2<f32>(-1000f, 213f)), vec2<bool>(true, true)), Struct_3(-742f, Struct_2(4294967295u, vec2<f32>(106f, -185f)), vec2<bool>(false, true)), Struct_3(-672f, Struct_2(0u, vec2<f32>(-834f, -1177f)), vec2<bool>(false, true)), Struct_3(-160f, Struct_2(0u, vec2<f32>(-263f, 832f)), vec2<bool>(false, false)));

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(4294967295u, vec2<f32>(422f, -1417f)), Struct_2(1u, vec2<f32>(-573f, 816f)), Struct_2(1u, vec2<f32>(1863f, -162f)), Struct_2(7727u, vec2<f32>(-447f, 1265f)), Struct_2(4294967295u, vec2<f32>(-373f, 658f)), Struct_2(42972u, vec2<f32>(-1756f, -261f)), Struct_2(4294967295u, vec2<f32>(-1000f, 259f)), Struct_2(9481u, vec2<f32>(959f, -359f)), Struct_2(21388u, vec2<f32>(210f, -150f)), Struct_2(0u, vec2<f32>(-714f, -1519f)), Struct_2(0u, vec2<f32>(-626f, -100f)), Struct_2(66652u, vec2<f32>(-713f, 385f)), Struct_2(18600u, vec2<f32>(707f, 1171f)), Struct_2(1u, vec2<f32>(-1627f, 2023f)), Struct_2(4294967295u, vec2<f32>(1416f, 234f)), Struct_2(30855u, vec2<f32>(-1590f, 698f)), Struct_2(0u, vec2<f32>(350f, -344f)), Struct_2(16131u, vec2<f32>(-1000f, -1000f)), Struct_2(35450u, vec2<f32>(-1417f, 138f)), Struct_2(0u, vec2<f32>(-1045f, 1713f)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5) -> u32 {
    var var_0 = ~_wgslsmith_add_vec2_u32(firstTrailingBit(u_input.a.xy), ~vec2<u32>(1u, 3157u));
    global0 = array<Struct_3, 30>();
    let var_1 = !select(vec3<bool>(!(!arg_1.b.c.x), !arg_1.b.c.x && true, true), select(vec3<bool>(arg_1.b.c.x, arg_1.b.c.x, true & arg_1.b.c.x), !select(vec3<bool>(arg_1.b.c.x, arg_1.b.c.x, arg_1.b.c.x), vec3<bool>(true, false, arg_1.b.c.x), true), _wgslsmith_f_op_f32(-arg_1.e.x) >= _wgslsmith_f_op_f32(arg_1.b.a - -1518f)), arg_1.b.c.x);
    var var_2 = arg_1;
    var_0 = firstTrailingBit(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, u_input.a.x, 54111u)) | ~arg_0.a, 1u & _wgslsmith_dot_vec3_u32(u_input.c, u_input.b)));
    return _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.a, ~arg_1.b.b.a), ~65103u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: u32, arg_3: vec2<u32>) -> vec2<f32> {
    global0 = array<Struct_3, 30>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x * -1386f))))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_1.a, 23243u), 20u)], vec2<bool>(2147483647i > ~_wgslsmith_add_i32(arg_1.d.a, arg_1.d.c.x), any(select(vec3<bool>(true, false, arg_1.b.c.x), !vec3<bool>(true, arg_1.b.c.x, false), arg_1.b.c.x))));
    let var_1 = ~(~arg_2);
    let var_2 = Struct_1(max((~(-1i) | arg_0.b.x) ^ _wgslsmith_mult_i32(1i, 2147483647i), ~(~(~0i))), ~arg_0.b, abs(arg_0.c), abs(~_wgslsmith_mod_u32(~arg_2, 22440u << (arg_0.d % 32u))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(step(-1207f, -463f)), Struct_2((abs(var_1) << (~59700u % 32u)) ^ ~20365u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.e.x, arg_1.c.x))))), !arg_1.b.c);
    return vec2<f32>(arg_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b.x, var_3.b.b.x) + -1198f));
}

fn func_2() -> Struct_5 {
    let var_0 = vec2<bool>(false && any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(false, true, true))), true);
    var var_1 = Struct_4(vec4<bool>(!any(select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, false, false), true)), var_0.x, select(_wgslsmith_dot_vec2_u32(u_input.c.zz, u_input.a.yz), 1u, var_0.x & true) <= u_input.b.x, true));
    let var_2 = Struct_2(u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -1396f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1375f, -933f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(-35543i, vec4<i32>(0i, 0i, -55450i, 2147483647i), vec4<i32>(406i, -1i, 32975i, 2147483647i), 0u), Struct_5(u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 30u)], vec3<f32>(-324f, 374f, 707f), Struct_1(-36741i, vec4<i32>(0i, 31032i, -83585i, -1311i), vec4<i32>(2147483647i, 2147483647i, 39263i, 35927i), 14752u), vec2<f32>(916f, 191f)), func_3(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], Struct_5(35931u, Struct_3(110f, global1[_wgslsmith_index_u32(u_input.c.x, 20u)], vec2<bool>(false, var_1.a.x)), vec3<f32>(-281f, -437f, -1000f), Struct_1(16096i, vec4<i32>(32844i, 61828i, -17071i, 13634i), vec4<i32>(-20287i, -34539i, 1i, -1i), 59647u), vec2<f32>(792f, -949f))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.c.x), u_input.a.zy))) - vec2<f32>(_wgslsmith_f_op_f32(-579f - 286f), 1706f))));
    var var_3 = Struct_4(var_1.a);
    var_3 = Struct_4(!vec4<bool>(all(var_3.a), true, _wgslsmith_f_op_f32(-1715f * -1730f) == _wgslsmith_f_op_vec2_f32(func_4(Struct_1(25829i, vec4<i32>(-1i, -18785i, 1i, 2147483647i), vec4<i32>(2147483647i, 6740i, 1i, -21415i), 1u), Struct_5(30633u, Struct_3(-443f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], var_3.a.ww), vec3<f32>(1000f, 1089f, 178f), Struct_1(-2147483647i, vec4<i32>(-1i, -2147483647i, 1453i, 0i), vec4<i32>(40614i, 1i, 2147483647i, -42911i), var_2.a), vec2<f32>(395f, -1646f)), 15992u, u_input.a.zy)).x, var_0.x));
    return Struct_5(~u_input.b.x, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)) * _wgslsmith_f_op_f32(-var_2.b.x)), Struct_2(_wgslsmith_add_u32(u_input.d, ~21276u), vec2<f32>(383f, _wgslsmith_f_op_f32(var_2.b.x - -1449f))), vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-669f, -154f, var_2.b.x))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1408f, var_2.b.x, -304f), vec3<f32>(var_2.b.x, -1000f, var_2.b.x)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(var_2.b.x + 154f), _wgslsmith_f_op_f32(1516f * 1491f)))), Struct_1(~18816i, vec4<i32>(abs(-2147483647i), _wgslsmith_mult_i32(1i, -62256i), 1i, 1i), ~vec4<i32>(-14126i, ~(-1i), 2147483647i << (u_input.b.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -7158i), vec2<i32>(0i, 39057i))), var_2.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(228f, var_2.b.x), vec2<f32>(var_2.b.x, var_2.b.x)))) * _wgslsmith_div_vec2_f32(var_2.b, var_2.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_2.b.x, -101f), _wgslsmith_f_op_f32(1154f * 1544f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(567f, var_2.b.x)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_3) -> i32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-17705i, arg_1.d.a), vec2<i32>(arg_0.x, 56370i)), arg_0.x);
    global1 = array<Struct_2, 20>();
    let var_1 = vec3<u32>(300u, arg_1.b.b.a, arg_2.b.a);
    let var_2 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(2147483647i, -1i), -_wgslsmith_sub_i32(max(-2147483647i, 13997i), var_0.x)), vec4<i32>(reverseBits(arg_1.d.c.x), 1i, ~(~arg_1.d.b.x), -var_0.x), firstLeadingBit(func_2().d.c), _wgslsmith_clamp_u32(82318u, 22951u, ~min(72388u, ~1u)));
    var var_3 = Struct_1(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.a, arg_0.x), vec2<i32>(-31092i, -3873i)), arg_0.x, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(29506i, -2147483647i, arg_1.d.c.x), var_2.c.wyx))), -((vec4<i32>(40508i, -2147483647i, arg_0.x, arg_0.x) >> (vec4<u32>(arg_1.b.b.a, 25770u, 1u, arg_1.a) % vec4<u32>(32u))) ^ abs(arg_1.d.c)) << (~(~(vec4<u32>(arg_1.b.b.a, 37915u, u_input.b.x, 43382u) | vec4<u32>(0u, 4294967295u, 44088u, arg_1.b.b.a))) % vec4<u32>(32u)), arg_1.d.b, abs(select(~var_2.d, ~(arg_2.b.a & arg_2.b.a), 14334u >= u_input.c.x)));
    return -var_0.x;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_5) -> f32 {
    global1 = array<Struct_2, 20>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b.a))), func_2().b.b, select(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -851f) == _wgslsmith_f_op_f32(select(273f, -960f, false)), true), func_2().b.c, arg_1.b.c.x));
    var var_1 = arg_1.d;
    global1 = array<Struct_2, 20>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(836f)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.e.x, 1638f))) - -445f)), var_0.a));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1431f, -802f, -1362f)), vec3<f32>(-485f, 444f, 303f)), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1097f, 586f, 155f) * vec3<f32>(-1145f, -1148f, 475f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-650f, 368f, -1328f)))))))));
    return _wgslsmith_f_op_f32(func_6(~countOneBits(-vec3<i32>(0i, -2147483647i, -1i)) ^ vec3<i32>(1i, func_5(select(vec3<i32>(-2147483647i, 33313i, 22553i), vec3<i32>(-5895i, -1i, -2147483647i), false), func_2(), global0[_wgslsmith_index_u32(~13382u, 30u)]), i32(-1i) * -19441i), Struct_5(~_wgslsmith_mod_u32(u_input.c.x << (14998u % 32u), 1u), Struct_3(func_2().c.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, 36067u, 0u), firstLeadingBit(776u)), 20u)], vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-192f, var_0.x, -176f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(var_0, var_0, true))))), Struct_1(abs(min(-47414i, 1i)), vec4<i32>(0i, _wgslsmith_add_i32(-68929i, 24753i), 1i, firstTrailingBit(31339i)), func_2().d.b, u_input.c.x), vec2<f32>(var_0.x, -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -707f)), _wgslsmith_f_op_f32(-964f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 2051f) + _wgslsmith_div_f32(653f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(822f - -485f), 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-333f, 683f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<u32>(~_wgslsmith_div_u32(18863u, 12420u), 96728u, u_input.a.x, _wgslsmith_add_u32(u_input.d, 1u)) & ~vec4<u32>(1u, ~1u, 0u, ~0u), _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1807f, _wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_f_op_f32(f32(-1f) * -1845f), _wgslsmith_f_op_f32(f32(-1f) * -869f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(f32(-1f) * -501f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(693f, 187f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1017f, 843f) * -638f), 1168f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-591f - 479f), _wgslsmith_f_op_f32(select(-208f, -1081f, false)), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(56977i, vec4<i32>(-37995i, 0i, -51851i, 2147483647i), vec4<i32>(1i, 21309i, -1i, -12807i), u_input.c.x), Struct_5(73016u, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], vec3<f32>(-303f, -1000f, 1705f), Struct_1(1i, vec4<i32>(2147483647i, -274i, 2147483647i, -2147483647i), vec4<i32>(-1i, 18932i, -106i, 1i), u_input.a.x), vec2<f32>(187f, 592f)), u_input.b.x, u_input.c.zy)).x, -460f)))));
}

