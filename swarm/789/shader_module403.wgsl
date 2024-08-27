struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(arg_2.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c, 0u, 72234u), vec3<u32>(1u, u_input.a, arg_0.d)), vec3<u32>(arg_0.d, 4294967295u, ~arg_0.d)), ~(~(1u >> (arg_0.c % 32u))), reverseBits(~(~arg_0.d))), -_wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(u_input.c.wy, vec2<i32>(u_input.c.x, -1i))), vec2<i32>(arg_0.a, arg_2.a)), _wgslsmith_add_vec2_u32(select(abs(~vec2<u32>(1u, arg_0.c)), firstTrailingBit(~vec2<u32>(25902u, arg_2.c)), vec2<bool>(true, arg_1 & false)), abs(~(~vec2<u32>(arg_2.c, 1766u)))), firstLeadingBit(_wgslsmith_sub_i32(i32(-1i) * -arg_0.a, -25671i)), arg_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(483f + _wgslsmith_f_op_f32(max(639f, 1452f))), -590f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(138f, 797f), vec2<f32>(-1000f, 1059f), false))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(129f, 1055f), vec2<f32>(203f, 2913f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-402f, -1673f) - vec2<f32>(598f, 1091f)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(396f, 164f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(227f, 1180f) + vec2<f32>(428f, -775f)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(849f, 1070f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-684f, 385f)))), vec2<f32>(1606f, _wgslsmith_f_op_f32(abs(967f)))))));
    let var_2 = select(_wgslsmith_dot_vec2_u32(abs(~var_0.c), vec2<u32>(4427u, u_input.b ^ _wgslsmith_add_u32(arg_2.d, var_0.e.d))), select(~var_0.c.x, arg_2.d, arg_3.x), any(vec3<bool>(arg_1, !(arg_3.x | arg_1), true)));
    var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(~_wgslsmith_add_i32(1i, -14558i), u_input.c.x), 1u, 4294967295u, var_0.c.x << (8445u % 32u)), reverseBits(var_0.b ^ vec2<i32>(0i, arg_2.a)), vec2<u32>(abs(firstTrailingBit(arg_0.c)), firstLeadingBit(var_2) >> (0u % 32u)), 2147483647i, var_0.e);
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: u32) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-517f + 1056f) + _wgslsmith_f_op_f32(sign(-1880f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(389f)), _wgslsmith_f_op_f32(922f * 1440f), true)), -1102f, any(vec2<bool>(false, false)))))));
    var var_1 = true;
    var_1 = (~arg_0.a >> (5721u % 32u)) < select(-_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.a, u_input.c.x), vec2<i32>(2147483647i, 1i)), arg_2.x), firstLeadingBit(~arg_2.x), any(vec4<bool>(true, true, true, true)));
    var var_2 = ~vec3<u32>(~1u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_3, arg_1.a.b, arg_1.c.x), vec4<u32>(0u, arg_3, 47966u, 31676u)), 102024u), u_input.a);
    let var_3 = arg_1;
    return _wgslsmith_dot_vec4_i32(~(~u_input.c), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(1i, -1i, 0i, u_input.c.x), arg_2), vec4<i32>(u_input.c.x, -2147483647i, arg_2.x, 0i)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.e.d, 35038u, var_3.e.b), ~vec4<u32>(u_input.b, 0u, arg_0.c, 7502u)) % vec4<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: u32) -> i32 {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~1u, u_input.b, u_input.a), u_input.b);
    var var_1 = func_4(Struct_1(~(~u_input.c.x) & u_input.c.x, _wgslsmith_mult_u32(u_input.b, func_3(Struct_1(u_input.c.x, u_input.a, u_input.a, 57149u), arg_0 && arg_0, Struct_1(-1i, 0u, arg_1, u_input.a), vec3<bool>(arg_0, true, arg_0))), firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, arg_1), ~vec2<u32>(u_input.b, 0u))), ~_wgslsmith_add_u32(u_input.b, 3153u)), Struct_2(Struct_1(0i, 4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, arg_1, arg_1), vec4<u32>(arg_1, u_input.a, arg_1, 1u)), 63218u, arg_1), -vec2<i32>(1i, abs(2147483647i)), ~(~vec2<u32>(1u, 1u)), 0i, Struct_1(36535i >> (_wgslsmith_div_u32(u_input.a, u_input.b) % 32u), min(~27020u, u_input.b), _wgslsmith_mult_u32(~u_input.b, 49255u), _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.b), u_input.b))), vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 1i), ~(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_1, 4294967295u), vec3<u32>(1u, arg_1, u_input.a)), 0u) >> (_wgslsmith_sub_u32(u_input.b, arg_1) % 32u)));
    var_1 = 2147483647i;
    let var_2 = ~(~vec3<u32>(1u, 19457u << (0u % 32u), u_input.b | arg_1) ^ vec3<u32>(~arg_1, 1u, select(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a & arg_1, arg_0)));
    var var_3 = Struct_2(Struct_1(-u_input.c.x, ~0u, 1503u, select(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, 7341u, arg_1, 0u), vec4<u32>(30639u, u_input.a, arg_1, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 28209u, var_2.x, 1u), vec4<u32>(var_2.x, var_2.x, var_2.x, 1u))), 1u, any(vec2<bool>(arg_0, false)))), u_input.c.xz, _wgslsmith_sub_vec2_u32(~vec2<u32>(1u & arg_1, firstLeadingBit(39804u)), var_2.zy), _wgslsmith_mult_i32(-_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.c.x, 0i, u_input.c.x), ~(-12526i)), u_input.c.x), Struct_1(_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), u_input.c.x)), abs(9889u), 19247u, u_input.b));
    return -21815i;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(u_input.c.x), -2147483647i), ~vec2<i32>(~firstLeadingBit(68328i), ~_wgslsmith_add_i32(109006i, 0i)), vec2<i32>(_wgslsmith_div_i32(countOneBits(_wgslsmith_add_i32(u_input.c.x, u_input.c.x)), func_2(true, u_input.b)), -_wgslsmith_dot_vec3_i32(u_input.c.wxw, vec3<i32>(-41435i, u_input.c.x, -22778i)) & ~(~u_input.c.x)));
    var var_1 = -func_2(true, 4294967295u);
    let var_2 = Struct_1(~2147483647i, _wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(firstLeadingBit(u_input.a) ^ select(1u, arg_0, false), ~1u | _wgslsmith_sub_u32(u_input.a, 4372u))), 0u, _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a, u_input.b, 429u)), vec3<u32>(~arg_0, countOneBits(4294967295u), 21092u)) << (~(~(~52100u)) % 32u));
    let var_3 = vec2<i32>(-max(u_input.c.x >> (var_2.d % 32u), -u_input.c.x) & countOneBits(func_2(true, var_2.c)), var_2.a ^ -select(-var_0.x, var_0.x | var_2.a, any(vec4<bool>(false, false, false, false))));
    let var_4 = firstTrailingBit(_wgslsmith_mult_i32(var_3.x, var_2.a));
    return Struct_1(_wgslsmith_div_i32(max(var_0.x, _wgslsmith_add_i32(var_3.x, var_4)), 24120i) << (var_2.b % 32u), ~var_2.d, firstTrailingBit(39015u), 43258u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~u_input.a));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1373f * _wgslsmith_f_op_f32(abs(659f))))) - _wgslsmith_f_op_f32(select(-584f, 879f, select(true, true, all(vec4<bool>(true, false, false, false)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-417f - 1806f)) - -664f), -1692f);
    let var_2 = _wgslsmith_sub_vec2_i32(select(_wgslsmith_add_vec2_i32(select(vec2<i32>(-44566i, u_input.c.x), _wgslsmith_mod_vec2_i32(u_input.c.zw, vec2<i32>(87133i, var_0.a)), vec2<bool>(false, false)), u_input.c.yz), _wgslsmith_mult_vec2_i32(select(u_input.c.wz, vec2<i32>(-31322i, -2147483647i), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), countOneBits(u_input.c.wy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-456f)) * _wgslsmith_div_f32(-1674f, var_1.x)) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(292f)), 1074f))), select(vec2<i32>(abs(func_2(true, 1u)), -44956i), vec2<i32>(~u_input.c.x, countOneBits(-17188i)), !vec2<bool>(any(vec4<bool>(false, false, true, true)), true)));
    var_0 = Struct_1(func_2(any(vec4<bool>(false, false, false, false)), _wgslsmith_clamp_u32(~0u, var_0.d >> (u_input.a % 32u), ~4294967295u)) & ~(~var_0.a), ~(~firstTrailingBit(1u)), u_input.b, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1341u, var_0.d, 12395u), vec4<u32>(6685u, 11372u, u_input.a, 2297u)), ~_wgslsmith_div_u32(u_input.b, 4294967295u)), ~var_0.d));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1381f)));
    var var_4 = _wgslsmith_f_op_vec2_f32(var_1.zx * vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2334f - _wgslsmith_f_op_f32(f32(-1f) * -643f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec4<i32>(u_input.c.x << (5289u % 32u), ~var_0.a, -1i, ~0i)), -(~u_input.c), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), abs(~vec3<u32>(47338u, var_0.b, u_input.b)) << (~vec3<u32>(1u & u_input.a, _wgslsmith_mult_u32(var_0.c, 1u), ~39078u) % vec3<u32>(32u)));
}

