struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_1 = i32(-1i) * -u_input.c.x;
    let var_2 = vec3<i32>(15468i, u_input.a, -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -24562i, -1i, 1i), vec4<i32>(u_input.c.x, 0i, u_input.a, -2147483647i)), 0i) | -46097i);
    var var_3 = Struct_1(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), true), vec4<bool>(any(vec4<bool>(false, false, true, false)), any(vec3<bool>(true, true, true)), select(u_input.c.x == 15817i, true, true), true | any(vec3<bool>(true, false, false))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.a), _wgslsmith_sub_vec2_i32(u_input.c.xz, u_input.c.yy)) >= _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1, u_input.a), -2147483647i, ~var_1)), !(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_3 = Struct_1(vec4<bool>(all(!(!vec3<bool>(true, true, var_3.a.x))), var_3.b.x, var_3.b.x, !var_3.b.x), select(select(select(vec2<bool>(false, true), vec2<bool>(false, var_3.a.x), true), vec2<bool>(select(var_3.b.x, true, var_3.b.x), true), var_3.a.yy), !var_3.b, any(var_3.a.yzz) | !var_3.a.x));
    return ~(~vec4<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 1i), -u_input.c.zx), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1, u_input.c.x), ~var_1), ~0i));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> bool {
    var var_0 = func_3();
    var_0 = vec4<i32>(-firstTrailingBit(reverseBits(18298i)), var_0.x, var_0.x | 5449i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-35541i, ~0i, 2147483647i, 2147483647i), -vec4<i32>(1i, var_0.x, u_input.a, -28042i)), countOneBits(func_3().x), ~_wgslsmith_sub_i32(var_0.x, ~(-36177i))));
    let var_1 = Struct_1(!(!vec4<bool>(false, false, true, !arg_1)), !vec2<bool>(!(!arg_1), true));
    let var_2 = (select(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, 1u, 4294967295u), vec4<u32>(4294967295u, u_input.d.x, 22318u, 4294967295u)), firstTrailingBit(firstLeadingBit(vec4<u32>(1u, 4294967295u, u_input.b, u_input.d.x))), vec4<bool>(!arg_1, false, any(vec2<bool>(var_1.a.x, var_1.b.x)), var_1.b.x)) >> (firstTrailingBit(~firstTrailingBit(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x))) % vec4<u32>(32u))) | select(~select(vec4<u32>(1u, u_input.b, u_input.d.x, u_input.d.x), vec4<u32>(25082u, 8791u, 0u, 19775u), vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x)) | _wgslsmith_div_vec4_u32(~vec4<u32>(11666u, u_input.b, 12484u, 18535u), abs(vec4<u32>(u_input.d.x, 19488u, 2861u, 4294967295u))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(7596u, 4294967295u, u_input.d.x, u_input.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(10504u, 47028u, 22875u, u_input.b), vec4<u32>(89568u, u_input.d.x, 1u, u_input.b), vec4<u32>(90621u, 1u, 4294967295u, 61185u)), min(vec4<u32>(u_input.d.x, u_input.b, u_input.b, 16139u), vec4<u32>(u_input.b, 43113u, 43886u, u_input.b)))), any(!vec3<bool>(true, var_1.a.x, var_1.a.x)));
    var var_3 = ~arg_0.x <= var_0.x;
    return var_1.b.x || all(select(var_1.b, select(select(var_1.a.yw, vec2<bool>(true, true), arg_1), var_1.b, var_1.b.x), arg_1));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    var var_0 = 7585u;
    var_0 = ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~7116u, 31615u, select(arg_0.x, u_input.b, true)), firstLeadingBit(select(_wgslsmith_mult_u32(31655u, 31183u), 15188u | arg_2, any(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, true)))));
    var_0 = ~countOneBits(arg_0.x & u_input.b);
    var_0 = max(~_wgslsmith_div_u32(arg_2, arg_2), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, _wgslsmith_div_u32(~19041u, select(1u, arg_2, arg_3.x)), ~4294967295u), ~((vec3<u32>(27233u, u_input.d.x, 0u) << (vec3<u32>(1u, arg_0.x, u_input.d.x) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(43201u, u_input.d.x, 1u), vec3<u32>(u_input.b, arg_2, 0u)) % vec3<u32>(32u)))));
    let var_1 = Struct_1(vec4<bool>(select(any(vec4<bool>(arg_3.x, arg_3.x, false, true)) || arg_3.x, true, all(vec3<bool>(false, arg_3.x, false))), any(select(select(arg_3, vec2<bool>(arg_3.x, arg_3.x), vec2<bool>(arg_3.x, arg_3.x)), select(vec2<bool>(arg_3.x, arg_3.x), vec2<bool>(arg_3.x, arg_3.x), arg_3), false)), u_input.d.x >= 4294967295u, false), !vec2<bool>(arg_3.x, func_2(firstLeadingBit(u_input.c), true)));
    return _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, u_input.d.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 29714u, 103530u, 41982u), vec4<u32>(arg_2, arg_2, arg_2, arg_2))), 1u, arg_0.x)), ~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 0u, u_input.d.x, 1u) ^ vec4<u32>(arg_2, 0u, arg_0.x, u_input.b), vec4<u32>(23892u, 57100u, 83076u, 9965u), min(vec4<u32>(68298u, arg_2, 20377u, 1u), vec4<u32>(u_input.d.x, arg_2, 25950u, arg_0.x))), vec4<u32>(~41947u, arg_2 & u_input.b, _wgslsmith_add_u32(arg_0.x, 4294967295u), arg_2)));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = 33757u & func_4(u_input.d, arg_0.x, ~0u, vec2<bool>(func_2(u_input.c << (vec3<u32>(1u, 15102u, u_input.b) % vec3<u32>(32u)), all(vec4<bool>(true, true, false, true))), false));
    var var_1 = ~2147483647i;
    var_1 = ~(~_wgslsmith_clamp_i32(-func_3().x, _wgslsmith_div_i32(arg_1, -1i) << (var_0 % 32u), -1i));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(step(560f, 1402f))), -303f, arg_0.x) + arg_0));
    let var_3 = ~(~(~select(countOneBits(vec3<u32>(4294967295u, u_input.d.x, 19616u)), vec3<u32>(u_input.b, 19119u, 51796u), true)));
    return Struct_1(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), 22660u > u_input.d.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), true || any(vec4<bool>(true, false, true, false)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-var_2.x) == _wgslsmith_f_op_f32(1371f * 346f))), vec2<bool>(!all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true))), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-710f * 143f), _wgslsmith_f_op_f32(f32(-1f) * -605f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2021f - 988f), -1000f)))) - _wgslsmith_f_op_f32(-1206f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(217f, 1182f)))))));
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0, -1206f), _wgslsmith_f_op_f32(-688f * -1160f), _wgslsmith_f_op_f32(-var_0)))), -(~(-2147483647i)));
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, -545f, var_0))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1129f, var_0, 556f), vec3<f32>(-227f, -1424f, var_0)))))), _wgslsmith_mult_i32(-_wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.x, arg_3.x), 51490i), abs(~u_input.c.x)));
    let var_3 = var_2;
    var var_4 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, 929f, var_0))))))), -arg_0.x);
    return var_3;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    let var_0 = arg_1;
    var var_1 = arg_2.zz;
    var var_2 = 19963u;
    return (false & arg_0.x) & var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false || func_6(vec2<bool>(true, true), func_5(vec4<i32>(u_input.a, 13997i, -45496i, u_input.a), false, func_1(vec3<f32>(-370f, -1776f, -1994f), u_input.c.x), vec4<i32>(u_input.a, -20140i, 9336i, -49844i) & vec4<i32>(23327i, u_input.c.x, -60306i, u_input.a)), vec3<i32>(_wgslsmith_add_i32(1i, -2417i), max(u_input.a, u_input.a), _wgslsmith_add_i32(u_input.c.x, u_input.c.x))), true, any(vec2<bool>(all(vec2<bool>(true, true)), countOneBits(0u) <= (4294967295u | u_input.b))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-252f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-860f - -355f)))))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1543f);
    var var_2 = u_input.a;
    let var_3 = func_5(-vec4<i32>(1i, 75304i, -(-98963i << (u_input.b % 32u)), u_input.c.x), !func_5(vec4<i32>(u_input.c.x, -29273i, _wgslsmith_mod_i32(u_input.a, u_input.c.x), u_input.c.x), func_6(vec2<bool>(var_0.x, var_0.x), func_5(vec4<i32>(375i, u_input.a, u_input.c.x, -36974i), false, Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.yy), vec4<i32>(-2147483647i, -38162i, u_input.c.x, u_input.a)), vec3<i32>(u_input.a, u_input.c.x, u_input.a)), Struct_1(vec4<bool>(false, var_0.x, var_0.x, var_0.x), !var_0.xx), vec4<i32>(u_input.c.x, -18053i, i32(-1i) * -14514i, -24254i)).b.x, Struct_1(vec4<bool>(false, false, all(vec4<bool>(var_0.x, true, true, var_0.x)), true), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.xz)), vec4<i32>(firstLeadingBit((u_input.a ^ -1955i) | -23594i), u_input.c.x, -(_wgslsmith_mod_i32(u_input.a, 0i) << (countOneBits(u_input.b) % 32u)), _wgslsmith_add_i32(3101i, u_input.a >> (u_input.b % 32u))));
    let var_4 = func_5(vec4<i32>(-u_input.c.x, u_input.c.x, u_input.c.x, firstTrailingBit(20308i)), func_5(vec4<i32>(-1i) * -(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.d.x, 47418u, u_input.b, 0u) % vec4<u32>(32u))), true, var_3, firstTrailingBit(vec4<i32>(-6267i, _wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(2147483647i, u_input.c.x)), u_input.a & -62826i, -2147483647i))).a.x, var_3, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a & 6743i, ~u_input.a, ~u_input.a, u_input.c.x << (u_input.b % 32u)), abs(-vec4<i32>(-2147483647i, 2147483647i, u_input.a, -35265i))), ~(~vec4<i32>(u_input.c.x, 0i, 1i, -81007i))));
    let x = u_input.a;
    s_output = StorageBuffer(160f, _wgslsmith_sub_vec2_i32(~(~(vec2<i32>(u_input.c.x, -16260i) & u_input.c.xz)), _wgslsmith_div_vec2_i32(~(vec2<i32>(1i, u_input.a) << (vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u))), abs(u_input.c.xx) << (min(vec2<u32>(u_input.b, u_input.b), u_input.d) % vec2<u32>(32u)))));
}

