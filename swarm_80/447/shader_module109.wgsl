struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> bool {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_sub_i32(-15211i | u_input.a, _wgslsmith_mod_i32(1i, -12325i)), 1443i, u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -33839i, 1i), vec3<i32>(-2147483647i, u_input.a, u_input.a)), -71802i));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_1))), _wgslsmith_div_i32(countOneBits(i32(-1i) * -20417i), var_0.x), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0, ~4294967295u == u_input.b))), _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 0u, 1u, 106755u), reverseBits(vec4<u32>(4294967295u, 4294967295u, u_input.b, 23575u)), _wgslsmith_add_vec4_u32(vec4<u32>(9643u, 1u, 0u, 53030u), vec4<u32>(1u, u_input.b, 39285u, u_input.b))), vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(14518u, 0u, u_input.b, u_input.b), vec4<u32>(0u, 0u, 1u, u_input.b)) & u_input.b, 1u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, 3903u), ~u_input.b, _wgslsmith_mod_u32(31992u, u_input.b)))), select(vec2<bool>(true, !any(vec2<bool>(true, false))), vec2<bool>(_wgslsmith_mod_u32(u_input.b, u_input.b) < 9076u, true), false));
    let var_2 = -812i;
    var var_3 = firstLeadingBit(~_wgslsmith_div_i32(_wgslsmith_mult_i32(var_2, _wgslsmith_mult_i32(var_0.x, var_1.b)), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.b, 0i, var_2), -vec3<i32>(var_2, var_0.x, var_1.b))));
    let var_4 = Struct_1(vec2<bool>(var_1.e.x, true), _wgslsmith_f_op_f32(-arg_1.x), true, -var_2);
    return true;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    var var_0 = vec2<i32>(-2147483647i, -(~_wgslsmith_dot_vec2_i32(arg_2.b.yx << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), ~vec2<i32>(2147483647i, 67524i))));
    let var_1 = vec2<u32>(abs(arg_0.d), firstLeadingBit(u_input.b | reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.d), vec2<u32>(70303u, arg_0.d)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c)))))));
    var var_3 = any(!select(vec4<bool>(!arg_0.e.x, arg_0.e.x, arg_0.e.x, arg_0.e.x), !vec4<bool>(arg_0.e.x, true, false, arg_0.e.x), !vec4<bool>(arg_0.e.x, true, arg_0.e.x, false)));
    let var_4 = arg_1.b;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.c))));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2018f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-2023f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-764f - _wgslsmith_f_op_f32(-704f * 100f))))), vec3<i32>(~u_input.a, 18484i, u_input.a), _wgslsmith_div_f32(550f, _wgslsmith_f_op_f32(-363f + _wgslsmith_f_op_f32(func_3(Struct_5(vec4<f32>(1000f, 671f, 900f, -109f), 36317i, 412f, u_input.b, vec2<bool>(false, false)), Struct_3(105f, vec3<i32>(52582i, 0i, u_input.a), 953f), Struct_3(2431f, vec3<i32>(-1i, u_input.a, u_input.a), -360f))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1951f), firstLeadingBit(vec3<i32>(min(select(var_0.b.x, -1i, false), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 9241i, 41876i), vec4<i32>(u_input.a, 0i, var_0.b.x, 0i))), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a, 1i)), _wgslsmith_clamp_vec2_i32(var_0.b.yz, vec2<i32>(u_input.a, -1i), var_0.b.xx)), abs(-u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), -1475f) * -226f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-172f)))));
    let var_2 = var_0.b;
    var var_3 = var_0.b.zz;
    var_3 = countOneBits(-vec2<i32>(-42342i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, var_1.b.x, var_2.x, 0i), vec4<i32>(u_input.a, 1i, 16995i, u_input.a))));
    return Struct_5(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(-941f, _wgslsmith_f_op_f32(step(787f, -582f))), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + var_1.c) - _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(-var_0.c))))), -62341i, var_0.c, u_input.b, !select(vec2<bool>(all(vec4<bool>(true, false, false, true)), false), vec2<bool>(true, u_input.b <= 0u), true));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_5) -> Struct_1 {
    let var_0 = countOneBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, 1u, u_input.b, 14843u)) ^ max(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 0u, u_input.b, u_input.b), vec4<u32>(1u, 4294967295u, 4294967295u, 33733u)), vec4<u32>(u_input.b, 21678u, 4294967295u, arg_2.d)), vec4<u32>(_wgslsmith_div_u32(32034u & arg_0.x, min(1u, 4294967295u)), arg_0.x, _wgslsmith_dot_vec2_u32(arg_0.yy, reverseBits(vec2<u32>(arg_0.x, 36404u))), ~u_input.b)));
    var var_1 = !vec2<bool>(func_1(arg_2.a.x, arg_2.a), true);
    var var_2 = arg_2.e;
    var var_3 = Struct_2(Struct_1(!select(vec2<bool>(true, false), vec2<bool>(true, var_2.x), arg_2.e), -1563f, false == (!var_2.x != func_2().e.x), -2147483647i), Struct_1(arg_2.e, _wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.c)))), arg_2.b < (i32(-1i) * -30398i), arg_2.b), Struct_1(vec2<bool>(var_1.x, true), arg_2.a.x, func_2().e.x, _wgslsmith_mult_i32(-3531i, arg_1) << ((var_0 | (24347u << (var_0 % 32u))) % 32u)));
    let var_4 = func_2().a.x;
    return Struct_1(select(vec2<bool>(any(!vec4<bool>(true, false, true, arg_2.e.x)), var_1.x), !vec2<bool>(true, all(vec2<bool>(true, var_3.b.a.x))), select(select(arg_2.e, vec2<bool>(arg_2.e.x, var_2.x), select(var_3.b.a, vec2<bool>(var_3.c.a.x, false), arg_2.e)), vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(arg_2.e.x, false, arg_2.e.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(293f + _wgslsmith_f_op_f32(-724f + var_4)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-948f, var_3.c.b))) + _wgslsmith_f_op_f32(var_4 + var_3.a.b)), var_3.b.b == _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_3.c.b, -475f), _wgslsmith_f_op_f32(arg_2.a.x - 994f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 - var_3.a.b))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_3.c.d, 17675i, 51782i), vec4<i32>(12590i, 9098i, u_input.a, -21506i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_3.a.d, u_input.a, var_3.b.d), vec4<i32>(32989i, u_input.a, arg_1, arg_1))), _wgslsmith_mult_i32(1i, -10797i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b, 8582u), vec3<u32>(1u, 1u, 4294967295u)), select(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(1u, u_input.b, u_input.b), vec3<bool>(true, false, false))), 3607u ^ ~u_input.b), 17212u);
    let var_1 = Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1181f * -1917f)), !func_1(-687f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(2495f, -535f, -1151f, -1420f))), ~_wgslsmith_mult_i32(u_input.a, 3969i)), func_4(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(65017u, 34536u, 44705u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(53408u, u_input.b, u_input.b)), countOneBits(u_input.b), u_input.b)), u_input.a, func_2()), func_4(vec3<u32>(u_input.b, _wgslsmith_mult_u32(u_input.b, ~u_input.b), ~(11451u << (0u % 32u))), max(_wgslsmith_mod_i32(0i, 2147483647i), ~0i) | reverseBits(-u_input.a), func_2()));
    var var_2 = Struct_2(Struct_1(!vec2<bool>(var_1.c.c, any(vec4<bool>(var_1.c.a.x, true, var_1.c.c, false))), -1414f, var_1.a.c, var_1.c.d), Struct_1(vec2<bool>(var_1.a.a.x, any(vec4<bool>(var_1.a.c, var_1.b.a.x, var_1.b.c, var_1.b.a.x)) != any(vec3<bool>(false, var_1.b.a.x, false))), -549f, all(vec2<bool>(func_1(var_1.b.b, vec4<f32>(276f, 2209f, 701f, var_1.b.b)), var_1.b.a.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-49278i, var_1.b.d, u_input.a) >> (vec3<u32>(1u, 68196u, 47360u) % vec3<u32>(32u)), vec3<i32>(2147483647i, 36122i, var_1.c.d) ^ vec3<i32>(var_1.a.d, -45922i, -1i)), abs(vec3<i32>(var_1.b.d, var_1.b.d, u_input.a) << (vec3<u32>(10558u, u_input.b, 1u) % vec3<u32>(32u))))), Struct_1(select(select(vec2<bool>(true, false), vec2<bool>(false, var_1.b.a.x), !var_1.c.c), vec2<bool>(true, false), func_4(firstTrailingBit(vec3<u32>(2647u, 64487u, 11875u)), 0i, Struct_5(vec4<f32>(1174f, 1289f, var_1.a.b, var_1.a.b), -1i, -832f, 1u, vec2<bool>(true, true))).c), 1150f, (var_1.a.c & (var_1.b.a.x & var_1.b.c)) | func_1(_wgslsmith_f_op_f32(exp2(var_1.c.b)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-893f, var_1.b.b, 257f, var_1.a.b)))), 29347i));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a.b, var_1.b.b), vec2<f32>(var_1.b.b, var_1.a.b)))))) + func_2().a.zz));
    let var_4 = func_4(vec3<u32>(min(u_input.b, 1u), 1u, countOneBits(1u)), var_1.c.d, func_2());
    var_0 = u_input.b ^ reverseBits(reverseBits(_wgslsmith_div_u32(_wgslsmith_div_u32(78183u, 24027u), _wgslsmith_dot_vec3_u32(vec3<u32>(59165u, 34178u, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b)))));
    var var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b.d, var_4.d, var_2.b.d), vec3<i32>(var_4.d, var_4.d, -48232i))) & min(min(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 9159i, -46197i), vec3<i32>(0i, var_4.d, var_4.d)), max(vec3<i32>(var_4.d, u_input.a, var_4.d), vec3<i32>(var_1.a.d, var_2.a.d, 53855i))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-42185i, 46349i, var_4.d), vec3<i32>(-30327i, var_4.d, var_2.c.d)), vec3<i32>(var_2.c.d, var_2.c.d, u_input.a))), u_input.b, _wgslsmith_f_op_vec2_f32(-var_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1572f) + var_3.x));
}

