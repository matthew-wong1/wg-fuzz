struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = Struct_2(-57804i, abs(-arg_0.a.yzw), _wgslsmith_f_op_f32(f32(-1f) * -1188f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -1259f, -1031f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(466f, -1000f, -1514f))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-140f, 344f, 710f), vec3<f32>(679f, 1000f, -2281f), vec3<bool>(arg_0.b.x, true, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1644f, 109f, 332f)))))));
    var_0 = Struct_2(-(var_0.b.x ^ arg_0.a.x), var_0.b, var_0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-837f)), _wgslsmith_f_op_f32(max(-199f, _wgslsmith_div_f32(var_0.d.x, -483f))), 1546f) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * -835f), var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d.x, -852f)) * _wgslsmith_f_op_f32(-var_0.c)))));
    var_0 = Struct_2(~_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b.x, 14248i, 12144i), vec4<i32>(-1i, var_0.a, var_0.b.x, var_0.b.x)), vec4<i32>(-8587i, var_0.b.x, u_input.b.x, 29350i) >> (~u_input.e % vec4<u32>(32u))), vec3<i32>(max(-(56020i ^ var_0.a), ~33032i), abs(-reverseBits(u_input.c)), -18119i), var_0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-739f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c) * var_0.d));
    let var_1 = 1000f;
    var var_2 = 2147483647i | (~2147483647i & max(_wgslsmith_div_i32(arg_0.a.x | -1i, firstTrailingBit(-59545i)), -50813i));
    return countOneBits(reverseBits(select(vec3<i32>(-14722i, -18573i, 38348i) << (~vec3<u32>(u_input.a.x, u_input.a.x, 13434u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(u_input.b.x, 2147483647i), -45158i, 0i), select(!vec3<bool>(true, arg_0.b.x, arg_0.b.x), !vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), var_1 >= var_0.c))));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_sub_vec3_i32(arg_0.b, select(min(arg_0.b, vec3<i32>(32785i, arg_0.a, arg_0.a)) << (select(u_input.e.xxy, ~vec3<u32>(94430u, u_input.d, 0u), select(true, true, true)) % vec3<u32>(32u)), func_3(Struct_1(~vec4<i32>(-58515i, 3835i, u_input.b.x, u_input.c), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), true));
    var_0 = vec3<i32>(-1i) * -arg_0.b;
    var_0 = arg_0.b;
    var var_1 = ~select(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.c, 63779i, 2147483647i), vec4<i32>(22450i, arg_0.b.x, u_input.b.x, -30750i)), ~arg_0.a, 0i, firstLeadingBit(i32(-1i) * -2147483647i)), vec4<i32>(28398i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 1i, var_0.x), vec4<i32>(u_input.b.x, arg_0.a, var_0.x, arg_0.b.x)), u_input.c, arg_0.b.x) | vec4<i32>(arg_0.b.x, abs(var_0.x), _wgslsmith_div_i32(-32951i, -2086i), var_0.x), (all(vec2<bool>(true, false)) | true) != (true || (u_input.e.x >= 0u)));
    var_1 = abs(~vec4<i32>(var_0.x, 734i, arg_0.a, ~1i));
    return arg_0.b.x;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(284f + -273f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1261f)))), _wgslsmith_f_op_f32(-1000f + -1285f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-917f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-943f, -1002f))))));
    let var_1 = max(arg_0.a.x, arg_0.a.x);
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(func_2(Struct_2(-6014i, vec3<i32>(-21368i, 24904i, u_input.b.x), var_0.x, vec3<f32>(var_0.x, -1574f, var_0.x))), 0i)), firstLeadingBit(686i)), select(vec2<i32>(~15905i, -u_input.c), vec2<i32>(-23131i, abs(~arg_0.a.x)), all(vec3<bool>(arg_0.b.x, all(arg_0.b), all(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1248f, -347f) - vec3<f32>(-1008f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(997f, var_0.x, var_0.x))))));
    var var_3 = Struct_3(_wgslsmith_div_vec3_i32(arg_0.a.zwz, arg_0.a.wyx), arg_0.b, false, arg_0, Struct_2(abs(-(1i << (u_input.e.x % 32u))), _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(arg_0.a.zyw, vec3<i32>(1i, 0i, var_2.x))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, 0i, var_2.x), arg_0.a), ~0i, max(arg_0.a.x, 26217i))), 854f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(280f, var_0.x, var_0.x) * vec3<f32>(var_0.x, 759f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1654f, 441f, var_0.x) - vec3<f32>(var_0.x, -103f, var_0.x))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(904f)) * _wgslsmith_f_op_f32(var_3.e.c + var_3.e.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.b.x), vec3<i32>(2147483647i, u_input.b.x, -11155i)), -12159i, u_input.b.x, 8383i), select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, true, true))))) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-549f, -2405f), _wgslsmith_f_op_f32(f32(-1f) * -856f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) - _wgslsmith_f_op_f32(ceil(1000f)));
    var var_1 = abs(_wgslsmith_sub_vec3_i32(select(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<i32>(u_input.b.x, u_input.c, u_input.b.x), vec3<bool>(false, true, false)), select(vec3<i32>(u_input.c, 2147483647i, -1i), vec3<i32>(15491i, -2147483647i, u_input.c), false)), _wgslsmith_div_vec3_i32(min(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), vec3<i32>(u_input.c, 1i, u_input.c)), ~vec3<i32>(u_input.b.x, -8288i, 2147483647i)), !all(vec2<bool>(true, true))), firstTrailingBit(firstTrailingBit(vec3<i32>(-1i, 198i, -19799i)))));
    let var_2 = Struct_1(((vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_1.x, 1i, 31331i)) & select(~vec4<i32>(var_1.x, u_input.c, var_1.x, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, u_input.c, var_1.x, u_input.b.x), vec4<i32>(var_1.x, var_1.x, var_1.x, -18714i), vec4<i32>(u_input.b.x, 1i, 27160i, -70987i)), vec4<bool>(false, true, true, false))) << (~u_input.e % vec4<u32>(32u)), !(!vec2<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(false, false)))));
    var var_3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(-min(var_2.a.x, 2147483647i), u_input.c), i32(-1i) * -18031i, _wgslsmith_mod_i32(-1i, i32(-1i) * -2147483647i)), _wgslsmith_mult_i32(var_2.a.x, _wgslsmith_div_i32(1i, -5105i ^ u_input.b.x)));
}

