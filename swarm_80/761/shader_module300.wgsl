struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec4<i32> {
    var var_0 = !any(!select(vec3<bool>(arg_0.c.a.x, true, true), vec3<bool>(true, false, true), false)) | any(select(!(!vec3<bool>(true, arg_0.a.x, false)), select(vec3<bool>(arg_0.c.a.x, false, true), !vec3<bool>(arg_0.b.a.x, arg_0.a.x, false), select(vec3<bool>(arg_0.a.x, false, true), vec3<bool>(arg_0.b.a.x, arg_0.c.a.x, true), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x))), vec3<bool>(any(vec4<bool>(arg_0.c.a.x, true, arg_0.a.x, arg_0.b.a.x)), true, true)));
    var_0 = any(arg_0.c.a) && arg_0.a.x;
    var_0 = arg_0.b.a.x;
    return -firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(4764i, -2147483647i & arg_1, ~arg_1, 2147483647i), vec4<i32>(arg_1, 0i, -73876i, u_input.a) & _wgslsmith_add_vec4_i32(vec4<i32>(160i, 24856i, arg_1, u_input.a), vec4<i32>(-47175i, u_input.a, arg_1, arg_1)), ~(~vec4<i32>(arg_1, arg_1, arg_1, -42124i))));
}

fn func_4(arg_0: vec4<i32>) -> i32 {
    var var_0 = vec3<u32>(reverseBits(~1u), u_input.b.x, _wgslsmith_mult_u32(~(firstTrailingBit(12014u) << (_wgslsmith_mult_u32(u_input.b.x, u_input.c.x) % 32u)), _wgslsmith_div_u32(countOneBits(~1u), max(u_input.b.x, u_input.c.x) << (12036u % 32u))));
    let var_1 = _wgslsmith_f_op_f32(-939f + -1055f);
    var_0 = ~u_input.b;
    var_0 = firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(~firstTrailingBit(4294967295u), var_0.x, min(~u_input.b.x, ~u_input.c.x))));
    var var_2 = countOneBits(u_input.c.x);
    return u_input.a;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(vec2<bool>(true, true), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(true, true), u_input.b.x != 0u)), Struct_1(vec2<bool>(true, true)), -965f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(238f, -1283f, 882f, -116f), vec4<f32>(-1114f, -256f, 1450f, 449f))))));
    var var_1 = vec2<i32>(reverseBits(func_4(func_3(Struct_2(vec2<bool>(var_0.a.x, true), Struct_1(vec2<bool>(var_0.a.x, false)), var_0.c, -382f, vec4<f32>(667f, var_0.d, var_0.d, var_0.e.x)), min(u_input.d, u_input.d)))), -(firstLeadingBit(1i) & func_4(~vec4<i32>(-1i, u_input.a, 20454i, 0i))));
    var_1 = ~_wgslsmith_mult_vec2_i32(-vec2<i32>(var_1.x, -1972i) >> ((select(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(4294967295u, 1u), true) ^ (vec2<u32>(1u, 0u) | vec2<u32>(u_input.b.x, 8090u))) % vec2<u32>(32u)), abs(~vec2<i32>(-7281i, -13817i)));
    var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -(~49266i), -17057i), firstLeadingBit(vec2<i32>(-15596i, _wgslsmith_div_i32(u_input.d, func_4(vec4<i32>(var_1.x, -870i, 2147483647i, var_1.x))))), _wgslsmith_mod_vec2_i32(~(~vec2<i32>(-28150i, u_input.d)) | vec2<i32>(countOneBits(var_1.x), 1i), select(select(vec2<i32>(u_input.a, -1i), vec2<i32>(var_1.x, u_input.a), false), vec2<i32>(var_1.x, var_1.x), select(var_0.c.a, var_0.c.a, false)) ^ vec2<i32>(u_input.d, var_1.x)));
    var var_2 = all(!vec4<bool>(var_0.a.x, -372f >= var_0.e.x, true, all(var_0.a)));
    return Struct_1(select(var_0.c.a, !var_0.c.a, all(select(select(vec4<bool>(var_0.a.x, var_0.b.a.x, var_0.c.a.x, true), vec4<bool>(var_0.c.a.x, true, var_0.c.a.x, false), vec4<bool>(false, var_0.c.a.x, var_0.b.a.x, true)), select(vec4<bool>(var_0.b.a.x, var_0.c.a.x, true, var_0.a.x), vec4<bool>(true, false, true, var_0.b.a.x), true), any(vec4<bool>(var_0.b.a.x, true, true, true))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> bool {
    var var_0 = select(select(vec3<bool>(arg_2 && true, true, false), select(!vec3<bool>(arg_2, arg_2, arg_0.a.x), !(!vec3<bool>(false, true, arg_0.a.x)), all(select(vec3<bool>(true, false, false), vec3<bool>(arg_0.a.x, true, true), vec3<bool>(arg_0.a.x, true, false)))), select(select(select(vec3<bool>(arg_2, true, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_2), vec3<bool>(false, arg_0.a.x, false)), vec3<bool>(true, arg_0.a.x, false), false || arg_0.a.x), select(!vec3<bool>(true, arg_0.a.x, true), vec3<bool>(arg_2, arg_2, arg_0.a.x), select(vec3<bool>(arg_0.a.x, false, arg_2), vec3<bool>(true, true, false), vec3<bool>(arg_0.a.x, false, arg_0.a.x))), vec3<bool>(true, arg_2, false))), select(vec3<bool>(!arg_0.a.x, false, arg_2), select(select(vec3<bool>(arg_0.a.x, false, true), !vec3<bool>(true, false, arg_2), true), !select(vec3<bool>(true, false, arg_0.a.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x), arg_0.a.x), all(vec4<bool>(true, arg_2, true, arg_0.a.x))), arg_2), true);
    let var_1 = _wgslsmith_clamp_u32(u_input.b.x, u_input.c.x, firstTrailingBit(1640u));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1121f + -311f), _wgslsmith_f_op_f32(-383f * 404f), false | arg_0.a.x)))))) == -815f;
    var_0 = vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1017f, -2292f))))) >= 285f, any(!vec3<bool>(arg_0.a.x, select(var_0.x, false, var_0.x), var_0.x)), true);
    let var_3 = Struct_3(func_2(), ~(var_1 >> (~_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.c.wy) % 32u)), reverseBits(-(~vec4<i32>(31463i, arg_1.x, -1i, arg_1.x))), u_input.c.x);
    return any(vec2<bool>(!select(false, true, true), false)) || ((-1459f == _wgslsmith_f_op_f32(-1052f + _wgslsmith_f_op_f32(step(-868f, -1283f)))) && (arg_1.x > ~(i32(-1i) * -32671i)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 1461f) + arg_0)) == arg_0, any(vec2<bool>(arg_1.a.x & (arg_1.a.x & false), arg_1.a.x)), !(u_input.a == _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, -22206i, u_input.d), vec3<i32>(u_input.d, u_input.d, 1i), false), vec3<i32>(u_input.d, u_input.d, 10649i) & vec3<i32>(u_input.d, 23547i, 0i))), any(vec4<bool>(func_5(func_2(), vec3<i32>(1i, 1i, 1i), arg_1.a.x), any(!arg_2.a), arg_1.a.x, 1u >= ~u_input.b.x)));
    var var_1 = i32(-1i) * -2147483647i;
    var var_2 = u_input.c.x;
    var var_3 = vec4<u32>(u_input.c.x << (~(u_input.b.x | u_input.b.x) % 32u), countOneBits(0u | _wgslsmith_add_u32(u_input.b.x, 1u)), _wgslsmith_add_u32(32623u, _wgslsmith_mod_u32(u_input.b.x, ~u_input.b.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(63766u, u_input.b.x), u_input.b.xx), vec2<u32>(75322u, 65272u) >> (u_input.b.zy % vec2<u32>(32u))), 32820u)) & u_input.c;
    var var_4 = func_2();
    return func_2();
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_2(arg_0.b.a, arg_2.c, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x + 2581f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.e.x)))), func_2(), arg_0.b), _wgslsmith_f_op_f32(min(arg_2.e.x, arg_0.e.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(478f, 710f, arg_0.e.x, arg_0.d)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(490f, arg_0.d, arg_0.e.x, 1044f), arg_2.e)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-648f)), arg_0.e.x, -1907f, 516f))));
    var var_2 = 5239u;
    var var_3 = ~u_input.c.xxz;
    var_3 = u_input.b;
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(Struct_2(vec2<bool>(true, true), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1970f), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false))), Struct_1(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-1482f - _wgslsmith_f_op_f32(trunc(295f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-742f, 180f, -2052f, 267f)))))), _wgslsmith_dot_vec3_u32(abs(u_input.c.zzw), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.b.x, u_input.b.x)), abs(30058u), u_input.c.x)), Struct_2(func_2().a, func_1(_wgslsmith_f_op_f32(-145f + -1311f), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true))), func_1(_wgslsmith_div_f32(2058f, 541f), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(233f * -954f), 1f, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 861f, -200f, 685f) + _wgslsmith_div_vec4_f32(vec4<f32>(1024f, -312f, 366f, -733f), vec4<f32>(300f, -508f, 993f, -142f))))), min(~0u, firstTrailingBit(~(~u_input.b.x))), vec4<i32>(min(u_input.a, func_4(vec4<i32>(u_input.d, u_input.d, u_input.d, -1i)) & (i32(-1i) * -1i)), ~(~_wgslsmith_sub_i32(u_input.d, 72324i)), reverseBits(_wgslsmith_add_i32(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.a, u_input.d, u_input.a), vec4<i32>(2147483647i, u_input.a, -36757i, u_input.d)))), func_4(vec4<i32>(u_input.d, u_input.d, min(15530i, 17123i), u_input.a))), u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1122f)) + _wgslsmith_f_op_f32(abs(-1235f))), -2272f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(268f)) + _wgslsmith_f_op_f32(-1002f * -126f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-930f, var_1.x));
}

