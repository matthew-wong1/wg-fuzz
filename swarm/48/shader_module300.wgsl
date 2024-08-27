struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: bool = false;

var<private> global3: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(false, vec2<i32>(2147483647i, 10559i)), Struct_4(false, vec2<i32>(-31417i, 1i)), Struct_4(true, vec2<i32>(1i, i32(-2147483648))), Struct_4(true, vec2<i32>(-51769i, 41366i)), Struct_4(false, vec2<i32>(24663i, i32(-2147483648))), Struct_4(false, vec2<i32>(0i, -27455i)), Struct_4(false, vec2<i32>(0i, i32(-2147483648))), Struct_4(true, vec2<i32>(-1i, 26381i)), Struct_4(false, vec2<i32>(1i, i32(-2147483648))), Struct_4(false, vec2<i32>(-44185i, -1i)), Struct_4(false, vec2<i32>(2147483647i, 0i)), Struct_4(true, vec2<i32>(0i, -20637i)), Struct_4(true, vec2<i32>(2147483647i, -12603i)), Struct_4(true, vec2<i32>(39088i, 2147483647i)), Struct_4(false, vec2<i32>(14550i, -9079i)), Struct_4(true, vec2<i32>(i32(-2147483648), -1i)), Struct_4(false, vec2<i32>(30150i, -1i)), Struct_4(true, vec2<i32>(37543i, i32(-2147483648))), Struct_4(true, vec2<i32>(32533i, -33192i)), Struct_4(false, vec2<i32>(-57664i, -25415i)), Struct_4(true, vec2<i32>(i32(-2147483648), 1i)), Struct_4(true, vec2<i32>(9401i, 0i)), Struct_4(true, vec2<i32>(2147483647i, -1i)), Struct_4(true, vec2<i32>(1i, 3493i)), Struct_4(true, vec2<i32>(869i, -1i)), Struct_4(false, vec2<i32>(14607i, i32(-2147483648))), Struct_4(true, vec2<i32>(2147483647i, i32(-2147483648))));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global1 = (-reverseBits(1i) << (~_wgslsmith_sub_u32(u_input.c.x, u_input.b) % 32u)) << (u_input.e % 32u);
    return !(!vec4<bool>(true, arg_0, any(!vec3<bool>(true, arg_0, false)), arg_0));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global2 = all(!func_3(false));
    let var_0 = Struct_3(u_input.c.x, 1u, vec3<f32>(1f, 1f, 1f), abs(_wgslsmith_sub_i32(-2147483647i, -39137i)), vec4<bool>(true, true, true, true));
    let var_1 = 461f;
    var var_2 = var_0.e.wwz;
    global2 = true;
    return Struct_1(vec2<i32>(arg_0 | (_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -26641i), vec2<i32>(var_0.d, 1i)) >> (~1u % 32u)), _wgslsmith_sub_i32(min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, 2147483647i, var_0.d), vec3<i32>(-9623i, 2147483647i, 41083i)), ~0i), -firstLeadingBit(arg_0))), var_2.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -598f) - _wgslsmith_f_op_f32(-var_0.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    global1 = arg_0.a.x;
    global2 = select(!arg_0.b.x, true, -343f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.c, 1216f))))));
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(round(arg_0.c)), 910f, 472f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(500f, _wgslsmith_f_op_f32(f32(-1f) * -842f), -707f, -687f))));
    global3 = array<Struct_4, 27>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121f * -1595f)) + _wgslsmith_f_op_f32(sign(arg_0.c))))), _wgslsmith_f_op_f32(exp2(func_2(arg_2.c.a.x).c)));
    return select(arg_2.a, 1u, false);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: bool) -> f32 {
    var var_0 = firstLeadingBit(arg_0.x);
    let var_1 = Struct_3(~func_4(Struct_1(vec2<i32>(arg_0.x, -89288i), !vec2<bool>(arg_2, true), 435f), _wgslsmith_dot_vec4_i32(~arg_0, vec4<i32>(arg_0.x, 20279i, arg_0.x, arg_0.x)), Struct_2(1u, vec3<i32>(arg_0.x, arg_0.x, 3515i), func_2(arg_0.x), vec3<f32>(1488f, -139f, 218f), Struct_1(arg_0.xy, vec2<bool>(false, arg_2), 1866f)), Struct_2(_wgslsmith_sub_u32(u_input.e, u_input.a), arg_0.xyy, Struct_1(arg_0.zx, vec2<bool>(true, arg_2), arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1554f, -1990f)), func_2(4813i))), abs(u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(arg_1 * 443f), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_mult_i32(reverseBits(min(arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 2147483647i, arg_0.x), arg_0))), -2147483647i >> (abs(~u_input.b) % 32u)), !func_3(false && arg_2));
    let var_2 = var_1.d;
    return _wgslsmith_f_op_f32(-var_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 27>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec4<i32>(25253i, 20446i, -9220i, 44463i) << (vec4<u32>(40900u, u_input.d, u_input.c.x, u_input.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(min(-738f, 542f)), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(-vec4<i32>(60876i, 22311i, 933i, 25169i), -1775f, false))))));
    global0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(941u, u_input.c.x, 0u, u_input.c.x), ~vec4<u32>(4294967295u, u_input.d, u_input.e, u_input.a)), min(~(~vec4<u32>(0u, 37530u, 2888u, u_input.a)), ~select(vec4<u32>(1u, 4294967295u, u_input.d, u_input.e), vec4<u32>(112538u, u_input.c.x, 37088u, 36973u), vec4<bool>(true, false, false, false)))), u_input.b);
    let var_1 = ~(-2147483647i | _wgslsmith_sub_i32(func_2(1i).a.x, -2147483647i));
    let var_2 = global3[_wgslsmith_index_u32(~(max(48686u, 43305u) | u_input.a), 27u)];
    var var_3 = -_wgslsmith_add_i32(var_2.b.x, ~var_1);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(ceil(-723f)))), _wgslsmith_f_op_f32(var_0 - var_0))) - 338f);
    var var_5 = 2160f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1324f, var_0, var_0, var_0) * vec4<f32>(var_0, -1000f, var_0, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, 164f)), var_0 == var_0)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0))))), 48165i);
}

