struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4) -> vec4<u32> {
    let var_0 = -(min(~vec2<i32>(0i, 43115i), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(0i, 1i)), vec2<i32>(-2147483647i, -26534i))) | firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(1i, -37541i, -2147483647i), 50292i >> (0u % 32u))));
    var var_1 = Struct_3(vec4<u32>(~_wgslsmith_sub_u32(u_input.a, ~arg_0.e.x), ~countOneBits(~arg_0.c), arg_0.c, _wgslsmith_div_u32(0u, ~u_input.a)), arg_0.d, _wgslsmith_f_op_f32(-arg_0.d.a.x), arg_0.d, max(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(33698u, u_input.a, 27294u, u_input.a), vec4<u32>(u_input.a, u_input.a, 10584u, 5475u), vec4<u32>(u_input.a, u_input.a, arg_0.c, 4294967295u))), ~((vec4<u32>(18338u, arg_0.c, u_input.a, 70513u) | vec4<u32>(u_input.a, arg_0.c, 57868u, arg_0.e.x)) ^ ~vec4<u32>(0u, arg_0.e.x, 1u, 0u))));
    var var_2 = Struct_3(~countOneBits(min(vec4<u32>(u_input.a, arg_0.e.x, 24134u, 1u), var_1.a) | ~vec4<u32>(6508u, var_1.e.x, 1u, arg_0.c)), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))), arg_0.d, ~vec4<u32>(var_1.e.x, firstTrailingBit(u_input.a << (u_input.a % 32u)), 5748u, abs(_wgslsmith_add_u32(arg_0.c, var_1.a.x))));
    var_1 = Struct_3(var_2.e, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(322f, var_2.d.a.x, arg_0.b))))), var_2.d.e.zx, !var_2.b.b, arg_0.d.d, !(!select(vec3<bool>(var_2.d.c.x, true, true), vec3<bool>(arg_0.d.e.x, var_1.b.c.x, var_2.b.d), arg_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.b, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(var_2.a, vec4<u32>(4294967295u, 4294967295u, u_input.a, var_2.a.x)), select(vec4<u32>(21773u, 0u, arg_0.c, u_input.a), vec4<u32>(var_1.e.x, 4294967295u, var_2.e.x, var_2.e.x), false), ~vec4<u32>(u_input.a, arg_0.e.x, 4294967295u, var_2.e.x)), ~(var_1.e ^ var_1.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(u_input.a), var_2.a.x >> (0u % 32u), 0u, u_input.a), ~var_1.a >> (_wgslsmith_sub_vec4_u32(var_1.e, var_1.a) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 0u, 1u, var_1.e.x))));
    var var_3 = var_1.b.d;
    return vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(arg_0.e, ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.e.x, u_input.a), ~vec2<u32>(55506u, 4294967295u))), ~72846u, firstTrailingBit(~_wgslsmith_sub_u32(var_2.a.x, 0u)) << (~(~_wgslsmith_div_u32(3009u, arg_0.c)) % 32u));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1.e.x, arg_1.e.x >> (arg_1.a.x % 32u)), firstLeadingBit(_wgslsmith_div_u32(arg_1.e.x, u_input.a)))), arg_1.e.x);
    var_0 = abs(u_input.a);
    let var_1 = Struct_3(func_3(Struct_4(_wgslsmith_f_op_f32(arg_3.a.a.x + arg_1.c) <= -1058f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_3.d.a.x)), -457f, true)), 48707u, arg_3.d, ~(~vec2<u32>(u_input.a, u_input.a)))), arg_3.d, _wgslsmith_f_op_f32(trunc(-774f)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_3.a.a.x + arg_3.c.x), _wgslsmith_f_op_f32(arg_1.b.a.x * arg_3.a.a.x), 1503f)), select(vec2<bool>(false, false), select(vec2<bool>(arg_1.d.b.x, arg_0.x), select(arg_1.b.e.zy, arg_0.wx, arg_3.b.x), true), arg_0.x), arg_1.b.e.zy, arg_2, vec3<bool>(any(!arg_0.zx), !arg_1.d.e.x, _wgslsmith_f_op_f32(-arg_3.d.a.x) >= -1000f)), max(~arg_1.a, arg_1.e));
    var_0 = 1u;
    let var_2 = _wgslsmith_f_op_f32(arg_3.d.a.x * arg_1.d.a.x);
    return min(-1i, i32(-1i) * -(~abs(-51820i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = abs(vec3<u32>(func_3(Struct_4(u_input.a != u_input.a, -1815f, 62810u, Struct_1(vec3<f32>(-1211f, arg_2.x, arg_2.x), vec2<bool>(true, true), vec2<bool>(false, false), true, vec3<bool>(false, true, false)), countOneBits(vec2<u32>(u_input.a, 5160u)))).x, countOneBits(1u), abs(u_input.a)));
    let var_1 = ~(-(select(vec4<i32>(-1i, arg_0.x, -1i, arg_0.x), reverseBits(vec4<i32>(-1i, arg_0.x, arg_0.x, arg_0.x)), true) ^ _wgslsmith_div_vec4_i32(-vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -1i), firstTrailingBit(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 27207i)))));
    var_0 = ~(~func_3(Struct_4(false, -190f, var_0.x, Struct_1(vec3<f32>(arg_1, -366f, -181f), vec2<bool>(true, true), vec2<bool>(false, true), false, vec3<bool>(false, false, true)), vec2<u32>(var_0.x, u_input.a))).wxx << ((~(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(var_0.x, var_0.x, 47006u) % vec3<u32>(32u))) ^ ~vec3<u32>(var_0.x, u_input.a, var_0.x)) % vec3<u32>(32u)));
    var_0 = ~_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(57514u, 1u, u_input.a)) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, var_0.x), vec3<u32>(4434u, u_input.a, 4294967295u)) % vec3<u32>(32u)), vec3<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a, u_input.a, 1u), vec4<u32>(28546u, 46902u, var_0.x, 1u)), ~var_0.x, true), ~firstLeadingBit(var_0.x), ~(u_input.a & 16023u)));
    var var_2 = u_input.a;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, 2101f), select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), vec2<bool>(all(vec4<bool>(false, true, true, true)), true), true), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), any(vec4<bool>(false, false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, false, false, false))))), !select(vec2<bool>(true, true), vec2<bool>(true, true), !all(vec2<bool>(false, false))), true, !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true));
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    var var_1 = ~(~(~vec4<u32>(reverseBits(u_input.a), ~19943u, ~0u, u_input.a << (1u % 32u))));
    let var_2 = ~firstLeadingBit(vec2<i32>(abs(reverseBits(0i)), 1i));
    let var_3 = ~vec4<u32>(0u << ((var_1.x ^ abs(38671u)) % 32u), var_1.x, _wgslsmith_mult_u32(4294967295u, ~(~u_input.a)), ~(~abs(u_input.a)));
    var var_4 = Struct_3(var_3, func_4(vec3<i32>(var_2.x, -(i32(-1i) * -22359i), func_2(select(vec4<bool>(false, var_0, var_0, true), vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, var_0, true)), Struct_3(vec4<u32>(var_3.x, u_input.a, var_3.x, var_3.x), Struct_1(vec3<f32>(665f, 172f, 1000f), vec2<bool>(false, false), vec2<bool>(false, var_0), var_0, vec3<bool>(false, var_0, var_0)), 481f, Struct_1(vec3<f32>(-1481f, 1921f, 249f), vec2<bool>(true, true), vec2<bool>(true, var_0), true, vec3<bool>(true, true, var_0)), var_3), any(vec3<bool>(var_0, false, false)), Struct_2(Struct_1(vec3<f32>(191f, 282f, 1146f), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), false, vec3<bool>(var_0, false, false)), vec3<bool>(false, false, var_0), vec4<f32>(-509f, -1361f, -1108f, 1769f), Struct_1(vec3<f32>(2531f, 763f, -381f), vec2<bool>(true, false), vec2<bool>(var_0, var_0), var_0, vec3<bool>(var_0, var_0, true))))), -1249f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(462f, 1000f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(556f, -551f) + vec2<f32>(-272f, 1867f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-181f, -861f)) - _wgslsmith_f_op_f32(trunc(-1131f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_4(vec3<i32>(2147483647i, 3644i, -41269i), 381f, vec2<f32>(-791f, -458f)).a.x), 167f, true)))), func_4(~vec3<i32>(var_2.x, 4397i, _wgslsmith_div_i32(1i, var_2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(657f, -1000f)) * _wgslsmith_f_op_f32(min(1000f, 1000f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2911f + -1018f), -380f))), vec4<u32>(min(55729u, var_1.x), _wgslsmith_sub_u32(0u, var_1.x), ~var_3.x, firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 33099u, var_1.x), var_1.zzz))));
    return func_4(~firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(-1i, var_2.x, 0i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.d.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(414f, -265f)), vec2<f32>(-819f, -1000f), true)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: u32) -> Struct_4 {
    var var_0 = Struct_4(true, arg_0.b.a.x, arg_3 << (38229u % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.a) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(arg_0.d.a, vec3<f32>(-384f, 1092f, 949f))))), arg_0.b.e.zy, vec2<bool>(arg_0.b.c.x, arg_2.d.d), arg_2.d.c.x, vec3<bool>(all(select(vec3<bool>(false, false, arg_2.b.c.x), arg_0.d.e, arg_0.b.e)), arg_2.d.e.x, true)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.a, arg_3)), abs(arg_2.a.yw)), _wgslsmith_sub_u32(arg_2.a.x, ~arg_0.a.x)), arg_0.e.xy, ~vec2<u32>(_wgslsmith_sub_u32(19449u, 1u), 1u)));
    var var_1 = ~27826u;
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, _wgslsmith_mult_u32(7884u, var_0.e.x)), reverseBits(~vec2<u32>(u_input.a, ~29840u)));
    let var_2 = Struct_4(true, var_0.d.a.x, ~(~arg_0.a.x), Struct_1(var_0.d.a, vec2<bool>(!(!arg_0.d.b.x), false & func_1().d), vec2<bool>(false, _wgslsmith_f_op_f32(abs(var_0.b)) >= _wgslsmith_f_op_f32(trunc(arg_2.c))), all(select(vec3<bool>(arg_2.b.e.x, arg_0.d.c.x, var_0.a), select(vec3<bool>(arg_2.d.e.x, arg_2.d.e.x, arg_0.b.b.x), arg_2.d.e, false), true)), func_1().e), arg_0.e.zw);
    var_1 = ~(~func_3(Struct_4(var_0.d.d, var_2.b, var_2.c, var_2.d, arg_0.a.zw)).x & ~(_wgslsmith_mult_u32(13071u, 60033u) << (_wgslsmith_div_u32(arg_2.e.x, 36083u) % 32u)));
    return var_2;
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1000f, -449f, -193f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-265f, arg_2, arg_2, 1369f) * vec4<f32>(arg_0.d.a.x, arg_0.b, -928f, -571f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_0.b, 128f, arg_2) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-829f, -1143f, arg_0.d.a.x, arg_2)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.d.a.x, -697f, false)), _wgslsmith_f_op_f32(-1863f * arg_0.d.a.x), 202f, _wgslsmith_f_op_f32(-arg_2)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(round(1031f)), -909f, _wgslsmith_f_op_f32(abs(1517f)))))));
    var var_1 = arg_0.d.c.x || all(select(vec4<bool>(arg_0.d.b.x || true, arg_0.d.d, arg_0.d.e.x, all(arg_0.d.b)), !(!vec4<bool>(true, true, arg_0.d.d, arg_0.a)), select(vec4<bool>(true, arg_0.d.e.x, arg_0.a, true), select(vec4<bool>(true, true, arg_0.d.d, false), vec4<bool>(arg_0.d.e.x, arg_0.a, arg_0.d.d, arg_0.d.d), vec4<bool>(true, false, arg_0.d.c.x, arg_0.d.c.x)), select(vec4<bool>(false, arg_0.a, true, false), vec4<bool>(true, false, arg_0.d.c.x, true), true))));
    var_1 = !all(!(!vec4<bool>(true, arg_0.d.b.x, true, arg_0.d.d)));
    var_1 = arg_0.a;
    var_1 = arg_0.a;
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 50013i;
    var_0 = _wgslsmith_mult_i32(31153i, select(_wgslsmith_div_i32(38452i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(70183i, 2147483647i, -5014i, -2147483647i), vec4<i32>(1i, 48323i, -1i, -21774i)))), firstLeadingBit(~34886i), _wgslsmith_clamp_u32(~u_input.a, 4294967295u, u_input.a) <= 0u));
    var var_1 = 612f;
    var var_2 = Struct_3(~(vec4<u32>(u_input.a, 1u, firstLeadingBit(0u), ~u_input.a) & ~vec4<u32>(0u, u_input.a, 1u, 4294967295u)), func_6(func_5(Struct_3(~vec4<u32>(4190u, u_input.a, u_input.a, u_input.a), Struct_1(vec3<f32>(-1690f, -518f, -1904f), vec2<bool>(true, true), vec2<bool>(false, false), false, vec3<bool>(true, true, false)), _wgslsmith_div_f32(1000f, -589f), func_1(), vec4<u32>(1u, 0u, 66363u, 6919u)), vec3<i32>(-6007i, 1i, firstTrailingBit(-1i)), Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), func_1(), 1f, func_1(), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 10999u, u_input.a, u_input.a), vec4<u32>(23814u, u_input.a, 15558u, 1u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(36126u, 31318u))), ~u_input.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(215f))))), -(abs(vec4<i32>(-10617i, 2147483647i, -2147483647i, 2723i)) << (min(vec4<u32>(16701u, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)) % vec4<u32>(32u)))), -1890f, Struct_1(_wgslsmith_div_vec3_f32(func_6(Struct_4(true, 757f, u_input.a, Struct_1(vec3<f32>(109f, 302f, -894f), vec2<bool>(true, true), vec2<bool>(false, true), false, vec3<bool>(false, true, true)), vec2<u32>(0u, u_input.a)), u_input.a, 1427f, max(vec4<i32>(1i, 58367i, -1536i, 0i), vec4<i32>(-54875i, -1i, 11199i, 1i))).a, func_6(Struct_4(true, 1362f, 20950u, Struct_1(vec3<f32>(1886f, -648f, -703f), vec2<bool>(true, true), vec2<bool>(false, true), false, vec3<bool>(false, false, true)), vec2<u32>(u_input.a, 40910u)), ~29736u, 400f, _wgslsmith_clamp_vec4_i32(vec4<i32>(-372i, 18039i, 1i, 8782i), vec4<i32>(0i, 10008i, -2147483647i, 37218i), vec4<i32>(12488i, 0i, 13696i, -34837i))).a), vec2<bool>((-1i << (u_input.a % 32u)) > func_2(vec4<bool>(false, false, false, true), Struct_3(vec4<u32>(1u, 84135u, u_input.a, 20878u), Struct_1(vec3<f32>(989f, 1000f, -257f), vec2<bool>(true, false), vec2<bool>(true, false), true, vec3<bool>(false, false, true)), -1081f, Struct_1(vec3<f32>(1059f, 1010f, 1000f), vec2<bool>(false, false), vec2<bool>(false, false), false, vec3<bool>(false, false, true)), vec4<u32>(u_input.a, 68471u, 0u, 58014u)), true, Struct_2(Struct_1(vec3<f32>(-1110f, 419f, -224f), vec2<bool>(false, true), vec2<bool>(true, false), false, vec3<bool>(false, true, false)), vec3<bool>(true, false, true), vec4<f32>(-1831f, 267f, -456f, -1310f), Struct_1(vec3<f32>(-1117f, 1648f, 1687f), vec2<bool>(false, false), vec2<bool>(true, true), true, vec3<bool>(false, true, true)))), false), select(func_4(vec3<i32>(0i, -21053i, -2147483647i), _wgslsmith_f_op_f32(round(551f)), _wgslsmith_div_vec2_f32(vec2<f32>(671f, 2038f), vec2<f32>(307f, -678f))).c, vec2<bool>(true, true), vec2<bool>(false, func_1().e.x)), true, vec3<bool>(func_6(func_5(Struct_3(vec4<u32>(36480u, u_input.a, 0u, 39094u), Struct_1(vec3<f32>(1029f, 994f, -1662f), vec2<bool>(false, false), vec2<bool>(false, true), false, vec3<bool>(true, false, false)), 667f, Struct_1(vec3<f32>(-619f, 381f, 2241f), vec2<bool>(false, true), vec2<bool>(true, true), true, vec3<bool>(true, false, true)), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), vec3<i32>(-1i, 25074i, -1i), Struct_3(vec4<u32>(u_input.a, 100236u, 0u, u_input.a), Struct_1(vec3<f32>(-396f, 197f, 690f), vec2<bool>(false, false), vec2<bool>(true, false), false, vec3<bool>(true, true, false)), -795f, Struct_1(vec3<f32>(-1430f, -1739f, -1515f), vec2<bool>(false, false), vec2<bool>(false, true), true, vec3<bool>(false, false, true)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 1u), 0u, -2011f, ~vec4<i32>(-10288i, -24791i, 1i, 82657i)).c.x, true, true)), min(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 36678u, 18344u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(1592u, 117036u, u_input.a, 0u) ^ vec4<u32>(0u, 29023u, u_input.a, 1u)), select(vec4<u32>(1u, u_input.a, 1u, u_input.a), min(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 52638u, u_input.a)), func_1().b.x)), firstLeadingBit(vec4<u32>(u_input.a, max(24628u, u_input.a), ~18078u, 57778u))));
    let var_3 = var_2.b.a;
    let var_4 = Struct_3(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(32289u, 13011u, u_input.a, var_2.a.x), ~vec4<u32>(var_2.a.x, u_input.a, 29819u, 674u)), var_2.a), vec4<u32>(20785u, 84122u | u_input.a, func_5(Struct_3(vec4<u32>(0u, 36145u, var_2.a.x, u_input.a), Struct_1(vec3<f32>(2125f, var_2.c, var_2.d.a.x), vec2<bool>(var_2.d.c.x, var_2.d.d), var_2.b.c, var_2.d.c.x, vec3<bool>(var_2.d.b.x, false, var_2.d.e.x)), 551f, var_2.d, var_2.a), vec3<i32>(1i, 1i, 1i), Struct_3(var_2.a, Struct_1(vec3<f32>(var_3.x, var_2.d.a.x, var_3.x), var_2.d.b, vec2<bool>(true, true), var_2.b.e.x, vec3<bool>(var_2.b.b.x, var_2.d.e.x, var_2.b.e.x)), -1218f, Struct_1(var_2.b.a, vec2<bool>(false, true), vec2<bool>(var_2.d.c.x, var_2.d.e.x), var_2.d.c.x, var_2.b.e), var_2.a), _wgslsmith_clamp_u32(u_input.a, var_2.e.x, var_2.e.x)).c, 252u)), Struct_1(var_2.d.a, vec2<bool>(true, var_2.d.c.x), vec2<bool>(func_5(Struct_3(var_2.e, Struct_1(var_2.d.a, vec2<bool>(false, false), var_2.d.e.xx, var_2.d.e.x, vec3<bool>(var_2.d.c.x, var_2.d.b.x, var_2.d.c.x)), var_2.c, var_2.d, var_2.a), vec3<i32>(1i, 1i, 1i), Struct_3(var_2.a, Struct_1(var_2.d.a, vec2<bool>(false, var_2.b.d), var_2.d.c, false, var_2.b.e), var_3.x, var_2.d, vec4<u32>(u_input.a, 0u, 1u, var_2.a.x)), firstLeadingBit(55430u)).d.e.x, ~u_input.a == 1u), 4294967295u > var_2.a.x, func_1().e), var_2.b.a.x, var_2.b, ~vec4<u32>(abs(var_2.e.x >> (4294967295u % 32u)), ~(~var_2.a.x), var_2.a.x, 93291u));
    let var_5 = firstTrailingBit(2147483647i);
    var var_6 = Struct_4(true, _wgslsmith_f_op_f32(-var_2.d.a.x), 1u << (_wgslsmith_clamp_u32(1u, abs(var_2.e.x), 7704u) % 32u), func_6(Struct_4(select(var_4.d.c.x, false, var_2.b.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f)), 41314u, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.c, 770f, var_3.x))), vec2<bool>(true, false), var_2.b.b, func_6(Struct_4(var_4.d.b.x, var_2.c, 1u, Struct_1(vec3<f32>(var_2.b.a.x, var_3.x, 270f), var_2.d.b, vec2<bool>(var_4.d.c.x, true), true, vec3<bool>(var_4.d.c.x, false, true)), vec2<u32>(2267u, 8327u)), 20652u, 1000f, vec4<i32>(-22223i, var_5, var_5, -2147483647i)).d, var_2.b.e), ~vec2<u32>(u_input.a, 0u) ^ vec2<u32>(var_2.e.x, 47100u)), 0u, -1501f, _wgslsmith_sub_vec4_i32(-vec4<i32>(var_5, var_5, var_5, -29310i), reverseBits(vec4<i32>(2147483647i, 15480i, var_5, var_5)))), vec2<u32>(~4294967295u, 1u));
    var_0 = -68461i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(5465u, func_3(func_5(Struct_3(vec4<u32>(4294967295u, u_input.a, 25362u, u_input.a), Struct_1(vec3<f32>(var_3.x, -1941f, var_6.b), var_2.b.b, vec2<bool>(var_2.d.b.x, true), var_6.a, vec3<bool>(false, var_2.d.c.x, false)), 338f, var_6.d, var_4.e), _wgslsmith_add_vec3_i32(vec3<i32>(-61546i, var_5, var_5), vec3<i32>(2147483647i, var_5, -1i)), var_4, 4294967295u)).x), 96329u, _wgslsmith_dot_vec2_u32(~(~var_4.e.zy), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), var_4.a.xy) >> (var_2.a.zz % vec2<u32>(32u)))), vec3<i32>(-10849i, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_5, -2214i, var_5)), -vec3<i32>(-34788i, 40839i, var_5)), -58237i));
}

