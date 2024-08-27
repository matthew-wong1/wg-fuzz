struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global1: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    global0 = array<Struct_1, 7>();
    let var_0 = vec3<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(~(~(vec3<u32>(u_input.b, 0u, 4294967295u) << (vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u)))), vec3<u32>(~(~1u), ~12221u, _wgslsmith_dot_vec3_u32(vec3<u32>(38243u, u_input.b, 1u), vec3<u32>(4294967295u, 44742u, u_input.b)))), abs(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~1u, firstLeadingBit(u_input.b), 1u), _wgslsmith_mult_u32(u_input.b, u_input.b) << (reverseBits(u_input.b) % 32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 480f));
    global0 = array<Struct_1, 7>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(round(294f)), var_1.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, arg_0, -1245f), vec3<f32>(arg_0, -1000f, -646f), arg_1.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1316f, var_1.x, 1979f) + vec3<f32>(arg_0, arg_0, 259f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 887f)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 959f, var_1.x), vec3<f32>(-650f, arg_0, 1305f)))))));
    return _wgslsmith_f_op_f32(-419f + var_1.x);
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    var var_0 = -16515i << (~(_wgslsmith_div_u32(u_input.b ^ u_input.b, 25221u) | 0u) % 32u);
    var var_1 = arg_0.x;
    let var_2 = Struct_1(true);
    let var_3 = -791i;
    var var_4 = vec4<bool>(!(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-915f, -824f), _wgslsmith_f_op_f32(-660f * 230f))) <= _wgslsmith_f_op_f32(func_3(1000f, Struct_1(true), Struct_1(var_2.a), u_input.a.yy))), any(select(vec4<bool>(var_2.a, var_2.a, var_2.a, false), select(vec4<bool>(false, var_2.a, var_2.a, var_2.a), vec4<bool>(false, true, var_2.a, true), vec4<bool>(true, var_2.a, false, false)), true)) & true, false, var_2.a);
    return select(_wgslsmith_clamp_vec4_u32(~(~(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) ^ vec4<u32>(1u, 1u, 0u, 0u))), vec4<u32>(u_input.b, ~u_input.b & max(u_input.b, u_input.b), u_input.b, u_input.b), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, 20619u, u_input.b, 12045u), vec4<u32>(u_input.b, u_input.b, 1u, 1u), var_4.x), vec4<u32>(u_input.b, 0u, 1u, 0u)), u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 1u), vec4<u32>(1u, 45352u, 848u, 1u)))), ~(~(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) ^ vec4<u32>(u_input.b, 79726u, 92556u, u_input.b))) ^ vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.b | 0u), u_input.b, ~reverseBits(0u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 35871u)), ~vec3<u32>(u_input.b, u_input.b, u_input.b))), !var_2.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))) == -675f;
    global0 = array<Struct_1, 7>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2394f - _wgslsmith_f_op_f32(arg_2.x + 790f)) + -326f), _wgslsmith_f_op_f32(-arg_2.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2 - _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, arg_2.x), vec2<f32>(1619f, arg_2.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(194f, Struct_1(false), arg_1, vec2<i32>(6891i, 27714i)))))));
    global0 = array<Struct_1, 7>();
    let var_2 = ~firstLeadingBit(vec2<i32>(-9020i, min(countOneBits(u_input.d), -u_input.c.x)));
    return select(true, var_0, !((_wgslsmith_f_op_f32(trunc(var_1.x)) <= 1000f) & true));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(true);
    let var_1 = !(!vec4<bool>(false, any(select(vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(var_0.a, var_0.a, true, arg_0.a), false)), false, any(select(vec2<bool>(var_0.a, arg_0.a), vec2<bool>(true, var_0.a), false))));
    var var_2 = vec2<bool>(func_4(~min(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), func_2(vec3<bool>(true, var_0.a, false))), Struct_1(select(false, arg_0.a, any(var_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1103f, 923f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1002f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1329f, 922f) + vec2<f32>(-1549f, 432f)), vec2<f32>(918f, -689f), false)))), var_1.x);
    let var_3 = ~abs(vec4<i32>(-23285i, -2147483647i, -43708i, ~u_input.c.x));
    var_2 = vec2<bool>(!var_0.a, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1717f * 1080f), _wgslsmith_f_op_f32(sign(-1555f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-207f, 1086f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a.x;
    let var_0 = min(-u_input.c, select(vec4<i32>(u_input.c.x, -2147483647i, -(1i ^ u_input.c.x), 0i), vec4<i32>(~u_input.a.x, u_input.d, _wgslsmith_mod_i32(25947i, -4873i), _wgslsmith_add_i32(u_input.c.x, 2147483647i)) ^ vec4<i32>(u_input.c.x, -14639i, 1i, u_input.a.x), true));
    global0 = array<Struct_1, 7>();
    let var_1 = 1000f;
    global1 = ~var_0.x;
    global1 = _wgslsmith_mod_i32(-countOneBits(-2147483647i), ~_wgslsmith_sub_i32(~u_input.c.x, max(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), var_0.x)));
    let var_2 = ~(i32(-1i) * -20594i);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_1 * -551f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) - _wgslsmith_f_op_f32(-var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(Struct_1(true))));
}

