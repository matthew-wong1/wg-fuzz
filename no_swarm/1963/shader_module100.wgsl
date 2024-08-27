struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-494f, -937f)), _wgslsmith_f_op_f32(max(global1.c, _wgslsmith_f_op_f32(sign(-1258f))))))));
    var var_1 = any(!vec4<bool>(true, all(vec2<bool>(true, true)), true, true)) | ((1479f < _wgslsmith_f_op_f32(-2935f - _wgslsmith_f_op_f32(-global0.x))) != any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))));
    var var_2 = 67098i;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.d, global1.d)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1224f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.d + -623f)))));
    var var_3 = ~(~vec3<u32>(abs(0u), select(202u, 32198u, true), ~30138u)) | vec3<u32>(41318u, ~7893u, 72477u & (_wgslsmith_dot_vec4_u32(vec4<u32>(49651u, 0u, 4294967295u, 0u), vec4<u32>(1u, 72243u, 4294967295u, 41392u)) ^ _wgslsmith_sub_u32(4294967295u, 32642u)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.d, _wgslsmith_f_op_f32(ceil(267f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0.x))))))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()));
    global1 = arg_2;
    var var_1 = !(!((arg_2.e.x >= arg_0) & true)) & (_wgslsmith_dot_vec4_u32(~vec4<u32>(11343u, 32853u, 0u, 4294967295u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u)), ~1u, ~0u, _wgslsmith_mod_u32(1u, 37548u))) > (_wgslsmith_dot_vec4_u32(select(vec4<u32>(59220u, 0u, 0u, 42321u), vec4<u32>(14492u, 1u, 4294967295u, 4294967295u), vec4<bool>(true, true, false, true)), vec4<u32>(1u, 1u, 1u, 1u)) ^ 43079u));
    var var_2 = Struct_1(arg_2.b, reverseBits(arg_2.a) | abs(_wgslsmith_mod_i32(-arg_0, arg_0)), 779f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(arg_2.d + _wgslsmith_f_op_f32(step(1377f, 189f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -128f))), _wgslsmith_f_op_f32(max(arg_1.d, _wgslsmith_f_op_f32(1000f * global0.x))))), global1.e);
    let var_3 = arg_2.a;
    return Struct_1(abs(min(firstLeadingBit(i32(-1i) * -9675i), arg_0 ^ var_3)), ~(~36545i), _wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))))), -1350f, vec3<i32>(-_wgslsmith_div_i32(-24882i, -2147483647i), global1.b, abs(_wgslsmith_dot_vec3_i32(arg_2.e, vec3<i32>(0i, var_2.b, u_input.a)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = Struct_1(-(~_wgslsmith_sub_i32(33268i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -33485i, global1.e.x), vec3<i32>(u_input.a, arg_0.b, u_input.a)))), u_input.a & -1i, -497f, -1509f, -(~arg_0.e));
    global1 = func_2(_wgslsmith_mult_i32(-global1.a, -global1.a), Struct_1(0i, reverseBits(-16562i), _wgslsmith_f_op_f32(floor(global1.d)), global1.c, firstTrailingBit(vec3<i32>(2505i, _wgslsmith_clamp_i32(global1.a, u_input.a, 22318i), arg_0.b))), Struct_1(global1.e.x, _wgslsmith_div_i32(global1.e.x, -44912i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1112f, -329f) - _wgslsmith_f_op_f32(global0.x + arg_0.d))), _wgslsmith_f_op_f32(round(134f)), vec3<i32>(-u_input.a & arg_0.a, firstTrailingBit(-78343i), 1i)), arg_0.e.x);
    var var_0 = func_2(i32(-1i) * -_wgslsmith_sub_i32(arg_0.b, min(u_input.a, 23920i)), Struct_1(arg_0.e.x, 15961i, 789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d))), ~arg_0.e), Struct_1(-firstLeadingBit(-2147483647i), abs(-global1.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -787f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -1668f))), ~_wgslsmith_clamp_vec3_i32(reverseBits(global1.e), reverseBits(global1.e), global1.e)), -firstLeadingBit(-28455i));
    global1 = func_2(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.e.x & var_0.e.x, reverseBits(-62120i)), vec2<i32>(-var_0.b, 0i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.x, 1i, global1.b, u_input.a), vec4<i32>(arg_0.a, 2147483647i, u_input.a, 5963i)))), Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_0.a, u_input.a), var_0.e), 2147483647i, -590f, _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(-global0.x)), ~firstLeadingBit(global1.e << (vec3<u32>(0u, 36070u, 12615u) % vec3<u32>(32u)))), func_2(~var_0.e.x, Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, global1.b), vec4<i32>(var_0.b, 24435i, -2147483647i, 1i)), arg_0.e.x, global1.d, global0.x, -vec3<i32>(arg_0.e.x, 0i, 2147483647i)), Struct_1(-55031i, _wgslsmith_sub_i32(23680i, global1.a), _wgslsmith_f_op_f32(174f - global1.d), global1.c, vec3<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.a), abs(u_input.a), 0i)), -11455i), u_input.a);
    let var_1 = true == all(vec3<bool>(false, true, true));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: i32) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(func_4(Struct_1(global1.b, -1i, global0.x, 2028f, vec3<i32>(arg_0.b, 0i, 0i))).d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(ceil(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.c, -1596f))))))));
    global1 = arg_0;
    global0 = vec2<f32>(2578f, _wgslsmith_div_f32(1275f, arg_2));
    var var_0 = !arg_1;
    var var_1 = arg_0;
    return _wgslsmith_f_op_f32(select(global1.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_3()).x)), arg_1));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1036f) + _wgslsmith_f_op_f32(global1.c * global1.c)), 1015f) - vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(114f + var_0.d)))));
    global1 = arg_0;
    let var_1 = _wgslsmith_mult_u32(~firstLeadingBit(firstTrailingBit(20199u)), 1u);
    global1 = Struct_1(0i, -arg_0.e.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(func_4(func_2(u_input.a, Struct_1(2618i, global1.e.x, -1144f, -177f, vec3<i32>(2147483647i, 34900i, -2868i)), Struct_1(2147483647i, u_input.a, 1538f, global0.x, global1.e), arg_0.b)), !arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-767f)), 215f), global1.e.x)), global1.c)), func_2(-1i, Struct_1(i32(-1i) * -arg_0.a, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(arg_0.d * 3063f), firstLeadingBit(vec3<i32>(arg_0.e.x, 1i, var_0.a)) >> (~vec3<u32>(19785u, var_1, var_1) % vec3<u32>(32u))), func_2(-_wgslsmith_dot_vec3_i32(arg_0.e, var_0.e), func_2(-9715i, func_4(var_0), Struct_1(-44317i, -2147483647i, -1140f, global1.c, arg_0.e), var_0.e.x), arg_0, _wgslsmith_dot_vec3_i32(func_4(var_0).e, vec3<i32>(var_0.e.x, 7733i, 2147483647i))), max(-63598i, 1i)).d, reverseBits(vec3<i32>(_wgslsmith_sub_i32(arg_0.b, var_0.a), 1i, arg_0.e.x)));
    return 39860u;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(abs(28425i), 1i, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-global1.d), func_4(Struct_1(-(i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(global1.e.yx ^ vec2<i32>(0i, -2147483647i), reverseBits(vec2<i32>(-2147483647i, 22339i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.d, arg_3))), _wgslsmith_f_op_f32(step(-775f, _wgslsmith_f_op_f32(select(1764f, 666f, false)))), vec3<i32>(countOneBits(2362i), firstTrailingBit(-7340i), reverseBits(u_input.a)))).e);
    let var_1 = 32624u;
    let var_2 = Struct_1(-(select(~(-719i), u_input.a, any(vec2<bool>(true, false))) ^ firstLeadingBit(1i)), (i32(-1i) * -2147483647i) & arg_2, arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f), -1078f)), ~(~vec3<i32>(func_2(arg_2, arg_1, Struct_1(u_input.a, -2147483647i, global0.x, -1295f, vec3<i32>(arg_2, arg_1.a, -12261i)), 20605i).a, ~arg_1.e.x, -1i)));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(ceil(arg_1.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(284f, 1169f)))));
    global1 = func_2(~(-var_0.b), func_2(_wgslsmith_mult_i32((global1.e.x >> (var_1 % 32u)) & firstTrailingBit(29826i), _wgslsmith_mult_i32(2147483647i, _wgslsmith_div_i32(arg_2, arg_2))), Struct_1(1i, 1i, var_0.c, _wgslsmith_f_op_f32(step(1405f, var_0.d)), vec3<i32>(-1i, min(arg_1.a, -1i), 12148i)), func_2(i32(-1i) * -u_input.a, func_2(select(-17141i, -1i, true), func_2(-1i, var_0, Struct_1(u_input.a, var_2.b, -496f, arg_1.c, vec3<i32>(global1.a, var_0.b, 2147483647i)), -41660i), func_2(-1i, Struct_1(16877i, var_2.b, arg_3, arg_3, var_0.e), Struct_1(-1i, arg_1.e.x, -910f, var_2.c, vec3<i32>(2147483647i, global1.a, 15058i)), global1.a), ~arg_1.a), var_2, abs(countOneBits(global1.e.x))), -1i), Struct_1(global1.b, 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) + _wgslsmith_f_op_f32(step(-559f, 1797f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3), var_2.c)), arg_3)), arg_1.e), _wgslsmith_clamp_i32(u_input.a, -firstLeadingBit(2147483647i) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 54246u), vec2<u32>(arg_0, arg_0)), reverseBits(56655u), 30712u) % 32u), func_2(_wgslsmith_clamp_i32(var_2.b, arg_2, var_0.a), func_4(func_4(var_0)), func_2(1i, func_2(arg_2, var_2, Struct_1(10285i, 1362i, arg_3, -461f, global1.e), -1i), func_2(arg_1.e.x, arg_1, arg_1, -1i), _wgslsmith_mult_i32(arg_2, -2147483647i)), ~arg_2 | func_4(Struct_1(var_2.e.x, -22215i, 783f, -1000f, vec3<i32>(arg_1.b, arg_2, var_0.e.x))).b).e.x));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1394f, global1.c, true)) * _wgslsmith_f_op_f32(-global0.x)))), -679f, global0.x, global0.x);
    let var_1 = func_6(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(142623u, max(func_1(Struct_1(-39193i, 1i, global1.c, -731f, global1.e), true, vec3<bool>(false, false, false)), _wgslsmith_add_u32(0u, 28787u)))), func_2(func_4(func_2(_wgslsmith_mult_i32(1i, 0i), func_2(2147483647i, Struct_1(global1.b, u_input.a, -750f, -1144f, vec3<i32>(2147483647i, -19668i, 25692i)), Struct_1(-70066i, -35470i, global1.c, var_0.x, vec3<i32>(1i, global1.e.x, 1i)), global1.b), func_2(global1.a, Struct_1(23116i, global1.a, -1000f, global0.x, global1.e), Struct_1(u_input.a, global1.b, -210f, -1748f, vec3<i32>(u_input.a, u_input.a, 0i)), global1.b), -1i)).a, Struct_1(firstLeadingBit(global1.e.x) & (-1i ^ u_input.a), 27604i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(var_0.x * -1490f), false)), _wgslsmith_f_op_f32(floor(func_4(Struct_1(1i, 8158i, global0.x, 1085f, global1.e)).c)), -global1.e & (vec3<i32>(u_input.a, u_input.a, -42484i) << (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u)))), func_2(firstLeadingBit(firstLeadingBit(global1.b)), Struct_1(_wgslsmith_add_i32(global1.a, -20679i), _wgslsmith_mult_i32(-1566i, global1.e.x), -1000f, -1000f, vec3<i32>(u_input.a, u_input.a, u_input.a)), Struct_1(u_input.a << (4294967295u % 32u), i32(-1i) * -21479i, global0.x, _wgslsmith_f_op_f32(round(global0.x)), ~global1.e), -u_input.a), -1i), _wgslsmith_add_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -33023i, global1.b, u_input.a) | vec4<i32>(u_input.a, -1i, -15600i, global1.b), vec4<i32>(u_input.a, -71872i, 32938i, 2147483647i)), func_2(-u_input.a, func_4(Struct_1(global1.a, 10464i, 1324f, global0.x, vec3<i32>(u_input.a, u_input.a, global1.b))), func_4(Struct_1(global1.e.x, global1.b, global1.c, 962f, vec3<i32>(-63968i, u_input.a, 0i))), ~global1.a).e.x), -min(_wgslsmith_div_i32(global1.a, -60379i), -36040i)), _wgslsmith_f_op_f32(global0.x * -920f));
    var var_2 = func_2(global1.e.x, Struct_1(-1i, -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c, global0.x)) + -1432f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-829f, 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.d)))), min(~(vec3<i32>(106426i, global1.b, global1.e.x) >> (vec3<u32>(96113u, 0u, 4294967295u) % vec3<u32>(32u))), vec3<i32>(select(3974i, -6538i, false), _wgslsmith_mod_i32(-25482i, u_input.a), -1i))), func_4(var_1), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-33587i, global1.b, 0i), var_1.e), var_1.e) ^ ~1i, firstLeadingBit(global1.b)));
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.xy)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(121f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(731f, global0.x)))))) + _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(-16286i, var_1.e.x, 488f, 109f, global1.e), any(vec2<bool>(false, false)), -741f, ~(-1i))))));
    var var_4 = min(max(firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(7951u, 1u), vec2<u32>(0u, 54596u), vec2<u32>(37303u, 4294967295u)), vec2<u32>(4294967295u, 1175u))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(30801u, 0u), vec2<u32>(1u, 1u)), reverseBits(vec2<u32>(0u, 33595u)), select(vec2<u32>(0u, 74861u), vec2<u32>(47650u, 5088u), vec2<bool>(false, false)))), reverseBits(vec2<u32>(~min(4294967295u, 23620u), 30433u)));
    var var_5 = vec2<i32>(-1i, -_wgslsmith_mod_i32(var_1.e.x, 2147483647i)) << (vec2<u32>(3329u, firstLeadingBit(0u)) % vec2<u32>(32u));
    let var_6 = func_4(var_1);
    var var_7 = _wgslsmith_f_op_vec2_f32(var_0.yy * vec2<f32>(_wgslsmith_f_op_f32(-458f - global1.d), func_4(func_6(_wgslsmith_mod_u32(var_4.x, var_4.x), var_6, var_2.a, 1352f)).d));
    let x = u_input.a;
    s_output = StorageBuffer(global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_6(0u, Struct_1(var_5.x, 2147483647i, var_0.x, 907f, var_1.e), var_5.x, -800f).d) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.c)), var_7.x))), firstTrailingBit(select(_wgslsmith_mult_vec3_i32(~var_1.e, vec3<i32>(1i, var_5.x, 17949i)), -select(vec3<i32>(-4220i, 42528i, -15358i), var_2.e, vec3<bool>(false, false, true)), !all(vec3<bool>(false, false, false)))), 1u, var_4.x);
}

