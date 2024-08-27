struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = arg_0;
    var var_1 = select(vec3<bool>(arg_2.c, var_0.c, true), !(!(!(!vec3<bool>(true, false, arg_2.c)))), any(select(select(vec4<bool>(false, arg_1.c, false, var_0.c), vec4<bool>(arg_2.c, arg_2.c, true, false), true), !(!vec4<bool>(false, false, arg_0.c, true)), arg_2.c)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, -729f, 572f)))), arg_2.a, !arg_2.c)) + vec3<f32>(_wgslsmith_div_f32(-1182f, 1342f), _wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_f_op_f32(-arg_2.b))), _wgslsmith_f_op_f32(max(arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-486f + 638f), _wgslsmith_f_op_f32(min(var_0.a.x, 526f))))))), arg_2.c, countOneBits(vec2<i32>(arg_2.d.x, -46616i)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_2.a)))) * arg_0.a), _wgslsmith_f_op_f32(abs(294f)), true, firstLeadingBit(vec2<i32>(-1i) * -max(var_0.d, var_2.d)));
    var var_4 = Struct_1(arg_2.a, _wgslsmith_f_op_f32(-var_0.b), ~4294967295u > reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4034u, 5055u, 47726u), vec4<u32>(1u, 0u, 4294967295u, 0u))), var_3.d);
    return ~select(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(19443u, 0u, 17305u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(16580u, 0u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u))), 1u, !all(vec3<bool>(var_2.c, var_2.c, false)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = vec2<f32>(-1569f, -1481f);
    let var_1 = false;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)));
    var var_2 = select(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, 1u, arg_1.x, 0u)), vec4<u32>(~51025u, max(arg_1.x, ~arg_1.x), func_3(arg_2, arg_2, Struct_1(arg_2.a, var_0.x, var_1, arg_2.d)), arg_1.x)), ~19381u, true);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.zy - _wgslsmith_f_op_vec2_f32(exp2(arg_2.a.yy)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_2.a.zz)))));
    return arg_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = 2147483647i;
    global0 = arg_0.a.x;
    let var_1 = arg_3;
    var var_2 = (min(~var_1.d, reverseBits(var_1.d)) << (~(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 85209u), vec2<u32>(30216u, 2649u))) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(-vec2<i32>(var_1.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.d.x, 2147483647i, -21560i, -13396i), vec4<i32>(14069i, u_input.a, u_input.b, 5904i))), abs(~vec2<i32>(arg_3.d.x, 12697i)));
    var_2 = arg_0.d | firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(max(54354i, -30456i), 1i), var_1.d));
    return min(vec2<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(26372i, arg_0.d.x, var_2.x, var_1.d.x), vec4<i32>(u_input.b, var_0, 1i, -78189i)), _wgslsmith_add_vec4_i32(vec4<i32>(13159i, 0i, var_0, arg_0.d.x), -vec4<i32>(arg_0.d.x, arg_0.d.x, -2147483647i, 0i))), -2359i ^ arg_1.x), max(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -28857i, var_1.d.x), arg_1) << (31877u % 32u), arg_0.d.x), ~arg_0.d | arg_0.d));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_2(vec4<bool>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(59840u, 1u)) < ~1u, !(!arg_2.c), arg_2.c, all(!(!vec2<bool>(arg_2.c, arg_2.c)))), vec2<u32>(min(1u, firstLeadingBit(countOneBits(46701u))), ~_wgslsmith_add_u32(25907u, 0u)), arg_2));
    var_0 = -202f;
    var var_1 = vec3<u32>(~(~1u), _wgslsmith_sub_u32(firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(7887u, 0u), vec2<u32>(1u, 4294967295u))), ~abs(0u)), ~(~(~max(1u, 1u))));
    let var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(312f)) * _wgslsmith_f_op_f32(512f * -1000f))), -467f), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1))))), vec2<f32>(_wgslsmith_div_f32(275f, -168f), 1726f))));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(313f, var_3.x, arg_1), vec3<f32>(arg_2.b, -1000f, var_3.x), true)), _wgslsmith_f_op_vec3_f32(arg_2.a * var_2.a))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_2.a, vec3<f32>(-327f, var_3.x, arg_1))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1714f, -749f, 699f))), arg_2.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b, _wgslsmith_div_f32(var_3.x, -894f)) * 1000f), var_3.x)), !any(vec4<bool>(any(vec3<bool>(true, false, arg_2.c)), !arg_3.x, any(vec4<bool>(true, arg_2.c, var_2.c, false)), true | var_2.c)), arg_2.d);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<i32>) -> bool {
    var var_0 = func_5(_wgslsmith_mod_vec2_i32((_wgslsmith_sub_vec2_i32(arg_3.xy, arg_1.yx) & -vec2<i32>(arg_1.x, arg_0)) & (vec2<i32>(-1i) * -vec2<i32>(82049i, arg_0)), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-964f, 251f, -459f), vec3<f32>(-2458f, 1122f, -926f))), _wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, false, true), vec2<u32>(1833u, 4294967295u), Struct_1(vec3<f32>(1745f, -550f, 117f), -2632f, false, vec2<i32>(2844i, -2147483647i)))), true, vec2<i32>(-3827i, u_input.b)), abs(countOneBits(arg_1.zzz)), true, Struct_1(vec3<f32>(457f, -2089f, 768f), 1292f, true, -vec2<i32>(-1i, 16779i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-586f, _wgslsmith_f_op_f32(f32(-1f) * -738f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(587f * -245f)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-532f, 1318f)) * _wgslsmith_f_op_f32(-486f - 1219f)), -1000f, _wgslsmith_f_op_f32(-461f - _wgslsmith_f_op_f32(-1236f + -364f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1000f)))))), true, select(arg_1.wz, arg_3.zx, select(false, any(vec2<bool>(true, true)), true))), vec2<bool>(true, true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-961f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x)))))));
    let var_2 = vec2<bool>(true, true);
    var_1 = _wgslsmith_f_op_f32(trunc(-815f));
    var var_3 = func_5(_wgslsmith_add_vec2_i32(~vec2<i32>(arg_0, -2147483647i), arg_3.xz), _wgslsmith_f_op_f32(sign(337f)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, var_0.b)) + _wgslsmith_div_vec3_f32(var_0.a, var_0.a)) * _wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * var_0.a.x), true, -vec2<i32>(reverseBits(0i), _wgslsmith_div_i32(0i, u_input.a))), vec2<bool>(true, true));
    return any(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec2<bool>(any(vec3<bool>(true, true, true)), true), !vec2<bool>(any(vec2<bool>(false, false)), func_1(-2147483647i, vec4<i32>(-9568i, u_input.b, 1i, 2147483647i), u_input.b, vec3<i32>(-5356i, -1i, u_input.a))), false));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(591f * -757f))))))));
    let var_1 = func_5(vec2<i32>(func_4(Struct_1(vec3<f32>(227f, -2146f, -894f), 1094f, var_0, vec2<i32>(-44895i, 0i)), vec3<i32>(u_input.a, 2147483647i, 69940i) << (vec3<u32>(20230u, 65053u, 0u) % vec3<u32>(32u)), false, Struct_1(vec3<f32>(776f, -1630f, -1000f), -1030f, false, vec2<i32>(-1i, u_input.b))).x, abs(u_input.a)) & vec2<i32>(~(-2147483647i & u_input.b), u_input.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1291f + -1164f), _wgslsmith_f_op_f32(392f * -355f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1405f))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1167f, -1548f, -761f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1241f - 236f), _wgslsmith_f_op_f32(trunc(-910f)))), 652f, true || func_5(~vec2<i32>(1i, -55273i), _wgslsmith_f_op_f32(floor(-359f)), func_5(vec2<i32>(u_input.a, u_input.b), 1187f, Struct_1(vec3<f32>(1000f, 350f, -325f), -518f, var_0, vec2<i32>(6844i, u_input.b)), vec2<bool>(var_0, var_0)), vec2<bool>(true, true)).c, max(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -6560i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.b, 0i))), -vec2<i32>(1i, -1i))), vec2<bool>(true, -2147483647i < _wgslsmith_sub_i32(1i, -2147483647i | u_input.b)));
    global0 = var_1.b;
    global0 = 1000f;
    global0 = var_1.b;
    var var_2 = ~(_wgslsmith_mult_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -36063i, var_1.d.x, u_input.a), vec4<i32>(var_1.d.x, 0i, -13802i, -1i)), ~(-52998i)), 2147483647i) << (_wgslsmith_add_u32(~(~34910u), 1362u) % 32u));
    let var_3 = select(vec4<bool>(true, true, false && any(vec4<bool>(var_1.c, true, true, var_0)), var_1.c), select(vec4<bool>(all(vec3<bool>(var_0, true, true)), true, var_1.c, var_1.c), select(!(!vec4<bool>(var_0, var_1.c, var_1.c, true)), !vec4<bool>(var_0, true, true, false), select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_1.c, var_1.c, var_1.c, true), var_0), vec4<bool>(true, false, var_1.c, false), select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(var_0, false, var_0, var_1.c), vec4<bool>(true, var_1.c, var_1.c, false)))), !select(vec4<bool>(false, var_0, true, var_1.c), !vec4<bool>(var_0, var_0, true, true), !vec4<bool>(var_0, var_0, var_1.c, true))), !vec4<bool>(true, !any(vec4<bool>(var_1.c, true, true, false)), var_0, var_1.b < _wgslsmith_f_op_f32(step(-1000f, var_1.a.x))));
    var var_4 = 69034u < firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 1u), vec2<u32>(1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(-332f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a.x, var_1.b)) - var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * -534f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1077f * -1526f))))), ~vec3<u32>(_wgslsmith_div_u32(func_3(Struct_1(vec3<f32>(1470f, var_1.b, var_1.b), var_1.a.x, true, var_1.d), Struct_1(vec3<f32>(var_1.b, 1000f, var_1.a.x), var_1.a.x, true, var_1.d), Struct_1(var_1.a, var_1.b, false, vec2<i32>(var_1.d.x, 50952i))), _wgslsmith_clamp_u32(4294967295u, 29414u, 68291u)), reverseBits(max(1u, 9523u)), ~(~1u)), vec2<f32>(-330f, _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * var_1.a.x) - _wgslsmith_f_op_f32(-var_1.b)))), vec2<u32>(1u, 1u));
}

