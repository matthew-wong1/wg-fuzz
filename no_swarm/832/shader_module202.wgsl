struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-379f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -839f)), -715f) + vec3<f32>(_wgslsmith_f_op_f32(-228f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-863f + _wgslsmith_f_op_f32(abs(-1128f))), -449f)));
    let var_1 = Struct_2(Struct_1(u_input.a.x & u_input.a.x, u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -1027f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, -811f)), var_0.yy)), u_input.a.x, u_input.a.x), abs(-46532i));
    var var_2 = Struct_3(Struct_1(u_input.a.x, _wgslsmith_add_u32(var_1.a.b, ~(u_input.b ^ 55168u)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -222f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(778f)), var_1.a.c.x)), 2147483647i, var_1.a.d), vec4<bool>(any(vec2<bool>(true, true)), !any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true)), select(!(var_1.a.b >= 37442u), (-827f <= var_1.a.c.x) & true, !all(vec2<bool>(false, true))), false), var_1.a, countOneBits(vec2<i32>(var_1.b, u_input.a.x)), !all(vec4<bool>(true, true, true, true)));
    var_2 = Struct_3(Struct_1(i32(-1i) * -_wgslsmith_add_i32(var_1.a.d, -2147483647i), _wgslsmith_dot_vec3_u32(vec3<u32>(5587u, ~u_input.b, ~u_input.b), vec3<u32>(countOneBits(35437u), var_2.c.b, u_input.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -402f), vec2<f32>(935f, var_2.c.c.x), all(vec3<bool>(var_2.b.x, false, true)))), vec2<f32>(899f, _wgslsmith_f_op_f32(-var_0.x))), firstLeadingBit(max(var_2.d.x, 1i)) ^ firstTrailingBit(-1i), ~countOneBits(_wgslsmith_clamp_i32(2147483647i, var_2.d.x, -6959i))), var_2.b, Struct_1(var_2.c.e, countOneBits(_wgslsmith_add_u32(var_1.a.b, var_1.a.b | 25523u)), var_0.yz, _wgslsmith_mod_i32(_wgslsmith_mult_i32(select(var_1.a.a, 20023i, var_2.b.x), 2147483647i), -var_1.a.a ^ var_1.b), ~select(var_1.a.e << (var_2.c.b % 32u), var_1.b & var_2.c.d, !var_2.e)), firstTrailingBit(select(abs(var_2.d), reverseBits(vec2<i32>(-1i, var_1.b) ^ u_input.a), vec2<bool>(true, var_2.b.x))), var_2.b.x);
    let var_3 = firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.b, var_1.a.b), ~vec2<u32>(var_2.a.b, 4294967295u) & vec2<u32>(0u, 24585u)), ~countOneBits(24259u) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.b, var_1.a.b, var_1.a.b), vec3<u32>(0u, var_1.a.b, u_input.b)) << (var_2.a.b % 32u)) % 32u)));
    return -155f;
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(867f - 441f))), 343f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -919f) + -126f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(395f, 137f)) + _wgslsmith_f_op_f32(411f + 2060f))), _wgslsmith_f_op_f32(f32(-1f) * -888f)), -(i32(-1i) * -34263i), u_input.a);
    var var_1 = min(_wgslsmith_sub_u32(min(_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(2573u, 0u, u_input.b), vec3<u32>(u_input.b, 0u, 4294967295u))), 2466u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(9915u, u_input.b), vec2<u32>(u_input.b, 1u)), 31780u ^ u_input.b, 26902u & u_input.b) << (1u % 32u)), u_input.b);
    var var_2 = Struct_4(var_0.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(13249i, 15318i)), -arg_0.zz), -2147483647i), u_input.a << (_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(34369u, 4294967295u), ~vec2<u32>(0u, u_input.b)), select(~vec2<u32>(27118u, 54403u), vec2<u32>(12208u, u_input.b) | vec2<u32>(u_input.b, u_input.b), false)) % vec2<u32>(32u)));
    var_1 = 0u;
    var var_3 = !vec2<bool>(all(vec3<bool>(true, true, true)), 1000f != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a.x))));
    return !(!(!select(select(vec4<bool>(true, var_3.x, var_3.x, false), vec4<bool>(var_3.x, true, var_3.x, false), vec4<bool>(true, false, false, true)), !vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(false, true, false, var_3.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<u32>) -> f32 {
    let var_0 = !func_2(countOneBits(-(vec3<i32>(arg_1, 23055i, arg_1) | vec3<i32>(u_input.a.x, 2147483647i, arg_1))));
    let var_1 = Struct_1(-34017i, arg_2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1511f * 734f), _wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-319f, 1534f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-819f, -836f) - vec2<f32>(688f, 267f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 360f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-428f, -151f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(902f, -763f) - vec2<f32>(-208f, -400f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-946f, 448f) + vec2<f32>(-699f, 187f)))), true))), u_input.a.x, arg_1);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1195f, var_1.c.x, var_1.c.x, var_1.c.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(774f, var_1.c.x, -224f, -375f) * vec4<f32>(-2100f, var_1.c.x, var_1.c.x, 1152f))))), arg_1, vec2<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, 0i), vec3<i32>(u_input.a.x, 0i, u_input.a.x) | vec3<i32>(50577i, u_input.a.x, 624i)), -35755i), u_input.a.x));
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c.x), 433f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * -1178f), 1291f, _wgslsmith_f_op_f32(var_2.a.x + var_1.c.x)))), _wgslsmith_sub_i32(firstTrailingBit(-max(-12651i, var_1.e)), _wgslsmith_add_i32(arg_1, -1i)), vec2<i32>(reverseBits(-arg_1 ^ arg_1), select(u_input.a.x, u_input.a.x, func_2(min(vec3<i32>(u_input.a.x, var_2.b, -7505i), vec3<i32>(-2147483647i, var_1.a, -38484i))).x)));
    var_2 = var_3;
    return _wgslsmith_f_op_f32(sign(var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), all(vec3<bool>(false, false, false)))), ~(-u_input.a.x), firstTrailingBit(vec3<u32>(~4294967295u, ~58440u, u_input.b))));
    var var_1 = Struct_2(Struct_1(reverseBits(39106i), 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-130f, -160f))), u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, (u_input.a.x | u_input.a.x) >> (~u_input.b % 32u))), -13602i);
    var_1 = Struct_2(Struct_1(reverseBits(-u_input.a.x), var_1.a.b | firstTrailingBit(_wgslsmith_mult_u32(70401u, 50338u)), _wgslsmith_f_op_vec2_f32(min(var_1.a.c, vec2<f32>(_wgslsmith_f_op_f32(-1655f * 1913f), -998f))), -2147483647i, -60916i), -firstLeadingBit(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-13153i, var_1.b, -7664i), vec3<i32>(-1i, 0i, u_input.a.x)))));
    let var_2 = select(firstLeadingBit(~vec3<i32>(var_1.a.d >> (u_input.b % 32u), reverseBits(u_input.a.x), var_1.a.e)), vec3<i32>(~_wgslsmith_dot_vec4_i32(max(vec4<i32>(-48810i, var_1.a.a, 0i, 20674i), vec4<i32>(0i, -14587i, 44495i, u_input.a.x)), select(vec4<i32>(var_1.a.a, -105376i, -5725i, 2147483647i), vec4<i32>(2147483647i, -9985i, var_1.a.a, 2147483647i), true)), _wgslsmith_mult_i32(u_input.a.x, 1i) ^ -u_input.a.x, u_input.a.x), vec3<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))) | all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false)), true));
    var_1 = Struct_2(var_1.a, _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_1.b, 2147483647i, select(u_input.a.x, var_2.x, false)), u_input.a.x));
    let var_3 = Struct_4(vec4<f32>(-1866f, -369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.x)) + _wgslsmith_f_op_f32(min(var_1.a.c.x, _wgslsmith_f_op_f32(round(1360f))))), _wgslsmith_f_op_f32(-var_0)), max(~_wgslsmith_add_i32(~12753i, var_1.a.e), -3734i), select(min(abs(u_input.a), vec2<i32>(1i ^ var_1.b, select(var_1.a.d, var_2.x, false))), firstLeadingBit(select(vec2<i32>(-1i, -19969i), -var_2.xx, true)), vec2<bool>(true, true)));
    var_1 = Struct_2(Struct_1(-26827i, ~var_1.a.b, vec2<f32>(var_1.a.c.x, -530f), reverseBits(-2147483647i), -(~(~1i))), i32(-1i) * -_wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.x, 1i, -14767i, u_input.a.x), -vec4<i32>(u_input.a.x, var_2.x, 76440i, 14960i)));
    var var_4 = select(!(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>((select(var_1.a.b, 3768u, false) >= ~var_1.a.b) == (countOneBits(var_3.b) <= var_1.b), var_2.x <= (select(21711i, var_2.x, false) << (max(20319u, 1u) % 32u)), true, !(u_input.b <= 62392u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, u_input.a.x, -49784i));
}

