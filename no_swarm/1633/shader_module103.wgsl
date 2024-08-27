struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(39391u, 48086u, Struct_1(-366f, 1809i, vec2<u32>(40435u, 4294967295u), -551f, true), vec2<bool>(false, false)), Struct_2(1u, 33706u, Struct_1(-479f, i32(-2147483648), vec2<u32>(45554u, 53717u), 741f, false), vec2<bool>(true, false)), Struct_2(4846u, 1u, Struct_1(2532f, 2147483647i, vec2<u32>(9607u, 1u), 1000f, false), vec2<bool>(true, true)), Struct_2(51439u, 4294967295u, Struct_1(-539f, -1i, vec2<u32>(1u, 26906u), -202f, true), vec2<bool>(true, true)), Struct_2(0u, 4294967295u, Struct_1(-1943f, -1i, vec2<u32>(1u, 7686u), -514f, false), vec2<bool>(true, true)), Struct_2(0u, 1u, Struct_1(-1085f, 1i, vec2<u32>(0u, 9163u), -1382f, false), vec2<bool>(false, true)), Struct_2(75049u, 45536u, Struct_1(951f, 0i, vec2<u32>(11377u, 4294967295u), -1395f, false), vec2<bool>(true, true)), Struct_2(18219u, 15352u, Struct_1(-1833f, -17534i, vec2<u32>(19916u, 16065u), -1818f, true), vec2<bool>(true, true)), Struct_2(2422u, 50477u, Struct_1(-1000f, -1i, vec2<u32>(0u, 24943u), -1686f, false), vec2<bool>(false, false)), Struct_2(4294967295u, 45832u, Struct_1(141f, -80479i, vec2<u32>(4294967295u, 50923u), -122f, false), vec2<bool>(true, false)), Struct_2(1u, 4294967295u, Struct_1(-500f, 0i, vec2<u32>(4294967295u, 1u), -1070f, false), vec2<bool>(true, false)), Struct_2(21103u, 14347u, Struct_1(983f, -36616i, vec2<u32>(0u, 40190u), 1736f, true), vec2<bool>(true, false)), Struct_2(1u, 64070u, Struct_1(100f, i32(-2147483648), vec2<u32>(1u, 0u), -1000f, true), vec2<bool>(false, false)), Struct_2(10283u, 4294967295u, Struct_1(291f, -1i, vec2<u32>(1u, 0u), -1000f, true), vec2<bool>(true, false)), Struct_2(6871u, 102717u, Struct_1(1529f, -13822i, vec2<u32>(33173u, 4294967295u), 437f, true), vec2<bool>(false, false)), Struct_2(0u, 4294967295u, Struct_1(-3039f, 3108i, vec2<u32>(0u, 4294967295u), 851f, true), vec2<bool>(false, true)), Struct_2(46684u, 0u, Struct_1(2711f, -21019i, vec2<u32>(22129u, 50874u), -919f, true), vec2<bool>(true, false)), Struct_2(4294967295u, 1191u, Struct_1(1000f, 5145i, vec2<u32>(0u, 4294967295u), -1125f, false), vec2<bool>(true, true)), Struct_2(25717u, 31265u, Struct_1(-662f, -20398i, vec2<u32>(0u, 4541u), 1063f, false), vec2<bool>(false, true)), Struct_2(1u, 0u, Struct_1(-1711f, 34251i, vec2<u32>(4294967295u, 4294967295u), 307f, true), vec2<bool>(true, false)), Struct_2(13141u, 17102u, Struct_1(455f, 2147483647i, vec2<u32>(22372u, 0u), -1471f, true), vec2<bool>(true, true)), Struct_2(1u, 90715u, Struct_1(-757f, -1i, vec2<u32>(50144u, 37384u), 1000f, true), vec2<bool>(true, true)), Struct_2(19545u, 63320u, Struct_1(569f, 2977i, vec2<u32>(1u, 0u), 525f, false), vec2<bool>(true, false)), Struct_2(1u, 95024u, Struct_1(850f, i32(-2147483648), vec2<u32>(4294967295u, 8855u), -378f, true), vec2<bool>(false, false)), Struct_2(0u, 0u, Struct_1(-1000f, 17947i, vec2<u32>(4294967295u, 18288u), 1000f, true), vec2<bool>(true, false)), Struct_2(56959u, 23620u, Struct_1(-1092f, 0i, vec2<u32>(19155u, 26827u), 455f, false), vec2<bool>(true, true)), Struct_2(3289u, 24875u, Struct_1(1078f, 1i, vec2<u32>(4294967295u, 34392u), 325f, true), vec2<bool>(false, false)), Struct_2(1u, 0u, Struct_1(-1040f, 42218i, vec2<u32>(0u, 51675u), 518f, true), vec2<bool>(false, false)), Struct_2(26854u, 37018u, Struct_1(890f, -1i, vec2<u32>(4294967295u, 33208u), -1508f, false), vec2<bool>(true, true)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>) -> u32 {
    let var_0 = min(min(~2147483647i, ~(~(-7911i))), u_input.d.x);
    var var_1 = _wgslsmith_clamp_i32(1i, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0, -3889i, var_0), vec4<i32>(var_0, 0i, -9165i, u_input.d.x)) << (~u_input.b % 32u)), firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(arg_1.x, 0i, 1i))) | var_0);
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1443f)), _wgslsmith_f_op_f32(f32(-1f) * -1487f), all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], arg_0.x, false, true)))) + 263f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1000f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-700f, 627f)))), _wgslsmith_f_op_f32(-828f * -2804f)))));
    return _wgslsmith_mod_u32(~_wgslsmith_add_u32(1u, 1u), u_input.b);
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = !(!vec4<bool>(!any(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.d, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], true)), (92164u ^ arg_0.b.x) <= countOneBits(4294967295u), global0[_wgslsmith_index_u32(~(~103905u), 10u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(19267u, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)])) || any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 10u)], true, true))));
    let var_1 = vec2<bool>(var_0.x, true);
    let var_2 = arg_0.d;
    var var_3 = Struct_2(6684u, abs(abs(4294967295u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f) + _wgslsmith_f_op_f32(433f + 404f))), select(arg_0.a, _wgslsmith_div_i32(arg_0.a, -4935i) ^ -2147483647i, true), max(vec2<u32>(arg_0.e.x, 42972u >> (u_input.b % 32u)), vec2<u32>(36804u, arg_0.c.x) ^ arg_0.c.zz), -931f, global0[_wgslsmith_index_u32(max(select(u_input.b >> (14949u % 32u), u_input.b, 76849u == u_input.b), 7876u), 10u)]), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(473f, -1008f, var_0.x)))), !global0[_wgslsmith_index_u32(u_input.b, 10u)]));
    global0 = array<bool, 10>();
    return _wgslsmith_div_f32(-110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-870f))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    global1 = array<Struct_2, 29>();
    let var_0 = vec4<f32>(-1040f, _wgslsmith_f_op_f32(func_4(Struct_3(u_input.c, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_1.a, 4294967295u), vec3<u32>(u_input.b, arg_1.b, u_input.b), vec3<u32>(u_input.b, arg_1.b, arg_1.a)), vec4<u32>(0u, func_3(arg_1.d, u_input.d.yz), arg_1.b, 1u), 4294967295u, _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b, u_input.b, arg_1.a), vec3<u32>(u_input.b, u_input.b, 1u)) & vec3<u32>(65848u, 46488u, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(abs(-1129f)));
    let var_1 = 1i;
    var var_2 = _wgslsmith_mult_vec2_u32(arg_1.c.c, abs(_wgslsmith_mult_vec2_u32(arg_1.c.c & max(vec2<u32>(arg_1.b, arg_1.a), vec2<u32>(u_input.b, 11548u)), arg_1.c.c & vec2<u32>(26820u, u_input.b))));
    var var_3 = reverseBits(select(~vec4<u32>(~0u, 1u, 10093u, var_2.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(26795u, u_input.b, arg_1.b, 88558u), max(vec4<u32>(var_2.x, 0u, 1571u, var_2.x), vec4<u32>(arg_1.c.c.x, var_2.x, var_2.x, 51411u))), true));
    return true;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(2405f));
    let var_1 = ~select(vec4<u32>(u_input.b, 119597u, ~(~48673u), ~u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(~0u, u_input.b, u_input.b, ~1u), min(~vec4<u32>(u_input.b, u_input.b, 75648u, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 16888u, 2980u, 17401u), vec4<u32>(19892u, 72691u, u_input.b, u_input.b)))), !vec4<bool>(global0[_wgslsmith_index_u32(32182u, 10u)], true, true, true));
    var var_2 = _wgslsmith_f_op_f32(ceil(188f));
    let var_3 = Struct_2(~_wgslsmith_clamp_u32(66874u, ~(~var_1.x), 10763u), u_input.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1793f)))), -2147483647i, vec2<u32>(abs(1u), ~1u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1784f))))), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(var_1.x, _wgslsmith_div_u32(26541u, 1u))), 10u)]), vec2<bool>(func_2(vec4<f32>(_wgslsmith_div_f32(435f, 1152f), _wgslsmith_f_op_f32(round(-1023f)), _wgslsmith_f_op_f32(floor(-285f)), -977f), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(0u), u_input.b), 29u)]), all(vec2<bool>(global0[_wgslsmith_index_u32(55432u, 10u)] || false, true))));
    let var_4 = global1[_wgslsmith_index_u32(var_1.x, 29u)];
    return var_4.c.b >> (25262u % 32u);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, u_input.b, arg_2.c.x), u_input.b) | ~max(12240u, u_input.b)) < _wgslsmith_clamp_u32(~u_input.b, (1u << ((u_input.b >> (71505u % 32u)) % 32u)) & firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))), arg_2.c.x);
    var var_1 = -923f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(Struct_3(-1i, _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, arg_2.c.x), vec3<u32>(arg_2.c.x, 52036u, 0u)), firstTrailingBit(vec4<u32>(4294967295u, arg_2.c.x, u_input.b, arg_2.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(6437u, u_input.b, 47711u, 74526u), vec4<u32>(1u, arg_2.c.x, 1u, arg_2.c.x)), min(vec3<u32>(arg_2.c.x, 49135u, 14606u), vec3<u32>(63654u, u_input.b, arg_2.c.x))))), _wgslsmith_f_op_f32(select(arg_2.a, arg_1, !(!var_0))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.d)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 1478f), vec2<f32>(-1101f, -1182f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1439f, arg_2.d))), select(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(arg_2.c.x, 10u)], false), global0[_wgslsmith_index_u32(89083u, 10u)]), !vec2<bool>(arg_2.e, true), vec2<bool>(true, true))))));
    var var_3 = select(vec4<bool>(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_2.b, 2147483647i, u_input.a), vec4<i32>(0i, -2147483647i, arg_2.b, u_input.d.x)), 0i) != -(1i >> (arg_2.c.x % 32u)), !(!var_0), any(select(select(vec3<bool>(arg_2.e, var_0, arg_2.e), vec3<bool>(false, true, false), true), !vec3<bool>(var_0, var_0, false), select(vec3<bool>(arg_2.e, true, global0[_wgslsmith_index_u32(arg_2.c.x, 10u)]), vec3<bool>(false, true, arg_2.e), vec3<bool>(var_0, true, true)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(10152u, ~arg_2.c.x) >> ((~0u | u_input.b) % 32u), 10u)]), !(!(!select(vec4<bool>(arg_2.e, true, var_0, true), vec4<bool>(true, arg_2.e, arg_2.e, true), var_0))), vec4<bool>(true, any(vec4<bool>(true, global0[_wgslsmith_index_u32(16398u ^ u_input.b, 10u)], true, all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(25420u, 10u)])))), all(select(!vec4<bool>(var_0, global0[_wgslsmith_index_u32(u_input.b, 10u)], true, var_0), !vec4<bool>(false, false, arg_2.e, var_0), all(vec2<bool>(var_0, true)))), !all(select(vec4<bool>(true, arg_2.e, true, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(arg_2.c.x, 10u)], var_0, true), vec4<bool>(var_0, false, false, false)))));
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(arg_0, vec3<u32>(77357u, 0u, u_input.b), vec4<u32>(59087u, u_input.b, u_input.b, u_input.b), 4294967295u, vec3<u32>(arg_2.c.x, u_input.b, 95232u)))) * -111f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) * arg_2.d))), max(_wgslsmith_add_i32(max(32967i, -arg_0), _wgslsmith_add_i32(u_input.c, arg_0)), _wgslsmith_sub_i32(min(-78503i, -1i), _wgslsmith_mod_i32(~arg_2.b, -2147483647i))), vec2<u32>(arg_2.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.c.x, arg_2.c.x, 4294967295u), ~vec3<u32>(arg_2.c.x, 49916u, 0u) ^ countOneBits(vec3<u32>(arg_2.c.x, arg_2.c.x, 15770u)))), _wgslsmith_f_op_f32(-var_2.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    let var_0 = func_5(_wgslsmith_clamp_i32(-60128i, func_1(abs(u_input.c & u_input.d.x)), _wgslsmith_sub_i32(0i, -u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f)))), Struct_1(-2355f, reverseBits(~func_1(0i)), vec2<u32>(_wgslsmith_add_u32(~u_input.b, 19737u), ~(u_input.b | 53227u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)), false));
    let var_1 = firstTrailingBit(func_1(select(var_0.b << (14817u % 32u), ~abs(u_input.c), true)));
    var var_2 = _wgslsmith_dot_vec2_i32(~u_input.d.zz, _wgslsmith_div_vec2_i32(select(~vec2<i32>(-2147483647i, var_0.b), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(50786i, u_input.d.x), vec2<i32>(4721i, var_1))), var_0.e), min(firstTrailingBit(vec2<i32>(25215i, var_0.b)), u_input.d.xz)));
    global1 = array<Struct_2, 29>();
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(ceil(var_0.a))));
    let var_4 = Struct_3(var_1, _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, var_0.c.x, var_0.c.x), ~(~vec3<u32>(52911u, 1u, u_input.b)), ~vec3<u32>(u_input.b, 10434u, 77014u) >> (vec3<u32>(u_input.b, func_3(vec2<bool>(var_0.e, false), u_input.d.xx), ~var_0.c.x) % vec3<u32>(32u))), vec4<u32>(~var_0.c.x, var_0.c.x, abs(~109620u), ~(~max(var_0.c.x, var_0.c.x))), ~(~u_input.b), vec3<u32>(4294967295u & select(0u, ~var_0.c.x, global0[_wgslsmith_index_u32(28082u | u_input.b, 10u)]), var_0.c.x, var_0.c.x));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, 994f, -338f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.a, var_3) * vec3<f32>(var_3, var_3, 529f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_3, 349f))))))) - vec3<f32>(_wgslsmith_f_op_f32(round(1786f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_4)) + _wgslsmith_f_op_f32(f32(-1f) * -819f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_3))), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(var_3 - var_3))));
    let var_6 = Struct_2(~func_5(_wgslsmith_dot_vec2_i32(u_input.d.yx, vec2<i32>(var_4.a, var_1)), var_5.x, func_5(u_input.a | var_0.b, var_5.x, var_0)).c.x, ~(~func_3(!vec2<bool>(global0[_wgslsmith_index_u32(7192u, 10u)], global0[_wgslsmith_index_u32(52504u, 10u)]), _wgslsmith_div_vec2_i32(vec2<i32>(var_4.a, var_1), vec2<i32>(u_input.d.x, 1i)))), func_5(~(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_5.x, 375f, false)) * var_3)), Struct_1(var_0.a, firstTrailingBit(~var_1), vec2<u32>(var_0.c.x, firstTrailingBit(u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -211f), all(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 10u)], true, global0[_wgslsmith_index_u32(u_input.b, 10u)])))), vec2<bool>(global0[_wgslsmith_index_u32(37871u, 10u)], func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3, -1000f, 1215f, var_5.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_5.x, var_0.d, var_0.d))), Struct_2(1u, u_input.b, var_0, select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], true), vec2<bool>(var_0.e, global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<bool>(var_0.e, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(ceil(var_0.d)))))));
}

