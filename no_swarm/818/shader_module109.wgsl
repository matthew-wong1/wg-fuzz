struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    let var_0 = Struct_2(Struct_1(arg_0.a, ~(~arg_0.b), u_input.a, vec3<i32>(2147483647i, arg_0.d.x, arg_0.d.x)), arg_0, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(827f - -816f), _wgslsmith_f_op_f32(-1007f * 1f), 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))), Struct_1(!(!(u_input.a.x == 7921u)), vec3<u32>(arg_0.c.x, _wgslsmith_sub_u32(94366u, 15592u), arg_0.b.x), vec3<u32>(4713u, 0u << (arg_0.c.x % 32u), u_input.a.x) << (vec3<u32>(firstLeadingBit(86646u), 1u, ~4294967295u) % vec3<u32>(32u)), arg_0.d), arg_0);
    var var_1 = var_0;
    let var_2 = _wgslsmith_dot_vec4_i32(~(~max(reverseBits(vec4<i32>(2147483647i, 12253i, 2147483647i, 24090i)), countOneBits(vec4<i32>(var_0.e.d.x, var_1.e.d.x, -2147483647i, arg_0.d.x)))), -vec4<i32>(~var_1.a.d.x, arg_1.x, ~(-62729i), firstTrailingBit(var_0.a.d.x)));
    let var_3 = Struct_3(select(~abs(countOneBits(vec3<i32>(-1i, -1i, 0i))), vec3<i32>(var_1.a.d.x >> (_wgslsmith_sub_u32(0u, arg_0.b.x) % 32u), 17839i, countOneBits(4488i)), vec3<bool>(arg_0.a, !var_0.b.a, select(all(vec4<bool>(var_1.d.a, var_1.e.a, true, var_0.d.a)), true, all(vec3<bool>(false, true, true))))), Struct_1(all(!vec4<bool>(false, false, var_1.a.a, var_0.d.a)) && var_0.d.a, ~(~(~vec3<u32>(1u, var_0.b.c.x, u_input.a.x))), vec3<u32>(_wgslsmith_div_u32(countOneBits(28711u), ~14968u), var_0.d.c.x, abs(21391u)), -arg_0.d ^ -vec3<i32>(-2147483647i, 2147483647i, 13138i)), Struct_1(!all(!vec4<bool>(arg_0.a, false, true, var_0.e.a)), vec3<u32>((var_0.b.c.x ^ var_1.d.b.x) >> (_wgslsmith_div_u32(u_input.b, arg_0.b.x) % 32u), ~var_1.e.c.x, min(_wgslsmith_mult_u32(1u, 1u), var_1.b.b.x)), ~vec3<u32>(~var_0.d.c.x, _wgslsmith_mod_u32(u_input.b, var_1.a.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.c.x, 22197u, 1u), vec4<u32>(var_0.e.c.x, var_0.e.b.x, var_1.a.c.x, 76797u))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(76197i, 0i, var_2), ~vec3<i32>(-1i, 1i, 38873i)), ~(~arg_0.d.x), arg_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), var_0.c.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c.x, 377f)))))), _wgslsmith_f_op_vec2_f32(trunc(var_1.c.yy)))));
    var var_4 = vec3<i32>(~_wgslsmith_dot_vec3_i32(~arg_0.d, vec3<i32>(~arg_1.x, _wgslsmith_mod_i32(arg_1.x, -33603i), ~7657i)), arg_0.d.x, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(arg_0.d.x, -10968i)), -1i));
    return abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_4.x | 2147483647i, arg_1.x, -1i, arg_1.x), _wgslsmith_div_vec4_i32(max(vec4<i32>(var_3.c.d.x, arg_0.d.x, 2147483647i, arg_0.d.x), vec4<i32>(-9335i, -21343i, var_0.e.d.x, -7977i)), min(vec4<i32>(var_1.b.d.x, 2147483647i, var_2, -69125i), vec4<i32>(-2147483647i, 1i, var_4.x, var_2)))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_2, var_0.e.d.x, -32877i), select(vec4<i32>(var_2, 13868i, var_4.x, arg_0.d.x), vec4<i32>(61043i, -2147483647i, var_1.d.d.x, var_2), false)) & _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(11830i, -68873i, arg_1.x, 2147483647i)), vec4<i32>(var_3.a.x, var_2, arg_0.d.x, 2147483647i))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(true, vec3<u32>(min(u_input.a.x, u_input.b), _wgslsmith_clamp_u32(0u, 4235u, ~(~4294967295u)), _wgslsmith_add_u32(select(countOneBits(u_input.a.x), 4294967295u, true), ~u_input.a.x)), ~u_input.a, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, 43967i, -54271i), max(_wgslsmith_mult_vec3_i32(vec3<i32>(-39175i, 1i, -48951i), vec3<i32>(10556i, 18771i, -8021i)), ~vec3<i32>(20338i, 20420i, 2147483647i))), _wgslsmith_div_i32(-(~(-29235i)), 1i), -max(func_3(Struct_1(true, vec3<u32>(6115u, 4294967295u, u_input.a.x), u_input.a, vec3<i32>(-71789i, 2147483647i, 2147483647i)), vec3<i32>(-2147483647i, -4100i, 2147483647i)), 0i)));
    var_0 = Struct_1(all(select(!vec2<bool>(var_0.a, false), vec2<bool>(any(vec2<bool>(false, false)), true), !(!vec2<bool>(var_0.a, var_0.a)))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, u_input.b), ~select(u_input.a, vec3<u32>(var_0.b.x, 21594u, 37970u), var_0.a)) >> (vec3<u32>(_wgslsmith_div_u32(10658u, 1u), var_0.b.x, u_input.b) % vec3<u32>(32u)), reverseBits(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, var_0.b.x) ^ vec3<u32>(4294967295u, 73802u, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c.x, 30362u, var_0.b.x), vec3<u32>(30531u, u_input.b, 3192u))))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -var_0.d.x, ~(var_0.d.x | -1627i)), select(var_0.d, _wgslsmith_mult_vec3_i32(select(vec3<i32>(var_0.d.x, -6993i, var_0.d.x), var_0.d, true), countOneBits(vec3<i32>(21820i, var_0.d.x, var_0.d.x))), vec3<bool>(true, false | var_0.a, true))));
    var var_1 = Struct_1(true, vec3<u32>(abs(u_input.b), 0u, var_0.b.x), var_0.b, var_0.d);
    let var_2 = any(vec2<bool>(any(!(!vec3<bool>(var_1.a, var_0.a, false))), !(!var_0.a) | !any(vec2<bool>(false, true))));
    let var_3 = var_2;
    return Struct_3(~(~var_1.d), Struct_1(true, var_1.b, u_input.a, ~_wgslsmith_div_vec3_i32(vec3<i32>(var_1.d.x, -7912i, var_1.d.x), vec3<i32>(var_0.d.x, var_0.d.x, var_0.d.x))), Struct_1(false | var_1.a, _wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(var_0.c, u_input.a)), var_0.c, var_1.c), firstTrailingBit(_wgslsmith_mult_vec3_u32(~var_0.c, firstTrailingBit(var_1.b))), firstTrailingBit(vec3<i32>(-1i, 0i, var_1.d.x)) | var_1.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(989f - _wgslsmith_f_op_f32(360f + -465f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1335f + 773f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -170f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 251f, true)) + _wgslsmith_f_op_f32(-213f - -1087f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-418f, 472f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-287f, -556f))), vec2<f32>(-749f, _wgslsmith_div_f32(593f, -288f)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = abs(select(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, -26730i, 0i, 4082i), ~vec4<i32>(var_0.c.d.x, -37961i, -25124i, 60312i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, -2147483647i, 59940i, 2147483647i), vec4<i32>(var_0.c.d.x, 2147483647i, -27857i, var_0.b.d.x))), vec4<i32>(1i, func_3(Struct_1(false, var_0.c.c, vec3<u32>(15142u, u_input.b, 1u), var_0.a), vec3<i32>(48528i, var_0.b.d.x, -2147483647i)), firstTrailingBit(var_0.a.x), _wgslsmith_dot_vec2_i32(var_0.a.zx, var_0.b.d.xy))), vec4<i32>(firstLeadingBit(2147483647i), -8073i, -func_3(var_0.c, var_0.c.d), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.b.d.x, 2147483647i, 0i, 0i), vec4<i32>(20653i, var_0.c.d.x, -47356i, -74641i) >> (vec4<u32>(u_input.b, 0u, var_0.b.c.x, 0u) % vec4<u32>(32u)))), !select(!vec4<bool>(var_0.c.a, var_0.b.a, var_0.b.a, false), select(vec4<bool>(true, var_0.b.a, true, false), vec4<bool>(var_0.c.a, var_0.b.a, var_0.b.a, var_0.b.a), vec4<bool>(var_0.c.a, false, var_0.b.a, var_0.b.a)), select(vec4<bool>(false, var_0.c.a, true, true), vec4<bool>(false, true, false, var_0.b.a), var_0.c.a))));
    let var_2 = Struct_2(func_2().b, var_0.c, vec3<f32>(974f, 627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), func_2().c, Struct_1(all(!(!vec3<bool>(false, true, var_0.b.a))), vec3<u32>(~var_0.b.b.x, _wgslsmith_clamp_u32(countOneBits(0u), 4294967295u, ~52152u), abs(u_input.b)), var_0.b.b, vec3<i32>(-_wgslsmith_clamp_i32(-70557i, -3139i, var_1.x), -23586i, select(_wgslsmith_dot_vec2_i32(vec2<i32>(55500i, var_0.a.x), var_1.zx), -1183i, true))));
    let var_3 = func_2();
    var_0 = var_3;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = func_1();
    let var_2 = Struct_3(vec3<i32>(_wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(var_1.d.x, 7969i, -2147483647i, var_1.d.x)), ~(-vec4<i32>(var_1.d.x, 88i, -28283i, var_1.d.x))), firstTrailingBit(37562i), _wgslsmith_mod_i32(-firstTrailingBit(var_1.d.x), -var_1.d.x)), Struct_1(~_wgslsmith_sub_u32(u_input.b, var_1.c.x) <= 24807u, ~u_input.a, vec3<u32>(_wgslsmith_add_u32(abs(6060u), ~8647u), ~(~u_input.b), countOneBits(var_1.c.x)), ~min(vec3<i32>(-52375i, var_1.d.x, var_1.d.x), _wgslsmith_add_vec3_i32(var_1.d, var_1.d))), Struct_1(true, _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.c.x, 1u), vec3<u32>(0u, 0u, u_input.b)), 5737u, _wgslsmith_mult_u32(28932u, 0u)), reverseBits(~var_1.b)), _wgslsmith_mod_vec3_u32(var_1.b, ~var_1.b << (u_input.a % vec3<u32>(32u))), -(~vec3<i32>(0i, var_1.d.x, var_1.d.x))), -1000f, vec2<f32>(-252f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(473f * 1781f)))));
    var_0 = var_1.b.x;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1558f + 662f), -423f) * _wgslsmith_f_op_f32(-var_2.d)) + var_2.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1476f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(604f)) * _wgslsmith_f_op_f32(-var_2.d)))), var_2.d);
    let var_4 = var_1.d.x;
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.e * _wgslsmith_f_op_vec2_f32(round(var_2.e))));
    var var_6 = var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(18069u, _wgslsmith_f_op_vec2_f32(-var_2.e), ~var_2.c.b.x, 127f);
}

