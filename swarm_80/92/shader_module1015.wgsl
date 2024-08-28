struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1695f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(abs(115f));
    var var_0 = Struct_2(Struct_1(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(true, true)) || true, false, all(vec3<bool>(false, false, false)) | any(vec4<bool>(false, true, true, true)))), Struct_1(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true)), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)))), Struct_1(vec4<bool>(u_input.a.x < -u_input.a.x, true, select(false, all(vec2<bool>(false, false)), true), true), !vec4<bool>(u_input.a.x == u_input.a.x, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -716f), -738f)), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(2942f))))), _wgslsmith_f_op_f32(sign(-1529f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1416f * -1428f) - 450f))), Struct_1(vec4<bool>(_wgslsmith_f_op_f32(trunc(1862f)) != _wgslsmith_f_op_f32(step(431f, 427f)), false, true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)))), vec4<bool>(true, any(vec3<bool>(false, true, false)), true, true || all(vec3<bool>(true, false, true)))));
    var var_1 = _wgslsmith_f_op_f32(floor(var_0.d.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(trunc(1000f))));
    let var_2 = Struct_1(!var_0.e.b, vec4<bool>(any(vec2<bool>(false, select(var_0.b.a.x, var_0.a.a.x, true))), true && var_0.a.a.x, var_0.a.a.x && true, true));
    return !select(vec3<bool>(!any(vec3<bool>(false, var_2.b.x, true)), !all(vec3<bool>(true, false, true)), var_2.a.x), select(vec3<bool>(any(vec4<bool>(true, var_2.b.x, var_2.b.x, false)), false, var_0.e.b.x), !(!var_2.b.yzz), true), !(!(!vec3<bool>(false, var_2.b.x, false))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_1(vec4<bool>(arg_1.b.a.x, any(select(func_3(), !arg_1.c.a.xzy, arg_1.b.a.x)), false, arg_1.c.b.x), select(vec4<bool>(!arg_1.a.b.x, func_3().x, arg_1.e.b.x, all(vec3<bool>(true, false, false)) != true), vec4<bool>(true, arg_1.b.b.x, false, true), arg_1.b.b.x));
    var var_1 = vec2<i32>(-u_input.a.x, ~(~firstTrailingBit(u_input.a.x)));
    var_1 = u_input.a << (vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0, arg_0), 1u), ~abs(9472u) | arg_0) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(round(130f));
    var var_3 = u_input.a.x;
    return ~(_wgslsmith_sub_u32(countOneBits(_wgslsmith_sub_u32(arg_0, 0u)), firstTrailingBit(_wgslsmith_add_u32(0u, arg_0))) << (arg_0 % 32u));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), u_input.a.x, 1i), _wgslsmith_div_i32(-_wgslsmith_mod_i32(u_input.a.x, 2147483647i), arg_3.b)), arg_3.b);
    let var_1 = arg_3.d.a.x || false;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))))) * -694f);
    var var_2 = ~(~_wgslsmith_sub_vec2_u32((vec2<u32>(arg_3.a, arg_3.a) | vec2<u32>(arg_3.a, 57758u)) | vec2<u32>(1u, 1u), max(vec2<u32>(arg_3.a, 4294967295u) >> (vec2<u32>(arg_3.a, arg_3.a) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_3.a, 1u), vec2<u32>(0u, arg_3.a)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1396f, arg_0)), _wgslsmith_f_op_f32(step(-1000f, -162f)) <= _wgslsmith_f_op_f32(f32(-1f) * -632f)))));
    return arg_3;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = 1000f;
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(273f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(902f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-134f, 528f))), any(vec2<bool>(true, arg_0.b.x)), vec2<bool>(any(vec3<bool>(true, all(arg_0.b), !arg_0.b.x)), any(arg_0.b)), Struct_4(_wgslsmith_div_u32(~46576u, func_2(49761u, Struct_2(arg_0, Struct_1(vec4<bool>(arg_0.a.x, arg_0.b.x, arg_0.b.x, false), vec4<bool>(arg_0.a.x, arg_0.b.x, arg_0.b.x, true)), arg_0, vec4<f32>(1570f, -1000f, -1993f, -784f), arg_0), vec4<f32>(-327f, -1000f, 590f, -437f))) & (_wgslsmith_clamp_u32(1u, 32386u, 4294967295u) & 1u), _wgslsmith_div_i32(~(u_input.a.x | u_input.a.x), u_input.a.x), true, Struct_1(vec4<bool>(all(arg_0.a.zyw), true, arg_0.b.x, all(arg_0.a.wxy)), !select(vec4<bool>(true, false, arg_0.a.x, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.a.x, arg_0.b.x, arg_0.a.x), arg_0.b.x)), Struct_1(vec4<bool>(false, any(vec3<bool>(arg_0.b.x, true, false)), true, false), select(vec4<bool>(true, arg_0.b.x, false, false), vec4<bool>(true, arg_0.a.x, arg_0.b.x, true), false))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-746f, -266f, true)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -311f), 674f)), 1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1884f))))));
    var var_1 = vec2<u32>(var_0.a, 4294967295u);
    var var_2 = arg_0;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1158f;
    var var_0 = ~vec2<u32>(~4294967295u, ~func_1(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))));
    let var_1 = Struct_3(!(!((-1i >= u_input.a.x) & any(vec2<bool>(true, false)))));
    global0 = _wgslsmith_f_op_f32(1402f + 663f);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(491f))))))));
    let var_3 = func_4(_wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1535f, _wgslsmith_f_op_f32(-1000f + var_2))))))), func_4(1038f, true, vec2<bool>(var_1.a, true), Struct_4(~firstLeadingBit(var_0.x), ~(2296i >> (1u % 32u)), false, Struct_1(func_4(var_2, false, vec2<bool>(var_1.a, var_1.a), Struct_4(9850u, 2147483647i, true, Struct_1(vec4<bool>(var_1.a, var_1.a, var_1.a, true), vec4<bool>(true, var_1.a, var_1.a, var_1.a)), Struct_1(vec4<bool>(true, false, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)))).d.a, func_4(-1393f, var_1.a, vec2<bool>(false, false), Struct_4(var_0.x, -41700i, var_1.a, Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(var_1.a, var_1.a, true, false)), Struct_1(vec4<bool>(true, var_1.a, var_1.a, var_1.a), vec4<bool>(true, var_1.a, var_1.a, true)))).e.a), func_4(-616f, !var_1.a, func_3().zy, func_4(3460f, false, vec2<bool>(false, var_1.a), Struct_4(var_0.x, 74170i, true, Struct_1(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(true, true, var_1.a, var_1.a)), Struct_1(vec4<bool>(var_1.a, var_1.a, var_1.a, true), vec4<bool>(var_1.a, var_1.a, false, var_1.a))))).e)).d.a.x, !(!vec2<bool>(!var_1.a, any(vec2<bool>(var_1.a, false)))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2 * 763f)))), _wgslsmith_add_u32(func_1(Struct_1(vec4<bool>(false, var_1.a, true, var_1.a), vec4<bool>(var_1.a, false, var_1.a, var_1.a))), func_1(Struct_1(vec4<bool>(true, true, false, var_1.a), vec4<bool>(var_1.a, var_1.a, false, false)))) > _wgslsmith_add_u32(var_0.x, _wgslsmith_mult_u32(4294967295u, var_0.x)), func_4(-685f, all(select(vec4<bool>(var_1.a, true, true, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), var_1.a)), vec2<bool>(var_1.a, 0i == u_input.a.x), Struct_4(var_0.x, -2147483647i, true, func_4(-274f, true, vec2<bool>(var_1.a, true), Struct_4(40605u, u_input.a.x, var_1.a, Struct_1(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, false, var_1.a, true)), Struct_1(vec4<bool>(var_1.a, var_1.a, true, false), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)))).e, Struct_1(vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec4<bool>(false, var_1.a, false, var_1.a)))).e.a.yx, Struct_4(var_0.x, 18507i, all(vec2<bool>(true, true)), Struct_1(!vec4<bool>(var_1.a, var_1.a, var_1.a, true), vec4<bool>(false, var_1.a, var_1.a, var_1.a)), func_4(553f, true, vec2<bool>(false, var_1.a), func_4(var_2, false, vec2<bool>(var_1.a, true), Struct_4(1u, u_input.a.x, false, Struct_1(vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec4<bool>(false, var_1.a, var_1.a, var_1.a)), Struct_1(vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(var_1.a, var_1.a, true, var_1.a))))).d))).d;
    var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~abs(vec2<u32>(31107u, 97720u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 68249u) | vec2<u32>(1u, var_0.x), vec2<u32>(var_0.x, var_0.x))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(abs(vec2<u32>(1u, 0u))), select(vec2<u32>(var_0.x, var_0.x) & vec2<u32>(1u, 43377u), ~vec2<u32>(var_0.x, var_0.x), false)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(22586u, 16760u), vec2<u32>(var_0.x, var_0.x)), abs(vec2<u32>(0u, var_0.x))), vec2<u32>(var_0.x >> (0u % 32u), 0u)), vec2<u32>(var_0.x, max(var_0.x & var_0.x, 0u))));
    var var_4 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - 423f)) + _wgslsmith_f_op_f32(-263f + _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(148f - _wgslsmith_f_op_f32(-var_2))), any(!vec2<bool>(true, var_1.a && false)), func_3().zx, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1243f)))), !(!var_1.a), !var_3.a.xy, Struct_4(29240u, u_input.a.x, true, func_4(var_2, var_3.b.x, func_3().yx, func_4(1650f, var_3.a.x, var_3.b.xx, Struct_4(var_0.x, u_input.a.x, true, var_3, var_3))).d, Struct_1(var_3.b, vec4<bool>(var_3.a.x, var_3.a.x, false, var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(_wgslsmith_dot_vec2_i32(~u_input.a, -u_input.a), abs(2147483647i), -select(u_input.a.x, var_4.b, false), -29418i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, 411f) - vec3<f32>(var_2, var_2, var_2))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-354f, var_2, 1106f) * vec3<f32>(201f, 158f, var_2)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2, var_2, -1491f), vec3<f32>(var_2, var_2, var_2))), vec3<bool>(var_4.d.b.x, var_4.e.b.x, true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2)))), u_input.a.x, -1000f, func_4(_wgslsmith_f_op_f32(var_2 + var_2), select(!var_3.a.x, any(var_3.b), u_input.a.x <= var_4.b) | (_wgslsmith_f_op_f32(trunc(1967f)) >= -1129f), vec2<bool>(true, !any(var_3.a.zx)), func_4(var_2, all(var_3.b), select(var_4.d.b.zz, !var_3.b.zz, 5789u < var_4.a), Struct_4(1u, 2147483647i, var_1.a & var_3.b.x, Struct_1(var_4.e.a, var_3.b), var_4.d))).a);
}

