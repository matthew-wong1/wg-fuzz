struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(9372i, vec4<i32>(-28703i, 0i, 2147483647i, -1i), 1u)), Struct_2(Struct_1(0i, vec4<i32>(38290i, 1i, -33964i, -1i), 41462u)), Struct_2(Struct_1(0i, vec4<i32>(-31784i, 33348i, 1i, -1i), 0u)), Struct_2(Struct_1(9035i, vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 2147483647i), 4294967295u)), Struct_2(Struct_1(i32(-2147483648), vec4<i32>(0i, -14980i, 0i, i32(-2147483648)), 12140u)), Struct_2(Struct_1(i32(-2147483648), vec4<i32>(6515i, -46055i, 36805i, -1i), 4294967295u)), Struct_2(Struct_1(-56365i, vec4<i32>(1i, -27865i, 36136i, i32(-2147483648)), 518u)), Struct_2(Struct_1(2147483647i, vec4<i32>(50993i, 1i, 11105i, -26105i), 0u)), Struct_2(Struct_1(39122i, vec4<i32>(-1i, -67689i, 58073i, 1i), 4294967295u)), Struct_2(Struct_1(i32(-2147483648), vec4<i32>(709i, 1i, i32(-2147483648), i32(-2147483648)), 1u)), Struct_2(Struct_1(15486i, vec4<i32>(-1086i, 0i, -1i, -1i), 24746u)), Struct_2(Struct_1(-12085i, vec4<i32>(-39244i, 0i, 0i, -61789i), 15838u)), Struct_2(Struct_1(11572i, vec4<i32>(0i, -5803i, -1i, -1i), 48504u)), Struct_2(Struct_1(31391i, vec4<i32>(-23426i, i32(-2147483648), 7400i, 1i), 49451u)), Struct_2(Struct_1(i32(-2147483648), vec4<i32>(i32(-2147483648), -1i, -11287i, 1i), 534u)), Struct_2(Struct_1(25080i, vec4<i32>(i32(-2147483648), 0i, -25470i, -25734i), 6356u)), Struct_2(Struct_1(2147483647i, vec4<i32>(2147483647i, -27176i, 2147483647i, 14702i), 13808u)), Struct_2(Struct_1(6253i, vec4<i32>(32457i, 13136i, -10580i, 76499i), 44489u)), Struct_2(Struct_1(1i, vec4<i32>(-28567i, -11858i, -1i, -34452i), 52248u)), Struct_2(Struct_1(10089i, vec4<i32>(-1396i, -1i, 1i, -6660i), 65593u)), Struct_2(Struct_1(-27819i, vec4<i32>(-40191i, 1i, -59917i, 12576i), 4294967295u)), Struct_2(Struct_1(1i, vec4<i32>(-56033i, 9058i, i32(-2147483648), -1i), 0u)));

var<private> global1: bool;

var<private> global2: f32 = 963f;

var<private> global3: i32 = 0i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = select(u_input.b, min(abs(vec2<u32>(arg_3.d.c, u_input.e) ^ (vec2<u32>(u_input.e, arg_3.b.a.c) | u_input.b)), ~(~u_input.b)), arg_1.x <= _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(exp2(arg_1.x))));
    var var_1 = arg_3.d.b.wy;
    global1 = arg_2;
    global2 = _wgslsmith_f_op_f32(floor(arg_1.x));
    var_1 = arg_3.a.a.b.ww << (select(~(~vec2<u32>(4294967295u, arg_3.e.a.c)), ~vec2<u32>(max(4294967295u, arg_3.b.a.c), var_0.x | 4294967295u), vec2<bool>(!arg_2, arg_2)) % vec2<u32>(32u));
    return vec2<bool>(select(false, true, !(var_1.x == u_input.d)) || !(!select(false, false, true)), all(vec2<bool>((arg_3.b.a.c >= 1u) && (arg_2 && true), false)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> vec2<bool> {
    global0 = array<Struct_2, 22>();
    global1 = true;
    let var_0 = 1i;
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + -1877f), -1000f));
    let var_1 = false;
    return func_3(var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.x, -391f), -189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-645f, arg_2, var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1048f - 150f) - _wgslsmith_f_op_f32(arg_2 + arg_0.x)))), !var_1, arg_1);
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: vec4<u32>) -> f32 {
    let var_0 = Struct_2(Struct_1(-23396i, countOneBits(~(-u_input.c)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(22436u, u_input.a), ~vec2<u32>(arg_3.x, 39375u))));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~u_input.e, u_input.a), 22u)];
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(~u_input.e, 22u)], Struct_2(var_1.a), -_wgslsmith_add_i32(-26605i, firstTrailingBit(var_0.a.a)), Struct_1(arg_1, max(-firstLeadingBit(u_input.c), -var_0.a.b), _wgslsmith_add_u32(arg_3.x, u_input.b.x)), Struct_2(Struct_1(4627i, u_input.c, u_input.a)));
    global3 = ~var_0.a.b.x;
    let var_3 = _wgslsmith_div_vec4_u32(~vec4<u32>(arg_3.x, var_0.a.c, var_0.a.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, arg_3.x, var_2.d.c, 32502u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.e.a.c, 1u, 0u, var_0.a.c), arg_3))), firstTrailingBit(~(~arg_3)) >> (abs(arg_3) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2)))))));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-319f * _wgslsmith_f_op_f32(select(-373f, _wgslsmith_f_op_f32(func_4(func_2(vec2<f32>(635f, 982f), Struct_3(Struct_2(Struct_1(u_input.d, vec4<i32>(-2147483647i, 1377i, u_input.c.x, 0i), u_input.e)), global0[_wgslsmith_index_u32(u_input.a, 22u)], u_input.d, Struct_1(u_input.d, vec4<i32>(u_input.d, u_input.d, -15287i, 2147483647i), 122025u), global0[_wgslsmith_index_u32(1u, 22u)]), 526f, false), u_input.c.x, 1036f, vec4<u32>(u_input.a, 891u, u_input.a, 0u))), all(vec3<bool>(true, false, false)) && false))));
    var var_1 = u_input.c;
    global2 = var_0;
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(98022u, 1u, u_input.a), vec3<u32>(34254u, 63184u, 116031u))), countOneBits(_wgslsmith_add_u32(u_input.b.x, u_input.a)) ^ _wgslsmith_sub_u32(u_input.b.x, 1u)), 22u)], Struct_2(Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.d, 38372i), ~1031i), vec4<i32>(_wgslsmith_clamp_i32(var_1.x, -26968i, u_input.c.x), var_1.x, u_input.d ^ var_1.x, var_1.x), ~(~u_input.a))), 90508i, Struct_1(-select(u_input.d, ~2147483647i, true), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_1.x, 71473i, u_input.d), vec4<i32>(-2147483647i, -9383i, 60922i, 1i))), -66584i, u_input.c.x, 2147483647i), max(u_input.e, 1u) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(247u, 1u), u_input.b) << (~4294967295u % 32u))), Struct_2(Struct_1(u_input.d, u_input.c, ~u_input.e)));
    var var_3 = vec3<i32>(var_1.x, u_input.c.x, -8952i);
    return var_2;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = vec2<i32>(u_input.c.x, ~(-1i));
    global2 = -890f;
    global1 = !(!any(vec4<bool>(true, true, u_input.b.x > 4294967295u, any(vec4<bool>(false, false, true, true)))));
    global0 = array<Struct_2, 22>();
    let var_1 = func_1().e.a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(select(-1023f, _wgslsmith_f_op_f32(f32(-1f) * -573f), true));
    let var_0 = func_5(func_1(), global0[_wgslsmith_index_u32(_wgslsmith_div_u32((20302u >> (_wgslsmith_add_u32(u_input.e, u_input.e) % 32u)) << (~_wgslsmith_mult_u32(u_input.e, u_input.e) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(20061u, u_input.a, u_input.b.x) | (vec3<u32>(u_input.b.x, u_input.b.x, 0u) << (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))), vec3<u32>(~u_input.b.x, 11554u, u_input.a))), 22u)], _wgslsmith_div_vec2_i32(max(vec2<i32>(abs(58363i), min(29662i, -2147483647i)), abs(u_input.c.zx)), vec2<i32>(-u_input.d >> (17104u % 32u), _wgslsmith_div_i32(u_input.d, countOneBits(48250i)))));
    var var_1 = func_5(var_0, func_1().b, _wgslsmith_add_vec2_i32(u_input.c.wz, reverseBits(~var_0.b.a.b.zw))).e.a;
    global1 = false;
    var_1 = var_0.a.a;
    var var_2 = var_0;
    var var_3 = select(var_2.a.a.c << (0u % 32u), var_0.b.a.c, false);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), 2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -812f), ~max(vec4<u32>(var_1.c, u_input.b.x, 45489u, 1u), firstTrailingBit(vec4<u32>(u_input.a, var_0.a.a.c, 82931u, u_input.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-686f + -468f)))))));
    var var_4 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec3<bool>(true, true, true)), true, false), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, true, true, false)))), true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)) || (false && any(vec3<bool>(true, true, true))), false), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-573f, _wgslsmith_f_op_f32(f32(-1f) * -420f))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(reverseBits(func_1().b.a.c), 0u), var_1.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1288f, 236f, 278f, -632f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1192f, 928f, -1331f, 346f) + vec4<f32>(-384f, 697f, -1000f, 834f))))));
}

