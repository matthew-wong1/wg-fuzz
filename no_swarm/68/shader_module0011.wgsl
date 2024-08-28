struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 26>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = all(!vec3<bool>(!(!arg_0), arg_0, true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(-555f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f + 332f)))) + _wgslsmith_f_op_f32(924f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(226f, _wgslsmith_f_op_f32(floor(-229f))) + 1f)));
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, u_input.b), u_input.a);
    var var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(23656u, 17672u), 24108u, 41241u >> (_wgslsmith_sub_u32(min(global0.x, 4294967295u), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)) % 32u)), vec3<u32>(abs(30363u), _wgslsmith_mult_u32(u_input.b, min(global0.x, _wgslsmith_sub_u32(global0.x, 4294967295u))), ~global0.x));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(235f - -1197f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1168f)))), -1000f)), -81439i, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c.x ^ u_input.d, ~18615i), u_input.d) ^ _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(u_input.c.xyx, vec3<i32>(u_input.c.x, 0i, u_input.d)), -(u_input.c.xwz >> (vec3<u32>(16658u, 4294967295u, var_3.x) % vec3<u32>(32u)))));
    return var_4.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<i32>) -> vec3<i32> {
    var var_0 = all(select(!vec2<bool>(true, any(vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0.b.x >= 3435u), vec2<bool>(true, true)), u_input.d == _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_2), -u_input.c.zz)));
    var var_1 = min(firstLeadingBit(~_wgslsmith_div_i32(-1i, 1i)), _wgslsmith_mult_i32(-12102i << (firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, 11663u)) % 32u), 7250i));
    var_1 = reverseBits(~(i32(-1i) * -23288i));
    var var_2 = ~u_input.c.x;
    let var_3 = select(~vec4<i32>(arg_2.x, _wgslsmith_div_i32(u_input.d, _wgslsmith_dot_vec2_i32(u_input.c.zx, vec2<i32>(-50475i, u_input.d))), ~(-arg_2.x), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.x, u_input.d), vec2<i32>(arg_1.d, 2147483647i)), abs(vec2<i32>(0i, arg_2.x)))), vec4<i32>(_wgslsmith_dot_vec2_i32(~u_input.c.wz | arg_2, arg_2), u_input.d, _wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(firstLeadingBit(2147483647i), 38284i)), arg_2.x), any(select(vec3<bool>(select(false, false, false), false, all(vec2<bool>(true, true))), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))));
    return select(vec3<i32>(firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_2.x, 1i), _wgslsmith_mult_i32(-26605i, -47290i))), firstLeadingBit(arg_1.d), arg_2.x), firstTrailingBit(abs(~var_3.yzy)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(false, false, true), any(vec2<bool>(false, false))), !(global0.x > 3680u)), true));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    global1 = array<Struct_2, 26>();
    let var_0 = func_4(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1104f + _wgslsmith_f_op_f32(f32(-1f) * -213f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_2.a, arg_1.x, false)), _wgslsmith_f_op_f32(-2943f + -1000f)))), arg_2.b), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(true, false, false)))), arg_1.x, arg_0.a.x, -28231i), countOneBits(abs(arg_0.a.yz)));
    var var_1 = arg_2;
    var var_2 = vec3<bool>(any(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), false, -42912i < arg_0.d)), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a * arg_1.x)))) == var_1.a);
    var_2 = !(!select(select(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, false, false), vec3<bool>(false, var_2.x, true)), !vec3<bool>(var_2.x, false, var_2.x), var_2.x), vec3<bool>(var_2.x, true, !var_2.x), !(var_2.x && var_2.x)));
    return arg_0;
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    var var_0 = abs(arg_3.zz);
    var var_1 = !select(669f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.b + 402f))), arg_1, true);
    var var_2 = vec3<bool>(false, true, false);
    return u_input.c.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>) -> u32 {
    global1 = array<Struct_2, 26>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f * 612f)), 302f, select(-1i >> (~u_input.b % 32u), 1i, false), 2147483647i & countOneBits(_wgslsmith_mod_i32(-u_input.d, u_input.c.x)));
    let var_1 = reverseBits(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.xx, _wgslsmith_mod_vec2_i32(u_input.c.yy, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -1i), vec2<i32>(u_input.c.x, u_input.d)))), vec2<i32>(_wgslsmith_div_i32(~u_input.d, ~0i), func_5(vec4<bool>(arg_1.x, arg_1.x, arg_0.x, arg_1.x), any(vec4<bool>(false, true, arg_0.x, arg_0.x)), func_2(Struct_1(vec3<i32>(u_input.c.x, u_input.d, var_0.d), 1877f, u_input.a.x, -24103i), vec2<f32>(-1709f, 336f), Struct_2(var_0.a, vec4<u32>(0u, 0u, 1u, 4379u))), vec3<i32>(var_0.d, u_input.d, u_input.d)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1116f, -109f, -1000f, var_0.b), vec4<f32>(1334f, var_0.a, var_0.a, -417f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, -260f) - vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.b)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a, -824f, -1000f, var_0.a)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -331f, var_0.b, var_0.b))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(541f, -1000f, var_0.a, -1736f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(489f, var_0.a, var_0.b, 1284f), vec4<f32>(var_0.b, var_0.b, -1100f, 1765f), vec4<bool>(arg_0.x, false, arg_0.x, arg_1.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.b, -2386f, -276f)) - vec4<f32>(-617f, -568f, var_0.b, var_0.a)))))));
    global0 = vec2<u32>(func_2(func_2(func_2(Struct_1(vec3<i32>(var_1.x, var_0.c, 29045i), var_2.x, 0u, -1i), _wgslsmith_f_op_vec2_f32(-var_2.xz), Struct_2(-1000f, vec4<u32>(u_input.a.x, global0.x, 4294967295u, 977u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.wz)), Struct_2(var_2.x, vec4<u32>(global0.x, global0.x, global0.x, global0.x) & vec4<u32>(94028u, global0.x, u_input.a.x, 0u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(219f, 144f), _wgslsmith_f_op_vec2_f32(var_2.yy + vec2<f32>(var_0.b, var_2.x)), arg_0.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(439f, 881f), var_2.yz) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_0.b) + var_2.zx)), !arg_1.x)), global1[_wgslsmith_index_u32(global0.x, 26u)]).c, func_2(Struct_1(firstTrailingBit(u_input.c.zxz), -406f, ~u_input.b, 12617i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.ww, var_2.yz))), global1[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(1u)), 26u)]).c);
    return u_input.b;
}

fn func_6(arg_0: vec2<u32>, arg_1: u32) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1667f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(797f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1153f - 1029f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-986f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(551f)), -1000f)))), 2147483647i, u_input.d);
    let var_1 = _wgslsmith_div_f32(var_0.b, var_0.a);
    let var_2 = global1[_wgslsmith_index_u32(reverseBits(13421u), 26u)];
    var var_3 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(var_1 + func_2(func_2(Struct_1(vec3<i32>(var_0.d, 20655i, 49366i), 1274f, 0u, u_input.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_1)), Struct_2(-1265f, var_2.b)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-614f, 1158f), vec2<f32>(-470f, var_0.a))))), Struct_2(var_2.a, vec4<u32>(global0.x, 21892u, 27628u, u_input.a.x))).b), 1657f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(floor(var_2.a)), false))))));
    let var_4 = vec4<u32>(7382u, firstTrailingBit(1u), 4294967295u, (arg_0.x << (max(54886u, ~arg_1) % 32u)) & 1u);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.xz) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.wx)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_3.zx))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 26>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_6(vec2<u32>(func_1(vec3<bool>(false, true, true), vec3<bool>(true, true, true)), global0.x) | vec2<u32>(_wgslsmith_div_u32(0u, global0.x), 22671u), ~u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1958f, -1191f), vec2<f32>(-575f, 750f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1986f, 619f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2502f, -348f)))) - vec2<f32>(_wgslsmith_f_op_f32(360f + -209f), _wgslsmith_f_op_f32(-func_2(Struct_1(u_input.c.zxy, -1454f, 0u, u_input.c.x), vec2<f32>(-1000f, 429f), Struct_2(-790f, vec4<u32>(0u, global0.x, u_input.a.x, 0u))).b))));
    let var_1 = Struct_2(var_0.x, ~firstTrailingBit(select(vec4<u32>(global0.x, 0u, global0.x, u_input.a.x), vec4<u32>(7849u, u_input.b, global0.x, 1u), vec4<bool>(true, false, true, false))) | max(~vec4<u32>(1624u, 12805u, 3472u, u_input.a.x) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 14416u, global0.x, global0.x), vec4<u32>(1u, 16944u, global0.x, global0.x)), abs(select(vec4<u32>(global0.x, 141456u, 57157u, 58924u), vec4<u32>(u_input.b, 107722u, u_input.b, u_input.b), vec4<bool>(true, true, true, false)))));
    global1 = array<Struct_2, 26>();
    let var_2 = ~firstLeadingBit(vec3<u32>(40877u, select(1u, ~u_input.b, any(vec3<bool>(true, false, false))), 1u));
    var var_3 = ~_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, var_1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.x), var_1.b.yx))), _wgslsmith_sub_vec3_u32((var_2 & vec3<u32>(63757u, 1u, 26631u)) & var_2, firstLeadingBit(vec3<u32>(u_input.b, u_input.a.x, 42550u))), _wgslsmith_div_vec3_u32(var_2, var_2));
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, -849f, -2530f), vec3<f32>(-487f, var_1.a, 946f), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1305f, var_1.a, 359f) * vec3<f32>(640f, var_0.x, var_1.a)))))))));
}

