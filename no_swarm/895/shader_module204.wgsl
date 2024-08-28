struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<bool> {
    return select(select(!(!(!vec4<bool>(arg_0, true, true, arg_0))), !vec4<bool>(true, arg_0 != true, arg_0, all(vec3<bool>(true, true, arg_0))), !select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_0, true, arg_0), select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), false))), select(!select(!vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(false, true, arg_0, true)), select(vec4<bool>(true, u_input.c <= u_input.b.x, arg_0, 59300u >= u_input.d.x), vec4<bool>(true, arg_0, arg_0, select(arg_0, true, false)), true), vec4<bool>(select(any(vec4<bool>(arg_0, true, arg_0, false)), false, arg_0), arg_0, all(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), arg_0)), any(!vec3<bool>(arg_0, arg_0, true)))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(~u_input.a, select(0u, u_input.a, true)), u_input.a, ~(~u_input.d.x)) <= _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 91498u), u_input.a));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = select(func_3(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) - -592f) - _wgslsmith_f_op_f32(-356f - _wgslsmith_f_op_f32(-1828f + -1864f)))), arg_1.b, true);
    return select(~(~vec4<u32>(~u_input.d.x, ~1u, abs(0u), u_input.a)), _wgslsmith_add_vec4_u32(~min(reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.d.x, 4294967295u)), vec4<u32>(u_input.a, 9814u, u_input.a, u_input.d.x)), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 44553u, u_input.a), vec4<u32>(1u, 4294967295u, 49798u, 11024u)) ^ vec4<u32>(u_input.d.x, 1u, 1u, 1u))), all(var_0.xyz));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(~u_input.d.x, max(10694u, arg_0), abs(0u), arg_0), firstTrailingBit(max(func_2(0i, Struct_1(u_input.b.x, vec4<bool>(true, true, true, false)), u_input.b.zyw), vec4<u32>(39706u, 4294967295u, 4294967295u, u_input.d.x))));
    let var_1 = max(_wgslsmith_clamp_u32(u_input.a, select(1u, ~arg_0, false), 1u), 55219u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1940f, arg_1.x, 2161f) - vec4<f32>(-664f, -846f, arg_1.x, 1110f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-855f, 1677f, -1363f, 517f) * vec4<f32>(432f, 150f, arg_1.x, -898f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(202f, -236f)), _wgslsmith_f_op_f32(round(174f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(860f)) * _wgslsmith_f_op_f32(-arg_1.x)), -553f)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -798f)))), arg_1.x, 2029f, arg_1.x));
    let var_3 = i32(-1i) * -47520i;
    var var_4 = -10726i;
    return Struct_1(_wgslsmith_add_i32(-31927i, ~u_input.b.x), !vec4<bool>(true, false, true, select(true, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(1148u, _wgslsmith_div_vec3_f32(vec3<f32>(1015f, -1893f, -373f), _wgslsmith_f_op_vec3_f32(vec3<f32>(451f, 1551f, 456f) - _wgslsmith_div_vec3_f32(vec3<f32>(-1095f, 631f, -455f), vec3<f32>(-984f, -964f, 739f))))), Struct_1(-2078i, vec4<bool>(u_input.c != abs(u_input.c), func_1(u_input.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(2243f, 115f, 863f) + vec3<f32>(-816f, -1822f, 718f))).b.x, false, true)), vec3<i32>(~(u_input.b.x ^ abs(7639i)), -u_input.c, ~u_input.b.x), func_1(u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(780f, -908f, 196f), vec3<f32>(-878f, 382f, 452f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1391f, 1000f, -2214f) - vec3<f32>(-1045f, 479f, 1000f)), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-823f, -821f, 1595f), vec3<f32>(-1000f, 1338f, -2113f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-135f, -728f, 636f)))))), ~(u_input.b.x ^ -1i));
    let var_1 = ~u_input.d.x;
    let var_2 = Struct_2(var_0.d, Struct_1(~(select(u_input.c, -2147483647i, var_0.d.b.x) | reverseBits(var_0.d.a)), vec4<bool>(var_0.a.b.x, select(true, true, 5318u != var_1), true, (u_input.a <= 18744u) | (var_0.a.b.x | var_0.a.b.x))), firstLeadingBit(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, u_input.b.x), select(var_0.c.xy, vec2<i32>(u_input.b.x, 975i), var_0.a.b.ww)), u_input.b.x)), Struct_1(min(u_input.b.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.e, var_0.b.a, 2147483647i), vec3<i32>(var_0.b.a, 30844i, -19631i))), !vec4<bool>(false, all(vec2<bool>(false, true)), false, false)), _wgslsmith_add_i32(u_input.c, _wgslsmith_div_i32(1i, abs(_wgslsmith_div_i32(u_input.c, u_input.c)))));
    var var_3 = var_2.a.b.zx;
    let var_4 = select(!(!any(var_2.d.b)), !(!(!var_3.x || var_2.b.b.x)), var_0.d.b.x);
    var var_5 = u_input.d;
    var var_6 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1249f, 932f, 1f, _wgslsmith_f_op_f32(179f - 1893f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(712f, -179f), _wgslsmith_f_op_f32(abs(1598f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(374f, 135f, 1940f, 1000f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1267f), 1000f, -782f, 180f))), true));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_5.x & ((var_5.x ^ var_5.x) << (reverseBits(56372u) % 32u))));
}

