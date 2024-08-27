struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(!(!vec4<bool>(true, false, true, all(vec4<bool>(false, true, true, true)))), vec4<bool>(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), !all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true, true), vec3<i32>(select(_wgslsmith_div_i32(i32(-1i) * -2147483647i, reverseBits(-41552i)), 1i, !any(vec4<bool>(false, false, true, true))), _wgslsmith_sub_i32(-2147483647i, 0i), 1i ^ _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(66771i, 0i), vec2<i32>(1i, 15716i)), 2147483647i)), !((1u << (~u_input.c.x % 32u)) > u_input.a));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-206f, 1939f, _wgslsmith_f_op_f32(f32(-1f) * -1102f), -1016f))), ~(i32(-1i) * -abs(var_0.c.x)), select(var_0.a.yz, vec2<bool>(var_0.b.x, true), select(vec2<bool>(true, any(var_0.b.yx)), var_0.b.ww, var_0.a.x)), reverseBits(_wgslsmith_mult_u32(min(~u_input.c.x, u_input.a), ~(~61375u))));
    var_0 = Struct_2(var_0.b, select(vec4<bool>(true, var_1.c.x, false, true), select(select(var_0.a, select(vec4<bool>(true, false, true, var_0.d), var_0.b, true), vec4<bool>(false, false, var_1.c.x, false)), select(!var_0.b, vec4<bool>(true, true, false, true), var_0.d || false), true), !select(var_0.a, vec4<bool>(false, true, false, var_1.c.x), !vec4<bool>(false, var_1.c.x, true, var_0.a.x))), vec3<i32>(min(select(var_0.c.x ^ var_1.b, 2147483647i, var_1.c.x), -44612i), 0i, -1i), true);
    var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, -1758f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-213f, -781f)))), var_1.a.x, _wgslsmith_f_op_f32(trunc(var_1.a.x))))), var_0.c.x << (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(4294967295u, var_1.d, var_1.d), vec3<u32>(u_input.a, var_1.d, u_input.c.x), var_1.c.x), firstLeadingBit(vec3<u32>(u_input.c.x, 44174u, u_input.c.x)), vec3<u32>(var_1.d, var_1.d, u_input.b.x)), u_input.c) % 32u), select(var_1.c, !select(select(var_0.b.yz, var_1.c, vec2<bool>(false, var_0.d)), select(var_1.c, var_0.a.xx, vec2<bool>(var_1.c.x, true)), true), (abs(var_1.d) > (var_1.d << (64844u % 32u))) || (all(var_0.a) && select(var_1.c.x, false, false))), u_input.b.x);
    var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1420f, var_1.a.x, var_1.a.x, 307f))) - _wgslsmith_f_op_vec4_f32(exp2(var_1.a))), max(-_wgslsmith_mult_i32(firstTrailingBit(-35110i), 1i), -_wgslsmith_mult_i32(-var_1.b, _wgslsmith_div_i32(-26627i, var_1.b))), var_1.c, ~1u << (_wgslsmith_dot_vec3_u32(~u_input.c, ~u_input.c) % 32u));
    return var_0.b.wx;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> u32 {
    var var_0 = !(!(!(!any(vec3<bool>(false, arg_0, arg_0)))));
    let var_1 = Struct_1(_wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.b), _wgslsmith_sub_vec2_u32((u_input.b << (u_input.b % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(65619u, 4294967295u), vec2<u32>(u_input.b.x, u_input.b.x)), ~(~u_input.c.xz))), !select(select(!vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), select(true, false, false)), func_3(), vec2<bool>(true, true)));
    var var_2 = vec2<u32>(~(~_wgslsmith_mod_u32(max(var_1.a.x, var_1.a.x), var_1.a.x)), ~(~var_1.a.x));
    let var_3 = _wgslsmith_mult_u32(4294967295u, ~(~abs(firstTrailingBit(1u))));
    var var_4 = vec3<i32>(max(-_wgslsmith_div_i32(arg_3.x, ~6418i), _wgslsmith_div_i32(-11997i, -reverseBits(-2147483647i))), ~firstLeadingBit(countOneBits(arg_3.x)), arg_3.x);
    return _wgslsmith_mult_u32(4294967295u, var_2.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> i32 {
    var var_0 = u_input.a;
    let var_1 = arg_0.x;
    var var_2 = arg_1;
    let var_3 = (func_2(arg_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1429f, arg_0.x, arg_0.x))), -(~vec4<i32>(-19918i, 0i, -2147483647i, 2147483647i))) << (54640u % 32u)) ^ 0u;
    var var_4 = Struct_1(~vec2<u32>(1u, 0u | var_3) | abs(u_input.c.zz), !(!(!(!vec2<bool>(arg_1, arg_1)))));
    return abs(firstTrailingBit(-27601i)) | select(_wgslsmith_mod_i32(-1i, firstTrailingBit(-15905i) >> (130980u % 32u)), _wgslsmith_add_i32(18117i, 8578i) | ~select(-2147483647i, -1i, false), all(func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(5950i, -func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 1000f), vec2<f32>(-501f, 1381f))), true)) == -56089i;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(536f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(436f, -1000f)) + _wgslsmith_f_op_f32(abs(1117f)))) - 666f)));
    var_1 = -671f;
    let var_2 = i32(-1i) * -(~7082i);
    let var_3 = max(~var_2, -(abs(select(var_2, var_2, var_0)) | var_2));
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(841f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(197f)), _wgslsmith_f_op_f32(459f * 635f)))))));
    var var_4 = _wgslsmith_sub_u32(u_input.c.x, 4294967295u);
    var_4 = ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, u_input.b.x, u_input.c.x)), reverseBits(vec3<u32>(u_input.b.x, 0u, u_input.a))), ~(u_input.a ^ u_input.a)));
    var var_5 = abs(vec4<u32>(firstTrailingBit(~(~88312u)), ~4294967295u, 69345u, reverseBits(~func_2(true, 1026f, vec3<f32>(-1722f, -704f, -1896f), vec4<i32>(var_3, -2147483647i, 17864i, var_3)))));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(-vec3<i32>(-36090i, var_3, 2147483647i)) | countOneBits(max(vec3<i32>(var_3, -33218i, 43977i), abs(vec3<i32>(var_3, 425i, var_2)))), _wgslsmith_f_op_f32(f32(-1f) * -730f));
}

