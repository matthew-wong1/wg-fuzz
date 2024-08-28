struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<f32>,
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = abs(~arg_2);
    let var_1 = _wgslsmith_mod_vec3_u32(abs(countOneBits(vec3<u32>(arg_2, 4294967295u, 16383u) >> (~vec3<u32>(1u, u_input.a, 4294967295u) % vec3<u32>(32u)))), vec3<u32>(u_input.b, max(0u, var_0) ^ 0u, _wgslsmith_add_u32(_wgslsmith_add_u32(~var_0, 18611u), 16715u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1323f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-134f, 915f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1383f)), 1491f, false || arg_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-449f * _wgslsmith_f_op_f32(f32(-1f) * -483f)))))));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(reverseBits(_wgslsmith_mult_i32((arg_0.a | arg_0.a) << (~u_input.b % 32u), _wgslsmith_clamp_i32(arg_0.a, max(arg_0.a, arg_0.a), 1i))));
    let var_1 = vec2<bool>(any(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true)), false);
    let var_2 = firstLeadingBit(vec3<i32>(-1i) * -(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -2147483647i, arg_0.a), vec3<i32>(arg_0.a, 45693i, 1i), vec3<i32>(arg_0.a, 1i, arg_0.a)) ^ vec3<i32>(arg_0.a, var_0.a, var_0.a)));
    var var_3 = abs(~u_input.a);
    var var_4 = min(_wgslsmith_dot_vec3_i32((reverseBits(var_2) >> (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(0u, u_input.a, 19505u)) % vec3<u32>(32u))) ^ vec3<i32>(firstLeadingBit(arg_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 46315i, var_2.x, 2147483647i), vec4<i32>(-17501i, var_2.x, arg_0.a, -67922i)), 1i), select(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0.a, -2147483647i, arg_0.a), vec3<i32>(-11308i, 1i, arg_0.a)), vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(var_2, vec3<i32>(-43802i, 1i, var_0.a)), max(arg_0.a, -2147483647i)), select(select(vec3<bool>(false, var_1.x, false), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), !vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, var_1.x, false)))), max(firstTrailingBit(-36665i), arg_0.a) & 44947i);
    return vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(arg_0.a), -var_0.a, 9191i, -1i), -_wgslsmith_mult_vec4_i32(vec4<i32>(10614i, arg_0.a, -43293i, -1i), vec4<i32>(2147483647i, var_0.a, 12293i, var_0.a)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(237f, -894f)), _wgslsmith_f_op_f32(min(1109f, 1000f)), _wgslsmith_div_f32(1134f, 1275f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1301f), -1663f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-783f * -1467f) - _wgslsmith_f_op_f32(-740f * 617f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(882f, -958f, -2914f))))), true))));
    var var_1 = var_0.x;
    var var_2 = firstTrailingBit(func_3(Struct_1(1i)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1601f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 822f), var_0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1570f), false)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 146f)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(var_0.x, -1000f)))))));
    var_2 = ~(~_wgslsmith_clamp_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, 0i, 2147483647i, 0i), vec4<i32>(21091i, -7734i, 29123i, 33375i))), firstTrailingBit(reverseBits(vec4<i32>(var_2.x, 3692i, -2147483647i, var_2.x))), ~vec4<i32>(-24058i, var_2.x, 2147483647i, 0i) << ((vec4<u32>(3364u, 0u, u_input.a, 23728u) & vec4<u32>(24010u, 4294967295u, u_input.a, 0u)) % vec4<u32>(32u))));
    return Struct_1(var_2.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = func_2();
    let var_1 = -(arg_1.a & _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, arg_1.a, 34021i, arg_1.a)), -vec4<i32>(var_0.a, var_0.a, -2147483647i, arg_3.a))) <= _wgslsmith_dot_vec4_i32(~(~firstLeadingBit(vec4<i32>(var_0.a, 0i, var_0.a, var_0.a))), vec4<i32>(_wgslsmith_add_i32(-arg_1.a, -arg_3.a), func_2().a, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.a, var_0.a), vec2<i32>(-1i, -2147483647i)), ~var_0.a));
    var var_2 = _wgslsmith_mult_vec4_u32(~(~(vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.a) & vec4<u32>(8826u, 35598u, u_input.b, 1u)) << (vec4<u32>(abs(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(4294967295u, 4294967295u)), u_input.a, firstLeadingBit(u_input.b)) % vec4<u32>(32u))), abs(reverseBits(select(~vec4<u32>(92003u, 1u, 89722u, 4294967295u), ~vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b), select(vec4<bool>(false, true, true, true), vec4<bool>(false, var_1, var_1, false), vec4<bool>(var_1, true, true, var_1))))));
    var_2 = vec4<u32>(_wgslsmith_mod_u32(14018u, _wgslsmith_mult_u32(countOneBits(var_2.x), _wgslsmith_dot_vec3_u32(var_2.xxy, var_2.zyw) ^ ~0u)), ~(_wgslsmith_dot_vec3_u32(var_2.wzx, var_2.yxz) & ~u_input.b) ^ (1u >> (var_2.x % 32u)), max(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(92298u, 4294967295u), var_2.zz), 13474u), 6897u), ~(~1u));
    var_2 = vec4<u32>(~(~(~0u)), ~max(_wgslsmith_mod_u32(447u, var_2.x), u_input.a), var_2.x, ~(~(~1u)));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~0i);
    var var_1 = (~1u | _wgslsmith_div_u32(firstTrailingBit(4294967295u) ^ 1u, firstLeadingBit(28051u))) << ((u_input.a & abs(u_input.a)) % 32u);
    let var_2 = max(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.a, select(1i, abs(var_0.a), false)), func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(func_1(true, false, 16106u, Struct_1(var_0.a)))), func_2(), _wgslsmith_f_op_f32(448f * _wgslsmith_f_op_f32(f32(-1f) * -808f)), func_2()), -21791i), 53017i);
    var var_3 = Struct_1(0i);
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-780f)), -1000f, true));
    let var_5 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2257f) + _wgslsmith_div_f32(var_4, var_4))) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4, _wgslsmith_div_f32(-2026f, var_4))), true, true, true);
    var var_6 = -51132i & func_2().a;
    var_6 = 1i;
    var var_7 = firstTrailingBit(vec4<i32>(-1i & _wgslsmith_add_i32(select(var_3.a, var_3.a, var_5.x), var_2), 2147483647i, ~(-48583i), var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(-var_2, vec4<i32>(9408i, ~(~(-45740i) >> (~u_input.b % 32u)), 2147483647i, var_7.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-559f)), _wgslsmith_f_op_f32(var_4 - var_4)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_4, var_4))) * _wgslsmith_div_vec2_f32(vec2<f32>(var_4, var_4), vec2<f32>(1798f, -1894f)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(2217f)), _wgslsmith_div_f32(var_4, var_4))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2167f - 859f)))), 34730u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, _wgslsmith_f_op_f32(abs(-1280f)), _wgslsmith_div_f32(var_4, var_4)) + vec3<f32>(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(ceil(var_4)), _wgslsmith_f_op_f32(-var_4)))));
}

