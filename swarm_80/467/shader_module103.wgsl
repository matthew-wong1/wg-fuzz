struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: f32) -> vec2<u32> {
    var var_0 = _wgslsmith_mult_u32(4294967295u, u_input.a.x);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2410f, arg_2, 736f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1311f, arg_2, arg_2) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, arg_2, arg_2)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(441f)), _wgslsmith_f_op_f32(arg_2 + arg_2))), -1053f, arg_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_2, arg_2))))), -(~arg_0 << (93508u % 32u)), Struct_1(countOneBits(reverseBits(countOneBits(vec4<u32>(arg_1, arg_1, 4294967295u, u_input.a.x)))), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), false), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), true), countOneBits(u_input.a.x | 14745u) >> (u_input.a.x % 32u), arg_2), arg_0);
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(10775i, ~select(var_1.e, arg_0, 1u <= var_1.d.a.x), firstTrailingBit(i32(-1i) * -arg_0)), ~firstTrailingBit(firstLeadingBit(var_1.e)) ^ -max(1i, -40721i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 0i, 1i), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(var_1.e, var_1.e, arg_0)), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.e, arg_0, 13713i) ^ vec3<i32>(17195i, var_1.c, 2147483647i), vec3<i32>(var_1.c, arg_0, -1i)))));
    var_0 = _wgslsmith_mult_u32(countOneBits(17712u), _wgslsmith_add_u32(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_clamp_u32(16161u, arg_1, u_input.a.x)), (60651u >> (u_input.a.x % 32u)) ^ ~9413u), firstLeadingBit(arg_1)));
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(23919u, arg_1, 21207u), _wgslsmith_clamp_u32(firstTrailingBit(~var_1.d.c), _wgslsmith_div_u32(29605u, var_1.d.a.x ^ 38482u), 16807u)), 11152u);
    return max(vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(arg_1), max(39696u, var_3), 0u), ~_wgslsmith_sub_u32(u_input.a.x, 4294967295u)), vec2<u32>(reverseBits(abs(4294967295u)), max(9005u, countOneBits(41000u)))) ^ (vec2<u32>(~(1u >> (arg_1 % 32u)), var_1.d.c) | (u_input.a & abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.a.x, var_1.d.a.x)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec4<u32>) -> u32 {
    let var_0 = Struct_1(vec4<u32>(u_input.a.x, 4294967295u, _wgslsmith_dot_vec2_u32(~func_3(0i, arg_2.x, 1244f), arg_2.yy), 52410u), vec2<bool>(any(vec2<bool>(true, true)), false), u_input.a.x, 1705f);
    var var_1 = vec2<u32>(~(~(firstLeadingBit(arg_2.x) ^ ~1u)), 1u);
    let var_2 = -arg_0.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, -1038f, -1633f) * vec3<f32>(1612f, var_0.d, -607f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, -1465f, var_0.d, 805f))), vec4<f32>(var_0.d, _wgslsmith_f_op_f32(min(var_0.d, -842f)), _wgslsmith_f_op_f32(step(var_0.d, var_0.d)), var_0.d)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_0.d + -974f), var_0.d, var_0.d, var_0.d))), select(vec4<bool>(false, var_0.b.x, true, select(false, false, false)), select(select(vec4<bool>(var_0.b.x, true, arg_1.x, true), vec4<bool>(false, true, arg_1.x, true), vec4<bool>(arg_1.x, false, arg_1.x, var_0.b.x)), select(vec4<bool>(var_0.b.x, true, var_0.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, arg_1.x, var_0.b.x), true), !vec4<bool>(false, false, var_0.b.x, arg_1.x)), arg_1.x))), -3435i, Struct_1(~arg_2, var_0.b, ~var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(763f))))))), var_2);
    let var_4 = !vec4<bool>(var_3.d.b.x, any(vec4<bool>(var_3.d.b.x | true, var_3.d.b.x, false, !var_0.b.x)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.d)) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-536f)), _wgslsmith_f_op_f32(f32(-1f) * -771f))));
    return ~_wgslsmith_dot_vec4_u32(arg_2, ~vec4<u32>(u_input.a.x & 4294967295u, var_1.x, var_0.a.x, _wgslsmith_sub_u32(1u, 0u)));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.d.d);
    var_0 = _wgslsmith_f_op_f32(-arg_2.a.x);
    var var_1 = arg_2.d;
    var var_2 = !arg_2.d.b.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d, var_1.d) - _wgslsmith_f_op_f32(ceil(arg_2.b.x)));
    return arg_2.d;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    return func_4(2147483647i, _wgslsmith_div_vec4_u32(vec4<u32>(~(5831u ^ u_input.a.x), func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(-47383i, -2147483647i), vec2<i32>(57529i, -9639i), vec2<i32>(17786i, -2147483647i)), !vec3<bool>(true, arg_0.x, arg_0.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), ~(0u ^ u_input.a.x), u_input.a.x), vec4<u32>(u_input.a.x, ~35807u, _wgslsmith_clamp_u32(1u, u_input.a.x, _wgslsmith_mult_u32(49735u, u_input.a.x)), 14102u)), Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1258f, -556f, 1213f), vec3<f32>(437f, 1095f, 622f), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-852f, 1009f, 356f))), vec3<f32>(-1000f, -1697f, 521f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, 492f, -1144f, 843f))))), -_wgslsmith_sub_i32(2147483647i, 0i), Struct_1(vec4<u32>(~0u, u_input.a.x, ~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 4294967295u)), !(!arg_0), u_input.a.x, _wgslsmith_f_op_f32(select(-710f, 1f, arg_0.x))), _wgslsmith_sub_i32(-1i, ~(~0i))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c, 4870u, _wgslsmith_dot_vec2_u32(vec2<u32>(~111809u, ~u_input.a.x), arg_0.a.xx | max(u_input.a, arg_0.a.zz)), ~35650u), ~(~arg_0.a >> (arg_1.a % vec4<u32>(32u))));
    var var_1 = _wgslsmith_add_u32(~max(arg_0.c, var_0.x), max(4294967295u, func_1(vec2<bool>(false, false)).c) >> (min(var_0.x, 4294967295u) % 32u)) ^ countOneBits(var_0.x);
    let var_2 = !(!vec4<bool>(false, true, arg_0.b.x, arg_1.b.x));
    var var_3 = arg_0.b.x;
    var var_4 = !(!any(select(select(var_2, vec4<bool>(false, arg_2, true, arg_0.b.x), true), vec4<bool>(arg_0.b.x, false, true, arg_2), !var_2.x)));
    return func_4(firstLeadingBit(_wgslsmith_clamp_i32(-24474i, -20787i, _wgslsmith_sub_i32(46608i, 1i))), arg_1.a, Struct_2(vec3<f32>(func_4(i32(-1i) * -1i, vec4<u32>(var_0.x, 0u, 17384u, 0u) | arg_1.a, Struct_2(vec3<f32>(679f, -1274f, 455f), vec4<f32>(-836f, arg_0.d, 425f, arg_0.d), 37505i, Struct_1(arg_0.a, vec2<bool>(var_2.x, arg_1.b.x), var_0.x, -153f), -2147483647i)).d, -764f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.d * arg_1.d)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-567f - arg_0.d), _wgslsmith_f_op_f32(min(arg_0.d, -315f)), 988f, _wgslsmith_f_op_f32(-arg_0.d)), vec4<f32>(1162f, 156f, _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(max(arg_1.d, arg_1.d))))), -15156i, func_1(!select(arg_0.b, vec2<bool>(false, true), arg_1.b.x)), firstTrailingBit(-15087i)));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = func_4(-19875i, _wgslsmith_clamp_vec4_u32(arg_3.d.a, ~(~_wgslsmith_clamp_vec4_u32(arg_3.d.a, arg_3.d.a, vec4<u32>(1u, 82655u, arg_3.d.c, arg_0.c))), vec4<u32>(arg_0.c, ~_wgslsmith_dot_vec4_u32(arg_3.d.a, arg_3.d.a), ~(arg_0.a.x & arg_0.a.x), 4294967295u)), Struct_2(arg_3.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(-1826f * arg_2), -701f, _wgslsmith_f_op_f32(abs(989f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_3.b, vec4<f32>(arg_3.d.d, -428f, -100f, 722f)), _wgslsmith_f_op_vec4_f32(arg_3.b * vec4<f32>(arg_3.a.x, -383f, arg_3.b.x, arg_2)), !vec4<bool>(arg_3.d.b.x, false, arg_3.d.b.x, false)))), _wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), arg_3.e, -1i), Struct_1(arg_3.d.a, !arg_3.d.b, 0u, _wgslsmith_f_op_f32(f32(-1f) * -598f)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-15186i, -1i, 729i, 31545i), abs(vec4<i32>(2147483647i, arg_3.c, -3611i, -31358i)), firstLeadingBit(vec4<i32>(-1i, 2766i, 0i, 0i))), vec4<i32>(0i, arg_3.c, -24642i, i32(-1i) * -1i)))).b.x;
    var_0 = any(!arg_0.b);
    var var_1 = arg_0;
    var_1 = Struct_1(vec4<u32>(abs(u_input.a.x), countOneBits(~4294967295u), arg_3.d.a.x, var_1.c), select(select(func_4(max(-11511i, -27174i), abs(vec4<u32>(1u, arg_0.a.x, var_1.a.x, u_input.a.x)), arg_3).b, var_1.b, func_1(select(vec2<bool>(arg_0.b.x, var_1.b.x), var_1.b, true)).b), arg_3.d.b, false), ~(~(~1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1198f, -1787f, arg_1)), arg_2));
    let var_2 = arg_0;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(abs(_wgslsmith_mod_u32(14151u, firstLeadingBit(u_input.a.x) ^ ~4294967295u)), ~4294967295u);
    var_0 = select(~_wgslsmith_clamp_u32(41793u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 37799u, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))), 1u), u_input.a.x, any(!vec3<bool>(u_input.a.x == u_input.a.x, u_input.a.x >= 4294967295u, true)));
    var_0 = u_input.a.x;
    let var_1 = func_6(func_5(func_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), func_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), all(vec4<bool>(true, false, false, false)))), true), !(0u == u_input.a.x), _wgslsmith_f_op_f32(-1f), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(561f, 314f, _wgslsmith_f_op_f32(1599f + -1240f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1040f, -991f, 583f), vec3<f32>(1668f, -284f, -657f), vec3<bool>(false, false, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-739f, 636f, -1147f, -435f))) + _wgslsmith_div_vec4_f32(vec4<f32>(555f, -211f, 1000f, 584f), vec4<f32>(2059f, -210f, -1400f, 909f)))), _wgslsmith_div_i32(firstLeadingBit(countOneBits(-57674i)), -1i), func_4(~2147483647i << (_wgslsmith_add_u32(48548u, u_input.a.x) % 32u), min(vec4<u32>(u_input.a.x, 32870u, 0u, u_input.a.x), max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x))), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1206f, -869f, -1000f), vec3<f32>(-694f, -1000f, 1510f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-179f, 240f, -1000f, 1474f)), ~2147483647i, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec2<bool>(false, false), 4294967295u, -1000f), 0i)), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(-31248i, -2147483647i, -3353i, 29340i), vec4<i32>(-24314i, -1i, 0i, 75181i))));
    var_0 = 66908u;
    let var_2 = !(!vec3<bool>(var_1.d.b.x, all(vec4<bool>(false, var_1.d.b.x, var_1.d.b.x, var_1.d.b.x)), var_1.d.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.a.zxy, -var_1.e, 24723i);
}

