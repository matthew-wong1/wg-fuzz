struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec3<i32> {
    return vec3<i32>(~(-8034i), -18591i >> ((~(~1u) & u_input.a.x) % 32u), _wgslsmith_div_i32(u_input.b, ~(-3761i)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: vec4<bool>) -> Struct_5 {
    let var_0 = Struct_1(-min(countOneBits(vec2<i32>(1i, 1i)), -vec2<i32>(-4253i, -2147483647i)), 4294967295u, ~vec2<i32>(u_input.b << (arg_2.b.x % 32u), u_input.b) << (~vec2<u32>(~arg_0.a.a.a.x, 1u) % vec2<u32>(32u)), _wgslsmith_clamp_u32((arg_2.b.x | ~1u) & _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.a.a.x, 0u, u_input.a.x, 8084u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.a.a.x, 123311u, 38417u, u_input.a.x), vec4<u32>(arg_0.a.a.a.x, 1u, arg_2.b.x, 0u))), arg_0.a.a.a.x, arg_2.b.x ^ select(abs(1u), arg_2.b.x ^ arg_0.a.a.a.x, true)), !arg_3.ww);
    let var_1 = func_3(~(~(~arg_0.a.a.a)), _wgslsmith_add_u32(_wgslsmith_div_u32(arg_2.b.x, u_input.a.x), ~_wgslsmith_add_u32(~arg_0.a.a.a.x, 4294967295u)));
    var var_2 = _wgslsmith_sub_vec4_u32(max(vec4<u32>(0u, ~14864u, reverseBits(var_0.d), ~8428u) >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.a.a.x, 4294967295u, 13477u, 23070u), vec4<u32>(arg_0.a.a.a.x, arg_0.a.a.a.x, 76843u, arg_2.b.x)) & (vec4<u32>(51463u, 7372u, 13786u, arg_2.b.x) >> (vec4<u32>(4294967295u, arg_2.b.x, var_0.d, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 89524u, 12697u) >> (vec4<u32>(arg_2.b.x, 0u, arg_2.b.x, 44609u) % vec4<u32>(32u)), ~vec4<u32>(arg_2.b.x, 7346u, arg_2.b.x, arg_0.a.a.a.x))), ~(~vec4<u32>(arg_0.a.a.a.x, ~arg_2.b.x, ~74744u, ~3761u)));
    let var_3 = _wgslsmith_dot_vec3_u32(~(arg_0.a.a.a | (reverseBits(var_2.yyx) & _wgslsmith_div_vec3_u32(arg_0.a.a.a, vec3<u32>(arg_2.b.x, 0u, 4294967295u)))), vec3<u32>(u_input.a.x << (countOneBits(_wgslsmith_div_u32(32040u, var_2.x)) % 32u), countOneBits(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_2.x, var_0.b), arg_0.a.a.a.x, ~arg_0.a.a.a.x)), arg_2.b.x));
    var_2 = vec4<u32>(var_3, var_3, 36322u, arg_2.b.x);
    return Struct_5(arg_2.a, _wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, arg_0.a.a.a.x)), u_input.a >> (vec2<u32>(45490u, 4280u) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(var_2.x, var_3)), arg_2.b) | ~var_2.yy, vec2<u32>(8327u ^ u_input.a.x, min(61412u, 0u))), -950f, vec4<bool>((arg_2.a.x & false) & true, !arg_3.x, var_0.e.x, any(select(!vec4<bool>(arg_3.x, arg_2.d.x, false, var_0.e.x), select(vec4<bool>(arg_3.x, false, arg_2.d.x, arg_3.x), arg_2.d, vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.d.x)), false))));
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: u32) -> Struct_3 {
    var var_0 = Struct_2(select(vec3<u32>(arg_1.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b.x, 43795u, arg_1.b.x, 15781u), vec4<u32>(arg_1.b.x, 1u, arg_2, arg_2)), max(vec4<u32>(u_input.a.x, 14877u, 0u, 4294967295u), vec4<u32>(arg_1.b.x, arg_1.b.x, 4294967295u, 4294967295u))), arg_2), vec3<u32>(firstTrailingBit(u_input.a.x), 76239u, ~countOneBits(22194u)), !all(!arg_1.d)));
    let var_1 = 4294967295u;
    var_0 = Struct_2(vec3<u32>(var_1, ~u_input.a.x, 4294967295u));
    var_0 = Struct_2(abs(var_0.a));
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~max(1u | var_0.a.x, u_input.a.x), 0u, select(var_1, ~0u >> (firstTrailingBit(0u) % 32u), (true == arg_1.d.x) == !arg_1.d.x)), var_0.a, min(vec3<u32>(~u_input.a.x, _wgslsmith_clamp_u32(var_0.a.x, 1u, var_0.a.x), ~17174u), ~abs(vec3<u32>(1u, u_input.a.x, var_1))) << (_wgslsmith_sub_vec3_u32(var_0.a, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.x, var_1, 4294967295u), var_0.a, var_0.a)) % vec3<u32>(32u)));
    return Struct_3(Struct_2(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), var_1), _wgslsmith_sub_u32(var_0.a.x, ~0u), 38578u)), _wgslsmith_div_f32(arg_1.c, -122f), -(~(~_wgslsmith_clamp_i32(u_input.b, 14942i, -1i))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> vec3<bool> {
    var var_0 = ~_wgslsmith_add_vec4_i32(~abs(-vec4<i32>(16616i, 21654i, 0i, 0i)), vec4<i32>(~(-2147483647i) << ((arg_0.a.a.x >> (1u % 32u)) % 32u), u_input.b, -(arg_0.c << (14462u % 32u)), -53736i));
    var var_1 = -_wgslsmith_add_i32(arg_0.c, -firstTrailingBit(-2147483647i)) >> (_wgslsmith_dot_vec2_u32(arg_0.a.a.xy, vec2<u32>(arg_0.a.a.x, _wgslsmith_mod_u32(127722u, ~49617u))) % 32u);
    var_0 = _wgslsmith_sub_vec4_i32(~(~vec4<i32>(arg_0.c, -1i, var_0.x, 2147483647i)), vec4<i32>(-u_input.b, -u_input.b, select(func_3(arg_0.a.a, 53897u).x, u_input.b, false), min(min(u_input.b, -59279i), -var_0.x))) >> (_wgslsmith_add_vec4_u32((~vec4<u32>(arg_0.a.a.x, u_input.a.x, u_input.a.x, arg_2) & firstTrailingBit(vec4<u32>(arg_0.a.a.x, 4294967295u, 111545u, 4294967295u))) | abs(firstLeadingBit(vec4<u32>(1u, 1u, 4294967295u, arg_2))), vec4<u32>(arg_2, ~u_input.a.x | 54425u, ~(~u_input.a.x), _wgslsmith_sub_u32(abs(arg_2), 16762u))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b, -1153f, arg_0.b, 2129f))))), vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(513f + arg_0.b), arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -679f)), !(!vec4<bool>(arg_1, arg_1, false, arg_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - -1671f), _wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(2278f - 1237f), _wgslsmith_div_f32(1380f, -469f))))));
    var var_3 = _wgslsmith_f_op_f32(-var_2.x);
    return select(!func_2(Struct_4(func_4(arg_0.b, Struct_5(vec2<bool>(false, arg_1), u_input.a, var_2.x, vec4<bool>(false, arg_1, arg_1, arg_1)), arg_0.a.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1185f, arg_0.b, var_2.x, arg_0.b)), Struct_5(func_2(Struct_4(arg_0), vec4<f32>(arg_0.b, var_2.x, var_2.x, arg_0.b), Struct_5(vec2<bool>(arg_1, true), vec2<u32>(arg_2, 38699u), 310f, vec4<bool>(arg_1, arg_1, arg_1, arg_1)), vec4<bool>(true, true, arg_1, true)).a, vec2<u32>(54731u, 0u), 1f, !vec4<bool>(true, arg_1, false, false)), select(func_2(Struct_4(arg_0), vec4<f32>(arg_0.b, arg_0.b, -1092f, -551f), Struct_5(vec2<bool>(false, arg_1), u_input.a, 338f, vec4<bool>(true, true, arg_1, arg_1)), vec4<bool>(arg_1, false, arg_1, arg_1)).d, vec4<bool>(true, true, true, true), -1519f != arg_0.b)).d.yzw, vec3<bool>(arg_1, !arg_1, !arg_1), true);
}

fn func_1() -> vec3<u32> {
    let var_0 = vec3<bool>(any(func_5(func_4(964f, func_2(Struct_4(Struct_3(Struct_2(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), -1237f, 2147483647i)), vec4<f32>(137f, -1274f, -1770f, -640f), Struct_5(vec2<bool>(false, false), u_input.a, -568f, vec4<bool>(false, false, true, true)), vec4<bool>(false, true, false, false)), _wgslsmith_add_u32(59839u, u_input.a.x)), all(vec2<bool>(false, true)), func_2(Struct_4(Struct_3(Struct_2(vec3<u32>(u_input.a.x, 33779u, u_input.a.x)), 1224f, u_input.b)), vec4<f32>(1f, 1f, 1f, 1f), Struct_5(vec2<bool>(true, false), vec2<u32>(u_input.a.x, u_input.a.x), -885f, vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))).b.x)), true, true);
    var var_1 = true;
    var_1 = var_0.x;
    var var_2 = func_4(-2579f, Struct_5(!var_0.zx, ~u_input.a, -451f, select(!vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, true, u_input.a.x >= 20932u, var_0.x || false), vec4<bool>(true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !var_0.x, !var_0.x))), ~4294967295u);
    let var_3 = true;
    return var_2.a.a;
}

fn func_6(arg_0: vec3<u32>) -> vec2<i32> {
    let var_0 = Struct_4(Struct_3(Struct_2(~(arg_0 >> (arg_0 % vec3<u32>(32u)))), 1177f, u_input.b));
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, var_0.a.c, u_input.b), vec3<i32>(u_input.b, 38292i, var_0.a.c)) >> (72171u % 32u), firstLeadingBit(-(~1i))), ~func_2(var_0, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1132f), 136f, _wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(max(var_0.a.b, var_0.a.b))), Struct_5(vec2<bool>(true, true), ~arg_0.xz, _wgslsmith_f_op_f32(var_0.a.b * var_0.a.b), vec4<bool>(true, true, false, true)), func_2(Struct_4(var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1058f, var_0.a.b, 843f, var_0.a.b) - vec4<f32>(var_0.a.b, var_0.a.b, -278f, var_0.a.b)), Struct_5(vec2<bool>(false, false), u_input.a, 933f, vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))).d).b.x, min(vec2<i32>(var_0.a.c, ~abs(-25417i)), abs(vec2<i32>(_wgslsmith_sub_i32(u_input.b, var_0.a.c), 2147483647i))), arg_0.x, !select(func_5(var_0.a, true, var_0.a.a.a.x).zx, vec2<bool>(true, true), all(vec3<bool>(false, true, false))));
    var var_2 = 1i << ((abs(_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 1u, 46954u), vec3<u32>(4294967295u, 0u, arg_0.x)), ~vec3<u32>(4294967295u, 4294967295u, u_input.a.x))) & 1u) % 32u);
    var_2 = u_input.b;
    var var_3 = select(~vec4<u32>(~reverseBits(4043u), firstTrailingBit(countOneBits(var_1.b)), ~u_input.a.x, 39148u), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 19222u, var_1.b, var_1.d) << (vec4<u32>(69939u, 17149u, var_1.b, 1u) % vec4<u32>(32u)), max(~vec4<u32>(4294967295u, 3543u, 44803u, u_input.a.x), ~vec4<u32>(u_input.a.x, var_0.a.a.a.x, 0u, arg_0.x)))), vec4<bool>(all(func_5(Struct_3(var_0.a.a, var_0.a.b, var_1.a.x), var_1.d <= 0u, var_0.a.a.a.x)), !var_1.e.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, 0u), 1u) > ~(~arg_0.x), all(vec2<bool>(true, var_1.e.x))));
    return -(var_1.c | vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-79214i, -2147483647i, 2147483647i), vec3<i32>(u_input.b, 37515i, u_input.b)), -var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(-((vec2<i32>(-667i, 1i) << (u_input.a % vec2<u32>(32u))) << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)))), u_input.a.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -u_input.b, 24694i), -select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 46277i)), abs(vec2<i32>(-1i, u_input.b)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), func_6(func_1())), 60886u, !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1498f + -432f)))) - _wgslsmith_f_op_f32(floor(-702f))) - -661f);
    var var_2 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -1465f), Struct_5(!(!vec2<bool>(var_0.e.x, var_0.e.x)), u_input.a, var_1, vec4<bool>(any(vec2<bool>(var_0.e.x, var_0.e.x)), !(var_0.e.x || var_0.e.x), select(-1i >= var_0.c.x, u_input.a.x > 1u, var_0.e.x), (var_0.c.x & u_input.b) < u_input.b)), 91290u).a;
    var var_3 = Struct_4(Struct_3(Struct_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(18471u, u_input.a.x, var_2.a.x), ~vec3<u32>(0u, 0u, var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(917f * var_1)))), _wgslsmith_mult_i32(func_3(var_2.a, 1u).x, _wgslsmith_div_i32(u_input.b | 58453i, abs(var_0.c.x)))));
    var_3 = Struct_4(Struct_3(Struct_2(select(select(var_2.a, vec3<u32>(1u, var_3.a.a.a.x, 4294967295u), var_0.e.x), func_1(), true)), 873f, ~2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, 1856f))))), firstTrailingBit(vec4<i32>(var_0.c.x, countOneBits(62952i), _wgslsmith_dot_vec2_i32(var_0.c, var_0.c), max(21476i, u_input.b)) << (vec4<u32>(var_2.a.x, var_3.a.a.a.x, ~var_3.a.a.a.x, min(4294967295u, 0u)) % vec4<u32>(32u))));
}

