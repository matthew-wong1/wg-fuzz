struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = 1000f;
    var var_1 = Struct_5(vec3<i32>(-2147483647i, abs(_wgslsmith_sub_i32(~(-8671i), arg_0.c.a)), _wgslsmith_dot_vec2_i32(arg_0.a >> (~arg_0.c.d.xx % vec2<u32>(32u)), -arg_0.a ^ -arg_0.a)), ~(select(arg_0.c.a, -1i, all(vec3<bool>(arg_0.c.c, arg_0.c.c, arg_0.c.c))) | firstLeadingBit(~arg_0.a.x)), Struct_2(i32(-1i) * -arg_0.a.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(78749u, u_input.a), _wgslsmith_clamp_u32(~4294967295u, 1u, _wgslsmith_clamp_u32(arg_0.c.d.x, arg_0.b.x, 0u))), false, abs(vec4<u32>(u_input.a, ~1u, ~arg_0.c.b, ~44488u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0)), vec2<f32>(var_0, 594f), arg_0.c.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(608f, 1170f) + vec2<f32>(var_0, 403f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_0), vec2<f32>(219f, -146f), vec2<bool>(true, arg_0.c.c))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1706f, 901f) * vec2<f32>(534f, var_0)))))), Struct_2(-reverseBits(-2147483647i), 85752u, arg_0.c.c, ~arg_0.c.d));
    let var_2 = 22556i;
    var_1 = Struct_5(~var_1.a << (min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 24141u), var_1.e.d.zzw) ^ (vec3<u32>(u_input.a, arg_0.c.d.x, arg_0.b.x) >> (arg_0.c.d.wwy % vec3<u32>(32u))), arg_0.c.d.xzy >> (firstTrailingBit(var_1.c.d.xzy) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_dot_vec3_i32(-(~select(var_1.a, vec3<i32>(var_1.b, arg_0.c.a, 1i), vec3<bool>(true, true, true))), var_1.a), var_1.e, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.d))), _wgslsmith_f_op_vec2_f32(select(var_1.d, vec2<f32>(_wgslsmith_f_op_f32(-var_1.d.x), var_1.d.x), true)), var_1.c.c)), Struct_2(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-1i, _wgslsmith_clamp_i32(arg_0.a.x, var_2, -31518i), var_2 & 41291i), _wgslsmith_div_i32(var_2, arg_0.a.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-14072i, var_2, 1i, arg_0.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.a, arg_0.a.x, 314i, 1i), vec4<i32>(-2147483647i, -18390i, var_2, var_1.c.a)))), u_input.a, !(!arg_0.c.c), vec4<u32>(_wgslsmith_mult_u32(reverseBits(u_input.a), ~var_1.c.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.c.d.x), select(vec2<u32>(4294967295u, 1u), var_1.c.d.yx, var_1.c.c)), countOneBits(arg_0.b.x), ~var_1.e.d.x)));
    return !vec3<bool>(var_1.e.c, true, 52942u != ~(~arg_0.c.b));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: u32) -> Struct_2 {
    var var_0 = 1i;
    let var_1 = Struct_4(Struct_1(!select(func_3(Struct_3(vec2<i32>(-32099i, -1i), vec2<u32>(arg_3, arg_2), Struct_2(2147483647i, arg_3, false, vec4<u32>(8074u, arg_0, arg_0, 48038u)))), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false))), !vec4<bool>(all(vec2<bool>(true, true)), func_3(Struct_3(vec2<i32>(2147483647i, 34390i), vec2<u32>(arg_2, 35081u), Struct_2(0i, arg_2, true, vec4<u32>(28292u, arg_2, 35830u, arg_2)))).x, !(u_input.a > arg_3), true), all(func_3(Struct_3(vec2<i32>(1i, -2147483647i) << (vec2<u32>(arg_3, 0u) % vec2<u32>(32u)), ~vec2<u32>(arg_3, 1u), Struct_2(0i, 4294967295u, true, vec4<u32>(0u, 16957u, 8487u, arg_2)))).zy));
    var_0 = -1i;
    var_0 = -26753i;
    let var_2 = firstTrailingBit(-1i);
    return Struct_2(countOneBits(var_2), 0u, var_1.a.a.x, vec4<u32>(arg_0, _wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_2, 21250u, arg_0, 1u) >> (vec4<u32>(0u, u_input.a, 53051u, 4294967295u) % vec4<u32>(32u))), vec4<u32>(arg_0, ~arg_3, 4294967295u, _wgslsmith_mult_u32(arg_0, 34241u))), abs(~39276u), ~(~(arg_2 & arg_0))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec2<i32>(~(-13824i), -2147483647i);
    let var_1 = arg_0.d.yy;
    let var_2 = ~(-14232i);
    let var_3 = vec4<bool>(arg_0.c, arg_0.c && arg_0.c, true, arg_0.c);
    var var_4 = true;
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: u32) -> StorageBuffer {
    let var_0 = Struct_5(vec3<i32>(~2147483647i, 1i, -2147483647i), -2147483647i, func_4(func_2(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1644f)), 14556u, arg_1)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + 613f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-781f)))), _wgslsmith_f_op_f32(sign(514f)) == _wgslsmith_f_op_f32(-1427f - 170f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 380f, true)) - _wgslsmith_f_op_f32(-131f + _wgslsmith_f_op_f32(f32(-1f) * -230f)))), Struct_2(-1i, ~arg_1, !select(func_3(Struct_3(vec2<i32>(-1415i, 2147483647i), vec2<u32>(6027u, arg_1), Struct_2(1i, u_input.a, true, vec4<u32>(4294967295u, 56313u, 71809u, arg_1)))).x, select(false, true, true), u_input.a <= u_input.a), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 21889u, arg_1, arg_1), vec4<u32>(arg_0, arg_1, 16063u, u_input.a)), vec4<u32>(97303u, 0u, 0u, u_input.a)), vec4<u32>(1u, arg_1, reverseBits(4294967295u), arg_0))));
    let var_1 = vec3<bool>(~_wgslsmith_div_u32(arg_0, 1u) > ((55554u ^ ~arg_1) ^ 0u), false, var_0.c.c);
    let var_2 = -2867i;
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(-688f)), -578f, _wgslsmith_f_op_f32(ceil(var_0.d.x))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, 115f, var_0.d.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2212f, -1374f, -972f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, -1915f) * vec3<f32>(903f, var_0.d.x, var_0.d.x))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2366f, _wgslsmith_f_op_f32(-var_0.d.x))), var_0.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_f_op_f32(trunc(-1432f)), true))))));
    return StorageBuffer((vec4<i32>(2147483647i << (arg_0 % 32u), var_0.e.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, var_2, 10634i, -2147483647i), vec4<i32>(2147483647i, 0i, 0i, var_0.c.a)), func_4(Struct_2(var_2, 41982u, var_3, var_0.e.d)).a) ^ vec4<i32>(-var_2, 9649i << (var_0.c.b % 32u), -1i, abs(-10001i))) >> (func_2(_wgslsmith_clamp_u32(select(arg_0, var_0.e.b, false), 14574u, 71790u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(170f, -1029f)), 0u, ~4294967295u).d % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(exp2(var_4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d.x)) - -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-430f, _wgslsmith_f_op_f32(round(115f)))), _wgslsmith_div_f32(-1188f, _wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_f32(var_4.x + -401f)), var_0.c.d.xz, ~_wgslsmith_sub_vec4_i32(~(vec4<i32>(var_2, -2147483647i, -21972i, 2147483647i) >> (vec4<u32>(var_0.c.b, arg_0, arg_1, var_0.e.d.x) % vec4<u32>(32u))), vec4<i32>(11651i << (arg_0 % 32u), var_0.b, -2147483647i, select(var_2, var_2, var_3))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-max(vec2<i32>(1i, var_0.a.x), var_0.a.zy), var_0.a.yx), -26961i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, !(~0u >= abs(4294967295u >> (u_input.a % 32u))), true);
    var var_1 = all(!vec2<bool>(~u_input.a >= max(u_input.a, 4294967295u), var_0.x));
    var_0 = !vec3<bool>(false, !var_0.x, any(vec3<bool>(true, true, true)));
    var var_2 = vec2<u32>(15674u, u_input.a);
    var var_3 = -776f;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f)))));
    let x = u_input.a;
    s_output = func_1(u_input.a, u_input.a);
}

