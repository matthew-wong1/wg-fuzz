struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(-45996i, -4294i, 2147483647i, -53974i), vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.a)) | ~vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.a), max(reverseBits(vec4<i32>(0i, -3793i, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -72237i, 21832i), vec4<i32>(-17805i, -5851i, 1i, 24329i), vec4<i32>(6538i, -2147483647i, u_input.a, u_input.a)))), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, 1i, u_input.b, u_input.b), -vec4<i32>(-51030i, u_input.b, -1i, 2147483647i)));
    var var_1 = Struct_4(Struct_1(vec2<f32>(698f, -1025f), var_0), Struct_3(Struct_2(-vec2<i32>(-21966i, var_0), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-113f, -616f, 354f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2327f, -243f, 834f), vec3<f32>(-118f, 1315f, 1960f), vec3<bool>(false, true, true))))), vec4<bool>(all(vec3<bool>(false, true, false)), true, true, true), vec4<i32>(1i, i32(-1i) * -66468i, 4428i, var_0), vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1210f)) - _wgslsmith_f_op_f32(-866f + -1161f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -992f)))), Struct_2(~(-vec2<i32>(u_input.b, 12452i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(348f, 573f, -182f)) + vec3<f32>(-1754f, 365f, -1000f)), vec4<bool>(true, true, true, true), vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.b, -54875i, var_0), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1194f, _wgslsmith_f_op_f32(448f + _wgslsmith_f_op_f32(sign(967f)))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_f_op_f32(min(2103f, _wgslsmith_f_op_f32(sign(780f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-116f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var var_2 = Struct_3(Struct_2(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_1.b.c.d.wxw, var_1.b.a.d.yyz), _wgslsmith_add_vec3_i32(var_1.b.c.d.xwz, var_1.b.a.d.ywz)), 2147483647i), var_1.e, vec4<bool>(var_1.a.b >= -1i, any(var_1.b.c.c.zw), u_input.b == u_input.b, false), var_1.b.c.d, !(!select(vec4<bool>(var_1.b.c.c.x, true, true, true), vec4<bool>(var_1.b.a.c.x, true, true, false), var_1.b.c.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_1.b.b, var_1.b.c.b.yz))))), var_1.b.a);
    return 1i;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: f32) -> i32 {
    let var_0 = vec4<i32>(_wgslsmith_div_i32(2147483647i, -_wgslsmith_clamp_i32(arg_0, func_3(), countOneBits(arg_0))), ~u_input.b, 1i, u_input.b);
    let var_1 = ~1u;
    var var_2 = all(!vec3<bool>(all(vec2<bool>(false, false)), true, !select(false, false, false)));
    var_2 = false;
    var_2 = all(select(vec3<bool>(true, true, true), vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(arg_2 + 1262f), any(vec4<bool>(true, false, false, true))), select(vec3<bool>(all(vec4<bool>(false, false, false, false)), all(vec3<bool>(false, false, true)), true), vec3<bool>(any(vec4<bool>(true, false, true, true)), false, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))));
    return ~(~(~(-2147483647i)));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: u32, arg_3: bool) -> Struct_2 {
    var var_0 = abs(countOneBits(_wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_2, arg_2)), ~(vec2<u32>(41371u, 1117u) ^ vec2<u32>(0u, arg_2)))));
    var_0 = _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(arg_2), var_0.x << (arg_2 % 32u)), 1u), ~vec2<u32>(33253u, ~var_0.x));
    var_0 = select(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, 0u), vec2<u32>(21530u, 17083u)), ~(vec2<u32>(arg_2, var_0.x) ^ vec2<u32>(arg_2, arg_2))), firstLeadingBit(~vec2<u32>(arg_2, 0u) & ~vec2<u32>(0u, 1u)), vec2<bool>(arg_1, arg_3 && arg_1)) >> (vec2<u32>(_wgslsmith_mult_u32(var_0.x, 25581u), 4294967295u) % vec2<u32>(32u));
    var_0 = ~abs(reverseBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(1866u, arg_2), vec2<u32>(0u, var_0.x) << (vec2<u32>(121923u, 1u) % vec2<u32>(32u)))));
    var_0 = (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29789u, 0u), vec2<u32>(var_0.x, var_0.x) | vec2<u32>(59954u, 26477u)), 4294967295u) >> (reverseBits(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(5565u, var_0.x), vec2<u32>(var_0.x, 7587u)))) % vec2<u32>(32u))) | _wgslsmith_div_vec2_u32(vec2<u32>(7951u, ~_wgslsmith_div_u32(40547u, var_0.x)), vec2<u32>(arg_2, 1u));
    return Struct_2(-vec2<i32>(_wgslsmith_mod_i32(1i, func_2(2147483647i, vec2<i32>(u_input.b, u_input.b), 3784f)), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-510f, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x))))), select(!vec4<bool>(true, true, arg_3, !arg_3), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), arg_3), select(!vec4<bool>(false, false, false, arg_3), vec4<bool>(false, true, arg_3, false), false), any(select(vec3<bool>(arg_1, arg_3, false), vec3<bool>(true, true, true), true))), !arg_1), ~(-vec4<i32>(~u_input.a, ~u_input.a, u_input.a, -52394i & u_input.b)), !select(!vec4<bool>(true, arg_3, true, arg_3), select(!vec4<bool>(false, false, true, arg_1), vec4<bool>(false, arg_1, true, false), !vec4<bool>(arg_1, arg_1, true, false)), vec4<bool>(false, arg_3, true, true)));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_0.c.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1105f, 592f, arg_0.a.b.x)), arg_0.a.b))));
    var var_1 = vec3<bool>(all(func_1(_wgslsmith_f_op_vec2_f32(step(func_1(vec2<f32>(arg_0.a.b.x, 1286f), false, 3823u, false).b.zx, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-510f, -268f), var_0.yz)))), any(arg_0.a.e.yw), ~(~10746u), arg_0.c.e.x).c), func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(arg_0.b)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-318f, arg_0.b.x))), vec2<bool>(true, arg_1))), var_0.x == func_1(var_0.xy, false, 0u, true).b.x, 14398u, arg_0.c.e.x).b.x != arg_0.a.b.x, !arg_0.a.c.x);
    var var_2 = vec3<i32>(arg_0.c.a.x, abs(abs(-23368i)), arg_0.c.a.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.c.b);
    var_1 = !select(!(!arg_0.a.c.zxz), !select(!arg_0.a.c.zzy, func_1(vec2<f32>(-1408f, arg_0.a.b.x), true, 31578u, arg_1).c.zwy, arg_0.a.c.yzx), any(!(!vec2<bool>(arg_1, false))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(306f, 901f))), true & all(vec3<bool>(true, true, false)), _wgslsmith_mult_u32(1u, ~29822u), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1743f, 1394f))))) - vec2<f32>(-407f, _wgslsmith_f_op_f32(floor(135f)))), Struct_2(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -24605i, u_input.a), vec3<i32>(u_input.a, u_input.b, u_input.a)), _wgslsmith_div_i32(1i, -30081i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-179f, -389f, -2440f), vec3<f32>(300f, -743f, 1000f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), func_1(vec2<f32>(-791f, -673f), true, 4294967295u, false).e.x), vec4<i32>(_wgslsmith_div_i32(0i, u_input.a), -17593i, firstTrailingBit(50395i), 60360i), !func_1(vec2<f32>(630f, 470f), false, 38889u, false).c)), (u_input.b | ~func_2(-21433i, vec2<i32>(u_input.a, u_input.b), -418f)) > func_2(-73724i, -(vec2<i32>(-2147483647i, u_input.a) ^ vec2<i32>(-40402i, u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(201f)), _wgslsmith_f_op_f32(select(-645f, 711f, true)))));
    let var_1 = Struct_1(vec2<f32>(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.yy)), false, 1u, func_4(Struct_3(Struct_2(vec2<i32>(var_0.d.x, -10322i), var_0.b, vec4<bool>(false, var_0.c.x, false, false), var_0.d, var_0.e), vec2<f32>(var_0.b.x, var_0.b.x), Struct_2(var_0.d.yw, vec3<f32>(var_0.b.x, 127f, -367f), vec4<bool>(var_0.c.x, var_0.c.x, var_0.e.x, true), vec4<i32>(-3123i, -46791i, u_input.b, u_input.a), vec4<bool>(var_0.e.x, false, false, var_0.e.x))), var_0.e.x).c.x).b.x, var_0.b.x), min(_wgslsmith_sub_i32(~var_0.d.x, 0i) & firstLeadingBit(u_input.b), 21732i));
    let x = u_input.a;
    s_output = StorageBuffer(-695f, vec4<u32>(min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(32534u, 0u, 1u))), ~(~7572u), 30387u, firstTrailingBit(~0u) | (~4294967295u << (firstTrailingBit(4294967295u) % 32u))), -2573f, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(86349u, 67822u), _wgslsmith_dot_vec4_u32(vec4<u32>(24756u, 5689u, 1u, 127308u), vec4<u32>(4617u, 90494u, 4294967295u, 1u)), 1u, 1u), _wgslsmith_add_vec4_u32(abs(vec4<u32>(33201u, 51004u, 101812u, 82000u)), vec4<u32>(57945u, 0u, 1u, 61043u))), abs(firstTrailingBit(34868u)), _wgslsmith_add_u32(1u, 1u), max(1u, 1u)), _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(83766u, 67155u), vec2<u32>(4294967295u, 34002u)))), ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(6971u, 43060u), vec2<u32>(27488u, 55011u)), ~vec2<u32>(15612u, 1u))));
}

