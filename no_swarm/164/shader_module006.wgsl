struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global0 = ~16313u;
    var var_0 = 25150i;
    var_0 = ~(-(~firstTrailingBit(max(-25147i, u_input.c))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(582f - _wgslsmith_f_op_f32(max(1157f, -647f))), 534f))));
    let var_2 = Struct_1(~countOneBits(4294967295u), false, _wgslsmith_dot_vec4_u32(countOneBits(~(~vec4<u32>(31175u, u_input.b.x, 19480u, arg_0.c))), firstLeadingBit(~vec4<u32>(u_input.b.x, u_input.b.x, 58464u, 0u))), u_input.a);
    return !(!vec2<bool>(arg_0.b, any(vec2<bool>(var_2.b, arg_0.b)) | false));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<f32>, arg_3: i32) -> u32 {
    let var_0 = vec3<i32>(u_input.c, 59598i, arg_1);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(433f, -1138f, arg_2.x, 563f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1903f, -119f, arg_2.x, arg_2.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(391f, -507f, -375f, 1000f) + vec4<f32>(381f, arg_2.x, 263f, arg_2.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.x, -249f, -2179f, arg_2.x))) * vec4<f32>(_wgslsmith_f_op_f32(1875f + -708f), _wgslsmith_div_f32(arg_2.x, 481f), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x * arg_2.x)))));
    global0 = 29884u;
    let var_2 = Struct_1(~(~u_input.b.x), 435f >= var_1.x, firstLeadingBit(~u_input.a.x) & _wgslsmith_mod_u32(u_input.a.x, 16112u), u_input.b);
    global0 = ~max(max(1u, ~abs(12548u)), u_input.a.x);
    return _wgslsmith_dot_vec2_u32(select(var_2.d.yx, _wgslsmith_sub_vec2_u32(max(u_input.b.xz, vec2<u32>(u_input.b.x, var_2.c)), var_2.d.yx), arg_0.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.x, var_2.a, 5717u, 0u), vec4<u32>(var_2.d.x, 0u, u_input.a.x, 144550u)), ~0u), u_input.a.zz, abs(var_2.d.zy))) | var_2.d.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> vec2<bool> {
    var var_0 = reverseBits(select(func_4(func_3(Struct_1(arg_1, false, u_input.b.x, u_input.a)), -38901i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-590f, 1494f, 249f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(670f, -629f, 351f))), u_input.d.x), ~arg_1, !(0i != (47303i << (arg_1 % 32u)))));
    let var_1 = ~max(min(~(~vec4<u32>(14818u, arg_1, 23525u, 54832u)), ~vec4<u32>(arg_1, arg_1, arg_1, 4294967295u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(68698u, arg_1, u_input.a.x, 1u) >> (vec4<u32>(91691u, arg_1, arg_1, 0u) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, 95563u, 4294967295u, 4294967295u)));
    let var_2 = firstLeadingBit(firstLeadingBit(~1i));
    var var_3 = Struct_1((arg_1 >> (func_4(!arg_0.yz, u_input.d.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1382f, 1807f, -129f))), 45964i) % 32u)) | _wgslsmith_sub_u32(arg_1, _wgslsmith_add_u32(abs(u_input.a.x), u_input.b.x)), false, _wgslsmith_mult_u32(_wgslsmith_div_u32(~arg_1 | u_input.a.x, ~var_1.x), 54455u), select(vec3<u32>(36200u, u_input.b.x & 24532u, abs(arg_1)) & (vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u) << (~u_input.b % vec3<u32>(32u))), vec3<u32>(~abs(62659u), 1u, var_1.x << (var_1.x % 32u)), vec3<bool>(u_input.d.x == var_2, true, arg_0.x)));
    let var_4 = vec3<u32>(u_input.a.x, ~7829u, 0u);
    return vec2<bool>(any(vec4<bool>(~var_4.x == (34582u & var_1.x), var_4.x > u_input.a.x, true, var_3.b)), var_3.b);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_i32(u_input.d, u_input.d);
    let var_1 = Struct_2(Struct_1(~1u, true, func_4(vec2<bool>(true, true), -2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, 1570f, 578f)), _wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(1i, u_input.c))), reverseBits(vec3<u32>(_wgslsmith_sub_u32(8886u, arg_1.a.c), reverseBits(u_input.a.x), _wgslsmith_sub_u32(arg_1.a.a, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(301f * arg_1.b) - -1509f))), func_2(select(vec4<bool>(arg_1.b != 887f, 0i <= var_0.x, arg_0, false), select(arg_1.e, vec4<bool>(arg_1.e.x, arg_1.c.x, true, true), vec4<bool>(true, arg_1.a.b, false, false)), vec4<bool>(false, any(arg_1.e), all(vec3<bool>(arg_0, false, arg_1.a.b)), true)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(arg_1.a.c, u_input.b.x)), _wgslsmith_mult_u32(~arg_1.d.x, _wgslsmith_mod_u32(u_input.b.x, 0u)))), ~vec2<u32>(_wgslsmith_add_u32(4294967295u, firstLeadingBit(u_input.b.x)), _wgslsmith_clamp_u32(110721u, 9839u, u_input.b.x) ^ abs(arg_1.d.x)), arg_1.e);
    var var_2 = var_0.x;
    let var_3 = arg_1;
    let var_4 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(firstLeadingBit(reverseBits(-2147483647i)), u_input.d.x), firstTrailingBit(-9722i)), u_input.c);
    return var_3.a;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(func_5(any(vec2<bool>(true, true)), Struct_2(Struct_1(4294967295u, true, u_input.b.x, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4159u, 1u), vec3<u32>(u_input.a.x, 0u, 5451u))), 260f, select(vec2<bool>(true, true), func_2(vec4<bool>(true, true, true, true), u_input.b.x), true), ~u_input.a.yx, vec4<bool>(any(vec2<bool>(false, false)), true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1472f))) * _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1450f)) + _wgslsmith_f_op_f32(-429f * 905f)))), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -981f))), func_5(func_3(func_5(true, Struct_2(Struct_1(1u, false, u_input.b.x, u_input.a), 519f, vec2<bool>(false, true), vec2<u32>(1u, 32564u), vec4<bool>(false, false, true, false)))).x, Struct_2(Struct_1(u_input.b.x, false, 0u, vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x)), _wgslsmith_f_op_f32(1805f - 508f), select(vec2<bool>(false, false), vec2<bool>(true, true), true), u_input.b.zz, vec4<bool>(true, false, true, false))).b), firstLeadingBit(reverseBits(u_input.b.xx)), vec4<bool>(false || all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true)), func_2(vec4<bool>(true, true, true, true), select(abs(u_input.a.x), ~1u, 70507u < u_input.a.x)).x, true, all(vec2<bool>(false, func_2(vec4<bool>(false, true, true, true), u_input.b.x).x))));
    var var_1 = var_0.e;
    global0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.d.x, var_0.a.d.x) ^ _wgslsmith_add_u32(var_0.d.x, ~(~var_0.d.x)), ~(reverseBits(~var_0.a.c) << (_wgslsmith_mod_u32(var_0.a.d.x << (var_0.a.c % 32u), 1u) % 32u)));
    let var_2 = var_0.b;
    global0 = _wgslsmith_div_u32(~max(~(~27088u), u_input.b.x), func_4(var_1.zz, u_input.d.x, vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b, _wgslsmith_f_op_f32(-var_0.b)), 31049i) & (var_0.d.x | ~_wgslsmith_div_u32(var_0.a.d.x, 1u)));
    return Struct_1(94646u, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.c, -44091i, u_input.d.x) & select(vec4<i32>(u_input.d.x, u_input.c, u_input.c, 0i), vec4<i32>(0i, u_input.d.x, u_input.c, u_input.d.x), vec4<bool>(true, var_0.e.x, false, var_0.c.x)), min(vec4<i32>(u_input.d.x, 9026i, 53772i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, u_input.d.x)) & vec4<i32>(u_input.c, -12973i, u_input.c, 417i)) > (i32(-1i) * -_wgslsmith_clamp_i32(44907i, 1i, u_input.d.x)), _wgslsmith_add_u32(34297u, 23207u), vec3<u32>(64120u | firstLeadingBit(max(0u, var_0.d.x)), var_0.d.x, ~u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 8583u;
    let var_0 = func_1();
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, 4294967295u, 31221u << (~reverseBits(var_0.d.x) % 32u)), vec3<u32>(u_input.b.x, max(u_input.a.x, 1u) | ~0u, 0u));
    global0 = ~var_0.d.x;
    let var_1 = Struct_2(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(950f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1375f, 604f, var_0.b)) + _wgslsmith_f_op_f32(404f * 1857f))))), !vec2<bool>(false, !all(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b))), var_0.d.xy, select(select(vec4<bool>(var_0.b, false, false, true), vec4<bool>(func_3(Struct_1(u_input.a.x, false, var_0.c, u_input.a)).x, !var_0.b, all(vec4<bool>(true, false, false, false)), var_0.b), !select(vec4<bool>(var_0.b, true, true, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), true)), select(select(vec4<bool>(var_0.b, var_0.b, false, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(false, var_0.b, var_0.b, false)), select(vec4<bool>(var_0.b, true, var_0.b, false), !vec4<bool>(var_0.b, false, var_0.b, var_0.b), u_input.c > 3050i), !select(var_0.b, var_0.b, var_0.b)), !(!select(vec4<bool>(false, false, false, var_0.b), vec4<bool>(var_0.b, true, false, true), var_0.b))));
    global0 = u_input.a.x;
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-(~(vec3<i32>(u_input.c, u_input.d.x, 1i) & vec3<i32>(-7662i, u_input.c, u_input.c))) ^ -((vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i) & vec3<i32>(23906i, 41507i, u_input.d.x)) >> (u_input.a % vec3<u32>(32u))), u_input.c);
}

