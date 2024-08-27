struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(-9874i, 7730i, 13568i, 0i), vec4<i32>(-21332i, -1i, -1i, -1i), vec4<i32>(1i, -5642i, 0i, 1i), vec4<i32>(1i, 1i, 7258i, -4390i), vec4<i32>(1i, 0i, 0i, -1i), vec4<i32>(-1i, -50512i, 2147483647i, 0i), vec4<i32>(43017i, -1i, 1i, i32(-2147483648)), vec4<i32>(15181i, i32(-2147483648), 1i, -1i), vec4<i32>(3507i, 26912i, -11689i, 0i), vec4<i32>(1i, 0i, i32(-2147483648), -76322i), vec4<i32>(13380i, 0i, 2147483647i, -1i), vec4<i32>(9323i, 32516i, -27587i, -24036i), vec4<i32>(7474i, 2147483647i, 13662i, 1i), vec4<i32>(1i, 33554i, -47849i, -3226i), vec4<i32>(-43361i, -1i, -1i, 2147483647i), vec4<i32>(-3042i, 2147483647i, -48830i, 2147483647i), vec4<i32>(26089i, 1i, 1i, -1i), vec4<i32>(-1i, 1i, 2147483647i, -42308i), vec4<i32>(-24454i, 21645i, 46276i, 15559i), vec4<i32>(i32(-2147483648), 42374i, 1i, 23567i), vec4<i32>(17742i, 1i, -4685i, 6375i), vec4<i32>(-24006i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 1i), vec4<i32>(-1i, 0i, 16323i, -1i), vec4<i32>(1i, -63594i, -1i, 5729i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 1i), vec4<i32>(0i, 2147483647i, -1i, 1i), vec4<i32>(-1i, 900i, 1i, 2147483647i));

var<private> global2: array<vec2<bool>, 14>;

var<private> global3: array<Struct_1, 9>;

var<private> global4: array<Struct_3, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    global0 = _wgslsmith_f_op_f32(abs(arg_0.d.x));
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(895f, _wgslsmith_f_op_f32(trunc(138f)), _wgslsmith_f_op_f32(-1116f - arg_0.d.x)))), vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.d.x))))), arg_0.d.x), vec3<bool>(any(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(abs(293f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x * 1311f)))));
    let var_1 = Struct_3(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), true)), select(vec3<bool>(any(vec4<bool>(false, false, false, true)), arg_1 > 29618i, select(true, true, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(ceil(var_0.x)) > _wgslsmith_f_op_f32(step(arg_0.d.x, arg_0.d.x)))), Struct_1(select(vec2<i32>(~4848i, firstLeadingBit(-1i)), _wgslsmith_sub_vec2_i32(arg_0.e.a, countOneBits(arg_0.a.a)), u_input.a > u_input.a), select(_wgslsmith_mod_vec2_u32(u_input.c.yx, firstLeadingBit(u_input.c.zx)), firstTrailingBit(vec2<u32>(arg_0.e.b.x, 4360u)), vec2<bool>(true, true)), ~_wgslsmith_clamp_u32(~arg_0.c, max(u_input.c.x, 35104u), 1u)), arg_0.a, !vec3<bool>(_wgslsmith_mult_i32(arg_1, -2147483647i) >= arg_0.a.a.x, true | any(vec3<bool>(false, false, true)), true));
    var var_2 = vec4<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.a.x, -1i), vec2<i32>(-1i, i32(-1i) * -9418i))), _wgslsmith_clamp_i32(1i, arg_0.a.a.x >> (~abs(var_1.b.c) % 32u), -7694i), abs(-1i), -2147483647i);
    var var_3 = Struct_1(-arg_0.a.a, ~vec2<u32>(~(~48083u), 4294967295u), 34831u);
    return ~var_1.c.c;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -223f)), _wgslsmith_f_op_f32(f32(-1f) * -208f), 1000f, _wgslsmith_f_op_f32(214f + -499f)), vec4<f32>(1f, _wgslsmith_f_op_f32(min(336f, _wgslsmith_f_op_f32(f32(-1f) * -874f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -279f))))));
    var var_1 = select(select(select(select(select(vec4<bool>(arg_0, arg_1.x, arg_1.x, true), vec4<bool>(arg_0, arg_0, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, false, true)), select(vec4<bool>(arg_1.x, true, arg_0, arg_1.x), vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_1.x, true, false, arg_0)), false), !vec4<bool>(false, arg_0, false, arg_1.x), !(!arg_1.x)), select(!vec4<bool>(arg_0, arg_0, true, arg_1.x), vec4<bool>(all(arg_1), any(vec2<bool>(arg_1.x, arg_1.x)), arg_0, false), all(!vec3<bool>(true, false, arg_0))), vec4<bool>(arg_1.x, true, arg_0 & false, select(true, all(vec4<bool>(false, arg_1.x, true, arg_0)), true))), !(!vec4<bool>(true && arg_0, all(vec3<bool>(true, arg_1.x, arg_1.x)), arg_0, true)), select(!vec4<bool>(arg_0, all(vec4<bool>(true, true, true, true)), false, false), vec4<bool>(!arg_1.x, false, !all(vec3<bool>(arg_1.x, false, arg_0)), true), vec4<bool>(true, false, arg_0, !any(vec4<bool>(arg_0, false, arg_1.x, arg_0)))));
    global4 = array<Struct_3, 7>();
    var var_2 = vec3<bool>(abs(~u_input.a ^ (11011u | arg_2.b.x)) < func_3(Struct_2(Struct_1(vec2<i32>(arg_2.a.x, arg_2.a.x), vec2<u32>(6178u, u_input.c.x), 21306u), u_input.c.x, 11329u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1092f, var_0.x)), global3[_wgslsmith_index_u32(16288u, 9u)]), 1i), arg_0, false);
    var var_3 = Struct_1(_wgslsmith_sub_vec2_i32((abs(vec2<i32>(arg_2.a.x, 1i)) & select(vec2<i32>(-50781i, arg_2.a.x), vec2<i32>(-24304i, -36197i), var_1.x)) | select(arg_2.a, vec2<i32>(55273i, arg_2.a.x), vec2<bool>(arg_0, arg_1.x)), vec2<i32>(abs(i32(-1i) * -2147483647i), 43626i)), u_input.c.xy, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 58183u, 0u, arg_2.c), vec4<u32>(arg_2.c, 4294967295u, arg_2.b.x, u_input.c.x)), abs(36862u), 1u), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.c, u_input.b.x, 34787u, 40326u), ~vec4<u32>(arg_2.c, u_input.a, 12760u, arg_2.b.x)) & vec4<u32>(select(70271u, u_input.c.x, false), ~22742u, _wgslsmith_add_u32(41499u, arg_2.c), u_input.a << (38689u % 32u))));
    return arg_1.x;
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    global4 = array<Struct_3, 7>();
    return vec3<bool>(func_4(any(vec3<bool>(true, true, true)), vec3<bool>(true, true, true), Struct_1(_wgslsmith_mod_vec2_i32(~arg_0.e.a, ~arg_0.a.a), vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, arg_0.a.c), vec4<u32>(4294967295u, 88599u, 4294967295u, u_input.c.x))), func_3(arg_0, arg_0.e.a.x) ^ u_input.b.x)), !any(select(select(global2[_wgslsmith_index_u32(arg_0.e.c, 14u)], vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true), true)), true);
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> f32 {
    global2 = array<vec2<bool>, 14>();
    global2 = array<vec2<bool>, 14>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1106f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1013f, -146f, arg_1.d.x)) + _wgslsmith_f_op_f32(129f * 1111f))))));
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -677f), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-998f, _wgslsmith_f_op_f32(-726f * arg_0))) * _wgslsmith_f_op_f32(arg_0 * arg_0))));
    global2 = array<vec2<bool>, 14>();
    global4 = array<Struct_3, 7>();
    var var_1 = Struct_1(arg_2.b.a, max(~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), arg_2.b.b), vec2<u32>(33914u, 0u)), vec2<u32>((u_input.b.x << (0u % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.b.x, arg_2.b.b.x, 4294967295u, 42771u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) % 32u), _wgslsmith_div_u32(~u_input.a, firstLeadingBit(29612u)))), arg_2.b.c);
    let var_2 = global3[_wgslsmith_index_u32(max(var_1.b.x, select(0u, _wgslsmith_clamp_u32(~_wgslsmith_add_u32(u_input.b.x, arg_2.c.c), u_input.b.x, ~abs(u_input.c.x)), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(1000f + 1460f)) < arg_1)), 9u)];
    return global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(var_1.b.x, arg_2.b.b.x, ~u_input.c.x ^ 1u), func_3(Struct_2(Struct_1(var_1.a, var_1.b, 63506u), u_input.a, ~1u, vec2<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_div_f32(2516f, arg_1)), Struct_1(select(vec2<i32>(-15634i, -16444i), arg_2.b.a, true), min(var_1.b, arg_2.c.b), var_2.c)), -abs(reverseBits(var_2.a.x)))), 9u)];
}

fn func_1() -> u32 {
    global4 = array<Struct_3, 7>();
    let var_0 = func_6(_wgslsmith_f_op_f32(func_5(true, Struct_3(func_2(Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], 0u, u_input.b.x, vec2<f32>(2407f, -726f), Struct_1(vec2<i32>(-1i, 2147483647i), vec2<u32>(u_input.c.x, 16525u), u_input.c.x))), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-1i, -2029i)), min(vec2<u32>(u_input.c.x, 42291u), vec2<u32>(u_input.c.x, u_input.b.x)), 19759u), Struct_1(~vec2<i32>(0i, 1i), select(u_input.c.yz, u_input.b, false), _wgslsmith_mod_u32(54863u, 1u)), vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-777f)) - -1400f))), Struct_3(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_1(reverseBits(-vec2<i32>(-42017i, -21786i)), select(u_input.c.zy, u_input.b, vec2<bool>(true, true)), _wgslsmith_mult_u32(~u_input.c.x, ~u_input.b.x)), global3[_wgslsmith_index_u32(~abs(u_input.b.x), 9u)], vec3<bool>(true, false, true)));
    global3 = array<Struct_1, 9>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(877f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-648f))))), 517f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-133f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1903f, -1155f) - _wgslsmith_f_op_f32(f32(-1f) * -604f))))));
    var var_2 = ~max(var_0.c, u_input.a) ^ ~(firstTrailingBit(_wgslsmith_add_u32(15878u, 0u)) & (72964u ^ ~var_0.c));
    return var_0.b.x;
}

fn func_7(arg_0: u32, arg_1: vec4<bool>) -> bool {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 9u)], func_3(Struct_2(Struct_1(vec2<i32>(1i, 1i), u_input.c.xy, 23322u), ~arg_0, _wgslsmith_sub_u32(~u_input.b.x, ~0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-904f, -986f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1048f, -714f), vec2<f32>(736f, 420f)))), Struct_1(firstTrailingBit(vec2<i32>(0i, 2147483647i)), func_6(1137f, 689f, global4[_wgslsmith_index_u32(u_input.b.x, 7u)]).b, 4123u)), 0i), _wgslsmith_clamp_u32(1u, arg_0, 10796u) & ~1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -751f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -477f) * _wgslsmith_f_op_f32(min(694f, -104f))))), func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-821f, 623f)), _wgslsmith_f_op_f32(2075f * 295f))), 506f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(105f, -122f)), 556f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(256f)))), global4[_wgslsmith_index_u32(1u, 7u)]));
    global2 = array<vec2<bool>, 14>();
    let var_1 = arg_1.wzx;
    var var_2 = reverseBits(u_input.b);
    let var_3 = var_0.e;
    return _wgslsmith_div_u32(50856u, ~_wgslsmith_sub_u32(var_3.c, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), var_3.b))) < 3699u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), any(vec3<bool>(true, false, false))), vec3<bool>(true, false, func_7(func_1(), vec4<bool>(false, true, any(vec4<bool>(true, false, false, true)), true))), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), vec3<bool>(true, any(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 14u)]), false), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 28018u, u_input.a), u_input.c) >= 1u));
    let var_1 = _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(func_6(_wgslsmith_f_op_f32(376f - 640f), _wgslsmith_f_op_f32(-685f * 1000f), Struct_3(vec3<bool>(false, var_0.x, var_0.x), Struct_1(vec2<i32>(40910i, -2147483647i), vec2<u32>(0u, 94654u), 35761u), Struct_1(vec2<i32>(0i, 2147483647i), vec2<u32>(u_input.a, u_input.a), 66722u), vec3<bool>(false, var_0.x, true))).a.x, 2147483647i, 1i), reverseBits(-vec3<i32>(0i, 68011i, -7250i)) >> (u_input.c % vec3<u32>(32u))));
    let var_2 = global4[_wgslsmith_index_u32(func_1(), 7u)];
    global1 = array<vec4<i32>, 28>();
    var var_3 = Struct_2(func_6(_wgslsmith_f_op_f32(f32(-1f) * -568f), 994f, global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, reverseBits(1u)), 7u)]), ~(~var_2.b.c) >> (~54809u % 32u), u_input.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -449f))) - vec2<f32>(_wgslsmith_f_op_f32(round(-344f)), -1258f)))), global3[_wgslsmith_index_u32(~u_input.a, 9u)]);
    let var_4 = var_2.a.x;
    var var_5 = Struct_1(func_6(253f, _wgslsmith_f_op_f32(var_3.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.x))), global4[_wgslsmith_index_u32(var_3.c, 7u)]).a, max(reverseBits(~(var_2.b.b | vec2<u32>(0u, 33614u))), u_input.b), 25640u);
    global3 = array<Struct_1, 9>();
    let var_6 = func_4(false, !var_2.a, func_6(_wgslsmith_f_op_f32(var_3.d.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_3.d.x, var_3.d.x)), _wgslsmith_f_op_f32(-var_3.d.x)))), -1000f, global4[_wgslsmith_index_u32(min(var_2.c.c, _wgslsmith_mult_u32(~0u, u_input.b.x)), 7u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mod_i32(abs(1i), 1i), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.e.a.x, var_5.a.x, var_1, 22138i), vec4<i32>(var_3.e.a.x, var_5.a.x, var_2.c.a.x, 1i)) << (func_1() % 32u))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(var_3.d.x, 779f), _wgslsmith_f_op_f32(f32(-1f) * -1067f), 589f, var_3.d.x))))), _wgslsmith_mult_vec2_i32(var_3.e.a, -var_2.b.a | vec2<i32>(2147483647i, -18904i)) << (~(~(var_2.b.b | vec2<u32>(u_input.c.x, var_3.c))) % vec2<u32>(32u)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 56685u, 46704u), vec4<u32>(u_input.a, 1u, var_2.c.b.x, 3863u))) >> (select(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_2.c.b.x, 1u, 17503u, var_2.c.c), _wgslsmith_mult_vec4_u32(vec4<u32>(24625u, var_5.b.x, 20933u, 0u), vec4<u32>(1u, var_5.c, 4294967295u, u_input.a))), ~vec4<u32>(1u, 19242u, 4294967295u, 24726u), select(!vec4<bool>(var_0.x, false, true, true), !vec4<bool>(var_0.x, true, false, true), !vec4<bool>(var_0.x, false, false, false))) % vec4<u32>(32u)), _wgslsmith_mod_vec2_u32(~func_6(_wgslsmith_f_op_f32(842f - 446f), _wgslsmith_f_op_f32(711f - var_3.d.x), Struct_3(vec3<bool>(false, true, true), Struct_1(var_3.e.a, var_5.b, u_input.b.x), var_2.c, vec3<bool>(var_0.x, var_0.x, var_0.x))).b, ~var_5.b));
}

