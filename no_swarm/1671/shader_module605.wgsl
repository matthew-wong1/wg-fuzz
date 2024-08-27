struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    let var_0 = -vec3<i32>(21780i, -1i, 1i);
    var var_1 = 1u;
    var_1 = _wgslsmith_clamp_u32(u_input.a, u_input.a >> (~(~_wgslsmith_clamp_u32(25904u, 1u, 1u)) % 32u), countOneBits(1u));
    var_1 = select(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, arg_1.b), vec2<u32>(_wgslsmith_mult_u32(66537u, arg_1.b), u_input.a), !(!arg_1.a.xx)), _wgslsmith_div_vec2_u32(select(vec2<u32>(arg_1.b, 97703u) & vec2<u32>(1u, 12807u), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.b, 4294967295u), vec2<u32>(arg_1.b, arg_1.b), vec2<u32>(u_input.a, arg_1.b)), arg_1.a.yy), vec2<u32>(1u, 1u))), arg_1.b, all(vec4<bool>(true, all(arg_1.a.yz) && arg_1.a.x, arg_2, arg_2)));
    var_1 = _wgslsmith_clamp_u32(1u, ~_wgslsmith_div_u32(~arg_1.b, ~u_input.a), ~reverseBits(u_input.a));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(742f, 2064f) - vec2<f32>(-1714f, 417f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-621f, 227f) + vec2<f32>(234f, -1385f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(644f, 596f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(457f, 1183f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1640f, -812f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-333f, 1686f)), arg_1.a.xx)))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1323f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) * _wgslsmith_f_op_f32(f32(-1f) * -549f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(608f, -1075f) - -456f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f + -1280f))))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(403f, -1206f) * vec2<f32>(1000f, 657f)))) + _wgslsmith_f_op_vec2_f32(func_3(true, Struct_1(vec3<bool>(true, false, true), u_input.a), true))) - vec2<f32>(1f, 1f)) + vec2<f32>(-1099f, -1415f));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, select(2147483647i, 11214i, false)), countOneBits(vec3<i32>(0i, -2147483647i, -2147483647i))), ~(-min(0i, 24819i))) & (_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(33162i, 3572i), _wgslsmith_mult_i32(1i, firstLeadingBit(-23484i)), -(i32(-1i) * -55255i)) & (~0i >> (u_input.a % 32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - _wgslsmith_f_op_f32(exp2(var_0.x))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(-var_0.x)), var_0.x) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 256f, var_0.x) + vec4<f32>(1046f, -1625f, -1084f, -196f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -725f) + vec4<f32>(var_0.x, -183f, -758f, -1325f))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(-290f)), _wgslsmith_f_op_f32(var_0.x * var_0.x)) - vec4<f32>(3328f, var_0.x, _wgslsmith_f_op_f32(-690f * var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, var_0.x, var_0.x, 1408f) * vec4<f32>(-1323f, 1549f, var_0.x, 765f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1641f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 326f, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(697f - var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(297f + var_2.x))))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-383f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_2.x, var_0.x), _wgslsmith_f_op_f32(sign(var_2.x))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 2103f) - vec2<f32>(var_0.x, var_2.x)), _wgslsmith_f_op_vec2_f32(var_2.zz - var_2.zw)), var_2.ww)));
    return Struct_2(_wgslsmith_mult_vec2_i32((reverseBits(vec2<i32>(var_1, var_1)) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) >> (select(~vec2<u32>(4294967295u, 25581u), max(vec2<u32>(10883u, 0u), vec2<u32>(13165u, 34253u)), vec2<bool>(true, true)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(0i, var_1), firstLeadingBit(vec2<i32>(var_1, -1i))), vec2<i32>(~57996i, -var_1))));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = func_2();
    var_1 = Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i), -vec2<i32>(var_1.a.x, 13618i)));
    let var_2 = ~countOneBits(vec4<u32>(reverseBits(8560u), 47959u, ~(arg_0.a.b << (arg_0.a.b % 32u)), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.a.b, arg_0.a.b), vec3<u32>(u_input.a, u_input.a, 22649u)))));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, u_input.a) ^ (u_input.a >> (74773u % 32u)), ~(~68388u)) ^ ((_wgslsmith_sub_u32(37965u, 0u) ^ ~u_input.a) ^ 18346u), 1u);
    return arg_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = arg_2.b;
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(max(~vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(1u, 0u, var_1)), ~vec3<u32>(arg_2.a.b, var_1, arg_2.a.b))), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, 0u, func_1(Struct_3(Struct_1(arg_1.zwz, var_1), Struct_2(vec2<i32>(arg_2.c.a.x, var_0.a.x)), Struct_2(arg_2.b.a))).a.b) & ~(~arg_2.a.b), arg_2.a.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, var_1, 46254u), vec3<u32>(~38095u, arg_2.a.b, 1u))));
    var var_3 = Struct_3(arg_2.a, func_1(arg_2).c, func_1(arg_2).b);
    var_2 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(68960u, var_3.a.b), u_input.a), u_input.a), ~(~var_3.a.b));
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = ~select(~(~(vec2<u32>(4294967295u, 17253u) ^ vec2<u32>(15898u, arg_0.a.b))), reverseBits(min(~vec2<u32>(u_input.a, 0u), vec2<u32>(30231u, 36853u))), true & any(select(vec4<bool>(false, true, true, arg_0.a.a.x), vec4<bool>(true, true, arg_0.a.a.x, true), vec4<bool>(arg_0.a.a.x, false, true, arg_0.a.a.x))));
    var_0 = _wgslsmith_div_vec2_u32(~select(countOneBits(vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(0u, var_0.x) >> ((vec2<u32>(63323u, arg_0.a.b) ^ vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)), select(vec2<bool>(true, true), !arg_0.a.a.xz, select(vec2<bool>(false, true), arg_0.a.a.yz, arg_0.a.a.x))), ~vec2<u32>(min(var_0.x, firstTrailingBit(4294967295u)), ~arg_0.a.b));
    var_0 = ~(~max(_wgslsmith_div_vec2_u32(vec2<u32>(11285u, arg_0.a.b), vec2<u32>(11941u, 28382u)), abs(vec2<u32>(u_input.a, 0u)))) >> (select(firstLeadingBit(vec2<u32>(var_0.x, arg_0.a.b) | ~vec2<u32>(4294967295u, 28141u)), _wgslsmith_mult_vec2_u32(firstLeadingBit(~vec2<u32>(var_0.x, var_0.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, var_0.x), vec2<u32>(0u, 25084u)) ^ countOneBits(vec2<u32>(u_input.a, 1u))), false) % vec2<u32>(32u));
    var_0 = ~select(vec2<u32>(reverseBits(u_input.a), 3491u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(2275u, 1u, u_input.a, arg_0.a.b), vec4<u32>(var_0.x, 1u, 24953u, 19598u)), ~5247u) | max(vec2<u32>(31294u, u_input.a), ~vec2<u32>(u_input.a, arg_0.a.b)), !vec2<bool>(arg_0.a.a.x, true));
    let var_1 = func_1(arg_0);
    return var_1.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2034f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-378f + _wgslsmith_f_op_f32(select(769f, 1508f, false))), 1f, any(vec3<bool>(true, arg_0.a.x, false))))));
    let var_1 = func_5(func_1(func_1(func_1(Struct_3(arg_0, Struct_2(vec2<i32>(1926i, 0i)), Struct_2(arg_1.yy))))), func_1(Struct_3(Struct_1(vec3<bool>(arg_0.a.x, arg_0.a.x, true), u_input.a & arg_0.b), func_2(), func_4(arg_0.a, select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), vec4<bool>(arg_0.a.x, false, arg_0.a.x, true), arg_0.a.x), func_1(Struct_3(arg_0, Struct_2(arg_1.xx), Struct_2(vec2<i32>(42485i, arg_1.x))))))).c);
    let var_2 = arg_0;
    return StorageBuffer(_wgslsmith_sub_u32(~77554u | select(_wgslsmith_clamp_u32(arg_0.b, 0u, 10169u), 1622u, true), 0u), var_0, firstLeadingBit(abs(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_1.x, arg_1.x), _wgslsmith_add_i32(arg_1.x, -30929i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(Struct_3(Struct_1(vec3<bool>(false, true, false), ~u_input.a), func_4(vec3<bool>(true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), func_1(Struct_3(Struct_1(vec3<bool>(true, true, true), u_input.a), Struct_2(vec2<i32>(-27216i, 2147483647i)), Struct_2(vec2<i32>(2147483647i, -43737i))))), func_2()), func_4(vec3<bool>(true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), Struct_3(Struct_1(vec3<bool>(false, false, true), 0u), func_1(Struct_3(Struct_1(vec3<bool>(false, true, false), u_input.a), Struct_2(vec2<i32>(1i, 55280i)), Struct_2(vec2<i32>(1i, -2147483647i)))).b, Struct_2(vec2<i32>(0i, -45139i))))), vec3<i32>(1i, 1i, 1i));
}

