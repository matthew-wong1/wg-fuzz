struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<i32>) -> Struct_4 {
    return Struct_4(false, Struct_2(~(~_wgslsmith_div_u32(u_input.a.x, 103594u)), Struct_1(select(24832u, 42523u, arg_0.x < u_input.b)), -229f), vec4<u32>(u_input.c.x, ~1u, min(~12148u | u_input.c.x, _wgslsmith_mult_u32(0u, ~34195u)), _wgslsmith_div_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 1u, u_input.c.x), vec3<u32>(1u, u_input.a.x, 76840u)))), Struct_2(4294967295u, Struct_1(4294967295u), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1488f, 192f), _wgslsmith_f_op_f32(select(-1336f, 1671f, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-887f, -1000f))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_3) -> bool {
    let var_0 = 7773i;
    let var_1 = vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(~u_input.c.yyx), u_input.c.xyw), firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 21629u, ~u_input.a.x))), select(_wgslsmith_div_u32(1u, u_input.c.x), 23652u, true));
    var var_2 = func_2(max(_wgslsmith_add_vec3_i32(-arg_0, _wgslsmith_sub_vec3_i32(arg_0, vec3<i32>(var_0, u_input.b, arg_1))) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 1u, 1026u), var_1) % vec3<u32>(32u)), arg_0)).b;
    var_2 = func_2(vec3<i32>(~(~u_input.b), -18062i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_0, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 40924i, 0i), arg_0)), ~abs(vec3<i32>(1i, var_0, u_input.b))))).b;
    var var_3 = arg_2;
    return !all(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_4 {
    var var_0 = true;
    var_0 = false;
    var_0 = all(vec4<bool>(~abs(arg_2.d.a) == ~37774u, all(!select(vec2<bool>(true, arg_0.a), vec2<bool>(false, arg_0.a), true)), true, arg_0.b.c > arg_0.d.c));
    let var_1 = ~(~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-u_input.b, -14780i), firstTrailingBit(u_input.b), i32(-1i) * -u_input.b));
    let var_2 = arg_0.d.c;
    return Struct_4(!func_2(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, var_1, u_input.b) << (vec3<u32>(arg_0.c.x, u_input.c.x, arg_0.c.x) % vec3<u32>(32u)), vec3<i32>(u_input.b, u_input.b, u_input.b) ^ vec3<i32>(var_1, 14516i, 0i))).a, arg_2.d, arg_0.c, Struct_2(4294967295u, func_2(-(vec3<i32>(u_input.b, -2147483647i, u_input.b) << (vec3<u32>(0u, 193u, 24203u) % vec3<u32>(32u)))).b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2902f)) + _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-256f - -154f)))));
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(491f, -1133f, arg_2.b.c, 1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.b.c, arg_2.d.c, -682f, 567f))) - vec4<f32>(arg_2.b.c, -1527f, _wgslsmith_f_op_f32(select(arg_2.d.c, arg_2.b.c, true)), _wgslsmith_div_f32(-1000f, 284f))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(vec3<i32>(u_input.b, u_input.b, 35618i)).b.c, _wgslsmith_div_f32(arg_2.b.c, -1448f), -1414f, _wgslsmith_f_op_f32(var_0.x + var_0.x)) * vec4<f32>(999f, _wgslsmith_f_op_f32(max(540f, arg_2.b.c)), _wgslsmith_f_op_f32(round(-1671f)), -1708f)) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-598f)), 882f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-573f - 886f), _wgslsmith_f_op_f32(max(527f, 1000f)), func_4(Struct_4(false, Struct_2(5197u, Struct_1(1u), var_0.x), vec4<u32>(arg_0, 4294967295u, 0u, arg_0), Struct_2(24947u, arg_2.b.b, 370f)), vec3<bool>(true, false, true), Struct_4(true, Struct_2(1u, arg_2.b.b, arg_2.b.c), vec4<u32>(63355u, 4294967295u, arg_3, 4294967295u), Struct_2(arg_0, Struct_1(0u), -809f)), arg_2.b.b).a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-775f, var_0.x))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-137f, _wgslsmith_f_op_f32(f32(-1f) * -1361f), _wgslsmith_f_op_f32(step(var_0.x, arg_2.b.c)), -1253f))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(1336f)), arg_2.b.c, _wgslsmith_f_op_f32(111f + _wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2002f)), 693f))))));
    let var_1 = Struct_3(arg_2.d.c);
    var var_2 = var_1;
    return arg_2.c.yw;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>) -> f32 {
    var var_0 = func_2(vec3<i32>(-(~0i), 0i, reverseBits(-(i32(-1i) * -38935i))));
    var_0 = func_2(-vec3<i32>(u_input.b, u_input.b >> (_wgslsmith_add_u32(0u, arg_0.x) % 32u), ~u_input.b ^ -26372i));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-522f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1644f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-625f + 184f), _wgslsmith_f_op_f32(floor(var_0.d.c)))), var_0.b.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d.c)) * _wgslsmith_f_op_f32(ceil(var_0.d.c))))), _wgslsmith_f_op_f32(var_0.b.c + _wgslsmith_f_op_f32(select(var_0.b.c, -927f, var_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(step(-858f, _wgslsmith_f_op_f32(f32(-1f) * -676f))), var_0.d.c, -595f, _wgslsmith_f_op_f32(-func_2(countOneBits(vec3<i32>(u_input.b, -3058i, u_input.b))).d.c)));
    let var_2 = vec2<u32>(0u, max(0u, u_input.a.x)) & func_5(var_0.b.b.a >> (_wgslsmith_div_u32(1u, 43611u & var_0.b.a) % 32u), select(vec3<bool>(true, true, true), !(!vec3<bool>(true, var_0.a, var_0.a)), var_0.a || false), func_4(func_2(~vec3<i32>(u_input.b, u_input.b, -1i)), select(vec3<bool>(var_0.a, var_0.a, var_0.a), !vec3<bool>(var_0.a, false, false), func_3(vec3<i32>(1i, -43102i, -30141i), 1983i, Struct_3(-1369f))), func_2(vec3<i32>(99i, u_input.b, -2147483647i) << (vec3<u32>(arg_1.x, 4294967295u, 8435u) % vec3<u32>(32u))), func_2(min(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))).b.b), ~4294967295u);
    var_0 = func_4(func_4(Struct_4(var_0.a, var_0.d, vec4<u32>(2305u, countOneBits(var_0.c.x), 2656u, _wgslsmith_mult_u32(arg_1.x, 27646u)), func_4(func_4(Struct_4(var_0.a, Struct_2(var_0.d.a, Struct_1(arg_0.x), var_1.x), u_input.c, var_0.b), vec3<bool>(var_0.a, false, true), Struct_4(var_0.a, Struct_2(u_input.a.x, var_0.b.b, -1305f), arg_0, var_0.d), Struct_1(32372u)), vec3<bool>(var_0.a, var_0.a, true), Struct_4(var_0.a, var_0.d, vec4<u32>(54805u, u_input.a.x, var_2.x, 53846u), Struct_2(68177u, Struct_1(0u), -291f)), Struct_1(1u)).b), vec3<bool>(323f > var_1.x, any(vec2<bool>(var_0.a, false)), false), func_2(~vec3<i32>(u_input.b, u_input.b, u_input.b) & -vec3<i32>(u_input.b, u_input.b, u_input.b)), var_0.b.b), !vec3<bool>(!(!var_0.a), !var_0.a, var_0.a), func_2(abs(firstTrailingBit(abs(vec3<i32>(u_input.b, u_input.b, 67920i))))), func_4(func_4(func_4(Struct_4(var_0.a, var_0.b, u_input.c, Struct_2(var_0.c.x, Struct_1(7991u), 2710f)), vec3<bool>(var_0.a, var_0.a, true), Struct_4(true, Struct_2(1276u, Struct_1(u_input.a.x), 1039f), vec4<u32>(21514u, 2961u, arg_1.x, 0u), Struct_2(arg_1.x, Struct_1(41722u), var_1.x)), Struct_1(0u)), select(vec3<bool>(false, true, false), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(false, true, var_0.a)), !var_0.a), func_2(vec3<i32>(u_input.b, u_input.b, u_input.b)), var_0.b.b), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, var_0.a, false)), var_0.a, var_0.a), var_0.a), Struct_4(true, var_0.b, reverseBits(firstTrailingBit(arg_0)), var_0.b), Struct_1(select(arg_1.x, 19797u, var_0.a))).d.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(273f + var_0.b.c), 1000f, abs(0u) != _wgslsmith_mult_u32(min(11699u, 9790u), ~var_0.c.x))));
}

fn func_6(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = abs(-vec4<i32>(min(u_input.b, ~56187i), u_input.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<i32>(-2147483647i, u_input.b, 2147483647i, 1i) & vec4<i32>(9555i, u_input.b, 5825i, -2147483647i)), u_input.b));
    var var_1 = func_4(func_4(func_4(Struct_4(false, func_4(Struct_4(true, Struct_2(u_input.c.x, Struct_1(u_input.a.x), arg_1), u_input.c, Struct_2(u_input.c.x, Struct_1(3890u), 113f)), vec3<bool>(false, true, false), Struct_4(true, Struct_2(2262u, Struct_1(57034u), -411f), u_input.c, Struct_2(u_input.c.x, Struct_1(u_input.c.x), arg_0)), Struct_1(u_input.a.x)).b, ~vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.a.x), func_2(vec3<i32>(var_0.x, -49748i, var_0.x)).b), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), Struct_4(any(vec3<bool>(true, false, false)), Struct_2(u_input.c.x, Struct_1(1u), arg_0), vec4<u32>(4294967295u, 1512u, u_input.a.x, 0u), Struct_2(13076u, Struct_1(u_input.a.x), arg_0)), func_2(abs(vec3<i32>(1i, -58045i, -7959i))).d.b), !vec3<bool>(true, all(vec4<bool>(false, false, false, false)), false), Struct_4(any(vec3<bool>(true, true, true)), func_4(Struct_4(false, Struct_2(112766u, Struct_1(28563u), arg_0), vec4<u32>(0u, u_input.a.x, 28903u, u_input.c.x), Struct_2(u_input.a.x, Struct_1(u_input.a.x), 597f)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), func_2(var_0.zzy), func_4(Struct_4(false, Struct_2(0u, Struct_1(u_input.c.x), arg_0), u_input.c, Struct_2(37748u, Struct_1(u_input.c.x), 725f)), vec3<bool>(false, true, false), Struct_4(false, Struct_2(30953u, Struct_1(21510u), arg_1), vec4<u32>(31890u, u_input.c.x, u_input.c.x, u_input.c.x), Struct_2(u_input.c.x, Struct_1(u_input.c.x), arg_0)), Struct_1(55366u)).b.b).b, ~vec4<u32>(u_input.c.x, 0u, 0u, u_input.c.x), Struct_2(120406u << (1u % 32u), Struct_1(61355u), _wgslsmith_f_op_f32(-arg_0))), Struct_1(~func_2(var_0.wyy).d.a)), !vec3<bool>(false, u_input.c.x < 35764u, true), func_2(-var_0.xzx), Struct_1(u_input.c.x)).b;
    let var_2 = Struct_2((4294967295u ^ max(~0u, ~var_1.b.a)) ^ reverseBits(_wgslsmith_dot_vec4_u32(~u_input.c, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 73264u, u_input.c.x, 12412u), u_input.c))), var_1.b, _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, var_1.b.a, 1u, 31658u), _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(var_1.b.a, 21646u, u_input.a.x, var_1.b.a))), vec4<u32>(~0u, ~u_input.c.x, 13893u, _wgslsmith_div_u32(0u, 1u))), u_input.c.wx)));
    let var_3 = Struct_4(true, func_4(Struct_4(true, Struct_2(var_1.b.a, var_2.b, 1f), ~(u_input.c ^ vec4<u32>(u_input.c.x, 83193u, u_input.c.x, u_input.a.x)), var_2), !vec3<bool>(true, true, var_0.x < -2147483647i), func_4(Struct_4(true, var_2, vec4<u32>(1u, 29336u, 0u, 66694u) & vec4<u32>(13862u, 0u, 34793u, u_input.c.x), var_2), vec3<bool>(true, true, true), Struct_4(false, var_2, abs(u_input.c), func_4(Struct_4(false, Struct_2(0u, Struct_1(4294967295u), var_2.c), u_input.c, var_2), vec3<bool>(false, true, false), Struct_4(false, Struct_2(5136u, var_1.b, var_2.c), u_input.c, var_2), var_2.b).d), Struct_1(_wgslsmith_div_u32(0u, 36646u))), Struct_1(countOneBits(50267u))).d, ~(~(u_input.c >> (vec4<u32>(u_input.a.x, 23834u, u_input.a.x, 54447u) % vec4<u32>(32u))) >> (~(vec4<u32>(1u, 42470u, 0u, u_input.a.x) ^ u_input.c) % vec4<u32>(32u))), Struct_2(~(~(u_input.c.x & var_2.b.a)), func_2(vec3<i32>(-var_0.x, u_input.b, ~19307i)).b.b, -835f));
    let var_4 = _wgslsmith_clamp_vec3_u32(var_3.c.yzx, ~(~vec3<u32>(var_2.b.a, var_1.a, var_3.d.b.a) & u_input.c.ywz) << (~(~vec3<u32>(var_3.b.a, var_2.a, u_input.c.x)) % vec3<u32>(32u)), ~(~(~u_input.c.yyx)));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(u_input.b, min(2147483647i, 0i));
    let var_1 = func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(381f, -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -925f)) * -137f), 1534f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c, u_input.c.yy))), 665f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 141f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(731f + 1074f)))));
    var var_2 = ~(~var_1.a);
    var_2 = ~4294967295u;
    let var_3 = u_input.c & vec4<u32>(_wgslsmith_clamp_u32(max(24038u, var_1.a), ~(~42265u), ~u_input.a.x >> (_wgslsmith_add_u32(1u, u_input.a.x) % 32u)), 4294967295u, ~1u, ~func_5(var_1.a, vec3<bool>(false, true, true), Struct_4(false, Struct_2(1u, Struct_1(var_1.a), -491f), vec4<u32>(u_input.c.x, 0u, 0u, 4294967295u), Struct_2(u_input.a.x, Struct_1(var_1.a), -289f)), 91384u).x ^ 45307u);
    var_2 = ~(~(~(var_1.a ^ _wgslsmith_dot_vec2_u32(u_input.c.ww, vec2<u32>(var_3.x, var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1467f, -3168f), select(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, 2147483647i, 2147483647i), vec3<i32>(-27791i, var_0, 31057i), vec3<i32>(var_0, -2147483647i, var_0)), ~reverseBits(vec3<i32>(-35541i, u_input.b, -1i))), var_1.a == max(var_1.a << (1104u % 32u), abs(1u))), -(~vec4<i32>(2147483647i, u_input.b, u_input.b ^ -1i, var_0)), -1i, ~(~(~firstLeadingBit(0i))));
}

