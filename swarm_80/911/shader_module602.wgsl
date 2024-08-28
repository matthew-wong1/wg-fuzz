struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false));

var<private> global1: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true));

var<private> global2: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_5) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(317f, 821f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, -1632f), 1011f, all(global0[_wgslsmith_index_u32(arg_2.a.a.x, 8u)])))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(835f, 981f), vec2<f32>(-259f, 1097f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1233f, -1231f) + vec2<f32>(-834f, 574f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-632f, 655f) + vec2<f32>(-1473f, -1202f))))))));
    global2 = Struct_3(select(1u, ~arg_2.a.a.x, arg_2.b));
    let var_1 = _wgslsmith_f_op_f32(step(436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1930f + var_0.x)) + var_0.x))));
    let var_2 = select(vec2<i32>(-1i) * -vec2<i32>(~u_input.e.x, _wgslsmith_dot_vec2_i32(u_input.e.xy, vec2<i32>(u_input.e.x, 1i))), abs(select(~vec2<i32>(-54079i, u_input.e.x), u_input.c.xx, arg_1.x & (arg_2.b && true))), vec2<bool>(true, arg_0.b));
    var var_3 = arg_0.b;
    return vec4<u32>(_wgslsmith_add_u32(4294967295u, ~_wgslsmith_add_u32(arg_2.a.a.x, 0u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.a.a.x, ~4294967295u, ~57823u), arg_2.a.a.x) >> (abs(0u) % 32u), 41242u, abs(u_input.a));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: bool) -> f32 {
    let var_0 = 19543u << (arg_2.x % 32u);
    let var_1 = ~_wgslsmith_clamp_vec4_u32(func_3(Struct_5(Struct_4(arg_2), !arg_3), global1[_wgslsmith_index_u32(~arg_2.x, 25u)], Struct_5(Struct_4(vec2<u32>(1u, global2.a)), true)), vec4<u32>(~_wgslsmith_mod_u32(19803u, 1u), 1u, ~1u, u_input.a), (_wgslsmith_mod_vec4_u32(vec4<u32>(67443u, u_input.d, 6907u, var_0), vec4<u32>(global2.a, 1u, global2.a, u_input.d)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(global2.a, 34170u, global2.a, 1u), vec4<u32>(17528u, u_input.b, 53012u, 61262u))) | ~vec4<u32>(global2.a, global2.a, arg_2.x, global2.a));
    var var_2 = vec3<bool>(all(select(select(!vec4<bool>(false, true, arg_3, false), global1[_wgslsmith_index_u32(0u, 25u)], 624u < var_0), vec4<bool>(!arg_3, arg_3, arg_3, true), !select(vec4<bool>(true, true, true, arg_3), vec4<bool>(arg_3, false, arg_3, arg_3), global1[_wgslsmith_index_u32(global2.a, 25u)]))), 45264u >= ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 35747u, global2.a, 4294967295u), var_1)), false);
    var var_3 = -2194i;
    let var_4 = Struct_4(~(~vec2<u32>(_wgslsmith_clamp_u32(global2.a, var_0, var_0), 1u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-156f)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_4) -> Struct_5 {
    var var_0 = Struct_5(Struct_4(_wgslsmith_add_vec2_u32(arg_3.a, arg_3.a)), true);
    let var_1 = Struct_3(var_0.a.a.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1234f - 769f) + _wgslsmith_f_op_f32(min(-182f, -713f))))), 1724f));
    var var_3 = max(-2585i, -(_wgslsmith_mod_i32(1i, -1i >> (arg_3.a.x % 32u)) >> (global2.a % 32u)));
    var var_4 = u_input.c;
    return Struct_5(var_0.a, true);
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: Struct_1) -> f32 {
    var var_0 = global2.a;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2.c)), -219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(621f)) + arg_2.c)));
    var var_2 = _wgslsmith_add_i32(~0i, u_input.e.x);
    let var_3 = abs(~firstTrailingBit(-(vec3<i32>(17047i, 26140i, u_input.c.x) ^ u_input.e.ywz)));
    global0 = array<vec3<bool>, 8>();
    return -385f;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_1) -> f32 {
    global2 = Struct_3(~(~(~_wgslsmith_mult_u32(1u, 7621u))));
    global0 = array<vec3<bool>, 8>();
    return _wgslsmith_f_op_f32(func_5(arg_1.a.x, func_4(_wgslsmith_f_op_f32(func_2(vec4<i32>(arg_0.x, -2147483647i, 1i, u_input.e.x), 1000f, arg_1.a, true)) >= _wgslsmith_f_op_f32(ceil(1000f)), firstLeadingBit(u_input.a), -1i, arg_1), arg_3));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_5) -> Struct_3 {
    return Struct_3(1u ^ select(4294967295u, _wgslsmith_sub_u32(select(79279u, 0u, arg_1.b), global2.a), all(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(any(global0[_wgslsmith_index_u32(~52313u, 8u)]), any(vec3<bool>(true, true, true))));
    global2 = func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(593f)) + _wgslsmith_f_op_f32(1551f * -993f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-397f + -225f) * _wgslsmith_f_op_f32(func_1(u_input.c.yx, Struct_4(vec2<u32>(u_input.d, 46756u)), true, Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x), global2.a, -801f, vec4<bool>(false, var_0.x, var_0.x, false))))), _wgslsmith_f_op_f32(-1000f + 1826f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(334f, 489f, -951f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1113f, 572f, -803f)), var_0.x)))), func_4(false, ~1u, -(u_input.c.x & -1i) ^ (_wgslsmith_mod_i32(-58131i, u_input.e.x) ^ u_input.e.x), func_4(!all(vec3<bool>(var_0.x, true, true)), _wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(u_input.d, u_input.b, 0u), 48596u), 0i, Struct_4(~vec2<u32>(1u, u_input.a))).a));
    var var_1 = func_6(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -234f) * _wgslsmith_f_op_f32(f32(-1f) * -464f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1152f)), -284f, var_0.x || false))), _wgslsmith_f_op_f32(-608f * _wgslsmith_f_op_f32(func_2(~u_input.e, _wgslsmith_f_op_f32(func_5(15725u, Struct_5(Struct_4(vec2<u32>(11067u, global2.a)), true), Struct_1(global0[_wgslsmith_index_u32(29364u, 8u)], global2.a, 1054f, vec4<bool>(false, var_0.x, true, var_0.x)))), vec2<u32>(1u, u_input.a), false))), _wgslsmith_f_op_f32(f32(-1f) * -1573f)), Struct_5(func_4(true, func_3(Struct_5(Struct_4(vec2<u32>(u_input.d, 19742u)), var_0.x), select(global1[_wgslsmith_index_u32(1u, 25u)], vec4<bool>(false, true, var_0.x, var_0.x), var_0.x), func_4(var_0.x, u_input.a, -2147483647i, Struct_4(vec2<u32>(12291u, global2.a)))).x, -2147483647i, func_4(any(global0[_wgslsmith_index_u32(1u, 8u)]), u_input.a, u_input.c.x, func_4(var_0.x, u_input.a, u_input.e.x, Struct_4(vec2<u32>(1u, 4294967295u))).a).a).a, true));
    let var_2 = global1[_wgslsmith_index_u32(u_input.b, 25u)];
    let var_3 = func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(725f, -1194f, -240f) + vec3<f32>(865f, -1348f, -387f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 628f, 899f))) - vec3<f32>(_wgslsmith_f_op_f32(-995f + -349f), _wgslsmith_f_op_f32(max(285f, -1578f)), _wgslsmith_f_op_f32(-883f + -1078f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2214f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-1436f))) - vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(-1746f))))), func_4(var_0.x, _wgslsmith_mult_u32(~global2.a | 46757u, ~_wgslsmith_mod_u32(var_1.a, 62168u)), countOneBits(1i << ((var_1.a >> (31502u % 32u)) % 32u)), Struct_4(vec2<u32>(u_input.b, _wgslsmith_mod_u32(11368u, 40790u)))));
    var var_4 = Struct_1(vec3<bool>(!var_2.x != var_0.x, !(_wgslsmith_f_op_f32(ceil(1015f)) >= _wgslsmith_f_op_f32(func_2(u_input.e, 1890f, vec2<u32>(0u, 33699u), var_2.x))), func_4(!var_0.x, ~u_input.b, u_input.c.x, func_4(var_0.x, u_input.a, ~u_input.e.x, func_4(false, 4294967295u, u_input.e.x, Struct_4(vec2<u32>(var_3.a, 0u))).a).a).b), ~var_1.a << (18963u % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1187f, _wgslsmith_f_op_f32(func_2(~vec4<i32>(u_input.c.x, 43919i, u_input.e.x, -1169i), _wgslsmith_f_op_f32(floor(468f)), ~vec2<u32>(16354u, global2.a), any(vec4<bool>(true, var_0.x, var_0.x, false))))) - -575f), !global1[_wgslsmith_index_u32(28656u, 25u)]);
    var var_5 = func_4(func_4(true, ~4294967295u, -1i, func_4(var_2.x, abs(var_4.b), -2147483647i >> (func_4(false, var_3.a, u_input.c.x, Struct_4(vec2<u32>(global2.a, 0u))).a.a.x % 32u), func_4(true, 1676u, abs(2147483647i), func_4(var_0.x, u_input.b, u_input.e.x, Struct_4(vec2<u32>(50204u, 0u))).a).a).a).b, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global2.a, global2.a, 44887u, global2.a), vec4<u32>(var_4.b, 37877u, global2.a, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a, 1u, 1u, 4294967295u), vec4<u32>(87952u, 4294967295u, global2.a, var_4.b))), var_4.b, abs(29363u)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(9671u, var_3.a), vec2<u32>(var_1.a, 0u) | vec2<u32>(var_3.a, 0u))), 7891i, func_4(var_0.x, 4294967295u, 2147483647i, Struct_4(~vec2<u32>(21787u, 0u))).a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), vec3<i32>(_wgslsmith_mod_i32(u_input.e.x, u_input.c.x) & min(_wgslsmith_dot_vec2_i32(vec2<i32>(-54124i, u_input.c.x), u_input.c.xz), _wgslsmith_sub_i32(u_input.c.x, -63489i)), ~u_input.c.x, i32(-1i) * -2147483647i), abs(-14152i), 16003i, _wgslsmith_add_vec4_u32((vec4<u32>(var_3.a, 51831u, global2.a, 6211u) | abs(vec4<u32>(4294967295u, 96575u, var_4.b, var_3.a))) | select(~vec4<u32>(19992u, 21047u, var_4.b, 1u), abs(vec4<u32>(4294967295u, var_3.a, var_4.b, 0u)), select(global1[_wgslsmith_index_u32(4294967295u, 25u)], vec4<bool>(var_2.x, false, true, false), var_5.b)), vec4<u32>(var_3.a, ~(~u_input.b), global2.a, _wgslsmith_clamp_u32(var_4.b, max(var_3.a, 1u), global2.a))));
}

