struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(38373i, 35516i, 6864i), vec3<i32>(37069i, 28391i, 0i), vec3<i32>(-1i, -23561i, -1i), vec3<i32>(i32(-2147483648), -43824i, -49522i), vec3<i32>(1i, 37491i, -50717i), vec3<i32>(1i, 0i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, -4i), vec3<i32>(8002i, 1i, 1i), vec3<i32>(1627i, 0i, -1i), vec3<i32>(-45129i, i32(-2147483648), 2147483647i), vec3<i32>(-41152i, 35550i, -8397i), vec3<i32>(-1i, 2147483647i, 20166i), vec3<i32>(2147483647i, -77752i, i32(-2147483648)), vec3<i32>(-5087i, -11543i, 0i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(-14629i, 2147483647i, 2147483647i), vec3<i32>(-60135i, 1i, i32(-2147483648)), vec3<i32>(14766i, -1i, -53626i), vec3<i32>(1118i, 51531i, -1i), vec3<i32>(i32(-2147483648), 22655i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, 30841i), vec3<i32>(-1i, 34332i, 4006i), vec3<i32>(-39206i, -11710i, -74265i), vec3<i32>(2147483647i, 2147483647i, 26587i), vec3<i32>(i32(-2147483648), 1i, -16550i), vec3<i32>(-1i, 25207i, -1i), vec3<i32>(-1i, 2147483647i, -40388i), vec3<i32>(i32(-2147483648), -22832i, 12836i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<i32> {
    var var_0 = all(vec3<bool>(true, true, true));
    var_0 = false;
    let var_1 = Struct_3(_wgslsmith_div_vec2_u32(u_input.b, u_input.b), vec3<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))) || (all(vec2<bool>(false, true)) & (u_input.a.x > 8829i)), false), true, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 21899u)), ~vec4<u32>(u_input.b.x, 63597u, u_input.b.x, 99443u)), 1u), 1u), _wgslsmith_dot_vec4_u32(firstLeadingBit(~select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, 86962u, u_input.b.x, u_input.b.x), true)), ~vec4<u32>(select(u_input.b.x, u_input.b.x, false), 4294967295u, 4294967295u, _wgslsmith_mult_u32(37108u, u_input.b.x))));
    var var_2 = Struct_3(var_1.d, var_1.b, false, u_input.b & vec2<u32>(17967u, var_1.e), 0u);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-240f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -138f) + _wgslsmith_f_op_f32(trunc(-803f)))), _wgslsmith_f_op_f32(102f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(608f, 1597f) * _wgslsmith_f_op_f32(trunc(134f)))))), Struct_1(_wgslsmith_mult_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(32229u, var_1.e, var_2.d.x, 85014u), vec4<u32>(u_input.b.x, u_input.b.x, var_2.d.x, 25161u)), vec4<u32>(0u, var_1.e, var_1.e, 16770u), var_1.c || var_1.c), vec4<u32>(~u_input.b.x, ~u_input.b.x, 4294967295u, ~var_1.e)), u_input.a.x, vec2<i32>(~0i, -7487i)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_2.e, 1u), 19856u));
    return reverseBits(~countOneBits(vec4<i32>(var_3.b.c.x, -26532i, -60571i, u_input.a.x)) ^ -vec4<i32>(var_3.b.b, 0i, u_input.c.x, 0i)) >> ((var_3.b.a | _wgslsmith_mult_vec4_u32(~abs(var_3.b.a), reverseBits(_wgslsmith_clamp_vec4_u32(var_3.b.a, var_3.b.a, vec4<u32>(var_1.e, 0u, 0u, 0u))))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_clamp_u32(4294967295u, 22206u, u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(step(400f, 1f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f - -2093f))));
    global0 = array<vec3<i32>, 28>();
    let var_2 = Struct_1(select(~vec4<u32>(1u, 45279u, 1u, var_0), vec4<u32>(abs(4294967295u), var_0, var_0, 4294967295u), false) & (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, 36287u, 0u, var_0)), firstLeadingBit(vec4<u32>(43395u, u_input.b.x, u_input.b.x, 46481u))) & (vec4<u32>(20909u, u_input.b.x, 8791u, u_input.b.x) & max(vec4<u32>(u_input.b.x, 4294967295u, 86553u, 22344u), vec4<u32>(44755u, u_input.b.x, u_input.b.x, 92544u)))), 0i, countOneBits(_wgslsmith_mod_vec2_i32(~func_3().yy, abs(arg_0.yy) & ~vec2<i32>(2147483647i, -3468i))));
    let var_3 = Struct_3(~select(countOneBits(vec2<u32>(38740u, 1u)), ~(u_input.b ^ u_input.b), select(vec2<bool>(arg_1.x, true), !arg_1, all(vec2<bool>(true, true)))), !select(vec3<bool>(true, !arg_1.x, false), !vec3<bool>(true, arg_1.x, true), select(vec3<bool>(arg_1.x, false, arg_1.x), !vec3<bool>(arg_1.x, true, arg_1.x), true)), (false | arg_1.x) | false, select(vec2<u32>(_wgslsmith_mult_u32(~var_2.a.x, abs(u_input.b.x)), 75508u), vec2<u32>(u_input.b.x, _wgslsmith_sub_u32(abs(var_0), max(var_0, 0u))), vec2<bool>(true, arg_1.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 57820u, 1u)), ~_wgslsmith_mod_vec3_u32(var_2.a.xwz, var_2.a.zww)), _wgslsmith_mult_u32(abs(abs(var_0)), _wgslsmith_clamp_u32(0u, ~14279u, ~var_2.a.x))));
    return 12002u;
}

fn func_2() -> vec2<u32> {
    var var_0 = -9166i;
    let var_1 = Struct_3(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.b.x, 163u)), vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(31350u, 50724u, u_input.b.x, 33361u), vec4<u32>(u_input.b.x, 1u, 56519u, u_input.b.x))), u_input.b.x)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(all(vec2<bool>(true, true)), true, select(true, false, true))), true, u_input.b, _wgslsmith_clamp_u32(48487u, u_input.b.x, func_4(func_3(), vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(false, true, false))))));
    var_0 = _wgslsmith_div_i32(max(1i & _wgslsmith_add_i32(u_input.c.x | u_input.a.x, _wgslsmith_mult_i32(20557i, u_input.c.x)), 0i), -2147483647i ^ u_input.c.x);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-223f + _wgslsmith_f_op_f32(abs(1302f))), _wgslsmith_f_op_f32(-1f));
    let var_3 = Struct_3(abs(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(2127u, var_1.d.x, 40326u)), ~22877u)), select(var_1.b, vec3<bool>(!any(var_1.b.xx), true, true), !any(select(var_1.b.yy, var_1.b.yy, true))), var_1.b.x, u_input.b, ~var_1.a.x);
    return ~min(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(34296u, u_input.b.x), vec2<u32>(2306u, 38705u)), vec2<u32>(~var_3.d.x, ~var_1.a.x)), vec2<u32>(~var_1.d.x, var_3.d.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(~1u, _wgslsmith_div_u32(0u, u_input.b.x)), func_2()), vec3<bool>(true, true, true), true, u_input.b, u_input.b.x);
    global0 = array<vec3<i32>, 28>();
    global0 = array<vec3<i32>, 28>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-998f, -221f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(122f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(247f + arg_1.x)))), var_0.b.x)), Struct_1(reverseBits(arg_0), u_input.c.x ^ (_wgslsmith_mod_i32(-43910i, -5317i) | _wgslsmith_div_i32(0i, u_input.a.x)), -min(-vec2<i32>(37628i, u_input.c.x), _wgslsmith_add_vec2_i32(vec2<i32>(-20339i, u_input.c.x), u_input.a))), ~u_input.b.x);
    var_0 = Struct_3(countOneBits(u_input.b), vec3<bool>(!select(var_0.c && var_0.b.x, var_0.b.x, true), true, false), select(var_0.c, true, 2147483647i < u_input.c.x), ~vec2<u32>(_wgslsmith_mod_u32(var_1.b.a.x, arg_0.x), 22694u) | ~var_0.a, abs(_wgslsmith_clamp_u32(1u, ~(~1u), 4294967295u)));
    return !vec2<bool>(!any(select(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), vec4<bool>(true, var_0.c, var_0.c, var_0.b.x), vec4<bool>(false, false, false, var_0.c))), true);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 299f), _wgslsmith_f_op_f32(708f - 1000f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-299f, -998f), vec2<f32>(1512f, 1000f), vec2<bool>(true, false)))))), _wgslsmith_div_vec2_f32(vec2<f32>(-1527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(265f, -736f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-760f + 728f), _wgslsmith_f_op_f32(step(-287f, 369f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-816f, 2057f)))))), arg_1.b.xz));
    global0 = array<vec3<i32>, 28>();
    var var_1 = vec4<bool>(arg_0.x, true, !arg_1.c, arg_1.c);
    var_1 = !(!vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, arg_1.b.x & (arg_1.e != arg_1.d.x)));
    var var_2 = Struct_3(~u_input.b, arg_1.b, -(u_input.a.x & select(2581i, u_input.c.x, false)) > (-1i << (0u % 32u)), ~(select(u_input.b << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), ~u_input.b, arg_0.x) << (arg_1.a % vec2<u32>(32u))), 1u);
    return StorageBuffer(-u_input.c, -811f, ~_wgslsmith_div_vec4_i32(abs(-vec4<i32>(-14179i, -1i, 47133i, 2147483647i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, 2147483647i, 35726i), vec4<i32>(u_input.a.x, -1i, 30203i, 37278i))), var_0, countOneBits(vec4<u32>(_wgslsmith_mult_u32(arg_1.e, u_input.b.x), _wgslsmith_mult_u32(22474u, arg_1.d.x), u_input.b.x & u_input.b.x, var_2.a.x | 0u)) << ((abs(vec4<u32>(17849u, 19788u, u_input.b.x, u_input.b.x)) ^ min(abs(vec4<u32>(u_input.b.x, 43572u, var_2.d.x, 0u)), countOneBits(vec4<u32>(var_2.e, 16851u, 24894u, 42557u)))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) * 1035f), -479f)), -620f)));
    let x = u_input.a;
    s_output = func_5(select(func_1(~vec4<u32>(42434u, u_input.b.x, u_input.b.x, 0u), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, var_0, 1042f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2201f, var_0, var_0), vec3<f32>(451f, 1351f, var_0))))), !vec2<bool>(u_input.a.x <= u_input.c.x, true), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))), Struct_3(vec2<u32>(4294967295u, 1u), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), true), true, vec2<u32>(~func_2().x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(1u, 1u, 4294967295u, 18846u))), 33313u));
}

