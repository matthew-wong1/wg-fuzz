struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1504f, _wgslsmith_f_op_f32(round(360f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(550f)) + _wgslsmith_f_op_f32(min(317f, -623f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1252f + -636f) - _wgslsmith_f_op_f32(1f - -405f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1205f + -1000f), 643f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(309f)), _wgslsmith_f_op_f32(max(1350f, 1022f)))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-644f)), _wgslsmith_f_op_f32(select(-597f, _wgslsmith_f_op_f32(select(655f, 290f, true)), true)))), _wgslsmith_f_op_f32(sign(-1065f)), _wgslsmith_f_op_f32(sign(1f)), 1f), (10015u | arg_0) < abs(arg_0)));
    let var_1 = -66886i;
    var var_2 = !(((u_input.a.x & ~var_1) >> (~39084u % 32u)) > (_wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(u_input.a.x, -13843i)) << (arg_0 % 32u)));
    let var_3 = ~(~_wgslsmith_sub_vec4_u32(~firstLeadingBit(vec4<u32>(arg_0, arg_0, 437u, arg_0)), countOneBits(vec4<u32>(5167u, 27751u, arg_0, 4294967295u))));
    var_2 = true;
    return var_0.x;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1u)));
    var var_1 = ~u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1135f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1810f)))));
    var_1 = u_input.a.x;
    let var_3 = vec2<i32>(-41487i, _wgslsmith_sub_i32(~(-min(3339i, 0i)), u_input.a.x));
    return Struct_3(~vec2<u32>(1u, 1u));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> Struct_4 {
    let var_0 = _wgslsmith_mod_i32(i32(-1i) * -arg_1, u_input.a.x) ^ -1i;
    var var_1 = func_2((!(arg_2.a.b.x && true) && (_wgslsmith_clamp_u32(arg_2.a.d, 4294967295u, 1u) > _wgslsmith_clamp_u32(arg_2.a.c.x, 1u, 0u))) || all(select(vec2<bool>(true, true), arg_2.a.b, arg_2.a.b)), !vec4<bool>(any(arg_2.a.b) & !arg_2.a.b.x, select(true, arg_2.a.b.x, true), arg_2.a.b.x, arg_2.a.b.x));
    let var_2 = Struct_2(Struct_1(~45212i > _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, arg_2.a.e, 49007i), vec3<i32>(u_input.a.x, u_input.a.x, 5059i) & u_input.a.xyz), arg_2.a.b, ~vec4<u32>(1u, _wgslsmith_div_u32(43844u, 1u), arg_0, 22257u), _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(88354u, arg_0, 4294967295u, 21541u), arg_2.a.c)), ~_wgslsmith_mod_vec4_u32(arg_2.a.c, arg_2.a.c)), _wgslsmith_add_i32(abs(-arg_2.a.e), ~(arg_1 | 1i))));
    let var_3 = _wgslsmith_f_op_f32(arg_3 * arg_3);
    let var_4 = arg_2.a.c.x;
    return Struct_4(var_2.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_5) -> Struct_4 {
    let var_0 = (!all(select(vec3<bool>(arg_1.a.a, arg_3.a.a.b.x, true), vec3<bool>(arg_3.a.a.a, false, arg_3.a.a.b.x), true)) & (((i32(-1i) * -27968i) | (1i | arg_1.a.e)) > -firstLeadingBit(u_input.a.x))) && select(false, any(!select(vec4<bool>(arg_1.a.b.x, arg_3.a.a.b.x, true, true), vec4<bool>(arg_3.a.a.b.x, true, false, arg_3.a.a.b.x), vec4<bool>(false, false, arg_1.a.a, true))), any(vec3<bool>(func_1(9747u, 19481i, Struct_2(arg_3.a.a), -324f).a.b.x, arg_1.a.b.x, 1u >= arg_1.a.d)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-954f + -300f));
    var var_2 = arg_3;
    var_2 = Struct_5(Struct_2(Struct_1(true, var_2.a.a.b, _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a.c.x, arg_1.a.d, 0u, 19513u), arg_3.a.a.c, vec4<u32>(arg_1.a.c.x, 711u, arg_0.x, 4294967295u)), firstTrailingBit(vec4<u32>(19435u, arg_2.a.x, var_2.b, 30658u))), arg_2.a.x, -4436i)), abs(76746u));
    var var_3 = func_1(32755u, _wgslsmith_sub_i32(var_2.a.a.e, firstLeadingBit(countOneBits(2251i))), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1392f + 900f), -627f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158f + -129f))))).a;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(~vec2<u32>(0u, 4294967295u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 29019u), vec2<u32>(1u, 1u), abs(vec2<u32>(130328u, 0u)))), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), func_1(27593u, select(~min(-2147483647i, 12601i), ~(-u_input.a.x), 29663i < ~u_input.a.x), Struct_2(Struct_1(false, select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec4<u32>(54520u, 4294967295u, 20979u, 4294967295u), 1u, -u_input.a.x)), 1f), func_2(true, vec4<bool>(true, true, true, false)), Struct_5(Struct_2(Struct_1(true, vec2<bool>(true, true), vec4<u32>(1u, 1u, 1u, 1u), func_1(41207u, -78660i, Struct_2(Struct_1(true, vec2<bool>(true, true), vec4<u32>(25874u, 48490u, 36517u, 1u), 5935u, u_input.a.x)), 529f).a.c.x, max(u_input.a.x, u_input.a.x))), 4294967295u));
    let var_1 = Struct_5(Struct_2(var_0.a), var_0.a.c.x);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-439f * _wgslsmith_f_op_f32(round(1851f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-356f, -101f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(773f)) - _wgslsmith_f_op_f32(1000f - -1301f)))), any(vec4<bool>(true, any(var_1.a.a.b), !var_0.a.b.x, !var_1.a.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1677f, -673f), _wgslsmith_f_op_f32(f32(-1f) * -498f), var_0.a.a)), 1040f, true))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_2.x), vec2<f32>(-1782f, var_2.x)) * vec2<f32>(721f, -1410f))))) * _wgslsmith_div_vec2_f32(vec2<f32>(-2253f, _wgslsmith_f_op_f32(f32(-1f) * -1497f)), vec2<f32>(_wgslsmith_f_op_f32(-994f - var_2.x), var_2.x)));
    var var_3 = func_1(_wgslsmith_div_u32(~1u, abs(~(~4294967295u))), _wgslsmith_div_i32(-29346i, func_4(vec2<u32>(max(var_0.a.c.x, var_0.a.c.x), ~var_1.a.a.c.x), var_0, Struct_3(vec2<u32>(55199u, 1u)), var_1).a.e), Struct_2(var_1.a.a), _wgslsmith_f_op_f32(var_2.x + -621f));
    var_3 = func_1(0u >> (var_0.a.d % 32u), _wgslsmith_sub_i32(0i, var_0.a.e), var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(364f, -313f)), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(0u, var_0.a.c.x, 4294967295u), var_3.a.c.x);
}

