struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = -u_input.d >> (786u % 32u);
    return -1000f;
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -2360f, 551f) - vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1739f, -803f, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(func_3(vec2<f32>(-208f, -307f))), _wgslsmith_f_op_f32(-1274f - -1257f), _wgslsmith_f_op_f32(func_3(vec2<f32>(273f, 354f))))))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.e, u_input.e, 4294967295u), vec3<u32>(0u, 1u, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.e), vec3<u32>(u_input.e, 23253u, 19341u))), vec3<u32>(624u, u_input.e, 1u)), !select(!vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, true), select(arg_0, !arg_0, true)), Struct_1(firstLeadingBit(~(~vec2<u32>(u_input.e, 48566u))), firstTrailingBit(u_input.d), true), select(vec2<bool>(all(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), true), select(select(arg_0, arg_0, arg_0.x), vec2<bool>(true, select(true, arg_0.x, false)), (u_input.b & 19744i) != -u_input.b), vec2<bool>(all(vec2<bool>(true, true)), true)));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1503f, -1431f)) - var_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.a))) + vec3<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x))))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~78694u, abs(u_input.e), 10552u), var_0.b), _wgslsmith_dot_vec3_u32(vec3<u32>(~20086u, ~var_0.d.a.x, min(u_input.e, var_0.d.a.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 53895u, var_0.b.x), vec3<u32>(0u, 1u, 1u))), firstTrailingBit(~(~var_0.b.x))), arg_0, var_0.d, vec2<bool>(true, true));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a, var_0.a)), var_0.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_0.a.x)), 251f, var_0.a.x))), var_0.b, select(arg_0, arg_0, true), var_0.d, vec2<bool>(select(any(!vec4<bool>(var_0.d.c, true, false, false)), all(vec2<bool>(arg_0.x, false)), true), false));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, -1000f))) * var_0.a.x), -621f)));
    var_0 = Struct_2(vec3<f32>(var_0.a.x, _wgslsmith_div_f32(-708f, _wgslsmith_f_op_f32(exp2(var_0.a.x))), var_0.a.x), var_0.b, select(select(select(!arg_0, select(vec2<bool>(arg_0.x, var_0.e.x), var_0.e, arg_0.x), !arg_0), arg_0, u_input.c > _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), select(vec2<bool>(true, select(arg_0.x, true, true)), !(!arg_0), select(vec2<bool>(arg_0.x, var_0.c.x), !vec2<bool>(var_0.c.x, var_0.c.x), !arg_0)), !select(vec2<bool>(false, var_0.e.x), vec2<bool>(false, false), var_0.e)), Struct_1(~var_0.d.a, ~_wgslsmith_mod_i32(-2147483647i, 1i), any(vec4<bool>(185f > var_1.x, all(vec3<bool>(var_0.e.x, arg_0.x, true)), any(vec4<bool>(arg_0.x, true, true, var_0.d.c)), false))), arg_0);
    return 25891u;
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_sub_u32(func_2(vec2<bool>(true, true)) | 1u, ~(~select(u_input.e, 0u, true))) | 20089u;
    let var_1 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(select(~vec2<u32>(49417u, 15526u), vec2<u32>(u_input.e, u_input.e) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), true), reverseBits(reverseBits(vec2<u32>(0u, u_input.e)))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), reverseBits(vec2<u32>(71370u, u_input.e) ^ vec2<u32>(u_input.e, u_input.e)))), 15465i, !(all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))) != (arg_0 < -1200f)));
    let var_2 = abs(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_clamp_u32(23508u, 1u, ~var_1.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(15865u), var_1.a.x << (u_input.e % 32u), _wgslsmith_dot_vec2_u32(var_1.a, var_1.a), ~var_1.a.x), vec4<u32>(~u_input.e, ~u_input.e, _wgslsmith_add_u32(var_1.a.x, var_1.a.x), _wgslsmith_mod_u32(16646u, var_1.a.x)))));
    var_0 = ~_wgslsmith_mult_u32(0u, 6472u);
    var_0 = _wgslsmith_mod_u32(2349u, ~(~firstTrailingBit(u_input.e))) | u_input.e;
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(82783u, u_input.e), ~2147483647i, all(vec3<bool>(_wgslsmith_f_op_f32(select(597f, 131f, false)) >= _wgslsmith_div_f32(429f, -1987f), _wgslsmith_mod_i32(u_input.c, u_input.b) <= _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, u_input.b)), abs(u_input.e) <= 0u)));
    var var_1 = _wgslsmith_add_u32(~firstLeadingBit(var_0.a.x >> (var_0.a.x % 32u)), ~u_input.e) & ~_wgslsmith_clamp_u32(~(~29280u), select(32015u, ~33777u, var_0.c), var_0.a.x & 0u);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(958f, 985f, 1001f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-418f, 1117f, 650f) + vec3<f32>(435f, 1000f, -498f)) - vec3<f32>(-1000f, -1235f, 309f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-561f, -1130f, -788f), vec3<f32>(-2421f, 1464f, -257f)))))));
    var_1 = _wgslsmith_mult_u32(53569u & ~(~_wgslsmith_add_u32(53554u, u_input.e)), func_1(var_2.x));
    var_1 = ~(~_wgslsmith_mult_u32(var_0.a.x, 4294967295u));
    let var_3 = -16597i;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(-1275f, 1953f), 1810f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(900f, var_2.x, -184f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1000f, 314f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-380f, -592f, 1457f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, 1023f, var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(436f, -938f, _wgslsmith_f_op_f32(sign(-350f))) + _wgslsmith_f_op_vec3_f32(var_4 + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -1128f, -869f), var_4), _wgslsmith_f_op_vec3_f32(exp2(var_4))))), var_0.a);
}

