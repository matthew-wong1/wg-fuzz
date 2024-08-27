struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = select(!select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, all(vec2<bool>(false, true)), false), vec3<bool>(any(vec4<bool>(false, false, true, false)), u_input.a.x < u_input.a.x, 0u >= arg_0.x)), !select(vec3<bool>(false, true, select(true, true, true)), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), vec3<bool>(true, !all(vec2<bool>(true, true)), true));
    var var_1 = ~349u;
    let var_2 = Struct_3(_wgslsmith_sub_u32(firstLeadingBit(reverseBits(u_input.c | arg_0.x)), _wgslsmith_div_u32(~47404u, countOneBits(arg_0.x) ^ _wgslsmith_clamp_u32(arg_0.x, 4294967295u, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-793f, -260f, -240f, 1303f), vec4<f32>(1565f, 1296f, -1277f, 891f), true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(622f, -1925f, -1221f, 922f)))), (true && any(vec4<bool>(false, var_0.x, var_0.x, var_0.x))) & all(select(vec2<bool>(false, var_0.x), var_0.zy, var_0.zy))), select(var_0.xz, select(!vec2<bool>(var_0.x, true), vec2<bool>(true, any(vec2<bool>(var_0.x, true))), true), !(reverseBits(u_input.a.x) <= u_input.a.x)), Struct_2(false, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x), ~arg_0.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(select(0i, u_input.a.x, false), abs(u_input.a.x)), min(_wgslsmith_div_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, u_input.a.x)) | _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xx), select(vec2<i32>(-6086i, u_input.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a.zz), all(var_0.yy)))));
    var_1 = _wgslsmith_mult_u32(1u, 11888u);
    return _wgslsmith_f_op_f32(max(var_2.b.c.x, 1415f));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(countOneBits(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), u_input.a), u_input.a, all(vec2<bool>(false, true)))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) & _wgslsmith_mod_vec3_i32(vec3<i32>(-18625i, u_input.a.x, u_input.a.x), u_input.a), -vec3<i32>(0i, -20099i, u_input.a.x))), u_input.a.x, ~(i32(-1i) * -888i), 37881i);
    var_1 = ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, ~(-1i), u_input.a.x, abs(-2147483647i)), vec4<i32>(~_wgslsmith_mult_i32(-1i, u_input.a.x), 1i, 0i, ~firstTrailingBit(-1i)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -13449i, 9833i, -19842i), vec4<i32>(var_1.x, 0i, 37536i, -1313i)), -vec4<i32>(35947i, -10593i, 2147483647i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.a.x, 51013i) & vec4<i32>(u_input.a.x, var_1.x, var_1.x, u_input.a.x), vec4<i32>(1i, var_1.x, u_input.a.x, -26941i), vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, -27132i))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0)))) * -796f));
    var_1 = vec4<i32>(var_1.x >> (~u_input.c % 32u), select(~23183i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i ^ var_1.x, abs(u_input.a.x)), -1i, -(i32(-1i) * -1i)), !all(vec4<bool>(true, false, false, true))), 1i, ~(~(~0i | (u_input.a.x & 2147483647i))));
    return ~vec4<u32>(4294967295u, countOneBits(35328u), abs(u_input.b.x), ~arg_1);
}

fn func_2() -> vec4<bool> {
    var var_0 = u_input.a.x;
    var var_1 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.b.x), ~vec4<u32>(u_input.c, 4294967295u, u_input.c, 59307u)), func_4(1000f, 20627u, _wgslsmith_f_op_f32(func_3(abs(vec3<u32>(u_input.c, 1u, 24292u))))), ~vec4<u32>(select(u_input.c, u_input.c, false), ~4294967295u, ~22474u, u_input.c));
    let var_2 = ~firstTrailingBit(_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_1.x, 0u, 51580u, u_input.d) | vec4<u32>(var_1.x, 26090u, u_input.d, var_1.x)), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 37224u, u_input.c, u_input.b.x), vec4<u32>(var_1.x, u_input.d, 50281u, 1u)))));
    var var_3 = u_input.b.x;
    var_0 = 0i;
    return !(!vec4<bool>(false, any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), true, true));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = vec3<bool>(all(select(func_2(), !vec4<bool>(false, arg_0.a, arg_0.a, true), true)) || !select(u_input.a.x != u_input.a.x, arg_1.x || false, u_input.a.x > u_input.a.x), true, arg_1.x);
    var var_1 = Struct_4(max(_wgslsmith_mult_i32(abs(u_input.a.x | 9193i), _wgslsmith_dot_vec4_i32(vec4<i32>(-9771i, u_input.a.x, 1i, 0i), ~vec4<i32>(u_input.a.x, 12651i, u_input.a.x, 0i))), -u_input.a.x), reverseBits(41108u), _wgslsmith_clamp_u32(0u, ~_wgslsmith_sub_u32(~4294967295u, arg_2), u_input.d), u_input.a.x);
    var var_2 = arg_0;
    var_1 = Struct_4(~_wgslsmith_mod_i32(firstTrailingBit(-var_1.a), ~var_1.d), 42976u, _wgslsmith_div_u32(abs(~(~arg_2)), (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_0.b, arg_0.b), vec3<u32>(4294967295u, 0u, 16889u)) ^ arg_2) ^ var_2.b), -2147483647i);
    var var_3 = ~u_input.b.x;
    return Struct_1(_wgslsmith_f_op_f32(min(-1033f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(221f, -273f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(405f, -530f) - _wgslsmith_div_f32(1216f, 1779f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-106f, 276f, var_0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(816f)), _wgslsmith_f_op_f32(func_3(vec3<u32>(var_1.b, var_1.b, var_2.b))), -213f, _wgslsmith_f_op_f32(round(-480f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(230f, 874f, -412f, -897f), vec4<f32>(1150f, 1117f, 1384f, -102f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1269f, -1000f, 947f, 337f) - vec4<f32>(1701f, 2561f, 1461f, -1346f)), !vec4<bool>(var_2.a, var_2.a, true, var_0.x))))), !any(vec2<bool>(arg_3.x, select(false, arg_0.a, var_2.a))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: i32) -> Struct_4 {
    let var_0 = Struct_2(!select(select(all(vec4<bool>(true, arg_2.c.x, false, true)), arg_2.c.x || false, arg_0.d), ~arg_3 > -arg_2.e.x, arg_0.d), u_input.c);
    let var_1 = Struct_1(arg_2.b.a, arg_2.b.c.x, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-842f, arg_1.x, true))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -981f), 653f)))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.b.b, _wgslsmith_f_op_f32(2615f * -1000f))))), true || (0i == u_input.a.x));
    let var_2 = abs(vec2<u32>(arg_2.d.b, firstLeadingBit(54623u) ^ arg_2.d.b));
    let var_3 = _wgslsmith_f_op_f32(-1127f + _wgslsmith_f_op_f32(f32(-1f) * -606f));
    var var_4 = var_0;
    return Struct_4(1i, abs(countOneBits(arg_2.a)), 70646u, abs(~arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(true, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, u_input.c, u_input.c, 644u), select(vec4<u32>(u_input.d, 4294967295u, u_input.b.x, u_input.c), vec4<u32>(1u, u_input.c, 0u, 39360u), vec4<bool>(false, true, true, false))) <= 28536u, false));
    var_0 = false;
    var_0 = !(!all(vec2<bool>(true, true)));
    let var_1 = func_5(func_1(Struct_2(false, u_input.d), !vec2<bool>(false, all(vec2<bool>(true, false))), u_input.b.x, select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), (52468u != u_input.c) & true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-406f, -684f, 228f, -1012f))) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(543f, 283f, _wgslsmith_div_f32(-1000f, -552f), -1000f)))), Struct_3(77342u, func_1(Struct_2(true, ~4294967295u), vec2<bool>(true, true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, 99497u), vec3<u32>(35187u, u_input.b.x, 13748u)), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), Struct_2(~(-21021i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 0i, u_input.a.x, 0i)), u_input.c), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a | vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(max(u_input.a.x, -2147483647i), -35266i))), ~u_input.a.x ^ ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, -84234i)), -u_input.a.zz));
    var_0 = all(vec3<bool>(true, func_2().x, true | !select(true, false, true)));
    var var_2 = min(reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_1.b, 45422u), vec3<u32>(var_1.c, var_1.c, 49642u) >> (vec3<u32>(0u, u_input.c, 4294967295u) % vec3<u32>(32u)), reverseBits(vec3<u32>(u_input.b.x, 1u, 0u)))), ~max(abs(~vec3<u32>(1u, 54970u, 4294967295u)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(46745u, 17129u, var_1.b), vec3<u32>(u_input.b.x, 13622u, u_input.d), true), vec3<u32>(u_input.b.x, 1u, var_1.c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) ^ reverseBits(-86673i)), u_input.a.x, _wgslsmith_clamp_i32(21179i, 2147483647i, -u_input.a.x)), _wgslsmith_dot_vec3_i32(-(select(u_input.a, u_input.a, vec3<bool>(false, false, true)) ^ max(u_input.a, vec3<i32>(-2147483647i, u_input.a.x, -6094i))), -vec3<i32>(-17856i, -2147483647i, 1i)), var_2.x);
}

