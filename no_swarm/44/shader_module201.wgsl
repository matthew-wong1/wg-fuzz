struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(-489f);
    var_0 = Struct_1(var_0.a);
    return _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(32648u, 0u, 28100u, 27743u), vec4<u32>(26454u, 1u, 33523u, 4294967295u)), ~1u, ~8577u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), 29311u);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(967f)) - _wgslsmith_f_op_f32(floor(arg_0))) <= 492f, !(func_3() < abs(arg_1 | arg_1)), (true || any(vec4<bool>(true, true, true, true))) && all(vec3<bool>(true, true, true)));
    let var_1 = any(!vec4<bool>(all(vec3<bool>(false, var_0.x, var_0.x)), any(vec3<bool>(true, var_0.x, var_0.x)), var_0.x, all(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, false), var_0.x))));
    var var_2 = _wgslsmith_mod_i32(u_input.a.x, -1i);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, arg_0) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-179f, 1000f, 406f), vec3<f32>(arg_2.a, arg_2.a, 199f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_2.a, arg_2.a))))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.a + 382f), arg_0, arg_0), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 961f, _wgslsmith_f_op_f32(arg_2.a + -927f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1814f, 129f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-767f, 1011f, -1323f) * vec3<f32>(arg_0, 746f, arg_2.a)))))));
    var var_4 = var_3;
    return Struct_1(-623f);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(512f)))));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + -1122f)));
    var_1 = arg_1;
    let var_3 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 + var_0), var_0, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0)), -1865f)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~select(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 55314u), arg_0)), _wgslsmith_div_u32(~107154u << (0u % 32u), 4294967295u)), Struct_1(-1000f));
    return _wgslsmith_f_op_f32(680f + 1990f);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))));
    return func_2(-1264f, ~(~abs(_wgslsmith_div_u32(62155u, 4294967295u))), arg_1);
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2417f))) - _wgslsmith_f_op_f32(func_4(any(vec4<bool>(false, true, true, false)), func_2(-1112f, 21939u, Struct_1(-1476f)), arg_0))))), Struct_1(-406f));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~_wgslsmith_div_u32(~(~45950u), 1u));
    let var_1 = !(2766u >= max(func_1(43819i) << (~94429u % 32u), 4294967295u));
    let var_2 = all(vec3<bool>(!var_1, false, var_1));
    var_0 = abs(min(~reverseBits(82195u), ~1u));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(801f)) + -163f))))) == _wgslsmith_f_op_f32(-957f * 1122f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, _wgslsmith_add_u32(firstLeadingBit(~116434u), 4677u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, abs(4294967295u)), vec3<u32>(1u, ~4294967295u, _wgslsmith_clamp_u32(34794u, 29619u, 78279u)))), u_input.a.x);
}

