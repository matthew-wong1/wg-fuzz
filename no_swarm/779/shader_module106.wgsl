struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn func_3(arg_0: u32, arg_1: i32) -> bool {
    let var_0 = -45077i;
    let var_1 = 4294967295u < arg_0;
    return true;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> bool {
    let var_0 = func_3(abs(1u), ~(-2147483647i));
    var var_1 = Struct_2(arg_1.a, _wgslsmith_mod_i32(-2147483647i, ~_wgslsmith_sub_i32(arg_1.c.c.x, abs(u_input.a))), Struct_1(arg_1.c.d.x, false, select(reverseBits(vec4<i32>(u_input.b.x, -1i, arg_1.c.c.x, arg_1.c.c.x)), max(~arg_1.c.c, countOneBits(vec4<i32>(2147483647i, -25980i, u_input.a, arg_1.c.c.x))), vec4<bool>(true, true, var_0, u_input.c <= arg_1.e.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1432f, 1000f, arg_1.c.d.x, arg_1.c.a))) - _wgslsmith_f_op_vec4_f32(step(arg_1.c.d, arg_1.c.d)))), 1u << (max(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 0u, u_input.c), vec4<u32>(26809u, 15320u, 15032u, u_input.c)), countOneBits(abs(u_input.c))) % 32u), _wgslsmith_sub_vec3_u32(select(arg_1.e, min(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.e.x, arg_1.d, u_input.c), vec3<u32>(u_input.c, 1u, u_input.c)), vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<bool>(var_0, false, arg_1.c.b)), _wgslsmith_add_vec3_u32(~abs(arg_1.e), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.d, 0u, u_input.c), _wgslsmith_div_vec3_u32(arg_1.e, arg_1.e)))));
    return !any(vec3<bool>(var_0, any(vec2<bool>(var_1.a.x, false)), _wgslsmith_f_op_f32(var_1.c.d.x + arg_1.c.a) > _wgslsmith_f_op_f32(step(arg_1.c.d.x, -2561f))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = select(!arg_0, !(!(!arg_0)), arg_0);
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1 | ~4294967295u, arg_1), arg_1), 0u);
    let var_2 = arg_2.d;
    var var_3 = ~max(-103i, firstLeadingBit(countOneBits(~(-16284i))));
    var var_4 = Struct_1(arg_2.a, false || (-1456f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(437f - arg_2.c.d.x), arg_2.e.d.x)), arg_2.c.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_2.e.d)))));
    return Struct_3(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1441f, 625f, all(var_0))), -734f, true)), Struct_1(_wgslsmith_f_op_f32(-var_4.a), ((arg_2.c.b && true) & true) || (arg_1 == abs(44811u)), var_4.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.d.x, _wgslsmith_div_f32(var_4.a, arg_2.b), _wgslsmith_f_op_f32(206f * var_4.d.x), var_4.a) - arg_2.e.d)), _wgslsmith_mod_i32(var_2, _wgslsmith_sub_i32(-2147483647i, abs(select(2220i, 5137i, var_0.x)))), Struct_1(-296f, var_0.x, _wgslsmith_div_vec4_i32(vec4<i32>(-1i << (arg_3.x % 32u), var_4.c.x, _wgslsmith_dot_vec4_i32(var_4.c, vec4<i32>(var_4.c.x, var_4.c.x, arg_2.e.c.x, -12018i)), var_2), -firstTrailingBit(vec4<i32>(41342i, 11569i, var_2, var_2))), arg_2.e.d));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -352f);
    var var_1 = true;
    var_0 = _wgslsmith_f_op_f32(arg_0.c.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(952f - -1139f), -180f)) - 1035f) * _wgslsmith_f_op_f32(-func_4(!vec3<bool>(arg_0.c.b, arg_0.e.b, arg_0.c.b), ~29244u, func_4(vec3<bool>(arg_0.e.b, arg_0.c.b, arg_0.e.b), 1u, arg_0, vec4<u32>(31754u, u_input.c, 9209u, u_input.c)), vec4<u32>(34932u, u_input.c, 72426u, u_input.c)).c.d.x)));
    var_1 = true;
    let var_2 = arg_0.e.c.x | ~abs(-2147483647i);
    return -273f;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_5(func_4(vec3<bool>(true, select(true, 62125u <= u_input.c, all(vec4<bool>(true, false, false, false))), any(vec3<bool>(false, true, false)) | func_2(940f, Struct_2(vec2<bool>(false, false), 0i, Struct_1(-629f, false, vec4<i32>(arg_1.x, arg_0.x, 4225i, arg_0.x), vec4<f32>(-1105f, 437f, 542f, 1067f)), u_input.c, vec3<u32>(21158u, 0u, 51395u)))), reverseBits(u_input.c), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-456f - 769f), 1489f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(778f)) + _wgslsmith_f_op_f32(select(1000f, -509f, false))), Struct_1(_wgslsmith_f_op_f32(round(380f)), false, ~vec4<i32>(-1i, -23649i, 55009i, arg_1.x), vec4<f32>(1211f, -989f, 187f, -390f)), abs(arg_0.x) | ~(-4038i), Struct_1(-1335f, all(vec4<bool>(true, false, true, true)), select(arg_1, vec4<i32>(0i, 70508i, arg_1.x, u_input.b.x), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-730f, 419f, 1006f, -576f) - vec4<f32>(-189f, -750f, -326f, -1265f)))), select((vec4<u32>(u_input.c, 0u, 34157u, u_input.c) ^ vec4<u32>(55287u, u_input.c, u_input.c, 4294967295u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 15054u, 0u, 1u), vec4<u32>(u_input.c, 10797u, u_input.c, u_input.c)), ~vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), true)), vec3<i32>(_wgslsmith_mod_i32(arg_1.x, 15357i >> (u_input.c % 32u)), _wgslsmith_div_i32(_wgslsmith_add_i32(arg_1.x << (7528u % 32u), -u_input.b.x), arg_1.x), 0i)));
    var var_1 = Struct_2(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_sub_i32(min(arg_0.x, 1i), reverseBits(-2147483647i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f - _wgslsmith_f_op_f32(var_0 * var_0))), func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 7306u) & vec4<u32>(u_input.c, u_input.c, u_input.c, 42043u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 34121u, 0u, 45244u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))), 13666i), vec4<i32>(arg_0.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_1.x, arg_1.x), arg_1.yy, false), arg_1.xw), -1i, -u_input.a), vec4<f32>(var_0, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(sign(393f))), var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))))), _wgslsmith_div_u32(reverseBits(firstTrailingBit(max(4294967295u, u_input.c))), 1u), vec3<u32>(countOneBits(4294967295u >> (u_input.c % 32u)), ~(~u_input.c), min(_wgslsmith_dot_vec2_u32(vec2<u32>(35575u, 0u), vec2<u32>(5729u, u_input.c)), max(u_input.c, 0u))) | vec3<u32>(19197u, _wgslsmith_sub_u32(u_input.c << (4294967295u % 32u), _wgslsmith_sub_u32(27054u, 1u)), 93082u));
    var var_2 = Struct_2(vec2<bool>(var_1.c.b, true), func_4(!select(!vec3<bool>(var_1.a.x, var_1.c.b, false), vec3<bool>(true, false, false), !vec3<bool>(var_1.c.b, var_1.c.b, false)), countOneBits(u_input.c & _wgslsmith_dot_vec4_u32(vec4<u32>(68131u, u_input.c, var_1.e.x, var_1.e.x), vec4<u32>(var_1.e.x, u_input.c, u_input.c, u_input.c))), func_4(select(select(vec3<bool>(var_1.c.b, var_1.a.x, true), vec3<bool>(var_1.a.x, var_1.a.x, true), var_1.c.b), select(vec3<bool>(var_1.a.x, true, var_1.a.x), vec3<bool>(true, var_1.c.b, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), select(vec3<bool>(var_1.c.b, var_1.c.b, true), vec3<bool>(var_1.a.x, false, true), vec3<bool>(true, true, false))), abs(u_input.c), func_4(select(vec3<bool>(true, true, true), vec3<bool>(false, var_1.c.b, var_1.c.b), false), ~21504u, func_4(vec3<bool>(var_1.a.x, true, true), u_input.c, Struct_3(-513f, 141f, var_1.c, 24537i, Struct_1(var_0, var_1.a.x, arg_1, var_1.c.d)), vec4<u32>(0u, 23595u, var_1.e.x, var_1.e.x)), vec4<u32>(7730u, 5610u, var_1.d, 59042u) & vec4<u32>(9486u, 0u, 38915u, 52569u)), ~vec4<u32>(24960u, var_1.e.x, u_input.c, 9418u) << (~vec4<u32>(9169u, u_input.c, 0u, u_input.c) % vec4<u32>(32u))), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(24353u, 0u, var_1.e.x, var_1.e.x) >> (vec4<u32>(0u, 3775u, var_1.e.x, 27146u) % vec4<u32>(32u)), vec4<u32>(7504u, u_input.c, 10854u, 4294967295u) << (vec4<u32>(u_input.c, 0u, var_1.e.x, 0u) % vec4<u32>(32u))))).c.c.x, Struct_1(var_1.c.a, !var_1.c.b, _wgslsmith_sub_vec4_i32(var_1.c.c, vec4<i32>(1i, -5337i, _wgslsmith_dot_vec3_i32(var_1.c.c.yyz, vec3<i32>(-1i, 31741i, 2147483647i)), 2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.c.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 288f, var_0, var_1.c.d.x)))))), _wgslsmith_mod_u32(countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(78611u, 1u), var_1.e.zx)), u_input.c), ~(~vec3<u32>(u_input.c, countOneBits(1u), 0u)));
    var var_3 = func_4(!(!select(vec3<bool>(var_1.a.x, var_2.c.b, var_1.a.x), select(vec3<bool>(false, false, false), vec3<bool>(var_1.a.x, var_2.c.b, false), vec3<bool>(true, var_1.c.b, var_1.c.b)), any(vec3<bool>(false, true, true)))), abs(8803u), func_4(select(!(!vec3<bool>(var_2.c.b, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_1.c.b, var_1.a.x), vec3<bool>(var_1.c.b, false, var_2.a.x), var_2.c.b), true), select(!vec3<bool>(var_1.c.b, true, false), !vec3<bool>(var_2.c.b, var_2.a.x, true), false)), u_input.c, func_4(!select(vec3<bool>(var_2.a.x, var_1.c.b, var_1.c.b), vec3<bool>(var_2.a.x, var_2.c.b, true), var_2.c.b), _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 24743u), var_1.e.zz, false), select(var_1.e.zy, vec2<u32>(var_1.e.x, var_1.d), vec2<bool>(true, false))), Struct_3(_wgslsmith_f_op_f32(var_1.c.d.x - 1000f), _wgslsmith_f_op_f32(-var_0), func_4(vec3<bool>(var_1.a.x, var_1.a.x, var_2.c.b), 10746u, Struct_3(-1801f, -1423f, var_2.c, -28716i, Struct_1(var_0, true, var_2.c.c, var_2.c.d)), vec4<u32>(var_2.d, 25998u, u_input.c, u_input.c)).e, 7843i, func_4(vec3<bool>(var_1.a.x, false, false), var_1.d, Struct_3(var_2.c.d.x, 1000f, Struct_1(var_0, var_1.a.x, arg_1, var_1.c.d), arg_0.x, var_2.c), vec4<u32>(var_2.e.x, 43253u, u_input.c, var_2.e.x)).c), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.e.x, u_input.c, 4294967295u, 28361u), vec4<u32>(var_2.d, u_input.c, 11354u, var_1.e.x))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.e.x, var_2.e.x, var_2.e.x, 1u), vec4<u32>(1u, 16427u, 4294967295u, var_2.d), vec4<u32>(var_2.e.x, 4294967295u, 39189u, var_1.e.x)), vec4<u32>(var_2.d, var_2.e.x, 32605u, var_2.d) << (vec4<u32>(u_input.c, u_input.c, 31376u, var_1.d) % vec4<u32>(32u)))), vec4<u32>(~var_1.d, 115297u, ~_wgslsmith_sub_u32(~var_1.d, ~var_1.d), 22274u)).c;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(561f)) - _wgslsmith_f_op_f32(-var_0))) * _wgslsmith_f_op_f32(ceil(var_3.d.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-631f, 866f))), _wgslsmith_f_op_f32(sign(787f)))) - var_2.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1f, _wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(14781i, u_input.a, u_input.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(-30363i, u_input.b.x, u_input.a), vec3<i32>(-1i, -30732i, u_input.a)), countOneBits(vec3<i32>(-11926i, -24992i, u_input.a))), vec4<i32>(-u_input.b.x, u_input.a, abs(-1i), -1i >> (u_input.c % 32u)))) < 701f, _wgslsmith_clamp_vec4_i32(select(vec4<i32>(_wgslsmith_mod_i32(u_input.a, -1i), -36139i << (u_input.c % 32u), ~u_input.b.x, max(-11170i, 16411i)), func_4(vec3<bool>(true, true, true), ~0u, Struct_3(2644f, -1361f, Struct_1(750f, false, vec4<i32>(u_input.a, 0i, 0i, -1259i), vec4<f32>(-1553f, 150f, 1065f, 1164f)), -23979i, Struct_1(-855f, false, vec4<i32>(u_input.b.x, -1i, u_input.a, u_input.b.x), vec4<f32>(2583f, -419f, -1588f, -944f))), vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u)).c.c, select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), false)), firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, -1i, _wgslsmith_div_i32(u_input.a, -42722i))), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 21751i, u_input.a, u_input.b.x) & vec4<i32>(-1i, -2147483647i, -2147483647i, 57071i), vec4<i32>(9843i, -55933i, 58700i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, u_input.a), vec4<i32>(2147483647i, -16470i, -31184i, u_input.b.x))), min(vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x) >> (vec4<u32>(43400u, u_input.c, u_input.c, 0u) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.b.x, -1i, 3812i)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1670f, 1000f, -593f, 1380f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-394f, -2234f, 876f, -2135f)))), func_3(~u_input.c, ~(-2147483647i)))))));
    var var_1 = _wgslsmith_mod_u32(~abs(4294967295u), _wgslsmith_div_u32(54208u, select(0u, u_input.c, var_0.b)));
    var var_2 = func_4(vec3<bool>(var_0.b, all(vec3<bool>(all(vec2<bool>(var_0.b, true)), var_0.b, var_0.b && var_0.b)), ((i32(-1i) * -20430i) > (var_0.c.x << (70786u % 32u))) != false), u_input.c, Struct_3(var_0.a, _wgslsmith_f_op_f32(-var_0.d.x), func_4(select(!vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(true, true, var_0.b), all(vec4<bool>(true, var_0.b, false, true))), _wgslsmith_sub_u32(u_input.c, u_input.c) | u_input.c, Struct_3(-177f, 1257f, var_0, _wgslsmith_div_i32(24520i, -2147483647i), Struct_1(518f, true, vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, u_input.b.x), var_0.d)), ~(vec4<u32>(0u, u_input.c, u_input.c, u_input.c) & vec4<u32>(0u, 1u, u_input.c, 1u))).c, -21432i, var_0), vec4<u32>(1u, (u_input.c & ~7781u) << (~firstTrailingBit(u_input.c) % 32u), 66889u, ~(~(~u_input.c)))).c;
    var_1 = _wgslsmith_sub_u32(select(24954u, abs(~4294967295u), var_0.b), firstTrailingBit(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(34150u, 1u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c) ^ vec3<u32>(37922u, 0u, u_input.c), !var_0.b), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, 0u, 9450u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, u_input.c))))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(func_5(func_4(select(!vec3<bool>(true, var_2.b, var_0.b), select(vec3<bool>(var_2.b, var_0.b, false), vec3<bool>(false, var_0.b, true), vec3<bool>(var_2.b, var_2.b, false)), false), 74519u, Struct_3(var_2.d.x, _wgslsmith_f_op_f32(1593f - var_0.a), Struct_1(var_2.d.x, var_0.b, var_0.c, var_2.d), firstLeadingBit(var_0.c.x), var_0), ~(~vec4<u32>(1u, 3965u, u_input.c, 1u))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(var_2.c.x, var_2.c.x, -600i)), var_2.c.wxx), ~vec3<i32>(var_2.c.x, 57347i, var_0.c.x) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, 16023u, 4294967295u)) % vec3<u32>(32u)), -(var_0.c.zzy | vec3<i32>(var_2.c.x, -7061i, 0i))))), !any(!select(vec4<bool>(true, true, false, var_0.b), vec4<bool>(false, true, var_2.b, var_2.b), vec4<bool>(false, var_2.b, false, false))), -var_0.c, vec4<f32>(-208f, _wgslsmith_f_op_f32(157f * var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -411f), var_0.d.x));
    var_2 = func_4(!vec3<bool>(func_3(reverseBits(4294967295u), func_4(vec3<bool>(true, true, var_0.b), u_input.c, Struct_3(var_0.a, var_2.d.x, var_0, 17376i, var_0), vec4<u32>(22242u, 53516u, 29813u, 0u)).c.c.x), !select(var_2.b, false, var_2.b), true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.c, 60556u), firstTrailingBit(4729u)), reverseBits(vec2<u32>(u_input.c, u_input.c))), Struct_3(_wgslsmith_f_op_f32(abs(646f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.a) * _wgslsmith_f_op_f32(sign(-512f)))), var_0, ~select(u_input.a, var_0.c.x, var_2.b) ^ 0i, var_0), ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), u_input.c), u_input.c, _wgslsmith_sub_u32(~u_input.c, ~0u), ~(u_input.c << (0u % 32u)))).c;
    let var_3 = _wgslsmith_mod_vec2_u32(~min(vec2<u32>(countOneBits(21298u), ~1u), firstTrailingBit(countOneBits(vec2<u32>(u_input.c, u_input.c)))), vec2<u32>(~u_input.c, ~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(u_input.b), firstTrailingBit(~_wgslsmith_mult_vec2_i32(var_2.c.wy, vec2<i32>(var_2.c.x, 2147483647i))), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, var_0.b), !vec2<bool>(var_0.b, var_0.b))));
}

