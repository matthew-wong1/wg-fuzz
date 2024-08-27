struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_3) -> i32 {
    let var_0 = any(!select(vec3<bool>(true, all(vec2<bool>(true, false)), true), vec3<bool>(u_input.a < u_input.a, true, true), any(select(vec2<bool>(true, false), vec2<bool>(false, true), false))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -139f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -280f))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.a.x + -869f))));
    let var_2 = Struct_2(4294967295u, ~min(~(~u_input.b), ~(u_input.b ^ u_input.b)));
    var var_3 = arg_2;
    var var_4 = 14581i;
    return _wgslsmith_dot_vec3_i32(reverseBits(select(vec3<i32>(firstLeadingBit(1i), ~10278i, -u_input.a), firstLeadingBit(vec3<i32>(u_input.a, u_input.a, 0i)), var_0)), vec3<i32>(u_input.a, u_input.a, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -51895i, -46055i), vec3<i32>(-2147483647i, u_input.a, -38620i)) | _wgslsmith_mult_i32(13714i, 1i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_mult_u32(u_input.b, firstTrailingBit(u_input.b)), 1636u);
    var var_1 = _wgslsmith_div_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, var_0.b), vec3<u32>(var_0.b, 4294967295u, 1u))), max(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 17147u, var_0.a), vec3<u32>(u_input.b, 0u, 0u)), select(vec3<u32>(var_0.a, 7485u, u_input.b), vec3<u32>(63755u, 1u, u_input.b), arg_0.d.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 21436u, u_input.b), vec3<u32>(0u, 4294967295u, 23423u)), ~vec3<u32>(u_input.b, 0u, u_input.b)))) ^ firstTrailingBit(abs(~(~vec3<u32>(u_input.b, 3895u, 58879u))));
    let var_2 = arg_0.d.zx;
    var_1 = ~(vec3<u32>(_wgslsmith_clamp_u32(select(var_0.a, var_1.x, true), u_input.b, 24211u), 41252u, var_1.x) | vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_1.x, 23693u), vec3<u32>(1u, 4294967295u, 1u)), ~_wgslsmith_div_u32(var_0.b, var_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), firstLeadingBit(vec3<u32>(var_1.x, var_0.a, 49319u)))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(718f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x)), -297f, select(true, var_2.x, true)))), -261f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - -155f)) * 153f) * _wgslsmith_f_op_f32(abs(1f))), 224f, _wgslsmith_f_op_f32(857f + _wgslsmith_div_f32(-1607f, _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x))));
    return var_1.zz;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_add_vec2_u32((_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.b, 47004u)), vec2<u32>(u_input.b, u_input.b), max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(34169u, 10989u))) & ~vec2<u32>(56216u, 1u)) | func_4(Struct_1(true, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2459f, -3232f, 1524f))), i32(-1i) * -18462i, vec4<bool>(true, true, false, false)), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(-1i, 1i, -2147483647i, 1i)), func_3(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<f32>(-2320f, -419f), Struct_3(vec4<f32>(336f, -500f, -209f, 2203f), Struct_2(1u, 1u)))), _wgslsmith_add_vec2_u32(vec2<u32>(70462u, min(_wgslsmith_add_u32(1u, u_input.b), ~44818u)), ~select(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 26110u), vec2<bool>(false, false)) >> (~(~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))));
    var var_1 = -425f;
    var_1 = -306f;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2520f - _wgslsmith_f_op_f32(506f * -1000f)))), -1000f));
    var var_2 = any(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))) & (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-411f, 549f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1713f, 853f)), true)) <= -755f);
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_f_op_f32(arg_0.b.x + arg_1.b.x), true)))))));
    var var_1 = vec3<f32>(-519f, arg_1.b.x, arg_1.b.x);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, -442f, 158f)), _wgslsmith_f_op_vec3_f32(select(arg_1.b, arg_0.b, arg_1.d.x)))), _wgslsmith_div_vec3_f32(arg_0.b, arg_0.b), vec3<bool>(any(vec2<bool>(arg_1.d.x, arg_1.a)), true, arg_0.d.x))))) + arg_1.b);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_div_f32(arg_0.b.x, var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * -2030f) - -504f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(190f)))))), Struct_2(arg_3.b, ~u_input.b));
    var_1 = _wgslsmith_f_op_vec3_f32(var_2.a.xxz * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0.b))));
    return arg_0;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = -1i;
    var var_1 = true;
    var var_2 = func_5(Struct_1(func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 220f, -358f) * vec3<f32>(arg_0.x, 394f, -207f)))), firstLeadingBit(50382i), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, true, false), true), vec4<bool>(false, true, true, true))), Struct_1(any(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -612f, arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(563f, arg_0.x, arg_0.x), vec3<f32>(-571f, arg_0.x, -838f))))), -1i, vec4<bool>(true, true, true, true)), Struct_2(u_input.b, u_input.b), Struct_2(_wgslsmith_mod_u32(1671u, 94016u), ~58699u));
    var var_3 = Struct_2(~(u_input.b << (firstLeadingBit(select(u_input.b, u_input.b, true)) % 32u)), u_input.b);
    var_1 = (u_input.a <= _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c, -var_2.c), _wgslsmith_sub_vec2_i32(vec2<i32>(13810i, var_2.c), vec2<i32>(-2147483647i, -1i)))) && (var_2.a | true);
    return func_5(Struct_1(var_2.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1574f, 1282f, arg_0.x), var_2.b) + var_2.b)), var_2.c, vec4<bool>(-1i > u_input.a, false, !var_2.a, true)), Struct_1(var_2.a, var_2.b, 1i, select(vec4<bool>(true, select(var_2.d.x, var_2.a, false), var_2.a, !var_2.a), func_5(func_5(Struct_1(var_2.d.x, vec3<f32>(406f, arg_0.x, -353f), u_input.a, var_2.d), Struct_1(false, vec3<f32>(1460f, arg_0.x, -1448f), var_2.c, var_2.d), Struct_2(u_input.b, var_3.a), Struct_2(u_input.b, 0u)), Struct_1(var_2.d.x, vec3<f32>(arg_0.x, arg_0.x, arg_0.x), 0i, vec4<bool>(false, false, true, var_2.a)), Struct_2(5484u, 1u), Struct_2(u_input.b, 1u)).d, vec4<bool>(arg_0.x > -207f, var_2.a, 0i == var_2.c, any(vec2<bool>(var_2.a, var_2.a))))), Struct_2(26494u, 0u), Struct_2(~31187u, 4294967295u));
}

fn func_6(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = Struct_2(countOneBits(~(~_wgslsmith_add_u32(42088u, 24047u))), max(u_input.b >> (15436u % 32u), u_input.b));
    var_0 = Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(6413u, 0u, var_0.a), vec3<u32>(var_0.a, 0u, var_0.b), vec3<u32>(var_0.b, 4294967295u, var_0.a)), vec3<u32>(var_0.a << (u_input.b % 32u), 1u, 13663u), firstLeadingBit(vec3<u32>(4294967295u, 0u, var_0.a) << (vec3<u32>(var_0.a, 2750u, var_0.b) % vec3<u32>(32u)))), vec3<u32>(~var_0.a, abs(var_0.a << (u_input.b % 32u)), u_input.b)), u_input.b);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -806f, arg_0.b.x, -516f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1129f, arg_0.b.x, -1078f, arg_0.b.x) - vec4<f32>(arg_0.b.x, -290f, arg_0.b.x, -848f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1300f, 1206f, arg_0.b.x, arg_0.b.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-447f, 1000f, arg_0.b.x, -986f) - vec4<f32>(arg_0.b.x, -1222f, arg_0.b.x, arg_0.b.x)) * vec4<f32>(arg_0.b.x, arg_0.b.x, -622f, 749f)))), Struct_2(10866u, 1u));
    var_1 = Struct_3(var_1.a, var_1.b);
    var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(arg_0, Struct_1(true, vec3<f32>(var_1.a.x, arg_0.b.x, var_1.a.x), arg_0.c, arg_0.d), Struct_2(var_0.b, 0u), Struct_2(1u, var_0.b)).b.x - -1831f)), 284f, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(step(var_1.a.x, 696f))))), var_1.b);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(round(var_1.a.x)), _wgslsmith_f_op_f32(step(arg_0.b.x, var_1.a.x)), arg_0.b.x)), !func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, var_1.a.x) - var_1.a.ww)).d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_6(func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-435f, -2149f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(func_1(vec2<f32>(-605f, 136f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(989f, 1568f, -1458f, 496f)))), vec4<bool>(!any(vec2<bool>(false, true)), true, true & (-17877i <= u_input.a), all(vec4<bool>(true, true, true, true))))), Struct_2(~(1u << (~4294967295u % 32u)), ~1u));
    let var_1 = min(var_0.b.b, max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.b, var_0.b.a, 48808u) ^ vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(0u, 0u, 1u) << (vec3<u32>(0u, 69452u, var_0.b.a) % vec3<u32>(32u))) << (~(u_input.b ^ var_0.b.a) % 32u), 1u));
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, _wgslsmith_sub_i32(-9179i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec4<i32>(0i, u_input.a, 38316i, u_input.a)) | _wgslsmith_div_i32(54781i, -2147483647i))), -_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(-74912i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), -vec2<i32>(u_input.a, u_input.a)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(exp2(var_0.a))), Struct_2(~(~var_1), 30719u));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a.x, _wgslsmith_f_op_f32(-var_0.a.x)) - 387f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1235f) + var_3.a.x)) + -597f), 0i);
}

