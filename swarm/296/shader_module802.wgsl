struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(arg_2, ~(~(~21940u))));
    return arg_0;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<i32> {
    var var_0 = ~abs(_wgslsmith_div_vec4_u32(~u_input.c, u_input.c));
    var var_1 = arg_1;
    var_0 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, arg_0.x, u_input.c.x, 0u), vec4<u32>(~5356u, ~1u, 1u, arg_0.x & 19428u)), vec4<u32>(46954u, _wgslsmith_add_u32(_wgslsmith_mult_u32(25464u, firstTrailingBit(0u)), u_input.e.x), var_0.x, 34229u), _wgslsmith_div_vec4_u32(u_input.c, u_input.c));
    var var_2 = ~(~arg_0.yx);
    var_1 = func_1(Struct_2(Struct_1(arg_1.a >> (vec3<u32>(0u, 4294967295u, var_0.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(520f * _wgslsmith_f_op_f32(round(2449f)))), Struct_1(arg_1.a), func_1(Struct_2(func_1(Struct_2(Struct_1(arg_1.a), 924f, arg_1, Struct_1(arg_1.a), arg_1.a.x), vec4<f32>(-464f, 652f, 1334f, 607f), u_input.a, Struct_2(Struct_1(vec3<i32>(arg_1.a.x, 0i, var_1.a.x)), 797f, Struct_1(arg_1.a), arg_1, arg_1.a.x)).c, _wgslsmith_f_op_f32(-1000f - -433f), arg_1, Struct_1(arg_1.a), 15031i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-419f, 526f, -1223f, 1240f))), var_0.x, func_1(Struct_2(arg_1, 1000f, arg_1, Struct_1(var_1.a), -11499i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-750f, -1132f, 639f, -812f)), abs(var_2.x), Struct_2(arg_1, 1774f, arg_1, Struct_1(vec3<i32>(u_input.b.x, 10073i, arg_1.a.x)), u_input.d))).c, ~u_input.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-759f, -1389f, 1312f, 1512f), vec4<f32>(-245f, -187f, -2144f, 1270f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(844f, 812f, 399f, 1139f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1793f), -1148f, 476f, _wgslsmith_f_op_f32(step(-1000f, -1532f))))), reverseBits(var_0.x), func_1(Struct_2(arg_1, _wgslsmith_f_op_f32(step(-882f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_1, arg_1, -28176i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-459f)), -951f, 740f, func_1(Struct_2(arg_1, 492f, Struct_1(vec3<i32>(-17808i, var_1.a.x, arg_2.x)), arg_1, 2147483647i), vec4<f32>(1000f, 1735f, -1238f, -800f), 1u, Struct_2(arg_1, -1000f, arg_1, Struct_1(vec3<i32>(u_input.b.x, arg_1.a.x, arg_2.x)), u_input.d)).b)), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.c.x, 48592u), vec3<u32>(37347u, var_2.x, var_0.x))), arg_0.x), func_1(Struct_2(Struct_1(var_1.a), 1674f, func_1(Struct_2(Struct_1(arg_1.a), -511f, arg_1, Struct_1(vec3<i32>(var_1.a.x, -1i, 2147483647i)), -45669i), vec4<f32>(564f, -883f, -1000f, -453f), 0u, Struct_2(Struct_1(var_1.a), -1210f, Struct_1(vec3<i32>(12394i, 1257i, arg_1.a.x)), arg_1, 54021i)).c, arg_1, 1i), vec4<f32>(_wgslsmith_f_op_f32(-308f + 1541f), _wgslsmith_f_op_f32(min(133f, 1655f)), _wgslsmith_f_op_f32(step(-1214f, 2342f)), _wgslsmith_div_f32(-1692f, 377f)), ~u_input.c.x, func_1(Struct_2(Struct_1(var_1.a), -944f, Struct_1(var_1.a), arg_1, arg_1.a.x), vec4<f32>(1f, 1f, 1f, 1f), 1u, Struct_2(Struct_1(var_1.a), -607f, arg_1, Struct_1(var_1.a), u_input.d))))).d;
    return -arg_1.a ^ _wgslsmith_mod_vec3_i32(abs(~firstLeadingBit(var_1.a)), select(min(~vec3<i32>(u_input.d, arg_2.x, var_1.a.x), vec3<i32>(arg_1.a.x, 1i, u_input.d)), var_1.a, vec3<bool>(arg_0.x > 0u, true, true)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = firstLeadingBit(-firstLeadingBit(7593i) | ~(-arg_1.c.a.x)) < ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, 1i), firstLeadingBit(_wgslsmith_div_i32(-1i, arg_0)));
    let var_1 = arg_1.c;
    let var_2 = func_1(Struct_2(arg_1.a, 411f, Struct_1(func_3(u_input.c.www, Struct_1(vec3<i32>(arg_0, var_1.a.x, 0i)), select(u_input.b, arg_1.c.a.zy, vec2<bool>(true, false)))), func_1(Struct_2(arg_1.a, arg_1.b, func_1(Struct_2(Struct_1(var_1.a), arg_1.b, arg_1.c, Struct_1(var_1.a), arg_1.a.a.x), vec4<f32>(282f, arg_1.b, 1612f, -164f), u_input.c.x, Struct_2(Struct_1(var_1.a), 338f, Struct_1(var_1.a), var_1, u_input.d)).d, arg_1.c, firstLeadingBit(arg_0)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(589f, arg_1.b, arg_1.b, arg_1.b)))), 79756u, Struct_2(func_1(Struct_2(var_1, -440f, arg_1.c, Struct_1(arg_1.a.a), -2147483647i), vec4<f32>(arg_1.b, arg_1.b, 134f, arg_1.b), u_input.e.x, Struct_2(var_1, -1788f, var_1, Struct_1(var_1.a), 0i)).d, _wgslsmith_f_op_f32(ceil(-1602f)), Struct_1(vec3<i32>(arg_0, u_input.d, arg_0)), arg_1.c, -1i)).a, -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, 10710i, u_input.b.x), vec4<i32>(arg_0, u_input.d, u_input.b.x, 1503i)) | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -43137i, 10244i, 2147483647i), ~vec4<i32>(-2147483647i, 17813i, arg_0, u_input.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b, arg_1.b, 226f, -2312f), vec4<f32>(arg_1.b, arg_1.b, -664f, -1138f))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)), -718f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b))), -141f)), 4294967295u, func_1(func_1(func_1(func_1(arg_1, vec4<f32>(arg_1.b, arg_1.b, 372f, arg_1.b), 0u, Struct_2(Struct_1(vec3<i32>(arg_1.a.a.x, arg_1.a.a.x, 0i)), arg_1.b, Struct_1(vec3<i32>(arg_1.a.a.x, var_1.a.x, var_1.a.x)), Struct_1(vec3<i32>(-1i, 2147483647i, arg_0)), u_input.b.x)), vec4<f32>(arg_1.b, arg_1.b, -882f, arg_1.b), select(u_input.c.x, 53302u, var_0), func_1(arg_1, vec4<f32>(-390f, 831f, arg_1.b, arg_1.b), 0u, arg_1)), vec4<f32>(_wgslsmith_f_op_f32(arg_1.b - -704f), _wgslsmith_f_op_f32(abs(arg_1.b)), 1f, _wgslsmith_f_op_f32(-arg_1.b)), max(0u << (0u % 32u), _wgslsmith_div_u32(u_input.a, 43148u)), arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(559f, 671f, -2584f, -674f), vec4<f32>(549f, arg_1.b, 1535f, -579f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b))), _wgslsmith_mod_u32(~(~13349u), 1u), arg_1));
    let var_3 = select(vec2<i32>(-_wgslsmith_mod_i32(var_1.a.x, 45382i), 0i), select(_wgslsmith_sub_vec2_i32(var_2.c.a.zy, u_input.b), arg_1.a.a.zy, vec2<bool>(var_0, false)) >> (vec2<u32>(~u_input.a, ~u_input.c.x) % vec2<u32>(32u)), !(!(!vec2<bool>(true, var_0)))) ^ vec2<i32>(firstTrailingBit(-17656i), -2147483647i);
    let var_4 = arg_1.d.a.x;
    return arg_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(min(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(34144i, u_input.b.x, 19087i), vec3<i32>(u_input.b.x, -10914i, u_input.d)), u_input.d, 2147483647i), func_2(u_input.d >> (0u % 32u), func_1(Struct_2(Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, -1i)), -556f, Struct_1(vec3<i32>(1i, 2147483647i, 0i)), Struct_1(vec3<i32>(34133i, 0i, u_input.b.x)), 15634i), vec4<f32>(-908f, -232f, -704f, -1000f), 25922u, Struct_2(Struct_1(vec3<i32>(-2147483647i, u_input.b.x, u_input.d)), -1000f, Struct_1(vec3<i32>(u_input.b.x, 2147483647i, -14263i)), Struct_1(vec3<i32>(u_input.b.x, -22083i, 34747i)), -2147483647i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(340f * -1731f)))))), func_1(func_1(func_1(func_1(Struct_2(Struct_1(vec3<i32>(u_input.b.x, u_input.d, u_input.d)), 2100f, Struct_1(vec3<i32>(u_input.b.x, 57844i, u_input.d)), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), u_input.d), vec4<f32>(-113f, -177f, -157f, 195f), u_input.c.x, Struct_2(Struct_1(vec3<i32>(1i, u_input.d, u_input.b.x)), -187f, Struct_1(vec3<i32>(u_input.d, u_input.b.x, u_input.b.x)), Struct_1(vec3<i32>(0i, 85386i, 0i)), 1i)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1585f, -2059f, -828f, -1231f), vec4<f32>(868f, 805f, 1744f, -374f))), _wgslsmith_mult_u32(u_input.a, u_input.a), func_1(Struct_2(Struct_1(vec3<i32>(u_input.d, u_input.d, u_input.d)), 297f, Struct_1(vec3<i32>(u_input.b.x, u_input.d, u_input.d)), Struct_1(vec3<i32>(u_input.d, u_input.b.x, u_input.b.x)), u_input.d), vec4<f32>(729f, 1036f, 2558f, 648f), 0u, Struct_2(Struct_1(vec3<i32>(16983i, 1i, -17847i)), 922f, Struct_1(vec3<i32>(u_input.b.x, -37873i, -2147483647i)), Struct_1(vec3<i32>(-2147483647i, u_input.d, u_input.b.x)), u_input.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-912f, 2077f, -783f, 891f)))), 0u, func_1(func_1(Struct_2(Struct_1(vec3<i32>(u_input.d, u_input.d, -18005i)), 784f, Struct_1(vec3<i32>(-12i, 1i, u_input.d)), Struct_1(vec3<i32>(55558i, u_input.d, -2147483647i)), 0i), vec4<f32>(181f, 289f, 1160f, 399f), u_input.c.x, Struct_2(Struct_1(vec3<i32>(44890i, -7055i, u_input.b.x)), -551f, Struct_1(vec3<i32>(u_input.d, u_input.b.x, u_input.b.x)), Struct_1(vec3<i32>(41704i, 61704i, u_input.b.x)), u_input.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1192f, -168f, -1792f, -1084f)), _wgslsmith_dot_vec3_u32(vec3<u32>(46607u, u_input.c.x, 1926u), u_input.c.xzz), Struct_2(Struct_1(vec3<i32>(u_input.d, -2147483647i, u_input.d)), -408f, Struct_1(vec3<i32>(u_input.d, 27064i, -12937i)), Struct_1(vec3<i32>(0i, -1i, u_input.d)), 0i))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1273f), _wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(915f * -470f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1198f, -1574f))), abs(~(~4294967295u)), func_1(func_1(func_1(Struct_2(Struct_1(vec3<i32>(-1i, -2147483647i, -8971i)), -107f, Struct_1(vec3<i32>(8838i, u_input.b.x, u_input.b.x)), Struct_1(vec3<i32>(u_input.b.x, -32377i, -29708i)), u_input.d), vec4<f32>(-1416f, 479f, 654f, 231f), 51043u, Struct_2(Struct_1(vec3<i32>(-2147483647i, u_input.b.x, u_input.d)), 1000f, Struct_1(vec3<i32>(-29611i, -2147483647i, -1i)), Struct_1(vec3<i32>(u_input.d, 2147483647i, 2147483647i)), u_input.d)), vec4<f32>(191f, 262f, 260f, -1087f), u_input.e.x >> (42009u % 32u), func_1(Struct_2(Struct_1(vec3<i32>(u_input.b.x, 2147483647i, u_input.d)), 1370f, Struct_1(vec3<i32>(u_input.b.x, 30538i, 49818i)), Struct_1(vec3<i32>(0i, u_input.d, u_input.d)), u_input.d), vec4<f32>(-1076f, 960f, 848f, -795f), 1u, Struct_2(Struct_1(vec3<i32>(29606i, 2147483647i, -28820i)), 812f, Struct_1(vec3<i32>(2147483647i, 0i, -31972i)), Struct_1(vec3<i32>(u_input.b.x, -37423i, u_input.d)), u_input.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1038f, 168f, 521f, 616f)), 58159u, Struct_2(func_1(Struct_2(Struct_1(vec3<i32>(1i, u_input.b.x, -13197i)), -440f, Struct_1(vec3<i32>(17845i, 0i, 2147483647i)), Struct_1(vec3<i32>(-7396i, u_input.b.x, -11878i)), -23213i), vec4<f32>(674f, -1687f, 245f, 537f), 29620u, Struct_2(Struct_1(vec3<i32>(u_input.d, -2147483647i, 2147483647i)), 629f, Struct_1(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), Struct_1(vec3<i32>(-2147483647i, -6011i, -2147483647i)), u_input.d)).a, -1757f, Struct_1(vec3<i32>(u_input.d, u_input.d, -5832i)), Struct_1(vec3<i32>(0i, 1i, 1i)), 1i))).c, func_1(Struct_2(func_1(func_1(Struct_2(Struct_1(vec3<i32>(2147483647i, 54398i, u_input.b.x)), -925f, Struct_1(vec3<i32>(-31925i, 2147483647i, u_input.b.x)), Struct_1(vec3<i32>(u_input.b.x, 36297i, 21624i)), 2147483647i), vec4<f32>(-519f, 298f, -167f, 194f), u_input.a, Struct_2(Struct_1(vec3<i32>(8212i, 35845i, 1i)), 1476f, Struct_1(vec3<i32>(-24443i, u_input.b.x, -40044i)), Struct_1(vec3<i32>(u_input.d, -20452i, -2147483647i)), 2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1828f, -767f, 406f, -499f)), 16259u, func_1(Struct_2(Struct_1(vec3<i32>(21209i, 2147483647i, u_input.b.x)), -213f, Struct_1(vec3<i32>(u_input.d, 2147483647i, 1i)), Struct_1(vec3<i32>(u_input.b.x, -26515i, 1i)), 0i), vec4<f32>(1454f, 1780f, -1000f, -1193f), 4294967295u, Struct_2(Struct_1(vec3<i32>(-1i, -23154i, u_input.d)), 932f, Struct_1(vec3<i32>(u_input.d, u_input.d, u_input.d)), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, -67059i)), -20726i))).c, -225f, func_1(func_1(Struct_2(Struct_1(vec3<i32>(u_input.d, u_input.b.x, u_input.d)), -274f, Struct_1(vec3<i32>(u_input.d, 28538i, u_input.d)), Struct_1(vec3<i32>(u_input.d, u_input.d, u_input.d)), -1914i), vec4<f32>(1832f, -1154f, -148f, -1000f), 82342u, Struct_2(Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 0i)), 381f, Struct_1(vec3<i32>(6306i, 1i, 0i)), Struct_1(vec3<i32>(16502i, -8513i, u_input.d)), -40221i)), _wgslsmith_div_vec4_f32(vec4<f32>(996f, 1000f, -249f, 1000f), vec4<f32>(340f, -777f, -465f, 1417f)), countOneBits(0u), func_1(Struct_2(Struct_1(vec3<i32>(u_input.d, u_input.b.x, u_input.d)), -227f, Struct_1(vec3<i32>(15621i, u_input.b.x, u_input.d)), Struct_1(vec3<i32>(40506i, u_input.b.x, u_input.d)), 26194i), vec4<f32>(-149f, 391f, 1626f, -1333f), 51929u, Struct_2(Struct_1(vec3<i32>(1i, u_input.b.x, 24381i)), 606f, Struct_1(vec3<i32>(u_input.b.x, -36732i, u_input.d)), Struct_1(vec3<i32>(u_input.d, -2147483647i, -1i)), u_input.d))).d, func_1(Struct_2(Struct_1(vec3<i32>(u_input.d, -1i, -14379i)), 1795f, Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.d)), Struct_1(vec3<i32>(28922i, 3370i, u_input.b.x)), 25599i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1279f, 674f, 535f, 320f) - vec4<f32>(780f, 2131f, -165f, -844f)), _wgslsmith_mod_u32(u_input.e.x, 1u), Struct_2(Struct_1(vec3<i32>(-1i, -1i, u_input.d)), 456f, Struct_1(vec3<i32>(0i, u_input.b.x, u_input.b.x)), Struct_1(vec3<i32>(1i, -24512i, 10223i)), -6080i)).c, u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-541f, 1178f, -265f, -603f), vec4<f32>(-250f, 903f, -588f, 1715f))))), _wgslsmith_sub_u32(~314u << (u_input.a % 32u), u_input.a), Struct_2(Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.d) << (u_input.c.yzy % vec3<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-318f - 1000f))), func_1(func_1(Struct_2(Struct_1(vec3<i32>(-17094i, -60386i, u_input.b.x)), -133f, Struct_1(vec3<i32>(u_input.b.x, u_input.d, -12962i)), Struct_1(vec3<i32>(0i, 2137i, 0i)), 2147483647i), vec4<f32>(-1542f, -2534f, 1974f, -1227f), 72378u, Struct_2(Struct_1(vec3<i32>(-51839i, u_input.d, u_input.d)), 1000f, Struct_1(vec3<i32>(u_input.d, 9622i, u_input.d)), Struct_1(vec3<i32>(-2147483647i, 1i, 36528i)), u_input.d)), vec4<f32>(-524f, 275f, 998f, 1412f), u_input.a, func_1(Struct_2(Struct_1(vec3<i32>(0i, -1i, 18852i)), 330f, Struct_1(vec3<i32>(u_input.d, -27667i, 0i)), Struct_1(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), -1i), vec4<f32>(1093f, -139f, 740f, 117f), 26520u, Struct_2(Struct_1(vec3<i32>(u_input.b.x, u_input.d, u_input.b.x)), 1004f, Struct_1(vec3<i32>(1i, 0i, -6813i)), Struct_1(vec3<i32>(-1i, u_input.b.x, u_input.b.x)), u_input.d))).c, Struct_1(-vec3<i32>(u_input.d, u_input.b.x, u_input.d)), _wgslsmith_mult_i32(u_input.b.x | 1i, func_3(u_input.c.wzw, Struct_1(vec3<i32>(-2147483647i, u_input.d, 40735i)), vec2<i32>(u_input.d, u_input.d)).x))).a, u_input.d);
    var var_1 = var_0;
    var var_2 = -279f;
    var var_3 = var_0;
    var_2 = 188f;
    var var_4 = var_0;
    let var_5 = Struct_2(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.b))), func_1(func_1(func_1(func_1(Struct_2(var_3.a, 218f, Struct_1(vec3<i32>(u_input.b.x, var_3.c.a.x, var_3.d.a.x)), var_4.a, var_4.d.a.x), vec4<f32>(-1141f, var_1.b, var_4.b, var_0.b), u_input.c.x, Struct_2(Struct_1(vec3<i32>(var_3.e, u_input.b.x, u_input.d)), var_1.b, var_3.d, var_3.c, u_input.d)), _wgslsmith_div_vec4_f32(vec4<f32>(1005f, var_3.b, var_4.b, 717f), vec4<f32>(-2338f, -1000f, var_0.b, -364f)), min(u_input.c.x, u_input.a), func_1(var_0, vec4<f32>(var_4.b, -521f, var_0.b, 558f), 1u, var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(110f, -236f, var_4.b, 656f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-265f, 739f, var_4.b, 361f) + vec4<f32>(-1497f, var_3.b, var_4.b, var_1.b))), min(50815u, 1u) ^ u_input.a, func_1(Struct_2(var_0.d, var_3.b, var_1.d, Struct_1(var_3.d.a), var_1.c.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(453f, -1578f, var_1.b, var_4.b)), 28091u, var_0)), vec4<f32>(var_3.b, var_4.b, var_3.b, _wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(round(128f)), true))), 1u, func_1(var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(1724f, 256f, -415f, 1969f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-755f, var_1.b, 118f, -785f) - vec4<f32>(var_1.b, 1101f, var_3.b, 1000f))), u_input.e.x, func_1(func_1(Struct_2(Struct_1(vec3<i32>(1i, 38246i, 1i)), -1896f, Struct_1(var_1.c.a), Struct_1(var_3.d.a), -17256i), vec4<f32>(var_0.b, 480f, -586f, -2424f), 31871u, var_0), vec4<f32>(143f, 334f, var_3.b, var_4.b), ~0u, var_0))).d, func_1(func_1(Struct_2(var_0.d, _wgslsmith_f_op_f32(175f * 186f), func_1(Struct_2(Struct_1(vec3<i32>(1i, var_4.d.a.x, 2147483647i)), var_3.b, var_1.c, Struct_1(vec3<i32>(u_input.d, -1i, 0i)), var_0.d.a.x), vec4<f32>(var_3.b, -612f, 394f, 147f), 4294967295u, Struct_2(Struct_1(vec3<i32>(var_1.c.a.x, var_0.e, 15769i)), 747f, Struct_1(vec3<i32>(var_3.d.a.x, var_3.e, var_4.a.a.x)), Struct_1(var_4.c.a), var_3.a.a.x)).c, func_1(Struct_2(var_3.d, var_3.b, Struct_1(var_1.c.a), var_3.c, var_1.a.a.x), vec4<f32>(var_3.b, 1636f, 207f, 272f), u_input.e.x, Struct_2(var_1.c, var_4.b, var_4.c, var_1.a, -30357i)).d, -10631i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -1000f, -816f, var_3.b))), _wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(1u, u_input.a)) ^ 12461u, var_0), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b, -809f, var_0.b, -3040f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, var_0.b, var_4.b, var_4.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1502f, -1000f, -714f, 671f)))), u_input.c.x, func_1(var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-198f, var_0.b, 1446f, var_1.b)), _wgslsmith_dot_vec2_u32(select(u_input.e.yx, u_input.e.zy, vec2<bool>(true, true)), u_input.c.zw << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), Struct_2(var_0.d, _wgslsmith_f_op_f32(round(-2528f)), func_1(var_0, vec4<f32>(var_3.b, var_4.b, var_3.b, -1194f), 1u, Struct_2(Struct_1(vec3<i32>(var_3.e, 1i, var_0.d.a.x)), -132f, var_1.a, var_1.a, var_1.c.a.x)).c, var_4.d, 1i))).d, -var_3.c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(327f)))), var_3.b), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.b, var_0.b), vec2<f32>(-1879f, 549f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1613f, 367f) + vec2<f32>(-1000f, var_1.b))))), vec2<bool>(true, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_5.b, var_0.b)) * 1f)))), (1u & ~_wgslsmith_sub_u32(u_input.c.x, 4654u)) & _wgslsmith_sub_u32(u_input.e.x, ~(~470u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2185f, var_4.b, var_1.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, 837f, var_1.b) - vec3<f32>(1305f, var_1.b, -1814f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b, var_0.b, -551f), vec3<f32>(var_4.b, 1578f, var_4.b), false)))), vec3<bool>(u_input.e.x < ~12623u, true, true))), _wgslsmith_f_op_f32(sign(var_5.b)));
}

