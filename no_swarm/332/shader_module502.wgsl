struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1684f - 703f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -310f) * 652f), false)))));
    let var_1 = Struct_1(firstLeadingBit(4625i), false, _wgslsmith_sub_vec4_i32(vec4<i32>(~_wgslsmith_mod_i32(-1i, u_input.a.x), -u_input.a.x, 0i, ~0i), vec4<i32>(-(u_input.a.x ^ -22782i), firstTrailingBit(countOneBits(-1i)), _wgslsmith_dot_vec3_i32(u_input.a.yyx, max(vec3<i32>(u_input.b, u_input.d.x, 2147483647i), vec3<i32>(55392i, 1i, -1i))), -2798i)), !any(vec2<bool>(all(vec3<bool>(false, true, false)), false)));
    global0 = abs(~(~countOneBits(u_input.c)));
    var var_2 = Struct_3(var_1, abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.e.x, global0.x), vec4<u32>(4294967295u, global0.x, u_input.e.x, 0u))) ^ vec4<u32>(34010u, u_input.c.x & _wgslsmith_clamp_u32(u_input.c.x, global0.x, u_input.c.x), _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 4294967295u) >> (4294967295u % 32u), max(4294967295u, ~57021u)));
    let var_3 = var_2.a;
    return firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(~var_2.b.zzz, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 18113u), var_2.b.xzx, vec3<u32>(u_input.c.x, 55211u, global0.x))), 4294967295u)) & ~(~min(_wgslsmith_div_vec2_u32(var_2.b.ww, u_input.c), select(var_2.b.xw, vec2<u32>(global0.x, 1u), vec2<bool>(false, false))));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.d.x), firstLeadingBit(u_input.d.x), abs(u_input.b)), u_input.a.zyx);
    global0 = _wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(~1u, _wgslsmith_mod_u32(global0.x, 61465u)), ~(~1u)), func_3());
    let var_1 = Struct_1(u_input.a.x, false, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~(~vec4<i32>(u_input.a.x, u_input.b, -2147483647i, u_input.b)), u_input.a), ~vec4<i32>(i32(-1i) * -2147483647i, i32(-1i) * -2147483647i, -u_input.a.x, -u_input.a.x)), !any(vec2<bool>(false, false)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(round(859f)), _wgslsmith_f_op_f32(select(-761f, _wgslsmith_f_op_f32(abs(1000f)), select(var_1.b, var_1.b, true))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(912f + _wgslsmith_f_op_f32(abs(408f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f), -211f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f))));
    var var_3 = Struct_3(Struct_1(u_input.d.x, u_input.e.x != 26177u, var_1.c, select(false, any(vec4<bool>(false, true, var_1.d, var_1.d)), false)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 1u, u_input.c.x, global0.x), vec4<u32>(arg_1, 12810u, arg_1, global0.x)), ~(vec4<u32>(u_input.c.x, u_input.e.x, global0.x, global0.x) >> (vec4<u32>(arg_1, u_input.c.x, global0.x, arg_1) % vec4<u32>(32u))), ~(~vec4<u32>(21781u, arg_0.x, arg_1, 4294967295u))));
    return any(vec4<bool>(false, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(var_3.a.d, true), vec2<bool>(var_3.a.b, var_1.d)), false)), !(!(!var_3.a.b)), true));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(749f + 372f)))), _wgslsmith_f_op_f32(f32(-1f) * -1493f))));
    global0 = ~select(_wgslsmith_mult_vec2_u32(select(arg_2.b.yx, ~u_input.e, vec2<bool>(arg_1, false)), ~(arg_3 | arg_3)), select(~(u_input.c << (vec2<u32>(arg_3.x, arg_3.x) % vec2<u32>(32u))), ~arg_3 & firstTrailingBit(arg_2.b.xy), vec2<bool>(!arg_2.a.d, !arg_2.a.b)), vec2<bool>(true, true));
    global0 = ~vec2<u32>(26419u, 47655u);
    global0 = vec2<u32>(0u, arg_3.x);
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(~arg_0 << (global0.x % 32u), _wgslsmith_sub_i32(-2147483647i, ~arg_2.a.a), -52009i, _wgslsmith_dot_vec4_i32(~arg_2.a.c, -u_input.a)) ^ u_input.a, -vec4<i32>(arg_0, ~_wgslsmith_mult_i32(-87649i, u_input.d.x), -abs(-8068i), ~arg_0));
    return Struct_3(arg_2.a, vec4<u32>(global0.x | 28239u, 1938u, ~12312u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(88624u, arg_3.x), arg_2.b.x)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    let var_0 = arg_0.a.c.wxx;
    var var_1 = Struct_2(arg_2.b.wyz);
    var var_2 = -countOneBits(arg_2.a.c & (arg_0.a.c & vec4<i32>(-2147483647i, arg_0.a.a, 28647i, 0i))) << (vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, 0u), 0u, func_3().x, _wgslsmith_sub_u32(arg_0.b.x, var_1.a.x)) % vec4<u32>(32u));
    var var_3 = arg_0;
    var var_4 = arg_0.b.wxw;
    return func_4(_wgslsmith_dot_vec3_i32(arg_2.a.c.xxw, var_0), 4294967295u < ~var_1.a.x, Struct_3(Struct_1(i32(-1i) * -arg_3, arg_1.x, u_input.a, false), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, countOneBits(u_input.e.x), var_3.b.x >> (20794u % 32u), ~4294967295u), firstTrailingBit(var_3.b))), _wgslsmith_add_vec2_u32(u_input.e, select(abs(arg_2.b.yw >> (vec2<u32>(var_3.b.x, arg_2.b.x) % vec2<u32>(32u))), vec2<u32>(func_3().x, ~arg_0.b.x), all(vec3<bool>(var_3.a.b, arg_0.a.b, false)))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    global0 = vec2<u32>(16176u | global0.x, 0u);
    global0 = _wgslsmith_mult_vec2_u32(~(~(~(~vec2<u32>(22751u, global0.x)))), u_input.c & select(~vec2<u32>(global0.x, global0.x), ~(~u_input.e), vec2<bool>(true, true)));
    var var_0 = func_5(func_4(-abs(1i), true, Struct_3(Struct_1(u_input.d.x, func_2(vec3<u32>(0u, u_input.c.x, 0u), u_input.c.x), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a), true), ~(~vec4<u32>(u_input.c.x, 118393u, u_input.c.x, u_input.e.x))), u_input.e), select(vec2<bool>(true, true), vec2<bool>(u_input.d.x > 1i, true), select(vec2<bool>(true, global0.x < 0u), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, all(vec2<bool>(true, true))))), Struct_3(Struct_1(firstTrailingBit(-u_input.b), select(true, arg_0 != arg_0, any(vec4<bool>(true, true, true, false))), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.d.x), select(-30980i, u_input.b, false), -2147483647i, -1i), false), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 0u, 0u) | vec4<u32>(94318u, global0.x, 1u, 1u), select(vec4<u32>(0u, u_input.e.x, 32123u, u_input.e.x), vec4<u32>(u_input.c.x, global0.x, 4294967295u, 20185u), true)), countOneBits(~vec4<u32>(0u, 4294967295u, u_input.c.x, u_input.e.x)))), 18369i);
    global0 = select(vec2<u32>(global0.x, 1u), vec2<u32>(4294967295u, firstLeadingBit(_wgslsmith_div_u32(u_input.e.x & global0.x, 0u ^ global0.x))), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(arg_0 - 627f), false)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -824f) - _wgslsmith_f_op_f32(-arg_0)));
    let var_1 = select(vec4<bool>(var_0.a.d || ((0u < var_0.b.x) || func_5(Struct_3(Struct_1(u_input.a.x, false, vec4<i32>(var_0.a.a, u_input.d.x, var_0.a.c.x, 55498i), true), var_0.b), vec2<bool>(true, var_0.a.b), Struct_3(Struct_1(u_input.d.x, true, vec4<i32>(var_0.a.a, u_input.b, var_0.a.a, 26619i), var_0.a.b), var_0.b), -33520i).a.d), any(select(!vec2<bool>(var_0.a.d, true), !vec2<bool>(false, var_0.a.b), true)), !(!var_0.a.b) || (_wgslsmith_add_u32(31385u, u_input.e.x) > var_0.b.x), var_0.a.b), select(vec4<bool>(var_0.a.d, all(vec2<bool>(true, var_0.a.d)), any(vec3<bool>(true, true, true)), select(arg_0 > arg_0, true, !var_0.a.b)), !(!(!vec4<bool>(var_0.a.d, var_0.a.d, true, true))), vec4<bool>(var_0.a.d, func_2(var_0.b.yzx, ~0u), !all(vec4<bool>(false, true, var_0.a.d, false)), !var_0.a.d)), select(!select(!vec4<bool>(var_0.a.d, true, true, false), !vec4<bool>(true, var_0.a.b, true, var_0.a.d), !var_0.a.b), select(select(!vec4<bool>(true, false, var_0.a.d, var_0.a.b), !vec4<bool>(true, false, var_0.a.b, false), select(vec4<bool>(true, var_0.a.d, var_0.a.d, true), vec4<bool>(true, var_0.a.d, var_0.a.d, var_0.a.d), var_0.a.d)), !select(vec4<bool>(true, true, var_0.a.b, false), vec4<bool>(var_0.a.b, true, var_0.a.b, true), var_0.a.d), !select(vec4<bool>(var_0.a.b, false, var_0.a.d, var_0.a.b), vec4<bool>(var_0.a.b, var_0.a.d, false, var_0.a.d), var_0.a.b)), var_0.a.d));
    return Struct_3(func_5(Struct_3(func_5(Struct_3(var_0.a, vec4<u32>(var_0.b.x, 11287u, var_0.b.x, 34155u)), vec2<bool>(false, var_1.x), func_4(2147483647i, true, Struct_3(var_0.a, var_0.b), u_input.e), select(u_input.a.x, -55823i, true)).a, _wgslsmith_mult_vec4_u32(var_0.b & vec4<u32>(u_input.e.x, 4890u, var_0.b.x, 1u), vec4<u32>(64692u, var_0.b.x, global0.x, 0u))), select(vec2<bool>(-425f < arg_0, false), select(!vec2<bool>(var_1.x, var_0.a.d), !var_1.zw, !var_1.x), -386f > _wgslsmith_f_op_f32(-353f * arg_0)), func_4(_wgslsmith_mod_i32(max(146i, u_input.b), -57608i), true, func_4(~1i, true, Struct_3(Struct_1(-2147483647i, true, vec4<i32>(-12085i, 46200i, u_input.d.x, u_input.a.x), var_0.a.b), vec4<u32>(global0.x, u_input.c.x, 17452u, 1603u)), var_0.b.wz), _wgslsmith_sub_vec2_u32(~vec2<u32>(7260u, u_input.e.x), ~u_input.c)), 1i).a, (_wgslsmith_mult_vec4_u32(~var_0.b, ~var_0.b) & var_0.b) << (vec4<u32>(global0.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.c.x, global0.x), vec3<u32>(32428u, global0.x, 1u)) % 32u), _wgslsmith_dot_vec2_u32(func_4(u_input.a.x, false, Struct_3(var_0.a, vec4<u32>(var_0.b.x, 30527u, global0.x, 130u)), u_input.c).b.wz, func_4(-57292i, var_0.a.b, Struct_3(var_0.a, vec4<u32>(1u, 6510u, global0.x, 5305u)), vec2<u32>(u_input.c.x, global0.x)).b.zy), _wgslsmith_div_u32(var_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.x, 48613u, u_input.c.x), vec4<u32>(u_input.e.x, 35540u, 1u, 0u))), ~(~79964u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1178f + _wgslsmith_f_op_f32(select(1432f, 1048f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1464f, 377f))))));
    var_0 = Struct_3(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f * _wgslsmith_f_op_f32(1490f + -639f)))).a, ~(vec4<u32>(countOneBits(global0.x), global0.x, u_input.c.x, 3890u) << (abs(vec4<u32>(30223u, global0.x, global0.x, u_input.c.x)) % vec4<u32>(32u))));
    let var_1 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-429f - 819f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(646f)) + 1f))), _wgslsmith_div_f32(152f, -278f))).a;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1489f)), 1196f));
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.x, ~((var_0.b.x & u_input.c.x) | countOneBits(0u))), countOneBits(vec2<u32>(~45171u << (~global0.x % 32u), abs(_wgslsmith_dot_vec3_u32(var_0.b.wyw, var_0.b.zyy)))));
    var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-570f, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, var_2.x)))));
    let var_3 = firstLeadingBit(-(~countOneBits(_wgslsmith_div_vec3_i32(var_0.a.c.zzx, var_0.a.c.ywy))));
    var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.x)) * var_2.x), var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -12729i, ~_wgslsmith_add_u32(func_3().x, u_input.c.x));
}

