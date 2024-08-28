struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<u32>) -> f32 {
    var var_0 = ~((vec4<u32>(22593u, ~arg_3.x, ~4294967295u, u_input.d) << ((vec4<u32>(arg_3.x, arg_3.x, 0u, 49105u) ^ (vec4<u32>(arg_3.x, u_input.d, arg_3.x, 18254u) & vec4<u32>(27089u, arg_3.x, 33529u, 20853u))) % vec4<u32>(32u))) | vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(arg_3.x, arg_3.x)), _wgslsmith_div_u32(arg_3.x, 23220u), ~abs(arg_3.x), arg_3.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))));
    var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(74994u, 12866u, 0u, var_0.x)), vec4<u32>(_wgslsmith_mult_u32(u_input.d, 1u >> (u_input.d % 32u)), var_0.x ^ 10230u, 1u, 4294967295u)), abs(select(~(vec4<u32>(0u, var_0.x, arg_3.x, 0u) >> (vec4<u32>(61889u, 63557u, arg_3.x, arg_3.x) % vec4<u32>(32u))), vec4<u32>(u_input.d, _wgslsmith_clamp_u32(5155u, 0u, 75201u), _wgslsmith_dot_vec3_u32(var_0.wxw, vec3<u32>(53805u, 21179u, arg_3.x)), u_input.d), all(arg_0.c.b))));
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(0u, abs(u_input.d), ~1u, ~(~11186u)) | ~vec4<u32>(1u, _wgslsmith_add_u32(u_input.d, 43901u), 17866u, var_0.x), abs(_wgslsmith_add_vec4_u32(abs(vec4<u32>(var_0.x, 1u, u_input.d, 40176u)) ^ ~vec4<u32>(u_input.d, 1u, var_0.x, 1u), reverseBits(vec4<u32>(17720u, 0u, arg_3.x, var_0.x)) << ((vec4<u32>(4294967295u, u_input.d, 4294967295u, arg_3.x) >> (vec4<u32>(4294967295u, 93412u, 4294967295u, arg_3.x) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    var_0 = _wgslsmith_div_vec4_u32(~(~(firstLeadingBit(vec4<u32>(u_input.d, 45746u, arg_3.x, u_input.d)) << (vec4<u32>(arg_3.x, u_input.d, u_input.d, 0u) % vec4<u32>(32u)))), ~vec4<u32>(~65413u, u_input.d, 8054u, abs(56227u)));
    return _wgslsmith_f_op_f32(-arg_0.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = -min(u_input.a.xz, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, 29260i), _wgslsmith_sub_i32(-29133i, 14527i)), -1i));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(221f, -1000f), -920f, _wgslsmith_f_op_f32(step(862f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_4(vec2<f32>(1000f, -1920f), u_input.b.x, Struct_1(vec3<f32>(1000f, 769f, 1671f), vec4<bool>(true, true, true, true), vec4<i32>(u_input.c, 1i, u_input.c, -21960i)), 0i), Struct_1(vec3<f32>(2342f, -496f, -1559f), vec4<bool>(true, false, true, false), vec4<i32>(var_0.x, var_0.x, 8652i, -5208i)), Struct_4(vec2<f32>(143f, -858f), 57651i, Struct_1(vec3<f32>(1200f, 919f, -576f), vec4<bool>(false, false, true, false), vec4<i32>(var_0.x, 0i, 2147483647i, u_input.c)), var_0.x), vec2<u32>(u_input.d, 24271u))), _wgslsmith_f_op_f32(sign(851f)), select(false, true, true)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1025f + -810f), _wgslsmith_f_op_f32(floor(-1568f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f)), (_wgslsmith_add_u32(u_input.d, 1u) << (~4911u % 32u)) != ~(~u_input.d))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -463f) - _wgslsmith_f_op_f32(-var_1.x)), var_1.x, 106f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -246f), vec4<f32>(var_1.x, var_1.x, 1530f, var_1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-327f, 1140f, var_1.x, 1361f), vec4<f32>(-1844f, -381f, var_1.x, -2309f), false)), u_input.d <= 0u))))), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), true)));
    var var_2 = ~(-max(~var_0.x >> (max(u_input.d, 4294967295u) % 32u), var_0.x));
    let var_3 = select(vec2<bool>(select(_wgslsmith_sub_u32(u_input.d, u_input.d) != u_input.d, false, true), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, false, true))))), vec2<bool>(all(vec2<bool>(true, u_input.d >= u_input.d)), all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true))), vec2<bool>(true, true));
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.xzx), _wgslsmith_f_op_vec3_f32(-var_1.wwy))), select(vec4<bool>(false, !all(vec2<bool>(var_3.x, var_3.x)), var_3.x || var_3.x, true), !vec4<bool>(var_1.x < 144f, true, true, var_3.x & false), vec4<bool>(true, !(var_3.x & var_3.x), var_3.x, false)), ~firstLeadingBit(-vec4<i32>(-1i, u_input.b.x, 30065i, var_0.x)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_3(arg_0, func_2(), arg_0, ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.d, 1u)), ~vec2<u32>(u_input.d, u_input.d)), abs(vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(u_input.d, 0u) % vec2<u32>(32u))))));
    var var_1 = Struct_2(arg_0.c, _wgslsmith_div_u32(84295u, ~u_input.d), arg_1, ~(1i << (u_input.d % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -938f, _wgslsmith_f_op_f32(sign(-774f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.a.x, 239f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(510f, -440f, 603f, -881f)))))));
    let var_2 = ~abs(var_1.b);
    var var_3 = -vec3<i32>(arg_1.c.x, -u_input.a.x, select(1i, -1184i, !arg_0.c.b.x && true));
    var_1 = Struct_2(var_1.c, ~u_input.d, arg_0.c, _wgslsmith_div_i32(var_1.a.c.x, ~(-(~var_3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(700f, _wgslsmith_f_op_f32(1000f * -590f), _wgslsmith_f_op_f32(-1051f + arg_1.a.x), _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_vec4_f32(select(var_1.e, _wgslsmith_f_op_vec4_f32(vec4<f32>(1126f, 230f, arg_0.c.a.x, arg_1.a.x) + var_1.e), var_2 != var_1.b)))));
    return Struct_3(4294967295u & (1u << (max(9453u ^ var_1.b, ~24849u) % 32u)), ~23141u, -1585f);
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = u_input.a.x >= 20615i;
    let var_1 = func_4(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)), ~(~u_input.c), func_2(), 22235i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1241f, arg_0.x, arg_0.x))), vec3<f32>(-248f, arg_0.x, -493f), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))) * vec3<f32>(-585f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))), !vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true), -select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.a.x, 1i), vec4<i32>(1i, -1i, 62403i, 2147483647i)), vec4<i32>(u_input.c, 2147483647i, -2147483647i, u_input.b.x), vec4<bool>(true, true, true, true))), func_2().b.x);
    var var_2 = func_4(Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(arg_0.x - var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - -788f)), u_input.a.x, func_2(), ~1i), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1407f, -1743f, var_1.c) - vec3<f32>(-264f, -139f, 1095f)))))), !vec4<bool>(true, all(vec2<bool>(false, true)), true, true), vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, u_input.a.x, 0i, -1i), min(vec4<i32>(u_input.c, u_input.a.x, -2147483647i, -2147483647i), vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, 11929i))), select(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, 2147483647i, 1i)), abs(38247i), true), _wgslsmith_clamp_i32(9816i, i32(-1i) * -31303i, countOneBits(-24011i)), i32(-1i) * -33239i)), all(vec2<bool>(true, false)));
    let var_3 = u_input.a.yx;
    var_0 = true;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(u_input.d << (0u % 32u)) >> ((_wgslsmith_add_u32(u_input.d, _wgslsmith_mult_u32(abs(u_input.d), u_input.d)) >> (_wgslsmith_mult_u32(~u_input.d, ~reverseBits(27389u)) % 32u)) % 32u);
    var_0 = _wgslsmith_mod_u32(countOneBits(min(0u, ~u_input.d)) ^ abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.d, 4128u), vec3<u32>(u_input.d, u_input.d, 11345u)), vec3<u32>(1u, 23148u, 0u))), ~max(u_input.d, ~40488u | u_input.d));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(890f, 796f, -1098f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -116f), -2394f, _wgslsmith_f_op_f32(min(-1614f, 1637f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -523f))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(ceil(1f)))), -1000f), (countOneBits(~u_input.d) | abs(_wgslsmith_mod_u32(u_input.d, u_input.d))) != ~1u));
    let var_3 = ~(~(-abs(vec3<i32>(65947i, 1i, u_input.a.x)) ^ (~u_input.a | vec3<i32>(u_input.a.x, u_input.c, -21869i))));
    var var_4 = func_1(_wgslsmith_div_vec2_f32(var_2.zz, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, var_2.x))))))));
    var var_5 = Struct_2(func_2(), 0u, func_2(), max(-33637i ^ _wgslsmith_sub_i32(u_input.c, 45025i), -(u_input.b.x ^ u_input.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(880f * 272f) - 508f), _wgslsmith_f_op_f32(trunc(var_4.c))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-194f, var_2.x, var_2.x, 1075f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-146f, -493f, 1000f, var_4.c))))), func_2().b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1762f, var_5.a.a.x, _wgslsmith_f_op_f32(-761f - _wgslsmith_f_op_f32(f32(-1f) * -222f)))));
}

