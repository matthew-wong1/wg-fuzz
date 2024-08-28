struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = min(arg_0.c, u_input.a);
    let var_1 = 0u;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1135f))))), _wgslsmith_f_op_f32(select(-809f, 1798f, all(select(vec4<bool>(arg_0.a.x, true, false, var_2.a.x), vec4<bool>(false, var_2.a.x, false, true), vec4<bool>(true, arg_0.a.x, false, true))))))));
    let var_4 = 389f;
    return _wgslsmith_div_i32(u_input.c, ~u_input.c >> (_wgslsmith_add_u32(arg_0.c, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 1119u), var_2.d.xx))) % 32u));
}

fn func_2() -> Struct_1 {
    let var_0 = -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c)) & 0i, func_3(Struct_1(vec2<bool>(true, false), vec4<f32>(-670f, 1000f, -285f, 851f), 4294967295u, vec3<u32>(u_input.d, u_input.b, 36952u), -495f)), -_wgslsmith_add_i32(14531i, -1i), -2147483647i) & countOneBits(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-64706i, 1i, u_input.c), -1i), u_input.c, ~func_3(Struct_1(vec2<bool>(false, true), vec4<f32>(509f, 1875f, -1264f, 1492f), u_input.e.x, vec3<u32>(20884u, 0u, 42736u), -540f)), u_input.c));
    var var_1 = reverseBits(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 0u, u_input.b, u_input.e.x) >> (vec4<u32>(u_input.a, 17707u, u_input.b, 69767u) % vec4<u32>(32u)), vec4<u32>(u_input.d, u_input.b, u_input.a, 26930u) ^ vec4<u32>(u_input.a, 1u, 85439u, u_input.b)) ^ min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.e.x, 4294967295u, u_input.d), vec4<u32>(u_input.b, 1u, 6812u, u_input.e.x), vec4<u32>(0u, u_input.a, 49149u, 91278u)), reverseBits(vec4<u32>(1u, 4294967295u, 4294967295u, u_input.b))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 79701u, 1u, ~62983u), ~vec4<u32>(u_input.a, 4294967295u, 28364u, u_input.a)), false));
    var var_2 = vec4<u32>(4294967295u, 37239u, var_1.x << (_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(var_1.x, 4294967295u, u_input.a)) % 32u), ~1u << (var_1.x % 32u)) << (~(firstLeadingBit(abs(vec4<u32>(0u, var_1.x, 49749u, var_1.x))) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(127329u, 0u, u_input.e.x, u_input.a) & vec4<u32>(0u, u_input.b, var_1.x, 83878u), countOneBits(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.d)))) % vec4<u32>(32u));
    var var_3 = vec3<bool>(!(true || !any(vec4<bool>(false, true, false, false))), !all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, false), true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(~47696u, var_2.x), var_1.x), 26938u, ~(~72445u | ~var_2.x), _wgslsmith_sub_u32(~abs(u_input.e.x), var_2.x)), vec4<u32>(var_1.x, ~var_1.x, abs(85599u), 8588u), vec4<u32>(min(abs(1u << (var_1.x % 32u)), abs(u_input.e.x) >> (_wgslsmith_sub_u32(1u, 1u) % 32u)), ~40736u >> (_wgslsmith_div_u32(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(106395u, 32894u, var_2.x, u_input.d), vec4<u32>(var_1.x, u_input.a, 1u, var_2.x))) % 32u), var_2.x, 1u));
    return Struct_1(!vec2<bool>(any(vec4<bool>(false, var_3.x, true, true)), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-755f * _wgslsmith_f_op_f32(532f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1644f)), _wgslsmith_f_op_f32(round(-199f)), -776f)), 1u, _wgslsmith_add_vec3_u32(~(firstLeadingBit(var_1.yyx) >> (vec3<u32>(20540u, 1u, 15919u) % vec3<u32>(32u))), vec3<u32>(~1u, var_2.x, ~0u) << (~(~vec3<u32>(u_input.d, 0u, var_2.x)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(step(-148f, 427f)));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(arg_1.c, 0u, arg_1.c, 4294967295u) | ~vec4<u32>(109976u, arg_1.c, arg_1.c, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, u_input.d, arg_1.d.x), ~vec4<u32>(4247u, 4294967295u, arg_1.c, u_input.b)), !vec4<bool>(false, false, false, arg_1.a.x)), ~vec4<u32>(~0u, 4294967295u, u_input.d, ~33243u)), min(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(55396u, 0u, arg_1.d.x, 1u), select(vec4<u32>(arg_1.d.x, 0u, arg_1.c, arg_1.c), vec4<u32>(arg_1.d.x, u_input.b, 10278u, u_input.b), vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x)))), vec4<u32>(_wgslsmith_div_u32(arg_1.c, max(u_input.d, u_input.a)), arg_1.c, u_input.d, u_input.b)));
    var var_1 = Struct_1(!arg_1.a, arg_1.b, ~var_0.x, firstTrailingBit(~vec3<u32>(4294967295u, max(45149u, var_0.x), arg_1.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.e))));
    var var_2 = vec2<i32>(-1i, _wgslsmith_div_i32(u_input.c, ~27149i)) >> ((~var_1.d.xz & firstTrailingBit(abs(var_1.d.zz) | ~arg_1.d.xy)) % vec2<u32>(32u));
    let var_3 = firstTrailingBit(func_2().d.x);
    let var_4 = ~max(vec4<i32>(-40026i, func_3(Struct_1(arg_1.a, vec4<f32>(var_1.b.x, var_1.b.x, 833f, 404f), var_1.c, var_1.d, 561f)), _wgslsmith_mult_i32(u_input.c, -9190i), u_input.c), -(reverseBits(vec4<i32>(arg_0, 2147483647i, 1i, u_input.c)) << ((vec4<u32>(1u, arg_1.d.x, var_1.c, 117263u) >> (vec4<u32>(0u, arg_1.d.x, 91940u, var_1.d.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~(~abs(vec3<u32>(var_1.c, var_3, arg_1.d.x))), select(arg_1.d, abs(~var_1.d), false)), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_0, var_0), max(vec4<u32>(0u, 44964u, 5263u, 1u), vec4<u32>(var_1.d.x, var_3, arg_1.c, 33498u))) << (u_input.e.x % 32u), var_3, 68957u));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = Struct_1(!arg_0, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-550f, 1948f, _wgslsmith_f_op_f32(f32(-1f) * -3683f), _wgslsmith_f_op_f32(trunc(1349f)))))), 3098u, firstLeadingBit(select(~(~vec3<u32>(u_input.e.x, 65909u, u_input.e.x)), func_4(u_input.c, func_2()), vec3<bool>(u_input.a < u_input.b, true, arg_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2124f, -792f)))))));
    var var_1 = Struct_1(vec2<bool>(abs(u_input.c) <= (u_input.c ^ (u_input.c | u_input.c)), !arg_0.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b), vec4<f32>(var_0.e, -2175f, 1411f, var_0.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(606f, 2176f, var_0.b.x, var_0.e)) + var_0.b))), var_0.c, vec3<u32>(~abs(27586u | var_0.c), u_input.b, _wgslsmith_add_u32(u_input.b, ~0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -420f)));
    var_1 = func_2();
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1669f, _wgslsmith_f_op_f32(min(-1649f, var_0.b.x)))), func_2().b.x, _wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(-1480f - var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x))), select(u_input.b | var_0.c, ~abs(_wgslsmith_clamp_u32(var_0.d.x, 8049u, 62863u)), arg_0.x), ~(~(~var_0.d)) & ~var_1.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-985f, _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(sign(var_0.e))))), _wgslsmith_f_op_f32(f32(-1f) * -1309f), countOneBits(~var_0.d.x) == var_1.d.x)));
    var_1 = Struct_1(!select(var_1.a, select(var_0.a, func_2().a, func_2().a), select(false, var_2.a.x && true, var_0.e != 104f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.e, -1000f, var_1.a.x)), var_2.e)) * var_1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f + _wgslsmith_f_op_f32(floor(-410f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-687f, _wgslsmith_f_op_f32(abs(var_0.b.x)))), -1316f)), 1772f), 24955u, var_0.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_2.e, var_2.e))))), _wgslsmith_f_op_f32(f32(-1f) * -1347f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.e))) + _wgslsmith_f_op_f32(-var_2.e)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + 1415f))))));
}

fn func_5(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-326f, -191f, -126f, _wgslsmith_f_op_f32(ceil(arg_0.x)))), select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), true), vec4<bool>(true, func_2().a.x, all(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, false))), any(vec2<bool>(true, true))))), u_input.b, ~firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.d, 16774u, u_input.a))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(28929u << (u_input.e.x % 32u), u_input.e.x, 1u), max(~vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(1u, u_input.a, u_input.e.x))) % vec3<u32>(32u)), -1000f);
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(max(-1041f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1280f)), _wgslsmith_div_f32(964f, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e + arg_0.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(func_1(func_2().a)))))));
    var_1 = func_2();
    var_1 = Struct_1(vec2<bool>(~(27857u >> (u_input.e.x % 32u)) >= 0u, all(!select(var_0.a, vec2<bool>(var_1.a.x, var_1.a.x), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_1.b)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(var_2, var_1.b.x, var_2, 2156f), var_0.a.x))), var_0.b, true))), 1u, max(~select(vec3<u32>(0u, var_1.d.x, 1u), vec3<u32>(var_1.c, 0u, 0u), select(vec3<bool>(var_0.a.x, true, false), vec3<bool>(var_1.a.x, var_0.a.x, var_0.a.x), false)), vec3<u32>(u_input.e.x, ~var_1.d.x, min(1u, ~4294967295u))), var_2);
    return vec3<bool>(any(vec3<bool>(true, _wgslsmith_f_op_f32(var_0.e - var_2) > _wgslsmith_f_op_f32(min(var_0.b.x, 830f)), var_1.a.x & true)), var_1.a.x, var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_5(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(func_1(vec2<bool>(false, false))), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(143f, -489f) * -676f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2010f + -841f), _wgslsmith_f_op_f32(f32(-1f) * -115f)), _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_f_op_f32(round(356f));
    var var_2 = Struct_1(!func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-174f, -830f, 435f, 1897f), vec4<f32>(-547f, -157f, 444f, -1068f))))).xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, -833f, 696f, 881f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1392f, 1646f, -282f, -432f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1367f, -3372f, -1020f, -1138f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-289f, -1460f, -438f, -1410f)), true))), firstLeadingBit(1u), vec3<u32>(u_input.b, ~(~u_input.e.x), 66215u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-394f))) - _wgslsmith_f_op_f32(func_1(var_0.zx)))));
    let var_3 = Struct_1(var_0.zx, _wgslsmith_f_op_vec4_f32(-var_2.b), 55355u, firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(var_2.d), ~var_2.d), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e.x, 1u, 1u), ~vec3<u32>(24946u, 1u, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.e, var_2.e), -2033f)) * _wgslsmith_f_op_f32(1055f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-540f - var_2.e) + _wgslsmith_f_op_f32(floor(var_2.b.x))))));
    var var_4 = vec4<i32>(max(-_wgslsmith_div_i32(select(u_input.c, -4093i, var_2.a.x), -810i), u_input.c), u_input.c & 3570i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), _wgslsmith_mult_vec2_i32(~vec2<i32>(-1i, u_input.c), vec2<i32>(-20095i, u_input.c)))), _wgslsmith_dot_vec4_i32(~select(_wgslsmith_sub_vec4_i32(vec4<i32>(76384i, -1i, u_input.c, -13773i), vec4<i32>(u_input.c, u_input.c, 1i, u_input.c)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.c, -32369i), vec4<i32>(u_input.c, u_input.c, u_input.c, 12605i)), any(vec2<bool>(true, false))), firstLeadingBit(~vec4<i32>(u_input.c, 0i, 8665i, 17996i) >> (vec4<u32>(var_2.c, 64502u, var_3.c, var_3.c) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_sub_vec2_i32(max(vec2<i32>(var_4.x, 2147483647i), vec2<i32>(-5112i, var_4.x)), ~var_4.zz), var_4.yy), u_input.b, vec2<u32>(~_wgslsmith_dot_vec2_u32(var_2.d.yx, vec2<u32>(4294967295u, u_input.d)), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_3.d.x, var_2.c), 1u)));
}

