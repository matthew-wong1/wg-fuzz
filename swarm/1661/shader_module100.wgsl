struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_3;
    var var_1 = ~u_input.a;
    var var_2 = vec2<i32>(arg_3.b.b, ~arg_2);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), 2134f);
    var var_4 = var_0.b;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.wz) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-166f)) * _wgslsmith_f_op_f32(max(arg_0.x, var_3.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -348f)))), arg_0.x));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = arg_0.c;
    global0 = 2147483647i;
    global0 = firstLeadingBit(_wgslsmith_mult_i32(~49722i, -(u_input.b & arg_0.a.b)));
    global0 = -31550i;
    var_0 = vec2<bool>(true, !(countOneBits(u_input.d) == 2147483647i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(2186f)))), 1000f, all(vec3<bool>(true, true, false)) & any(!vec4<bool>(var_0.x, false, true, true)))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_2(arg_0, arg_0, vec2<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-641f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1686f, 851f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-691f, 1237f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(558f, -1531f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(61422u, -37830i), var_0.b, var_0.c), Struct_2(Struct_1(u_input.a.x, -56915i), var_0.b, vec2<bool>(true, true)), vec2<i32>(-37791i, -2147483647i), Struct_2(arg_0, Struct_1(var_0.b.a, u_input.d), var_0.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-332f, 1731f)))));
    var var_2 = select(!vec2<bool>(all(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false)) & any(vec2<bool>(false, var_0.c.x)), var_0.c.x), var_0.c, var_0.c);
    let var_3 = Struct_1(var_0.b.a, -9949i);
    let var_4 = _wgslsmith_f_op_f32(-var_1.x);
    return Struct_1(~30204u, max(arg_2, -2147483647i));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_2(Struct_1(36348u, u_input.b), _wgslsmith_clamp_i32(-(~u_input.d), -arg_2.b, -(~arg_2.b)), u_input.d);
    var var_1 = arg_2;
    var_0 = arg_2;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(arg_2, arg_2, vec2<bool>(arg_0, false)), Struct_2(arg_2, Struct_1(9010u, var_0.b), vec2<bool>(arg_0, true)), vec2<i32>(0i, arg_2.b), Struct_2(Struct_1(86582u, 0i), arg_2, vec2<bool>(false, arg_0)))) * -1471f), 2086f), arg_1.x, -1205f) + vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1747f, arg_1.x, arg_1.x) + vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), ~1u, ~35016i, Struct_2(Struct_1(var_1.a, u_input.b), Struct_1(var_0.a, -23416i), vec2<bool>(arg_0, true)))).x)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec4<f32>(arg_1.x, arg_1.x, -366f, -1489f), firstTrailingBit(3438u), _wgslsmith_mult_i32(1i, u_input.b), Struct_2(arg_2, Struct_1(var_0.a, arg_2.b), vec2<bool>(false, arg_0)))).x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * -252f), _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x, !(!arg_0)))));
    let var_3 = Struct_2(arg_2, func_2(arg_2, _wgslsmith_mod_i32(0i, (u_input.b ^ u_input.b) & min(-19737i, -12216i)), ~(~select(var_1.b, -68565i, arg_0))), !vec2<bool>(arg_0, select(true, any(vec2<bool>(arg_0, arg_0)), true)));
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.c;
    var var_1 = Struct_1(1u, 4908i);
    var var_2 = Struct_1(~(~abs(arg_0.a.a) | arg_1.a.a), arg_0.b.b);
    var_0 = select(vec2<bool>(arg_0.c.x, true), vec2<bool>(arg_0.c.x, false), select(arg_1.c, select(arg_1.c, select(!vec2<bool>(true, var_0.x), vec2<bool>(arg_0.c.x, true), vec2<bool>(true, arg_0.c.x)), any(vec4<bool>(arg_0.c.x, arg_0.c.x, true, true))), false));
    var_2 = func_4(var_0.x, vec2<f32>(-446f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1915f, 493f, -170f, -669f)), _wgslsmith_add_u32(0u, arg_1.b.a), ~var_1.b, arg_0)).x)), func_2(arg_1.a, -_wgslsmith_div_i32(_wgslsmith_clamp_i32(14947i, u_input.d, 39150i), 0i ^ u_input.d), var_2.b >> (~u_input.c.x % 32u)));
    return func_2(func_4(all(vec4<bool>(true, true, true, true)), vec2<f32>(-397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2097f)))), Struct_1(0u, firstTrailingBit(abs(1i)))), _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(var_1.b, _wgslsmith_clamp_i32(var_1.b, var_1.b, 17706i)), 0i), arg_1.a.b), min(~firstTrailingBit(9068i), ~(~_wgslsmith_mult_i32(arg_1.b.b, arg_1.a.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_i32(~u_input.d, ~u_input.d);
    let var_0 = u_input.b;
    global0 = -2147483647i;
    let var_1 = Struct_2(func_5(Struct_2(Struct_1(27898u << (0u % 32u), reverseBits(u_input.b)), func_4(any(vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(func_1(vec4<f32>(970f, 1838f, -313f, -770f), u_input.a.x, -2422i, Struct_2(Struct_1(1u, 1i), Struct_1(u_input.a.x, u_input.b), vec2<bool>(true, false)))), func_2(Struct_1(2448u, u_input.d), -26664i, u_input.b)), vec2<bool>(any(vec3<bool>(false, true, false)), true)), Struct_2(func_2(Struct_1(1u, var_0), u_input.b, ~2147483647i), func_4(all(vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-638f, -177f))), func_2(Struct_1(u_input.a.x, u_input.d), u_input.d, -2147483647i)), vec2<bool>(true, true))), func_4(all(vec2<bool>(all(vec4<bool>(false, false, false, true)), true)), vec2<f32>(1f, 1f), func_4(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(598f, 413f)))), func_5(Struct_2(Struct_1(u_input.c.x, -17771i), Struct_1(1u, -38316i), vec2<bool>(false, false)), Struct_2(Struct_1(u_input.a.x, -1i), Struct_1(0u, u_input.d), vec2<bool>(false, false))))), vec2<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true));
    var var_2 = var_1;
    var var_3 = var_1.a;
    var var_4 = 683f;
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -1021f);
    var var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_5 * -520f))), _wgslsmith_f_op_f32(floor(249f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, 1206f, -1625f, -269f)) + vec4<f32>(-890f, -1555f, var_5, var_5)), 61170u, ~firstLeadingBit(80524i), var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b);
}

