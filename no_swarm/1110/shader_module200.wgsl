struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_sub_u32(44203u, ~arg_0);
    var var_1 = Struct_3(1i, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) - _wgslsmith_div_vec2_f32(arg_1, vec2<f32>(arg_1.x, 272f)))), -(reverseBits(vec3<i32>(u_input.b, -12776i, 2147483647i)) ^ -vec3<i32>(-2147483647i, -21529i, -1i)), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(12888u, var_0), ~4294967295u), ~_wgslsmith_add_u32(arg_0, u_input.a))), true);
    let var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_3 = ~vec2<u32>(4294967295u, 119306u);
    var var_4 = Struct_3(-2463i, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(trunc(615f)), -1433f))), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a, 0i, u_input.b), var_1.b.b)), var_1.b.c, ~_wgslsmith_div_vec2_u32(var_3, vec2<u32>(var_3.x, 4294967295u))), !var_1.b.c.x);
    return ~countOneBits(~var_4.b.d.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0), _wgslsmith_add_vec2_u32(var_4.b.d, var_3)) % 32u));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>) -> Struct_4 {
    var var_0 = ~abs(vec2<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a & u_input.a, func_3(98146u, vec2<f32>(-1644f, 309f)))));
    var_0 = countOneBits(~(~_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(34810u, 28083u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 36251u), vec2<u32>(var_0.x, u_input.a), vec2<u32>(u_input.a, u_input.a)))));
    var var_1 = select(~(~vec4<i32>(u_input.b, u_input.b, abs(arg_1.x), abs(-35883i))), vec4<i32>(-(-arg_0.x ^ (arg_1.x & arg_0.x)), u_input.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_1.x, 0i, arg_0.x, u_input.b)), ~vec4<i32>(arg_1.x, 1i, -33311i, arg_1.x)), -1i), arg_0.x), false);
    let var_2 = vec2<u32>(1u, func_3(~select(_wgslsmith_sub_u32(u_input.a, u_input.a), firstLeadingBit(var_0.x), true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-489f, 698f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(316f, -522f), vec2<f32>(1283f, -951f), true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(950f, 243f), vec2<f32>(-507f, -1824f), vec2<bool>(true, false))))))));
    let var_3 = Struct_4(_wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, ~(~u_input.a), (30469u & var_2.x) << (u_input.a % 32u), ~7134u), max(abs(select(vec4<u32>(u_input.a, 90991u, 0u, 11367u), vec4<u32>(u_input.a, 1u, 0u, var_2.x), true)), vec4<u32>(_wgslsmith_div_u32(var_0.x, 79168u), ~27826u, var_0.x, u_input.a & 49107u))), ~52145u, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(339f, 259f), vec2<f32>(917f, -1349f), vec2<bool>(true, true))))), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, var_1.x, 23654i)), select(-vec3<i32>(arg_1.x, u_input.b, 0i), firstLeadingBit(vec3<i32>(51040i, u_input.b, -24931i)), true)), vec3<bool>(any(vec4<bool>(true, true, true, true)), select(true, all(vec2<bool>(false, true)), select(true, false, true)), any(vec4<bool>(false, true, true, false))), select(var_2, ~_wgslsmith_clamp_vec2_u32(var_2, vec2<u32>(1u, var_2.x), var_2), true)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1115f, 1261f, 1453f, 1323f) - vec4<f32>(-1224f, -1414f, 434f, -1870f)) + vec4<f32>(_wgslsmith_f_op_f32(select(-2076f, 970f, false)), -361f, _wgslsmith_f_op_f32(min(-1307f, -1262f)), _wgslsmith_f_op_f32(sign(-765f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1328f, -1000f, -2221f, 350f) * vec4<f32>(2473f, -568f, -987f, 1308f)))))));
    return Struct_4(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(12840u, 1u, var_2.x, 1887u), ~_wgslsmith_sub_vec4_u32(var_3.a, vec4<u32>(99622u, 17077u, 1u, var_3.a.x)), vec4<u32>(countOneBits(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 20438u, var_0.x), var_3.a.yzy), 1u, var_0.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~var_2.x, var_3.b ^ u_input.a, ~4294967295u), ~var_3.a.wyy), reverseBits(_wgslsmith_mod_vec3_u32(countOneBits(var_3.a.zwy), ~var_3.a.xwz))), Struct_1(var_3.c.a, vec3<i32>(~(-44144i << (1u % 32u)), firstTrailingBit(6675i), i32(-1i) * -1i), var_3.c.c, vec2<u32>(~4294967295u, abs(u_input.a | var_3.a.x))), var_3.d, vec4<f32>(954f, -816f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e.x - -1334f) * _wgslsmith_f_op_f32(ceil(var_3.c.a.x))))), var_3.e.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = Struct_2(vec4<f32>(-789f, _wgslsmith_f_op_f32(-915f * arg_2.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(268f * -670f))), _wgslsmith_f_op_f32(sign(arg_0.d.a.x))));
    var_0 = func_2(~(-(~_wgslsmith_clamp_vec3_i32(arg_0.c.b, vec3<i32>(-35869i, arg_0.c.b.x, arg_0.c.b.x), vec3<i32>(2147483647i, u_input.b, -2147483647i)))), arg_1.b.yy).d;
    var_0 = arg_0.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-598f, arg_1.a.x, arg_0.e.x) * arg_2.a.wyy))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(func_2(arg_1.b, vec2<i32>(arg_1.b.x, -1i)).e.yyz)) * _wgslsmith_f_op_vec3_f32(-var_0.a.xyy))));
    let var_2 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(274f, var_0.a.x) * _wgslsmith_div_f32(var_1.x, -748f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) + _wgslsmith_f_op_f32(sign(arg_0.e.x))), arg_1.c.x)))));
    return vec4<bool>(false, !arg_1.c.x, any(select(!arg_1.c.zz, vec2<bool>(false, false), any(vec4<bool>(true, arg_0.c.c.x, arg_1.c.x, false)))) & any(!select(vec2<bool>(false, false), vec2<bool>(arg_1.c.x, arg_1.c.x), false)), true);
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    var var_0 = select(func_4(func_2(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-30634i, -1i, -60386i, u_input.b), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)), _wgslsmith_mult_i32(0i, u_input.b), _wgslsmith_mod_i32(-5937i, u_input.b)), vec2<i32>(u_input.b, u_input.b)), func_2(_wgslsmith_div_vec3_i32(abs(vec3<i32>(-2147483647i, -2920i, -13979i)), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 1i, -1i), vec3<i32>(u_input.b, u_input.b, 2147483647i))), firstTrailingBit(-vec2<i32>(u_input.b, 9927i))).c, Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -891f, arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(380f, -820f, arg_0.x, 1506f)))))), !vec4<bool>(_wgslsmith_f_op_f32(round(1459f)) <= _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(73597u, u_input.a, 29299u), vec3<u32>(17379u, u_input.a, 9961u)) > ~0u, !(u_input.a != u_input.a), true), !vec4<bool>(false, false | all(vec2<bool>(true, true)), true, all(vec4<bool>(false, false, false, true)) && func_2(vec3<i32>(1i, -6925i, u_input.b), vec2<i32>(u_input.b, 700i)).c.c.x));
    let var_1 = func_2(firstTrailingBit(-(vec3<i32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(4294967295u, 4294967295u, 5063u) % vec3<u32>(32u))) | countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-22821i, 0i, u_input.b), vec3<i32>(39095i, 25867i, -40539i), vec3<i32>(u_input.b, u_input.b, u_input.b)))), vec2<i32>(u_input.b | _wgslsmith_clamp_i32(~1i, u_input.b ^ -38622i, abs(u_input.b)), -max(u_input.b << (93158u % 32u), -u_input.b)));
    var var_2 = var_1.c.b.xy;
    let var_3 = abs(min(var_1.a.xww, _wgslsmith_add_vec3_u32(var_1.a.wzy, vec3<u32>(var_1.a.x, countOneBits(u_input.a), var_1.a.x))));
    var_0 = func_4(Struct_4(_wgslsmith_mult_vec4_u32(~min(vec4<u32>(u_input.a, 4294967295u, var_1.c.d.x, var_1.c.d.x), vec4<u32>(28170u, u_input.a, 34635u, 4294967295u)), max(min(vec4<u32>(var_1.c.d.x, u_input.a, var_1.a.x, var_1.a.x), var_1.a), ~vec4<u32>(4294967295u, 11803u, 1u, var_1.b))), _wgslsmith_dot_vec3_u32(var_1.a.zwx, ~var_1.a.yxy) ^ (u_input.a & 4294967295u), func_2(vec3<i32>(var_2.x << (4294967295u % 32u), func_2(vec3<i32>(6694i, var_1.c.b.x, 1i), vec2<i32>(var_1.c.b.x, 38063i)).c.b.x, select(2147483647i, 1i, var_0.x)), vec2<i32>(var_2.x, i32(-1i) * -2147483647i)).c, var_1.d, vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-601f - _wgslsmith_f_op_f32(sign(var_1.d.a.x))), 816f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.a.x) * _wgslsmith_f_op_f32(abs(var_1.e.x))))), var_1.c, Struct_2(vec4<f32>(1000f, arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 2168f)))));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    let var_1 = firstTrailingBit(vec2<u32>(u_input.a, ~u_input.a)) | firstTrailingBit(~vec2<u32>(u_input.a, ~1991u));
    var_0 = true;
    let var_2 = !(!vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), 1373u < var_1.x));
    let var_3 = ~min(0u, ~func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-293f, -1304f, 1681f)))));
    var_0 = !var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), _wgslsmith_add_i32(0i, abs(u_input.b)), -(u_input.b | u_input.b)), min(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-16445i, u_input.b, 2147483647i), vec3<i32>(u_input.b, -2147483647i, -6486i)), _wgslsmith_add_vec3_i32(vec3<i32>(-24710i, u_input.b, -2147483647i), vec3<i32>(-19323i, u_input.b, -23678i))), firstLeadingBit(abs(vec3<i32>(u_input.b, u_input.b, u_input.b))))), _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-1538f - _wgslsmith_f_op_f32(floor(-1535f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1543f, _wgslsmith_f_op_f32(f32(-1f) * -507f)) - vec2<f32>(2278f, _wgslsmith_f_op_f32(sign(-388f))))), ~(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(0i, 2147483647i, 0i, u_input.b)), -vec4<i32>(2147483647i, 101173i, u_input.b, 0i), vec4<i32>(u_input.b, 59266i, 2920i, u_input.b) >> (vec4<u32>(var_1.x, 1u, u_input.a, var_3) % vec4<u32>(32u))) | ~vec4<i32>(-12932i, -2147483647i, -29408i, -2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-931f, 1319f, -875f, -934f)) - vec4<f32>(921f, 541f, 1000f, 1283f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1098f, -1972f, 835f, -457f))))));
}

