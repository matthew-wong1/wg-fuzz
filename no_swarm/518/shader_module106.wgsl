struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    let var_0 = arg_2 & (_wgslsmith_f_op_f32(-278f * arg_0) <= -1297f);
    var var_1 = Struct_2(arg_0, _wgslsmith_f_op_f32(-arg_0), false);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_div_f32(var_1.a, arg_0)))))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -194f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 * var_1.a))))), all(select(select(vec2<bool>(false, true), vec2<bool>(var_1.c, true), vec2<bool>(false, var_1.c)), vec2<bool>(-941f < arg_0, false), all(vec3<bool>(var_1.c, true, true)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b, 253f, 213f, 1868f), vec4<f32>(-1211f, arg_0, 503f, arg_0))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(809f, 303f, var_2.b, var_2.b)))), vec4<f32>(-536f, _wgslsmith_f_op_f32(ceil(117f)), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(var_1.a - var_2.b)), vec4<bool>(var_2.c, !arg_2, true, !arg_2))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(675f, var_2.a, var_2.b, var_2.b)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, var_1.b, var_2.b, arg_0)))))));
    var var_4 = any(select(!select(!vec4<bool>(var_2.c, true, var_1.c, var_1.c), vec4<bool>(var_1.c, false, true, false), select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(var_1.c, var_1.c, false, true), vec4<bool>(true, false, var_0, false))), !select(select(vec4<bool>(false, var_2.c, true, true), vec4<bool>(var_2.c, arg_2, arg_2, var_0), vec4<bool>(false, true, false, var_0)), !vec4<bool>(true, var_2.c, true, var_1.c), vec4<bool>(var_0, true, true, false)), any(vec2<bool>(true, true))));
    return 916f;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_2(-2357f, _wgslsmith_f_op_f32(func_3(-761f, (~vec2<i32>(2147483647i, 14834i) & vec2<i32>(u_input.a, u_input.a)) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2766i, u_input.a), vec2<i32>(-15771i, u_input.a)), ~44214i), select(all(vec2<bool>(true, false)) || false, 1u >= (u_input.b.x & 16780u), false))), any(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(step(-1895f, var_0.b))), _wgslsmith_f_op_f32(var_0.b - -1553f), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    let var_2 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(5776i, 0i, -1i, 33712i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) ^ ~28879i, u_input.a), _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(47178i, u_input.a) | select(u_input.a, -29938i, true)), u_input.a, _wgslsmith_add_i32(reverseBits(u_input.a), u_input.a ^ 21942i)), ~reverseBits(u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, var_1.x, 1178f, var_1.x), vec4<f32>(var_1.x, -301f, 291f, var_0.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1, var_1)))), ~u_input.b.x, 151845u & ~u_input.c.x);
    let var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, firstTrailingBit(4294967295u)), ~1u), vec2<u32>(1u << (u_input.d % 32u), _wgslsmith_sub_u32(19296u >> (u_input.d % 32u), 14779u))) ^ 3725u;
    let var_4 = var_2;
    return !select(!select(!vec3<bool>(var_0.c, false, false), select(vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(var_0.c, var_0.c, false), var_0.c), vec3<bool>(var_0.c, true, false)), select(select(!vec3<bool>(true, true, var_0.c), vec3<bool>(var_0.c, var_0.c, var_0.c), true), !(!vec3<bool>(var_0.c, var_0.c, var_0.c)), select(select(vec3<bool>(var_0.c, false, true), vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(var_0.c, var_0.c, false)), !vec3<bool>(true, var_0.c, var_0.c), true)), select(vec3<bool>(true, true, any(vec3<bool>(var_0.c, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.c, true), true), !(!vec3<bool>(false, false, var_0.c))));
}

fn func_1() -> vec3<u32> {
    var var_0 = any(select(vec3<bool>(true, true, true), vec3<bool>(6969u < u_input.d, true, false), all(func_2()) | (~90591u == _wgslsmith_mult_u32(u_input.c.x, 0u))));
    var_0 = any(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), !vec4<bool>(true, true, all(vec3<bool>(false, false, true)), any(vec4<bool>(false, true, true, false))), false));
    var_0 = true;
    var_0 = true;
    var_0 = any(!func_2().yz);
    return ~vec3<u32>(u_input.c.x, 22896u | (u_input.d & u_input.c.x), max(0u, ~u_input.d)) & _wgslsmith_add_vec3_u32(u_input.c, ~vec3<u32>(u_input.c.x, u_input.b.x, abs(54249u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.c, u_input.c), u_input.c >> (countOneBits(u_input.c) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(u_input.c, func_1())), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-713f, -1000f)), min(vec4<u32>(~(~4294967295u), 4294967295u, u_input.b.x, u_input.c.x), _wgslsmith_div_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d), vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, u_input.c.x), vec4<u32>(u_input.b.x, u_input.c.x, 421u, u_input.c.x)), ~vec4<u32>(38409u, 67260u, 4294967295u, u_input.c.x), true), ~(~vec4<u32>(51681u, u_input.b.x, u_input.d, 1u)))), vec2<i32>(_wgslsmith_div_i32(min(min(-13638i, -1i), ~u_input.a), _wgslsmith_div_i32(0i >> (u_input.b.x % 32u), reverseBits(u_input.a))), reverseBits(_wgslsmith_div_i32(45653i, u_input.a))));
}

