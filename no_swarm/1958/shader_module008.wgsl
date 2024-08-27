struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: Struct_5) -> vec3<u32> {
    var var_0 = Struct_3(firstTrailingBit(vec4<u32>(~u_input.a, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, arg_3.d, 55765u), ~vec4<u32>(arg_3.d, arg_3.a.x, u_input.b.x, 0u)), u_input.a)), ~1u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1049f * arg_2.x) + _wgslsmith_f_op_f32(arg_1.x + arg_0.x)) - _wgslsmith_f_op_f32(select(arg_0.x, arg_3.c.x, false)))));
    var_0 = Struct_3(reverseBits(max(_wgslsmith_add_vec4_u32(var_0.a >> (var_0.a % vec4<u32>(32u)), var_0.a >> (vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u) % vec4<u32>(32u))), ~var_0.a)), _wgslsmith_mult_u32(~(~u_input.a) | _wgslsmith_div_u32(~8242u, u_input.b.x), firstTrailingBit(u_input.a)), var_0.c);
    var_0 = Struct_3(var_0.a, ~2521u, Struct_1(-351f));
    var var_1 = ~vec2<u32>(var_0.a.x & select(var_0.a.x, _wgslsmith_dot_vec3_u32(arg_3.a, arg_3.a), select(arg_3.b.x, arg_3.e.x, false)), ~8071u);
    var_0 = Struct_3(vec4<u32>(~35692u, abs(1u), var_1.x, 18197u) >> (vec4<u32>(u_input.a, ~_wgslsmith_add_u32(arg_3.a.x, 1u), 28412u, 9553u) % vec4<u32>(32u)), max(0u, firstTrailingBit(~44265u)) >> (var_0.a.x % 32u), var_0.c);
    return var_0.a.wwz << (var_0.a.zyx % vec3<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(vec3<u32>(53671u, _wgslsmith_div_u32(u_input.a, ~(arg_1.x >> (arg_1.x % 32u))), 0u), ~_wgslsmith_mod_vec4_u32(max(~vec4<u32>(12870u, 0u, u_input.a, 16442u), vec4<u32>(arg_1.x, u_input.b.x, u_input.b.x, arg_1.x) << (vec4<u32>(57378u, 1u, arg_1.x, 71012u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, arg_1.x, u_input.a), vec4<u32>(93122u, u_input.a, 0u, 48007u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 30687u, u_input.a, arg_1.x), vec4<u32>(4294967295u, 3538u, 1u, arg_1.x)), vec4<u32>(u_input.b.x, 38922u, arg_1.x, arg_1.x) | vec4<u32>(4294967295u, u_input.b.x, u_input.a, arg_1.x))), select(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, _wgslsmith_mult_i32(arg_0, -2147483647i)), all(select(!vec3<bool>(arg_2, true, arg_2), select(vec3<bool>(arg_2, true, true), vec3<bool>(true, arg_2, arg_2), arg_2), select(vec3<bool>(false, true, arg_2), vec3<bool>(arg_2, arg_2, false), vec3<bool>(false, true, false))))));
    return !vec3<bool>(var_0.c.x < -37676i, any(vec4<bool>(false, true || arg_2, arg_2 | arg_2, all(vec2<bool>(true, false)))), arg_2 && true);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = !select(vec3<bool>(true, false, true), func_4(arg_3.c.x, func_3(vec2<f32>(340f, 901f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1611f, -1000f), vec2<f32>(388f, -572f))), vec2<f32>(376f, 949f), Struct_5(vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec4<bool>(true, false, false, false), vec4<f32>(482f, -562f, -1118f, 241f), 1u, vec4<bool>(true, true, true, false))), true, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -903f))), vec3<bool>(true, true, arg_3.a.x >= abs(4294967295u)));
    let var_1 = _wgslsmith_mult_u32(~arg_3.b.x, u_input.b.x) << (_wgslsmith_sub_u32(38327u, arg_3.b.x) % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-859f, -1000f, 1000f, 680f))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-498f, -147f, -729f, -608f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 173f, -1293f, 1410f), vec4<f32>(944f, 894f, -511f, -922f))))), !vec4<bool>(var_0.x, true, true, var_0.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1019f, 938f, -296f, -1941f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-680f, 1446f, 1314f, 371f) * vec4<f32>(495f, -615f, 1881f, 1000f)) - vec4<f32>(-1589f, -1516f, 788f, 167f)))))));
    let var_3 = 1i;
    var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1419f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) - 1401f))), -1534f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1325f * var_2.x)), -668f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x * var_2.x)))))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_3(~(~(~vec4<u32>(arg_2, arg_2, 0u, arg_2)) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 13561u, arg_2, u_input.a), vec4<u32>(arg_2, 97027u, 6005u, u_input.b.x))), _wgslsmith_mod_u32(~(1u << (arg_2 % 32u)), _wgslsmith_div_u32(arg_2, 10173u)), func_2(31721i, vec2<i32>(1i, 1i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), max(vec4<i32>(49176i, 60727i, 1i, -23400i), vec4<i32>(0i, -31388i, -12921i, 44224i)), vec4<i32>(-1i, 0i, 1264i, -1i)), Struct_2(u_input.b << (u_input.b % vec3<u32>(32u)), vec4<u32>(65949u, 28189u, arg_2 >> (arg_2 % 32u), func_3(vec2<f32>(arg_0.a, -979f), vec2<f32>(1118f, 872f), vec2<f32>(arg_0.a, arg_0.a), Struct_5(vec3<u32>(1u, arg_2, 16738u), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<f32>(-278f, arg_0.a, 818f, arg_0.a), 16573u, vec4<bool>(arg_1, false, true, arg_1))).x), vec2<i32>(1i, 1i))));
    var var_1 = func_2(1i, -(~_wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, 64209i), vec2<i32>(1i, 1i))), _wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, -2147483647i, -1i, -6868i) << (vec4<u32>(12625u, ~1u, ~var_0.a.x, _wgslsmith_div_u32(17352u, u_input.a)) % vec4<u32>(32u)), vec4<i32>(-25112i, ~_wgslsmith_div_i32(-1i, 31361i), 1i, firstTrailingBit(~(-2147483647i)))), Struct_2(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 61229u, var_0.a.x)), _wgslsmith_div_vec3_u32(var_0.a.wxx, u_input.b)), ~vec4<u32>(1u, reverseBits(arg_2), abs(4294967295u), 70801u), vec2<i32>(-1i, abs(~(-29776i)))));
    return var_0.c;
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = i32(-1i) * -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(-397f * 271f);
    let var_2 = 385f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-736f * _wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-var_2)))) + 645f);
    var_1 = 256f;
    return arg_1;
}

fn func_7(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<i32>) -> Struct_5 {
    let var_0 = vec2<i32>(-34089i, -1i) >> (~(u_input.b.yz >> (((u_input.b.xx >> (arg_0.a.xy % vec2<u32>(32u))) << (arg_0.a.xx % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    return Struct_5(vec3<u32>(countOneBits(~8723u) | arg_0.a.x, 31439u, _wgslsmith_div_u32(~arg_0.a.x, u_input.a) << (reverseBits(~u_input.a) % 32u)), select(!vec4<bool>(true, all(vec3<bool>(false, true, true)), true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1721f * _wgslsmith_f_op_f32(max(arg_0.c.a, arg_0.c.a)))), arg_0.c.a, arg_0.c.a, _wgslsmith_f_op_f32(-1f)), _wgslsmith_dot_vec2_u32(u_input.b.zx, reverseBits(countOneBits(u_input.b.zz | arg_0.a.yz))), vec4<bool>(all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(vec4<bool>(true, true, false, true)))), all(!func_4(-18948i, arg_0.a.xzz, true, Struct_1(-289f)).yz), true, any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = u_input.b.x;
    let var_1 = func_7(func_6(1f, Struct_3(countOneBits(vec4<u32>(var_0, 41258u, arg_0.x, u_input.a)), u_input.b.x, func_5(func_2(-1i, vec2<i32>(36176i, 20907i), vec4<i32>(-2147483647i, -10910i, -2147483647i, -80795i), Struct_2(arg_0.xwz, vec4<u32>(1u, arg_0.x, arg_0.x, 1u), vec2<i32>(0i, 1i))), true, 4294967295u))), ~vec4<i32>(select(-48308i, 2147483647i, true), abs(1i), _wgslsmith_mult_i32(-32586i, 0i), abs(2147483647i)) ^ vec4<i32>(max(countOneBits(-64261i), -2147483647i), max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 0i, -2147483647i), vec4<i32>(-2147483647i, -16869i, 34887i, 71774i)), countOneBits(-2690i)), _wgslsmith_clamp_i32(~72087i, ~(-12364i), abs(-2147483647i)), _wgslsmith_add_i32(30636i, -2147483647i)), min(~_wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, -10018i), vec2<i32>(-18759i, 0i) << (arg_0.yz % vec2<u32>(32u))), firstLeadingBit(vec2<i32>(-13413i, 2147483647i) >> (vec2<u32>(u_input.b.x, var_0) % vec2<u32>(32u))) ^ (firstLeadingBit(vec2<i32>(2147483647i, -5148i)) ^ (vec2<i32>(-2147483647i, -1i) >> (u_input.b.xy % vec2<u32>(32u))))));
    var var_2 = func_5(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(step(-394f, -525f)))), func_6(_wgslsmith_f_op_f32(-var_1.c.x), Struct_3(~arg_0, arg_0.x, Struct_1(-776f)))).c, var_1.b.x, firstTrailingBit(~(~0u)) & func_7(Struct_3(_wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(56220u, arg_0.x, arg_0.x, 0u)), select(var_1.a.x, var_1.d, false), Struct_1(var_1.c.x)), abs(vec4<i32>(14678i, 7718i, -51799i, 11752i)), -vec2<i32>(1i, 1i)).d);
    var var_3 = func_3(_wgslsmith_f_op_vec2_f32(max(var_1.c.yy, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(func_5(Struct_1(243f), false, u_input.a).a, _wgslsmith_f_op_f32(var_1.c.x + var_1.c.x)), vec2<f32>(-584f, _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x)))))), vec2<f32>(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.c.x)) - 388f)), var_1.c.xw, Struct_5(abs(vec3<u32>(_wgslsmith_sub_u32(u_input.a, u_input.b.x), u_input.b.x, u_input.a)), !var_1.e, _wgslsmith_f_op_vec4_f32(step(var_1.c, vec4<f32>(var_2.a, var_2.a, _wgslsmith_f_op_f32(1000f * var_2.a), 481f))), ~func_7(Struct_3(vec4<u32>(var_1.a.x, 4294967295u, 0u, 4294967295u), 29828u, Struct_1(680f)), select(vec4<i32>(-43738i, -2147483647i, -2147483647i, 2147483647i), vec4<i32>(-1i, -777i, 0i, -2147483647i), vec4<bool>(false, true, var_1.e.x, false)), -vec2<i32>(27846i, 0i)).d, vec4<bool>(var_1.b.x, any(!var_1.e), true, !var_1.b.x)));
    let var_4 = -vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(87912i, 3355i, 40576i, -19243i)), vec4<i32>(-36273i, ~2147483647i, 0i, -7920i)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 24062i, 20213i), vec4<i32>(-47649i, 25545i, -1i, 0i)), true), firstTrailingBit(vec4<i32>(0i, -21263i, 1i, 11032i)) | vec4<i32>(-1i, -2147483647i, -30684i, 4155i)), 1i, _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-29406i, 2147483647i), vec2<i32>(-2147483647i, 0i)), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-17783i, -1i), vec2<i32>(-36406i, 0i), vec2<i32>(-2147483647i, 0i)), vec2<i32>(0i, 11363i) >> (vec2<u32>(0u, var_1.a.x) % vec2<u32>(32u)))));
    return Struct_3(~(~(~(~vec4<u32>(49028u, 7658u, var_1.a.x, var_3.x)))), 5002u, Struct_1(_wgslsmith_div_f32(var_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a * 882f), _wgslsmith_f_op_f32(var_2.a - 1599f)))));
}

fn func_8(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_5(func_7(arg_1, vec4<i32>(-36006i, select(firstLeadingBit(arg_0), 0i, true), -_wgslsmith_sub_i32(17139i, -35511i), arg_0), vec2<i32>(select(~(-1i), _wgslsmith_mod_i32(-1i, arg_0), true), -2147483647i)).a, func_7(Struct_3(abs(vec4<u32>(arg_1.b, 33638u, 24737u, arg_1.a.x)), 4294967295u, func_5(Struct_1(arg_1.c.a), true, ~1699u)), select(vec4<i32>(arg_0 ^ -1i, -36160i & arg_0, arg_0, -arg_0), select(select(vec4<i32>(2147483647i, arg_0, arg_0, arg_0), vec4<i32>(arg_0, arg_0, arg_0, -26521i), vec4<bool>(true, false, true, true)), vec4<i32>(1523i, arg_0, arg_0, arg_0), true), all(vec4<bool>(true, false, false, true))), vec2<i32>(select(_wgslsmith_clamp_i32(arg_0, arg_0, 667i), 11392i, true), ~arg_0 | arg_0)).b, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1408f, arg_1.c.a, -1770f, arg_1.c.a) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(387f, arg_1.c.a, -325f, arg_1.c.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.a, 967f, arg_1.c.a, arg_1.c.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(395f, 1088f, arg_1.c.a, 674f)))))), ~func_7(func_1(~arg_1.a), vec4<i32>(-arg_0, 1i, 1i, arg_0), vec2<i32>(arg_0 << (10848u % 32u), arg_0 | arg_0)).d, !func_7(Struct_3(vec4<u32>(33246u, arg_1.a.x, arg_1.b, arg_1.b), countOneBits(arg_1.b), arg_1.c), ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, 0i, arg_0, 25805i), vec4<i32>(arg_0, arg_0, 1i, arg_0)), -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, -1i), vec2<i32>(-20918i, 17102i))).b);
    var_0 = Struct_5(u_input.b, var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_div_f32(var_0.c.x, var_0.c.x), -856f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(-1000f, 185f, arg_1.c.a, var_0.c.x)), vec4<f32>(119f, arg_1.c.a, -4359f, -1350f)))))), u_input.a, select(select(select(!var_0.e, vec4<bool>(var_0.b.x, var_0.b.x, true, false), true), func_7(func_1(arg_1.a), abs(vec4<i32>(71829i, -332i, arg_0, arg_0)), _wgslsmith_add_vec2_i32(vec2<i32>(24506i, -20895i), vec2<i32>(24440i, arg_0))).b, var_0.e), select(var_0.e, select(select(var_0.e, vec4<bool>(var_0.b.x, false, var_0.e.x, var_0.b.x), vec4<bool>(var_0.b.x, true, var_0.e.x, false)), !var_0.b, true & var_0.b.x), true), !var_0.e.x));
    var_0 = Struct_5(func_3(_wgslsmith_f_op_vec2_f32(var_0.c.xz + var_0.c.yw), _wgslsmith_f_op_vec2_f32(abs(var_0.c.xw)), var_0.c.zy, Struct_5(~vec3<u32>(var_0.d, u_input.a, u_input.b.x), vec4<bool>(false, false, var_0.e.x, arg_1.c.a > var_0.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.a, var_0.c.x, arg_1.c.a, 1299f) - vec4<f32>(-1023f, arg_1.c.a, -820f, var_0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-832f, var_0.c.x, var_0.c.x, -758f) - vec4<f32>(1001f, 1228f, arg_1.c.a, -834f))), var_0.a.x >> (9521u % 32u), var_0.e)), var_0.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c + var_0.c))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -595f), arg_1.c.a, _wgslsmith_f_op_f32(var_0.c.x - arg_1.c.a), arg_1.c.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d, 68946u, arg_1.a.x), arg_1.a.wwx), vec3<u32>(arg_1.a.x, 1u, 1u)) >> (~u_input.b.x % 32u), func_7(arg_1, vec4<i32>(-1i, arg_0, arg_0 << ((u_input.b.x & 0u) % 32u), (i32(-1i) * -21051i) >> (min(u_input.b.x, 45513u) % 32u)), ~(~(~vec2<i32>(0i, 38774i)))).b);
    return arg_1;
}

fn func_9(arg_0: Struct_3, arg_1: bool, arg_2: vec4<i32>, arg_3: vec2<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.a), _wgslsmith_f_op_f32(676f - arg_0.c.a)))));
    let var_1 = false;
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), func_1(~(~(~arg_0.a))).a.xx, arg_0.a.xz);
    var var_3 = Struct_4(~countOneBits(countOneBits(-vec2<i32>(-88284i, arg_2.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1009f, _wgslsmith_f_op_f32(round(var_0.x)))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.a), _wgslsmith_f_op_f32(-arg_0.c.a))))), vec2<i32>(~(-1i), countOneBits(arg_2.x)));
    var_3 = Struct_4(select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i) << (arg_3 % vec2<u32>(32u)), max(vec2<i32>(-2147483647i, arg_2.x), var_3.c)), -abs(var_3.a.x)), vec2<i32>(_wgslsmith_div_i32(0i, 1i), var_3.a.x), func_7(Struct_3(vec4<u32>(arg_3.x, 0u, 4294967295u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(arg_0.a.x, 4294967295u)), arg_0.c), abs(~arg_2), countOneBits(vec2<i32>(14297i, arg_2.x))).e.yw), func_7(func_8(_wgslsmith_dot_vec2_i32(vec2<i32>(12823i, -769i), vec2<i32>(-74355i, 0i) | var_3.c), arg_0), max(reverseBits(min(arg_2, vec4<i32>(arg_2.x, var_3.c.x, 2147483647i, -44158i))), vec4<i32>(_wgslsmith_dot_vec3_i32(arg_2.ywy, vec3<i32>(-1i, arg_2.x, -1i)), -2147483647i, select(var_3.a.x, -2147483647i, arg_1), -1i)), vec2<i32>(2147483647i, arg_2.x)).c.yw, abs(var_3.a) >> (vec2<u32>(select(arg_0.a.x, ~var_2.x, true), arg_0.a.x) % vec2<u32>(32u)));
    return reverseBits(~(vec3<u32>(~0u, u_input.b.x >> (4294967295u % 32u), select(arg_3.x, arg_3.x, false)) << (vec3<u32>(~arg_0.b, 5291u, abs(0u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_9(func_8(~_wgslsmith_sub_i32(-1i, 60735i), func_1(~vec4<u32>(72792u, 63944u, u_input.a, u_input.a))), !(any(vec4<bool>(true, true, true, true)) & any(vec4<bool>(true, false, false, true))), vec4<i32>(1i, 1i, 1i, 1i), vec2<u32>(u_input.b.x, ~(~4294967295u))), vec4<bool>(false, !func_4(~(-29927i), u_input.b, select(false, true, false), Struct_1(-837f)).x, true, any(vec2<bool>(any(vec4<bool>(true, true, false, true)), any(vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-846f + -1735f), func_6(194f, Struct_3(vec4<u32>(0u, u_input.b.x, 33411u, 4294967295u), 61827u, Struct_1(-337f))).c.a, _wgslsmith_f_op_f32(-1425f - 405f), _wgslsmith_f_op_f32(-380f + -1000f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1114f, 797f, -212f, 1000f)))) * vec4<f32>(790f, -130f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2873f, 1069f) - -189f), _wgslsmith_f_op_f32(f32(-1f) * -186f))), _wgslsmith_mod_u32(~(~(~4294967295u)), 21322u), func_7(func_8(-_wgslsmith_add_i32(-23412i, 0i), func_6(_wgslsmith_f_op_f32(f32(-1f) * -1735f), func_8(12820i, Struct_3(vec4<u32>(4294967295u, u_input.a, u_input.b.x, u_input.a), 4294967295u, Struct_1(911f))))), _wgslsmith_add_vec4_i32(countOneBits(~vec4<i32>(2147483647i, 46299i, 2147483647i, -1i)), vec4<i32>(-1i, _wgslsmith_div_i32(-39813i, -180i), 1i, i32(-1i) * -2147483647i)), vec2<i32>(1i, 1i)).e);
    let var_1 = ~_wgslsmith_sub_vec4_i32(abs(vec4<i32>(1i, 1i, 1i, 1i)), -firstTrailingBit(firstLeadingBit(vec4<i32>(-38044i, -10027i, -1i, 29707i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(ceil(158f))), _wgslsmith_f_op_f32(f32(-1f) * -884f))), true)));
    let var_3 = Struct_2(~vec3<u32>(~70295u, var_0.a.x, ~var_0.a.x), vec4<u32>(_wgslsmith_div_u32(~(u_input.b.x & 29508u), u_input.a), abs(~(u_input.b.x << (1u % 32u))), _wgslsmith_mod_u32(var_0.d, 27523u ^ firstLeadingBit(u_input.b.x)), u_input.a), -vec2<i32>(select(1i, 0i, var_0.b.x), var_1.x));
    let var_4 = func_6(var_2, func_6(543f, func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), Struct_3(~vec4<u32>(var_0.a.x, u_input.a, 8045u, u_input.b.x), 73460u >> (u_input.a % 32u), Struct_1(var_2))))).a.x;
    var var_5 = var_0.e;
    var_5 = vec4<bool>(var_0.e.x, !var_0.e.x, (-2147483647i != _wgslsmith_dot_vec4_i32(var_1, abs(var_1))) || all(!(!vec4<bool>(true, false, false, var_5.x))), any(vec2<bool>(true, true || !var_5.x)));
    var var_6 = _wgslsmith_f_op_f32(floor(-1111f));
    var_5 = vec4<bool>(func_7(func_6(_wgslsmith_f_op_f32(-func_5(Struct_1(var_2), var_5.x, 1u).a), func_1(vec4<u32>(var_4, 1u, 62367u, 0u))), var_1, select(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(var_3.c.x, var_1.x), var_1.ww)), var_3.c, func_4(27516i, firstLeadingBit(u_input.b), true, Struct_1(960f)).xy)).b.x, false, var_5.x, !select(true, func_7(Struct_3(vec4<u32>(var_4, 0u, 60824u, u_input.b.x), 4294967295u, Struct_1(1000f)), var_1, var_3.c).e.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_1.wyz), -113f, var_0.c);
}

