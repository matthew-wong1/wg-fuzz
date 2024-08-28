struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<f32>(421f, 922f)), Struct_1(vec2<f32>(-610f, -1491f)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(37511u, u_input.a, 37729u), vec3<u32>(14758u, 28002u, 0u), vec3<u32>(u_input.a, 3206u, u_input.a)), vec3<u32>(4294967295u, u_input.a, 1u)), u_input.a) & u_input.a, 2u)];
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, var_0.a.x, -152f) - vec3<f32>(var_0.a.x, 2224f, -754f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1318f, -1000f, 2309f) * vec3<f32>(1362f, arg_0.a.x, var_0.a.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1898f, 299f, -177f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -392f, var_0.a.x) - vec3<f32>(-1199f, 1305f, -706f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, arg_0.a.x, -1758f), vec3<f32>(arg_0.a.x, -779f, -450f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2665f, arg_0.a.x, -269f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, -1410f, 127f), vec3<f32>(var_0.a.x, var_0.a.x, 539f), false)))))), global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(70754u, 2u)], _wgslsmith_sub_u32(select(_wgslsmith_add_u32(u_input.a, 0u), 0u, !all(vec3<bool>(false, true, false))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), ~vec3<u32>(68988u, u_input.a, 0u))));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -377f, arg_0.a.x)) - var_1.a))) - vec3<f32>(925f, var_0.a.x, var_1.c.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.a, vec2<f32>(401f, 2443f), vec2<bool>(false, false))) + _wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(arg_0.a.x, arg_0.a.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, -1302f) * var_1.a.yy))), global0[_wgslsmith_index_u32(~var_1.d, 2u)], 0u);
    return var_1.a.x;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(607f)), _wgslsmith_f_op_f32(select(1994f, arg_1.b.a.x, false)), arg_1.a.x), Struct_1(arg_1.a.yy), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.a)))), arg_1.d);
    global0 = array<Struct_1, 2>();
    var var_1 = select(~select(select(vec3<u32>(u_input.a, 96405u, 0u), vec3<u32>(4294967295u, u_input.a, u_input.a), false), _wgslsmith_mod_vec3_u32(vec3<u32>(5950u, var_0.d, arg_1.d), vec3<u32>(var_0.d, u_input.a, u_input.a)), vec3<bool>(true, true, true)), vec3<u32>(arg_1.d, arg_1.d ^ _wgslsmith_add_u32(arg_1.d, 28205u), u_input.a), true & (true || select(true, false, false))) | vec3<u32>(1u, ~arg_1.d, 52392u);
    let var_2 = _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(77050u, 2u)]));
    let var_3 = arg_1.c.a.x;
    return arg_1.c.a.x;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = global0[_wgslsmith_index_u32(~reverseBits(~0u), 2u)];
    let var_1 = vec4<bool>(any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false)) | false, reverseBits(-(i32(-1i) * -1i)) >= firstTrailingBit(-37762i), _wgslsmith_mod_i32(-23445i, _wgslsmith_add_i32(select(76654i, 2147483647i, false), _wgslsmith_sub_i32(-48945i, 26641i))) < -42833i, any(vec3<bool>(true, true, true)));
    global0 = array<Struct_1, 2>();
    var var_2 = ~(~(~vec4<u32>(~u_input.a, u_input.a, abs(25212u), 106969u)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1109f, -1077f)) - 1435f), _wgslsmith_f_op_f32(abs(-281f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_i32(28910i, -5047i), Struct_2(arg_1.xzy, Struct_1(vec2<f32>(-107f, 231f)), Struct_1(var_0.a), 1390u))))), global0[_wgslsmith_index_u32(u_input.a, 2u)], arg_2, 0u);
    return _wgslsmith_f_op_vec2_f32(trunc(var_0.a));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> StorageBuffer {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    return StorageBuffer(~vec2<u32>(_wgslsmith_mult_u32(u_input.a, ~arg_1.x), 36555u), countOneBits(~vec2<i32>(-23681i, ~(-1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    var var_0 = 4294967295u;
    var var_1 = vec2<f32>(-1313f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(504f, -1000f)))));
    let var_2 = u_input.a;
    global0 = array<Struct_1, 2>();
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(779f - _wgslsmith_f_op_f32(-var_1.x)), -903f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f + _wgslsmith_f_op_f32(var_1.x - var_1.x)))), var_1.x, _wgslsmith_f_op_f32(floor(var_1.x)));
    let var_4 = -582f;
    let x = u_input.a;
    s_output = func_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-564f + -1242f), _wgslsmith_f_op_f32(f32(-1f) * -368f), -2099f), Struct_1(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(ceil(943f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4, var_4, var_3.x, 223f))), Struct_1(vec2<f32>(var_4, -1159f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-270f, -1000f))), 5440u), ~abs(~vec3<u32>(4294967295u, u_input.a, 54742u) & vec3<u32>(u_input.a, 57087u, 4294967295u)));
}

