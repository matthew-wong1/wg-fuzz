struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-490f, 101f, true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f + 1646f) - _wgslsmith_f_op_f32(-801f - -1508f))), _wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f + -548f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(630f)), _wgslsmith_f_op_f32(select(-744f, _wgslsmith_f_op_f32(max(-474f, 596f)), true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1603f, 1000f, -513f, 235f) + vec4<f32>(378f, -2206f, 603f, 690f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(973f, -1000f, -106f, -697f) + vec4<f32>(-1868f, -187f, 388f, 324f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(744f + var_0.x));
    var var_2 = !select(vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), true), vec2<bool>(false, true), vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), false))));
    var var_3 = firstTrailingBit(_wgslsmith_mod_u32(~(~_wgslsmith_div_u32(u_input.a.x, 0u)), 26243u));
    var_2 = vec2<bool>(var_2.x && (all(!vec4<bool>(var_2.x, false, var_2.x, var_2.x)) | ((var_0.x != var_1) & (u_input.b.x <= arg_0))), true);
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -393f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(var_1 * -1387f)))), var_0.x)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x + -517f), -937f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(758f - -954f) * 618f), arg_2) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(floor(arg_1.a)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a * arg_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a + vec4<f32>(var_0.x, 849f, -499f, arg_2)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 - -220f))), arg_1.a.x, var_0.x, 1000f)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_2 + -758f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2, arg_2), -1948f, any(vec3<bool>(arg_0, false, arg_1.c))))), _wgslsmith_f_op_f32(-127f * 1013f)));
    let var_2 = arg_1.c;
    let var_3 = _wgslsmith_f_op_vec2_f32(func_3(i32(-1i) * -(2147483647i >> (_wgslsmith_add_u32(u_input.a.x, 46291u) % 32u)), ~max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 92234u)), min(vec4<u32>(136037u, u_input.a.x, u_input.a.x, 84495u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u))) & (~abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)) >> (_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, 52191u, 45212u, 0u)), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) & vec4<u32>(25386u, 1u, u_input.a.x, 0u)) % vec4<u32>(32u))), _wgslsmith_div_u32(~(~u_input.a.x), 0u) << (10934u % 32u)));
    return ~(select(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 11667u, u_input.a.x)), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 57381u)), true) & vec4<u32>(1u, u_input.a.x, countOneBits(4294967295u), firstLeadingBit(4294967295u))) & _wgslsmith_sub_vec4_u32(~vec4<u32>(3400u, 0u, 1u, u_input.a.x), ~vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec4_u32(~reverseBits(func_2(arg_0.x, Struct_1(vec4<f32>(1000f, 556f, -991f, -1507f), u_input.b.zxw, arg_0.x, vec4<i32>(0i, 11200i, u_input.b.x, arg_1)), 717f) >> (countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 10814u, 4294967295u)) % vec4<u32>(32u))), vec4<u32>(~u_input.a.x, func_2(arg_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-199f, -171f, 2289f, -266f))), _wgslsmith_sub_vec3_i32(u_input.b.zxx, vec3<i32>(arg_1, 2147483647i, -2147483647i)), false, vec4<i32>(2147483647i, u_input.b.x, arg_1, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2188f, 1404f))).x, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, ~39807u), u_input.a), firstTrailingBit(min(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 1u << (u_input.a.x % 32u)))), firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~u_input.a.x, ~u_input.a.x << (4294967295u % 32u), abs(~32028u))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1371f, -1449f, 436f, -2819f), vec4<f32>(-690f, -561f, 443f, 993f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1173f, 1635f, -1000f, -1578f), vec4<f32>(-171f, 1521f, 1000f, 154f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(325f, -1805f, -1000f, 1051f)))) - vec4<f32>(-240f, -320f, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -488f)))), -vec3<i32>(countOneBits(arg_1), ~_wgslsmith_mult_i32(0i, u_input.b.x), -(i32(-1i) * -52135i)), any(arg_0), -_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b.x, 1i, arg_1, -1i), ~(~vec4<i32>(u_input.b.x, u_input.b.x, 28300i, u_input.b.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1353f)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -364f)) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-3144f)), 1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), -576f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(112f))), var_1.a.x)), vec3<i32>(u_input.b.x, arg_1, reverseBits(-countOneBits(var_1.d.x))), all(!vec4<bool>(!var_1.c, !var_1.c, any(vec4<bool>(var_1.c, true, false, arg_0.x)), true)), vec4<i32>(var_1.b.x & -(~var_1.d.x), -2147483647i, _wgslsmith_add_i32(max(_wgslsmith_add_i32(u_input.b.x, 12991i), -u_input.b.x), var_1.b.x), 8429i));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<f32>(1033f, 775f, -1000f, -1311f))))), firstLeadingBit(vec3<i32>(-1i) * -countOneBits(vec3<i32>(arg_1, 2147483647i, 1i))), var_1.c, _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(var_1.b.x, var_2.b.x, var_1.b.x, arg_1)), abs(vec4<i32>(-36366i, var_2.b.x, 0i, arg_1)), vec4<i32>(arg_1, var_1.b.x, -1i, 0i)) >> (~(~vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, var_1.d.x, 58082i, u_input.b.x), u_input.b)));
    let var_4 = !(-853f >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(2049f)), _wgslsmith_f_op_f32(f32(-1f) * -364f))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-752f + 1321f), -537f))), 390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-439f, var_2.a.x)) * _wgslsmith_f_op_f32(-var_3.a.x))), reverseBits(~(-vec3<i32>(var_3.d.x, var_2.d.x, u_input.b.x))) >> (select(vec3<u32>(~6399u, firstLeadingBit(0u), 1u), var_0.zxz, true && (false != var_1.c)) % vec3<u32>(32u)), true, var_1.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_1.a.x)))) + arg_1.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(-arg_0.a.x)))), func_1(vec2<bool>(!arg_0.c, true), countOneBits(_wgslsmith_dot_vec3_i32(arg_1.b, arg_1.b))).a.x), _wgslsmith_clamp_vec3_i32(arg_1.b, -((arg_1.b | vec3<i32>(arg_2, -44888i, 0i)) & ~vec3<i32>(arg_2, -8861i, arg_0.d.x)), vec3<i32>(~(u_input.b.x << (8360u % 32u)), u_input.b.x, arg_1.d.x)), arg_0.c, -firstTrailingBit(-func_1(vec2<bool>(false, true), u_input.b.x).d));
    let var_1 = arg_1;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(ceil(1679f))), arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -881f), _wgslsmith_f_op_f32(-1452f * 381f)))), abs(~firstTrailingBit(countOneBits(u_input.b.yxw))), false, var_0.d);
    var var_2 = vec2<bool>(true, arg_1.c);
    var var_3 = abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, u_input.a.x)));
    return !(!(arg_1.d.x != -23700i));
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = func_1(!select(vec2<bool>(true, true), select(!arg_2.xx, !vec2<bool>(arg_1, true), select(vec2<bool>(true, arg_2.x), vec2<bool>(false, true), vec2<bool>(arg_2.x, true))), select(vec2<bool>(arg_2.x, arg_1), !arg_2.yy, arg_2.x)), u_input.b.x | func_1(vec2<bool>(85345u >= var_0.x, true), -9446i).b.x);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(298f, arg_0.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1240f, _wgslsmith_f_op_f32(select(arg_0.x, 471f, true)))) * _wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)))) * _wgslsmith_div_vec2_f32(var_1.a.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-531f, var_2.x)))))));
    var_2 = arg_0;
    return func_1(select(select(arg_2.xz, vec2<bool>(any(vec3<bool>(arg_1, arg_2.x, arg_1)), var_1.c), arg_2.x), arg_2.zy, vec2<bool>(var_1.c, true)), var_1.d.x);
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x), (41480u == (reverseBits(68865u) & u_input.a.x)) && func_4(Struct_1(vec4<f32>(arg_0.a.x, -1974f, -2071f, arg_0.a.x), -u_input.b.yxz, 10847u > u_input.a.x, ~vec4<i32>(arg_0.d.x, u_input.b.x, arg_0.d.x, arg_1)), arg_0, arg_1), vec3<bool>(arg_0.c, ~max(u_input.a.x, u_input.a.x) >= ~func_2(false, arg_0, 1707f).x, false && arg_0.c));
    let var_1 = -1000f;
    var_0 = func_5(vec2<f32>(func_5(_wgslsmith_f_op_vec2_f32(-arg_0.a.ww), true, !(!vec3<bool>(arg_0.c, var_0.c, false))).a.x, -898f), false, vec3<bool>(false, all(select(!vec3<bool>(false, true, var_0.c), vec3<bool>(arg_0.c, arg_0.c, arg_0.c), !vec3<bool>(var_0.c, var_0.c, false))), any(select(!vec4<bool>(false, true, var_0.c, false), select(vec4<bool>(arg_0.c, false, arg_0.c, var_0.c), vec4<bool>(true, var_0.c, arg_0.c, arg_0.c), vec4<bool>(false, false, arg_0.c, true)), !vec4<bool>(false, true, arg_0.c, arg_0.c)))));
    var_0 = func_1(vec2<bool>(arg_0.d.x < 1432i, true), -2147483647i);
    var var_2 = !arg_0.c;
    return Struct_1(var_0.a, arg_0.d.wzw, select(!var_0.c, var_0.c, arg_0.c), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, func_5(func_1(vec2<bool>(arg_0.c, arg_0.c), -2147483647i).a.zx, var_0.c, !vec3<bool>(false, arg_0.c, true)).d.x, ~19843i, -(arg_0.b.x | arg_0.b.x)), arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(max(firstLeadingBit(-2147483647i), min(23672i, 21842i)), u_input.b.x), u_input.b.zz), u_input.b.x);
    var var_1 = func_6(func_5(vec2<f32>(-776f, _wgslsmith_div_f32(-172f, _wgslsmith_f_op_f32(f32(-1f) * -468f))), 0u >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 34984u) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.a.x, 14614u)), vec3<bool>(!any(vec4<bool>(false, true, false, true)), var_0 == -69032i, func_4(Struct_1(vec4<f32>(-539f, 338f, -559f, 452f), vec3<i32>(1i, var_0, var_0), false, u_input.b), func_1(vec2<bool>(true, true), u_input.b.x), abs(2147483647i)))), 28266i);
    let var_2 = var_1.a.x;
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1276f), -1620f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-282f, var_1.a.x, false)))))));
    var var_4 = func_5(_wgslsmith_f_op_vec2_f32(-func_1(select(select(vec2<bool>(false, true), vec2<bool>(var_1.c, false), vec2<bool>(var_1.c, true)), vec2<bool>(true, var_1.c), select(true, var_1.c, true)), u_input.b.x).a.xw), false, select(!(!(!vec3<bool>(var_1.c, true, true))), vec3<bool>(true, true, true), false));
    var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_1.a)))) + func_1(select(select(vec2<bool>(true, var_1.c), vec2<bool>(true, var_1.c), true), !vec2<bool>(var_4.c, false), vec2<bool>(true, var_1.c)), firstLeadingBit(2147483647i)).a), u_input.b.zzz, any(!vec4<bool>(func_5(var_1.a.xy, var_1.c, vec3<bool>(false, var_4.c, true)).c, var_4.c, all(vec4<bool>(true, var_1.c, true, var_4.c)), -2147483647i > u_input.b.x)), -_wgslsmith_div_vec4_i32(u_input.b, func_1(select(vec2<bool>(true, var_4.c), vec2<bool>(false, true), true), var_0).d));
    var var_5 = u_input.a.x;
    var var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -372f))), var_4.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-942f, var_3.x))))) - vec2<f32>(var_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-983f - -335f))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(637f * -1386f), var_4.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-584f, -685f)) + _wgslsmith_f_op_f32(1698f * var_4.a.x)), _wgslsmith_f_op_f32(1831f * _wgslsmith_f_op_f32(max(var_3.x, 261f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_4.a - vec4<f32>(var_4.a.x, var_1.a.x, var_3.x, 681f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(340f, var_1.a.x, 1124f, var_1.a.x), var_1.a, vec4<bool>(var_1.c, var_1.c, true, var_1.c))))), vec4<bool>(false, true, func_6(Struct_1(var_4.a, u_input.b.wwx, var_1.c, vec4<i32>(var_4.d.x, var_0, var_0, var_1.d.x)), 0i).c, true)))));
}

