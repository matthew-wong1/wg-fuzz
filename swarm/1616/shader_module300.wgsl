struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -832f) + 897f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(142f + -282f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2113f - 546f), _wgslsmith_div_f32(_wgslsmith_div_f32(918f, 1000f), _wgslsmith_f_op_f32(ceil(-316f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1628f) * vec3<f32>(var_0.x, var_0.x, 270f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(730f, var_0.x, -106f), vec3<f32>(323f, 1976f, 942f), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(637f, 1683f, -1000f), vec3<f32>(var_0.x, -1236f, -728f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, -169f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 410f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -319f, 574f)))), !all(vec2<bool>(true, true)) & false)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1593f))) * 525f));
    var var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-622f - 1489f)) - var_1.x) <= _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x))))));
    let var_3 = min(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -50479i, 0i), countOneBits(vec3<i32>(-48323i, 1i, u_input.c)))), -1i);
    return ~vec4<i32>(_wgslsmith_div_i32(select(_wgslsmith_add_i32(var_3, var_3), -1i, true), -15288i), -abs(1i), -min(-27243i, u_input.c ^ -8769i), var_3);
}

fn func_2(arg_0: bool, arg_1: bool) -> bool {
    var var_0 = func_3();
    var var_1 = Struct_1(897f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_1.a))) <= _wgslsmith_f_op_f32(814f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.a)))) - _wgslsmith_f_op_f32(var_1.a * 341f)));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-1143f - var_1.a)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1266f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.a)) + -560f))));
    return all(vec4<bool>(arg_0, all(!vec2<bool>(var_2, true)), false, true));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: f32) -> u32 {
    global0 = array<vec2<i32>, 19>();
    global0 = array<vec2<i32>, 19>();
    let var_0 = _wgslsmith_div_vec3_u32(abs(select(firstTrailingBit(vec3<u32>(1007u, 8104u, arg_0)) << (~vec3<u32>(0u, 15454u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0, 1u, u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 126057u), vec3<u32>(arg_0, 54249u, 69251u)), _wgslsmith_mod_vec3_u32(vec3<u32>(49737u, 4294967295u, 4294967295u), vec3<u32>(1u, u_input.a.x, arg_0))), !arg_1)), abs(select(vec3<u32>(21649u, 28598u, 0u), ~vec3<u32>(4294967295u, arg_0, u_input.a.x), true) << ((vec3<u32>(u_input.a.x, u_input.a.x, arg_0) ^ vec3<u32>(0u, arg_0, 24686u)) % vec3<u32>(32u))));
    let var_1 = countOneBits(_wgslsmith_div_vec4_u32(min(_wgslsmith_div_vec4_u32(~vec4<u32>(25840u, var_0.x, 43546u, 25967u), vec4<u32>(arg_0, arg_0, 0u, 45762u) & vec4<u32>(0u, 1u, arg_0, 35881u)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 17915u))), ~_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(arg_0, u_input.a.x, arg_0, 4294967295u)), firstTrailingBit(vec4<u32>(arg_0, 4294967295u, 41423u, arg_0)))));
    let var_2 = ~vec2<i32>(-20995i, 24336i);
    return u_input.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    global0 = array<vec2<i32>, 19>();
    var var_0 = firstLeadingBit(_wgslsmith_div_vec4_u32(firstTrailingBit(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 68783u))), vec4<u32>(4294967295u, ~u_input.a.x, u_input.a.x, u_input.a.x >> (0u % 32u))) & vec4<u32>(func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(29531u, 59062u, u_input.a.x), vec3<u32>(43315u, u_input.a.x, u_input.a.x)), func_2(true, false), arg_0.a), ~abs(25447u), 1u, min(11849u, 4294967295u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a) % 32u)));
    var_0 = _wgslsmith_div_vec4_u32(~vec4<u32>(54305u, 1u ^ min(var_0.x, 47574u), ~4294967295u, 4294967295u), vec4<u32>(47873u, abs(~0u >> (~var_0.x % 32u)), ~17536u, ~u_input.a.x));
    let var_1 = _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1875f + -1045f)));
    var_0 = ~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 5083u, abs(44676u), u_input.a.x), ~(~vec4<u32>(var_0.x, u_input.a.x, u_input.a.x, var_0.x)), ~vec4<u32>(u_input.a.x, 58995u, 4294967295u, u_input.a.x) << ((vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x) ^ vec4<u32>(114649u, 68803u, var_0.x, 25837u)) % vec4<u32>(32u))));
    return -_wgslsmith_div_i32(0i, u_input.b.x);
}

fn func_5(arg_0: u32, arg_1: i32) -> vec4<u32> {
    let var_0 = Struct_1(-563f);
    let var_1 = Struct_1(265f);
    global0 = array<vec2<i32>, 19>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a)))));
    let var_3 = Struct_1(434f);
    return ~countOneBits(vec4<u32>(u_input.a.x, select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 513u, 4294967295u, 66460u), vec4<u32>(arg_0, 7567u, 3902u, 47168u)), u_input.a.x | 1u, true), 4992u, (arg_0 & 68671u) >> (abs(u_input.a.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(63471u, func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2304f, -899f, false)) * _wgslsmith_f_op_f32(-950f - -406f))), firstTrailingBit(abs(vec4<i32>(-1i, -2147483647i, 36016i, u_input.c)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-1895f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(474f + 1743f) + _wgslsmith_f_op_f32(-892f + -233f)) - 553f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(968f, 1953f, -252f, 1391f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(935f, 270f, 1911f, -838f) - vec4<f32>(853f, -406f, 1056f, -1504f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-905f, 776f, -800f, 1525f), vec4<f32>(-1696f, 357f, -788f, 1000f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1319f, 1000f, 1285f, -133f)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true)))));
    var var_2 = vec2<bool>(true, true);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -359f) + _wgslsmith_f_op_f32(var_1.x - -1727f)));
    var var_4 = true;
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a, ~(-12190i), var_0.zxw);
}

