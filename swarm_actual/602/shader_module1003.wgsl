struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: u32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_1.d.x)), 465f, all(vec2<bool>(1200f > _wgslsmith_f_op_f32(select(arg_1.d.x, 1408f, arg_1.c.x)), any(arg_1.c.xx)))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1418f)) - -1878f)));
    let var_2 = arg_1;
    var var_3 = Struct_1(firstTrailingBit((arg_1.a & ~arg_1.b.x) | ~_wgslsmith_add_u32(4294967295u, u_input.d)), var_2.b, vec3<bool>(all(!vec2<bool>(arg_1.c.x, arg_1.c.x)), true, !(~u_input.d >= 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_2.d, _wgslsmith_div_vec4_f32(var_2.d, _wgslsmith_f_op_vec4_f32(round(arg_1.d)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1562f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x - var_1)), var_0, 1808f)), var_2.e);
    var_3 = Struct_1(7914u, ~(~(var_3.b << (var_2.b % vec4<u32>(32u)))), !var_3.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-1533f)), -434f, -442f, 115f) + arg_1.d)), countOneBits(arg_1.e));
    return var_3.c.zx;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_3(u_input.a.x, Struct_1(u_input.b, arg_0.b, select(select(select(arg_0.c, vec3<bool>(false, arg_0.c.x, arg_0.c.x), arg_0.c.x), arg_0.c, true), arg_0.c, vec3<bool>(false, any(vec3<bool>(arg_0.c.x, arg_0.c.x, true)), arg_0.c.x)), arg_0.d, vec3<i32>(-1i, u_input.a.x, abs(1i)) << (max(vec3<u32>(0u, u_input.d, 32764u) ^ vec3<u32>(u_input.d, arg_0.b.x, arg_0.b.x), min(vec3<u32>(4294967295u, 1u, 0u), arg_0.b.wwx)) % vec3<u32>(32u))));
    var var_1 = ~countOneBits(1i);
    var_0 = arg_0.c.zx;
    let var_2 = _wgslsmith_f_op_f32(247f * -529f);
    var_0 = !(!select(!select(arg_0.c.yx, vec2<bool>(arg_0.c.x, var_0.x), arg_0.c.x), arg_0.c.yy, vec2<bool>(true, true)));
    return Struct_1(~arg_0.a, ~vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, arg_0.b.x, 65239u), u_input.b, u_input.b, u_input.d << (1u % 32u)), select(arg_0.c, !(!arg_0.c), _wgslsmith_mult_u32(~arg_0.b.x, ~23757u) != 0u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2604f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_0.d.x + var_2), _wgslsmith_f_op_f32(select(arg_0.d.x, var_2, arg_0.c.x)))), _wgslsmith_f_op_vec4_f32(-arg_0.d))), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(1i, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, -33735i), firstLeadingBit(arg_0.e))) >> (vec3<u32>(u_input.d, ~u_input.d, firstTrailingBit(~u_input.b)) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = abs(~vec3<u32>(31396u, ~15654u, _wgslsmith_sub_u32(arg_1.a, arg_1.b.x))) | _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(24077u, arg_1.b.x << (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(2047u, arg_1.a), vec2<u32>(49545u, 45839u))), arg_1.b.zzz), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(29162u, u_input.d, u_input.d), ~arg_1.b.xxx));
    let var_2 = ~arg_1.b;
    var var_3 = Struct_1(1u, ~arg_1.b, vec3<bool>(arg_1.c.x, arg_1.c.x, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d + vec4<f32>(668f, 625f, -341f, -129f)))) * arg_1.d), vec3<i32>(-1i) * -abs(reverseBits(arg_1.e)));
    let var_4 = var_0;
    return func_2(func_2(arg_1));
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = -68297i;
    return vec3<bool>(arg_0.c.x, false, func_2(arg_0).c.x);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32) -> i32 {
    var var_0 = Struct_1(5629u, _wgslsmith_mod_vec4_u32(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 96874u, u_input.b, 42044u), vec4<u32>(u_input.d, u_input.b, 27584u, u_input.b))) << (firstLeadingBit(vec4<u32>(83734u, 2689u, 4294967295u, u_input.d) | vec4<u32>(u_input.b, u_input.b, 79771u, 6419u)) % vec4<u32>(32u)), vec4<u32>(min(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.b, 38204u), vec4<u32>(3523u, 56870u, 1u, u_input.b))), 80605u, abs(u_input.b), ~(~u_input.d))), select(!vec3<bool>(false, true, 14821i <= arg_2), func_5(func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(515f, -1951f), vec2<f32>(365f, 1287f))), func_2(Struct_1(0u, vec4<u32>(u_input.d, 0u, u_input.b, u_input.d), vec3<bool>(arg_0, true, arg_0), vec4<f32>(-1117f, 534f, 889f, 1255f), vec3<i32>(2147483647i, arg_2, arg_1))), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_1, 0i), vec3<i32>(arg_1, arg_1, arg_1)))), arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-806f + 210f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(650f)), _wgslsmith_f_op_f32(f32(-1f) * -774f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(489f, 624f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1159f, -335f)), _wgslsmith_f_op_f32(f32(-1f) * -312f)))) + _wgslsmith_f_op_vec4_f32(-func_2(func_2(Struct_1(9160u, vec4<u32>(u_input.b, 7559u, 0u, u_input.b), vec3<bool>(false, true, arg_0), vec4<f32>(-1183f, -452f, 350f, 186f), vec3<i32>(u_input.c.x, arg_2, -16861i)))).d)), select(abs(func_2(func_4(vec2<f32>(524f, 575f), Struct_1(33816u, vec4<u32>(u_input.d, 4294967295u, 4294967295u, u_input.d), vec3<bool>(arg_0, false, arg_0), vec4<f32>(1000f, -219f, 1000f, 3501f), vec3<i32>(59864i, arg_2, arg_2)), vec3<i32>(-1i, 54520i, 1i))).e), -vec3<i32>(_wgslsmith_add_i32(arg_1, 2453i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -60776i, u_input.c.x), vec3<i32>(-46310i, 0i, 77090i)), _wgslsmith_add_i32(u_input.a.x, 0i)), !arg_0));
    let var_1 = arg_0;
    var var_2 = var_0.b.wz;
    let var_3 = Struct_1(~u_input.b, countOneBits(vec4<u32>(1u, func_4(var_0.d.yy, Struct_1(0u, vec4<u32>(var_2.x, 4294967295u, 1u, var_0.b.x), vec3<bool>(var_0.c.x, var_1, true), vec4<f32>(994f, -472f, 564f, var_0.d.x), var_0.e), var_0.e).a, ~40471u, var_0.a)) | var_0.b, var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-894f, -1000f, var_0.d.x, 578f)))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, -564f))))), _wgslsmith_mult_vec3_i32(vec3<i32>(select(27306i, _wgslsmith_dot_vec2_i32(vec2<i32>(-19542i, arg_2), vec2<i32>(u_input.a.x, u_input.c.x)), true), u_input.c.x, func_4(vec2<f32>(244f, var_0.d.x), func_2(Struct_1(u_input.d, var_0.b, var_0.c, var_0.d, var_0.e)), ~var_0.e).e.x), _wgslsmith_add_vec3_i32(select(~var_0.e, _wgslsmith_mult_vec3_i32(var_0.e, var_0.e), !var_0.c), ~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 6911i, -2147483647i), vec3<i32>(2684i, arg_2, arg_2)))));
    var_2 = ~vec2<u32>(4294967295u, _wgslsmith_add_u32(firstLeadingBit(0u), var_0.a));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~reverseBits(firstTrailingBit(abs(vec3<i32>(u_input.a.x, u_input.c.x, 6683i)))));
    let var_1 = func_1(all(vec4<bool>(true, false, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)))), u_input.a.x, u_input.a.x);
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-254f, -818f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1695f, 185f) + vec2<f32>(211f, 1278f))) * func_2(Struct_1(u_input.d, vec4<u32>(u_input.d, u_input.b, u_input.b, 0u), vec3<bool>(false, true, false), vec4<f32>(-1640f, 963f, 1615f, 146f), vec3<i32>(0i, 2147483647i, u_input.c.x))).d.xz)), Struct_1(u_input.b, vec4<u32>(u_input.b, 15443u, 1u, 1u ^ u_input.d), !vec3<bool>(true, var_1 > -70142i, false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-974f, -2540f, -1662f, -1786f)) - vec4<f32>(1f, 1f, 1f, 1f)) + vec4<f32>(_wgslsmith_div_f32(-172f, 549f), -1000f, _wgslsmith_f_op_f32(-657f + 1223f), _wgslsmith_div_f32(-1000f, -167f))), max(~min(vec3<i32>(var_1, u_input.c.x, var_0.x), vec3<i32>(var_1, var_1, 2147483647i)), vec3<i32>(var_0.x, i32(-1i) * -1i, abs(-2147483647i)))), vec3<i32>(-(i32(-1i) * -12717i), -2147483647i, _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, var_0.x), ~(-467i))));
    var_0 = ~_wgslsmith_div_vec3_i32(-var_2.e << (~var_2.b.zww % vec3<u32>(32u)), abs(~vec3<i32>(var_2.e.x, 0i, var_0.x)));
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~var_2.b.zyw), var_2.d.x, -836f, var_2.a);
}

