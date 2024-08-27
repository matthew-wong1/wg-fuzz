struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-689f, 0u, vec3<i32>(58571i, -1i, -1i), 22903i, 1u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> vec3<u32> {
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c.x, -u_input.c.x), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.c.x, -21843i, arg_3.x, 1i)), abs(vec4<i32>(global0.d, arg_3.x, -49329i, 1i))) | _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, 21035i), -1i, 74010i)), -37276i);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-global0.a)) + _wgslsmith_f_op_f32(1000f - 718f))), u_input.b, global0.c, 1i, arg_0.x);
    return ~vec3<u32>(33336u, u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.e, 12515u, arg_0.x), vec3<u32>(0u, max(1u, arg_0.x), global0.b & 38117u)));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-169f)) * arg_0)))), _wgslsmith_mult_u32(1u, firstLeadingBit(reverseBits(global0.b))) >> (global0.b % 32u), global0.c, firstLeadingBit(global0.c.x), _wgslsmith_add_u32(u_input.b, 12769u));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -639f);
    var var_1 = ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, abs(u_input.b), _wgslsmith_mod_u32(global0.e, 0u)), ~func_3(vec2<u32>(4916u, 3403u), vec3<f32>(1000f, -761f, global0.a), vec2<bool>(true, true), vec3<i32>(global0.d, u_input.c.x, u_input.c.x)), true), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(global0.b, u_input.b, 26717u) ^ vec3<u32>(global0.e, global0.b, 88644u)), ~vec3<u32>(1u, u_input.a, 20176u)));
    var var_2 = ~_wgslsmith_mult_i32(firstLeadingBit(30672i), ~23433i);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), var_0)), 4294967295u, _wgslsmith_sub_vec3_i32(~global0.c, _wgslsmith_mult_vec3_i32(global0.c ^ vec3<i32>(-16415i, global0.c.x, -10560i), firstTrailingBit(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x) & global0.c))), abs(abs(select(2130i, -u_input.c.x, true))), ~_wgslsmith_sub_u32(global0.e, 6228u & firstTrailingBit(global0.e)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(442f, 1240f)) + 1285f);
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(global0.a, 1u, min(select(global0.c & (global0.c | vec3<i32>(9230i, u_input.c.x, global0.c.x)), ~global0.c, true), ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, global0.c.x), global0.c, global0.c))), -min(_wgslsmith_dot_vec4_i32(vec4<i32>(7199i, 22033i, 8318i, 1i), vec4<i32>(u_input.c.x, -2147483647i, -1i, u_input.c.x)), _wgslsmith_mult_i32(31039i, 0i)) | min(u_input.c.x, -u_input.c.x), 5587u);
    global0 = Struct_1(-1446f, u_input.a, global0.c, countOneBits(_wgslsmith_div_i32(global0.c.x, -1i << (select(var_0.b, 4294967295u, true) % 32u))), ~1u);
    var var_1 = ~firstLeadingBit(~_wgslsmith_mod_u32(46684u, var_0.b));
    var var_2 = Struct_1(arg_0.x, ~var_0.e | firstLeadingBit(max(_wgslsmith_add_u32(var_0.b, var_0.e), var_0.b)), var_0.c, u_input.c.x << ((~(~var_0.b) | u_input.b) % 32u), ~(~(~(var_0.b >> (51774u % 32u)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, var_0.a) - _wgslsmith_f_op_f32(max(-317f, _wgslsmith_f_op_f32(sign(-2395f))))))), max(u_input.b, ~73702u), max(-var_0.c, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.c, vec3<i32>(u_input.c.x, var_2.d, var_0.d)) >> (~vec3<u32>(var_0.e, var_0.b, 0u) % vec3<u32>(32u)), ~vec3<i32>(-9760i, 17567i, var_2.c.x) | var_2.c)), _wgslsmith_mod_i32(reverseBits(firstLeadingBit(1i)), min(~2147483647i, -u_input.c.x)), _wgslsmith_mod_u32(var_2.e, min(~55377u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_2.e), vec2<u32>(1u, 4294967295u)))));
    return Struct_1(_wgslsmith_f_op_f32(-799f - global0.a), firstLeadingBit(max(_wgslsmith_add_u32(~4294967295u, _wgslsmith_mult_u32(4294967295u, 0u)), 24154u)), abs(abs(var_3.c)) & global0.c, ~(~var_0.d ^ global0.c.x), ~(~countOneBits(~global0.e)));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1360f - _wgslsmith_f_op_f32(-1000f - 2101f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-822f))) * _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, global0.a))))));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), 687f)));
    var_1 = func_4(vec4<f32>(var_0, var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) - 1225f), _wgslsmith_f_op_f32(952f * var_0)));
    let var_2 = var_1.c;
    var var_3 = 41796i;
    return select(vec3<bool>(true, true, true), !vec3<bool>((var_1.d > -4093i) && select(false, true, false), false, !any(vec3<bool>(true, true, true))), true);
}

fn func_5(arg_0: vec3<bool>) -> vec2<bool> {
    global0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-2095f, global0.a, global0.a, -1526f), vec4<f32>(global0.a, -245f, global0.a, global0.a)), vec4<f32>(_wgslsmith_f_op_f32(-771f - -543f), _wgslsmith_f_op_f32(floor(-150f)), -220f, _wgslsmith_f_op_f32(f32(-1f) * -981f)), true))));
    global0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, 789f, -744f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-475f, global0.a, 798f, global0.a), vec4<f32>(global0.a, 880f, -681f, global0.a), vec4<bool>(true, arg_0.x, true, false))))), abs(-1i) < u_input.c.x))));
    let var_0 = ~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(32736u, _wgslsmith_add_u32(global0.e, u_input.b), countOneBits(global0.e)), vec3<u32>(global0.e, _wgslsmith_div_u32(u_input.b, 1u), func_3(vec2<u32>(1u, u_input.a), vec3<f32>(1000f, global0.a, global0.a), vec2<bool>(arg_0.x, arg_0.x), vec3<i32>(global0.d, 1i, global0.d)).x)), _wgslsmith_add_u32(u_input.b, 1u) ^ ~_wgslsmith_div_u32(u_input.a, global0.b), u_input.a);
    var var_1 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1218f - global0.a), global0.a, _wgslsmith_f_op_f32(887f + 989f), _wgslsmith_f_op_f32(round(600f))), vec4<f32>(_wgslsmith_f_op_f32(global0.a + 168f), -1818f, -406f, global0.a), !vec4<bool>(arg_0.x, true, arg_0.x, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a, 335f, global0.a, global0.a))))))));
    global0 = Struct_1(897f, ~(~var_0.x), vec3<i32>(1i, min(_wgslsmith_dot_vec2_i32(var_1.c.zx >> (var_0.zy % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 2147483647i), global0.c.zy, vec2<i32>(-2147483647i, u_input.c.x))), min(-global0.d, 19915i | global0.c.x)), ~2147483647i), var_1.d, abs(~(~(var_1.e ^ global0.e))));
    return arg_0.yz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, 0u, global0.c, _wgslsmith_div_i32(-1i, u_input.c.x | abs(-1i)), ~firstTrailingBit(u_input.a));
    var var_0 = firstLeadingBit(select(_wgslsmith_div_vec2_u32(abs(vec2<u32>(1u, u_input.b)), firstLeadingBit(firstTrailingBit(vec2<u32>(0u, 4294967295u)))), abs(~(vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(4294967295u, global0.b) % vec2<u32>(32u)))), func_5(func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(260f, ~(~89956u >> (firstTrailingBit(16169u) % 32u)));
}

