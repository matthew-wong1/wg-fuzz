struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = -_wgslsmith_mod_vec4_i32(max(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -913i, -23979i, 42562i), vec4<i32>(-35096i, u_input.a.x, 4575i, -1i), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a.x, -2147483647i, u_input.a.x)), firstLeadingBit(abs(vec4<i32>(2147483647i, -1i, u_input.a.x, -1i)) | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -15147i), vec4<i32>(5217i, -2147483647i, -55767i, u_input.a.x))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(var_0.zyw, select(vec3<i32>(-25619i, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, 0i, u_input.a.x) ^ var_0.yxz, all(vec3<bool>(true, false, arg_1))))), ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(72417u, 13860u, 4294967295u)), abs(vec3<u32>(1u, 1u, 1u))), Struct_1(reverseBits(vec3<i32>(-2147483647i, u_input.a.x, 1i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)));
    let var_2 = ~select(select(vec3<u32>(~var_1.b, abs(var_1.b), 0u), min(countOneBits(vec3<u32>(var_1.b, var_1.b, 820u)), vec3<u32>(33706u, 47080u, 63579u) << (vec3<u32>(var_1.b, 0u, 0u) % vec3<u32>(32u))), arg_1 & any(vec4<bool>(false, arg_1, arg_1, arg_1))), reverseBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b, var_1.b, 40845u), vec3<u32>(1u, 1u, 35246u))), vec3<bool>(all(!vec4<bool>(arg_1, arg_1, arg_1, true)), arg_1, all(!vec2<bool>(arg_1, true))));
    var var_3 = ~(~(_wgslsmith_mult_u32(var_2.x, 1u) ^ var_2.x) ^ ~84776u);
    var_0 = vec4<i32>(-1i) * -vec4<i32>(-countOneBits(2147483647i), -select(-12836i, 2147483647i, false), var_0.x, 32187i);
    return -596f;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-895f, _wgslsmith_f_op_f32(func_3(630f, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1178f, -394f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -947f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1486f)), _wgslsmith_f_op_f32(f32(-1f) * -760f)))))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f)));
    let var_1 = Struct_1(abs(firstLeadingBit(vec3<i32>(-18358i, ~(-17266i), u_input.a.x >> (1u % 32u)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(632f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -900f) * _wgslsmith_f_op_f32(f32(-1f) * -205f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1022f + -487f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-544f - -532f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1283f + 466f) - _wgslsmith_f_op_f32(max(-1330f, -323f)))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1390f, 1252f)));
    return _wgslsmith_f_op_f32(sign(var_3.x));
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 1u))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(715f, -373f)))), _wgslsmith_f_op_f32(abs(2153f)), true)), -648f));
    return Struct_1(select(firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(arg_0.a, 2147483647i, arg_0.a)) << (~vec3<u32>(11326u, 1u, 28775u) % vec3<u32>(32u))), select(vec3<i32>(-1i) * -u_input.a, vec3<i32>(_wgslsmith_sub_i32(12904i, 8035i), firstLeadingBit(1i), arg_0.a), _wgslsmith_f_op_f32(var_0 * var_0) <= var_0), select(vec3<bool>(false, any(vec4<bool>(false, true, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), arg_0.a == arg_0.a), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(-241f, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(0u, 9556u, 17973u)), select(select(vec3<u32>(15338u, 4294967295u, 36544u), vec3<u32>(1u, 4294967295u, 26573u), vec3<bool>(true, false, true)), max(vec3<u32>(34481u, 4294967295u, 61398u), vec3<u32>(87606u, 76981u, 1u)), true)), ~firstLeadingBit(vec3<u32>(31998u, 1u, 22252u))), func_1(Struct_4(_wgslsmith_add_i32(44589i, u_input.a.x) << (1u % 32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1725f))), var_0.a, -1071f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a + -1000f), _wgslsmith_f_op_f32(744f - 2067f), 964f, _wgslsmith_f_op_f32(f32(-1f) * -760f))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-536f)), _wgslsmith_f_op_f32(-1554f + 570f)), _wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(round(var_0.a))))), _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), ~(~vec2<u32>(1u, var_0.b.x))))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(232f, var_1.x, var_1.x, -1708f) * vec4<f32>(-136f, var_1.x, -499f, var_0.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -977f, 163f, 1551f), vec4<f32>(var_1.x, -1148f, var_1.x, -741f), vec4<bool>(true, false, false, true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_1.x, var_0.a, -1607f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-485f, var_1.x, -311f, -1564f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(1051f, 2431f, _wgslsmith_div_f32(598f, _wgslsmith_f_op_f32(f32(-1f) * -404f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)) - 373f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1016f, var_1.x, 256f)) - vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -334f), -193f, var_1.x, var_0.a))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - -1338f), var_1.x)), var_0.b, func_1(Struct_4(_wgslsmith_add_i32(24138i, max(u_input.a.x, var_0.c.a.x)))));
    let var_2 = _wgslsmith_f_op_f32(-var_0.a);
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1690f, 771f, var_0.a, var_1.x) - _wgslsmith_div_vec4_f32(vec4<f32>(var_2, 1489f, -1342f, var_1.x), vec4<f32>(2038f, var_2, -2066f, var_1.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a, var_0.a, -1200f, -410f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.a, 1000f, 1733f) + vec4<f32>(-161f, -432f, var_1.x, var_0.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0.a, 649f, -1735f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1269f, var_2), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(var_2)), _wgslsmith_f_op_f32(-2028f - var_0.a)) - vec4<f32>(-2096f, _wgslsmith_f_op_f32(var_2 + -190f), _wgslsmith_f_op_f32(-var_1.x), var_2))), false));
    let x = u_input.a;
    s_output = StorageBuffer(~1i);
}

