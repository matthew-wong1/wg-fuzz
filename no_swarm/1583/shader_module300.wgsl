struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec3<bool>) -> vec2<f32> {
    let var_0 = !(true && all(!arg_2.xz)) & all(vec4<bool>(!(u_input.c > u_input.c), arg_2.x, true, arg_2.x));
    var var_1 = u_input.a;
    var_1 = ~u_input.a;
    var var_2 = Struct_4(Struct_1(arg_2.x | (true | any(vec4<bool>(arg_2.x, true, arg_2.x, true)))), all(arg_2), min(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b.x, abs(9378u), max(0u, 18862u)), u_input.b.x), _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, ~1u), _wgslsmith_dot_vec2_u32(~u_input.b, _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(u_input.c, 4294967295u))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(751f, 1434f) - vec2<f32>(-199f, 117f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 1000f)))))))), u_input.a);
    let var_3 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(var_2.d + var_2.d);
}

fn func_2() -> i32 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1012f, -2419f), vec2<f32>(1003f, 1163f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-140f, 1000f), vec2<f32>(275f, -1000f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-500f, -2152f)), _wgslsmith_div_vec2_f32(vec2<f32>(-511f, 1689f), vec2<f32>(753f, -389f))))) * _wgslsmith_f_op_vec2_f32(func_3(2147483647i, abs(_wgslsmith_mod_i32(u_input.a, u_input.a)), vec3<bool>(u_input.b.x != 0u, false, all(vec3<bool>(true, false, true))))))));
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.a, 33497i, u_input.a, var_0)), vec4<i32>(_wgslsmith_div_i32(u_input.a, var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(-36458i, var_0, -22050i, var_0), vec4<i32>(var_0, 25476i, u_input.a, 0i)), u_input.a, firstTrailingBit(32254i))), vec4<i32>(~reverseBits(var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(-40817i, 0i, var_0, u_input.a), vec4<i32>(var_0, -1i, var_0, 1i)) | _wgslsmith_mod_i32(1i, -54552i), u_input.a, -5810i)), 1i);
    let var_3 = Struct_3(true | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)) == var_1.x));
    let var_4 = _wgslsmith_sub_u32(u_input.b.x, u_input.c);
    return i32(-1i) * -u_input.a;
}

fn func_1() -> Struct_4 {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(max(-1i, u_input.a), -2147483647i, 2147483647i, -1i), vec4<i32>(~u_input.a, -37652i, countOneBits(-18627i), ~u_input.a)));
    var_0 = u_input.a;
    var_0 = func_2() ^ _wgslsmith_mod_i32(-(u_input.a | u_input.a), 0i);
    var var_1 = -_wgslsmith_add_vec4_i32(-(~(vec4<i32>(-22185i, 1i, u_input.a, u_input.a) >> (vec4<u32>(19u, u_input.c, u_input.b.x, 2331u) % vec4<u32>(32u)))), min(select(firstLeadingBit(vec4<i32>(2147483647i, u_input.a, -2147483647i, u_input.a)), ~vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true)), vec4<i32>(~(-64401i), 28636i, -60101i, firstTrailingBit(u_input.a))));
    let var_2 = select(vec4<bool>(all(vec3<bool>(var_1.x > u_input.a, any(vec3<bool>(false, false, true)), true)), true, false, any(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)))), !select(vec4<bool>(true, all(vec3<bool>(false, true, false)), true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), any(vec2<bool>(true & any(vec4<bool>(false, true, true, true)), false)));
    return Struct_4(Struct_1(true), true, 15132u, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1604f), vec2<f32>(-1000f, 943f), var_2.yy))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(162f, 1105f)))))), _wgslsmith_add_i32(_wgslsmith_add_i32(func_2(), u_input.a) ^ (_wgslsmith_add_i32(u_input.a, 34962i) | 55775i), var_1.x));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_4 {
    let var_0 = arg_2;
    var var_1 = vec2<i32>(-21626i, -2147483647i);
    var var_2 = -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 0i, var_1.x, var_0.e), -reverseBits(vec4<i32>(-1i, 2147483647i, 0i, u_input.a))) >> (vec4<u32>(39461u, _wgslsmith_sub_u32(~33144u >> (var_0.c % 32u), _wgslsmith_clamp_u32(5165u, _wgslsmith_div_u32(1u, u_input.b.x), 4294967295u)), countOneBits(24038u), ~64709u) % vec4<u32>(32u));
    let var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(abs(select(vec4<i32>(3751i, u_input.a, var_2.x, 20430i), vec4<i32>(var_0.e, u_input.a, arg_2.e, var_1.x), arg_1)), -firstLeadingBit(vec4<i32>(1i, 10348i, var_1.x, 2147483647i) ^ vec4<i32>(arg_2.e, 75425i, u_input.a, var_1.x))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 0i, _wgslsmith_mod_i32(-25573i, -12803i), -2147483647i), vec4<i32>(-var_1.x, 1i, -27289i, 1i), (vec4<i32>(-47907i, arg_2.e, u_input.a, var_2.x) & vec4<i32>(-8241i, 9711i, var_2.x, 1i)) >> ((vec4<u32>(1414u, 9009u, arg_2.c, u_input.c) ^ vec4<u32>(arg_2.c, 1u, 1u, 18214u)) % vec4<u32>(32u)))));
    var_1 = var_3.ww;
    return arg_2;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(0i, -u_input.a), _wgslsmith_sub_i32(0i, -2147483647i)), vec2<i32>(_wgslsmith_div_i32(u_input.a, firstLeadingBit(u_input.a)), arg_0.e)) & -_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.e, u_input.a) | (vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(7315i, -27618i)), vec2<i32>(~u_input.a, 1i));
    let var_1 = -758f;
    let var_2 = select(vec4<bool>(true, arg_3.a, u_input.a <= (u_input.a & 2147483647i), all(!select(vec2<bool>(true, true), arg_2, false))), !vec4<bool>(false, true, _wgslsmith_f_op_f32(var_1 + arg_0.d.x) < -944f, arg_0.b), !(true & (_wgslsmith_f_op_f32(-var_1) >= _wgslsmith_f_op_f32(-1313f - 751f))));
    var var_3 = false;
    var var_4 = !(!(select(arg_3.a, arg_2.x, arg_0.b) & (arg_0.e < _wgslsmith_sub_i32(9963i, 0i))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(257f - -1336f), -1692f)));
}

fn func_6(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_4(~(u_input.b.x << (abs(8722u) % 32u)), select(!select(select(vec4<bool>(arg_2.a, arg_2.a, true, arg_2.a), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a), arg_2.a), !vec4<bool>(arg_2.a, false, arg_2.a, arg_2.a), -5905i != u_input.a), !select(select(vec4<bool>(false, arg_2.a, false, false), vec4<bool>(arg_2.a, arg_2.a, true, false), true), !vec4<bool>(arg_2.a, arg_2.a, false, arg_2.a), !vec4<bool>(false, false, true, arg_2.a)), !(arg_1.x < 0i) | arg_2.a), func_4(u_input.c, !(!(!vec4<bool>(false, arg_2.a, arg_2.a, false))), Struct_4(Struct_1(!arg_2.a), func_1().b, u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, arg_0), vec2<f32>(arg_0, 230f))) - vec2<f32>(arg_0, arg_0)), ~(i32(-1i) * -52878i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + 155f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x) - arg_0)));
    let var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(53074u, ~4294967295u, max(1u, min(u_input.b.x, ~u_input.c))), vec3<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.c, 4269u), vec3<u32>(u_input.b.x, var_0.c, 104464u))), ~(~var_0.c), 22886u));
    var var_3 = Struct_2(var_0.a);
    var var_4 = _wgslsmith_div_vec4_u32(vec4<u32>(min(abs(max(var_0.c, var_2.x)), 6723u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(15443u, var_0.c), countOneBits(var_0.c), var_2.x), ~var_2), select(func_1().c, func_4(firstTrailingBit(var_2.x), select(vec4<bool>(var_0.a.a, arg_2.a, true, arg_2.a), vec4<bool>(arg_2.a, true, var_0.b, var_0.b), var_3.a.a), var_0).c, all(vec3<bool>(true, true, false)) && true), _wgslsmith_dot_vec3_u32(var_2, vec3<u32>(select(4294967295u, var_2.x, var_0.b), u_input.b.x, ~1u))), vec4<u32>(firstLeadingBit(var_0.c), var_0.c, select(func_4(4294967295u, !vec4<bool>(false, var_0.b, var_3.a.a, var_3.a.a), var_0).c, u_input.c, false), u_input.c));
    return Struct_1(var_3.a.a);
}

fn func_7(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_4) -> Struct_4 {
    var var_0 = vec2<i32>(min(u_input.a, arg_3.e ^ 0i), i32(-1i) * -u_input.a);
    let var_1 = u_input.a;
    var_0 = _wgslsmith_mult_vec2_i32(~abs(vec2<i32>(-16503i, var_0.x)), countOneBits(-firstLeadingBit(vec2<i32>(-2147483647i, 61267i)))) >> (~(~u_input.b) % vec2<u32>(32u));
    var var_2 = all(select(vec4<bool>(true, false, false, false), select(!select(vec4<bool>(true, arg_2.a, false, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, true, arg_1, arg_2.a), select(vec4<bool>(arg_3.a.a, false, true, arg_1), vec4<bool>(true, arg_1, true, true), arg_3.b), var_0.x == -2147483647i), vec4<bool>(arg_1, func_6(arg_0.x, vec4<i32>(u_input.a, 0i, u_input.a, -2147483647i), arg_3.a).a, true, !arg_3.a.a)), ((1u >> (arg_3.c % 32u)) >> (11855u % 32u)) <= 0u));
    var var_3 = Struct_4(arg_2, arg_3.b, _wgslsmith_mult_u32(~0u, func_1().c ^ max(1u, 20838u)), _wgslsmith_f_op_vec2_f32(func_3(~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-15005i, arg_3.e), vec2<i32>(2147483647i, var_1))), -(_wgslsmith_mod_i32(2147483647i, var_0.x) ^ 40106i), !vec3<bool>(arg_0.x != arg_0.x, !arg_1, arg_1))), _wgslsmith_add_i32(-17321i, var_0.x));
    return Struct_4(func_4(_wgslsmith_dot_vec2_u32(~u_input.b, firstLeadingBit(select(vec2<u32>(arg_3.c, arg_3.c), u_input.b, vec2<bool>(var_3.b, arg_1)))), vec4<bool>(true, any(vec2<bool>(arg_2.a, true)), true, func_1().b), arg_3).a, true, func_4(countOneBits(min(_wgslsmith_mod_u32(1u, u_input.c), _wgslsmith_div_u32(u_input.b.x, 0u))), select(!(!vec4<bool>(arg_3.b, false, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(arg_1, var_3.b, arg_2.a, false), true), any(!vec2<bool>(arg_1, arg_2.a))), func_4(0u, select(select(vec4<bool>(var_3.a.a, false, arg_3.a.a, true), vec4<bool>(arg_2.a, arg_1, true, var_3.b), arg_1), select(vec4<bool>(var_3.b, arg_1, true, true), vec4<bool>(arg_2.a, true, true, false), vec4<bool>(var_3.a.a, arg_3.a.a, true, false)), any(vec4<bool>(var_3.b, arg_1, arg_3.b, false))), func_1())).c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))) * var_3.d), arg_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), -267f, _wgslsmith_f_op_f32(min(-1256f, -403f)), _wgslsmith_f_op_f32(f32(-1f) * -406f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(1f, 1f, 1f, 1f))))), !(!(any(vec2<bool>(false, true)) & true)), func_6(_wgslsmith_f_op_f32(func_5(func_4(u_input.b.x, vec4<bool>(true, true, true, true), func_1()), func_4(15149u, vec4<bool>(true, true, true, true), Struct_4(Struct_1(true), true, 9099u, vec2<f32>(140f, -228f), u_input.a)).a, vec2<bool>(true, true), Struct_3(true))), max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -30557i, u_input.a, u_input.a), vec4<i32>(6340i, u_input.a, -1i, 39520i)) | vec4<i32>(55198i, -26087i, u_input.a, -90387i), ~(-vec4<i32>(-1i, u_input.a, -2147483647i, -47331i))), Struct_1(true & any(vec2<bool>(false, true)))), func_4(36648u, vec4<bool>(true, true, true, true), Struct_4(Struct_1(45548u >= u_input.b.x), ~u_input.b.x == 64169u, ~(u_input.b.x >> (u_input.c % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2604f)), ~_wgslsmith_clamp_i32(u_input.a, 34728i, -38044i))));
    let var_1 = var_0.c;
    var var_2 = ~(~select(vec3<i32>(-1i) * -vec3<i32>(var_0.e, var_0.e, var_0.e), _wgslsmith_add_vec3_i32(-vec3<i32>(var_0.e, u_input.a, 1i), -vec3<i32>(u_input.a, var_0.e, 0i)), abs(var_0.e) > (i32(-1i) * -329i)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -644f);
    var_2 = select(_wgslsmith_mult_vec3_i32(vec3<i32>(~2121i, -var_2.x, func_2()), countOneBits(countOneBits(vec3<i32>(u_input.a, var_2.x, var_0.e)))), _wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.e, u_input.a, var_2.x), vec3<i32>(2147483647i, var_0.e, var_2.x))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-8416i, var_2.x, u_input.a) >> (vec3<u32>(81775u, u_input.b.x, var_1) % vec3<u32>(32u)), countOneBits(vec3<i32>(u_input.a, -1i, u_input.a))), ~vec3<i32>(-2147483647i, 46648i, var_0.e)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-918f, var_3, -452f, -747f) + vec4<f32>(2038f, var_3, var_0.d.x, -810f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(154f, -126f, 193f, var_0.d.x) - vec4<f32>(var_3, var_3, var_3, -2400f)))))));
}

