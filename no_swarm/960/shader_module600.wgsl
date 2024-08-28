struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> u32 {
    let var_0 = reverseBits(_wgslsmith_dot_vec3_u32(abs(countOneBits(min(vec3<u32>(39162u, arg_2, arg_2), vec3<u32>(arg_2, arg_1, 1u)))), vec3<u32>(~_wgslsmith_mod_u32(87610u, 23430u), 1u, 0u)));
    let var_1 = arg_2;
    var var_2 = ~(69648u & _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 4294967295u, 0u), ~vec3<u32>(0u, 20094u, 1u), arg_0.d.x), ~vec3<u32>(4294967295u, var_1, arg_2)));
    var_2 = 4294967295u ^ _wgslsmith_mult_u32(~u_input.a, (reverseBits(var_0) ^ countOneBits(0u)) | arg_2);
    var var_3 = vec3<bool>(!(var_0 >= 25651u), !(!(!arg_0.d.x)) || (any(arg_0.d) == (_wgslsmith_f_op_f32(arg_0.c * -232f) > _wgslsmith_f_op_f32(-arg_0.c))), arg_0.d.x);
    return 87870u;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_div_f32(649f, _wgslsmith_f_op_f32(select(1022f, _wgslsmith_f_op_f32(abs(1000f)), !var_0)))));
    var var_2 = vec3<u32>(~8073u, _wgslsmith_mod_u32(u_input.c, 0u) ^ 6369u, ~(~(~max(1u, u_input.a))));
    var_2 = _wgslsmith_clamp_vec3_u32(min(vec3<u32>(var_2.x, u_input.c, 53024u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_2.x, 1u), vec3<u32>(var_2.x, var_2.x, 35714u)) % vec3<u32>(32u)), vec3<u32>(~7979u, var_2.x, func_3(Struct_1(u_input.b, u_input.d.xxx, 1000f, vec4<bool>(var_0, false, arg_0.x, arg_0.x)), u_input.c, 1u))), ~vec3<u32>(~1u, var_2.x, var_2.x), vec3<u32>(_wgslsmith_div_u32(u_input.c, ~var_2.x), min(_wgslsmith_div_u32(u_input.a, 106255u), 9713u >> (0u % 32u)), ~1u)) & _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(47447u, u_input.a, 0u)), ~abs(vec3<u32>(4178u, 49585u, u_input.a))), min(~abs(vec3<u32>(var_2.x, 59673u, 4294967295u)), min(~vec3<u32>(u_input.c, 1u, var_2.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 42598u, 52809u), vec3<u32>(65918u, 6315u, 0u)))));
    let var_3 = vec4<u32>(~3148u, _wgslsmith_sub_u32(~(~39046u), 1u) << (1u % 32u), countOneBits(func_3(Struct_1(u_input.b, ~u_input.d.wzy, _wgslsmith_f_op_f32(var_1.x - var_1.x), vec4<bool>(false, false, var_0, true)), func_3(Struct_1(u_input.d.x, vec3<i32>(u_input.b, u_input.b, u_input.b), var_1.x, arg_0), max(u_input.c, u_input.a), 30857u), ~(~10838u))), _wgslsmith_sub_u32(1u, u_input.c));
    return Struct_3(77494u, 1166f, ~(u_input.b | -1i), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1777f), 840f)), Struct_1(~(~0i), vec3<i32>(_wgslsmith_add_i32(u_input.e.x, -12658i), abs(u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, -1i, 484i), vec3<i32>(1i, u_input.d.x, 2147483647i))), 379f, vec4<bool>(false | arg_1.x, true, arg_1.x, !arg_0.x)), vec3<u32>(_wgslsmith_mult_u32(~var_3.x, ~4294967295u), var_3.x, countOneBits(_wgslsmith_sub_u32(var_2.x, 4294967295u))), Struct_1(-u_input.e.x, firstTrailingBit(u_input.d.yzy), -1355f, select(!vec4<bool>(false, var_0, true, arg_1.x), !vec4<bool>(false, false, var_0, true), arg_0)), select(vec3<bool>(!arg_1.x, true, any(vec4<bool>(var_0, true, true, true))), arg_0.yxw, select(vec3<bool>(arg_1.x, arg_1.x, arg_0.x), !vec3<bool>(false, arg_1.x, arg_0.x), !arg_0.wxy))), _wgslsmith_f_op_f32(step(-863f, -1189f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec4<u32>) -> f32 {
    var var_0 = func_2(vec4<bool>(all(!arg_2) && arg_2.x, arg_2.x, !(!arg_2.x) & arg_2.x, any(!vec3<bool>(true, arg_2.x, arg_2.x))), !(!(!(!vec3<bool>(false, arg_2.x, arg_2.x)))));
    let var_1 = 1319f;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(928f, _wgslsmith_f_op_f32(min(arg_1, -152f))), _wgslsmith_f_op_f32(f32(-1f) * -2371f)));
    let var_3 = var_0.c;
    let var_4 = var_0.d.c.zz;
    return _wgslsmith_f_op_f32(round(var_0.d.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(350f - _wgslsmith_f_op_f32(371f * -413f)) + _wgslsmith_f_op_f32(sign(-1002f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-324f * 170f))), _wgslsmith_f_op_f32(f32(-1f) * -1462f)))), -210f));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 1402f) + -2085f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(20915i, u_input.e.x), var_0, vec2<bool>(false, false), vec4<u32>(21706u, u_input.c, 17341u, 1u))) - _wgslsmith_f_op_f32(-var_0))), -1511f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(637f, var_0))));
    var var_2 = func_2(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), any(func_2(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), vec3<bool>(true, true, true)).d.d.d.xy), all(select(vec4<bool>(true, true, true, true), func_2(vec4<bool>(true, true, false, false), vec3<bool>(false, true, true)).d.d.d, vec4<bool>(true, true, true, true))), true), select(vec3<bool>(true, false, !(u_input.a <= 22201u)), vec3<bool>(true, true, !any(vec2<bool>(true, false))), !(!func_2(vec4<bool>(true, false, true, false), vec3<bool>(true, false, false)).d.d.d.wwx))).d.b;
    var var_3 = var_0 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) + _wgslsmith_f_op_f32(-var_1.x)) + -946f));
    var_2 = Struct_1(u_input.b, vec3<i32>(-6674i, ~var_2.b.x, var_2.b.x >> (_wgslsmith_clamp_u32(u_input.a, ~u_input.c, firstTrailingBit(u_input.c)) % 32u)), var_2.c, var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(4236i, _wgslsmith_clamp_i32(~(-73406i), u_input.d.x, firstTrailingBit(3078i)), 29693i), abs(32265u), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1778f, -441f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1552f, 447f, var_0))))), vec2<u32>(1u, 1u));
}

