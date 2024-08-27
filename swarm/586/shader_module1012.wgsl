struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.a;
    var_0 = _wgslsmith_div_vec3_i32(~(~max(~vec3<i32>(u_input.c.x, 6256i, var_0.x), vec3<i32>(-23011i, 0i, u_input.a))), (vec3<i32>(-1i) * -u_input.c.xyw) >> (u_input.b % vec3<u32>(32u)));
    let var_1 = ~select(~(select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xz, vec2<bool>(true, false)) & ~u_input.b.xy), vec2<u32>(abs(0u), _wgslsmith_clamp_u32(~59056u, 0u, 4294967295u << (u_input.b.x % 32u))), vec2<bool>(false, any(vec2<bool>(true, false))));
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(869f, arg_0.b) - vec2<f32>(-1854f, -389f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b, arg_0.b))))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, 791f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-389f, -2299f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(406f, -188f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -991f) * vec2<f32>(arg_0.b, arg_0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b, arg_0.b)))), any(vec4<bool>(false, false, true, true))))), u_input.b.x, 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(138f, 1403f, arg_0.b)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), 806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))));
    var var_3 = var_2.a.x;
    return _wgslsmith_f_op_f32(trunc(arg_0.b));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-638f)), _wgslsmith_div_f32(-456f, -385f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(297f, -1451f)))), 1u, ~(u_input.b.x & ~1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1445f, -736f, -406f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-936f, 131f, -2090f) - vec3<f32>(2380f, 1000f, 437f))))))));
    var var_1 = vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(func_3(Struct_1(firstTrailingBit(abs(u_input.c.wxz)), var_0.d.x, ~vec3<i32>(-20367i, u_input.a, u_input.c.x), ~52175i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1088f - var_0.d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x + 437f), _wgslsmith_f_op_f32(max(var_0.d.x, 985f)))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, -548f, var_0.d.x))), _wgslsmith_f_op_vec3_f32(-var_1.wyy), all(vec4<bool>(false, true, true, false)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_0.d, vec3<f32>(var_1.x, var_1.x, 2269f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.zxy)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -347f, var_0.d.x))) - _wgslsmith_f_op_vec3_f32(-var_1.ywz))) * _wgslsmith_f_op_vec3_f32(-var_1.xyx));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = ~(~((select(vec4<u32>(arg_0.c, u_input.b.x, 1u, 17498u), vec4<u32>(arg_0.b, u_input.b.x, arg_0.c, 22489u), vec4<bool>(false, false, false, false)) ^ select(vec4<u32>(12618u, 4294967295u, 15200u, arg_0.c), vec4<u32>(6462u, 0u, 0u, u_input.b.x), vec4<bool>(false, false, false, true))) << (select(reverseBits(vec4<u32>(14735u, arg_0.c, arg_0.c, 1u)), vec4<u32>(arg_0.c, 0u, 1u, u_input.b.x), all(vec4<bool>(true, true, true, true))) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_mult_i32(~(-2147483647i >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(var_0.yy), vec2<u32>(var_0.x, 0u)) % 32u)), ~u_input.c.x);
    var_0 = vec4<u32>(15041u, ~0u, 0u, 0u | ~_wgslsmith_mult_u32(var_0.x >> (0u % 32u), reverseBits(4294967295u)));
    let var_2 = arg_0;
    return var_2;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(Struct_2(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1520f * -241f) - 505f)), u_input.b.x, _wgslsmith_dot_vec2_u32(min(u_input.b.zy, vec2<u32>(u_input.b.x, 57578u)) ^ ~vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(121f, -554f, 751f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -652f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2330f + -281f))))), Struct_1(u_input.c.wwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(636f))) + -575f), select(u_input.c.wzw, min(u_input.c.wzy, vec3<i32>(1i, u_input.c.x, u_input.c.x)) ^ reverseBits(vec3<i32>(u_input.c.x, u_input.a, u_input.a)), firstLeadingBit(u_input.b.x) <= ~u_input.b.x), u_input.c.x));
    var var_1 = func_4(Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -1000f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(629f, -1503f)))))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(121955u, u_input.b.x, 1u), u_input.b), select(var_0.c, ~(~2786u), true), var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-519f, var_0.d.x))), Struct_1(u_input.c.zzw, _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(-1964f * var_0.a.x) < -312f)), select(vec3<i32>(71396i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.a, u_input.a, -2147483647i) << (vec3<u32>(41367u, var_0.b, var_0.c) % vec3<u32>(32u)), vec3<bool>(true, false, false)) & firstLeadingBit(abs(vec3<i32>(u_input.a, -1i, -31092i))), i32(-1i) * -max(-1i, u_input.a)));
    let var_2 = Struct_1(u_input.c.zyz, var_1.d.x, -(~_wgslsmith_div_vec3_i32(~vec3<i32>(1i, u_input.c.x, 17915i), ~vec3<i32>(u_input.c.x, 8284i, u_input.c.x))), ~firstTrailingBit(0i));
    var_1 = var_0;
    let var_3 = false;
    return Struct_1(~(~(-u_input.c.yyz)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_4(Struct_2(var_0.d.zz, 1u, var_0.b, vec3<f32>(917f, var_1.a.x, var_0.a.x)), 1083f, Struct_1(var_2.a, var_0.a.x, var_2.a, u_input.c.x)).a.x)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.b - var_0.a.x)))))), vec3<i32>(max(~(-20763i), 15149i), -_wgslsmith_div_i32(u_input.c.x, 0i), reverseBits(~_wgslsmith_add_i32(-2147483647i, 6846i))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(28394i, u_input.c.x), ~var_2.d), 1i, 48347i, var_2.d), max(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(var_2.a.x, 1i, 39583i, 2147483647i)), vec4<i32>(u_input.c.x, 1i, var_2.c.x, u_input.c.x)) ^ -_wgslsmith_mult_vec4_i32(vec4<i32>(20192i, 0i, 47276i, -1i), vec4<i32>(-23709i, -2147483647i, var_2.c.x, -2147483647i))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = -1047f;
    let var_1 = !select(vec4<bool>(true, all(vec4<bool>(false, false, true, false)), !select(false, false, true), firstTrailingBit(-2147483647i) == arg_0.a.x), vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true));
    let var_2 = _wgslsmith_clamp_vec3_i32(u_input.c.wwx, min(~u_input.c.zyx, firstLeadingBit(_wgslsmith_mod_vec3_i32(max(vec3<i32>(u_input.c.x, u_input.a, u_input.a), arg_1.c), u_input.c.yyw | vec3<i32>(18064i, arg_0.c.x, arg_0.d)))), vec3<i32>(reverseBits(1i), abs(min(_wgslsmith_sub_i32(arg_0.a.x, arg_1.a.x), arg_1.d)), _wgslsmith_dot_vec2_i32(arg_0.a.yz, u_input.c.ww) | arg_1.d));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-303f))))), arg_0.b));
    var var_3 = func_4(func_4(func_4(func_4(Struct_2(vec2<f32>(arg_0.b, arg_1.b), u_input.b.x, 70119u, vec3<f32>(arg_1.b, arg_1.b, arg_1.b)), _wgslsmith_f_op_f32(func_3(arg_1)), Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, arg_0.c.x), 111f, arg_0.a, arg_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-750f * arg_0.b) * _wgslsmith_f_op_f32(trunc(arg_1.b))), Struct_1(select(arg_0.a, var_2, var_1.ywz), _wgslsmith_f_op_f32(min(1029f, -150f)), u_input.c.xzy, ~(-7572i))), -1075f, func_1()), _wgslsmith_f_op_vec3_f32(func_2()).x, func_1());
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(332f)), -951f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1356f, -1000f, 252f))), vec3<f32>(-1841f, 147f, -880f), vec3<bool>(false, true, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, -391f, 571f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-489f, 1942f, 340f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-937f, -443f, 451f) * vec3<f32>(-1000f, -492f, 735f)))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 403f) * _wgslsmith_f_op_f32(ceil(2660f))) - 483f), 1000f, _wgslsmith_f_op_f32(func_5(Struct_1(vec3<i32>(u_input.a, u_input.a, 57350i), _wgslsmith_f_op_f32(step(-642f, 1363f)), vec3<i32>(14234i, u_input.c.x, u_input.a), _wgslsmith_clamp_i32(-55640i, u_input.c.x, 0i)), func_1()))));
    var var_1 = Struct_1(min(_wgslsmith_mod_vec3_i32(u_input.c.wwz, u_input.c.xzy), vec3<i32>(_wgslsmith_sub_i32(u_input.a, -25177i) | -u_input.a, ~_wgslsmith_mod_i32(u_input.a, u_input.a), abs(~(-41585i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), -_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-44481i, 2147483647i, -2147483647i)), u_input.c.zzz), u_input.a);
    let var_2 = func_4(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(var_0.xz)))), select(u_input.b.x, 22096u, true) >> (23521u % 32u), u_input.b.x, _wgslsmith_f_op_vec3_f32(max(var_0, var_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_5(func_1(), Struct_1(u_input.c.yyy, 567f, var_1.c, var_1.a.x))))), func_1()), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), 285f) + func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.yx), ~38708u, firstLeadingBit(8649u), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, var_0.x, var_1.b), vec3<f32>(1189f, -2038f, var_1.b))), func_4(Struct_2(vec2<f32>(1703f, 341f), 4294967295u, u_input.b.x, var_0), _wgslsmith_f_op_f32(var_1.b * var_1.b), func_1()).d.x, func_1()).d.x), Struct_1(vec3<i32>(-firstLeadingBit(var_1.d), ~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(6292i, u_input.a, -1i, -2147483647i), u_input.c) << (~18446u % 32u)), _wgslsmith_f_op_f32(trunc(var_0.x)), -(u_input.c.zyy ^ firstTrailingBit(var_1.c)), abs(var_1.d)));
    var var_3 = vec2<u32>(~1u, var_2.c) & vec2<u32>(var_2.b, var_2.c);
    var var_4 = func_1();
    var var_5 = var_2;
    var var_6 = select(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), var_5.d.x >= var_4.b, true), !vec3<bool>(true, all(vec4<bool>(true, false, false, true)), true), vec3<bool>(true, !any(vec3<bool>(false, true, false)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)))), !vec3<bool>(-18855i <= ~var_1.c.x, (var_2.a.x != var_4.b) & true, true | select(false, true, false)), false);
    let var_7 = Struct_2(var_5.d.xz, min(u_input.b.x, 0u), 0u, _wgslsmith_f_op_vec3_f32(-var_5.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-vec3<i32>(-15535i, u_input.a, 2147483647i) << (vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.c), u_input.b.zy), var_2.b) % vec3<u32>(32u)), func_1().a >> (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(32942u, 12273u, 5389u), u_input.b), func_4(Struct_2(var_0.zx, 4294967295u, 9877u, var_2.d), var_4.b, Struct_1(vec3<i32>(-46677i, 2147483647i, u_input.c.x), 539f, vec3<i32>(var_4.c.x, -1i, 54594i), var_4.a.x)).c, var_5.b) % vec3<u32>(32u))), -13282i, var_4.a.yz);
}

