struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
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

var<private> global0: vec4<i32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(718f * 963f))) * -1028f) * _wgslsmith_f_op_f32(trunc(109f))));
    global0 = _wgslsmith_div_vec4_i32(~(~(-vec4<i32>(-1i, -1i, global0.x, -24752i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-5831i, 2147483647i, -1i, global0.x), vec4<i32>(1i, 445i, global0.x, 27486i))), max(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global0.x, 0i, 2147483647i), firstTrailingBit(vec4<i32>(u_input.c, u_input.c, -25482i, 15459i))), reverseBits(select(vec4<i32>(1i, u_input.a, -38177i, u_input.a), vec4<i32>(u_input.c, 36658i, -101688i, -2147483647i), true)), abs(vec4<i32>(u_input.a, 0i, -2147483647i, global0.x))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(34342i, 25043i, global0.x, 1i) << (vec4<u32>(u_input.d, u_input.b.x, 0u, 1u) % vec4<u32>(32u)), select(vec4<i32>(-54473i, -1i, -19131i, u_input.a), vec4<i32>(u_input.c, global0.x, global0.x, -2147483647i), true)), vec4<i32>(_wgslsmith_add_i32(28870i, 11488i), _wgslsmith_clamp_i32(-10056i, 17279i, u_input.c), -global0.x, -3800i << (u_input.d % 32u)))));
    global0 = min(vec4<i32>(global0.x, ~reverseBits(min(-30977i, 1i)), u_input.c, u_input.c), countOneBits(reverseBits(abs(vec4<i32>(u_input.c, -2147483647i, 35504i, u_input.a))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(79739u, u_input.b.x, u_input.d, 85085u), ~vec4<u32>(40748u, 1392u, u_input.b.x, u_input.d)) % vec4<u32>(32u))));
    global0 = abs(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, -1i, -31187i, global0.x)), -vec4<i32>(global0.x, global0.x, 0i, u_input.a))) << (vec4<u32>(u_input.d, max(1u, 73428u), _wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(4294967295u, 35478u, u_input.d)), ~(~1u)) % vec4<u32>(32u));
    global0 = vec4<i32>(0i, 1i, _wgslsmith_mult_i32(firstTrailingBit(-global0.x), global0.x), -global0.x);
    return select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_mult_i32(-5054i, -1i) < u_input.c), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(true, false, false, true)) & any(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_f32(171f - var_0) <= var_0)), !vec2<bool>(true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)))), !any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = 2147483647i;
    let var_1 = select(select(all(vec3<bool>(true, true, true)), false, any(select(func_3(), vec2<bool>(false, false), vec2<bool>(true, false)))), select(true, func_3().x || any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2060f + arg_0)) > _wgslsmith_f_op_f32(f32(-1f) * -562f)), false);
    let var_2 = vec2<f32>(611f, _wgslsmith_f_op_f32(sign(arg_0)));
    global0 = vec4<i32>(-2147483647i, _wgslsmith_sub_i32(-13422i, abs(max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.x, 1i, -1i), vec4<i32>(u_input.c, var_0, -2147483647i, 41253i)), firstTrailingBit(var_0)))), u_input.c, -6462i);
    var var_3 = 688f;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, 223f), vec2<f32>(arg_0, var_2.x))))), ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, var_0, -15888i), vec4<i32>(global0.x, u_input.c, -2147483647i, 2147483647i)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), -2013f), ~vec4<i32>(u_input.a & -2147483647i, u_input.c, -2147483647i, -4282i)), Struct_1(var_2, _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, u_input.c, -2147483647i)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(49513i, global0.x, global0.x, u_input.c), vec4<i32>(2147483647i, global0.x, 9413i, u_input.a))))), !(!(!(!vec2<bool>(var_1, var_1)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> vec4<i32> {
    global0 = arg_1.a.b;
    let var_0 = _wgslsmith_f_op_f32(-1349f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-422f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-arg_1.c.a.x))))));
    global0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a.b.x, 1i, u_input.a, u_input.a), firstTrailingBit(arg_1.b.b)), select(_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(global0.x, -1i, 0i, global0.x)), arg_1.b.b, arg_1.c.b), arg_1.b.b, vec4<bool>(!(u_input.d > u_input.b.x), true, all(vec3<bool>(arg_3, arg_3, false)) & true, any(func_2(344f).d))));
    var var_1 = arg_1.a;
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(min(0u, 68376u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.d), vec4<u32>(u_input.b.x, 1u, 4294967295u, 31102u)), vec4<u32>(u_input.d, 4294967295u, u_input.d, 4294967295u)) ^ ~abs(70288u), 1u), ~vec3<u32>(firstLeadingBit(~4294967295u), ~u_input.b.x, ~(~25430u)), _wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(1u, 3901u, u_input.b.x), ~34321u, select(10699u, u_input.b.x, true)), u_input.b));
    return -firstLeadingBit(vec4<i32>(-2147483647i ^ u_input.a, -2147483647i, ~_wgslsmith_add_i32(1i, u_input.c), 30440i));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1022f - arg_3.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x * arg_3.a.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1240f, _wgslsmith_f_op_f32(-arg_3.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_3.a.x, arg_3.a.x))))))));
    global0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(var_0 + 773f), _wgslsmith_f_op_f32(abs(1360f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-609f, var_0, 161f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, -517f, var_0)), arg_2.x)))), func_2(1019f), arg_2.x | !(true || (var_0 >= -121f)), !(true | !(u_input.b.x <= 1u)));
    var var_1 = !all(!(!vec4<bool>(true, arg_2.x, arg_2.x, true))) && true;
    global0 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(arg_3.b.x & -7212i, func_2(arg_3.a.x).b.b.x), arg_3.b.x, arg_0, _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_3.b.zx), ~global0.xy))), -vec4<i32>(51886i, 47455i, ~(arg_3.b.x & 1i), -arg_3.b.x), vec4<i32>(global0.x, arg_0, ~select(0i, func_2(-496f).c.b.x, false), i32(-1i) * -1i));
    let var_2 = arg_3;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.x, arg_3.a.x, 622f, -1000f) * vec4<f32>(arg_3.a.x, arg_3.a.x, var_2.a.x, var_2.a.x)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(989f, 1052f, var_2.a.x, 683f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-915f, -311f, var_2.a.x, arg_3.a.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_2.a.x, var_0, var_2.a.x), vec4<f32>(294f, 1181f, 1996f, 277f), true))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0, -433f, 2465f, -151f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3.a.x, 133f, arg_3.a.x, var_2.a.x)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(-global0.x, ~(u_input.b >> (u_input.b % vec3<u32>(32u))), vec3<bool>(true, true, true), Struct_1(vec2<f32>(117f, 470f), firstLeadingBit(vec4<i32>(-2682i, global0.x, global0.x, -43688i)))))) * vec4<f32>(_wgslsmith_f_op_f32(abs(-404f)), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1010f)) - _wgslsmith_f_op_f32(trunc(2993f)))), _wgslsmith_f_op_f32(2610f + 129f)));
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(43303i) << (u_input.d % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.x, _wgslsmith_mult_i32(u_input.c, -25933i)), _wgslsmith_mod_vec3_i32(-global0.wxy, -vec3<i32>(2147483647i, global0.x, 2147483647i))), 0i, 23570i), vec4<i32>(firstLeadingBit(-global0.x), max(u_input.a, _wgslsmith_sub_i32(-2147483647i, 1i)) | u_input.a, 29212i, func_2(_wgslsmith_f_op_f32(func_2(-205f).c.a.x * _wgslsmith_f_op_vec4_f32(func_1(global0.x, vec3<u32>(u_input.d, 1u, 0u), vec3<bool>(false, true, true), Struct_1(vec2<f32>(var_0.x, var_0.x), vec4<i32>(-1i, -43945i, global0.x, -1i)))).x)).c.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_1(-2147483647i, ~u_input.b << (_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.b.x, ~u_input.d, 56600u), u_input.b) % vec3<u32>(32u)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(709f)))).c)).x;
    let var_2 = u_input.b;
    let var_3 = func_4(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(496f)), var_0.x))), 531f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), var_0.x))), func_2(var_0.x), true, true).x;
    let x = u_input.a;
    s_output = StorageBuffer(1210f);
}

