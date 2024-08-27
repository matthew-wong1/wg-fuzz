struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(vec3<i32>(u_input.a, max(u_input.a, 2731i), _wgslsmith_sub_i32(7238i, u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1261f, _wgslsmith_f_op_f32(1000f * -1429f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-991f, -1148f), -508f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -442f), _wgslsmith_f_op_f32(trunc(-503f))))), u_input.b, !(-u_input.c < ~(-3578i)) | false);
    var var_1 = min(~u_input.a & -1i, var_0.a.x);
    var var_2 = Struct_1(reverseBits(var_0.a), vec2<f32>(_wgslsmith_div_f32(-1156f, var_0.b.x), 753f), _wgslsmith_add_u32(_wgslsmith_div_u32(var_0.c, select(_wgslsmith_mult_u32(1u, 1u), ~1u, var_0.d)), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_add_u32(1u, firstTrailingBit(4294967295u)))), true);
    var_1 = u_input.c;
    var_0 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(var_2.a.x, max(_wgslsmith_dot_vec3_i32(vec3<i32>(-34360i, var_0.a.x, u_input.a), var_0.a), var_0.a.x >> (var_2.c % 32u)), var_0.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(49204u, 0u, u_input.b), vec3<u32>(var_0.c, 4294967295u, 8740u)) % 32u)), _wgslsmith_mult_i32(min(40696i, var_0.a.x << (0u % 32u)), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(14529i, var_0.a.x, var_0.a.x, -2147483647i), vec4<i32>(u_input.c, 9486i, 28960i, 14212i)))), 1i), _wgslsmith_f_op_vec2_f32(var_0.b + var_0.b), firstTrailingBit((max(26610u, 0u) ^ (47084u << (var_2.c % 32u))) ^ ~(~var_0.c)), !any(!(!vec2<bool>(var_0.d, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -511f) - _wgslsmith_f_op_f32(-1512f * var_0.b.x));
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    let var_0 = abs(-arg_0.c.xx);
    let var_1 = -_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 20006i, arg_0.b, -1i) << (~vec4<u32>(u_input.b, 30172u, 7335u, 27081u) % vec4<u32>(32u)), countOneBits(vec4<i32>(-1i, u_input.a, arg_0.b, 2147483647i))) | -_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, var_0.x, u_input.a, var_0.x) << (max(vec4<u32>(0u, 4294967295u, u_input.b, u_input.b), vec4<u32>(arg_0.a.x, 22111u, u_input.b, u_input.b)) % vec4<u32>(32u)), firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 2147483647i, var_0.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(floor(1f))), -778f);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-757f * 1535f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 775f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-883f, -1213f)) * _wgslsmith_f_op_f32(min(492f, 843f)))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(174f - _wgslsmith_div_f32(2342f, 719f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1047f * -561f)))), Struct_1(~(arg_0.c ^ vec3<i32>(var_0.x, var_1.x, 1i)), vec2<f32>(1f, _wgslsmith_div_f32(-636f, 751f)), firstTrailingBit(arg_0.a.x), true), Struct_1(vec3<i32>(~var_1.x, -var_0.x, ~20976i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1487f, 1000f)), _wgslsmith_mod_u32(25493u, arg_0.a.x), true)), vec4<u32>((1u & _wgslsmith_sub_u32(4294967295u, arg_0.a.x)) << (abs(~arg_0.a.x) % 32u), ~(~u_input.b >> (u_input.b % 32u)), ~reverseBits(u_input.b) & arg_0.a.x, 1u));
    return Struct_4(vec2<u32>(0u, var_3.b.c.c), var_0.x, -var_3.b.c.a, !(!vec4<bool>(!arg_0.d.x, arg_0.d.x, var_3.b.b.d, true)));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: bool, arg_3: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(194f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(735f)))))), arg_2));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(904f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1229f)))), 545f), 996f));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -172f);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(339f + -268f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(996f)) * _wgslsmith_f_op_f32(step(1587f, -281f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(772f + 1f), 1000f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-830f, -314f)), _wgslsmith_div_f32(283f, var_1.x), -443f, _wgslsmith_f_op_f32(var_1.x * -730f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1885f, var_1.x) - vec4<f32>(731f, -122f, var_1.x, 773f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 641f, 2446f)), all(vec2<bool>(arg_2, arg_2))))))));
    return !arg_3.d.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = vec2<bool>(true, true);
    var var_1 = ~vec2<u32>(arg_2.c, arg_2.c);
    let var_2 = ~(-9568i);
    var var_3 = arg_2;
    let var_4 = arg_3;
    return min(_wgslsmith_dot_vec3_u32(countOneBits(arg_1) >> (_wgslsmith_add_vec3_u32(arg_1, arg_1) % vec3<u32>(32u)), arg_1), ~4294967295u) | 72827u;
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<f32>(304f, -137f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -282f)))), -1355f, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.zz)));
    var var_2 = vec4<u32>(u_input.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(~1u, u_input.b)), u_input.b, func_5(Struct_1(~countOneBits(vec3<i32>(-2147483647i, u_input.c, u_input.c)), vec2<f32>(var_1.x, _wgslsmith_div_f32(845f, var_1.x)), abs(~u_input.b), false), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, 1u)), Struct_1(~vec3<i32>(u_input.a, 2147483647i, u_input.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-930f, -585f)), u_input.b, func_4(0u, func_2(Struct_4(vec2<u32>(4294967295u, u_input.b), 54961i, vec3<i32>(-2147483647i, u_input.a, u_input.a), vec4<bool>(false, true, false, true))), true, Struct_4(vec2<u32>(u_input.b, u_input.b), -31484i, vec3<i32>(1i, u_input.a, u_input.c), vec4<bool>(true, false, true, true)))), Struct_1(vec3<i32>(u_input.a, 35895i, firstLeadingBit(u_input.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1279f, var_1.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(751f, var_0.x))), ~(~1u), true)));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-664f, _wgslsmith_f_op_f32(min(-980f, 697f)), _wgslsmith_f_op_f32(abs(var_0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-158f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - -430f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(952f - var_0.x)))));
    var var_3 = !(!(!func_2(Struct_4(var_2.wx, -20068i, vec3<i32>(u_input.c, u_input.c, u_input.c), vec4<bool>(true, false, true, true))).d.zww));
    return Struct_2(_wgslsmith_f_op_f32(-var_1.x), Struct_1(firstTrailingBit(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 0i, 31950i), vec3<i32>(u_input.a, u_input.a, u_input.c), vec3<i32>(u_input.c, -34091i, u_input.c)), -vec3<i32>(u_input.a, u_input.c, 0i), var_3.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yz - _wgslsmith_f_op_vec2_f32(select(var_0.yy, var_0.zx, vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yx))), 70238u, any(!select(vec4<bool>(false, false, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(true, false, false, var_3.x)))), Struct_1(firstTrailingBit(func_2(func_2(Struct_4(var_2.xz, 2147483647i, vec3<i32>(-1i, 22578i, u_input.c), vec4<bool>(var_3.x, var_3.x, true, true)))).c), _wgslsmith_f_op_vec2_f32(-var_0.xz), ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_2.x, 0u, 46284u), vec4<u32>(16208u, var_2.x, 22135u, var_2.x))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = false;
    var var_1 = func_1();
    let var_2 = ~(~vec4<u32>(var_1.c.c, _wgslsmith_mod_u32(countOneBits(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(91576u, u_input.b), vec2<u32>(17616u, u_input.b))), 46932u, ~(u_input.b ^ 75230u)));
    let var_3 = !any(vec3<bool>(var_1.c.d, all(select(vec3<bool>(true, true, var_1.b.d), vec3<bool>(var_1.c.d, false, var_1.c.d), var_1.c.d)), !(!var_1.c.d)));
    var_0 = func_1().c.d | any(select(func_2(Struct_4(var_2.zy, var_1.b.a.x, var_1.b.a, vec4<bool>(var_3, false, true, true))).d.yzz, !(!vec3<bool>(false, var_3, var_3)), var_3));
    let var_4 = vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(1i, reverseBits(var_1.b.a.x), abs(-28421i), _wgslsmith_mult_i32(u_input.c, -5688i)), -abs(vec4<i32>(u_input.c, -1i, var_1.b.a.x, 0i)));
    let var_5 = _wgslsmith_mult_u32(~var_1.c.c, ~_wgslsmith_mod_u32(~func_5(Struct_1(vec3<i32>(u_input.c, u_input.a, 18564i), vec2<f32>(-418f, -1066f), var_2.x, false), var_2.xzz, Struct_1(vec3<i32>(2147483647i, u_input.c, 0i), vec2<f32>(-1000f, var_1.c.b.x), var_2.x, var_1.b.d), Struct_1(vec3<i32>(u_input.c, 2147483647i, var_1.b.a.x), var_1.c.b, var_2.x, var_1.b.d)), 0u));
    var var_6 = Struct_3(606f, Struct_2(var_1.c.b.x, func_1().b, Struct_1(~vec3<i32>(-2147483647i, u_input.a, 2134i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.b) + var_1.b.b), 31935u, any(func_2(Struct_4(var_2.ww, -38339i, vec3<i32>(-60609i, var_4.x, u_input.c), vec4<bool>(var_3, false, false, true))).d.zxz))), abs(~vec4<u32>(u_input.b, var_2.x, var_1.b.c, 14236u)) << (~(select(vec4<u32>(90207u, var_2.x, 4294967295u, 1u), var_2, var_3) >> (_wgslsmith_clamp_vec4_u32(var_2, var_2, var_2) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-591f * var_1.a)), _wgslsmith_f_op_f32(-var_6.b.c.b.x), select(~vec4<i32>(2147483647i, 1i, u_input.a & var_4.x, 55650i), _wgslsmith_mod_vec4_i32(abs(var_4 >> (var_2 % vec4<u32>(32u))), countOneBits(vec4<i32>(var_4.x, var_4.x, var_1.b.a.x, 16387i))), select(func_4(0u, func_2(Struct_4(var_2.wz, var_6.b.c.a.x, vec3<i32>(-27427i, 0i, 65312i), vec4<bool>(true, var_6.b.b.d, var_3, true))), var_6.b.c.b.x >= -225f, func_2(Struct_4(var_6.c.zz, 38346i, var_1.c.a, vec4<bool>(false, var_3, var_6.b.c.d, var_6.b.b.d)))), true == var_3, var_1.b.d)));
}

