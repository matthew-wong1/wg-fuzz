struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> f32 {
    global0 = Struct_4(_wgslsmith_mult_i32(~min(-20024i, u_input.b.x), -2147483647i), global0.b, ~(~_wgslsmith_sub_u32(~global0.c, ~7091u)), global0.d, ~global0.a);
    global0 = Struct_4(global0.e, Struct_2(global0.b.a), u_input.a.x, global0.b, _wgslsmith_add_i32(~select(_wgslsmith_mod_i32(58744i, 2147483647i), 26805i, true), (global0.b.a.b & global0.b.a.b) << (1u % 32u)));
    global0 = Struct_4(u_input.b.x, global0.b, firstLeadingBit(u_input.a.x), Struct_2(global0.b.a), global0.b.a.b);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.a.d.x, 294f) - _wgslsmith_f_op_f32(sign(-1055f))), 146f))), ~(-u_input.b.x), 5911u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global0.d.a.d))), global0.b.a.e);
    var_0 = global0.d.a;
    return _wgslsmith_div_f32(var_0.a, global0.b.a.a);
}

fn func_3() -> u32 {
    let var_0 = vec2<bool>(any(select(vec3<bool>(false, global0.d.a.e, select(false, false, true)), !select(vec3<bool>(true, global0.d.a.e, global0.b.a.e), vec3<bool>(global0.b.a.e, global0.b.a.e, false), vec3<bool>(global0.d.a.e, true, false)), global0.b.a.e)), true);
    var var_1 = -firstLeadingBit(~global0.a);
    var_1 = -26538i;
    var var_2 = Struct_3(false, true);
    let var_3 = ~(~(~u_input.a.x));
    return max(35033u, min(_wgslsmith_mod_u32(12172u, var_3), _wgslsmith_div_u32(89685u, u_input.a.x)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(arg_3.x, global0.a, _wgslsmith_div_u32(23122u, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-605f, global0.d.a.d.x, -229f, global0.b.a.d.x))) * vec4<f32>(_wgslsmith_f_op_f32(func_2()), 1f, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(abs(-754f)))), true));
    let var_1 = -359f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -356f), global0.d.a.b, var_0.a.c, _wgslsmith_f_op_vec4_f32(global0.d.a.d * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a.d, _wgslsmith_f_op_vec4_f32(global0.b.a.d + var_0.a.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-501f, 1416f, 1816f, -243f)))), true);
    var var_3 = global0.d.a.c;
    let var_4 = false;
    return Struct_4(select(-8486i, _wgslsmith_mult_i32(-_wgslsmith_add_i32(1i, -23537i), u_input.b.x), !all(select(vec2<bool>(var_0.a.e, var_2.e), vec2<bool>(var_0.a.e, var_2.e), vec2<bool>(var_4, var_4)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_2.a), firstTrailingBit(26611i), ~28184u, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(203f, var_0.a.a, -549f, var_1), _wgslsmith_f_op_vec4_f32(-var_0.a.d))), true)), func_3(), global0.d, min(-(2147483647i << (global0.d.a.c % 32u)), _wgslsmith_sub_i32(global0.d.a.b, i32(-1i) * -13639i)) & var_2.b);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1) -> Struct_4 {
    let var_0 = all(!vec3<bool>(_wgslsmith_f_op_f32(min(-509f, arg_2.a)) < _wgslsmith_f_op_f32(-arg_0.b.a.a), arg_0.d.a.e, func_1(~4294967295u, _wgslsmith_mult_u32(global0.c, arg_0.b.a.c), -1430f, vec3<f32>(arg_0.b.a.d.x, 775f, 1365f)).b.a.e));
    var var_1 = Struct_3(!arg_2.e, !(~arg_0.e > -global0.a) && ((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_2.b, arg_0.d.a.b, arg_2.b), u_input.b) << (82180u % 32u)) > _wgslsmith_div_i32(abs(-12275i), global0.b.a.b)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a.d.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -107f) + arg_0.d.a.a)));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(global0.b.a.d, arg_0.d.a.d));
    var var_4 = Struct_2(func_1(_wgslsmith_mult_u32(countOneBits(arg_2.c) | u_input.a.x, ~firstTrailingBit(global0.c)), ~(~_wgslsmith_mult_u32(arg_0.d.a.c, arg_0.d.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * global0.b.a.d.x), _wgslsmith_f_op_f32(arg_2.d.x + -441f))), _wgslsmith_f_op_vec3_f32(-var_3.wxx)).d.a);
    return Struct_4(1i, global0.d, func_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, var_4.a.c), vec2<u32>(arg_2.c, 0u)), u_input.a.yy), ~_wgslsmith_sub_u32(arg_0.b.a.c, 1u) ^ 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * arg_2.a), _wgslsmith_f_op_vec3_f32(var_3.xwz * _wgslsmith_f_op_vec3_f32(max(global0.b.a.d.wxy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -1491f, var_3.x)))))).d.a.c, arg_0.d, abs(abs(select(-25349i, u_input.b.x, func_1(1u, global0.d.a.c, var_4.a.a, var_4.a.d.zyy).d.a.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = true;
    global0 = func_4(func_1(global0.b.a.c, firstTrailingBit(~(global0.d.a.c << (u_input.a.x % 32u))), global0.b.a.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-543f, global0.d.a.a) + global0.b.a.d.x), _wgslsmith_div_f32(global0.b.a.a, global0.b.a.a))), u_input.b.x, Struct_1(_wgslsmith_f_op_f32(1000f - global0.d.a.d.x), i32(-1i) * -18510i, 2999u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-1000f, global0.d.a.a), _wgslsmith_f_op_f32(f32(-1f) * -386f), global0.d.a.a, _wgslsmith_f_op_f32(select(global0.b.a.a, global0.b.a.a, false))))), select(true, global0.d.a.e, any(!vec3<bool>(global0.b.a.e, global0.d.a.e, true)))));
    let var_2 = global0.b.a.e;
    let var_3 = Struct_3((all(vec4<bool>(true, true, true, true)) && func_1(countOneBits(u_input.a.x), select(9123u, 17328u, true), global0.d.a.a, global0.b.a.d.xxy).d.a.e) | true, all(!select(vec4<bool>(global0.d.a.e, global0.b.a.e, true, true), vec4<bool>(global0.b.a.e, true, false, true), vec4<bool>(global0.d.a.e, global0.b.a.e, true, global0.d.a.e))) | all(vec3<bool>(all(vec4<bool>(global0.b.a.e, false, true, false)), false && global0.b.a.e, !global0.d.a.e)));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.d.a.d.yx, global0.d.a.d.wx))), _wgslsmith_f_op_vec2_f32(floor(global0.b.a.d.xx)), global0.d.a.d.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1461f)))) - vec2<f32>(_wgslsmith_f_op_f32(1727f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a.d.x) + func_1(66300u, 1u, global0.b.a.d.x, vec3<f32>(2320f, 950f, global0.d.a.d.x)).b.a.a)), -719f));
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.a.c ^ 1844u, 2147483647i, var_0.wx ^ _wgslsmith_add_vec2_i32(countOneBits(u_input.b.wz), firstTrailingBit(-u_input.b.yx)));
}

