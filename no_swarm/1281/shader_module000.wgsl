struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1((_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 1i), vec2<i32>(-6525i, 17029i)) & countOneBits(~21762i)) << (~20426u % 32u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1578f, -1254f, false)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1690f)), _wgslsmith_f_op_f32(-151f * -906f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -424f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-348f, 947f)) * _wgslsmith_f_op_f32(647f + 299f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-384f, 641f, false)) * _wgslsmith_f_op_f32(step(-974f, -908f))))), _wgslsmith_f_op_f32(sign(237f)))), ~(~_wgslsmith_sub_i32(0i, abs(-16974i))));
    var var_1 = Struct_1(-1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.x, var_0.c))))) - var_0.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_mod_i32(firstTrailingBit(-21190i), (var_0.a | _wgslsmith_clamp_i32(-10146i, var_0.d, 2147483647i)) & ~(-2147483647i)));
    var var_2 = -_wgslsmith_add_vec2_i32(~abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.d, var_1.d), vec2<i32>(var_0.d, -5250i), vec2<i32>(1i, 16273i))), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(0i, 2147483647i)) | _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, -49058i), vec2<i32>(var_1.d, -7669i)), ~vec2<i32>(var_1.d, var_0.a)));
    var var_3 = Struct_1(var_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.c, 794f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-389f, var_0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, 731f), vec2<f32>(var_1.c, var_0.c), vec2<bool>(true, false))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(241f, -1043f) + vec2<f32>(var_1.c, 211f))))), var_0.c, _wgslsmith_div_i32(-1i, var_1.d) << (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(6792u, 73381u) | u_input.a.xw, ~vec2<u32>(u_input.a.x, u_input.a.x))) % 32u));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.x, -1232f, var_1.c, 604f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, var_3.b.x, -1000f, 141f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.c, var_1.c, var_1.b.x, 527f))))), true))));
    return select(vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), true || select(false, false, false)), !vec2<bool>(true, var_1.a < _wgslsmith_clamp_i32(-2147483647i, -16966i, var_1.a)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(max(select(abs(u_input.a.wxx), firstTrailingBit(u_input.a.wwy), vec3<bool>(true, true, true)), u_input.a.yzy), max(u_input.a.wyz, firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.a.wzz, u_input.a.zzz)))), u_input.a.x);
    var var_1 = vec2<bool>(true, true);
    var_1 = func_3();
    let var_2 = -2200f;
    return Struct_1(_wgslsmith_sub_i32(abs(1i), i32(-1i) * -1i), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(round(-2020f)), var_0 == var_0)), _wgslsmith_f_op_f32(-739f * var_2))), var_2), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * var_2))))), max(-2147483647i, -min(-1i, ~(-53361i))));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = arg_2;
    let var_1 = arg_1.x;
    var var_2 = func_2();
    var_2 = func_2();
    var_2 = func_2();
    return _wgslsmith_f_op_f32(-1420f - arg_2.c);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> vec4<f32> {
    let var_0 = _wgslsmith_div_u32(~u_input.a.x | _wgslsmith_dot_vec3_u32(select(vec3<u32>(36438u, 61304u, arg_1), firstLeadingBit(vec3<u32>(64266u, 4294967295u, u_input.a.x)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), ~vec3<u32>(0u, 60423u, 1u)), 0u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)) - _wgslsmith_f_op_f32(func_4(1u, vec3<bool>(true, false, true), func_2(), func_2()))));
    var var_2 = ~abs(-2147483647i);
    var_1 = _wgslsmith_f_op_f32(-arg_0.c);
    var var_3 = any(vec4<bool>(true, !(!select(true, true, false)), true, false || all(vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(min(arg_0.b.x, -472f)), -771f, -1815f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.b.x, arg_0.b.x, arg_0.c) + vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-433f, 327f, 203f, -1267f) * vec4<f32>(516f, arg_0.c, arg_0.b.x, arg_0.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.c, arg_0.b.x) - vec4<f32>(arg_0.b.x, 1413f, -1000f, arg_0.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(44854u > u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(func_1(Struct_1(abs(~1i), vec2<f32>(1f, 1f), -130f, -57565i), 34485u, ~(-countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2348i, 42169i), vec2<i32>(1790i, -1i))))));
    var var_2 = func_2();
    var_2 = func_2();
    var var_3 = var_2.b.x;
    var_3 = _wgslsmith_div_f32(-230f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) * _wgslsmith_f_op_f32(floor(var_2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1380f, var_2.c, true)) * _wgslsmith_f_op_f32(var_1.x * -1358f)))))));
    let var_4 = func_2();
    let var_5 = true;
    let var_6 = any(vec2<bool>(all(vec4<bool>(true, any(vec4<bool>(true, false, var_5, var_5)), true, any(vec2<bool>(var_5, var_0)))), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a.x, 4294967295u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(2074u, u_input.a.x, u_input.a.x), u_input.a.ywy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, var_1.x, -956f, var_2.c)), vec4<f32>(var_2.b.x, var_1.x, var_1.x, var_2.b.x))))), vec3<i32>(_wgslsmith_sub_i32(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2870i, var_4.d, var_4.a, var_2.d), countOneBits(vec4<i32>(var_4.a, 0i, var_4.a, -1i)))), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -47048i, var_2.a) | vec4<i32>(-1223i, -2147483647i, 2147483647i, 0i), vec4<i32>(32163i, 3481i, 20249i, 1i) >> (u_input.a % vec4<u32>(32u)))), 20380i), firstTrailingBit(vec3<i32>(var_2.d, -2147483647i, firstTrailingBit(var_4.a)) ^ -firstLeadingBit(vec3<i32>(var_2.d, 35582i, var_4.d))), func_2().b.x);
}

