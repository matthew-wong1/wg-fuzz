struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<f32>, 25>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(-820f);
    global1 = array<vec4<f32>, 25>();
    let var_1 = true | global0.b.x;
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-324f + var_0.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a + 1f), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(round(1460f)))))));
    let var_3 = global0.b.xzw;
    return vec4<bool>(!any(select(global0.b.wyx, select(vec3<bool>(true, var_1, var_3.x), global0.b.zzx, global0.b.wyw), false)), var_3.x, var_1, false);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = arg_0.x;
    global0 = Struct_2(4505i, !select(select(vec4<bool>(true, global0.b.x, global0.b.x, true), select(global0.b, global0.b, true), u_input.a == u_input.d), !global0.b, select(vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x), global0.b, func_3())), 2147483647i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + arg_1.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(279f * -709f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_1.a) - vec2<f32>(-651f, -1451f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(925f, 1115f), vec2<f32>(385f, arg_1.a), global0.b.x)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(708f, 859f), vec2<f32>(-350f, arg_1.a), global0.b.x))))));
    var var_2 = Struct_2(abs(_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_add_i32(-9296i, u_input.c.x))) >> (((firstTrailingBit(u_input.d) | 0u) << (~(u_input.b.x >> (u_input.a % 32u)) % 32u)) % 32u), !global0.b, _wgslsmith_mod_i32(firstTrailingBit(u_input.c.x), ~_wgslsmith_mult_i32(_wgslsmith_add_i32(-12182i, arg_0.x), global0.c | u_input.c.x)));
    var var_3 = ~32386i > firstTrailingBit(61096i);
    return firstLeadingBit(~u_input.e.yx);
}

fn func_1(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = u_input.b;
    let var_1 = u_input.c.x >> (1665u % 32u);
    let var_2 = false;
    var var_3 = _wgslsmith_mod_vec2_u32(func_2(u_input.c.xw & u_input.c.wy, Struct_1(_wgslsmith_f_op_f32(arg_1 + -707f))), vec2<u32>(firstLeadingBit(var_0.x ^ u_input.d), var_0.x)) ^ ~_wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), var_0.zx, u_input.e.xx), vec2<u32>(u_input.a, 63190u) ^ u_input.e.zz);
    global1 = array<vec4<f32>, 25>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-121f + arg_1)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-2281f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1382f, 237f)) * _wgslsmith_f_op_f32(trunc(-2445f))) - 1f) + _wgslsmith_f_op_f32(func_1(abs(min(-34115i, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) - _wgslsmith_f_op_f32(311f + -431f))))), _wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-554f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1265f + 629f), _wgslsmith_f_op_f32(abs(152f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(-1i, _wgslsmith_f_op_f32(f32(-1f) * -381f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-428f)) + _wgslsmith_f_op_f32(select(921f, 135f, global0.b.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(-119f))))));
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_0.zxx);
    let var_3 = vec4<bool>(0u > abs(~u_input.a), true == global0.b.x, false, global0.b.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.wxy)), var_0.zyx, global0.b.zzw)), _wgslsmith_f_op_vec3_f32(var_0.xwx - _wgslsmith_f_op_vec3_f32(ceil(var_0.yww))), vec3<bool>(true, true, true)));
    global0 = Struct_2(global0.a, vec4<bool>(true, var_3.x, false, false), firstLeadingBit(-firstLeadingBit(~u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~global0.c, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(reverseBits(24536u), ~(~11621u), u_input.d), _wgslsmith_div_u32(~u_input.a, u_input.d) | ~func_2(vec2<i32>(global0.a, global0.a), Struct_1(var_4.x)).x), _wgslsmith_f_op_f32(floor(-330f)), u_input.b.x, var_1);
}

