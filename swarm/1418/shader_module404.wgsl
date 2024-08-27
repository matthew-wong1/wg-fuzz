struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.a;
    var var_1 = min(arg_3.d, _wgslsmith_div_vec4_i32(select(arg_3.d, ~arg_3.d, !vec4<bool>(true, var_0.x, true, false)) & ~(~vec4<i32>(-12508i, -2147483647i, -10545i, 9710i)), vec4<i32>(abs(~u_input.b), arg_2.c, (1i << (arg_0.a.x % 32u)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 30175i, arg_3.d.x, -48364i), arg_3.d), _wgslsmith_mod_i32(-26513i, u_input.c) & ~u_input.b)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-arg_1.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + 1781f)), arg_2.b)), _wgslsmith_f_op_f32(f32(-1f) * -1251f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(abs(-410f))), arg_0.b, false))));
    var_0 = arg_3.a;
    return ~var_1.x;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(sign(arg_3.x));
    global0 = ~func_3(Struct_1(_wgslsmith_add_vec3_u32(arg_1.wxw, ~arg_1.zwz), 1000f, u_input.b), Struct_3(arg_2.b), Struct_1(vec3<u32>(27765u, 1u, 1u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_2.d.x, 0u), arg_1.xwz), _wgslsmith_f_op_f32(-508f * _wgslsmith_f_op_f32(arg_2.b.x - arg_2.e)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.c, arg_0), vec4<i32>(-23994i, arg_0, 2147483647i, 1i)) & (i32(-1i) * -31006i)), Struct_2(arg_2.a.yx, Struct_1(arg_1.wyz, _wgslsmith_f_op_f32(trunc(-1289f)), arg_0), Struct_1(vec3<u32>(121444u, arg_1.x, arg_1.x), -636f, -66i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, arg_0, u_input.a), vec3<i32>(u_input.b, arg_0, u_input.a)), _wgslsmith_sub_i32(47136i, -38015i), arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, 12814i, arg_0), vec4<i32>(u_input.a, -2147483647i, -7402i, 5066i)))));
    var_0 = 661f;
    global0 = arg_0;
    let var_1 = arg_2;
    return !select(select(vec4<bool>(false, select(arg_2.a.x, true, var_1.a.x), !var_1.c.x, true), select(vec4<bool>(true, true, true, false), select(var_1.a, vec4<bool>(true, false, arg_2.c.x, false), var_1.a.x), !arg_2.a), true), !select(!vec4<bool>(arg_2.c.x, false, arg_2.a.x, true), arg_2.a, !var_1.a.x), false);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_i32(~_wgslsmith_mod_i32(1i, firstTrailingBit(6714i)) << (4294967295u % 32u), u_input.b);
    let var_1 = Struct_4(!select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), arg_0 > -1059f), select(func_2(arg_1.x, vec4<u32>(4294967295u, 8668u, 75814u, 0u), Struct_4(vec4<bool>(true, true, true, false), vec4<f32>(283f, 604f, arg_0, arg_0), vec2<bool>(false, false), vec2<u32>(54862u, 19713u), -1150f), vec2<f32>(arg_0, -884f)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), !select(true, false, false)), vec4<f32>(1000f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), 267f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) + 1582f), arg_0))), func_2(~u_input.c, ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 34856u, 0u, 27297u), vec4<u32>(532u, 4294967295u, 14947u, 6895u)), select(vec4<u32>(1u, 4294967295u, 56804u, 43393u), vec4<u32>(1u, 60783u, 105222u, 98134u), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), Struct_4(select(vec4<bool>(true, true, true, false), func_2(-1i, vec4<u32>(4294967295u, 58324u, 0u, 4294967295u), Struct_4(vec4<bool>(false, true, false, false), vec4<f32>(arg_0, -1008f, arg_0, 705f), vec2<bool>(true, true), vec2<u32>(0u, 17142u), -211f), vec2<f32>(556f, arg_0)), vec4<bool>(true, true, true, true)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_f_op_f32(round(858f)), -1623f), !func_2(u_input.a, vec4<u32>(42756u, 88685u, 1u, 35985u), Struct_4(vec4<bool>(true, true, false, false), vec4<f32>(1841f, arg_0, arg_0, 1295f), vec2<bool>(false, false), vec2<u32>(50410u, 1u), -1002f), vec2<f32>(-610f, -1456f)).wx, vec2<u32>(abs(1u), 0u), arg_0), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_0)))).yx, vec2<u32>(~1u, 1u), -651f);
    global0 = u_input.b;
    var var_2 = var_1.d.x;
    var var_3 = !any(!select(var_1.a, vec4<bool>(var_1.a.x, true, false, false), true));
    return select(vec3<bool>((!var_1.c.x == false) || !(var_1.c.x || var_1.c.x), var_1.a.x, false), select(vec3<bool>(var_1.c.x, var_1.c.x, func_2(~u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d.x, 4294967295u, 1u, 1u), vec4<u32>(41393u, var_1.d.x, 13097u, 4294967295u), vec4<u32>(85400u, var_1.d.x, var_1.d.x, var_1.d.x)), var_1, _wgslsmith_f_op_vec2_f32(-var_1.b.xz)).x), vec3<bool>(_wgslsmith_sub_i32(u_input.b, 2147483647i) > arg_1.x, false, false), var_1.c.x), 4294967295u == var_1.d.x);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    global0 = u_input.b;
    let var_0 = !arg_1;
    let var_1 = !(!(arg_2 == false));
    global0 = -37660i;
    let var_2 = Struct_1(~_wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(5933u, 0u, 1u), true), ~vec3<u32>(1u, 1u, 1u)), 2473f, arg_0);
    return Struct_1(var_2.a, _wgslsmith_div_f32(var_2.b, 273f), _wgslsmith_dot_vec3_i32(~(~(~vec3<i32>(arg_0, var_2.c, 2147483647i))), vec3<i32>(~_wgslsmith_div_i32(var_2.c, -1i), u_input.c & -1i, ~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec2<i32>(-2147483647i, -(~1i)));
    var var_1 = true;
    let var_2 = func_4(-_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.x, 46723i, u_input.c), vec4<i32>(-21239i, 0i, u_input.a, -2147483647i)), var_0.x, ~9232i), var_0.x), func_1(471f, vec4<i32>(_wgslsmith_add_i32(var_0.x & -57020i, 2147483647i), var_0.x, -_wgslsmith_mult_i32(u_input.a, -24648i), (u_input.a & var_0.x) << (1u % 32u))), true);
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(sign(1776f)), func_4(27872i, vec3<bool>(false, true, false), true).b, -295f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, _wgslsmith_f_op_f32(var_2.b - -740f), _wgslsmith_f_op_f32(sign(var_2.b)), _wgslsmith_f_op_f32(373f * var_2.b)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-156f, var_2.b, -848f, var_2.b) + vec4<f32>(var_2.b, 610f, var_2.b, -785f)), vec4<f32>(-1884f, 227f, var_2.b, 1140f))), all(vec4<bool>(true, true, true, true)))), false)));
    var var_4 = all(vec3<bool>(true, true, true));
    let var_5 = 18736u;
    var var_6 = 0u > firstLeadingBit(var_2.a.x);
    var_1 = !(!(-1259f <= var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(-2100f, var_3.a, 42589u);
}

