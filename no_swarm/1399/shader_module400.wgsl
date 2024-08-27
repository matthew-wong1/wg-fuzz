struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<u32>,
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> vec3<i32> {
    var var_0 = max(_wgslsmith_clamp_vec3_u32(~arg_1.zwx, u_input.a.xzz, vec3<u32>(max(arg_0.c.c, 1u), abs(_wgslsmith_div_u32(u_input.a.x, arg_0.b.c.x)), abs(~arg_0.b.a.c))), vec3<u32>(u_input.a.x, ~u_input.a.x >> (u_input.a.x % 32u), _wgslsmith_clamp_u32(53366u, ~39760u | (111827u & u_input.a.x), select(15399u, arg_0.e.c, false) << (35993u % 32u))));
    var_0 = min(vec3<u32>(~arg_0.b.c.x, ~(~(~var_0.x)), ~(~36979u) ^ u_input.a.x), vec3<u32>(arg_0.e.c, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, u_input.a.x), ~(~u_input.a.zzw))));
    var var_1 = true;
    return -vec3<i32>(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(-30363i, -44919i), arg_0.b.b.x), arg_0.b.b.x, arg_0.b.b.x);
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(2080f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1705f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1837f, -607f, true)) * _wgslsmith_f_op_f32(step(640f, 474f))), -224f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(491f * -279f), _wgslsmith_f_op_f32(-1323f - 869f)))), 1u), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(-19634i, 38567i, -1i), func_3(Struct_3(1051f, Struct_2(Struct_1(-205f, vec4<f32>(711f, -866f, -1000f, 729f), u_input.a.x), vec3<i32>(-36719i, -291i, 2147483647i), u_input.a.zz), Struct_1(-915f, vec4<f32>(596f, -1337f, 1537f, 544f), u_input.a.x), -1614f, Struct_1(575f, vec4<f32>(535f, -348f, -237f, 1524f), u_input.a.x)), vec4<u32>(0u, 1u, u_input.a.x, 4294967295u)))), vec2<u32>(~u_input.a.x ^ ~(1u << (u_input.a.x % 32u)), ~(~0u) ^ (_wgslsmith_add_u32(41149u, u_input.a.x) >> (4294967295u % 32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0.a.b.wz * vec2<f32>(var_0.a.a, var_0.a.a));
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_0.a.b.x)), var_0.a.b.zw, !select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.a.b.yw))) * _wgslsmith_f_op_vec2_f32(select(var_0.a.b.yz, var_0.a.b.yz, vec2<bool>(false, false)))) + _wgslsmith_f_op_vec2_f32(var_0.a.b.xy + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1341f, var_0.a.b.x), vec2<f32>(var_0.a.b.x, 1258f))), vec2<f32>(var_1.x, -276f)))))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.a.a)), _wgslsmith_f_op_f32(ceil(-212f)), var_0.a.a <= 363f)), _wgslsmith_f_op_f32(f32(-1f) * -296f)), min(countOneBits(u_input.a.x), var_0.a.c)), vec3<i32>(-(var_0.b.x & -var_0.b.x), reverseBits(-1i), var_0.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x & (var_0.c.x >> (4294967295u % 32u)), 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(50443u, abs(67462u)), vec2<u32>(_wgslsmith_mult_u32(18540u, 4853u), u_input.a.x)), ~vec2<u32>(33780u, var_0.c.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(103f, _wgslsmith_f_op_f32(min(1866f, var_0.a.b.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-944f, -313f, var_1.x, 526f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, 279f, var_1.x, -1913f))))), select(~u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(28619u, u_input.a.x), min(47595u, var_0.c.x)), ~(~u_input.a.x)), false));
    return select(vec4<i32>(23058i, reverseBits(-var_0.b.x), -15432i, reverseBits(var_0.b.x)), reverseBits(-firstLeadingBit(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, 2334i)) >> (firstLeadingBit(vec4<u32>(16576u, var_0.c.x, 38173u, 0u)) % vec4<u32>(32u))), !vec4<bool>(true, false, false, _wgslsmith_mod_i32(var_0.b.x, 35i) != ~var_0.b.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<i32>, arg_3: i32) -> vec4<bool> {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(-arg_1, _wgslsmith_dot_vec2_i32(arg_2.yy, -_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, 1i), arg_2.yy))), -64071i);
    let var_1 = select(select(vec3<bool>(arg_0.x, false, arg_0.x), arg_0, !arg_0), !arg_0, arg_0.x);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(step(526f, -1348f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-380f + 1653f) + _wgslsmith_f_op_f32(min(1000f, -671f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1929f, 1000f, -788f, -301f), vec4<f32>(1209f, -1000f, -1139f, 190f), false)), vec4<f32>(2876f, -909f, 1000f, -1183f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1500f, 1953f, -1000f, -130f))))), ~1u), ~vec3<i32>(var_0.x, arg_1, _wgslsmith_div_i32(arg_2.x, var_0.x)) & vec3<i32>(1794i, -2147483647i, func_3(Struct_3(369f, Struct_2(Struct_1(1380f, vec4<f32>(1039f, -1491f, 1080f, -844f), 0u), vec3<i32>(arg_2.x, -1i, -15773i), u_input.a.xx), Struct_1(-153f, vec4<f32>(153f, 2021f, 2149f, -1000f), 4294967295u), 508f, Struct_1(-1725f, vec4<f32>(-622f, 999f, 416f, -425f), u_input.a.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)).x), vec2<u32>(u_input.a.x, min(0u, ~firstLeadingBit(u_input.a.x))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1353f), var_2.a.b, u_input.a.x), select(_wgslsmith_mod_vec3_i32(select(var_2.b, -vec3<i32>(-33552i, -18471i, arg_1), !arg_0.x), -(~vec3<i32>(2147483647i, var_2.b.x, arg_2.x))), ~firstLeadingBit(var_2.b), vec3<bool>(select(true, any(arg_0), true), all(!vec4<bool>(true, arg_0.x, var_1.x, false)), !(!arg_0.x))), _wgslsmith_add_vec2_u32(u_input.a.ww, abs(u_input.a.wz) | u_input.a.zz));
    let var_4 = any(vec2<bool>(arg_0.x, all(var_1)));
    return !select(select(!vec4<bool>(var_1.x, true, true, false), vec4<bool>(select(true, false, var_4), all(vec4<bool>(true, true, true, var_1.x)), any(var_1.zz), true), arg_0.x), select(!select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(var_1.x, false, var_4, true), false), select(select(vec4<bool>(arg_0.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_4, false, var_4), var_4), select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(true, true, var_4, var_1.x), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), true), false);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = all(func_4(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), arg_0, _wgslsmith_add_vec4_i32(-vec4<i32>(arg_2.b.x, -21447i, arg_2.b.x, arg_2.b.x) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(49118i, -29982i, arg_2.b.x, arg_2.b.x), vec4<i32>(arg_0, 33444i, -28572i, arg_2.b.x)), _wgslsmith_mod_vec4_i32(func_2(), max(vec4<i32>(arg_0, arg_2.b.x, arg_2.b.x, arg_0), vec4<i32>(arg_2.b.x, 45689i, arg_0, arg_2.b.x)))), ~1i));
    let var_1 = arg_2.a;
    let var_2 = Struct_1(-437f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_2.a.b - var_1.b), _wgslsmith_f_op_vec4_f32(arg_2.a.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.a, 1463f, -261f, arg_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 622f, -419f)))))), ~countOneBits(u_input.a.x));
    let var_3 = ~min(_wgslsmith_mult_u32(1u, abs(_wgslsmith_clamp_u32(u_input.a.x, var_1.c, 3332u))), arg_2.a.c);
    var var_4 = -vec2<i32>(func_2().x, firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_2.b, arg_2.b << (u_input.a.wzz % vec3<u32>(32u)))));
    return min(vec4<i32>(_wgslsmith_add_i32(-arg_0, reverseBits(-19945i)) | 2147483647i, -64616i, _wgslsmith_mod_i32(select(arg_2.b.x, firstLeadingBit(2147483647i), false), arg_0), -1i), _wgslsmith_div_vec4_i32(-countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, arg_0, 11452i, arg_0), vec4<i32>(arg_0, arg_2.b.x, -88279i, var_4.x))), -countOneBits(max(vec4<i32>(1i, arg_0, 13610i, 21304i), vec4<i32>(2147483647i, -46870i, -6570i, 14978i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(~(-23335i), 0i, 1279i);
    var var_1 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1269f)))) > _wgslsmith_f_op_f32(408f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1443f)) - -1205f))) && false;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1807f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -721f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1482f, _wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(2358f - -1000f), -927f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 194f, -1508f, -704f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-820f, 920f, -831f, -622f), vec4<f32>(655f, -1158f, -600f, 1378f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 767f, 1907f, 1000f) + vec4<f32>(-1688f, -893f, 487f, 330f)))), _wgslsmith_dot_vec2_u32(u_input.a.wz, ~u_input.a.wy));
    var var_3 = 10271i;
    var var_4 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -func_1(-var_0.x, _wgslsmith_f_op_f32(abs(var_2.a)), Struct_2(var_2, var_0, u_input.a.ww)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.x, ~(-22591i)), 0i), var_0.x, var_0.x, -_wgslsmith_dot_vec2_i32(~var_0.zz, firstLeadingBit(var_0.xy))));
    var_1 = _wgslsmith_f_op_f32(round(var_2.a)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(579f * var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.a.wxz >> (_wgslsmith_mod_vec3_u32(u_input.a.zxy, vec3<u32>(var_2.c, u_input.a.x, 25449u)) % vec3<u32>(32u)), u_input.a.wzx), reverseBits(~(~u_input.a.xzy)), vec3<u32>(~firstLeadingBit(4294967295u), var_2.c, abs(u_input.a.x))), ~(i32(-1i) * -_wgslsmith_sub_i32(-19690i, var_0.x)), var_0.x, _wgslsmith_f_op_f32(var_2.a * 1078f), max(_wgslsmith_add_vec3_u32(u_input.a.xwz, ~(~u_input.a.xxy)), u_input.a.xyz));
}

