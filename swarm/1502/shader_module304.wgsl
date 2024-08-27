struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    var var_0 = Struct_4(vec3<i32>(1i, 78728i, u_input.c.x) ^ ~max(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x) ^ vec3<i32>(33754i, 2147483647i, 1i), u_input.c | vec3<i32>(u_input.c.x, 2147483647i, 1i)), ~(-min(u_input.c.zz, reverseBits(u_input.c.yy))), Struct_3(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(453f, 186f, -414f), vec3<f32>(718f, 150f, -758f), false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1512f, 2533f, 1857f, 1000f)), vec4<f32>(-340f, -364f, 1313f, 2945f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1141f, -415f, 939f, -1552f), vec4<f32>(1614f, 346f, 395f, -457f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(137f, 1561f, -1290f, -383f), vec4<f32>(-666f, 1133f, 1701f, -279f))))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2124f, -1000f, 1000f, 461f) - vec4<f32>(1035f, 1331f, -1189f, -330f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(793f, -207f, -531f, 1422f) - vec4<f32>(-619f, -1463f, -1875f, 545f))), Struct_1(select(false, false, false), min(u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(322f + -403f), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1468i, 7951i, -3004i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), u_input.b)), Struct_1(false, _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2448i), vec4<i32>(-1i, -5584i, -2147483647i, 1i)), vec4<i32>(71763i, -42532i, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f)), select(-vec4<i32>(u_input.c.x, u_input.c.x, 0i, u_input.c.x), vec4<i32>(-4884i, -19365i, -5130i, u_input.c.x), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), 1u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-655f + 1652f) - _wgslsmith_f_op_f32(sign(var_0.c.e.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1368f))), var_0.c.c.x), var_0.c.b.xx));
    let var_2 = ~(-63191i);
    var var_3 = false;
    var_0 = Struct_4(vec3<i32>(2147483647i, _wgslsmith_div_i32(~abs(var_0.b.x), -var_2), abs(max(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2, var_0.b.x), vec2<i32>(var_0.c.e.d.x, u_input.c.x))))), -_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 1i), min(~var_0.b, -vec2<i32>(2147483647i, var_0.c.d.b.b))), var_0.c);
    return vec3<bool>(all(vec4<bool>(any(!vec4<bool>(var_0.c.d.b.a, true, false, var_0.c.d.b.a)), !(!var_0.c.d.b.a), true, false)), select(1i > var_0.c.d.b.d.x, select(!var_0.c.d.b.a, !any(vec2<bool>(var_0.c.d.b.a, false)), var_0.c.e.a), false), any(select(vec2<bool>(false, false), select(select(vec2<bool>(var_0.c.d.b.a, var_0.c.d.b.a), vec2<bool>(var_0.c.a, var_0.c.d.b.a), vec2<bool>(var_0.c.e.a, true)), vec2<bool>(true, false), true), vec2<bool>(true, true))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = i32(-1i) * -u_input.c.x;
    var var_1 = 1f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(235f))) * -883f))));
    let var_2 = Struct_4(-(~(~(vec3<i32>(u_input.c.x, -44919i, var_0) | arg_0))), u_input.c.zy, Struct_3(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(492f, -534f, 181f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(182f + 935f), -762f, -1344f, _wgslsmith_div_f32(-1723f, -974f))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2297f, 1000f, 1653f, -378f) * vec4<f32>(-1000f, 1320f, 368f, 669f))), Struct_1(-13556i < arg_0.x, ~71688i, -971f, ~vec4<i32>(67261i, arg_0.x, 4484i, -38413i), 22524u)), Struct_1(select(true, 9795i <= var_0, u_input.b <= 0u), -44339i, -967f, -(~vec4<i32>(1i, arg_0.x, var_0, u_input.c.x)), 101003u)));
    let var_3 = var_2.c;
    return Struct_1(any(!func_3(~vec3<u32>(12526u, var_2.c.e.e, 28219u))), _wgslsmith_dot_vec2_i32(-firstLeadingBit(vec2<i32>(-13654i, var_3.e.b)), _wgslsmith_mult_vec2_i32(max(_wgslsmith_clamp_vec2_i32(var_3.e.d.zx, u_input.c.zx, u_input.c.zx), -vec2<i32>(var_2.b.x, -1i)), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(arg_0.x, var_2.b.x), var_3.e.d.xx), -arg_0.xz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.c.x - var_2.c.d.a.x)))))), var_2.c.e.d, u_input.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_5 {
    return Struct_5(countOneBits(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 84147u, 32825u, arg_0.b.e), vec4<u32>(u_input.b, 1u, 1u, 66009u)), ~vec4<u32>(arg_0.b.e, u_input.a.x, arg_0.b.e, 0u), select(vec4<bool>(false, true, arg_0.b.a, true), arg_3, false))), arg_1);
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_5, arg_3: Struct_4) -> f32 {
    var var_0 = Struct_3(true, arg_3.c.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.c.d.a), vec4<f32>(465f, arg_3.c.b.x, arg_3.c.b.x, arg_2.b)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3.c.b.x, -219f, -403f, arg_2.b))))), arg_3.c.d, arg_3.c.e);
    var_0 = arg_3.c;
    let var_1 = arg_3;
    var var_2 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_3.c.d.a, vec4<f32>(-299f, 664f, -135f, 1104f), true))), vec4<f32>(890f, _wgslsmith_f_op_f32(trunc(var_1.c.c.x)), -1000f, 1f))), Struct_1(true, _wgslsmith_add_i32(1i, 1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1040f + -1986f), 1000f)), firstTrailingBit(vec4<i32>(arg_3.c.e.d.x, -10319i, 48811i, 1i)), 46327u)), var_0.b.x, vec2<u32>(4294967295u, 4294967295u), !(!(!(!vec4<bool>(var_1.c.e.a, var_0.d.b.a, var_0.d.b.a, true)))));
    var_2 = func_4(var_1.c.d, var_1.c.c.x, _wgslsmith_clamp_vec2_u32(select(reverseBits(vec2<u32>(var_2.a.x, arg_2.a.x)) & ~arg_2.a.xw, ~vec2<u32>(u_input.b, 4294967295u), func_3(var_2.a.yww).xy), arg_2.a.wy, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, arg_2.a.wx), firstLeadingBit(var_2.a.wy))), vec4<bool>(true, false, _wgslsmith_f_op_f32(var_1.c.b.x * _wgslsmith_f_op_f32(f32(-1f) * -146f)) > var_1.c.c.x, func_3(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_2.a.x, u_input.b, arg_1), select(vec3<u32>(50176u, u_input.b, 4294967295u), arg_2.a.zwx, var_0.e.a))).x));
    return -322f;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(func_5(-firstLeadingBit(-(u_input.c.x | 7061i)), 26422u, func_4(Struct_2(vec4<f32>(-268f, _wgslsmith_f_op_f32(f32(-1f) * -1266f), _wgslsmith_f_op_f32(-560f + 625f), _wgslsmith_f_op_f32(411f - 1000f)), func_2(u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1884f)) * _wgslsmith_f_op_f32(sign(157f))), ~vec2<u32>(37430u, u_input.b), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), all(vec4<bool>(false, false, true, false))), true)), Struct_4(~(~_wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(-1i, u_input.c.x, 0i), vec3<i32>(8726i, -2147483647i, -1i))), vec2<i32>(~func_2(vec3<i32>(1i, u_input.c.x, u_input.c.x)).b, u_input.c.x), Struct_3(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(1569f, 726f, -224f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(424f, 1464f, -1000f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(221f, -904f, -667f, -319f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-236f, 435f, -1081f, -1557f) - vec4<f32>(289f, 2410f, -377f, 1076f)))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-764f, 315f, 382f, -1573f)), Struct_1(false, 2147483647i, 797f, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), 1u)), Struct_1(any(vec3<bool>(true, false, true)), 0i, func_4(Struct_2(vec4<f32>(141f, 1040f, 308f, -1455f), Struct_1(true, -19759i, 1578f, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i), u_input.a.x)), -762f, vec2<u32>(19863u, 0u), vec4<bool>(false, false, true, false)).b, ~vec4<i32>(u_input.c.x, u_input.c.x, 0i, u_input.c.x), u_input.b)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1365f, _wgslsmith_f_op_f32(min(539f, _wgslsmith_f_op_f32(-1005f * 174f))), func_4(Struct_2(vec4<f32>(548f, 2035f, -507f, 450f), Struct_1(false, -1i, -501f, vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 2147483647i), 0u)), 435f, vec2<u32>(u_input.a.x, 1u) | vec2<u32>(u_input.a.x, 29636u), vec4<bool>(true, true, true, true)).b, _wgslsmith_f_op_f32(max(1500f, -1327f)))), Struct_1(!func_2(u_input.c).a || all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_dot_vec3_i32(u_input.c >> (~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), reverseBits(u_input.c)), -620f, abs(~(-vec4<i32>(u_input.c.x, u_input.c.x, 1i, -2229i))), u_input.a.x));
    var var_2 = ~var_1.b.d;
    var_2 = _wgslsmith_div_vec4_i32(var_1.b.d, vec4<i32>(~u_input.c.x, -_wgslsmith_clamp_i32(var_2.x & 32806i, _wgslsmith_mod_i32(31270i, u_input.c.x), var_2.x), ~var_2.x, var_1.b.b));
    let var_3 = ~min(-abs(~var_2.x), -47803i);
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(func_1() & -2147483647i, _wgslsmith_mod_i32(~u_input.c.x, -68024i), 1i, u_input.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -u_input.c.x, u_input.c.x, -u_input.c.x), ~(-vec4<i32>(u_input.c.x, -19203i, u_input.c.x, -47257i)))) >> (firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.b, 24123u & u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 14830u, u_input.a.x)), ~u_input.b), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), u_input.a.x, 13203u, abs(u_input.b)))) % vec4<u32>(32u));
    let var_1 = Struct_3(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(161f, -1446f, 307f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(297f, -735f, -696f)))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-649f)), func_4(Struct_2(vec4<f32>(426f, -2298f, 1103f, 511f), Struct_1(true, 87435i, -990f, vec4<i32>(0i, 2147483647i, u_input.c.x, var_0.x), 0u)), 690f, u_input.a, vec4<bool>(false, true, true, true)).b, all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(floor(652f)), -925f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(-869f, 185f, true)), _wgslsmith_div_f32(732f, 1000f), _wgslsmith_f_op_f32(func_5(2147483647i, 4294967295u, Struct_5(vec4<u32>(1u, u_input.b, u_input.a.x, 0u), 675f), Struct_4(u_input.c, var_0.ww, Struct_3(false, vec3<f32>(-693f, 594f, -836f), vec4<f32>(1332f, 2139f, 1000f, 829f), Struct_2(vec4<f32>(-762f, -574f, 970f, 1529f), Struct_1(true, 22638i, -301f, vec4<i32>(-1i, -1i, -3427i, var_0.x), u_input.a.x)), Struct_1(true, var_0.x, -621f, vec4<i32>(var_0.x, -17809i, 0i, u_input.c.x), 33450u))))), -288f))))), Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-387f - 719f), -645f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1554f)))), -1590f, 277f), func_2(~(vec3<i32>(11697i, u_input.c.x, 3862i) >> (vec3<u32>(u_input.b, 62466u, 0u) % vec3<u32>(32u))))), func_2(-vec3<i32>(_wgslsmith_div_i32(u_input.c.x, -1i), 2147483647i, 1i)));
    var var_2 = Struct_5(countOneBits(min(vec4<u32>(1u, 1u & u_input.b, ~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(13501u, var_1.e.e, 34706u, 0u), vec4<u32>(4294967295u, var_1.e.e, 1u, u_input.a.x))), firstLeadingBit(vec4<u32>(1u, var_1.d.b.e, 1u, 6847u)) ^ max(vec4<u32>(var_1.e.e, var_1.e.e, 1u, 68135u), vec4<u32>(1u, u_input.a.x, u_input.a.x, var_1.e.e)))), -382f);
    var var_3 = _wgslsmith_add_u32(firstLeadingBit(1u), min(u_input.b, _wgslsmith_mod_u32(~u_input.a.x >> (max(9395u, 4294967295u) % 32u), var_1.d.b.e)));
    var_0 = var_1.d.b.d;
    var_0 = firstLeadingBit(var_1.e.d);
    let var_4 = func_2(select(-vec3<i32>(-var_1.e.d.x, ~(-26227i), ~24824i), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.d.b.b, -14291i, var_1.d.b.b), var_0.zwx), firstLeadingBit(var_1.d.b.d.yxx)), ~min(vec3<i32>(var_0.x, 2147483647i, var_1.d.b.b), vec3<i32>(-22752i, 8232i, var_1.e.b))), select(vec3<bool>(false, var_1.e.a, false), vec3<bool>(true, true, true), func_3(_wgslsmith_div_vec3_u32(vec3<u32>(49692u, u_input.a.x, var_2.a.x), var_2.a.yyy)))));
    var var_5 = _wgslsmith_f_op_vec3_f32(-var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, _wgslsmith_f_op_f32(select(-1757f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c)), var_4.a)));
}

