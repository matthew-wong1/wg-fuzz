struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mod_vec3_i32(select(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-29472i, -66647i, u_input.b), vec3<i32>(-32533i, 1i, u_input.b)), u_input.b, _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.b, 35687i), vec2<i32>(-2147483647i, u_input.b), vec2<bool>(true, false)), vec2<i32>(u_input.b, u_input.b) | vec2<i32>(25249i, u_input.b))), vec3<i32>(u_input.b, reverseBits(_wgslsmith_mult_i32(1i, u_input.b)), u_input.b), arg_1.c), vec3<i32>(3468i, ~firstTrailingBit(-2147483647i | u_input.b), -25700i ^ _wgslsmith_clamp_i32(u_input.b, -6793i, _wgslsmith_div_i32(-2147483647i, u_input.b))));
    let var_1 = arg_1;
    var var_2 = var_1.c.xy;
    var var_3 = Struct_1(16903u, ~vec2<u32>(~(~u_input.a.x), _wgslsmith_div_u32(arg_1.a, ~u_input.a.x)), var_1.c);
    var var_4 = _wgslsmith_f_op_f32(exp2(arg_0));
    return ~(~_wgslsmith_mult_u32(var_3.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, u_input.a), u_input.a)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(select(~_wgslsmith_dot_vec2_u32(min(arg_1.b, u_input.d.wx), arg_1.b), ~select(_wgslsmith_mult_u32(u_input.d.x, arg_1.b.x), ~56118u, arg_1.c.x & arg_1.c.x), arg_1.c.x), abs(_wgslsmith_sub_vec2_u32(~arg_1.b, u_input.a.xx)), arg_1.c);
    let var_1 = var_0.c.yz;
    let var_2 = false;
    var var_3 = arg_1;
    var var_4 = 2147483647i;
    return ~_wgslsmith_div_u32(func_3(606f, var_0), 1u);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = min(_wgslsmith_sub_vec4_u32(min(u_input.d, ~countOneBits(vec4<u32>(35889u, 25732u, arg_2.b.x, arg_1))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.e, arg_1, func_2(-1000f, Struct_1(u_input.d.x, vec2<u32>(1u, u_input.c.x), arg_2.c))), u_input.d << (u_input.c % vec4<u32>(32u)))), vec4<u32>(~1u, abs(~func_2(-508f, arg_2)), ~1u ^ ~arg_1, 86020u));
    var_0 = ~abs(~(~u_input.d));
    var_0 = u_input.d;
    let var_1 = all(vec2<bool>(arg_2.c.x && (_wgslsmith_f_op_f32(step(577f, 505f)) == -273f), !arg_2.c.x));
    let var_2 = arg_2;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1267f - -351f) * -614f), _wgslsmith_f_op_f32(floor(-968f)))), 359f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -852f) + -1218f))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(609f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b, u_input.c.x, Struct_1(u_input.a.x, u_input.d.zw, vec3<bool>(true, false, false)))) + 1462f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))) * _wgslsmith_div_f32(176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x))), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_1 = Struct_1(u_input.e, ~(~vec2<u32>(~u_input.a.x, max(u_input.d.x, 49569u))), select(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, true, false)), any(vec4<bool>(true, false, false, false))), false), false));
    var var_2 = ~_wgslsmith_mod_u32(u_input.a.x, ~48290u >> (~(1u >> (u_input.d.x % 32u)) % 32u));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-685f, var_0.x, 1000f, var_0.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, -1357f, var_0.x, 1545f))))));
    let var_3 = 1u;
    var_2 = 11612u;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(822f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))));
    var var_5 = select(!(!vec4<bool>(false, !var_1.c.x, true, true)), vec4<bool>(!(all(var_1.c.yx) && true), all(vec4<bool>(any(var_1.c), true, var_1.c.x, true)), all(vec3<bool>(true, var_1.c.x, var_1.c.x || var_1.c.x)), var_4 != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1573f - 1034f))), vec4<bool>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_1.b.x), vec3<u32>(var_1.b.x, var_3, 1u)) < ~128206u, !any(vec3<bool>(false, true, var_1.c.x)), all(select(var_1.c.yz, var_1.c.xz, all(vec3<bool>(true, var_1.c.x, true)))), all(var_1.c.yx)));
    let x = u_input.a;
    s_output = StorageBuffer(73595i >> (~(~var_1.a) % 32u), _wgslsmith_f_op_f32(var_4 - _wgslsmith_f_op_f32(var_4 - 2004f)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_4 * var_4)))), ~u_input.a);
}

