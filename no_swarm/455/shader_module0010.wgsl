struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<f32> {
    let var_0 = reverseBits(~vec2<i32>(max(~(-1i), -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1, u_input.b, arg_1), ~vec4<i32>(-13881i, u_input.a, u_input.b, u_input.a))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), 358f, -178f), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(select(false, false, false), true, true, true), !select(any(vec3<bool>(false, true, true)), true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2334f, 1705f, -1762f, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1491f, arg_0, arg_0, 771f) + vec4<f32>(arg_0, 749f, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -593f, 429f) - vec4<f32>(-1895f, -888f, arg_0, -1749f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 558f, arg_0, 1074f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(526f, 132f, arg_0, arg_0), vec4<f32>(791f, arg_0, arg_0, -684f), true)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2384f, -663f, arg_0), vec3<f32>(arg_0, arg_0, arg_0), true)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 133f, -2417f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2245f, arg_0, -1201f) * vec3<f32>(684f, 529f, arg_0)), vec3<f32>(arg_0, arg_0, -245f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 235f, 1446f), vec3<f32>(-1992f, 957f, arg_0)))), any(vec4<bool>(true, true, true, true)) && false)), arg_0);
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.xw) + var_1.c.yw)));
    let var_3 = Struct_4(Struct_2(Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(var_1.d.x * var_2.x), 554f), vec4<bool>(false, all(vec4<bool>(var_1.b.x, var_1.b.x, false, true)), var_1.d.x > 388f, any(var_1.b.yx)), vec4<f32>(_wgslsmith_f_op_f32(abs(1342f)), -1147f, 1793f, _wgslsmith_f_op_f32(step(221f, arg_0))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-250f, arg_0, -894f)), _wgslsmith_f_op_vec3_f32(min(var_1.c.xxz, vec3<f32>(-722f, 810f, -1000f))))), _wgslsmith_f_op_f32(trunc(var_2.x))), Struct_1(_wgslsmith_f_op_vec3_f32(select(var_1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1417f, arg_0, -747f) - var_1.c.www), true)), !(!vec4<bool>(true, false, var_1.b.x, var_1.b.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_1.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_1.e, -811f)) + _wgslsmith_f_op_vec3_f32(-var_1.d)), var_2.x), var_1, vec3<u32>(60279u, 0u, 1u), Struct_1(var_1.c.xwx, vec4<bool>(!var_1.b.x, var_1.b.x, any(vec2<bool>(true, true)), all(vec3<bool>(true, var_1.b.x, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(140f, arg_0, arg_0, 565f) - var_1.c), var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, arg_0)))), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(1475f, -397f)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(arg_0 * 988f)), var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 1252f, var_1.e, arg_0) - var_1.c)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, 746f, var_1.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-987f, arg_0, 2603f) - var_1.c.zxw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.x)))), var_1, Struct_1(var_1.d, vec4<bool>(!var_1.b.x, select(false, true, false), false, true), var_1.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(186f, 454f, 1476f), vec3<f32>(var_1.e, -214f, 1495f))))), _wgslsmith_f_op_f32(trunc(352f))), ~vec3<u32>(1u, 1u, 1u), var_1), Struct_3(_wgslsmith_f_op_f32(floor(-604f)), _wgslsmith_clamp_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(-36570i, arg_1), vec2<i32>(arg_1, arg_1))), var_0, ~var_0), 17517u, var_2.x));
    var var_4 = var_3.a;
    return _wgslsmith_f_op_vec4_f32(-var_4.b.c);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-894f, 212f, 766f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-226f, -1193f, -648f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1805f, -1172f, 1000f) * vec3<f32>(178f, -1000f, -1563f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(vec2<bool>(false, false)), false), vec4<bool>(false, false, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(142f, 34033i))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-881f)), -1171f, 2167f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-808f, -744f, true)), _wgslsmith_f_op_f32(max(-237f, 1276f)))) + -1000f)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_div_f32(-957f, -488f), _wgslsmith_f_op_f32(f32(-1f) * -1039f))), vec4<bool>(false, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.a, u_input.b), vec4<i32>(u_input.b, -51798i, u_input.b, 18407i)) >= u_input.a, true, all(vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1486f, -2437f, 1835f, -290f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(184f, -191f, -624f, 957f))), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(1240f - -225f), _wgslsmith_f_op_f32(max(1010f, -1369f)), 686f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-642f, -124f, 246f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-169f - _wgslsmith_div_f32(2478f, 606f)), -1230f)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(127f, -296f, -1505f)) - vec3<f32>(_wgslsmith_f_op_f32(min(798f, -547f)), _wgslsmith_f_op_f32(trunc(-228f)), _wgslsmith_f_op_f32(-476f + -389f))), vec4<bool>(true, any(vec2<bool>(true, false)), false, false), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-313f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1640f + 932f), _wgslsmith_f_op_f32(sign(-716f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1045f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(max(-1000f, -191f)), reverseBits(22851i))).x)), vec3<u32>(~(~0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 62937u, 1u, 0u), ~vec4<u32>(4294967295u, 0u, 4294967295u, 3389u)) | countOneBits(firstTrailingBit(1u)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(42643u, 22590u), vec2<u32>(27183u, 63274u)) ^ 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 81597u), abs(vec2<u32>(42491u, 46479u))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(485f, -124f, -881f))))), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(122f, -742f, 752f, 883f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-186f, -1151f, -504f, -1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1914f, -545f, -1455f, -3171f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, -646f, 397f, 1645f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(688f, 1317f, 310f))), _wgslsmith_div_vec3_f32(vec3<f32>(253f, 1104f, -1641f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-626f, 1677f, -1526f), vec3<f32>(702f, -777f, -1389f), vec3<bool>(false, false, false)))))), 1652f));
    let var_1 = Struct_3(var_0.b.d.x, min(-vec2<i32>(u_input.b, 236i) | select(select(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.b), var_0.c.b.x), ~vec2<i32>(u_input.a, u_input.a), vec2<bool>(var_0.a.b.x, var_0.b.b.x)), countOneBits(vec2<i32>(u_input.a, 2147483647i) >> (_wgslsmith_sub_vec2_u32(var_0.d.xz, vec2<u32>(var_0.d.x, 54988u)) % vec2<u32>(32u)))), _wgslsmith_sub_u32(~48727u, var_0.d.x), _wgslsmith_f_op_f32(-var_0.c.e));
    let var_2 = Struct_5(Struct_4(Struct_2(Struct_1(vec3<f32>(var_0.a.e, 309f, var_1.a), var_0.c.b, var_0.b.c, _wgslsmith_f_op_vec3_f32(trunc(var_0.e.c.wyz)), _wgslsmith_f_op_f32(var_1.d + var_0.a.a.x)), var_0.e, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-629f, -299f, -135f) + vec3<f32>(var_1.d, 609f, 822f)), var_0.b.b, var_0.e.c, vec3<f32>(var_1.a, var_0.c.c.x, -1254f), _wgslsmith_f_op_f32(trunc(-572f))), _wgslsmith_mod_vec3_u32(var_0.d, vec3<u32>(var_0.d.x, var_0.d.x, 39569u)) << (firstLeadingBit(var_0.d) % vec3<u32>(32u)), var_0.c), var_0, Struct_3(_wgslsmith_f_op_f32(exp2(var_1.d)), _wgslsmith_sub_vec2_i32(var_1.b, var_1.b) ^ min(var_1.b, var_1.b), firstTrailingBit(72359u), _wgslsmith_f_op_f32(-742f * var_1.a))), vec3<bool>(var_0.e.b.x, var_0.b.b.x, true), ~(_wgslsmith_div_vec2_i32(var_1.b, var_1.b) >> (abs(~var_0.d.yx) % vec2<u32>(32u))));
    var var_3 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.a.b.c.x), _wgslsmith_f_op_f32(-1354f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-715f + 1000f))))), -var_2.c, var_1.c, _wgslsmith_f_op_f32(-var_1.d));
    var_3 = var_1;
    return Struct_4(Struct_2(Struct_1(var_2.a.b.a.d, var_2.a.b.c.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e.c) - vec4<f32>(759f, 1299f, var_1.d, 116f)), _wgslsmith_f_op_vec4_f32(func_3(var_3.a, 1i)).yxy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1188f * var_1.a)))), var_2.a.a.e, var_2.a.b.a, ~(~_wgslsmith_sub_vec3_u32(var_2.a.a.d, vec3<u32>(1u, 11404u, 4294967295u))), Struct_1(var_0.b.a, var_2.a.b.b.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-240f, -1000f, var_1.a, var_1.d), vec4<f32>(var_0.e.a.x, var_3.a, -1000f, 333f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.c.d, var_3.a, -680f, var_3.a)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(var_2.a.b.c.a, var_0.e.d, vec3<bool>(var_2.a.b.b.b.x, var_2.a.b.b.b.x, false))), _wgslsmith_f_op_vec3_f32(max(var_0.e.a, vec3<f32>(var_2.a.a.e.e, 705f, var_1.a))))), var_2.a.c.a)), var_0, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f)), vec2<i32>(abs(-18201i), u_input.a), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 22806u), var_3.c >> (var_2.a.a.d.x % 32u)), var_3.d));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    var var_1 = true;
    let var_2 = func_2();
    var var_3 = Struct_3(670f, var_2.c.b & -vec2<i32>(-1i, firstLeadingBit(var_0.c.b.x)), var_0.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(890f - _wgslsmith_f_op_f32(-var_0.c.d)) * var_2.a.e.c.x));
    var var_4 = func_2().b.a;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(var_2.b.c.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, var_2.c.d, -200f) * vec3<f32>(var_4.a.x, 634f, -1960f)))), vec4<bool>(select(false, var_0.b.a.b.x, false), !any(vec4<bool>(var_0.a.e.b.x, var_4.b.x, false, var_4.b.x)), true, any(!var_2.b.b.b.yww)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4.c - vec4<f32>(2158f, -1550f, 1209f, var_0.b.e.a.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1331f, -1515f, var_0.a.b.d.x, 135f), vec4<f32>(582f, 1064f, var_2.c.d, var_3.d)))), var_2.a.e.c)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4.d.x, var_0.b.c.d.x, -1979f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.d)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.x, var_3.d, var_0.b.c.e)) * _wgslsmith_f_op_vec3_f32(min(var_2.b.c.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d, -372f, var_0.c.a))))), vec4<bool>(var_3.d < _wgslsmith_f_op_f32(-var_4.c.x), true, true, _wgslsmith_clamp_i32(-1i, u_input.a, 2147483647i) > firstLeadingBit(-4010i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_4.d.x, var_3.d), _wgslsmith_f_op_f32(trunc(-2307f)), _wgslsmith_f_op_f32(var_2.b.a.d.x + var_3.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * var_0.b.e.c), var_4.a, -368f), var_0.a.b, _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_2.b.d, _wgslsmith_mult_vec3_u32(var_2.b.d | vec3<u32>(44320u, 71023u, 4294967295u), var_0.b.d << (var_0.a.d % vec3<u32>(32u)))), firstLeadingBit(~vec3<u32>(88734u, var_0.b.d.x, 12470u))), func_2().a.c);
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    var var_0 = select(_wgslsmith_add_u32(arg_0.d.x, abs(arg_0.d.x)) & arg_0.d.x, _wgslsmith_sub_u32(~arg_0.d.x, 1u), false);
    var var_1 = Struct_4(arg_0, arg_0, func_2().c);
    let var_2 = -vec3<i32>(~37376i, var_1.c.b.x, _wgslsmith_add_i32(u_input.b, func_2().c.b.x));
    let var_3 = var_1.c;
    var var_4 = Struct_5(Struct_4(func_2().b, Struct_2(func_2().a.c, Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.c.c.yzz - vec3<f32>(arg_0.c.e, var_3.a, var_1.b.a.d.x)), select(vec4<bool>(false, arg_0.c.b.x, true, var_1.a.b.b.x), arg_0.c.b, vec4<bool>(false, true, arg_0.b.b.x, arg_0.c.b.x)), _wgslsmith_f_op_vec4_f32(min(var_1.b.e.c, var_1.a.b.c)), arg_0.a.a, _wgslsmith_f_op_f32(sign(var_3.d))), arg_0.c, countOneBits(vec3<u32>(arg_0.d.x, 4396u, 44674u)) | vec3<u32>(var_1.a.d.x, arg_0.d.x, 61650u), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d, 1907f, 1680f)), select(var_1.b.c.b, vec4<bool>(arg_0.b.b.x, var_1.b.b.b.x, arg_0.c.b.x, false), var_1.a.c.b.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1067f, var_3.a, arg_0.a.e, -1397f))), vec3<f32>(1630f, var_3.d, arg_0.c.d.x), _wgslsmith_f_op_f32(-arg_0.e.d.x))), Struct_3(arg_0.a.d.x, _wgslsmith_mult_vec2_i32(vec2<i32>(-13868i, var_3.b.x), var_1.c.b) ^ vec2<i32>(0i, var_3.b.x), ~(~var_3.c), -1220f)), var_1.b.e.b.zzw, max(-select(var_2.yz, ~vec2<i32>(var_2.x, 3872i), !vec2<bool>(arg_0.a.b.x, true)), abs(firstTrailingBit(_wgslsmith_mult_vec2_i32(var_3.b, vec2<i32>(26480i, var_2.x))))));
    return func_2();
}

fn func_5(arg_0: Struct_4, arg_1: bool) -> Struct_5 {
    var var_0 = vec2<bool>(arg_1, _wgslsmith_mult_u32(23136u << ((arg_0.c.c >> (arg_0.c.c % 32u)) % 32u), ~reverseBits(4294967295u)) != arg_0.b.d.x);
    return Struct_5(func_2(), func_4(func_4(func_4(arg_0.b).a).a).a.b.b.wxy, arg_0.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = _wgslsmith_sub_vec3_u32(~(_wgslsmith_add_vec3_u32(~vec3<u32>(6732u, 1u, 51021u), vec3<u32>(1u, 1u, 1u)) ^ vec3<u32>(max(3908u, 44013u), 4294967295u >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 2219u, 26024u), vec4<u32>(1u, 4072u, 1u, 18471u)))), ~vec3<u32>(1u, 1u, 1u));
    var var_2 = ~0u;
    var var_3 = u_input.a;
    var_0 = countOneBits(_wgslsmith_sub_u32(69465u, _wgslsmith_dot_vec3_u32(var_1, ~vec3<u32>(var_1.x, var_1.x, var_1.x))) << ((~var_1.x >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 18048u, var_1.x), vec4<u32>(4294967295u, var_1.x, 4294967295u, 4294967295u)) % 32u)) % 32u));
    var_0 = var_1.x | 1u;
    let var_4 = true;
    var var_5 = func_5(func_4(func_1()), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.a.e.c.x, 24266u, _wgslsmith_dot_vec3_u32(func_5(var_5.a, var_5.b.x).a.b.d, var_1), countOneBits(min(-vec4<i32>(u_input.b, 39525i, u_input.b, -2147483647i) >> (~vec4<u32>(1u, var_5.a.c.c, 82472u, var_5.a.b.d.x) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(0i, 39744i, u_input.b, -2147483647i)) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_5.c.x, -1i), vec4<i32>(-15637i, var_5.a.c.b.x, -43013i, u_input.a)))), var_5.a.a.e.d);
}

