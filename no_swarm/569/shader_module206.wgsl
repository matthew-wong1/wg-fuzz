struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = arg_2;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_2))));
    var var_1 = Struct_2(u_input.b);
    var_0 = _wgslsmith_f_op_f32(-arg_1);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-854f * -904f), _wgslsmith_f_op_f32(-arg_2))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1690f, arg_2, false))))) * -1508f) * _wgslsmith_f_op_f32(f32(-1f) * -1429f));
    return any(vec2<bool>(true, !any(vec2<bool>(true, true))));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<bool>(u_input.c.x == ~1u, all(vec4<bool>(true, true, false, true)), any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true))));
    let var_1 = select(vec4<bool>(true, false, true & var_0.x, var_0.x), vec4<bool>(all(vec2<bool>(false, !var_0.x)), all(vec4<bool>(true, false, false, false)) && (_wgslsmith_div_u32(u_input.b, u_input.c.x) == _wgslsmith_add_u32(49737u, u_input.a)), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(956f, -397f, -237f)), _wgslsmith_mult_u32(u_input.a, u_input.c.x)), _wgslsmith_div_f32(-641f, -557f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-615f)))), var_0.x), !(!(true || any(vec4<bool>(var_0.x, true, false, var_0.x)))));
    let var_2 = select(select(true, var_0.x, false), var_1.x, func_3(Struct_1(vec3<f32>(1f, 1f, 1f), u_input.b ^ ~7292u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-532f * -1621f) - -514f), _wgslsmith_f_op_f32(min(-780f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1167f, 106f)) - -378f)))));
    var var_3 = func_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-336f, 1929f, -818f), vec3<f32>(434f, -1031f, -1396f))))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-105f, 546f, -441f)))), u_input.c.x), _wgslsmith_f_op_f32(abs(-835f)), _wgslsmith_f_op_f32(round(-242f)));
    var var_4 = -1i;
    return Struct_2(u_input.b);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(948f, -429f)) - _wgslsmith_f_op_f32(-681f * 1170f)), 1000f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1352f, -981f, 1485f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 753f, 558f)), vec3<bool>(true, false, false))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1642f, var_0.x, -861f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(max(-1367f, var_0.x)), _wgslsmith_f_op_f32(step(-1000f, var_0.x))) + _wgslsmith_f_op_vec3_f32(var_0 - _wgslsmith_f_op_vec3_f32(sign(var_0)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(265f, _wgslsmith_div_f32(var_0.x, 1463f), _wgslsmith_f_op_f32(f32(-1f) * -435f)), var_0, func_3(Struct_1(var_0, 0u), 1000f, _wgslsmith_f_op_f32(1170f + var_0.x))))));
    var var_2 = vec4<bool>(!any(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)), any(vec4<bool>(true, true, !any(vec4<bool>(true, false, false, true)), true)), all(vec3<bool>(var_0.x <= _wgslsmith_f_op_f32(1000f - var_0.x), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true)), var_0.x < _wgslsmith_f_op_f32(-var_1.x))), !func_3(Struct_1(var_0, reverseBits(u_input.a)), var_1.x, _wgslsmith_f_op_f32(ceil(159f))));
    var var_3 = select(~arg_0, _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, ~0i, 0i), max(-vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -31598i), vec4<i32>(abs(12877i), -6914i, -1i, _wgslsmith_add_i32(0i, 9216i)))), select(vec4<bool>(any(var_2.ww), _wgslsmith_div_f32(-578f, var_1.x) < _wgslsmith_f_op_f32(-var_1.x), !(var_2.x & var_2.x), !(arg_0.x != arg_0.x)), vec4<bool>(true, var_2.x, any(!vec4<bool>(false, var_2.x, var_2.x, var_2.x)), _wgslsmith_add_i32(arg_0.x, -14395i) == -65602i), var_2.x));
    var var_4 = ~abs(abs(0u));
    return vec4<bool>(u_input.c.x < firstLeadingBit(u_input.c.x), false, all(select(vec4<bool>(func_3(Struct_1(vec3<f32>(300f, var_0.x, var_0.x), 18624u), var_0.x, var_1.x), true, var_2.x & true, true), select(!vec4<bool>(false, var_2.x, true, var_2.x), select(vec4<bool>(false, var_2.x, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, var_2.x, true)), all(vec4<bool>(true, true, var_2.x, var_2.x))), any(select(vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(false, var_2.x, var_2.x, false), var_2.x)))), func_3(Struct_1(var_0, func_2().a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f + -1581f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1803f + -257f))))));
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: vec4<bool>) -> i32 {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_clamp_i32(select(_wgslsmith_sub_i32(-arg_2, -(0i >> (u_input.b % 32u))), ~arg_2, !arg_3.x), -28894i, ~arg_2);
    let var_2 = vec3<i32>(35308i, arg_2, ~_wgslsmith_clamp_i32(-41591i, firstLeadingBit(arg_2), var_1));
    let var_3 = arg_0.x;
    let var_4 = func_2();
    return 47103i;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec2<f32> {
    let var_0 = func_5(u_input.c.ywx, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), 1i, func_4(vec4<i32>(arg_1, arg_1, arg_1, select(arg_1, arg_1, true)), func_2())) | arg_1;
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1667f)))), _wgslsmith_div_f32(-800f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297f - arg_0.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.yx + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1686f, arg_0.a.x)), vec2<f32>(-1064f, arg_0.a.x), false))) + arg_0.a.yz)));
    let var_3 = Struct_4(max(_wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(53387u, 32053u, 50441u), vec3<u32>(4294967295u, arg_0.b, 0u))), var_1), ~arg_0.b), !func_4(max(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, -1i, arg_1, var_0), vec4<i32>(-33598i, var_0, 58224i, arg_1)), ~vec4<i32>(-42117i, arg_1, 6045i, var_0)), Struct_2(~u_input.b)).x, min(0u, arg_2) < var_1, ~u_input.c, Struct_3(4294967295u, arg_0.b, 54620u, firstLeadingBit(var_0), _wgslsmith_f_op_f32(abs(-1165f))));
    var var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_3.e.e, _wgslsmith_f_op_f32(f32(-1f) * -870f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1620f, -391f)))), 938f) - arg_0.a), vec3<f32>(-498f, var_3.e.e, 1418f)));
    return vec2<f32>(-1328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_3.e.e)));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1045f, 1000f, 1391f)))), countOneBits(4294967295u));
    return Struct_2(countOneBits(var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-182f, 1000f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1027f, 207f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec3<f32>(-423f, -1000f, 1000f), 5735u), -2147483647i, 2220u)), true)), vec2<bool>(true, all(vec3<bool>(true, true, true))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-565f, 1091f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(242f, -1776f))) * vec2<f32>(1f, 1f))), Struct_4(_wgslsmith_sub_u32(~(~u_input.c.x), firstTrailingBit(u_input.b)), any(vec4<bool>(true, true, true, true)), (1u != u_input.a) | select(true, true, all(vec4<bool>(true, false, false, false))), firstLeadingBit(abs(vec4<u32>(0u, 48353u, u_input.a, 4294967295u) >> (vec4<u32>(u_input.c.x, u_input.a, 63891u, 4294967295u) % vec4<u32>(32u)))), Struct_3(~(u_input.b >> (u_input.a % 32u)), u_input.a, ~1u, -abs(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -693f)))), ~reverseBits(u_input.c), countOneBits(1i));
    let var_1 = Struct_4(_wgslsmith_mod_u32(~(~var_0.a), ~countOneBits(1u)), select(true, _wgslsmith_dot_vec2_i32(select(vec2<i32>(14481i, -18822i), vec2<i32>(2147483647i, -1i), true), abs(vec2<i32>(2147483647i, 2147483647i))) != ((i32(-1i) * -1i) << (var_0.a % 32u)), true || (_wgslsmith_f_op_f32(ceil(1283f)) < _wgslsmith_f_op_f32(f32(-1f) * -224f))), true, vec4<u32>(_wgslsmith_dot_vec4_u32(abs(abs(u_input.c)), ~countOneBits(u_input.c)), u_input.a, ~1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.a, 1u), max(1u, var_0.a)) & ~0u), Struct_3(_wgslsmith_div_u32(firstTrailingBit(var_0.a) ^ u_input.a, 33596u), countOneBits(0u), var_0.a | 1u, 1i, _wgslsmith_f_op_f32(-198f - _wgslsmith_f_op_f32(round(-1510f)))));
    var_0 = func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.e)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.e.e - var_1.e.e), var_1.e.e)))), var_1, max(u_input.c, vec4<u32>(var_1.a, var_1.e.a, 101256u, var_0.a) & ~vec4<u32>(var_0.a, 14048u, 4294967295u, 0u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 1u, func_6(vec2<f32>(901f, var_1.e.e), var_1, vec4<u32>(1u, 78234u, 21275u, var_0.a), -12599i).a), vec4<u32>(1u, 44449u, var_0.a, ~11823u)) % vec4<u32>(32u)), firstLeadingBit(~_wgslsmith_clamp_i32(var_1.e.d, var_1.e.d, ~var_1.e.d)));
    var var_2 = _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(70012i, var_1.e.d), vec2<i32>(0i, 2147483647i)), max(vec2<i32>(-16463i, var_1.e.d), vec2<i32>(2147483647i, var_1.e.d))), vec2<i32>(-55876i, var_1.e.d)), ~(~abs(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_1.e.d), vec2<i32>(31333i, 2147483647i)))));
    var_2 = var_1.e.d;
    var var_3 = !func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(-var_1.e.d, -1i, ~var_1.e.d, ~(-2147483647i)), select(~vec4<i32>(var_1.e.d, var_1.e.d, var_1.e.d, var_1.e.d), vec4<i32>(-2147483647i, -1i, var_1.e.d, var_1.e.d), !vec4<bool>(var_1.c, false, true, false)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_1.e.d, 1i, -2147483647i), vec4<i32>(var_1.e.d, -1i, 2147483647i, var_1.e.d)))), Struct_2(~abs(19677u))).zw;
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.e * 2091f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.e * var_1.e.e) * _wgslsmith_f_op_f32(-var_1.e.e)), _wgslsmith_f_op_f32(round(var_1.e.e)), !(var_1.e.e != 199f))), _wgslsmith_f_op_f32(-var_1.e.e))), -10201i);
}

