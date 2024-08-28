struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>) -> vec4<f32> {
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, ~1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(8108u, 82423u) << (max(0u, u_input.c) % 32u), ~4294967295u, ~u_input.b.x)), vec4<u32>(~1u, u_input.c, u_input.c, _wgslsmith_clamp_u32(15860u, firstTrailingBit(4294967295u), u_input.c)));
    global0 = u_input.c;
    var var_0 = vec3<u32>(1u, ~0u, 1u);
    global0 = var_0.x;
    global0 = select(_wgslsmith_dot_vec2_u32(var_0.yy << (u_input.b % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~var_0.xy, ~var_0.zx)), u_input.b.x >> (10686u % 32u), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), all(vec4<bool>(false, true, false, true))), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(2275f)), -1883f), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, arg_0.x)) * _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(990f + arg_0.x), _wgslsmith_f_op_f32(arg_0.x + 543f), _wgslsmith_f_op_f32(min(arg_0.x, arg_1.x))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(1266f)), _wgslsmith_div_f32(arg_1.x, -2482f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(select(1045f, -381f, true)))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_0.x * arg_1.x), arg_1.x, _wgslsmith_f_op_f32(arg_0.x + -911f)))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = max(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(abs(2033u), _wgslsmith_sub_u32(u_input.c, u_input.c)), reverseBits(u_input.b.x << (u_input.c % 32u))), ~u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(min(59486u, 4294967295u), u_input.b.x << (u_input.b.x % 32u)) & (u_input.b ^ vec2<u32>(u_input.b.x, 4294967295u)), u_input.b));
    let var_1 = !(!any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true)));
    return _wgslsmith_f_op_f32(trunc(arg_1.x));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = true;
    let var_1 = arg_0;
    var_0 = !(!(true & all(vec4<bool>(false, false, false, false))));
    let var_2 = Struct_2(min(4294967295u, u_input.c), Struct_1(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 0u, 1u), vec3<u32>(0u, 4294967295u, u_input.b.x))), vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, -19771i, 2147483647i, -34512i), vec4<i32>(arg_2, arg_0.x, -26942i, u_input.d)), _wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(arg_3, 1000f), vec2<f32>(497f, arg_3))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f * 156f)))), Struct_1(vec3<u32>(~81758u, _wgslsmith_clamp_u32(u_input.c, ~u_input.b.x, ~34837u), 1u), _wgslsmith_div_vec2_f32(vec2<f32>(-282f, _wgslsmith_f_op_f32(max(465f, -1000f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))))), Struct_1(~vec3<u32>(u_input.c, 65800u, u_input.b.x) >> (max(vec3<u32>(62249u, u_input.b.x, 13539u) ^ vec3<u32>(34953u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.c, 26789u, u_input.c)) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_3))), ~vec2<i32>(~(~2147483647i), 2147483647i));
    var_0 = !select(false, true, true);
    return var_2.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<f32>) -> u32 {
    global0 = ~(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.a, vec3<u32>(0u, 298u, u_input.b.x)), ~vec3<u32>(u_input.c, arg_0.a.x, arg_1.x))));
    let var_0 = arg_0;
    var var_1 = -15471i;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(arg_2.xyx));
    let var_3 = arg_0.b.x;
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(select(var_0.a, firstTrailingBit(var_0.a) | (arg_0.a >> (vec3<u32>(u_input.b.x, 4294967295u, 16107u) % vec3<u32>(32u))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true))), var_0.a), 1u);
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), true, true & (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(0u, u_input.b.x, 0u)) >= func_5(func_2(vec3<i32>(u_input.a, -27776i, 2147483647i), -1774f, u_input.a, -771f), vec2<u32>(28912u, 1u), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 856f, 654f, -1000f), vec4<f32>(-734f, -375f, 1736f, -395f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(711f, 800f, -463f, 2521f))) * vec4<f32>(1364f, 731f, 275f, 1000f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 236f, -1134f, 548f), vec4<f32>(148f, -349f, -1730f, 434f))) * vec4<f32>(1033f, -885f, -846f, -127f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-662f, 1291f, 440f, 332f)), vec4<f32>(-572f, -208f, 964f, -226f)) + vec4<f32>(_wgslsmith_f_op_f32(-104f - -1000f), _wgslsmith_f_op_f32(ceil(-764f)), _wgslsmith_f_op_f32(f32(-1f) * -2220f), _wgslsmith_f_op_f32(floor(959f)))))));
    return Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(~firstTrailingBit(4597u), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.b.x, u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, 1194u, 4294967295u), vec4<u32>(1u, 26883u, u_input.c, 53375u)))), min(firstTrailingBit(~vec3<u32>(58484u, u_input.b.x, 1452u)), vec3<u32>(u_input.b.x, 4294967295u, 0u)), vec3<u32>(func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -12366i, 1i), vec3<i32>(1i, u_input.a, 2147483647i)), var_1.x, 1i, _wgslsmith_f_op_f32(-334f - 707f)).a.x, ~4294967295u, u_input.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1356f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(208f * var_1.x) + var_1.x)) - var_1.zw));
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_1.b.x;
    let var_1 = Struct_2(22578u, arg_1, Struct_1(~vec3<u32>(abs(arg_1.a.x), u_input.b.x, ~0u), vec2<f32>(-831f, _wgslsmith_f_op_f32(f32(-1f) * -1980f))), arg_1, _wgslsmith_sub_vec2_i32(firstLeadingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(-26497i, 1i), vec2<i32>(-27408i, u_input.a))), vec2<i32>(-17671i, -1i) ^ _wgslsmith_mult_vec2_i32(max(vec2<i32>(u_input.a, arg_0), vec2<i32>(arg_0, u_input.d)), vec2<i32>(u_input.d, 5025i))));
    global0 = ~1u;
    var_0 = -781f;
    var var_2 = ~(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.e.x, arg_0, u_input.d) << (vec3<u32>(var_1.c.a.x, u_input.b.x, u_input.c) % vec3<u32>(32u)), countOneBits(vec3<i32>(arg_0, var_1.e.x, -2537i))));
    return Struct_2(select(min(_wgslsmith_dot_vec3_u32(select(arg_1.a, arg_1.a, true), countOneBits(var_1.d.a)), func_1().a.x), 0u, any(vec2<bool>(true, true))), var_1.d, Struct_1(vec3<u32>(_wgslsmith_clamp_u32(9u, 57364u, 14115u), var_1.b.a.x, u_input.c), vec2<f32>(func_2(firstLeadingBit(vec3<i32>(1i, arg_0, -2147483647i)), _wgslsmith_f_op_f32(var_1.c.b.x + arg_1.b.x), arg_0 | 13364i, _wgslsmith_f_op_f32(abs(868f))).b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.b.x + -508f), arg_1.b.x))), Struct_1(var_1.d.a, var_1.b.b), var_2.xz);
}

fn func_7(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<bool>) -> Struct_1 {
    global0 = _wgslsmith_mod_u32(0u, 116188u);
    var var_0 = u_input.a;
    var var_1 = func_6(~u_input.a, func_6(max(select(u_input.d, ~(-23637i), false), u_input.a), arg_0.c).b);
    let var_2 = arg_0;
    var var_3 = func_6(var_1.e.x, var_2.c).e.x;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_sub_u32(1u, (~u_input.b.x & ~u_input.b.x) | abs(reverseBits(0u))), func_7(func_6(u_input.d, func_1()), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(321f, -192f)) + _wgslsmith_f_op_f32(-639f - -375f)), -379f), vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), (4294967295u != u_input.c) && (u_input.d >= u_input.a))), Struct_1(~vec3<u32>(33375u, ~u_input.b.x, 0u), vec2<f32>(-1450f, 693f)), func_2(~(-firstTrailingBit(vec3<i32>(u_input.d, u_input.d, 5112i))), func_7(func_6(u_input.a, func_7(Struct_2(1u, Struct_1(vec3<u32>(1u, 11615u, u_input.c), vec2<f32>(1034f, 455f)), Struct_1(vec3<u32>(63932u, 51523u, 1u), vec2<f32>(156f, -314f)), Struct_1(vec3<u32>(57768u, 1u, u_input.c), vec2<f32>(672f, -1415f)), vec2<i32>(u_input.a, u_input.d)), vec3<f32>(-280f, -1357f, 2602f), vec2<bool>(true, false))), vec3<f32>(_wgslsmith_f_op_f32(1000f * -263f), 1f, 1431f), !select(vec2<bool>(true, false), vec2<bool>(true, false), true)).b.x, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-821f, 383f))), select(vec2<i32>(-76538i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(49995i, u_input.a, 0i), vec3<i32>(u_input.d, -37716i, 18819i), vec3<bool>(true, true, true)), vec3<i32>(u_input.a, 1i, -49228i))), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -37891i), -vec2<i32>(-47342i, u_input.d)), select(false, all(vec4<bool>(false, false, false, true)) || false, all(vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-954f - 332f)), _wgslsmith_f_op_f32(abs(var_0.c.b.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.b) * var_0.d.b));
    var var_2 = ~(-func_6(u_input.a << (var_0.d.a.x % 32u), Struct_1(vec3<u32>(41661u, 0u, 78266u), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.b.x, var_0.b.b.x), vec2<f32>(var_1.x, -716f)))).e.x);
    var var_3 = vec4<bool>(true, true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(~(~var_0.c.a.x), u_input.c, var_3.x), func_1().a.x >> ((1u & min(u_input.b.x, 8347u)) % 32u), ~_wgslsmith_add_u32(u_input.c, 30127u)), func_6(countOneBits(max(u_input.a, 2147483647i)) & firstLeadingBit(min(-27685i, var_0.e.x)), func_1()).d.b);
}

