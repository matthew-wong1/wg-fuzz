struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: u32 = 38391u;

var<private> global1: vec3<bool>;

var<private> global2: vec3<u32> = vec3<u32>(16189u, 4294967295u, 20757u);

var<private> global3: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(846f, 683f, -1442f, 1103f), vec4<f32>(-1000f, -1747f, -511f, -933f), vec4<f32>(-303f, -857f, 1748f, 321f), vec4<f32>(-2427f, -257f, 987f, -632f), vec4<f32>(-840f, 1911f, -2179f, 1316f), vec4<f32>(-741f, 228f, 1143f, 1037f), vec4<f32>(-399f, 628f, -1206f, -1000f), vec4<f32>(844f, -268f, -376f, 561f), vec4<f32>(-518f, 867f, -1939f, -174f), vec4<f32>(525f, -1989f, -317f, 483f), vec4<f32>(980f, -236f, -1080f, 1177f), vec4<f32>(790f, -1234f, 1660f, 360f), vec4<f32>(-464f, 1000f, -494f, -388f), vec4<f32>(567f, -875f, -1421f, -298f), vec4<f32>(342f, 237f, 1125f, 1176f), vec4<f32>(-796f, 1208f, 109f, -517f), vec4<f32>(-1312f, 351f, 1000f, -240f), vec4<f32>(-205f, 1152f, 891f, -2574f), vec4<f32>(-1984f, -1192f, -1000f, -195f), vec4<f32>(640f, -568f, 511f, 1225f), vec4<f32>(-121f, -1000f, 173f, 1404f), vec4<f32>(1040f, -850f, -656f, 171f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-248f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.d.b * -1340f), 252f), -871f) - vec3<f32>(679f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1248f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1331f + 242f)))));
    let var_1 = Struct_3(select(vec2<bool>(true, true), arg_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * var_0.x)) != _wgslsmith_f_op_f32(arg_2.d.b - _wgslsmith_f_op_f32(arg_2.c.b * var_0.x))), Struct_2(~(-2147483647i), countOneBits(firstTrailingBit(arg_2.b)) << (vec3<u32>(~26409u, 48190u, 90375u) % vec3<u32>(32u)), arg_2.c, arg_2.c, arg_2.e), _wgslsmith_f_op_f32(arg_1 + -1000f), Struct_2(54355i, vec3<u32>(1u, global2.x, ~(~2581u)), Struct_1(true, var_0.x, true), arg_2.d, select(arg_2.e, vec2<bool>(global1.x, all(vec4<bool>(arg_2.d.a, global1.x, global1.x, false))), true)));
    let var_2 = 196f;
    var var_3 = arg_2;
    let var_4 = Struct_4(Struct_1(true, arg_2.c.b, true), Struct_1(true && any(!vec2<bool>(arg_2.d.c, true)), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.c.b), _wgslsmith_f_op_f32(-var_2)))), any(select(var_1.b.e, select(var_3.e, var_3.e, var_3.e), all(var_1.b.e)))), -1375f, var_3.d.b, Struct_1(true, -802f, false));
    return vec2<bool>(arg_2.c.a && var_4.e.a, true);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(~global2.x, 22u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -102f, arg_1.x, arg_1.x)))), global3[_wgslsmith_index_u32(9431u, 22u)], vec4<bool>(all(arg_0), !global1.x, any(vec4<bool>(false, global1.x, false, false)), all(vec3<bool>(false, false, global1.x)))))));
    let var_1 = Struct_2(1i, vec3<u32>(88268u, (1u << (abs(global2.x) % 32u)) >> (_wgslsmith_sub_u32(global2.x, ~23120u) % 32u), abs(abs(global2.x))), Struct_1(global1.x, var_0.x, !all(global1.yx) && true), Struct_1(42972u <= _wgslsmith_clamp_u32(45976u, 15411u, select(global2.x, 1u, arg_0.x)), _wgslsmith_f_op_f32(sign(-947f)), true), vec2<bool>(true, global1.x && (any(vec4<bool>(arg_0.x, true, true, false)) | true)));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, _wgslsmith_div_f32(895f, -312f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.b - -630f))))));
    let var_2 = vec4<i32>(arg_2, u_input.a, var_1.a, arg_2);
    var_0 = vec4<f32>(1610f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-var_0.x)), -1758f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_1.c.b, var_1.d.b)))), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(abs(-594f)));
    return vec4<i32>(firstLeadingBit(var_1.a), -(~arg_2), arg_2, 22318i);
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: vec4<i32>) -> f32 {
    global3 = array<vec4<f32>, 22>();
    var var_0 = Struct_3(!vec2<bool>(arg_1.e.c & func_3(u_input.a, 1756f, Struct_2(arg_2.x, vec3<u32>(arg_0, arg_0, 1u), Struct_1(arg_1.b.a, 633f, false), arg_1.b, vec2<bool>(arg_1.a.c, global1.x))).x, all(vec3<bool>(arg_1.a.c, arg_1.b.c, global1.x)) || true), Struct_2(1i, vec3<u32>(arg_0, ~(~global2.x), _wgslsmith_sub_u32(arg_0, 48194u) >> (~arg_0 % 32u)), Struct_1(!all(vec4<bool>(arg_1.a.a, arg_1.a.c, global1.x, false)), 1000f, any(global1.xx)), Struct_1(_wgslsmith_f_op_f32(-arg_1.c) != _wgslsmith_f_op_f32(-arg_1.c), arg_1.d, all(vec3<bool>(false, true, global1.x))), !global1.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.e.b)), 1f)))), Struct_2(~min(~1i, -22785i), vec3<u32>(~arg_0, _wgslsmith_add_u32(global2.x, global2.x), arg_0) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(15696u, 1u, 25824u), vec3<u32>(arg_0, 1u, 1u)), abs(vec3<u32>(34537u, arg_0, arg_0)), vec3<u32>(46122u, 4294967295u, 1u)) % vec3<u32>(32u)), arg_1.a, arg_1.b, global1.yx));
    global0 = global2.x;
    var var_1 = Struct_1(var_0.c < -623f, -1417f, !(!any(vec2<bool>(true, true))));
    var var_2 = var_0.b.d;
    return _wgslsmith_f_op_f32(f32(-1f) * -152f);
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(~global2.x, Struct_4(Struct_1(true, -293f, !global1.x), Struct_1(global1.x, _wgslsmith_div_f32(-133f, 409f), global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-705f * 784f), 541f), -1000f, Struct_1(true, _wgslsmith_f_op_f32(754f + 370f), global2.x == 50992u)), func_4(!func_3(20551i, 447f, Struct_2(-23678i, vec3<u32>(global2.x, 4294967295u, 0u), Struct_1(true, -2365f, global1.x), Struct_1(global1.x, 642f, global1.x), vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(-255f * 549f), _wgslsmith_f_op_f32(f32(-1f) * -1682f)), i32(-1i) * -u_input.a))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1323f + 274f), _wgslsmith_f_op_f32(round(1750f))) * -788f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1133f)) + 147f)) * -547f), 1f);
    global2 = select(~(~abs(vec3<u32>(0u, 42975u, arg_0.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(firstLeadingBit(arg_0.x)), arg_0.x, abs(arg_0.x)), vec3<u32>(global2.x, _wgslsmith_div_u32(arg_0.x | 2310u, select(27625u, arg_0.x, true)), _wgslsmith_mod_u32(abs(4294967295u), global2.x))), _wgslsmith_mult_i32(-1628i, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)))) == u_input.a);
    var var_2 = !global1.x;
    global3 = array<vec4<f32>, 22>();
    return ~(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2.x), countOneBits(vec2<u32>(arg_0.x, global2.x)))));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: vec3<i32>) -> vec4<u32> {
    global2 = select(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.b.x, 11534u, global2.x), ~vec3<u32>(54762u, global2.x, 0u)), _wgslsmith_add_u32(global2.x >> (func_2(vec2<u32>(arg_0.d.b.x, 1u)) % 32u), ~countOneBits(global2.x)), 4294967295u), ~(~(~(~arg_0.b.b))), true);
    let var_0 = select(_wgslsmith_div_vec3_i32(vec3<i32>(~(~arg_3.x), -50124i, ~(0i << (arg_0.d.b.x % 32u))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(arg_3, arg_3), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_3, arg_3), -arg_0.d.a, -55830i), arg_3)), func_4(global1.zy, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), arg_0.d.d.b), 1i).xzy, vec3<bool>(true, false, false));
    global2 = ~arg_0.d.b;
    let var_1 = arg_0.a.x;
    global0 = ~_wgslsmith_dot_vec2_u32(abs(firstLeadingBit(select(vec2<u32>(global2.x, arg_0.d.b.x), vec2<u32>(global2.x, 1u), true))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(global2.x, 4294967295u)), ~(~global2.xy)));
    return _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(arg_0.b.b.x >> (global2.x % 32u), global2.x), arg_0.b.b.x, ~(~4294967295u), ~_wgslsmith_dot_vec3_u32(arg_0.d.b, vec3<u32>(1u, 4294967295u, 18744u))), select(vec4<u32>(_wgslsmith_mod_u32(arg_0.b.b.x, 55317u) << (~0u % 32u), 0u, _wgslsmith_div_u32(reverseBits(58709u), 72687u << (arg_0.d.b.x % 32u)), 1u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2.x, 56920u, ~arg_0.d.b.x), ~(~vec4<u32>(73853u, 4294967295u, global2.x, 33117u))), !vec4<bool>(false, !arg_2, true, arg_0.d.e.x || var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.yz;
    var var_1 = _wgslsmith_add_vec4_i32(~vec4<i32>(countOneBits(u_input.a), (-37221i << (global2.x % 32u)) >> (~global2.x % 32u), ~9160i & _wgslsmith_sub_i32(u_input.a, u_input.a), -_wgslsmith_mod_i32(1932i, -22467i)), vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(52208i, u_input.a)), vec2<i32>(u_input.a, u_input.a) << (global2.xz % vec2<u32>(32u))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, -15055i, 40812i), vec4<i32>(2147483647i, 42736i, u_input.a, -2147483647i)), 1i), -2147483647i & u_input.a, _wgslsmith_sub_i32(-16331i, 1i)) >> (~func_1(Struct_3(global1.xz, Struct_2(u_input.a, vec3<u32>(global2.x, 73259u, 0u), Struct_1(true, -824f, global1.x), Struct_1(true, -142f, global1.x), vec2<bool>(var_0.x, true)), -1591f, Struct_2(-1i, vec3<u32>(17471u, global2.x, 49646u), Struct_1(true, 418f, false), Struct_1(true, 1247f, true), global1.yz)), global1.x, !global1.x, vec3<i32>(u_input.a, -1i, u_input.a)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-2264f, -164f), -593f) * vec2<f32>(816f, 1037f));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a), ~49002i, -23195i), ~countOneBits(vec3<i32>(var_1.x, -79722i, -2147483647i))) ^ u_input.a, countOneBits(abs(var_1.x) ^ -(32987i ^ u_input.a)));
    let var_4 = Struct_3(vec2<bool>(true, false), Struct_2(~var_1.x, ~func_1(Struct_3(global1.yx, Struct_2(var_1.x, vec3<u32>(global2.x, 41808u, global2.x), Struct_1(false, -103f, true), Struct_1(true, 1776f, false), global1.zx), 1180f, Struct_2(18963i, vec3<u32>(global2.x, global2.x, global2.x), Struct_1(true, var_2.x, true), Struct_1(false, -874f, false), global1.zx)), true, global1.x & false, reverseBits(vec3<i32>(12068i, 2147483647i, 31131i))).wwz, Struct_1(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), var_2.x)), !var_0.x), Struct_1(!global1.x, _wgslsmith_f_op_f32(-var_2.x), false), vec2<bool>(any(select(vec3<bool>(true, true, var_0.x), vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, var_0.x, false))), all(!vec4<bool>(false, var_0.x, false, false)))), _wgslsmith_f_op_f32(exp2(var_2.x)), Struct_2(u_input.a, ~(~(vec3<u32>(global2.x, 0u, global2.x) | vec3<u32>(1u, 44523u, 17098u))), Struct_1(global1.x, 627f, global1.x), Struct_1(!select(false, false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x), (var_0.x || global1.x) && false), select(func_3(0i, _wgslsmith_div_f32(var_2.x, 339f), Struct_2(-55156i, vec3<u32>(global2.x, global2.x, 12470u), Struct_1(var_0.x, -133f, var_0.x), Struct_1(var_0.x, -567f, true), global1.zz)), !vec2<bool>(true, var_0.x), !vec2<bool>(false, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1575f));
}

