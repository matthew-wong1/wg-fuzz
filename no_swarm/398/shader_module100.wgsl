struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-285f, -1017f, 1340f, -1699f), vec4<f32>(1457f, -692f, 1525f, -1000f), vec4<f32>(1418f, 770f, 619f, 1388f), vec4<f32>(345f, 500f, 1000f, -704f), vec4<f32>(-2645f, -705f, -684f, -1000f), vec4<f32>(869f, 1258f, -384f, -1576f), vec4<f32>(1000f, 1000f, 539f, 805f), vec4<f32>(269f, -1059f, 138f, 1208f));

var<private> global2: array<i32, 29> = array<i32, 29>(2114i, 2147483647i, i32(-2147483648), -1i, 14493i, -70639i, 4915i, -5512i, 0i, 1i, -1i, 28343i, -57225i, -1i, -33977i, 0i, 0i, 2147483647i, 31608i, 0i, -1i, -21499i, -6647i, 2147483647i, 2147483647i, 1i, -6295i, -19980i, 1i);

var<private> global3: array<f32, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2692f, 1369f) - _wgslsmith_div_vec2_f32(vec2<f32>(-1386f, global3[_wgslsmith_index_u32(u_input.a, 20u)]), vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 20u)], 680f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-881f, global3[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(163f, 984f) + vec2<f32>(1458f, global3[_wgslsmith_index_u32(80656u, 20u)])))), any(vec4<bool>(global0.a, global0.a, global0.a, false))))), Struct_1(!global0.a), Struct_1(!global0.a), global0.a);
    let var_1 = !(!(!vec3<bool>(any(vec4<bool>(false, global0.a, global0.a, var_0.b.a)), true, true)));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-851f * 1f), _wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)))), var_0.b, var_0.b, all(!var_1));
    var var_2 = Struct_1(any(!(!(!vec4<bool>(var_1.x, true, false, true)))));
    var_2 = var_0.b;
    return _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a >> (firstTrailingBit(21471u) % 32u), ~(~21811u), 4294967295u), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 3774u, u_input.a)), vec3<u32>(u_input.a, 50064u, u_input.a)), abs(vec3<u32>(u_input.a, 4294967295u, 1u) & vec3<u32>(1u, 1u, u_input.a)))) | ~_wgslsmith_div_vec3_u32(vec3<u32>(38855u, countOneBits(35093u), ~10030u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 419u, 54878u), _wgslsmith_mult_vec3_u32(vec3<u32>(57911u, u_input.a, u_input.a), vec3<u32>(0u, 0u, 4294967295u))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(2605u, u_input.a, u_input.a), vec3<u32>(27411u, 12761u, u_input.a)), vec3<u32>(u_input.a, 1u, 39127u), select(vec3<bool>(false, arg_1.d, false), vec3<bool>(false, arg_1.d, arg_2.x), true)), vec3<u32>(65117u, ~0u, _wgslsmith_clamp_u32(86438u, 66542u, u_input.a)))), ~(vec3<u32>(u_input.a, 0u, ~1u) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(42002u, 0u, 1u))));
    let var_1 = false | all(arg_2);
    var var_2 = arg_1;
    var var_3 = func_3() & reverseBits(vec3<u32>(40615u, 6480u, 1u));
    var var_4 = u_input.a;
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1131f))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(10761u, 20u)]), -602f);
    global3 = array<f32, 20>();
    return Struct_1(!arg_0.d);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = vec2<bool>(-u_input.c.x == (_wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.yz) >> (u_input.a % 32u)), all(!vec4<bool>(true, false, global0.a, global0.a)));
    global3 = array<f32, 20>();
    global2 = array<i32, 29>();
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 20u)] * global3[_wgslsmith_index_u32(u_input.a, 20u)])) + 351f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(363f, 1741f))), func_2(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.a, 20u)])), func_2(global3[_wgslsmith_index_u32(u_input.a, 20u)], Struct_2(vec2<f32>(-916f, 1000f), Struct_1(false), Struct_1(arg_0.a), var_0.x), vec4<bool>(arg_3, global0.a, false, global0.a), global0.a), !vec4<bool>(true, true, false, arg_0.a), global0.a).a.x)), func_2(-1469f, Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(13453u, 20u)])))), func_2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(62748u, 20u)]), Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(1u, 20u)], 332f), arg_0, arg_0, true), select(vec4<bool>(arg_0.a, false, false, false), vec4<bool>(var_0.x, true, true, false), vec4<bool>(arg_3, arg_2.a, arg_2.a, arg_0.a)), global3[_wgslsmith_index_u32(4294967295u, 20u)] < 1000f).b, arg_2, arg_3), !(!select(vec4<bool>(true, global0.a, true, arg_0.a), vec4<bool>(arg_2.a, arg_2.a, arg_0.a, arg_2.a), arg_2.a)), !arg_3), vec4<bool>(global0.a, true, false, !any(!vec3<bool>(true, true, var_0.x))), !(!(global0.a && arg_3)) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2397f * global3[_wgslsmith_index_u32(0u, 20u)])) < global3[_wgslsmith_index_u32(~1u, 20u)]));
    var_1 = Struct_2(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1542f, 906f) - -1503f))), arg_0, var_1.b, false);
    return var_1.c;
}

fn func_6(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 20u)]), _wgslsmith_f_op_f32(-1521f * global3[_wgslsmith_index_u32(u_input.a, 20u)]), u_input.a < (reverseBits(u_input.a) << (select(4294967295u, 2998u, false) % 32u)))) * 298f);
    global3 = array<f32, 20>();
    global1 = array<vec4<f32>, 8>();
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, ~u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 55677u), vec2<u32>(3837u, u_input.a))), min(min(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), reverseBits(vec4<u32>(6837u, u_input.a, 29034u, u_input.a)) << (~vec4<u32>(4294967295u, u_input.a, 10629u, 26097u) % vec4<u32>(32u))), vec4<u32>(min(888u, abs(u_input.a)), ~u_input.a | u_input.a, ~u_input.a, 4294967295u & max(16368u, u_input.a))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(min(u_input.a, u_input.a), ~u_input.a), _wgslsmith_mult_u32(u_input.a, u_input.a) | _wgslsmith_mod_u32(69720u, u_input.a), 1u, abs(0u)), vec4<u32>(~1u, ~1u, func_3().x, u_input.a)));
    let var_2 = arg_0;
    return false;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = func_6(func_5(func_4(func_2(_wgslsmith_f_op_f32(1000f * 549f), Struct_2(vec2<f32>(-1438f, global3[_wgslsmith_index_u32(arg_0.x, 20u)]), Struct_1(global0.a), Struct_1(global0.a), false), !vec4<bool>(false, global0.a, false, global0.a), global0.a), arg_0.x & 4294967295u), -26224i, func_2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(func_3().x, 20u)]), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-179f, 996f)), func_4(Struct_2(vec2<f32>(483f, -849f), Struct_1(global0.a), Struct_1(global0.a), global0.a), 0u), func_2(1000f, Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(1u, 20u)], 1380f), Struct_1(true), Struct_1(false), global0.a), vec4<bool>(global0.a, false, true, false), true).c, false), vec4<bool>(!global0.a, !global0.a, true, global0.a), true).c, !(!global0.a && (10381u >= arg_0.x))));
    global0 = Struct_1(global0.a);
    let var_1 = max(u_input.a, reverseBits(u_input.a));
    let var_2 = func_3();
    global0 = Struct_1(!func_4(func_2(1390f, func_2(global3[_wgslsmith_index_u32(1u, 20u)], Struct_2(vec2<f32>(-983f, -940f), Struct_1(false), Struct_1(global0.a), global0.a), vec4<bool>(true, global0.a, true, false), global0.a), vec4<bool>(global0.a, global0.a, true, global0.a), false), 1u & var_2.x).a);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(1929u, 20u)], 634f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1936f, global3[_wgslsmith_index_u32(25476u, 20u)]))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(var_1, 20u)], -408f)))), global0.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(62331u, 20u)], -1355f) - vec2<f32>(257f, 751f))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(952f, -190f))))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -2378f), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(u_input.a, 20u)])), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 20u)])), Struct_1(false), func_4(func_2(-930f, Struct_2(vec2<f32>(-1271f, -116f), Struct_1(false), Struct_1(global0.a), true), vec4<bool>(global0.a, true, true, false), global0.a), var_1), true), select(!select(vec4<bool>(global0.a, false, global0.a, global0.a), vec4<bool>(global0.a, global0.a, true, true), vec4<bool>(true, false, true, global0.a)), !(!vec4<bool>(true, global0.a, global0.a, global0.a)), true), true).c, Struct_1(!select(false, true, true)), !(!global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 20>();
    global3 = array<f32, 20>();
    global1 = array<vec4<f32>, 8>();
    global2 = array<i32, 29>();
    let var_0 = Struct_1(global0.a);
    var var_1 = func_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 91725u) & vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, 1u, 4294967295u)) ^ reverseBits(vec3<u32>(u_input.a, ~u_input.a, u_input.a)));
    let var_2 = _wgslsmith_mult_i32((countOneBits(-40904i) >> (countOneBits(u_input.a) % 32u)) ^ max(global2[_wgslsmith_index_u32(u_input.a, 29u)], -22652i), firstLeadingBit(-_wgslsmith_dot_vec3_i32(u_input.c, u_input.c)) << (1u % 32u));
    let var_3 = 1236f;
    let var_4 = ~_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, 9676u, 1u) | vec3<u32>(~u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~var_4.x, _wgslsmith_sub_u32(12725u, 0u), 1u), vec4<u32>(~56442u, 1u, var_4.x, max(u_input.a, 0u))), _wgslsmith_div_u32(0u, min(48984u, 50893u)) >> (var_4.x % 32u)), vec4<i32>(u_input.b, 1i ^ u_input.c.x, _wgslsmith_mod_i32(var_2, -1i) & _wgslsmith_clamp_i32(~u_input.c.x, -11314i, -13343i), global2[_wgslsmith_index_u32(~(var_4.x >> (var_4.x % 32u)), 29u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) * _wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(var_3, var_3))) + vec2<f32>(-603f, var_3))), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_4.x | var_4.x, 88250u, u_input.a)), select(vec3<u32>(1u, min(4294967295u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(84579u, u_input.a, 0u), var_4)), ~vec3<u32>(24220u, 5121u, 24277u), select(vec3<bool>(true, true, global0.a), select(vec3<bool>(var_0.a, false, true), vec3<bool>(var_0.a, false, var_1.b.a), var_0.a), select(vec3<bool>(var_0.a, global0.a, true), vec3<bool>(false, var_1.c.a, global0.a), global0.a)))), ~countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_4.x, 29u)], u_input.d, global2[_wgslsmith_index_u32(48968u, 29u)]), vec4<i32>(-1i, 18828i, 2147483647i, var_2)), -vec4<i32>(-1i, -2147483647i, 6734i, -2147483647i))));
}

