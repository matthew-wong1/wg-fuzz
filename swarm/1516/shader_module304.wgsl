struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = -117f;
    var var_1 = abs(_wgslsmith_add_vec3_u32((vec3<u32>(arg_0.a, 0u, arg_0.a) | u_input.b) | ~vec3<u32>(102004u, arg_0.a, 0u), abs(vec3<u32>(u_input.c, arg_0.a, arg_0.a))) ^ vec3<u32>(3554u, abs(abs(1u)), arg_0.a));
    let var_2 = Struct_3(arg_0.b.x, arg_0.b.x);
    var var_3 = firstLeadingBit(vec2<i32>(~(~4193i ^ _wgslsmith_mult_i32(u_input.d, u_input.a)), u_input.d));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1620f))), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(exp2(arg_1)))))));
    return 1i;
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec3_i32(firstTrailingBit(~(~vec3<i32>(u_input.d, u_input.a, u_input.a))), ~vec3<i32>(~func_3(Struct_2(u_input.b.x, vec3<bool>(true, false, true), u_input.b.yy), 1106f), u_input.d, -1i));
    let var_1 = i32(-1i) * -_wgslsmith_div_i32(u_input.d, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.d, u_input.d, 2147483647i), vec4<i32>(-4891i, var_0.x, -2243i, u_input.a)));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1266f, 226f))) + vec2<f32>(-1621f, -2281f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-857f, 656f)) * vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-278f, 405f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(165f, -366f), vec2<f32>(-629f, 352f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1820f))))), Struct_2(u_input.c, select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), u_input.b.zy), -1894f, ~2147483647i);
    var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.d)))), _wgslsmith_f_op_f32(-var_2.d)), var_2.b, Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.c.a, 4294967295u, 0u) & ~vec3<u32>(u_input.b.x, 28329u, 10953u), ~_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(u_input.c, u_input.b.x, u_input.c))), var_2.c.b, (vec2<u32>(9339u, var_2.c.c.x) >> (~u_input.b.yy % vec2<u32>(32u))) ^ var_2.c.c), -424f, -37187i);
    let var_3 = var_2.c;
    return vec2<f32>(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d * var_2.a.x) - _wgslsmith_f_op_f32(min(305f, var_2.d)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-312f + var_2.a.x) * _wgslsmith_f_op_f32(var_2.b + -992f)), var_3.b.x))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(func_2()).x, Struct_2(u_input.b.x, vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true), u_input.b.yz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-361f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f) * 1f)))), u_input.a);
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())))), var_0.d, Struct_2(4294967295u & _wgslsmith_mult_u32(var_0.c.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 94132u, u_input.b.x), vec4<u32>(0u, u_input.c, 35562u, 30739u))), vec3<bool>(true, !any(vec4<bool>(var_0.c.b.x, true, true, var_0.c.b.x)), var_0.c.b.x), vec2<u32>(~max(0u, 27440u), var_0.c.c.x)), -124f, arg_0);
    var var_1 = Struct_1(!vec4<bool>(var_0.c.b.x, all(vec2<bool>(true, true)), true, any(var_0.c.b.xy) == true), vec3<f32>(-1571f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2()).x * var_0.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(sign(-297f))))));
    let var_2 = -u_input.d;
    var var_3 = 1u;
    return Struct_4(var_0.a, -1419f, var_0.c, _wgslsmith_f_op_f32(ceil(-1000f)), min(_wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(arg_1.x, 6387i, u_input.a, 32288i)), (arg_1 >> (vec4<u32>(var_0.c.c.x, 4294967295u, var_0.c.c.x, 1u) % vec4<u32>(32u))) << (max(vec4<u32>(71641u, 1u, u_input.c, 51339u), vec4<u32>(53835u, 0u, 1u, u_input.c)) % vec4<u32>(32u))), 20586i << (((var_0.c.a << (45165u % 32u)) << (4294967295u % 32u)) % 32u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = !select(select(vec4<bool>(false, all(vec4<bool>(false, false, arg_2.b.x, false)), true, arg_2.b.x || true), !(!vec4<bool>(arg_0.c.b.x, arg_2.b.x, arg_2.b.x, arg_0.c.b.x)), select(select(vec4<bool>(arg_2.b.x, arg_2.b.x, false, true), vec4<bool>(false, false, false, arg_2.b.x), true), !vec4<bool>(arg_2.b.x, false, arg_0.c.b.x, false), vec4<bool>(arg_2.b.x, false, arg_2.b.x, arg_2.b.x))), vec4<bool>(all(!vec2<bool>(arg_2.b.x, false)), !(arg_0.c.b.x || false), false & all(arg_2.b), true), true);
    var var_1 = Struct_1(!(!select(!vec4<bool>(arg_2.b.x, arg_2.b.x, true, false), !vec4<bool>(arg_0.c.b.x, false, false, var_0.x), vec4<bool>(arg_0.c.b.x, true, false, false))), vec3<f32>(_wgslsmith_f_op_f32(-371f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b * -161f), _wgslsmith_f_op_f32(-1000f - arg_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-768f + _wgslsmith_div_f32(193f, 529f))), -1000f));
    let var_2 = Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.x))), 1486f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.xy))))), 232f, func_1(min(-22353i ^ -arg_0.e, 29000i), min(abs(reverseBits(vec4<i32>(-55497i, 2147483647i, -2147483647i, u_input.a))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-4477i, 19872i, 1i, 22851i), vec4<i32>(12484i, 77561i, u_input.d, u_input.a), vec4<i32>(-1i, 0i, arg_0.e, -18463i)))).c, 1000f, -(~func_1(arg_0.e, vec4<i32>(u_input.d, u_input.d, u_input.a, -10724i)).e) ^ -25313i);
    let var_3 = all(vec3<bool>(false, !arg_2.b.x, true)) | true;
    var_0 = !vec4<bool>(var_2.c.b.x, all(vec2<bool>(all(vec2<bool>(false, arg_0.c.b.x)), true)), true, false);
    return Struct_3(true, !(!(!var_0.x) | true));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32) -> f32 {
    var var_0 = u_input.b.yy;
    var var_1 = false;
    var var_2 = func_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(select(vec3<i32>(8793i, -2147483647i, 0i), vec3<i32>(-2147483647i, 1i, 36479i), vec3<bool>(true, arg_0.x, true))), firstLeadingBit(vec3<i32>(arg_2, u_input.a, arg_2)) | vec3<i32>(arg_2, 2147483647i, -2147483647i)), vec3<i32>(countOneBits(arg_2 >> (0u % 32u)), 30535i, _wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(arg_2, u_input.d)))), -abs(~(vec4<i32>(arg_2, -2147483647i, 28232i, 20685i) ^ vec4<i32>(-21586i, u_input.d, -2147483647i, u_input.d)))).c;
    var var_3 = func_4(func_1(i32(-1i) * -1i, reverseBits(_wgslsmith_div_vec4_i32(~vec4<i32>(arg_2, u_input.d, -33827i, arg_2), vec4<i32>(u_input.a, arg_2, -2147483647i, arg_2) ^ vec4<i32>(26224i, arg_2, u_input.d, -17191i)))), ~abs(countOneBits(firstLeadingBit(u_input.b.xx))), Struct_2(min(var_0.x, 11777u), var_2.b, vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.xz), 1u)));
    var var_4 = all(!select(var_2.b, vec3<bool>(!var_3.a, true, true), all(!vec2<bool>(var_2.b.x, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(round(-228f)), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1628f, 1f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1700f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(138f + _wgslsmith_f_op_f32(225f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-576f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) + _wgslsmith_f_op_f32(func_5(vec2<bool>(true, true), func_4(func_1(3125i, vec4<i32>(-4645i, 2147483647i, -50635i, -1i)), vec2<u32>(4294967295u, 88999u), func_1(u_input.a, vec4<i32>(u_input.a, u_input.a, 24946i, 25711i)).c), 16555i))), all(!vec2<bool>(38194u < u_input.b.x, true))));
    let var_1 = func_4(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1594f)))), 1f, func_1(-22264i, -countOneBits(vec4<i32>(-1i, u_input.d, 0i, u_input.a))).c, -1236f, ~u_input.a << (_wgslsmith_add_u32(~u_input.b.x, 0u) % 32u)), vec2<u32>(~4294967295u, _wgslsmith_mod_u32(u_input.c, min(5363u << (u_input.c % 32u), 1u))), func_1(~(~(~(-53664i))), _wgslsmith_sub_vec4_i32(vec4<i32>(-u_input.a, u_input.d, -u_input.a, ~11090i), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.d, 22384i, u_input.d), vec4<i32>(u_input.d, u_input.a, u_input.d, -2147483647i)), -vec4<i32>(-1i, 35836i, 25557i, u_input.a)))).c);
    let var_2 = vec4<i32>(u_input.a, -abs(u_input.a), -u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, abs(u_input.d), 1i, -u_input.d) | _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d, u_input.d, -1i, 35691i)), vec4<i32>(u_input.d, u_input.a, -1i, u_input.a)), max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 2147483647i, 5886i), abs(vec4<i32>(-1i, u_input.a, u_input.d, -1i))), vec4<i32>(u_input.a << (1u % 32u), ~29733i, u_input.a ^ -2147483647i, u_input.d))));
    var var_3 = Struct_5(var_1, func_1(countOneBits(~(-11162i >> (u_input.c % 32u))), ~(~vec4<i32>(u_input.a, 0i, var_2.x, 22575i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1436f - 806f), _wgslsmith_f_op_f32(max(-2593f, -1467f))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-287f + -337f) - _wgslsmith_f_op_f32(round(-517f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-589f - 1906f), _wgslsmith_f_op_f32(f32(-1f) * -1042f), false || var_1.a)), -646f == _wgslsmith_f_op_f32(round(330f))))));
    let var_4 = var_3.b.a;
    let var_5 = Struct_1(vec4<bool>(all(vec2<bool>(var_1.a, select(false, var_3.a.a, var_1.a))), true, var_3.b.c.b.x, all(vec3<bool>(var_1.b, any(var_3.b.c.b), var_3.a.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, var_4.x, var_3.c) * vec3<f32>(-1128f, -1391f, var_3.c)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.b.d, var_4.x, 1000f), vec3<f32>(265f, 2019f, -629f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b.a.x, -929f) - 1000f), -1244f, var_3.c)));
    var var_6 = Struct_1(var_5.a, vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_5.b.x))), -1265f));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, -1170f);
}

