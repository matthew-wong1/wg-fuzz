struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25>;

var<private> global1: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(1u, 36691u, 31989u), vec3<u32>(46522u, 0u, 24171u), vec3<u32>(7915u, 21414u, 0u), vec3<u32>(892u, 47211u, 1u), vec3<u32>(1u, 0u, 13015u), vec3<u32>(24394u, 24189u, 1u), vec3<u32>(4294967295u, 17919u, 0u), vec3<u32>(0u, 4294967295u, 46040u), vec3<u32>(1u, 0u, 60952u), vec3<u32>(1u, 49113u, 8530u), vec3<u32>(4294967295u, 23757u, 1u), vec3<u32>(22656u, 0u, 34935u), vec3<u32>(0u, 26762u, 4294967295u), vec3<u32>(1u, 14789u, 11350u), vec3<u32>(64799u, 19239u, 47271u), vec3<u32>(47664u, 13118u, 1u), vec3<u32>(0u, 4294967295u, 38451u), vec3<u32>(26086u, 47121u, 22468u), vec3<u32>(1u, 0u, 0u));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = 37982u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.d - arg_2.a), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(42577u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, 0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_0, 26499u))), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(4294967295u, arg_1)))), 25u)], arg_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_2.d)) * _wgslsmith_f_op_vec4_f32(arg_0.a - arg_2.d)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_2.a))))), arg_0.e);
    global0 = array<vec2<bool>, 25>();
    global0 = array<vec2<bool>, 25>();
    return arg_2;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    global1 = array<vec3<u32>, 19>();
    let var_0 = _wgslsmith_add_vec4_i32(min(~vec4<i32>(-43115i, arg_0, arg_0, 2147483647i) | min(abs(vec4<i32>(-1i, -27224i, -2147483647i, u_input.e)), vec4<i32>(1i, 8002i, arg_0, arg_0)), vec4<i32>(0i, _wgslsmith_sub_i32(u_input.e, -arg_0), _wgslsmith_div_i32(-2147483647i, -1i | arg_0), arg_0)), max(max(-(vec4<i32>(26249i, -2147483647i, u_input.e, 17325i) ^ vec4<i32>(arg_0, u_input.e, arg_0, 22789i)), select(vec4<i32>(arg_0, -26499i, u_input.c, 12136i) << (vec4<u32>(arg_2, arg_2, arg_2, arg_2) % vec4<u32>(32u)), vec4<i32>(0i, -8990i, -9240i, -1i), select(vec4<bool>(false, false, true, true), arg_1.e, vec4<bool>(arg_1.b.x, arg_1.b.x, true, false)))), (_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, -3796i, arg_0, -37058i), vec4<i32>(-1i, -7019i, arg_0, -1i)) << (~vec4<u32>(arg_2, arg_2, arg_2, 1u) % vec4<u32>(32u))) >> (min(firstLeadingBit(vec4<u32>(0u, 27398u, arg_2, 0u)), ~vec4<u32>(60328u, arg_2, arg_2, arg_2)) % vec4<u32>(32u))));
    let var_1 = func_2(func_2(arg_1, ~arg_2 << (arg_2 % 32u), func_2(arg_1, 1u | arg_2, arg_1, arg_1.d.yx), _wgslsmith_f_op_vec2_f32(max(arg_1.c.yz, arg_1.d.zz))), ~(~countOneBits(arg_2)), func_2(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.a * arg_1.d), vec2<bool>(true, arg_1.b.x), _wgslsmith_f_op_vec3_f32(-arg_1.d.zxw), _wgslsmith_f_op_vec4_f32(-vec4<f32>(591f, arg_1.d.x, arg_1.c.x, 1462f)), select(vec4<bool>(false, false, false, arg_1.b.x), arg_1.e, false)), arg_2, func_2(arg_1, 7122u, func_2(Struct_1(arg_1.d, vec2<bool>(true, arg_1.b.x), vec3<f32>(arg_1.c.x, arg_1.c.x, 563f), arg_1.a, arg_1.e), 1u, Struct_1(arg_1.a, vec2<bool>(arg_1.e.x, arg_1.e.x), vec3<f32>(arg_1.c.x, -1202f, 114f), vec4<f32>(arg_1.a.x, arg_1.c.x, arg_1.c.x, arg_1.a.x), arg_1.e), arg_1.d.zw), vec2<f32>(arg_1.d.x, arg_1.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.zz))), countOneBits(abs(0u)), arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.a.zy, _wgslsmith_f_op_vec2_f32(min(arg_1.a.yw, arg_1.d.wy))))), _wgslsmith_f_op_vec2_f32(sign(arg_1.a.zy)));
    global0 = array<vec2<bool>, 25>();
    global0 = array<vec2<bool>, 25>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1.d.zxx)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.x, -1213f) * _wgslsmith_f_op_f32(max(-601f, var_1.c.x))), func_2(arg_1, ~arg_2, func_2(Struct_1(var_1.d, vec2<bool>(true, var_1.e.x), arg_1.d.zwz, vec4<f32>(var_1.c.x, -369f, -406f, -401f), var_1.e), arg_2, var_1, vec2<f32>(2463f, -287f)), func_2(Struct_1(vec4<f32>(809f, arg_1.d.x, 648f, -936f), vec2<bool>(arg_1.b.x, arg_1.e.x), arg_1.d.xzz, vec4<f32>(-116f, -1537f, arg_1.d.x, -126f), var_1.e), arg_2, Struct_1(arg_1.a, arg_1.e.xx, arg_1.a.yzz, var_1.d, arg_1.e), vec2<f32>(-1715f, arg_1.a.x)).d.yy).d.x, 1000f) + _wgslsmith_f_op_vec3_f32(-var_1.d.yzw)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(Struct_1(arg_2.a, global0[_wgslsmith_index_u32(abs(4294967295u), 25u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.d.x, arg_2.c.x, arg_2.d.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1172f, arg_2.d.x, arg_2.a.x) - vec3<f32>(arg_2.d.x, -173f, arg_2.c.x))), arg_2.d.yyy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, 181f, 1019f, 1000f)) - arg_2.a), select(!arg_2.e, func_2(Struct_1(vec4<f32>(-186f, -977f, -613f, arg_2.c.x), vec2<bool>(false, arg_2.e.x), arg_2.d.zzy, vec4<f32>(arg_2.a.x, 284f, arg_2.d.x, arg_2.d.x), arg_2.e), 53981u, arg_2, _wgslsmith_f_op_vec2_f32(-arg_2.a.wx)).e, arg_2.b.x)), 120156u, func_2(Struct_1(vec4<f32>(arg_2.c.x, _wgslsmith_div_f32(-525f, arg_2.a.x), arg_2.d.x, -1384f), vec2<bool>(false, true), arg_2.a.xwx, arg_2.d, !func_2(arg_2, 0u, arg_2, vec2<f32>(arg_2.a.x, 1530f)).e), _wgslsmith_mult_u32(34937u, 1u), arg_2, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.d), arg_2.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x)), vec4<f32>(arg_2.d.x, arg_2.c.x, arg_2.d.x, arg_2.a.x), vec4<bool>(arg_2.e.x, arg_2.b.x, true, false)), ~countOneBits(1u), Struct_1(vec4<f32>(-337f, 2028f, arg_2.a.x, 147f), arg_2.b, arg_2.d.zwy, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.x, 785f, arg_2.a.x, -322f) * vec4<f32>(arg_2.a.x, arg_2.a.x, 832f, 630f)), vec4<bool>(arg_2.e.x, false, true, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-657f, 976f))) * vec2<f32>(-350f, -1724f))).c.xx), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1152f), arg_2.d.x) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_2.c.yy, arg_2.a.xx)) + _wgslsmith_f_op_vec2_f32(arg_2.a.yz + vec2<f32>(arg_2.c.x, arg_2.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c.xy - vec2<f32>(-1850f, -511f)))))));
    global0 = array<vec2<bool>, 25>();
    var var_1 = !vec3<bool>(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1996f, var_0.c.x, arg_2.a.x, 2741f)), !global0[_wgslsmith_index_u32(25195u, 25u)], _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.c.x, -1091f, var_0.c.x))), _wgslsmith_f_op_vec4_f32(-var_0.a), select(vec4<bool>(false, false, var_0.b.x, var_0.e.x), var_0.e, arg_2.e)), firstTrailingBit(4294967295u), func_2(func_2(Struct_1(vec4<f32>(var_0.a.x, -1760f, var_0.c.x, -236f), arg_2.b, var_0.a.xzw, var_0.d, arg_2.e), 1u, arg_2, var_0.d.zx), ~50531u, Struct_1(arg_2.d, var_0.b, vec3<f32>(726f, var_0.a.x, 1000f), arg_2.d, vec4<bool>(true, true, true, arg_2.e.x)), vec2<f32>(-1851f, var_0.d.x)), arg_2.d.ww).b.x, false, all(!select(arg_2.e, vec4<bool>(arg_2.b.x, var_0.e.x, arg_2.e.x, false), vec4<bool>(true, arg_2.e.x, var_0.b.x, arg_2.b.x))));
    var var_2 = func_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_f_op_f32(floor(var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * var_0.c.x), _wgslsmith_f_op_f32(min(-316f, _wgslsmith_f_op_f32(exp2(var_0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.c.x)))), vec2<bool>(select(all(var_1.yx), true, any(vec4<bool>(var_1.x, arg_2.b.x, var_1.x, var_1.x))), all(select(vec2<bool>(true, arg_2.e.x), vec2<bool>(var_1.x, false), true))), arg_2.d.wzx, vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d.x))), _wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + _wgslsmith_f_op_f32(min(428f, arg_2.c.x)))), !var_0.e), ~4294967295u, var_0, func_2(Struct_1(_wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1827f, var_0.a.x, 603f, arg_2.a.x))), var_0.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_f_op_f32(exp2(arg_2.c.x)), var_0.a.x, var_0.a.x), !(!vec4<bool>(var_0.b.x, false, arg_2.e.x, true))), ~4294967295u, func_2(arg_2, 1u, func_2(func_2(Struct_1(vec4<f32>(2099f, arg_2.a.x, 410f, var_0.d.x), arg_2.b, vec3<f32>(-756f, -1247f, 204f), vec4<f32>(arg_2.d.x, -1583f, arg_2.c.x, arg_2.c.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x)), 26935u, arg_2, var_0.c.yy), ~1u, func_2(Struct_1(var_0.a, arg_2.e.zw, vec3<f32>(var_0.a.x, arg_2.c.x, var_0.c.x), arg_2.a, var_0.e), 4294967295u, var_0, vec2<f32>(-923f, var_0.a.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.c.x, -257f), vec2<f32>(arg_2.d.x, arg_2.a.x)))), arg_2.c.xx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_0.a.x))))).c.zz);
    global0 = array<vec2<bool>, 25>();
    return func_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -639f), 1137f, 461f, -1133f))), !vec2<bool>(all(vec3<bool>(true, false, false)), arg_2.e.x | true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(488f, 543f, _wgslsmith_f_op_f32(var_2.c.x - var_0.d.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(var_2.d.x - var_2.d.x), -2053f, _wgslsmith_f_op_f32(f32(-1f) * -1347f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.d) * _wgslsmith_f_op_vec4_f32(step(var_0.a, vec4<f32>(var_2.c.x, 1661f, var_0.d.x, -1892f)))), var_2.e)), select(select(vec4<bool>(var_2.b.x, true, false, true), var_2.e, select(vec4<bool>(true, arg_2.b.x, var_2.e.x, arg_2.b.x), arg_2.e, var_0.e)), arg_2.e, var_0.e.x)), ~1u & select(min(40480u, reverseBits(1u)), min(_wgslsmith_clamp_u32(0u, 4294967295u, 26536u), 1u), false), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, -1152f, 650f, arg_2.d.x))), !(!global0[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_2.d.ywy * var_0.c))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(180f, var_0.a.x, -706f, -833f), var_0.a))), vec4<bool>(true, all(arg_2.e.yw), true, false && var_0.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, 48156u, ~0u, _wgslsmith_div_u32(1u, 11732u)), select(vec4<u32>(1u, 25498u, 44998u, 67706u), vec4<u32>(4294967295u, 70500u, 1u, 0u), arg_2.e.x) ^ ~vec4<u32>(27103u, 24904u, 0u, 7724u)), var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.d.wx, vec2<f32>(515f, var_0.d.x)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.zx), vec2<f32>(800f, 690f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-497f, var_0.a.x)));
}

fn func_1() -> vec2<u32> {
    global0 = array<vec2<bool>, 25>();
    let var_0 = func_4(-abs(reverseBits(u_input.e >> (4294967295u % 32u))), u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(136f, 286f, -523f, 449f), vec4<f32>(773f, 1343f, -241f, -1735f), vec4<bool>(false, false, true, false))), vec4<f32>(280f, 1000f, -1029f, -690f))), !vec2<bool>(true, all(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(u_input.c & u_input.a.x, func_2(Struct_1(vec4<f32>(539f, 1176f, 130f, -758f), global0[_wgslsmith_index_u32(18527u, 25u)], vec3<f32>(965f, -839f, -1000f), vec4<f32>(1360f, -372f, -1665f, -122f), vec4<bool>(true, true, true, true)), 42597u, Struct_1(vec4<f32>(1775f, 1187f, -1675f, -654f), vec2<bool>(true, true), vec3<f32>(163f, -958f, 660f), vec4<f32>(-791f, -2136f, -831f, -424f), vec4<bool>(true, false, true, true)), vec2<f32>(-1488f, -236f)), 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-567f, -939f, 1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-139f, -1109f, -1391f, -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1190f, -924f, -1617f, -1299f), vec4<f32>(-634f, -320f, 1000f, -413f))))), vec4<bool>(func_2(Struct_1(vec4<f32>(1738f, -369f, 651f, -1074f), vec2<bool>(false, false), vec3<f32>(-1269f, 1000f, -702f), vec4<f32>(-341f, -709f, -573f, 705f), vec4<bool>(false, false, false, true)), 4294967295u, Struct_1(vec4<f32>(-1076f, -183f, -1000f, 328f), global0[_wgslsmith_index_u32(24900u, 25u)], vec3<f32>(-1000f, 1041f, 195f), vec4<f32>(291f, -378f, 1000f, -527f), vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(396f, 170f), vec2<f32>(355f, 766f)))).e.x, false, true, true)));
    let var_1 = vec3<i32>(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_add_i32(~u_input.e, u_input.c)), ~u_input.c, -(~(-69046i)));
    let var_2 = vec3<bool>(true, false, all(func_4(-(u_input.e | 1i), countOneBits(u_input.a.x), func_2(func_2(Struct_1(var_0.a, var_0.e.yz, var_0.a.zzy, vec4<f32>(-1584f, var_0.d.x, var_0.d.x, var_0.d.x), vec4<bool>(false, var_0.e.x, var_0.b.x, true)), 32137u, Struct_1(var_0.d, var_0.e.wz, var_0.c, vec4<f32>(554f, var_0.d.x, var_0.c.x, -229f), var_0.e), vec2<f32>(-640f, var_0.d.x)), _wgslsmith_mult_u32(44494u, 0u), Struct_1(vec4<f32>(-416f, 1119f, 454f, var_0.c.x), global0[_wgslsmith_index_u32(13582u, 25u)], var_0.c, vec4<f32>(-1620f, -211f, -665f, -699f), var_0.e), _wgslsmith_f_op_vec2_f32(var_0.a.yx * vec2<f32>(var_0.c.x, var_0.d.x)))).e.zxz));
    let var_3 = vec2<u32>(min(max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 4294967295u))) << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(9207u, 4294967295u), vec2<u32>(0u, 0u)), 9394u) % 32u), ~1u), _wgslsmith_div_u32(~31704u, 1u));
    return var_3;
}

fn func_5(arg_0: vec2<u32>, arg_1: bool) -> StorageBuffer {
    global1 = array<vec3<u32>, 19>();
    var var_0 = ~select(arg_0, firstTrailingBit(arg_0), func_4(u_input.b.x, u_input.d.x, func_4(u_input.d.x & u_input.d.x, firstLeadingBit(1i), func_4(u_input.a.x, u_input.c, Struct_1(vec4<f32>(-294f, 500f, 650f, 1358f), global0[_wgslsmith_index_u32(0u, 25u)], vec3<f32>(-1930f, -1967f, 2082f), vec4<f32>(-1154f, -1000f, 1004f, 603f), vec4<bool>(arg_1, arg_1, false, true))))).b.x);
    global0 = array<vec2<bool>, 25>();
    var_0 = vec2<u32>(1u, arg_0.x);
    let var_1 = ~2147483647i | u_input.e;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -(~(~var_1 << ((var_0.x & 1u) % 32u))), select(select(global1[_wgslsmith_index_u32(1u, 19u)], ~vec3<u32>(var_0.x, arg_0.x, var_0.x), !(!vec3<bool>(arg_1, arg_1, arg_1))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~var_0.x), ~0u, arg_0.x), 19u)], arg_1), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, 13588u, arg_0.x), vec4<u32>(var_0.x, arg_0.x, arg_0.x, 11325u)), _wgslsmith_sub_u32(18125u, _wgslsmith_add_u32(1817u, 0u))), _wgslsmith_div_u32(33427u, ~firstLeadingBit(var_0.x)), 0u), func_4(-21402i, reverseBits(var_1), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -1008f, -384f, -266f)))), func_2(Struct_1(vec4<f32>(-178f, -302f, -755f, 373f), vec2<bool>(false, arg_1), vec3<f32>(-2884f, -1160f, 914f), vec4<f32>(-765f, 1880f, -389f, 655f), vec4<bool>(arg_1, true, arg_1, arg_1)), var_0.x, Struct_1(vec4<f32>(-578f, -338f, -747f, 327f), global0[_wgslsmith_index_u32(44770u, 25u)], vec3<f32>(1000f, -706f, 1243f), vec4<f32>(1384f, 176f, -759f, 791f), vec4<bool>(arg_1, false, true, arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1394f, -376f))).e.yz, vec3<f32>(_wgslsmith_f_op_f32(sign(396f)), _wgslsmith_f_op_f32(floor(1340f)), -878f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(273f, 1413f, -1140f, 918f) * vec4<f32>(210f, -928f, -179f, 1731f)) - vec4<f32>(-586f, 613f, -303f, -432f)), vec4<bool>(func_2(Struct_1(vec4<f32>(885f, -900f, 1000f, 159f), vec2<bool>(arg_1, false), vec3<f32>(-527f, -923f, -3140f), vec4<f32>(608f, -2017f, 217f, -670f), vec4<bool>(arg_1, false, false, true)), var_0.x, Struct_1(vec4<f32>(951f, 473f, 1804f, 252f), global0[_wgslsmith_index_u32(1u, 25u)], vec3<f32>(-323f, 509f, -276f), vec4<f32>(-334f, 596f, -920f, -213f), vec4<bool>(true, arg_1, arg_1, arg_1)), vec2<f32>(-582f, 1332f)).b.x, true, all(vec4<bool>(true, true, true, false)), all(vec4<bool>(true, false, arg_1, arg_1))))).c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 19>();
    global1 = array<vec3<u32>, 19>();
    global0 = array<vec2<bool>, 25>();
    global1 = array<vec3<u32>, 19>();
    var var_0 = ~reverseBits(vec4<i32>(-37900i, 0i, ~select(0i, u_input.e, true), -_wgslsmith_sub_i32(u_input.e, u_input.c)));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~1u, 24069u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), select(func_1(), ~vec2<u32>(4294967295u, 0u), vec2<bool>(false, false)), ~(~vec2<u32>(0u, 2655u)))), true);
}

