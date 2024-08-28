struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(544f)), _wgslsmith_f_op_f32(f32(-1f) * -820f), arg_1))))), u_input.a.x);
}

fn func_3(arg_0: vec3<u32>) -> vec3<u32> {
    var var_0 = -(_wgslsmith_add_i32(min(-5564i, reverseBits(u_input.b)), 0i) | -_wgslsmith_mod_i32(0i, u_input.a.x));
    var var_1 = ~abs(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.b, 0i), vec4<i32>(u_input.a.x, 20648i, -1i, u_input.b)) | (vec4<i32>(u_input.a.x, 18354i, u_input.a.x, 22505i) ^ vec4<i32>(u_input.a.x, -1i, 14420i, 1i))) >> (vec4<u32>(~_wgslsmith_div_u32(u_input.c, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c, ~u_input.c, 7814u, u_input.c), ~firstTrailingBit(vec4<u32>(1940u, 44938u, u_input.c, 98526u))), u_input.c, arg_0.x) % vec4<u32>(32u));
    var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-(~abs(vec4<i32>(u_input.a.x, u_input.b, u_input.b, var_1.x))), -(~(vec4<i32>(2147483647i, -37799i, var_1.x, -18660i) & vec4<i32>(var_1.x, 2147483647i, -14917i, 2147483647i)))), countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 0i, u_input.d, 34552i), vec4<i32>(13284i, u_input.a.x, u_input.d, u_input.b)) & vec4<i32>(54739i, var_1.x, -50714i, u_input.b), vec4<i32>(-1i) * -vec4<i32>(-47283i, 1i, 1i, u_input.d), select(countOneBits(vec4<i32>(var_1.x, -23610i, u_input.a.x, var_1.x)), countOneBits(vec4<i32>(21211i, u_input.b, var_1.x, -1i)), vec4<bool>(true, true, true, true)))));
    var var_2 = (u_input.c << (firstLeadingBit(arg_0.x) % 32u)) & ~72582u;
    var_2 = _wgslsmith_mult_u32(u_input.c, ~(~u_input.c >> ((_wgslsmith_clamp_u32(u_input.c, arg_0.x, 4294967295u) ^ 65262u) % 32u)));
    return _wgslsmith_sub_vec3_u32(~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(103848u, arg_0.x, 4294967295u), vec3<u32>(u_input.c, arg_0.x, 90833u)))), ~(~abs(~arg_0)));
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(-930f, -1105f, 1377f), reverseBits(_wgslsmith_clamp_i32(u_input.a.x, -1i, 7608i | u_input.b)));
    let var_1 = func_1(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(ceil(-353f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-496f + var_0.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), ~(abs(_wgslsmith_sub_i32(-34571i, 38104i)) | -max(u_input.b, -57687i)));
    let var_3 = !vec4<bool>(all(vec2<bool>(true, true)), -2147483647i > (abs(-1i) | var_1.b), !all(vec4<bool>(false, true, true, true)) | any(vec4<bool>(true, true, true, true)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.c, 22635u, 4294967295u), vec4<u32>(71123u, 1u, 57801u, 1u)) > abs(u_input.c));
    var var_4 = vec3<f32>(-483f, func_1(_wgslsmith_div_u32(~0u, 36108u), -1442f).a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1414f), 393f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1226f * _wgslsmith_f_op_f32(310f - var_1.a.x)))));
    return var_1;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> vec2<bool> {
    let var_0 = arg_2.wyw;
    var var_1 = !vec3<bool>(true != !any(vec2<bool>(true, true)), true, true);
    let var_2 = func_4(min(firstTrailingBit(func_3(vec3<u32>(52898u, u_input.c, 0u))), vec3<u32>(abs(arg_1) << ((u_input.c & 13330u) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 4294967295u), vec3<u32>(arg_1, arg_1, u_input.c)) | 46781u, arg_1)));
    let var_3 = !select(vec4<bool>(any(vec3<bool>(var_1.x, var_1.x, var_1.x)), select(select(var_1.x, true, var_1.x), var_1.x, var_1.x), !(false | var_1.x), var_1.x), select(!select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), true), !vec4<bool>(true, var_1.x, var_1.x, true), !select(var_1.x, false, false)), arg_0.a.x <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-976f, -369f) + -1120f));
    var_1 = var_3.zzy;
    return var_1.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(!any(vec4<bool>(false, true, false, true))), all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))));
    var_0 = select(vec2<bool>(!all(!vec3<bool>(var_0.x, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(250f * -452f) - _wgslsmith_f_op_f32(sign(-620f))) > _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1617f, -345f)))), !select(!select(vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x), var_0.x), func_2(func_1(90811u, 1000f), firstTrailingBit(u_input.c), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.d, -10980i))), select(func_2(Struct_1(vec3<f32>(-803f, 2311f, -385f), -1i), u_input.c, vec4<i32>(-50956i, 27661i, 25583i, u_input.a.x)), !vec2<bool>(var_0.x, var_0.x), true)), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(337f, -148f, -1287f), vec3<f32>(422f, -388f, 195f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-872f, -416f, -1063f) * vec3<f32>(1079f, 926f, -1082f))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.d, -59853i), vec4<i32>(34338i, 0i, -62487i, 1i)), vec4<i32>(u_input.a.x, u_input.b, -2147483647i, 6201i))), u_input.c, min(max(vec4<i32>(0i, u_input.d, -31425i, u_input.d), vec4<i32>(25382i, u_input.b, -36976i, -18956i)), ~vec4<i32>(-23145i, u_input.b, u_input.d, u_input.d)) | vec4<i32>(-u_input.b, abs(1i), abs(2147483647i), ~23405i)));
    let var_1 = abs(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.c, 0u, u_input.c), vec3<u32>(~u_input.c, ~u_input.c, ~u_input.c), ~max(vec3<u32>(56325u, 24324u, 0u), vec3<u32>(u_input.c, u_input.c, u_input.c))), _wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.c, 4294967295u, u_input.c) ^ vec3<u32>(13114u, u_input.c, 4294967295u)), firstTrailingBit(vec3<u32>(91215u, 0u, u_input.c) << (vec3<u32>(4294967295u, 0u, 89471u) % vec3<u32>(32u))))));
    var_0 = vec2<bool>(true, true);
    let var_2 = ~_wgslsmith_sub_u32(var_1.x | _wgslsmith_dot_vec2_u32(vec2<u32>(25248u, u_input.c), vec2<u32>(var_1.x, u_input.c)), ~var_1.x);
    var_0 = !vec2<bool>(var_0.x && any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(true, true))), (i32(-1i) * -1i) >= ~max(u_input.a.x, u_input.a.x));
    var_0 = select(vec2<bool>(true, true), !vec2<bool>(var_0.x, false && all(vec3<bool>(var_0.x, false, var_0.x))), vec2<bool>(var_0.x, !(!any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)))));
    var var_3 = ~(func_3(vec3<u32>(1u, 1u, 1u)).zy | select(~var_1.yy, var_1.yx, !(!vec2<bool>(var_0.x, false))));
    let var_4 = ~4491u;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d, vec2<i32>(u_input.b, abs(min(u_input.a.x & -2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(u_input.b, 5987i))))), _wgslsmith_f_op_vec2_f32(func_4(vec3<u32>(53976u, 0u, 0u & var_1.x)).a.zx * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f)), -411f)), vec3<u32>(min(u_input.c, max(firstLeadingBit(var_4), ~4294967295u)), 0u, 4294967295u));
}

