struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    global0 = select(vec4<bool>(select(true, false, arg_3.d), false, true, true), vec4<bool>(true, !((arg_3.e.x <= -23599i) | any(vec3<bool>(false, arg_1.d, false))), all(!select(global0.yxy, vec3<bool>(true, global0.x, arg_1.d), arg_1.d)), true & any(select(vec2<bool>(arg_1.d, true), global0.xx, vec2<bool>(arg_1.d, arg_1.d)))), true);
    let var_0 = ~max(~_wgslsmith_add_u32(46400u, arg_1.c.x), ~96029u);
    global0 = !vec4<bool>(!(-32239i < _wgslsmith_sub_i32(u_input.b.x, arg_2)), max(var_0, ~1u) > _wgslsmith_mult_u32(countOneBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.x, 1u, arg_3.c.x, 4294967295u), vec4<u32>(25352u, 0u, arg_3.c.x, arg_1.c.x))), 1u >= _wgslsmith_add_u32(arg_1.c.x, var_0), arg_1.d);
    var var_1 = any(!(!select(!vec4<bool>(false, true, false, global0.x), select(vec4<bool>(arg_1.d, true, false, global0.x), vec4<bool>(global0.x, arg_1.d, arg_1.d, true), vec4<bool>(arg_1.d, true, false, true)), arg_1.d)));
    var var_2 = Struct_1(arg_1.a ^ ~(u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(30965u, 0u, 4294967295u), vec3<u32>(24841u, arg_3.c.x, 0u)) % 32u)), -1i, reverseBits(max(vec2<u32>(_wgslsmith_add_u32(var_0, arg_1.c.x), ~arg_3.c.x), arg_3.c)), arg_1.d || !(26446u == firstTrailingBit(var_0)), u_input.a.zyx);
    return false;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    return Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-max(arg_3.b, 2458i), u_input.b.x, u_input.a.x, min(arg_3.b, arg_3.a)), ~(-vec4<i32>(-13547i, -31846i, 1i, u_input.a.x))), 2147483647i, ~countOneBits(arg_3.c), true, vec3<i32>(select(_wgslsmith_sub_i32(0i >> (1u % 32u), var_0.b), -49267i, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-182f, -1000f)), arg_3, -arg_3.b, Struct_1(arg_3.e.x, arg_3.b, vec2<u32>(arg_1, 25815u), arg_2, arg_3.e))), 0i, var_0.b));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<f32>) -> Struct_1 {
    return func_2(~5669u, arg_0.c.x, arg_0.d, Struct_1(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0.c.x, arg_2), vec4<u32>(1u, 1u, 27461u, 33698u)), 25350u, false, arg_0).b & ~firstLeadingBit(u_input.a.x), 1i >> (~func_2(4294967295u, 32358u, true, arg_0).c.x % 32u), ~arg_0.c >> (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.c.x, arg_2), arg_0.c >> (arg_0.c % vec2<u32>(32u))) % vec2<u32>(32u)), arg_0.d, _wgslsmith_clamp_vec3_i32(u_input.a.zyw, vec3<i32>(u_input.a.x, -1i, arg_0.b) >> (abs(vec3<u32>(arg_2, arg_2, arg_0.c.x)) % vec3<u32>(32u)), u_input.a.zyx)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> vec4<bool> {
    let var_0 = vec3<u32>(arg_0 << (_wgslsmith_clamp_u32(~(~arg_0), _wgslsmith_mult_u32(~arg_2.x, _wgslsmith_dot_vec3_u32(arg_2.yxz, arg_2.xxz)), arg_0) % 32u), (_wgslsmith_sub_u32(arg_2.x, _wgslsmith_div_u32(arg_0, arg_0)) ^ _wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(arg_2.wy, arg_1.c))) | _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_2.x, 10011u, 23906u)), firstLeadingBit(arg_2.wxx) << (~vec3<u32>(2765u, 26898u, 1u) % vec3<u32>(32u))), 1u);
    global0 = select(select(select(select(!vec4<bool>(false, true, false, arg_1.d), select(vec4<bool>(arg_3, false, true, true), vec4<bool>(global0.x, true, arg_3, false), true), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(true, true, arg_3, global0.x), true)), !(!vec4<bool>(true, global0.x, global0.x, global0.x)), (i32(-1i) * -12779i) > (67724i | u_input.a.x)), select(select(vec4<bool>(true, global0.x, arg_3, arg_1.d), vec4<bool>(arg_1.d, arg_3, global0.x, true), vec4<bool>(arg_1.d, arg_1.d, global0.x, arg_1.d)), select(select(vec4<bool>(global0.x, arg_3, false, false), vec4<bool>(false, true, arg_3, arg_3), vec4<bool>(arg_3, arg_1.d, arg_1.d, global0.x)), !vec4<bool>(false, false, arg_3, arg_1.d), arg_0 <= arg_2.x), !global0.x | any(vec3<bool>(arg_1.d, global0.x, false))), global0.x), select(vec4<bool>(global0.x, true, !(!arg_3), global0.x), vec4<bool>((4294967295u & arg_1.c.x) != 33269u, -u_input.b.x > _wgslsmith_div_i32(-15948i, -16239i), true, true), select(vec4<bool>(true, any(vec2<bool>(true, true)), arg_3, arg_2.x > arg_1.c.x), vec4<bool>(u_input.a.x <= -2147483647i, global0.x, false, true), vec4<bool>(all(global0.yyz), !arg_1.d, any(vec4<bool>(false, arg_3, arg_3, arg_1.d)), any(vec3<bool>(arg_1.d, arg_1.d, false))))), select(vec4<bool>(arg_3, true, true, global0.x), !(!select(vec4<bool>(arg_1.d, arg_3, arg_3, false), vec4<bool>(true, true, global0.x, arg_3), arg_1.d)), select(global0.x != arg_3, select(!arg_3, true, arg_1.d), arg_1.d)));
    global0 = !select(vec4<bool>(false, ~var_0.x != arg_1.c.x, !(1u < arg_1.c.x), func_2(3336u, ~arg_1.c.x, func_4(Struct_1(17214i, u_input.a.x, vec2<u32>(31480u, 231u), global0.x, vec3<i32>(arg_1.e.x, u_input.a.x, u_input.a.x)), vec4<f32>(2156f, -1033f, 178f, 421f), 0u, vec4<f32>(-1004f, 1000f, -1078f, -553f)).d, Struct_1(2147483647i, arg_1.b, vec2<u32>(1u, 56905u), false, u_input.a.yzz)).d), vec4<bool>((4294967295u << (arg_2.x % 32u)) != 1181u, all(select(vec4<bool>(true, true, arg_1.d, false), vec4<bool>(arg_3, false, true, false), true)), !func_3(vec2<f32>(650f, -1119f), Struct_1(0i, arg_1.e.x, vec2<u32>(4294967295u, arg_0), false, arg_1.e), arg_1.b, arg_1), (arg_1.c.x ^ 29076u) == min(0u, 56057u)), !(!(arg_3 && true)));
    global0 = !(!(!vec4<bool>(true, any(global0.yww), false, func_4(arg_1, vec4<f32>(751f, -1000f, -342f, 193f), 44238u, vec4<f32>(-1000f, 213f, -137f, 292f)).d)));
    let var_1 = arg_1;
    return !(!select(!(!vec4<bool>(arg_3, arg_1.d, true, global0.x)), vec4<bool>(arg_2.x <= 1u, var_1.d || global0.x, any(vec2<bool>(true, arg_3)), true), select(vec4<bool>(var_1.d, true, arg_1.d, true), vec4<bool>(var_1.d, false, true, false), any(vec4<bool>(global0.x, true, var_1.d, false)))));
}

fn func_1() -> Struct_1 {
    global0 = func_5(4294967295u, func_4(func_2(1u, 41808u, all(vec4<bool>(true, true, true, true)), Struct_1(~5336i, u_input.b.x, ~vec2<u32>(0u, 4294967295u), true, ~vec3<i32>(-2147483647i, u_input.b.x, -1i))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-183f, 667f, 1341f, -1653f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1523f, -1657f, 301f, 358f), vec4<f32>(1334f, 649f, -884f, -410f)))), vec4<f32>(1f, 1f, 1f, 1f))), ~(~1u), vec4<f32>(-164f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -982f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-796f + 1569f))), -439f)), ~(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) << (vec4<u32>(~57472u, min(4294967295u, 86843u), ~1u, 0u) % vec4<u32>(32u))), ~2147483647i > -u_input.a.x);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-992f)), _wgslsmith_f_op_f32(172f * -666f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-688f, 589f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1711f, _wgslsmith_f_op_f32(step(852f, -1061f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(301f, -1254f), -797f)));
    var var_1 = func_4(Struct_1(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, ~(-1i), u_input.a.x), _wgslsmith_sub_vec3_i32(u_input.a.xzx, _wgslsmith_mod_vec3_i32(u_input.a.wyx, vec3<i32>(u_input.b.x, u_input.b.x, 1i)))), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(9651u, 1u, 1u, 66985u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(46851u, 1u, 34030u)), vec3<u32>(29267u, 62542u, 3126u))), global0.x, -u_input.a.yyy), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), var_0.x, var_0.x))), reverseBits(~(~12020u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 2048f, var_0.x, var_0.x), vec4<f32>(-1000f, var_0.x, var_0.x, 1555f), false)) + vec4<f32>(var_0.x, -743f, var_0.x, 769f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, var_0.x))), global0.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.x, -787f)), _wgslsmith_f_op_f32(round(-996f)))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1829f + var_0.x), _wgslsmith_f_op_f32(-911f + 165f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-198f, var_0.x), vec2<f32>(var_0.x, 1356f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f - -1652f), _wgslsmith_f_op_f32(-167f + 824f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-138f, -430f))))));
    let var_2 = true;
    return func_2(4294967295u, ~(~2128u), ((~43911u ^ ~var_1.c.x) >> (~var_1.c.x % 32u)) != ~max(select(0u, var_1.c.x, false), reverseBits(var_1.c.x)), Struct_1(-25547i, _wgslsmith_div_i32(~_wgslsmith_sub_i32(-37924i, var_1.a), -max(-3745i, 1227i)), vec2<u32>(var_1.c.x, func_4(Struct_1(u_input.a.x, var_1.a, var_1.c, global0.x, vec3<i32>(var_1.e.x, 1i, u_input.b.x)), vec4<f32>(446f, var_0.x, var_0.x, var_0.x), 1665u, vec4<f32>(-1050f, var_0.x, var_0.x, var_0.x)).c.x | 1u), _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, 0u), 1u) < ~(~var_1.c.x), vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_clamp_i32(-46853i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, -31310i, -11765i, -24539i)), 27052i))));
}

fn func_6(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0.d;
    let var_1 = -41211i;
    let var_2 = func_1();
    global0 = !(!vec4<bool>(true, false, true, var_2.d));
    global0 = vec4<bool>(all(!func_5(1u, Struct_1(-20383i, arg_0.a, vec2<u32>(var_2.c.x, 15136u), false, vec3<i32>(1i, 1i, arg_0.b)), abs(vec4<u32>(0u, arg_0.c.x, 16039u, 5129u)), true).yw), func_1().d, var_0, false);
    return 1417f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(false, global0.x, all(vec2<bool>(!(!global0.x), !any(vec4<bool>(true, global0.x, global0.x, global0.x)))), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_6(func_1())), -287f)), -1177f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1509f + 937f), _wgslsmith_f_op_f32(f32(-1f) * -1283f), -681f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1303f, -211f, -1696f), vec3<f32>(380f, -1598f, -296f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(113f, -770f, 795f) + vec3<f32>(750f, 212f, -1028f)))) + vec3<f32>(-1000f, -1896f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-301f - -690f), _wgslsmith_f_op_f32(sign(-156f))))));
}

