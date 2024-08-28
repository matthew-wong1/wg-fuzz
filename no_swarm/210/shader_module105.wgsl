struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    var var_0 = arg_0.a;
    var_0 = Struct_2(-21198i, var_0.c, true);
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x)))), 517f, 497f, 1223f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2759f, arg_1.b.x, -1938f, -1282f) + vec4<f32>(-1000f, 1152f, arg_1.b.x, 482f)), arg_1.b, select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_0.b, true, true), vec4<bool>(true, true, false, false), var_0.b), false))) + vec4<f32>(global0.x, global0.x, 843f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_0.b) - _wgslsmith_f_op_f32(-arg_1.b.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1245f * -1877f) - arg_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1242f))), -265f, 1418f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.b)))), global0.x, _wgslsmith_f_op_f32(ceil(arg_0.b)), 219f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b - vec4<f32>(arg_0.b, arg_0.b, global0.x, arg_1.b.x)) + arg_1.b))), select(!all(!vec2<bool>(var_0.c, true)), arg_0.a.b, arg_0.a.c)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(-global0.x)) * -2997f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2097f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.x)), global0.x))) * _wgslsmith_f_op_f32(702f - _wgslsmith_f_op_f32(-arg_1.b.x))));
    return arg_1.b.x;
}

fn func_2(arg_0: vec4<u32>) -> vec4<f32> {
    var var_0 = select(u_input.c >= -1i, false, false);
    var_0 = (arg_0.x < arg_0.x) & true;
    global0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-172f + -1493f)))), global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1000f * -1027f))))) - global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + -2093f), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(u_input.d.x, false, true), -1013f), Struct_1(-7381i, vec4<f32>(global0.x, global0.x, global0.x, global0.x), 12874u))), all(vec3<bool>(false, false, true)))))), global0.x);
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(min(1i, 1i), 12545i, u_input.c | u_input.c), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.d.x), u_input.d.xxz), countOneBits(1i), _wgslsmith_add_i32(1i, u_input.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -693f, global0.x, -525f), vec4<f32>(822f, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(967f, -426f, 727f, 1599f)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), global0.x)))), ~4294967295u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-736f + -534f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 814f)))));
    return var_1.b;
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(4294967295u, u_input.b, ~u_input.b, u_input.e))) - vec4<f32>(global0.x, _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(floor(884f)), global0.x));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-989f, _wgslsmith_f_op_f32(-813f - global0.x)))));
    let var_1 = ~(~u_input.d);
    let var_2 = Struct_1(~abs(var_1.x), vec4<f32>(451f, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * 336f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-426f, var_0, true))) * _wgslsmith_f_op_f32(max(-284f, var_0)))), u_input.a);
    global0 = var_2.b;
    return Struct_2(u_input.d.x, true || (_wgslsmith_f_op_f32(-var_2.b.x) != 1602f), true || all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(427f + 1516f))))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) * _wgslsmith_f_op_f32(-global0.x))))), 1702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) * _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(min(1000f, -1031f)))));
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, u_input.a), u_input.b, u_input.e, abs(1u) ^ u_input.e), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b & u_input.a, reverseBits(9010u)), _wgslsmith_add_u32(u_input.e, u_input.e)), max(19398u << ((u_input.b ^ 0u) % 32u), ~u_input.b), reverseBits(_wgslsmith_mod_u32(u_input.a, u_input.b) << (u_input.a % 32u)), countOneBits(u_input.b)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(max(17868i, 26559i), var_0.b, select(false, var_0.b, false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x + 1235f)))), Struct_1(u_input.c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1198f), _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(sign(1148f))), countOneBits(~1u)))), _wgslsmith_f_op_f32(abs(-310f)), 642f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(702f * global0.x), -1296f, 821f, _wgslsmith_f_op_f32(floor(2440f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -275f, global0.x) + vec4<f32>(global0.x, -1000f, global0.x, 1538f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-979f, 690f, -1000f, global0.x)))) + vec4<f32>(459f, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(u_input.c, true, true), global0.x), Struct_1(u_input.c, vec4<f32>(-720f, 196f, -200f, 1092f), var_1))), _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(-2147483647i, var_0.b, true), global0.x), Struct_1(var_0.a, vec4<f32>(-268f, global0.x, 270f, global0.x), 1u)))))), (vec2<i32>(-1i) * -max(u_input.d.yy, u_input.d.zz)) | u_input.d.xy, countOneBits(~vec2<u32>(abs(0u), 9337u)));
}

