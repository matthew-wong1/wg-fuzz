struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_4(Struct_2(_wgslsmith_mult_u32(53757u, _wgslsmith_mult_u32(u_input.a, 1u))));
    let var_1 = !global0.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1873f)))) - _wgslsmith_f_op_f32(arg_0.x * arg_0.x));
    var var_3 = ~min(select(firstLeadingBit(~vec3<u32>(4294967295u, u_input.a, 53714u)), ~vec3<u32>(var_0.a.a, 34728u, 29322u), any(global0.xy)), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(35762u, arg_1.e, var_0.a.a), vec3<u32>(u_input.a, 41353u, u_input.a))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, 1000f, arg_0.x, var_2) + vec4<f32>(var_2, var_2, var_2, var_2))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(896f, 316f, -672f, -944f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(629f, 297f, -435f, -482f) + vec4<f32>(-203f, 1000f, arg_1.b.x, 631f))), vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.x, -347f, false)), arg_0.x, _wgslsmith_f_op_f32(-1000f + 124f), _wgslsmith_f_op_f32(-var_2))))));
    return select(select(select(vec3<bool>(false, select(true, global0.x, false), true), !vec3<bool>(global0.x, true, var_1), !(-930f == arg_1.a)), !select(select(vec3<bool>(global0.x, global0.x, var_1), vec3<bool>(true, false, global0.x), vec3<bool>(true, false, true)), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(var_1, true, true), true), vec3<bool>(var_1, false, true)), !vec3<bool>(!global0.x, true, true)), vec3<bool>(true, global0.x, !all(select(vec4<bool>(global0.x, global0.x, var_1, false), vec4<bool>(var_1, true, true, true), vec4<bool>(false, true, false, true)))), all(select(!vec4<bool>(var_1, false, global0.x, true), !select(vec4<bool>(global0.x, global0.x, false, var_1), vec4<bool>(global0.x, var_1, global0.x, true), vec4<bool>(true, var_1, true, global0.x)), true)));
}

fn func_2() -> Struct_4 {
    global0 = !select(!func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-743f, 1527f) + vec2<f32>(1000f, 1021f)), Struct_1(-759f, vec2<f32>(-409f, 1096f), -14441i, 28208u, 38043u)), !vec3<bool>(global0.x, global0.x, all(vec3<bool>(global0.x, global0.x, true))), true);
    var var_0 = _wgslsmith_mult_vec2_u32(select(reverseBits(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 1u), vec2<u32>(26411u, u_input.a)))), max(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(80467u, 1u)), ~(~vec2<u32>(u_input.a, 75707u))), false), select(abs(min(max(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 60174u)), select(vec2<u32>(u_input.a, 32327u), vec2<u32>(44762u, u_input.a), vec2<bool>(global0.x, global0.x)))), vec2<u32>(abs(~u_input.a), ~1u), select(global0.zy, func_3(vec2<f32>(1905f, -170f), Struct_1(551f, vec2<f32>(-1640f, 119f), -30314i, 4294967295u, 1u)).yx, !global0.xz)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-750f, -603f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-138f, 579f, -347f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1285f, -1156f, 1312f)))))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2034f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-958f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1556f - _wgslsmith_f_op_f32(step(-273f, 812f))))), -451f));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(var_1.x * -172f), Struct_1(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1635f)), -262f) * var_1.zy), _wgslsmith_clamp_i32(1i, 1i, 2147483647i), 13585u, 46064u >> ((22904u << ((var_0.x ^ u_input.a) % 32u)) % 32u)), !select(false, false, true) | false);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b.a - var_2.a))))), _wgslsmith_f_op_f32(f32(-1f) * -855f))), vec2<f32>(686f, var_2.b.a), ~firstTrailingBit(~var_2.b.c), 1u, var_0.x);
    return Struct_4(Struct_2(~28575u));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    global0 = !select(func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1033f, -1470f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(785f, 221f))))), Struct_1(-114f, vec2<f32>(2374f, 652f), max(-57280i, 55386i), arg_0.a.a, _wgslsmith_mod_u32(u_input.a, arg_0.a.a))), select(!func_3(vec2<f32>(-254f, 994f), Struct_1(1013f, vec2<f32>(-1996f, -184f), -2147483647i, 3108u, 108336u)), !func_3(vec2<f32>(1384f, 187f), Struct_1(-1193f, vec2<f32>(904f, 1411f), -2147483647i, arg_0.a.a, 4294967295u)), vec3<bool>(!global0.x, global0.x & global0.x, true)), select(select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, false), true), vec3<bool>(false, global0.x, global0.x), !vec3<bool>(false, false, global0.x)), select(!vec3<bool>(false, global0.x, true), vec3<bool>(false, global0.x, true), false), global0.x));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(484f, _wgslsmith_f_op_f32(sign(1407f))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1041f * -272f), -578f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-350f - _wgslsmith_f_op_f32(sign(737f))), -795f, !(51728u > u_input.a))))));
    var var_1 = vec2<bool>(!global0.x, global0.x);
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a | _wgslsmith_mod_u32(4294967295u, arg_0.a.a), ~4294967295u), _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a.a, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(17720u, arg_0.a.a), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 1u) ^ vec2<u32>(99442u, arg_0.a.a)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a.a, 0u) & vec2<u32>(4294967295u, u_input.a), countOneBits(vec2<u32>(25697u, arg_0.a.a))))));
    var var_3 = firstLeadingBit(~min(-20927i, -1i));
    return Struct_3(688f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f) + _wgslsmith_div_f32(-1723f, var_0.x)), 1000f), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(47128i, 2147483647i), reverseBits(vec2<i32>(-1i, 32385i))), u_input.a, ~73652u), !all(!vec3<bool>(true, global0.x, global0.x)));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    var var_0 = !(!(!select(!vec3<bool>(arg_0.c, true, global0.x), select(vec3<bool>(false, global0.x, arg_0.c), vec3<bool>(false, false, arg_0.c), false), vec3<bool>(false, global0.x, arg_0.c))));
    var var_1 = func_4(func_2());
    var var_2 = func_4(Struct_4(Struct_2(u_input.a)));
    var var_3 = -((max(vec3<i32>(0i, 2147483647i, arg_0.b.c) << (vec3<u32>(9677u, var_1.b.e, var_1.b.d) % vec3<u32>(32u)), -vec3<i32>(3802i, var_1.b.c, 4959i)) & vec3<i32>(abs(2147483647i), -1i, var_2.b.c)) | (vec3<i32>(var_2.b.c, 1i, -2147483647i) ^ _wgslsmith_add_vec3_i32(-vec3<i32>(var_1.b.c, arg_0.b.c, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, -6411i), vec3<i32>(34065i, arg_0.b.c, 2147483647i)))));
    var var_4 = func_4(Struct_4(Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1.b.e, u_input.a, var_1.b.e), vec4<u32>(u_input.a, u_input.a, var_1.b.e, 1u)), ~vec4<u32>(arg_0.b.d, var_2.b.d, var_1.b.d, arg_0.b.d)))));
    return var_1.b;
}

fn func_1(arg_0: i32, arg_1: u32) -> i32 {
    let var_0 = Struct_4(Struct_2(firstTrailingBit(min(select(arg_1, 93430u, false), 46862u | u_input.a))));
    var var_1 = func_5(func_4(func_2()), ~(-11518i));
    var var_2 = func_2();
    var_1 = Struct_1(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -324f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1.a, 926f))))))), ~var_1.c, var_0.a.a, 57990u);
    var_1 = func_4(func_2()).b;
    return reverseBits(_wgslsmith_mod_i32(~min(var_1.c, func_4(var_0).b.c), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(0i, ~(-_wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, 2147483647i, -32473i), _wgslsmith_dot_vec2_i32(vec2<i32>(11943i, -14308i), vec2<i32>(-15611i, 2147483647i)))));
    let var_1 = 0u;
    var var_2 = _wgslsmith_mult_i32(-(~func_1(_wgslsmith_mod_i32(-30727i, 15965i), 4294967295u)), 1i);
    let var_3 = func_5(func_4(Struct_4(func_2().a)), ~_wgslsmith_clamp_i32(-1i, ~0i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -25654i), vec2<i32>(23909i, -45234i)), ~_wgslsmith_clamp_i32(2512i, -34586i, 14893i)));
    var var_4 = var_3.b;
    var var_5 = global0.x;
    var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(firstTrailingBit(vec2<i32>(var_3.c, 2147483647i) << (vec2<u32>(80569u, 32547u) % vec2<u32>(32u)))), -countOneBits(vec2<i32>(55992i, var_3.c))), -1i);
    var_2 = ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(17860i, -var_3.c & _wgslsmith_sub_i32(-45913i, -11809i)), var_3.c, i32(-1i) * -1i);
    var var_6 = vec3<bool>(global0.x, all(!select(!vec4<bool>(false, global0.x, false, global0.x), !vec4<bool>(global0.x, true, false, global0.x), global0.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(36495u);
}

