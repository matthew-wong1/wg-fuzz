struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = 25700i;
    let var_1 = arg_0.a.b.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.e.b.c.x + -1000f) + -609f));
    let var_3 = (vec3<u32>(~countOneBits(46402u), _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 19444u), _wgslsmith_dot_vec3_u32(arg_0.a.e.e, arg_0.a.e.e)), ~arg_0.a.e.b.d) << (_wgslsmith_mod_vec3_u32(~arg_0.a.e.e, arg_0.a.e.e) % vec3<u32>(32u))) ^ ~arg_0.a.e.e;
    var var_4 = Struct_4(Struct_3(Struct_1(select(vec4<bool>(false, arg_0.a.a.a.x, true, false), select(arg_0.a.e.b.a, vec4<bool>(arg_0.a.e.c.x, arg_0.a.a.a.x, arg_0.a.e.b.a.x, false), vec4<bool>(arg_0.a.e.b.a.x, true, false, false)), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(167f, -109f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.e.b.b.x, var_1, -1491f), vec3<f32>(-1847f, -640f, var_2))), reverseBits(var_3.x << (4294967295u % 32u))), vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), 356f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1172f)), _wgslsmith_f_op_f32(var_2 - -636f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(var_2 * var_1), _wgslsmith_f_op_f32(f32(-1f) * -938f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -1089f, 1000f))), 14156i, arg_0.a.e), -arg_0.b);
    return 104f;
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: f32) -> i32 {
    var var_0 = Struct_4(Struct_3(Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(arg_2, arg_2), vec3<f32>(_wgslsmith_div_f32(arg_1, arg_2), _wgslsmith_f_op_f32(trunc(-1056f)), arg_1), u_input.b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1741f, arg_2, 898f, 556f) * vec4<f32>(-1833f, arg_1, arg_2, arg_2))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(565f, 154f, -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-209f, -1649f, arg_1) + vec3<f32>(arg_1, 542f, 219f)))), -2147483647i, Struct_2(~u_input.b, Struct_1(vec4<bool>(false, true, false, true), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_1), vec2<f32>(333f, -868f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-999f, arg_2, arg_2), vec3<f32>(arg_2, arg_2, 184f))), u_input.b), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !(arg_0.x > u_input.a.x), abs(vec3<u32>(u_input.b, u_input.b, 69285u) << (vec3<u32>(39440u, 1u, 1u) % vec3<u32>(32u))))), -_wgslsmith_sub_i32(i32(-1i) * -arg_0.x, -u_input.a.x >> (44230u % 32u)));
    var_0 = Struct_4(var_0.a, var_0.b);
    let var_1 = select(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 49154u, 36617u << (u_input.b % 32u), 1u), vec4<u32>(~70533u, ~u_input.b, 58628u >> (var_0.a.e.a % 32u), u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_0.a.a.d, 0u, 1u) & vec4<u32>(30726u, 0u, var_0.a.e.b.d, 6234u), abs(vec4<u32>(0u, u_input.b, u_input.b, 0u))) >> (_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(12096u, 0u, var_0.a.a.d, var_0.a.a.d)), ~vec4<u32>(37479u, u_input.b, u_input.b, var_0.a.e.a)) % vec4<u32>(32u)), var_0.a.a.a), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.b, var_0.a.a.d, 1u, 4294967295u)), _wgslsmith_sub_vec4_u32(min(select(vec4<u32>(4294967295u, u_input.b, u_input.b, 30485u), vec4<u32>(0u, 0u, 31882u, var_0.a.e.a), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_u32(vec4<u32>(34461u, var_0.a.a.d, var_0.a.e.a, 0u), vec4<u32>(var_0.a.a.d, u_input.b, u_input.b, u_input.b))), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.a.e.e.x, 17861u, var_0.a.e.a), vec4<u32>(15211u, u_input.b, var_0.a.a.d, 17217u)), ~vec4<u32>(var_0.a.a.d, u_input.b, 57027u, 0u)))), true);
    let var_2 = 532f;
    let var_3 = arg_1;
    return arg_0.x;
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_2(~(~(~u_input.b) >> (32230u % 32u)), Struct_1(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + 1454f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -310f, arg_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -1732f, arg_0.x), vec3<f32>(arg_0.x, -728f, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1700f, -543f, arg_0.x) * vec3<f32>(arg_0.x, 533f, -391f)))), _wgslsmith_dot_vec2_u32((vec2<u32>(u_input.b, 1u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) ^ ~vec2<u32>(76658u, 1u), vec2<u32>(u_input.b, 4294967295u) & _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 28983u), vec2<u32>(0u, 113462u)))), !(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true))), true, max(~(~vec3<u32>(u_input.b, u_input.b, 89542u) ^ (vec3<u32>(4294967295u, 16698u, u_input.b) ^ vec3<u32>(1u, u_input.b, u_input.b))), ~(~min(vec3<u32>(8362u, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.b, u_input.b)))));
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a.x), -vec2<i32>(max(-u_input.a.x, 3824i), ~1i));
    var var_2 = u_input.a.x;
    var var_3 = var_0;
    var var_4 = vec3<i32>(_wgslsmith_dot_vec4_i32((_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, var_1.x), vec4<i32>(u_input.a.x, -5423i, u_input.a.x, u_input.a.x)) >> (vec4<u32>(39930u, u_input.b, 4294967295u, 34054u) % vec4<u32>(32u))) | (_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, u_input.a.x, var_1.x), vec4<i32>(u_input.a.x, var_1.x, -15668i, 1459i)) & (vec4<i32>(u_input.a.x, -12787i, var_1.x, var_1.x) ^ vec4<i32>(var_1.x, var_1.x, 0i, var_1.x))), vec4<i32>(i32(-1i) * -1i, reverseBits(~u_input.a.x), _wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(-27603i, var_1.x, -14475i) & vec3<i32>(u_input.a.x, 2147483647i, -1i)), 0i)), -1i, 43337i);
    return Struct_4(Struct_3(var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(987f, -1952f, var_0.b.b.x, arg_0.x), vec4<f32>(arg_0.x, -1970f, -1000f, 1665f), var_0.b.a.x)) - vec4<f32>(var_0.b.c.x, arg_0.x, -1000f, var_0.b.c.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_0.b.c.x, var_0.b.b.x, var_0.b.b.x) + vec4<f32>(var_3.b.c.x, arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec3_f32(min(var_0.b.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1334f, var_0.b.c.x, 233f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(221f, 900f, var_0.b.b.x))))), ~(-2147483647i >> (~var_3.b.d % 32u)), Struct_2((var_0.b.d >> (116036u % 32u)) & ~4294967295u, Struct_1(vec4<bool>(true, var_3.b.a.x, false, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b.x, 501f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_3.b.c.x, -271f) - var_3.b.c), ~21644u), select(var_0.b.a, select(var_0.b.a, vec4<bool>(true, var_3.b.a.x, true, var_0.c.x), var_0.c.x), false), var_3.c.x, ~abs(var_0.e))), ~_wgslsmith_div_i32(abs(i32(-1i) * -13706i), func_4(-vec2<i32>(-27118i, var_4.x), _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(var_3.b, vec4<f32>(-547f, -1014f, 1961f, var_0.b.b.x), var_0.b.c, 28056i, var_0), var_4.x))), _wgslsmith_f_op_f32(-arg_0.x))));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: u32, arg_3: Struct_4) -> Struct_3 {
    var var_0 = vec4<f32>(arg_0.a.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1765f, -1000f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.a.e.b.c.x)), arg_1)))), _wgslsmith_f_op_f32(f32(-1f) * -266f), -710f);
    var_0 = vec4<f32>(arg_3.a.c.x, _wgslsmith_f_op_f32(-arg_0.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.c.x))), 745f);
    var var_1 = arg_3.a.e;
    let var_2 = Struct_2(arg_2, Struct_1(!vec4<bool>(true, var_1.e.x >= 67403u, all(var_1.c), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.c.x, var_0.x)), var_1.b.c, countOneBits(4294967295u)), select(func_2(vec2<f32>(-1118f, _wgslsmith_f_op_f32(func_3(Struct_4(arg_3.a, -2147483647i))))).a.e.b.a, !(!(!var_1.b.a)), !(!select(vec4<bool>(true, var_1.c.x, true, true), vec4<bool>(arg_3.a.a.a.x, false, false, arg_0.a.e.b.a.x), false))), false || arg_0.a.a.a.x, var_1.e);
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_3.a.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_3.a.b, arg_0.a.b, vec4<bool>(true, false, true, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 2104f, -574f, 118f))))));
    return Struct_3(func_2(_wgslsmith_div_vec2_f32(arg_3.a.a.c.xy, vec2<f32>(1246f, -1056f))).a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_0.a.b.x, arg_0.a.b.x, 802f), arg_3.a.b))))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f), var_1.b.c.x), _wgslsmith_f_op_f32(-632f * _wgslsmith_f_op_f32(arg_0.a.b.x + arg_1)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.a.b.x)) + -252f), arg_1))), -_wgslsmith_add_i32(-(~arg_3.a.d), -44616i), Struct_2(arg_2, Struct_1(select(!vec4<bool>(true, var_1.c.x, arg_0.a.a.a.x, false), !vec4<bool>(var_2.c.x, var_1.b.a.x, arg_0.a.e.b.a.x, false), select(var_1.c, arg_0.a.e.b.a, vec4<bool>(var_1.b.a.x, arg_0.a.a.a.x, var_2.c.x, true))), vec2<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1025f)), var_0.xwy, ~44957u), vec4<bool>(any(select(var_2.c.wxw, vec3<bool>(var_2.d, true, false), var_2.c.xxy)), true, (0u >= u_input.b) & any(arg_3.a.e.b.a.xxz), false), true, var_2.e));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> Struct_3 {
    return func_5(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(719f, -384f))))) - _wgslsmith_f_op_f32(sign(-1412f))), ~1u, Struct_4(Struct_3(Struct_1(!vec4<bool>(arg_0.x, arg_1, arg_1, arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-111f, 628f)), vec3<f32>(1f, 1f, 1f), 42005u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -2271f, -402f, 1437f)), vec4<f32>(1f, 1f, 1f, 1f), true)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), abs(reverseBits(u_input.a.x)), func_2(vec2<f32>(1121f, 1185f)).a.e), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a.x, 6494i)), vec2<i32>(u_input.a.x, 12327i)), abs(func_2(vec2<f32>(289f, -1382f)).a.d))));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1459f, 474f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c.x, arg_0.a.b.x)) - arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b))))) * _wgslsmith_f_op_vec4_f32(-arg_0.b));
    var var_1 = func_5(Struct_4(Struct_3(Struct_1(vec4<bool>(false, arg_0.e.d, true, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + arg_0.e.b.b), vec3<f32>(1534f, var_0.x, arg_0.c.x), 8732u), vec4<f32>(_wgslsmith_f_op_f32(var_0.x - arg_0.a.c.x), _wgslsmith_f_op_f32(round(arg_0.b.x)), _wgslsmith_f_op_f32(531f + -1315f), _wgslsmith_f_op_f32(abs(1013f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.e.b.c.x, 1811f))), _wgslsmith_div_i32(u_input.a.x, 4641i), arg_0.e), _wgslsmith_mult_i32(_wgslsmith_mult_i32(func_1(arg_0.a.a.yyy, false).d, -u_input.a.x), arg_0.d >> (_wgslsmith_mod_u32(28426u, arg_0.e.e.x) % 32u))), _wgslsmith_f_op_f32(-arg_0.c.x), reverseBits(arg_0.e.a), func_2(_wgslsmith_f_op_vec2_f32(exp2(arg_0.b.wz)))).e;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.b)));
    var_0 = arg_0.b;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(768f, var_0.x, false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x))))));
    return Struct_1(arg_0.a.a, var_1.b.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c.x) + func_1(arg_0.a.a.xwz, var_1.c.x).e.b.c.x)), _wgslsmith_f_op_f32(1609f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(434f, 2008f) + _wgslsmith_f_op_f32(abs(-580f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f)), 299f)), ~4294967295u);
}

fn func_7(arg_0: Struct_4, arg_1: Struct_1) -> Struct_4 {
    var var_0 = arg_0.a.e.e.xy;
    var var_1 = false;
    var_1 = arg_0.a.a.a.x & func_5(func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.b), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a.b.x, arg_0.a.c.x))), !arg_1.a.x))), arg_1.c.x, abs(4294967295u), func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1.c.xz))))).e.d;
    var var_2 = vec4<i32>(-func_5(func_2(arg_0.a.e.b.c.zy), _wgslsmith_f_op_f32(-arg_0.a.e.b.c.x), _wgslsmith_dot_vec2_u32(arg_0.a.e.e.zz, arg_0.a.e.e.xy), func_2(arg_0.a.c.xy)).d ^ _wgslsmith_add_i32(-10472i, select(abs(u_input.a.x), _wgslsmith_sub_i32(1i, arg_0.b), any(arg_1.a.ww))), u_input.a.x, -_wgslsmith_mult_i32(u_input.a.x, min(firstLeadingBit(-72467i), ~u_input.a.x)), arg_0.b);
    var var_3 = func_5(Struct_4(arg_0.a, func_1(!vec3<bool>(arg_0.a.e.d, arg_1.a.x, false), arg_0.a.e.c.x).d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(419f, -2101f)), arg_0.a.e.e.x, Struct_4(func_5(Struct_4(arg_0.a, u_input.a.x ^ u_input.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1000f)))), 0u, func_2(_wgslsmith_f_op_vec2_f32(-arg_1.c.zy))), arg_0.a.d)).e;
    return func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3(Struct_4(arg_0.a, u_input.a.x)))) + vec2<f32>(_wgslsmith_div_f32(-296f, arg_0.a.c.x), _wgslsmith_f_op_f32(-var_3.b.c.x))) * vec2<f32>(_wgslsmith_f_op_f32(sign(551f)), arg_0.a.a.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_4(Struct_3(func_6(func_1(vec3<bool>(false, true, true), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(220f, 657f, 1122f, -320f)) * vec4<f32>(154f, -689f, 1328f, -174f)), func_2(func_5(Struct_4(Struct_3(Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(-632f, -166f), vec3<f32>(1410f, 506f, -162f), 17389u), vec4<f32>(556f, 1015f, 304f, -607f), vec3<f32>(233f, 101f, 2007f), 0i, Struct_2(u_input.b, Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(1851f, 1025f), vec3<f32>(-1954f, 1340f, -512f), 4294967295u), vec4<bool>(false, true, false, false), false, vec3<u32>(4294967295u, 0u, u_input.b))), -1i), 901f, 1u, Struct_4(Struct_3(Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(384f, -152f), vec3<f32>(-132f, 488f, -2670f), 1u), vec4<f32>(682f, -548f, 342f, 300f), vec3<f32>(164f, -380f, -2350f), -29353i, Struct_2(0u, Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(190f, -1088f), vec3<f32>(373f, -1466f, -2956f), u_input.b), vec4<bool>(false, true, false, true), false, vec3<u32>(5484u, 0u, u_input.b))), u_input.a.x)).b.xx).a.b.yww, u_input.a.x, Struct_2(u_input.b, Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(207f, -1552f), vec3<f32>(277f, 358f, 151f), 95485u), func_5(Struct_4(Struct_3(Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(1071f, 1042f), vec3<f32>(548f, 427f, -485f), 65684u), vec4<f32>(1000f, 1870f, -264f, 122f), vec3<f32>(1629f, 1084f, -724f), -15135i, Struct_2(65150u, Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(583f, 1542f), vec3<f32>(-1065f, 1266f, 192f), 78545u), vec4<bool>(false, false, false, false), false, vec3<u32>(u_input.b, u_input.b, u_input.b))), 0i), -1191f, 0u, Struct_4(Struct_3(Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(-1000f, -116f), vec3<f32>(-2325f, -1348f, -1000f), u_input.b), vec4<f32>(-754f, -1000f, -1206f, -848f), vec3<f32>(-1039f, -439f, -986f), 19947i, Struct_2(0u, Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(346f, 879f), vec3<f32>(-692f, -1288f, 794f), u_input.b), vec4<bool>(true, true, true, true), true, vec3<u32>(87045u, u_input.b, u_input.b))), u_input.a.x)).a.a, any(vec2<bool>(true, false)), vec3<u32>(72985u, u_input.b, u_input.b) | vec3<u32>(18609u, u_input.b, u_input.b))), _wgslsmith_div_i32(u_input.a.x, ~(-36098i))), Struct_1(!func_1(func_5(Struct_4(Struct_3(Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(1000f, 1840f), vec3<f32>(1581f, 689f, -417f), 0u), vec4<f32>(-943f, 324f, 810f, -166f), vec3<f32>(373f, 2048f, -1630f), u_input.a.x, Struct_2(0u, Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(1405f, -725f), vec3<f32>(1264f, 267f, 2716f), u_input.b), vec4<bool>(false, false, true, true), true, vec3<u32>(55615u, u_input.b, 32854u))), u_input.a.x), -444f, 12306u, Struct_4(Struct_3(Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(-1000f, -996f), vec3<f32>(1736f, -179f, -603f), 75412u), vec4<f32>(-861f, 385f, -341f, 1000f), vec3<f32>(149f, -371f, 1124f), u_input.a.x, Struct_2(u_input.b, Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(377f, 437f), vec3<f32>(2472f, -1760f, -735f), 1u), vec4<bool>(true, false, false, false), true, vec3<u32>(u_input.b, u_input.b, u_input.b))), u_input.a.x)).a.a.wxz, true).e.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(floor(976f))), -527f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1895f, -343f, -2038f), vec3<f32>(-1780f, 727f, -226f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-556f, -666f, -267f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(714f, 1025f, -182f) * vec3<f32>(-133f, -1253f, 1081f))))), u_input.b));
    var_0 = func_2(var_0.a.a.b);
    let var_1 = u_input.a.x;
    let var_2 = ~vec4<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(func_7(Struct_4(Struct_3(var_0.a.e.b, var_0.a.b, vec3<f32>(var_0.a.e.b.c.x, var_0.a.c.x, 870f), -1i, Struct_2(5244u, Struct_1(vec4<bool>(var_0.a.e.c.x, var_0.a.e.c.x, var_0.a.e.c.x, var_0.a.e.b.a.x), vec2<f32>(-1780f, -339f), vec3<f32>(var_0.a.c.x, var_0.a.a.b.x, 188f), var_0.a.a.d), vec4<bool>(var_0.a.a.a.x, true, var_0.a.a.a.x, var_0.a.e.c.x), false, vec3<u32>(0u, 4294967295u, var_0.a.a.d))), -22629i), var_0.a.a).a.a.d, ~var_0.a.e.e.x), func_6(Struct_3(var_0.a.a, var_0.a.b, var_0.a.b.ywx, u_input.a.x, var_0.a.e)).d), 4294967295u, 57805u);
    let var_3 = vec2<bool>(var_0.a.e.c.x, !var_0.a.e.d);
    var var_4 = var_3.x;
    let var_5 = func_6(Struct_3(var_0.a.e.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a.b, vec4<f32>(2412f, var_0.a.a.c.x, 107f, -1379f)), var_0.a.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a.b.x - var_0.a.e.b.b.x), _wgslsmith_f_op_f32(399f * 193f), 1098f)), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_1, var_0.a.d), 1i) >> (var_0.a.e.e.x % 32u), func_5(Struct_4(func_1(var_0.a.e.b.a.zxz, false), u_input.a.x), 890f, 4294967295u, func_7(func_2(vec2<f32>(-1350f, -613f)), Struct_1(var_0.a.e.b.a, var_0.a.a.b, vec3<f32>(var_0.a.c.x, var_0.a.c.x, var_0.a.e.b.b.x), u_input.b))).e)).a.x;
    var var_6 = !select(var_0.a.e.c.yzy, !var_0.a.e.b.a.xyy, !vec3<bool>(false, var_0.a.e.b.a.x, u_input.b > 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.e.b.c) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c.x, 405f, 1000f) - var_0.a.b.wxy)) + var_0.a.b.yxy)), 47255u >> (countOneBits(countOneBits(1u)) % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(596f + 416f)), 161f, var_0.a.b.x) * _wgslsmith_f_op_vec3_f32(abs(func_5(func_7(Struct_4(Struct_3(var_0.a.a, vec4<f32>(var_0.a.a.c.x, 136f, 421f, var_0.a.b.x), vec3<f32>(var_0.a.a.c.x, var_0.a.a.b.x, -1409f), var_1, Struct_2(459u, Struct_1(var_0.a.a.a, vec2<f32>(var_0.a.b.x, var_0.a.a.c.x), var_0.a.c, 0u), var_0.a.e.c, false, var_2.xwx)), var_1), var_0.a.a), -1337f, _wgslsmith_add_u32(1u, var_2.x), func_2(var_0.a.b.xw)).e.b.c))), var_0.a.b);
}

