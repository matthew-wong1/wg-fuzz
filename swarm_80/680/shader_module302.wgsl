struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_div_u32(~_wgslsmith_add_u32(u_input.d.x, _wgslsmith_mult_u32(select(0u, u_input.c.x, true), firstTrailingBit(4294967295u))), 1u);
    var var_1 = _wgslsmith_sub_u32(50717u, ~_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 1u ^ u_input.d.x)) << (68992u % 32u);
    var_1 = _wgslsmith_div_u32(~(~_wgslsmith_add_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.zy))), 4294967295u);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f) - _wgslsmith_f_op_f32(381f * -928f)))));
    let var_3 = 822f;
    return _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-726f, var_3))));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1161f)))), all(vec3<bool>(true, true, true))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_5 {
    return Struct_5(vec4<bool>(true, false, !arg_0.x, arg_2.c), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -1570f)), _wgslsmith_f_op_vec3_f32(-arg_1.wxy), Struct_1(_wgslsmith_sub_i32(~(~1i), u_input.b)));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: vec2<u32>) -> vec3<f32> {
    let var_0 = all(!vec4<bool>(arg_1, arg_1, arg_0.a.x, arg_0.a.x));
    var var_1 = arg_0.d.a;
    var var_2 = Struct_4(Struct_1(abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(arg_0.d.a, u_input.e)), -68378i))), ~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(-56895i, arg_0.d.a, arg_0.d.a), max(vec3<i32>(u_input.b, -1276i, 2147483647i), vec3<i32>(arg_0.d.a, u_input.b, 2147483647i))), vec3<i32>(arg_0.d.a, _wgslsmith_mod_i32(-1i, 2147483647i), countOneBits(-25855i))), Struct_2(-863i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_div_f32(arg_0.b, arg_0.b))), arg_0.d, func_1(arg_0.a.zzy, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), 2422f, -1000f, arg_0.b), Struct_3(_wgslsmith_f_op_f32(select(arg_0.c.x, -1000f, arg_1)), func_1(arg_0.a.xxz, vec4<f32>(arg_0.c.x, arg_0.b, -210f, arg_0.b), Struct_3(-1160f, arg_0.d, true), vec2<u32>(arg_2.x, arg_2.x)).d, true), vec2<u32>(arg_2.x & 8267u, ~u_input.d.x)).d));
    var var_3 = u_input.a;
    var var_4 = !(func_1(!arg_0.a.yww, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.b.x, arg_0.c.x, -101f, 942f)), Struct_3(898f, Struct_1(arg_0.d.a), false), select(arg_2, vec2<u32>(1u, 23035u), vec2<bool>(var_0, arg_1))).a.x == arg_0.a.x) | arg_0.a.x;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.c.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c + arg_0.c)))), arg_0.c, arg_0.a.wzz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1762f * -261f), _wgslsmith_f_op_f32(f32(-1f) * -257f), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-266f - -408f), -1000f), _wgslsmith_div_f32(-1319f, 814f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1721f, -265f), vec3<f32>(-329f, -165f, -176f), false)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(vec3<bool>(true, false, false), vec4<f32>(165f, -524f, 263f, 707f), Struct_3(-641f, Struct_1(u_input.e), true), vec2<u32>(u_input.c.x, 1u)), false, abs(vec2<u32>(u_input.d.x, 33471u)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-380f, 263f, -753f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(657f, 754f, 208f), vec3<f32>(849f, 260f, -356f)))))));
    let var_1 = var_0.xx;
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -557f, var_0.x), vec3<f32>(var_0.x, var_1.x, var_1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(999f, -737f, 409f))), vec3<f32>(161f, var_1.x, 397f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.x, var_1.x) * vec3<f32>(-107f, var_1.x, var_0.x)))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) * _wgslsmith_f_op_f32(-var_0.x)))), func_1(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, var_1.x, var_1.x, var_0.x))), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x * var_1.x))), func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(844f, -934f, 469f, var_0.x)), Struct_3(-1000f, Struct_1(-2147483647i), true), _wgslsmith_clamp_vec2_u32(vec2<u32>(49342u, 15224u), vec2<u32>(38228u, 1u), vec2<u32>(u_input.d.x, 46628u))).d, ~u_input.c.x < u_input.c.x), reverseBits((vec2<u32>(56720u, 4294967295u) ^ vec2<u32>(35439u, u_input.d.x)) & firstLeadingBit(vec2<u32>(4549u, u_input.c.x)))).d, select(true, !(!all(vec2<bool>(true, true))), true));
    let var_3 = _wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(_wgslsmith_dot_vec2_u32(max(abs(vec2<u32>(u_input.d.x, 44308u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 56936u), vec2<u32>(u_input.c.x, 1u))), vec2<u32>(~9609u, ~u_input.c.x)), 35534u, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(var_2.a, 1501f))) - 1f), 1444f, -287f), u_input.c.wzw, select(_wgslsmith_add_vec2_u32(~u_input.c.zy, select(u_input.d.xy, var_3.yx, false)) ^ u_input.d.zz, ~(~u_input.d.xy), var_2.c), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 6595i, var_2.b.a << (1u % 32u))), vec4<i32>(2147483647i, _wgslsmith_div_i32(-17148i, var_2.b.a), 1i, var_2.b.a) ^ select(-vec4<i32>(-1i, 11768i, u_input.a.x, 0i), vec4<i32>(var_2.b.a, var_2.b.a, u_input.e, u_input.e), vec4<bool>(false, var_2.c, var_2.c, var_2.c))));
}

