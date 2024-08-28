struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<f32>) -> vec2<bool> {
    var var_0 = true;
    var var_1 = global0.d.a;
    var var_2 = global0.d.a.xy;
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0.a)));
    var_0 = 309f <= var_3.x;
    return global0.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>) -> vec4<f32> {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x - global0.d.b.x), arg_0.b.x), _wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(482f, arg_2.x, global0.d.b.x, global0.a.x)))) - vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f)), global0.d.b.x, arg_2.x)), countOneBits(_wgslsmith_clamp_i32(_wgslsmith_div_i32(15628i, -7334i), global0.d.c.x >> (global0.d.a.x % 32u), -2147483647i)) == u_input.e, !global0.c, Struct_1(vec4<u32>(arg_1.x, 4294967295u, 1u, ~arg_1.x), _wgslsmith_f_op_vec2_f32(-global0.a.xy), u_input.d, select(arg_1.x, global0.d.d, false)), 1400f);
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-192f, -821f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(-372f * -853f)), _wgslsmith_f_op_f32(870f + _wgslsmith_f_op_f32(global0.a.x + arg_0.b.x)))), false | (!all(vec4<bool>(global0.b, true, global0.c.x, true)) == global0.b), vec2<bool>(any(global0.c) & true, select(global0.b, -1675f < _wgslsmith_f_op_f32(floor(1000f)), !(true && global0.c.x))), Struct_1(min(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4695u, 0u, 1u), arg_0.a, arg_0.a)), vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(58810u, 4294967295u, u_input.c, 1u), arg_0.a), ~u_input.a, arg_1.x)), vec2<f32>(arg_0.b.x, -175f), firstLeadingBit(_wgslsmith_mult_vec4_i32(~vec4<i32>(global0.d.c.x, global0.d.c.x, u_input.d.x, -6417i), u_input.d)), ~countOneBits(abs(33239u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - 2852f) * -1280f))));
    global0 = Struct_2(global0.a, any(vec4<bool>(global0.b, false, u_input.c >= 66732u, false)), !global0.c, Struct_1(global0.d.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b - arg_2.xz)), vec2<f32>(-1472f, arg_0.b.x)), arg_0.c, arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) - global0.d.b.x));
    let var_0 = i32(-1i) * -43128i;
    var var_1 = _wgslsmith_dot_vec3_i32(~reverseBits(global0.d.c.yzz), arg_0.c.wxx);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(471f, global0.a.x, arg_0.b.x, arg_2.x), global0.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.a, vec4<f32>(arg_2.x, 853f, 374f, -573f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-220f, _wgslsmith_f_op_f32(max(408f, 903f)), arg_2.x, _wgslsmith_f_op_f32(trunc(global0.d.b.x))))))), _wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(min(global0.a, global0.a))), !(!vec4<bool>(false, true, arg_1.x <= arg_0.d, all(vec4<bool>(false, true, global0.b, global0.b))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: u32) -> vec4<f32> {
    let var_0 = firstLeadingBit(47149i);
    var var_1 = vec2<i32>(0i, _wgslsmith_mod_i32(arg_1.d.c.x, -u_input.d.x));
    var_1 = u_input.d.yy;
    var var_2 = global0.c;
    let var_3 = select(firstLeadingBit(-(~vec4<i32>(var_1.x, var_0, -1i, var_1.x)) | _wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, var_1.x, -1i) >> (arg_1.d.a % vec4<u32>(32u)), min(vec4<i32>(1i, -834i, arg_1.d.c.x, u_input.e), arg_1.d.c))), _wgslsmith_clamp_vec4_i32(-select(vec4<i32>(0i, 1i, global0.d.c.x, -22633i), vec4<i32>(9128i, -37037i, 31645i, var_0), vec4<bool>(false, false, true, arg_2.x)), global0.d.c, ~_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(var_0, global0.d.c.x, -72936i, u_input.d.x)), ~vec4<i32>(var_0, var_1.x, global0.d.c.x, arg_1.d.c.x))), select(vec4<bool>(select(arg_2.x, any(vec4<bool>(global0.b, true, true, var_2.x)), true), arg_2.x, global0.c.x, var_2.x), !vec4<bool>(true, true || arg_1.c.x, all(vec3<bool>(arg_2.x, true, arg_1.c.x)), !global0.b), true));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(~global0.d.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)), arg_1.d.c, 0u), arg_1.d.a.xx, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(398f, 1000f, global0.a.x))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.e, arg_0.x, global0.a.x, 424f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(529f, 1412f, -593f, 371f))))), _wgslsmith_f_op_vec4_f32(-global0.a)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_4(global0.a.yx, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global0.d, global0.d.a.zz, global0.a.wyw)) - vec4<f32>(399f, global0.d.b.x, global0.e, 481f)), select(any(vec3<bool>(global0.c.x, global0.c.x, arg_0.x)), func_1(global0.a.wwz).x, arg_0.x), !vec2<bool>(arg_0.x, true), Struct_1(global0.d.a, vec2<f32>(1252f, global0.d.b.x), ~vec4<i32>(u_input.e, u_input.e, 1i, global0.d.c.x), 0u >> (global0.d.d % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -738f)), select(func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -347f, 630f)))), !arg_0.xy, !select(vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, true), global0.c)), _wgslsmith_clamp_u32(~global0.d.d, ~90650u, 0u) ^ _wgslsmith_sub_u32(~41425u, u_input.a))), !arg_0.x, global0.c, global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - -1182f)))));
    global0 = Struct_2(global0.a, arg_0.x, arg_0.yx, Struct_1(global0.d.a, _wgslsmith_f_op_vec2_f32(global0.d.b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0.a.yw)))), -(u_input.d ^ vec4<i32>(u_input.e, u_input.e, -60613i, u_input.d.x)), ~(~arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-765f, global0.e) * global0.a.wx), Struct_2(vec4<f32>(global0.d.b.x, global0.d.b.x, 476f, 546f), true, vec2<bool>(arg_0.x, arg_0.x), Struct_1(arg_1, global0.a.yy, u_input.d, 1u), global0.a.x), vec2<bool>(arg_0.x, global0.b), 3997u)).x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(809f + global0.d.b.x), _wgslsmith_f_op_f32(704f + 584f))))));
    global0 = Struct_2(vec4<f32>(global0.d.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-347f * 471f)))), 2673f, 666f), arg_1.x > (abs(arg_1.x) ^ 51178u), arg_0.zx, Struct_1(global0.d.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<u32>(arg_1.x, 24038u, 1u, 89812u), vec2<f32>(-1183f, global0.e), global0.d.c, u_input.a), firstLeadingBit(arg_1.xy), global0.a.www)).wz), u_input.d, global0.d.d), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-269f + -744f)))), _wgslsmith_f_op_f32(exp2(global0.d.b.x)))));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global0.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.x - global0.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e - global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -422f)), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(2842f - global0.d.b.x)))), true || ((countOneBits(u_input.a) >> (arg_2 % 32u)) < ~_wgslsmith_dot_vec4_u32(global0.d.a, global0.d.a)), !global0.c, global0.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(1308f, _wgslsmith_f_op_vec4_f32(func_3(global0.d, vec2<u32>(0u, global0.d.d), global0.a.wzz)).x), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, -171f, global0.e)), global0.b, func_1(global0.a.xzw), global0.d, _wgslsmith_f_op_f32(sign(-1466f))), global0.c, reverseBits(52505u << (u_input.c % 32u)))).x)));
    var var_0 = _wgslsmith_f_op_f32(max(global0.a.x, global0.e));
    return global0.d;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: i32) -> Struct_2 {
    let var_0 = !vec4<bool>(true, any(vec3<bool>(global0.c.x | true, true, -414f < arg_0.x)), arg_1.b, any(vec2<bool>(true, any(vec2<bool>(true, false)))));
    var var_1 = Struct_1(~(~countOneBits(vec4<u32>(arg_1.d.d, global0.d.a.x, u_input.b, 34838u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(484f * arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x)) - vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)), _wgslsmith_f_op_vec2_f32(step(global0.d.b, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.d.b, vec2<f32>(-491f, -253f)), vec2<f32>(global0.d.b.x, -438f)))))), (vec4<i32>(_wgslsmith_sub_i32(arg_2.x, -46918i), u_input.d.x, 51107i, arg_1.d.c.x) & vec4<i32>(_wgslsmith_mod_i32(global0.d.c.x, arg_3), _wgslsmith_mod_i32(32670i, -2147483647i), 3155i, 13505i)) ^ u_input.d, _wgslsmith_div_u32((~u_input.c << (abs(arg_1.d.a.x) % 32u)) >> (~1u % 32u), arg_1.d.d ^ 0u));
    global0 = arg_1;
    var var_2 = all(var_0);
    let var_3 = !select(vec3<bool>(true, arg_1.c.x, var_0.x), vec3<bool>(arg_1.b, arg_1.c.x, !(arg_1.c.x || global0.b)), vec3<bool>(any(select(vec4<bool>(true, true, global0.c.x, var_0.x), vec4<bool>(arg_1.c.x, var_0.x, true, true), vec4<bool>(true, global0.c.x, arg_1.c.x, true))), any(vec4<bool>(global0.c.x, false, var_0.x, false)), !(arg_0.x == arg_0.x)));
    return Struct_2(arg_1.a, !any(vec4<bool>(false, var_0.x, true, false && arg_1.c.x)), !vec2<bool>(true, countOneBits(global0.d.c.x) <= abs(global0.d.c.x)), global0.d, _wgslsmith_f_op_f32(max(952f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1169f, arg_1.d.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(global0.a.yw, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-1921f * -1284f), _wgslsmith_f_op_f32(-972f - _wgslsmith_f_op_f32(-global0.d.b.x)), 558f, -1099f), true, !func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, global0.e, global0.d.b.x)))), func_2(vec3<bool>(global0.c.x, global0.b || global0.c.x, true), select(vec4<u32>(1u, u_input.c, global0.d.d, 6167u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0.d.d, u_input.a, 0u), vec4<u32>(u_input.c, 1u, u_input.a, global0.d.d)), all(vec2<bool>(global0.b, true))), 1u), global0.d.b.x), global0.d.c.ww, min(u_input.d.x, i32(-1i) * -10512i) >> (~max(_wgslsmith_dot_vec4_u32(global0.d.a, global0.d.a), select(u_input.b, 1u, true)) % 32u));
    let var_0 = Struct_1(~func_5(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(global0.d.b.x - -1059f)), Struct_2(_wgslsmith_f_op_vec4_f32(global0.a + global0.a), global0.b && true, global0.c, func_5(global0.d.b, Struct_2(global0.a, global0.b, global0.c, Struct_1(global0.d.a, vec2<f32>(-1013f, -2547f), u_input.d, 33229u), -385f), vec2<i32>(51826i, -2147483647i), u_input.e).d, _wgslsmith_f_op_f32(-958f + global0.e)), ~(-vec2<i32>(6474i, global0.d.c.x)), 0i).d.a, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_2(vec3<bool>(true, false, false), global0.d.a, 13231u).b.x))), global0.a.x), max(abs(u_input.d), global0.d.c), ((u_input.b >> (func_2(vec3<bool>(true, true, true), global0.d.a, 1u).d % 32u)) ^ _wgslsmith_mod_u32(u_input.c, 1u)) & 32283u);
    let var_1 = !(!vec4<bool>(!func_5(var_0.b, Struct_2(global0.a, global0.b, global0.c, Struct_1(var_0.a, var_0.b, global0.d.c, 4294967295u), var_0.b.x), var_0.c.yx, u_input.e).c.x, func_5(var_0.b, Struct_2(global0.a, true, vec2<bool>(global0.b, true), global0.d, 123f), _wgslsmith_mod_vec2_i32(var_0.c.xx, vec2<i32>(global0.d.c.x, var_0.c.x)), global0.d.c.x).b, (u_input.b | u_input.b) <= func_5(vec2<f32>(-509f, var_0.b.x), Struct_2(vec4<f32>(var_0.b.x, 669f, -1037f, -609f), global0.c.x, vec2<bool>(global0.c.x, true), Struct_1(vec4<u32>(23781u, 4294967295u, u_input.b, 19075u), global0.d.b, vec4<i32>(-2147483647i, -1i, global0.d.c.x, -2147483647i), 14648u), global0.a.x), u_input.d.zy, u_input.e).d.a.x, false));
    var var_2 = vec4<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) < _wgslsmith_f_op_f32(f32(-1f) * -1533f)), var_1.x, var_0.c.x != ((firstTrailingBit(-6139i) << (u_input.b % 32u)) ^ ~max(-21880i, -41522i)), any(!vec3<bool>(global0.c.x, var_1.x, false)));
    var_2 = !vec4<bool>(var_1.x, false, all(var_1.yz), true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.c, 0u), 6093u, u_input.b), ~abs(var_0.a.ywx))));
}

