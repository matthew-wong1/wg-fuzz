struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(1i, 1i, 0i, 0i, 25770i, 23627i, -1i, 1851i, -50410i, 8944i, 27421i, 43273i, i32(-2147483648), -11744i, -1i, 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    var var_0 = Struct_1(all(!select(vec2<bool>(arg_1.a, true), select(arg_2.c.yx, vec2<bool>(arg_0.c.x, false), false), !arg_2.c.yx)), _wgslsmith_clamp_vec2_u32(~u_input.a, vec2<u32>(abs(27389u), ~firstTrailingBit(arg_2.b.x)), u_input.a), select(select(select(!vec4<bool>(true, true, arg_1.a, true), vec4<bool>(false, arg_1.a, false, false), all(arg_0.c)), !(!vec4<bool>(false, arg_0.c.x, false, true)), !select(vec4<bool>(arg_2.c.x, false, arg_1.c.x, true), vec4<bool>(true, arg_2.a, arg_0.c.x, false), arg_1.c)), select(vec4<bool>(!arg_1.a, true, arg_2.d.x != -1i, arg_1.c.x), select(select(vec4<bool>(true, true, arg_0.a, arg_2.a), arg_2.c, vec4<bool>(arg_2.a, arg_2.c.x, arg_2.c.x, arg_2.c.x)), !arg_2.c, all(arg_2.c.wyx)), !arg_2.c.x), arg_2.c), (max(u_input.c, vec3<i32>(-1i, global0[_wgslsmith_index_u32(33736u, 16u)], -2147483647i)) >> (vec3<u32>(1u, ~arg_2.b.x, _wgslsmith_add_u32(arg_2.b.x, arg_0.b.x)) % vec3<u32>(32u))) << (countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.b.x, arg_2.b.x, 4294967295u), vec3<u32>(arg_1.b.x, arg_0.b.x, arg_2.b.x))) % vec3<u32>(32u)));
    var_0 = Struct_1(true, max(arg_1.b, arg_2.b), !(!vec4<bool>(all(vec2<bool>(arg_0.c.x, false)), true, true, u_input.b.x >= arg_1.d.x)), arg_2.d >> (vec3<u32>(0u, arg_2.b.x, ~(0u ^ arg_1.b.x)) % vec3<u32>(32u)));
    let var_1 = arg_0;
    return firstTrailingBit(0u);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    var var_0 = Struct_1(false, ~vec2<u32>(func_3(Struct_1(true, u_input.a, vec4<bool>(arg_0.c.x, arg_0.a, false, true), vec3<i32>(arg_0.d.x, arg_1, 0i)), arg_0, Struct_1(arg_0.a, arg_0.b, arg_0.c, u_input.c)), arg_0.b.x), !arg_0.c, vec3<i32>(-46945i, 4613i, -(~_wgslsmith_add_i32(78243i, -32672i))));
    let var_1 = reverseBits(_wgslsmith_sub_u32(0u, abs(~4294967295u)));
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    var var_2 = arg_0;
    return select(vec2<bool>(arg_0.c.x, all(vec4<bool>(!var_0.c.x, var_0.c.x, true, false))), var_2.c.wz, arg_0.c.wz);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<bool>) -> u32 {
    let var_0 = select(arg_1.b.x, ~firstLeadingBit(6836u), any(!vec4<bool>(!arg_0.x, arg_1.a, arg_1.d.x < global0[_wgslsmith_index_u32(arg_1.b.x, 16u)], any(arg_1.c))));
    var var_1 = Struct_1(false, vec2<u32>(u_input.a.x, u_input.a.x), select(!arg_1.c, select(select(vec4<bool>(true, arg_3.x, false, arg_1.c.x), select(vec4<bool>(false, false, false, false), vec4<bool>(arg_1.a, arg_1.c.x, arg_3.x, arg_0.x), arg_1.c), !vec4<bool>(arg_0.x, arg_1.a, false, arg_1.a)), !select(vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(arg_1.a, arg_0.x, false, false), vec4<bool>(arg_1.c.x, true, arg_1.a, arg_1.c.x)), arg_1.c), arg_1.c), max(-u_input.c, -u_input.c));
    var var_2 = vec4<bool>(any(vec4<bool>(!arg_0.x, arg_0.x, arg_3.x, any(vec3<bool>(arg_0.x, arg_3.x, true)))) && (1u == arg_1.b.x), select(988f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + -1599f) - _wgslsmith_f_op_f32(min(219f, arg_2.x))), true, !arg_1.a), !all(select(select(arg_1.c, vec4<bool>(true, false, true, true), false), arg_1.c, arg_1.c)), u_input.a.x >= 55987u);
    var var_3 = vec2<bool>(all(!vec3<bool>(true, true, var_2.x)), true);
    let var_4 = Struct_1(all(vec2<bool>(false, var_1.a)), _wgslsmith_mod_vec2_u32(arg_1.b, vec2<u32>(1u & func_3(Struct_1(false, vec2<u32>(u_input.d, 27293u), arg_1.c, u_input.c), arg_1, arg_1), select(1u, ~1u, all(vec3<bool>(true, var_1.a, false))))), select(arg_1.c, arg_1.c, false), select(_wgslsmith_clamp_vec3_i32(-reverseBits(var_1.d), vec3<i32>(-1i) * -arg_1.d, u_input.c), var_1.d, vec3<bool>(false, all(arg_1.c), true)));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(43900u, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, var_0, 0u), vec3<u32>(1u, var_1.b.x, u_input.d)) ^ min(arg_1.b.x, var_1.b.x)), abs(_wgslsmith_mult_u32(min(11496u, 4294967295u), 32318u))), ~(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.x, u_input.d, 14814u), vec3<u32>(4294967295u, var_4.b.x, var_4.b.x)) << (countOneBits(vec3<u32>(23861u, var_0, 0u)) % vec3<u32>(32u))) << (vec3<u32>(u_input.a.x, _wgslsmith_add_u32(~u_input.d, ~var_0), _wgslsmith_div_u32(~var_1.b.x, func_3(arg_1, arg_1, Struct_1(false, var_4.b, arg_1.c, arg_1.d)))) % vec3<u32>(32u)));
}

fn func_1() -> vec3<u32> {
    var var_0 = vec4<u32>(func_4(select(vec2<bool>(u_input.a.x < 43251u, true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(Struct_1(true, u_input.a, vec4<bool>(true, true, true, false), u_input.c), u_input.b.x)), true), Struct_1(false, ~(~u_input.a), vec4<bool>(true, true, true, true), select(select(u_input.c, vec3<i32>(-3493i, u_input.b.x, -2147483647i), false), vec3<i32>(-24216i, u_input.c.x, -1i), u_input.d < u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(289f)), _wgslsmith_f_op_f32(-372f * -1000f), -504f)), !vec3<bool>(u_input.d != 1u, true, any(vec2<bool>(true, false)))), u_input.d, ~76729u, _wgslsmith_mod_u32(1u, ~u_input.d >> (1u % 32u)) | min(0u, u_input.d));
    global0 = array<i32, 16>();
    let var_1 = true;
    global0 = array<i32, 16>();
    var var_2 = all(func_2(Struct_1(true, u_input.a, !select(vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(false, true, var_1, var_1), true), u_input.c), _wgslsmith_mod_i32(_wgslsmith_sub_i32(firstTrailingBit(2147483647i), -49360i), min(_wgslsmith_mult_i32(u_input.c.x, -22701i), _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(12714i, global0[_wgslsmith_index_u32(var_0.x, 16u)], -6186i))))));
    return abs(vec3<u32>(~firstTrailingBit(~8983u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, ~18329u), vec4<u32>(1u, abs(var_0.x), u_input.d, _wgslsmith_sub_u32(var_0.x, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -452f) - _wgslsmith_f_op_f32(-1057f - _wgslsmith_f_op_f32(f32(-1f) * -530f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(445f, 546f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -252f)))) * -390f));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(var_0.x + 1418f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-871f))));
    let var_2 = -957f;
    global0 = array<i32, 16>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1936f), _wgslsmith_f_op_f32(-var_2), -554f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-215f, var_2, var_1)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1234f, -308f) - vec3<f32>(-418f, 961f, -2094f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, 2566f, var_1), vec3<f32>(1750f, 292f, var_0.x), vec3<bool>(true, false, true))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(675f, 2702f, var_1), vec3<f32>(1468f, -116f, var_1), false))))));
    var var_3 = !all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, true), true));
    let var_4 = _wgslsmith_f_op_f32(step(353f, _wgslsmith_f_op_f32(-1000f + 1028f)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), ~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(1u, 0u, u_input.a.x), vec3<u32>(u_input.d, u_input.d, u_input.a.x), vec3<bool>(true, false, false)), ~vec3<u32>(0u, 0u, u_input.d)), ~(~vec3<u32>(0u, u_input.d, u_input.d))), abs(2147483647i));
}

