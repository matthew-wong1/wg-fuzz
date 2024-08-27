struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -242f), Struct_2(Struct_1(u_input.b.x, vec2<bool>(true, true), ~17178u << (u_input.a % 32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -571f) * -972f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(642f, -1000f))), 103f), Struct_1(select(~_wgslsmith_div_i32(u_input.b.x, u_input.b.x), firstLeadingBit(42315i), !(u_input.c != 20810u)), select(vec2<bool>(true, all(vec3<bool>(true, false, true))), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), 14834u));
    global0 = 1588f;
    let var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, 0u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.a), vec3<u32>(4294967295u, var_0.d.c, var_0.d.c), vec3<u32>(u_input.a, u_input.a, 67230u)))), vec3<u32>(_wgslsmith_add_u32(countOneBits(u_input.a), firstTrailingBit(7474u)), ~u_input.c, var_0.d.c)), vec3<u32>(var_0.d.c, var_0.b.a.c, u_input.c));
    var var_2 = select(~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.yz, var_1.xx), abs(var_1.yx)), ~reverseBits(var_1.xy) & _wgslsmith_mod_vec2_u32(~var_1.xx, select(vec2<u32>(var_1.x, 38283u), vec2<u32>(1u, 1u), vec2<bool>(true, false))), u_input.b.x <= select(-36012i, ~u_input.b.x, var_0.b.a.b.x)) & firstTrailingBit(vec2<u32>(abs(0u), ~44638u) & var_1.xx);
    let var_3 = var_0.b.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + -982f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(825f + 1369f))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_add_i32(-max(54313i, arg_1.a.a), u_input.b.x) | abs((arg_1.a.a & _wgslsmith_div_i32(arg_1.a.a, -2147483647i)) ^ (i32(-1i) * -arg_1.a.a));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-150f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1358f) * _wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1139f + 477f) * _wgslsmith_div_f32(-2127f, 1000f)))))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2036f, 384f)) + _wgslsmith_f_op_f32(235f + 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1059f))), _wgslsmith_f_op_f32(f32(-1f) * -1301f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(301f + _wgslsmith_f_op_f32(-1445f - 838f)) + _wgslsmith_f_op_f32(func_3())) + -429f));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>) -> f32 {
    global0 = 122f;
    let var_0 = true;
    global0 = 1528f;
    global0 = _wgslsmith_f_op_f32(func_3());
    global0 = arg_0.a.x;
    return _wgslsmith_f_op_f32(arg_0.a.x * 1350f);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_4(func_2(!vec2<bool>(392f != arg_0.x, arg_1), Struct_2(Struct_1(u_input.b.x, !vec2<bool>(arg_1, arg_1), u_input.a | 4294967295u))), ~reverseBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 1u, 4552u), ~vec3<u32>(u_input.a, u_input.a, 0u)))));
    let var_1 = vec3<f32>(var_0, var_0, 1392f);
    global0 = _wgslsmith_div_f32(-609f, _wgslsmith_f_op_f32(func_4(func_2(!(!vec2<bool>(arg_1, arg_1)), Struct_2(Struct_1(u_input.b.x, vec2<bool>(true, arg_1), u_input.a))), countOneBits(abs(vec3<u32>(0u, 63038u, 1u) & vec3<u32>(u_input.a, u_input.a, 0u))))));
    let var_2 = vec2<i32>(u_input.b.x, -_wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 3528i), vec4<i32>(0i, 48111i, -2147483647i, 0i)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.b.x, -2546i), vec4<i32>(u_input.b.x, 31032i, -2147483647i, -12365i)))));
    global0 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    return Struct_3(450f, Struct_2(Struct_1(var_2.x, select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1)), vec2<bool>(true, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(false, false))), _wgslsmith_clamp_u32(4294967295u, u_input.a, _wgslsmith_add_u32(u_input.c, u_input.a)))), vec3<f32>(-1535f, arg_0.x, 682f), Struct_1(1i, vec2<bool>(any(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1))), all(!vec4<bool>(arg_1, arg_1, arg_1, false))), countOneBits(~2389u >> (~u_input.a % 32u))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f - 1331f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-arg_0.c.zy), 10560u == arg_0.d.c).a * 1259f), arg_0.c.x, all(select(select(arg_1.b, arg_0.d.b, arg_0.d.b), arg_1.b, arg_1.b)))));
    let var_0 = vec3<u32>(69547u, ~arg_1.c, 48758u);
    return func_1(_wgslsmith_f_op_vec2_f32(-arg_0.c.xz), arg_1.b.x).b;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    let var_0 = arg_1.b;
    let var_1 = Struct_4(arg_1.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -868f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(379f)) + _wgslsmith_f_op_f32(arg_1.a * arg_1.c.x)))), _wgslsmith_f_op_f32(exp2(arg_1.a)), !var_0.a.b.x)));
    let var_2 = var_0;
    var var_3 = any(select(!(!select(vec4<bool>(var_0.a.b.x, true, false, var_0.a.b.x), vec4<bool>(var_0.a.b.x, false, false, var_0.a.b.x), vec4<bool>(arg_1.d.b.x, true, var_0.a.b.x, true))), vec4<bool>(var_2.a.b.x, !var_0.a.b.x & false, all(arg_1.b.a.b) && arg_0.a.b.x, true), !select(!vec4<bool>(arg_1.b.a.b.x, var_0.a.b.x, false, var_0.a.b.x), !vec4<bool>(false, true, var_0.a.b.x, false), false)));
    global0 = _wgslsmith_f_op_f32(select(var_1.a.x, 434f, var_0.a.b.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(588f + -494f) - _wgslsmith_div_f32(586f, 1000f))), false)));
    global0 = -328f;
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -706f)))))), _wgslsmith_div_f32(-1141f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-554f * _wgslsmith_f_op_f32(trunc(410f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-260f + 395f)))))));
    global0 = 1f;
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 629f), func_6(func_5(func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, 990f))), true), Struct_1(-u_input.b.x, vec2<bool>(true, true), max(4294967295u, u_input.c)), u_input.b), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)), true), 24116i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(var_0.x)), var_0.x)), Struct_1(firstLeadingBit(-18437i), select(func_1(var_0, true).b.a.b, vec2<bool>(true, true), any(vec3<bool>(true, true, true))), ~(~1u) << (func_1(_wgslsmith_f_op_vec2_f32(-var_0), true).d.c % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_f_op_f32(-var_1.c.x), vec4<u32>(var_1.b.a.c, ~_wgslsmith_mult_u32(var_1.b.a.c, ~7545u), max(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.a.c, 26923u, 68866u, var_1.d.c), vec4<u32>(var_1.d.c, 53925u, 6544u, 0u))), abs(_wgslsmith_sub_u32(var_1.d.c, var_1.b.a.c))), func_5(Struct_3(var_1.a, Struct_2(var_1.d), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_0.x, 182f), var_1.c), Struct_1(4962i, var_1.b.a.b, 0u)), func_6(var_1.b, var_1, firstLeadingBit(var_1.b.a.a)).a, select(vec2<i32>(-25181i, -29058i), firstTrailingBit(u_input.b), !vec2<bool>(true, var_1.d.b.x))).a.c), ~vec3<u32>(u_input.a, u_input.c, 1u));
}

