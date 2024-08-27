struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    var var_0 = true;
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_0.yz, vec2<u32>(_wgslsmith_div_u32(u_input.a, _wgslsmith_clamp_u32(arg_0.x, arg_0.x, 1u)), arg_0.x)), ~(~u_input.a & u_input.a));
    var_0 = (22608i <= arg_1.a.x) && any(vec2<bool>(true, true));
    var_1 = ~67550u;
    var_0 = !(!(!all(vec4<bool>(false, false, false, true))) | all(vec3<bool>(all(vec4<bool>(false, false, false, false)), true, false)));
    return true;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = arg_0;
    var_0 = Struct_1(vec4<i32>(arg_0.a.x, var_0.a.x, -29073i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_0.a.zy, vec2<i32>(-30218i, -2147483647i)) & _wgslsmith_mult_i32(1i, -16239i), _wgslsmith_mod_i32(firstLeadingBit(52720i), -1i))));
    var_0 = Struct_1(-vec4<i32>(u_input.b.x << (reverseBits(20395u) % 32u), ~countOneBits(-2276i), 3792i, min(0i, 24102i)));
    var_0 = Struct_1(arg_0.a);
    var_0 = Struct_1(_wgslsmith_sub_vec4_i32(~(~arg_0.a) ^ var_0.a, var_0.a));
    return select(vec4<bool>(true || !(var_0.a.x != -2147483647i), true, !(_wgslsmith_f_op_f32(round(-210f)) != 1f), !(!select(true, false, false))), vec4<bool>(all(vec3<bool>(func_3(vec3<u32>(u_input.a, 1u, 34113u), Struct_1(vec4<i32>(var_0.a.x, u_input.b.x, u_input.b.x, arg_0.a.x))), false, true)), all(vec3<bool>(true, true, true)), true, true), 24368u <= _wgslsmith_sub_u32(u_input.a, 14622u));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(!(!arg_2), vec3<u32>(arg_3.b.x, 54671u, arg_3.b.x));
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-232f, 1629f, -1000f, _wgslsmith_f_op_f32(199f * -152f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -723f), _wgslsmith_f_op_f32(317f - 1064f), 742f, _wgslsmith_f_op_f32(abs(786f))), _wgslsmith_div_u32(arg_0.b.x, arg_0.b.x) == reverseBits(arg_0.b.x))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x & u_input.b.x, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-17970i, 0i, u_input.b.x) ^ vec3<i32>(-55445i, u_input.b.x, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, 0i, -37590i))), -1i), -vec4<i32>(7744i | u_input.b.x, ~u_input.b.x, 0i, -7618i), -vec4<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.b.x), 38071i ^ u_input.b.x, u_input.b.x << (0u % 32u), ~u_input.b.x)), arg_2.x, Struct_2(all(func_2(Struct_1(vec4<i32>(27103i, u_input.b.x, 0i, -1i)))) && any(vec4<bool>(false, true, false, arg_0.a)), select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 26523u), arg_0.b), _wgslsmith_sub_u32(arg_0.b.x, u_input.a), 1u ^ arg_0.b.x), arg_0.b, arg_0.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1075f, -587f), vec2<f32>(1184f, 311f), vec2<bool>(false, false)))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(413f, 604f), vec2<f32>(-597f, -989f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-957f, -1509f)), vec2<f32>(499f, 510f))))));
    var var_2 = _wgslsmith_f_op_f32(-1367f * var_1.x);
    var var_3 = Struct_1(vec4<i32>(-2147483647i, -28626i, select(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), firstLeadingBit(2955i)), reverseBits(abs(-2147483647i)), !all(arg_2)), firstTrailingBit(max(abs(1i), 13629i))));
    let var_4 = !vec4<bool>(true, true, (_wgslsmith_div_u32(32967u, var_0.b.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 2226u, 4501u), vec3<u32>(var_0.b.x, 0u, u_input.a))) != ~_wgslsmith_sub_u32(arg_0.b.x, 0u), true);
    return Struct_1(vec4<i32>(_wgslsmith_div_i32(-var_3.a.x, var_3.a.x), _wgslsmith_mod_i32(~firstLeadingBit(0i), u_input.b.x), -1i, var_3.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> i32 {
    var var_0 = Struct_1(vec4<i32>(33000i, -arg_0.a.x, arg_2, u_input.b.x));
    var_0 = func_5(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1233f, -593f, -2473f, -331f), vec4<f32>(-794f, 1000f, -664f, -106f)), vec4<f32>(703f, 772f, 769f, 489f), func_2(Struct_1(vec4<i32>(arg_2, 0i, arg_0.a.x, arg_0.a.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(203f, 122f, -1299f, -121f) * vec4<f32>(-1345f, 544f, -809f, 666f)))), vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_0.a.x, 21609i), vec3<i32>(arg_2, arg_2, 2147483647i)), _wgslsmith_add_i32(i32(-1i) * -20908i, arg_2 >> (arg_1 % 32u)), ~var_0.a.x ^ -12471i, firstTrailingBit(var_0.a.x)), false, Struct_2(!func_2(Struct_1(vec4<i32>(arg_0.a.x, var_0.a.x, u_input.b.x, -20046i))).x, _wgslsmith_sub_vec3_u32(vec3<u32>(10666u, arg_1, arg_1) >> (vec3<u32>(53266u, 32980u, arg_1) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 13771u, 0u), vec3<u32>(arg_1, 0u, 1u), vec3<u32>(44949u, arg_1, arg_1))))), any(func_2(Struct_1(var_0.a)).zy), select(vec3<bool>(true, true, true), select(vec3<bool>(true, all(vec3<bool>(true, true, true)), false), vec3<bool>(true, false, false), func_2(Struct_1(vec4<i32>(arg_2, u_input.b.x, 26619i, 18360i))).wzy), vec3<bool>(any(func_2(arg_0).zz), true, func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-503f, -370f, -290f, 1163f), vec4<f32>(-1765f, 1496f, -1115f, 776f), vec4<bool>(false, true, true, true))), select(vec4<i32>(-102444i, -21116i, u_input.b.x, arg_0.a.x), vec4<i32>(4950i, -27677i, 1i, u_input.b.x), true), all(vec4<bool>(true, false, false, true)), func_4(vec4<f32>(483f, -709f, 1418f, 520f), arg_0.a, true, Struct_2(false, vec3<u32>(68831u, arg_1, 4294967295u)))).a)));
    return _wgslsmith_mod_i32(var_0.a.x, arg_0.a.x ^ (-15680i | select(u_input.b.x, ~var_0.a.x, all(vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    var var_1 = Struct_1(-_wgslsmith_div_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -8825i, -16202i, -1i), vec4<i32>(2147483647i, -2147483647i, u_input.b.x, u_input.b.x)), -vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, u_input.b.x)), vec4<i32>(max(-26285i, 0i), abs(u_input.b.x), -u_input.b.x, func_1(Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 28672i)), 43747u, u_input.b.x))));
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 1000f, -424f) + vec4<f32>(205f, var_0, 1287f, -645f))))))), _wgslsmith_clamp_vec4_i32(var_1.a, var_1.a, abs(var_1.a) << (reverseBits(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)) % vec4<u32>(32u))), false, func_4(vec4<f32>(_wgslsmith_f_op_f32(-1413f + _wgslsmith_f_op_f32(step(535f, -705f))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(949f)) - _wgslsmith_div_f32(-1669f, 446f)), -411f), _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(var_1.a.x), _wgslsmith_div_i32(var_1.a.x, 60757i), ~2147483647i, ~1i), ~(-vec4<i32>(-36199i, 13552i, -75266i, var_1.a.x))), 9320i >= ~(-u_input.b.x), Struct_2(false, ~(vec3<u32>(u_input.a, 0u, 7203u) ^ vec3<u32>(20063u, 17381u, 1279u)))));
    var var_3 = func_5(func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)), 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(155f - -2363f)))), abs(vec4<i32>(9724i, select(var_1.a.x, u_input.b.x, false), _wgslsmith_div_i32(90707i, -1i), 1i)), false, Struct_2(all(select(vec3<bool>(false, var_2.a, true), vec3<bool>(true, var_2.a, true), vec3<bool>(var_2.a, var_2.a, true))), abs(var_2.b))), false, vec3<bool>(var_2.a, var_2.a, (abs(u_input.a) | func_4(vec4<f32>(330f, var_0, var_0, 811f), vec4<i32>(var_1.a.x, -1i, 0i, u_input.b.x), true, var_2).b.x) >= ~var_2.b.x));
    var_1 = Struct_1(max(vec4<i32>(-2147483647i, abs(var_1.a.x), _wgslsmith_add_i32(-37748i, 31321i), ~(-53457i)) & ~(-vec4<i32>(var_3.a.x, -54904i, -2147483647i, 0i)), func_5(func_4(vec4<f32>(801f, var_0, var_0, 1171f), _wgslsmith_div_vec4_i32(var_3.a, var_3.a), any(vec4<bool>(var_2.a, true, var_2.a, var_2.a)), var_2), var_2.a, !(!vec3<bool>(true, true, var_2.a))).a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec2<i32>(-2147483647i, _wgslsmith_sub_i32(-2147483647i, var_3.a.x)), _wgslsmith_add_u32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)), var_1.a, var_2.a, Struct_2(false, var_2.b)).b.x >> (~1u % 32u), _wgslsmith_mod_u32(3373u, var_2.b.x)), firstLeadingBit(_wgslsmith_sub_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_3.a.x, 18373i, u_input.b.x), vec4<i32>(0i, u_input.b.x, -1i, var_1.a.x)), vec4<i32>(var_3.a.x, -1i, u_input.b.x, -52351i)), max(var_1.a, ~var_1.a))));
}

