struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(889f, 200f, -938f);

var<private> global1: f32;

var<private> global2: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_2(0u, vec2<bool>(false, true), false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), Struct_3(vec4<f32>(880f, 143f, 319f, -2170f), Struct_2(38114u, vec2<bool>(false, true), false, false), vec3<f32>(748f, -1159f, -1413f))), Struct_4(Struct_2(61011u, vec2<bool>(true, false), true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), Struct_3(vec4<f32>(1000f, -1380f, -1753f, -461f), Struct_2(4294967295u, vec2<bool>(true, false), true, false), vec3<f32>(-242f, -1063f, -1082f))), Struct_4(Struct_2(60384u, vec2<bool>(false, false), true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), Struct_3(vec4<f32>(682f, 829f, -2384f, -239f), Struct_2(2588u, vec2<bool>(false, false), true, false), vec3<f32>(371f, -814f, 468f))), Struct_4(Struct_2(45943u, vec2<bool>(false, false), false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), Struct_3(vec4<f32>(2392f, 585f, -1080f, 218f), Struct_2(2489u, vec2<bool>(true, true), true, false), vec3<f32>(-1283f, 1784f, -1831f))), Struct_4(Struct_2(84434u, vec2<bool>(false, false), false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), Struct_3(vec4<f32>(925f, 180f, -1512f, -1467f), Struct_2(66928u, vec2<bool>(true, true), true, true), vec3<f32>(-959f, -1000f, -983f))), Struct_4(Struct_2(4294967295u, vec2<bool>(true, true), true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), Struct_3(vec4<f32>(227f, -262f, 1609f, 1000f), Struct_2(0u, vec2<bool>(true, true), false, false), vec3<f32>(332f, 1290f, 808f))), Struct_4(Struct_2(0u, vec2<bool>(true, false), false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), Struct_3(vec4<f32>(178f, -1564f, -480f, 1597f), Struct_2(49242u, vec2<bool>(false, false), false, false), vec3<f32>(-1374f, -122f, -585f))), Struct_4(Struct_2(136912u, vec2<bool>(false, false), true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), Struct_3(vec4<f32>(1836f, -1000f, 777f, 1331f), Struct_2(1u, vec2<bool>(true, false), true, false), vec3<f32>(611f, 1000f, -1000f))), Struct_4(Struct_2(0u, vec2<bool>(false, false), true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), Struct_3(vec4<f32>(-944f, -217f, 1000f, -1761f), Struct_2(10061u, vec2<bool>(false, false), true, true), vec3<f32>(-1000f, 1602f, -1385f))));

var<private> global3: f32 = 511f;

var<private> global4: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -183f, global0.x, global0.x))), Struct_2(59526u, !select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), select(true, !any(vec4<bool>(false, false, false, true)), !all(vec2<bool>(false, true))), false), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(161f, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + 832f), -1582f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) * vec3<f32>(-1033f, global0.x, 433f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1403f, -781f, global0.x)) - vec3<f32>(global0.x, 1653f, 1000f))))));
    global1 = -327f;
    global2 = array<Struct_4, 9>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(var_0.a.xz)), _wgslsmith_f_op_vec2_f32(ceil(var_0.a.xx)), var_0.b.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 1000f)) + _wgslsmith_f_op_vec2_f32(-global0.xy)))), Struct_3(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -174f, global0.x, -1000f) - _wgslsmith_f_op_vec4_f32(-var_0.a))), var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.xyx * var_0.a.wyz), vec3<f32>(global0.x, var_0.a.x, 811f)))), vec2<bool>(false, !(!var_0.b.b.x)));
    global3 = _wgslsmith_f_op_f32(1805f - -1505f);
    return _wgslsmith_sub_u32(~(~var_1.b.b.a & _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.b.a, u_input.a, 6149u, 6049u)), vec4<u32>(24078u, 1u, u_input.a, var_0.b.a) ^ vec4<u32>(38355u, u_input.a, var_0.b.a, 5417u))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(~7930u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, var_0.b.a, var_0.b.a)), _wgslsmith_clamp_u32(0u, 45983u, var_1.b.b.a)), 24032u), ~var_1.b.b.a));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~arg_2.b.a, 1u, ~u_input.a), _wgslsmith_sub_u32(func_3(), 78198u)), select(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(30744u, 22746u, arg_2.b.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, arg_2.b.a)), arg_2.b.a), _wgslsmith_mod_vec2_u32(max(vec2<u32>(35466u, 32731u) | vec2<u32>(arg_2.b.a, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(0u, u_input.a))), ~firstTrailingBit(vec2<u32>(43023u, 41996u))), vec2<bool>(true, any(select(vec2<bool>(false, arg_2.b.d), vec2<bool>(true, arg_2.b.d), false)))));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_add_i32(i32(-1i) * -45672i, 1i)), _wgslsmith_add_i32(~(~37635i), _wgslsmith_sub_i32(1i, 1i)), 14274i), -52519i);
    global1 = arg_0;
    var var_2 = arg_2.b.d;
    var var_3 = vec2<bool>(!any(!vec3<bool>(arg_2.b.b.x, true, arg_2.b.c)), true);
    return _wgslsmith_f_op_f32(sign(-1345f));
}

fn func_2() -> Struct_1 {
    var var_0 = max(abs(_wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(33442i, -11436i, 1i, -17728i)), vec4<i32>(-2147483647i >> (u_input.a % 32u), ~(-3799i), ~(-19843i), _wgslsmith_sub_i32(15563i, -60471i)), vec4<i32>(1i, 1i, 1i, 1i))), abs(-(~vec4<i32>(1i, -2147483647i, -1i, 27069i))));
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(global0.x * 999f), -787f, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1828f, global0.x, -1784f, -610f), vec4<f32>(global0.x, global0.x, global0.x, global0.x))), Struct_2(func_3(), vec2<bool>(true, true), true, true), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, 1000f)))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1225f, -363f, -960f, _wgslsmith_f_op_f32(step(global0.x, global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 1408f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0.x)), -298f), all(vec3<bool>(true, true, true)))));
    global3 = var_1.b;
    let var_2 = reverseBits(vec3<i32>(firstLeadingBit(-1i) << (u_input.a % 32u), -21973i, _wgslsmith_mult_i32(var_0.x, min(_wgslsmith_sub_i32(55414i, var_0.x), 0i))));
    var var_3 = Struct_2(_wgslsmith_div_u32(u_input.a, u_input.a), select(select(!(!vec2<bool>(false, var_1.a)), !select(vec2<bool>(var_1.a, false), vec2<bool>(false, true), true), var_1.a || false), !(!select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, false))), vec2<bool>(!(!var_1.a), select(false, var_1.a, true))), true, var_1.a);
    return Struct_1(~var_3.a < 24545u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-1739f + _wgslsmith_f_op_f32(-global0.x)))), vec4<f32>(746f, var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -721f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-916f))), global0.x)));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(arg_1.c)))) * arg_1.c) - _wgslsmith_f_op_vec4_f32(floor(arg_1.c))), Struct_2(1u, select(vec2<bool>(true, true), vec2<bool>(!arg_1.a, all(vec2<bool>(arg_1.a, false))), true), !(false && func_2().a), !(!(!arg_1.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-397f, 236f, global0.x), _wgslsmith_f_op_vec3_f32(ceil(arg_1.c.xzz)))) - _wgslsmith_f_op_vec3_f32(-func_2().c.xxy)));
    global0 = _wgslsmith_f_op_vec3_f32(ceil(var_0.a.yxz));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1208f));
    let var_2 = var_0.b;
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -212f), _wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_f_op_f32(f32(-1f) * -1138f)));
    return ~u_input.a == var_2.a;
}

fn func_1(arg_0: vec3<u32>) -> bool {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x), _wgslsmith_f_op_f32(f32(-1f) * -828f))), -376f, global0.x) * vec4<f32>(314f, _wgslsmith_f_op_f32(521f * -1590f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-677f * -2000f))))), _wgslsmith_f_op_f32(floor(-1000f))));
    let var_2 = select(vec4<bool>(select(~1u >= firstTrailingBit(arg_0.x), _wgslsmith_clamp_i32(-1i, 0i, 45020i) < _wgslsmith_mod_i32(-14438i, -2147483647i), true), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), true, true), vec4<bool>(true, true, select(func_5(650f, func_2()), func_2().a, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1617f, var_1.x))) != 936f), true);
    let var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-751f, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-353f, var_1.x, true))))), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global0.x, -712f, -386f))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(step(-1000f, var_1.x)), _wgslsmith_f_op_f32(-318f + var_1.x), -722f), false)), Struct_2(max(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(59687u, var_0, 54516u)), 1u), vec2<bool>(func_5(-1123f, Struct_1(var_2.x, -566f, vec4<f32>(global0.x, global0.x, var_1.x, var_1.x))), var_2.x), var_2.x, !(var_0 != u_input.a)), var_1.wzw), vec2<bool>(false && all(vec3<bool>(var_2.x, var_2.x, true)), false));
    let var_4 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, var_3.a.x))) * vec2<f32>(var_1.x, -1121f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zy * global0.xy)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xz), vec2<f32>(695f, 620f))))), var_3.b, !var_2.yw);
    return all(select(select(select(vec2<bool>(var_2.x, false), vec2<bool>(var_4.c.x, var_2.x), var_2.x), var_2.zz, false), var_4.b.b.b, select(vec2<bool>(var_3.c.x, var_4.c.x), vec2<bool>(false, var_3.c.x), var_2.xx))) && select(false, (any(var_3.b.b.b) == var_2.x) || true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec4<bool>(true, func_1(vec3<u32>(u_input.a, 0u, u_input.a)), abs(u_input.a) == ~8883u, false));
    let var_1 = select(!select(vec4<bool>(u_input.a <= 1u, all(vec2<bool>(false, true)), false, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true), func_1(reverseBits(vec3<u32>(0u, 4294967295u, u_input.a)))), !vec4<bool>(func_2().a, func_1(~vec3<u32>(u_input.a, 40990u, u_input.a)), false, true));
    var var_2 = Struct_5(global0.yx, Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -345f, global0.x, 1210f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 470f, -1569f, -212f))), Struct_2(u_input.a, select(var_1.zw, !var_1.ww, var_1.zx), !(u_input.a > u_input.a), var_1.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -326f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(188f, global0.x, -285f))))), !(!select(!var_1.xy, select(var_1.wx, vec2<bool>(var_1.x, false), false), vec2<bool>(true, var_1.x))));
    var_2 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.a.x), Struct_3(_wgslsmith_f_op_vec4_f32(-var_2.b.a), Struct_2(u_input.a, var_1.yx, false, var_1.x), vec3<f32>(-393f, func_2().c.x, -273f)), vec2<bool>(true, false));
    var_2 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(trunc(2084f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-420f))))))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_2.b.a)))), Struct_2(9047u, select(var_1.wz, vec2<bool>(false, var_2.c.x), vec2<bool>(true, true)), var_2.b.b.d, var_2.c.x), var_2.b.c), var_1.zw);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-909f, 1641f) - _wgslsmith_f_op_f32(step(-1929f, 1672f))))) - var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(34492i, 0i, -26703i)), abs(vec3<i32>(26187i, -17625i, -64838i))), _wgslsmith_add_i32(-18144i, _wgslsmith_mult_i32(0i, 23300i)))), ~abs(vec4<u32>(6176u, var_2.b.b.a, var_2.b.b.a, var_2.b.b.a)) >> (~vec4<u32>(u_input.a, 4294967295u << (u_input.a % 32u), ~24080u, select(51939u, 19810u, false)) % vec4<u32>(32u)));
}

