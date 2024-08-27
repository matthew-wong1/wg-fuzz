struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec2<f32> {
    var var_0 = select(23730i, _wgslsmith_add_i32(-u_input.a, _wgslsmith_add_i32(arg_0.a.d, arg_0.a.d)), true);
    var_0 = -arg_0.a.d;
    let var_1 = !any(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), all(vec3<bool>(true, true, true))));
    var_0 = -51317i;
    var var_2 = Struct_3(arg_0.a, Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(640f, arg_1)))), arg_1, any(vec4<bool>(var_1, var_1, var_1, true)) & true))));
    return vec2<f32>(175f, -2005f);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_1(vec2<f32>(-963f, 1000f), 1u, vec2<u32>(25536u, 23300u), u_input.b.x, vec3<f32>(-1145f, -1000f, -1000f)), Struct_2(2150f)), arg_0.x)), 34467u, ~(~abs(vec2<u32>(0u, 1u))), 29940i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) - _wgslsmith_f_op_f32(1878f - -992f)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(926f, arg_0.x)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1619f)))));
    var var_1 = vec4<bool>(any(vec4<bool>(true, true, true, true)), 16658u == firstLeadingBit(_wgslsmith_mod_u32(14913u, var_0.a.b)), select(select(true & (var_0.a.c.x < 4294967295u), true, arg_1), arg_1, false), !all(vec3<bool>(true, true, true)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f)));
    let var_3 = all(vec2<bool>(all(vec4<bool>(select(true, arg_1, false), false, arg_1 & var_1.x, !arg_1)), !(0u < var_0.a.b)));
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.xx), 4294967295u, var_0.a.c, reverseBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, -2147483647i, u_input.b.x), vec4<i32>(16298i, -3409i, -1i, 49616i))), var_0.a.e), Struct_2(-530f));
    return Struct_3(var_0.a, var_2);
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = arg_0.a.a.x;
    let var_1 = func_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1030f, _wgslsmith_f_op_f32(f32(-1f) * -395f), true)), _wgslsmith_f_op_f32(step(769f, -770f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(672f - arg_0.a.e.x) - -1330f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, -1314f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.a, -864f, arg_0.a.a.x), arg_0.a.e, vec3<bool>(false, false, true))), false))), !any(vec3<bool>(true, true, true)));
    var var_2 = firstTrailingBit(vec3<i32>(var_1.a.d, -_wgslsmith_clamp_i32(arg_0.a.d, arg_0.a.d, arg_0.a.d), 1i));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(125f, arg_0.a.a.x, -1838f, 423f))) + vec4<f32>(var_1.a.a.x, _wgslsmith_f_op_f32(-634f - var_1.b.a), var_0, _wgslsmith_f_op_f32(-711f - var_0))) * vec4<f32>(_wgslsmith_f_op_f32(1640f * _wgslsmith_f_op_f32(f32(-1f) * -250f)), _wgslsmith_f_op_f32(-1042f - _wgslsmith_f_op_f32(var_1.b.a * 954f)), _wgslsmith_f_op_f32(var_1.a.a.x + arg_0.a.e.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-791f * var_0), _wgslsmith_f_op_f32(var_1.a.a.x * var_0), true)))));
    var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-148f, var_0, 1291f, 1000f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(143f, var_0)), -206f, _wgslsmith_f_op_f32(var_3.x * 425f), arg_0.a.a.x)), select(vec4<bool>(any(vec2<bool>(false, false)), select(true, false, false), true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, _wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_f32(-arg_0.b.a), 175f)))), vec4<bool>(any(vec3<bool>(true, any(vec4<bool>(false, false, false, false)), any(vec2<bool>(true, true)))), !((15956i < u_input.b.x) && true), true, select(all(vec2<bool>(false, false)) | true, true, true))));
    return true;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec2<i32>) -> f32 {
    var var_0 = reverseBits(1u);
    var var_1 = u_input.a;
    var_1 = reverseBits(reverseBits(~arg_3.x));
    var_0 = _wgslsmith_mod_u32(arg_2.x, ~_wgslsmith_clamp_u32(arg_2.x, arg_2.x, _wgslsmith_dot_vec2_u32(arg_2.yz, ~arg_2.zz)));
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2728f)) + -945f), _wgslsmith_div_f32(-416f, -403f), 663f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -207f, -1547f), vec3<f32>(-1955f, 959f, -946f), arg_1.x)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1208f, -152f, 1080f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2548f, -931f, -1750f)))), arg_0).b;
    return _wgslsmith_f_op_f32(max(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1022f, var_2.a, 717f))))), arg_0).a.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1284f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(-256f, _wgslsmith_f_op_f32(func_4(true, vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -754f) <= _wgslsmith_f_op_f32(step(497f, -2115f)), !func_1(Struct_3(Struct_1(vec2<f32>(-825f, 371f), 42396u, vec2<u32>(9319u, 43624u), u_input.a, vec3<f32>(1050f, -391f, -1853f)), Struct_2(479f)))), ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 0u, 46384u)), ~vec3<u32>(13277u, 1u, 4294967295u), vec3<u32>(6460u, 100318u, 0u)), (u_input.b.wy ^ vec2<i32>(-2147483647i, u_input.a)) ^ -select(vec2<i32>(u_input.a, u_input.a), u_input.b.xy, vec2<bool>(true, true))))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-657f, 825f, func_1(func_2(vec3<f32>(1568f, 717f, -1332f), any(vec4<bool>(true, true, true, false)))))), _wgslsmith_f_op_vec2_f32(func_3(func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(2004f, -623f, 2262f) + vec3<f32>(368f, -653f, 1051f)))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1143f) + _wgslsmith_f_op_f32(-137f + 1781f))))).x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(696f, 145f, _wgslsmith_f_op_f32(f32(-1f) * -880f), _wgslsmith_f_op_f32(floor(-612f))) - vec4<f32>(932f, 1556f, _wgslsmith_f_op_f32(f32(-1f) * -429f), 285f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -655f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1189f) * 1504f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) + -668f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1237f + -2412f)))));
    let var_2 = Struct_1(vec2<f32>(var_1.x, 1000f), 0u, firstTrailingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), -2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(557f, var_1.x, var_1.x))));
    var var_3 = select(vec3<bool>(-(i32(-1i) * -2147483647i) != _wgslsmith_mod_i32(0i | u_input.b.x, u_input.b.x & var_2.d), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))) && false, true), vec3<bool>(false, select(true, true, true), any(vec2<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(false, false, false, true))))), any(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))));
    var_3 = select(!select(!(!vec3<bool>(true, var_3.x, var_3.x)), select(vec3<bool>(true, var_3.x, true), !vec3<bool>(false, var_3.x, var_3.x), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_3.x, false), vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(var_3.x, false, var_3.x)), vec3<bool>(var_3.x, true, false))), vec3<bool>(~var_2.c.x > var_2.b, true, all(vec4<bool>(var_3.x || var_3.x, true, var_3.x && var_3.x, true))), all(select(select(!vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(false, false, false)), vec3<bool>(true, var_2.c.x >= 8654u, true), true)));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1005f - -1435f)))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1599f, -771f, var_1.x, -727f) * vec4<f32>(-1615f, var_2.a.x, var_2.e.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-187f, var_1.x, 961f, var_1.x) - vec4<f32>(var_1.x, var_2.e.x, var_1.x, var_2.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, var_1.x, var_2.a.x, var_1.x))))))) - vec4<f32>(1025f, _wgslsmith_f_op_f32(-1443f + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(var_1.x - 299f), _wgslsmith_f_op_f32(var_1.x + var_1.x))));
    let var_4 = !vec4<bool>(true, !any(vec4<bool>(var_3.x, var_3.x, true, var_3.x)), all(!vec4<bool>(var_3.x, false, false, var_3.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, abs(67708i >> (firstTrailingBit(0u) % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.d, -6662i, var_2.d, u_input.a), vec4<i32>(-1i, u_input.b.x, var_2.d, -2147483647i)), u_input.b | vec4<i32>(var_2.d, var_2.d, -22768i, -2147483647i)), u_input.b), u_input.a | ~_wgslsmith_dot_vec3_i32(u_input.b.zwy, u_input.b.ywz)), vec4<u32>(_wgslsmith_dot_vec2_u32(~var_2.c, vec2<u32>(var_2.b, ~var_2.c.x)), ~var_2.c.x, var_2.b | _wgslsmith_mod_u32(var_2.b, abs(var_2.b)), 4294967295u));
}

