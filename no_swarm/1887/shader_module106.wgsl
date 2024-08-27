struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> u32 {
    global0 = ~vec2<u32>(40077u, abs(_wgslsmith_clamp_u32(~38689u, 358u, arg_1.a)));
    global0 = vec2<u32>(_wgslsmith_dot_vec3_u32(~firstTrailingBit(~vec3<u32>(global0.x, 4294967295u, 26456u)), select(abs(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 44421u, global1.e), vec3<u32>(global0.x, 6898u, 48943u))), _wgslsmith_mult_vec3_u32(vec3<u32>(67084u, global1.e, global0.x) & vec3<u32>(arg_1.b.e, arg_1.b.e, 19361u), vec3<u32>(global0.x, 21197u, global1.e)), any(select(vec2<bool>(false, false), vec2<bool>(arg_1.b.d.x, false), false)))), select(global0.x, 0u & _wgslsmith_sub_u32(~66985u, min(0u, global1.e)), !all(global1.d)));
    let var_0 = select(vec4<bool>(!(min(arg_1.a, arg_1.b.e) < 4294967295u), !(!any(vec4<bool>(false, true, false, true))), any(!global1.d), 257f <= _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(exp2(arg_0)))), vec4<bool>(_wgslsmith_mult_u32(global0.x, global1.e) <= abs(5853u), arg_1.b.c, any(vec3<bool>(false, arg_1.b.c, true)), ((arg_1.b.d.x || global1.d.x) | true) && true), !select(select(vec4<bool>(true, arg_1.b.c, true, global1.d.x), vec4<bool>(false, global1.c, true, false), arg_1.b.d.x), select(select(vec4<bool>(false, global1.d.x, true, true), vec4<bool>(global1.c, global1.d.x, arg_1.b.c, false), global1.d.x), select(vec4<bool>(global1.d.x, true, true, true), vec4<bool>(false, true, global1.d.x, global1.c), vec4<bool>(arg_1.b.d.x, true, true, true)), false), select(arg_1.b.c, false, global1.d.x) & true));
    let var_1 = Struct_2(vec3<i32>(-9621i, -abs(u_input.a.x), u_input.a.x) & u_input.a);
    let var_2 = ~firstLeadingBit(vec4<u32>(firstTrailingBit(global1.e), arg_1.a, _wgslsmith_mult_u32(44977u, 54501u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(arg_1.a, global1.e), vec2<u32>(global1.e, 22796u)), vec2<u32>(global0.x, global1.e))));
    return ~abs(2770u);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    return func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1237f, _wgslsmith_f_op_f32(-1046f + 643f)))) + _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1882f)) * -603f))), Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(38089u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 1u, global0.x, global1.e), vec4<u32>(global0.x, 1u, 4294967295u, global1.e))), _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(global1.e, global0.x)), vec2<u32>(global1.e, global1.e))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global1.b.x * -1199f), -1353f, _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.yy)) - _wgslsmith_f_op_vec2_f32(global1.a.yy + vec2<f32>(2116f, global1.b.x))), !(global1.a.x < global1.a.x), select(select(vec3<bool>(true, false, global1.c), global1.d, vec3<bool>(false, false, true)), select(global1.d, vec3<bool>(global1.c, global1.d.x, true), vec3<bool>(true, true, global1.d.x)), select(global1.d.x, global1.d.x, true)), 17076u)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_1 {
    global1 = arg_2.b;
    var var_0 = arg_1;
    var_0 = ~arg_1;
    var_0 = _wgslsmith_mult_vec2_u32(arg_1, vec2<u32>(_wgslsmith_sub_u32(~var_0.x, ~_wgslsmith_sub_u32(var_0.x, global1.e)), _wgslsmith_sub_u32(min(var_0.x, 0u) & func_2(vec3<f32>(arg_2.b.b.x, arg_2.b.a.x, global1.b.x), Struct_2(u_input.a)), arg_0)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(global1.a, _wgslsmith_f_op_vec3_f32(trunc(arg_2.b.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1824f, arg_2.b.a.x, arg_2.b.b.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global1.a.x - global1.a.x), 487f), _wgslsmith_f_op_vec2_f32(arg_2.b.b * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, global1.b.x) - vec2<f32>(global1.a.x, global1.a.x)))))), any(!vec4<bool>(true, false, arg_2.b.d.x, all(vec4<bool>(arg_2.b.c, true, false, arg_2.b.d.x)))), vec3<bool>(all(!vec4<bool>(false, false, global1.d.x, true)) || true, all(arg_2.b.d), _wgslsmith_div_f32(453f, _wgslsmith_f_op_f32(-arg_2.b.a.x)) > arg_2.b.a.x), var_0.x);
    return arg_2.b;
}

fn func_4(arg_0: Struct_1) -> u32 {
    global1 = func_1(~(~14169u), vec2<u32>(countOneBits(global0.x), ~53025u), Struct_3(4294967295u, func_1(80464u, ~(~vec2<u32>(global0.x, arg_0.e)), Struct_3(51439u, arg_0))));
    global0 = _wgslsmith_mult_vec2_u32(max(~(~(~vec2<u32>(1u, 29502u))), ~vec2<u32>(arg_0.e, global1.e) ^ vec2<u32>(38511u, 1u)), vec2<u32>(global1.e, func_1(_wgslsmith_mult_u32(global0.x | global0.x, 1u), vec2<u32>(4294967295u, 4294967295u) | reverseBits(vec2<u32>(1469u, global1.e)), Struct_3(global1.e, func_1(80788u, vec2<u32>(global1.e, 27399u), Struct_3(1u, arg_0)))).e));
    let var_0 = ~(~u_input.a);
    let var_1 = Struct_2(select(~_wgslsmith_mod_vec3_i32(u_input.a, u_input.a & vec3<i32>(u_input.a.x, -10264i, -13825i)), var_0, !arg_0.d.x || true));
    let var_2 = !global1.c;
    return ~(~_wgslsmith_div_u32(global1.e, ~global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global1.a);
    global0 = vec2<u32>(~(~(~global1.e) | global0.x), ~(~func_4(func_1(global0.x, vec2<u32>(global1.e, 0u), Struct_3(110503u, Struct_1(global1.a, vec2<f32>(-1133f, 2171f), false, vec3<bool>(global1.d.x, global1.c, global1.c), 11257u))))));
    var var_1 = vec4<bool>(global1.c, any(func_1(~(~0u), ~vec2<u32>(global1.e, 4294967295u) & (vec2<u32>(global0.x, 1u) >> (vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u))), Struct_3(~global1.e, Struct_1(vec3<f32>(-1778f, global1.b.x, var_0.x), global1.a.zx, global1.d.x, vec3<bool>(global1.d.x, global1.c, global1.d.x), global0.x))).d.xx), global1.d.x, true);
    var_1 = !select(vec4<bool>(true, true, true, all(vec2<bool>(var_1.x, false)) || false), !select(select(vec4<bool>(true, global1.c, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(false, global1.c, var_1.x, true), false), global0.x <= 0u), !select(select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(global1.d.x, true, true, true), true), select(vec4<bool>(false, global1.d.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, false), vec4<bool>(global1.d.x, true, true, false)), vec4<bool>(true, var_1.x, true, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.a.x, -18233i, u_input.a.x, u_input.a.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.e, global0.x, 1u, global1.e), vec4<u32>(1u, global0.x, 1u, global1.e), vec4<u32>(35410u, 0u, 1u, global0.x)) % vec4<u32>(32u))), vec4<i32>(countOneBits(u_input.a.x), -u_input.a.x, abs(-41904i), -u_input.a.x) ^ abs(reverseBits(vec4<i32>(0i, 5902i, u_input.a.x, 4770i)))), u_input.a, global0.x);
}

