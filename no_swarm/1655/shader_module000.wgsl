struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(152f, 172f, 302f, 563f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, arg_1.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(167f + 644f)), _wgslsmith_f_op_f32(sign(1000f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(905f - global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(156f + global0.x), _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f)))))));
    var var_0 = Struct_2(Struct_1(select(vec4<bool>(all(vec3<bool>(false, false, true)), all(vec4<bool>(true, false, true, true)), true, true), vec4<bool>(true, select(false, true, false), true, 0u >= u_input.a), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 529f, 178f, arg_1.x) - vec4<f32>(-1642f, -1032f, arg_0, arg_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, -599f, arg_0), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, arg_1.x, arg_0), vec4<f32>(-473f, -713f, global0.x, -665f))))))));
    let var_1 = Struct_1(select(!vec4<bool>(!var_0.a.a.x, u_input.a > 0u, u_input.a >= u_input.a, !var_0.a.a.x), vec4<bool>(select(false | var_0.a.a.x, select(true, true, var_0.a.a.x), !var_0.a.a.x), ~(-1i) >= (u_input.b | u_input.b), any(var_0.a.a.yz), var_0.a.a.x), var_0.a.a), -1222f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(var_0.a.c)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(global0.x + 1049f), _wgslsmith_f_op_f32(-346f - arg_0), _wgslsmith_f_op_f32(select(var_0.a.c.x, 367f, var_0.a.a.x)), _wgslsmith_f_op_f32(step(-541f, -2545f))))))));
    var var_2 = all(var_1.a.wz);
    let var_3 = Struct_2(var_1);
    return 0u;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>) -> vec4<i32> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(floor(-531f)), global0.x, 247f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + global0.x), true)) * _wgslsmith_f_op_f32(363f - _wgslsmith_div_f32(713f, global0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(global0.x)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1599f)))))));
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 1446f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-136f, _wgslsmith_div_f32(global0.x, -457f), _wgslsmith_f_op_f32(max(1284f, -2231f)), global0.x) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -263f, global0.x)))))), arg_1.x));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 1000f, 2184f, -218f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-795f + 1858f)), 1000f, -512f, global0.x)));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1338f, global0.x, 827f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(481f, 873f, global0.x, global0.x))))))));
    var var_0 = vec4<bool>(arg_1.x, false, !(!arg_1.x) & true, !(u_input.b == -1i));
    return _wgslsmith_mod_vec4_i32(-(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c) | reverseBits(vec4<i32>(0i, u_input.b, u_input.b, 20602i))) | (vec4<i32>(i32(-1i) * -45503i, -22923i >> (arg_0.x % 32u), -1i, -45363i) & min(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c), vec4<i32>(u_input.c, 1i, 0i, u_input.c))), ~(~(-(~vec4<i32>(u_input.c, u_input.c, -15804i, 1i)))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = 8617i ^ max(-1i, u_input.c);
    var_0 = 32874i;
    var_0 = _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c, u_input.b, -39687i, _wgslsmith_clamp_i32(u_input.b, 20837i, -2030i)) & vec4<i32>(_wgslsmith_add_i32(2147483647i, u_input.c), u_input.b, -u_input.c, -1i), func_4(vec4<u32>(~u_input.a, func_3(arg_0, vec3<f32>(global0.x, arg_0, -526f)), 4294967295u, u_input.a >> (22271u % 32u)), vec3<bool>(true, true, true))), ~vec4<i32>(7507i >> (countOneBits(u_input.a) % 32u), ~abs(-26275i), -(~u_input.b), ~(~u_input.b)));
    let var_1 = global0.xz;
    var var_2 = Struct_2(Struct_1(vec4<bool>(_wgslsmith_f_op_f32(-284f - arg_0) <= _wgslsmith_f_op_f32(-468f * global0.x), true, true, false), _wgslsmith_f_op_f32(-2483f * var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + global0.x), _wgslsmith_f_op_f32(floor(1487f)), _wgslsmith_f_op_f32(max(326f, 600f)), _wgslsmith_f_op_f32(arg_0 - arg_0)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-739f, -844f, var_1.x, var_1.x))))));
    return Struct_1(select(select(select(!vec4<bool>(var_2.a.a.x, var_2.a.a.x, false, false), var_2.a.a, any(var_2.a.a)), select(select(var_2.a.a, var_2.a.a, vec4<bool>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x, true)), !var_2.a.a, select(vec4<bool>(false, true, var_2.a.a.x, var_2.a.a.x), var_2.a.a, var_2.a.a)), vec4<bool>(true, true, false, -49094i > u_input.b)), select(select(select(vec4<bool>(var_2.a.a.x, false, false, var_2.a.a.x), vec4<bool>(true, true, false, true), vec4<bool>(var_2.a.a.x, false, var_2.a.a.x, true)), select(vec4<bool>(var_2.a.a.x, false, false, var_2.a.a.x), vec4<bool>(false, true, var_2.a.a.x, true), true), !var_2.a.a), var_2.a.a, select(select(var_2.a.a, vec4<bool>(false, var_2.a.a.x, var_2.a.a.x, false), false), var_2.a.a, var_2.a.a)), select(!select(var_2.a.a, var_2.a.a, vec4<bool>(true, false, true, false)), select(var_2.a.a, var_2.a.a, var_2.a.a), !var_2.a.a.x)), var_1.x, var_2.a.c);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(func_2(-1243f));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(global0.yyw));
    var var_2 = 2147483647i;
    var var_3 = 10137u >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(_wgslsmith_add_u32(32045u, u_input.a), 1u, u_input.a, _wgslsmith_add_u32(42201u, 11975u))), ~(~vec4<u32>(1u, u_input.a, u_input.a, 42744u))) % 32u);
    let var_4 = var_0;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) + global0.x), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -550f) - _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(true, false, false, true), global0.x, vec4<f32>(-282f, global0.x, global0.x, global0.x))))), -1840f)));
    let var_0 = vec2<bool>(true, true);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(280f, global0.x)), -1928f) + -525f) * global0.x), 621f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_1(vec4<bool>(var_0.x, any(vec3<bool>(false, var_0.x, var_0.x)), var_0.x != false, !all(vec4<bool>(var_0.x, var_0.x, var_0.x, false))), Struct_1(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, true, false)), -1090f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -218f, global0.x, -256f))))));
    let var_1 = select(abs(vec3<u32>(~countOneBits(33615u), ~min(u_input.a, u_input.a), u_input.a)), vec3<u32>(18370u, ~_wgslsmith_mult_u32(u_input.a, min(u_input.a, 0u)), u_input.a), select(vec3<bool>(all(!vec3<bool>(false, var_0.x, true)), true, true), select(vec3<bool>(any(vec3<bool>(false, var_0.x, true)), 2147483647i < u_input.c, var_0.x), !vec3<bool>(true, var_0.x, true), true), !select(!vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1022f + -2714f), _wgslsmith_f_op_f32(-func_2(global0.x).c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1351f * global0.x), 247f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(426f, global0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -439f, global0.x, 251f) * vec4<f32>(566f, global0.x, global0.x, 547f)))))))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(747f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(func_2(global0.x).a, Struct_1(vec4<bool>(true, false, true, var_0.x), -140f, vec4<f32>(-640f, 913f, -1643f, 299f))))))));
}

