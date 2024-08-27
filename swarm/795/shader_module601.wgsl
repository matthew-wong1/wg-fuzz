struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(select(4294967295u, 13944u, true), 0u), abs(~(~vec2<u32>(1u, 1u)))), vec2<u32>(9895u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(abs(4294967295u), 4294967295u, 68468u))));
    let var_1 = Struct_1(58101u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1135f, 477f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-370f - 1841f), -787f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(688f)), _wgslsmith_f_op_f32(max(-219f, -333f)), all(vec2<bool>(false, true))))))), -692f, vec4<f32>(-1125f, 1000f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(step(294f, _wgslsmith_f_op_f32(f32(-1f) * -2097f)))), _wgslsmith_f_op_f32(f32(-1f) * -929f)));
    let var_2 = !(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b, 1i), firstLeadingBit(-28472i) ^ -u_input.c) == _wgslsmith_clamp_i32(0i, u_input.a, _wgslsmith_div_i32(_wgslsmith_mod_i32(-35489i, 20325i), abs(1i))));
    var var_3 = abs(u_input.c);
    let var_4 = Struct_2(true);
    return vec3<f32>(var_1.b.x, var_1.b.x, 186f);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> Struct_1 {
    return Struct_1(1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(arg_1.wzz + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-580f, 1482f, -1508f)), _wgslsmith_f_op_vec3_f32(func_3()))))), 939f, vec4<f32>(arg_0, 248f, arg_0, -1000f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_3()).x)), _wgslsmith_f_op_vec4_f32(round(arg_0.d)), vec2<bool>(true, any(vec4<bool>(true, true, true, true)) || select(false, true, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-286f, arg_1.d.x, _wgslsmith_f_op_f32(select(-353f, arg_0.d.x, false)), arg_0.c) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_1.d * arg_1.d)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1408f, arg_0.d.x, -1451f, -1115f) + arg_0.d)))))));
    let var_1 = (vec2<u32>(arg_0.a, 4294967295u) << (vec2<u32>(_wgslsmith_div_u32(~arg_1.a, arg_1.a), ~arg_1.a & arg_1.a) % vec2<u32>(32u))) & ~vec2<u32>(10561u, 4544u);
    var_0 = arg_0;
    var var_2 = 36562u;
    var var_3 = Struct_2(any(vec3<bool>(true, false, true)) == all(vec3<bool>(true, true, true)));
    return Struct_2(true);
}

fn func_5(arg_0: Struct_2) -> f32 {
    let var_0 = ~select(vec2<i32>(_wgslsmith_add_i32(1i, _wgslsmith_div_i32(u_input.a, u_input.b)), ~firstLeadingBit(u_input.c)), vec2<i32>(-10515i, ~(-u_input.c)), arg_0.a);
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-926f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-794f, 448f, -1016f, -1636f) - vec4<f32>(-908f, -353f, -769f, -708f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1197f, -267f, 1108f, -539f) + vec4<f32>(2064f, 323f, -568f, 1000f)), !arg_0.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-929f, -410f, 257f, 797f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1781f, 930f, 1947f, 2223f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(935f, -491f, -153f, -845f), vec4<f32>(326f, 261f, -1186f, -143f), vec4<bool>(true, false, arg_0.a, arg_0.a))))))), select(vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a))), select(select(select(vec2<bool>(false, arg_0.a), vec2<bool>(false, true), vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(true, arg_0.a), !vec2<bool>(arg_0.a, true)), vec2<bool>(any(vec3<bool>(true, arg_0.a, arg_0.a)), !arg_0.a), true)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-171f, 690f, -185f, -585f) * vec4<f32>(-366f, 168f, 247f, 295f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-941f, 648f, 649f, -1022f) * vec4<f32>(1841f, 238f, 945f, -438f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1472f, 938f, -2252f, -265f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-663f, 1161f, 482f, 585f))))));
    let var_2 = Struct_1(1421u, vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c))))), var_1.b.x), _wgslsmith_f_op_f32(var_1.c * var_1.b.x), _wgslsmith_f_op_vec4_f32(-var_1.d));
    var var_3 = func_2(-105f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.c, 1189f, 1000f, var_2.c))))), vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(var_2.c, 172f))), var_2.d, vec4<bool>(true, arg_0.a || (u_input.c < u_input.b), !arg_0.a, _wgslsmith_f_op_f32(-var_2.c) < _wgslsmith_f_op_f32(-var_2.c)))), select(!vec2<bool>(true, arg_0.a && arg_0.a), !select(!vec2<bool>(false, arg_0.a), vec2<bool>(true, true), select(true, arg_0.a, arg_0.a)), true), _wgslsmith_div_vec4_f32(var_1.d, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1197f)), _wgslsmith_f_op_f32(var_2.c - -473f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x * -1000f) - var_1.b.x), 267f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.d.x))))));
    let var_4 = var_0.x;
    return _wgslsmith_div_f32(var_2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.d.x - var_1.b.x), var_3.d.x, true)))));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(25000u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-241f + -1492f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(175f, _wgslsmith_f_op_f32(trunc(-896f)))), _wgslsmith_f_op_f32(round(-814f)), vec4<f32>(_wgslsmith_f_op_f32(func_5(func_4(Struct_1(1u, vec3<f32>(1402f, 593f, -1111f), -1205f, vec4<f32>(-397f, 1440f, 1409f, -856f)), func_2(283f, vec4<f32>(-597f, -293f, 1279f, 1985f), vec2<bool>(false, false), vec4<f32>(1075f, -1000f, 209f, 217f)), select(vec4<i32>(u_input.c, -2147483647i, -93819i, -20822i), vec4<i32>(12974i, -2147483647i, 12842i, u_input.a), false)))), 426f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -768f)), -700f));
    var var_1 = -(~(~firstTrailingBit(u_input.b))) > 1i;
    return _wgslsmith_sub_u32(reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(firstLeadingBit(abs(vec2<u32>(var_0.a, 21272u) | vec2<u32>(39116u, var_0.a))), vec2<u32>(_wgslsmith_clamp_u32(var_0.a ^ 0u, _wgslsmith_sub_u32(var_0.a, 35184u), firstLeadingBit(7321u)), ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_mult_u32(select(reverseBits(1u), 1u, false), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u)))), 1u, 1u);
    let var_1 = Struct_1(func_1(), func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(420f)))), vec4<f32>(-704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(947f - 1000f)), -1419f, -1003f), vec2<bool>(func_4(Struct_1(var_0.x, vec3<f32>(-761f, -1000f, 1338f), -762f, vec4<f32>(340f, 246f, 947f, 391f)), func_2(-1970f, vec4<f32>(-217f, -175f, -1207f, -235f), vec2<bool>(false, false), vec4<f32>(1876f, -1187f, 305f, 1166f)), ~vec4<i32>(6716i, u_input.b, 2147483647i, u_input.c)).a, true), vec4<f32>(_wgslsmith_f_op_f32(-1612f * _wgslsmith_f_op_f32(f32(-1f) * -1172f)), -1999f, _wgslsmith_f_op_f32(-648f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -440f) - -221f))).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1424f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(true))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(789f)), _wgslsmith_f_op_f32(max(878f, 1810f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(func_2(907f, vec4<f32>(434f, 886f, 371f, 453f), vec2<bool>(false, false), vec4<f32>(271f, 696f, -749f, -1603f)).d)), vec4<f32>(1219f, _wgslsmith_f_op_f32(1245f + -628f), _wgslsmith_f_op_f32(f32(-1f) * -392f), 277f))));
    let var_2 = vec2<i32>(u_input.a, ~_wgslsmith_dot_vec4_i32(select(firstTrailingBit(vec4<i32>(0i, 8219i, u_input.b, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, u_input.b), vec4<i32>(-1i, u_input.a, u_input.a, -35960i)), func_4(Struct_1(var_0.x, vec3<f32>(var_1.c, -163f, -324f), -152f, var_1.d), var_1, vec4<i32>(6270i, 20503i, u_input.c, 1i)).a), vec4<i32>(0i, -12092i, abs(u_input.b), i32(-1i) * -2147483647i)));
    let var_3 = func_4(func_2(-885f, vec4<f32>(1467f, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(-136f + -2075f)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), any(vec3<bool>(true, false, true))), vec2<bool>(true, select(false, false, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(1119f, -428f)), -1000f, 354f, _wgslsmith_f_op_f32(f32(-1f) * -1073f))))), Struct_1(15244u, _wgslsmith_f_op_vec3_f32(trunc(var_1.b)), -599f, _wgslsmith_f_op_vec4_f32(-var_1.d)), ~(-(-vec4<i32>(u_input.b, u_input.b, -2147483647i, 1i) & -vec4<i32>(u_input.b, 0i, u_input.c, u_input.a))));
    var_0 = ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.a, var_0.x, 0u), ~select(vec3<u32>(47749u, 12509u, 62227u), vec3<u32>(1u, var_1.a, 9451u), var_3.a)));
    let var_4 = func_4(var_1, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_f32(var_1.c * -2099f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, 1958f, var_1.d.x, var_1.b.x), var_1.d), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-413f, var_1.d.x, var_1.c, var_1.b.x))), vec4<bool>(var_3.a, var_3.a, var_3.a, var_3.a))), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, var_1.d.x, func_2(var_1.b.x, var_1.d, vec2<bool>(true, var_3.a), vec4<f32>(var_1.d.x, -1110f, var_1.b.x, var_1.b.x)).d.x, _wgslsmith_f_op_f32(select(var_1.b.x, -857f, false)))), select(!vec2<bool>(false, var_3.a), select(vec2<bool>(true, true), select(vec2<bool>(false, var_3.a), vec2<bool>(true, var_3.a), false), var_3.a), !(!vec2<bool>(var_3.a, var_3.a))), vec4<f32>(var_1.b.x, _wgslsmith_div_f32(771f, 267f), _wgslsmith_f_op_f32(select(var_1.d.x, 1000f, any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.x), func_2(var_1.b.x, var_1.d, vec2<bool>(var_3.a, true), vec4<f32>(var_1.c, var_1.d.x, var_1.c, 398f)).b.x)))), ~firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_2.x, -24456i, u_input.a), vec4<i32>(u_input.a, var_2.x, var_2.x, -42487i)) | select(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 2147483647i), vec4<i32>(1i, u_input.a, u_input.c, u_input.a), var_3.a)));
    var_0 = vec3<u32>(var_0.x, firstTrailingBit(~reverseBits(var_1.a) | var_0.x), _wgslsmith_mult_u32(select(27638u, _wgslsmith_sub_u32(var_1.a, 58793u), any(select(vec4<bool>(true, var_3.a, var_4.a, true), vec4<bool>(var_4.a, var_3.a, false, false), vec4<bool>(var_3.a, var_3.a, var_4.a, false)))), 26544u));
    var_0 = ~(~vec3<u32>(_wgslsmith_sub_u32(29093u, var_1.a), var_0.x | 49680u, _wgslsmith_mod_u32(var_0.x, 10506u))) ^ firstTrailingBit(~(vec3<u32>(30874u, var_0.x, var_1.a) | ~vec3<u32>(var_1.a, var_1.a, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-(~vec3<i32>(var_2.x, u_input.c, var_2.x))), countOneBits(vec3<i32>(u_input.b, _wgslsmith_sub_i32(u_input.c, var_2.x), _wgslsmith_clamp_i32(var_2.x, -2147483647i, 0i))) ^ select(_wgslsmith_add_vec3_i32(vec3<i32>(28801i, var_2.x, var_2.x), reverseBits(vec3<i32>(-1i, u_input.a, var_2.x))), firstLeadingBit(vec3<i32>(2147483647i, var_2.x, 39415i)), any(!vec2<bool>(var_4.a, true))), var_1.d, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.b.x, var_1.c)) + var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-356f + 1294f)) * 163f)));
}

