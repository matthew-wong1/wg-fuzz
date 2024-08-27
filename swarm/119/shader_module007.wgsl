struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = reverseBits(-_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, ~1i), vec2<i32>(-1i, 9894i), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.a.a, global0.a.a), vec2<i32>(-2147483647i, 2147483647i)))));
    global0 = Struct_2(Struct_1(-arg_1.a.a, arg_1.a.b, vec4<bool>(all(vec2<bool>(true, true)), false, global0.a.c.x, all(arg_0.xw))), firstLeadingBit(max(~firstTrailingBit(arg_1.b), ~countOneBits(0u))), _wgslsmith_mult_u32(42323u, ~(~u_input.a.x)) & ~0u);
    global0 = Struct_2(Struct_1(0i, global0.a.c.x, vec4<bool>(all(arg_0.xww), true, !any(vec4<bool>(false, true, true, false)), true)), u_input.a.x, ~1u);
    let var_1 = vec4<u32>(38922u, ~1u, ~(~(u_input.a.x & u_input.a.x)), _wgslsmith_clamp_u32(global0.c, global0.b, global0.b));
    var_0 = vec2<i32>(min(2147483647i, 2147483647i) << (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(select(u_input.a.x, global0.b, false), ~48967u)) % 32u), -2147483647i);
    return vec4<bool>(any(arg_0), select(arg_0.x, false, _wgslsmith_div_i32(var_0.x, _wgslsmith_sub_i32(-1i, global0.a.a)) == var_0.x), true, arg_1.a.b);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-272f, 859f)) + arg_3.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_i32(~(-3594i), -12963i), !(global0.a.b && any(vec2<bool>(global0.a.c.x, true))), func_3(global0.a.c, Struct_2(Struct_1(global0.a.a, true, global0.a.c), _wgslsmith_clamp_u32(27236u, u_input.a.x, global0.b), u_input.a.x))), 0u, ~(~_wgslsmith_mod_u32(global0.c, global0.b)));
    var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.a.a, arg_0.x, -1i, 70061i), select(vec4<i32>(arg_0.x, arg_0.x, var_1.a.a, global0.a.a), vec4<i32>(arg_0.x, var_1.a.a, -44864i, 1i), vec4<bool>(global0.a.b, var_1.a.b, var_1.a.b, true)), vec4<bool>(true, true, true, true)), vec4<i32>(-7309i, -global0.a.a, _wgslsmith_sub_i32(-24167i, var_1.a.a), _wgslsmith_sub_i32(arg_0.x, arg_0.x))), global0.a.c.x, !select(select(vec4<bool>(global0.a.b, false, false, false), vec4<bool>(global0.a.b, var_1.a.c.x, global0.a.c.x, true), true), vec4<bool>(var_1.a.b, true, true, true), func_3(vec4<bool>(false, true, var_1.a.c.x, true), Struct_2(var_1.a, 0u, 0u)))), global0.b, _wgslsmith_mod_u32(1u >> (global0.c % 32u), var_1.c));
    var_1 = Struct_2(Struct_1(i32(-1i) * -2147483647i, false, !vec4<bool>(false | var_1.a.b, var_1.a.c.x, false, true)), ~var_1.c, 20794u);
    let var_2 = ~(~(~_wgslsmith_mod_u32(1u, var_1.c | 45403u)));
    return Struct_2(Struct_1(~(-1i), any(vec4<bool>(false, global0.a.b, false, true)) & false, vec4<bool>(true, false, global0.a.b, global0.a.c.x)), min(~abs(1u), _wgslsmith_mod_u32(29282u, u_input.a.x)) >> (var_2 % 32u), ~0u);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = Struct_2(func_2(vec2<i32>(arg_3.a.a >> (u_input.a.x % 32u), ~arg_1.a) ^ _wgslsmith_div_vec2_i32(-vec2<i32>(arg_1.a, 34392i), vec2<i32>(1i, 1i)), 519f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1048f, _wgslsmith_f_op_f32(trunc(1053f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 542f)))).a, 0u, arg_3.b);
    var var_1 = arg_3;
    let var_2 = arg_3;
    var_0 = Struct_2(func_2(~(~firstTrailingBit(vec2<i32>(-6908i, arg_3.a.a))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_f32(ceil(1908f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(147f - 679f))))).a, countOneBits(_wgslsmith_div_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.c, 0u), vec3<u32>(arg_3.b, 1u, global0.b))), global0.b)), arg_3.b);
    var_1 = Struct_2(func_2(-_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.a.a, arg_2), vec2<i32>(-54284i, 0i)), vec2<i32>(arg_3.a.a, 25331i)), -662f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-194f, 453f) + vec2<f32>(-930f, -762f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(290f, -1000f))), global0.a.c.wx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(270f, 1672f), vec2<f32>(1093f, -779f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -297f) + vec2<f32>(-953f, -1642f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-178f, 1342f))))).a, firstLeadingBit(u_input.a.x << (arg_3.c % 32u)), abs(_wgslsmith_sub_u32(func_2(~vec2<i32>(-2147483647i, global0.a.a), 1530f, _wgslsmith_div_vec2_f32(vec2<f32>(1420f, -1007f), vec2<f32>(1277f, 1132f)), vec2<f32>(648f, -634f)).b, firstTrailingBit(0u) << (global0.c % 32u))));
    return arg_3.a.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = ~abs(~(~(~22572u)));
    var var_1 = all(select(!(!(!vec4<bool>(arg_1.b, false, arg_1.c.x, arg_0.x))), !select(arg_1.c, vec4<bool>(global0.a.c.x, arg_1.c.x, arg_0.x, false), arg_1.b), vec4<bool>(true, func_4(vec4<bool>(true, true, arg_0.x, global0.a.c.x), arg_1, ~arg_1.a, func_2(vec2<i32>(37763i, 3762i), -1115f, vec2<f32>(-1000f, -141f), vec2<f32>(1133f, -1000f))), !all(global0.a.c.yx), false)));
    let var_2 = Struct_2(Struct_1(func_2(~vec2<i32>(arg_1.a, arg_1.a) << (max(vec2<u32>(29677u, 70172u), u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(166f + 198f) - _wgslsmith_f_op_f32(min(-930f, 283f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(756f, 1375f))), vec2<f32>(_wgslsmith_f_op_f32(-1497f * -961f), _wgslsmith_f_op_f32(trunc(-1000f)))).a.a, true, !global0.a.c), ~firstTrailingBit(~arg_2), 43081u);
    let var_3 = func_2(_wgslsmith_add_vec2_i32(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-1i, global0.a.a), vec2<i32>(-911i, -1i))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.a, global0.a.a), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a, 39234i), vec2<i32>(arg_1.a, -9134i)), abs(vec2<i32>(arg_1.a, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -508f), -1027f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(349f * 355f), _wgslsmith_f_op_f32(step(1349f, 1360f)), arg_1.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(523f, 1000f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-725f, 183f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1402f, 1342f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(230f, -1662f) * vec2<f32>(-674f, -1509f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-129f, _wgslsmith_div_f32(205f, 782f)) * vec2<f32>(-474f, -1443f))));
    var var_4 = true;
    return u_input.a.x;
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: u32) -> Struct_2 {
    global0 = Struct_2(func_2(vec2<i32>(-2147483647i, 41502i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f + 778f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1224f, 637f) - -580f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-357f + 831f), _wgslsmith_f_op_f32(589f * 177f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -357f))))).a, ~40996u, func_1(select(func_3(!global0.a.c, Struct_2(Struct_1(-2147483647i, true, vec4<bool>(arg_2.x, arg_2.x, false, true)), arg_1.x, u_input.a.x)).zxz, !vec3<bool>(global0.a.c.x, true, true), global0.a.c.xyz), Struct_1(_wgslsmith_add_i32(-5269i, global0.a.a), true, vec4<bool>(false, false, any(global0.a.c.yyy), true)), 0u));
    let var_0 = 174f;
    let var_1 = u_input.a.x;
    var var_2 = func_2(~min(select(~vec2<i32>(global0.a.a, -2147483647i), -vec2<i32>(global0.a.a, 26425i), !global0.a.c.yx), -vec2<i32>(global0.a.a, global0.a.a) ^ _wgslsmith_add_vec2_i32(vec2<i32>(global0.a.a, global0.a.a), vec2<i32>(global0.a.a, -42962i))), var_0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))) * 905f), var_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-513f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(203f, var_0))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(279f, -1516f), vec2<f32>(417f, var_0))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, 468f)))))).a.c.x;
    let var_3 = func_2(firstTrailingBit(_wgslsmith_clamp_vec2_i32((vec2<i32>(global0.a.a, global0.a.a) >> (vec2<u32>(global0.c, 4294967295u) % vec2<u32>(32u))) ^ min(vec2<i32>(global0.a.a, 2878i), vec2<i32>(global0.a.a, 16585i)), _wgslsmith_add_vec2_i32(vec2<i32>(6345i, global0.a.a), vec2<i32>(-68248i, -2147483647i)), max(_wgslsmith_div_vec2_i32(vec2<i32>(global0.a.a, 13824i), vec2<i32>(-1i, 0i)), select(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(2147483647i, global0.a.a), false)))), var_0, vec2<f32>(var_0, var_0), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157f + var_0) * var_0) + _wgslsmith_f_op_f32(f32(-1f) * -293f)), _wgslsmith_f_op_f32(abs(var_0))));
    return func_2(vec2<i32>(_wgslsmith_add_i32(func_2(vec2<i32>(var_3.a.a, 16254i) | vec2<i32>(var_3.a.a, -6938i), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-286f, var_0)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-819f, 515f)))).a.a, 18212i), 7013i | global0.a.a), var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-333f, -1035f))) + vec2<f32>(_wgslsmith_f_op_f32(round(119f)), _wgslsmith_div_f32(var_0, var_0))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(var_0, var_0)), -1384f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * -1041f) - -1693f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1(global0.a.c.xzz, global0.a, ~abs(40935u)), vec3<u32>(global0.c, countOneBits(1u), global0.c), func_3(select(global0.a.c, !func_3(global0.a.c, Struct_2(Struct_1(1262i, global0.a.c.x, global0.a.c), 1u, 43353u)), vec4<bool>(!global0.a.c.x, true, global0.a.a < global0.a.a, true)), func_2(firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 16625i), vec2<i32>(53270i, global0.a.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-128f + -116f), -183f, global0.a.c.x)), vec2<f32>(_wgslsmith_div_f32(399f, -2085f), -1576f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-140f, -674f))))).yw, func_1(select(vec3<bool>(global0.a.b, global0.a.a <= -23241i, !global0.a.b), func_2(~vec2<i32>(global0.a.a, global0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -2265f), vec2<f32>(-882f, 129f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-345f, 1045f), vec2<f32>(487f, -164f), vec2<bool>(true, true)))).a.c.zzw, !func_4(vec4<bool>(false, false, global0.a.b, global0.a.b), Struct_1(global0.a.a, global0.a.b, vec4<bool>(true, global0.a.b, false, true)), global0.a.a, Struct_2(Struct_1(0i, global0.a.c.x, global0.a.c), global0.b, 1u))), func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.a, global0.a.a) ^ vec2<i32>(-2147483647i, global0.a.a), reverseBits(vec2<i32>(10942i, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-755f)) * 2396f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-439f, -830f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -362f) * vec2<f32>(227f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(932f, 479f))).a, firstLeadingBit(firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)))));
    let var_0 = select(global0.a.c.yy, vec2<bool>(func_5(1u, ~reverseBits(vec3<u32>(5685u, global0.c, u_input.a.x)), global0.a.c.ww, u_input.a.x).a.c.x, global0.a.b), vec2<bool>(func_3(select(vec4<bool>(global0.a.b, false, global0.a.c.x, global0.a.c.x), select(vec4<bool>(false, true, global0.a.b, global0.a.c.x), global0.a.c, vec4<bool>(global0.a.c.x, true, true, false)), vec4<bool>(global0.a.c.x, false, global0.a.b, true)), Struct_2(global0.a, 72142u, 6154u)).x, all(global0.a.c.xyw)));
    global0 = Struct_2(func_2(firstTrailingBit(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-1i, 2147483647i)), countOneBits(vec2<i32>(1i, -40980i)))), _wgslsmith_div_f32(-206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1498f, -1719f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1219f, 649f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(488f, -573f), vec2<f32>(125f, 329f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(482f, 962f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(583f, _wgslsmith_f_op_f32(max(892f, 1000f))))).a, ~u_input.a.x, ~global0.c);
    var var_1 = _wgslsmith_mult_vec3_i32(~vec3<i32>(global0.a.a, abs(-2147483647i), global0.a.a), -((vec3<i32>(-1i) * -vec3<i32>(global0.a.a, global0.a.a, global0.a.a)) | countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(global0.a.a, -13183i, -2147483647i), vec3<i32>(53889i, global0.a.a, 1i)))));
    let var_2 = Struct_2(global0.a, firstTrailingBit(global0.c & u_input.a.x), abs(min(func_2(var_1.xy, -572f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(389f, 1154f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1003f, 376f))).b, 1u << (func_5(52791u, vec3<u32>(67928u, 9621u, u_input.a.x), vec2<bool>(var_0.x, true), u_input.a.x).c % 32u))));
    var_1 = vec3<i32>(var_1.x, 17123i, reverseBits(1i) << (func_5(firstLeadingBit(var_2.c), vec3<u32>(global0.c, ~var_2.c, 1785u), vec2<bool>(true, !global0.a.c.x), var_2.b).c % 32u));
    global0 = Struct_2(global0.a, _wgslsmith_mult_u32(var_2.c, ~(~30532u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.c), vec2<u32>(0u, firstLeadingBit(0u))));
    let var_3 = _wgslsmith_mult_vec3_i32(~vec3<i32>(global0.a.a, ~var_1.x, countOneBits(-1848i)), _wgslsmith_add_vec3_i32((min(vec3<i32>(2147483647i, var_1.x, -2147483647i), vec3<i32>(var_1.x, -6128i, -7984i)) & reverseBits(vec3<i32>(8996i, global0.a.a, 2147483647i))) >> (~vec3<u32>(4294967295u, 88649u, global0.c) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.a, _wgslsmith_div_i32(0i, -1i), 0i), ~select(vec3<i32>(global0.a.a, var_2.a.a, 2147483647i), vec3<i32>(-2147483647i, 0i, var_2.a.a), true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(~1u, vec3<u32>(~(~var_2.b), global0.c, ~global0.c << (_wgslsmith_mult_u32(u_input.a.x, var_2.c) % 32u)), vec2<bool>(all(func_3(var_2.a.c, var_2).zzy), true), u_input.a.x).a.a, firstLeadingBit(select(vec4<i32>(~var_3.x, ~(-5767i), _wgslsmith_mult_i32(1i, var_3.x), 52279i), max(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.a, 1i, 30792i, -2147483647i), vec4<i32>(0i, var_3.x, -1i, var_1.x)), vec4<i32>(-2147483647i, 1i, var_1.x, var_1.x)), vec4<bool>(!var_0.x, true, true, false))));
}

