struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(vec4<f32>(-225f, -1114f, -1883f, 1160f)), Struct_5(vec4<f32>(844f, -1268f, -278f, 883f)), Struct_5(vec4<f32>(1806f, 1000f, -192f, -505f)), Struct_5(vec4<f32>(-1444f, -993f, -805f, 188f)), Struct_5(vec4<f32>(-1575f, 591f, 1155f, 1239f)), Struct_5(vec4<f32>(-197f, -853f, -184f, -291f)), Struct_5(vec4<f32>(1209f, 850f, -1647f, 176f)), Struct_5(vec4<f32>(-503f, 889f, -1000f, -1458f)), Struct_5(vec4<f32>(931f, -1440f, -1314f, 1047f)), Struct_5(vec4<f32>(-779f, 1488f, 1755f, 1000f)), Struct_5(vec4<f32>(1332f, 1611f, 580f, 2604f)), Struct_5(vec4<f32>(2211f, 946f, -996f, -693f)), Struct_5(vec4<f32>(1893f, -547f, 166f, -208f)), Struct_5(vec4<f32>(-1628f, 638f, -251f, 1000f)), Struct_5(vec4<f32>(-1625f, 1312f, 1008f, 1645f)), Struct_5(vec4<f32>(359f, -882f, 1054f, 117f)), Struct_5(vec4<f32>(256f, -1371f, 1059f, 982f)), Struct_5(vec4<f32>(-1366f, 955f, 972f, -488f)), Struct_5(vec4<f32>(477f, -495f, 1000f, 828f)));

var<private> global1: array<Struct_1, 25>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_2(_wgslsmith_div_i32(u_input.a.x, reverseBits(0i)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, ~u_input.b.x) << ((4294967295u | ~select(21342u, u_input.b.x, false)) % 32u), 25u)], Struct_1(~u_input.b.x & _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.yy, vec2<u32>(4294967295u, 35458u)), _wgslsmith_clamp_vec2_u32(u_input.b.yz, vec2<u32>(19458u, 50452u), u_input.b.xy)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x) ^ vec4<i32>(28229i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, -2147483647i, u_input.a.x, u_input.a.x)), vec4<i32>(-38792i, ~(-24973i), u_input.a.x, 27756i)), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 17797i), vec2<i32>(u_input.a.x, u_input.a.x)))), min(u_input.b.x ^ ~u_input.b.x, ~11690u)), ~(~countOneBits(u_input.b.yy) & vec2<u32>(reverseBits(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(26986u, 4294967295u, u_input.b.x, 57274u), vec4<u32>(12033u, u_input.b.x, u_input.b.x, 0u)))));
    let var_1 = var_0.c;
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(123f))))) <= _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(786f, -205f) - _wgslsmith_f_op_f32(ceil(1379f))), -1000f)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(390f - -1624f) + -1232f))), var_0.a > _wgslsmith_sub_i32(~(-27894i), _wgslsmith_dot_vec2_i32(var_1.b.wy, vec2<i32>(u_input.a.x, -18746i))));
    let var_3 = Struct_3(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-235f * 132f) - -613f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(152f, -317f, false)) + -296f), _wgslsmith_f_op_f32(min(-1237f, -1630f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(210f, 534f, var_2.x))), true, any(select(vec2<bool>(var_2.x, false), !var_2.xx, vec2<bool>(true, false)))));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(u_input.b, select(vec3<u32>(var_0.b.d, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 4294967295u, 1u), var_3.a.x)), vec3<u32>(~u_input.b.x, var_0.b.d << (0u % 32u), ~10996u), var_2), ~max(vec3<u32>(u_input.b.x, 8732u, var_1.d) >> (vec3<u32>(4294967295u, var_0.c.a, 40980u) % vec3<u32>(32u)), u_input.b)), 1u), 19u)];
    return 1u;
}

fn func_2(arg_0: vec3<u32>) -> vec4<i32> {
    var var_0 = (_wgslsmith_clamp_u32(func_3(), select(~0u, 26246u, false), firstLeadingBit(arg_0.x | 0u)) ^ _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, 0u, u_input.b.x), max(u_input.b, vec3<u32>(0u, 4294967295u, 4294967295u))))) >> (35053u % 32u);
    var var_1 = ~abs(u_input.a.x ^ ~(i32(-1i) * -3084i));
    var_0 = u_input.b.x;
    var_0 = 2811u;
    var var_2 = Struct_2(-1i, Struct_1(~arg_0.x, -(-vec4<i32>(-46429i, -1i, 16527i, 1i) & min(vec4<i32>(u_input.a.x, -44159i, -23191i, 0i), vec4<i32>(u_input.a.x, 6728i, u_input.a.x, u_input.a.x))), u_input.a.zz, ~(~arg_0.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~arg_0 | vec3<u32>(arg_0.x, 0u, arg_0.x), vec3<u32>(~(~3793u), ~10491u, 61397u)), 25u)], vec2<u32>(arg_0.x, max(func_3(), 2033u) | _wgslsmith_dot_vec4_u32(~vec4<u32>(34286u, 47603u, arg_0.x, 1u), ~vec4<u32>(4294967295u, 1u, u_input.b.x, arg_0.x))));
    return firstLeadingBit(~(-select(vec4<i32>(-2147483647i, -50021i, -1437i, var_2.b.b.x), var_2.b.b, vec4<bool>(true, true, true, true))));
}

fn func_1() -> bool {
    let var_0 = Struct_1(_wgslsmith_add_u32(firstTrailingBit(21790u ^ ~u_input.b.x), 1u), max(abs(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -31620i)), -func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec3<u32>(4294967295u, u_input.b.x, 1u)))), -(~_wgslsmith_div_vec2_i32(u_input.a.xx | vec2<i32>(-1i, 65579i), u_input.a.yx)), ~_wgslsmith_div_u32(select(44893u, 5140u, false), ~0u) << (u_input.b.x % 32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(679f, -1388f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -228f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-568f, -723f)) - -110f) + -1000f)));
    let var_2 = var_1;
    global0 = array<Struct_5, 19>();
    var var_3 = Struct_2(-2147483647i, global1[_wgslsmith_index_u32(var_0.a, 25u)], var_0, (vec2<u32>(~u_input.b.x, 119253u) & select(u_input.b.zy, vec2<u32>(u_input.b.x, u_input.b.x), true)) & u_input.b.yx);
    return false;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_2(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 25u)], Struct_1(~4294967295u, ~(-select(vec4<i32>(u_input.a.x, 1i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, 1i, -26445i), true)), (u_input.a.xx | u_input.a.zz) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-31702i, -23269i), firstTrailingBit(u_input.a.yz)), select(u_input.b.x, ~(~1u), false)), ~u_input.b.zy);
    global1 = array<Struct_1, 25>();
    var var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1014f)));
    var var_2 = Struct_3(!vec4<bool>(arg_1.x, true, !(arg_2.x & false), false));
    global0 = array<Struct_5, 19>();
    return Struct_3(!(!select(vec4<bool>(arg_1.x, false, false, var_2.a.x), var_2.a, u_input.a.x == var_0.c.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 19>();
    global0 = array<Struct_5, 19>();
    let var_0 = countOneBits(vec3<i32>(1i, -_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -12040i));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-226f, 581f)))))))));
    global0 = array<Struct_5, 19>();
    var var_2 = func_4(1639f, select(vec3<bool>(var_1.x > _wgslsmith_f_op_f32(trunc(-183f)), func_1(), true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, false), false)), false), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true)));
    var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(sign(var_1.x))))))), vec3<bool>(!(!all(vec3<bool>(var_2.a.x, var_2.a.x, false))), reverseBits(-2339i) >= -(~u_input.a.x), var_2.a.x), vec3<bool>(!(~125386u <= (u_input.b.x >> (u_input.b.x % 32u))), true, all(func_4(-781f, select(var_2.a.wwx, vec3<bool>(true, true, var_2.a.x), false), vec3<bool>(var_2.a.x, var_2.a.x, false)).a.wx)));
    var var_3 = Struct_2(u_input.a.x, Struct_1(_wgslsmith_sub_u32(u_input.b.x, select(1u, u_input.b.x, var_2.a.x)), select(-min(vec4<i32>(1i, u_input.a.x, var_0.x, 0i), vec4<i32>(0i, 12459i, 0i, u_input.a.x)), ~vec4<i32>(-1i, var_0.x, u_input.a.x, var_0.x), var_2.a), -(vec2<i32>(2147483647i, 1i) | -var_0.zy), _wgslsmith_mult_u32(31530u, select(select(u_input.b.x, u_input.b.x, true), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), true))), Struct_1(u_input.b.x, ~_wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.a.x, -12182i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 335i, -22500i)), ~vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, var_0.x)), u_input.a.yz ^ u_input.a.zy, _wgslsmith_div_u32(~(~u_input.b.x), 16373u)), vec2<u32>(func_3(), _wgslsmith_sub_u32(1u, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_1.x, 1124f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, -262f, -768f), vec3<f32>(var_1.x, -1332f, var_1.x))))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1073f, var_1.x, -409f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -528f, var_1.x) - vec3<f32>(var_1.x, 235f, -801f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-828f, -1000f, var_1.x)))))), var_0.x, u_input.a.x, abs(var_0));
}

