struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -359f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = ~min(vec4<i32>(2147483647i, countOneBits(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-37695i, u_input.c), vec2<i32>(-32412i, 1i) ^ u_input.b.zy), ~(-2147483647i)), vec4<i32>(u_input.c & ~u_input.c, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), vec3<i32>(u_input.c, 40480i, u_input.b.x)), _wgslsmith_add_i32(u_input.b.x, -56375i) >> (1u % 32u), ~14039i));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(228f, -1278f)))) < 490f), max(vec3<u32>(firstTrailingBit(u_input.d), ~62562u, u_input.d >> (u_input.a % 32u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.d, u_input.a), vec3<u32>(49081u, u_input.d, 0u)) >> (~vec3<u32>(4294967295u, 0u, 1u) % vec3<u32>(32u))) ^ vec3<u32>(u_input.d, u_input.d, _wgslsmith_clamp_u32(countOneBits(1u), ~u_input.d, firstLeadingBit(0u))), Struct_1(false));
    var_0 = vec4<i32>(max(var_0.x ^ ~(~29752i), ~2147483647i), ~29243i, _wgslsmith_mod_i32(-1i, ~(-(i32(-1i) * -7399i))), u_input.b.x);
    let var_2 = min((vec4<u32>(_wgslsmith_mult_u32(4294967295u, var_1.b.x), countOneBits(0u), var_1.b.x << (u_input.a % 32u), countOneBits(u_input.d)) & vec4<u32>(1u, var_1.b.x, abs(0u), var_1.b.x)) & ~(firstLeadingBit(vec4<u32>(2321u, 6544u, 8454u, u_input.a)) << (vec4<u32>(u_input.d, var_1.b.x, 4294967295u, 1u) % vec4<u32>(32u))), ~_wgslsmith_add_vec4_u32(abs(vec4<u32>(var_1.b.x, var_1.b.x, 4294967295u, 1666u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.b.x, 16905u, var_1.b.x, 12314u), ~vec4<u32>(4294967295u, var_1.b.x, var_1.b.x, 1u))));
    var_0 = vec4<i32>(-_wgslsmith_dot_vec2_i32(min(vec2<i32>(var_0.x, u_input.b.x), -u_input.b.zx), _wgslsmith_add_vec2_i32(vec2<i32>(-5335i, 8533i), ~u_input.b.yz)), var_0.x, (max(~(-23684i), var_0.x) | var_0.x) & (16633i << (var_1.b.x % 32u)), _wgslsmith_dot_vec3_i32(-(~(~vec3<i32>(var_0.x, var_0.x, u_input.c))), u_input.b));
    return true & all(!(!vec2<bool>(var_1.a.a, var_1.c.a)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-812f, _wgslsmith_f_op_f32(524f + _wgslsmith_f_op_f32(sign(1449f))))) + -686f);
    let var_0 = Struct_2(Struct_1(arg_2.c.a), vec3<u32>(49766u, u_input.a, 11595u), Struct_1(arg_2.a.a && func_3()));
    let var_1 = vec2<bool>(arg_2.a.a, false);
    var var_2 = vec2<i32>(7176i, min(~abs(_wgslsmith_sub_i32(arg_1, arg_1)), countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 0i, u_input.b.x, u_input.b.x), vec4<i32>(-15657i, u_input.b.x, -1i, 3182i)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-933f, 1451f, -263f), vec3<f32>(2177f, -346f, 1538f)))))))));
    return Struct_2(arg_2.c, ~firstTrailingBit(arg_2.b), Struct_1(!var_0.a.a));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-535f))) * 808f);
    let var_1 = arg_0.a;
    var var_2 = _wgslsmith_mod_u32(max(~_wgslsmith_mult_u32(_wgslsmith_div_u32(8955u, arg_1.x), ~u_input.d), countOneBits(_wgslsmith_div_u32(max(arg_0.b.x, arg_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(19864u, 536u, 66563u, 6332u), vec4<u32>(62363u, 47239u, u_input.a, arg_0.b.x))))), arg_0.b.x);
    var_2 = min((u_input.a >> ((arg_0.b.x | countOneBits(u_input.a)) % 32u)) ^ 1u, 4294967295u);
    var var_3 = func_2(~vec2<u32>(~arg_1.x, 1u), u_input.b.x, Struct_2(var_1, select(select(_wgslsmith_clamp_vec3_u32(arg_0.b, vec3<u32>(u_input.d, 1u, 1u), arg_1), ~arg_1, !arg_0.c.a), ~arg_1, arg_2.yxy), arg_0.a));
    return 764f;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_2(vec2<u32>(1u, ~(~16048u)) ^ _wgslsmith_sub_vec2_u32(arg_2.b.yz, vec2<u32>(~arg_2.b.x, ~arg_2.b.x)), ~0i, func_2(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.b.x, ~47150u), ~arg_2.b.yx), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.c, 1i, 15046i), vec4<i32>(arg_0, u_input.c, -15579i, arg_0)), 2147483647i) >> (~1u % 32u), func_2(~select(arg_2.b.xy, arg_2.b.zx, arg_2.c.a), 1i, Struct_2(arg_2.a, vec3<u32>(4294967295u, u_input.a, 13016u), arg_2.a)))).a;
    global0 = _wgslsmith_f_op_f32(1410f - 294f);
    let var_1 = func_2(vec2<u32>(_wgslsmith_add_u32(~82703u, 48562u), u_input.a), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 2147483647i ^ u_input.c, 67394i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), u_input.b.yz)), ~reverseBits(vec4<i32>(u_input.c, 1i, -2147483647i, u_input.c))), func_2(vec2<u32>(u_input.d, 23004u) << ((~vec2<u32>(u_input.d, 21476u) << ((arg_2.b.xy & vec2<u32>(u_input.d, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u)), 0i, Struct_2(var_0, vec3<u32>(arg_2.b.x, 55386u, arg_2.b.x), Struct_1(!var_0.a)))).c;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(553f * 1700f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-3175f)) * _wgslsmith_div_f32(-1458f, _wgslsmith_f_op_f32(round(1537f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1957f * 1074f) - -954f)))), _wgslsmith_div_f32(-692f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2004f, -1195f)), _wgslsmith_div_f32(118f, -1000f)) * _wgslsmith_div_f32(-960f, _wgslsmith_f_op_f32(ceil(594f))))));
    let var_3 = 1i;
    return Struct_2(Struct_1(true), _wgslsmith_div_vec3_u32(max(min(func_2(vec2<u32>(87652u, 31789u), arg_0, arg_2).b, arg_2.b), abs(vec3<u32>(arg_2.b.x, 0u, u_input.d) >> (arg_2.b % vec3<u32>(32u)))), arg_2.b), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(672i, select(true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(true), vec3<u32>(u_input.d, 0u, u_input.d), Struct_1(false)), vec3<u32>(29208u, 5358u, 5916u), vec4<bool>(true, true, true, false))) - _wgslsmith_f_op_f32(floor(-152f))) < 509f), Struct_2(Struct_1(all(vec4<bool>(true, false, false, false))), select(~(vec3<u32>(u_input.d, u_input.d, 0u) >> (vec3<u32>(u_input.d, 0u, u_input.a) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(2400u, 0u, u_input.d, 7994u), vec4<u32>(4294967295u, u_input.d, u_input.a, u_input.a)), max(22290u, u_input.a), u_input.a), vec3<bool>(true, false, true)), func_2(vec2<u32>(0u, _wgslsmith_mult_u32(u_input.a, u_input.a)), u_input.c, func_2(reverseBits(vec2<u32>(69853u, 30948u)), u_input.c, func_2(vec2<u32>(u_input.d, u_input.a), -22440i, Struct_2(Struct_1(false), vec3<u32>(25910u, 1u, 0u), Struct_1(false))))).c));
    let var_1 = Struct_2(Struct_1(!func_3()), var_0.b, var_0.c);
    var var_2 = _wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(4294967295u, 5779u, 36066u) ^ vec3<u32>(75879u, u_input.a, 1u))), _wgslsmith_sub_vec3_u32(var_0.b, reverseBits(~vec3<u32>(4294967295u, u_input.a, var_0.b.x))) ^ ~vec3<u32>(13161u, ~9941u, _wgslsmith_mult_u32(u_input.d, var_0.b.x)));
    var var_3 = func_2(vec2<u32>(~(~50903u), 1u) ^ var_1.b.yx, u_input.b.x, func_4(u_input.c << (select(max(105860u, u_input.a), reverseBits(var_0.b.x), var_0.a.a) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1180f)) - _wgslsmith_f_op_f32(round(-1818f))) <= _wgslsmith_f_op_f32(select(-2879f, _wgslsmith_f_op_f32(f32(-1f) * -1390f), false)), var_1)).c;
    var_2 = var_1.b.x;
    let var_4 = _wgslsmith_clamp_u32(~72626u, ~4294967295u << (((_wgslsmith_div_u32(1u, var_1.b.x) & ~4294967295u) & ~(~var_1.b.x)) % 32u), _wgslsmith_clamp_u32(100219u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.b.x, var_1.b.x, var_0.b.x, 34523u), vec4<u32>(u_input.d, var_0.b.x, 3626u, var_0.b.x), var_0.a.a), abs(vec4<u32>(u_input.a, 2857u, 41288u, 1u))), ~27652u), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.b.x, min(u_input.d, 12114u)), reverseBits(abs(1u)))));
    var var_5 = vec3<bool>(var_3.a, false, var_1.c.a);
    let var_6 = 427f;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(firstTrailingBit(vec3<i32>(u_input.c, u_input.b.x, u_input.b.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_4, u_input.a, 4294967295u), vec3<u32>(13677u, var_4, 50314u)) % vec3<u32>(32u)))), ~abs(30367u), _wgslsmith_f_op_f32(f32(-1f) * -576f), u_input.b.x);
}

