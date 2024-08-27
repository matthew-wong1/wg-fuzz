struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(418f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1041f * 1065f)) + _wgslsmith_f_op_f32(f32(-1f) * -856f))), -1166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(815f - -268f)))));
    var var_1 = _wgslsmith_div_vec3_u32(~firstTrailingBit(reverseBits(vec3<u32>(u_input.c.x, 0u, u_input.b.x))), u_input.b.xxy);
    var_1 = ~firstLeadingBit(vec3<u32>(~u_input.b.x, ~(~4294967295u), ~u_input.b.x));
    var var_2 = select(u_input.b, u_input.b, global0[_wgslsmith_index_u32(18917u, 29u)]) >> (vec4<u32>(min(1u, ~4294967295u), ~(~25738u), var_1.x >> (u_input.c.x % 32u), var_1.x) % vec4<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -541f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(var_0.x, -901f)), _wgslsmith_f_op_f32(floor(var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(244f)), _wgslsmith_f_op_f32(trunc(716f))))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), false))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    var var_0 = arg_1.d.x;
    global0 = array<vec4<bool>, 29>();
    return _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-2317f)))));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>) -> bool {
    global0 = array<vec4<bool>, 29>();
    let var_0 = arg_0.a.xx;
    var var_1 = -vec4<i32>(_wgslsmith_add_i32(~2147483647i << (u_input.c.x % 32u), _wgslsmith_sub_i32(~(-1i), 1i)), i32(-1i) * -u_input.a, _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(-45685i, u_input.a), u_input.a), -1i);
    var_1 = -select(firstTrailingBit(abs(countOneBits(vec4<i32>(7207i, -2147483647i, var_1.x, var_1.x)))), firstLeadingBit((vec4<i32>(-8837i, var_1.x, u_input.a, 1i) ^ vec4<i32>(32450i, var_1.x, 1i, -2147483647i)) & ~vec4<i32>(var_1.x, 44801i, 0i, u_input.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(346f, -1208f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -729f)));
    let var_2 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1525f))), _wgslsmith_f_op_f32(688f + _wgslsmith_f_op_f32(ceil(914f))), 331f, -338f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-154f, -480f, 711f, -1117f), vec4<f32>(-607f, 104f, -639f, 604f))))))), Struct_3(8467i, _wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2511f, 521f) + vec2<f32>(575f, 222f)), _wgslsmith_div_vec2_f32(vec2<f32>(961f, -483f), vec2<f32>(997f, -178f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-541f, -371f)))))), vec3<u32>(u_input.b.x, ~40346u, min(1u, arg_1.x ^ u_input.c.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-var_1.x, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(var_1.x, -8409i), u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -17646i, 0i, var_1.x), vec4<i32>(u_input.a, 32002i, 15721i, var_1.x) & vec4<i32>(0i, 22074i, var_1.x, u_input.a)))), ~(~41227u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_vec3_f32(func_3()).x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-744f, -1843f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x * _wgslsmith_f_op_f32(round(-206f))))))));
    return arg_0.b.x;
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> vec2<f32> {
    global0 = array<vec4<bool>, 29>();
    var var_0 = Struct_4(vec3<bool>(arg_1, !(!(!arg_1)), any(!select(vec2<bool>(true, true), arg_0.a.xy, false))), arg_0.b);
    var var_1 = u_input.b.x;
    let var_2 = arg_2.c;
    let var_3 = arg_2;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(698f, 818f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(174f, arg_2.d) + vec2<f32>(var_2.a.x, -257f))))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-476f, _wgslsmith_div_f32(var_3.e.x, arg_2.e.x)))))));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> Struct_4 {
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    let var_0 = Struct_3(~_wgslsmith_add_i32(~(-arg_1.e.x), arg_2.e.x), arg_2.b, arg_3.a.xw, arg_1.d, arg_1.e);
    global0 = array<vec4<bool>, 29>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(Struct_4(arg_0, vec3<bool>(true, true, false)), arg_0.x, Struct_2(4995u, arg_0.zz, arg_3, arg_1.c.x, arg_3.a.zwy))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1165f, arg_2.c.x))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.b.zz - _wgslsmith_f_op_vec2_f32(-arg_1.c)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1.c.x, var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x + arg_1.b.x)))));
    return Struct_4(arg_0, !select(arg_0, vec3<bool>(arg_0.x, arg_0.x, var_0.a >= 29006i), select(vec3<bool>(false, false, true), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x), select(arg_0, arg_0, arg_0.x))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    global0 = array<vec4<bool>, 29>();
    var var_0 = func_6(!select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(false, true, false)), vec3<bool>(true, true, true)), Struct_3(u_input.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 458f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(711f, 662f, 815f))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_0, arg_0)), arg_0, _wgslsmith_f_op_f32(-740f - arg_0)), vec3<bool>(true, false, all(vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1389f, arg_0)) - _wgslsmith_f_op_vec2_f32(func_5(Struct_4(vec3<bool>(false, false, false), vec3<bool>(true, true, false)), func_2(Struct_4(vec3<bool>(false, true, true), vec3<bool>(false, true, false)), u_input.b), Struct_2(0u, vec2<bool>(true, true), Struct_1(vec4<f32>(arg_0, 350f, arg_0, 375f)), arg_0, vec3<f32>(457f, 1900f, arg_0))))), _wgslsmith_clamp_vec3_u32(~abs(u_input.b.yyx), ~vec3<u32>(25516u, 8027u, u_input.c.x), u_input.b.xxz), _wgslsmith_add_vec4_i32(min(-vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), -vec4<i32>(-46089i, -1i, u_input.a, -2147483647i)), select(min(vec4<i32>(2147483647i, 2147483647i, u_input.a, 2147483647i), vec4<i32>(12853i, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (u_input.b % vec4<u32>(32u)), true))), Struct_3(-(2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -74426i, -1i, u_input.a), vec4<i32>(u_input.a, u_input.a, 16962i, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1085f, arg_0, arg_0), vec3<f32>(arg_0, arg_0, -1657f)))))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3()).x)), _wgslsmith_f_op_f32(-arg_0)), u_input.b.wzy, abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a))) << (vec4<u32>(u_input.c.x, countOneBits(u_input.c.x), reverseBits(u_input.c.x), firstTrailingBit(0u)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(691f, -588f, -633f, 1000f))))));
    global0 = array<vec4<bool>, 29>();
    let var_1 = true;
    global0 = array<vec4<bool>, 29>();
    return Struct_3(_wgslsmith_mult_i32(0i, u_input.a) | 0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(239f - arg_0), _wgslsmith_f_op_f32(round(arg_0)), arg_0))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 362f, 1355f)))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1696f))), _wgslsmith_f_op_f32(ceil(1f)), true != all(global0[_wgslsmith_index_u32(37850u, 29u)]))), _wgslsmith_f_op_f32(-arg_0)), ~(~u_input.b.xxy), vec4<i32>(~_wgslsmith_add_i32(~(-2147483647i), -27467i), _wgslsmith_mult_i32(u_input.a, ~(u_input.a | -1i)), u_input.a, -countOneBits(_wgslsmith_div_i32(u_input.a, -1i))));
}

fn func_7(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_3, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = arg_2.b;
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    var var_1 = func_6(select(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), !vec3<bool>(true, any(global0[_wgslsmith_index_u32(1u, 29u)]), true), vec3<bool>(true, true, true)), func_1(func_1(_wgslsmith_div_f32(arg_2.b.x, -1167f)).b.x), func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.b.x, arg_3.x)))))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.c.x, 1000f, arg_3.x, arg_2.c.x), vec4<f32>(1309f, var_0.x, 963f, arg_3.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_2.b.x, -202f, var_0.x)))))));
    global0 = array<vec4<bool>, 29>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(func_7(firstTrailingBit(countOneBits(u_input.b.xwx) << (u_input.b.wyw % vec3<u32>(32u))), u_input.b.x, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(818f + 399f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_4(vec3<bool>(true, var_0, var_0), vec3<bool>(false, false, var_0)), var_0, Struct_2(39107u, vec2<bool>(false, false), Struct_1(vec4<f32>(-230f, -529f, 798f, 167f)), 530f, vec3<f32>(324f, -2960f, 378f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1959f, -117f)))))))));
    global0 = array<vec4<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(-vec2<i32>(~u_input.a, _wgslsmith_add_i32(u_input.a, -2477i)), vec2<i32>(u_input.a, -1i)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) + _wgslsmith_f_op_f32(sign(var_1.x))), var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1118f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, -703f)) * func_1(var_1.x).b.x), _wgslsmith_f_op_vec3_f32(func_3()).x)), u_input.b.yyz);
}

