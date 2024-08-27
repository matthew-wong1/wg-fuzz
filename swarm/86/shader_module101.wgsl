struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    return vec4<f32>(148f, -613f, -158f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-238f, -197f))), _wgslsmith_f_op_f32(round(-1000f)))), 1312f));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1928f, 378f, -1499f)), _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1570f, 1057f, 854f, 305f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(424f, -101f, 292f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1261f, 533f, 304f, 376f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1029f, 259f, -164f, 1357f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-468f, -347f, -696f, 1717f), vec4<f32>(533f, -208f, 1275f, -1388f), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1428f, 425f, 1182f, -374f) + vec4<f32>(420f, 955f, -1034f, -998f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-332f, 1411f, 933f, -1811f), vec4<f32>(482f, -580f, -1176f, 1561f), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(142f, -686f, 1615f, -596f), vec4<f32>(-1141f, 268f, -670f, 193f), arg_0))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-398f, -1353f, -553f, -2015f) - vec4<f32>(-599f, -2121f, 1753f, 856f))))))), !vec4<bool>(~u_input.a.x != select(arg_2, 0u, arg_1.x), any(!vec3<bool>(true, false, arg_0)), !(!arg_0), arg_1.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(539f, 492f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -564f, -1129f, var_0.x) + vec4<f32>(-164f, 689f, -155f, -901f))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-180f - var_0.x)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -215f);
    var var_2 = firstLeadingBit(vec4<i32>(-1i) * -countOneBits(firstLeadingBit(vec4<i32>(-12170i, -39914i, -2147483647i, 56616i))));
    var_2 = ~(_wgslsmith_sub_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_2.x, var_2.x, 0i), vec4<i32>(1i, -11949i, 44199i, 2147483647i), vec4<i32>(0i, -1i, var_2.x, 22892i))), abs(abs(vec4<i32>(var_2.x, 1i, -2895i, -2147483647i)))) ^ select(~(-vec4<i32>(var_2.x, 1i, -62305i, var_2.x)), vec4<i32>(abs(var_2.x), 1i, -30272i, 46911i), vec4<bool>(arg_0, false, arg_2 <= 97088u, u_input.a.x > u_input.a.x)));
    return Struct_4(var_2.zw, ~var_2.x, Struct_2(arg_1, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1672f, var_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1910f)))));
}

fn func_4(arg_0: Struct_4) -> u32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1004f, arg_0.c.b, var_0.c.b))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(479f, -2025f, arg_0.c.b), vec3<f32>(966f, arg_0.c.b, 152f), arg_0.c.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, var_0.c.b, arg_0.c.b))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.b, 1727f, -1874f) - vec3<f32>(var_0.c.b, arg_0.c.b, -277f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.b, var_0.c.b, -1014f) - vec3<f32>(arg_0.c.b, arg_0.c.b, arg_0.c.b))))))));
    var var_2 = Struct_3(all(!vec3<bool>(arg_0.c.a.x, arg_0.c.b < var_0.c.b, true)), var_0.c, func_2(arg_0.c.a.x, select(select(func_2(var_0.c.a.x, vec2<bool>(arg_0.c.a.x, var_0.c.a.x), 1u).c.a, !var_0.c.a, var_0.c.a), vec2<bool>(any(vec2<bool>(false, arg_0.c.a.x)), all(vec2<bool>(false, true))), true), ~_wgslsmith_sub_u32(u_input.a.x | 89327u, ~4294967295u)).c, Struct_1(vec2<bool>(any(vec4<bool>(var_0.c.a.x, var_0.c.a.x, false, arg_0.c.a.x)), all(select(vec3<bool>(var_0.c.a.x, false, var_0.c.a.x), vec3<bool>(true, arg_0.c.a.x, arg_0.c.a.x), vec3<bool>(true, var_0.c.a.x, var_0.c.a.x))))));
    let var_3 = ~67221u;
    var var_4 = var_0;
    return var_3;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = !vec4<bool>(any(select(arg_0, arg_0, vec3<bool>(arg_0.x, arg_0.x, true))), func_4(func_2(arg_0.x, arg_0.zy, arg_1.x)) > arg_1.x, any(arg_0), func_2(any(select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), false)), vec2<bool>(true, true), arg_1.x).c.a.x);
    var var_1 = -1236f;
    let var_2 = func_2(-1i > min(select(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(25180i, -31878i, 70359i)), countOneBits(26443i), var_0.x), reverseBits(min(1i, -7516i))), vec2<bool>(all(select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, var_0.x), select(vec3<bool>(false, false, arg_0.x), arg_0, arg_0))), func_4(func_2(false, var_0.wx, 0u)) <= arg_1.x), _wgslsmith_sub_u32(arg_1.x | arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(25443u), _wgslsmith_sub_u32(u_input.b, arg_1.x), 50433u, ~u_input.a.x), vec4<u32>(u_input.b, func_4(Struct_4(vec2<i32>(0i, -1i), -5223i, Struct_2(arg_0.yz, -301f))), arg_1.x >> (1u % 32u), ~u_input.b))));
    let var_3 = vec4<bool>(!(!(!(true & var_2.c.a.x))), true, select(any(arg_0), false, any(var_0)) || false, any(!vec2<bool>(true, arg_0.x)));
    var var_4 = var_2.b;
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.b, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c.b, -206f), vec2<f32>(var_2.c.b, var_2.c.b)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.c.b, var_2.c.b)))), _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(0u, arg_1.x, 0u, 11693u))).xy))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(323f, 681f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -151f)))) * _wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(true, true, true), countOneBits(~vec3<u32>(0u, u_input.a.x, 20114u) | ~vec3<u32>(u_input.b, u_input.b, 0u)))));
    let var_2 = Struct_4(firstLeadingBit(_wgslsmith_sub_vec2_i32(select(vec2<i32>(4551i, 13507i) << (u_input.a % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(1i, 1i)), 1342f <= var_1.x), vec2<i32>(min(-55387i, 47351i), _wgslsmith_clamp_i32(-37400i, 0i, 57189i)))), 12177i, Struct_2(vec2<bool>((u_input.b ^ u_input.a.x) > _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.b, u_input.b), vec4<u32>(u_input.b, 15637u, u_input.a.x, u_input.a.x)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)))));
    var var_3 = var_2.c.a.x;
    var var_4 = vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(6651u, u_input.b, u_input.b, 1u), vec4<u32>(u_input.a.x, 86336u, u_input.a.x, 0u))) | u_input.a.x, 33015u);
    var var_5 = var_2.a.x;
    var var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(!var_2.c.a.x, !var_2.c.a, var_4.x).c.b, func_2(true, select(var_2.c.a, var_2.c.a, select(vec2<bool>(true, true), var_2.c.a, var_2.c.a)), u_input.a.x).c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-331f, 1605f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-694f, var_0, var_2.c.b, var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.b, 19417u, 23018u, 6051u))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(159f, -787f, 868f, -1250f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), abs(vec2<u32>(24503u, 4294967295u))), 1u, ~(~var_4.x)) ^ vec4<u32>(36522u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_4.x, 54466u), ~66659u), 4294967295u, ~1u), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1171f, var_1.x, -2360f, -262f), vec4<f32>(-1000f, -689f, var_6.x, 196f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_2.c.b, 729f, -230f))))));
}

