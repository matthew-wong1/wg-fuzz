struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    var var_0 = vec3<f32>(704f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1472f + 589f), -1900f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-546f, -1259f)) - -1026f))))));
    let var_1 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(55235u, 0u, 62252u), vec3<u32>(arg_2.d, u_input.b, arg_1.a)), _wgslsmith_add_u32(arg_1.a, 23714u))) ^ (vec3<u32>(abs(0u), 0u, arg_0) << (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.b), vec2<u32>(0u, arg_1.a)), 14386u, 92175u) % vec3<u32>(32u))), select(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(0u, arg_0, 45185u)), countOneBits(vec3<u32>(arg_0, arg_0, 0u))) << (~firstLeadingBit(vec3<u32>(arg_1.a, 8101u, 4639u)) % vec3<u32>(32u)), vec3<u32>(1u, arg_1.a, 1u), select(!(!vec3<bool>(arg_2.c, true, true)), !select(vec3<bool>(arg_2.b, arg_2.c, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(!vec3<bool>(false, arg_2.b, true), select(vec3<bool>(arg_2.c, arg_2.c, true), vec3<bool>(false, arg_2.b, arg_2.c), false), vec3<bool>(arg_2.c, arg_2.b, arg_2.c)))));
    let var_2 = var_0.x > _wgslsmith_f_op_f32(477f - _wgslsmith_f_op_f32(max(var_0.x, -2094f)));
    var var_3 = vec4<u32>(26267u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_0, arg_2.d), var_1, 0u | ~var_1, select(1u, countOneBits(u_input.b), !var_2)), vec4<u32>(~(~var_1), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(6624u, 0u, 7807u, 4294967295u), vec4<u32>(1u, u_input.a.x, u_input.a.x, arg_0)), 42341u)), arg_2.d);
    var_3 = countOneBits(max(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(66821u, 36863u), vec2<u32>(1u, var_3.x)), 33215u, abs(var_1), ~12408u), ~(~vec4<u32>(u_input.a.x, var_3.x, arg_0, arg_0))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(23142u, arg_1.a, var_1), var_3.yxz | var_3.xyx), ~arg_2.d, 14144u, _wgslsmith_clamp_u32(select(arg_2.d, arg_1.a, false), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, var_1), vec2<u32>(arg_1.a, 0u)), 95308u))));
    return -2147483647i;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_clamp_i32(7255i, func_3(u_input.b, Struct_3(_wgslsmith_mod_u32(51874u, 37868u)), Struct_1(~(-2147483647i), select(false, false, true), true, ~arg_0.a)), -(~select(2147483647i, 0i, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -1000f)))) - -591f), u_input.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-521f, 258f, -475f, 974f) * vec4<f32>(1214f, -410f, -1140f, 738f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-250f + -489f), 1899f, 260f, _wgslsmith_f_op_f32(-734f - -234f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -1000f, 454f, -1177f)))))), !all(vec2<bool>(true, true)));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(step(-1498f, var_0.b)), 47204u, var_0.d, var_0.e);
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.d.x)) - _wgslsmith_f_op_f32(round(var_0.d.x))))), _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(4294967295u, u_input.b, u_input.b)), ~abs(firstLeadingBit(vec3<u32>(4294967295u, arg_0.a, arg_0.a)))), var_0.d, var_0.e);
    let var_1 = -73831i;
    var var_2 = Struct_2(var_1, _wgslsmith_f_op_f32(abs(var_0.d.x)), ~countOneBits(_wgslsmith_sub_u32(~54708u, 1u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.d), vec4<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(526f - var_0.d.x)), var_0.d.x, var_0.d.x))), !(!any(!vec2<bool>(var_0.e, true))));
    return Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(21155i, abs(func_3(0u, arg_0, Struct_1(1i, var_0.e, true, var_0.c))), var_1), -abs(min(vec3<i32>(var_2.a, var_0.a, -17721i), vec3<i32>(1i, -17288i, var_0.a)))), !var_2.e, var_2.e, var_0.c);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = ~(abs(vec4<i32>(arg_2.a | arg_2.a, arg_2.a, _wgslsmith_div_i32(31992i, 66862i), ~0i)) ^ vec4<i32>(arg_2.a, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_2.a, arg_2.a, -2147483647i), ~1i), min(_wgslsmith_sub_i32(arg_2.a, arg_2.a), 59985i), arg_2.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1455f)) * _wgslsmith_f_op_f32(round(arg_3))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3 * -957f))))));
    let var_2 = ~(abs(func_2(Struct_3(arg_1.x)).d << (arg_0 % 32u)) | 0u);
    var var_3 = vec4<u32>(94811u, 1u, var_2 & abs(arg_0), 1u);
    let var_4 = 1i;
    return -1000f;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_2(arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(u_input.b, max(~u_input.a, ~vec2<u32>(u_input.a.x, 14973u)), func_2(Struct_3(67477u)), _wgslsmith_f_op_f32(round(-2042f)))), _wgslsmith_f_op_f32(func_4(func_2(Struct_3(u_input.a.x)).d, vec2<u32>(4294967295u, u_input.b), Struct_1(-arg_1.x, true, true, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))))))), ~(~(~(~1u))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -374f), 532f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(960f, 1588f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-139f, -1009f, false)))))), !all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), true)));
    let var_1 = var_0.d.ww;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.c, 4294967295u), var_0.c, _wgslsmith_div_u32(4294967295u, 1u)), u_input.a, func_2(Struct_3(8344u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1253f - 827f), _wgslsmith_f_op_f32(floor(arg_0)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-267f, _wgslsmith_f_op_f32(floor(var_1.x))) * var_0.d.x), _wgslsmith_f_op_f32(257f + _wgslsmith_f_op_f32(arg_0 * -1044f))));
    var var_3 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, -623i), ~(~arg_1.x)), firstTrailingBit(var_0.a), 0i);
    let var_4 = ~min(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(0u, 0u, var_0.c, u_input.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.b, u_input.b, var_0.c), select(vec4<u32>(46887u, var_0.c, u_input.b, 4294967295u), vec4<u32>(2223u, 15316u, 5569u, var_0.c), vec4<bool>(var_0.e, true, var_0.e, var_0.e)))), ~86537u);
    return max(0u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-2147483647i, false, !(!(false & any(vec3<bool>(true, true, true)))), 4294967295u);
    let var_1 = Struct_2(countOneBits(var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -986f), ~(func_1(_wgslsmith_f_op_f32(trunc(-778f)), vec3<i32>(var_0.a, 2147483647i, var_0.a) & vec3<i32>(var_0.a, var_0.a, var_0.a)) << (_wgslsmith_add_u32(~var_0.d, 1u) % 32u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-654f, 617f, -1843f, 1601f)))))))), var_0.c);
    let var_2 = -(~var_1.a) >> (var_1.c % 32u);
    var var_3 = _wgslsmith_mod_vec2_i32(select(vec2<i32>(24811i, ~_wgslsmith_clamp_i32(var_2, var_1.a, 2147483647i)), vec2<i32>(_wgslsmith_sub_i32(21560i, _wgslsmith_div_i32(var_0.a, 1i)), _wgslsmith_mod_i32(1i, var_0.a)), true && (_wgslsmith_f_op_f32(-var_1.d.x) != var_1.b)), vec2<i32>(reverseBits(-18297i), 0i));
    var var_4 = ~func_2(Struct_3(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))).d;
    var_3 = firstLeadingBit(-_wgslsmith_add_vec2_i32(select(firstTrailingBit(vec2<i32>(var_0.a, var_1.a)), -vec2<i32>(0i, var_1.a), var_2 != 16932i), -_wgslsmith_clamp_vec2_i32(vec2<i32>(36017i, var_0.a), vec2<i32>(var_1.a, var_3.x), vec2<i32>(var_1.a, -9163i))));
    var_3 = firstTrailingBit(-(~vec2<i32>(var_3.x >> (u_input.a.x % 32u), 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.c, 26800u), _wgslsmith_add_vec2_u32(u_input.a, u_input.a)) >> (u_input.a % vec2<u32>(32u))), max(~vec4<u32>(~u_input.a.x, _wgslsmith_mod_u32(68588u, 112123u), ~var_1.c, 4632u), ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(9159u, 6094u, var_1.c, u_input.b), vec4<u32>(var_0.d, 59834u, u_input.a.x, var_1.c)), vec4<u32>(u_input.a.x, 4294967295u, 16521u, var_1.c) << (vec4<u32>(0u, 4294967295u, var_1.c, 0u) % vec4<u32>(32u)), !var_1.e)));
}

