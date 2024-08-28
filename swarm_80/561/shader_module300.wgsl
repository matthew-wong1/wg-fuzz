struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    global0 = _wgslsmith_div_u32(u_input.c.x, u_input.c.x);
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1486f, -1000f, _wgslsmith_f_op_f32(trunc(-1022f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f - 775f), -929f, -1230f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1684f, 1114f, 1000f)))));
    let var_1 = u_input.b.x & firstLeadingBit(_wgslsmith_sub_i32(u_input.d.x, ~_wgslsmith_add_i32(-42086i, u_input.b.x)));
    let var_2 = -(u_input.a & ~_wgslsmith_dot_vec3_i32(u_input.d, u_input.d)) <= countOneBits(-firstLeadingBit(countOneBits(0i)));
    let var_3 = u_input.c;
    return ~vec3<u32>(abs(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(74457u, 4294967295u, var_3.x), vec3<u32>(1u, 0u, 0u)), ~u_input.c.x)), max(_wgslsmith_mod_u32(~u_input.c.x, ~var_3.x), u_input.c.x), var_3.x);
}

fn func_2() -> Struct_1 {
    global0 = 4294967295u;
    let var_0 = u_input.b.x;
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, u_input.c.x, u_input.c.x, 3487u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u) >> (vec4<u32>(6843u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.c.x, 62961u, 3079u, 32836u), abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), vec4<u32>(u_input.c.x, 13949u, u_input.c.x, ~u_input.c.x ^ ~1u)), _wgslsmith_dot_vec3_u32(~max(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(1u, u_input.c.x, u_input.c.x)) << (vec3<u32>(1u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 69163u), vec2<u32>(u_input.c.x, 29739u))) % vec3<u32>(32u)), func_3()), u_input.c.x, ~select(_wgslsmith_add_u32(u_input.c.x >> (18706u % 32u), u_input.c.x), firstTrailingBit(_wgslsmith_mult_u32(53156u, u_input.c.x)), !(15671i < u_input.a)));
    global0 = reverseBits(~countOneBits(var_1.x & u_input.c.x));
    let var_2 = Struct_1(~_wgslsmith_div_u32(4294967295u, ~1u), -(vec4<i32>(u_input.b.x, reverseBits(u_input.b.x), _wgslsmith_mod_i32(0i, 14233i), 2147483647i) & _wgslsmith_div_vec4_i32(vec4<i32>(var_0, 26106i, -21505i, var_0) | vec4<i32>(u_input.d.x, u_input.a, u_input.b.x, -12024i), countOneBits(vec4<i32>(var_0, u_input.a, 9507i, u_input.d.x)))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true))), _wgslsmith_sub_i32(-(-2147483647i >> (u_input.c.x % 32u)) >> (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, var_1.x, u_input.c.x), func_3().x, ~0u) % 32u), _wgslsmith_mult_i32(~var_0, reverseBits(var_0))));
    return Struct_1(~_wgslsmith_add_u32(38115u, firstLeadingBit(_wgslsmith_add_u32(u_input.c.x, var_2.a))), var_2.b ^ (vec4<i32>(-1i) * -var_2.b), false, u_input.b.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = abs(arg_0);
    global0 = u_input.c.x;
    var var_1 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(-_wgslsmith_mult_i32(-39265i, -1i), arg_2.d));
    return vec4<i32>(~(-abs(-31009i) << (var_0.x % 32u)), arg_2.d, arg_2.d, _wgslsmith_sub_i32(arg_2.d ^ max(-43363i, u_input.a), arg_2.d));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>) -> bool {
    let var_0 = ~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-(~vec4<i32>(u_input.b.x, 495i, 1009i, arg_1.x)), min(vec4<i32>(2147483647i, arg_1.x, -32651i, arg_1.x), vec4<i32>(28583i, 0i, arg_0.x, 0i)) | (vec4<i32>(arg_0.x, arg_1.x, 2147483647i, 1i) & vec4<i32>(u_input.b.x, arg_1.x, 1i, -2147483647i))), func_4(vec3<u32>(_wgslsmith_mod_u32(1u, 1u), ~u_input.c.x, _wgslsmith_mod_u32(1u, u_input.c.x)), -329f, func_2()));
    global0 = ~(~countOneBits(u_input.c.x)) | u_input.c.x;
    let var_1 = -1759f;
    global0 = ~u_input.c.x;
    global0 = 1u;
    return func_2().c;
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1776f, 598f, -1692f, -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-167f, -1128f, 169f, -2839f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1694f), _wgslsmith_f_op_f32(step(-808f, -1814f)), _wgslsmith_f_op_f32(884f * -955f), _wgslsmith_f_op_f32(975f - -111f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1495f, 265f, 1000f, -964f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 180f, -1378f, -1479f), vec4<f32>(-123f, -180f, -1373f, 137f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-498f, -373f, var_0.x, var_0.x), vec4<f32>(518f, var_0.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 581f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, -493f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, 292f, -1921f))))))));
    var var_1 = vec2<bool>(false, (arg_0 < ~2147483647i) | (arg_1.a < 4294967295u));
    let var_2 = 830f;
    var var_3 = Struct_1(0u, vec4<i32>(select(-2147483647i, -1i, func_2().c), u_input.d.x, firstTrailingBit(arg_0) & 1i, _wgslsmith_mod_i32(65930i, _wgslsmith_mod_i32(-1i, -7328i))) ^ _wgslsmith_sub_vec4_i32(select(func_2().b, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -27658i, -1i, u_input.b.x), vec4<i32>(-35631i, 24714i, u_input.d.x, 65782i)), false), vec4<i32>(~14545i, -30417i ^ arg_0, 8564i, -41287i)), any(!(!select(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), true))), _wgslsmith_sub_i32(i32(-1i) * -33605i, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), ~u_input.d.x)) | (firstTrailingBit(u_input.d.x) >> (arg_1.a % 32u)));
    return Struct_2(~(~(var_3.a & var_3.a) << (~_wgslsmith_clamp_u32(0u, var_3.a, 58311u) % 32u)), vec2<bool>(arg_1.b.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, vec4<i32>(-(25323i << (u_input.c.x % 32u)) ^ abs(~u_input.a), -u_input.b.x, 51983i, -8866i), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)) || (_wgslsmith_f_op_f32(_wgslsmith_div_f32(499f, -830f) * _wgslsmith_div_f32(-228f, -528f)) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -189f)))), u_input.b.x);
    let var_1 = func_5(0i, Struct_2(_wgslsmith_mod_u32(~_wgslsmith_add_u32(0u, var_0.a), u_input.c.x), vec2<bool>(func_1(vec3<i32>(-2147483647i, var_0.d, 1i), vec3<i32>(-14295i, u_input.a, 2147483647i)) | (u_input.c.x < var_0.a), !var_0.c)));
    var var_2 = -1964f;
    var var_3 = Struct_2(96390u, func_5(_wgslsmith_add_i32(-(~var_0.d), min(u_input.b.x, max(0i, -1955i))), Struct_2(~var_0.a, var_1.b)).b);
    var var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(-1i), ~u_input.a, ~(var_0.d << (0u % 32u)), _wgslsmith_dot_vec3_i32(var_0.b.xwx, select(-var_0.b.zzz, func_2().b.yzx, select(vec3<bool>(false, var_3.b.x, var_1.b.x), vec3<bool>(var_1.b.x, var_1.b.x, var_0.c), false)))), -var_0.b);
    let var_5 = ~var_0.b;
    var var_6 = firstTrailingBit(_wgslsmith_div_u32(var_0.a, _wgslsmith_mult_u32(~var_3.a, ~_wgslsmith_sub_u32(var_0.a, u_input.c.x))));
    let var_7 = func_5(1i, func_5(var_0.d, var_1));
    let var_8 = func_5(-1520i, var_7);
    let x = u_input.a;
    s_output = StorageBuffer(1229f, ~abs(~_wgslsmith_mod_u32(1u, var_1.a)), var_1.a ^ _wgslsmith_dot_vec2_u32(u_input.c << (~u_input.c % vec2<u32>(32u)), ~select(u_input.c, vec2<u32>(var_1.a, 0u), var_7.b)), 1i, vec2<f32>(-513f, 1165f));
}

