struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = false;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<u32> {
    global1 = any(select(vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), !(firstTrailingBit(0u) == u_input.b)));
    global1 = !((_wgslsmith_mod_u32(74285u >> (u_input.b % 32u), 40160u) == _wgslsmith_div_u32(reverseBits(u_input.b), min(0u, u_input.b))) | true);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -324f))));
    var var_0 = select(select(vec3<bool>(false, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(u_input.c < 32169i, true, true), vec3<bool>(true, true, all(vec3<bool>(false, true, false)))), vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(5000i, -1i), vec2<i32>(u_input.a, u_input.d)) > abs(u_input.a), select(4294967295u != u_input.b, select(false, false, true), all(vec2<bool>(false, true))), any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)))), select(vec3<bool>(!any(vec2<bool>(false, false)), -960f != _wgslsmith_f_op_f32(round(-1778f)), true), !vec3<bool>(all(vec3<bool>(false, false, false)), true, any(vec2<bool>(false, false))), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), vec3<bool>(25926i == (countOneBits(u_input.c) ^ ~7433i), false, select(true, false, any(vec2<bool>(true, true)) && false)));
    var var_1 = Struct_1(vec4<i32>(-8142i, firstTrailingBit(1i) ^ 2147483647i, 1i, u_input.d));
    return firstLeadingBit(~(~(select(vec4<u32>(u_input.b, 58867u, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, 23606u, 0u), var_0.x) | (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(297u, 1u, 0u, 20621u) % vec4<u32>(32u))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-arg_1)))), 5113u, Struct_1(~vec4<i32>(13926i, arg_2.d.x, 61020i, u_input.d) >> (~func_3() % vec4<u32>(32u))), arg_2.c.yz);
    global1 = ~0u <= _wgslsmith_mod_u32(reverseBits(arg_2.c.x) & u_input.b, 4294967295u);
    let var_1 = true;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + 1104f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2637f))));
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-210f, -1405f)), -887f) - vec2<f32>(arg_1.a, arg_1.a));
    var var_3 = arg_1.c;
    let var_4 = select(vec4<bool>(!(!arg_2), true, arg_2, !all(!vec4<bool>(false, false, true, arg_2))), !vec4<bool>(false, false, true && (arg_2 & false), true), arg_2 || (all(vec3<bool>(arg_2, false, false)) | (_wgslsmith_mult_i32(arg_0.c.a.x, 49620i) != _wgslsmith_sub_i32(u_input.c, -42315i))));
    return Struct_1(~vec4<i32>(-1i, _wgslsmith_clamp_i32(40220i, 1i, -1i), ~(-108348i), arg_1.c.a.x | 22672i) << (countOneBits(~vec4<u32>(36749u, 7227u, arg_0.d.x, 18235u) >> (firstLeadingBit(vec4<u32>(u_input.b, arg_3, arg_0.b, arg_1.b)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> vec2<f32> {
    global0 = _wgslsmith_f_op_f32(-arg_1.a);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-285f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, 961f) - _wgslsmith_f_op_f32(trunc(696f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, 977f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1177f, arg_1.a, -2024f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1853f, -1490f, arg_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1424f, arg_1.a, 514f) * vec3<f32>(1244f, 2719f, arg_1.a))))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, 369f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-867f, arg_1.a, -278f), vec3<f32>(arg_1.a, 240f, arg_1.a), true))) - vec3<f32>(func_2(vec4<bool>(true, true, true, false), 1315f, Struct_3(false, 29805u, vec3<u32>(1u, 1u, u_input.b), vec2<i32>(-6541i, 2147483647i))).a, _wgslsmith_f_op_f32(-arg_1.a), arg_1.a)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-411f, arg_1.a, -543f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a, arg_1.a, 2469f))))))));
    var var_1 = 694f;
    let var_2 = vec4<i32>(-9191i, arg_3, -1i ^ _wgslsmith_div_i32(-2147483647i, _wgslsmith_clamp_i32(38764i, 0i, arg_1.c.a.x)), -(arg_1.c.a.x | ~arg_3));
    var_1 = _wgslsmith_f_op_f32(-arg_1.a);
    return vec2<f32>(var_0.x, arg_1.a);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_3 {
    global0 = 1056f;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(func_4(func_2(vec4<bool>(false, arg_0, arg_0, true), _wgslsmith_f_op_f32(-474f * -397f), Struct_3(true, 25955u, vec3<u32>(0u, u_input.b, u_input.b), arg_2.xy)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -749f), u_input.b, arg_1, func_3().wy), u_input.b >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 57496u), vec4<u32>(0u, 1u, 0u, 71967u)), abs(u_input.b)), func_2(select(!vec4<bool>(arg_0, true, true, false), !vec4<bool>(false, true, false, arg_0), arg_0 | true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f - -383f)), Struct_3(select(false, false, false), ~u_input.b, ~vec3<u32>(u_input.b, 14916u, 48243u), ~vec2<i32>(-43705i, -4183i))), 19086u, ~u_input.d)));
    return Struct_3(arg_0, func_3().x, vec3<u32>(func_2(vec4<bool>(var_0.x == -321f, var_0.x != var_0.x, true, false), -866f, Struct_3(any(vec4<bool>(arg_0, arg_0, false, arg_0)), func_2(vec4<bool>(false, arg_0, true, true), 831f, Struct_3(arg_0, u_input.b, vec3<u32>(36291u, 4294967295u, 61561u), arg_2.xz)).d.x, vec3<u32>(0u, u_input.b, 0u), -arg_2.yy)).d.x, ~(~countOneBits(u_input.b)), _wgslsmith_clamp_u32(~10750u, _wgslsmith_div_u32(~4294967295u, _wgslsmith_mult_u32(1u, 27361u)), _wgslsmith_div_u32(1u, firstTrailingBit(4294967295u)))), ~arg_1.a.wy);
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2050f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -217f))) + _wgslsmith_f_op_f32(f32(-1f) * -862f)))));
    let var_1 = arg_0;
    global1 = arg_2;
    var var_2 = -469f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(floor(var_0)))))));
    return func_1(true, func_2(select(select(select(vec4<bool>(arg_2, false, arg_2, arg_1), vec4<bool>(var_1.a, var_1.a, false, true), false), !vec4<bool>(arg_2, arg_1, arg_0.a, false), func_1(arg_1, Struct_1(vec4<i32>(48710i, arg_0.d.x, 0i, var_1.d.x)), vec3<i32>(-9930i, 0i, 1i)).a), !vec4<bool>(var_1.a, false, arg_1, false), vec4<bool>(true & var_1.a, false, var_0 != var_0, var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + 1040f), Struct_3(var_1.a, var_1.b, arg_0.c, min(arg_0.d, firstTrailingBit(arg_0.d)))).c, _wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, arg_3, 2147483647i) & vec3<i32>(-16867i, -1i, 2147483647i), vec3<i32>(-36642i, 0i, arg_0.d.x)), countOneBits(vec3<i32>(var_1.d.x, -28614i, u_input.d) ^ vec3<i32>(-47643i, -7813i, -35966i)) & ~countOneBits(vec3<i32>(arg_0.d.x, -53933i, -7275i))));
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = arg_0.wzy;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2348f, arg_0.x, -1589f, 1133f) * arg_0))), vec4<f32>(var_0.x, 520f, 197f, var_0.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(826f, arg_0.x, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_0.x, 790f, -973f))), _wgslsmith_f_op_vec4_f32(-arg_0))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1626f);
    global1 = false;
    let var_3 = Struct_1(_wgslsmith_div_vec4_i32(-firstTrailingBit(vec4<i32>(u_input.d, arg_1.d.x, -2147483647i, arg_1.d.x)) | ((vec4<i32>(0i, u_input.d, 1i, arg_1.d.x) << (vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b) % vec4<u32>(32u))) >> ((vec4<u32>(u_input.b, u_input.b, arg_1.b, 17574u) & vec4<u32>(arg_1.b, 15742u, u_input.b, 1u)) % vec4<u32>(32u))), min(abs(countOneBits(vec4<i32>(u_input.d, arg_1.d.x, arg_1.d.x, arg_1.d.x))), vec4<i32>(_wgslsmith_div_i32(0i, u_input.a), _wgslsmith_add_i32(2147483647i, arg_1.d.x), ~u_input.c, firstLeadingBit(0i)))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -2684f), _wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec4<i32>(arg_1.d.x, var_3.a.x ^ arg_1.d.x, -2147483647i, u_input.d)), func_2(vec4<bool>(true, true, func_1(arg_1.a, var_3, var_3.a.zxw).a, any(vec2<bool>(arg_1.a, false))), var_0.x, arg_1), ~abs(0u), -select(-33313i, -48818i, arg_1.a) ^ func_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(trunc(690f)), arg_1).c.a.x)).x, -806f);
}

fn func_8(arg_0: u32, arg_1: vec3<f32>) -> Struct_2 {
    global1 = !(_wgslsmith_f_op_f32(-arg_1.x) > -324f);
    global1 = arg_1.x >= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec4<i32>(u_input.a, -54836i, u_input.a, -1i)), Struct_2(arg_1.x, 93230u, Struct_1(vec4<i32>(-2147483647i, u_input.c, 2147483647i, u_input.d)), vec2<u32>(1u, 1u)), arg_0, -2147483647i)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x)))), arg_1.x);
    global0 = 461f;
    global1 = func_6(Struct_3(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), u_input.b, (vec3<u32>(u_input.b, u_input.b, arg_0) & vec3<u32>(4294967295u, u_input.b, arg_0)) | vec3<u32>(arg_0, ~arg_0, _wgslsmith_mod_u32(arg_0, 4294967295u)), countOneBits(vec2<i32>(2147483647i, u_input.d)) >> (vec2<u32>(~arg_0, _wgslsmith_clamp_u32(arg_0, 35621u, 0u)) % vec2<u32>(32u))), func_2(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true), arg_1.x, Struct_3(func_6(Struct_3(false, u_input.b, vec3<u32>(arg_0, u_input.b, arg_0), vec2<i32>(-2147483647i, u_input.a)), true, true, u_input.a).a, 65757u, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, arg_0), vec3<u32>(0u, 1u, arg_0)), max(vec2<i32>(-9951i, u_input.a), vec2<i32>(u_input.a, -3459i)))).c.a.x < _wgslsmith_mod_i32(-25104i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.c, 2147483647i, u_input.c), firstLeadingBit(vec4<i32>(-1i, -1i, u_input.d, u_input.d)))), !any(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), ~u_input.a).a;
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(416f - arg_1.x))), -1338f), 1u & firstLeadingBit(_wgslsmith_add_u32(arg_0, max(1u, u_input.b))), func_4(Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_1.x)))), max(~arg_0, _wgslsmith_clamp_u32(u_input.b, arg_0, 2084u)), Struct_1(vec4<i32>(u_input.d, -2147483647i, 19504i, 0i)), firstTrailingBit(select(vec2<u32>(arg_0, 0u), vec2<u32>(arg_0, 0u), vec2<bool>(true, true)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-252f - -250f)), ~abs(4294967295u), func_2(vec4<bool>(true, false, false, false), _wgslsmith_f_op_f32(1391f * 766f), Struct_3(false, u_input.b, vec3<u32>(arg_0, u_input.b, 4294967295u), vec2<i32>(2147483647i, -1i))).c, func_6(func_6(Struct_3(false, u_input.b, vec3<u32>(arg_0, u_input.b, 3330u), vec2<i32>(22236i, u_input.d)), false, false, 1i), false, true, _wgslsmith_dot_vec3_i32(vec3<i32>(9245i, u_input.c, 0i), vec3<i32>(1i, u_input.a, u_input.d))).c.zz), true, abs(~(37723u >> (0u % 32u)))), ~func_3().wy);
    return Struct_2(arg_1.x, _wgslsmith_mult_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(25795u, 19208u, 0u), vec3<u32>(0u, u_input.b, 2042u)) << (1u % 32u)), func_1(true, Struct_1(~vec4<i32>(15208i, var_0.c.a.x, 9924i, var_0.c.a.x)), var_0.c.a.xzx).c.x), func_4(Struct_2(-1651f, func_1(true, func_2(vec4<bool>(true, false, true, false), -2230f, Struct_3(true, 2276u, vec3<u32>(u_input.b, 0u, 0u), vec2<i32>(-9584i, 28876i))).c, vec3<i32>(u_input.d, -29024i, u_input.a) >> (vec3<u32>(arg_0, 0u, arg_0) % vec3<u32>(32u))).c.x, Struct_1(_wgslsmith_mod_vec4_i32(var_0.c.a, vec4<i32>(var_0.c.a.x, 1i, u_input.d, 2147483647i))), func_1(func_6(Struct_3(true, u_input.b, vec3<u32>(arg_0, arg_0, var_0.d.x), var_0.c.a.xz), false, true, var_0.c.a.x).a, Struct_1(var_0.c.a), firstLeadingBit(var_0.c.a.wxz)).c.zx), Struct_2(-2046f, 1u, Struct_1(select(var_0.c.a, vec4<i32>(u_input.c, var_0.c.a.x, 57936i, u_input.d), vec4<bool>(false, true, false, true))), _wgslsmith_sub_vec2_u32(var_0.d, vec2<u32>(var_0.d.x, 65188u)) << (~vec2<u32>(var_0.d.x, 1209u) % vec2<u32>(32u))), 1i > _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.a.x, u_input.c, var_0.c.a.x, u_input.c), vec4<i32>(-9605i, var_0.c.a.x, 0i, 18587i)), ~arg_0 | _wgslsmith_mult_u32(~var_0.b, 37010u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b >> (var_0.d.x % 32u), 4090u), _wgslsmith_add_vec2_u32(firstTrailingBit(var_0.d), ~vec2<u32>(1u, var_0.d.x)), reverseBits(vec2<u32>(u_input.b, var_0.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_0 = func_8(0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_7(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1281f, 793f, 840f, 1219f)), func_6(func_1(true, Struct_1(vec4<i32>(u_input.a, u_input.d, u_input.d, u_input.c)), vec3<i32>(u_input.a, 0i, u_input.d)), true, select(false, true, true), u_input.d)))));
    var var_1 = ~(~abs(max(vec4<u32>(u_input.b, var_0.d.x, u_input.b, u_input.b) ^ vec4<u32>(4294967295u, var_0.b, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 17627u, 4294967295u))));
    var_0 = func_8(~(~var_0.d.x), vec3<f32>(_wgslsmith_f_op_f32(abs(798f)), var_0.a, _wgslsmith_f_op_f32(var_0.a + -756f)));
    var var_2 = select(vec3<bool>(true, true, true), !vec3<bool>(func_1(627f > var_0.a, var_0.c, ~var_0.c.a.xxy).a, any(vec4<bool>(true, true, true, false)), true), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, false)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), var_0.a < 993f), true));
    let var_3 = reverseBits(vec4<u32>(_wgslsmith_div_u32(8379u, _wgslsmith_sub_u32(min(74911u, 4294967295u), var_0.d.x)), reverseBits(~(var_1.x & var_0.d.x)), _wgslsmith_dot_vec4_u32(max(~vec4<u32>(0u, 0u, u_input.b, var_0.d.x), ~vec4<u32>(var_1.x, var_1.x, 59117u, 4294967295u)), abs(select(vec4<u32>(1u, u_input.b, 52769u, 4294967295u), vec4<u32>(58278u, 30614u, var_1.x, var_0.b), var_2.x))), _wgslsmith_div_u32(34430u, _wgslsmith_mod_u32(13665u | u_input.b, u_input.b))));
    let var_4 = vec4<bool>(true, var_2.x, u_input.b >= 50308u, !(true | var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~reverseBits(vec4<i32>(u_input.d, 1i, -42887i, var_0.c.a.x) >> (vec4<u32>(var_3.x, var_0.b, var_1.x, 83330u) % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, reverseBits(var_0.c.a.x | u_input.c)), func_1(!(!var_4.x), var_0.c, -(vec3<i32>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x) >> (var_1.zxw % vec3<u32>(32u)))).d), select(_wgslsmith_add_vec4_i32(var_0.c.a, _wgslsmith_div_vec4_i32(countOneBits(var_0.c.a), countOneBits(var_0.c.a))), func_8(_wgslsmith_div_u32(var_3.x, 185u) ^ 1u, vec3<f32>(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, var_4.x)), var_0.a, _wgslsmith_f_op_f32(trunc(261f)))).c.a, all(var_4)));
}

