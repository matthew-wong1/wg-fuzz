struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(203f)))), _wgslsmith_f_op_f32(-1f), 1714f, _wgslsmith_f_op_f32(trunc(704f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-309f, 322f, 1009f, -482f), vec4<f32>(-1145f, -719f, 599f, 106f), true)), _wgslsmith_div_vec4_f32(vec4<f32>(-126f, 127f, -178f, -1796f), vec4<f32>(684f, -334f, 342f, 1828f)), 9500u >= u_input.d)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1071f, 1000f, -371f, 1000f), vec4<f32>(-1000f, -1152f, -216f, -654f)), vec4<f32>(-1000f, 583f, 428f, -1289f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-738f, -1762f, 340f, 975f), vec4<f32>(806f, 832f, -253f, -142f), vec4<bool>(true, false, false, true))))), true))));
    let var_1 = min(vec3<i32>(-(-u_input.a.x ^ (-6474i << (u_input.d % 32u))), _wgslsmith_dot_vec2_i32(u_input.b, (vec2<i32>(19715i, u_input.b.x) | u_input.b) << (vec2<u32>(71340u, 1u) % vec2<u32>(32u))), _wgslsmith_mult_i32(_wgslsmith_add_i32(-5888i, select(1i, 1i, false)), u_input.b.x)), u_input.a);
    var var_2 = any(vec3<bool>(true, true | !all(vec3<bool>(false, true, false)), false));
    let var_3 = Struct_2(max(_wgslsmith_add_i32(-15379i, i32(-1i) * -5893i), 1i), Struct_1(830u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-960f, var_0.x)), _wgslsmith_f_op_f32(step(-1699f, var_0.x))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-113f, var_0.x))))), -2147483647i, !(any(vec2<bool>(true, true)) == true), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, 78161u, 4294967295u, u_input.d) | vec4<u32>(6199u, 36184u, 63055u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(21353u, u_input.d, 63013u, 1u), abs(vec4<u32>(22373u, 40410u, 4294967295u, u_input.d))))));
    let var_4 = Struct_2(-_wgslsmith_mult_i32(var_1.x << (11568u % 32u), _wgslsmith_dot_vec3_i32(var_1, _wgslsmith_clamp_vec3_i32(var_1, vec3<i32>(-42123i, -2147483647i, 1i), u_input.a))), Struct_1(var_3.b.a, _wgslsmith_f_op_vec2_f32(-var_3.b.b), reverseBits(~var_3.b.c), var_3.b.d, _wgslsmith_div_vec4_u32(abs(var_3.b.e ^ var_3.b.e), var_3.b.e)));
    return !all(vec2<bool>(select(any(vec2<bool>(true, true)), true, true), _wgslsmith_f_op_f32(exp2(var_0.x)) >= 1880f));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = vec3<bool>(func_3() | arg_2.b.d, (~(~arg_2.a) <= ((-22307i << (arg_0 % 32u)) << (1u % 32u))) || any(select(vec2<bool>(false, false), select(vec2<bool>(arg_2.b.d, true), vec2<bool>(arg_2.b.d, arg_2.b.d), arg_2.b.d), arg_0 >= 15677u)), arg_2.b.d);
    let var_1 = (~(-abs(vec4<i32>(27731i, -1i, arg_2.b.c, 2147483647i))) | (min(~vec4<i32>(u_input.c, arg_2.a, arg_2.b.c, 25541i), vec4<i32>(34309i, 29697i, u_input.c, arg_2.b.c)) << ((select(vec4<u32>(0u, 4294967295u, 1u, u_input.d), vec4<u32>(arg_2.b.a, arg_2.b.e.x, arg_0, arg_2.b.e.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)) << ((arg_2.b.e & arg_2.b.e) % vec4<u32>(32u))) % vec4<u32>(32u)))) << ((countOneBits(firstTrailingBit(select(vec4<u32>(4294967295u, arg_2.b.a, arg_0, 26384u), arg_2.b.e, var_0.x))) << ((_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4158u, u_input.d, arg_2.b.e.x, arg_0), vec4<u32>(u_input.d, arg_2.b.e.x, 4294967295u, 122830u), vec4<u32>(4294967295u, arg_2.b.a, arg_2.b.a, 57455u)), min(arg_2.b.e, vec4<u32>(3473u, u_input.d, 18209u, arg_2.b.a))) | ~arg_2.b.e) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = -149f;
    var var_3 = Struct_2(1i, arg_2.b);
    let var_4 = vec4<bool>(var_3.b.d, any(var_0.yx), !(!((arg_0 > arg_0) & true)), !all(select(var_0.zy, var_0.xx, select(vec2<bool>(var_3.b.d, false), var_0.xx, var_0.yz))));
    return -2089f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec3<f32>) -> f32 {
    let var_0 = select(!vec3<bool>(true, true, select(true, true, true)), select(vec3<bool>(true, true, arg_1.d), !(!(!vec3<bool>(arg_0.d, arg_0.d, true))), !select(!vec3<bool>(arg_0.d, arg_1.d, arg_0.d), vec3<bool>(arg_1.d, true, true), -1i == arg_0.c)), true);
    let var_1 = select(true, arg_0.d, !any(!(!vec3<bool>(false, arg_1.d, true))));
    let var_2 = !(!var_0.x | true);
    var var_3 = Struct_2(arg_1.c, arg_1);
    let var_4 = arg_1.d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1321f))), _wgslsmith_f_op_f32(-123f + arg_0.b.x))) - _wgslsmith_f_op_f32(-1111f + _wgslsmith_f_op_f32(func_2(u_input.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, var_3.b.b.x) + _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)), Struct_2(arg_1.c, arg_0)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1.b.x;
    var var_1 = 1313f;
    let var_2 = vec2<u32>(arg_0, _wgslsmith_clamp_u32(arg_1.e.x, 1u, ~_wgslsmith_add_u32(abs(u_input.d), arg_0 ^ u_input.d)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(arg_1, arg_1, arg_1.b.x, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-1698f - arg_1.b.x), _wgslsmith_f_op_f32(func_2(2247u, arg_1.b.x, Struct_2(arg_1.c, arg_1))), var_0))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0)) + _wgslsmith_f_op_f32(func_2(reverseBits(27187u), _wgslsmith_f_op_f32(arg_1.b.x + 1254f), Struct_2(arg_1.c, arg_1)))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(880f, 949f))), _wgslsmith_f_op_f32(ceil(469f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.b.x, -170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(307f, var_0))), _wgslsmith_f_op_f32(floor(-657f))))));
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f) * _wgslsmith_f_op_f32(func_4(arg_1.b, Struct_1(4294967295u, arg_1.b.b, -2147483647i, arg_1.b.d, vec4<u32>(0u, 1u, u_input.d, 4294967295u)), arg_0, vec3<f32>(-704f, -219f, 826f)))) + _wgslsmith_f_op_f32(f32(-1f) * -422f)) - _wgslsmith_f_op_f32(round(1291f))) - -778f);
    var_1 = _wgslsmith_f_op_f32(floor(424f));
    var var_2 = abs(_wgslsmith_mult_i32(-arg_1.a, 1i));
    var var_3 = func_1(arg_1.b.e.x, Struct_1(~(~_wgslsmith_div_u32(40831u, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.b.b)) - arg_1.b.b), reverseBits(~(~11940i)), arg_0 <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -759f), abs(vec4<u32>(97802u, u_input.d, ~17765u, ~16609u))));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_mult_i32(-1i, 2147483647i), func_5(533f, Struct_2(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, 1i))), func_1(1u, Struct_1(4294967295u, vec2<f32>(179f, 799f), 0i, true, vec4<u32>(4294967295u, u_input.d, 51878u, u_input.d))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, var_0.b.b.x, -1852f, var_0.b.b.x))))));
    var var_2 = Struct_2(50582i, var_0.b);
    var var_3 = firstLeadingBit(vec3<u32>(19536u, var_0.b.a, _wgslsmith_add_u32(~34919u, 0u)) | ~vec3<u32>(u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.d, 1u)), ~18552u));
    var var_4 = Struct_1(abs(abs(~u_input.d) << (max(1u, ~var_2.b.e.x) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.b - _wgslsmith_f_op_vec2_f32(var_0.b.b + _wgslsmith_div_vec2_f32(var_0.b.b, vec2<f32>(-1000f, var_2.b.b.x))))), firstLeadingBit(_wgslsmith_mult_i32(var_2.b.c, firstTrailingBit(var_2.a))), !var_2.b.d, firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~var_0.b.e, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 26014u, var_2.b.a, u_input.d), vec4<u32>(2263u, var_2.b.a, 0u, 43399u))), ~vec4<u32>(0u, var_0.b.e.x, 4294967295u, var_0.b.a))));
    var var_5 = Struct_2(func_1(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, var_4.e.x), 4294967295u), var_0.b).c, Struct_1(1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.b * var_4.b))), 0i, true, _wgslsmith_add_vec4_u32(~vec4<u32>(71536u, 4294967295u, 28172u, 30592u), vec4<u32>(~var_3.x, 1u, ~var_3.x, u_input.d << (4294967295u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.a, -vec4<i32>(var_5.a, u_input.c, _wgslsmith_mult_i32(~46904i, max(1i, var_5.a)), var_5.a), 1586f);
}

