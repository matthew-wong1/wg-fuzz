struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: u32) -> vec3<u32> {
    let var_0 = vec3<i32>(u_input.a.x, 2147483647i, -u_input.a.x);
    var var_1 = Struct_1(vec3<bool>(arg_1 > (_wgslsmith_dot_vec2_u32(vec2<u32>(47814u, arg_0), vec2<u32>(arg_1, 34164u)) & ~1u), any(vec4<bool>(any(vec4<bool>(false, false, true, false)), false, true, true)), false), countOneBits(vec3<u32>(arg_0, ~_wgslsmith_clamp_u32(4294967295u, arg_1, 6095u), 1u)), arg_0, (_wgslsmith_sub_i32(1i, -40857i) ^ select(-2147483647i, u_input.a.x, all(vec2<bool>(false, false)))) << (_wgslsmith_mult_u32(arg_1, _wgslsmith_clamp_u32(arg_1, ~0u, arg_1 ^ 36409u)) % 32u), _wgslsmith_f_op_f32(-704f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(323f - 823f))) * _wgslsmith_f_op_f32(f32(-1f) * -713f))));
    let var_2 = false;
    var_1 = Struct_1(!vec3<bool>(true, true, var_1.a.x), vec3<u32>(arg_0, _wgslsmith_div_u32(1u, var_1.c), firstLeadingBit(27104u)) << (abs(select(vec3<u32>(4294967295u, 27355u, arg_1), reverseBits(vec3<u32>(arg_0, 0u, var_1.c)), !var_1.a)) % vec3<u32>(32u)), 1u, min(var_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.d, var_1.d, var_1.d, u_input.a.x), u_input.a), _wgslsmith_add_vec4_i32(u_input.a, u_input.a) & vec4<i32>(var_1.d, var_1.d, var_0.x, var_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)))));
    var var_3 = var_1.e;
    return select(~(~var_1.b), var_1.b >> (~(~countOneBits(vec3<u32>(var_1.b.x, arg_1, 2020u))) % vec3<u32>(32u)), true);
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(floor(1000f)), true, ~vec2<u32>(~(~15001u), _wgslsmith_div_u32(1u, 96976u)), Struct_1(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), false), vec3<bool>(true, all(vec4<bool>(false, true, false, false)), false), vec3<bool>(true, true, true)), func_3(8761u, ~1u), 0u, u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -444f)), Struct_1(vec3<bool>(true, all(vec2<bool>(false, true)), !any(vec4<bool>(false, true, true, false))), _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(79333u), ~11186u, firstTrailingBit(1u)), func_3(0u, 9081u), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(37408u, 22594u, 23798u), vec3<u32>(4294967295u, 0u, 32037u)), vec3<u32>(4294967295u, 59151u, 53722u), ~vec3<u32>(53204u, 55932u, 4294967295u))), ~16403u, abs(_wgslsmith_add_i32(-1i, 2147483647i)) & u_input.a.x, _wgslsmith_f_op_f32(-780f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(223f, 1168f)), 1f)))));
    var var_1 = Struct_2(Struct_1(vec3<bool>(true, all(vec2<bool>(false, false)), false == (false || var_0.d.a.x)), ~reverseBits(~vec3<u32>(var_0.c.x, 0u, var_0.c.x)), _wgslsmith_div_u32(reverseBits(6531u), firstLeadingBit(firstTrailingBit(0u))), _wgslsmith_mult_i32(-21439i, var_0.e.d << (var_0.e.b.x % 32u)) >> (0u % 32u), -239f), var_0.e.b.x, Struct_1(!var_0.d.a, ~var_0.d.b, var_0.e.c, ~(-59752i), _wgslsmith_f_op_f32(-var_0.e.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f))));
    var var_2 = 17604u;
    let var_3 = (~var_0.e.c | var_1.c.b.x) & reverseBits(_wgslsmith_add_u32(select(1u, reverseBits(var_1.a.c), all(vec4<bool>(true, true, false, false))), 20325u));
    var var_4 = ~(-41797i);
    return u_input.a.wx;
}

fn func_1() -> Struct_1 {
    var var_0 = ~u_input.a.x;
    var_0 = 1i;
    var_0 = _wgslsmith_clamp_i32(0i, u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~(vec2<i32>(-1i, u_input.a.x) ^ u_input.a.wz), vec2<i32>(~35944i, u_input.a.x & u_input.a.x)), _wgslsmith_sub_vec2_i32(u_input.a.zx | func_2(), abs(func_2()))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(338f))) - _wgslsmith_f_op_f32(f32(-1f) * -139f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1889f, 120f), 363f))));
    var var_2 = Struct_1(select(vec3<bool>(-1188f <= _wgslsmith_f_op_f32(-var_1), true, true), select(vec3<bool>(true, all(vec2<bool>(false, true)), true), vec3<bool>(select(false, false, true), true, true), select(false, false, false) && true), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))), func_3(max(1u, 1u), ~abs(27787u)) ^ ~(select(vec3<u32>(79097u, 1u, 34161u), vec3<u32>(55772u, 4294967295u, 10246u), true) & vec3<u32>(16512u, 4294967295u, 10897u)), 4294967295u, select(u_input.a.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(func_2().x, -17523i), max(_wgslsmith_mult_i32(-1i, 1i), _wgslsmith_add_i32(1i, u_input.a.x))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))) + var_1));
    return Struct_1(var_2.a, var_2.b, var_2.c, _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(0i, -2147483647i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(35935u, var_2.c), ~var_2.b.xx) % 32u)), _wgslsmith_f_op_f32(max(-351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + 546f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: f32) -> vec2<i32> {
    var var_0 = vec2<u32>(11754u, 19383u);
    let var_1 = arg_2;
    var var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.e))) - arg_3) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -1406f)))));
    var_3 = _wgslsmith_f_op_f32(floor(-649f));
    return -abs(vec2<i32>(-11711i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -31389i, 22053i, 46800i)))) >> (func_3(35198u, 42186u).zx % vec2<u32>(32u));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = vec4<f32>(1387f, _wgslsmith_f_op_f32(exp2(arg_2.e)), -795f, 188f);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(func_1().e)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.e)) * _wgslsmith_f_op_f32(1096f * -182f)), func_1().e) * arg_2.e), arg_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e)));
    var var_1 = Struct_2(Struct_1(!func_1().a, abs(min(arg_2.b, arg_2.b) >> (arg_2.b % vec3<u32>(32u))), _wgslsmith_dot_vec4_u32((vec4<u32>(70654u, 70129u, arg_2.b.x, 13817u) & vec4<u32>(0u, arg_2.b.x, arg_2.c, 4294967295u)) & max(vec4<u32>(1u, arg_2.c, arg_2.b.x, 35569u), vec4<u32>(21051u, arg_2.b.x, arg_2.b.x, arg_2.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 75608u, arg_2.b.x, arg_2.c), vec4<u32>(50285u, arg_2.c, 53298u, arg_2.c)) << (vec4<u32>(8968u, arg_2.c, arg_2.b.x, 27349u) % vec4<u32>(32u))), _wgslsmith_add_i32(_wgslsmith_mod_i32(-30372i, -arg_1.x), -7096i), -1000f), (max(4294967295u, func_3(arg_2.c, 1u).x) | func_1().c) & arg_2.b.x, func_1(), _wgslsmith_f_op_f32(-var_0.x));
    var_1 = Struct_2(func_1(), arg_2.c, arg_2, -191f);
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, -294f, -1218f, -893f)) - vec4<f32>(-262f, _wgslsmith_f_op_f32(round(arg_2.e)), -1070f, _wgslsmith_f_op_f32(select(arg_2.e, arg_0, var_1.c.a.x)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 1000f, 1797f, var_1.a.e)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(657f, 608f, arg_2.e, var_0.x) - vec4<f32>(-1542f, 294f, arg_2.e, -280f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 875f, -323f, arg_2.e), vec4<f32>(293f, 607f, 1381f, -359f)))))), vec4<f32>(func_1().e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-674f - _wgslsmith_f_op_f32(1142f - var_1.d))), var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-func_1().e)))));
    return Struct_2(func_1(), max(var_1.a.b.x, var_1.c.b.x), func_1(), _wgslsmith_f_op_f32(sign(arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1300f)))), firstLeadingBit(func_4(func_1(), func_3(~0u, _wgslsmith_sub_u32(120572u, 0u)).x, ~(~u_input.a.xy), _wgslsmith_f_op_f32(f32(-1f) * -1946f))), func_1(), true);
    let var_1 = Struct_2(var_0.a, var_0.c.c, Struct_1(func_5(var_0.c.e, vec2<i32>(func_5(610f, u_input.a.wy, Struct_1(vec3<bool>(true, var_0.c.a.x, false), var_0.a.b, var_0.a.b.x, 1i, -1000f), var_0.a.a.x).a.d, var_0.c.d), Struct_1(var_0.c.a, firstTrailingBit(vec3<u32>(36200u, var_0.b, var_0.c.b.x)), 4294967295u >> (var_0.a.c % 32u), u_input.a.x ^ -55317i, var_0.c.e), func_5(_wgslsmith_f_op_f32(var_0.c.e * -1736f), vec2<i32>(u_input.a.x, -2147483647i), func_1(), func_1().a.x).c.a.x).a.a, func_1().b, ~abs(_wgslsmith_dot_vec3_u32(var_0.a.b, var_0.c.b)), _wgslsmith_mult_i32(-countOneBits(var_0.c.d), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1139f)))))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1036f + 622f)) - 2226f)));
    let var_2 = ~vec4<u32>((17581u | ~var_1.b) ^ abs(5509u), abs(min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 38174u, 7483u), var_0.a.b), _wgslsmith_mult_u32(4294967295u, var_0.c.b.x))), 4294967295u, 43666u);
    var var_3 = var_0.c.d;
    var_3 = func_4(var_0.a, var_2.x, _wgslsmith_div_vec2_i32(~vec2<i32>(-38468i & u_input.a.x, u_input.a.x), select(vec2<i32>(var_0.a.d, var_0.a.d) & u_input.a.zy, u_input.a.xz, vec2<bool>(true, false))), 247f).x;
    var var_4 = var_0.a;
    var var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(803f, var_1.a.e, -944f, -1675f))) + vec4<f32>(var_1.a.e, var_0.a.e, -1162f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().e + _wgslsmith_f_op_f32(trunc(-896f))))));
}

