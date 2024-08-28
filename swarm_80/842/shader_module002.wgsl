struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(12005u, 43586u, 50968u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<f32> {
    var var_0 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), any(vec2<bool>(false, true)))));
    var var_1 = Struct_3(Struct_2(-487f, abs(1i), vec2<i32>(1i, 1i) | -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-6755i, 1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1652f), _wgslsmith_f_op_f32(step(1096f, 1262f)), _wgslsmith_f_op_f32(294f - -1356f), -1000f)) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(414f - 630f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(397f * -1401f) - _wgslsmith_f_op_f32(-121f + -1087f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(920f))), _wgslsmith_div_f32(-484f, _wgslsmith_div_f32(-816f, 321f)))), select(!(!select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, true), var_0.x)), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !vec4<bool>(true, true, all(vec3<bool>(var_0.x, true, true)), select(var_0.x, true, false))));
    var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(-var_1.a.a)), u_input.a, var_1.a.c), _wgslsmith_f_op_vec4_f32(sign(var_1.b)), !(!var_1.c));
    let var_2 = !(_wgslsmith_f_op_f32(round(var_1.b.x)) != 925f);
    var_0 = var_1.c.zz;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-570f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.x, -253f)) * 183f)))), var_1.b.x);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_div_vec3_u32(~(~_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(23242u, 1896u, 0u)), vec3<u32>(1u, global0.x, 60178u))), _wgslsmith_mod_vec3_u32(abs(~(~vec3<u32>(global0.x, 4294967295u, u_input.b))), select(vec3<u32>(~u_input.b, 1u, 1u), abs(vec3<u32>(u_input.b, global0.x, 36596u)), vec3<bool>(false, -836f > arg_0.a, select(true, true, true)))));
    var var_0 = arg_0.b;
    var var_1 = _wgslsmith_mod_i32(i32(-1i) * -(~_wgslsmith_dot_vec3_i32(vec3<i32>(867i, arg_0.c.x, 37860i), vec3<i32>(-50840i, -2147483647i, arg_0.c.x))), -69285i);
    var var_2 = ~(max(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_0.b, -1i), vec3<i32>(-134i, 2147483647i, 2799i)), -vec3<i32>(u_input.a, u_input.a, arg_0.b)), -(~(-14375i))) >> (u_input.b % 32u));
    var_2 = ~_wgslsmith_mod_i32(-22025i, abs(2147483647i));
    return Struct_1(_wgslsmith_f_op_f32(step(arg_0.a, -436f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-505f, arg_0.a) * _wgslsmith_f_op_f32(-1062f * -609f)), _wgslsmith_f_op_f32(round(arg_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, -961f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1100f, 1377f, 3262f)), vec3<f32>(-148f, arg_0.a, 210f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-842f, arg_0.a), _wgslsmith_f_op_f32(select(687f, 747f, false)), _wgslsmith_f_op_f32(-arg_0.a)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, -364f, 1247f), vec3<f32>(arg_0.a, -795f, 1558f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(390f, arg_0.a))) + vec2<f32>(arg_0.a, -1042f)) + vec2<f32>(arg_0.a, arg_0.a))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.b.x, -873f), vec2<f32>(-687f, 865f))))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, 10189i), _wgslsmith_mult_i32(-arg_1.a.b, 22865i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.b & u_input.a, arg_1.a.b, max(u_input.a, arg_1.a.c.x), ~(-22953i)), ~(-vec4<i32>(u_input.a, arg_1.a.b, arg_1.a.c.x, arg_1.a.b))), _wgslsmith_sub_vec2_i32(arg_1.a.c, vec2<i32>(0i, i32(-1i) * -2147483647i)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f + -363f)))), _wgslsmith_f_op_f32(trunc(679f)), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), 210f), vec2<f32>(var_0.x, arg_2.a.a));
    global0 = _wgslsmith_div_vec3_u32(vec3<u32>(global0.x ^ firstTrailingBit(_wgslsmith_clamp_u32(u_input.b, global0.x, u_input.b)), 42693u, global0.x), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(6121u, 58767u, u_input.b)), vec3<u32>(~global0.x, ~(~u_input.b), ~(~u_input.b)), ~(~vec3<u32>(global0.x, 95070u, global0.x))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(arg_1.a.a * _wgslsmith_f_op_f32(round(arg_2.a.a))), u_input.a, -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(53354i, arg_1.a.c.x, 2147483647i, -6273i), select(vec4<i32>(u_input.a, 0i, var_1.b, arg_1.a.c.x), vec4<i32>(var_1.b, var_1.c.x, 0i, -1i), arg_1.c.x)), 11882i));
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: f32) -> vec2<bool> {
    let var_0 = func_4(func_2(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_2)))), -31365i, reverseBits(-vec2<i32>(-28781i, 36164i)))), Struct_3(Struct_2(_wgslsmith_f_op_f32(115f - arg_3), u_input.a, vec2<i32>(arg_0 ^ 25047i, ~7809i)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, 1000f, arg_3, 864f)))))), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), false)), Struct_3(Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1445f), 47221i == arg_0)), _wgslsmith_mod_i32(-2147483647i, u_input.a) ^ _wgslsmith_clamp_i32(2147483647i, arg_0, 3085i), _wgslsmith_mult_vec2_i32(select(vec2<i32>(-2147483647i, -58225i), vec2<i32>(arg_0, 0i), true), -vec2<i32>(u_input.a, 68712i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_2, 1095f, 252f) * vec4<f32>(-1940f, arg_1, arg_2, 560f)))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-296f, 1760f) - _wgslsmith_f_op_f32(-arg_3))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + arg_1) + _wgslsmith_f_op_f32(select(arg_3, 1595f, false)))))), max(-1i | arg_0, u_input.a), vec2<i32>(arg_0 & select(1i, select(13700i, -43489i, true), true), countOneBits(reverseBits(arg_0))));
    return vec2<bool>(u_input.a > ((i32(-1i) * -13370i) | u_input.a), all(select(vec2<bool>(false, true), vec2<bool>(true, true), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false))))));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2255f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -472f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1043f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-168f * -2093f))) + -1823f)), -578f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(918f - _wgslsmith_f_op_f32(-func_4(Struct_1(-1160f, 613f, vec3<f32>(-376f, -947f, 1281f), vec2<f32>(322f, 1550f)), Struct_3(Struct_2(703f, u_input.a, vec2<i32>(u_input.a, 51323i)), vec4<f32>(236f, 414f, -880f, -623f), vec4<bool>(arg_2.x, true, arg_2.x, false)), Struct_3(Struct_2(-1688f, arg_1, vec2<i32>(u_input.a, u_input.a)), vec4<f32>(-383f, -184f, 183f, -100f), vec4<bool>(true, arg_2.x, true, arg_2.x))).c.x))));
    let var_1 = ~_wgslsmith_clamp_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b, 1u)), _wgslsmith_mod_vec2_u32(global0.zy, vec2<u32>(u_input.b, 4294967295u)), func_1(2147483647i, var_0.x, var_0.x, var_0.x).x) | vec2<u32>(48u, global0.x & u_input.b), global0.xx & vec2<u32>(_wgslsmith_div_u32(12352u, 46821u), u_input.b), global0.xz);
    var var_2 = select(vec4<u32>(4294967295u << ((global0.x | u_input.b) % 32u), var_1.x, ~global0.x, var_1.x) | vec4<u32>(_wgslsmith_dot_vec2_u32(~var_1, vec2<u32>(u_input.b, 8954u)), ~0u, abs(0u ^ var_1.x), global0.x), ~vec4<u32>(global0.x, 4294967295u & abs(u_input.b), select(global0.x, 1u, any(vec3<bool>(arg_2.x, true, true))), global0.x), vec4<bool>(arg_0 < abs(1i), true, true, _wgslsmith_f_op_vec2_f32(func_3()).x < 482f));
    var var_3 = func_2(Struct_2(271f, _wgslsmith_mult_i32(~select(arg_1, 1i, arg_2.x), i32(-1i) * -10335i), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, arg_1), vec2<i32>(-1i, u_input.a)), abs(vec2<i32>(u_input.a, -1i))), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1, -77131i), vec2<i32>(arg_1, u_input.a)) >> (select(var_2.zy, vec2<u32>(var_2.x, var_1.x), true) % vec2<u32>(32u)))));
    var_3 = func_4(func_2(Struct_2(-102f, -_wgslsmith_clamp_i32(10762i, 1i, arg_1), _wgslsmith_mult_vec2_i32(vec2<i32>(-29952i, arg_0), vec2<i32>(-2147483647i, arg_0)) << (vec2<u32>(var_2.x, global0.x) % vec2<u32>(32u)))), Struct_3(Struct_2(-817f, arg_0, ~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-2147483647i, -1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-120f, 1388f, var_0.x, -2307f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, var_3.c.x, var_3.d.x, 117f) * var_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-120f, var_0.x, var_0.x, -1143f))))), vec4<bool>(arg_2.x, !all(vec2<bool>(false, true)), any(vec3<bool>(arg_2.x, true, true)), all(!vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x)))), Struct_3(Struct_2(_wgslsmith_div_f32(-193f, var_3.c.x), 2147483647i >> (u_input.b % 32u), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, u_input.a) >> (vec2<u32>(global0.x, var_1.x) % vec2<u32>(32u)), min(vec2<i32>(arg_0, -8302i), vec2<i32>(2691i, 8818i)), ~vec2<i32>(u_input.a, -29939i))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_0, var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_3.a, 2577f, var_3.c.x)), any(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))))), vec4<bool>(false, true, arg_2.x, true)));
    return func_2(Struct_2(_wgslsmith_f_op_f32(func_2(Struct_2(var_0.x, 1i, vec2<i32>(1i, arg_1))).a * _wgslsmith_f_op_f32(-var_3.b)), -(-u_input.a ^ arg_0), vec2<i32>(firstTrailingBit(arg_1 ^ -6224i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -2147483647i), vec3<i32>(-1i, -1654i, 2147483647i)) << (_wgslsmith_clamp_u32(67552u, var_1.x, 41164u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5((u_input.a << (48593u % 32u)) & 1i, _wgslsmith_sub_i32(u_input.a, -u_input.a), select(!(!func_1(12257i, 380f, 635f, 1107f)), vec2<bool>(true, true), select(vec2<bool>(true, u_input.a > -8938i), vec2<bool>(false, true), _wgslsmith_f_op_f32(trunc(-1751f)) >= _wgslsmith_f_op_f32(min(-926f, 1543f)))));
    var_0 = func_5(firstTrailingBit(~2147483647i), ~0i, func_1((abs(-1i) << (_wgslsmith_mult_u32(u_input.b, global0.x) % 32u)) ^ reverseBits(41095i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(816f - var_0.d.x)), _wgslsmith_div_f32(2274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1826f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-488f, 1000f)), _wgslsmith_div_f32(var_0.d.x, var_0.a))) * var_0.a)));
    var var_1 = ~1u & ~_wgslsmith_dot_vec2_u32(~global0.yy >> (vec2<u32>(global0.x, 4294967295u) % vec2<u32>(32u)), firstLeadingBit(~global0.zx));
    var_0 = Struct_1(var_0.c.x, _wgslsmith_f_op_f32(-1224f * var_0.a), func_2(Struct_2(_wgslsmith_f_op_f32(-var_0.c.x), i32(-1i) * -u_input.a, vec2<i32>(19706i, abs(u_input.a)))).c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)), var_0.d.x), var_0.c.x) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), var_0.d.x)));
    let var_2 = var_0.c;
    var_0 = func_5(countOneBits(firstLeadingBit(u_input.a)), _wgslsmith_add_i32(-24081i, u_input.a), !select(vec2<bool>(true, true), func_1(_wgslsmith_div_i32(-16432i, 2147483647i), 589f, _wgslsmith_f_op_f32(abs(var_2.x)), 1f), false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

