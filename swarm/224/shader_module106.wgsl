struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 855f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a - 344f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1487f, -435f) * _wgslsmith_f_op_f32(-arg_2.b.x))))));
    let var_1 = arg_0;
    var_0 = arg_2.a;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-577f, 1000f, true)), arg_2.a)), _wgslsmith_f_op_vec3_f32(-arg_2.b));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(var_2.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - arg_2.a) * 1349f)), arg_2.a, 788f));
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(68394u, 26416u, 11003u), ~vec3<u32>(52767u, 0u, 34428u)) << (func_3(u_input.a, select(vec2<bool>(false, true), vec2<bool>(false, false), false), Struct_1(arg_1.a, arg_0.b)) % 32u), 1u, ~(~_wgslsmith_mod_u32(24392u, 21943u)));
    return ~func_3(u_input.a, select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), all(vec3<bool>(true, true, true))), Struct_1(-1564f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_1.b.x, 919f) * vec3<f32>(1340f, arg_1.b.x, arg_1.b.x)))));
}

fn func_1() -> f32 {
    let var_0 = vec3<u32>(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(0u, 0u)), ~(~74646u), _wgslsmith_sub_u32(reverseBits(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 21781u), vec2<u32>(57462u, 4294967295u)))), min(_wgslsmith_add_u32(abs(reverseBits(42269u)), 1u), ~_wgslsmith_clamp_u32(0u, 77955u, ~17721u)), _wgslsmith_add_u32(abs(~4294967295u), ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 6971u), vec2<u32>(4294967295u, 107999u)), func_2(Struct_1(524f, vec3<f32>(477f, -993f, -541f)), Struct_1(-2226f, vec3<f32>(141f, -467f, 887f))))));
    let var_1 = Struct_1(-412f, vec3<f32>(1143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1481f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -886f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * var_1.a) * var_1.a)) + 434f), var_1.b);
    var var_3 = -711f;
    var var_4 = _wgslsmith_sub_u32(var_0.x, var_0.x);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-450f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -869f)), -633f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(853f, 1000f) * 264f)))) - 162f);
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1())));
    var var_0 = ~(~(~vec3<u32>(1u >> (0u % 32u), 1u, _wgslsmith_mod_u32(1u, 7390u))));
    var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(func_3(-1i, vec2<bool>(true, true), Struct_1(-212f, vec3<f32>(-302f, -553f, 242f))), _wgslsmith_dot_vec4_u32(vec4<u32>(58391u, firstTrailingBit(var_0.x), 11464u, ~var_0.x), ~vec4<u32>(1u, 0u, 42845u, var_0.x)), 84005u), firstTrailingBit(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(1u, 0u, var_0.x) ^ vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, 52404u, var_0.x)), vec3<u32>(var_0.x, 1u, ~1u), vec3<u32>(19956u, 13879u, 7600u) & vec3<u32>(var_0.x, 76149u, 35595u))));
    let var_1 = -646f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.x, var_0.x), 1u), 4887u, !all(vec4<bool>(false, false, true, false)))), ~firstLeadingBit(110184u), countOneBits(~abs(var_0.x)), _wgslsmith_sub_u32(abs(var_0.x) ^ var_0.x, _wgslsmith_clamp_u32(var_0.x | var_0.x, ~var_0.x, func_3(-16522i, vec2<bool>(true, true), Struct_1(691f, vec3<f32>(-2273f, -493f, var_1))))) ^ func_2(Struct_1(136f, _wgslsmith_f_op_vec3_f32(vec3<f32>(883f, -1219f, var_1) * vec3<f32>(-1275f, var_1, var_1))), Struct_1(_wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, -1504f) + vec3<f32>(var_1, var_1, var_1)))));
}

