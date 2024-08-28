struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(2223f, 1196f, 213f), vec3<f32>(511f, -595f, -326f), vec3<f32>(252f, -1138f, -312f), vec3<f32>(1000f, 1000f, -999f), vec3<f32>(301f, -1139f, 1985f), vec3<f32>(-550f, 642f, 1108f), vec3<f32>(-900f, -2588f, 2176f), vec3<f32>(339f, 149f, 953f), vec3<f32>(-1537f, -1120f, -328f), vec3<f32>(346f, -483f, 1000f), vec3<f32>(1457f, -551f, -2305f), vec3<f32>(-155f, -2555f, -1000f), vec3<f32>(1172f, -899f, 587f), vec3<f32>(491f, 850f, 1000f), vec3<f32>(1180f, -757f, -1793f), vec3<f32>(-898f, 609f, -1236f), vec3<f32>(395f, 471f, -2128f), vec3<f32>(-972f, -379f, -1169f), vec3<f32>(166f, 465f, -102f), vec3<f32>(287f, 1524f, -102f), vec3<f32>(1000f, -102f, 1000f), vec3<f32>(-1084f, 490f, 911f), vec3<f32>(-839f, -977f, 475f), vec3<f32>(-610f, -173f, 1489f), vec3<f32>(-1458f, -611f, -414f), vec3<f32>(-958f, 1000f, -477f), vec3<f32>(-1000f, 624f, 759f), vec3<f32>(1923f, 434f, 1485f), vec3<f32>(-1000f, 1891f, 576f), vec3<f32>(1620f, 256f, -955f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_1(-1974f, firstLeadingBit(u_input.d.xy), ~u_input.d.zw, arg_1.x, (select(~u_input.e.x, 5598i, true) << ((u_input.d.x & 4294967295u) % 32u)) == -2147483647i);
    var var_1 = arg_0;
    var var_2 = Struct_1(1448f, vec2<u32>(select(45931u, abs(_wgslsmith_mult_u32(4294967295u, var_0.b.x)), any(vec4<bool>(false, arg_1.x, var_0.e, var_0.e))), 4149u), ~_wgslsmith_mod_vec2_u32(max(u_input.d.zz, var_0.c), select(vec2<u32>(var_0.c.x, 17740u) >> (var_0.b % vec2<u32>(32u)), ~vec2<u32>(var_0.c.x, var_0.c.x), arg_1.zx)), false, (var_0.a <= var_0.a) | var_0.e);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1659f))))), -1000f);
    var_0 = Struct_1(var_0.a, u_input.d.yx, firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x << (var_0.c.x % 32u), ~u_input.d.x), max(vec2<u32>(12410u, 14021u), var_0.b))), !(1f <= _wgslsmith_div_f32(var_0.a, var_0.a)), !var_2.e);
    return ~(~(_wgslsmith_add_u32(var_2.b.x, u_input.d.x) ^ _wgslsmith_mod_u32(~var_2.c.x, 13201u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~select(_wgslsmith_mod_vec3_u32(u_input.d.zzy, _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d.xzw, vec3<u32>(18131u, 23041u, 9586u)), min(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(4294967295u, arg_0.b.x, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(72945u, 4294967295u, 4294967295u), vec3<u32>(arg_0.c.x, 25042u, arg_0.b.x)))), u_input.d.xxx, vec3<bool>(arg_0.e, any(vec2<bool>(arg_0.d, true)), true));
    global0 = array<vec3<f32>, 30>();
    var var_1 = (_wgslsmith_mult_u32(_wgslsmith_sub_u32(43904u, var_0.x), ~37618u) ^ func_3(-1i, vec3<bool>(true, true, false))) | 22165u;
    global0 = array<vec3<f32>, 30>();
    var var_2 = abs(firstLeadingBit(0u));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_0.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-arg_0.a)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-992f, arg_0.a)))), 886f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1273f - arg_1.a))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-664f, 362f)), _wgslsmith_f_op_f32(-arg_0.a), true)))));
    let var_2 = u_input.a;
    let var_3 = Struct_2(func_2(func_2(arg_0)), arg_1.e && (u_input.a.x < u_input.e.x), arg_0);
    var_0 = 559f;
    return Struct_2(var_3.c, true, func_2(func_2(func_2(arg_0))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(-659f, ~firstLeadingBit(max(arg_1.c, vec2<u32>(0u, arg_1.c.x))), vec2<u32>(arg_2.a.b.x, arg_2.c.c.x), all(select(vec3<bool>(true, true, arg_2.a.d), select(vec3<bool>(arg_0, arg_3.a.e, arg_1.d), vec3<bool>(true, false, false), arg_1.e), select(vec3<bool>(arg_0, arg_3.b, arg_1.e), vec3<bool>(true, arg_2.a.e, true), vec3<bool>(true, true, arg_3.a.e)))), !(!func_4(Struct_1(-1645f, u_input.d.xy, arg_2.a.b, true, false), arg_3.a).b)), all(vec4<bool>(true, true, true, true)), arg_1);
    var_0 = Struct_2(arg_2.c, !var_0.b, func_4(arg_3.a, var_0.c).c);
    let var_1 = u_input.e;
    var var_2 = _wgslsmith_dot_vec3_i32(max(-_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.x, 0i, -1i), var_1.ywx, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, u_input.c), vec3<i32>(var_1.x, -2147483647i, var_1.x))), u_input.a), _wgslsmith_div_vec3_i32(abs(u_input.e.xyy), _wgslsmith_div_vec3_i32(~vec3<i32>(var_1.x, 73560i, u_input.e.x), var_1.zyw)));
    var var_3 = vec2<i32>(i32(-1i) * -64505i, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.e.x, 2147483647i), var_1.zy), _wgslsmith_add_vec2_i32(vec2<i32>(0i, 59241i), var_1.yy)), var_1.x, 16817i));
    return func_2(func_2(Struct_1(1343f, select(vec2<u32>(57373u, 45850u), _wgslsmith_clamp_vec2_u32(vec2<u32>(12030u, 4294967295u), arg_1.b, vec2<u32>(38568u, 0u)), arg_2.b), abs(~var_0.c.c), any(vec3<bool>(true, arg_0, true)), var_0.b)));
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    global0 = array<vec3<f32>, 30>();
    var var_0 = Struct_2(arg_0, arg_0.e, func_5(true, func_2(arg_0), Struct_2(func_5(arg_0.d || arg_0.d, func_5(arg_0.d, Struct_1(-1667f, arg_0.c, vec2<u32>(arg_0.b.x, 1u), false, arg_0.d), Struct_2(arg_0, true, Struct_1(arg_0.a, arg_0.b, arg_0.c, true, arg_0.d)), Struct_2(arg_0, arg_0.d, arg_0)), Struct_2(arg_0, arg_0.e, arg_0), Struct_2(Struct_1(arg_0.a, vec2<u32>(9078u, 13740u), vec2<u32>(10657u, 0u), arg_0.d, false), false, arg_0)), !(arg_0.a == -440f), Struct_1(_wgslsmith_div_f32(arg_0.a, arg_0.a), ~vec2<u32>(u_input.d.x, arg_0.c.x), ~arg_0.b, false, true)), func_4(func_2(arg_0), func_5(func_2(Struct_1(arg_0.a, vec2<u32>(1u, u_input.d.x), u_input.d.yx, false, false)).d, arg_0, func_4(arg_0, arg_0), Struct_2(Struct_1(arg_0.a, u_input.d.xw, u_input.d.zz, true, arg_0.d), arg_0.d, arg_0)))));
    var_0 = func_4(arg_0, arg_0);
    var var_1 = func_2(arg_0);
    var var_2 = func_4(func_4(func_5(var_0.a.b.x > arg_0.c.x, var_0.a, Struct_2(Struct_1(arg_0.a, vec2<u32>(arg_0.c.x, var_1.b.x), vec2<u32>(var_0.a.c.x, 4294967295u), false, var_0.b), !var_0.b, Struct_1(var_0.c.a, var_0.a.c, vec2<u32>(26279u, u_input.d.x), true, true)), Struct_2(Struct_1(1178f, u_input.d.ww, var_1.b, var_0.a.e, true), true, var_0.c)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a))), u_input.d.ww, vec2<u32>(abs(1u), ~0u), false, var_0.b)).a, func_2(func_2(arg_0)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(func_2(Struct_1(var_0.a.a, var_1.b, u_input.d.zw, arg_0.d, var_0.b)).a + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a)))), vec2<u32>(abs(_wgslsmith_sub_u32(var_0.a.b.x, arg_0.c.x)), 1u), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c.c.x, var_1.c.x) >> (var_2.c.c % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(var_0.a.b, arg_0.b)), abs(~vec2<u32>(1u, var_1.b.x))), true, any(!select(vec2<bool>(false, var_0.a.d), vec2<bool>(false, var_1.d), vec2<bool>(false, false)))), var_2.a.d, func_2(arg_0));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = func_6(func_5(u_input.d.x < _wgslsmith_sub_u32(~45268u, _wgslsmith_mult_u32(u_input.d.x, 1u)), Struct_1(-994f, abs(reverseBits(vec2<u32>(4294967295u, u_input.d.x))), reverseBits(vec2<u32>(25208u, 0u)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true), Struct_2(Struct_1(_wgslsmith_f_op_f32(-226f * -875f), ~vec2<u32>(u_input.d.x, 1u), vec2<u32>(u_input.d.x, u_input.d.x), true, true), true, Struct_1(_wgslsmith_f_op_f32(floor(1008f)), ~u_input.d.yz, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.d.x, u_input.d.x)), false, false)), func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1598f), vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(u_input.d.x, u_input.d.x)), false, true), func_2(Struct_1(634f, u_input.d.wz, vec2<u32>(u_input.d.x, u_input.d.x), true, false)))));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(~u_input.d.wy)) ^ ~max(vec2<u32>(u_input.d.x, 52122u), vec2<u32>(0u, 51701u)));
    var var_1 = func_1(~(~vec4<i32>(-69107i, reverseBits(u_input.c), u_input.c, -5166i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.yw, u_input.d.wx) | ~vec2<u32>(var_0.x, u_input.d.x), u_input.d.xy), _wgslsmith_sub_vec2_u32(~var_1.b, ~var_1.c) | abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, u_input.d.x), var_1.c))), u_input.b.x >> (var_1.c.x % 32u), vec3<u32>(_wgslsmith_sub_u32(var_0.x, _wgslsmith_add_u32(34681u, var_1.c.x)), 4294967295u, ~u_input.d.x));
}

