struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_div_f32(-1666f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, abs(u_input.b.x))), _wgslsmith_div_u32(0u, firstLeadingBit(u_input.b.x))));
    var var_1 = !vec4<bool>(54430u >= ~var_0.c, !(!any(vec4<bool>(false, false, true, true))), !all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -142f)), true)) + _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(176f * arg_0.x) + _wgslsmith_f_op_f32(245f + arg_0.x))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1384f, arg_0.x, arg_0.x, -887f))))), vec4<f32>(-866f, _wgslsmith_f_op_f32(max(var_2, 157f)), _wgslsmith_f_op_f32(abs(var_2)), arg_0.x))))));
    var var_4 = _wgslsmith_div_f32(var_2, -821f);
    return Struct_1(vec4<u32>(0u, _wgslsmith_sub_u32(~(~var_0.c), var_0.c), ~(~var_0.c & max(4294967295u, var_0.c)), u_input.b.x), false, max(var_0.c | (~0u ^ countOneBits(var_0.c)), ~90588u), !(!select(var_1.wwz, var_1.yzw, true)), max(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.c, u_input.b.x), ~vec2<u32>(u_input.b.x, 1u), u_input.b.zy), min(~(~vec2<u32>(u_input.b.x, 1u)), u_input.b.yw)));
}

fn func_3(arg_0: Struct_1) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -341f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(461f * 2149f))), _wgslsmith_f_op_f32(f32(-1f) * -1091f), !(!arg_0.d.x)))), -263f, arg_0.e.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: i32, arg_3: u32) -> vec3<u32> {
    var var_0 = func_3(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(778f, arg_1.a, arg_1.b), vec3<bool>(true, false, true)))))));
    let var_1 = ~(-(~u_input.c.x) | countOneBits(_wgslsmith_mod_i32(min(u_input.c.x, -22003i), reverseBits(-19515i))));
    var_0 = Struct_4(_wgslsmith_f_op_f32(max(arg_1.a, 1909f)), -297f, max(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, var_0.c, 0u, var_0.c), vec4<u32>(arg_3, 0u, arg_3, 45257u), vec4<bool>(false, false, false, false)), u_input.b), ~abs(abs(4294967295u))));
    return ~firstLeadingBit(u_input.b.xwx);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<u32>) -> f32 {
    var var_0 = ~(~((-arg_2.a.x ^ 0i) << (_wgslsmith_mult_u32(u_input.b.x >> (4294967295u % 32u), _wgslsmith_div_u32(u_input.b.x, 51709u)) % 32u)));
    let var_1 = u_input.c.x;
    var_0 = _wgslsmith_add_i32(var_1, 2147483647i);
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.x, _wgslsmith_add_i32(arg_2.a.x, firstTrailingBit(arg_2.a.x) ^ 1i), ~firstLeadingBit(var_1 & arg_2.a.x)), select(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-57192i, -21101i), select(var_1, -2147483647i, true), -arg_2.a.x), vec3<i32>(_wgslsmith_dot_vec2_i32(arg_2.a.xy, vec2<i32>(arg_2.a.x, arg_2.a.x)), max(-39077i, 1i), -1i)), select(arg_2.a, _wgslsmith_div_vec3_i32(max(arg_2.a, u_input.c.wxz), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1, -1i, var_1), vec3<i32>(arg_2.a.x, 1i, 7155i))), vec3<bool>(true, true, 360f < arg_2.b)), func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_2.b, 1393f) + vec3<f32>(813f, arg_2.b, arg_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, -1070f, 336f) * vec3<f32>(arg_2.b, arg_1.a, arg_2.b))))).d));
    var_0 = -u_input.a;
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-845f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-776f, -977f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-372f + -393f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-216f + 1530f) + _wgslsmith_f_op_f32(-749f * 1301f)), 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-561f, -266f)) * _wgslsmith_f_op_f32(max(-1340f, 1379f))))));
    var_0 = _wgslsmith_f_op_f32(select(725f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~func_1(vec2<f32>(533f, -164f), Struct_4(-154f, 432f, u_input.b.x), -2147483647i, 1u), Struct_3(_wgslsmith_f_op_f32(-984f + 233f)), Struct_2(u_input.c.wxw, -369f), _wgslsmith_div_vec4_u32(~u_input.b, ~vec4<u32>(u_input.b.x, 0u, 4294967295u, 54595u)))) + -487f), !all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(true, true, false)))));
    var var_1 = select(vec2<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false)) || true, any(vec4<bool>(true, true, true, true))), !(!vec2<bool>(true, all(vec2<bool>(false, true)))), !any(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true))));
    var var_2 = func_3(Struct_1(abs(abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 53831u)) >> (u_input.b % vec4<u32>(32u))), u_input.b.x > _wgslsmith_dot_vec4_u32(~u_input.b, ~u_input.b), _wgslsmith_mult_u32(32713u & u_input.b.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b.yxz), vec3<u32>(u_input.b.x, u_input.b.x, 36898u))), !(!(!vec3<bool>(var_1.x, true, false))), func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-473f, 1088f), vec2<f32>(543f, -303f))), vec2<f32>(783f, -387f)), func_3(func_2(vec3<f32>(1000f, 333f, 687f))), u_input.c.x, (u_input.b.x >> (72071u % 32u)) << (1u % 32u)).zz));
    var var_3 = vec2<i32>(~_wgslsmith_add_i32(6237i, u_input.a << (var_2.c % 32u)), -u_input.a) & min(reverseBits(u_input.c.wz), ~(-vec2<i32>(u_input.a, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~(~select(var_2.c, u_input.b.x, true)), u_input.b.x), abs(-vec3<i32>(u_input.c.x, var_3.x, var_3.x)) & vec3<i32>(-u_input.c.x, firstLeadingBit(-7583i), ~0i >> (~var_2.c % 32u)), u_input.b.yxw, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.b, -222f), vec2<f32>(-1000f, var_2.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.a, var_2.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1348f, -413f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-148f, var_2.b)))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.a, -1202f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.b, 130f)))))), func_2(vec3<f32>(246f, 333f, var_2.b)).d.yy)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + var_2.a) * var_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f)), _wgslsmith_div_f32(_wgslsmith_div_f32(1610f, var_2.b), _wgslsmith_f_op_f32(select(1548f, -355f, true)))), var_2.a));
}

