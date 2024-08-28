struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    let var_0 = !select(select(!select(vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(true, arg_1.x, true, false), false), select(select(vec4<bool>(arg_1.x, arg_1.x, false, false), vec4<bool>(true, true, true, false), true), !vec4<bool>(true, false, arg_1.x, false), !vec4<bool>(arg_1.x, arg_1.x, false, true)), !any(vec3<bool>(false, true, true))), select(select(!vec4<bool>(false, arg_1.x, true, arg_1.x), select(vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), select(true, arg_1.x, arg_1.x)), vec4<bool>(!arg_1.x, any(arg_1), arg_1.x, false), u_input.c > ~arg_0), arg_1.x);
    return 565f;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-776f, _wgslsmith_f_op_f32(-1f), -704f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 372f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-166f))))), vec4<f32>(_wgslsmith_f_op_f32(1024f + _wgslsmith_f_op_f32(func_3(48798u | arg_1.a.a, vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(637f, -1063f))), -592f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_u32(1u, u_input.e), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(750f, -331f)))))), all(vec4<bool>(true, true, true, select(u_input.c, 36551u, false) == ~1u))));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(1u), u_input.a), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(5495u, reverseBits(arg_0)), vec2<u32>(u_input.a << (u_input.a % 32u), ~1u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(8274u, 35216u), vec2<u32>(~arg_0, abs(arg_1.a.a)), ~(~vec2<u32>(41298u, 1u)))));
    var_0 = vec4<f32>(var_0.x, -1412f, var_0.x, _wgslsmith_f_op_f32(round(var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2499f, -1289f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f) + vec4<f32>(-733f, -395f, var_0.x, -744f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1187f, var_0.x, var_0.x, -1058f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(530f, var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 711f, 771f, var_0.x) - vec4<f32>(var_0.x, -1093f, var_0.x, -1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1130f, var_0.x, var_0.x, -1316f) * vec4<f32>(448f, -274f, var_0.x, 897f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 765f, var_0.x, var_0.x), vec4<f32>(573f, var_0.x, var_0.x, var_0.x))))))));
    return _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.b | u_input.b, 2147483647i) & min(~vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(1i, -25917i)), -(~firstTrailingBit(vec2<i32>(-1i, 15508i)))), abs(-abs(vec2<i32>(0i, u_input.b))));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = reverseBits(~vec3<u32>(13376u, _wgslsmith_clamp_u32(~0u, u_input.e, 4294967295u), 80872u));
    let var_1 = ~_wgslsmith_div_vec3_i32(reverseBits(~vec3<i32>(-15940i, 41007i, 0i)), vec3<i32>(u_input.b, 1i, ~(-112552i))) | select(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, arg_1.x, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(-53851i, u_input.d, -10417i), vec3<i32>(u_input.d, -2147483647i, -10330i))), min(vec3<i32>(1i, arg_1.x, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, u_input.d), vec3<i32>(arg_1.x, 1i, -81735i)))), min(-_wgslsmith_add_vec3_i32(vec3<i32>(-23111i, -1398i, u_input.b), vec3<i32>(-52237i, arg_1.x, u_input.b)), vec3<i32>(-49845i, ~2147483647i, countOneBits(-1i))), arg_0);
    var var_2 = false;
    var_0 = firstTrailingBit(select(~((vec3<u32>(u_input.a, var_0.x, arg_3.a.a) & vec3<u32>(4294967295u, 6368u, var_0.x)) & vec3<u32>(13199u, var_0.x, arg_3.a.a)), countOneBits(max(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.a.a, 0u, var_0.x), vec3<u32>(15567u, 1u, var_0.x)), vec3<u32>(u_input.e, 4294967295u, 67343u))), arg_0));
    var var_3 = arg_0 == (~(~(~0u)) == _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3.a.a, 17438u, var_0.x, 48842u) >> (countOneBits(vec4<u32>(4294967295u, u_input.c, arg_3.a.a, 4294967295u)) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, arg_3.a.a, var_0.x), vec4<u32>(u_input.c, var_0.x, var_0.x, 77736u)), vec4<u32>(arg_3.a.a, 8210u, u_input.e, 1u), !vec4<bool>(true, true, arg_0, false))));
    return arg_3;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = func_4(true, -vec2<i32>(func_2(abs(u_input.a), Struct_2(arg_0.a)), u_input.b), -1228f, Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a.a, 4294967295u, u_input.e), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0.a.a, 4294967295u), vec3<u32>(u_input.e, arg_0.a.a, 1u))))));
    var var_1 = (1714f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-396f)))))) & !all(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)));
    let var_2 = func_4(all(select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), vec2<bool>(false, true), !all(vec2<bool>(false, true)))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 49820i), abs(vec2<i32>(u_input.b, 2147483647i)), vec2<i32>(u_input.b ^ u_input.d, _wgslsmith_div_i32(1i, u_input.d))), -1219f, Struct_2(arg_0.a));
    let var_3 = arg_0.a;
    var var_4 = vec2<bool>(true, true);
    return var_2.a;
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 12647u, arg_0.a.a), vec3<u32>(40760u, arg_0.a.a, u_input.a)), u_input.c, 1u, 46803u), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.c, 49822u, arg_0.a.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 1u, arg_0.a.a, 1u), vec4<u32>(arg_0.a.a, arg_0.a.a, 1u, 49855u))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), any(vec2<bool>(false, true)))), _wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.a, arg_0.a.a, u_input.a, arg_0.a.a), vec4<u32>(arg_0.a.a, u_input.c, u_input.a, arg_0.a.a))), vec4<u32>(abs(arg_0.a.a), 19172u, min(arg_0.a.a, arg_0.a.a), ~26700u))) > 0u;
    var var_1 = firstTrailingBit(firstTrailingBit(~vec2<u32>(~u_input.a, 0u)));
    var var_2 = arg_0.a;
    var var_3 = func_1(arg_0);
    var_2 = Struct_1(12833u);
    return -48201i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-156f, -726f), vec2<f32>(1283f, -750f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(703f, -1040f)), true)))));
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(func_5(Struct_2(func_1(Struct_2(Struct_1(u_input.e))))), u_input.d, 46483i, _wgslsmith_sub_i32(-_wgslsmith_mod_i32(u_input.b, u_input.d), firstTrailingBit(_wgslsmith_add_i32(-2147483647i, u_input.b)))), vec4<i32>(2147483647i, abs(_wgslsmith_div_i32(u_input.b, func_2(1u, Struct_2(Struct_1(63043u))))), u_input.d, _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(24258i, -30182i, u_input.d, 20605i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<i32>(firstLeadingBit(-22507i), ~1i, u_input.d ^ u_input.d, -41237i))));
    var var_2 = vec3<u32>(select(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(37602u, 7544u, 4294967295u), vec3<u32>(u_input.c, 1u, 1331u)), u_input.e), ~_wgslsmith_mult_u32(max(1u, u_input.e), _wgslsmith_mod_u32(0u, u_input.e)), -122f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(func_3(10628u, vec2<bool>(true, false))))), ~u_input.a, _wgslsmith_add_u32(reverseBits(~u_input.c), 64089u));
    let var_3 = func_4(all(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), select(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, -1i, u_input.d), var_1.wzz), var_1.xxx), _wgslsmith_mod_i32(~var_1.x, u_input.d)), vec2<i32>(-u_input.b, firstTrailingBit(u_input.d)), vec2<bool>(true, true)), var_0.x, func_4((var_0.x < var_0.x) != any(vec3<bool>(true, true, true)), firstTrailingBit(var_1.yy), _wgslsmith_f_op_f32(max(-180f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * 868f), -499f, true)))), func_4(all(vec2<bool>(false, true)), vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(var_1, var_1)), 892f, func_4(select(true, false, true), var_1.yz, _wgslsmith_f_op_f32(361f + var_0.x), Struct_2(Struct_1(46048u))))));
    var var_4 = var_1.yyy | vec3<i32>(i32(-1i) * -firstLeadingBit(12965i), -2147483647i, firstTrailingBit(38055i));
    var_2 = abs(~_wgslsmith_div_vec3_u32(~vec3<u32>(var_2.x, 26392u, u_input.a) >> (~vec3<u32>(34530u, 4294967295u, 16794u) % vec3<u32>(32u)), vec3<u32>(var_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(88807u, 53890u, 1u)), ~u_input.a)));
    var_4 = (~firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(23770i, 1i, var_4.x), vec3<i32>(-59802i, 37146i, -15316i))) << (vec3<u32>(max(4294967295u, _wgslsmith_clamp_u32(17422u, 25629u, 4294967295u)), ~(~var_3.a.a), _wgslsmith_add_u32(reverseBits(var_3.a.a), _wgslsmith_sub_u32(4294967295u, 0u))) % vec3<u32>(32u))) >> (select(~vec3<u32>(~u_input.a, var_3.a.a, 1u), ~vec3<u32>(var_3.a.a, ~var_3.a.a, 10315u), !select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))) % vec3<u32>(32u));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(var_0.x, 1288f)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -483f) - _wgslsmith_div_f32(var_0.x, -521f)))));
    var_2 = min(reverseBits(abs(~select(vec3<u32>(19069u, 52020u, 4294967295u), vec3<u32>(4294967295u, var_3.a.a, var_3.a.a), true))), _wgslsmith_div_vec3_u32(~(~(~vec3<u32>(var_2.x, var_3.a.a, 20891u))), _wgslsmith_div_vec3_u32(vec3<u32>(~var_2.x, max(u_input.c, 32424u), var_3.a.a), vec3<u32>(4294967295u, _wgslsmith_div_u32(var_2.x, u_input.a), var_3.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.zx, 14929i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1417f, -1000f, var_5)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-196f, -727f, var_0.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_5, var_5))), any(vec4<bool>(true, true, false, true)))) - vec3<f32>(-518f, var_5, _wgslsmith_f_op_f32(-var_5))), select(vec3<bool>(true, true, all(vec2<bool>(false, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, false, false))), true))), 10704i, ~0u);
}

