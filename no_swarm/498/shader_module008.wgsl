struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> i32 {
    let var_0 = ~_wgslsmith_div_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(global0.c.x, 41428i), _wgslsmith_sub_i32(~20704i, arg_2.a), 2147483647i), ~(vec3<i32>(-1i) * -global0.c.yzz));
    var var_1 = vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.b.x)))) - arg_0.b.x) - _wgslsmith_f_op_f32(ceil(global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -809f), _wgslsmith_f_op_f32(trunc(arg_0.b.x)), arg_0.a <= -2147483647i)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))));
    var var_2 = abs(select(i32(-1i) * -1231i, reverseBits(arg_1), -var_0.x > u_input.a.x) | global0.b);
    var var_3 = firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.x, arg_2.b.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1998f, global0.a.x)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.b.x, arg_2.b.x)))), _wgslsmith_f_op_vec2_f32(arg_2.b + _wgslsmith_f_op_vec2_f32(-global0.a.yz)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b + global0.a.ww))));
    return _wgslsmith_sub_i32(~((-9004i | arg_0.a) & -arg_1) | global0.c.x, 28541i);
}

fn func_2() -> Struct_2 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global0.a))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(~0i, reverseBits(u_input.c), 0i, -1i), ~abs(vec4<i32>(-8279i, 11901i, global0.c.x, 0i)), false), vec4<i32>(~1i, u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, u_input.a.x, -28313i, u_input.c), vec4<i32>(1i, u_input.c, global0.c.x, global0.b)), func_3(Struct_2(-10251i, global0.a.xw, vec3<bool>(true, true, true)), -1i, Struct_2(-20575i, vec2<f32>(-390f, global0.a.x), vec3<bool>(true, true, false))) | firstLeadingBit(-5225i))), firstLeadingBit(vec4<i32>(~564i, 7990i, 1i, -global0.c.x)));
    let var_0 = abs(vec3<u32>(u_input.b.x, u_input.b.x | u_input.b.x, u_input.b.x) << (~(~vec3<u32>(0u, 4294967295u, u_input.b.x) << (_wgslsmith_sub_vec3_u32(vec3<u32>(101952u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 48048u, u_input.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = select(firstTrailingBit(abs(vec2<i32>(global0.c.x << (15278u % 32u), _wgslsmith_clamp_i32(-4884i, -1i, u_input.a.x)))), vec2<i32>(1i >> (var_0.x % 32u), reverseBits(_wgslsmith_div_i32(u_input.c, global0.b))) & (countOneBits(global0.c.yy << (vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u))) ^ vec2<i32>(1i, ~(-82441i))), any(!vec4<bool>(-1408f <= global0.a.x, true, true, any(vec4<bool>(false, false, true, true)))));
    var var_2 = vec3<u32>(0u, ~(~(~_wgslsmith_div_u32(13885u, u_input.b.x))), var_0.x);
    let var_3 = global0.a.zw;
    return Struct_2(~5217i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1994f, _wgslsmith_f_op_f32(var_3.x + global0.a.x))), _wgslsmith_f_op_vec2_f32(-global0.a.xy)), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = func_2();
    global0 = Struct_1(vec4<f32>(287f, _wgslsmith_f_op_f32(f32(-1f) * -1106f), global0.a.x, 1643f), 0i, global0.c);
    var var_1 = !(!any(select(var_0.c, var_0.c, arg_1.yyw)) & true);
    var_1 = all(arg_1);
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(~arg_0.yyz, arg_0.yxw), _wgslsmith_add_u32(u_input.b.x, 1u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(var_0.b.x, -1430f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, var_0.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -575f)), 1094f)), var_0.a, vec4<i32>(var_0.a, var_0.a, _wgslsmith_clamp_i32(abs(countOneBits(var_0.a)), max(-var_0.a, arg_2 << (u_input.b.x % 32u)), _wgslsmith_mult_i32(~arg_2, select(var_0.a, var_0.a, false))), u_input.a.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    global0 = arg_1;
    let var_0 = ~_wgslsmith_div_u32(~(~4654u), u_input.b.x);
    let var_1 = func_2();
    var var_2 = -212f;
    var_2 = _wgslsmith_f_op_f32(floor(951f));
    return Struct_2(firstTrailingBit(countOneBits(_wgslsmith_sub_i32(u_input.c, arg_1.b))), var_1.b, vec3<bool>(var_1.c.x, false, true));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>) -> Struct_2 {
    global0 = func_1(~min(select(~vec4<u32>(u_input.b.x, arg_1, u_input.b.x, 104477u), ~vec4<u32>(u_input.b.x, 0u, 1u, u_input.b.x), arg_2.x), vec4<u32>(u_input.b.x ^ 4910u, 25638u & u_input.b.x, u_input.b.x & u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, u_input.b.x, arg_1, arg_1), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)))), !vec4<bool>(true, ~u_input.b.x > ~arg_1, true, arg_2.x), firstTrailingBit(global0.c.x));
    var var_0 = -1259f;
    var_0 = arg_0.b.x;
    var var_1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-115f, -1873f, arg_0.c.x)) + -494f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-421f * arg_0.b.x)))));
    return func_2();
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = var_0;
    var var_2 = ~(~max(~(~1u), max(countOneBits(u_input.b.x), _wgslsmith_div_u32(0u, 4294967295u))));
    let var_3 = 1u > _wgslsmith_mult_u32(0u, u_input.b.x);
    var var_4 = _wgslsmith_mult_vec4_i32(-(vec4<i32>(-1i) * -(vec4<i32>(var_0.a, arg_3.x, -1i, global0.c.x) & vec4<i32>(2147483647i, -24099i, arg_0.a, 2147483647i))), countOneBits(~(-global0.c)) & -(~vec4<i32>(-1i, -2147483647i, -33281i, arg_1.c.x)));
    return func_2();
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = func_1(select(vec4<u32>(0u, ~u_input.b.x, ~u_input.b.x, ~20965u) >> (~(~vec4<u32>(4294967295u, u_input.b.x, 4294967295u, u_input.b.x)) % vec4<u32>(32u)), ~(~vec4<u32>(0u, u_input.b.x, 38901u, u_input.b.x)) ^ select(vec4<u32>(0u, u_input.b.x, 4569u, 63553u), vec4<u32>(19180u, 45104u, 30683u, u_input.b.x), true), select(arg_1, true, arg_1)), vec4<bool>(true, arg_0.c.x, true, true), _wgslsmith_add_i32(-2147483647i, u_input.a.x));
    let var_1 = Struct_1(global0.a, 0i, -(~vec4<i32>(~var_0.b, ~(-3088i), 33753i, -2147483647i)));
    global0 = func_1(vec4<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, 12464u & ~u_input.b.x), firstTrailingBit(_wgslsmith_div_u32(~u_input.b.x, abs(u_input.b.x))), ~(~_wgslsmith_add_u32(u_input.b.x, 4294967295u))), !vec4<bool>(!arg_2.c.x, false, true, true), abs(arg_2.a << (0u % 32u)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, -842f, -347f, -155f), vec4<f32>(var_1.a.x, -1851f, arg_0.b.x, var_0.a.x), vec4<bool>(arg_2.c.x, arg_2.c.x, arg_1, arg_1))), _wgslsmith_div_vec4_f32(vec4<f32>(1381f, global0.a.x, 672f, -524f), var_1.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -301f, arg_0.b.x, -716f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.b.x, arg_0.b.x, 434f, 668f), arg_3.a, vec4<bool>(false, arg_1, arg_2.c.x, false))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.a.x, arg_0.b.x, arg_2.b.x, 658f)))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, -abs(arg_0.a), 2147483647i), select((vec4<i32>(0i, arg_0.a, arg_3.c.x, var_0.c.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) & max(var_0.c, var_0.c), ~(-vec4<i32>(9904i, global0.c.x, 1i, arg_2.a)), arg_0.c.x)), abs(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.a, -15948i, -39354i, arg_2.a), ~vec4<i32>(arg_3.c.x, arg_0.a, 2147483647i, 0i), ~global0.c))));
    global0 = var_1;
    return Struct_2(_wgslsmith_clamp_i32(arg_2.a, -u_input.a.x, -6301i), _wgslsmith_f_op_vec2_f32(min(func_6(func_6(Struct_2(27078i, vec2<f32>(1774f, global0.a.x), vec3<bool>(arg_0.c.x, false, arg_1)), func_1(vec4<u32>(u_input.b.x, 47325u, u_input.b.x, u_input.b.x), vec4<bool>(false, arg_1, arg_1, true), 1i), 1000f, vec3<i32>(-2147483647i, u_input.a.x, 6119i) | vec3<i32>(arg_0.a, global0.c.x, var_1.b)), arg_3, -1000f, vec3<i32>(var_1.c.x, ~arg_3.b, -1i)).b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)), 555f))), select(arg_0.c, func_6(func_5(Struct_2(arg_0.a, vec2<f32>(arg_2.b.x, -873f), arg_0.c), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), func_6(arg_2, arg_3, 719f, vec3<i32>(-83541i, -1i, 1i)).c.yz), Struct_1(vec4<f32>(var_1.a.x, 1000f, arg_2.b.x, -419f), max(1i, global0.c.x), var_0.c), _wgslsmith_f_op_f32(floor(global0.a.x)), arg_3.c.yyx).c, select(arg_0.c, !arg_0.c, !(!vec3<bool>(arg_1, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x)))), global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -2173f)) + global0.a.x), _wgslsmith_f_op_f32(984f * -994f)));
    var var_1 = func_7(Struct_2(740i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 227f)), _wgslsmith_f_op_vec2_f32(global0.a.wz * global0.a.wz))) + _wgslsmith_f_op_vec2_f32(global0.a.wz + vec2<f32>(var_0.x, global0.a.x))), vec3<bool>(true, true, true)), any(vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), true)), func_6(func_5(func_4(_wgslsmith_f_op_vec2_f32(-var_0.zx), func_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(false, true, false, false), -2147483647i)), 1396u, vec2<bool>(true, true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -678f), -528f, _wgslsmith_f_op_f32(-970f + -826f), 130f), max(u_input.c, 24162i), global0.c), 1000f, vec3<i32>(global0.c.x, abs(~u_input.a.x), func_4(global0.a.xx, Struct_1(global0.a, -1i, vec4<i32>(global0.c.x, -2147483647i, -1i, -1i))).a | u_input.c)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<bool>(true, true, false, false), global0.c.x).a)), 1i, -global0.c));
    let var_2 = _wgslsmith_f_op_vec2_f32(-func_2().b);
    global0 = func_1(~vec4<u32>(reverseBits(_wgslsmith_sub_u32(u_input.b.x, 1u)), abs(abs(29892u)), ~u_input.b.x, 29445u), !(!select(select(vec4<bool>(false, var_1.c.x, var_1.c.x, true), vec4<bool>(false, true, var_1.c.x, true), vec4<bool>(true, true, var_1.c.x, false)), !vec4<bool>(false, false, false, var_1.c.x), vec4<bool>(var_1.c.x, true, var_1.c.x, false))), 1i);
    let var_3 = _wgslsmith_clamp_u32(abs(~4294967295u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(37828u, u_input.b.x, _wgslsmith_add_u32(~61497u, 44633u), abs(100869u ^ u_input.b.x)), ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, 1u, 4294967295u, u_input.b.x)), vec4<u32>(5647u, u_input.b.x, u_input.b.x, 4294967295u))));
    global0 = func_1(~max(countOneBits(vec4<u32>(var_3, 0u, var_3, var_3)), ~vec4<u32>(u_input.b.x, u_input.b.x, 0u, var_3)) | _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(var_3, var_3, var_3, 64195u)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, 27178u, var_3, 4294967295u)), vec4<u32>(107349u, var_3, var_3, 29797u)), ~(~vec4<u32>(u_input.b.x, 363u, var_3, u_input.b.x))), !select(!select(vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x), vec4<bool>(true, false, false, false), false), !select(vec4<bool>(false, false, var_1.c.x, true), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), false), all(select(vec4<bool>(var_1.c.x, true, true, true), vec4<bool>(var_1.c.x, false, true, var_1.c.x), vec4<bool>(false, var_1.c.x, false, false)))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-u_input.c, global0.c.x >> (13837u % 32u), ~var_1.a), _wgslsmith_mod_i32(-6177i, func_4(vec2<f32>(501f, -258f), Struct_1(var_0, -7405i, vec4<i32>(1i, -1i, u_input.c, -2147483647i))).a)), -countOneBits(~global0.c.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a.x, var_1.a), _wgslsmith_div_i32(var_1.a & var_1.a, global0.b | var_1.a))));
    var var_4 = Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - 764f) * var_1.b.x), _wgslsmith_f_op_f32(trunc(-919f)))), vec3<bool>(true, true, true));
    global0 = func_1(max(~(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, var_3)), ~firstLeadingBit(vec4<u32>(var_3, var_3, var_3, var_3))), !select(vec4<bool>(true, true, true, true), vec4<bool>(all(var_1.c), select(var_4.c.x, var_1.c.x, true), !var_1.c.x, var_4.c.x), false), _wgslsmith_mult_i32(u_input.a.x, -2147483647i));
    global0 = func_1(_wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 1u, u_input.b.x, 1u), ~(~(~vec4<u32>(1u, 1u, 3220u, 65941u)))), !vec4<bool>(false, var_1.c.x, true, true), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, var_0.zw);
}

