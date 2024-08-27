struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_3,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-656f, 118f), vec2<f32>(775f, 2211f), vec2<f32>(-316f, -683f), vec2<f32>(332f, 705f), vec2<f32>(350f, -1037f), vec2<f32>(1096f, -1759f), vec2<f32>(1311f, -668f), vec2<f32>(609f, 2097f), vec2<f32>(-2336f, -1603f), vec2<f32>(1038f, -1344f), vec2<f32>(-1499f, 567f), vec2<f32>(-674f, -1043f), vec2<f32>(-258f, 468f), vec2<f32>(1468f, 555f), vec2<f32>(-843f, -412f), vec2<f32>(-1565f, -772f), vec2<f32>(-2820f, -1271f), vec2<f32>(181f, 292f), vec2<f32>(-811f, 918f), vec2<f32>(378f, -1210f), vec2<f32>(718f, -218f), vec2<f32>(-1156f, 531f), vec2<f32>(-1057f, -1341f), vec2<f32>(-988f, 1748f), vec2<f32>(1000f, -1516f), vec2<f32>(1034f, 1327f), vec2<f32>(738f, -1036f), vec2<f32>(185f, -2114f));

var<private> global2: array<vec4<f32>, 24>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = !(~(-1i) <= (_wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]) << (~1u % 32u))) | all(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(false, true, true)), true));
    var var_1 = true;
    var var_2 = Struct_1(max(u_input.a >> (_wgslsmith_clamp_u32(~1u, 0u, 4294967295u) % 32u), global0[_wgslsmith_index_u32(~firstTrailingBit(0u), 1u)]), min(_wgslsmith_div_vec4_i32(firstLeadingBit(-vec4<i32>(14723i, -12459i, u_input.a, u_input.a)), _wgslsmith_mult_vec4_i32(-vec4<i32>(32665i, u_input.a, 0i, -18959i), select(vec4<i32>(-2147483647i, u_input.a, -2147483647i, 1i), vec4<i32>(global0[_wgslsmith_index_u32(28042u, 1u)], -22283i, u_input.a, global0[_wgslsmith_index_u32(34093u, 1u)]), true))), firstTrailingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(14486u, 1u)], 42398i, 6764i, global0[_wgslsmith_index_u32(66594u, 1u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], -1i, global0[_wgslsmith_index_u32(1u, 1u)], 19902i), vec4<i32>(0i, -6532i, 51426i, -22052i))))), _wgslsmith_clamp_vec3_u32(select(~vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(3572u, 0u, 3427u), vec3<u32>(1u, 85670u, 4294967295u)), ~2814u, 1u), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), vec3<u32>(1u, 1u, 1u), ~firstTrailingBit(abs(vec3<u32>(0u, 1u, 29677u)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1060f, 498f, -243f) + vec3<f32>(687f, -1031f, -780f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -161f, 761f) - vec3<f32>(659f, -163f, -415f))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(-1389f, 531f)), 331f, -858f))))));
    var_1 = !((true || (var_2.d.x == -294f)) | true) | (all(vec3<bool>(true, true, true)) == (false | (true & (var_2.d.x <= 1000f))));
    var_0 = false;
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_5(!(!vec2<bool>(true, func_3())), Struct_3(arg_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(1136f, _wgslsmith_f_op_f32(arg_1.d.x + arg_1.d.x), _wgslsmith_f_op_f32(floor(-1758f)), _wgslsmith_f_op_f32(select(arg_1.d.x, arg_1.d.x, true))) * vec4<f32>(_wgslsmith_f_op_f32(floor(-156f)), _wgslsmith_f_op_f32(arg_1.d.x * -993f), _wgslsmith_f_op_f32(exp2(arg_1.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -638f))), vec4<u32>(1u, ~(~arg_1.c.x), arg_1.c.x, abs(~arg_1.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(min(arg_1.c.x, arg_1.c.x), 64803u, ~4294967295u), arg_1.c), _wgslsmith_div_f32(arg_1.d.x, 202f) == _wgslsmith_f_op_f32(ceil(-2702f))), Struct_3(arg_1, _wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, 1u), 24u)], _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-702f, 1668f, arg_1.d.x, arg_1.d.x)))), vec4<u32>(min(_wgslsmith_div_u32(arg_1.c.x, arg_1.c.x), reverseBits(20333u)), _wgslsmith_mod_u32(arg_1.c.x, arg_1.c.x), _wgslsmith_dot_vec2_u32(~arg_1.c.zx, select(arg_1.c.xz, vec2<u32>(arg_1.c.x, arg_1.c.x), false)), countOneBits(~90156u)), firstLeadingBit(_wgslsmith_add_vec3_u32(~arg_1.c, arg_1.c)), true), arg_1.c, Struct_2(min(vec4<u32>(arg_1.c.x, 1907u, arg_1.c.x, 37501u), max(vec4<u32>(4294967295u, 33051u, 27117u, arg_1.c.x), vec4<u32>(30023u, 53167u, 4294967295u, 4689u))) ^ _wgslsmith_mod_vec4_u32(max(vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, 73479u), vec4<u32>(arg_1.c.x, 4294967295u, 17060u, 49471u)), vec4<u32>(4294967295u, arg_1.c.x, arg_1.c.x, 0u)), arg_1));
    var var_1 = _wgslsmith_dot_vec4_u32(~(var_0.c.c ^ vec4<u32>(var_0.c.d.x, var_0.c.c.x, 47610u, arg_1.c.x)) ^ firstLeadingBit(var_0.c.c), var_0.e.a) >> (_wgslsmith_clamp_u32(arg_1.c.x, 4294967295u, arg_1.c.x) % 32u);
    var var_2 = var_0.b.d.x;
    let var_3 = Struct_1(-21383i << (var_0.c.c.x % 32u), firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(abs(var_0.e.b.b.x), -2147483647i), reverseBits(global0[_wgslsmith_index_u32(abs(arg_1.c.x), 1u)]), firstLeadingBit(firstLeadingBit(u_input.a)), firstTrailingBit(firstTrailingBit(8189i)))), max(vec3<u32>(min(4294967295u, 0u), arg_1.c.x, ~7906u), abs(~var_0.d)) | countOneBits(var_0.e.b.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.d.x, var_0.e.b.d.x, var_0.e.b.d.x) * vec3<f32>(var_0.b.b.x, var_0.c.b.x, var_0.b.a.d.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(604f + arg_1.d.x), var_0.e.b.d.x, 1f))));
    var_1 = var_3.c.x;
    return countOneBits(_wgslsmith_mult_u32(1u, ~_wgslsmith_clamp_u32(4294967295u, var_3.c.x, 10363u) << (var_3.c.x % 32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_3 {
    global2 = array<vec4<f32>, 24>();
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    let var_0 = true;
    let var_1 = arg_1.c;
    return arg_1;
}

fn func_1() -> i32 {
    global0 = array<i32, 1>();
    let var_0 = Struct_5(vec2<bool>(any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), global0[_wgslsmith_index_u32(~(~4294967295u), 1u)] <= 19734i), func_4(vec4<u32>(func_2(-vec4<i32>(u_input.a, -1i, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 1u)]), Struct_1(u_input.a, vec4<i32>(global0[_wgslsmith_index_u32(34889u, 1u)], 29647i, 52663i, global0[_wgslsmith_index_u32(18729u, 1u)]), vec3<u32>(1u, 0u, 24215u), vec3<f32>(106f, -872f, -1293f))), ~1u, 1u, ~1u), Struct_3(Struct_1(u_input.a & global0[_wgslsmith_index_u32(9723u, 1u)], vec4<i32>(-5828i, u_input.a, global0[_wgslsmith_index_u32(53007u, 1u)], -32130i), firstTrailingBit(vec3<u32>(4294967295u, 52169u, 0u)), vec3<f32>(209f, -1192f, 586f)), global2[_wgslsmith_index_u32(~0u, 24u)], vec4<u32>(min(0u, 4294967295u), 32715u, 23575u, ~1u), vec3<u32>(1u, 1u, 1u), true)), func_4(vec4<u32>(~(~35609u), 19055u, 1u, ~(~30804u)), Struct_3(func_4(vec4<u32>(1505u, 41600u, 112541u, 58315u), func_4(vec4<u32>(41361u, 4294967295u, 0u, 4294967295u), Struct_3(Struct_1(12522i, vec4<i32>(global0[_wgslsmith_index_u32(1u, 1u)], -14568i, 2147483647i, -47977i), vec3<u32>(4294967295u, 24692u, 21725u), vec3<f32>(-690f, -1000f, 1031f)), global2[_wgslsmith_index_u32(32413u, 24u)], vec4<u32>(0u, 1u, 30998u, 1u), vec3<u32>(19429u, 32664u, 13058u), true))).a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1327f, 1998f, -1057f, -1317f))), vec4<u32>(1u, 1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), all(vec2<bool>(false, false)) & true)), func_4(~_wgslsmith_add_vec4_u32(vec4<u32>(18524u, 41895u, 1u, 0u), vec4<u32>(0u, 1u, 44274u, 4294967295u)), Struct_3(func_4(vec4<u32>(48596u, 4294967295u, 1u, 8905u), Struct_3(Struct_1(global0[_wgslsmith_index_u32(113778u, 1u)], vec4<i32>(0i, -8271i, global0[_wgslsmith_index_u32(12308u, 1u)], u_input.a), vec3<u32>(32936u, 32146u, 4294967295u), vec3<f32>(1000f, 914f, -417f)), global2[_wgslsmith_index_u32(1u, 24u)], vec4<u32>(37172u, 54556u, 22240u, 17319u), vec3<u32>(63463u, 67928u, 4294967295u), false)).a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2954u, 1u, 7322u, 4294967295u), vec4<u32>(11791u, 64104u, 19399u, 11716u)), 24u)], vec4<u32>(4294967295u, 52331u, 42061u, 4294967295u), select(vec3<u32>(1u, 86828u, 5906u), vec3<u32>(0u, 1u, 91919u), true), func_3())).a.c & vec3<u32>(1u, 1u, 1u), Struct_2(~(vec4<u32>(1u, 1u, 1u, 1u) & select(vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(16883u, 27358u, 0u, 4294967295u), true)), func_4(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(87519u, 26326u, 455u, 24144u)), 1u, countOneBits(4294967295u), 1u), func_4(abs(vec4<u32>(99108u, 5955u, 4294967295u, 0u)), func_4(vec4<u32>(54238u, 4294967295u, 4294967295u, 17394u), Struct_3(Struct_1(-2147483647i, vec4<i32>(2147483647i, -1i, 44649i, -1i), vec3<u32>(10757u, 0u, 4294967295u), vec3<f32>(379f, 710f, 952f)), global2[_wgslsmith_index_u32(57076u, 24u)], vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec3<u32>(24392u, 4294967295u, 51813u), true)))).a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1017f - 147f));
    return countOneBits(-(global0[_wgslsmith_index_u32(select(var_0.d.x | 30079u, var_0.b.a.c.x << (var_0.b.c.x % 32u), true), 1u)] | global0[_wgslsmith_index_u32(func_2(var_0.c.a.b, var_0.b.a), 1u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_clamp_i32(-4286i, ~select(func_1(), u_input.a, true), -2147483647i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(1u, 24u)] * vec4<f32>(103f, -128f, 644f, 406f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(1u, 24u)] - global2[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(19984u, 24u)], global2[_wgslsmith_index_u32(40137u, 24u)], false))) * global2[_wgslsmith_index_u32(0u, 24u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(164f * 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1104f, 1677f)))), func_4(abs(vec4<u32>(4294967295u, 73911u, 1u, 39831u)), Struct_3(Struct_1(-7697i, vec4<i32>(-2147483647i, -52307i, 17144i, -2147483647i), vec3<u32>(0u, 1u, 0u), vec3<f32>(1911f, 385f, 462f)), global2[_wgslsmith_index_u32(12427u, 24u)], vec4<u32>(32955u, 42552u, 43503u, 1u), vec3<u32>(4294967295u, 60221u, 34172u), false)).e))));
    var var_1 = ~_wgslsmith_mult_i32(var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-6606i, var_0.a & 1i, 29562i, abs(16541i)), (vec4<i32>(var_0.a, 0i, var_0.a, -34824i) >> (vec4<u32>(34268u, 35977u, 9296u, 4645u) % vec4<u32>(32u))) ^ select(vec4<i32>(-33166i, var_0.a, var_0.a, 0i), vec4<i32>(var_0.a, global0[_wgslsmith_index_u32(55589u, 1u)], u_input.a, -2573i), true)));
    var var_2 = func_4(func_4(~vec4<u32>(~4294967295u, 1u, 0u, ~1u), Struct_3(Struct_1(~(-7203i), firstTrailingBit(vec4<i32>(-1i, -1i, 5000i, global0[_wgslsmith_index_u32(956u, 1u)])), firstLeadingBit(vec3<u32>(18598u, 63935u, 4294967295u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, -1000f, -1934f)))), var_0.b, ~vec4<u32>(1u, 63681u, 79946u, 4294967295u), ~vec3<u32>(41321u, 1u, 57008u), false)).c, func_4(~(~vec4<u32>(4294967295u, 4294967295u, 6521u, 4294967295u)) | ~select(vec4<u32>(36697u, 90082u, 26347u, 0u), vec4<u32>(93749u, 1u, 14769u, 0u), false), Struct_3(func_4(max(vec4<u32>(30333u, 2498u, 1u, 0u), vec4<u32>(77480u, 67859u, 9322u, 1u)), Struct_3(Struct_1(0i, vec4<i32>(var_0.a, 16887i, u_input.a, 0i), vec3<u32>(43594u, 38452u, 4294967295u), vec3<f32>(var_0.b.x, 1078f, -770f)), var_0.b, vec4<u32>(1u, 32455u, 20064u, 55422u), vec3<u32>(8217u, 88660u, 21296u), false)).a, var_0.b, vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 5441u, 1u), vec3<u32>(43568u, 1u, 27410u)), 0u, 1u), select(abs(vec3<u32>(4294967295u, 46133u, 44062u)), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true)), true))).a;
    let var_3 = -21679i;
    var var_4 = func_4(reverseBits(min(reverseBits(vec4<u32>(0u, var_2.c.x, var_2.c.x, 1u)), vec4<u32>(28904u, 0u, 0u, var_2.c.x)) ^ ~max(vec4<u32>(var_2.c.x, var_2.c.x, var_2.c.x, 34885u), vec4<u32>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x))), func_4(~vec4<u32>(var_2.c.x >> (8284u % 32u), ~12447u, var_2.c.x, var_2.c.x), Struct_3(Struct_1(_wgslsmith_dot_vec4_i32(var_2.b, vec4<i32>(15033i, var_2.a, 39927i, global0[_wgslsmith_index_u32(var_2.c.x, 1u)])), -vec4<i32>(2860i, 44187i, 0i, -26246i), ~vec3<u32>(13817u, 1u, var_2.c.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c, var_2.d.x, var_0.b.x)))), vec4<f32>(-932f, _wgslsmith_f_op_f32(ceil(var_0.b.x)), -471f, _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x) << (vec4<u32>(38962u, var_2.c.x, 75943u, 31800u) % vec4<u32>(32u)), ~vec4<u32>(var_2.c.x, var_2.c.x, var_2.c.x, 1u)), _wgslsmith_add_vec3_u32(var_2.c, vec3<u32>(var_2.c.x, var_2.c.x, var_2.c.x)) << ((vec3<u32>(108664u, var_2.c.x, var_2.c.x) ^ vec3<u32>(350u, var_2.c.x, var_2.c.x)) % vec3<u32>(32u)), true))).a;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec4_i32(var_2.b, ~vec4<i32>(2147483647i, 3562i, var_0.a, u_input.a)), var_3, vec4<i32>(-2147483647i, u_input.a, 17222i, var_4.b.x), i32(-1i) * -max(_wgslsmith_dot_vec2_i32(var_2.b.xw, var_2.b.zy), -var_0.a), firstLeadingBit(var_4.b >> (vec4<u32>(var_2.c.x, var_2.c.x, var_2.c.x, _wgslsmith_div_u32(14274u, 31816u)) % vec4<u32>(32u))));
}

