struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>) -> vec4<i32> {
    let var_0 = Struct_2(47969u, vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.zyz, vec3<u32>(73534u, u_input.a.x, u_input.a.x)), u_input.a.xxx), ~u_input.a.x, u_input.d.x, 1u) | u_input.a, Struct_1(arg_0.x), u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -543f) * vec2<f32>(1477f, arg_0.x)) * _wgslsmith_f_op_vec2_f32(trunc(arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, 1078f), vec2<f32>(arg_0.x, arg_0.x)))))));
    let var_1 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(var_0.a, u_input.a.x), firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(var_0.b.xw, firstLeadingBit(var_0.b.zy))), ~u_input.d.x), ~abs(var_0.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1529f)))), firstLeadingBit(var_0.d), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -2982f) - vec2<f32>(-1439f, arg_0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a, var_0.c.a))))), vec2<f32>(_wgslsmith_div_f32(-792f, _wgslsmith_f_op_f32(-547f - 499f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x + 612f) - _wgslsmith_div_f32(arg_0.x, var_0.e.x)))));
    global0 = ~(reverseBits(-vec4<i32>(var_1.d, 1i, var_0.d, -1694i)) >> (vec4<u32>(~var_1.b.x, abs(u_input.d.x), max(10436u, var_1.a), _wgslsmith_add_u32(~0u, ~u_input.a.x)) % vec4<u32>(32u)));
    var var_2 = Struct_2(var_1.a, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 3539u), vec2<u32>(16082u, var_1.b.x)), 34874u, firstTrailingBit(u_input.a.x), select(0u, 43656u, true)), firstLeadingBit(~vec4<u32>(u_input.d.x, u_input.d.x, var_1.b.x, var_1.b.x)) << (max(vec4<u32>(u_input.d.x, 13666u, 36823u, var_1.b.x) & var_1.b, u_input.d) % vec4<u32>(32u))), var_0.c, var_1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(534f, 247f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.x, var_1.c.a))), any(vec3<bool>(true, true, true)))))));
    global1 = 4294967295u;
    return -(vec4<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -32768i), vec2<i32>(-1i, u_input.c.x))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, var_1.d, u_input.c.x), vec4<i32>(var_1.d, var_2.d, arg_1.x, u_input.b)), -1i), ~(-global0.x), var_2.d) >> (~u_input.a % vec4<u32>(32u)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> Struct_1 {
    global1 = 0u;
    var var_0 = vec4<f32>(511f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-967f - 370f))), -1000f, _wgslsmith_f_op_f32(ceil(-1565f)));
    global1 = 10507u;
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, 0i, i32(-1i) * -5596i, _wgslsmith_add_i32(-4883i, -20182i)), vec4<i32>(arg_1, 0i << (arg_0 % 32u), 9763i, _wgslsmith_mult_i32(arg_1, 0i)), _wgslsmith_mod_vec4_i32(min(vec4<i32>(0i, arg_1, 21025i, arg_1), vec4<i32>(arg_1, u_input.c.x, 32370i, global0.x)), func_3(vec2<f32>(arg_2.x, var_0.x), vec3<i32>(arg_1, -29121i, arg_1)))), vec4<i32>(_wgslsmith_dot_vec3_i32(global0.xxy, global0.zxy), arg_1, -34197i & -global0.x, 2698i)), vec4<i32>(global0.x, ~1i, arg_1, 0i));
    var var_2 = vec3<u32>(80570u, firstTrailingBit(4294967295u), max(0u, 1816u));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1357f, 1171f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-674f - 275f)), arg_2.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = arg_1;
    var var_1 = 40940u;
    var_0 = func_2(_wgslsmith_mod_u32(arg_2.b.x, ~(countOneBits(arg_2.a) ^ reverseBits(54513u))), global0.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), 1543f), 57864u);
    var_1 = _wgslsmith_mult_u32(firstLeadingBit(arg_0 << (~(~arg_0) % 32u)), 44028u);
    var var_2 = ~(~abs(-vec4<i32>(-2147483647i, 0i, arg_2.d, 53919i) >> (vec4<u32>(arg_2.b.x, 0u, arg_2.a, arg_2.b.x) % vec4<u32>(32u))));
    return -32167i;
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    global1 = ~abs(u_input.d.x);
    global0 = vec4<i32>(1i, firstLeadingBit(-2147483647i), ~func_4(~5499u, Struct_1(arg_0.a), Struct_2(0u, vec4<u32>(2356u, 4294967295u, u_input.d.x, 36369u), Struct_1(arg_0.a), global0.x, vec2<f32>(arg_0.a, arg_0.a)), func_2(u_input.a.x, -10881i, vec2<f32>(-491f, arg_0.a), u_input.d.x)), 0i) | ~_wgslsmith_sub_vec4_i32(-(~vec4<i32>(24542i, u_input.b, global0.x, 1i)), _wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.b, global0.x, 1550i, global0.x), vec4<i32>(global0.x, u_input.b, global0.x, global0.x)), vec4<i32>(global0.x, u_input.b, 9859i, -19164i) ^ vec4<i32>(global0.x, 1i, -48836i, 6784i)));
    return u_input.a & _wgslsmith_sub_vec4_u32(select(u_input.a, ~(~vec4<u32>(25956u, 4294967295u, 0u, 0u)), !all(vec4<bool>(true, true, false, false))), u_input.d);
}

fn func_5(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(arg_0.e, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-724f, 1315f)), _wgslsmith_f_op_vec2_f32(floor(arg_0.e)))))))));
    global1 = ~(arg_0.a | firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_0.a, arg_0.b.x), u_input.a))));
    var var_1 = var_0.x;
    let var_2 = arg_0;
    var var_3 = func_1(func_2(95137u, ~_wgslsmith_clamp_i32(var_2.d, global0.x, arg_0.d) ^ firstLeadingBit(~global0.x), var_0, _wgslsmith_mult_u32(var_2.b.x, u_input.d.x))).xyw;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    global1 = 25429u;
    var_0 = ~reverseBits(-_wgslsmith_mod_i32(0i, _wgslsmith_div_i32(u_input.b, 0i)));
    var_0 = firstLeadingBit(func_5(Struct_2(u_input.d.x, _wgslsmith_div_vec4_u32(u_input.d, func_1(Struct_1(406f))), func_2(~1u, ~global0.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-915f, 943f))), u_input.d.x), 28848i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-580f, 1596f) * vec2<f32>(300f, 1000f)), vec2<f32>(-1027f, 1368f))))));
    var_0 = -_wgslsmith_sub_i32(global0.x ^ u_input.c.x, global0.x);
    var var_1 = true | (true && (true && !all(vec2<bool>(false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 365f, ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_div_u32(1u, u_input.a.x), u_input.a.x, _wgslsmith_div_u32(0u, u_input.a.x), abs(u_input.a.x))), _wgslsmith_f_op_f32(-1f), 1f);
}

