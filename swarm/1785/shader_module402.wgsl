struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> bool {
    global0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(reverseBits(4294967295u)), _wgslsmith_sub_u32(firstTrailingBit(1u), arg_2), _wgslsmith_mult_u32(firstTrailingBit(39429u), arg_2), countOneBits(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_2, 88309u)))), vec4<u32>(u_input.a.x, 1u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.a), _wgslsmith_sub_u32(75222u, 75052u)), arg_2 | ~8352u));
    var var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-1380f, arg_1))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, 511f)) - _wgslsmith_f_op_f32(-arg_1))))));
    global0 = 4294967295u;
    global0 = 3793u;
    var var_1 = -min(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(arg_0.a.x, u_input.c, 30529i)), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.c, arg_0.a.x, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, arg_0.a.x, -18479i), arg_0.a, vec3<i32>(arg_0.a.x, 11610i, 2147483647i)))), _wgslsmith_clamp_vec3_i32(arg_0.a ^ arg_0.a, (arg_0.a ^ arg_0.a) | vec3<i32>(2147483647i, arg_0.a.x, u_input.c), min(firstTrailingBit(arg_0.a), vec3<i32>(u_input.c, arg_0.a.x, u_input.c))));
    return select(any(vec4<bool>(!any(vec4<bool>(false, false, true, false)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)))), any(vec3<bool>(~u_input.b.x < (106007u & arg_2), all(vec3<bool>(false, false, false)) || any(vec3<bool>(false, false, true)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true)))), all(vec2<bool>(!(arg_1 < -934f), true && all(vec4<bool>(true, true, true, false)))));
}

fn func_2() -> Struct_2 {
    global0 = 24989u;
    global0 = 1u;
    global0 = abs(0u);
    let var_0 = vec3<bool>(509f < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-612f)))))), func_3(Struct_2(min(vec3<i32>(u_input.c, -6428i, u_input.c), vec3<i32>(1i, u_input.c, u_input.c)) << (u_input.b % vec3<u32>(32u))), _wgslsmith_f_op_f32(-2236f + 788f), 1u), true);
    global0 = u_input.a.x & u_input.b.x;
    return Struct_2(reverseBits(firstTrailingBit(abs(vec3<i32>(u_input.c, u_input.c, -2147483647i)) >> (firstLeadingBit(u_input.b) % vec3<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>) -> u32 {
    global0 = max(~_wgslsmith_mod_u32(u_input.a.x, 1u), 4294967295u);
    return u_input.a.x;
}

fn func_5(arg_0: u32, arg_1: u32) -> vec2<i32> {
    global0 = _wgslsmith_add_u32(arg_0, ~min(firstTrailingBit(arg_0), firstLeadingBit(arg_1))) | ~_wgslsmith_clamp_u32(27008u, _wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.zz) & 1u, _wgslsmith_add_u32(arg_1, 4294967295u) & 1025u);
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(110f, -514f) + vec2<f32>(-1000f, -359f)), vec2<f32>(629f, -159f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1506f, 689f), vec2<f32>(-429f, 331f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1862f, -968f) + vec2<f32>(-353f, -1258f))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-732f)), _wgslsmith_f_op_f32(f32(-1f) * -537f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(799f * 398f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-430f, 417f)))));
    global0 = ~_wgslsmith_clamp_u32(arg_1, 1u, u_input.b.x);
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))));
    global0 = func_4(Struct_1(any(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true)), ~(arg_0 ^ _wgslsmith_clamp_u32(arg_0, arg_1, arg_1)), ~12487u, vec2<i32>(1i, 4354i >> (~u_input.a.x % 32u)), abs(-49266i)), func_2(), select(vec3<bool>(var_0.b != _wgslsmith_f_op_f32(-var_0.b), true, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), func_3(Struct_2(vec3<i32>(19134i, 1i, 43603i)), var_0.a.x, 0u)), vec3<bool>(true, arg_0 != arg_0, false), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), reverseBits(1u) != u_input.a.x));
    return ~vec2<i32>(-u_input.c, -1i);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_dot_vec3_u32(reverseBits(u_input.b), min(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(101732u, 30980u)), 53274u, 4294967295u), ~countOneBits(vec3<u32>(u_input.a.x, u_input.b.x, 79075u))), vec3<u32>(reverseBits(arg_2.b), max(arg_2.c >> (u_input.a.x % 32u), _wgslsmith_mod_u32(86999u, arg_2.c)), u_input.a.x)));
    let var_0 = func_2();
    var var_1 = vec4<bool>(true, !(true || (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) > arg_2.c)), all(select(select(!vec2<bool>(false, arg_2.a), vec2<bool>(arg_2.a, false), vec2<bool>(arg_2.a, arg_2.a)), select(select(vec2<bool>(true, true), vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(true, false)), vec2<bool>(true, arg_2.a), any(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true))), !arg_2.a)), true);
    let var_2 = 47127u <= abs(_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(~arg_2.c, u_input.a.x)));
    let var_3 = vec2<u32>(firstLeadingBit(abs(1u)), _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.b.x, u_input.a.x, 0u) >> (u_input.b % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(u_input.b, ~vec3<u32>(arg_2.c, 1u, u_input.b.x)))) | abs(u_input.a >> (u_input.b.yz % vec2<u32>(32u)));
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = ~firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, u_input.c), 6366i));
    global0 = 0u;
    let var_1 = func_6(func_5(1u, func_4(Struct_1(true, 0u, 21168u, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(-26165i, 2147483647i)), 6206i), func_2(), vec3<bool>(true, any(vec3<bool>(false, false, true)), true))), Struct_2(firstTrailingBit(~(vec3<i32>(1i, -1i, u_input.c) ^ vec3<i32>(35511i, 1i, 2147483647i)))), Struct_1(true, u_input.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(21514u, arg_0, arg_1.x), u_input.b) << (~(~u_input.b.x) % 32u), ~(-vec2<i32>(u_input.c, -42562i)) & -(~vec2<i32>(u_input.c, u_input.c)), u_input.c), func_2());
    var var_2 = -(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 0i), max(vec2<i32>(var_1.d.x, var_1.e), var_1.d)) ^ (func_5(abs(arg_1.x), arg_1.x) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, var_1.e), -var_1.d)));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(269f, -271f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1366f, 268f), vec2<f32>(386f, -306f), false)) + vec2<f32>(247f, 1746f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(939f - 205f)), 1f))));
    return Struct_3(func_2(), ~abs(~u_input.b), abs(2147483647i));
}

fn func_7(arg_0: vec3<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(select(772f, 1f, !arg_0.x)), _wgslsmith_f_op_f32(-1857f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(978f, 956f, arg_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-667f, 968f)))))));
    let var_1 = !arg_0.x;
    global0 = (_wgslsmith_add_u32(arg_1.b.x, 35492u) & ~(~50987u)) >> (1u % 32u);
    var var_2 = _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(abs(u_input.b), select(arg_1.b ^ vec3<u32>(10856u, 4294967295u, 42203u), arg_1.b, select(arg_0, arg_0, var_1))), ~reverseBits(select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, arg_1.b.x), vec3<u32>(85614u, 0u, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.b.x, 0u), func_6(vec2<i32>(54877i, 0i), Struct_2(arg_1.a.a), Struct_1(var_1, 42057u, arg_1.b.x, vec2<i32>(u_input.c, -58194i), -17450i), arg_1.a).a)));
    var_2 = arg_1.b;
    return 0i;
}

fn func_8(arg_0: i32, arg_1: u32, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = func_1(56803u & u_input.a.x, _wgslsmith_clamp_vec2_u32(~(~u_input.b.xx) ^ u_input.b.xz, vec2<u32>(u_input.b.x, 1u), u_input.b.xy));
    var_0 = Struct_3(var_0.a, u_input.b, arg_0);
    var_0 = Struct_3(Struct_2(vec3<i32>(8258i, var_0.a.a.x, 30765i)), select(~abs(var_0.b) | var_0.b, vec3<u32>(u_input.b.x ^ u_input.b.x, 1u, u_input.b.x ^ abs(62986u)), vec3<bool>(true, true, true)), ~min(_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, arg_0), reverseBits(0i)), u_input.c));
    let var_1 = _wgslsmith_add_i32(-21783i, _wgslsmith_dot_vec2_i32(~(-select(var_0.a.a.zz, vec2<i32>(u_input.c, -12508i), false)), ~var_0.a.a.yy));
    var var_2 = select(vec2<bool>(!(any(vec2<bool>(true, false)) || true), !select(any(vec3<bool>(false, false, true)), arg_1 >= var_0.b.x, false)), !select(vec2<bool>(any(vec3<bool>(true, true, false)), true), vec2<bool>(arg_2.x == arg_2.x, all(vec4<bool>(true, true, false, true))), true), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec2<bool>(true, true))), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, any(vec4<bool>(true, false, true, false))), all(vec4<bool>(true, true, true, true))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    return Struct_2(~(~var_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(_wgslsmith_sub_i32(-u_input.c, -2147483647i) & max(func_7(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), func_1(u_input.b.x, u_input.b.xy)), u_input.c), _wgslsmith_div_u32(20819u, u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1280f)), 1f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-118f, 976f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(285f, 383f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-978f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(109f, 1054f)) * -1413f), _wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(430f, 1194f, false))) - _wgslsmith_f_op_f32(step(-1000f, -366f)))));
    var var_2 = func_6(~(~min(reverseBits(vec2<i32>(var_0.a.x, u_input.c)), var_0.a.yy << (u_input.b.yy % vec2<u32>(32u)))), var_0, func_6(var_0.a.zy, Struct_2(~_wgslsmith_sub_vec3_i32(var_0.a, vec3<i32>(2147483647i, var_0.a.x, u_input.c))), func_6(~(var_0.a.xx ^ var_0.a.yy), var_0, func_6(abs(vec2<i32>(var_0.a.x, 2147483647i)), var_0, Struct_1(false, u_input.a.x, u_input.b.x, var_0.a.xz, var_0.a.x), var_0), var_0), func_2()), Struct_2(var_0.a)).a;
    var var_3 = ~u_input.b.x << (_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~114665u, countOneBits(1u)), u_input.a.x), u_input.b.x, ~(min(u_input.a.x, u_input.b.x) ^ u_input.a.x)) % 32u);
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<i32>(var_0.a.x, 1i, ~_wgslsmith_add_i32(1i, u_input.c), _wgslsmith_mult_i32(0i, -27044i))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-946f, _wgslsmith_f_op_f32(floor(var_4.x))), var_1.x, _wgslsmith_f_op_f32(ceil(var_4.x))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_4.x), var_1.x)), var_1.wz)));
}

