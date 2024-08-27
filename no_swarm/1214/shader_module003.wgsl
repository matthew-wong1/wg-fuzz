struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32) -> bool {
    let var_0 = Struct_3(1339i, ~countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.a, 22071u), vec4<u32>(u_input.a, u_input.a, 19185u, u_input.a))), Struct_1(all(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1344f * arg_0), -361f, 1f, 2244f))), 52525u, _wgslsmith_f_op_f32(-arg_0));
    let var_1 = Struct_4(Struct_2(2147483647i | u_input.b.x, true), var_0, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.b.yyx * var_0.c.b.yxy)))));
    var var_2 = var_1;
    var var_3 = firstTrailingBit(~var_2.b.b.xzy);
    var var_4 = 1u;
    return var_2.b.c.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2) -> u32 {
    var var_0 = any(!select(vec2<bool>(true, any(vec3<bool>(arg_0.b, false, false))), vec2<bool>(all(vec2<bool>(arg_0.b, true)), true), vec2<bool>(!arg_2.b, func_3(-1522f, u_input.b.x, arg_2.a))));
    let var_1 = max(4294967295u, 468u);
    var var_2 = ~firstLeadingBit(~arg_1.b.b);
    var_0 = func_3(-311f, _wgslsmith_sub_i32(~abs(-2147483647i), 0i), max(arg_0.a, -1i)) || !all(select(select(vec3<bool>(arg_2.b, true, arg_0.b), vec3<bool>(false, arg_2.b, true), false), vec3<bool>(false, false, arg_0.b), arg_2.b));
    var var_3 = arg_1.b.c.b;
    return abs(u_input.a);
}

fn func_4(arg_0: vec2<u32>) -> i32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), reverseBits(vec3<i32>(18763i, 5079i, u_input.b.x))), u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(max(-7309i, 2147483647i), u_input.b.x & u_input.b.x, 1i, u_input.b.x), vec4<i32>(select(9118i, u_input.b.x, true), _wgslsmith_div_i32(-44626i, u_input.b.x), -1i, _wgslsmith_div_i32(-2147483647i, -1i)), vec4<i32>(u_input.b.x, 1i, -229i, firstTrailingBit(u_input.b.x)))), -13697i);
    let var_1 = true;
    var var_2 = Struct_3(2091i, reverseBits(vec4<u32>(func_2(Struct_2(2147483647i, false), Struct_4(Struct_2(1i, var_1), Struct_3(30810i, vec4<u32>(6928u, 0u, 75281u, 9965u), Struct_1(var_1, vec4<f32>(233f, -1059f, 1449f, -1000f)), 1u, -177f), vec3<f32>(-231f, -219f, -941f)), Struct_2(-72766i, var_1)) >> (u_input.a % 32u), _wgslsmith_add_u32(0u, 5956u << (u_input.c % 32u)), _wgslsmith_mod_u32(~0u, 4268u & u_input.a), 14126u)), Struct_1(var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-608f, 786f, -2112f, -1222f) - vec4<f32>(-773f, 1263f, -170f, 628f))))), _wgslsmith_mod_u32(1u, 1u), -852f);
    let var_3 = var_2.e;
    let var_4 = _wgslsmith_f_op_f32(max(816f, var_2.e));
    return -1i;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-779f - _wgslsmith_f_op_f32(-1214f * _wgslsmith_f_op_f32(382f + 1455f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-106f, _wgslsmith_div_f32(-782f, -644f))))), _wgslsmith_f_op_f32(f32(-1f) * -1214f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1790f, 741f, -305f), vec3<f32>(328f, 505f, -549f), true)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-796f, 742f, 340f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_div_f32(-726f, -453f))))));
    var var_1 = Struct_2(0i, ~(reverseBits(u_input.b.x) | abs(36709i)) == func_4(vec2<u32>(4294967295u, func_2(Struct_2(u_input.b.x, true), Struct_4(Struct_2(u_input.b.x, true), Struct_3(0i, vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.a), Struct_1(true, vec4<f32>(-1000f, 425f, -346f, 323f)), u_input.c, -731f), vec3<f32>(540f, -1647f, var_0.x)), Struct_2(-34752i, true)))));
    var_1 = Struct_2(~(~(-max(-1i, 1i))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-700f, -1000f)) * var_0.x), -u_input.b.x, -5791i) != any(vec2<bool>(var_1.b, true)));
    var_0 = vec3<f32>(-368f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2338f, _wgslsmith_f_op_f32(abs(871f)), false))), _wgslsmith_f_op_f32(min(223f, -660f)))), -1105f);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)) * -112f), -1134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(trunc(var_0.x))) - _wgslsmith_f_op_f32(var_0.x - var_0.x))));
    return Struct_1(!var_1.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1257f, _wgslsmith_f_op_f32(var_0.x + 328f), _wgslsmith_f_op_f32(-var_0.x), 824f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 685f, var_0.x, -294f)) + vec4<f32>(-132f, var_0.x, 819f, var_0.x))), vec4<f32>(var_0.x, var_0.x, 579f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1221f, var_0.x, var_1.b)) * -132f)))));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = ~u_input.b.yx;
    let var_1 = ~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.c, 1u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.a)) & ~vec4<u32>(1u, u_input.a, 21265u, 55673u))) ^ ~vec4<u32>(_wgslsmith_mod_u32(~82356u, u_input.c), func_2(Struct_2(-2147483647i, arg_0.a), Struct_4(Struct_2(330i, arg_0.a), Struct_3(57219i, vec4<u32>(12779u, u_input.c, u_input.a, 0u), Struct_1(false, vec4<f32>(arg_0.b.x, 215f, arg_0.b.x, 692f)), u_input.a, arg_0.b.x), vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), Struct_2(-9150i, arg_0.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, 1u), vec3<u32>(u_input.a, 30116u, u_input.a)), _wgslsmith_div_u32(23397u, u_input.a));
    let var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.b.yxz)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-682f, arg_0.b.x, -266f)))));
    let var_4 = !vec2<bool>(true, !any(vec2<bool>(false, false)));
    return Struct_2(u_input.b.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(52921i, -5629i), select(var_2.xx, u_input.b.xy >> (vec2<u32>(1u, var_1.x) % vec2<u32>(32u)), !vec2<bool>(false, arg_0.a))) > 71952i);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_5(Struct_1((abs(83768u) <= (u_input.a ^ u_input.c)) || true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(sign(170f)), _wgslsmith_div_f32(arg_1.b.x, arg_1.b.x), -279f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_1.b * arg_1.b))))));
    let var_1 = arg_1.b.xw;
    var_0 = Struct_2(func_5(Struct_1(true, _wgslsmith_div_vec4_f32(vec4<f32>(645f, var_1.x, -2184f, 770f), vec4<f32>(1416f, 939f, arg_1.b.x, var_1.x)))).a ^ arg_0.a, !((_wgslsmith_f_op_f32(-var_1.x) == -197f) == true));
    let var_2 = Struct_3(u_input.b.x, abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, reverseBits(u_input.a), u_input.a), _wgslsmith_div_vec4_u32(select(vec4<u32>(1u, u_input.a, 1u, 25356u), vec4<u32>(4294967295u, 1u, u_input.c, u_input.a), false), vec4<u32>(1u, u_input.a, u_input.a, 4189u) << (vec4<u32>(u_input.a, 4294967295u, 68098u, 13717u) % vec4<u32>(32u))))), arg_1, ~abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c, u_input.c, 4294967295u), vec4<u32>(48853u, u_input.a, 4294967295u, 48362u))), var_1.x);
    var_0 = func_5(func_1());
    return func_1();
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = 1107f;
    var var_1 = _wgslsmith_mult_i32(-(~1i) | arg_2, abs(-67811i)) & -max(-2147483647i, 2147483647i | u_input.b.x);
    let var_2 = Struct_1(func_1().a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_1.b))))));
    var var_3 = -1i;
    var var_4 = _wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -(u_input.b.x >> (u_input.a % 32u)), _wgslsmith_add_i32(abs(26755i), firstTrailingBit(abs(u_input.b.x))), 1i >> (firstTrailingBit(_wgslsmith_mult_u32(u_input.a, 0u)) % 32u), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 38931i, arg_2), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, arg_2, u_input.b.x), vec3<i32>(u_input.b.x, arg_2, arg_2))), reverseBits(func_4(vec2<u32>(0u, u_input.c))))), ~(-vec4<i32>(firstTrailingBit(u_input.b.x), arg_2, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_2, -13433i), u_input.b), -arg_2)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.b.x, 0i), ~(-19533i), 14523i, -2147483647i) & (_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -68939i, arg_2, arg_2), vec4<i32>(8297i, u_input.b.x, arg_2, u_input.b.x)) ^ ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -13017i)), vec4<i32>(reverseBits(arg_2), _wgslsmith_div_i32(_wgslsmith_add_i32(arg_2, 0i), -83823i >> (u_input.a % 32u)), -(~u_input.b.x), arg_2 & 1i)));
    return func_6(Struct_2(max(~u_input.b.x | u_input.b.x, _wgslsmith_mult_i32(firstLeadingBit(-2147483647i), arg_2)), func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b.x))), firstTrailingBit(-6892i), 6266i << (u_input.c % 32u))), func_1());
}

fn func_8(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_u32(1u, ~_wgslsmith_sub_u32(u_input.c, 0u));
    let var_1 = vec3<bool>(arg_3.a.b, !(true && arg_0.a), func_1().a);
    let var_2 = min(~vec3<i32>(-40663i, arg_2.a, abs(1i)), select(u_input.b, vec3<i32>(-1i) * -u_input.b, true)) >> (vec3<u32>(select(_wgslsmith_sub_u32(~4294967295u, arg_2.d), var_0, arg_3.a.b), 44712u, var_0) % vec3<u32>(32u));
    let var_3 = -(~1i);
    let var_4 = -var_2;
    return StorageBuffer(arg_3.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c >= 56633u;
    let x = u_input.a;
    s_output = func_8(func_7(false, func_6(func_5(func_1()), Struct_1(all(vec3<bool>(true, var_0, var_0)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1446f, 467f, -1000f, 1000f))))), u_input.b.x), vec3<bool>(true, countOneBits(u_input.c) < u_input.a, func_7(var_0, func_1(), u_input.b.x).a), Struct_3(-_wgslsmith_mult_i32(33055i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -17804i, u_input.b.x), vec4<i32>(u_input.b.x, -19895i, u_input.b.x, 45496i))), vec4<u32>(30890u, u_input.c, _wgslsmith_sub_u32(u_input.a ^ 4294967295u, ~u_input.a), ~(~u_input.a)), Struct_1(var_0, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(764f, -471f, -482f, -1321f) * vec4<f32>(802f, -2344f, 609f, 641f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-494f, -468f, 362f, 1337f))))), u_input.a, -1504f), Struct_4(func_5(func_6(Struct_2(u_input.b.x, false), Struct_1(true, vec4<f32>(-733f, 424f, 579f, -295f)))), Struct_3(u_input.b.x, reverseBits(firstTrailingBit(vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.c))), Struct_1(!var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-589f, 287f, -1065f, 1434f))), reverseBits(u_input.a ^ u_input.c), -721f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -137f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-221f + -1169f) - _wgslsmith_f_op_f32(f32(-1f) * -291f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-499f, 162f), -523f, var_0)))));
}

