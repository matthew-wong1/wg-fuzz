struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec3<u32> {
    let var_0 = u_input.a.x;
    var var_1 = Struct_5(~(~53912u), Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-892f - 678f), _wgslsmith_f_op_f32(floor(825f)), _wgslsmith_f_op_f32(ceil(1604f))), abs(firstTrailingBit(var_0)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(21096i, 34431i, 2989i)), _wgslsmith_f_op_f32(f32(-1f) * -1434f), -784f), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-674f, 1104f, -508f))))), ~27088u, max(0i, 49743i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2053f, 736f) * _wgslsmith_f_op_f32(-879f - -1894f)), 721f), Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(789f, -1562f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-770f, 1030f) + vec2<f32>(2497f, -887f)))), _wgslsmith_div_f32(1575f, -637f)), vec4<u32>(~(u_input.a.x >> (4294967295u % 32u)), var_0, var_0, _wgslsmith_mult_u32(~u_input.b.x, ~1u))), _wgslsmith_mult_vec3_u32(u_input.a.wzy, firstLeadingBit(vec3<u32>(u_input.a.x, var_0, 4294967295u)) | ~u_input.a.xyy));
    var_1 = Struct_5(max(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(4294967295u, 0u), ~_wgslsmith_div_u32(1u, var_1.a)), ~(~var_1.c.x)), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(405f, var_1.b.b.d, 1974f)))), _wgslsmith_mod_u32(4294967295u, 1u), var_1.b.a.c, var_1.b.a.a.x, var_1.b.a.a.x), var_1.b.a, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2525f, var_1.b.b.e) - vec2<f32>(-551f, var_1.b.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.a.e, var_1.b.b.d))), vec4<u32>(1u, _wgslsmith_sub_u32(~11912u, max(var_0, var_0)), ~0u, 2279u)), select(u_input.c.yzx, ~vec3<u32>(~u_input.b.x, 14651u, select(4294967295u, u_input.a.x, false)), vec3<bool>(true, true, true)));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a.d - var_1.b.a.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c.b - var_1.b.a.e))), var_1.b.b.d, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-210f, var_1.b.a.a.x), 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.c.b), _wgslsmith_f_op_f32(var_1.b.b.a.x * var_1.b.c.b), true)))), ~abs(~var_1.b.b.b) | (~u_input.c.x ^ 29731u), firstTrailingBit(var_1.b.a.c), var_1.b.c.a.x, _wgslsmith_f_op_f32(715f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1590f)) + -423f)));
    var var_3 = var_1.b.c.b;
    return ~(~min(~(~vec3<u32>(4294967295u, u_input.c.x, 1u)), vec3<u32>(_wgslsmith_div_u32(1u, var_1.c.x), ~var_2.b, ~4294967295u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: bool, arg_3: Struct_4) -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_3.a.b.a.x, arg_3.a.b.e)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(200f, -468f, -1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-818f, -874f, arg_3.a.c.b))), arg_0.x)), ~u_input.a.x >> (((17729u >> (0u % 32u)) | arg_1) % 32u), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.c.x, arg_3.a.b.c), vec2<i32>(14127i, 92i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-541f)) - _wgslsmith_f_op_f32(round(-2799f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1144f + arg_3.a.c.b) - _wgslsmith_f_op_f32(arg_3.a.b.e * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_3.a.a.d, arg_3.a.a.e)))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.a.b.d, 419f, arg_3.a.a.a.x), vec3<f32>(arg_3.a.c.a.x, 970f, -1720f)) * vec3<f32>(arg_3.a.c.a.x, -2503f, arg_3.a.b.a.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1234f, arg_3.a.c.b, arg_3.a.c.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1098f, 754f, arg_3.a.a.d)))), firstLeadingBit(~func_3().x), select(arg_3.c.x, ~arg_3.a.b.c, !(!arg_0.x)), arg_3.a.c.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1040f))))), arg_3.a.c, vec4<u32>(~12287u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 1u), ~arg_1), _wgslsmith_mod_u32(~(1u << (u_input.a.x % 32u)), arg_3.a.b.b), _wgslsmith_dot_vec3_u32(~u_input.b.yzw, ~(u_input.a.yyw >> (u_input.b.zwz % vec3<u32>(32u))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_f_op_f32(abs(arg_3.a.b.e)), _wgslsmith_f_op_f32(sign(arg_3.a.a.a.x)), 1311f) + vec4<f32>(_wgslsmith_f_op_f32(select(801f, arg_3.a.b.e, true)), _wgslsmith_f_op_f32(trunc(var_0.a.d)), _wgslsmith_f_op_f32(-arg_3.a.c.a.x), _wgslsmith_f_op_f32(abs(arg_3.a.a.e)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c.b, var_0.c.b, arg_3.a.b.d, var_0.b.d))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-198f, 1033f, 129f, -1481f)))), arg_2)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.b, arg_3.a.b.a.x, var_0.b.a.x, 1328f), vec4<f32>(909f, arg_3.a.b.e, var_0.a.d, arg_3.a.c.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.a.c.a.x, arg_3.a.b.a.x, var_0.a.d, var_0.a.e)))), !select(arg_0, arg_0, arg_0))))), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.a.d) + -1000f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.b.e)), false, false, false)));
    var var_2 = abs(~var_0.d.x);
    let var_3 = 547f;
    var_2 = 4294967295u;
    return _wgslsmith_f_op_f32(-arg_3.a.c.b);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec4<bool>(true, true, false, u_input.c.x == u_input.b.x), vec4<bool>(any(vec4<bool>(false, false, false, true)), false, any(vec2<bool>(false, true)), true), vec4<bool>(any(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, false)), true, any(vec3<bool>(true, true, true)))), _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_mult_u32(~1u, countOneBits(u_input.c.x)), 14153u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(878f, 218f) + _wgslsmith_f_op_f32(573f - -574f)) >= _wgslsmith_f_op_f32(trunc(1187f)), Struct_4(Struct_3(Struct_1(vec3<f32>(-946f, -635f, -864f), u_input.c.x, 47306i, -718f, -255f), Struct_1(vec3<f32>(200f, -370f, 1638f), u_input.b.x, 304i, -956f, 1651f), Struct_2(vec2<f32>(-1182f, 949f), 859f), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.a.x)), _wgslsmith_dot_vec3_u32(u_input.c.wzw, func_3()), ~abs(vec2<i32>(23934i, -1i))))));
    var var_1 = select(any(vec2<bool>(true, !(u_input.a.x != 4294967295u))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))), true);
    let var_2 = Struct_5(u_input.a.x, Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 729f, 1374f) + vec3<f32>(var_0, var_0, 370f)), u_input.a.x, 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -430f)), 959f), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0, var_0) * vec3<f32>(1806f, var_0, -1107f)))), _wgslsmith_mult_u32(44662u, u_input.c.x), reverseBits(~29249i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(537f, 1441f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, 334f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-422f)) - _wgslsmith_f_op_f32(var_0 + 2092f))), _wgslsmith_div_vec4_u32(reverseBits(u_input.a), u_input.a)), ~_wgslsmith_div_vec3_u32(~(u_input.b.wyw ^ vec3<u32>(u_input.c.x, 4294967295u, u_input.a.x)), _wgslsmith_clamp_vec3_u32(u_input.a.wxw, u_input.a.zwz | u_input.a.zxz, u_input.a.yxy << (u_input.c.xzx % vec3<u32>(32u)))));
    let var_3 = Struct_5(~func_3().x | 0u, var_2.b, vec3<u32>(var_2.c.x ^ u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_2.b.d, ~vec4<u32>(var_2.c.x, var_2.c.x, var_2.b.b.b, 0u)), (vec4<u32>(56637u, var_2.b.b.b, u_input.a.x, u_input.b.x) << (vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.b.x) % vec4<u32>(32u))) & (vec4<u32>(u_input.c.x, 45937u, var_2.c.x, 40586u) | vec4<u32>(4294967295u, 20342u, u_input.a.x, 1u))), ~_wgslsmith_add_u32(u_input.b.x >> (u_input.c.x % 32u), _wgslsmith_div_u32(var_2.a, var_2.c.x))));
    var_1 = true;
    return var_2.b.b;
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = min(arg_0.c, arg_0.c);
    let var_2 = Struct_4(Struct_3(var_0, func_2(), Struct_2(vec2<f32>(-1012f, -867f), _wgslsmith_f_op_f32(trunc(-1110f))), vec4<u32>(4294967295u, arg_0.a.b.b, 42658u, 4294967295u)), u_input.b.x, _wgslsmith_mod_vec2_i32(arg_0.c, vec2<i32>(var_0.c, var_0.c)));
    let var_3 = all(!(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)))));
    let var_4 = var_0.e;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4 + 1679f) - _wgslsmith_f_op_f32(trunc(1164f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.c.b) * _wgslsmith_f_op_f32(select(var_2.a.b.d, 138f, var_3)))), 2142f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-143f, _wgslsmith_f_op_f32(-var_0.d), !var_3))))), _wgslsmith_sub_u32(_wgslsmith_add_u32(func_3().x, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(14842u, var_0.b, u_input.c.x)))), func_2().b), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), max(-var_0.c, 1i), 45031i, select(min(var_0.c, -2147483647i), ~(-43578i), false)), firstLeadingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(var_1.x, var_2.a.a.c, var_0.c, -2147483647i), vec4<i32>(arg_0.a.b.c, -12719i, var_1.x, -31637i)))), _wgslsmith_f_op_f32(select(var_4, var_2.a.b.d, !any(vec2<bool>(var_3, false)))), -494f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5) -> vec2<bool> {
    let var_0 = false;
    let var_1 = _wgslsmith_mult_u32(func_1(Struct_4(Struct_3(Struct_1(arg_1.b.b.a, 0u, arg_1.b.b.c, arg_0.d, 1123f), func_1(Struct_4(arg_1.b, 53714u, vec2<i32>(arg_1.b.a.c, 17756i))), arg_1.b.c, firstTrailingBit(u_input.c)), u_input.c.x, -vec2<i32>(arg_0.c, -12100i))).b, max(~u_input.a.x, 73230u));
    let var_2 = min(_wgslsmith_div_vec4_i32(vec4<i32>(1i, firstTrailingBit(i32(-1i) * -2147483647i), arg_1.b.a.c, -22593i), vec4<i32>(arg_1.b.a.c, reverseBits(-45455i), _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.c, arg_1.b.a.c), arg_0.c), -30537i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, _wgslsmith_clamp_i32(arg_0.c, arg_1.b.a.c, arg_0.c), 45556i, 1i), reverseBits(vec4<i32>(25225i, 1i, 13610i, 12822i) ^ vec4<i32>(-18254i, 0i, arg_0.c, 34505i)), -abs(vec4<i32>(arg_0.c, 16391i, 2147483647i, 29205i))) & vec4<i32>(func_2().c, arg_0.c, -arg_1.b.b.c | ~arg_1.b.b.c, 1i));
    let var_3 = reverseBits(select(countOneBits(91638u), 4294967295u, var_0));
    let var_4 = Struct_4(arg_1.b, 1u, ~countOneBits(-select(var_2.yz, var_2.wy, true)));
    return !vec2<bool>(true, !all(!vec4<bool>(var_0, false, var_0, var_0)));
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = ~35089u;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-arg_3.zy), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(599f, _wgslsmith_f_op_f32(arg_3.x + arg_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) - -526f))));
}

fn func_7(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    var var_0 = !(true || !select(-26561i < arg_3, true, true));
    let var_1 = arg_2.b;
    var var_2 = arg_2.c;
    var_0 = false;
    var var_3 = Struct_4(Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(403f - var_2.b), _wgslsmith_f_op_f32(1539f - var_2.b), var_2.a.x), ~max(34256u, u_input.c.x), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(9807i, var_1.c, arg_2.a.c)), vec3<i32>(var_1.c, -1i, 10812i)), _wgslsmith_f_op_f32(floor(-163f)), _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(f32(-1f) * -919f))), func_2(), func_6(countOneBits(arg_3), func_2().e <= arg_2.c.b, vec2<bool>(func_5(Struct_1(vec3<f32>(arg_0.a.x, 1492f, 1644f), arg_2.d.x, arg_3, arg_0.b, -1005f), Struct_5(u_input.c.x, arg_2, u_input.c.yzz)).x, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(309f, 1415f, var_2.b)), _wgslsmith_f_op_vec3_f32(-arg_2.b.a))), abs(~(arg_2.d & u_input.c))), 1u, vec2<i32>(arg_3, var_1.c));
    return Struct_3(Struct_1(var_3.a.a.a, _wgslsmith_add_u32(countOneBits(var_1.b), (u_input.c.x ^ 11392u) | 4294967295u), min(10991i, var_1.c | reverseBits(-9253i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_6(arg_3, false, vec2<bool>(true, true), vec3<f32>(var_3.a.c.a.x, var_3.a.a.d, arg_0.a.x)).a.x) - _wgslsmith_f_op_f32(1492f - _wgslsmith_div_f32(703f, arg_0.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(arg_0.b * 968f)))), arg_2.a, func_6(arg_2.a.c, false, vec2<bool>(!all(vec2<bool>(false, false)), (i32(-1i) * -1i) >= arg_2.a.c), var_3.a.a.a), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(_wgslsmith_div_i32(0i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(5320i, -1i), vec2<i32>(1i, -33583i)), -(~(-10152i))), false & ((758u | u_input.c.x) >= (u_input.b.x >> (u_input.b.x % 32u))), func_5(func_1(Struct_4(Struct_3(Struct_1(vec3<f32>(815f, -784f, 1106f), 63108u, -35519i, 1000f, 1000f), Struct_1(vec3<f32>(2167f, -710f, 1000f), u_input.b.x, -42250i, -1948f, 1804f), Struct_2(vec2<f32>(1000f, 1037f), -588f), u_input.c), 0u, vec2<i32>(1i, 2147483647i))), Struct_5(firstLeadingBit(u_input.b.x), Struct_3(Struct_1(vec3<f32>(447f, 1000f, 477f), u_input.c.x, 0i, 203f, -468f), Struct_1(vec3<f32>(284f, -1103f, -442f), 4294967295u, 2147483647i, 270f, -568f), Struct_2(vec2<f32>(-1297f, -1728f), -1023f), u_input.c), ~vec3<u32>(u_input.b.x, 1u, u_input.c.x))), vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(655f)) + _wgslsmith_f_op_f32(select(611f, -941f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(726f)) + -150f))), ~u_input.b.wx, Struct_3(Struct_1(func_1(Struct_4(Struct_3(Struct_1(vec3<f32>(-259f, -251f, 1000f), u_input.b.x, 1i, 1703f, 1842f), Struct_1(vec3<f32>(1000f, -1000f, -1000f), u_input.b.x, 1i, 585f, 324f), Struct_2(vec2<f32>(134f, -1238f), 776f), u_input.b), 4294967295u, vec2<i32>(-32117i, -1i))).a, ~40338u, _wgslsmith_mod_i32(~0i, _wgslsmith_sub_i32(568i, 0i)), _wgslsmith_f_op_f32(func_6(-2147483647i, false, vec2<bool>(false, true), vec3<f32>(202f, -254f, -170f)).b * 1124f), -920f), func_2(), func_6(min(9629i, ~(-2147483647i)), !all(vec3<bool>(false, false, false)), vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(step(1475f, 1070f)), _wgslsmith_f_op_f32(f32(-1f) * -1800f), _wgslsmith_f_op_f32(func_4(vec4<bool>(true, true, false, false), u_input.c.x, false, Struct_4(Struct_3(Struct_1(vec3<f32>(1464f, -899f, -1000f), u_input.c.x, 1388i, 909f, 1194f), Struct_1(vec3<f32>(1574f, -729f, 552f), u_input.a.x, 9847i, -482f, 979f), Struct_2(vec2<f32>(-280f, 1175f), 436f), u_input.c), 11653u, vec2<i32>(50090i, 13963i)))))), u_input.c), 14187i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -440f), vec3<i32>(~14494i, 42722i >> (~func_2().b % 32u), -32890i), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.a.c & var_0.a.c, var_0.a.c, -var_0.a.c, -29267i), countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.c, 69632i, var_0.a.c, 2976i), vec4<i32>(-2147483647i, -16658i, 0i, -1i)), ~vec4<i32>(32591i, 2147483647i, -10859i, 2147483647i)))));
}

