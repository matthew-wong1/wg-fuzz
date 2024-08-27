struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec3<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_5, arg_3: Struct_4) -> vec3<u32> {
    let var_0 = 0i;
    return arg_2.b;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_5(~u_input.b.yz, ~_wgslsmith_add_vec3_u32(abs(~arg_1), arg_1), !(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(991f)), -595f)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(-411f, -2207f))), -1000f), ~_wgslsmith_mult_i32(~arg_2, u_input.d), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), u_input.b, Struct_1(abs(u_input.d), _wgslsmith_mult_vec2_u32(~u_input.c, vec2<u32>(arg_0.x, 1u)), _wgslsmith_f_op_f32(sign(293f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1963f, -1000f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1337f - _wgslsmith_f_op_f32(2071f - 378f)) * -1000f)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.a) * _wgslsmith_f_op_vec3_f32(var_0.d.a + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(691f, -626f, var_0.d.e.c), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, var_0.d.a.x, 409f))))))), -2147483647i | abs(_wgslsmith_mult_i32(u_input.b.x, ~(-1i))), !vec3<bool>(var_0.d.e.d.x >= 1000f, !(!var_0.c.x), true), vec4<i32>(1i, 39689i, -15440i, ~u_input.d), var_0.d.e);
    var var_2 = 0u;
    var_2 = min(_wgslsmith_div_u32(~67515u, var_1.e.b.x), _wgslsmith_dot_vec2_u32(min(arg_1.xz, vec2<u32>(1u, u_input.c.x)), select(vec2<u32>(26819u, 1u), arg_1.zz, var_0.d.c.x)) ^ firstLeadingBit(countOneBits(111275u))) ^ var_0.b.x;
    var var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, func_2(_wgslsmith_add_i32(u_input.d, u_input.b.x), min(4294967295u, var_0.d.e.b.x), var_0, Struct_4(Struct_3(u_input.a.x, 1u, Struct_1(1i, var_0.d.e.b, 440f, var_1.a.zy), var_0.d.e.b.x), vec4<bool>(var_0.c.x, var_1.c.x, true, false))).x, 4294967295u, _wgslsmith_add_u32(arg_0.x, _wgslsmith_mod_u32(var_0.b.x, var_1.e.b.x))), ~(abs(vec4<u32>(1u, 36692u, 0u, arg_0.x)) | vec4<u32>(1u, 28568u, 4294967295u, 46008u)), vec4<u32>(~var_0.d.e.b.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e.b.x, 6883u, var_1.e.b.x, var_0.d.e.b.x), vec4<u32>(arg_1.x, 0u, var_0.b.x, 81693u)) ^ arg_1.x, 1u)), (_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 1u, 4294967295u, 0u), ~vec4<u32>(17440u, 25263u, arg_0.x, var_1.e.b.x)) & _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_1.e.b.x, arg_1.x, 1u) ^ vec4<u32>(var_1.e.b.x, 4294967295u, var_0.d.e.b.x, var_1.e.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, arg_0.x, u_input.c.x), vec4<u32>(10232u, 4294967295u, 1u, 4294967295u)))) & vec4<u32>(func_2(1i, var_0.b.x, Struct_5(vec2<i32>(-8735i, var_1.e.a), vec3<u32>(1u, arg_0.x, 0u), vec4<bool>(false, true, var_0.c.x, var_0.c.x), var_0.d, var_0.d.a.x), Struct_4(Struct_3(var_0.d.e.b.x, 7565u, var_0.d.e, u_input.c.x), vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.c.x))).x, firstLeadingBit(u_input.c.x), var_0.d.e.b.x, 53372u));
    return Struct_3(~_wgslsmith_sub_u32(arg_1.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_3.x, var_3.x), select(arg_1.x, 0u, var_1.c.x))), ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(58709u, arg_0.x, 26732u)), vec3<u32>(1u, ~u_input.c.x, 1u)), Struct_1(var_0.a.x, ~(~(~var_3.xw)), _wgslsmith_f_op_f32(sign(-579f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.e.d))), _wgslsmith_f_op_vec2_f32(exp2(var_0.d.a.xz)))), arg_1.x);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = min(-_wgslsmith_add_i32(1i, ~_wgslsmith_mod_i32(u_input.b.x, u_input.d)), ~u_input.b.x);
    let var_1 = select(vec2<u32>(70350u, ~_wgslsmith_div_u32(~1u, u_input.c.x ^ arg_0.d)), ~u_input.a, true || (-2147483647i >= (-arg_0.c.a << (38181u % 32u))));
    var_0 = -(~(0i & u_input.b.x) << (~4294967295u % 32u));
    let var_2 = 297f;
    var var_3 = u_input.b.x << (_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, u_input.c.x), 45917u)), 0u) % 32u);
    return Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(118f, 256f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * var_2) * _wgslsmith_f_op_f32(max(var_2, var_2))), _wgslsmith_f_op_f32(-520f * 398f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, _wgslsmith_div_f32(624f, var_2), 171f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.d.x, var_2, arg_0.c.c) * vec3<f32>(1903f, arg_0.c.d.x, 728f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.d.x, var_2, -1000f) * vec3<f32>(1170f, -1514f, var_2)))))), arg_0.c.a, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), abs(u_input.b), arg_0.c);
}

fn func_1() -> i32 {
    var var_0 = func_4(func_3(_wgslsmith_add_vec2_u32(~countOneBits(vec2<u32>(4294967295u, 6492u)), ~vec2<u32>(u_input.c.x, 6756u)), ~(~vec3<u32>(3346u, u_input.a.x, 26493u) & func_2(u_input.b.x, 66801u, Struct_5(u_input.b.xw, vec3<u32>(46005u, u_input.c.x, u_input.c.x), vec4<bool>(true, true, true, true), Struct_2(vec3<f32>(-775f, 282f, 1000f), -22800i, vec3<bool>(true, true, false), u_input.b, Struct_1(1i, vec2<u32>(1u, 9840u), -513f, vec2<f32>(1088f, -395f))), 1234f), Struct_4(Struct_3(u_input.a.x, 131686u, Struct_1(36873i, vec2<u32>(u_input.a.x, 1u), 800f, vec2<f32>(1764f, -1379f)), 9441u), vec4<bool>(true, false, true, true)))), abs(u_input.b.x)));
    var var_1 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(26758u, 47461u, 96019u) ^ vec3<u32>(u_input.c.x, u_input.a.x, 10322u), vec3<u32>(10687u, u_input.a.x, var_0.e.b.x))), select(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0.e.b.x, var_0.e.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 69086u, u_input.c.x), vec3<u32>(u_input.a.x, u_input.a.x, 13938u))), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(1u, u_input.a.x, 87856u)), ~vec3<u32>(4294967295u, 15506u, var_0.e.b.x))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, var_0.e.b.x, 4294967295u)) >> (_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(20831u, 0u, u_input.a.x)), vec3<u32>(u_input.c.x, var_0.e.b.x, var_0.e.b.x)) % vec3<u32>(32u)), var_0.c));
    var_1 = 1u;
    var var_2 = var_0.e;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(110f)), -515f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.d.x))))))));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (vec2<i32>(-1i) * -vec2<i32>(-u_input.b.x, 2147483647i)) & vec2<i32>(_wgslsmith_div_i32(select(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(749i, -2147483647i, u_input.d, u_input.d), vec4<i32>(2147483647i, 2147483647i, u_input.b.x, u_input.b.x)), true), _wgslsmith_div_i32(reverseBits(u_input.d), u_input.b.x)), func_1());
    var var_1 = func_4(func_3(~u_input.a << (u_input.a % vec2<u32>(32u)), vec3<u32>(select(54510u, 93145u, false), 4294967295u, ~u_input.c.x) & _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, 3030u, 0u), vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x)), abs(func_3(~vec2<u32>(u_input.a.x, u_input.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, 7588u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), -5137i).c.a)));
    var var_2 = func_3(~vec2<u32>(var_1.e.b.x, 0u), vec3<u32>(~(~u_input.c.x), 0u >> (0u % 32u), _wgslsmith_add_u32(~21844u, 0u)) << ((vec3<u32>(_wgslsmith_mult_u32(1u, var_1.e.b.x), u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.e.b.x, var_1.e.b.x), vec3<u32>(u_input.c.x, 0u, 0u))) ^ vec3<u32>(4294967295u ^ u_input.c.x, 12811u, u_input.c.x)) % vec3<u32>(32u)), u_input.b.x);
    var_0 = min(~_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-11269i, var_2.c.a), vec2<i32>(var_0.x, u_input.b.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, 16409i), vec2<i32>(-1i, var_0.x), u_input.b.xw)), vec2<i32>(func_4(Struct_3(1u, var_2.b, var_2.c, u_input.a.x)).d.x, var_1.d.x)), _wgslsmith_sub_vec2_i32(func_4(Struct_3(~0u, 1u, func_3(vec2<u32>(0u, u_input.a.x), vec3<u32>(1u, 23444u, var_2.d), -3612i).c, _wgslsmith_dot_vec4_u32(vec4<u32>(95298u, 0u, var_1.e.b.x, 1490u), vec4<u32>(0u, 0u, var_2.b, u_input.a.x)))).d.xy, u_input.b.xw));
    let var_3 = func_4(func_3(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.d, u_input.a.x), ~vec2<u32>(27776u, 1u)), countOneBits(~vec3<u32>(0u, 4294967295u, 35047u) & vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), u_input.b.x));
    var var_4 = vec4<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1519f - var_1.a.x)) < var_1.a.x), var_3.c.x, ~(~reverseBits(var_2.b)) >= var_1.e.b.x, var_3.c.x);
    var var_5 = var_2.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.d.x, var_2.c.c, var_3.a.x, 1219f) - vec4<f32>(var_1.e.d.x, var_2.c.d.x, 1054f, var_3.e.d.x)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_3.a.x, var_1.e.d.x, -729f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-3305f, 908f, var_3.e.c, var_1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(331f, -1818f, -285f, 737f))))), -566f, var_2.c.a, vec4<i32>(var_0.x, var_1.b, 20989i, var_3.b), 8865i | _wgslsmith_dot_vec2_i32(var_1.d.wx, ~abs(vec2<i32>(1i, 0i))));
}

