struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 1i);

var<private> global1: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = 1u;
    var var_1 = arg_0.x;
    let var_2 = Struct_2(Struct_1(min(1u, _wgslsmith_dot_vec3_u32(u_input.a & u_input.a, ~vec3<u32>(33174u, var_0, var_0))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(577f, arg_2.c, 408f, 192f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1092f, -615f, -1422f, arg_2.c), arg_2.b))))), arg_2.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.d.x, -190f), arg_2.d))), global0.x, arg_2);
    var_1 = arg_0.x;
    global1 = min(arg_2.a | ~arg_2.a, select(~4294967295u, _wgslsmith_clamp_u32(abs(var_0), arg_2.a, u_input.a.x), true)) | 30429u;
    return _wgslsmith_f_op_vec4_f32(var_2.a.b - arg_2.b);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 27768u), vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(false, false, true), true, Struct_1(0u, vec4<f32>(396f, 380f, -891f, -675f), -638f, vec2<f32>(304f, 576f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)))))), _wgslsmith_f_op_f32(floor(-1489f)), vec2<f32>(_wgslsmith_f_op_f32(round(544f)), -1101f));
    var var_1 = !any(vec2<bool>(true, any(vec4<bool>(true, false, false, true))));
    let var_2 = Struct_3(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f) - _wgslsmith_div_f32(1741f, var_0.d.x)) <= _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true, true), all(vec2<bool>(true, false)), Struct_1(u_input.a.x, vec4<f32>(-1738f, -1000f, var_0.d.x, var_0.b.x), -1824f, vec2<f32>(var_0.d.x, var_0.d.x)))).x), Struct_2(var_0, ~_wgslsmith_sub_i32(22347i, select(17391i, global0.x, true)), Struct_1(var_0.a >> (1u % 32u), vec4<f32>(var_0.b.x, 1905f, _wgslsmith_f_op_f32(select(-682f, var_0.c, true)), _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.d.x, -2233f)))), var_0.d)), Struct_2(Struct_1(u_input.b, vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(sign(var_0.c)), _wgslsmith_f_op_f32(abs(1086f)), _wgslsmith_f_op_f32(-var_0.d.x)), 1f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.xw))), ~_wgslsmith_clamp_i32(global0.x | global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, -2147483647i), vec3<i32>(global0.x, -17440i, -2147483647i)), i32(-1i) * -2147483647i), Struct_1(reverseBits(19192u << (u_input.b % 32u)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c, 327f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true, false), true, Struct_1(0u, var_0.b, var_0.c, vec2<f32>(var_0.c, -1418f)))).wx)))), true);
    var_1 = var_2.a;
    let var_3 = !vec4<bool>(!(!var_2.a), false, false, all(!vec2<bool>(var_2.a, false)));
    return var_2.b.a;
}

fn func_1() -> Struct_1 {
    var var_0 = 16705u;
    var var_1 = func_2();
    var_1 = func_2();
    let var_2 = Struct_1(max(79556u, firstLeadingBit(_wgslsmith_mult_u32(4294967295u, min(var_1.a, var_1.a)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - -1793f) + -404f))), _wgslsmith_f_op_f32(-556f + _wgslsmith_f_op_f32(-1149f - _wgslsmith_f_op_f32(394f + var_1.c))), var_1.d.x, var_1.b.x), _wgslsmith_f_op_f32(-var_1.d.x), var_1.d);
    var var_3 = vec3<i32>(global0.x, countOneBits(-(global0.x | global0.x)), ~(~global0.x));
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    global1 = 59800u;
    let var_0 = abs(global0.x);
    let var_1 = 294f;
    var var_2 = arg_2.x;
    global1 = _wgslsmith_dot_vec2_u32(u_input.a.zx, ~arg_2.zz | vec2<u32>(40888u, countOneBits(min(arg_1.a.a, u_input.a.x))));
    return Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -918f), _wgslsmith_f_op_f32(var_1 * 676f), func_1().b.x, _wgslsmith_f_op_f32(var_1 - arg_0.a.d.x)) + _wgslsmith_f_op_vec4_f32(step(arg_0.c.b, _wgslsmith_f_op_vec4_f32(-arg_1.a.b)))), var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(arg_1.a.d, arg_1.a.b.wx)), _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true, true), true, arg_1.a)).xw)))), i32(-1i) * -54659i, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(func_1(), global0.x, func_1()), Struct_2(func_1(), (-global0.x >> (firstLeadingBit(u_input.b) % 32u)) & global0.x, Struct_1(10073u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1176f, 1223f, -1459f, -922f)))), _wgslsmith_f_op_f32(func_1().c - _wgslsmith_f_op_f32(min(437f, 102f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-191f, -1220f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1078f, 1000f)))))), firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), 1u, u_input.b >> (u_input.b % 32u), 1u) & vec4<u32>(4294967295u, ~u_input.b, countOneBits(u_input.b), u_input.b << (u_input.a.x % 32u))));
    let var_1 = Struct_3(true, Struct_2(var_0.a, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-22772i, global0.x), vec2<i32>(0i, -1i)) << (~var_0.c.a % 32u), select(~global0.x, -1i, -397f >= var_0.c.c)), func_2()), Struct_2(func_1(), 0i, var_0.a), !(_wgslsmith_div_i32(var_0.b, -2147483647i) < _wgslsmith_mod_i32(abs(global0.x), -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(global0.x, min(abs(_wgslsmith_sub_i32(global0.x, 1987i)), var_1.b.b), !var_1.a), firstLeadingBit(~(~(-vec3<i32>(global0.x, 0i, var_1.c.b)))), var_0.b, var_1.b.a.b);
}

