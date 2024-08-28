struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(533f, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(901f, -758f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1526f, 1349f))), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1797f, -576f), vec2<f32>(173f, -533f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(625f, 323f), vec2<f32>(-649f, -348f)))))), vec2<i32>(-_wgslsmith_add_i32(max(2147483647i, 0i), _wgslsmith_add_i32(-2147483647i, 0i)), 1i), false & !(all(vec2<bool>(false, true)) && true), vec2<f32>(1f, 1f));
    let var_1 = min(reverseBits(firstLeadingBit(vec3<i32>(1i, -var_0.c.x, _wgslsmith_clamp_i32(-39224i, 867i, 0i)))), select(~select(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_0.c.x, -24613i), vec3<i32>(1i, var_0.c.x, 2942i)), vec3<i32>(var_0.c.x, var_0.c.x, -2147483647i), !vec3<bool>(var_0.d, var_0.d, true)), ~select(~vec3<i32>(var_0.c.x, -20369i, -9123i), select(vec3<i32>(var_0.c.x, var_0.c.x, 49520i), vec3<i32>(var_0.c.x, -34172i, -4761i), var_0.d), vec3<bool>(var_0.d, true, var_0.d)), var_0.b.x >= _wgslsmith_div_f32(var_0.e.x, _wgslsmith_f_op_f32(exp2(var_0.a)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(1213f, _wgslsmith_f_op_f32(abs(-971f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(_wgslsmith_f_op_f32(var_0.a - var_0.e.x), -197f)) + vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(904f * var_0.a) * _wgslsmith_f_op_f32(var_0.b.x * -1000f)))), select(abs(vec2<i32>(-var_0.c.x, var_1.x << (8003u % 32u))), vec2<i32>(min(var_1.x, _wgslsmith_add_i32(0i, 2147483647i)), abs(var_1.x)), any(vec2<bool>(false, true))), false, _wgslsmith_f_op_vec2_f32(var_0.b + var_0.b));
    let var_3 = vec3<f32>(-1255f, var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(352f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-418f)))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x - 1000f), var_0.b.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(252f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1441f)), 2194f))))), var_2.c, !(!(!var_0.d)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_3.x)))), var_2.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, 1366f) - vec2<f32>(1562f, -103f))), vec2<bool>(false, any(vec3<bool>(var_2.d, false, false))))));
    return _wgslsmith_clamp_i32(abs(~0i), var_0.c.x, _wgslsmith_sub_i32(-23273i, var_4.c.x ^ (var_2.c.x & var_2.c.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var_0 = _wgslsmith_f_op_f32(-303f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1700f))) - -124f));
    let var_1 = Struct_1(-386f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-473f, 482f))), vec2<i32>(-countOneBits(abs(-1i)), _wgslsmith_sub_i32(reverseBits(1i), -1i)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-551f, -1121f))))))));
    let var_2 = max(~vec2<i32>(-var_1.c.x & _wgslsmith_div_i32(var_1.c.x, -13165i), var_1.c.x), var_1.c | firstLeadingBit(var_1.c));
    var_0 = _wgslsmith_f_op_f32(1367f + _wgslsmith_f_op_f32(-991f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1178f + var_1.e.x)))));
    return _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, ~var_1.c.x, ~(var_1.c.x >> (arg_2 % 32u))), firstTrailingBit(-vec3<i32>(var_1.c.x, -1i, 21303i)), ~vec3<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(var_1.c.x, 2147483647i), -1i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c.x, -2147483647i, func_3()), vec3<i32>(13835i, _wgslsmith_mult_i32(var_1.c.x, var_2.x), ~0i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(~func_2(select(arg_0.xw, arg_0.yx, !arg_0.ww), select(true, false, arg_0.x) || !arg_0.x, u_input.a.x), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1556i, 2147483647i, arg_1.x), vec3<i32>(-58584i, arg_1.x, arg_1.x) << (u_input.a % vec3<u32>(32u)), ~vec3<i32>(2666i, 1069i, 2147483647i)), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), vec3<i32>(-2147483647i, -70952i, arg_1.x))), !vec3<bool>(arg_0.x, arg_0.x, true)) ^ (_wgslsmith_mult_vec3_i32(select(vec3<i32>(arg_1.x, 9892i, 0i), vec3<i32>(11087i, 1i, arg_1.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, 2147483647i, arg_1.x), vec3<i32>(arg_1.x, -15519i, arg_1.x))) | reverseBits(countOneBits(vec3<i32>(-2147483647i, -2147483647i, arg_1.x)))));
    var var_1 = ~u_input.a;
    let var_2 = Struct_1(-1497f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)), 1412f)), ~_wgslsmith_div_vec2_i32(~_wgslsmith_add_vec2_i32(arg_1, vec2<i32>(arg_1.x, 0i)), -arg_1 ^ vec2<i32>(-2147483647i, arg_1.x)), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1144f - -1639f) + 460f), _wgslsmith_div_f32(-1951f, _wgslsmith_f_op_f32(floor(1068f))))));
    var_1 = firstTrailingBit(firstLeadingBit(vec3<u32>(71013u, 1u, 4294967295u)) | u_input.a) & (u_input.a & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, 25747u), vec4<u32>(u_input.a.x, 54842u, 21941u, u_input.b.x)) & 0u, 9071u, u_input.a.x));
    let var_3 = var_2;
    return _wgslsmith_f_op_f32(var_2.e.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.a, _wgslsmith_f_op_f32(-var_2.e.x)))) - _wgslsmith_f_op_f32(246f * _wgslsmith_f_op_f32(abs(var_3.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -111f), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-582f, -1406f))), 1365f), vec2<i32>(-(~_wgslsmith_sub_i32(18298i, -1i)), firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(-31088i, 1i, -56268i), vec3<i32>(19613i, 32713i, 0i)))), true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1521f + 122f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, true, false), vec2<i32>(-1i, 447i))), _wgslsmith_f_op_f32(329f + -123f))), -748f));
    let var_1 = _wgslsmith_f_op_f32(func_1(select(vec4<bool>(!any(vec2<bool>(var_0.d, false)), var_0.d, (i32(-1i) * -1i) >= (var_0.c.x << (u_input.b.x % 32u)), !(var_0.c.x <= var_0.c.x)), !(!select(vec4<bool>(var_0.d, true, var_0.d, var_0.d), vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), var_0.d)), vec4<bool>((false && var_0.d) != select(true, false, var_0.d), true, var_0.d, _wgslsmith_div_u32(u_input.b.x, u_input.b.x) <= 1u)), ~min(_wgslsmith_mult_vec2_i32(var_0.c, min(var_0.c, var_0.c)), vec2<i32>(var_0.c.x, var_0.c.x) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 25843u), u_input.a.zy) % vec2<u32>(32u)))));
    var var_2 = ~(~abs(~u_input.b.x));
    var_2 = max(u_input.a.x, u_input.a.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-1690f + var_0.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-679f, var_0.a)))), reverseBits(reverseBits(-(~var_0.c))), all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, var_0.d), vec2<bool>(var_0.d, false), vec2<bool>(var_0.d, false)), var_0.c.x > var_0.c.x), !vec2<bool>(true, var_0.d), !var_0.d)), vec2<f32>(var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -442f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -1974f) * _wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, var_0.d, true), var_0.c)))))));
    var_2 = ~27301u;
    var var_4 = min(vec3<i32>(-(~var_3.c.x & (i32(-1i) * -1i)), ~max(var_3.c.x & var_0.c.x, select(-67257i, -9397i, var_3.d)), _wgslsmith_add_i32(15423i, var_0.c.x | (var_3.c.x & var_0.c.x))), vec3<i32>(abs(firstLeadingBit(1i)), _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.c), var_3.c), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_sub_i32(var_4.x, -14013i), func_3(), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, var_3.c.x, var_0.c.x, var_4.x) >> (vec4<u32>(u_input.b.x, 38110u, 0u, 1514u) % vec4<u32>(32u)), -vec4<i32>(var_3.c.x, var_0.c.x, -45871i, var_4.x))), ~vec4<i32>(min(var_0.c.x, var_0.c.x), var_3.c.x ^ var_0.c.x, -var_0.c.x, var_0.c.x)), func_3(), max(_wgslsmith_dot_vec3_u32(firstLeadingBit(firstLeadingBit(u_input.a)), u_input.a), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
}

