struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1300f))))));
    global0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-countOneBits(min(-24773i, u_input.b.x)), abs(u_input.c)), -(~u_input.c), 3089i);
    var var_1 = -_wgslsmith_mod_i32(u_input.b.x, 1i);
    let var_2 = Struct_1((_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) & u_input.a.x) | _wgslsmith_mult_u32(select(1u, reverseBits(19009u), select(true, true, arg_0)), ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -726f, -1000f, var_0.x) * vec4<f32>(1057f, var_0.x, 621f, -810f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1056f, -790f, -189f, -147f) * vec4<f32>(484f, -912f, 594f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -178f), _wgslsmith_f_op_f32(282f + var_0.x), _wgslsmith_div_f32(581f, -420f)))), _wgslsmith_f_op_f32(min(1f, var_0.x)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1687f))))));
    return -803f;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: f32) -> i32 {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-1590f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, -1092f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, arg_2, 614f, arg_2)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, arg_2, -190f, -786f), vec4<f32>(216f, arg_2, arg_2, arg_2))) * vec4<f32>(arg_2, arg_2, arg_2, arg_2)))), -1080f);
    var var_1 = _wgslsmith_f_op_f32(func_3(false));
    global0 = _wgslsmith_div_i32(-33999i, abs(4935i));
    let var_2 = var_0.d;
    global0 = ~(-1i);
    return u_input.c;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    global0 = -func_2(~77721u, select(~vec4<i32>(0i, u_input.d, 22995i, 648i), ~vec4<i32>(42268i, u_input.c, u_input.d, -2147483647i), true), _wgslsmith_f_op_f32(f32(-1f) * -577f)) | u_input.c;
    global0 = ~u_input.b.x;
    var var_0 = Struct_1(39954u, arg_0, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2798f, 810f, arg_0, -2316f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(323f, -105f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-487f, arg_0, 150f, arg_0) + vec4<f32>(arg_0, arg_0, arg_0, arg_0)), vec4<bool>(false, true, false, false)))))), _wgslsmith_f_op_f32(exp2(arg_0)));
    var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b))))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))) + -1142f)), arg_0);
    global0 = 2147483647i;
    return vec4<bool>(all(vec3<bool>(true, max(-1i, 19145i) != u_input.d, any(vec4<bool>(true, false, false, true)) && any(vec3<bool>(false, false, true)))), any(vec4<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), false & (arg_0 <= 1119f), true, arg_0 != var_0.b)), !any(vec3<bool>(true, -928f > var_0.d, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, !(any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))) | false), all(func_1(-345f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(409f, -347f, 320f) * vec3<f32>(670f, 562f, 1566f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(205f, -1859f, -489f), vec3<f32>(352f, -461f, 389f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2366f, 641f, 375f)))), select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, false)), !vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-465f * 895f), 340f, _wgslsmith_f_op_f32(385f * -311f))))), vec3<f32>(1004f, _wgslsmith_f_op_f32(abs(-677f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2148f + _wgslsmith_div_f32(-1000f, -1000f)))), vec3<bool>(all(!select(var_0.xz, vec2<bool>(false, true), var_0.x)), var_0.x, true)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -120f) - vec3<f32>(893f, var_1.x, var_1.x)) * vec3<f32>(var_1.x, var_1.x, 1789f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -479f) - vec3<f32>(var_1.x, 107f, var_1.x)))) + vec3<f32>(_wgslsmith_f_op_f32(round(1107f)), -517f, -1000f))));
    var_0 = vec3<bool>(true, func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(999f)))))).x, all(!vec4<bool>(var_0.x, false, false, false)) & false);
    var var_2 = ~_wgslsmith_clamp_u32(~(~4294967295u), 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 64062u), vec4<u32>(1476u, 0u, u_input.a.x, 66193u), vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x)) ^ ~vec4<u32>(4294967295u, 1u, 16945u, 0u), ~(~vec4<u32>(0u, 3505u, u_input.a.x, u_input.a.x))));
    var var_3 = u_input.d;
    let var_4 = -160f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b | ((~u_input.b ^ vec3<i32>(u_input.b.x, u_input.d, -2147483647i)) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 19506u, u_input.a.x) & vec3<u32>(33258u, 4550u, u_input.a.x), ~vec3<u32>(52705u, 24202u, 57210u)) % vec3<u32>(32u))), _wgslsmith_mod_vec2_i32(-max(u_input.b.zy, ~vec2<i32>(62510i, 0i)), vec2<i32>(select(2147483647i, u_input.c, var_0.x) & func_2(49934u, vec4<i32>(u_input.d, u_input.d, 2147483647i, u_input.d), 832f), -2147483647i)), u_input.b, 3256i);
}

