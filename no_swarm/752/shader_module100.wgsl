struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec3<f32> {
    var var_0 = Struct_1(vec3<f32>(105f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1602f + arg_0) + _wgslsmith_f_op_f32(floor(arg_0))) + arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 632f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), -595f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1000f), vec2<f32>(arg_0, -1802f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1065f, arg_0) * vec2<f32>(1013f, 208f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1810f) * vec2<f32>(-393f, 1815f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -182f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -572f))))))), 0i);
    let var_1 = Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1846f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)), _wgslsmith_f_op_f32(floor(arg_0)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * -860f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2363f, arg_0, false)) - _wgslsmith_f_op_f32(f32(-1f) * -441f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1493f + -306f))) - var_0.a.xx), var_0.d);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, var_0.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - var_0.a.x))), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.a.xy)) + _wgslsmith_f_op_vec2_f32(round(var_0.c)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(349f, arg_0)) + vec2<f32>(-314f, 244f))), -_wgslsmith_div_i32(-reverseBits(-43057i), countOneBits(-2492i)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2.a)) * _wgslsmith_f_op_vec3_f32(-var_1.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_1.b.x)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b) * _wgslsmith_f_op_vec2_f32(-var_0.a.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1164f, arg_0)))), _wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(round(-1864f)), true)) > var_2.c.x)), ~(-2147483647i) << (_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(9765u, 18654u, 13557u, 1u), vec4<u32>(44134u, 1u, 25127u, 15514u)), ~_wgslsmith_mod_u32(4294967295u, 40526u), reverseBits(firstTrailingBit(0u))) % 32u));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.c.x, var_0.c.x, 719f)))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.c.x, _wgslsmith_div_f32(var_1.a.x, -1000f), _wgslsmith_f_op_f32(-var_2.b.x)))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c) + var_2.a.xz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_2.b.x)), _wgslsmith_f_op_vec2_f32(var_1.b - vec2<f32>(2246f, -913f)))))), 0i);
    return var_1.a;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -916f), var_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-471f, _wgslsmith_f_op_vec3_f32(func_3(1365f, ~0i)).x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-726f, _wgslsmith_f_op_f32(712f + -1114f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(312f, 1888f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-918f, 405f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1109f, 673f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-256f, -687f)))))), ~var_0);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec4<bool>, 19>();
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(func_2().d, -u_input.a, ~37715i)), -(-vec3<i32>(u_input.a, -24816i, u_input.a) << ((vec3<u32>(arg_0, arg_0, arg_0) | vec3<u32>(1u, 4294967295u, 0u)) % vec3<u32>(32u)))), ~(-(~vec3<i32>(u_input.a, -1513i, arg_1.d))) << (~vec3<u32>(abs(arg_0), min(1u, arg_0), arg_0) % vec3<u32>(32u)));
    var_0 = _wgslsmith_div_i32(~(-47303i), -1i);
    var_0 = 0i;
    let var_1 = abs(~(countOneBits(vec4<u32>(arg_0, arg_0, arg_0, 1u)) >> ((~vec4<u32>(arg_0, 1u, arg_0, arg_0) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 11484u, 4294967295u), vec4<u32>(4294967295u, arg_0, 31645u, arg_0))) % vec4<u32>(32u))));
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 0i & countOneBits(_wgslsmith_div_i32(u_input.a, countOneBits(0i)));
    var var_1 = ~(~(~(~abs(vec3<u32>(14548u, 1u, 43313u)))));
    global0 = array<vec4<bool>, 19>();
    var var_2 = 3905i;
    var var_3 = ~4294967295u;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c.x, 388f))), -24716i)).x, -2055f, -1095f), arg_0.a.zz, arg_0.a.xz, _wgslsmith_mult_i32(~1i, ~(-firstLeadingBit(arg_0.d))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(func_4(countOneBits(~1u), func_2()));
    var var_1 = ~firstTrailingBit(2147483647i);
    global0 = array<vec4<bool>, 19>();
    var var_2 = var_0.a;
    let var_3 = _wgslsmith_mult_u32(countOneBits(max(0u, reverseBits(25216u))) | ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(17414u, 1u), vec2<u32>(1u, 8843u), vec2<bool>(true, false))), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(~vec4<u32>(0u, 1u, 18044u, 54457u))));
    return func_5(Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1478f), _wgslsmith_f_op_f32(-var_0.b.x))), vec2<f32>(-1040f, _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_mod_i32(var_0.d, var_0.d)));
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    var var_0 = func_1();
    return vec4<bool>(arg_1, any(vec4<bool>(any(vec3<bool>(true, true, true)), any(global0[_wgslsmith_index_u32(1u, 19u)]) | arg_1, true, true)), !any(global0[_wgslsmith_index_u32(0u, 19u)]), select(arg_1, select(select(true, arg_1, arg_1) && arg_1, true, !arg_1), any(vec3<bool>(true, arg_1, !arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 19>();
    let var_0 = func_6(func_1(), true);
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1298f, -853f, 1207f))) + vec3<f32>(_wgslsmith_div_f32(309f, 261f), _wgslsmith_f_op_f32(round(-189f)), func_5(Struct_1(vec3<f32>(-1000f, 805f, -635f), vec2<f32>(-640f, -1012f), vec2<f32>(798f, -1267f), 0i)).c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(2147f, -256f)), -211f, 1379f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-440f, 1735f)))) + _wgslsmith_f_op_vec2_f32(step(func_4(668u, Struct_1(vec3<f32>(-726f, 1098f, -1063f), vec2<f32>(1187f, 181f), vec2<f32>(1741f, 2163f), u_input.a)).a.zz, _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -544f), vec2<f32>(-1456f, 454f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1514f, -1000f))) * vec2<f32>(_wgslsmith_f_op_f32(482f + -1037f), _wgslsmith_f_op_f32(1358f + -1090f)))), func_2().b, u_input.a);
    let var_2 = var_0.x;
    global0 = array<vec4<bool>, 19>();
    var_1 = func_5(func_4(_wgslsmith_mult_u32(abs(0u), 4294967295u) << (_wgslsmith_clamp_u32(abs(28469u), _wgslsmith_clamp_u32(4294967295u, 12394u, 1u), ~108980u) % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.a * vec3<f32>(var_1.c.x, var_1.b.x, 710f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2531f, var_1.a.x)), vec2<f32>(169f, var_1.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.c.x)), var_1.d)));
    global0 = array<vec4<bool>, 19>();
    let var_3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-(_wgslsmith_mod_i32(u_input.a, u_input.a) >> (4294967295u % 32u)), 1i), select(vec3<u32>(_wgslsmith_add_u32(~4294967295u, 1u), 82495u, 57415u), max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(24604u, 0u, 29046u), false)), var_0.wzw), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), 464f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-649f))))))), i32(-1i) * -1710i, abs(max(-6601i, var_1.d)));
}

