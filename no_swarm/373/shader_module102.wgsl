struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_1(min(2147483647i, _wgslsmith_sub_i32(countOneBits(0i), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 0i, arg_0, 34646i), ~vec4<i32>(2668i, -32564i, -53270i, -1i)))), arg_0, vec4<i32>(u_input.a.x, arg_0, 2147483647i, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(arg_0, -3143i, u_input.a.x)), vec3<i32>(arg_0, -32382i, _wgslsmith_sub_i32(u_input.a.x, -21721i)))), all(!vec4<bool>(any(vec4<bool>(false, true, true, false)), true, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, 1313f)))))) + 362f));
    let var_1 = all(select(vec2<bool>(false, var_0.d), select(!(!vec2<bool>(false, var_0.d)), vec2<bool>(var_0.d, true), !select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, var_0.d), true)), vec2<bool>(any(vec4<bool>(var_0.d, true, var_0.d, false)), true)));
    let var_2 = Struct_2(Struct_1(~(-2382i), -u_input.a.x, ~vec4<i32>(_wgslsmith_clamp_i32(0i, 16422i, -63901i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(3253i, 3314i, u_input.a.x, arg_0), var_0.c), var_0.b), 42998u <= abs(u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_0.e, -643f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.e))))));
    let var_3 = 1u | u_input.b;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(274f * var_2.a.e), _wgslsmith_f_op_f32(trunc(548f)))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.a.e, 1682f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.e, -571f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.e, var_2.a.e) + vec2<f32>(var_2.a.e, var_2.a.e))))));
    return u_input.b;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = 32535u;
    var var_1 = Struct_1(arg_0, arg_0 ^ 18479i, -vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -49056i, 10399i), u_input.a.x, -66823i, _wgslsmith_div_i32(arg_0, 2147483647i)), true, _wgslsmith_f_op_f32(-703f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-280f, -830f)), -200f)))));
    var_0 = countOneBits(_wgslsmith_sub_u32(0u, func_3(~u_input.a.x)) >> (~10492u % 32u));
    let var_2 = ~((abs(0u) >> ((u_input.c | 4294967295u) % 32u)) >> (u_input.b % 32u)) ^ ~_wgslsmith_add_u32(36510u, 0u);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(var_1.e, 177f)), _wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.e)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)))), _wgslsmith_f_op_f32(max(-744f, var_1.e)));
    return Struct_1(16933i, -(~(~2147483647i)), vec4<i32>(-2147483647i, reverseBits(u_input.a.x << (18759u % 32u)), abs(-1i), var_1.b), var_1.d, _wgslsmith_f_op_f32(max(-846f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) + -903f))));
}

fn func_1() -> f32 {
    var var_0 = vec4<bool>(true, true, true, true);
    var var_1 = _wgslsmith_div_i32(-1i, abs(_wgslsmith_mod_i32(u_input.a.x, -1i)));
    var_1 = u_input.a.x;
    var_0 = select(vec4<bool>(var_0.x, countOneBits(u_input.b & u_input.b) == _wgslsmith_add_u32(u_input.c, _wgslsmith_sub_u32(67758u, 40357u)), true, true), !vec4<bool>(true, var_0.x, any(select(var_0.wy, var_0.yy, false)), true), !var_0.x);
    let var_2 = func_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, ~u_input.a.x), _wgslsmith_add_i32(i32(-1i) * -2147483647i, -u_input.a.x) << (656u % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -329f), _wgslsmith_f_op_f32(sign(846f)), var_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(func_1()) > -1000f, !(u_input.c != _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 77891u, u_input.b), vec3<u32>(u_input.b, u_input.c, 4294967295u))), true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1031f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1417f, 228f)))))));
    var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(!var_1.x, true, !var_1.x), var_1.x), vec3<bool>(true, all(vec3<bool>(true, true, true)), var_1.x), true), select(select(vec3<bool>(all(vec3<bool>(false, var_1.x, var_1.x)), false, any(vec4<bool>(var_1.x, var_1.x, var_1.x, true))), !select(vec3<bool>(var_1.x, true, true), vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x)), select(!vec3<bool>(var_1.x, true, var_1.x), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, true), true), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, true, var_1.x), false))), select(!select(vec3<bool>(var_1.x, false, false), vec3<bool>(true, true, true), vec3<bool>(var_1.x, false, false)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, var_1.x), true), var_1.x), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_1.x, var_1.x), false), vec3<bool>(true, false, false))), vec3<bool>(false, var_1.x, true));
    var_2 = _wgslsmith_f_op_f32(ceil(-972f));
    var_1 = vec3<bool>(var_1.x, var_1.x, true);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(804f + _wgslsmith_f_op_f32(f32(-1f) * -1198f)) - _wgslsmith_f_op_f32(-339f - 1f));
    let x = u_input.a;
    s_output = StorageBuffer(1u ^ ~(u_input.b << (reverseBits(u_input.b) % 32u)), vec2<i32>(-45006i, _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(var_0, -58226i, 14841i), var_0)), u_input.c, u_input.b, ~vec4<u32>(22336u, ~abs(0u), ~26250u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 15496u, u_input.b, 1u), ~vec4<u32>(33250u, 4294967295u, u_input.c, u_input.c))));
}

