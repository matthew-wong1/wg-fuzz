struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(Struct_1(1u, vec2<bool>(false, true)), vec3<f32>(820f, -140f, 649f), vec3<f32>(-922f, -493f, 362f));

var<private> global2: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = vec2<u32>(~firstLeadingBit(abs(u_input.a)) << (~_wgslsmith_div_u32(u_input.d, firstLeadingBit(1u)) % 32u), u_input.d);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-781f * _wgslsmith_f_op_f32(select(global1.b.x, global0.b.x, global0.a.b.x)))))), -493f, true));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<i32>, arg_3: vec4<i32>) -> vec3<f32> {
    let var_0 = min(vec3<i32>(arg_2.x, select(firstTrailingBit(47731i), arg_3.x ^ 32576i, true) | ~_wgslsmith_add_i32(arg_2.x, arg_3.x), i32(-1i) * -_wgslsmith_div_i32(arg_3.x, 1i)), reverseBits(arg_3.yxz));
    global2 = true;
    let var_1 = arg_2.x;
    let var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(abs(min(0u, global0.a.a)), ~84459u, arg_0.a.a.a, ~global1.a.a << (18314u % 32u)), ~reverseBits(~vec4<u32>(0u, global0.a.a, global0.a.a, global1.a.a)));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global1.b, vec3<f32>(896f, arg_0.a.b.x, global1.c.x))) - vec3<f32>(global0.c.x, -1322f, -743f)))), global1.b), arg_0.a.b));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = global1.a.b.x;
    global1 = Struct_2(Struct_1(~_wgslsmith_sub_u32(~arg_0, 1u), !select(select(global1.a.b, vec2<bool>(global1.a.b.x, false), true), vec2<bool>(global0.a.b.x, true), !global1.a.b.x)), _wgslsmith_f_op_vec3_f32(func_4(Struct_3(Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2146f, global0.c.x, global1.c.x) + vec3<f32>(global0.c.x, -1000f, 822f)), _wgslsmith_f_op_vec3_f32(sign(global0.c))), 5439u, global0.a), _wgslsmith_f_op_f32(func_3()), vec4<i32>(select(-u_input.c.x, u_input.c.x, any(vec3<bool>(global1.a.b.x, true, global0.a.b.x))), u_input.e.x, ~u_input.b.x, -1i), countOneBits(firstLeadingBit(~vec4<i32>(2147483647i, 1i, 1i, u_input.c.x))))), vec3<f32>(1685f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global0.b.x, global0.b.x))))))));
    global0 = Struct_2(Struct_1(~abs(24244u), global1.a.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) - _wgslsmith_f_op_vec3_f32(step(global0.c, vec3<f32>(global1.b.x, global0.b.x, global0.c.x))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(abs(198f)), _wgslsmith_f_op_f32(sign(global1.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global1.b, global1.c))), !(!vec3<bool>(global1.a.b.x, true, global1.a.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b * global1.c)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -672f)), _wgslsmith_f_op_vec3_f32(func_4(Struct_3(Struct_2(Struct_1(4294967295u, global1.a.b), global1.b, global0.c), global1.a.a, Struct_1(u_input.a, global1.a.b)), 356f, ~vec4<i32>(u_input.c.x, 14855i, u_input.c.x, u_input.c.x), vec4<i32>(21702i, 2147483647i, u_input.b.x, 485i))).x, global0.c.x)));
    let var_0 = ~(~vec4<u32>(_wgslsmith_add_u32(69266u, 2932u), 4294967295u, u_input.a, ~global0.a.a)) | max(reverseBits(max(vec4<u32>(0u, 39304u, 44603u, 8870u), vec4<u32>(u_input.d, arg_0, 3432u, 46583u))) & vec4<u32>(arg_0, 5236u, _wgslsmith_mod_u32(4775u, global1.a.a), max(arg_0, 75184u)), min(~vec4<u32>(u_input.d, global1.a.a, 42509u, arg_0), min(vec4<u32>(1u, 0u, 20194u, 1u), vec4<u32>(21309u, u_input.a, arg_0, global0.a.a)) >> (abs(vec4<u32>(8951u, global0.a.a, global0.a.a, 67037u)) % vec4<u32>(32u))));
    global1 = Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c - global1.b) + vec3<f32>(global1.c.x, global0.c.x, global0.b.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, -1351f, -325f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.c.x, global1.c.x)))))));
    return global0.a;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    return Struct_2(func_2(65992u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -621f, _wgslsmith_f_op_f32(arg_0 * 371f)), vec3<f32>(671f, _wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(floor(-815f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0, _wgslsmith_f_op_f32(ceil(1002f)))), select(!vec3<bool>(true, arg_2.a.b.x, false), vec3<bool>(true, true, true), func_2(32910u).b.x))), global1.c);
}

fn func_5(arg_0: Struct_2) -> u32 {
    global2 = true;
    var var_0 = global0.a.a;
    let var_1 = select(~global0.a.a, 16558u, global0.a.b.x);
    let var_2 = !(countOneBits(max(9364i, ~14951i)) < (select(~(-2147483647i), -53035i, true) << ((_wgslsmith_add_u32(u_input.a, arg_0.a.a) >> (arg_0.a.a % 32u)) % 32u)));
    global0 = func_1(_wgslsmith_f_op_f32(-343f * -2203f), -3007f, Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global1.c.x, 1394f)), -389f, 1337f)), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f)))));
    return 0u;
}

fn func_6(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = func_1(-899f, -1144f, Struct_2(func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global0.b.x, -1000f, global1.a.b.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.x + global1.c.x))), Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, -1134f, global1.c.x)), global1.b)).a, global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.b), _wgslsmith_f_op_vec3_f32(-global0.c), global1.a.b.x))))).a.b.x;
    global1 = func_1(-329f, _wgslsmith_f_op_f32(max(global1.c.x, 274f)), func_1(1724f, global0.c.x, func_1(_wgslsmith_f_op_f32(-244f * _wgslsmith_f_op_f32(f32(-1f) * -490f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2396f + global0.b.x) * global1.c.x), Struct_2(Struct_1(58105u, global1.a.b), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(383f, global0.c.x, global0.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, global1.b.x, global0.b.x) * vec3<f32>(638f, global1.b.x, global0.c.x))))));
    var var_1 = global0.a;
    var_1 = func_2(_wgslsmith_sub_u32((1u & ~arg_0.x) | (u_input.d >> (16168u % 32u)), ~(~(1u & global1.a.a))));
    global1 = func_1(-346f, global1.c.x, Struct_2(Struct_1(max(1u, 0u), func_1(func_1(267f, -740f, Struct_2(global0.a, vec3<f32>(421f, -668f, -222f), vec3<f32>(global0.b.x, global1.b.x, global0.c.x))).c.x, _wgslsmith_f_op_f32(select(global1.b.x, global0.c.x, var_1.b.x)), Struct_2(Struct_1(43775u, vec2<bool>(global0.a.b.x, global0.a.b.x)), vec3<f32>(307f, global1.c.x, 342f), vec3<f32>(global0.c.x, global0.b.x, global1.b.x))).a.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(273f, global1.b.x, global0.c.x) - _wgslsmith_f_op_vec3_f32(global1.c - global1.c))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.c.x, global0.b.x) - vec3<f32>(global1.b.x, -360f, -1107f)), vec3<f32>(global1.c.x, 313f, global1.b.x), true))))));
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1194f) + global0.c.x))), 549f, Struct_2(func_2(abs(~39725u)), global0.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1168f, -1000f, global1.c.x), vec3<f32>(global1.b.x, -657f, -690f), var_1.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(~vec4<u32>(func_5(func_1(-1348f, -464f, Struct_2(global1.a, global0.c, global1.b))), global0.a.a, _wgslsmith_mult_u32(~u_input.a, u_input.d), firstLeadingBit(global0.a.a)));
    global1 = Struct_2(Struct_1(1u, vec2<bool>(false, (u_input.d & 4294967295u) <= ~u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -366f), global1.c.x, _wgslsmith_f_op_f32(-global0.c.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global1.b, global1.c)) + _wgslsmith_f_op_vec3_f32(select(global1.b, global1.b, false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1081f, global0.b.x, global0.c.x) * vec3<f32>(1350f, global0.c.x, 1000f)), global0.c), select(vec3<bool>(false, false, false), !vec3<bool>(true, false, global1.a.b.x), false))), global0.b));
    let var_0 = _wgslsmith_f_op_f32(abs(global1.b.x));
    var var_1 = -46198i;
    global0 = Struct_2(Struct_1(~u_input.d, !global0.a.b), global1.c, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2745f, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1345f - var_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.b.x * global0.b.x), _wgslsmith_f_op_f32(ceil(global1.c.x))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1354f, _wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_f_op_f32(-global0.c.x))))));
    var var_2 = func_1(var_0, _wgslsmith_f_op_f32(f32(-1f) * -466f), func_1(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), func_6(vec4<u32>(~1u, 1u, 38317u, firstLeadingBit(u_input.a)))));
    var var_3 = func_2(1u);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, countOneBits(max(vec4<u32>(55089u, var_3.a, _wgslsmith_clamp_u32(var_3.a, 1u, var_3.a), global1.a.a), ~vec4<u32>(var_2.a.a, 1u, 2523u, global1.a.a))), _wgslsmith_f_op_vec2_f32(-var_2.c.yx));
}

