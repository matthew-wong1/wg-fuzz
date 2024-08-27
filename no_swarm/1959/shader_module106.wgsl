struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_1(~u_input.c.x, global0.b);
    var_0 = Struct_1(~(4294967295u & global0.b) | 4294967295u, ~u_input.b.x);
    var var_1 = u_input.a;
    var var_2 = Struct_1(select(reverseBits(53344u), _wgslsmith_dot_vec3_u32(select(u_input.b, ~vec3<u32>(var_0.b, var_0.a, var_0.b), arg_2.x), ~u_input.b), false | all(!vec4<bool>(arg_2.x, arg_2.x, false, false))), ~(global0.b | (~4294967295u >> (_wgslsmith_add_u32(u_input.c.x, 21379u) % 32u))));
    var var_3 = arg_1;
    return arg_2;
}

fn func_3(arg_0: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1446f, -505f, -848f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(630f, 592f, -526f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-817f, 153f, 658f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -135f, 1692f))))), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1731f, -1418f, 971f) * vec3<f32>(-1043f, 408f, 585f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -918f), _wgslsmith_f_op_f32(f32(-1f) * -1049f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-508f, 1099f, false))))), select(!vec3<bool>(true, 0i > u_input.a.x, true), vec3<bool>(true, true, true), true)));
    global0 = Struct_1(1u, ~47501u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -687f);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(308f, 200f, -1080f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -303f, var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1050f), 1584f), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_div_f32(627f, var_1), _wgslsmith_f_op_f32(f32(-1f) * -1029f)))));
    var var_2 = ~(~4294967295u & arg_0.x);
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = 0u;
    var var_1 = !select(!vec3<bool>(422f > arg_1.a, true, select(true, false, false)), !select(func_2(179f, arg_1, vec3<bool>(false, false, true)), vec3<bool>(false, true, false), any(vec2<bool>(true, true))), select(vec3<bool>(any(vec3<bool>(true, true, true)), true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), true, func_3(vec4<u32>(10721u, global0.a, 4294967295u, 26548u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-479f, -121f, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1520f, _wgslsmith_f_op_f32(min(arg_1.a, 2275f))))));
    let var_3 = _wgslsmith_mod_vec4_i32(u_input.a, min(_wgslsmith_clamp_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.a.x, -4273i, u_input.a.x, 2147483647i)), u_input.a, u_input.a), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 3549i, 1i, u_input.a.x), select(u_input.a, vec4<i32>(-70778i, u_input.a.x, 9209i, -1i), var_1.x))));
    let var_4 = -914f;
    return arg_2;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    global0 = arg_1;
    var var_0 = arg_1;
    var var_1 = 1718f;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -1463f), 1398f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1436f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-941f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -116f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-431f, -528f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(767f, -464f) - vec2<f32>(-148f, -1072f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1460f, -1000f), vec2<f32>(-1152f, 145f)))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-842f))))), -394f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-2048f)), var_2.x, arg_0.x)));
    return true;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: bool) -> vec3<f32> {
    global0 = Struct_1(_wgslsmith_mult_u32(u_input.c.x, abs(u_input.c.x)), ~(arg_0.x | (arg_0.x << (38419u % 32u))));
    global0 = Struct_1(~(~arg_0.x), u_input.c.x);
    global0 = Struct_1(127723u, _wgslsmith_div_u32(u_input.c.x >> (~u_input.c.x % 32u), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, arg_0.x, 48622u), arg_0) | 0u)));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    global0 = Struct_1(u_input.b.x, 1u ^ _wgslsmith_clamp_u32(4294967295u, 0u, ~1u));
    return vec3<f32>(593f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-679f * -746f), -1458f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_1.x))))), 2198f), _wgslsmith_f_op_f32(f32(-1f) * -986f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(849f, -214f))), _wgslsmith_f_op_f32(f32(-1f) * -1406f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(898f * 427f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1237f, 470f, 796f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1085f, 1615f, 271f), vec3<f32>(-956f, 1559f, 1000f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_5(vec4<u32>(0u, 24895u, u_input.c.x, u_input.c.x) ^ firstTrailingBit(vec4<u32>(0u, u_input.c.x, 8402u, 4453u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1232f, -1103f, 752f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(487f, 303f, -1233f) - vec3<f32>(1719f, -342f, 872f))), func_4(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), func_1(Struct_1(63020u, 1u), Struct_2(538f), Struct_1(4294967295u, u_input.c.x), u_input.b.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1092f - -313f), _wgslsmith_f_op_f32(round(-668f)), -1375f)), true))));
    let var_1 = func_1(func_1(func_1(Struct_1(14573u, 1u), Struct_2(-165f), Struct_1(1u, 0u << (u_input.c.x % 32u)), select(~u_input.b.x, ~u_input.c.x, func_2(var_0.x, Struct_2(159f), vec3<bool>(true, true, false)).x)), Struct_2(var_0.x), func_1(Struct_1(_wgslsmith_clamp_u32(global0.a, u_input.b.x, 0u), u_input.c.x), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1372f)), Struct_1(0u, 44807u), abs(global0.b) | 4294967295u), countOneBits(34208u)), Struct_2(_wgslsmith_f_op_f32(-1713f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(_wgslsmith_div_u32(~min(u_input.b.x, global0.a), 34172u), min(global0.b, reverseBits(countOneBits(4294967295u)))), 1u);
    let var_2 = Struct_2(var_0.x);
    global0 = Struct_1(~func_1(Struct_1(58576u, ~global0.a), var_2, func_1(func_1(Struct_1(u_input.b.x, u_input.c.x), var_2, var_1, 20678u), var_2, Struct_1(global0.b, u_input.b.x), 1u), ~4294967295u).b, ~u_input.c.x);
    var var_3 = true;
    let var_4 = var_1;
    var var_5 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1998f));
    let x = u_input.a;
    s_output = StorageBuffer(~(43882i & u_input.a.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-828f, var_5.a), vec2<f32>(1408f, var_0.x), true)) - var_0.xz))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1465f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_5.a - 480f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1108f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-289f, 439f, true)))))));
}

