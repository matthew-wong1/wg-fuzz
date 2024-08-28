struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec3<i32> {
    let var_0 = Struct_2(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-694f, arg_2.x))), _wgslsmith_f_op_f32(max(-1241f, _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x)))))), max(vec3<i32>(_wgslsmith_div_i32(1i, 38367i ^ u_input.b), abs(0i) & u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(6357i, u_input.b, 1i), ~vec3<i32>(-28065i, 1i, -10992i))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(-7399i, 16264i, u_input.b), vec3<i32>(-15826i, arg_1.x, 1i)), abs(reverseBits(vec3<i32>(-1i, u_input.b, -10471i))))), _wgslsmith_f_op_f32(-2036f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + 1117f)), arg_2.x))), arg_0.b.x);
    let var_1 = max(2147483647i, 6214i);
    let var_2 = vec3<bool>(true, true, true);
    let var_3 = firstLeadingBit(vec2<i32>(47176i, ~2147483647i));
    let var_4 = max(vec2<i32>(-1i) * -vec2<i32>(-21483i, abs(-2147483647i)), -vec2<i32>(u_input.b ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, var_3.x), var_3), _wgslsmith_mult_i32(-1i, i32(-1i) * -2147483647i)));
    return -(reverseBits(_wgslsmith_add_vec3_i32(var_0.c, var_0.c) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(4716u, 21539u, 39830u)) % vec3<u32>(32u))) << (vec3<u32>(u_input.a, abs(_wgslsmith_clamp_u32(u_input.a, 4294967295u, 8311u)), reverseBits(4294967295u)) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_1(19139u, _wgslsmith_mult_vec3_i32(-firstLeadingBit(-vec3<i32>(-1i, u_input.c, -42118i)), ~(-func_3(Struct_3(vec4<u32>(u_input.a, 1u, 4294967295u, 4294967295u), vec3<f32>(1161f, 362f, -965f)), vec2<i32>(34989i, 13904i), vec2<f32>(-2229f, 2051f)))), select(u_input.b, ~(_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c) & ~u_input.b), !select(arg_0.x, arg_0.x, true)));
    var var_1 = !vec3<bool>(false, true, arg_0.x);
    var var_2 = Struct_1(~u_input.a, var_0.b, -(~2147483647i));
    var var_3 = abs(u_input.d);
    let var_4 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-192f, 697f))), 1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f)) * _wgslsmith_f_op_f32(f32(-1f) * -700f)))), var_2.b, 885f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -404f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1183f)) + _wgslsmith_f_op_f32(round(396f))), 1000f))));
    return Struct_3(reverseBits(vec4<u32>(0u, _wgslsmith_mult_u32(var_2.a, _wgslsmith_add_u32(var_2.a, 0u)), reverseBits(~var_0.a), var_2.a)), vec3<f32>(_wgslsmith_f_op_f32(var_4.b - var_4.d), var_4.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a - var_4.d) * _wgslsmith_div_f32(-405f, -719f)) - var_4.d)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = min(~arg_2.c, vec3<i32>(~arg_0, -(~arg_0), _wgslsmith_mod_i32(u_input.b & (i32(-1i) * -1i), max(_wgslsmith_clamp_i32(-18842i, 0i, arg_2.c.x), -71960i))));
    var var_1 = func_2(select(!vec3<bool>(true, any(vec3<bool>(false, false, false)), true), !vec3<bool>(true, all(vec3<bool>(true, true, true)), true), false));
    var_1 = arg_1;
    var_1 = func_2(select(vec3<bool>(!(arg_1.a.x >= var_1.a.x), select(true, false, true) & true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), vec3<bool>(true, false, arg_0 == ~u_input.b)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(306f, -596f, var_1.b.x, -602f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.a, arg_2.a, -502f, -1642f))))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1412f), arg_2.b, _wgslsmith_f_op_f32(229f * -632f), _wgslsmith_f_op_f32(-370f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, arg_2.b) * arg_2.b))));
    return select(!(!vec3<bool>(false, true, all(vec2<bool>(true, false)))), vec3<bool>(true, true, true), 16205u >= ~var_1.a.x);
}

fn func_1() -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(1777f * -2634f), -947f);
    let var_1 = u_input.b;
    var var_2 = select(select(func_4(firstTrailingBit(var_1), func_2(vec3<bool>(true, true, false)), Struct_2(var_0.x, -991f, vec3<i32>(0i, var_1, 20038i), _wgslsmith_f_op_f32(round(-1516f)), var_0.x)), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), true), !func_4(var_1, func_2(vec3<bool>(true, true, true)), Struct_2(-1714f, 724f, vec3<i32>(var_1, 1i, 1i), -1561f, -1052f)).x), func_4(~32970i, func_2(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, -1i, 52407i), vec3<i32>(u_input.c, -1i, u_input.c)), func_2(vec3<bool>(false, true, false)), Struct_2(813f, -1271f, vec3<i32>(1i, u_input.b, u_input.b), 919f, var_0.x))), Struct_2(-1220f, var_0.x, reverseBits(vec3<i32>(32885i, 99573i, 2147483647i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-271f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(398f * -345f) - _wgslsmith_f_op_f32(f32(-1f) * -956f)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec3<bool>(false, false, false))), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_4(var_1, Struct_3(vec4<u32>(u_input.a, 14653u, 41524u, u_input.d), vec3<f32>(259f, 2010f, var_0.x)), Struct_2(869f, -885f, vec3<i32>(u_input.b, var_1, 12018i), -1217f, -1255f))), !func_4(var_1, Struct_3(vec4<u32>(u_input.d, 4294967295u, u_input.a, 4294967295u), vec3<f32>(var_0.x, -226f, 767f)), Struct_2(1517f, var_0.x, vec3<i32>(22077i, 49170i, var_1), 791f, -966f)), select(true, false, false) || false), !vec3<bool>(all(vec3<bool>(false, false, false)), true, func_4(var_1, Struct_3(vec4<u32>(u_input.a, 117483u, 23751u, 4294967295u), vec3<f32>(var_0.x, var_0.x, var_0.x)), Struct_2(var_0.x, -875f, vec3<i32>(var_1, 1i, u_input.c), 669f, var_0.x)).x)));
    var var_3 = vec4<f32>(-1315f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1712f + var_0.x), -980f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -831f))))));
    let var_4 = 5537u;
    return func_2(vec3<bool>(false, var_3.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), !(all(vec2<bool>(false, var_2.x)) && select(var_2.x, var_2.x, var_2.x))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool) -> vec4<u32> {
    var var_0 = Struct_1(~arg_1.a.x, ~(~(select(vec3<i32>(-21945i, 24069i, 2147483647i), vec3<i32>(-59972i, 0i, u_input.c), vec3<bool>(arg_2, arg_2, false)) ^ ~vec3<i32>(25417i, 2147483647i, 0i))), -max(-abs(-5285i), firstTrailingBit(2147483647i)));
    var var_1 = vec3<i32>(-(-var_0.c | firstLeadingBit(var_0.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-87516i, -1i, countOneBits(arg_0.x), var_0.c), ~vec4<i32>(var_0.b.x, -13484i, var_0.c, arg_0.x)), arg_0.x) ^ -(~firstLeadingBit(vec3<i32>(u_input.b, 49813i, u_input.b)));
    var_0 = Struct_1(~1u, var_0.b, -40143i);
    var_1 = ~max((vec3<i32>(-1i, 13294i, arg_0.x) & var_0.b) & reverseBits(_wgslsmith_clamp_vec3_i32(var_0.b, vec3<i32>(26016i, -71848i, 7170i), var_0.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, arg_0.x, 15982i), vec3<i32>(2147483647i, var_0.c, var_0.c)) | -var_0.b);
    var var_2 = u_input.a;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(48502u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.d) | vec3<u32>(u_input.d, u_input.a, u_input.d), vec3<u32>(22845u, u_input.d, 0u) ^ vec3<u32>(3427u, 4294967295u, 3401u)) >> (u_input.a % 32u), ~firstTrailingBit(~(~u_input.d)), u_input.d << (~(~4294967295u) % 32u));
    var_0 = _wgslsmith_div_vec4_u32(max(func_5(-(vec2<i32>(2147483647i, -1i) ^ vec2<i32>(u_input.b, u_input.c)), func_1(), !all(vec4<bool>(false, false, true, true))), ~_wgslsmith_clamp_vec4_u32(func_1().a, vec4<u32>(var_0.x, 22946u, 1u, var_0.x) ^ vec4<u32>(57963u, u_input.d, 63832u, var_0.x), vec4<u32>(u_input.d, u_input.d, 1u, var_0.x))), select(~(vec4<u32>(46037u, 45369u, u_input.d, 4294967295u) & vec4<u32>(0u, 0u, 71911u, var_0.x)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(func_1().a, ~vec4<u32>(u_input.a, var_0.x, 1u, u_input.a)), ~countOneBits(var_0.x), ~var_0.x), true));
    var var_1 = 1247f;
    let var_2 = func_2(vec3<bool>(true, true, true));
    var var_3 = Struct_2(363f, _wgslsmith_f_op_f32(-var_2.b.x), vec3<i32>(u_input.b, _wgslsmith_mult_i32(reverseBits(~u_input.c), _wgslsmith_dot_vec2_i32(-vec2<i32>(-4799i, u_input.b), vec2<i32>(u_input.c, u_input.b) | vec2<i32>(u_input.b, -2147483647i))), firstTrailingBit(_wgslsmith_mod_i32(reverseBits(u_input.c), -21081i))), -702f, -1350f);
    var_0 = ~_wgslsmith_add_vec4_u32(func_5(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, var_3.c.x), var_3.c.zz), vec2<i32>(4578i, -50280i)), Struct_3(select(vec4<u32>(1u, var_2.a.x, u_input.d, 1u), var_2.a, vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, 996f, var_2.b.x) - vec3<f32>(var_2.b.x, -1503f, 601f))), true), _wgslsmith_add_vec4_u32(var_2.a, vec4<u32>(~u_input.d, countOneBits(var_0.x), 88883u, ~1u)));
    let var_4 = var_2.a;
    var_3 = Struct_2(func_2(!func_4(_wgslsmith_div_i32(2147483647i, u_input.c), func_2(vec3<bool>(false, false, false)), Struct_2(var_2.b.x, -277f, vec3<i32>(-1i, -1i, u_input.c), 870f, -435f))).b.x, _wgslsmith_f_op_f32(-var_3.e), var_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-423f - var_2.b.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(func_2(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)).b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(min(-vec4<i32>(-var_3.c.x, _wgslsmith_div_i32(2147483647i, u_input.b), ~(-11384i), u_input.c | var_3.c.x), -reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_3.c.x, var_3.c.x, var_3.c.x), vec4<i32>(-22204i, 81213i, 0i, var_3.c.x)))), var_4.x);
}

