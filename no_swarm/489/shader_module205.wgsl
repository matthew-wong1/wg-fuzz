struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = u_input.b << (1u % 32u);
    let var_1 = 1f;
    var var_2 = Struct_1(!vec4<bool>(all(vec2<bool>(true, true)), true, true, true), vec2<f32>(_wgslsmith_f_op_f32(-var_1), -353f), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, var_1, var_1, var_1)))))), vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))) && true, any(vec4<bool>(true, true, true, true)), all(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var var_3 = 1004f;
    var var_4 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0, 1i, u_input.c), -u_input.a.xwx), firstTrailingBit(u_input.a.wxy)), _wgslsmith_mult_i32(0i, u_input.a.x), _wgslsmith_add_i32(-13087i, 0i)), var_0);
    return var_0;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = func_3(~u_input.d);
    let var_1 = Struct_1(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !(u_input.a.x < u_input.b)), _wgslsmith_f_op_vec2_f32(select(arg_0.zz, arg_1.zx, !(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)))), 62987u, arg_0, select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), select(vec3<bool>(all(vec4<bool>(false, false, false, false)), true, true), vec3<bool>(true, true, true), false), vec3<bool>(-246f != _wgslsmith_f_op_f32(arg_0.x * arg_1.x), true, u_input.d < countOneBits(0u))));
    var var_2 = vec4<u32>(var_1.c, 18862u, ~u_input.d, u_input.d);
    var_0 = u_input.c;
    let var_3 = var_1;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = vec4<bool>(!any(select(vec2<bool>(arg_1, arg_1), !arg_0.e.yz, all(arg_0.e.xz))), any(!arg_0.e), false, all(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d + vec4<f32>(arg_0.b.x, -867f, var_0.b.x, 672f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, arg_0.d.x, var_0.d.x, var_0.d.x))), vec4<f32>(-1009f, arg_0.b.x, _wgslsmith_f_op_f32(trunc(-1000f)), arg_0.d.x)).e));
    var_0 = arg_0;
    var var_2 = ~vec2<i32>(_wgslsmith_sub_i32(~u_input.a.x, -20951i), 0i);
    return !(!(!vec4<bool>(false, u_input.d == 1u, var_0.e.x, false)));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = vec2<bool>(arg_0.x, false);
    let var_1 = Struct_1(!(!func_4(func_2(vec4<f32>(797f, 859f, 1036f, 764f), vec4<f32>(-1034f, -2020f, -1950f, -1246f)), var_0.x)), vec2<f32>(869f, func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(884f, 649f, 1000f, -628f) * vec4<f32>(1561f, -2424f, -1370f, -982f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1402f, -932f, 1054f, 1219f), vec4<f32>(1797f, -2015f, 329f, 394f), vec4<bool>(arg_0.x, arg_0.x, false, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(267f, 1013f, 504f, 566f))))).d.x), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(24917u, 4294967295u), min(vec2<u32>(0u, u_input.d), vec2<u32>(u_input.d, 80726u))), select(select(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(30323u, 1u), true), vec2<u32>(u_input.d, u_input.d), false)), ~0u), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), -683f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1158f, _wgslsmith_f_op_f32(select(1121f, 1067f, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-477f, 520f) + -203f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1306f + -110f), -1380f, all(vec4<bool>(true, false, true, arg_0.x)))))), !(!vec3<bool>(true, any(vec3<bool>(false, var_0.x, true)), true)));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(~0i), 0i), -u_input.a.wx);
    var_2 = u_input.b;
    var_2 = -(~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, u_input.b, 7176i), ~u_input.a.wxz) ^ -max(0i, -u_input.b));
    return u_input.b;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = vec3<u32>(_wgslsmith_clamp_u32(4294967295u, ~max(1u, 31110u), func_2(vec4<f32>(-1013f, -903f, -945f, 707f), vec4<f32>(656f, -592f, 641f, -1736f)).c) & select(~u_input.d | _wgslsmith_div_u32(44509u, u_input.d), abs(u_input.d) << (func_2(vec4<f32>(-263f, -631f, -656f, 856f), vec4<f32>(-417f, 1000f, -1000f, -542f)).c % 32u), arg_1), 1u, _wgslsmith_clamp_u32(34347u, ~(u_input.d ^ u_input.d), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(28872u, 0u), vec2<u32>(1u, 1u)), select(u_input.d, 72185u, true))));
    var_0 = vec3<u32>(u_input.d, ~(~(~var_0.x) << (~(u_input.d | var_0.x) % 32u)), _wgslsmith_sub_u32(u_input.d, ~firstLeadingBit(0u)));
    let var_1 = -453f;
    let var_2 = Struct_1(!vec4<bool>(arg_1, -1790f > _wgslsmith_f_op_f32(sign(-406f)), arg_1 || (-12531i == u_input.c), var_0.x != u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, 633f), vec2<f32>(1326f, 896f)) - vec2<f32>(var_1, -123f)) + vec2<f32>(_wgslsmith_f_op_f32(var_1 - var_1), var_1))), var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(681f, 178f, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))))), select(vec3<bool>(arg_1 || false, arg_1, arg_1), vec3<bool>(all(vec2<bool>(false, false)), func_2(vec4<f32>(var_1, var_1, -684f, var_1), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-465f, -1107f, var_1, var_1)))).e.x, arg_1), vec3<bool>(all(vec2<bool>(true, true)), !func_2(vec4<f32>(var_1, var_1, var_1, var_1), vec4<f32>(var_1, var_1, 245f, var_1)).a.x, var_1 != 1324f)));
    var_0 = vec3<u32>(_wgslsmith_add_u32(~(~var_2.c), ~4294967295u), abs(~(~(u_input.d ^ 4294967295u))), ~(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8356u, 1u, 0u), vec4<u32>(4294967295u, u_input.d, 0u, 74146u))) | 4294967295u));
    return Struct_1(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, 1483f, var_1, var_1), vec4<f32>(-1905f, var_1, var_2.d.x, -214f), var_2.e.x)), var_2.d, all(var_2.a.wx)))), _wgslsmith_f_op_vec4_f32(sign(var_2.d))).a, var_2.b, var_0.x, _wgslsmith_f_op_vec4_f32(-var_2.d), var_2.a.xxw);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_2.d.wyz);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_0.d, arg_2.d).b.x * -569f), arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)) - -849f), 1000f);
    var_0 = _wgslsmith_f_op_vec3_f32(arg_1.d.xyw * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.d.wyz) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -719f, arg_0.b.x) - vec3<f32>(var_0.x, -830f, var_1.x))), var_1.zzx))));
    let var_2 = func_2(var_1, vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.d.x)), -603f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f - arg_2.b.x) - 695f)), _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.d.xxx, vec3<f32>(arg_0.b.x, 949f, arg_1.b.x)) + vec3<f32>(arg_0.d.x, var_2.d.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(func_5(u_input.b, false, 24024i).d.yzx * _wgslsmith_f_op_vec3_f32(min(arg_0.d.zzy, arg_0.d.yxz))))) * vec3<f32>(-1000f, 826f, _wgslsmith_f_op_f32(floor(func_5(~u_input.c, var_2.a.x, _wgslsmith_mult_i32(1i, 1i)).b.x))));
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 * vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-arg_1.b.x), var_2.b.x, func_5(0i, false, u_input.a.x).b.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.d)), arg_0.d, func_5(u_input.c, arg_2.a.x, 5949i).a))), vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x + _wgslsmith_f_op_f32(-arg_2.b.x))), _wgslsmith_div_f32(591f, arg_1.b.x), -651f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(-firstTrailingBit(i32(-1i) * -30260i), _wgslsmith_add_i32(u_input.b, u_input.b & -1i) < 15028i, func_1(vec2<bool>(true, true))), func_5(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.xwx, -u_input.a.xyy), _wgslsmith_div_vec3_i32(select(u_input.a.zyy, vec3<i32>(762i, u_input.c, 0i), true), vec3<i32>(u_input.c, -31200i, u_input.c) << (vec3<u32>(18049u, u_input.d, 119724u) % vec3<u32>(32u)))), !all(func_5(u_input.a.x, false, u_input.b).a), u_input.a.x), Struct_1(vec4<bool>(false, all(vec4<bool>(true, false, true, true)), (u_input.b ^ -26383i) > -2147483647i, true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1210f, -2837f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(375f, -153f), _wgslsmith_div_vec2_f32(vec2<f32>(-1105f, -320f), vec2<f32>(1426f, 1000f)), true)), vec2<bool>(true, true))), 26830u, vec4<f32>(-956f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-469f, -1000f))), _wgslsmith_f_op_f32(-func_5(u_input.c, true, -1712i).d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -393f))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true));
    var var_1 = _wgslsmith_clamp_vec4_i32(u_input.a, firstLeadingBit(vec4<i32>(~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_clamp_i32(-u_input.b, 1i, ~(-27253i)), firstLeadingBit(min(2147483647i, u_input.a.x)), u_input.c)), vec4<i32>(_wgslsmith_add_i32(-u_input.c, 2147483647i) & min(u_input.a.x << (var_0.c % 32u), max(1i, u_input.c)), -(~u_input.b & _wgslsmith_div_i32(u_input.c, -37598i)), ~_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.zxz, vec3<i32>(2147483647i, -1i, u_input.a.x)), reverseBits(u_input.c)), u_input.c));
    var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(786f, _wgslsmith_f_op_f32(f32(-1f) * -569f))))));
    var_1 = reverseBits(vec4<i32>(1045i, firstTrailingBit(func_3(0u)), -31972i, ~firstTrailingBit(-u_input.a.x)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(688f - _wgslsmith_f_op_f32(step(var_0.d.x, var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1004f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-222f, -718f) * var_0.d.x)))), var_0.d.x);
    let var_4 = _wgslsmith_add_vec4_u32(vec4<u32>(select(~(~var_0.c), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, var_0.c, 0u, 0u), vec4<u32>(var_0.c, var_0.c, u_input.d, u_input.d)), ~var_0.c), !(!var_0.e.x)), countOneBits(_wgslsmith_add_u32(u_input.d, 4294967295u)), 3893u, u_input.d), ~(firstLeadingBit(~vec4<u32>(4294967295u, u_input.d, 58589u, var_0.c)) << (~(~vec4<u32>(4294967295u, var_0.c, 1u, 1u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xz, abs(1u), _wgslsmith_mult_i32(~func_3(var_4.x << (15032u % 32u)), _wgslsmith_dot_vec2_i32(~(-u_input.a.xw), -vec2<i32>(u_input.b, 35394i))));
}

