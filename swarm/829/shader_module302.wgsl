struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = Struct_2(~countOneBits(u_input.e));
    var var_1 = select(u_input.a, _wgslsmith_clamp_i32(firstLeadingBit(abs(33944i)), u_input.a, u_input.a << (~(u_input.e ^ 4294967295u) % 32u)), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, arg_0, arg_0))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1043f, -1000f, -906f, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-230f, arg_0, -544f, -719f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 1355f, -669f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, _wgslsmith_div_f32(arg_0, arg_0), 1016f, arg_0)))));
    var var_3 = Struct_4(all(!vec4<bool>(true, false, all(vec4<bool>(false, false, true, true)), true)), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.a, var_0.a), vec2<u32>(arg_1.x, var_0.a)) & ~reverseBits(vec2<u32>(1u, var_0.a)), Struct_1(firstTrailingBit(2147483647i), firstLeadingBit(~u_input.e), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, select(16298i, u_input.a, false)), -reverseBits(2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -794f)), -1085f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(235f, var_2.x) - vec2<f32>(var_2.x, 1641f))))))));
    let var_4 = _wgslsmith_div_u32(arg_1.x, _wgslsmith_clamp_u32(u_input.b, min(_wgslsmith_dot_vec2_u32(arg_1.xz, var_3.b << (var_3.b % vec2<u32>(32u))), ~86003u), _wgslsmith_dot_vec3_u32(arg_1, arg_1)));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_2.zy * _wgslsmith_f_op_vec2_f32(floor(var_3.c.e))), var_3.c.d))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> f32 {
    let var_0 = u_input.a;
    let var_1 = Struct_1(-u_input.a, 1u, select(_wgslsmith_dot_vec3_i32(-(vec3<i32>(var_0, 1i, 1i) & vec3<i32>(u_input.a, -21208i, -28102i)), vec3<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a, -31781i)), firstLeadingBit(firstTrailingBit(var_0)), select(true, false, true)), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)) * _wgslsmith_f_op_f32(-arg_0.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1, arg_1, 4294967295u, arg_1)), firstLeadingBit(vec4<u32>(1u, u_input.c.x, u_input.c.x, 33185u))), 1u, ~(~1u)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-540f, -1208f))))), arg_0.xx, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), true)))));
    global0 = array<vec3<f32>, 5>();
    global0 = array<vec3<f32>, 5>();
    global0 = array<vec3<f32>, 5>();
    return arg_0.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    global0 = array<vec3<f32>, 5>();
    var var_0 = ~u_input.c.x;
    var var_1 = Struct_2(reverseBits(arg_0.x));
    var var_2 = abs(-54230i);
    var var_3 = arg_1;
    return Struct_1(-29365i, arg_0.x ^ (u_input.b ^ abs(_wgslsmith_mod_u32(u_input.d, u_input.b))), _wgslsmith_sub_i32(_wgslsmith_add_i32(27769i, ~36381i) & u_input.a, 0i), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, 1279f), vec4<f32>(arg_1, -219f, 338f, -1694f)), _wgslsmith_clamp_u32(4294967295u, var_1.a, 30858u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 148f) + arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(308f, arg_1, false)), arg_1))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, arg_1)))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1419f, _wgslsmith_f_op_f32(arg_1 + arg_1))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = 32101i;
    var var_1 = Struct_3(1u, vec4<u32>(arg_2.a, u_input.e, arg_2.b.x, 0u), arg_1.x, Struct_1(u_input.a & max(-55622i, _wgslsmith_add_i32(u_input.a, 0i)), abs(arg_2.a), abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-2147483647i, 24480i)), u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.d.d.x, 417f), vec2<f32>(-764f, -735f), arg_1))) - _wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.d.e.x, 620f))))), arg_0));
    global0 = array<vec3<f32>, 5>();
    var_0 = u_input.a;
    let var_2 = true;
    return _wgslsmith_sub_vec2_i32(vec2<i32>(max(_wgslsmith_div_i32(2147483647i, _wgslsmith_mod_i32(59828i, arg_2.d.c)), -834i), reverseBits(63129i)), vec2<i32>(i32(-1i) * -(u_input.a & arg_2.d.c), -(~arg_2.d.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 5>();
    var var_0 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.b, u_input.e), vec3<u32>(1u, 0u, 56313u)), _wgslsmith_add_vec3_u32(~(vec3<u32>(u_input.b, 20156u, 62282u) | vec3<u32>(0u, 22538u, u_input.e)), vec3<u32>(u_input.e, _wgslsmith_add_u32(50060u, 0u), ~u_input.c.x)));
    let var_1 = !(!vec3<bool>(true && any(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)), !any(vec4<bool>(false, false, true, true))));
    let var_2 = firstTrailingBit(_wgslsmith_mult_i32(max(-(u_input.a ^ 0i), u_input.a), ~(-(~u_input.a))));
    var var_3 = select(reverseBits(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(968f, -705f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1138f, -1574f) * vec2<f32>(2068f, 1000f))), vec2<bool>(var_1.x, true), Struct_3(u_input.b, ~vec4<u32>(17154u, u_input.b, u_input.b, 93488u), false, func_1(vec3<u32>(4294967295u, u_input.d, 63529u), -1116f)))), abs(vec2<i32>(33995i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, var_2), vec3<i32>(1i, u_input.a, u_input.a)))) ^ -func_4(vec2<f32>(1377f, -1609f), var_1.xz, Struct_3(4294967295u, vec4<u32>(0u, u_input.c.x, 66069u, 1u), true, Struct_1(var_2, u_input.e, u_input.a, vec2<f32>(-386f, 722f), vec2<f32>(-802f, -1411f)))), (true || all(vec2<bool>(false, true))) && select(!(u_input.b >= u_input.e), var_1.x, false));
    var var_4 = Struct_3(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e, 4294967295u, 4294967295u, u_input.c.x), ~vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b)), u_input.e), vec4<u32>(u_input.e, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.e), select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.d, 17984u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), ~vec3<u32>(u_input.e, u_input.c.x, 27886u), true)), ~u_input.c.x, ~_wgslsmith_mod_u32(~1u, ~u_input.b)), any(select(!var_1.zz, select(vec2<bool>(true, false), vec2<bool>(var_1.x, false), var_1.x), select(var_1.zx, vec2<bool>(var_1.x, var_1.x), all(vec4<bool>(false, true, var_1.x, true))))), func_1(select(~_wgslsmith_mult_vec3_u32(vec3<u32>(17515u, 81582u, u_input.e), vec3<u32>(u_input.c.x, u_input.b, u_input.b)), vec3<u32>(u_input.b, 61816u, 1u), var_1), _wgslsmith_f_op_f32(765f - _wgslsmith_div_f32(433f, _wgslsmith_f_op_f32(min(2251f, -1687f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~max(4404u, var_4.d.b), firstTrailingBit(u_input.e)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_4.b.x, ~4294967295u), var_4.b.x), min(~vec2<u32>(firstLeadingBit(u_input.b), 37836u >> (var_4.d.b % 32u)), ~(~(vec2<u32>(u_input.b, u_input.d) >> (vec2<u32>(var_4.a, 4294967295u) % vec2<u32>(32u))))));
}

