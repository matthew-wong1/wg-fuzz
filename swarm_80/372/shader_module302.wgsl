struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-675f, global0.a.a.x, _wgslsmith_f_op_f32(min(-1492f, arg_0.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -764f)) + arg_0.a.a)));
    global0 = Struct_2(global0.a);
    var var_1 = _wgslsmith_add_i32(~firstLeadingBit(~_wgslsmith_clamp_i32(2147483647i, 0i, 1i)), _wgslsmith_add_i32(1i, 1i));
    var var_2 = Struct_3(vec2<bool>(true, true), ~u_input.a);
    var var_3 = global0.a.a;
    return true != !(var_2.a.x || true);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_2.a, _wgslsmith_div_vec4_f32(global0.a.a, vec4<f32>(global0.a.a.x, 871f, -1058f, global0.a.a.x))) - vec4<f32>(_wgslsmith_div_f32(global0.a.a.x, global0.a.a.x), _wgslsmith_f_op_f32(round(-158f)), _wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(floor(2216f))))));
    global0 = Struct_2(arg_2);
    let var_0 = vec4<u32>(7551u ^ select(max(~u_input.a.x, ~4294967295u), u_input.a.x, func_3(Struct_2(arg_2), Struct_1(arg_2.a), global0.a.a.x, 0u) & (arg_1.x && arg_1.x)), ~(~(~4294967295u)), _wgslsmith_div_u32(1u, 4294967295u), 0u);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a.wy - arg_2.a.xy) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a.a.x, -390f), vec2<f32>(arg_2.a.x, 2051f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(535f, arg_2.a.x))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, -947f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, global0.a.a.x) - vec2<f32>(-629f, arg_2.a.x)) - _wgslsmith_f_op_vec2_f32(-arg_2.a.xy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.x, 902f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.a.x, -1532f), vec2<f32>(-865f, -580f), false))))), arg_1.x));
    global0 = Struct_2(arg_2);
    return Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(280f - 1047f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(210f * var_1.x), _wgslsmith_f_op_f32(trunc(421f))), _wgslsmith_f_op_f32(-arg_2.a.x), -1000f)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_2 {
    global0 = func_2(vec3<i32>(arg_0, firstTrailingBit(2147483647i), ~arg_1), vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_f_op_vec4_f32(abs(global0.a.a))));
    global0 = func_2(firstTrailingBit(min(select(-vec3<i32>(arg_0, -1i, 1i), countOneBits(vec3<i32>(-2147483647i, 2147483647i, arg_1)), !vec3<bool>(false, true, arg_3.a.x)), ~abs(vec3<i32>(arg_0, -2147483647i, arg_2.x)))), select(!vec4<bool>(-17659i >= arg_2.x, false, 17265u == u_input.a.x, !arg_3.a.x), !select(select(vec4<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x, arg_3.a.x), vec4<bool>(true, arg_3.a.x, true, arg_3.a.x), vec4<bool>(false, false, arg_3.a.x, false)), !vec4<bool>(false, false, arg_3.a.x, arg_3.a.x), any(arg_3.a)), vec4<bool>(true, arg_3.a.x, !arg_3.a.x | arg_3.a.x, arg_3.a.x)), Struct_1(vec4<f32>(620f, global0.a.a.x, global0.a.a.x, global0.a.a.x)));
    let var_0 = firstTrailingBit(select(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, arg_3.b.x), vec3<u32>(61271u, 0u, 21810u)), ~(~vec3<u32>(u_input.a.x, 85615u, 98435u)), select(!vec3<bool>(false, true, arg_3.a.x), select(vec3<bool>(true, false, false), vec3<bool>(false, false, arg_3.a.x), false), true)) ^ ~(~(vec3<u32>(u_input.a.x, 0u, arg_3.b.x) & vec3<u32>(0u, arg_3.b.x, u_input.a.x))));
    let var_1 = vec2<bool>(true, func_3(Struct_2(global0.a), global0.a, 241f, _wgslsmith_sub_u32(~select(0u, u_input.a.x, true), 97403u)));
    let var_2 = -842f;
    return Struct_2(func_2(countOneBits(firstTrailingBit(reverseBits(vec3<i32>(-3285i, -1i, -10617i)))), vec4<bool>(any(!arg_3.a), any(!vec4<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x, var_1.x)), _wgslsmith_div_f32(global0.a.a.x, global0.a.a.x) != _wgslsmith_f_op_f32(618f - -1807f), false && arg_3.a.x), func_2(_wgslsmith_div_vec3_i32(-vec3<i32>(arg_1, arg_0, arg_0), firstTrailingBit(vec3<i32>(-5846i, arg_2.x, arg_1))), !select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(arg_3.a.x, false, true, true), vec4<bool>(var_1.x, arg_3.a.x, false, true)), global0.a).a).a);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = -48187i;
    var var_1 = ~vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 26718i, -2147483647i, 12837i), vec4<i32>(-28846i, -13184i, -2147483647i, 2147483647i)) ^ _wgslsmith_mod_i32(1i, 7694i >> (0u % 32u)), firstTrailingBit(max(-2147483647i, -1350i)));
    let var_2 = vec2<bool>((~1u >= _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 27019u))) || !all(vec4<bool>(true, true, true, true)), (~u_input.a.x > 4294967295u) || (any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))) || any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))));
    let var_3 = func_1(~12402i, 0i, vec2<i32>(-_wgslsmith_mod_i32(var_1.x, var_1.x), 2147483647i) >> (firstLeadingBit(u_input.a) % vec2<u32>(32u)), Struct_3(select(vec2<bool>(var_2.x, !var_2.x), !var_2, var_2), vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, 21033u, ~1u), 4294967295u)));
    var var_4 = _wgslsmith_clamp_i32(var_1.x, -_wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -5642i, 2147483647i), vec3<i32>(10657i, var_1.x, var_1.x)), var_1.x ^ ~2147483647i), 0i);
    return Struct_3(select(!vec2<bool>(true, !var_2.x), select(vec2<bool>(var_2.x, true), vec2<bool>(true, !var_2.x), var_2.x), !var_2), ~(~(select(u_input.a, u_input.a, vec2<bool>(true, true)) << (u_input.a % vec2<u32>(32u)))));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = vec2<u32>(~(~countOneBits(4294967295u ^ u_input.a.x)), countOneBits(~max(52759u, 0u & arg_0.b.x)));
    global0 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(835f)), global0.a.a.x, global0.a.a.x, global0.a.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-971f, 329f, global0.a.a.x, -814f) + vec4<f32>(-713f, global0.a.a.x, global0.a.a.x, global0.a.a.x)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.a.x, -168f) - -242f);
    var var_2 = vec2<u32>(2328u, 58479u);
    return func_1(-49945i, _wgslsmith_div_i32(~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(-30260i, -3995i, 1i)), 51959i), -2147483647i), vec2<i32>(-18704i, -48240i), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, var_1)) * global0.a.a.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(global0.a.a)))))).a;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~2147483647i;
    global0 = Struct_2(Struct_1(global0.a.a));
    let var_1 = Struct_2(Struct_1(global0.a.a));
    let var_2 = ~1i;
    let var_3 = Struct_3(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, 411f)) + arg_1.a.x), func_1(-15953i, var_2, abs(-vec2<i32>(var_2, 0i)), func_4(-403f, func_2(vec3<i32>(1i, -7801i, -26873i), vec4<bool>(false, false, true, false), arg_3)))).a, abs(select(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(arg_0, arg_0)), u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a) >> (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), !(-47107i == var_2))));
    return arg_1;
}

fn func_7(arg_0: Struct_1) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) + _wgslsmith_f_op_f32(min(-303f, arg_0.a.x))))), Struct_2(global0.a));
    var_0 = Struct_3(vec2<bool>(!(true && (var_0.a.x & var_0.a.x)), false), vec2<u32>(u_input.a.x, var_0.b.x));
    var_0 = Struct_3(var_0.a, ~func_4(_wgslsmith_f_op_f32(arg_0.a.x - global0.a.a.x), func_2(min(vec3<i32>(12205i, 32222i, 1i), vec3<i32>(-2147483647i, 0i, -4761i)), select(vec4<bool>(false, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, true, var_0.a.x), var_0.a.x), Struct_1(vec4<f32>(arg_0.a.x, 736f, global0.a.a.x, -1000f)))).b);
    var var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-265f * -1528f)), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1254f + -565f)), -1231f)));
    var var_2 = Struct_3(select(!var_0.a, !select(vec2<bool>(var_0.a.x, false), var_0.a, !vec2<bool>(false, var_0.a.x)), !var_0.a.x), vec2<u32>(~countOneBits(var_0.b.x) ^ countOneBits(u_input.a.x), 26183u));
    return func_2(countOneBits(_wgslsmith_div_vec3_i32(firstTrailingBit(countOneBits(vec3<i32>(-6116i, -32506i, 38307i))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, -1i, -18109i)), select(vec3<i32>(-2147483647i, 0i, 1i), vec3<i32>(2147483647i, -6884i, 45743i), var_0.a.x), vec3<i32>(-33935i, 0i, 12786i)))), select(vec4<bool>(var_2.a.x, true, any(vec3<bool>(var_0.a.x, var_2.a.x, var_2.a.x)) & false, func_4(func_2(vec3<i32>(-7303i, 0i, 28398i), vec4<bool>(var_0.a.x, false, false, var_0.a.x), Struct_1(var_1.a.a)).a.a.x, Struct_2(var_1.a)).a.x), select(vec4<bool>(var_1.a.a.x <= -421f, var_0.a.x, !var_2.a.x, !var_0.a.x), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, var_2.a.x, false), true), func_4(arg_0.a.x, Struct_2(global0.a)).a.x), !var_0.a.x | !any(vec4<bool>(true, true, var_0.a.x, true))), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(func_6(u_input.a.x, func_5(func_4(_wgslsmith_f_op_f32(-global0.a.a.x), func_1(2147483647i, 0i, vec2<i32>(-23832i, 8708i), Struct_3(vec2<bool>(false, false), u_input.a)))), global0.a.a.x, global0.a));
    var var_0 = false;
    var var_1 = func_1(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, -1i, -2147483647i) << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(~(-51318i), 1i, abs(2147483647i))), min(abs(3542i), ~(-2147483647i)), _wgslsmith_add_vec2_i32(min(vec2<i32>(~15630i, -110738i), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-7557i, 18008i), vec2<i32>(0i, -23174i))), vec2<i32>(-1i, abs(-2147483647i))), Struct_3(vec2<bool>(true, true), countOneBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(15316u, 21115u), u_input.a))));
    global0 = func_2(vec3<i32>(0i, 0i, _wgslsmith_add_i32(max(_wgslsmith_add_i32(39445i, -31965i), select(2147483647i, 2147483647i, false)), min(~1i, firstTrailingBit(-28166i)))), vec4<bool>(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), true, !all(vec3<bool>(false, true, false)), select(false, false, firstLeadingBit(-2147483647i) == firstTrailingBit(0i))), var_1.a);
    var var_2 = _wgslsmith_add_u32(u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, ~71246u), _wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 25522u, 4294967295u), vec3<u32>(32492u, 0u, 0u)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<u32>(u_input.a.x, u_input.a.x, 35966u), false), select(~vec3<u32>(0u, u_input.a.x, u_input.a.x), max(vec3<u32>(4294967295u, 27119u, u_input.a.x), vec3<u32>(u_input.a.x, 0u, 4294967295u)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))), 10527u));
    let var_3 = true;
    var var_4 = _wgslsmith_mult_vec2_i32(-firstTrailingBit(vec2<i32>(reverseBits(-1i), firstTrailingBit(-11105i))), firstLeadingBit(_wgslsmith_add_vec2_i32(select(~vec2<i32>(20842i, -10973i), vec2<i32>(1i, 1i), vec2<bool>(var_3, false)), vec2<i32>(abs(-18453i), ~(-20712i)))));
    global0 = func_2(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-3126i, -2147483647i & var_4.x, var_4.x >> (u_input.a.x % 32u))), ~(~(~vec3<i32>(var_4.x, var_4.x, 25357i))), vec3<i32>(var_4.x, select(_wgslsmith_div_i32(var_4.x, -62373i), var_4.x, all(vec2<bool>(var_3, var_3))), var_4.x)), !vec4<bool>(_wgslsmith_div_f32(global0.a.a.x, var_1.a.a.x) > -336f, firstTrailingBit(1u) <= u_input.a.x, true, true), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(((u_input.a << (vec2<u32>(1u, 1u) % vec2<u32>(32u))) << (u_input.a % vec2<u32>(32u))) ^ vec2<u32>(countOneBits(4294967295u), select(u_input.a.x, 5794u, true)), func_4(_wgslsmith_f_op_f32(var_1.a.a.x - -309f), func_2(vec3<i32>(2147483647i, var_4.x, var_4.x), vec4<bool>(false, var_3, var_3, true), global0.a)).b >> ((vec2<u32>(u_input.a.x, 59130u) | u_input.a) % vec2<u32>(32u))));
}

