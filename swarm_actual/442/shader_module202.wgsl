struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
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

var<private> global0: f32 = 159f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec4<bool> {
    global0 = 1397f;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-954f + _wgslsmith_f_op_f32(max(-818f, -444f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -940f) - -143f))), _wgslsmith_f_op_f32(-1f)));
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.b), firstTrailingBit(min(~vec2<u32>(u_input.b, u_input.b), firstLeadingBit(vec2<u32>(u_input.b, u_input.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-2480f * arg_0), arg_0, arg_0)))), abs(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(24729i, u_input.a.x, u_input.a.x), -vec3<i32>(-42542i, u_input.a.x, u_input.a.x)), firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(-29431i, -2147483647i, u_input.a.x))))), (-select(vec4<i32>(1i, u_input.a.x, u_input.a.x, -7281i), vec4<i32>(-8258i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, true, true, true)) | vec4<i32>(u_input.a.x, ~u_input.a.x, u_input.a.x, abs(u_input.a.x))) ^ -_wgslsmith_div_vec4_i32(abs(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -54345i)));
    let var_1 = vec3<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a.x, abs(1i), 53289i, ~u_input.a.x), vec4<i32>(1i, 50873i, u_input.a.x, 2147483647i) ^ abs(vec4<i32>(u_input.a.x, -8885i, 0i, var_0.c.x))), var_0.c.x), ~_wgslsmith_add_i32(1i, u_input.a.x & var_0.d.x), var_0.c.x);
    var var_2 = select(~firstTrailingBit(vec4<u32>(u_input.b << (u_input.b % 32u), var_0.a, var_0.a ^ u_input.b, 4294967295u)), ~firstLeadingBit(~vec4<u32>(33860u, 41429u, 4294967295u, u_input.b) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, u_input.b, var_0.a, u_input.b), vec4<u32>(var_0.a, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 57145u, 34250u, var_0.a))), !(!vec4<bool>(var_1.x != var_1.x, true, true, any(vec4<bool>(true, false, true, false)))));
    return select(vec4<bool>(true, false, all(vec4<bool>(true, false, false, false)) && true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), true)), true), any(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), 1i < var_0.c.x, all(vec4<bool>(true, true, true, false))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2024f, 114f)), vec2<f32>(_wgslsmith_f_op_f32(step(-1207f, -934f)), _wgslsmith_f_op_f32(-239f - 712f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-512f * 691f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f)))));
    var var_1 = Struct_1(~min(45501u, abs(113695u)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1383f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -945f, -174f) * vec3<f32>(-238f, -523f, 1904f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 394f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(227f, var_0.x, -184f), vec3<f32>(1000f, var_0.x, -477f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, 1362f))))), vec3<i32>(~u_input.a.x ^ reverseBits(24005i), firstLeadingBit(u_input.a.x) & arg_0.x, 5926i) << (vec3<u32>(4294967295u | ~u_input.b, abs(u_input.b << (u_input.b % 32u)), ~(~u_input.b)) % vec3<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(min(arg_0.x, _wgslsmith_add_i32(-23634i, u_input.a.x)), arg_0.x, _wgslsmith_add_i32(u_input.a.x, arg_0.x) & -u_input.a.x, _wgslsmith_sub_i32(arg_0.x, 1i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -8398i, 42101i, 48068i), vec4<i32>(u_input.a.x, -29096i, -2147483647i, arg_0.x) ^ vec4<i32>(0i, u_input.a.x, 18848i, 1i)), vec4<i32>(arg_0.x, _wgslsmith_add_i32(arg_0.x | arg_0.x, -35741i & arg_0.x), abs(_wgslsmith_div_i32(arg_0.x, 57768i)), abs(-arg_0.x))));
    let var_2 = abs(_wgslsmith_div_vec3_i32(vec3<i32>(-abs(1i), _wgslsmith_sub_i32(0i, 2147483647i), arg_0.x), var_1.d.xxz));
    let var_3 = select(vec2<i32>(_wgslsmith_dot_vec3_i32(~var_2 ^ _wgslsmith_clamp_vec3_i32(var_2, var_1.d.wwx, var_2), var_2), 66288i), var_2.zy, arg_1.x);
    let var_4 = !vec4<bool>(true, false, all(!arg_2), true);
    return true;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = vec2<bool>(func_4(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a.x, 2147483647i), -vec2<i32>(-13166i, u_input.a.x)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), -vec2<i32>(0i, u_input.a.x)), vec3<bool>(true, true, true), !select(func_3(1549f), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_f32(403f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1000f))))) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1898f + _wgslsmith_f_op_f32(trunc(1082f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2637f))))));
    var var_2 = Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(305f, 385f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(249f, -1000f, 1497f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-3126f, -2251f, -2097f)))), -vec3<i32>(_wgslsmith_mult_i32(4970i, max(u_input.a.x, -48691i)), 1i, 1i), abs(vec4<i32>(1i, ~(-u_input.a.x), u_input.a.x, -_wgslsmith_clamp_i32(2147483647i, 0i, -2147483647i))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_2.b.x))))));
    var var_4 = firstTrailingBit(-1i);
    return -2147483647i;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> f32 {
    var var_0 = max(vec3<i32>(u_input.a.x, -abs(arg_0.x | arg_1), ~_wgslsmith_mult_i32(~arg_0.x, _wgslsmith_div_i32(u_input.a.x, 5765i))), -(~max(vec3<i32>(38341i, 1i, 2147483647i), vec3<i32>(-1i, u_input.a.x, u_input.a.x)) ^ vec3<i32>(func_2(), arg_0.x, _wgslsmith_div_i32(arg_1, -1i))));
    var_0 = abs(reverseBits(-vec3<i32>(1i, 1i, 1i)));
    var var_1 = _wgslsmith_add_u32(1u, ~24780u);
    var_1 = ~0u << (u_input.b % 32u);
    let var_2 = vec4<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-997f)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(1443f - 852f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1254f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1897f)), -371f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-520f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(850f)), _wgslsmith_f_op_f32(-201f * -407f)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(-458f, 185f))))), true)));
    return var_2.x;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -544f)) + _wgslsmith_div_f32(arg_1, arg_1)) + -2044f);
    var var_0 = Struct_1(~7461u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-394f, -228f, -480f) + vec3<f32>(arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, -188f, arg_1), vec3<f32>(arg_1, -1762f, arg_1), vec3<bool>(true, false, false)))))), ~_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a.x, func_2()), select(vec3<i32>(13330i, -17684i, u_input.a.x), vec3<i32>(-24736i, 1i, -1i), false) << (~vec3<u32>(0u, arg_2.x, 12318u) % vec3<u32>(32u))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) << (_wgslsmith_mult_vec4_u32(arg_2, ~arg_2) % vec4<u32>(32u)), abs(select(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -1i), true)) >> (arg_2 % vec4<u32>(32u)), ~vec4<i32>(22443i, reverseBits(u_input.a.x), ~(-6924i), _wgslsmith_clamp_i32(1i, u_input.a.x, u_input.a.x))));
    var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~4294967295u, u_input.b, arg_2.x << (u_input.b % 32u)) | arg_0, 1u), var_0.b, firstLeadingBit(firstLeadingBit(var_0.d.yyw >> (select(arg_2.yxy, vec3<u32>(arg_0, arg_2.x, 57259u), true) % vec3<u32>(32u)))), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.d.x, var_0.c.x), -34290i)), u_input.a.x & -1i, var_0.c.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(-25684i, u_input.a.x), 1i), ~2147483647i)));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(455f + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(1u, _wgslsmith_f_op_f32(func_1(u_input.a, 0i)), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b))))))));
    var var_1 = Struct_1(11945u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1346f, -736f, 787f)))))), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, -47381i, 45921i)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(2147483647i, -48508i, -46606i)), ~(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<i32>(27199i, u_input.a.x, u_input.a.x))), -1i, ~(~(~2147483647i))), vec4<i32>(5956i, abs(-96313i), u_input.a.x, u_input.a.x));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)) * 1000f)));
    var var_2 = ~(vec4<u32>(_wgslsmith_add_u32(u_input.b, 1u) & 1u, var_1.a, 62740u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.a), vec2<u32>(u_input.b, var_1.a)), 70521u)) | ~(~(~vec4<u32>(60160u, u_input.b, 0u, u_input.b))));
    var var_3 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(var_1.b)))))))), vec3<i32>(u_input.a.x, i32(-1i) * -5219i, -20435i), firstLeadingBit(var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(-29625i);
}

