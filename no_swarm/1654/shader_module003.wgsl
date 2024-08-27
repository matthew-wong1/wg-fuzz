struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec2<bool> {
    var var_0 = vec3<bool>(false, arg_0 & true, true);
    let var_1 = Struct_1(any(vec3<bool>(!arg_0, true, arg_1.x)), !arg_1, abs(-(min(u_input.a.x, 42775i) & u_input.a.x)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1028f, -522f, arg_0)), -399f)) + 581f), _wgslsmith_f_op_f32(-664f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f))));
    let var_3 = Struct_1(!all(!select(vec4<bool>(var_1.b.x, var_0.x, false, true), vec4<bool>(true, arg_1.x, false, false), true)), var_1.b, 0i);
    let var_4 = ~0i;
    return select(var_3.b.xy, select(!vec2<bool>(var_0.x, false && arg_0), !select(!var_1.b.xx, select(vec2<bool>(arg_1.x, false), vec2<bool>(var_0.x, var_0.x), arg_0), false), _wgslsmith_mult_u32(u_input.b, u_input.b & 4294967295u) > ~u_input.b), var_1.b.x);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(any(select(vec2<bool>(true, true), func_3(false, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), any(vec2<bool>(true, true)))), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true), select(all(vec3<bool>(true, true, true)), func_3(false, vec3<bool>(false, false, false)).x, true)), vec3<bool>(false, true, true & any(vec2<bool>(true, true)))), _wgslsmith_div_i32(max(_wgslsmith_mult_i32(227i, min(2147483647i, u_input.a.x)), u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, -48978i, u_input.a.x), vec4<i32>(-6090i, 2147483647i, -2147483647i, 2147483647i) ^ vec4<i32>(u_input.a.x, -50398i, 2511i, u_input.a.x)))));
    let var_1 = var_0;
    var var_2 = -vec2<i32>(var_1.c, ~5925i);
    let var_3 = u_input.a.x;
    var_2 = vec2<i32>(-min(-var_2.x, countOneBits(_wgslsmith_clamp_i32(11191i, u_input.a.x, 1i))), _wgslsmith_div_i32(var_3, 49638i));
    return ~u_input.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: u32) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-691f - 2452f))), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-650f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(429f)) + _wgslsmith_f_op_f32(trunc(-1892f))), select(select(arg_0.x, arg_1, arg_1), arg_0.x, arg_1)))), _wgslsmith_f_op_f32(421f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(129f, -1000f) - -1482f))));
    var var_1 = vec4<bool>(!arg_1, all(arg_0), func_3(true, vec3<bool>(arg_0.x, !select(arg_0.x, true, true), arg_0.x)).x, arg_1);
    var var_2 = ~_wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 19240u), vec3<u32>(u_input.b, 0u, 0u)) | ~(~vec3<u32>(336u, 44296u, 4654u)), firstTrailingBit(vec3<u32>(30689u, _wgslsmith_mult_u32(u_input.b, 0u), abs(arg_2))));
    var_1 = vec4<bool>((max(max(2147483647i, u_input.a.x), u_input.a.x) < -2147483647i) == any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(true, arg_0.x, true, arg_0.x)), vec4<bool>(arg_1, arg_1, arg_1, true), false)), (countOneBits(4294967295u) > ~_wgslsmith_mod_u32(0u, arg_2)) && true, !(var_1.x & (all(vec4<bool>(true, true, false, arg_1)) || all(vec4<bool>(arg_0.x, arg_1, true, false)))), var_0.x < var_0.x);
    var_2 = _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(arg_2, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, arg_2, var_2.x), u_input.b & 1584u), var_2.x)), select(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.b, 21646u, 4294967295u)), firstTrailingBit(vec3<u32>(18707u, 31794u, 64321u))), vec3<u32>(var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 4294967295u, 42780u), ~vec4<u32>(arg_2, 0u, u_input.b, arg_2)), 4294967295u), true));
    return abs(arg_2);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, func_4(vec3<bool>(false, true, false), true, func_2()), _wgslsmith_dot_vec4_u32(vec4<u32>(62743u, 54152u, u_input.b, 32632u), vec4<u32>(u_input.b, u_input.b, 39413u, 0u)) ^ u_input.b, _wgslsmith_mod_u32(func_4(vec3<bool>(true, true, true), false, u_input.b), u_input.b >> (7435u % 32u))) >> (vec4<u32>(74333u, 63388u, u_input.b, ~1u) % vec4<u32>(32u)), vec4<u32>(~(~u_input.b), _wgslsmith_add_u32(~u_input.b, 1u), _wgslsmith_mod_u32(1u, u_input.b), abs(~u_input.b)) & vec4<u32>(29748u << (_wgslsmith_dot_vec4_u32(vec4<u32>(27051u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, 1u, u_input.b)) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 21258u, 158u)) & u_input.b, u_input.b, firstTrailingBit(33745u)), select(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), ~vec4<u32>(u_input.b, 4294967295u, 41694u, u_input.b)), ~(~(~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b))), !vec4<bool>(false, func_3(false, vec3<bool>(true, true, false)).x, true, select(false, false, false))));
    var var_1 = Struct_1(true, !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec2<bool>(false, false)))), -(~u_input.a.x));
    var_1 = Struct_1(true, var_1.b, 0i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-253f + 200f)) - 537f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f * 868f))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-929f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-520f - -676f) - _wgslsmith_f_op_f32(1141f - 2533f))), var_1.a)));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: u32) -> u32 {
    let var_0 = ~countOneBits(_wgslsmith_div_u32(min(1u, u_input.b), arg_2) & ~abs(4547u));
    let var_1 = Struct_1(true & select(any(vec3<bool>(true, true, false)) & true, true, false), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), all(vec4<bool>(var_0 >= var_0, true, true, false))), _wgslsmith_clamp_i32(~arg_1.x ^ _wgslsmith_add_i32(u_input.a.x, 1i), ~14770i, select(0i, u_input.a.x, true) & ~(-20156i)) ^ _wgslsmith_mult_i32(abs(arg_1.x), _wgslsmith_sub_i32(max(arg_1.x, 22079i), arg_1.x)));
    let var_2 = u_input.b;
    var var_3 = vec4<u32>(~min(countOneBits(0u), ~reverseBits(35773u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, var_2)) & vec3<u32>(66459u, u_input.b, var_0), select(vec3<u32>(u_input.b, 2880u, 34237u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0, 4294967295u), vec3<u32>(arg_2, u_input.b, 40513u)), vec3<bool>(true, false, var_1.a))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2, 18189u), vec2<u32>(arg_2, u_input.b), vec2<u32>(var_0, u_input.b) & vec2<u32>(u_input.b, 1u)), vec2<u32>(var_0 << (19457u % 32u), 1u))), ((~var_2 & 47334u) ^ reverseBits(arg_2)) ^ _wgslsmith_add_u32(func_2(), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_2), vec2<u32>(var_0, var_0))), ~((min(arg_2, 30185u) << (func_4(var_1.b, true, arg_2) % 32u)) & _wgslsmith_mult_u32(arg_2, 4294967295u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 907f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1393f, arg_0, 288f, arg_0))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -407f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(arg_0, -411f, var_1.b.x))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), -1691f, _wgslsmith_f_op_f32(select(arg_0, 720f, false)), 1432f), !select(var_1.a, var_1.b.x, var_1.a))))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(-296f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1712f)) - 438f), _wgslsmith_f_op_f32(f32(-1f) * -179f))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), 887f);
    var var_2 = select(~vec4<u32>(~reverseBits(4294967295u), ~u_input.b, u_input.b, _wgslsmith_div_u32(_wgslsmith_div_u32(14649u, 4294967295u), 11592u)), select(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b), ~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(337u, u_input.b, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 2577u, 6295u) << (vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) % vec4<u32>(32u)))), vec4<u32>(func_5(_wgslsmith_f_op_f32(func_1()), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 21512i), u_input.a.xz), 1u), func_4(vec3<bool>(true, true, true), true, ~82442u), reverseBits(1u), 1u), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true))), vec4<bool>(true, any(vec3<bool>(any(vec2<bool>(true, true)), true, any(vec3<bool>(false, true, false)))), all(vec2<bool>(all(vec4<bool>(false, true, false, false)), true)), !(abs(46600u) > u_input.b)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f) - 845f);
    var var_3 = Struct_1(min(-(u_input.a.x ^ u_input.a.x), _wgslsmith_sub_i32(u_input.a.x & u_input.a.x, u_input.a.x)) != 0i, select(!vec3<bool>(all(vec4<bool>(false, false, false, false)), var_1 == -472f, var_2.x == var_2.x), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, false, false)), !vec3<bool>(true, var_1 <= var_1, all(vec4<bool>(true, true, true, true)))), reverseBits(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_3.c, 1i, u_input.a.x), vec4<i32>(u_input.a.x, -39086i, u_input.a.x, u_input.a.x)), 76907i), ~(~select(vec4<i32>(13446i, u_input.a.x, var_3.c, var_3.c), vec4<i32>(var_3.c, var_3.c, 2147483647i, 2147483647i), vec4<bool>(false, false, var_3.b.x, var_3.b.x)) & select(vec4<i32>(u_input.a.x, var_3.c, var_3.c, u_input.a.x) ^ vec4<i32>(u_input.a.x, var_3.c, var_3.c, 2147483647i), abs(vec4<i32>(var_3.c, u_input.a.x, -2861i, u_input.a.x)), all(var_3.b.zz))), reverseBits(select(countOneBits(vec2<i32>(106i, 29112i)) & -u_input.a.yz, -select(u_input.a.yy, vec2<i32>(var_3.c, -30538i), var_3.b.x), var_3.b.x)));
}

