struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -1176f), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 2750f), vec2<f32>(arg_1, 150f))), vec2<f32>(_wgslsmith_f_op_f32(arg_1 + -913f), arg_1)) + vec2<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(627f + -664f))), -8412i, ~0i, ~(~4294967295u), -596f);
    var var_1 = Struct_3(select(abs(vec4<u32>(u_input.b, u_input.a.x, 36667u, 2670u)), vec4<u32>(arg_0.x, var_0.d, var_0.d, 4294967295u), vec4<bool>(true, true, true, true)) | (vec4<u32>(~u_input.b, ~var_0.d, firstLeadingBit(77406u), arg_2) >> (~countOneBits(vec4<u32>(arg_0.x, arg_2, var_0.d, 24268u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) - _wgslsmith_f_op_f32(floor(2548f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1, arg_1))), 284f))), !(!vec3<bool>(true, false, any(vec3<bool>(false, true, true)))), reverseBits(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(26893i, -19629i, var_0.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(15597i, var_0.c, var_0.b), vec3<i32>(8468i, 53827i, -53261i), vec3<i32>(var_0.c, var_0.c, -58541i))))), Struct_2(vec3<u32>(1u, arg_2, _wgslsmith_add_u32(reverseBits(var_0.d), _wgslsmith_sub_u32(arg_2, arg_0.x))), vec2<u32>(min(u_input.b, arg_2 << (arg_2 % 32u)), countOneBits(reverseBits(u_input.a.x))), vec2<bool>((var_0.c >= -1i) & (var_0.b > var_0.c), any(vec4<bool>(true, true, false, true)))));
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1895f + var_1.b.x))), _wgslsmith_f_op_f32(round(1296f)), _wgslsmith_f_op_f32(-1116f + _wgslsmith_f_op_f32(1000f * 2005f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), -394f, _wgslsmith_f_op_f32(var_0.a.x - var_1.b.x))))), vec3<bool>((false && !var_1.c.x) | !(var_0.d <= 80652u), -64752i < var_0.b, var_1.e.c.x), _wgslsmith_mult_vec3_i32(abs(~_wgslsmith_clamp_vec3_i32(vec3<i32>(33634i, 0i, -22738i), vec3<i32>(var_0.c, -3308i, var_1.d.x), vec3<i32>(3285i, 0i, 1i))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_0.c, var_1.d.x, 0i), var_0.c, 1i), var_1.d)), Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(~0u, ~39926u, arg_0.x), vec3<u32>(countOneBits(u_input.b), ~0u, ~3704u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(51569u, 64844u), vec2<u32>(var_0.d, arg_0.x), u_input.a.yy) >> (countOneBits(var_1.a.yz) % vec2<u32>(32u)), var_1.c.yy));
    let var_2 = var_1.e;
    var var_3 = Struct_1(var_1.b.yz, countOneBits(~_wgslsmith_add_i32(-1i << (var_2.a.x % 32u), 1i)), var_0.b, abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 0u), 0u), 5886u)), _wgslsmith_f_op_f32(f32(-1f) * -433f));
    return (var_1.d.x ^ ~0i) | _wgslsmith_mult_i32(-(~var_3.c ^ _wgslsmith_div_i32(-2147483647i, -2147483647i)), reverseBits(var_0.b));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-478f, 571f) * _wgslsmith_f_op_f32(f32(-1f) * -1605f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1097f * 683f)))), i32(-1i) * -_wgslsmith_mod_i32(func_3(u_input.a, -972f, 0u), 60250i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(~(-39703i), 44610i, 1i) & 36480i, firstLeadingBit(~(-1i))), u_input.b, -636f);
    let var_1 = Struct_2(u_input.a << (firstLeadingBit(~_wgslsmith_mod_vec3_u32(u_input.a, u_input.a)) % vec3<u32>(32u)), u_input.a.yx, select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(true, 1u > var_0.d), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), true), vec2<bool>(!all(vec3<bool>(false, false, false)), true)));
    var var_2 = ~abs((vec4<i32>(4053i, 4931i, var_0.b, -17576i) << (vec4<u32>(0u, u_input.a.x, var_0.d, 7974u) % vec4<u32>(32u))) << (~vec4<u32>(21922u, var_0.d, 40528u, var_0.d) % vec4<u32>(32u))) & vec4<i32>(-21306i, ~1i, -44487i, var_0.c);
    var var_3 = select(var_1.c, vec2<bool>(var_1.c.x, !select(!var_1.c.x, all(vec4<bool>(false, false, false, var_1.c.x)), !var_1.c.x)), vec2<bool>(countOneBits(_wgslsmith_sub_i32(13303i, -3691i)) <= var_0.c, var_1.c.x));
    var_3 = select(vec2<bool>(var_3.x, all(vec4<bool>(!var_1.c.x, -45564i >= var_0.b, false, false))), !select(vec2<bool>(true, !var_1.c.x), !(!var_1.c), all(select(vec3<bool>(false, var_1.c.x, var_3.x), vec3<bool>(true, false, var_1.c.x), vec3<bool>(true, false, var_3.x)))), all(var_1.c));
    return reverseBits(4294967295u);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = vec2<u32>((countOneBits(0u) & (4061u | arg_0.d)) ^ (~arg_2.d << ((arg_0.d << (arg_2.d % 32u)) % 32u)), func_2()) >> (_wgslsmith_mod_vec2_u32(~u_input.a.zy, select(~select(u_input.a.xz, u_input.a.yy, true), min(u_input.a.yz, vec2<u32>(u_input.b, arg_2.d)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))) % vec2<u32>(32u));
    let var_1 = Struct_2(u_input.a, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~38733u, var_0.x, ~var_0.x), ~vec3<u32>(arg_0.d, 1469u, arg_0.d)), ~(~arg_2.d)), vec2<bool>(true, true));
    let var_2 = arg_2.d;
    var var_3 = countOneBits(~var_1.b & var_1.a.xy);
    let var_4 = any(select(vec4<bool>(arg_3.x < arg_2.e, true || var_1.c.x, !all(vec3<bool>(var_1.c.x, var_1.c.x, false)), !all(var_1.c)), !(!select(vec4<bool>(var_1.c.x, var_1.c.x, false, var_1.c.x), vec4<bool>(true, false, var_1.c.x, false), vec4<bool>(false, true, var_1.c.x, true))), true));
    return vec2<u32>(0u, firstTrailingBit(~(~(u_input.b & 10947u))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.b.yx), arg_2.d.x, _wgslsmith_add_i32(-2147483647i, 31492i), reverseBits(~_wgslsmith_sub_u32(arg_0.a.x, arg_0.a.x) ^ _wgslsmith_mod_u32(arg_0.b.x ^ 38905u, arg_0.b.x)), arg_3);
    var var_1 = Struct_3(min(~select(arg_2.a, arg_2.a, arg_0.c.x) << (vec4<u32>(arg_0.b.x, 2022u, arg_0.b.x, countOneBits(33534u)) % vec4<u32>(32u)), select(~arg_2.a, max(max(arg_2.a, vec4<u32>(8757u, u_input.a.x, 4294967295u, 34465u)), vec4<u32>(arg_2.e.a.x, u_input.a.x, arg_1, u_input.b)), all(arg_0.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.b.x, 1376f, var_0.e)))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.e)), 251f, arg_2.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-551f, var_0.e, -399f) * arg_2.b)))), true)), arg_2.c, arg_2.d, Struct_2(firstLeadingBit(u_input.a), vec2<u32>((arg_0.a.x << (var_0.d % 32u)) | 0u, 1u), select(vec2<bool>(arg_2.e.c.x == false, arg_0.c.x), arg_2.c.yx, func_1(Struct_1(arg_2.b.yx, -1i, 2147483647i, 1u, 1235f), -2147483647i, Struct_1(vec2<f32>(arg_2.b.x, -1674f), arg_2.d.x, arg_2.d.x, u_input.b, 2198f), arg_2.b).x > ~51004u)));
    var_1 = arg_2;
    let var_2 = var_0.e;
    return Struct_2(arg_2.a.xzw, vec2<u32>(0u, arg_2.a.x), !arg_2.c.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)))), true);
    let var_1 = func_4(Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(min(1u, 33717u), abs(u_input.a.x), reverseBits(0u)), ~vec3<u32>(1u, u_input.b, u_input.b), ~_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.b, 27918u, u_input.a.x))), func_1(Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(318f, 1000f))), ~1i, _wgslsmith_div_i32(12866i, -2147483647i), u_input.a.x, -505f), min(~(-24331i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -30379i, 0i, -2147483647i), vec4<i32>(-18988i, -2147483647i, -1i, -1i))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(858f, 1009f)), ~28505i, 1i, ~4294967295u, _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(848f, 1000f, -1272f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(223f, -1459f, 420f)))), vec2<bool>(0u <= ~u_input.b, all(vec2<bool>(true, true)))), ~u_input.b, Struct_3(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 0u, 45753u), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 31235u, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.a.x, 39550u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 39966u)), _wgslsmith_div_vec4_u32(vec4<u32>(12908u, 1u, 1u, 0u), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 4294967295u)), vec4<u32>(u_input.b, u_input.b, 46356u, 47913u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1816f, 1168f, 1522f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2152f, 1169f, -864f) + vec3<f32>(964f, 1866f, 1000f)))), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), reverseBits(~(-vec3<i32>(-12178i, -42244i, 1i))), Struct_2(u_input.a, vec2<u32>(u_input.b ^ 1u, 1u), select(select(vec2<bool>(false, true), vec2<bool>(false, var_0.x), true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-302f * -903f))))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(552f - _wgslsmith_f_op_f32(trunc(1146f))))));
    let var_2 = abs(firstTrailingBit((vec4<u32>(var_1.a.x, u_input.b, 1u, u_input.a.x) ^ vec4<u32>(var_1.a.x, var_1.a.x, 1u, u_input.b)) ^ min(vec4<u32>(var_1.b.x, u_input.b, 1u, 3213u), vec4<u32>(50466u, 0u, 4294967295u, u_input.a.x))) & ~vec4<u32>(_wgslsmith_sub_u32(var_1.a.x, 92773u), 1u, ~u_input.a.x, firstLeadingBit(var_1.a.x)));
    var_0 = var_1.c;
    let var_3 = 19834u;
    let x = u_input.a;
    s_output = StorageBuffer(-23810i, firstLeadingBit(1i));
}

