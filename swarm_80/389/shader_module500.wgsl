struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1721f, 765f, 652f, -324f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1593f, -1572f, -289f, -1751f), vec4<f32>(-343f, -837f, -691f, -344f)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1019f, _wgslsmith_f_op_f32(min(-562f, 1338f)), -165f, 1f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(394f, 1000f, false)), -167f))))), Struct_1(min(vec2<u32>(u_input.d.x << (u_input.b.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(10946u, u_input.d.x))), min(countOneBits(u_input.b), ~u_input.b)), !any(vec3<bool>(false, true, true)), u_input.a), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1444f, -965f, -991f) - vec3<f32>(326f, -579f, -1162f)))))));
    var var_1 = select(true, true, var_0.c.b);
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1291f, 517f, -560f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1107f, -477f, 818f, var_0.b))))), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1205f, var_0.a.x, false))))), var_0.c, var_0.d);
    var var_2 = 337f;
    let var_3 = Struct_2(Struct_1(select(firstLeadingBit(reverseBits(vec2<u32>(4263u, u_input.b.x))), max(_wgslsmith_add_vec2_u32(var_0.c.a, u_input.b), vec2<u32>(u_input.d.x, u_input.d.x) | vec2<u32>(u_input.d.x, u_input.d.x)), select(any(vec2<bool>(var_0.c.b, false)), var_0.c.b, true)), false, min(-(var_0.c.c >> (u_input.b.x % 32u)), 1i)), vec2<u32>(u_input.b.x, max(var_0.c.a.x, u_input.b.x)), var_0.c.b, !select(vec4<bool>(true, !var_0.c.b, var_0.c.b, false), vec4<bool>(var_0.c.b, false, !var_0.c.b, var_0.c.b), true));
    return -1146f;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<bool>) -> i32 {
    let var_0 = Struct_5(108497u);
    var var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-188f, -172f), _wgslsmith_div_f32(1767f, -1109f), !arg_2.x))), _wgslsmith_f_op_f32(-205f + _wgslsmith_f_op_f32(func_3())))));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.d.x, ~var_0.a), var_0.a);
    var var_4 = var_0;
    return ~_wgslsmith_add_i32(max(~_wgslsmith_div_i32(-1i, u_input.a), max(_wgslsmith_clamp_i32(-3721i, 27498i, -16775i), u_input.e.x)), countOneBits(max(-247i, u_input.a)) << (~(1u | arg_0.x) % 32u));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2(vec4<u32>(u_input.d.x, 14286u, u_input.d.x, u_input.d.x) << (vec4<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.d.x) << (_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)]) % 32u), u_input.b.x, 35926u) % vec4<u32>(32u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(5254u, ~u_input.d.x >> (79633u % 32u)), u_input.d.x), !select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, false), true));
    let var_1 = select(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))), select(select(vec2<bool>(true, all(vec3<bool>(true, false, false))), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(any(vec4<bool>(true, false, false, false)), true), vec2<bool>(all(vec4<bool>(false, false, false, true)), u_input.b.x <= 7274u), false), !(!any(vec4<bool>(false, false, false, false)))), select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), any(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec3<bool>(true, false, false))))));
    global0 = array<vec3<u32>, 30>();
    global0 = array<vec3<u32>, 30>();
    global0 = array<vec3<u32>, 30>();
    return Struct_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(-886f, _wgslsmith_f_op_f32(-1241f - -787f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-185f, -1166f)))), _wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1180f, -209f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1224f, 574f, 157f, -1067f))))))), 1623f, Struct_1(~(min(vec2<u32>(1u, 0u), vec2<u32>(1u, 0u)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.d.x, 32721u)) % vec2<u32>(32u))), false && all(!var_1), (~u_input.a & -5477i) ^ 70407i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 2170f, 1208f)))), vec3<f32>(_wgslsmith_div_f32(1363f, 790f), _wgslsmith_f_op_f32(ceil(-1000f)), -436f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-839f, -722f, false)) - -1173f), 1939f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(254f, -1809f), _wgslsmith_f_op_f32(-197f + -1673f), all(var_1)))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec2<bool>) -> Struct_5 {
    var var_0 = vec2<u32>(0u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~(arg_0.c.a.x >> (arg_0.c.a.x % 32u)), firstLeadingBit(7619u) >> (abs(arg_0.c.a.x) % 32u)), u_input.b.x));
    var var_1 = ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(abs(u_input.d.yx), vec2<u32>(28226u, u_input.b.x)), firstTrailingBit(0u), max(1u, min(u_input.d.x, 85512u)), 0u));
    let var_2 = Struct_1(func_1().c.a, false, ~abs(arg_0.c.c));
    var var_3 = arg_0.c.c;
    var var_4 = u_input.e;
    return Struct_5(_wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(0u, var_1.x, 0u, var_2.a.x)), _wgslsmith_add_vec4_u32(~u_input.d, vec4<u32>(var_1.x, 18837u, 1u, u_input.b.x)), ~(u_input.d >> (u_input.d % vec4<u32>(32u))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_3 {
    global0 = array<vec3<u32>, 30>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -103f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -417f) + -504f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1057f, true)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1258f, -391f)))));
    global0 = array<vec3<u32>, 30>();
    var var_1 = Struct_3(-2147483647i, 36227u, ~0u);
    var_1 = Struct_3((-var_1.a ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(22881i, -2147483647i, u_input.e.x, arg_0.c)), _wgslsmith_div_i32(2449i, 1i))) >> (~arg_0.a.x % 32u), func_4(func_1(), vec3<bool>(false, !arg_2.x, !arg_2.x), arg_2.yx).a, 0u >> (abs(var_1.c) % 32u));
    return Struct_3(arg_0.c, arg_0.a.x, _wgslsmith_clamp_u32(~45988u ^ ~u_input.b.x, ~arg_1.a | var_1.b, _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, arg_1.a), 4294967295u)));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    let var_0 = true;
    global0 = array<vec3<u32>, 30>();
    let var_1 = false;
    let var_2 = ~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(arg_0.b, 30u)], min((vec3<u32>(44811u, 46521u, 1u) >> (vec3<u32>(arg_0.c, u_input.d.x, 21879u) % vec3<u32>(32u))) << (vec3<u32>(u_input.b.x, arg_0.c, 80744u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(u_input.d.yxy, u_input.d.zxy)));
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1145f, -1000f, -1000f, -311f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(516f * _wgslsmith_f_op_f32(abs(-1009f))) + func_1().a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-470f, -340f, var_1))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-365f - 1268f)))), Struct_1(~u_input.b, true, 22262i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-994f, -372f, 1013f), vec3<f32>(892f, -263f, 473f), true)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1603f, -582f, 2482f))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -949f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1361f, 2406f))))));
    return Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2, var_3.c.a.x), vec2<u32>(1u, var_3.c.a.x ^ var_2)), true, -33265i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 30>();
    global0 = array<vec3<u32>, 30>();
    global0 = array<vec3<u32>, 30>();
    let var_0 = func_6(func_5(Struct_1((vec2<u32>(u_input.d.x, u_input.b.x) >> (vec2<u32>(1u, u_input.d.x) % vec2<u32>(32u))) >> (~vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u)), true, ~abs(-22740i)), func_4(func_1(), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec2<bool>(true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true)), ~select(vec2<i32>(0i, u_input.e.x), u_input.e.xz, u_input.b.x <= u_input.d.x)));
    let var_1 = reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(func_5(var_0, func_4(Struct_4(vec4<f32>(-1215f, 1809f, 678f, 1056f), 362f, var_0, vec3<f32>(-2776f, -869f, -202f)), vec3<bool>(true, var_0.b, var_0.b), vec2<bool>(false, var_0.b)), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.b, var_0.b, false, var_0.b), vec4<bool>(true, var_0.b, var_0.b, var_0.b)), min(vec2<i32>(var_0.c, var_0.c), vec2<i32>(u_input.c.x, 1i))).b, 4294967295u, ~10242u), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)), global0[_wgslsmith_index_u32(u_input.d.x, 30u)], _wgslsmith_mult_vec3_u32(u_input.d.xxw, abs(vec3<u32>(u_input.d.x, var_0.a.x, 1u))))));
    global0 = array<vec3<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec2_i32(~_wgslsmith_mult_vec2_i32(u_input.e.xx, vec2<i32>(20830i, 0i)), vec2<i32>(~0i, var_0.c))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, var_0.a.x, 4294967295u, 0u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(46297u, 17115u, var_1, var_1) >> (u_input.d % vec4<u32>(32u)), max(select(u_input.d, u_input.d, true), vec4<u32>(6131u, var_1, var_0.a.x, u_input.d.x) ^ vec4<u32>(33266u, 46545u, u_input.b.x, 16211u)), _wgslsmith_clamp_vec4_u32(reverseBits(u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(60951u, 35515u, u_input.b.x, 1u), vec4<u32>(u_input.d.x, 4294967295u, 24799u, 21201u)), u_input.d))), firstLeadingBit(vec3<u32>(var_1, 1u & u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.wz, vec2<u32>(var_1, 0u)))) & _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d.x, var_1, var_1), vec3<u32>(1u, var_0.a.x, 0u) << (~u_input.d.xyx % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -734f)) * vec2<f32>(286f, -1000f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(807f, -2038f) + vec2<f32>(406f, -490f))))));
}

