struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = ~vec3<u32>(32380u, u_input.b, ~(~1u));
    let var_1 = vec2<i32>(~(~(0i | u_input.a)) & _wgslsmith_dot_vec4_i32(min(reverseBits(vec4<i32>(2147483647i, u_input.a, -28590i, 11793i)), vec4<i32>(1i, u_input.a, 0i, 2147483647i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a))), firstLeadingBit(_wgslsmith_div_i32(u_input.a, u_input.a)) ^ u_input.a);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f * 1f)), _wgslsmith_f_op_f32(f32(-1f) * -229f))), firstLeadingBit(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, u_input.a, -1i, 48409i), vec4<i32>(23822i, 26764i, 0i, u_input.a), vec4<i32>(var_1.x, 1i, 19949i, u_input.a))) | (-abs(vec4<i32>(26641i, var_1.x, var_1.x, var_1.x)) << ((~vec4<u32>(u_input.b, 0u, var_0.x, 1327u) ^ ~vec4<u32>(u_input.b, var_0.x, 29615u, var_0.x)) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(sign(var_2.a));
    let var_4 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a, -1i), select(0i, 28308i, arg_0) & -9706i, 2147483647i, max(u_input.a, 1i) & (u_input.a | var_1.x)), vec4<i32>(u_input.a, u_input.a, 1i, 2147483647i)), abs(vec4<i32>(var_2.b.x, ~4872i, max(-19903i, var_1.x), var_1.x) >> (vec4<u32>(var_0.x, _wgslsmith_div_u32(u_input.b, u_input.b), var_0.x, 1u) % vec4<u32>(32u))), vec4<i32>(abs(33375i << (~u_input.b % 32u)), -abs(1i), ~_wgslsmith_clamp_i32(select(var_2.b.x, 1i, false), var_1.x, 1i), var_1.x));
    return abs(-countOneBits(var_2.b));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> vec3<f32> {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-754f + -756f)))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(707f - _wgslsmith_f_op_f32(step(652f, 799f)))), max(~(vec4<i32>(2437i, -53174i, -2147483647i, 2147483647i) ^ vec4<i32>(26126i, u_input.a, u_input.a, u_input.a)), _wgslsmith_div_vec4_i32(func_3(false), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 18613i, u_input.a, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i))))), 1000f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1280f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-122f + 782f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1440f, -1000f, -654f) - vec3<f32>(1000f, 759f, -383f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1571f, 1307f, 136f) - vec3<f32>(132f, 721f, -286f))))))));
    var var_1 = vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(u_input.b | 1u, ~4294967295u), 43007u, ~4294967295u), 1u, max(4294967295u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(42276u, u_input.b), vec2<bool>(arg_0, arg_0)), ~vec2<u32>(u_input.b, 46016u)) ^ min(u_input.b, u_input.b)), u_input.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -775f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-854f - var_0.e.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d.a))))));
    var var_3 = vec4<i32>(-2147483647i, 2147483647i, ~u_input.a, -18779i);
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.e.x)))), _wgslsmith_mult_vec2_u32(min(firstTrailingBit(abs(var_1.xw)), vec2<u32>(~var_1.x, ~var_1.x)), _wgslsmith_mod_vec2_u32(var_1.xy >> (var_1.yy % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(var_1.x, var_1.x)))), false, -1956f);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(394f, 1379f, -1315f));
}

fn func_4(arg_0: vec3<f32>) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_0.x - -527f)))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.a) + _wgslsmith_f_op_f32(trunc(-670f)))), Struct_3(_wgslsmith_f_op_f32(-arg_0.x), vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, -15377i), ~u_input.a), -22317i, -2147483647i)), var_0.a, Struct_1(arg_0.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0 + arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(507f, -456f, var_0.a))), vec3<bool>(true, select(all(vec4<bool>(true, true, false, false)), true, arg_0.x != arg_0.x), true))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(max(var_1.e.x, arg_0.x)))))), _wgslsmith_f_op_f32(ceil(-603f)));
    var var_3 = !any(vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    var_3 = any(select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), true), !select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, true, false, false)), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false))));
    return Struct_4(var_1.a, Struct_3(var_0.a, vec4<i32>(-u_input.a, -1i, ~(~(-59869i)), _wgslsmith_add_i32(u_input.a, _wgslsmith_sub_i32(0i, u_input.a)))), _wgslsmith_f_op_f32(exp2(arg_0.x)), Struct_1(320f), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(step(584f, arg_0.x)), 1233f));
}

fn func_1() -> i32 {
    var var_0 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-226f, -422f, -361f) - vec3<f32>(-1050f, -658f, -452f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-764f, 1475f, 1218f), vec3<f32>(433f, 191f, -1279f))))));
    var var_1 = ~u_input.b;
    let var_2 = any(vec3<bool>(true, false, false));
    var var_3 = all(select(vec4<bool>(select(all(vec3<bool>(true, var_2, false)), all(vec4<bool>(var_2, true, true, false)), u_input.b == 4294967295u), true, all(vec2<bool>(var_2, false)) || var_2, true), select(!(!vec4<bool>(false, var_2, var_2, true)), select(vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(var_2, var_2, var_2, false), true), var_2 && false), !vec4<bool>(true, -1970i != var_0.b.b.x, var_2 & var_2, all(vec4<bool>(var_2, true, var_2, true)))));
    var var_4 = Struct_4(var_0.d, Struct_3(var_0.e.x, vec4<i32>(61190i, min(countOneBits(10137i), 42212i), -reverseBits(var_0.b.b.x), ~(-u_input.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1248f, 1602f, true)))), var_0.d, var_0.e);
    return ~(i32(-1i) * -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2301f)))), vec4<i32>(u_input.a ^ ~_wgslsmith_add_i32(u_input.a, u_input.a), -6421i, func_1(), ~max(-u_input.a, u_input.a)));
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-653f, var_0.a, var_0.a) + vec3<f32>(-446f, -1269f, var_0.a)), vec3<f32>(109f, 241f, 2251f)))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(558f, var_0.a, _wgslsmith_f_op_f32(round(var_0.a))))))).b;
    var var_1 = Struct_2(func_4(vec3<f32>(var_0.a, _wgslsmith_f_op_vec3_f32(func_2(true, select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))).x, _wgslsmith_f_op_f32(-var_0.a))).d, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 7384u), vec2<u32>(u_input.b, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))), ~vec2<u32>(2531u, u_input.b)), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_div_f32(var_0.a, var_0.a));
    var_0 = func_4(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(ceil(var_0.a)), 339f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, var_1.d, -106f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-680f, 1186f, -435f)))))).b;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a + 2015f))) * func_4(vec3<f32>(-886f, -173f, -648f)).c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -450f)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2))))), ~(~vec4<i32>(var_0.b.x, -6411i, u_input.a, u_input.a | 26946i)));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-862f, var_3.a, 465f))) - vec3<f32>(_wgslsmith_f_op_f32(max(var_2, 471f)), -149f, var_1.a.a));
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(-var_4)).e - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1823f, 1800f, var_4.x)))), vec3<f32>(1326f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1138f - -653f) + _wgslsmith_f_op_f32(ceil(-505f))), 361f), select(vec3<bool>(var_1.b.x > 1u, !var_1.c, false), !vec3<bool>(var_1.c, false, true), vec3<bool>(-333f < var_3.a, var_1.c, var_1.c))))).b;
    let var_5 = !(!(!(_wgslsmith_f_op_f32(min(var_1.a.a, 1000f)) != var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

