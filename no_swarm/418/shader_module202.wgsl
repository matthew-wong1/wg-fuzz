struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-532f, 976f, 1000f, -1269f), vec4<f32>(1610f, -173f, 1751f, 700f), vec4<f32>(829f, -1936f, 262f, 2616f), vec4<f32>(-1123f, 661f, -216f, 1227f), vec4<f32>(741f, -471f, -698f, -141f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    global0 = select(vec3<u32>(_wgslsmith_clamp_u32(u_input.a, 41182u, 1u), ~_wgslsmith_add_u32(2775u, global0.x), abs(global0.x)) >> (select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), arg_1), arg_1.x << (4294967295u % 32u), 0u), _wgslsmith_sub_vec3_u32(arg_1, countOneBits(vec3<u32>(u_input.b, global0.x, 35048u))), true) % vec3<u32>(32u)), abs(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~arg_1, vec3<u32>(u_input.b, u_input.a, arg_1.x) | arg_1, ~arg_1), arg_1 ^ min(vec3<u32>(5889u, 18880u, 32968u), vec3<u32>(u_input.b, 18014u, u_input.c)))), true);
    var var_0 = Struct_1(-1834f, arg_2.b, ~2147483647i, vec2<f32>(-420f, 267f));
    global1 = array<vec4<f32>, 5>();
    var_0 = arg_2;
    var var_1 = Struct_1(var_0.a, arg_2.c == var_0.c, ~arg_2.c, _wgslsmith_f_op_vec2_f32(arg_3.xx + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, 1386f) * vec2<f32>(var_0.a, arg_2.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -196f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(arg_2.d)))))));
    return _wgslsmith_f_op_f32(411f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-159f)))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_3(vec4<f32>(-1237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a)) * _wgslsmith_f_op_f32(f32(-1f) * -212f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d.x)))), ~(~countOneBits(vec3<u32>(global0.x, global0.x, global0.x))), arg_1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + -420f), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_0.a * arg_1.d.x))))), !arg_1.b, _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, ~(-326i)), _wgslsmith_div_i32(arg_1.c, 1i)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d) - _wgslsmith_f_op_vec2_f32(select(var_0.d, arg_1.d, arg_0))), _wgslsmith_f_op_vec2_f32(-var_0.d))))));
    let var_2 = vec3<u32>(_wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(0u, global0.x)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(35633u, 1u, u_input.c, 34573u), firstLeadingBit(vec4<u32>(global0.x, u_input.c, 83024u, global0.x))) ^ _wgslsmith_clamp_u32(5861u, u_input.a, 0u), ~4294967295u);
    global0 = var_2;
    let var_3 = Struct_1(697f, arg_0, _wgslsmith_add_i32(-39031i, arg_1.c), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-1031f - arg_1.a))))));
    return !(any(!vec3<bool>(var_0.b, arg_1.b, var_1.b)) && false);
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    global1 = array<vec4<f32>, 5>();
    let var_0 = ~_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, global0.x), vec3<u32>(global0.x, 61054u, global0.x)), vec3<u32>(global0.x, global0.x, 12785u))), _wgslsmith_mod_u32(0u, u_input.c));
    global0 = ~vec3<u32>(_wgslsmith_mult_u32(~41522u, ~var_0), reverseBits(_wgslsmith_mod_u32(~global0.x, global0.x)), _wgslsmith_sub_u32(global0.x | var_0, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 4294967295u), vec2<u32>(12237u, u_input.a))));
    let var_1 = vec4<u32>(abs(var_0), ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, global0.x, 0u, var_0), vec4<u32>(4294967295u, global0.x, 1u, var_0)), vec4<u32>(0u, 63065u, u_input.b, 9110u))), 69112u, ~(20351u & var_0));
    let var_2 = !vec4<bool>(true, !arg_0.b, true, true & (arg_0.c <= 1i));
    return var_1;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> bool {
    var var_0 = 0u;
    var_0 = _wgslsmith_dot_vec4_u32(func_4(Struct_1(arg_0.x, func_2(arg_0.x >= -906f, Struct_1(arg_0.x, false, -1136i, arg_0.xy)), 5503i, _wgslsmith_f_op_vec2_f32(sign(arg_0.xy)))), firstTrailingBit(firstLeadingBit(~abs(vec4<u32>(1u, 1u, 50704u, u_input.c)))));
    let var_1 = Struct_1(-994f, any(select(vec2<bool>(false, arg_1), vec2<bool>(true, true), false)) | false, -firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, 1i)), _wgslsmith_f_op_vec2_f32(-arg_0.yx));
    let var_2 = -28813i;
    global0 = ~reverseBits(~select(~vec3<u32>(1u, global0.x, u_input.c), ~vec3<u32>(u_input.c, u_input.a, u_input.b), vec3<bool>(var_1.b, var_1.b, var_1.b)));
    return true;
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = global0.x;
    global1 = array<vec4<f32>, 5>();
    var var_1 = arg_0.x;
    var var_2 = countOneBits(~(~_wgslsmith_clamp_i32(2147483647i, -1i, -65454i) & 1i));
    var_2 = 0i;
    return Struct_1(-323f, all(vec4<bool>(true, arg_0.x, !any(arg_0.yy), arg_0.x)), 2147483647i, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-524f, 388f, arg_0.x))), 508f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1222f * 379f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -944f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(vec3<bool>(!select(true, false, true), func_1(vec3<f32>(337f, 518f, 340f), any(vec2<bool>(false, true))), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), true)));
    var var_1 = i32(-1i) * -7789i;
    let var_2 = _wgslsmith_f_op_f32(min(-947f, _wgslsmith_f_op_f32(832f + var_0.d.x)));
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~global0.yy, firstLeadingBit(~global0.xy)), ~(~(~1u)), min(abs(select(0u, global0.x, var_0.b)), ~u_input.b & _wgslsmith_add_u32(u_input.c, 0u))), vec4<u32>(max(0u, ~u_input.c), _wgslsmith_mod_u32(max(global0.x, 22848u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.x, global0.x), u_input.c)), ~(~reverseBits(global0.x)), _wgslsmith_div_u32(4294967295u, u_input.c) << (4294967295u % 32u)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(max(var_0.a, 498f)), all(select(select(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), true), select(vec2<bool>(true, var_0.b), vec2<bool>(true, var_0.b), vec2<bool>(false, var_0.b)), !vec2<bool>(false, var_0.b)), !(!vec2<bool>(var_0.b, true)), var_0.b)), var_0.c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_0.a)), _wgslsmith_f_op_vec2_f32(var_0.d * vec2<f32>(var_0.d.x, var_0.a)), vec2<bool>(var_0.b, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(0u, max(global0.x, 27115u)), 0u), var_4.c, max(vec2<i32>(var_0.c, min(-19552i, -2147483647i)), _wgslsmith_add_vec2_i32(-vec2<i32>(0i, var_0.c), -_wgslsmith_mod_vec2_i32(vec2<i32>(-51044i, var_0.c), vec2<i32>(var_0.c, var_4.c)))), _wgslsmith_f_op_vec2_f32(var_0.d * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_4.d))))));
}

