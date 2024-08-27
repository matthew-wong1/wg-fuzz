struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: f32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec4<f32> {
    var var_0 = arg_1;
    var_0 = true && select(!(!all(vec2<bool>(arg_1, false))), false, all(select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1), !vec4<bool>(false, true, arg_1, true))));
    var var_1 = u_input.b.x;
    let var_2 = Struct_1(~vec2<u32>(46460u, u_input.c.x), min(~_wgslsmith_mod_u32(min(u_input.c.x, 72392u), u_input.c.x), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(87054u, u_input.c.x), ~u_input.c.x)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1313f + 1326f)), !select(!(!vec2<bool>(arg_1, arg_1)), vec2<bool>(true, any(vec3<bool>(false, false, true))), select(vec2<bool>(true, arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), vec2<bool>(true, false)), !arg_1)), ~_wgslsmith_mult_u32(~u_input.c.x, reverseBits(~var_2.a.x)), ~max(~u_input.c, u_input.c) << ((vec4<u32>(firstLeadingBit(var_2.b), u_input.b.x, 1u, _wgslsmith_div_u32(u_input.b.x, u_input.c.x)) ^ ~u_input.c) % vec4<u32>(32u)), Struct_1(~(~(~vec2<u32>(u_input.b.x, 0u))), 11876u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_3.a)), _wgslsmith_f_op_f32(ceil(387f)))), _wgslsmith_div_f32(var_3.a, -269f), _wgslsmith_f_op_f32(abs(var_3.a)), 263f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1896f, var_3.a, 432f, -1212f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a, -114f, 1000f, var_3.a), vec4<f32>(844f, var_3.a, 1303f, 689f), vec4<bool>(var_3.b.x, var_3.b.x, true, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.a, var_3.a, var_3.a, 749f), vec4<f32>(var_3.a, -254f, 1738f, var_3.a))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_3.a, var_3.a, 805f, -127f), vec4<f32>(var_3.a, var_3.a, 1211f, -1000f)))))));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(arg_0, false & (arg_1 > arg_1)));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(-54101i, true)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(-1i, true))))))));
    var var_1 = false;
    var_1 = any(!select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), false));
    var var_2 = true;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(529f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)), true))), vec2<bool>((_wgslsmith_clamp_u32(72711u, u_input.b.x, 92388u) > abs(13755u)) || all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), ~(~(~u_input.c.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(~u_input.c, ~vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), u_input.b.x, ~u_input.b.x & 11409u, firstTrailingBit(_wgslsmith_div_u32(1u, u_input.b.x))) | u_input.b, Struct_1(u_input.b.yz, 2854u));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = !vec2<bool>(any(vec4<bool>(all(vec4<bool>(false, true, true, true)), true, true, all(vec2<bool>(true, true)))), !any(vec3<bool>(false, false, false)));
    var var_1 = func_2(min(~arg_0, 1i), _wgslsmith_f_op_f32(f32(-1f) * -1250f));
    let var_2 = func_2(0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(_wgslsmith_sub_i32(u_input.a.x, 2147483647i), var_1.a).a)));
    var var_3 = arg_0;
    var_3 = 30516i;
    return vec4<bool>(all(!vec3<bool>(true, true, var_1.b.x)), !(true || var_0.x), var_2.b.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1(firstTrailingBit(u_input.a.x), ~select(u_input.c.wz, u_input.b.zy, true)));
    var var_1 = true;
    let var_2 = var_0.yyx;
    let var_3 = -344f;
    var_1 = func_1(_wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<i32>(u_input.a.x, 0i, 8893i)), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x, 1i)) | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -77694i), u_input.a), vec2<u32>(u_input.c.x, ~24237u)).x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a ^ u_input.a) ^ u_input.a, 1u, var_3, _wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3 * 425f))))));
}

