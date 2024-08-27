struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = arg_0.a.x;
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(419f, arg_0.a.x)))), arg_1, abs(vec3<i32>(_wgslsmith_mult_i32(u_input.c, 55140i), -u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 56161i, 18505i, arg_0.c.x), vec4<i32>(9202i, arg_0.c.x, arg_0.c.x, arg_0.c.x))) >> (vec3<u32>(1u, abs(1u), u_input.d) % vec3<u32>(32u))));
    var var_2 = !arg_0.b.a.yy;
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a - vec2<f32>(651f, var_0))))), arg_1, _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a << (_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.d, 0u, u_input.d)), vec3<u32>(u_input.d, u_input.d, u_input.d) | vec3<u32>(u_input.d, 0u, 1u)) % vec3<u32>(32u)), ~(~(-arg_0.c))));
    var var_3 = Struct_1(select(vec4<bool>(arg_2.b, !all(arg_1.a.zw), any(select(vec4<bool>(true, true, arg_0.b.b, true), vec4<bool>(false, false, false, true), var_2.x)), !arg_0.b.b), select(vec4<bool>(arg_1.a.x, false, !arg_1.a.x, false), vec4<bool>(any(arg_0.b.a), u_input.d < 0u, arg_1.b, all(arg_2.a)), true), select(!arg_2.a, arg_0.b.a, !(!vec4<bool>(var_1.b.b, true, arg_2.a.x, var_2.x)))), arg_1.a.x);
    return _wgslsmith_div_vec3_i32(~abs(~vec3<i32>(u_input.a.x, var_1.c.x, arg_0.c.x)), abs(-_wgslsmith_sub_vec3_i32(var_1.c, u_input.a))) ^ arg_0.c;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x & -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c, -2147483647i), func_3(Struct_2(vec2<f32>(739f, -1457f), Struct_1(vec4<bool>(false, true, false, true), true), vec3<i32>(-1i, -1i, u_input.b.x)), Struct_1(vec4<bool>(false, true, true, true), true), Struct_1(vec4<bool>(false, false, true, false), false))), -1i);
    var var_1 = Struct_1(!select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(var_0 <= u_input.c, true, any(vec2<bool>(true, true)), all(vec4<bool>(true, true, false, false))), vec4<bool>(true, select(false, true, false), any(vec4<bool>(true, false, false, true)), true)), !(_wgslsmith_sub_i32(var_0, 0i) <= var_0));
    let var_2 = Struct_1(var_1.a, true);
    var_1 = var_2;
    var_1 = Struct_1(var_1.a, !select(select(true, !var_1.b, select(false, false, true)), all(var_2.a), true));
    return Struct_1(vec4<bool>(any(vec3<bool>(false, var_2.a.x, true)), true, (var_1.b && all(var_2.a.xw)) | true, all(vec4<bool>(var_1.b, all(vec4<bool>(true, var_2.a.x, var_1.b, var_1.a.x)), true, false))), true);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(778f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2429f))));
    let var_1 = reverseBits(abs(~(~vec3<u32>(44508u, 22092u, u_input.d) | ~vec3<u32>(u_input.d, u_input.d, 58811u))));
    var_0 = -908f;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2165f) - _wgslsmith_f_op_f32(round(-142f))), 807f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-659f, -1808f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_2().a.x));
    var_0 = -2256f;
    return Struct_3(~(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.c, u_input.c), ~66556i, ~(-2147483647i)) & (vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.a.x, u_input.b.x, 7277i))), select(~(-vec3<i32>(u_input.c, 0i, u_input.a.x)), u_input.a | reverseBits(vec3<i32>(-2147483647i, u_input.a.x, -3535i)), arg_0.a.xyz), vec3<u32>(~(~firstTrailingBit(u_input.d)), 45884u, var_1.x), arg_0.b, arg_0);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec4<bool>, arg_3: vec4<f32>) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(arg_3.x + arg_3.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1006f, 615f)))))), arg_0.e, vec3<i32>(~abs(-1i), arg_0.a.x, -(~u_input.c >> (arg_0.c.x % 32u))));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-711f - 522f) - _wgslsmith_f_op_f32(round(-1599f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x + 1000f), _wgslsmith_div_f32(var_0.a.x, arg_3.x))))), Struct_1(vec4<bool>(any(select(arg_0.e.a, vec4<bool>(true, arg_1, var_0.b.a.x, true), vec4<bool>(arg_0.e.a.x, true, true, arg_1))), false, arg_2.x, _wgslsmith_f_op_f32(step(var_0.a.x, arg_3.x)) != _wgslsmith_f_op_f32(-arg_3.x)), arg_0.e.b), ~var_0.c);
    var var_1 = countOneBits(47702i);
    let var_2 = Struct_1(var_0.b.a, func_4(var_0.b).e.b);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_3.yx), Struct_1(func_2().a, var_2.a.x && (arg_0.c.x < ~u_input.d)), abs(vec3<i32>(6943i, u_input.a.x, _wgslsmith_clamp_i32(-var_0.c.x, 46116i, _wgslsmith_add_i32(-2147483647i, u_input.a.x)))));
    return ~((~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c.x, 0u, u_input.d, u_input.d), vec4<u32>(4294967295u, 41191u, arg_0.c.x, 0u)) ^ vec4<u32>(func_4(Struct_1(vec4<bool>(arg_0.d, arg_2.x, arg_2.x, arg_2.x), arg_0.d)).c.x, arg_0.c.x, arg_0.c.x, func_4(Struct_1(vec4<bool>(var_0.b.b, var_0.b.a.x, arg_1, arg_0.e.a.x), false)).c.x)) & abs(vec4<u32>(15237u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, arg_0.c.x, 0u), vec4<u32>(arg_0.c.x, 7733u, u_input.d, u_input.d)), ~1u, _wgslsmith_div_u32(42871u, arg_0.c.x))));
}

fn func_1() -> f32 {
    var var_0 = 170f;
    let var_1 = ~firstLeadingBit(func_5(func_4(func_2()), true, vec4<bool>(true, true, any(vec2<bool>(false, true)), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-329f, -515f, -1280f, -169f), vec4<f32>(-387f, 1000f, 1568f, 681f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-524f, 163f, -571f, -2073f) + vec4<f32>(668f, -1000f, 1262f, 491f)))));
    var var_2 = Struct_1(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, true, any(vec2<bool>(true, false))), true), true);
    var var_3 = 445f;
    return -304f;
}

fn func_6(arg_0: vec4<f32>, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.yxz - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.wyw * vec3<f32>(arg_0.x, -1000f, arg_0.x))))), arg_0.yzy)));
    var var_1 = vec2<i32>(u_input.c, min(-32111i << (firstTrailingBit(u_input.d) % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.a.x, 0i, -1i), ~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))) << (~_wgslsmith_sub_u32(arg_1, ~u_input.d) % 32u));
    var var_2 = all(func_4(func_4(Struct_1(vec4<bool>(false, false, false, false), true)).e).e.a);
    var_2 = true & !(!func_4(Struct_1(vec4<bool>(true, true, true, false), true)).d);
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(300f, -142f))), var_0.xy)), Struct_1(select(vec4<bool>(true, true, true, true), func_4(func_4(Struct_1(vec4<bool>(true, false, false, true), true)).e).e.a, func_4(func_2()).e.a), all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)))), vec3<i32>(u_input.c, countOneBits(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, 16357i), _wgslsmith_add_i32(-1i, u_input.b.x))), ~(-1i) ^ (u_input.c & abs(2147483647i))));
    return Struct_2(vec2<f32>(-236f, -806f), var_3.b, -_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 2147483647i, var_3.c.x), vec3<i32>(var_3.c.x, -13746i, 0i)), -u_input.a) << (vec3<u32>(59954u, 44284u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 1u, u_input.d), vec3<u32>(99680u, 73368u, 4294967295u), var_3.b.a.zyw), ~vec3<u32>(4294967295u, u_input.d, u_input.d))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var var_1 = Struct_1(select(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, u_input.d < ~u_input.d), vec4<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, true, false))), true);
    var var_2 = -u_input.a.x;
    let var_3 = func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1657f, _wgslsmith_f_op_f32(min(-1019f, _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), u_input.d);
    var var_4 = Struct_3(vec4<i32>(_wgslsmith_mod_i32(countOneBits(u_input.c), _wgslsmith_add_i32(func_6(vec4<f32>(2826f, 412f, -1470f, 240f), u_input.d).c.x, ~(-1i))), ~245i, 1i, (~64283i << (max(u_input.d, 85113u) % 32u)) & func_3(func_6(vec4<f32>(635f, var_3.a.x, var_3.a.x, var_3.a.x), u_input.d), Struct_1(var_3.b.a, false), Struct_1(var_1.a, true)).x), var_3.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(67842u), 60838u, _wgslsmith_div_u32(abs(u_input.d), u_input.d >> (u_input.d % 32u))), _wgslsmith_div_vec3_u32(vec3<u32>(64687u, ~u_input.d, u_input.d), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.d) ^ vec3<u32>(u_input.d, u_input.d, u_input.d), ~vec3<u32>(43135u, 1511u, u_input.d))), vec3<u32>(12200u, 62992u, u_input.d)), !any(func_2().a.xw), Struct_1(func_6(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, -992f, 442f, var_3.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(289f, 1027f, 574f, -1000f))), 66810u).b.a, var_1.a.x));
    var_2 = ~(-(0i & -abs(var_3.c.x)));
    var_2 = _wgslsmith_clamp_i32(-_wgslsmith_div_i32(~countOneBits(var_3.c.x), firstLeadingBit(_wgslsmith_sub_i32(2147483647i, 2147483647i))), abs(1i), i32(-1i) * -_wgslsmith_dot_vec4_i32(var_4.a, var_4.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.yx);
}

