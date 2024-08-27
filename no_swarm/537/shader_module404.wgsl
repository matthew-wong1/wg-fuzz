struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = Struct_1(!select(vec4<bool>(0u <= u_input.c, !arg_0, false, true), vec4<bool>(-1000f >= arg_1, !arg_0, arg_0 && false, any(vec4<bool>(true, arg_0, arg_0, arg_0))), arg_1 < arg_1), select(_wgslsmith_add_i32(_wgslsmith_div_i32(0i, u_input.b), -u_input.b) ^ (u_input.b & (-2147483647i >> (u_input.c % 32u))), max(~abs(u_input.a), -(u_input.b ^ u_input.a)), arg_0), ~max(1i, ~u_input.a | ~(-17181i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))))), false);
    let var_1 = _wgslsmith_add_vec3_u32(countOneBits(~(~vec3<u32>(u_input.c, u_input.c, u_input.c)) ^ ~abs(vec3<u32>(u_input.c, u_input.c, u_input.c))), vec3<u32>(~(~3124u | u_input.c), min(~min(0u, 48694u), ~68360u ^ _wgslsmith_clamp_u32(97510u, 4294967295u, u_input.c)), 24751u));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1326f)) - var_0.d), var_0.d, var_0.d, arg_1)), vec4<f32>(var_0.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(2131f)))), var_0.d, ~u_input.b > u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), 1000f), vec4<bool>(var_0.e, false, ~_wgslsmith_sub_u32(23575u, u_input.c) < firstLeadingBit(~1u), arg_0)));
    var var_3 = Struct_1(select(var_0.a, var_0.a, var_0.e), u_input.b << (var_1.x % 32u), var_0.c, 491f, arg_0 & false);
    var_3 = var_0;
    return var_3.c <= ~(~var_3.b);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(select(select(vec4<bool>(true, func_3(true, 427f), all(vec3<bool>(false, true, true)), func_3(true, 207f)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec2<bool>(false, false)))), vec4<bool>(!all(vec3<bool>(false, false, false)), any(vec3<bool>(false, false, true)) || select(true, true, false), all(vec4<bool>(false, true, false, true)), func_3(true, _wgslsmith_div_f32(-1419f, 647f))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), any(vec3<bool>(true, true, true)))), -1i, u_input.b, 724f, false);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(790f * -442f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -621f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1114f), _wgslsmith_f_op_f32(577f + var_0.d)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.d, -1000f), vec2<f32>(var_0.d, 212f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d)))))));
    var_0 = Struct_1(var_0.a, -2147483647i, 41360i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d), -1434f)) * -342f), any(vec4<bool>(all(var_0.a.zy), true, -153f >= var_1.x, true)) & var_0.a.x);
    var var_2 = Struct_1(!(!(!select(var_0.a, var_0.a, var_0.a))), -abs(0i), ~(_wgslsmith_sub_i32(1i, ~(-1i)) | var_0.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(ceil(-158f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d)) - var_1.x)), any(var_0.a) & !(!var_0.a.x && !var_0.e));
    var var_3 = Struct_1(vec4<bool>(var_0.b < -u_input.a, true, true, var_0.e), u_input.a, max(var_0.c, -abs(abs(-10486i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1287f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1612f * -760f), var_0.d)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1136f), var_2.d))), all(!vec3<bool>(any(var_0.a), true, var_2.a.x && var_2.e)));
    return reverseBits(_wgslsmith_mult_i32(-2147483647i, -var_0.b));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<bool>) -> vec2<i32> {
    let var_0 = vec3<bool>(all(arg_2.zyw), 11421i == func_2(), true);
    return reverseBits(~vec2<i32>(0i, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-672f, 1457f, 598f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(600f, 1851f, 636f) + vec3<f32>(-195f, 970f, 2074f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1481f, -1000f, -1720f), vec3<f32>(156f, -2617f, 200f))) * vec3<f32>(-2365f, -199f, -176f)))), ~(~(~6209u)), vec4<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), true, all(vec4<bool>(true, true, true, false)))) & ~countOneBits(select(vec2<i32>(-2826i, 2147483647i), vec2<i32>(u_input.b, u_input.a), true) ^ ~vec2<i32>(u_input.a, u_input.b));
    let var_1 = Struct_1(vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.x, -3281i), vec3<i32>(47437i, -1i, var_0.x)) < var_0.x, any(vec3<bool>(true, func_3(true, -338f), true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-811f + 1036f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1313f, -163f)))), -_wgslsmith_clamp_i32(u_input.a, -69111i, select(u_input.b, u_input.a, false)) | _wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(var_0.x, -1i, u_input.a)), firstTrailingBit(vec3<i32>(var_0.x, 5125i, u_input.b) ^ vec3<i32>(var_0.x, 0i, 50128i))), u_input.a >> (u_input.c % 32u), 384f, !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), false)));
    var var_2 = !(!var_1.a);
    var var_3 = vec3<u32>(u_input.c, _wgslsmith_dot_vec3_u32(abs(max(~vec3<u32>(18395u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c) & vec3<u32>(u_input.c, 4294967295u, 2098u))), ~(~(vec3<u32>(88494u, 0u, u_input.c) | vec3<u32>(4294967295u, 11499u, 4294967295u)))), _wgslsmith_add_u32(u_input.c, u_input.c));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1086f)))), (vec2<u32>(select(4294967295u, 71108u, var_2.x), u_input.c) | var_3.xy) | vec2<u32>(4294967295u, 1u), var_0 & countOneBits(vec2<i32>(abs(-43762i), select(var_0.x, var_4.c, false))), vec3<i32>(30088i, u_input.b, firstLeadingBit(min(countOneBits(-1i), _wgslsmith_sub_i32(var_4.b, 1i)))), ~max(min(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 16938i, var_4.b, -1i), vec4<i32>(var_0.x, u_input.a, var_0.x, var_0.x)), abs(vec4<i32>(19681i, var_0.x, -2147483647i, var_0.x))), ~vec4<i32>(64226i, 12799i, u_input.b, u_input.b)));
}

