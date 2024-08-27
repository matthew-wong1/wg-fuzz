struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_4(48613u), 4294967295u, vec4<f32>(1000f, 1276f, -673f, -327f), vec2<i32>(-11736i, -14702i), -1357f);

var<private> global1: Struct_4 = Struct_4(9119u);

var<private> global2: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> i32 {
    let var_0 = arg_0;
    global1 = global0.a;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-global0.c.xxz), global0.c, _wgslsmith_f_op_vec4_f32(-global0.c), _wgslsmith_f_op_vec4_f32(-global0.c), u_input.a);
    var var_2 = Struct_3(global0.c.wxy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global0.c, global0.c))) - _wgslsmith_f_op_vec4_f32(-var_1.d)), vec4<f32>(global0.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1366f - _wgslsmith_f_op_f32(-var_1.d.x)))), arg_1.d, var_1.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(839f + global0.c.x) * -1387f), var_1.d.x, 211f, 1f)), 60624u);
    let var_3 = var_0;
    return -1i;
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    global2 = array<vec4<bool>, 29>();
    global1 = global0.a;
    var var_0 = global0.c.wz;
    let var_1 = Struct_4(41851u);
    var var_2 = Struct_2(47251u);
    return arg_3;
}

fn func_1() -> bool {
    var var_0 = !(!((4294967295u | global0.a.a) >= max(2216u, global1.a)) & true);
    var_0 = false;
    global2 = array<vec4<bool>, 29>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), -634f), _wgslsmith_f_op_f32(-global0.e)) + _wgslsmith_f_op_vec3_f32(global0.c.wzz - global0.c.yyz)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.c + vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-global0.e), global0.e, _wgslsmith_f_op_f32(global0.c.x * global0.e))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(global0.e)), _wgslsmith_f_op_f32(284f * _wgslsmith_f_op_f32(min(-2430f, 345f))), _wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_div_f32(860f, global0.c.x), true)), _wgslsmith_f_op_f32(abs(global0.e))), _wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(493f, 1180f, -872f, -903f)))), true)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.x - global0.c.x), _wgslsmith_f_op_f32(-global0.c.x))), 617f, 406f, _wgslsmith_f_op_f32(min(-361f, -459f))), func_3(_wgslsmith_sub_i32(-(i32(-1i) * -5947i), ~func_2(global0.a, Struct_1(global0.d.x, false, global0.c.x, 784f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1171f, 1179f, global0.e))))), Struct_1(5392i, true, global0.e, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(global0.c.x * 1001f))), ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, global1.a, 20163u), global0.a.a)));
    let var_2 = u_input.a;
    return all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(select(false, true, false), true)), vec2<bool>(false, all(vec3<bool>(true, true, true))), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true))));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: i32) -> Struct_5 {
    global1 = global0.a;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-909f - _wgslsmith_div_f32(816f, 1726f)), -728f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-846f)) + -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.x + global0.e), -1197f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(386f, global0.e, global0.e, global0.c.x) - vec4<f32>(global0.c.x, -272f, -1494f, 1552f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(126f, 758f, 980f, global0.c.x) * vec4<f32>(498f, -157f, global0.c.x, global0.c.x))), _wgslsmith_f_op_vec4_f32(trunc(global0.c)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f * global0.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.c.x, global0.c.x)), _wgslsmith_f_op_f32(global0.e * -409f)), 1f)), global0.c.x, global0.c.x));
    var var_1 = select(!(!select(!vec2<bool>(false, arg_0), vec2<bool>(true, true), u_input.a < global1.a)), vec2<bool>(select(all(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, arg_0), arg_0)), arg_0, func_1()), any(vec3<bool>(true, any(vec3<bool>(arg_0, false, true)), any(vec2<bool>(arg_0, false))))), true);
    var var_2 = Struct_2(~(~abs(~4294967295u)));
    var_2 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(59469u, 34482u, 1u), global0.a.a), u_input.a), ~global0.a.a));
    return Struct_5(Struct_4(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.b, 47763u), vec2<u32>(var_2.a, u_input.a)) >> (global0.a.a % 32u)), 5474u, vec4<f32>(_wgslsmith_f_op_f32(var_0.x * global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + -558f)), _wgslsmith_f_op_f32(f32(-1f) * -188f), global0.c.x), global0.d, -271f);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    global1 = global0.a;
    var var_0 = -((~u_input.b.xzx | vec3<i32>(0i, arg_0.d.x | u_input.c.x, arg_1.d.x)) & vec3<i32>(~(-1i), global0.d.x >> (_wgslsmith_sub_u32(1u, 1u) % 32u), -firstLeadingBit(global0.d.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-954f - _wgslsmith_f_op_f32(ceil(arg_1.c.x))), arg_0.e) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1683f, -400f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, arg_0.e))) + vec2<f32>(-226f, 372f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.e, arg_2.c), _wgslsmith_f_op_vec2_f32(global0.c.xz * arg_1.c.yx)))) - func_4(true, -reverseBits(vec4<i32>(global0.d.x, 28296i, 1i, -2147483647i)), -2147483647i).c.wy)));
    return -693f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_5(Struct_4(32463u), 1u, vec4<f32>(global0.e, global0.c.x, global0.c.x, global0.c.x), _wgslsmith_mod_vec2_i32(global0.d, vec2<i32>(global0.d.x, 7622i)), 148f), func_4(func_1(), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.d.x, 1i, u_input.e, 79600i), vec4<i32>(-2147483647i, 2147483647i, u_input.d, 21383i)), _wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(-15054i, -2147483647i))), Struct_1(abs(10440i), true, _wgslsmith_f_op_f32(sign(-1386f)), global0.c.x), _wgslsmith_f_op_vec3_f32(global0.c.zyx + _wgslsmith_f_op_vec3_f32(global0.c.xxx * vec3<f32>(1932f, global0.c.x, global0.c.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.c.x, global0.c.x))))), _wgslsmith_f_op_f32(round(global0.e)));
    let x = u_input.a;
    s_output = StorageBuffer(51159u, global0.c.yzz, vec2<i32>(-u_input.c.x, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 0i), vec2<i32>(2147483647i, u_input.b.x)))));
}

