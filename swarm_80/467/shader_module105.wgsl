struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1231f, vec4<i32>(-22530i, -36428i, 1i, 1i), -1i, 25508u, vec3<u32>(35725u, 111913u, 4294967295u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> u32 {
    return u_input.b;
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    global0 = Struct_1(-1002f, ~(-global0.b), firstLeadingBit(global0.b.x), ~u_input.b, vec3<u32>(~517u, _wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(23606u, global0.e.x) & func_3(0u)), ~(global0.d >> (34441u % 32u))));
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 1251f)) - 208f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * 195f), -613f)), vec4<i32>(_wgslsmith_mod_i32(-1i, 39310i), 65137i, -25277i, -countOneBits(-global0.b.x)), u_input.c.x, 1u, vec3<u32>(26293u, u_input.b, ~u_input.b));
    var var_0 = Struct_1(global0.a, -u_input.a, ~global0.c, u_input.b, ~(global0.e << (global0.e % vec3<u32>(32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)))), 947f)))), var_0.b, u_input.a.x & -47632i, abs(~var_0.e.x), vec3<u32>(55774u, u_input.b | var_0.d, 0u));
    return ((reverseBits(~vec4<u32>(global0.d, 23293u, 71286u, u_input.b)) | vec4<u32>(global0.d, ~93380u, select(var_1.d, 72357u, true), var_1.d >> (4294967295u % 32u))) & countOneBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global0.d, u_input.b, global0.d), vec4<u32>(1u, 19063u, 1u, var_1.e.x)))) & min(~abs(~vec4<u32>(u_input.b, 44250u, global0.e.x, var_1.d)), ~_wgslsmith_mult_vec4_u32(min(vec4<u32>(global0.e.x, 22689u, u_input.b, var_0.d), vec4<u32>(var_1.e.x, var_1.e.x, global0.d, global0.e.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.d, u_input.b, global0.d, 1u), vec4<u32>(var_0.e.x, 13684u, u_input.b, global0.e.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-951f, _wgslsmith_f_op_f32(select(713f, -152f, true))))), ~global0.b, arg_1.b.x, arg_0.x, ~vec3<u32>(arg_0.x, _wgslsmith_div_u32(118065u, 4294967295u), arg_1.e.x));
    var var_0 = _wgslsmith_f_op_f32(arg_1.a + arg_1.a);
    let var_1 = _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(1f - global0.a));
    let var_2 = vec4<u32>(42376u, 1u, _wgslsmith_mult_u32(u_input.b, arg_1.e.x), u_input.b);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-408f, arg_2.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-345f))))), ~global0.b, reverseBits(21909i), 11605u, countOneBits(~(vec3<u32>(var_2.x, 110146u, 59380u) | ~vec3<u32>(u_input.b, 31251u, 40351u))));
    return _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(35616u, 30370u, global0.e.x), vec3<u32>(u_input.b, global0.d, 1u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_2.x, arg_1.d, 37088u), firstLeadingBit(vec3<u32>(global0.e.x, 14625u, var_2.x)), select(vec3<u32>(0u, 35383u, 0u), arg_1.e, vec3<bool>(true, true, true))))), vec3<u32>(1u, arg_0.x, _wgslsmith_mod_u32(0u, reverseBits(25049u))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(-1444f, global0.b, -u_input.a.x, _wgslsmith_div_u32(u_input.b, func_4(func_2(vec3<bool>(false, false, false)), Struct_1(global0.a, select(vec4<i32>(global0.b.x, arg_1, -14143i, u_input.a.x), vec4<i32>(arg_1, 0i, -2147483647i, 1i), false), -arg_1, u_input.b, countOneBits(global0.e)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 1724f, global0.a) - vec3<f32>(global0.a, -1000f, 788f)), vec3<f32>(global0.a, global0.a, global0.a)))), countOneBits(reverseBits(_wgslsmith_mult_vec3_u32(global0.e, vec3<u32>(16620u, 34614u, arg_0.x)))) << (abs(~vec3<u32>(4294967295u, 2272u, u_input.b)) % vec3<u32>(32u)));
    global0 = var_0;
    var var_1 = all(vec3<bool>((false || any(vec3<bool>(true, true, false))) || (1u == ~u_input.b), any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true)), all(vec2<bool>(true, true)) && false));
    let var_2 = 91402u;
    global0 = var_0;
    return Struct_1(-164f, abs(var_0.b) & ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(4624i, u_input.c.x, u_input.c.x, 34091i), vec4<i32>(-32852i, -28615i, 2147483647i, global0.b.x))), ~u_input.a.x, ~1u, ~_wgslsmith_add_vec3_u32(firstLeadingBit(global0.e), ~(arg_0.xyw | vec3<u32>(arg_0.x, 54291u, arg_0.x))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~(~(~_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(1u, u_input.b))));
    global0 = arg_0;
    let var_1 = u_input.c.x;
    return arg_0;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = func_5(func_1(select(select(max(vec4<u32>(global0.d, arg_2.d, 1u, 1u), vec4<u32>(1u, 0u, 20165u, global0.d)), countOneBits(vec4<u32>(4294967295u, arg_2.e.x, u_input.b, global0.d)), select(vec4<bool>(false, arg_0.x, true, arg_3), vec4<bool>(arg_3, arg_0.x, arg_3, arg_3), true)), vec4<u32>(_wgslsmith_div_u32(0u, 4294967295u), countOneBits(global0.e.x), ~u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b)), !vec4<bool>(true, arg_0.x, false, arg_3)), ~_wgslsmith_mod_i32(-arg_2.c, global0.c | arg_1.b.x)));
    global0 = func_5(func_5(arg_2));
    var var_0 = func_5(func_5(arg_2));
    global0 = arg_1;
    var var_1 = ~abs(firstTrailingBit(global0.b.x) & abs(-12724i)) & _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(-arg_2.b.wy, global0.b.xw), func_1(vec4<u32>(0u, arg_1.e.x, 24060u, 4294967295u), _wgslsmith_add_i32(-16493i, 17137i)).c), ~(~var_0.b.zw));
    return Struct_1(-343f, -arg_2.b, -global0.b.x | -2147483647i, countOneBits(func_3((4294967295u & arg_2.d) >> (_wgslsmith_div_u32(global0.d, 1047u) % 32u))), firstTrailingBit(vec3<u32>(global0.d, 4624u, arg_2.d) | select(vec3<u32>(global0.d, 0u, 1u), vec3<u32>(var_0.d, 4294967295u, arg_1.d), vec3<bool>(arg_3, arg_3, arg_0.x))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, global0.d, ~1u), vec3<u32>(1u, arg_2.d, firstLeadingBit(arg_2.e.x))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-244f * -275f), global0.a, _wgslsmith_f_op_f32(step(201f, global0.a)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-765f, -516f, -1898f)))), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(611f, global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - global0.a) - _wgslsmith_div_f32(global0.a, global0.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 1000f, global0.a)))));
    let var_1 = global0.e;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-376f + _wgslsmith_f_op_f32(f32(-1f) * -1397f)), ~global0.b, global0.c, 1u, global0.e);
    var var_3 = -global0.b.xx;
    var var_4 = func_6(vec2<bool>(select(true, false, true) && (all(vec3<bool>(false, false, true)) & (0u > var_2.d)), any(vec4<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(false, true)), all(vec2<bool>(true, true)), global0.e.x != 28736u))), func_5(func_1(max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 614u, 1u), vec4<u32>(4294967295u, 59874u, 1u, var_2.d)), ~vec4<u32>(u_input.b, var_1.x, var_2.e.x, 114837u)), abs(u_input.a.x))), func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2500f, -168f, true)) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-51826i, u_input.c.x, 20276i, 0i), vec4<i32>(-3237i, 23526i, u_input.a.x, u_input.c.x)), 0i, _wgslsmith_dot_vec2_u32(vec2<u32>(37782u, var_2.e.x), global0.e.yx), select(vec3<u32>(var_2.e.x, u_input.b, 41454u), countOneBits(vec3<u32>(2515u, 0u, 32444u)), true))), true);
    var_2 = Struct_1(global0.a, abs(vec4<i32>(~28828i, func_6(vec2<bool>(true, true), func_1(vec4<u32>(var_1.x, var_1.x, var_2.e.x, 4294967295u), var_2.b.x), Struct_1(-1000f, vec4<i32>(var_2.b.x, u_input.c.x, -2147483647i, var_3.x), u_input.c.x, 4294967295u, var_2.e), true).b.x, select(global0.c, var_4.c, all(vec4<bool>(true, false, true, false))), select(-6840i, 2147483647i ^ global0.b.x, any(vec3<bool>(false, true, true))))), -18547i, var_2.e.x, vec3<u32>(~select(29105u, 17830u, true), var_1.x, ~u_input.b));
    var_4 = func_6(select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true))), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(459f - func_1(vec4<u32>(global0.d, var_1.x, 5265u, 8491u), 2147483647i).a)), -(vec4<i32>(10814i, var_2.c, -1889i, var_4.c) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_4.b.x, var_3.x, var_3.x, -1i), vec4<i32>(global0.c, var_4.c, var_4.c, 0i))), var_2.c, 39234u & (var_4.e.x << (~4294967295u % 32u)), var_2.e), Struct_1(-118f, ~(~vec4<i32>(0i, 26941i, var_4.c, -36283i)) | func_6(vec2<bool>(true, true), Struct_1(var_2.a, vec4<i32>(2147483647i, 17220i, -2147483647i, global0.c), 0i, 0u, var_4.e), Struct_1(1117f, vec4<i32>(-13967i, var_2.b.x, 0i, 1i), 0i, u_input.b, var_2.e), true).b, ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(-25189i, -902i, var_2.c), vec3<i32>(-2147483647i, -1i, -2147483647i), vec3<bool>(false, true, false)), u_input.a.zyw), 95582u, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(94277u, 50u), 4294967295u), _wgslsmith_div_u32(reverseBits(4294967295u), 1u), ~var_2.e.x)), select(true, true, !(-1473f < global0.a)));
    var_4 = func_5(Struct_1(func_6(select(vec2<bool>(false, true), vec2<bool>(true, false), select(true, false, true)), Struct_1(func_5(Struct_1(global0.a, global0.b, -1i, 0u, vec3<u32>(0u, 0u, 0u))).a, ~var_4.b, 1i, _wgslsmith_sub_u32(global0.d, 4148u), reverseBits(vec3<u32>(global0.d, global0.e.x, 1u))), func_6(vec2<bool>(true, true), func_1(vec4<u32>(4294967295u, 5768u, var_2.d, 0u), var_4.b.x), func_5(Struct_1(-1454f, u_input.a, 49951i, u_input.b, var_2.e)), true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true))).a, global0.b, global0.c, 24337u, _wgslsmith_mult_vec3_u32(~(vec3<u32>(var_1.x, 1u, 39874u) << (vec3<u32>(1u, var_4.e.x, 8128u) % vec3<u32>(32u))), ~vec3<u32>(0u, var_1.x, var_2.d))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, abs(-26447i), var_0, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a))), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -802f), var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -1155f, var_0.x, var_4.a))))))), var_4.b.wz);
}

