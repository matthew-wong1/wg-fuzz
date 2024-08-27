struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: f32 = -950f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<f32> {
    global0 = array<f32, 26>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)))));
    global1 = array<vec2<bool>, 30>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2120f, arg_0.a, -211f, 801f), vec4<f32>(854f, arg_1, global0[_wgslsmith_index_u32(15163u, 26u)], -405f), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, global0[_wgslsmith_index_u32(0u, 26u)], arg_1, 1000f) + vec4<f32>(2455f, arg_0.b, -1000f, -1037f)))))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(trunc(165f)), arg_1, _wgslsmith_f_op_f32(-153f * arg_1), arg_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b, arg_1, arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec4<f32>(-544f, 1948f, arg_1, arg_0.a))))))));
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = vec3<i32>(-2147483647i, min(-(~_wgslsmith_sub_i32(10176i, 40105i)), ~(~arg_0)), i32(-1i) * -abs(arg_0));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32((u_input.a.x | u_input.a.x) ^ 1u, 26u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-215f + _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(9952u, 26u)]))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)] + _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -1494f)))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(~40444u, 26u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(26605u, 26u)] + -1000f)), global0[_wgslsmith_index_u32(~(~u_input.a.x), 26u)]))));
    global2 = _wgslsmith_f_op_f32(631f * -534f);
    global2 = var_1.b.x;
    var var_2 = Struct_2(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_1.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-353f)), -161f, true))))));
    return -1568f;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(9847i, -21094i, -20499i), vec3<i32>(1i, -1i, -58315i))), 32788i), abs(-max(_wgslsmith_clamp_vec2_i32(vec2<i32>(15418i, -23583i), vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-1i, 0i)), _wgslsmith_add_vec2_i32(vec2<i32>(36997i, -1i), vec2<i32>(-1i, -21242i)))));
    global1 = array<vec2<bool>, 30>();
    let var_1 = Struct_2(Struct_1(1326f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(41353u, 26u)])), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1.b)))), -1314f, _wgslsmith_f_op_vec4_f32(func_3(arg_1, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_2.x, 26u)])))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, 872f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], 191f, -638f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(1460f)), var_1.b.x);
    var var_3 = Struct_1(-823f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(-min(-4367i, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.a))) - -1851f))));
    return Struct_2(Struct_1(_wgslsmith_div_f32(427f, _wgslsmith_f_op_f32(max(-152f, var_2.b))), -772f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), -1440f, -1000f, var_1.b.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec2<bool>, 30>();
    var var_0 = _wgslsmith_mod_i32(firstLeadingBit(max(~_wgslsmith_add_i32(23841i, -1i), -_wgslsmith_clamp_i32(0i, -53738i, -52325i))), 0i);
    let var_1 = 14241u ^ u_input.a.x;
    var var_2 = arg_0;
    let var_3 = abs(vec3<i32>(1i, ~abs(-10152i), _wgslsmith_div_i32(i32(-1i) * -42178i, 11766i >> ((u_input.a.x & 0u) % 32u))));
    return Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 30232u, 1u), max(vec3<u32>(var_1, 4294967295u, var_1), vec3<u32>(4294967295u, u_input.a.x, var_1)))), 26u)] * _wgslsmith_f_op_f32(ceil(var_2.a.b))), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~abs(u_input.a.x ^ 4294967295u), 26u)])));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(func_5(func_4(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), Struct_1(_wgslsmith_f_op_f32(func_2(-2139i)), -1371f), ~(~u_input.a), true), arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2325f, -705f, 1000f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec4<f32>(-415f, -575f, 224f, arg_0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(329f, -1000f, 1000f, -1033f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 1000f, -432f, 789f) - vec4<f32>(358f, arg_1.a, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true))))));
    let var_1 = var_0.b;
    global2 = -522f;
    let var_2 = abs(select(min(-2147483647i, select(-2147483647i, ~0i, true)), ~(-15245i), true & (true || all(vec4<bool>(true, true, false, true)))));
    let var_3 = arg_0;
    return Struct_1(_wgslsmith_f_op_f32(-296f - arg_0), _wgslsmith_f_op_f32(floor(var_0.b.x)));
}

fn func_6(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = func_4(!select(vec4<bool>(arg_0.b < arg_0.b, all(vec4<bool>(true, false, false, false)), true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), all(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -275f), u_input.a, true);
    var var_1 = func_4(!(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), var_0.a, ~vec2<u32>(4294967295u, _wgslsmith_mult_u32(min(arg_1, 12213u), ~45266u)), all(select(vec3<bool>(true, all(vec4<bool>(false, true, true, false)), true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, false)), any(vec4<bool>(true, false, true, false)))));
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a + -1000f) * arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3551f - var_1.a.a) + var_1.a.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5015u, u_input.a.x, arg_1, u_input.a.x), vec4<u32>(67414u, arg_1, arg_1, 41427u)), 26u)]))), _wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -1022f))), 362f));
    var var_2 = Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-func_1(var_1.b.x, Struct_1(global0[_wgslsmith_index_u32(arg_1, 26u)], 955f)).b), _wgslsmith_f_op_f32(select(-2469f, _wgslsmith_f_op_f32(abs(389f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(261f, 994f, true)))) + vec4<f32>(1000f, arg_0.b, 730f, -954f)));
    var var_3 = 2147483647i;
    return func_4(!select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true), true), vec4<bool>(true, true, true, any(vec2<bool>(true, true))), true), func_4(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(0u, 26u)] > global0[_wgslsmith_index_u32(arg_1, 26u)]), any(vec4<bool>(false, false, false, true))), Struct_1(-945f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1131f, var_2.a.a))))), u_input.a, all(vec3<bool>(true, false, true))).a, _wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(1u) ^ u_input.a.x, arg_1 & _wgslsmith_mod_u32(arg_1, arg_1)), max(min(firstLeadingBit(vec2<u32>(arg_1, arg_1)), vec2<u32>(arg_1, arg_1)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, arg_1)), u_input.a | vec2<u32>(u_input.a.x, 4294967295u)))), arg_1 != ~abs(4294967295u)).a;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    global0 = array<f32, 26>();
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 7703u, u_input.a.x)), max(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u) ^ vec4<u32>(0u, 0u, 0u, 31448u), ~vec4<u32>(u_input.a.x, 21177u, 4294967295u, 34965u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 2489u, 0u, 0u), vec4<u32>(35291u, u_input.a.x, u_input.a.x, 3201u)))), vec4<u32>(u_input.a.x, 33797u, _wgslsmith_div_u32(4294967295u, ~20625u), 4294967295u)), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, 25269u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 45553u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u)))));
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(~u_input.a.x, 109994u, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 26u)] - global0[_wgslsmith_index_u32(0u, 26u)]) != _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], arg_0.b))), reverseBits(~u_input.a.x), ~(~u_input.a.x), u_input.a.x), vec4<u32>(1u, u_input.a.x, ~_wgslsmith_div_u32(min(4294967295u, 1u), ~55529u), ~_wgslsmith_sub_u32(max(u_input.a.x, 1u), u_input.a.x)));
    let var_1 = global0[_wgslsmith_index_u32(14493u, 26u)];
    let var_2 = 38170u;
    return arg_0;
}

fn func_8(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_4(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, 459f <= global0[_wgslsmith_index_u32(21391u, 26u)], true, false), false), !(!all(vec3<bool>(true, true, true)))), Struct_1(332f, _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(f32(-1f) * -715f))), u_input.a, all(vec4<bool>(all(vec4<bool>(false, false, true, true)), any(vec4<bool>(false, false, false, false)) | all(global1[_wgslsmith_index_u32(47453u, 30u)]), true, !any(vec4<bool>(true, false, true, true))))).a;
    let var_1 = arg_0;
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_0, func_7(Struct_1(-107f, _wgslsmith_f_op_vec4_f32(func_3(var_1, global0[_wgslsmith_index_u32(30235u, 26u)])).x)).b)).x * -1003f);
    var var_4 = select(~vec4<i32>(~(-2147483647i << (u_input.a.x % 32u)), _wgslsmith_add_i32(_wgslsmith_mult_i32(41694i, 0i), -16747i), -_wgslsmith_add_i32(43484i, 7189i), ~0i), ~vec4<i32>(0i, _wgslsmith_div_i32(~(-1i), firstTrailingBit(-81524i)), ~(~3380i), 0i), true);
    return Struct_1(-795f, -310f);
}

fn func_9(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-1473f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.x, 801f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -672f), _wgslsmith_f_op_f32(arg_2.b + -405f)))), _wgslsmith_f_op_f32(f32(-1f) * -265f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(901f)) - -1659f), arg_2.b, -2022f))));
    global0 = array<f32, 26>();
    var var_1 = Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(-arg_1.b));
    var var_2 = _wgslsmith_f_op_f32(-265f - global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(max(~36992u, select(17926u, u_input.a.x, true))), _wgslsmith_mod_u32(~u_input.a.x << (u_input.a.x % 32u), u_input.a.x)), 26u)]);
    var var_3 = ~vec4<u32>(25685u << (((u_input.a.x >> (4294967295u % 32u)) & ~u_input.a.x) % 32u), abs(u_input.a.x), reverseBits(_wgslsmith_div_u32(min(1u, u_input.a.x), u_input.a.x)), 93700u);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_9(func_8(func_7(func_6(func_1(1998f, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(73667u, 26u)])), _wgslsmith_clamp_u32(u_input.a.x, 45364u, u_input.a.x)))), Struct_2(func_5(Struct_2(Struct_1(-1405f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec4<f32>(1796f, 1791f, global0[_wgslsmith_index_u32(61716u, 26u)], -839f)), Struct_1(_wgslsmith_div_f32(926f, global0[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 26u)])))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), func_6(Struct_1(global0[_wgslsmith_index_u32(14372u, 26u)], 1170f), u_input.a.x).a, _wgslsmith_f_op_f32(f32(-1f) * -1553f), _wgslsmith_f_op_f32(533f - 775f)), vec4<f32>(-457f, func_7(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 139f)).a, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(1207f, 230f), global0[_wgslsmith_index_u32(u_input.a.x, 26u)])).x, _wgslsmith_f_op_f32(min(-869f, global0[_wgslsmith_index_u32(62115u, 26u)]))), true))), Struct_1(1f, -1604f), -vec4<i32>(-1i, ~2147483647i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -36336i, 22153i, 7431i), -vec4<i32>(1i, 0i, -1i, -2147483647i))));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), reverseBits(~vec4<i32>(1i, 0i, -1i, 2147483647i)) ^ vec4<i32>(-55692i, min(abs(-1i), 8590i >> (u_input.a.x % 32u)), 0i, _wgslsmith_sub_i32(1i, -5884i)));
    let var_2 = _wgslsmith_mult_vec2_i32(firstTrailingBit(var_1.xz), firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(1i, ~var_1.x, abs(-21027i)), i32(-1i) * -var_1.x)));
    var var_3 = func_4(!(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2677f))) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 1u, 47186u), 26u)])), var_0), u_input.a, true);
    var var_4 = Struct_2(Struct_1(651f, func_7(func_1(1058f, var_0)).a), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], var_0.a) * _wgslsmith_f_op_vec4_f32(func_3(Struct_1(2167f, 1000f), -389f)).x)), _wgslsmith_f_op_f32(f32(-1f) * -2122f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)] * var_3.a.b), -1289f))), _wgslsmith_f_op_f32(round(-1378f))), 67737u, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(var_1.x, 2147483647i, var_1.x)), ~var_1.zzx, vec3<i32>(-49164i, var_1.x, -64322i)), abs(var_1.wzz)) << (u_input.a.x % 32u));
}

