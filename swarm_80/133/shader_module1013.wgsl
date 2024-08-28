struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-103f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 1718f) * _wgslsmith_f_op_f32(arg_0 * arg_3)), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(f32(-1f) * -2241f))) + arg_3)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1000f, -1005f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, 1675f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-791f, -287f, arg_1.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-961f, -239f, arg_0))))));
    let var_1 = arg_2;
    var var_2 = Struct_1(-35144i, abs(var_1.b), select(select(arg_2.c, !vec2<bool>(false, arg_2.c.x), select(vec2<bool>(var_1.c.x, false), var_1.c, !vec2<bool>(arg_2.c.x, true))), arg_2.c, select(select(vec2<bool>(true, var_1.c.x), vec2<bool>(false, true), true), select(select(vec2<bool>(arg_2.c.x, arg_2.c.x), arg_2.c, var_1.c.x), select(vec2<bool>(true, arg_2.c.x), vec2<bool>(true, arg_2.c.x), vec2<bool>(false, arg_2.c.x)), select(vec2<bool>(true, var_1.c.x), arg_2.c, arg_2.c.x)), var_1.c.x)));
    var var_3 = u_input.a;
    var_3 = ~_wgslsmith_dot_vec4_u32(~(countOneBits(vec4<u32>(arg_2.b, arg_2.b, 0u, 15306u)) & (vec4<u32>(4294967295u, arg_2.b, 1u, var_2.b) | vec4<u32>(var_2.b, arg_2.b, arg_2.b, var_1.b))), min(firstLeadingBit(firstTrailingBit(vec4<u32>(1u, arg_2.b, u_input.a, var_2.b))), ~vec4<u32>(arg_2.b, 1u, 4294967295u, arg_2.b) & countOneBits(vec4<u32>(arg_2.b, var_2.b, var_2.b, 0u))));
    return _wgslsmith_mod_i32(-2147483647i, firstTrailingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, -1i, var_1.a, var_1.a) | vec4<i32>(2147483647i, arg_2.a, 0i, var_1.a), reverseBits(vec4<i32>(2250i, var_2.a, var_1.a, var_1.a)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32) -> i32 {
    let var_0 = 54524u;
    return firstLeadingBit(-_wgslsmith_add_i32(~2147483647i, func_3(_wgslsmith_f_op_f32(1076f - 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -915f)), Struct_1(-2147483647i, 1u, vec2<bool>(false, true)), arg_0.x)));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1933f, -1640f)))), func_3(-1321f, vec2<f32>(-252f, 1434f), Struct_1(-2147483647i, u_input.a, vec2<bool>(false, false)), _wgslsmith_div_f32(-307f, 494f)) >> (_wgslsmith_div_u32(u_input.a, ~u_input.a) % 32u)), ~u_input.a, !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, 118050u == u_input.a), vec2<bool>(true, true)));
    var var_1 = Struct_1(var_0.a, reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, 46795u), vec3<u32>(var_0.b, u_input.a, 8488u)), firstTrailingBit(vec3<u32>(var_0.b, 0u, 0u))), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.a, 1u, 1u)), ~vec3<u32>(0u, 0u, u_input.a)))), !(!var_0.c));
    let var_2 = var_0;
    var var_3 = !all(select(!select(vec4<bool>(true, false, var_1.c.x, var_2.c.x), vec4<bool>(var_0.c.x, var_2.c.x, false, false), var_0.c.x), select(!vec4<bool>(false, var_1.c.x, var_0.c.x, var_0.c.x), select(vec4<bool>(var_0.c.x, true, true, true), vec4<bool>(var_0.c.x, var_0.c.x, var_2.c.x, false), true), var_1.c.x), vec4<bool>(!var_0.c.x, var_1.c.x, true, var_1.b >= var_0.b)));
    var_1 = var_0;
    return vec3<bool>(var_0.c.x, 2209f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -331f))), true);
}

fn func_1(arg_0: vec4<i32>) -> vec3<i32> {
    var var_0 = Struct_1(-1i, ~(~u_input.a), !vec2<bool>(select(false, u_input.a >= u_input.a, true), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f));
    var var_2 = !select(vec3<bool>(any(!vec4<bool>(false, var_0.c.x, true, var_0.c.x)), true, var_0.c.x), func_2(), !func_2());
    let var_3 = Struct_1(firstTrailingBit(~0i), _wgslsmith_dot_vec2_u32(vec2<u32>(select(~u_input.a, 0u, any(vec4<bool>(var_0.c.x, true, var_2.x, var_0.c.x))), ~select(4294967295u, var_0.b, var_2.x)), ~select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(1u, 62955u)), select(vec2<u32>(50540u, 0u), vec2<u32>(var_0.b, 4807u), var_2.zx), var_2.x)), select(var_0.c, vec2<bool>(!select(var_2.x, false, var_0.c.x), true), select(!select(var_2.yx, var_0.c, false), var_2.yy, true)));
    return -arg_0.wzx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), ~abs(vec3<i32>(-1i, -8106i, 10988i)), max(func_1(vec4<i32>(-36017i, 1i, 22874i, -39836i)), vec3<i32>(1i, 1i, 1i)))) | vec3<i32>(1i, 1i, 1i);
    let var_1 = select(vec3<bool>(false, (select(true, true, false) | true) & any(vec3<bool>(true, true, true)), true), vec3<bool>(any(func_2().xy), true, true), !vec3<bool>(any(vec3<bool>(false, false, true)), true, false));
    var var_2 = Struct_1(var_0.x, u_input.a & ~(~0u), func_2().yx);
    var_2 = Struct_1(-(i32(-1i) * -2147483647i), firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(var_2.b, 1u, var_2.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(46656u, 49367u, var_2.b, u_input.a), min(vec4<u32>(1u, 13609u, u_input.a, 14376u), vec4<u32>(0u, 1u, 4294967295u, 0u))), ~_wgslsmith_div_u32(27892u, var_2.b))), var_2.c);
    var var_3 = vec2<u32>(13134u, 24571u);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-101f + 832f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-595f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-474f, -1178f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f)))) + -1079f);
    var var_5 = !(!select(!vec4<bool>(var_2.c.x, var_1.x, var_1.x, true), select(!vec4<bool>(var_1.x, var_2.c.x, var_2.c.x, true), select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(var_2.c.x, true, false, var_1.x), vec4<bool>(var_2.c.x, var_1.x, true, var_2.c.x)), vec4<bool>(var_2.c.x, true, true, var_1.x)), !(!vec4<bool>(var_2.c.x, var_1.x, true, var_2.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(1u, u_input.a), 18650u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-1938f, -257f), vec2<f32>(-568f, 1211f)), vec2<f32>(-548f, 924f))), vec2<f32>(_wgslsmith_div_f32(1557f, 387f), 1f))) + vec2<f32>(1f, 1f)), _wgslsmith_div_u32(~11541u, ~u_input.a) | ~(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 1u), vec2<u32>(var_3.x, u_input.a)) << (~u_input.a % 32u)), vec2<i32>(-2147483647i, firstLeadingBit(0i)) ^ var_0.xy, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1802u, var_2.b), ~vec2<u32>(4294967295u, u_input.a)), var_2.b, firstTrailingBit(4885u << (u_input.a % 32u))), max(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.x, 2689u, 0u), vec3<u32>(13345u, 4294967295u, 1u), vec3<u32>(17556u, 4294967295u, 66530u)), ~(~vec3<u32>(1u, 0u, 117602u)))));
}

