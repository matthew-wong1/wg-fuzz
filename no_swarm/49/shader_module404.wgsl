struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    var var_0 = any(select(vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true))) && (u_input.b < u_input.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, 1052f, -1210f)) + vec3<f32>(-1326f, 1798f, 560f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_f_op_f32(-520f + -176f), _wgslsmith_f_op_f32(f32(-1f) * -1441f)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1845f, 1415f, -1003f)))))));
    var_0 = false;
    var var_2 = Struct_5(abs(~(vec3<u32>(u_input.c, u_input.e.x, 18959u) | firstTrailingBit(vec3<u32>(29473u, 20428u, u_input.c)))), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), vec3<bool>(true, !any(vec4<bool>(true, false, true, false)), _wgslsmith_div_i32(u_input.d.x, -2147483647i) == 0i), any(vec4<bool>(true, true, true, true))), vec3<bool>(false, 65235u < (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.a), vec3<u32>(u_input.e.x, 0u, u_input.a)) | 4294967295u), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)) & all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))));
    var_0 = false;
    return abs(vec4<u32>(64467u, 11730u, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, u_input.b), ~var_2.a.x) | var_2.a.x, ~8862u));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_3, arg_3: vec2<u32>) -> vec2<u32> {
    var var_0 = arg_2.c;
    let var_1 = func_3() | _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.c.b.x, 26629u, 42046u, 1u), ~arg_2.c.b), _wgslsmith_sub_vec4_u32(~(arg_2.c.b << (vec4<u32>(arg_3.x, 0u, arg_3.x, 67459u) % vec4<u32>(32u))), ~var_0.b));
    var var_2 = Struct_2(0i, min(0u, arg_3.x), arg_2.c, arg_0.x ^ arg_2.b.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-313f, var_0.a.x, _wgslsmith_f_op_f32(round(2090f)), 911f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.a.x), _wgslsmith_f_op_f32(-var_2.c.a.x), _wgslsmith_div_f32(arg_2.c.a.x, var_2.c.a.x), _wgslsmith_f_op_f32(arg_2.c.a.x + -3226f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(sign(var_2.c.a.x)), _wgslsmith_f_op_f32(step(-457f, arg_2.c.a.x)), 483f))))));
    return var_1.zx;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> vec3<u32> {
    var var_0 = arg_0;
    var var_1 = Struct_3(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.c.b.xw, ~(vec2<u32>(4294967295u, arg_2) << (arg_1.b.ww % vec2<u32>(32u)))), ~func_2(vec2<i32>(var_0.b.x, -2147483647i), -u_input.d.x, Struct_3(vec2<u32>(8018u, arg_2), vec2<i32>(0i, arg_3), arg_0.c), vec2<u32>(arg_0.c.b.x, 0u))), vec2<i32>(_wgslsmith_mult_i32(-1i, ~(-3428i)), -(~0i)) ^ u_input.d.xy, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(171f, 201f)), arg_0.c.a.x), vec4<u32>(arg_1.b.x, ~arg_1.b.x | ~39480u, arg_1.b.x, 1u), arg_0.c.c, arg_1.d));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(-35128i), _wgslsmith_div_i32(max(-14923i, 39639i), -16646i >> (u_input.b % 32u)) << ((~arg_0.c.b.x << (var_1.a.x % 32u)) % 32u), u_input.d.x, _wgslsmith_clamp_i32(-2147483647i, ~arg_3, ~(-19590i >> (var_0.c.b.x % 32u)))), abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(12009i, 1i, arg_3, var_1.b.x), vec4<i32>(var_0.b.x, u_input.d.x, 24447i, 19809i), false), select(vec4<i32>(-2147483647i, 2147483647i, 1282i, -1i), vec4<i32>(var_0.b.x, var_0.b.x, 30188i, 64708i), false), ~vec4<i32>(var_1.b.x, var_1.b.x, -2530i, 62702i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.x, -2147483647i, 0i, -2147483647i), vec4<i32>(var_1.b.x, u_input.d.x, var_1.b.x, 24722i)), select(vec4<i32>(arg_0.b.x, 2147483647i, -10926i, -2147483647i) & vec4<i32>(4398i, 23563i, 1i, -1i), select(vec4<i32>(arg_0.b.x, u_input.d.x, 2147483647i, 4764i), vec4<i32>(arg_0.b.x, 2147483647i, -64951i, arg_3), arg_1.c.x), select(var_0.c.c, var_1.c.c, false)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.c.a * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.a.x, -748f))), _wgslsmith_f_op_vec2_f32(abs(arg_1.a))))), _wgslsmith_sub_vec4_u32(select(var_0.c.b, vec4<u32>(_wgslsmith_clamp_u32(39406u, u_input.e.x, arg_0.c.b.x), firstLeadingBit(arg_2), ~var_0.a.x, 4294967295u | arg_0.a.x), (arg_0.c.a.x <= 850f) || !var_1.c.c.x), abs(~max(vec4<u32>(u_input.c, arg_0.c.b.x, var_0.c.b.x, 43136u), vec4<u32>(71985u, 17907u, 16583u, arg_0.c.b.x)))), select(arg_1.c, var_1.c.c, all(select(arg_1.c, var_0.c.c, true))), vec3<bool>(true, true, true));
    let var_4 = Struct_4(Struct_3(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 0u) ^ func_2(var_1.b, arg_3, arg_0, vec2<u32>(arg_1.b.x, var_0.a.x)), ~countOneBits(arg_0.a)), countOneBits(_wgslsmith_add_vec2_i32(var_0.b | var_0.b, max(vec2<i32>(-36817i, -1i), vec2<i32>(var_1.b.x, u_input.d.x)))), arg_1), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, -207f) - vec2<f32>(arg_1.a.x, var_0.c.a.x)) - _wgslsmith_f_op_vec2_f32(trunc(arg_0.c.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.a + var_0.c.a))), ~(~vec4<u32>(25048u, 20728u, 4294967295u, u_input.b) << (countOneBits(vec4<u32>(0u, 0u, arg_1.b.x, 4294967295u)) % vec4<u32>(32u))), arg_0.c.c, !arg_0.c.c.zyw), arg_0.c);
    return _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(arg_2, var_4.c.b.x, var_3.b.x)), vec3<u32>(~min(arg_0.a.x, var_1.c.b.x), ~arg_1.b.x, _wgslsmith_div_u32(arg_0.a.x, var_1.c.b.x) | _wgslsmith_clamp_u32(arg_2, 35494u, arg_2))), firstLeadingBit(~firstTrailingBit(~vec3<u32>(4294967295u, 1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(~abs(abs(vec3<u32>(12684u, 29513u, u_input.a))), countOneBits(~firstLeadingBit(vec3<u32>(u_input.c, u_input.b, u_input.e.x))), func_1(Struct_3(u_input.e, vec2<i32>(2147483647i, 1424i), Struct_1(vec2<f32>(1039f, -767f), vec4<u32>(u_input.e.x, u_input.c, 14204u, 60273u), vec4<bool>(false, false, false, true), vec3<bool>(false, false, false))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(178f, 755f) + vec2<f32>(567f, -1000f)), max(vec4<u32>(1u, 34612u, u_input.c, u_input.c), vec4<u32>(1u, 20368u, 49904u, 104788u)), vec4<bool>(true, true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), 52906u, i32(-1i) * -2147483647i)));
    var var_1 = Struct_3(u_input.e, vec2<i32>(-(~firstLeadingBit(1i)), reverseBits(23932i)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(212f, 641f) + vec2<f32>(401f, -1467f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(2766f, -260f) + vec2<f32>(-268f, -521f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1460f, -425f), vec2<f32>(-1824f, -1598f), vec2<bool>(true, false))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-600f, 771f) + vec2<f32>(-777f, -1933f)))), firstTrailingBit(vec4<u32>(18554u, 0u, ~u_input.b, ~var_0.x)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, true, false), false), true), vec3<bool>(false, all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, false, true)))));
    var var_2 = !select(vec3<bool>(false, all(select(var_1.c.d, vec3<bool>(var_1.c.c.x, var_1.c.c.x, true), false)), true), select(!var_1.c.c.xxz, !var_1.c.c.wzx, true), !vec3<bool>(any(vec2<bool>(var_1.c.d.x, true)), false, var_1.c.a.x >= var_1.c.a.x));
    var var_3 = u_input.e.x;
    let var_4 = var_1.c.b;
    let var_5 = Struct_4(Struct_3(~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, var_0.x), u_input.e)), vec2<i32>(u_input.d.x, reverseBits(-21381i)), Struct_1(vec2<f32>(1182f, var_1.c.a.x), vec4<u32>(~u_input.a, u_input.a, ~var_4.x, 10755u), vec4<bool>(true, true, true, true), var_1.c.c.wxw)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a.x * var_1.c.a.x)), _wgslsmith_f_op_f32(select(-248f, _wgslsmith_div_f32(var_1.c.a.x, var_1.c.a.x), true))), firstLeadingBit(~vec4<u32>(var_4.x, var_1.a.x, var_0.x, var_1.a.x)), var_1.c.c, vec3<bool>(true, 1u > (7051u << (var_0.x % 32u)), select(var_1.b.x >= -82282i, !var_2.x, !var_1.c.d.x))), var_1.c);
    var_2 = var_1.c.c.zxy;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_dot_vec4_i32(firstTrailingBit(firstLeadingBit(abs(vec4<i32>(-5849i, -48350i, u_input.d.x, u_input.d.x)))), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b.x, var_5.a.b.x, -1i, u_input.d.x) & vec4<i32>(var_1.b.x, var_1.b.x, -1i, 4226i), -vec4<i32>(49976i, -23535i, -64621i, u_input.d.x)) | _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, -2147483647i, u_input.d.x, 24479i), vec4<i32>(var_5.a.b.x, var_5.a.b.x, 26961i, var_1.b.x) & vec4<i32>(32097i, -2147483647i, 2147483647i, var_5.a.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, var_5.a.b.x, -13953i), vec4<i32>(0i, u_input.d.x, -1i, -2147483647i)))), -u_input.d.zy, (~var_5.a.b.x & var_5.a.b.x) << (func_1(var_5.a, var_1.c, ~(~1u), max(var_5.a.b.x, -2147483647i)).x % 32u));
}

