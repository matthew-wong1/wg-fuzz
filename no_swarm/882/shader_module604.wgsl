struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, -13104i) >> (0u % 32u), u_input.b & _wgslsmith_div_i32(-(-1i ^ arg_0.x), -2147483647i));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(953f, 267f, 1396f, -450f)))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2617f - -194f), 661f)) + -761f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f), -578f) * 300f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-235f)), _wgslsmith_f_op_f32(trunc(-495f)))))));
    global0 = array<Struct_2, 26>();
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(1u, 1u, 1u), ~abs(vec3<u32>(22181u, 28363u, 0u))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 3890u), vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(14850u, 1u, 4294967295u))))), firstLeadingBit(4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -374f), var_1.x, ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, ~48092u), _wgslsmith_add_u32(1u, 43077u)));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-658f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c * 1000f) + var_1.x)), -571f, -642f));
    return !(!(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, true))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: f32) -> vec4<i32> {
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    let var_0 = arg_2.x >= abs(-36363i);
    var var_1 = Struct_1(~firstTrailingBit(~arg_1.x ^ arg_1.x), firstLeadingBit(~(~_wgslsmith_mult_u32(0u, arg_1.x))), _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1069f, _wgslsmith_f_op_f32(arg_3 - -720f))))), -871f, ~arg_1.x);
    return u_input.a;
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(33493u & (min(max(26944u, arg_2.c.x), arg_2.c.x >> (33492u % 32u)) << (54137u % 32u)), arg_2.d.x, -560f, 1f, _wgslsmith_dot_vec3_u32(reverseBits(arg_2.d.yyw), arg_2.c));
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    var_0 = Struct_1(1u, countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.c.x, var_0.a) << (arg_2.d.xy % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.e, 35735u), arg_2.d.wx, arg_2.c.xz), arg_2.a.yw << (vec2<u32>(arg_2.d.x, 4294967295u) % vec2<u32>(32u))))), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-963f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1606f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(670f))) + 1243f)), 43831u);
    var var_1 = 4294967295u;
    return select(!(!select(vec4<bool>(arg_1, arg_1, false, false), !vec4<bool>(true, arg_1, arg_1, true), !vec4<bool>(arg_1, arg_1, true, arg_1))), select(vec4<bool>(false, false, false && arg_1, func_4(vec4<bool>(arg_1, true, arg_1, arg_1), arg_2.a.wx, u_input.a.xx, var_0.c).x != 0i), !vec4<bool>(arg_0.x < arg_0.x, false, 12527u < var_0.b, true), arg_1), select(vec4<bool>((true && arg_1) | arg_1, !(!arg_1), true, false), vec4<bool>((var_0.b >> (var_0.a % 32u)) == ~61646u, true, !(arg_2.a.x >= arg_2.c.x), arg_1), true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = u_input.a.x;
    let var_2 = any(func_5(func_4(func_3(vec4<i32>(var_1, var_1, -3452i, 2147483647i) & u_input.a), vec2<u32>(1u, 1u), u_input.a.wy, _wgslsmith_f_op_f32(-arg_2.d)), -706f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.d, arg_0.c)) + _wgslsmith_f_op_f32(arg_2.c + 2117f)), Struct_2(~vec4<u32>(1u, 4571u, arg_0.b, 0u), vec4<i32>(-30260i, -1059i, 7442i, _wgslsmith_dot_vec3_i32(u_input.a.xyy, u_input.a.wzx)), ~(vec3<u32>(arg_1.a, var_0.e, arg_2.b) << (vec3<u32>(arg_0.a, 0u, arg_2.e) % vec3<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(55466u, 50050u, arg_0.b), vec3<u32>(arg_1.e, arg_1.a, arg_0.a)), 1u, 65692u, ~arg_2.b))));
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = ~(~(~(~vec2<u32>(61815u, arg_0.e) & ~vec2<u32>(arg_0.a, 0u))));
    var var_1 = vec2<f32>(-342f, arg_0.c);
    var var_2 = vec2<u32>(func_2(func_2(func_2(Struct_1(var_0.x, arg_0.e, arg_0.c, 651f, arg_0.e), func_2(Struct_1(42046u, arg_0.b, arg_0.c, 1032f, 56229u), arg_0, Struct_1(4294967295u, var_0.x, 605f, 628f, arg_0.b)), arg_0), func_2(func_2(Struct_1(4294967295u, var_0.x, arg_0.c, arg_0.d, 1u), Struct_1(19540u, 1u, 1581f, -367f, arg_0.a), arg_0), func_2(Struct_1(arg_0.a, 1u, -1000f, arg_0.d, arg_0.e), Struct_1(18409u, 103650u, 189f, arg_0.d, arg_0.b), arg_0), Struct_1(0u, 1u, var_1.x, -1014f, var_0.x)), func_2(arg_0, arg_0, func_2(arg_0, arg_0, Struct_1(arg_0.e, arg_0.a, arg_0.c, var_1.x, 1u)))), arg_0, func_2(Struct_1(~arg_0.e, _wgslsmith_add_u32(arg_0.a, arg_0.a), 1171f, -1000f, var_0.x), func_2(arg_0, Struct_1(140662u, 42572u, -150f, -592f, arg_0.a), arg_0), arg_0)).b, ~abs(~41795u));
    var_2 = var_0;
    var var_3 = u_input.a.x;
    return func_2(Struct_1(var_2.x, firstLeadingBit(33425u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.x)))) - 866f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.d))))), var_2.x), Struct_1(~1738u << (~_wgslsmith_mult_u32(var_0.x, arg_0.e) % 32u), ~var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - var_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1809f))), arg_0.b), arg_0);
}

fn func_7(arg_0: Struct_1) -> u32 {
    global0 = array<Struct_2, 26>();
    var var_0 = ~vec2<u32>(countOneBits(0u), 26497u);
    global0 = array<Struct_2, 26>();
    let var_1 = ~reverseBits(firstTrailingBit(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(var_0.x, 36073u)), vec2<u32>(var_0.x, arg_0.e))));
    var var_2 = max(0i, min(reverseBits(i32(-1i) * -u_input.a.x), firstLeadingBit(18761i)));
    return _wgslsmith_mod_u32(~var_0.x >> (select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 4294967295u) ^ vec3<u32>(4294967295u, var_1.x, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(34096u, 1u, 0u), vec3<u32>(20572u, 126165u, var_0.x))), var_0.x, all(vec2<bool>(true, true))) % 32u), ~var_0.x);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = -1i;
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    var var_1 = 0u;
    var var_2 = Struct_1(9414u >> (func_7(func_6(func_2(Struct_1(4294967295u, 1u, -1227f, 3497f, 2203u), Struct_1(0u, 91715u, -236f, -495f, 1701u), Struct_1(22055u, 1472u, -948f, 111f, 27235u)), true, func_5(u_input.a, false, Struct_2(vec4<u32>(5072u, 371u, 31100u, 6637u), u_input.a, vec3<u32>(34838u, 4294967295u, 39415u), vec4<u32>(4294967295u, 27552u, 3160u, 1u))))) % 32u), func_2(func_2(Struct_1(1u, reverseBits(4294967295u), _wgslsmith_div_f32(221f, 927f), 1014f, 4294967295u << (0u % 32u)), Struct_1(4294967295u, 1u, _wgslsmith_f_op_f32(f32(-1f) * -2712f), _wgslsmith_div_f32(-640f, -1000f), _wgslsmith_dot_vec4_u32(vec4<u32>(46543u, 0u, 1u, 0u), vec4<u32>(4294967295u, 36219u, 0u, 95250u))), Struct_1(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(13528u, 28318u, 22326u, 79271u), vec4<u32>(4294967295u, 45552u, 1u, 1u)), _wgslsmith_f_op_f32(floor(1626f)), _wgslsmith_f_op_f32(min(626f, -1279f)), 55234u)), func_6(Struct_1(~4294967295u, ~74867u, -1012f, _wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_clamp_u32(24234u, 49668u, 1u)), false, vec4<bool>(all(arg_0), !arg_0.x, arg_0.x, true)), Struct_1(abs(countOneBits(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(6515u, 0u, 72208u, 0u), vec4<u32>(91915u, 60872u, 1u, 25167u))), _wgslsmith_f_op_f32(exp2(func_6(Struct_1(4294967295u, 20171u, 467f, -527f, 4294967295u), true, vec4<bool>(arg_0.x, false, arg_0.x, false)).d)), -164f, 1u)).b, -345f, 632f, func_7(func_2(func_6(Struct_1(1u, 6379u, -1000f, -1341f, 0u), arg_0.x, vec4<bool>(true, true, true, false)), func_6(func_6(Struct_1(1u, 0u, 1306f, 367f, 3782u), arg_0.x, vec4<bool>(false, true, arg_0.x, arg_0.x)), true, !vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), Struct_1(~49335u, _wgslsmith_clamp_u32(4294967295u, 54247u, 4294967295u), -212f, _wgslsmith_f_op_f32(f32(-1f) * -762f), _wgslsmith_mod_u32(1u, 13859u)))));
    return Struct_1(var_2.b << (0u % 32u), func_6(Struct_1(~var_2.e, _wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 45244u), vec2<u32>(var_2.a, 4294967295u), arg_0.xz), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.e, 0u), vec2<u32>(4294967295u, var_2.e), vec2<u32>(var_2.e, 4294967295u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_2.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.d + var_2.d), _wgslsmith_f_op_f32(-var_2.c))), min(firstLeadingBit(var_2.e), 639u)), !any(vec2<bool>(arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, _wgslsmith_mult_u32(10818u, 29979u) >= ~var_2.e, select(arg_0.x, arg_0.x, arg_0.x) & false, arg_0.x)).b, _wgslsmith_f_op_f32(f32(-1f) * -1587f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.d, var_2.d, arg_0.x)), -537f)), var_2.c), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, 39107u, var_2.e), vec3<u32>(64726u, 49550u, 193u)) ^ 5815u) << (56104u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, false, all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), var_0.d, var_0.d, var_0.d);
    var var_2 = func_5(u_input.a, true, Struct_2(select(firstTrailingBit(vec4<u32>(var_0.e, var_0.e, var_0.e, var_0.b) ^ vec4<u32>(4294967295u, 56358u, 4294967295u, var_0.e)), firstLeadingBit(~vec4<u32>(var_0.a, var_0.e, var_0.a, var_0.b)), false), vec4<i32>(_wgslsmith_mod_i32(u_input.b, firstTrailingBit(u_input.b)), u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.a.x, u_input.b), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.a.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -23639i), vec2<i32>(9490i, u_input.b))), 0i), vec3<u32>(firstLeadingBit(4294967295u), select(8544u, var_0.a, false), _wgslsmith_sub_u32(17899u, var_0.a)), abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, var_0.e, 23024u, 4294967295u), vec4<u32>(51412u, var_0.b, 61099u, 50908u) | vec4<u32>(var_0.a, 74740u, var_0.e, 4294967295u)))));
    var var_3 = var_1.x;
    var var_4 = ~_wgslsmith_mult_u32(var_0.a, ~_wgslsmith_div_u32(4294967295u, ~var_0.e));
    var_2 = vec4<bool>(!(var_0.a >= select(var_0.e, ~var_0.a, !var_2.x)), true, firstTrailingBit(u_input.a.x) >= (31350i << (var_0.b % 32u)), select(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(288f + var_0.c) - _wgslsmith_f_op_f32(var_1.x * -436f)) <= var_1.x, select(var_0.e, _wgslsmith_mult_u32(4294967295u, var_0.a), func_3(vec4<i32>(u_input.b, u_input.b, -10397i, 4160i)).x) >= min(~4294967295u, countOneBits(var_0.b))));
    var var_5 = Struct_1(var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(var_0.b) >> ((1u << (var_0.e % 32u)) % 32u), ~var_0.b | _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_0.b, var_0.e), vec3<u32>(var_0.a, 1u, 30236u))), vec2<u32>(_wgslsmith_clamp_u32(reverseBits(var_0.b), ~4294967295u, ~var_0.b), 4294967295u)), 1127f, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1430f)))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(min(~vec3<u32>(var_0.e, var_0.a, var_0.b), firstTrailingBit(vec3<u32>(4294967295u, 1u, var_0.a))), vec3<u32>(44834u, max(4294967295u, var_0.b), _wgslsmith_add_u32(var_0.e, 14275u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b, 25222u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(7582u, var_0.b, var_0.e), vec3<u32>(var_0.b, 7260u, var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<i32>(2147483647i, _wgslsmith_mult_i32(-1i, 2147483647i), -u_input.a.x)), 0i, _wgslsmith_sub_vec3_i32(vec3<i32>(~(~5461i), _wgslsmith_dot_vec4_i32(u_input.a, -vec4<i32>(2147483647i, 32866i, u_input.a.x, 10356i)), _wgslsmith_clamp_i32(~u_input.a.x, 1i, func_4(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec2<u32>(42817u, 994u), u_input.a.zx, var_0.d).x)), firstTrailingBit(vec3<i32>(u_input.a.x, 0i, 34143i)) & (_wgslsmith_add_vec3_i32(u_input.a.wwz, u_input.a.yyw) | abs(vec3<i32>(2147483647i, u_input.a.x, 1i)))));
}

