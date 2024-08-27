struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 372f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<f32>) -> vec3<f32> {
    let var_0 = !(true || ((_wgslsmith_mult_i32(u_input.a, 26830i) ^ 30485i) < u_input.a));
    global0 = arg_0.x;
    var var_1 = ~(~(~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(83138u, 1u, 1u)))));
    global0 = arg_0.x;
    let var_2 = -186f;
    return vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 - -1705f), arg_0.x)) + -389f) * 1091f), _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = ~u_input.a;
    let var_1 = Struct_3(Struct_1(true, vec4<u32>(~0u, 1u, min(_wgslsmith_mod_u32(1u, 12839u), 1u), 1u), ~vec2<u32>(1u, 1u), reverseBits(select(1u, ~0u, any(vec3<bool>(true, false, false)))), true), Struct_2(false, Struct_1(any(vec4<bool>(false, false, false, false)), vec4<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), 0u >> (0u % 32u), ~4294967295u, ~1u), vec2<u32>(1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false))), Struct_1(any(vec4<bool>(true, true, true, true)), vec4<u32>(1u, 103u, ~0u, select(1u, 1u, false)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 25372u), vec2<u32>(4294967295u, 2182u)), ~vec2<u32>(46289u, 59116u)), ~max(40972u, 43870u), true)), vec3<u32>(1u, 1u, 1u), Struct_2(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), Struct_1(true, vec4<u32>(1u, reverseBits(0u), ~39918u, 0u), vec2<u32>(1u, 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(86056u, 36900u, 0u), abs(vec3<u32>(1u, 0u, 4294967295u))), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true))), Struct_1(false, vec4<u32>(62634u, 4231u, select(65959u, 0u, false), 1u), vec2<u32>(~4294967295u, 25205u), 1u, all(vec4<bool>(true, true, true, true)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), 1000f));
    global0 = -984f;
    global0 = _wgslsmith_f_op_f32(-614f - _wgslsmith_f_op_f32(-arg_0.x));
    return _wgslsmith_clamp_vec4_u32(~var_1.b.b.b, (~var_1.b.b.b ^ ~vec4<u32>(var_1.c.x, 0u, 4294967295u, var_1.d.b.d)) >> ((vec4<u32>(var_1.a.b.x, 1u, var_1.a.b.x, var_1.b.c.c.x) >> (var_1.d.c.b % vec4<u32>(32u))) % vec4<u32>(32u)), var_1.d.c.b) >> (vec4<u32>(max(14352u, var_1.c.x), ~1u, ~13607u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.b.d, max(var_1.b.c.c.x, 42333u), 7209u, 14601u), vec4<u32>(4294967295u, var_1.b.b.c.x, 0u, var_1.d.b.b.x) & var_1.a.b)) % vec4<u32>(32u));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = !(!(!(u_input.a <= u_input.a)) & false);
    global0 = 1000f;
    var var_1 = Struct_1(arg_0 == arg_0, ~vec4<u32>(1u, ~0u, _wgslsmith_dot_vec4_u32(func_3(vec3<f32>(369f, 947f, -1000f), u_input.a, vec3<i32>(1391i, arg_0, arg_0)), vec4<u32>(1u, 0u, 1u, 0u)), 32736u), ~vec2<u32>(1u, 1u), abs(select(~1u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(10061u, 60861u), vec2<u32>(16872u, 0u)), countOneBits(4294967295u)), (u_input.a << (4294967295u % 32u)) > _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.a), vec3<i32>(u_input.a, -48175i, -36903i)))), any(!select(!vec3<bool>(var_0, true, false), vec3<bool>(true, var_0, true), arg_0 < -2147483647i)));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1088f)))))));
    let var_2 = vec4<bool>(var_1.e, var_1.a, !all(vec3<bool>(any(vec4<bool>(var_0, true, true, var_0)), !var_1.e, true)), all(!(!vec3<bool>(var_0, var_1.a, false))));
    return Struct_1(true, _wgslsmith_mod_vec4_u32(select(max(~var_1.b, vec4<u32>(var_1.b.x, var_1.d, 42230u, var_1.d)), vec4<u32>(max(var_1.b.x, 0u), ~var_1.c.x, var_1.d, 0u), false), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c.x, 70572u, var_1.b.x, 16572u), vec4<u32>(4294967295u, 4187u, var_1.d, var_1.b.x))), var_1.b.wy, ~_wgslsmith_dot_vec3_u32(var_1.b.zwz, var_1.b.ywy), !(!select(true, true, var_1.a) & true));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global0 = 1f;
    var var_0 = -vec3<i32>(_wgslsmith_div_i32(min(u_input.a, u_input.a), u_input.a) << ((arg_0.b.d << (29228u % 32u)) % 32u), -5577i, _wgslsmith_div_i32(-select(u_input.a, 7131i, arg_0.c.e), ~u_input.a));
    var var_1 = vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(1i, u_input.a, -18150i)) >> ((4294967295u ^ ~arg_0.b.b.x) % 32u)), -(i32(-1i) * -var_0.x), 2147483647i);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(629f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-895f + 1533f) - -957f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(576f, -1470f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-649f, -668f, 401f), vec3<f32>(191f, 649f, 564f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-680f, 887f, 422f) - vec3<f32>(684f, 345f, 106f))))));
    var var_3 = arg_0;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(381f + _wgslsmith_f_op_f32(-var_2.a.x))) < -197f, func_2(~var_0.x), func_2(_wgslsmith_add_i32(var_0.x, var_0.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1780f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(734f - 1374f)))), -1000f, 1f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(498f + _wgslsmith_f_op_f32(var_0.x * var_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + var_0.x))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-780f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, 1000f, -317f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -1748f, var_0.x))))), _wgslsmith_div_vec3_f32(vec3<f32>(-156f, _wgslsmith_f_op_f32(-var_0.x), 528f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(311f, var_0.x, var_0.x) + vec3<f32>(766f, var_0.x, -568f))))))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -125f)));
    var var_3 = Struct_2(arg_1.e | func_4(func_4(Struct_2(true, arg_0.c, Struct_1(arg_1.a, arg_0.b.b, arg_0.b.b.yy, arg_1.c.x, arg_0.c.a)))).a, arg_1, arg_0.b);
    return func_2(-1i);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    global0 = 734f;
    var var_0 = vec2<u32>(firstTrailingBit(arg_0.c.x), max(~(45665u >> (arg_2.c.d % 32u)), 6807u) << (arg_1.c.x % 32u));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-464f))));
    var_0 = arg_0.b.xw;
    var_0 = ~(~arg_1.a.b.yw);
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -236f);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1294f, -1151f, 948f) + _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(133f, -125f, -1816f, 924f) - vec4<f32>(-1000f, 231f, -906f, -522f))))), vec3<f32>(_wgslsmith_f_op_f32(-789f - _wgslsmith_f_op_f32(f32(-1f) * -572f)), -839f, _wgslsmith_f_op_f32(1721f * -1101f)))));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~_wgslsmith_div_vec3_u32(select(vec3<u32>(29517u, 21908u, 11940u), vec3<u32>(7741u, 55334u, 4294967295u), vec3<bool>(true, false, true)), abs(vec3<u32>(0u, 4294967295u, 41643u)))), 1u);
    let var_2 = Struct_4(var_0);
    let var_3 = -1600f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(380f))));
    let var_4 = func_6(func_5(func_4(Struct_2(false, Struct_1(true, vec4<u32>(var_1, var_1, 4294967295u, var_1), vec2<u32>(4294967295u, var_1), 19767u, false), func_2(-73801i))), Struct_1(true, ~(vec4<u32>(0u, var_1, var_1, 12577u) | vec4<u32>(4294967295u, var_1, 1u, var_1)), ~vec2<u32>(40250u, 1u), ~abs(var_1), !all(vec2<bool>(false, false)))), Struct_3(Struct_1(true, vec4<u32>(func_3(var_2.a, -2147483647i, vec3<i32>(2147483647i, u_input.a, u_input.a)).x, 1u, ~var_1, 4294967295u), ~(vec2<u32>(var_1, var_1) ^ vec2<u32>(var_1, var_1)), var_1, true), Struct_2(true, Struct_1(select(true, false, true), ~vec4<u32>(var_1, 18921u, 4294967295u, 0u), vec2<u32>(0u, 4294967295u), 0u, true), func_2(_wgslsmith_clamp_i32(u_input.a, -8970i, 57326i))), ~(~vec3<u32>(var_1, var_1, 0u)) << (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(19770u, 0u, 4294967295u), vec3<u32>(var_1, 29693u, 8443u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 46930u, var_1), vec3<u32>(var_1, 4294967295u, 1u))) % vec3<u32>(32u)), func_4(func_4(Struct_2(true, Struct_1(true, vec4<u32>(var_1, 0u, var_1, 4294967295u), vec2<u32>(1u, var_1), 4294967295u, true), Struct_1(true, vec4<u32>(var_1, var_1, 44287u, var_1), vec2<u32>(0u, 20294u), var_1, false))))), Struct_2(func_4(Struct_2(u_input.a > -16074i, Struct_1(true, vec4<u32>(1u, 4294967295u, var_1, 0u), vec2<u32>(25848u, var_1), 1u, false), func_5(Struct_2(true, Struct_1(true, vec4<u32>(var_1, 1u, 4294967295u, var_1), vec2<u32>(var_1, 1u), var_1, false), Struct_1(false, vec4<u32>(var_1, var_1, var_1, var_1), vec2<u32>(var_1, var_1), 28471u, false)), Struct_1(false, vec4<u32>(var_1, var_1, var_1, var_1), vec2<u32>(var_1, var_1), 16931u, false)))).b.e, func_5(func_4(Struct_2(false, Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 18497u, var_1), vec2<u32>(1u, var_1), var_1, false), Struct_1(true, vec4<u32>(var_1, 21203u, 0u, var_1), vec2<u32>(var_1, 4294967295u), var_1, false))), Struct_1(var_1 != 23210u, _wgslsmith_mult_vec4_u32(vec4<u32>(var_1, var_1, var_1, 1u), vec4<u32>(22215u, var_1, 89992u, 59477u)), vec2<u32>(45126u, 42856u), 4294967295u, u_input.a < u_input.a)), func_4(Struct_2(var_1 >= var_1, Struct_1(true, vec4<u32>(1u, 14095u, var_1, var_1), vec2<u32>(8181u, var_1), 54652u, true), Struct_1(false, vec4<u32>(var_1, 4294967295u, var_1, 16497u), vec2<u32>(10273u, 15927u), var_1, false))).c));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), -188f, 748f), abs(~(~vec3<i32>(1i, u_input.a, u_input.a)) & -(vec3<i32>(13660i, u_input.a, -16223i) | vec3<i32>(33760i, u_input.a, u_input.a))), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, _wgslsmith_div_i32(-3541i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(-1i, u_input.a)), -u_input.a) ^ abs(min(vec4<i32>(u_input.a, 13394i, u_input.a, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~vec4<i32>(89503i, ~(-38238i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_add_i32(u_input.a, u_input.a)), vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.a ^ 0i), ~u_input.a >> (var_4.d % 32u), _wgslsmith_sub_i32(firstLeadingBit(-1i), u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -55010i) << (var_4.b.xzz % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a, u_input.a)))), 2147483647i, max(-u_input.a | 0i, -1i) >> (1u % 32u));
}

