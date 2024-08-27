struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, -39626i, 0i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global0 = ~vec3<i32>(u_input.c.x, i32(-1i) * -32280i, abs(_wgslsmith_clamp_i32(-13382i, abs(global0.x), 1i)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1206f)))), -236f)), 1459f, -630f));
    var var_1 = ~_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_div_u32(90391u, 1u));
    return vec3<i32>(global0.x, global0.x, global0.x);
}

fn func_2(arg_0: f32) -> vec4<bool> {
    global0 = ~((vec3<i32>(countOneBits(2147483647i), global0.x, -u_input.d) & select(func_3(Struct_1(u_input.b, 18895u)), u_input.c, vec3<bool>(true, true, true))) ^ u_input.c);
    let var_0 = 1u << (u_input.e.x % 32u);
    var var_1 = _wgslsmith_f_op_f32(1335f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0)))))) > _wgslsmith_f_op_f32(-860f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1411f, _wgslsmith_f_op_f32(f32(-1f) * -2061f), true)) - arg_0));
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, var_0, _wgslsmith_mod_u32(var_0, 23913u)), vec4<u32>(_wgslsmith_mod_u32(~0u, firstLeadingBit(u_input.b)), var_0, _wgslsmith_sub_u32(58171u, 8022u << (1u % 32u)), ~u_input.e.x)), var_0);
    var_1 = (!(!all(vec2<bool>(false, false))) == true) && (true != !any(vec2<bool>(false, true)));
    return vec4<bool>(any(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), true)), true, select(false, false, false), -523f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 1199f) - _wgslsmith_f_op_f32(arg_0 * 1430f)), _wgslsmith_f_op_f32(-arg_0)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = select(!select(vec4<bool>(true, all(vec3<bool>(false, false, true)), true, false), !func_2(635f), vec4<bool>(true, true, true, true)), vec4<bool>(!func_2(arg_1).x & all(func_2(-648f).zy), false, all(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec2<bool>(true, true)))), true), 1602f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))));
    return arg_1;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = u_input.c;
    var var_0 = _wgslsmith_sub_i32(global0.x | (-(~(-16593i)) & (~u_input.d << (~38543u % 32u))), _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, -2147483647i, -16448i), vec4<i32>(arg_2, 2147483647i, 1i, -2147483647i)), u_input.c.x >> (8320u % 32u)) << (_wgslsmith_mod_u32(~abs(114513u), _wgslsmith_add_u32(~4294967295u, u_input.a.x)) % 32u));
    let var_1 = vec3<u32>(~(~countOneBits(~arg_1.b)), abs(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(34598u, 47476u, arg_1.b), 11764u, countOneBits(91140u)) | ~_wgslsmith_clamp_u32(u_input.b, 64886u, arg_1.b)), 46596u);
    let var_2 = true;
    global0 = u_input.c;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<f32>(-1891f, -239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-358f, -1488f, 223f, 1083f) - vec4<f32>(-1074f, -378f, 563f, -574f)), 1220f, Struct_1(62199u, u_input.e.x))) * 1992f)), Struct_1(34216u & u_input.e.x, _wgslsmith_mod_u32(max(u_input.b, min(1u, 78938u)), 79473u)), _wgslsmith_sub_i32(45011i, _wgslsmith_dot_vec3_i32(select(_wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(global0.x, 2147483647i, u_input.c.x), vec3<i32>(0i, -2147483647i, 22249i)), firstLeadingBit(u_input.c), all(vec3<bool>(true, true, true))), vec3<i32>(-1i) * -u_input.c)));
    let var_1 = u_input.e.zz;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(757f))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-316f - 1f)))));
    global0 = -vec3<i32>(-1i, 0i, (_wgslsmith_dot_vec2_i32(global0.zz, vec2<i32>(u_input.c.x, 2147483647i)) & firstTrailingBit(59743i)) | u_input.d);
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f)))) * vec3<f32>(1531f, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1090f - -413f), _wgslsmith_f_op_f32(round(-1924f))))), Struct_1(~u_input.e.x, ~var_1.x), -(~u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b);
}

