struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> i32 {
    let var_0 = any(vec4<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -36874i), firstTrailingBit(vec2<i32>(arg_0, arg_0))) >= -_wgslsmith_add_i32(1i, 1i), true, true));
    let var_1 = vec4<bool>(any(!vec3<bool>(false, !var_0, select(false, false, var_0))), true, var_0, all(select(vec2<bool>(true, true), vec2<bool>(true, var_0 | var_0), false)));
    var var_2 = Struct_2(abs(abs(vec4<i32>(-2147483647i, arg_0, arg_0, 0i))), -1505f, Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.c, ~u_input.c), vec4<u32>(42577u, _wgslsmith_sub_u32(29309u, u_input.a), ~u_input.b.x, ~u_input.b.x))), ~_wgslsmith_mod_u32(u_input.c.x, u_input.b.x), _wgslsmith_sub_i32(-select(~1i, arg_0, any(vec3<bool>(false, false, var_0))), arg_0));
    let var_3 = Struct_2(vec4<i32>(-2147483647i, min(abs(-978i), arg_0) | (countOneBits(arg_0) << (var_2.d % 32u)), ~(~0i), -var_2.a.x), var_2.b, Struct_1(vec4<u32>(1u, reverseBits(48864u), ~4294967295u, _wgslsmith_sub_u32(~15332u, firstLeadingBit(u_input.b.x)))), 24477u, var_2.a.x ^ ~(arg_0 ^ ~1i));
    var_2 = Struct_2(var_3.a, var_2.b, Struct_1(~abs(vec4<u32>(var_2.d, u_input.c.x, u_input.a, 589u))), 0u, -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(max(vec3<i32>(30478i, 1i, -9830i), var_3.a.wzz), var_2.a.yxw), vec3<i32>(-14449i, arg_0 << (u_input.a % 32u), ~11217i)));
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, ~1i), _wgslsmith_mult_i32(firstTrailingBit(2147483647i), 1892i));
}

fn func_2() -> Struct_1 {
    var var_0 = !vec3<bool>(true == !(u_input.b.x != u_input.a), select(true, false, all(vec4<bool>(true, false, false, false))), true);
    let var_1 = Struct_1(~vec4<u32>(16337u, 24906u, ~_wgslsmith_clamp_u32(1u, u_input.c.x, u_input.b.x), u_input.c.x));
    let var_2 = Struct_2(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-17158i, 1i), -vec2<i32>(-1i, 13406i)), -2147483647i, func_3(max(~2147483647i, _wgslsmith_div_i32(1i, -15560i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-297f, 1000f)))), ~(-1i)), _wgslsmith_div_f32(-752f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(935f - 822f))) * _wgslsmith_f_op_f32(-958f + _wgslsmith_f_op_f32(1047f - 542f)))), var_1, ~abs(min(firstTrailingBit(0u), ~4294967295u)), func_3(abs(-max(0i, -12223i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1963f), -470f))));
    var var_3 = _wgslsmith_mod_vec2_u32(min(u_input.b, vec2<u32>(var_2.c.a.x, 18230u) << (~var_2.c.a.yz % vec2<u32>(32u))), vec2<u32>(72369u << (u_input.b.x % 32u), ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), u_input.c.zx))));
    var_0 = select(!select(select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, true, var_0.x), var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true)), select(vec3<bool>(false, var_0.x, true), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false)), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x))), !select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, true))), !vec3<bool>(!(!var_0.x), true, false), var_0.x);
    return var_2.c;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_1(reverseBits(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, u_input.c.x, u_input.b.x, arg_0.a.x), u_input.c)) | vec4<u32>(_wgslsmith_clamp_u32(84666u, 13980u, u_input.b.x) & ~arg_0.a.x, arg_0.a.x, max(4294967295u, u_input.a), 16494u));
    var var_1 = Struct_2(vec4<i32>(~(1i << (1u % 32u)), select(_wgslsmith_div_i32(i32(-1i) * -8879i, firstLeadingBit(-56297i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-25907i, -12179i, 0i, -17984i), vec4<i32>(24002i, -2326i, -2147483647i, -21466i)), _wgslsmith_add_i32(-2147483647i, 16088i), -1i), arg_2.x), -20852i, _wgslsmith_clamp_i32(countOneBits(i32(-1i) * -22496i), ~_wgslsmith_div_i32(0i, 43241i), firstTrailingBit(2147483647i) >> (~u_input.a % 32u))), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_div_f32(arg_1, 1000f))), func_2(), _wgslsmith_mod_u32(~(~_wgslsmith_mod_u32(arg_0.a.x, var_0.a.x)), ~max(415u, arg_0.a.x)), reverseBits(~32902i));
    let var_2 = func_2();
    let var_3 = var_2;
    let var_4 = Struct_1(_wgslsmith_clamp_vec4_u32(u_input.c, ~var_3.a, abs(var_2.a)));
    return ~vec2<i32>(~1i, var_1.a.x);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<i32>) -> bool {
    let var_0 = func_4(func_2(), 1410f, !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(false, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true)));
    let var_1 = Struct_2(~(-firstTrailingBit(vec4<i32>(var_0.x, var_0.x, -2147483647i, 4714i))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(2711f, _wgslsmith_f_op_f32(-673f - -1323f)), arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x)))))), func_2(), _wgslsmith_add_u32(~(~u_input.a), ~54809u << (u_input.c.x % 32u)), var_0.x);
    let var_2 = firstTrailingBit(u_input.c.x);
    let var_3 = select(firstTrailingBit(-var_1.a.yy), var_1.a.zw, true);
    var var_4 = _wgslsmith_add_i32(_wgslsmith_sub_i32(-func_3(-28084i, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.x, arg_1.x)))), 0i), ~func_3(-19662i, _wgslsmith_f_op_vec2_f32(min(arg_1, _wgslsmith_f_op_vec2_f32(arg_1 * arg_1)))));
    return true;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = -arg_3.e;
    let var_1 = min(arg_3.c.a.zyy & firstTrailingBit(~(u_input.c.zwy << (arg_3.c.a.wwz % vec3<u32>(32u)))), vec3<u32>(countOneBits(~func_2().a.x), ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_clamp_u32(1u, arg_3.d, 0u)), ~arg_3.c.a.x)));
    var_0 = arg_1;
    var var_2 = Struct_2(arg_3.a, -405f, Struct_1(~_wgslsmith_mult_vec4_u32(abs(u_input.c), ~u_input.c)), var_1.x, 0i);
    let var_3 = vec2<bool>(arg_0, any(!(!(!vec4<bool>(arg_0, arg_0, arg_0, false)))));
    return arg_3;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0.b;
    var_0 = _wgslsmith_f_op_f32(463f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(min(-544f, -1842f))));
    let var_1 = select(select(!vec4<bool>(true, true, any(vec2<bool>(false, true)), true), !vec4<bool>(any(vec3<bool>(false, true, true)), false, all(vec3<bool>(false, false, true)), true), true | !all(vec2<bool>(false, false))), !vec4<bool>(!select(true, false, true), !select(true, true, true), any(vec2<bool>(false, false)) | false, all(vec4<bool>(false, true, true, false))), !all(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)));
    let var_2 = vec4<bool>(any(vec2<bool>(false, func_1(~arg_0.c.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, -873f)), arg_0.a.yz))), !var_1.x, all(var_1.yzw), true);
    var var_3 = !select(select(vec4<bool>(true, any(vec4<bool>(true, var_2.x, var_1.x, true)), !var_2.x, false), select(var_2, vec4<bool>(false, var_2.x, var_1.x, var_1.x), var_2), select(select(var_1, var_2, var_2.x), select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(false, var_2.x, var_1.x, var_2.x), vec4<bool>(var_1.x, true, false, false)), true)), vec4<bool>(true, !var_1.x, var_1.x, false), all(var_2));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1(abs(1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1057f, 391f) - vec2<f32>(908f, 1523f))), -(~vec2<i32>(1i, -15305i))), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(655f + 1119f), _wgslsmith_f_op_f32(step(261f, 199f)), true))), Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 47834i, 13087i, -24356i), vec4<i32>(-42546i, 0i, -7711i, 0i)), firstTrailingBit(vec4<i32>(-13160i, -655i, -66596i, 32771i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(525f)))), Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 4294967295u) & u_input.c), u_input.c.x, _wgslsmith_mod_i32(-15506i, 5317i))));
    var var_1 = Struct_1(reverseBits(vec4<u32>(10736u << (select(var_0.a.x, 63338u, false) % 32u), ~(~0u), var_0.a.x, ~(~var_0.a.x))));
    var var_2 = !(!(!vec4<bool>(true, all(vec4<bool>(false, false, false, false)), select(true, false, true), false)));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(22946i, -12601i) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.x, u_input.b.x), vec2<u32>(u_input.a, 1u), u_input.b) % vec2<u32>(32u))) | 1i, -43502i);
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1288f - -767f) * _wgslsmith_f_op_f32(f32(-1f) * -206f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(353f - -1000f)), 252f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(3037f, 1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(914f, -706f, -253f, 297f), vec4<f32>(1834f, 2397f, -988f, -379f)))) - vec4<f32>(_wgslsmith_f_op_f32(-1209f * 1025f), _wgslsmith_f_op_f32(1934f * -664f), _wgslsmith_f_op_f32(-1114f * 430f), _wgslsmith_f_op_f32(sign(452f)))))));
    var_0 = Struct_1(u_input.c);
    let var_5 = Struct_2(vec4<i32>(abs(2799i), ~_wgslsmith_add_i32(i32(-1i) * -30754i, select(41726i, -19666i, false)), -max(_wgslsmith_dot_vec2_i32(vec2<i32>(16360i, 1i), vec2<i32>(18585i, 68188i)), func_3(-2147483647i, vec2<f32>(var_4.x, var_4.x))), _wgslsmith_mult_i32(func_4(func_5(true, 1i, var_4.x, Struct_2(vec4<i32>(-1i, 0i, 59212i, 38050i), -451f, Struct_1(var_1.a), 8203u, -46928i)).c, _wgslsmith_f_op_f32(-var_4.x), var_2.ww).x, -3992i)), -275f, func_6(Struct_2(vec4<i32>(0i >> (var_0.a.x % 32u), i32(-1i) * -2147483647i, ~(-2147483647i), 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(abs(u_input.c)), var_1.a.x, 44259i)), ~var_1.a.x, 11068i << (func_2().a.x % 32u));
    var_1 = var_5.c;
    var_1 = func_6(Struct_2(var_5.a, 300f, var_5.c, ~14452u, (var_5.e | ~(-59422i)) >> (~30110u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_5.b, _wgslsmith_f_op_f32(sign(var_4.x)))), var_4.zz, var_4.yw, _wgslsmith_f_op_f32(-var_4.x));
}

