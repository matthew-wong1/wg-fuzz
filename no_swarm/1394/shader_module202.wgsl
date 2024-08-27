struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-378f, _wgslsmith_f_op_f32(-2363f + -474f))) * -2005f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -446f), 246f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2573f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-307f, -304f)))) - -499f));
    let var_1 = all(vec3<bool>(!all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), u_input.a.x > _wgslsmith_sub_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(41997i, u_input.e, -10653i, -675i), vec4<i32>(31596i, u_input.b, u_input.b, u_input.c.x))), true));
    let var_2 = var_1;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-792f - var_0.x), var_0.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1058f, var_0.x, 1542f, -1982f))))))));
    let var_3 = _wgslsmith_mult_i32(u_input.e, -(~u_input.a.x ^ -7957i));
    return Struct_1(_wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(u_input.c & vec3<i32>(28791i, var_3, var_3), vec3<i32>(12973i, u_input.c.x, -28615i)), vec3<i32>(~u_input.e, u_input.e, u_input.a.x) | _wgslsmith_clamp_vec3_i32(abs(u_input.c), countOneBits(vec3<i32>(-16141i, u_input.b, u_input.c.x)), ~vec3<i32>(u_input.e, u_input.c.x, 24900i))));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    return max(abs(~u_input.c.zx), ~(-firstTrailingBit(abs(u_input.c.xx))));
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = func_2(~(~(~_wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(4676u, 0u, 4738u)))), ~arg_0.a.zx | vec2<u32>(1u | arg_0.a.x, 4294967295u));
    let var_1 = arg_0.d.b;
    let var_2 = arg_3;
    let var_3 = Struct_4(~(vec3<i32>(_wgslsmith_mult_i32(arg_0.e.d.a.x, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-6242i, arg_0.c.a.x), arg_0.c.a.zy), arg_0.c.a.x) << (arg_2.xwx % vec3<u32>(32u))), var_2.a.xx);
    let var_4 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(var_3.a.zz, var_3.b) | _wgslsmith_add_vec2_i32(func_3(arg_0.e.c), var_0.a.zx), -_wgslsmith_clamp_vec2_i32(vec2<i32>(~(-1i), 19444i), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.c.x), arg_3.a.yy) ^ reverseBits(vec2<i32>(0i, 2147483647i)), arg_3.a.yy));
    return arg_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_add_i32(-31026i, 3309i);
    var_0 = -countOneBits(2147483647i);
    let var_1 = vec4<f32>(-249f, -1689f, -407f, 740f);
    let var_2 = vec4<i32>(u_input.c.x, -19178i, -1i >> (_wgslsmith_div_u32(47068u, 5577u) % 32u), countOneBits(~u_input.a.x));
    var var_3 = Struct_5(~min(select(vec3<u32>(arg_0.x, arg_0.x, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(34242u, 0u, u_input.d), vec3<u32>(0u, arg_2.c.x, u_input.d)), !vec3<bool>(arg_2.b, arg_2.b, true)), ~arg_0.zyz), arg_2.a.x, func_2(~abs(abs(20574u)), select(arg_2.c.zz, arg_2.c.yx, arg_2.b) << (~(~arg_2.c.yz) % vec2<u32>(32u))), arg_2, Struct_3(false, var_2, firstLeadingBit(u_input.d), Struct_1(u_input.c)));
    return _wgslsmith_f_op_vec4_f32(-arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(max(abs(u_input.d), u_input.d), u_input.d, ~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(26549u, u_input.d, u_input.d, 6230u), ~vec4<u32>(u_input.d, 57873u, u_input.d, 4294967295u))), vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(410f * 280f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_5(vec3<u32>(u_input.d, u_input.d, 14372u), -1000f, Struct_1(u_input.c), Struct_2(vec4<f32>(-657f, -129f, -447f, 951f), true, vec3<u32>(1u, 4294967295u, 32978u)), Struct_3(true, vec4<i32>(u_input.b, 0i, u_input.c.x, 2147483647i), 3188u, Struct_1(u_input.c))), 187f, vec4<u32>(0u, 4294967295u, 1u, 79614u), Struct_1(u_input.a.zxy))) - 1074f)), Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-186f, 324f, 514f, 836f))), true, vec3<u32>(0u, u_input.d, _wgslsmith_mod_u32(u_input.d, 4294967295u))))), u_input.d == u_input.d, vec3<u32>(countOneBits(1u), ~abs(~1u), _wgslsmith_clamp_u32(u_input.d, ~countOneBits(u_input.d), 0u)));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1591f, 2489f, var_0.a.x, -481f)), true))), var_0.b & (2147483647i == ~(~u_input.e)), select(vec3<u32>(~firstLeadingBit(24870u), countOneBits(select(0u, var_0.c.x, false)), 4294967295u), var_0.c, select(vec3<bool>(true, select(var_0.b, var_0.b, false), false), vec3<bool>(true, true, true), vec3<bool>(!var_0.b, !var_0.b, true))));
    var_0 = Struct_2(vec4<f32>(115f, _wgslsmith_f_op_f32(f32(-1f) * -1410f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))) * 100f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), !var_0.b == (var_0.b | false), vec3<u32>(~var_0.c.x, ~u_input.d, min(~0u, ~var_0.c.x)) >> ((~vec3<u32>(1u, 36409u, 41836u) & var_0.c) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(64641u, var_0.c.x, var_0.c.x, var_0.c.x), _wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(_wgslsmith_mod_u32(1u, var_0.c.x), 77767u, ~var_0.c.x, _wgslsmith_mod_u32(u_input.d, u_input.d)), _wgslsmith_f_op_vec3_f32(trunc(var_0.a.wxw)), Struct_2(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), u_input.e < u_input.a.x, vec3<u32>(var_0.c.x, 4294967295u, u_input.d)))).yyy, Struct_2(var_0.a, true, ~vec3<u32>(var_0.c.x, u_input.d, var_0.c.x)))).xxy));
    var_0 = Struct_2(vec4<f32>(-931f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(func_1(Struct_5(var_0.c, -575f, Struct_1(vec3<i32>(-7315i, u_input.a.x, 63353i)), Struct_2(vec4<f32>(295f, -1090f, var_1.x, 749f), var_0.b, var_0.c), Struct_3(var_0.b, u_input.a, 4294967295u, Struct_1(vec3<i32>(u_input.e, u_input.e, u_input.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -120f), ~vec4<u32>(0u, var_0.c.x, u_input.d, var_0.c.x), func_2(var_0.c.x, vec2<u32>(5136u, 1u))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_5(var_0.c, -395f, Struct_1(vec3<i32>(-617i, u_input.a.x, -2147483647i)), Struct_2(vec4<f32>(var_0.a.x, var_0.a.x, -1796f, 603f), var_0.b, vec3<u32>(var_0.c.x, u_input.d, 24469u)), Struct_3(false, vec4<i32>(-2147483647i, 0i, -1i, -54543i), 4294967295u, Struct_1(u_input.c))), _wgslsmith_f_op_f32(step(-1695f, -776f)), vec4<u32>(u_input.d, 4294967295u, var_0.c.x, var_0.c.x) & vec4<u32>(52381u, 4294967295u, u_input.d, var_0.c.x), func_2(1u, vec2<u32>(var_0.c.x, u_input.d)))), -563f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * 524f) + -1320f)), true, vec3<u32>(firstLeadingBit(var_0.c.x), _wgslsmith_sub_u32(~0u, u_input.d), var_0.c.x));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(select(-105f, 497f, var_0.b)), _wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(var_1.x - 1381f))))), !any(select(select(vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(true, false, var_0.b), false), vec3<bool>(var_0.b, var_0.b, true), !vec3<bool>(false, var_0.b, var_0.b))), ~var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-943f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(ceil(var_0.a.x))))))), vec4<u32>(0u, _wgslsmith_sub_u32(var_0.c.x, 54518u), _wgslsmith_sub_u32(~firstTrailingBit(4294967295u), 1u), u_input.d), -vec4<i32>(~(-2147483647i) & u_input.e, _wgslsmith_div_i32(u_input.e, max(2147483647i, u_input.a.x)), 0i, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c) | _wgslsmith_add_i32(2147483647i, u_input.e)), -24958i, _wgslsmith_div_f32(-332f, var_1.x));
}

