struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(953f, _wgslsmith_f_op_f32(select(-642f, -958f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1649f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(663f)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1663f + 2373f)))), _wgslsmith_f_op_f32(-751f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(581f))))));
    let var_1 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), true)), !vec2<bool>(true, all(vec4<bool>(true, true, true, true))), !vec2<bool>(_wgslsmith_clamp_i32(2147483647i, arg_1, arg_1) > 1i, true));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.x)))))), var_0.x, any(select(var_1, var_1, !var_1.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -590f), _wgslsmith_f_op_f32(330f * var_0.x))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1682f) * vec2<f32>(769f, var_0.x)) * vec2<f32>(-804f, -969f))))));
    let var_4 = ~vec4<i32>(~(~arg_1), -abs(u_input.b.x), -abs(10254i), arg_1 & min(_wgslsmith_clamp_i32(arg_1, u_input.b.x, arg_1), firstLeadingBit(34474i)));
    return !var_1.x;
}

fn func_2() -> Struct_2 {
    global0 = array<vec4<f32>, 9>();
    let var_0 = min(((_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 29920i), u_input.b) >> (select(21320u, 8352u, true) % 32u)) | u_input.b.x) ^ 0i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(~22832i, u_input.b.x, -abs(-1i)), max((i32(-1i) * -1i) | u_input.b.x, 0i)));
    let var_1 = vec4<bool>(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false)))), any(vec2<bool>(true, true)), func_3(~_wgslsmith_mult_u32(~0u, ~u_input.a), abs(-1i | firstTrailingBit(u_input.b.x)), ~reverseBits(0u)), all(vec3<bool>(true | any(vec4<bool>(false, false, true, true)), true, true | any(vec2<bool>(true, true)))));
    global0 = array<vec4<f32>, 9>();
    return Struct_2(Struct_1(~reverseBits(vec3<u32>(1u, u_input.a, u_input.a) >> (vec3<u32>(35040u, 4294967295u, u_input.a) % vec3<u32>(32u))), u_input.a, vec4<u32>(~u_input.a, u_input.a, u_input.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(24957u, 0u), vec2<u32>(u_input.a, u_input.a)), 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(u_input.a), ~4294967295u, 4294967295u, u_input.a), firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-209f, -595f, _wgslsmith_f_op_f32(-702f - _wgslsmith_f_op_f32(714f - -423f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2385f + 565f), -880f, -1000f))));
}

fn func_1(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_div_f32(1136f, _wgslsmith_f_op_f32(step(-1034f, 760f))), arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.b.x)), _wgslsmith_f_op_f32(sign(arg_0.b.x)), arg_0.b.x)), u_input.a, arg_0);
    var var_1 = Struct_3(arg_0.b.x, var_0.b, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1832f, _wgslsmith_f_op_f32(202f + _wgslsmith_f_op_f32(exp2(arg_0.b.x))), _wgslsmith_f_op_f32(trunc(236f))))), u_input.a, func_2());
    let var_2 = select(select(vec2<bool>(true, true), vec2<bool>(true, ~83585u != arg_0.a.a.x), vec2<bool>(select(true, select(false, true, false), all(vec2<bool>(false, true))), true)), vec2<bool>(any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true | !any(vec3<bool>(false, false, false))), select(!vec2<bool>(any(vec2<bool>(false, false)), false), !select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec4<bool>(true, true, true, false))), 1u <= ~var_1.e.a.c.x));
    let var_3 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_4 = _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(sign(var_0.e.b.x)));
    return ~vec4<u32>(arg_0.a.b, var_1.e.a.c.x, 2971u, u_input.a | ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 9>();
    let var_0 = ~u_input.b.x;
    var var_1 = ~(~(~vec3<u32>(u_input.a, u_input.a, 35060u)) ^ _wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.a, 1u, 4294967295u) | vec3<u32>(1u, u_input.a, u_input.a)), firstTrailingBit(vec3<u32>(31540u, 0u, 6474u))));
    var var_2 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(min(_wgslsmith_sub_u32(u_input.a, 41761u), 4294967295u), var_1.x ^ 1u, var_1.x), vec3<u32>(min(0u, 4294967295u), u_input.a, 46948u) ^ ~vec3<u32>(4294967295u, var_1.x, u_input.a)), 0u, ~(~(vec4<u32>(u_input.a, var_1.x, u_input.a, var_1.x) ^ vec4<u32>(u_input.a, var_1.x, var_1.x, 0u)) << (func_1(Struct_2(Struct_1(vec3<u32>(8315u, 50675u, u_input.a), u_input.a, vec4<u32>(32387u, 80553u, 54257u, 43814u), vec4<u32>(var_1.x, u_input.a, u_input.a, 21608u)), vec3<f32>(692f, 116f, 364f))) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(var_1.x, 104840u, 30061u, var_1.x)), vec4<u32>(70227u ^ var_1.x, 38394u, 52023u, var_1.x)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(990f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1564f)), -1000f))), -181f)) + -986f);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1215f), 240f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(231f * 221f))))), Struct_2(func_2().a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(440f, 1465f, 879f)) - vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(sign(-1606f)), -258f, _wgslsmith_f_op_f32(-267f - -2064f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(107f, -393f, 1512f), vec3<f32>(724f, -169f, -2124f), true)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(230f, 539f, 923f), vec3<f32>(717f, 575f, 167f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1174f, 267f, -944f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -150f, -1177f))))))), ~firstTrailingBit(_wgslsmith_clamp_u32(select(u_input.a, var_1.x, true), _wgslsmith_div_u32(4294967295u, u_input.a), var_2.b)), Struct_2(func_2().a, vec3<f32>(_wgslsmith_f_op_f32(-113f - 850f), _wgslsmith_f_op_f32(f32(-1f) * -1294f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(328f, 1152f)) - _wgslsmith_f_op_f32(f32(-1f) * -1547f)))));
    let var_5 = func_1(var_4.e).x;
    var var_6 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.b.x, 18756i, u_input.b.x), max(_wgslsmith_add_vec3_i32(vec3<i32>(var_0, u_input.b.x, 2147483647i), vec3<i32>(var_0, u_input.b.x, 0i)), ~vec3<i32>(26149i, 2147483647i, 1i))), vec3<i32>(~u_input.b.x, 2147483647i, -15301i) & vec3<i32>(min(2147483647i, var_0), u_input.b.x, countOneBits(u_input.b.x))) ^ min(vec3<i32>(-25410i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(-2147483647i, 1i, var_0), vec3<i32>(-1i, var_0, 1i)), ~vec3<i32>(20830i, u_input.b.x, var_0)), 28103i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 48584i, 1i), vec3<i32>(var_0, u_input.b.x, 1i)) ^ vec3<i32>(-2147483647i, firstLeadingBit(var_0), _wgslsmith_add_i32(u_input.b.x, 0i)));
    var_1 = select(var_2.d.yxz, countOneBits(var_4.b.a.d.zxw), vec3<bool>(false, true, all(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_4.e.b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(898f, -1047f, -1105f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1109f, 523f, var_4.a) - var_4.c), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(783f, 420f, var_4.a), vec3<f32>(1616f, -715f, -1025f)))))));
}

