struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32) -> bool {
    global0 = ~4294967295u;
    global0 = _wgslsmith_mult_u32(51402u, ~abs(select(_wgslsmith_dot_vec4_u32(vec4<u32>(71289u, 1u, 0u, 4811u), vec4<u32>(3375u, 9655u, 48252u, 54576u)), _wgslsmith_clamp_u32(1u, 1934u, 0u), true)));
    let var_0 = ~4294967295u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))));
    global0 = var_0;
    return false || any(vec3<bool>(arg_0.a.x, ~var_0 == _wgslsmith_div_u32(4294967295u, 39761u), false));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> i32 {
    var var_0 = vec3<u32>(1u, arg_2, ~(_wgslsmith_clamp_u32(arg_2, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 4294967295u, 0u, arg_2), vec4<u32>(arg_2, 51950u, arg_2, 28711u))) >> (~6316u % 32u)));
    var var_1 = -933f;
    let var_2 = select(select(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_3(Struct_2(vec4<bool>(true, false, false, true)), u_input.b, 2147483647i), true), true), true), select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false)), vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), _wgslsmith_clamp_i32(19252i, arg_3.a, 21228i) <= ~arg_3.a)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, false)), true, true, any(vec4<bool>(true, false, false, true))), any(vec2<bool>(true, true))), !vec4<bool>(true, all(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, true)), any(vec2<bool>(false, false))), !(!(var_0.x <= 4294967295u))));
    global0 = var_0.x;
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(-565f, _wgslsmith_f_op_f32(1606f * _wgslsmith_f_op_f32(ceil(-265f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(612f + 510f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1477f, -817f, 1155f, 868f), vec4<f32>(-653f, 1807f, -566f, 613f), var_2)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-200f, -520f, 817f, 229f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-634f, 461f, 849f, 1184f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-605f, -1000f, 1165f, 396f))))));
    return ~(abs(arg_3.a) ^ ~countOneBits(~(-1i)));
}

fn func_1(arg_0: Struct_5, arg_1: i32) -> i32 {
    let var_0 = firstLeadingBit(_wgslsmith_clamp_i32(-(~0i), u_input.a.x, min(~func_2(Struct_4(vec3<i32>(-1i, u_input.b.x, arg_1)), Struct_3(-37872i), 91369u, Struct_3(u_input.a.x)), ~arg_1)));
    global0 = ~(select(25946u, ~(~4294967295u), arg_0.c.a.x) >> (28733u % 32u));
    global0 = 1u;
    global0 = ~4294967295u;
    let var_1 = select(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4216u, 19034u, 4294967295u), vec3<u32>(0u, 0u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 49713u), vec2<u32>(1u, 4294967295u))) & 1u, reverseBits(abs(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 34308u), 1u, 0u))), true);
    return u_input.a.x;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_4 {
    global0 = arg_0 >> (~arg_0 % 32u);
    global0 = ~arg_0;
    let var_0 = select(true, true, true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-366f, -229f) + vec2<f32>(643f, 1395f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(317f, -1470f) * vec2<f32>(-1244f, -841f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1548f, 1795f), vec2<f32>(1545f, 281f), vec2<bool>(true, var_0)))))));
    global0 = max(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(arg_0, 0u, 30986u) & vec3<u32>(46579u, 1u, arg_0)) & ~vec3<u32>(arg_0, arg_0, 114743u), (vec3<u32>(16350u, 4294967295u, arg_0) | vec3<u32>(62972u, arg_0, 10678u)) & reverseBits(vec3<u32>(arg_0, arg_0, 112566u))), countOneBits(~(~arg_0))), _wgslsmith_add_u32(~(~_wgslsmith_add_u32(arg_0, 52950u)), arg_0));
    return Struct_4(~max(countOneBits(arg_1), min(vec3<i32>(0i, -2147483647i, arg_2.a), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)) & arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(0u, ~1u));
    var var_1 = func_4(1u, vec3<i32>(abs(func_1(Struct_5(Struct_2(vec4<bool>(false, true, true, true)), true, Struct_2(vec4<bool>(false, true, true, false))), max(0i, u_input.b.x))), u_input.b.x, u_input.b.x), Struct_3(_wgslsmith_mod_i32(-select(0i, u_input.a.x, true), ~33253i)));
    var var_2 = Struct_3(_wgslsmith_dot_vec2_i32(countOneBits(~countOneBits(vec2<i32>(21922i, u_input.b.x))), -vec2<i32>(u_input.a.x, 2147483647i) >> (~select(vec2<u32>(4294967295u, 50029u), vec2<u32>(4294967295u, 74395u), true) % vec2<u32>(32u))));
    global0 = _wgslsmith_dot_vec4_u32(~(~firstTrailingBit(vec4<u32>(60077u, 0u, 11764u, 12352u)) ^ vec4<u32>(1u, min(12619u, 38252u), _wgslsmith_add_u32(20534u, 0u), _wgslsmith_mult_u32(4294967295u, 0u))), vec4<u32>(34983u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~1502u), ~(~vec2<u32>(0u, 7902u))), 1u, ~18658u));
    let var_3 = firstTrailingBit(~var_1.a);
    var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(68946u, 10553u), _wgslsmith_div_u32(19942u, 55505u), 1u, 13435u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>((_wgslsmith_mult_u32(32528u, 0u) & _wgslsmith_dot_vec4_u32(vec4<u32>(15278u, 0u, 1u, 14132u), vec4<u32>(10074u, 56219u, 23832u, 51658u))) & ~1u, 46125u, abs(~4294967295u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(74734u, 0u), ~vec2<u32>(4294967295u, 4294967295u)), select(firstTrailingBit(0u), _wgslsmith_div_u32(4294967295u, 36732u), -12147i >= var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(u_input.a.x, var_3.x)));
}

