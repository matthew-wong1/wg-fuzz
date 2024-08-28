struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-941f, 481f, 1052f, 738f))))) + vec4<f32>(-3253f, _wgslsmith_f_op_f32(min(473f, 517f)), _wgslsmith_f_op_f32(1039f + -1885f), _wgslsmith_f_op_f32(995f - -1562f)))), !select(vec4<bool>(arg_0, !arg_0, any(vec4<bool>(false, arg_0, true, arg_0)), !arg_0), select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, true, arg_0, arg_0), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, false, arg_0, true), false)), vec4<bool>(!arg_0, true, !arg_0, all(vec3<bool>(arg_0, arg_0, arg_0)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) + var_0.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))))))), abs(min(~(~4294967295u), 22180u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, 657f, 1000f, -1055f), vec4<f32>(-289f, -471f, var_0.a.x, var_0.a.x), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -519f, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(814f)), _wgslsmith_div_f32(-2019f, -921f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(round(var_0.a.x)))))), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1291f), var_0.a.x)))))));
    var var_2 = 940f;
    let var_3 = u_input.a.x;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1864f);
    return any(select(select(select(!vec2<bool>(arg_0, false), !var_0.b.ww, select(var_0.b.xz, vec2<bool>(true, true), vec2<bool>(arg_0, var_0.b.x))), !var_0.b.ww, !var_1.d), select(vec2<bool>(true, true), var_0.b.wy, select(select(vec2<bool>(var_0.b.x, true), vec2<bool>(true, arg_0), true), select(var_0.b.xy, vec2<bool>(false, var_0.b.x), false), select(var_0.b.zz, vec2<bool>(false, false), arg_0))), !var_0.b.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_1(-671f, _wgslsmith_mult_u32(max(_wgslsmith_sub_u32(~16368u, ~4294967295u), 0u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(33000u, 1u, 0u, 27437u), vec4<u32>(32853u, 0u, 4294967295u, 139915u)), 62008u, _wgslsmith_mult_u32(6562u, 37306u)), 1u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-651f, 1000f, -257f, 977f) - vec4<f32>(-1377f, -516f, 1000f, 495f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-650f, -770f, -126f, 476f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-560f, -1629f, -557f, 376f))), func_3(arg_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-690f, 927f, 196f, 156f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(338f, -334f, -1366f, -604f), vec4<f32>(248f, -1017f, 795f, -1152f), true))))), (_wgslsmith_sub_i32(-2147483647i >> (0u % 32u), -1i) < _wgslsmith_mod_i32(max(1i, -62891i), u_input.a.x)) | !any(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x)), _wgslsmith_f_op_f32(290f * _wgslsmith_f_op_f32(268f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(683f)) - 176f))));
    var var_1 = arg_1.x;
    var_1 = -reverseBits(reverseBits(reverseBits(-u_input.a.x)));
    let var_2 = Struct_4(-1i);
    var_1 = arg_1.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-389f, var_0.c.x)) - var_0.e);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-189f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-868f))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(false, false), vec4<i32>(-1i, u_input.a.x, 1435i, -1956i))))))));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(653f, 127f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1052f, -311f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-364f, -1156f), vec2<f32>(-877f, -1155f), vec2<bool>(true, false))), true)))), Struct_4(~0i), Struct_1(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -248f)), ~_wgslsmith_sub_u32(54231u, 0u) << (select(firstLeadingBit(0u), max(48119u, 0u), true) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1414f, -211f, 192f, -2566f), vec4<f32>(-480f, -907f, -850f, -616f), vec4<bool>(false, true, false, false)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), false, 664f), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(any(vec4<bool>(false, true, false, false)), true, true, true)));
    var_0 = 273f;
    let var_2 = Struct_3(vec4<i32>(2147483647i, -12740i, -36440i, min(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -1i)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(-1273f)), _wgslsmith_div_f32(var_1.c.c.x, var_1.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2707f))), _wgslsmith_div_f32(var_1.a.x, 1911f)), vec4<bool>(var_1.c.d, var_1.c.d, -2147483647i <= firstLeadingBit(u_input.a.x), all(vec3<bool>(var_1.d.x, false, false)))), !(u_input.a.x == -_wgslsmith_add_i32(var_1.b.a, u_input.a.x)));
    let var_3 = Struct_3(~(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, var_2.a.x), var_2.a), abs(vec4<i32>(-32840i, u_input.a.x, var_1.b.a, -17097i))) & (var_2.a & vec4<i32>(1i, -45604i, var_2.a.x, var_1.b.a))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -190f, -314f, -607f))) - _wgslsmith_f_op_vec4_f32(sign(var_2.b.a)))), var_2.b.b), func_3(var_1.d.x));
    return var_1.b.a;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: f32) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(156f, -1676f, func_3(true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1410f))), true)), ~_wgslsmith_mod_u32(4294967295u, 1702u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-277f + 863f))), _wgslsmith_f_op_f32(545f + arg_0)), any(select(vec3<bool>(arg_0 > -1000f, false, true), vec3<bool>(true, true, all(vec3<bool>(true, false, true))), true)), 1239f);
    let var_1 = Struct_3(~max(_wgslsmith_sub_vec4_i32(~vec4<i32>(22706i, u_input.a.x, 85636i, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.a.x, -15911i), vec4<i32>(arg_1, -55888i, -2147483647i, 29280i))), firstTrailingBit(vec4<i32>(arg_1, u_input.a.x, arg_1, u_input.a.x) >> (vec4<u32>(0u, 105436u, var_0.b, 10036u) % vec4<u32>(32u)))), Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.c), select(vec4<bool>(!var_0.d, any(vec3<bool>(var_0.d, false, true)), false, arg_2 < var_0.e), select(vec4<bool>(var_0.d, var_0.d, var_0.d, true), !vec4<bool>(var_0.d, false, var_0.d, false), true), vec4<bool>(true, any(vec2<bool>(true, true)), !var_0.d, var_0.d))), !(!(!var_0.d)));
    var var_2 = Struct_4(u_input.a.x);
    var_2 = Struct_4(arg_1 | var_2.a);
    let var_3 = vec4<bool>(var_1.c, var_2.a == arg_1, func_3(var_0.d), !any(vec2<bool>(var_1.c | var_1.c, var_0.d)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1322f), -755f) - _wgslsmith_f_op_vec2_f32(exp2(var_1.b.a.zx))) - var_0.c.xw);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: u32) -> u32 {
    let var_0 = firstLeadingBit(~vec3<u32>(arg_3, 4294967295u, 7257u));
    var var_1 = vec2<bool>(!all(vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true)), true);
    var var_2 = func_3(var_1.x);
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 885f) - arg_0.x)), 1076f, -709f, _wgslsmith_f_op_f32(sign(120f))), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, true, var_1.x)), true)));
    let var_4 = select(vec4<u32>(firstTrailingBit(arg_1.x), arg_3, ~(~0u), 4294967295u), max(~vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1, arg_1), ~var_0.x, 1u, _wgslsmith_add_u32(63106u, 1u)), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(23976u, var_0.x, var_0.x, arg_1.x), vec4<u32>(arg_3, var_0.x, arg_1.x, 47015u), var_3.b), ~vec4<u32>(arg_1.x, 4555u, arg_1.x, 1u))), !(!func_3(!var_1.x)));
    return _wgslsmith_clamp_u32(arg_1.x, countOneBits(arg_1.x) ^ 6145u, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(func_5(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(min(-1292f, 100f)), func_1() | (u_input.a.x | u_input.a.x), _wgslsmith_f_op_f32(func_2(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-34842i, 11085i, -44015i, 1i), vec4<i32>(-24739i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -5533i)))))), _wgslsmith_div_vec2_u32(max(abs(vec2<u32>(0u, 0u)), firstTrailingBit(vec2<u32>(118922u, 9054u))), vec2<u32>(~1u, firstTrailingBit(74131u))), vec4<i32>(min(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, 1i)), 1i, 36528i, i32(-1i) * -u_input.a.x), ~(~1u)), 52193u);
    var var_1 = vec4<bool>(select(true, all(vec3<bool>(true, true, true)) || select(true, any(vec3<bool>(false, true, false)), true), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true))), any(vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, false, false)), any(vec2<bool>(false, true)) & true, select(true, false, true) | true)), select(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), !(_wgslsmith_clamp_u32(17654u, var_0, 5590u) > max(var_0, 4294967295u))), true);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(344f, _wgslsmith_f_op_f32(ceil(639f)))) + 1365f), 1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-308f, 256f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f))))).x, (reverseBits(var_0) >> (max(39338u, ~var_0) % 32u)) & (~0u ^ var_0), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-2137f - -371f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-912f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(-654f - 678f), ~u_input.a.x, _wgslsmith_f_op_f32(max(-276f, 1708f)))).x)), false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-215f + 1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1064f - 205f))))));
    let var_3 = _wgslsmith_f_op_f32(var_2.a - var_2.e);
    let var_4 = ~(u_input.a.x << (~1u % 32u));
    var_1 = !vec4<bool>(!var_2.d, any(select(!var_1.xw, vec2<bool>(true, var_2.d), var_2.d)), !any(var_1.ywy), func_3(var_2.d));
    var_1 = vec4<bool>(true, true, var_2.d, -1170f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, false), firstLeadingBit(vec4<i32>(u_input.a.x, -25792i, var_4, u_input.a.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -1577f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(91692u, var_2.b, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(87313u, 0u, var_2.b, 94820u), ~vec4<u32>(var_0, 23424u, var_0, 35176u)), ~(~vec4<u32>(var_0, 19307u, 5181u, var_2.b)))), _wgslsmith_mult_i32(6674i, 0i), _wgslsmith_add_u32(0u, ~firstLeadingBit(~2084u)), -2009f);
}

