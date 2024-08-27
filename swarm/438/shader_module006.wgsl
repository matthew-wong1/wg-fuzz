struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, false, false, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<bool>) -> bool {
    global0 = Struct_1(_wgslsmith_sub_u32(36885u, global0.a), arg_2.x, false, !arg_0.x);
    global0 = Struct_1(4294967295u ^ ~u_input.b, all(select(vec2<bool>(all(vec4<bool>(global0.b, arg_1, arg_0.x, false)), true), !arg_0, true)), arg_1, global0.d);
    global0 = Struct_1(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(852f, -1372f)) + _wgslsmith_f_op_f32(floor(-824f))) * -549f) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f)), 319f)), arg_0.x, any(vec2<bool>(select(any(arg_2.xz), all(vec4<bool>(arg_2.x, arg_0.x, false, arg_1)), global0.a < global0.a), all(arg_0))));
    var var_0 = Struct_1(4294967295u, arg_0.x, arg_0.x, select(true, arg_2.x, !(!(!arg_0.x))));
    global0 = Struct_1(~4294967295u, true, var_0.b != ((4294967295u != (64549u | u_input.b)) & any(select(vec3<bool>(false, true, arg_1), arg_2.yzz, var_0.c))), false);
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(max(28077u, 22140u), arg_1.d, all(select(!select(vec4<bool>(false, global0.c, true, false), vec4<bool>(arg_2.b, arg_2.c, arg_3.c, true), vec4<bool>(true, global0.b, false, arg_2.d)), select(vec4<bool>(true, arg_1.c, arg_2.c, false), vec4<bool>(arg_3.b, arg_2.d, false, arg_3.c), true), vec4<bool>(true, all(vec4<bool>(false, arg_3.c, false, arg_3.d)), any(vec4<bool>(false, arg_0.b, false, true)), all(vec2<bool>(global0.c, global0.c))))), arg_0.d);
    global0 = arg_2;
    let var_1 = max(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d) ^ 0i, -_wgslsmith_sub_i32(1i, select(-27626i, u_input.c.x, true)));
    let var_2 = arg_1;
    var var_3 = global0.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-415f)) * _wgslsmith_div_f32(-1348f, -920f))) - _wgslsmith_f_op_f32(1516f * _wgslsmith_f_op_f32(f32(-1f) * -774f)));
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    global0 = Struct_1(16083u, !(any(select(vec3<bool>(global0.d, global0.d, true), vec3<bool>(false, global0.d, global0.c), vec3<bool>(global0.d, false, true))) | global0.d), any(!select(vec3<bool>(false, true, global0.c), vec3<bool>(false, global0.d, false), vec3<bool>(global0.b, global0.d, global0.d))), true);
    global0 = Struct_1(_wgslsmith_dot_vec3_u32(~reverseBits(min(vec3<u32>(u_input.e.x, 42384u, u_input.b), vec3<u32>(1u, 0u, 122118u))), vec3<u32>(1u, ~_wgslsmith_mod_u32(4294967295u, 12231u), ~(global0.a ^ 54937u))), true, global0.c, true || !global0.b);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(80639u, false, true, true), Struct_1(1u, !(!global0.d), func_3(select(vec2<bool>(global0.d, global0.d), vec2<bool>(global0.d, global0.c), vec2<bool>(global0.b, global0.b)), false, vec4<bool>(global0.c, global0.d, global0.c, true)), global0.c), Struct_1(global0.a, global0.b, !(global0.d && false), !global0.c), Struct_1(_wgslsmith_dot_vec3_u32(u_input.e, ~vec3<u32>(u_input.b, u_input.b, global0.a)), true, !(arg_1 != arg_0), !(!global0.b)))));
    var_0 = arg_1;
    let var_1 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(min(156f, 716f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), arg_0)))));
    return min(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global0.a, u_input.e.x, u_input.b), ~vec4<u32>(global0.a, u_input.b, global0.a, 0u)), 0u) | _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(u_input.e.x, global0.a), global0.a, 4294967295u, global0.a ^ max(u_input.e.x, 53690u)), min(~reverseBits(vec4<u32>(4294967295u, 0u, 41878u, 32763u)), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, global0.a, 19433u), vec4<u32>(4294967295u, u_input.b, u_input.b, 4294967295u)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = 52275i;
    var_0 = ~2147483647i;
    var_0 = u_input.a;
    var var_1 = vec4<bool>(false, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c.x, -11959i) & firstTrailingBit(-54451i), -1i) > ~_wgslsmith_sub_i32(arg_2 | u_input.a, -59728i), !(!any(select(vec3<bool>(true, global0.b, true), vec3<bool>(arg_0.c, false, false), global0.d))), !global0.d);
    let var_2 = 1u;
    return Struct_1(select(1u, 73451u, arg_1.d), any(select(vec4<bool>(all(vec4<bool>(false, true, false, true)), true && var_1.x, true || arg_1.d, !arg_0.b), select(!vec4<bool>(false, true, true, global0.d), vec4<bool>(true, false, arg_0.d, var_1.x), select(vec4<bool>(arg_1.b, var_1.x, true, global0.d), vec4<bool>(true, false, arg_0.c, false), true)), true)), all(vec3<bool>(var_1.x, arg_1.c, var_1.x)), false);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    global0 = func_5(Struct_1(abs(u_input.b), !arg_1.x, true, !global0.d), Struct_1(4294967295u, all(arg_1), !all(vec2<bool>(global0.b, false)), global0.a > func_2(_wgslsmith_f_op_f32(sign(1301f)), _wgslsmith_f_op_f32(f32(-1f) * -1300f))), u_input.a);
    global0 = Struct_1(min(reverseBits(0u | _wgslsmith_add_u32(u_input.b, 57536u)), arg_0), true, all(!select(!vec3<bool>(true, true, global0.c), vec3<bool>(true, arg_1.x, false), any(vec4<bool>(arg_1.x, true, true, arg_1.x)))), arg_1.x || all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, arg_1.x, true), vec4<bool>(false, arg_1.x, false, true))));
    var var_0 = Struct_1(~(func_5(func_5(Struct_1(1u, true, arg_1.x, global0.b), Struct_1(84138u, global0.c, true, global0.c), 3897i), Struct_1(u_input.b, global0.c, false, true), ~(-26679i)).a ^ 33473u), true, !arg_1.x, false);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(398f, 178f, -1811f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(664f + 1000f) - -185f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, -141f, var_1.x, var_1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 409f, var_1.x, var_1.x), vec4<f32>(-176f, var_1.x, -1000f, 480f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -2038f))), !func_3(arg_1, var_0.b, vec4<bool>(false, global0.c, arg_1.x, var_0.c))))));
    return func_5(func_5(func_5(Struct_1(~4294967295u, true, true, false), Struct_1(var_0.a, true, u_input.d.x >= u_input.a, global0.b | global0.b), u_input.c.x), Struct_1(~9312u, func_3(vec2<bool>(var_0.d, false), global0.a > arg_0, vec4<bool>(global0.d, var_0.c, arg_1.x, arg_1.x)), var_0.d && !global0.d, !any(vec4<bool>(true, global0.b, true, global0.c))), abs(u_input.d.x)), func_5(func_5(Struct_1(u_input.b, arg_1.x, var_0.b, any(vec4<bool>(global0.b, global0.b, arg_1.x, true))), func_5(Struct_1(u_input.b, global0.c, arg_1.x, false), Struct_1(var_0.a, arg_1.x, arg_1.x, var_0.c), -1i), _wgslsmith_clamp_i32(-1i, 1i, u_input.c.x << (global0.a % 32u))), Struct_1(~u_input.b, !any(vec4<bool>(false, true, var_0.c, var_0.d)), all(select(vec4<bool>(true, true, false, global0.d), vec4<bool>(false, true, true, true), arg_1.x)), max(0i, u_input.d.x) <= u_input.d.x), _wgslsmith_clamp_i32(~u_input.d.x, u_input.a, firstTrailingBit(reverseBits(u_input.d.x)))), select(i32(-1i) * -3846i, u_input.a, var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~_wgslsmith_clamp_u32(19101u, ~88059u, u_input.b | global0.a) >> (min(60777u, ~(~0u)) % 32u), select(vec2<bool>(true, true), vec2<bool>(!(true | global0.c), all(select(vec3<bool>(false, true, false), vec3<bool>(true, global0.b, false), vec3<bool>(global0.b, global0.d, global0.c)))), global0.c));
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(239f, 487f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(186f, 1081f), vec2<f32>(1541f, -214f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-661f, 398f)))))), !vec2<bool>(!all(vec3<bool>(global0.d, global0.b, true)), false)));
    global0 = func_1(43633u, !select(vec2<bool>(true, func_5(Struct_1(global0.a, global0.c, global0.c, global0.c), Struct_1(global0.a, false, global0.d, global0.c), u_input.c.x).d), vec2<bool>(true, false), vec2<bool>(global0.d, true)));
    var var_1 = var_0.x;
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(4294967295u, global0.c, global0.b, global0.c), Struct_1(4294967295u, global0.b, global0.b, global0.c), Struct_1(u_input.b, global0.b, global0.b, true), Struct_1(25207u, global0.c, global0.c, global0.d))) + var_0.x)), var_0.x), var_0.x);
    global0 = func_5(Struct_1(65996u, !any(!vec3<bool>(global0.d, true, true)), global0.d, !(!(!global0.b))), func_1(global0.a, select(select(vec2<bool>(true, true), vec2<bool>(global0.b, false), select(vec2<bool>(true, global0.b), vec2<bool>(false, global0.c), global0.c)), vec2<bool>(any(vec3<bool>(false, global0.b, false)), true), false)), firstLeadingBit(_wgslsmith_sub_i32(~(-12075i), ~u_input.a)));
    global0 = Struct_1(1u, global0.c, global0.d, false);
    var var_2 = Struct_1(global0.a, global0.c, global0.d, all(vec2<bool>(!(37392u >= global0.a), !select(global0.d, global0.d, true))));
    var var_3 = ~select(_wgslsmith_div_u32(1u, global0.a ^ 1u), func_1(1u, !select(vec2<bool>(var_2.b, false), vec2<bool>(global0.b, global0.d), true)).a, !var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e.zy, _wgslsmith_sub_u32(var_2.a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.e), select(u_input.e, vec3<u32>(var_2.a, 0u, 1u), vec3<bool>(var_2.c, true, global0.c))), var_2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -678f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 551f) + vec3<f32>(var_0.x, var_0.x, -640f)))))), vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(630f, var_0.x))), 1000f));
}

