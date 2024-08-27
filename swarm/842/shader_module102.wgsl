struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(0u, 0u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(285f, 2204f, 2737f, 646f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1343f, 294f, 708f, 1000f) + vec4<f32>(338f, 619f, 957f, 446f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-199f, -1196f, 343f, 1000f))))));
    global0 = array<vec2<u32>, 1>();
    let var_1 = Struct_2(Struct_1(~(~39359u >> (0u % 32u)), var_0.x), _wgslsmith_f_op_vec2_f32(max(var_0.xw, var_0.xy)), Struct_1(4294967295u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(395f, _wgslsmith_f_op_f32(-var_0.x), false)), -831f))), Struct_1(22511u, -2643f));
    var var_2 = select(select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(true, true, true, true)), !any(vec2<bool>(false, true)), false, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1560f, 1286f)) <= _wgslsmith_f_op_f32(max(-1000f, var_1.c.b))), vec4<bool>(true & any(vec3<bool>(false, false, false)), true, !any(vec4<bool>(true, true, true, true)), !(!all(vec3<bool>(true, false, false)))), vec4<bool>(var_1.a.a != reverseBits(var_1.c.a), false, any(vec2<bool>(true, true)), true));
    let var_3 = -_wgslsmith_add_i32(~firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a)), _wgslsmith_div_vec4_i32(-u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -2465i, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, 21290i, u_input.a.x))));
    return !(_wgslsmith_f_op_f32(-var_0.x) < _wgslsmith_f_op_f32(abs(143f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    let var_0 = !func_3();
    var var_1 = reverseBits(~(-(~select(vec4<i32>(2147483647i, 2147483647i, -2147483647i, 26904i), u_input.a, vec4<bool>(var_0, arg_1, false, arg_0.x)))));
    var_1 = vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(var_1.x, 621i), -(~(~select(-13562i, 2147483647i, var_0))), ~u_input.a.x);
    global0 = array<vec2<u32>, 1>();
    var var_2 = Struct_1(~93834u, _wgslsmith_f_op_f32(select(1882f, 180f, !any(vec3<bool>(arg_1, true, true)))));
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<vec2<u32>, 1>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1752f)) * arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(171f * 214f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, -405f, arg_0, arg_0)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 318f, _wgslsmith_f_op_f32(trunc(arg_0)), arg_0)))));
    let var_1 = max(vec4<i32>(arg_1.x, ~reverseBits(_wgslsmith_mod_i32(u_input.a.x, -1i)), _wgslsmith_dot_vec3_i32(arg_1, u_input.a.yyy << (vec3<u32>(4294967295u, 4294967295u, 40633u) % vec3<u32>(32u))) << (4294967295u % 32u), u_input.a.x), _wgslsmith_clamp_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, u_input.a.x, arg_1.x, arg_1.x), ~vec4<i32>(-9593i, arg_1.x, 78079i, u_input.a.x)), ~(~(~u_input.a)), ~vec4<i32>(arg_1.x | 2147483647i, _wgslsmith_dot_vec3_i32(u_input.a.yzy, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), _wgslsmith_div_i32(arg_1.x, arg_1.x), ~arg_1.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1448f), _wgslsmith_f_op_f32(select(-340f, arg_0, true)), _wgslsmith_f_op_f32(func_2(vec3<bool>(false, false, true), true, _wgslsmith_f_op_f32(var_0.x + -653f), vec4<f32>(arg_0, 2508f, 192f, var_0.x))), _wgslsmith_f_op_f32(select(827f, _wgslsmith_f_op_f32(select(arg_0, -251f, true)), false))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-156f + _wgslsmith_f_op_f32(arg_0 * -683f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1527f + var_0.x))), -695f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))));
    return Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, _wgslsmith_mult_u32(1u, 1u), ~33659u), abs(vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 826f)) * 1387f)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<vec2<u32>, 1>();
    let var_0 = (-vec2<i32>(~(-28651i), max(-8819i, -1i)) << (vec2<u32>(~(~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(37984u, arg_1.a, arg_1.a, 649u), ~vec4<u32>(143852u, 4294967295u, arg_1.a, 32826u))) % vec2<u32>(32u))) ^ u_input.a.zw;
    var var_1 = arg_0.x;
    global0 = array<vec2<u32>, 1>();
    var_1 = all(select(select(vec3<bool>(any(vec4<bool>(arg_3.x, false, arg_3.x, false)), all(vec3<bool>(true, arg_2.x, arg_0.x)), arg_2.x || true), select(arg_2.ywz, select(arg_3.wzz, arg_2.zxw, true), arg_2.x), !(!arg_0)), select(arg_2.xzw, arg_3.xyy, true), !arg_2.x));
    return Struct_1(arg_1.a, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), false), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-302f + 359f), _wgslsmith_f_op_f32(round(-1202f))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 19882i, -1i), ~u_input.a.zxx)), select(vec4<bool>(true, func_3(), true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(346f, 382f))))), vec2<f32>(1f, 1f), !(true & any(vec2<bool>(false, false))))), func_1(-726f, -max(_wgslsmith_mult_vec3_i32(vec3<i32>(-58182i, u_input.a.x, u_input.a.x), vec3<i32>(-11045i, 1i, 24186i)), select(u_input.a.xxx, u_input.a.wwy, vec3<bool>(true, true, true)))), Struct_1(15239u, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(f32(-1f) * -1655f)), _wgslsmith_div_f32(func_4(vec3<bool>(false, true, false), Struct_1(39971u, -317f), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)).b, -722f)))));
    let var_1 = var_0.d;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.b))) + var_1.b) != _wgslsmith_div_f32(1699f, var_0.b.x);
    let var_3 = ~(~_wgslsmith_mod_u32(~(var_1.a << (18161u % 32u)), ~_wgslsmith_add_u32(var_0.c.a, 130732u)));
    let var_4 = u_input.a.x;
    let var_5 = func_4(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(any(vec4<bool>(false, var_2, var_2, var_2)), true, 895f <= var_1.b)), func_4(select(!vec3<bool>(var_2, false, var_2), select(select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(var_2, true, false), vec3<bool>(true, var_2, true), true), all(vec2<bool>(true, false))), !var_2), Struct_1(var_1.a, var_0.b.x), select(vec4<bool>(!var_2, true, var_1.b <= 588f, true), vec4<bool>(!var_2, true, true, var_2), vec4<bool>(var_4 > var_4, var_2, var_2, all(vec2<bool>(var_2, false)))), vec4<bool>(true, false, true, !(var_2 || var_2))), select(select(vec4<bool>(select(false, false, var_2), true, any(vec3<bool>(true, var_2, var_2)), true), select(!vec4<bool>(var_2, true, false, var_2), vec4<bool>(var_2, var_2, true, false), vec4<bool>(var_2, false, var_2, false)), false), !(!(!vec4<bool>(true, var_2, var_2, var_2))), vec4<bool>(94227u != (26250u ^ var_0.d.a), any(select(vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(true, true, var_2, var_2), vec4<bool>(true, var_2, var_2, false))), true, !var_2 && true)), select(!select(vec4<bool>(false, true, var_2, false), vec4<bool>(var_2, false, var_2, var_2), true), !(!(!vec4<bool>(true, var_2, var_2, true))), !(!vec4<bool>(false, var_2, true, false))));
    var var_6 = select(-(_wgslsmith_mult_vec4_i32(u_input.a, select(u_input.a, u_input.a, true)) ^ -vec4<i32>(26527i, u_input.a.x, 2147483647i, u_input.a.x)), vec4<i32>(~countOneBits(max(var_4, 2147483647i)), reverseBits(min(-u_input.a.x, u_input.a.x)), _wgslsmith_mod_i32(firstLeadingBit(~(-26278i)), ~31260i), 26041i), all(!vec3<bool>(all(vec3<bool>(var_2, var_2, var_2)), true, true)));
    var var_7 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-var_5.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(trunc(425f)), func_1(-1259f, _wgslsmith_mod_vec3_i32(u_input.a.xzx, vec3<i32>(-10626i, var_4, 43053i))).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b + 1046f), -405f)))));
}

