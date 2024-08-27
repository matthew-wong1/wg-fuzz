struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = vec4<i32>(~_wgslsmith_mult_i32(1i, u_input.a.x), -2147483647i | u_input.a.x, _wgslsmith_mult_i32(20042i, -min(_wgslsmith_dot_vec2_i32(u_input.a.wz, u_input.a.wz), u_input.a.x << (44809u % 32u))), -u_input.a.x);
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(42639u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(firstTrailingBit(20170u), 0u, ~0u), min(_wgslsmith_div_u32(20606u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(3771u, 4294967295u, 80668u), vec3<u32>(49942u, 4294967295u, 1u))))), firstLeadingBit(~(~firstTrailingBit(vec2<u32>(0u, 0u)))));
    var var_2 = Struct_1(var_1.x);
    return all(vec2<bool>(false, true));
}

fn func_4(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-743f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1556f, 1636f)))) + _wgslsmith_f_op_f32(ceil(-2408f)));
    let var_1 = -(~(~7078i));
    let var_2 = Struct_1(_wgslsmith_add_u32(1u, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(6906u, 38493u), 0u)));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2538f - 349f))))));
    let var_3 = var_2;
    return var_2.a;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(~arg_1.a);
    var_0 = Struct_1(~var_0.a);
    var var_1 = Struct_1(0u);
    var var_2 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.a, var_1.a), ~(~29028u)), _wgslsmith_mod_u32(~var_0.a, _wgslsmith_mult_u32(arg_1.a, var_1.a) ^ abs(133837u)), ~27477u, (abs(select(4294967295u, var_1.a, true)) >> (~_wgslsmith_div_u32(arg_1.a, var_0.a) % 32u)) | var_0.a);
    let var_3 = Struct_2(vec3<u32>(var_1.a, ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(13328u, var_1.a, var_0.a, 43004u))), _wgslsmith_sub_u32(var_1.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_0.a, 0u, 4294967295u), firstTrailingBit(vec4<u32>(43050u, var_2.x, var_0.a, var_0.a))))), Struct_1(func_4(min(1i, u_input.a.x), func_3(arg_3.x)) & _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.a, 1u), var_2.x << (38985u % 32u))), Struct_1(83282u), vec3<i32>(1i, -96430i, firstTrailingBit(~(i32(-1i) * -2147483647i))), true);
    return var_3.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool, arg_3: u32) -> i32 {
    var var_0 = arg_0;
    var var_1 = Struct_2(firstLeadingBit(_wgslsmith_clamp_vec3_u32(~max(vec3<u32>(arg_0.a, 74115u, 4294967295u), vec3<u32>(arg_3, arg_0.a, arg_0.a)), vec3<u32>(0u, 0u, 4294967295u), ~(vec3<u32>(arg_0.a, 0u, arg_0.a) << (vec3<u32>(arg_0.a, 14677u, 56174u) % vec3<u32>(32u))))), func_2(-28310i, arg_0, vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, -59499i, u_input.a.x), u_input.a.x), -1i, 21368i, _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(-26560i, u_input.a.x))), arg_1), arg_0, _wgslsmith_sub_vec3_i32(~u_input.a.zyz << (select(~vec3<u32>(var_0.a, 2213u, arg_3), vec3<u32>(var_0.a, 3625u, 19473u) ^ vec3<u32>(arg_3, arg_0.a, 2253u), select(vec3<bool>(false, arg_2, true), vec3<bool>(false, arg_2, true), vec3<bool>(true, arg_2, arg_2))) % vec3<u32>(32u)), u_input.a.yzz), all(!select(select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(false, false, arg_2), arg_2), vec3<bool>(false, false, arg_2), vec3<bool>(arg_2, true, arg_2))));
    let var_2 = 82134u;
    var var_3 = abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(30285i, 1i, var_1.d.x, 2147483647i), vec4<i32>(firstLeadingBit(20336i), countOneBits(0i), 1i, -(~0i)), vec4<i32>(-_wgslsmith_mod_i32(2147483647i, var_1.d.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(-3025i, var_1.d.x), u_input.a.x), u_input.a.x, _wgslsmith_div_i32(countOneBits(0i), ~2147483647i))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-145f, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, 649f, arg_1.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, -1000f, -1564f), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, -1471f, -1103f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-136f, arg_1.x, 1000f)))))));
    return ~(-11733i);
}

fn func_1() -> f32 {
    var var_0 = func_5(func_2(u_input.a.x, Struct_1(abs(~4294967295u)), ~vec4<i32>(~72050i, -u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(8950i, 0i)), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1638f)), 1235f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -539f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(657f + -864f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1404f, 2049f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1410f, -1371f) + vec2<f32>(-921f, 697f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1108f, -587f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-574f, 924f))))))), select(!(3349u != _wgslsmith_clamp_u32(14203u, 1u, 4294967295u)), true, false), 56063u);
    var var_1 = Struct_2(vec3<u32>(29411u, select(~5597u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(20883u, 4294967295u, 87386u), vec3<u32>(1656u, 1u, 56235u)), max(vec3<u32>(63958u, 1u, 24322u), vec3<u32>(20989u, 28815u, 1u))), func_3(_wgslsmith_f_op_f32(trunc(918f)))), func_4(reverseBits(2147483647i), true)), func_2(abs(_wgslsmith_mult_i32(~u_input.a.x, 13064i)), Struct_1(~1u), vec4<i32>(u_input.a.x, select(u_input.a.x, ~u_input.a.x, true), 0i, -73481i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1338f, 1566f), vec2<f32>(-743f, 633f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1471f, 335f), vec2<f32>(1103f, -339f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), false))), func_2(abs(_wgslsmith_sub_i32(-11021i, ~u_input.a.x)), Struct_1(func_2(-u_input.a.x, func_2(2147483647i, Struct_1(54172u), u_input.a, vec2<f32>(709f, -119f)), vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, 2147483647i), _wgslsmith_div_vec2_f32(vec2<f32>(-699f, 117f), vec2<f32>(586f, -685f))).a), vec4<i32>(firstLeadingBit(u_input.a.x), u_input.a.x, i32(-1i) * -1i, -(~1i)), vec2<f32>(-1140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f)))), u_input.a.yxz, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(233f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1536f, -1663f))))));
    var_0 = abs(u_input.a.x);
    var_1 = Struct_2(select(select(~var_1.a | abs(var_1.a), ~var_1.a, select(select(vec3<bool>(false, var_1.e, false), vec3<bool>(var_1.e, true, var_1.e), vec3<bool>(true, true, true)), !vec3<bool>(false, var_1.e, var_1.e), false)), vec3<u32>(max(_wgslsmith_clamp_u32(31804u, var_1.b.a, var_1.a.x), _wgslsmith_mod_u32(1u, var_1.b.a)), var_1.c.a, min(min(var_1.a.x, var_1.b.a), countOneBits(var_1.b.a))), var_1.e), var_1.c, func_2(-u_input.a.x, Struct_1(~(~var_1.a.x)), countOneBits(u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1761f, -202f) * vec2<f32>(716f, -229f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(943f, 140f) * vec2<f32>(-806f, -1625f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1032f, 1014f)))), ~select(vec3<i32>(var_1.d.x, 1i, u_input.a.x) ^ (vec3<i32>(-45205i, u_input.a.x, u_input.a.x) >> (var_1.a % vec3<u32>(32u))), min(_wgslsmith_add_vec3_i32(u_input.a.yzy, u_input.a.yzz), _wgslsmith_mod_vec3_i32(u_input.a.xxx, vec3<i32>(var_1.d.x, 18816i, var_1.d.x))), all(!vec3<bool>(var_1.e, true, var_1.e))), true);
    let var_2 = -378f;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec3<bool>(true, true, any(vec3<bool>(false, true, true)))), vec3<bool>(true, any(vec2<bool>(true, true)), true), true);
    let var_1 = true;
    let var_2 = true;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(-596f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-877f - _wgslsmith_f_op_f32(f32(-1f) * -553f)), _wgslsmith_f_op_f32(862f + -952f)))), -546f, _wgslsmith_f_op_f32(step(165f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1533f, 1957f)), _wgslsmith_f_op_f32(func_1()), true)) * 150f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(775f, 2393f)), _wgslsmith_f_op_f32(f32(-1f) * -299f))))));
    let var_4 = Struct_1(_wgslsmith_sub_u32(1u, 0u));
    var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_3.x)), _wgslsmith_f_op_f32(ceil(var_3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.x)) * 1898f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(710f, 1096f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f * 1150f)))));
    var var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1281f)), _wgslsmith_f_op_f32(round(-420f)))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(908f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(abs(var_3.x))))), u_input.a.zz, 2147483647i, firstLeadingBit(vec3<u32>(~min(var_4.a, var_4.a), 32502u, ~var_4.a << (44284u % 32u))), 13497i);
}

