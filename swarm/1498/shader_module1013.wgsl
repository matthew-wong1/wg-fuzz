struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: f32, arg_3: Struct_4) -> bool {
    var var_0 = Struct_1(arg_3.b.a >> ((~(~arg_3.d.a.b) | abs(u_input.a)) % 32u), u_input.a & (1u >> (arg_3.b.b % 32u)), 4294967295u | u_input.a, vec4<bool>(any(select(vec2<bool>(arg_3.a.x, true), arg_3.b.d.zw, !arg_3.b.d.yx)), true, !arg_3.b.d.x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-523f))))))));
    var var_1 = arg_3.d;
    var_0 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(35370i, var_1.a.a, 42337i), vec3<i32>(-1941i, arg_1, arg_1 ^ arg_3.b.a)), ~(~vec3<i32>(13058i, -21228i, var_0.a)) ^ vec3<i32>(~2147483647i, -arg_3.b.a, abs(arg_1))), var_0.b, ~4294967295u, var_0.d, _wgslsmith_f_op_f32(trunc(-1000f)));
    let var_2 = Struct_3(Struct_1(1i >> (firstTrailingBit(_wgslsmith_add_u32(u_input.a, var_1.a.c)) % 32u), arg_3.b.b, u_input.a, !(!vec4<bool>(var_1.b, arg_3.c, false, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1554f)))), true);
    var var_3 = -385f;
    return arg_3.b.d.x;
}

fn func_2() -> i32 {
    var var_0 = Struct_3(Struct_1(~(-2147483647i >> (~u_input.a % 32u)), u_input.a, u_input.a, vec4<bool>(select(false, false, false) & true, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-331f, -259f, -740f, -1366f) + vec4<f32>(696f, -685f, 1229f, 542f)), -1i, -233f, Struct_4(vec4<bool>(true, false, true, true), Struct_1(28986i, 4294967295u, 4494u, vec4<bool>(false, false, false, true), 1489f), true, Struct_3(Struct_1(1i, 94214u, u_input.a, vec4<bool>(false, true, false, false), -1512f), false), 1000f)), any(vec4<bool>(false, true, false, true)), any(vec4<bool>(true, true, true, true))), -1422f), false);
    var var_1 = all(!vec2<bool>(all(var_0.a.d.zy), var_0.b));
    let var_2 = ~(~_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(u_input.a, u_input.a, var_0.a.c)), ~(~vec3<u32>(2998u, 0u, 0u))));
    var var_3 = _wgslsmith_mult_vec4_u32(max(select(~vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), vec4<u32>(var_0.a.c, var_0.a.c, var_0.a.c, 7702u) | ~vec4<u32>(var_2.x, u_input.a, 0u, 1u), !(!vec4<bool>(false, true, true, var_0.a.d.x))), reverseBits(~(vec4<u32>(17046u, 0u, 62287u, var_0.a.c) | vec4<u32>(1u, u_input.a, 76592u, var_0.a.c)))), ~(~vec4<u32>(4294967295u, 0u, var_0.a.b >> (4294967295u % 32u), _wgslsmith_mod_u32(6445u, u_input.a))));
    let var_4 = true;
    return _wgslsmith_mult_i32(-var_0.a.a, 5772i);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, _wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-263f))), arg_3.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, 297f, arg_3.x, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(113f, 143f, arg_0, arg_3.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(259f, arg_0, arg_3.x, arg_0))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3.x, arg_0, arg_0, arg_3.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, -426f, -372f, -1531f) + vec4<f32>(-201f, -576f, 2136f, 1699f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-467f, 368f, -1000f, 1888f) * vec4<f32>(arg_3.x, -959f, arg_0, -210f)))))));
    let var_1 = vec3<bool>(select(arg_1.x, arg_1.x, false), false, arg_1.x);
    let var_2 = Struct_4(select(!select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, true, false, true), vec4<bool>(false, true, false, var_1.x)), vec4<bool>(false, true, false, false)), select(vec4<bool>(2166f == arg_0, any(vec3<bool>(false, var_1.x, true)), true, all(vec3<bool>(false, var_1.x, arg_1.x))), vec4<bool>(select(var_1.x, false, arg_1.x), arg_0 > 1000f, var_1.x, !var_1.x), !(4294967295u == u_input.a)), !select(all(var_1.yz), all(vec3<bool>(true, var_1.x, true)), all(var_1))), Struct_1(min(_wgslsmith_sub_i32(firstLeadingBit(arg_2), -arg_2), arg_2), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)), u_input.a, !vec4<bool>(36894u < u_input.a, true, all(vec4<bool>(var_1.x, arg_1.x, var_1.x, true)), all(vec3<bool>(false, var_1.x, false))), 402f), all(var_1), Struct_3(Struct_1(~(arg_2 & -58227i), 4294967295u, u_input.a, !select(vec4<bool>(var_1.x, arg_1.x, false, arg_1.x), vec4<bool>(var_1.x, arg_1.x, var_1.x, var_1.x), arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f - 1810f))), all(vec2<bool>(true, arg_1.x))), _wgslsmith_f_op_f32(trunc(-219f)));
    let var_3 = var_2.d.a.b;
    var var_4 = min(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-33538i, _wgslsmith_sub_i32(var_2.d.a.a, arg_2)), ~arg_2), -1i, 2147483647i), ~vec3<i32>(arg_2, firstTrailingBit(-2147483647i), ~select(arg_2, 30469i, true)));
    return arg_2;
}

fn func_1(arg_0: Struct_3) -> i32 {
    var var_0 = -abs(vec3<i32>(arg_0.a.a, 38953i, func_4(1523f, select(vec3<bool>(arg_0.b, false, true), arg_0.a.d.yyz, arg_0.a.d.x), func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(879f, arg_0.a.e, arg_0.a.e)))));
    var_0 = abs(vec3<i32>(~arg_0.a.a, _wgslsmith_mod_i32(~2147483647i, ~_wgslsmith_mult_i32(arg_0.a.a, -1i)), reverseBits(i32(-1i) * -13160i) << (u_input.a % 32u)));
    var_0 = -(~_wgslsmith_mult_vec3_i32(vec3<i32>(-8190i, 0i, arg_0.a.a), ~vec3<i32>(var_0.x, var_0.x, var_0.x))) >> (countOneBits(~vec3<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 1u), firstTrailingBit(u_input.a), _wgslsmith_sub_u32(arg_0.a.c, u_input.a))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_add_vec2_i32(var_0.zx, vec2<i32>(0i, -1i));
    var var_2 = arg_0.a.a;
    return -32907i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-(func_1(Struct_3(Struct_1(0i, 1u, 4294967295u, vec4<bool>(false, true, false, true), 469f), false)) ^ (-2147483647i >> (reverseBits(u_input.a) % 32u))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(5903i, 0i, 2147483647i, 0i), vec4<i32>(34695i, 9133i, 1435i, 1757i)), i32(-1i) * -12840i), ~(~44982i), _wgslsmith_div_i32(1i << (u_input.a % 32u), 2147483647i)), -18709i), max(_wgslsmith_sub_i32(-2147483647i, -_wgslsmith_sub_i32(-5462i, -61794i)), 1i), _wgslsmith_clamp_i32(20493i, firstLeadingBit(firstTrailingBit(-21869i)), _wgslsmith_mod_i32(-41246i | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(1i, -1i)), firstLeadingBit(~1i))));
    var_0 = vec4<i32>(~var_0.x, max(var_0.x, 1i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.x, var_0.x, -31392i) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 1739u, 4294967295u)) % vec3<u32>(32u)), ~var_0.wwy), _wgslsmith_mult_vec3_i32(var_0.ywy >> (~vec3<u32>(u_input.a, 18898u, u_input.a) % vec3<u32>(32u)), -select(var_0.zyx, vec3<i32>(var_0.x, var_0.x, -41025i), false))), _wgslsmith_mult_i32(var_0.x, ~(-countOneBits(var_0.x))));
    var_0 = ~vec4<i32>(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1026f - -1328f) + -522f), vec3<bool>(true, true, true), ~var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(179f, -699f, -569f))))), abs(-1404i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, 0i, -1i, var_0.x)), -vec4<i32>(var_0.x, 0i, -1i, var_0.x)) >> (~0u % 32u), -1i);
    var var_1 = true;
    var_0 = min(-vec4<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0.x, 18648i, var_0.x, var_0.x), vec4<i32>(var_0.x, 38298i, var_0.x, var_0.x)), abs(vec4<i32>(var_0.x, var_0.x, -74462i, var_0.x))), var_0.x, -38372i, var_0.x), vec4<i32>(-2147483647i, countOneBits(var_0.x), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, -5295i, var_0.x, 66961i), vec4<i32>(var_0.x, var_0.x, -1i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, 0i, var_0.x), vec4<i32>(var_0.x, -23591i, var_0.x, var_0.x))), -2147483647i) ^ ~_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, var_0.x, var_0.x, 9387i), vec4<i32>(23027i, 0i, var_0.x, 1i)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1702f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-906f + _wgslsmith_f_op_f32(f32(-1f) * -383f)), 1214f)));
    var_0 = vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), reverseBits(var_0.xz)) ^ (-496i & var_0.x), ~(~var_0.x), var_0.x, _wgslsmith_mod_i32(4145i, -5789i));
    var_1 = true;
    let var_3 = -vec2<i32>(-var_0.x, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(u_input.a, 55773u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 6156u, 0u), vec3<u32>(u_input.a, 18115u, u_input.a))), ~(abs(vec3<u32>(18714u, u_input.a, u_input.a)) | ~vec3<u32>(u_input.a, 0u, 1u)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), 0i == var_3.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, -1652f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + 1181f)));
}

