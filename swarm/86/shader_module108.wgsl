struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>) -> vec2<i32> {
    var var_0 = Struct_2(u_input.a << (min(1u, ~1u) % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(max(-2238f, arg_0.x))), _wgslsmith_f_op_f32(min(-1766f, arg_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), vec4<f32>(1641f, 1591f, -932f, -1886f)))), Struct_1(all(vec2<bool>(false, true)), ~(~firstTrailingBit(vec3<u32>(421u, 4294967295u, 36314u))), -vec3<i32>(~u_input.a, 11460i, -2147483647i), vec2<i32>(_wgslsmith_sub_i32(2147483647i, 0i), ~u_input.a)), Struct_1(!(!any(vec2<bool>(false, false))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(54157u, 10640u) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), ~vec2<u32>(0u, 4294967295u)), ~1u >> (0u % 32u), ~_wgslsmith_mult_u32(1u, 4294967295u)), ~(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a)) >> (~vec3<u32>(4294967295u, 17609u, 1u) % vec3<u32>(32u))), ~(-(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, 0i)))), Struct_1((select(1u, 4294967295u, true) & ~21048u) >= 0u, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(7566u, 41323u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 0u, 20787u)), _wgslsmith_div_u32(1u, 56116u), 1u), vec3<u32>(1u, 1u, 1u)), max(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 34127i, 2147483647i), vec3<i32>(u_input.a, 19657i, u_input.a)), u_input.a, u_input.a), -_wgslsmith_add_vec3_i32(vec3<i32>(1i, -2147483647i, u_input.a), vec3<i32>(u_input.a, 1i, 1i))), vec2<i32>(_wgslsmith_clamp_i32(-u_input.a, ~u_input.a, ~(-2147483647i)), ~(i32(-1i) * -60609i))));
    let var_1 = var_0.d.b.x;
    let var_2 = vec4<bool>(true, false, var_0.d.a, 50773u < ~reverseBits(_wgslsmith_dot_vec2_u32(var_0.d.b.yx, var_0.e.b.xy)));
    let var_3 = var_0.c.a;
    var_0 = Struct_2(~(-1i) & select(reverseBits(var_0.a), var_0.c.c.x >> (var_0.d.b.x % 32u), true), var_0.b, Struct_1(true, var_0.c.b, vec3<i32>(abs(_wgslsmith_div_i32(u_input.a, 1i)), -_wgslsmith_mult_i32(-9212i, u_input.a), -u_input.a >> (var_0.c.b.x % 32u)), var_0.d.c.yx), Struct_1(-(var_0.d.d.x << (var_0.d.b.x % 32u)) < -var_0.d.d.x, vec3<u32>(~var_0.c.b.x & firstLeadingBit(59145u), ~_wgslsmith_add_u32(91901u, var_0.e.b.x), ~(var_0.e.b.x >> (var_0.d.b.x % 32u))), (select(vec3<i32>(u_input.a, 22263i, 33795i), vec3<i32>(-63417i, var_0.c.d.x, u_input.a), var_0.d.a) & (vec3<i32>(-31125i, var_0.d.c.x, 0i) & vec3<i32>(-2147483647i, var_0.d.c.x, 1i))) | vec3<i32>(2147483647i, u_input.a << (65584u % 32u), -var_0.d.c.x), -vec2<i32>(0i, u_input.a)), var_0.c);
    return vec2<i32>(_wgslsmith_clamp_i32(-(var_0.a << (var_0.c.b.x % 32u)) | u_input.a, _wgslsmith_mod_i32(countOneBits(u_input.a | 2147483647i), var_0.a), -1i), u_input.a);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(16755i, vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) * _wgslsmith_f_op_f32(arg_1 + 319f))), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(ceil(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), arg_2, Struct_1(true, _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0, 0u, arg_0), arg_2.b), -_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(arg_2.d.x, arg_2.d.x, 25236i)), arg_2.c >> (arg_2.b % vec3<u32>(32u)), arg_2.c), abs(arg_2.c.zy ^ func_3(vec2<f32>(arg_1, -1426f)))), Struct_1(_wgslsmith_mult_i32(20555i, _wgslsmith_dot_vec2_i32(arg_2.c.zz, vec2<i32>(arg_2.c.x, arg_2.c.x))) != u_input.a, _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(arg_2.b.x, 49706u, arg_0)) << (~vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_0, arg_0), arg_2.b)), arg_2.c, vec2<i32>(48592i ^ u_input.a, -(~arg_2.d.x))));
    var var_1 = 1u;
    var_1 = ~26657u;
    var_1 = abs(_wgslsmith_add_u32(1u, arg_2.b.x));
    var var_2 = vec4<i32>(min(min(-48515i, u_input.a), _wgslsmith_clamp_i32(var_0.a, -var_0.c.c.x, _wgslsmith_dot_vec3_i32(arg_2.c, ~arg_2.c))), 46801i, 1i, select(-27662i, u_input.a, any(vec3<bool>(true, true, true))));
    return -120f;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_4) -> Struct_5 {
    var var_0 = !arg_1.b;
    var_0 = !vec2<bool>(select(var_0.x, true, false), true);
    var var_1 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(10652u, arg_0.a, Struct_1(u_input.a > u_input.a, abs(vec3<u32>(18297u, 1u, 0u)), vec3<i32>(83053i, u_input.a, u_input.a) << (vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(-17928i, u_input.a), vec2<i32>(1i, -40651i))))) - 146f)));
    let var_2 = -46412i;
    var_1 = arg_0.a;
    return Struct_5(_wgslsmith_f_op_f32(-arg_1.a));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(1i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1325f)))) - arg_0.a), arg_0.a, _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)) + 655f))), arg_0.a), Struct_1(any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true))), _wgslsmith_add_vec3_u32(~(vec3<u32>(arg_1.x, arg_1.x, arg_1.x) >> (arg_1 % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_1.x, arg_1.x), vec3<u32>(0u, 25448u, arg_1.x))), countOneBits(vec3<i32>(u_input.a, countOneBits(u_input.a), u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), func_3(vec2<f32>(arg_0.a, -334f)).x), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 288f))))), Struct_1(max(func_3(vec2<f32>(-1534f, -1534f)).x, -u_input.a) == -2147483647i, arg_1 & firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, 22929u, 18116u), vec3<u32>(arg_1.x, 1u, 4294967295u))), min(-vec3<i32>(u_input.a, u_input.a, 30462i), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -2147483647i, -2147483647i), vec3<i32>(u_input.a, -2147483647i, 45824i) ^ vec3<i32>(u_input.a, 2147483647i, -9289i))), vec2<i32>(u_input.a ^ 0i, u_input.a) ^ abs(-vec2<i32>(-7942i, -1855i))), Struct_1(true, _wgslsmith_sub_vec3_u32(~(~arg_1), arg_1 | abs(arg_1)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) & (vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, 50754i, u_input.a)), vec3<i32>(1i, _wgslsmith_clamp_i32(-5125i, 0i, 2147483647i), ~u_input.a)), ~(-select(vec2<i32>(31625i, -5038i), vec2<i32>(u_input.a, -1i), false))));
    var var_1 = !vec4<bool>(true, select(var_0.c.b.x | 13159u, 1u, u_input.a >= u_input.a) != ~1u, all(vec3<bool>(select(true, var_0.e.a, var_0.e.a), !var_0.d.a, any(vec3<bool>(var_0.d.a, true, var_0.e.a)))), var_0.d.a);
    var_0 = Struct_2(max(max(-324i, 1i), ~_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, u_input.a), ~var_0.e.d.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, var_0.b.x)) + _wgslsmith_f_op_f32(arg_0.a * arg_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1311f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1047f, arg_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1065f, arg_0.a)))), Struct_1(true, max(vec3<u32>(var_0.d.b.x, var_0.e.b.x, 0u), abs(var_0.e.b)), -(~var_0.c.c) ^ vec3<i32>(0i, 30184i, -u_input.a), var_0.d.c.zy), Struct_1(any(vec2<bool>(!var_1.x, !var_0.e.a)), abs(arg_1), min(abs(_wgslsmith_div_vec3_i32(var_0.d.c, var_0.d.c)), vec3<i32>(~1i, var_0.d.c.x ^ var_0.e.d.x, ~(-49479i))), var_0.e.c.xy), Struct_1(var_1.x, ~select(vec3<u32>(0u, arg_1.x, 4294967295u) | arg_1, arg_1 << (var_0.c.b % vec3<u32>(32u)), !vec3<bool>(var_1.x, false, true)), firstTrailingBit(vec3<i32>(1i, 43900i, -2147483647i)), ~((vec2<i32>(-45996i, 27029i) >> (vec2<u32>(arg_1.x, 14508u) % vec2<u32>(32u))) ^ ~vec2<i32>(13037i, var_0.c.d.x))));
    var_0 = Struct_2(u_input.a, _wgslsmith_f_op_vec4_f32(select(var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b))), !any(var_1.xyw))), var_0.c, Struct_1(var_0.d.a, ~arg_1, vec3<i32>(min(-43622i, u_input.a), u_input.a, var_0.c.c.x), ~(vec2<i32>(u_input.a, u_input.a) << (arg_1.zz % vec2<u32>(32u)))), Struct_1(any(select(select(vec3<bool>(var_0.d.a, var_0.c.a, false), var_1.yww, var_0.c.a), select(var_1.zxx, vec3<bool>(false, var_0.d.a, var_1.x), vec3<bool>(false, true, true)), var_1.wwx)), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.e.b.x, arg_1.x, 15859u), countOneBits(var_0.d.b)), vec3<i32>(9166i, var_0.a, -_wgslsmith_mod_i32(-7317i, var_0.c.c.x)), var_0.e.d));
    let var_2 = u_input.a;
    return Struct_2(-1i, vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(arg_0.a + var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-179f)) - _wgslsmith_f_op_f32(796f * -445f)) - _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(sign(-662f)))), 871f), var_0.c, var_0.e, var_0.d);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<bool>) -> vec2<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(402f * _wgslsmith_f_op_f32(-943f - _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x)))), -316f, arg_1.b.x);
    var var_1 = vec4<u32>(abs(24586u), ~abs(6927u), arg_1.e.b.x, arg_0.x);
    let var_2 = Struct_2(u_input.a, vec4<f32>(func_1(func_1(Struct_5(arg_1.b.x), Struct_4(231f, vec2<bool>(false, arg_3.x))), Struct_4(_wgslsmith_f_op_f32(select(1000f, var_0.x, true)), vec2<bool>(true, true))).a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.x, 1000f, arg_1.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, var_0.x) * _wgslsmith_f_op_f32(trunc(118f)))), -1367f), func_4(func_1(func_1(func_1(Struct_5(var_0.x), Struct_4(300f, arg_3.zy)), Struct_4(1000f, vec2<bool>(true, false))), Struct_4(var_0.x, !vec2<bool>(arg_3.x, arg_3.x))), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(arg_0.x, 19518u, 89754u)), _wgslsmith_add_vec3_u32(var_1.zxy, select(arg_1.e.b, var_1.xzw, arg_2)), ~arg_1.e.b)).d, func_4(func_1(Struct_5(_wgslsmith_f_op_f32(trunc(arg_1.b.x))), Struct_4(-2025f, !vec2<bool>(arg_1.d.a, arg_1.c.a))), firstLeadingBit(var_1.xzw)).d, arg_1.d);
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(var_0));
    let var_4 = i32(-1i) * -75095i;
    return ~arg_1.c.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_i32(~(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -71617i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -18546i))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), firstLeadingBit(func_5(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(16533u, 0u)), vec2<u32>(37094u, 1u)), func_4(func_1(Struct_5(1414f), Struct_4(1117f, vec2<bool>(false, false))), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -561f) > _wgslsmith_f_op_f32(select(-695f, 599f, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false))))));
    var var_1 = vec2<u32>(firstTrailingBit(1u), abs(~1u));
    var var_2 = Struct_3(func_4(func_1(Struct_5(_wgslsmith_f_op_f32(210f - -1134f)), Struct_4(_wgslsmith_f_op_f32(632f - 150f), vec2<bool>(false, true))), vec3<u32>(~1u, var_1.x, ~1u)).d, Struct_1(true, vec3<u32>(0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 42496u, var_1.x), vec4<u32>(var_1.x, var_1.x, 26721u, var_1.x)), 1u, var_1.x), vec3<i32>(var_0.x, _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, var_0.x), vec3<i32>(2147483647i, u_input.a, var_0.x)), _wgslsmith_mod_i32(1i, u_input.a)), abs(61792i)), -var_0), Struct_2(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-18622i >> (var_1.x % 32u), firstLeadingBit(u_input.a), firstLeadingBit(u_input.a)), -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(250f, 1088f, 489f, -241f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-2199f, 728f, 109f, 258f), vec4<f32>(-1662f, -1000f, 924f, 1207f)))), func_4(Struct_5(_wgslsmith_div_f32(-695f, 430f)), ~vec3<u32>(var_1.x, 36439u, 4294967295u) & _wgslsmith_mod_vec3_u32(vec3<u32>(41696u, var_1.x, 4294967295u), vec3<u32>(var_1.x, var_1.x, var_1.x))).c, Struct_1(any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 92854u, var_1.x), max(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(0u, var_1.x, var_1.x)), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 25586u, 11478u), vec3<u32>(10233u, var_1.x, var_1.x))), vec3<i32>(2147483647i, u_input.a, var_0.x) ^ reverseBits(vec3<i32>(var_0.x, var_0.x, var_0.x)), vec2<i32>(select(-40836i, var_0.x, false), u_input.a ^ var_0.x)), Struct_1(any(vec2<bool>(true, true)), vec3<u32>(4294967295u, max(69509u, 12528u), var_1.x), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, 1i, var_0.x), vec3<i32>(-1i, var_0.x, u_input.a))), vec2<i32>(-u_input.a, abs(-19091i)))), !any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_3 = var_2.c.b.x;
    var var_4 = -358f;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(490f)));
    var var_6 = func_4(func_1(Struct_5(var_2.c.b.x), Struct_4(945f, select(!vec2<bool>(var_2.a.a, var_2.a.a), select(vec2<bool>(true, var_2.a.a), vec2<bool>(true, true), false), !vec2<bool>(var_2.a.a, var_2.a.a)))), var_2.b.b).d;
    var var_7 = ~(-(~vec4<i32>(-1i, -20805i, firstLeadingBit(u_input.a), _wgslsmith_mod_i32(14699i, var_0.x))));
    let var_8 = func_1(func_1(Struct_5(983f), Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_2.c.b.x)))), vec2<bool>(any(vec4<bool>(var_2.d, true, var_2.a.a, false)), all(vec2<bool>(var_2.a.a, var_2.d))))), Struct_4(var_2.c.b.x, select(vec2<bool>(!var_2.a.a, -1106f >= var_2.c.b.x), vec2<bool>(0u > var_6.b.x, var_6.a), select(!vec2<bool>(var_2.b.a, true), !vec2<bool>(var_2.a.a, var_6.a), var_6.a))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_5(_wgslsmith_f_op_f32(1154f + _wgslsmith_f_op_f32(f32(-1f) * -553f))), var_2.c.d.b).e.c);
}

