struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec4<f32>(-739f, 797f, 1504f, 1582f), false, false, Struct_1(-105f, 103013u)), Struct_3(vec4<f32>(555f, 1172f, -438f, -2056f), true, false, Struct_1(493f, 1u)), Struct_3(vec4<f32>(267f, 1000f, -551f, 2734f), false, true, Struct_1(104f, 4294967295u)), Struct_3(vec4<f32>(1326f, 1112f, -1271f, -1745f), true, false, Struct_1(-505f, 0u)), Struct_3(vec4<f32>(-566f, -1916f, -725f, 742f), true, false, Struct_1(-1000f, 81281u)), Struct_3(vec4<f32>(1000f, -2320f, -196f, 1000f), true, false, Struct_1(555f, 4294967295u)), Struct_3(vec4<f32>(1040f, 1613f, -245f, 2091f), true, false, Struct_1(-199f, 52094u)), Struct_3(vec4<f32>(151f, 1148f, -1104f, 1811f), true, false, Struct_1(238f, 58062u)), Struct_3(vec4<f32>(-421f, 295f, 660f, 663f), false, false, Struct_1(-965f, 4294967295u)), Struct_3(vec4<f32>(-173f, -332f, 196f, -1000f), false, true, Struct_1(-1495f, 19986u)), Struct_3(vec4<f32>(297f, -1000f, 1603f, 390f), false, true, Struct_1(-483f, 1u)), Struct_3(vec4<f32>(-250f, 1511f, -619f, 492f), true, true, Struct_1(-368f, 1u)), Struct_3(vec4<f32>(-1000f, -140f, -237f, 1003f), true, true, Struct_1(476f, 100838u)), Struct_3(vec4<f32>(1449f, -891f, 509f, -1571f), true, true, Struct_1(259f, 20350u)), Struct_3(vec4<f32>(1050f, 1000f, 531f, -1265f), false, false, Struct_1(1121f, 53444u)), Struct_3(vec4<f32>(1918f, -319f, 705f, -310f), false, true, Struct_1(-393f, 7073u)), Struct_3(vec4<f32>(1000f, 1434f, 1455f, -1289f), false, false, Struct_1(-960f, 11540u)), Struct_3(vec4<f32>(-1182f, -833f, 241f, -298f), true, false, Struct_1(362f, 18096u)), Struct_3(vec4<f32>(553f, -613f, -1322f, 1814f), false, false, Struct_1(1000f, 29170u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_5) -> i32 {
    let var_0 = (i32(-1i) * -12256i) >> (arg_1.a.d.b % 32u);
    let var_1 = arg_0.xxy;
    let var_2 = _wgslsmith_div_vec4_u32(arg_1.c.a, select(~_wgslsmith_mod_vec4_u32(vec4<u32>(67778u, u_input.a, u_input.b.x, arg_1.c.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(61782u, 0u, 14269u, 0u), arg_1.a.a, vec4<u32>(u_input.b.x, u_input.b.x, 0u, arg_1.a.d.b))), _wgslsmith_mod_vec4_u32(vec4<u32>(14665u, _wgslsmith_add_u32(arg_1.c.a.x, 20197u), countOneBits(2084u), _wgslsmith_mod_u32(u_input.a, 1u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 122226u, u_input.b.x, 4294967295u), vec4<u32>(0u, arg_1.d, u_input.a, 1u))), arg_0));
    let var_3 = ~select(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(50729u, var_2.x, var_2.x, arg_1.c.a.x), var_2), arg_1.a.d.b, _wgslsmith_div_u32(_wgslsmith_mod_u32(39314u, u_input.b.x), arg_1.c.d.b)), firstLeadingBit(arg_1.a.a.xwy), vec3<bool>(_wgslsmith_mod_i32(u_input.d.x, 1i) < _wgslsmith_sub_i32(-37206i, u_input.d.x), _wgslsmith_f_op_f32(max(arg_1.c.d.a, 932f)) == -1914f, true));
    global0 = array<Struct_3, 19>();
    return abs(~u_input.d.x);
}

fn func_2() -> vec4<bool> {
    global0 = array<Struct_3, 19>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-2012f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-419f + _wgslsmith_f_op_f32(f32(-1f) * -1838f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1462f, -695f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1460f - 1070f) * _wgslsmith_div_f32(709f, 643f)))) * -118f));
    global0 = array<Struct_3, 19>();
    let var_1 = Struct_4(var_0, select(-_wgslsmith_add_vec4_i32(~u_input.d, u_input.c), vec4<i32>(func_3(vec4<bool>(true, true, true, true), Struct_5(Struct_2(vec4<u32>(10014u, 126700u, 43154u, u_input.b.x), false, 1000f, Struct_1(var_0, u_input.b.x)), vec2<bool>(false, true), Struct_2(vec4<u32>(u_input.a, u_input.a, u_input.b.x, 52166u), true, 398f, Struct_1(var_0, u_input.b.x)), 4294967295u)), ~countOneBits(u_input.c.x), -u_input.c.x, u_input.c.x), vec4<bool>(true, false, var_0 <= _wgslsmith_f_op_f32(var_0 - 1000f), true)), ~((i32(-1i) * -1478i) >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, u_input.b.x), ~12825u) % 32u)), vec3<u32>(countOneBits(u_input.a), u_input.a, min(u_input.b.x, u_input.b.x)) << (firstLeadingBit(abs(abs(vec3<u32>(u_input.a, 58447u, 23306u)))) % vec3<u32>(32u)));
    global0 = array<Struct_3, 19>();
    return !vec4<bool>(any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true)), true, true, any(vec3<bool>(select(false, false, true), select(false, false, false), false)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> bool {
    global0 = array<Struct_3, 19>();
    var var_0 = 524f;
    var var_1 = -_wgslsmith_div_i32(_wgslsmith_clamp_i32(abs(~arg_1), 1i, u_input.d.x), 6495i);
    let var_2 = Struct_4(-1251f, vec4<i32>(abs(-(u_input.d.x >> (arg_3.d.b % 32u))), ~(-1i), _wgslsmith_sub_i32(~u_input.d.x << (arg_3.d.b % 32u), arg_1), _wgslsmith_sub_i32(select(arg_1, -2147483647i, all(vec3<bool>(false, arg_0.b, arg_3.b))), arg_1)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d.x, -u_input.c.x), -5234i), select(-arg_1, u_input.d.x | ~arg_1, all(vec3<bool>(arg_0.b, false, false)))), arg_3.a.wzz);
    var var_3 = Struct_5(arg_0, select(!select(select(vec2<bool>(arg_3.b, arg_3.b), vec2<bool>(false, false), true), func_2().wx, func_2().wz), vec2<bool>(any(vec2<bool>(true, true)), all(func_2().zwx)), vec2<bool>(!arg_0.b, !arg_0.b)), arg_0, arg_3.d.b);
    return func_2().x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> f32 {
    let var_0 = vec4<f32>(arg_1.a, -335f, -447f, 550f);
    global0 = array<Struct_3, 19>();
    let var_1 = arg_3;
    let var_2 = vec4<bool>(true, func_4(Struct_2(~(arg_3 ^ arg_3), false, _wgslsmith_f_op_f32(abs(2897f)), Struct_1(var_0.x, arg_1.b)), u_input.c.x | ~arg_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0 - var_0))), var_0, select(func_2(), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)))), Struct_2(arg_3, true, arg_1.a, Struct_1(_wgslsmith_div_f32(-525f, -1000f), 0u))), true, -2194f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * 429f) * _wgslsmith_f_op_f32(f32(-1f) * -612f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -271f), arg_1.a))));
    global0 = array<Struct_3, 19>();
    return var_0.x;
}

fn func_5(arg_0: f32) -> StorageBuffer {
    let var_0 = u_input.c.x;
    var var_1 = u_input.c.xwz;
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-740f * arg_0), 370f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), 284f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1913f, arg_0, arg_0)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1393f, arg_0, -284f, arg_0), vec4<f32>(arg_0, 341f, arg_0, -433f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + -2555f), _wgslsmith_f_op_f32(max(arg_0, arg_0)), 1000f, _wgslsmith_f_op_f32(1449f - -393f)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-703f, arg_0, 640f, -1201f))), vec4<f32>(-767f, 1573f, 1000f, -413f)))))));
    let var_3 = !func_2().zy;
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-952f, _wgslsmith_f_op_f32(round(123f)), 1665f, -1265f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2100f, arg_0, var_2.x, var_2.x), vec4<f32>(776f, var_2.x, 1000f, arg_0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1169f, 618f, -450f))))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, arg_0, 451f, _wgslsmith_f_op_f32(-507f - _wgslsmith_f_op_f32(f32(-1f) * -1286f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-769f, 1000f, -592f, var_2.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, 106f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(876f, -1000f, 517f, 730f) + vec4<f32>(585f, 539f, 1513f, 590f))))));
    return StorageBuffer(u_input.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(max(arg_0, 840f)), _wgslsmith_f_op_f32(1198f - var_2.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1042f, var_2.x)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(486f + _wgslsmith_f_op_f32(round(arg_0))), var_2.x), func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    let var_0 = -281f;
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(u_input.d.x, Struct_1(var_0, u_input.a), 1u, vec4<u32>(1u, u_input.a, 0u, 18047u))))) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) + var_0)))));
}

