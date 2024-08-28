struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec2<bool>(true, true), u_input.c, 149f, ~(~(-vec3<i32>(u_input.d, u_input.a, -6707i))));
    var var_1 = _wgslsmith_div_i32(abs(-1i), reverseBits(select(-1i, u_input.a, var_0.a.x)));
    var_0 = Struct_1(vec2<bool>(2147483647i < var_0.d.x, 35449u > abs(var_0.b)), u_input.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), -1000f)))), var_0.d);
    var_1 = 2147483647i;
    var_1 = -7006i;
    return var_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec2<u32>) -> vec3<u32> {
    return _wgslsmith_add_vec3_u32(vec3<u32>(~(~func_3()), ~(~u_input.b.x), firstTrailingBit(~arg_1 | arg_3.x)), select(min(firstTrailingBit(~vec3<u32>(41619u, arg_1, 0u)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_0.b, 44327u), vec3<u32>(arg_1, 6046u, arg_3.x)))), min(~(~vec3<u32>(0u, arg_1, arg_0.b)), vec3<u32>(min(arg_0.b, 21917u), abs(arg_1), _wgslsmith_div_u32(arg_1, 16993u))), select(vec3<bool>(!arg_0.a.x, arg_0.a.x, false), vec3<bool>(any(vec3<bool>(true, arg_0.a.x, false)), true, arg_0.a.x), all(select(vec3<bool>(true, arg_0.a.x, true), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(false, arg_0.a.x, true))))));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(!select(!arg_3, arg_3, !vec2<bool>(arg_3.x, arg_3.x)), 42863u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-980f, -1424f), _wgslsmith_f_op_f32(139f * -614f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-925f - -246f), 532f, !arg_3.x)), -646f)), vec3<i32>(_wgslsmith_clamp_i32(-1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(35954i, u_input.d), _wgslsmith_mod_i32(u_input.a, u_input.d), _wgslsmith_add_i32(u_input.a, u_input.a)), select(select(-17577i, 43919i, arg_3.x), u_input.d, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(u_input.a), 154i, 29445i, firstTrailingBit(1i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(u_input.d, u_input.a, u_input.d, u_input.a)), u_input.a, 2147483647i << (u_input.b.x % 32u), 0i)), -(~reverseBits(u_input.a))));
    let var_1 = Struct_1(var_0.a, reverseBits(arg_2 ^ _wgslsmith_div_u32(var_0.b, 4294967295u)), var_0.c, var_0.d);
    let var_2 = 0u <= (~(~var_1.b) & ~arg_2);
    var_0 = var_1;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec2<u32> {
    var var_0 = !vec4<bool>(any(!arg_1.a) && true, arg_0.a.x, arg_2 >= _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(max(arg_1.c, arg_0.c))), !(!(!arg_1.a.x)));
    var_0 = !vec4<bool>(!(!select(arg_1.a.x, false, true)), arg_0.a.x, true, true);
    var_0 = !vec4<bool>((u_input.d < 0i) || (var_0.x & all(arg_0.a)), false, -u_input.a != 2147483647i, false);
    let var_1 = func_4(0u, _wgslsmith_add_vec3_u32(max(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.b, arg_0.b, u_input.b.x), ~vec3<u32>(arg_1.b, u_input.e, 4294967295u)), ~vec3<u32>(u_input.e, arg_1.b, arg_1.b)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b << (863u % 32u), arg_0.b, arg_1.b), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 59242u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(45804u, arg_1.b, arg_1.b), vec3<u32>(arg_1.b, arg_0.b, u_input.b.x))))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, ~arg_1.b, _wgslsmith_add_u32(0u, u_input.c)), 0u) | 59847u, vec2<bool>(var_0.x, true));
    let var_2 = func_4(abs(~(~0u)) & _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, var_1.b, var_1.b, 1880u), ~vec4<u32>(1u, 4294967295u, var_1.b, 1u), vec4<u32>(9551u, var_1.b, 28032u, 14871u)), vec4<u32>(arg_1.b << (arg_1.b % 32u), _wgslsmith_mod_u32(11293u, var_1.b), select(u_input.b.x, u_input.b.x, true), arg_0.b)), vec3<u32>(~0u, 34218u, ~0u), _wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b >> (_wgslsmith_sub_vec2_u32(u_input.b, u_input.b) % vec2<u32>(32u))), ~_wgslsmith_mod_u32(~u_input.e, _wgslsmith_mult_u32(0u, 1u))), var_1.a);
    return _wgslsmith_add_vec2_u32(u_input.b, ~vec2<u32>(arg_1.b << (var_1.b % 32u), var_1.b)) ^ ~(~_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(var_2.b, 1u)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = func_5(func_4(110980u, ~vec3<u32>(min(1u, arg_0.b), 0u, arg_2.b), _wgslsmith_dot_vec3_u32(func_2(arg_0, arg_2.b, 477f, u_input.b), ~firstLeadingBit(vec3<u32>(u_input.b.x, u_input.c, 45197u))), vec2<bool>(true, !(!arg_0.a.x))), Struct_1(!arg_0.a, _wgslsmith_div_u32(func_2(arg_0, countOneBits(arg_2.b), -1150f, _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.c), u_input.b)).x, _wgslsmith_add_u32(0u, 11499u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(636f - -829f)) * _wgslsmith_f_op_f32(f32(-1f) * -595f)), arg_2.d), -1609f);
    let var_1 = -arg_0.d.x;
    var var_2 = Struct_1(select(!arg_0.a, vec2<bool>(true, any(vec3<bool>(arg_0.a.x, arg_2.a.x, true))), arg_2.a.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_2.b, arg_2.b), countOneBits(_wgslsmith_div_u32(~0u, u_input.e))), _wgslsmith_f_op_f32(-arg_2.c), func_4(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, arg_2.b, arg_2.b), ~vec3<u32>(arg_2.b, var_0.x, 4294967295u))), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0.b, u_input.c) << (vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(29152u, arg_0.b, 39101u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.x, 19559u), vec3<u32>(27048u, 66398u, 23166u)), vec3<u32>(arg_0.b, 44229u, arg_2.b))), 14034u >> (_wgslsmith_div_u32(81968u, 17696u) % 32u), !func_4(1u, func_2(Struct_1(arg_0.a, arg_2.b, arg_2.c, arg_0.d), 52902u, -1000f, vec2<u32>(arg_0.b, var_0.x)), ~7827u, vec2<bool>(true, false)).a).d);
    var_2 = arg_2;
    var_0 = _wgslsmith_mod_vec2_u32(countOneBits(u_input.b), vec2<u32>(max(var_0.x, u_input.b.x), ~u_input.c));
    return vec3<i32>(arg_2.d.x, select(min(-arg_0.d.x, ~var_1 << (var_2.b % 32u)), i32(-1i) * -2147483647i, !arg_2.a.x), min(firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.x, arg_1, var_1), arg_0.d)), (~1i ^ var_1) << (_wgslsmith_dot_vec2_u32(select(u_input.b, vec2<u32>(29045u, 6375u), arg_0.a), func_2(Struct_1(arg_0.a, 53466u, arg_0.c, var_2.d), arg_0.b, var_2.c, u_input.b).yy) % 32u)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~select(arg_0.b, 20918u, arg_1.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, -124f, arg_0.c, 747f) * vec4<f32>(1000f, arg_1.c, 292f, arg_1.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(716f, 666f, 853f, arg_1.c)), -1559f >= func_4(u_input.b.x, vec3<u32>(11080u, u_input.e, u_input.b.x), 5599u, arg_0.a).c)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(626f, arg_1.c, -1133f, arg_0.c))))))));
    let var_2 = ~var_0;
    let var_3 = arg_1.a.x;
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), -725f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.c)))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(vec2<bool>(false, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 37759u, ~u_input.e), ~(~vec3<u32>(35827u, u_input.c, u_input.b.x))), 707f, ~reverseBits(func_1(Struct_1(vec2<bool>(false, false), 35675u, -355f, vec3<i32>(u_input.d, -9608i, u_input.d)), u_input.d, Struct_1(vec2<bool>(false, false), u_input.b.x, 1136f, vec3<i32>(u_input.a, 2147483647i, u_input.a))))), func_4(u_input.e, ~(~vec3<u32>(u_input.c, 41204u, 1u)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(28615u, 4294967295u, 0u, u_input.e) << (vec4<u32>(u_input.e, 0u, u_input.e, 1u) % vec4<u32>(32u))), firstLeadingBit(min(vec4<u32>(u_input.e, u_input.b.x, u_input.e, u_input.e), vec4<u32>(u_input.e, u_input.c, 0u, u_input.e)))), vec2<bool>(true, true)));
    var var_1 = -(~30305i);
    let var_2 = var_0.d.zz;
    let var_3 = _wgslsmith_sub_i32(-1i, -2147483647i) & var_2.x;
    var var_4 = 5022i;
    let var_5 = _wgslsmith_f_op_f32(-func_6(Struct_1(vec2<bool>(var_0.d.x != 67250i, func_4(1u, vec3<u32>(4294967295u, var_0.b, var_0.b), 0u, var_0.a).a.x), 28127u | firstLeadingBit(var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_0.c)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, -2866i, 14302i), vec3<i32>(u_input.a, 10315i, var_2.x))), func_4(1u, select(~vec3<u32>(var_0.b, 30268u, 67211u), vec3<u32>(0u, 19583u, u_input.c) << (vec3<u32>(4294967295u, u_input.c, var_0.b) % vec3<u32>(32u)), !vec3<bool>(true, false, var_0.a.x)), ~var_0.b, func_4(func_5(Struct_1(vec2<bool>(var_0.a.x, false), u_input.c, 1055f, vec3<i32>(6346i, var_2.x, -1i)), Struct_1(vec2<bool>(false, false), 17084u, 1000f, var_0.d), var_0.c).x, ~vec3<u32>(1u, 4294967295u, u_input.c), _wgslsmith_mult_u32(4294967295u, u_input.c), vec2<bool>(var_0.a.x, var_0.a.x)).a)).c);
    let var_6 = select(!(!func_4(u_input.e, vec3<u32>(var_0.b, var_0.b, 599u), u_input.e, var_0.a).a), var_0.a, !vec2<bool>(true, func_6(func_4(u_input.e, vec3<u32>(u_input.e, var_0.b, 4294967295u), u_input.c, var_0.a), func_6(Struct_1(vec2<bool>(true, var_0.a.x), u_input.b.x, 578f, var_0.d), Struct_1(vec2<bool>(true, false), var_0.b, var_5, vec3<i32>(var_2.x, var_0.d.x, -1755i)))).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec2_u32(reverseBits(u_input.b), u_input.b >> (vec2<u32>(u_input.e, 10709u) % vec2<u32>(32u)))), vec2<u32>(abs(4294967295u), u_input.c), abs(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(1u, 0u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.e, 1u), vec3<u32>(8514u, 0u, var_0.b)))) >> (countOneBits(~vec3<u32>(4294967295u, var_0.b, var_0.b)) % vec3<u32>(32u)), vec4<i32>(-19411i, _wgslsmith_div_i32(u_input.a, 0i), _wgslsmith_mult_i32(var_0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(25052i, 0i, 0i, var_3) | vec4<i32>(22581i, -13727i, u_input.a, -1i), vec4<i32>(var_0.d.x, -5950i, 0i, u_input.d))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, 2147483647i), _wgslsmith_mod_i32(var_2.x, func_4(u_input.c, vec3<u32>(4294967295u, u_input.c, u_input.c), 12411u, vec2<bool>(var_6.x, true)).d.x))));
}

