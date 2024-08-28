struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32) -> bool {
    return all(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), false));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(66209u >= u_input.a, -795f, ~_wgslsmith_div_vec4_i32(vec4<i32>(1i, max(-15347i, -57835i), 78539i, 1i), vec4<i32>(-21943i, i32(-1i) * -3216i, _wgslsmith_mult_i32(-68613i, -1i), 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2446f, _wgslsmith_f_op_f32(round(-2009f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-237f, -1793f)))), vec3<u32>(29044u, ~1u | u_input.a, ~_wgslsmith_clamp_u32(4294967295u, ~u_input.a, 12980u ^ u_input.a)));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, var_0.b))), _wgslsmith_clamp_vec4_i32(var_0.c, var_0.c & select(_wgslsmith_clamp_vec4_i32(var_0.c, var_0.c, var_0.c), var_0.c, vec4<bool>(true, false, var_0.a, false)), vec4<i32>((var_0.c.x & 1452i) << (~4294967295u % 32u), -2147483647i, countOneBits(i32(-1i) * -2147483647i), _wgslsmith_mod_i32(max(66570i, 1i), 26525i >> (1u % 32u)))), var_0.d, reverseBits(var_0.e));
    let var_2 = true;
    let var_3 = Struct_1(any(select(vec3<bool>(1u == var_1.e.x, true, true), vec3<bool>(var_1.a, all(vec4<bool>(true, false, false, var_0.a)), any(vec4<bool>(false, false, var_1.a, var_2))), false)), _wgslsmith_f_op_f32(floor(var_1.d)), vec4<i32>(var_0.c.x, 1i, 6176i, min(var_1.c.x, -var_1.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-1247f * _wgslsmith_f_op_f32(f32(-1f) * -1147f))))), ~(~(var_0.e & vec3<u32>(31529u, 34951u, u_input.a)) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(23196u, 32035u, 16429u), var_0.e)));
    var var_4 = abs(~var_1.e.zx);
    return ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(55076i, _wgslsmith_mult_i32(-1i, var_3.c.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.c.x, var_1.c.x), var_1.c.xyy), countOneBits(-31057i))));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_div_u32(1u, ~arg_0) >= countOneBits(73389u);
    let var_1 = Struct_1(true | !any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -972f), 2373f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1726f, 1473f, false)) * -689f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-952f - -844f) + _wgslsmith_f_op_f32(968f * 455f)))), -vec4<i32>(1i, 1i, -func_3(), 2147483647i >> (u_input.a % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-861f)), 974f, false)), _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(4946u), _wgslsmith_add_u32(63656u, u_input.a), u_input.a) | ~(~vec3<u32>(33068u, arg_0, 33962u)), vec3<u32>(1u, u_input.a, ~u_input.a)));
    var var_2 = vec4<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(1u, arg_0, 1u, 3675u))), ~_wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_0, var_1.e.x, 17514u, arg_0), vec4<u32>(arg_0, 4294967295u, var_1.e.x, 0u), vec4<bool>(var_1.a, var_1.a, true, var_1.a)), ~vec4<u32>(26600u, 69820u, arg_0, 34921u))), u_input.a, ~max(abs(var_1.e.x) << (~35796u % 32u), abs(~arg_0)));
    var_2 = vec4<u32>(u_input.a, countOneBits(arg_0 & ~0u), 32774u, 1u) ^ abs(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_2.x, u_input.a, var_1.e.x, 4294967295u), ~vec4<u32>(u_input.a, 11848u, var_1.e.x, 133397u)), vec4<u32>(abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 53066u, arg_0, var_1.e.x), vec4<u32>(111821u, 1u, 49182u, 1u)), countOneBits(4294967295u), ~0u)));
    var_0 = _wgslsmith_sub_i32(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, 0i), select(var_1.c.x, var_1.c.x, false)), 10968i) != var_1.c.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) * var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (all(vec4<bool>(false, false, all(vec3<bool>(false, false, true)), u_input.a != 25213u)) && select(true, (-9428i << (1u % 32u)) == (1i >> (u_input.a % 32u)), func_1(_wgslsmith_div_f32(147f, 625f)))) & !any(vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1167f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(select(u_input.a, 0u, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(min(-625f, 1586f))))))));
    var var_2 = select(vec2<bool>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) >= 1u, !(false || !var_0)), select(vec2<bool>(all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, var_0, var_0), vec4<bool>(var_0, var_0, true, true))), !var_0 == true), !(!select(vec2<bool>(true, var_0), vec2<bool>(false, true), vec2<bool>(var_0, var_0))), !var_0), !(!(!(!vec2<bool>(var_0, true)))));
    var var_3 = Struct_1(var_2.x && var_2.x, _wgslsmith_div_f32(541f, _wgslsmith_f_op_f32(f32(-1f) * -1611f)), firstTrailingBit(vec4<i32>(-2147483647i, firstLeadingBit(_wgslsmith_clamp_i32(12831i, 0i, -3556i)), 0i, 31281i)), _wgslsmith_f_op_f32(-806f + 1f), vec3<u32>(~1u, _wgslsmith_clamp_u32(16713u, ~(~u_input.a), ~33843u), 23758u));
    var_2 = select(vec2<bool>(true, var_0), !vec2<bool>(all(select(vec3<bool>(var_3.a, var_0, var_0), vec3<bool>(true, true, var_2.x), vec3<bool>(false, true, false))), var_2.x), all(vec4<bool>(any(!vec4<bool>(var_0, true, var_2.x, true)), true, all(!vec4<bool>(true, var_3.a, true, true)), !(var_3.e.x != var_3.e.x))));
    let var_4 = -select(vec3<i32>(var_3.c.x, -54247i, var_3.c.x), _wgslsmith_div_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 1192i, 1i), vec3<i32>(0i, 1i, 8313i)), vec3<i32>(2201i, var_3.c.x, var_3.c.x), all(vec2<bool>(var_0, false))), _wgslsmith_mod_vec3_i32(var_3.c.yyz, vec3<i32>(97171i, 2147483647i, -2147483647i)) ^ vec3<i32>(var_3.c.x, var_3.c.x, var_3.c.x)), !vec3<bool>(var_3.a && true, var_0, var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3.d), -1645f, 445f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d, 1997f, var_3.d) - vec3<f32>(var_3.b, -979f, var_3.d)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(224f, var_3.b, 372f) * vec3<f32>(var_3.d, 1537f, var_3.d)) + _wgslsmith_div_vec3_f32(vec3<f32>(1377f, var_3.d, -273f), vec3<f32>(1015f, var_3.b, -1628f))))));
}

