struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<i32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32) -> f32 {
    let var_0 = vec4<f32>(610f, -151f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0, arg_0)))))) + -1482f));
    var var_1 = Struct_1(arg_2, !(u_input.c.x < u_input.c.x));
    var var_2 = Struct_2(-43396i, 420f);
    var_1 = Struct_1(_wgslsmith_div_u32(~abs(arg_2), 0u), !any(select(select(vec3<bool>(true, true, true), vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(var_1.b, var_1.b, var_1.b)), !vec3<bool>(var_1.b, var_1.b, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(var_1.b, var_1.b, var_1.b)))));
    var var_3 = true;
    return _wgslsmith_f_op_f32(sign(413f));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = Struct_2(i32(-1i) * -2147483647i, arg_1.b);
    var_1 = arg_2;
    var var_2 = Struct_1(firstTrailingBit(u_input.a.x), true);
    var var_3 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(903f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(round(-249f)))), false)), arg_1.a, arg_0));
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: f32) -> f32 {
    let var_0 = func_2(u_input.a.x, Struct_2(52427i, arg_1), Struct_2(12563i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 * -617f), _wgslsmith_f_op_f32(arg_1 + arg_1))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-932f * arg_1))))));
    let var_1 = _wgslsmith_f_op_f32(func_3(arg_1, arg_0, abs(~_wgslsmith_mod_u32(~64521u, _wgslsmith_dot_vec3_u32(u_input.a.yzx, vec3<u32>(u_input.a.x, u_input.a.x, 0u))))));
    let var_2 = Struct_1(~u_input.a.x, !any(vec4<bool>(true, true, true, true)));
    let var_3 = Struct_1(select(~1u, ~(~(~1u)), true), var_2.b);
    return _wgslsmith_f_op_f32(min(-1111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, 1311f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(111f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1061f)) - 1000f), -708f) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(605f, -446f, 215f, -1129f) + vec4<f32>(-1000f, -1325f, 822f, 1043f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1514f, _wgslsmith_f_op_f32(f32(-1f) * -376f), _wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(trunc(-299f))), vec4<f32>(-855f, _wgslsmith_f_op_f32(floor(1031f)), _wgslsmith_f_op_f32(select(1000f, -282f, false)), -1590f), vec4<bool>(select(true, true, false), select(false, false, true), true, true))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, var_0.x, -542f)), vec4<f32>(-103f, var_0.x, var_0.x, var_0.x), true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(-2147483647i, 1000f)), 732f, _wgslsmith_f_op_f32(668f * -1000f), -1576f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 350f, var_0.x)))))));
    var var_1 = ~_wgslsmith_mod_i32(u_input.b, u_input.b);
    var var_2 = _wgslsmith_sub_i32(-2147483647i, ~u_input.b);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -535f), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(-2133f, 1105f))), _wgslsmith_div_f32(-182f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 719f, -206f)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(721f, var_0.x, -235f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -278f, var_0.x) - vec4<f32>(-1161f, -1705f, -339f, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-var_0.x)), 13937u > _wgslsmith_add_u32(1u, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.a.x, 0u, _wgslsmith_f_op_f32(func_3(var_0.x, -(~(28051i >> (0u % 32u))), 12102u)), vec2<i32>(-u_input.c.x, select(_wgslsmith_clamp_i32(-22162i, -25606i, u_input.c.x), u_input.c.x & -18464i, true)) | -u_input.c);
}

