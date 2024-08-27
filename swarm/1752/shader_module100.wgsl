struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: i32;

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = arg_1.c.x;
    var var_1 = u_input.a;
    return arg_1.c;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<i32> {
    return ~vec2<i32>(-6710i, min(u_input.a, u_input.a));
}

fn func_2() -> bool {
    var var_0 = Struct_2(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec2<bool>(false, false)))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 14219i) & _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(1i, 1i)) | func_4(vec2<f32>(_wgslsmith_div_f32(-1754f, -395f), 1f), vec3<bool>(true, true, true), Struct_1(true, _wgslsmith_div_f32(890f, 1529f), func_3(Struct_2(vec2<bool>(false, true), vec2<i32>(22327i, -1i), vec4<bool>(false, true, true, true)), Struct_1(true, -1815f, vec3<u32>(60972u, 0u, 0u), 4829u)), 0u)), select(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true))), vec4<bool>(true, true, !select(false, true, true), true), true));
    var var_1 = Struct_1(!all(!(!var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-984f))), vec3<u32>(~(~_wgslsmith_mod_u32(76197u, 51170u)), ~min(~14305u, ~21337u), 4294967295u), 1u);
    let var_2 = Struct_1(var_1.d == firstLeadingBit(var_1.d), _wgslsmith_f_op_f32(-var_1.b), vec3<u32>(func_3(Struct_2(vec2<bool>(var_0.c.x, var_1.a), _wgslsmith_mod_vec2_i32(var_0.b, vec2<i32>(-1i, var_0.b.x)), select(vec4<bool>(false, var_1.a, true, false), vec4<bool>(false, false, false, false), true)), Struct_1(false, _wgslsmith_f_op_f32(1354f * -265f), firstTrailingBit(var_1.c), 1u)).x, 17243u, select(var_1.c.x, _wgslsmith_mult_u32(13495u, var_1.c.x), false) | 1u), var_1.c.x);
    var_1 = Struct_1(var_0.c.x, _wgslsmith_f_op_f32(max(var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -535f))), _wgslsmith_mod_vec3_u32(var_2.c, var_1.c), max(4294967295u, var_1.c.x));
    var var_3 = abs(var_2.c.zx);
    return !(var_0.c.x || true);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global1 = any(vec3<bool>(arg_0.d != (1u >> (arg_0.c.x % 32u)), !func_2(), false));
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), !vec3<bool>(true, false, arg_0.a), Struct_1(arg_0.a, -655f, vec3<u32>(1u, arg_0.c.x, 36902u), arg_0.c.x)).x, 0i), select(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -66i), vec2<i32>(1i, u_input.a)), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(_wgslsmith_sub_i32(6963i, 9161i), reverseBits(u_input.a)), !(!vec2<bool>(true, arg_0.a)))), _wgslsmith_dot_vec2_i32(select(-vec2<i32>(u_input.a, u_input.a) | (vec2<i32>(u_input.a, u_input.a) >> (arg_0.c.yy % vec2<u32>(32u))), vec2<i32>(_wgslsmith_div_i32(1i, u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.a)), vec2<bool>(false, false)), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1137f, -998f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(897f, -1771f))), select(vec3<bool>(true, true, true), !vec3<bool>(true, true, arg_0.a), vec3<bool>(false, arg_0.a, arg_0.a)), Struct_1(arg_0.a, _wgslsmith_f_op_f32(-arg_0.b), arg_0.c, _wgslsmith_mod_u32(4294967295u, arg_0.c.x)))));
    let var_1 = select(vec4<bool>(arg_0.a, all(!vec3<bool>(false, true, arg_0.a)), all(!(!vec3<bool>(arg_0.a, arg_0.a, false))), !(!arg_0.a)), vec4<bool>(false, arg_0.a, false, false), arg_0.a);
    var var_2 = ~_wgslsmith_div_i32(-var_0 & -(~(-19478i)), -_wgslsmith_clamp_i32(~var_0, reverseBits(var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_0, -3409i), vec4<i32>(48262i, var_0, u_input.a, 1i))));
    var_2 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(~var_0 >> (4294967295u % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(26647i, var_0), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_0), vec2<i32>(u_input.a, 1968i))), _wgslsmith_mult_vec2_i32(min(vec2<i32>(39872i, u_input.a), vec2<i32>(30963i, var_0)), _wgslsmith_add_vec2_i32(vec2<i32>(1764i, var_0), vec2<i32>(u_input.a, 13163i))))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    global1 = all(vec4<bool>(any(vec4<bool>(true, true, func_2(), func_1(Struct_1(arg_0.a, arg_0.b, arg_0.c, arg_0.c.x), 120f).a)), !arg_0.a, false, arg_0.a));
    global0 = abs(-30672i);
    global0 = abs(-abs(arg_1.x));
    global1 = !arg_0.a;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1125f, arg_0.b, arg_0.b, arg_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1617f, -145f, -1297f, arg_0.b) + vec4<f32>(arg_0.b, arg_0.b, arg_0.b, -685f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, 324f, arg_0.b) * vec4<f32>(arg_0.b, 134f, 940f, -927f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 343f, -194f, -457f)), select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), vec4<bool>(arg_0.a, arg_0.a, true, false), true))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-473f, 747f, arg_0.b, arg_0.b))))), vec4<bool>(arg_0.b == -1440f, !arg_0.a, true, true | arg_0.a)))));
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 44641i;
    let var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -45942i), -(~vec4<i32>(u_input.a, u_input.a, 64832i, u_input.a))) << (vec4<u32>(~1u, func_5(func_1(Struct_1(false, -1854f, vec3<u32>(15192u, 1u, 1u), 39933u), 2040f), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(u_input.a, u_input.a, u_input.a))), func_3(Struct_2(vec2<bool>(true, false), vec2<i32>(20360i, -50688i), vec4<bool>(false, true, true, true)), Struct_1(false, 983f, vec3<u32>(4294967295u, 1590u, 52052u), 4294967295u)).x, 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(~(-2147483647i), i32(-1i) * -u_input.a, u_input.a, 2013i), _wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.a, max(u_input.a, u_input.a), ~(-2147483647i), -41327i), vec4<i32>(firstLeadingBit(u_input.a), 20642i, -2147483647i, u_input.a & -2147483647i))));
    let var_1 = ~21882u;
    let var_2 = !all(!select(vec2<bool>(false, false), vec2<bool>(true, false), true));
    let var_3 = 222f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(183f, var_3, 903f) - vec3<f32>(var_3, var_3, var_3))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3, -186f, -1003f))), all(select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, false), vec2<bool>(var_2, false))))))));
}

