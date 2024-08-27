struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(min(~max(u_input.c ^ -22354i, -1i), i32(-1i) * -(~u_input.a)), -2147483647i);
    var var_1 = Struct_1(~u_input.a, _wgslsmith_mult_i32(var_0.b, _wgslsmith_div_i32((-19917i | u_input.c) & firstLeadingBit(u_input.c), 1i)));
    var_1 = Struct_1(~var_0.a, u_input.a);
    var var_2 = any(vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false)))) & (true | !any(vec3<bool>(true, false, false)));
    var var_3 = firstTrailingBit(-reverseBits(vec4<i32>(-39436i, var_1.b, u_input.c, ~(-44397i))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1914f)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, 2147483647i), vec3<i32>(10799i, 36034i, 369i))), ~(-2147483647i)));
    var var_1 = all(!vec3<bool>(true, u_input.d < u_input.b, true)) == false;
    let var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1138f)), -1292f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-361f, -405f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1591f, 485f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-680f * -1126f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-459f)) * _wgslsmith_f_op_f32(step(636f, -632f))), 896f) - vec3<f32>(-406f, 1688f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))));
    var var_3 = u_input.a;
    var_1 = true;
    return var_0.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(1813f, _wgslsmith_div_f32(-834f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(293f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(145f)), -571f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 399f) + vec2<f32>(var_0, -343f)), vec2<f32>(var_0, -1000f), vec2<bool>(arg_2.x, arg_2.x))))), vec2<f32>(867f, _wgslsmith_f_op_f32(var_0 + -1668f))));
    var var_2 = Struct_1(1i, _wgslsmith_mod_i32(1i << (reverseBits(reverseBits(arg_0)) % 32u), arg_1.b));
    var_2 = Struct_1(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-2147483647i, _wgslsmith_div_i32(-2147483647i, u_input.c), abs(u_input.c))), vec3<i32>(~abs(arg_1.a), 1i, -27966i)), u_input.a);
    let var_3 = ~_wgslsmith_mod_vec4_u32(~(vec4<u32>(4294967295u, 27403u, 4294967295u, arg_0) << (~vec4<u32>(u_input.e, 4294967295u, 1u, arg_0) % vec4<u32>(32u))), vec4<u32>(u_input.b | 39887u, ~(~77550u), _wgslsmith_mult_u32(u_input.d, reverseBits(122066u)), u_input.b));
    return func_2(~vec3<u32>(~arg_0, arg_0, 4294967295u));
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_2(func_4(u_input.e, func_2(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.e, u_input.d, u_input.d), ~vec3<u32>(19974u, arg_0, 0u), vec3<u32>(4294967295u, u_input.e, u_input.e))), !(!vec2<bool>(arg_1, arg_1))));
    let var_1 = firstLeadingBit(abs(~vec3<i32>(-1i, -11165i, u_input.a) << (reverseBits(vec3<u32>(u_input.d, arg_0, arg_0)) % vec3<u32>(32u))) & vec3<i32>(min(var_0.a.b, -29893i) | ~u_input.c, -(~var_0.a.b), (-4625i << (0u % 32u)) & (var_0.a.a & var_0.a.a)));
    let var_2 = 2147483647i;
    let var_3 = _wgslsmith_f_op_f32(1148f - 2226f);
    let var_4 = vec2<i32>(reverseBits(abs(max(var_2, var_1.x)) >> (arg_0 % 32u)), 34579i);
    return Struct_1(var_1.x, ~abs(var_2) >> (~arg_0 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(4294967295u, false));
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_mult_vec4_i32(select(max(vec4<i32>(18531i, var_0.a.b, 1i, 0i) << (select(vec4<u32>(45917u, u_input.b, 9629u, u_input.e), vec4<u32>(u_input.b, 0u, 1u, u_input.b), vec4<bool>(true, true, false, true)) % vec4<u32>(32u)), vec4<i32>(var_1.a, ~var_1.a, -1i >> (u_input.d % 32u), -32714i)), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.a, u_input.c), vec4<i32>(var_1.b, -2147483647i, var_0.a.a, -3161i)), -vec4<i32>(0i, 26635i, -1i, 0i))), vec4<bool>(true, true, true, _wgslsmith_f_op_f32(f32(-1f) * -363f) <= _wgslsmith_f_op_f32(sign(1654f)))), abs(vec4<i32>(u_input.c, u_input.a, reverseBits(-21279i), 0i)));
    var var_3 = firstLeadingBit(48714u);
    let var_4 = u_input.b;
    let var_5 = !select(vec2<bool>(true, true), vec2<bool>(6542i > (-1i >> (var_4 % 32u)), ~var_0.a.a > countOneBits(-85975i)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(61916u, 0u, 4294967295u, var_4), vec4<u32>(var_4, var_4, 0u, 4294967295u)), vec4<u32>(u_input.e, 0u, var_4, 8260u)) < _wgslsmith_clamp_u32(_wgslsmith_add_u32(20722u, 30748u), var_4, u_input.d));
    var var_6 = var_0;
    var var_7 = firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, max(24421u, 0u)), ~(0u >> (u_input.e % 32u)), ~var_4 << (0u % 32u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 14764u, var_4), vec3<u32>(u_input.e, _wgslsmith_sub_u32(var_4, 0u), abs(7818u)))));
    var_2 = select(select(vec4<i32>(var_2.x, -1i, 0i << ((var_7.x >> (4294967295u % 32u)) % 32u), var_2.x), abs(vec4<i32>(firstLeadingBit(u_input.c), 0i >> (var_4 % 32u), 2147483647i, 8703i)), !vec4<bool>(true, true, all(vec3<bool>(var_5.x, true, var_5.x)), true)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(34382i), abs(-2147483647i), select(var_6.a.b, var_6.a.b, true), -var_6.a.a), vec4<i32>(var_2.x, countOneBits(52i), var_6.a.b, -var_1.a), vec4<i32>(var_0.a.a, reverseBits(-18105i), func_1(u_input.d, false).b, firstLeadingBit(u_input.c))), vec4<i32>(-(~var_2.x), ~u_input.a, 1i, -(~(-2147483647i)))), all(!(!vec3<bool>(var_5.x, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.x, select(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_4, u_input.e), vec3<u32>(69080u, u_input.d, var_7.x)), ~countOneBits(countOneBits(vec3<u32>(var_7.x, 1u, var_4))), true), ~14170u, abs(4294967295u));
}

