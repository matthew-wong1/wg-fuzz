struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_f32(-1720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(733f))));
    var var_1 = Struct_4(vec4<u32>(_wgslsmith_mult_u32(~u_input.a, ~u_input.c) >> (firstLeadingBit(u_input.d) % 32u), 0u, _wgslsmith_mult_u32(u_input.c, reverseBits(u_input.d)), 43736u), select(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 1i, 12452i), vec3<i32>(-18000i, -2147483647i, 1i))), -abs(vec3<i32>(-2147483647i, -53763i, 1i)), vec3<bool>(select(true, all(vec2<bool>(false, false)), true), false == (u_input.d <= 4294967295u), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)))), ~(~_wgslsmith_div_u32(u_input.b.x, u_input.d)) << (u_input.d % 32u), true, 54799i);
    var_1 = Struct_4(vec4<u32>(~23803u, 14531u, u_input.d, u_input.d), var_1.b, 93612u, -36257i >= ((countOneBits(var_1.e) | (0i & var_1.b.x)) >> (~abs(var_1.c) % 32u)), -2147483647i);
    let var_2 = ~vec2<i32>(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(4457i, var_1.b.x, 4538i)), var_1.b), var_1.e);
    let var_3 = Struct_1(firstTrailingBit(u_input.b.x), select(select(vec2<bool>(true, true), !vec2<bool>(var_1.d, var_1.d), var_1.d && !var_1.d), !(!select(vec2<bool>(var_1.d, true), vec2<bool>(var_1.d, true), true)), var_1.d));
    return var_0;
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_1));
    var_0 = _wgslsmith_f_op_f32(-1331f + _wgslsmith_f_op_f32(func_3()));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) - 1389f), false)))), arg_1);
    let var_1 = select(!vec3<bool>(!any(vec4<bool>(false, arg_0.d, arg_0.d, arg_0.d)), arg_0.d, false), vec3<bool>(all(vec3<bool>(arg_0.d, all(vec2<bool>(arg_0.d, true)), true)), false, !arg_0.d), false);
    let var_2 = Struct_5(Struct_4(vec4<u32>(~arg_0.c, 26743u, _wgslsmith_mod_u32(arg_0.a.x, ~15816u), arg_0.a.x), abs(reverseBits(-arg_0.b)), abs(14902u << ((51993u << (arg_0.a.x % 32u)) % 32u)), false, _wgslsmith_div_i32(arg_0.b.x, 50677i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -726f, arg_1)))))));
    return Struct_1(var_2.a.a.x, var_1.zy);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool, arg_3: u32) -> i32 {
    return arg_1.e;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(2066f)), _wgslsmith_f_op_f32(824f * 2012f), _wgslsmith_f_op_f32(1550f * 388f)))));
    var var_1 = ~(max(vec4<i32>(-2147483647i, -27924i, arg_0, -149i) | ~vec4<i32>(50836i, arg_0, arg_0, arg_0), ~vec4<i32>(-24666i, -1i, arg_0, 2147483647i)) ^ ~(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, 2147483647i, 35806i), vec4<i32>(-2147483647i, -2147483647i, 17841i, arg_0)) & ~vec4<i32>(10861i, arg_0, arg_0, -2147483647i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    var_1 = max(vec4<i32>(-15847i, 332i, arg_0, func_4(func_2(Struct_4(vec4<u32>(arg_1, u_input.d, 13728u, arg_1), vec3<i32>(-42979i, 0i, -70673i), 4294967295u, true, 5242i), var_0.x), Struct_4(vec4<u32>(4294967295u, u_input.d, 1u, u_input.d), vec3<i32>(var_1.x, 2147483647i, -13187i), arg_1, true, 38703i), true, arg_1) >> (~u_input.c % 32u)), vec4<i32>(~(-1i), _wgslsmith_mult_i32(~(-16774i), 3117i ^ arg_0), -5185i, 2147483647i));
    var var_3 = func_2(Struct_4(vec4<u32>(u_input.a, ~4294967295u ^ select(u_input.b.x, arg_1, true), u_input.c, 12272u), abs(-abs(vec3<i32>(var_1.x, var_1.x, arg_0))), arg_1, true, -func_4(Struct_1(arg_1, vec2<bool>(true, arg_2)), Struct_4(vec4<u32>(arg_1, u_input.d, 5104u, 85670u), vec3<i32>(-19624i, arg_0, var_1.x), arg_1, true, var_1.x), arg_2, _wgslsmith_div_u32(u_input.c, arg_1))), -301f);
    return _wgslsmith_f_op_f32(-var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1000f, -136f, true))))), -146f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-582f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-56621i, 4294967295u, true))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1539f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(356f))))), _wgslsmith_f_op_f32(func_1(-5775i, func_2(Struct_4(vec4<u32>(u_input.a, u_input.b.x, 4294967295u, u_input.c), vec3<i32>(1i, -1i, 0i), 17981u, true, 0i), _wgslsmith_f_op_f32(select(-2301f, -947f, true))).a, !all(vec2<bool>(false, true))))));
    var_0 = -984f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1224f, 550f, all(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_f32(-1000f - 380f)) * _wgslsmith_f_op_f32(f32(-1f) * -661f)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1080f, _wgslsmith_f_op_f32(f32(-1f) * -1318f), _wgslsmith_f_op_f32(-220f * -1168f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-592f, -1664f, 1831f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(377f, -1029f, 465f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-398f, -855f, -2069f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1669f, 265f, -563f), vec3<f32>(187f, 969f, -815f), true))))));
    let var_3 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(ceil(-480f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(490f, _wgslsmith_f_op_f32(abs(-593f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f - -855f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2.x, var_2.x), reverseBits(-7906i), 36293u, firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-1i, 34431i, 0i, -33150i), min(vec4<i32>(2147483647i, -13796i, -22504i, 0i), vec4<i32>(-14711i, -92992i, 26724i, 2147483647i))), -_wgslsmith_mult_vec4_i32(vec4<i32>(-29610i, 0i, 0i, 26853i), vec4<i32>(-8789i, -1i, 1i, 36473i)))));
}

