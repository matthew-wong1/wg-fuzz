struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    let var_0 = select(vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(min(60582u, 20523u), countOneBits(2341u))), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(12958u, 0u, 0u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 12190u, 5864u), select(vec3<u32>(4294967295u, 0u, 28079u), vec3<u32>(87264u, 4294967295u, 119159u), vec3<bool>(false, false, true)))), 47813u, ~abs(4294967295u)), firstTrailingBit(~vec4<u32>(9700u, countOneBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(50344u, 28860u, 61295u, 34857u), vec4<u32>(18903u, 0u, 27832u, 0u)), 1u)), select(vec4<bool>(true, true, true || any(vec4<bool>(true, true, true, true)), true), !vec4<bool>(true, all(vec3<bool>(false, true, false)), all(vec3<bool>(false, true, false)), -214f <= arg_0.x), true && (all(vec4<bool>(false, true, false, true)) & true)));
    let var_1 = arg_0.x;
    let var_2 = select(!(!vec4<bool>(any(vec2<bool>(false, false)), true, false, false)), vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true, !all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), false), !vec4<bool>(true, true & all(vec3<bool>(false, true, true)), _wgslsmith_clamp_i32(-2147483647i, -28589i, u_input.b) == countOneBits(0i), true & (var_0.x < 4294967295u)));
    var var_3 = ~_wgslsmith_add_vec2_u32(var_0.xz, abs(vec2<u32>(var_0.x, 6952u)));
    var_3 = ~(~vec2<u32>(~1u, ~abs(4294967295u)));
    return vec4<bool>(!(all(vec4<bool>(var_2.x, var_2.x, true, false)) == var_2.x) || var_2.x, select(var_2.x, false, var_2.x) & false, var_2.x, false);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(~1i, abs(0i), countOneBits(arg_0.x), arg_0.x)), min(max(~arg_0, u_input.c) ^ -vec4<i32>(arg_0.x, arg_0.x, u_input.c.x, arg_0.x), u_input.c), u_input.c);
    var var_1 = arg_1.a;
    var_1 = arg_1.c;
    var var_2 = !(!(!(!arg_3.c.wyw)));
    let var_3 = var_0.x;
    return arg_3.b;
}

fn func_2() -> Struct_1 {
    var var_0 = ~reverseBits(_wgslsmith_dot_vec2_i32(u_input.c.wy, vec2<i32>(2147483647i, u_input.c.x))) != 2147483647i;
    var_0 = false;
    var_0 = func_4(vec4<i32>(-9588i, u_input.a, 55172i, u_input.a >> (~17502u % 32u)), Struct_2(Struct_1(true, true, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), (~50754u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 33205u, 33358u), vec3<u32>(53596u, 17591u, 21444u)) % 32u)) > ~_wgslsmith_dot_vec2_u32(vec2<u32>(74732u, 31761u), vec2<u32>(79133u, 37381u)), Struct_1(all(vec3<bool>(true, true, true)), true, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(636f, 594f, 1134f, -1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1911f)), 972f)), !vec4<bool>(any(vec3<bool>(false, false, false)), select(false, false, false), true, any(vec2<bool>(false, true)))), Struct_1(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(464f, 1386f, -494f, 219f)))).x, !select(false, false, false) | false, func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1416f, 1000f, -927f, -679f))))))), Struct_1(any(vec2<bool>(false, false)), true, !vec4<bool>(true, true, any(vec4<bool>(false, true, true, true)), false)));
    var var_1 = ~39096u;
    let var_2 = Struct_2(Struct_1(select(true, true, true), true, vec4<bool>(true, (-2147483647i <= u_input.b) && all(vec4<bool>(false, true, true, true)), !any(vec3<bool>(true, false, true)), func_3(vec4<f32>(2445f, -2184f, -108f, -283f)).x)), true | (u_input.a < (u_input.c.x & -1i)), Struct_1(any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), false, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(max(1f, -585f)), func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(852f, 2699f, 1000f, -1292f))), vec4<f32>(-612f, _wgslsmith_f_op_f32(min(1086f, -1931f)), _wgslsmith_f_op_f32(min(428f, 818f)), 1f))));
    return var_2.a;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~max(22107u, 18541u);
    var_0 = _wgslsmith_clamp_u32(abs(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 5053u), vec2<u32>(1u, 10404u)))), 4294967295u, ~3498u);
    return Struct_2(func_2(), any(select(!(!arg_0.a.c.zyw), vec3<bool>(arg_0.c.a, all(vec3<bool>(arg_0.a.c.x, arg_0.a.a, true)), u_input.b < -47476i), arg_0.b)), Struct_1(!arg_0.a.a, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(920f, arg_0.d, arg_0.d, -967f)))).x, select(!(!vec4<bool>(arg_0.e.x, true, false, true)), !(!vec4<bool>(arg_0.b, arg_0.e.x, arg_0.c.b, true)), func_2().c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d - arg_0.d)), arg_0.c.c);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    return -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~u_input.c.xxy ^ vec3<i32>(0i, -13141i, -2147483647i), _wgslsmith_add_vec3_i32(~u_input.c.yzw, vec3<i32>(2147483647i, 0i, -21038i))), countOneBits(_wgslsmith_clamp_vec3_i32(u_input.c.yyz, vec3<i32>(u_input.b, 0i, -2147483647i) | u_input.c.zyw, _wgslsmith_sub_vec3_i32(u_input.c.xyz, vec3<i32>(u_input.a, -2147483647i, -1i)))));
}

fn func_1() -> Struct_2 {
    let var_0 = ~func_6(func_5(Struct_2(func_2(), true, func_2(), _wgslsmith_f_op_f32(f32(-1f) * -612f), vec4<bool>(true, true, true, true))), Struct_2(func_5(Struct_2(Struct_1(true, true, vec4<bool>(false, true, false, true)), false, Struct_1(true, false, vec4<bool>(false, true, false, true)), 1364f, vec4<bool>(true, true, false, true))).c, _wgslsmith_dot_vec2_i32(vec2<i32>(-42111i, u_input.b), u_input.c.xy) >= firstTrailingBit(0i), Struct_1(false, true, vec4<bool>(true, true, true, true)), 1100f, vec4<bool>(any(vec4<bool>(false, false, true, true)), any(vec3<bool>(false, false, true)), true, u_input.b > 0i)));
    let var_1 = func_5(Struct_2(func_5(func_5(func_5(Struct_2(Struct_1(true, false, vec4<bool>(false, false, true, true)), false, Struct_1(true, true, vec4<bool>(true, false, true, false)), -537f, vec4<bool>(false, true, true, true))))).a, true, Struct_1(func_5(Struct_2(Struct_1(false, true, vec4<bool>(true, false, false, false)), true, Struct_1(false, false, vec4<bool>(true, true, true, true)), -214f, vec4<bool>(true, true, true, false))).c.b, any(vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true))), func_5(Struct_2(Struct_1(false, false, vec4<bool>(true, false, true, false)), true, Struct_1(false, true, vec4<bool>(false, false, false, false)), 1814f, select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)))).d, select(vec4<bool>(true, true, false, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), false), !any(vec4<bool>(false, false, true, false)))));
    let var_2 = _wgslsmith_f_op_f32(trunc(-364f));
    let var_3 = all(!vec4<bool>(!var_1.b, (var_1.c.b | true) != false, var_1.e.x, !(!var_1.a.b)));
    var var_4 = !(!(((0i > var_0) && var_1.e.x) || true));
    return var_1;
}

fn func_7(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> u32 {
    var var_0 = abs(-2147483647i);
    var_0 = u_input.c.x;
    var_0 = ~u_input.a;
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -22872i, -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(arg_1, u_input.b, 2147483647i, 32821i)), -20175i >> (1u % 32u)), min(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1, 2147483647i, -2147483647i), u_input.c.zwx), -1i)), u_input.c << (vec4<u32>(arg_0.x, ~(~arg_0.x), _wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_0.x, 10489u, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, 9597u)), ~vec3<u32>(11645u, arg_0.x, 0u)), arg_0.x) % vec4<u32>(32u)));
    let var_2 = func_5(Struct_2(arg_2.c, true, func_2(), arg_2.d, arg_2.a.c)).a.c;
    return ~39002u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(u_input.a == _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-31135i, 1i, u_input.c.x), vec3<i32>(-2147483647i, 2147483647i, u_input.a)), ~u_input.c.x));
    let var_1 = vec3<u32>(func_7(vec2<u32>(1u, 1u), ~(u_input.b ^ u_input.c.x), func_1()) >> (func_7(vec2<u32>(1u, 1u), u_input.b, func_1()) % 32u), _wgslsmith_mult_u32(1u, 1u), _wgslsmith_add_u32(abs(_wgslsmith_add_u32(9363u, 0u)), 1u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-415f - _wgslsmith_div_f32(1813f, -934f)) + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-529f - 318f) * _wgslsmith_f_op_f32(-1198f - -626f)) + -167f)));
    let var_3 = !func_5(func_1()).a.c.x;
    var var_4 = Struct_2(Struct_1(true, func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, var_2.x, 1000f, var_2.x)))).x, func_2().c), var_3, Struct_1(true & (var_1.x > abs(0u)), var_0, vec4<bool>(func_4(select(vec4<i32>(-39730i, u_input.c.x, u_input.a, u_input.b), u_input.c, false), Struct_2(Struct_1(true, var_3, vec4<bool>(true, false, var_3, var_0)), true, Struct_1(var_0, var_0, vec4<bool>(var_3, var_0, var_0, var_3)), var_2.x, vec4<bool>(false, var_3, var_3, var_3)), Struct_1(var_3, var_0, vec4<bool>(false, var_3, var_0, false)), func_2()), var_0 & true, !any(vec3<bool>(false, var_3, true)), true)), _wgslsmith_f_op_f32(-var_2.x), !(!func_2().c));
    var var_5 = func_5(Struct_2(Struct_1(all(vec2<bool>(var_0, var_4.a.a)), false, vec4<bool>(false, var_4.e.x || var_3, var_3, var_0)), var_0, func_1().c, var_4.d, select(vec4<bool>(var_3, false | var_0, any(vec3<bool>(true, true, false)), var_1.x < 25490u), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(646f, -673f, -1000f, var_2.x))), !vec4<bool>(false, false, var_0, true))));
    let var_6 = var_4.e.yzy;
    var var_7 = -681f;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 1u, var_1.x), vec4<u32>(107193u, var_1.x, var_1.x, var_1.x) >> (vec4<u32>(var_1.x, 0u, var_1.x, 0u) % vec4<u32>(32u))), ~(~vec4<u32>(var_1.x, var_1.x, 1u, var_1.x)), !var_5.c.c) << (vec4<u32>(~firstTrailingBit(87781u), reverseBits(1u ^ var_1.x), 58790u, _wgslsmith_mod_u32(var_1.x, ~59750u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2012f, -815f, var_4.d, var_2.x), vec4<f32>(-360f, -1000f, var_4.d, 2228f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 198f, var_4.d, var_4.d) * vec4<f32>(var_2.x, var_5.d, var_4.d, 1467f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4.d, var_5.d, -264f, var_4.d))))))), vec2<i32>(-1i) * -(~firstTrailingBit(u_input.c.zx)));
}

