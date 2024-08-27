struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: f32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = Struct_4(~arg_0.a, Struct_1(0i, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 53935i, arg_0.d.x, u_input.d.x) ^ select(vec4<i32>(u_input.a, -40492i, -27889i, u_input.d.x), vec4<i32>(u_input.d.x, arg_2.d.x, arg_2.d.x, arg_2.d.x), false), vec4<i32>(-1i) * -vec4<i32>(arg_2.d.x, arg_2.d.x, 24061i, 2147483647i)), ~vec2<u32>(29157u, 0u), 162f), Struct_3(Struct_2(arg_0.a, vec3<bool>(true, !arg_0.b.x, !arg_0.b.x), -1541f, vec3<i32>(0i, -31501i, u_input.a), vec2<u32>(~0u, _wgslsmith_mult_u32(arg_0.e.x, arg_0.e.x))), Struct_2(~reverseBits(u_input.c), !vec3<bool>(false, arg_2.b.x, arg_2.b.x), arg_2.c, vec3<i32>(_wgslsmith_mod_i32(-19022i, 1i), -u_input.a, u_input.a), ~arg_2.a.xx), _wgslsmith_mod_u32(4294967295u, firstLeadingBit(u_input.b.x)) | arg_0.a.x, arg_2.b.x, Struct_1(arg_0.d.x, max(vec4<i32>(u_input.a, 1i, u_input.a, -32949i) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.d.x, -10856i, arg_0.d.x, arg_2.d.x), vec4<i32>(-61451i, -72914i, 0i, -19489i))), vec2<u32>(4742u, firstTrailingBit(28897u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.c)))))));
    var_0 = Struct_4(vec4<u32>(arg_0.a.x, (_wgslsmith_mult_u32(63241u, arg_0.e.x) << (countOneBits(16349u) % 32u)) >> (~(~arg_0.a.x) % 32u), ~arg_0.e.x, 1u << (var_0.a.x % 32u)), var_0.c.e, Struct_3(var_0.c.a, Struct_2(vec4<u32>(13864u, 27757u, u_input.b.x << (124423u % 32u), arg_0.e.x), !(!arg_2.b), arg_1, arg_0.d, var_0.c.b.e), u_input.b.x, (true && (799f < arg_1)) || !any(vec3<bool>(true, true, arg_2.b.x)), var_0.b));
    var_0 = Struct_4(vec4<u32>(_wgslsmith_mult_u32(abs(14307u & u_input.b.x), var_0.a.x ^ var_0.b.c.x), var_0.a.x, ~(_wgslsmith_div_u32(u_input.c.x, 29795u) << (var_0.b.c.x % 32u)), _wgslsmith_clamp_u32(28608u, ~var_0.c.b.a.x, ~arg_0.a.x)), Struct_1(~(-2185i), -max(reverseBits(vec4<i32>(var_0.c.a.d.x, 2147483647i, 0i, u_input.a)), var_0.b.b >> (u_input.c % vec4<u32>(32u))), vec2<u32>(u_input.b.x, arg_2.a.x >> (4294967295u % 32u)) | vec2<u32>(_wgslsmith_mod_u32(4294967295u, 46044u), abs(u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.c))), Struct_3(var_0.c.a, Struct_2(vec4<u32>(~var_0.c.a.e.x, _wgslsmith_div_u32(4294967295u, var_0.c.c), arg_0.e.x >> (1u % 32u), arg_0.a.x >> (arg_0.e.x % 32u)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_2.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, arg_2.b.x, true)), vec3<bool>(true, var_0.c.d, arg_2.b.x), true), arg_0.c, vec3<i32>(~10945i, _wgslsmith_div_i32(-2147483647i, arg_0.d.x), 15244i), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_0.a.yx, vec2<u32>(u_input.c.x, u_input.c.x)), firstTrailingBit(arg_0.a.xx))), ~countOneBits(22782u), _wgslsmith_div_u32(arg_0.a.x, 89946u) <= 6627u, Struct_1(firstLeadingBit(-35934i), -var_0.c.e.b, arg_2.e, arg_0.c)));
    var var_1 = vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(-13041i, u_input.d.x), 2147483647i);
    let var_2 = ~_wgslsmith_add_i32(u_input.d.x & -arg_2.d.x, var_0.c.a.d.x);
    return !vec3<bool>(arg_0.b.x, !all(!var_0.c.b.b), true);
}

fn func_2() -> vec4<i32> {
    let var_0 = vec2<bool>(!(!any(func_3(Struct_2(vec4<u32>(35097u, 4294967295u, 24472u, u_input.c.x), vec3<bool>(true, true, true), 2025f, vec3<i32>(0i, 1i, u_input.d.x), vec2<u32>(54585u, 45097u)), -926f, Struct_2(u_input.c, vec3<bool>(false, false, false), 1045f, vec3<i32>(u_input.d.x, u_input.a, 11472i), vec2<u32>(4294967295u, u_input.c.x))))), !func_3(Struct_2(vec4<u32>(1716u, 1u, u_input.c.x, u_input.c.x), vec3<bool>(true, true, false), _wgslsmith_f_op_f32(1000f - 680f), select(vec3<i32>(u_input.a, -2147483647i, 1i), vec3<i32>(4833i, -19004i, u_input.a), vec3<bool>(true, true, false)), countOneBits(vec2<u32>(9173u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-521f))), Struct_2(vec4<u32>(13u, 4294967295u, 5171u, u_input.b.x), vec3<bool>(true, false, true), 280f, vec3<i32>(u_input.d.x, -7926i, u_input.a), ~vec2<u32>(u_input.c.x, 6121u))).x);
    let var_1 = u_input.b.x;
    var var_2 = any(vec2<bool>(false, !var_0.x));
    var var_3 = func_3(Struct_2(~(~(~vec4<u32>(u_input.b.x, 7555u, 75534u, 4294967295u))), func_3(Struct_2(~vec4<u32>(u_input.b.x, 4294967295u, u_input.c.x, u_input.b.x), vec3<bool>(var_0.x, true, false), 1042f, abs(vec3<i32>(u_input.a, -17702i, u_input.a)), countOneBits(vec2<u32>(u_input.b.x, 207u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(648f, -1000f, false))), Struct_2(vec4<u32>(var_1, 50815u, 4294967295u, 4294967295u), !vec3<bool>(false, true, var_0.x), -785f, abs(vec3<i32>(u_input.d.x, -2147483647i, u_input.a)), u_input.b)), _wgslsmith_f_op_f32(ceil(101f)), vec3<i32>(20609i, i32(-1i) * -2147483647i, 28124i), vec2<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c << (u_input.c % vec4<u32>(32u)), u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-570f * -1000f)), Struct_2(countOneBits(min(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 10212u, var_1, var_1), u_input.c), u_input.c)), select(vec3<bool>(any(vec3<bool>(true, var_0.x, var_0.x)), var_0.x && false, all(vec4<bool>(true, false, var_0.x, var_0.x))), vec3<bool>(true, all(var_0), var_0.x), !func_3(Struct_2(u_input.c, vec3<bool>(false, false, true), -1245f, vec3<i32>(u_input.d.x, -7944i, 0i), vec2<u32>(var_1, 4294967295u)), 301f, Struct_2(vec4<u32>(0u, u_input.b.x, var_1, 52184u), vec3<bool>(false, var_0.x, var_0.x), 1740f, vec3<i32>(8704i, -1i, u_input.d.x), u_input.c.yy))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1115f), _wgslsmith_f_op_f32(f32(-1f) * -252f))))), vec3<i32>(select(u_input.d.x, 35407i, var_0.x) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(u_input.d.x, u_input.d.x, u_input.a)), ~(-u_input.a), ~37117i), countOneBits(u_input.b))).xx;
    var var_4 = Struct_1(~u_input.d.x, vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), max(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(2147483647i, 3902i))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a, 68598i), _wgslsmith_sub_i32(u_input.d.x, u_input.d.x), 0i, ~(-28624i)), -abs(vec4<i32>(u_input.d.x, -6054i, -2147483647i, u_input.d.x))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-47314i, -14179i, u_input.d.x, u_input.a), reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, -12872i, u_input.d.x))), u_input.a), 1i), vec2<u32>(u_input.c.x, ~abs(~u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1058f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return vec4<i32>(1i, 2147483647i, i32(-1i) * -9286i, -18626i);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: f32) -> i32 {
    let var_0 = arg_1.wy;
    let var_1 = Struct_1(-_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 0i, -12724i), -vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i)) | u_input.a, reverseBits(func_2()), ~u_input.b, arg_1.x);
    var var_2 = Struct_2(u_input.c, select(!(!(!vec3<bool>(arg_0.x, true, true))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, arg_0.x, true), arg_0.x), func_3(Struct_2(u_input.c, vec3<bool>(true, false, arg_0.x), var_1.d, var_1.b.zxy, vec2<u32>(var_1.c.x, u_input.b.x)), -1175f, Struct_2(vec4<u32>(var_1.c.x, 20280u, 89387u, u_input.b.x), vec3<bool>(arg_0.x, arg_0.x, true), var_1.d, var_1.b.xxz, vec2<u32>(4890u, 14061u))), !vec3<bool>(arg_0.x, true, false)), select(vec3<bool>(false, all(vec4<bool>(false, true, false, arg_0.x)), false), select(func_3(Struct_2(vec4<u32>(0u, var_1.c.x, 1u, 1u), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), -1427f, vec3<i32>(1i, var_1.b.x, u_input.d.x), vec2<u32>(u_input.b.x, 57009u)), -2775f, Struct_2(vec4<u32>(6708u, u_input.c.x, u_input.b.x, 4294967295u), vec3<bool>(false, arg_0.x, arg_0.x), -1449f, var_1.b.wwz, vec2<u32>(var_1.c.x, 1u))), vec3<bool>(arg_0.x, arg_0.x, false), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, true, true), false)), !vec3<bool>(true, arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(ceil(1000f)), firstLeadingBit(var_1.b.xww), ~select(var_1.c & max(u_input.b, vec2<u32>(28115u, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1u, 28542u), u_input.c), 1u), true));
    var var_3 = arg_0.x;
    let var_4 = _wgslsmith_sub_u32(~reverseBits(u_input.b.x), 79929u);
    return select(-34642i, _wgslsmith_clamp_i32(min(min(u_input.a ^ var_2.d.x, -12046i), var_1.b.x), var_1.a, ~var_2.d.x), var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(func_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(259f, -749f, 2389f, -679f))), -949f) ^ 1i, (u_input.d.x | _wgslsmith_dot_vec3_i32(vec3<i32>(-43620i, u_input.a, 5867i), reverseBits(vec3<i32>(u_input.a, -52579i, u_input.d.x)))) << (_wgslsmith_sub_u32(countOneBits(u_input.b.x), ~select(u_input.b.x, 25252u, false)) % 32u));
    let var_1 = Struct_2(countOneBits(u_input.c), func_3(Struct_2(reverseBits(vec4<u32>(u_input.c.x, u_input.b.x, 54917u, 4294967295u)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(trunc(-577f)), vec3<i32>(var_0.x, -17907i, var_0.x) | ~vec3<i32>(1i, u_input.a, -26176i), _wgslsmith_sub_vec2_u32(vec2<u32>(6180u, 58911u), u_input.b)), 253f, Struct_2(vec4<u32>(4294967295u, 11820u, 6445u, 57317u) ^ vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 17928u), vec3<bool>(true, any(vec2<bool>(false, false)), true), -563f, vec3<i32>(_wgslsmith_mult_i32(var_0.x, -2147483647i), ~(-29190i), -34660i), vec2<u32>(~0u, ~u_input.c.x))), 590f, vec3<i32>(var_0.x, var_0.x, select(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-31082i, 5622i, u_input.d.x), vec3<i32>(u_input.a, u_input.a, u_input.d.x), false), vec3<i32>(2147483647i, 18198i, 28488i) ^ vec3<i32>(8195i, -2757i, var_0.x)), func_1(vec2<bool>(true, true), vec4<f32>(-909f, -934f, -1085f, -2428f), _wgslsmith_f_op_f32(367f + -689f)), !(-78409i == var_0.x))), _wgslsmith_div_vec2_u32(abs(u_input.c.wz), u_input.c.xy << (~u_input.b % vec2<u32>(32u))) >> (u_input.b % vec2<u32>(32u)));
    var_0 = -min(~_wgslsmith_clamp_vec2_i32(firstTrailingBit(var_1.d.yy), vec2<i32>(97037i, 49066i), var_1.d.xx), vec2<i32>(firstTrailingBit(_wgslsmith_mod_i32(u_input.a, -2147483647i)), var_1.d.x));
    var var_2 = var_1;
    let var_3 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer((18043i & _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_2.d.zz, vec2<i32>(29280i, var_2.d.x)), ~var_2.d.yy)) & ~var_3, var_2.a, ~(var_2.d.x & -(~var_0.x)), _wgslsmith_dot_vec2_u32(firstTrailingBit(firstTrailingBit(var_1.a.zy)), var_1.e), ~select(~vec4<u32>(0u, 11064u, 1u, var_2.a.x), _wgslsmith_mod_vec4_u32(var_1.a & var_2.a, _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(4294967295u, 0u, 86164u, 57601u))), !vec4<bool>(true, false, var_2.b.x, var_2.b.x)));
}

