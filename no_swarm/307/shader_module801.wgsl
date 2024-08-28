struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>) -> vec4<f32> {
    var var_0 = 1u;
    var var_1 = vec2<bool>(u_input.d < ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(0u, u_input.d, arg_1.a), true), abs(vec3<u32>(u_input.d, 1u, u_input.d))), all(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.c, arg_1.c.x)));
    let var_3 = 65844u;
    var_1 = select(arg_2, vec2<bool>(all(!(!vec3<bool>(arg_2.x, arg_0, true))), arg_1.d == ~(~10594u)), vec2<bool>(arg_2.x, arg_2.x));
    return _wgslsmith_f_op_vec4_f32(-arg_1.c);
}

fn func_4(arg_0: vec4<f32>) -> vec4<i32> {
    var var_0 = select(vec2<bool>(true, 1869i > u_input.a), select(!vec2<bool>(false, u_input.c <= 0i), select(vec2<bool>(true, any(vec3<bool>(false, true, false))), vec2<bool>(1000f > arg_0.x, true), true), true), vec2<bool>(true, !any(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.xz);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(arg_0.zxz)))));
    var var_3 = arg_0.x;
    var_3 = var_1.x;
    return select(_wgslsmith_mult_vec4_i32(~(min(vec4<i32>(0i, u_input.a, -2147483647i, u_input.c), vec4<i32>(u_input.c, u_input.a, u_input.b, 2147483647i)) << (~vec4<u32>(52101u, 4294967295u, 1u, u_input.d) % vec4<u32>(32u))), ~(-vec4<i32>(0i, 2147483647i, 17068i, u_input.c) | vec4<i32>(u_input.e, u_input.e, -27695i, -25428i))), abs(vec4<i32>(~_wgslsmith_clamp_i32(u_input.a, 1i, -3459i), firstTrailingBit(_wgslsmith_mod_i32(u_input.c, -1i)), ~1i, -countOneBits(u_input.b))), false);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = max(-vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.e, 10664i), firstLeadingBit(u_input.e)), 3194i, -arg_0.x, 2147483647i), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(true, Struct_3(40717u, Struct_2(0i, Struct_1(vec3<f32>(619f, 222f, 1949f)), 503f), vec4<f32>(880f, 2533f, -292f, 200f), u_input.d), vec2<bool>(true, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, 1002f, 644f, -835f))))));
    let var_1 = false;
    let var_2 = var_0.yxw;
    var var_3 = Struct_5(vec3<u32>(u_input.d, u_input.d, 4294967295u), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, 0i), abs(-vec2<i32>(0i, 0i))), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(29902i, u_input.a)), ~var_0.yy) ^ var_2.yz), ~var_0.wy, Struct_3(~27369u, Struct_2(~(var_0.x & u_input.c), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(156f, -1547f, -587f))), _wgslsmith_f_op_f32(857f - -1183f)), vec4<f32>(-793f, _wgslsmith_f_op_f32(sign(-260f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(470f - -1022f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-979f - 1000f) - 409f)), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 66687u), vec2<u32>(u_input.d, u_input.d))) & u_input.d), Struct_3(~(~(~0u)), Struct_2(_wgslsmith_div_i32(reverseBits(var_0.x), arg_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(284f, -639f, 2668f) + vec3<f32>(-620f, -2140f, -1178f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1204f, -1436f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1410f, -528f, -703f, 1633f) + vec4<f32>(-196f, 261f, -115f, -648f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-869f, -1000f, -157f, 275f) - vec4<f32>(1780f, 214f, -478f, 1877f)))), 4294967295u));
    let var_4 = var_3.d.b.b.a.xz;
    return Struct_2(var_2.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-295f)) + 1189f), -1822f, -431f)), -1586f);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    return func_2(-(((vec2<i32>(178i, -2147483647i) ^ vec2<i32>(u_input.e, arg_1)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 30478u), vec2<u32>(u_input.d, 31357u)) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-22646i, -31149i), vec2<i32>(arg_1, 4530i)), vec2<i32>(arg_1, arg_1))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_3 {
    var var_0 = func_5(func_2(vec2<i32>(u_input.b, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(arg_0.x, -53563i, arg_0.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 33402i, u_input.a), vec3<i32>(arg_0.x, 51936i, u_input.b), vec3<i32>(u_input.c, arg_0.x, arg_0.x))))), _wgslsmith_add_i32(_wgslsmith_mod_i32(~10532i << ((u_input.d ^ u_input.d) % 32u), u_input.e), arg_0.x << (1u % 32u)), func_2(arg_0).b);
    var var_1 = func_5(Struct_2(arg_0.x, func_2(vec2<i32>(-4432i, select(0i, var_0.a, false))).b, _wgslsmith_f_op_f32(sign(-333f))), -33908i, var_0.b);
    var_1 = func_2(arg_0);
    let var_2 = Struct_2(var_1.a, var_1.b, var_1.c);
    var var_3 = select(vec4<bool>(true, !all(vec3<bool>(true, arg_1, arg_1)), 0i <= _wgslsmith_dot_vec2_i32(-arg_0, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 15814i), vec2<i32>(var_1.a, 2147483647i))), !arg_1), vec4<bool>(true, !all(vec3<bool>(true, arg_1, true)), all(vec2<bool>(true, arg_1)), !(-670f != var_2.c) & (~u_input.d == 13473u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2(arg_0).b.a.x), _wgslsmith_f_op_f32(sign(416f))));
    return Struct_3(reverseBits(u_input.d), var_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, 843f, var_2.c, var_1.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, -205f, 599f, var_2.b.a.x) + vec4<f32>(-353f, 239f, var_2.b.a.x, 608f))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-617f, var_0.b.a.x, -824f, var_0.b.a.x), vec4<f32>(var_1.b.a.x, -2357f, 393f, 882f)), vec4<f32>(-637f, 308f, -1147f, var_0.c))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -670f, var_0.b.a.x, var_2.c) + vec4<f32>(-1607f, var_2.c, var_2.b.a.x, 747f)) * vec4<f32>(var_1.c, var_0.b.a.x, 930f, var_0.b.a.x)))), reverseBits(26875u ^ u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, ~max(-16507i, -28995i)), firstLeadingBit(vec2<i32>(-5482i, u_input.a)) & _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.e, u_input.c), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, u_input.c), vec2<i32>(-1i, u_input.a)))), !all(vec4<bool>(any(vec4<bool>(true, true, true, false)), all(vec2<bool>(false, true)), true, true)));
    var var_1 = !select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, true))), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, true, false), true), vec4<bool>(59836u >= var_0.a, true, true, true), !all(vec3<bool>(false, false, false))), true);
    var var_2 = vec4<i32>(36966i, _wgslsmith_div_i32(2147483647i, -((u_input.a & var_0.b.a) << ((3327u & u_input.d) % 32u))), -43387i, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(1i, var_0.b.a)));
    var_0 = func_1(abs(var_2.yy), false);
    var var_3 = var_0.b.b;
    var_0 = Struct_3(firstTrailingBit(abs(u_input.d) ^ u_input.d), func_2(_wgslsmith_add_vec2_i32(vec2<i32>(var_2.x, var_2.x), var_2.yx)), vec4<f32>(728f, -477f, var_0.c.x, _wgslsmith_div_f32(var_3.a.x, _wgslsmith_f_op_f32(1156f * var_3.a.x))), 53268u);
    var_1 = !(!(!vec4<bool>(var_1.x, var_1.x, false, true)));
    var_0 = func_1(~vec2<i32>(~func_2(vec2<i32>(0i, var_2.x)).a, -(i32(-1i) * -8775i)), var_1.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(517f * var_0.c.x), 784f)), var_3.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, var_3.a.x, abs(u_input.d), ~(~vec3<u32>(var_0.d, 68895u, 29564u) | vec3<u32>(u_input.d, 3391u, 16343u)));
}

