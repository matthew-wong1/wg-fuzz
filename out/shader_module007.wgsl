struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(77285u, 0u, 4294967295u), vec3<u32>(35790u, 75873u, 84294u), vec3<u32>(41504u, 59695u, 4294967295u), vec3<u32>(58506u, 16142u, 26954u), vec3<u32>(4294967295u, 0u, 29349u), vec3<u32>(0u, 0u, 13039u), vec3<u32>(9013u, 65415u, 1096u), vec3<u32>(23730u, 4294967295u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 11545u, 1u), vec3<u32>(21991u, 1847u, 44586u), vec3<u32>(3384u, 36135u, 1u), vec3<u32>(9931u, 15336u, 4294967295u), vec3<u32>(41250u, 19532u, 4294967295u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> f32 {
    global0 = array<vec3<u32>, 15>();
    let var_0 = _wgslsmith_mult_u32(~(~1u), u_input.b.x);
    global0 = array<vec3<u32>, 15>();
    var var_1 = u_input.c.zx | vec2<u32>(_wgslsmith_add_u32(30208u, 0u), ~(~arg_1 | 1u));
    global0 = array<vec3<u32>, 15>();
    return 571f;
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_2(!vec2<bool>(true, any(vec3<bool>(true, true, true))), u_input.d, Struct_1(1907f, select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(all(vec3<bool>(false, false, false)), true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(665f, 381f, 1772f, 328f), vec4<f32>(-730f, -334f, -516f, 449f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(610f, 1484f, 1430f, -1084f)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false)))), ~abs(~vec3<u32>(4294967295u, u_input.c.x, arg_0))));
    global0 = array<vec3<u32>, 15>();
    var_0 = Struct_2(var_0.c.b.yz, 2147483647i, var_0.c);
    global0 = array<vec3<u32>, 15>();
    var var_1 = Struct_2(!(!vec2<bool>(all(vec4<bool>(var_0.c.b.x, false, var_0.c.b.x, false)), true)), -2147483647i, var_0.c);
    return u_input.d;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool) -> vec3<bool> {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(u_input.d, u_input.d), 2147483647i | arg_0.b);
    let var_1 = arg_0;
    var var_2 = select(vec4<bool>(!arg_2, arg_2, var_1.a.x, arg_0.c.b.x), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), arg_0.b <= arg_0.b)), vec4<bool>(!(var_1.a.x & !var_1.a.x), all(select(!var_1.c.b.xy, vec2<bool>(var_1.c.b.x, arg_2), !arg_0.c.b.zz)), arg_0.c.d.x > ~(arg_1.x >> (u_input.c.x % 32u)), !(!(arg_0.c.d.x != arg_1.x))));
    var_2 = !vec4<bool>(all(!select(vec4<bool>(false, arg_2, var_1.a.x, arg_2), vec4<bool>(true, arg_2, true, true), false)), true, select(any(select(vec2<bool>(arg_0.a.x, var_2.x), vec2<bool>(var_2.x, true), arg_0.a)), _wgslsmith_f_op_f32(select(2093f, 697f, false)) <= _wgslsmith_f_op_f32(-arg_0.c.a), all(!vec4<bool>(var_2.x, true, var_2.x, var_1.a.x))), var_1.c.b.x);
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1731f)));
    return !select(!vec3<bool>(true, true, var_1.a.x), vec3<bool>((-39217i << (1u % 32u)) >= func_3(arg_1.x), arg_2, 1i < arg_0.b), false);
}

fn func_1() -> f32 {
    global0 = array<vec3<u32>, 15>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec3<i32>(2147483647i, -74974i, u_input.d), 4294967295u)))))), !func_4(Struct_2(vec2<bool>(false, false), func_3(u_input.c.x), Struct_1(142f, vec3<bool>(false, true, true), vec4<f32>(-805f, -797f, 1444f, -345f), global0[_wgslsmith_index_u32(u_input.c.x, 15u)])), u_input.b, true), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1670f) + 488f), 396f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(133f - _wgslsmith_f_op_f32(1066f + 1168f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-109f, 1019f, -156f, -1972f) - vec4<f32>(-1441f, 336f, 1074f, -1180f)) + vec4<f32>(1000f, -716f, -722f, 544f)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))))))), ~abs(~(~vec3<u32>(u_input.c.x, u_input.b.x, u_input.b.x))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(-1000f)), vec3<bool>(false, !any(select(var_0.b, vec3<bool>(false, false, var_0.b.x), vec3<bool>(false, var_0.b.x, var_0.b.x))), var_0.b.x), var_0.c, _wgslsmith_add_vec3_u32(~select(vec3<u32>(114799u, var_0.d.x, u_input.b.x), vec3<u32>(0u, u_input.c.x, u_input.a) >> (vec3<u32>(var_0.d.x, 1u, 0u) % vec3<u32>(32u)), !var_0.b), vec3<u32>(~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(16184u, 15u)], vec3<u32>(u_input.a, u_input.c.x, 4294967295u)), _wgslsmith_mult_u32(max(34938u, 1205u), ~u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, u_input.b.x, 0u, u_input.a) & u_input.c, _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.b.x, 33718u, 51199u, var_0.d.x))))));
    let var_1 = var_0.d.x;
    global0 = array<vec3<u32>, 15>();
    return -1094f;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: u32) -> i32 {
    var var_0 = vec2<u32>(0u, _wgslsmith_mod_u32(arg_3, (u_input.a ^ 1u) | ~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(arg_3, 15u)], u_input.c.wxw)));
    var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(u_input.a & var_0.x, _wgslsmith_div_u32(arg_3, arg_3)), u_input.a), firstTrailingBit(vec2<u32>(arg_3, ~abs(38970u))));
    var var_1 = Struct_2(arg_0.b.zy, ~_wgslsmith_div_i32((u_input.d >> (arg_0.d.x % 32u)) << (firstLeadingBit(1u) % 32u), arg_2.x), arg_0);
    global0 = array<vec3<u32>, 15>();
    var var_2 = Struct_2(var_1.c.b.yz, u_input.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + var_1.c.a) * arg_0.a)), vec3<bool>(!any(arg_0.b.xx), true, func_4(Struct_2(arg_0.b.zz, arg_2.x, var_1.c), vec2<u32>(0u, var_0.x), true).x != (30159u > arg_3)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(756f, 1474f, var_1.c.c.x, arg_0.a)))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, ~12293u, arg_3), 15u)]));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), vec3<bool>(true, 0i >= u_input.d, true), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), -661f, 855f, _wgslsmith_div_f32(-977f, -1576f)), abs(~vec3<u32>(28183u, 41572u, u_input.a))), u_input.b, _wgslsmith_mod_vec2_i32(-vec2<i32>(1i, 0i), ~vec2<i32>(~u_input.d, _wgslsmith_mult_i32(1i, u_input.d))), u_input.b.x);
    global0 = array<vec3<u32>, 15>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1123f)))), vec3<bool>(all(func_4(Struct_2(vec2<bool>(true, false), -2147483647i, Struct_1(301f, vec3<bool>(true, true, true), vec4<f32>(-2493f, 374f, 1000f, 1045f), vec3<u32>(0u, u_input.c.x, 66101u))), u_input.b | vec2<u32>(u_input.a, u_input.a), true)), true, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-270f, 960f, 1888f, 1187f), vec4<f32>(512f, -1000f, 1593f, -708f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(126f, -222f, -394f, -417f))), vec4<f32>(-922f, 1000f, -408f, 1000f)))) + vec4<f32>(1f, 1f, 1f, 1f)), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c.yww, ~vec3<u32>(u_input.b.x, 0u, 888u)), vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.c.x), 1u ^ u_input.b.x, _wgslsmith_mod_u32(1817u, 4294967295u))));
    global0 = array<vec3<u32>, 15>();
    let var_2 = var_1;
    var var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.c.zwx, _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.d.x, 10703u >> (var_2.d.x % 32u), _wgslsmith_mod_u32(var_1.d.x, var_2.d.x)), ~vec3<u32>(var_1.d.x, 1u, 4294967295u))), ~var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.b.x, ~u_input.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x + var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1504f + var_2.c.x) - 926f), var_1.c.x, -543f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(var_2.c.x, 2193f), var_1.a, var_1.a, var_2.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2621f, var_1.c.x, 1252f, var_2.c.x)), true))));
}

