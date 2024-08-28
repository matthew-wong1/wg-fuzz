struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = -44623i;
    let var_1 = arg_0;
    var var_2 = Struct_2(-2147483647i, var_1);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2581f, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(-var_2.b.b))))));
    var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, 399f, -557f, -1206f), vec4<f32>(792f, 873f, arg_0.a.x, 589f), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1168f, var_3.x, var_2.b.a.x, var_1.a.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1373f, -1315f, -252f, var_1.a.x))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(916f * -2285f), _wgslsmith_f_op_f32(var_3.x + arg_0.b), -713f, 1263f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -758f, var_3.x, var_3.x)))))));
    return var_2.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_4(Struct_3(~_wgslsmith_mult_u32(~4294967295u, 20942u), abs(firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 0u, u_input.a))), arg_1.b.b, -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a, -9083i, 42729i, u_input.b) << (vec4<u32>(1u, 0u, u_input.a, u_input.a) % vec4<u32>(32u)), ~vec4<i32>(u_input.b, u_input.b, arg_1.a, 0i)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) + arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(272f + 704f) - -1596f))), Struct_3(39503u, _wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_f_op_f32(select(-1407f, _wgslsmith_f_op_f32(122f - _wgslsmith_f_op_f32(-arg_1.b.a.x)), true)), ~vec4<i32>(_wgslsmith_add_i32(arg_1.a, 0i), arg_1.a, 1i, func_3(Struct_1(vec2<f32>(1000f, arg_1.b.a.x), arg_0.x))), arg_1.b), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(arg_1.b.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.b, -740f) * arg_1.b.a))), vec2<f32>(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2284f, _wgslsmith_f_op_f32(720f - -213f)), 829f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, 967f, arg_1.b.a.x))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1857f, 1118f, arg_0.x), vec3<f32>(arg_1.b.a.x, 2000f, arg_1.b.b), true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.b, -310f, -781f) - vec3<f32>(arg_1.b.a.x, arg_0.x, arg_0.x))))), ~1u);
    let var_1 = _wgslsmith_add_u32(var_0.b.b, _wgslsmith_mult_u32(~(var_0.a.b >> (var_0.e % 32u)), max(~u_input.a, _wgslsmith_sub_u32(var_0.a.a, var_0.b.a)))) ^ ~var_0.b.a;
    return Struct_3(~var_0.e, 13381u >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~u_input.a, ~var_1, u_input.a ^ 73348u), u_input.a & var_1) % 32u), arg_0.x, vec4<i32>(i32(-1i) * -_wgslsmith_dot_vec3_i32(var_0.b.d.wzy, var_0.b.d.zzz), firstLeadingBit(u_input.b), abs(i32(-1i) * -1i), arg_1.a), Struct_1(arg_1.b.a, arg_1.b.b));
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2(vec2<f32>(-1745f, 642f), Struct_2(0i, Struct_1(vec2<f32>(895f, _wgslsmith_div_f32(117f, -1159f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -469f))))));
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.e.a) - var_0.e.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.e.a)))))), Struct_2(var_0.d.x, func_2(_wgslsmith_f_op_vec2_f32(floor(var_0.e.a)), Struct_2(-var_0.d.x, Struct_1(vec2<f32>(var_0.c, -652f), -309f))).e));
    let var_2 = 83191i;
    var_0 = func_2(vec2<f32>(var_0.e.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c)))), Struct_2(~(~1i), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.a.x, var_1.e.b)), Struct_2(min(var_1.d.x, u_input.b), func_2(var_0.e.a, Struct_2(var_0.d.x, var_0.e)).e)).e));
    var var_3 = 445f;
    return select(select(select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true), false), select(vec2<bool>(false, true), !vec2<bool>(any(vec3<bool>(true, false, false)), false), true), !all(vec3<bool>(all(vec4<bool>(false, false, false, false)), any(vec3<bool>(false, true, true)), -1282i != var_1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(745f, -1948f) + vec2<f32>(-2003f, -303f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(406f, 610f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1331f, 303f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1345f, -1386f) - vec2<f32>(-533f, -973f)), !var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f)));
    var var_2 = (_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(8265i, 0i)), 1i), -1i) >> (~(~(~30943u)) % 32u)) << (u_input.a % 32u);
    var var_3 = Struct_4(func_2(_wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.b) - var_1.a), vec2<f32>(var_1.a.x, 555f), vec2<bool>(true, true)))), Struct_2(-24927i, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-858f, 1690f)), var_1.a.x))), func_2(vec2<f32>(-524f, 1f), Struct_2(u_input.b, func_2(var_1.a, Struct_2(u_input.b, Struct_1(var_1.a, var_1.a.x))).e)), func_2(vec2<f32>(var_1.b, _wgslsmith_f_op_f32(select(-177f, 595f, var_0.x))), Struct_2(u_input.b, func_2(vec2<f32>(1582f, -378f), Struct_2(u_input.b, var_1)).e)).e, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b, var_1.a.x, -817f)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -363f, var_1.a.x) * vec3<f32>(var_1.b, var_1.a.x, 840f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-252f, var_1.a.x, var_1.a.x))))), 2147483647i < max(-2147483647i, ~u_input.b))), firstTrailingBit(~30684u));
    var_3 = Struct_4(var_3.a, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(588f, var_1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(987f, 1000f))) - vec2<f32>(var_3.d.x, _wgslsmith_f_op_f32(-var_1.a.x))), Struct_2(var_3.a.d.x, func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b, var_3.a.c), vec2<f32>(var_1.b, var_3.b.c))), Struct_2(var_3.b.d.x, var_1)).e)), var_1, var_3.d, var_3.e);
    var var_4 = 6979u;
    let var_5 = func_2(var_1.a, Struct_2(var_3.b.d.x, Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.a.c))))));
    var_3 = Struct_4(Struct_3(0u, firstLeadingBit(1u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.c.a.x, _wgslsmith_f_op_f32(-981f * var_1.b)) + 1258f), var_3.a.d, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(572f, var_3.a.c)), 769f)), Struct_3(_wgslsmith_clamp_u32(69839u, 0u, countOneBits(u_input.a)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.a, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(26841u, u_input.a), vec2<u32>(14392u, u_input.a))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_3.b.a, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(12848u, u_input.a), vec2<u32>(4294967295u, u_input.a)), min(vec2<u32>(4294967295u, var_3.e), vec2<u32>(u_input.a, 6981u)))), _wgslsmith_f_op_f32(abs(-243f)), ~(~abs(vec4<i32>(var_5.d.x, 63070i, 4159i, var_3.b.d.x))), func_2(vec2<f32>(var_5.c, var_5.e.b), Struct_2(-42521i << (var_5.b % 32u), Struct_1(var_5.e.a, 1516f))).e), var_3.c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1339f) - _wgslsmith_f_op_f32(var_5.e.a.x * var_1.b)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_div_f32(-362f, var_3.c.b))))), var_3.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_i32(u_input.b, ~(-2147483647i))) & u_input.b, ~vec3<u32>(1u, firstLeadingBit(4294967295u), select(select(var_3.e, u_input.a, false), max(1u, 0u), true)), vec3<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(_wgslsmith_div_u32(var_5.a, 4294967295u), reverseBits(var_5.a))), ~(~_wgslsmith_sub_u32(1u, var_3.b.b)), countOneBits(4294967295u)), var_3.c.a);
}

