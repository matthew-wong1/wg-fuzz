struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21>;

var<private> global1: Struct_1 = Struct_1(1u, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> Struct_2 {
    global0 = array<Struct_4, 21>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2139f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1414f + -214f), _wgslsmith_f_op_f32(f32(-1f) * -591f))), -1966f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -564f), _wgslsmith_f_op_f32(select(-847f, 167f, true))))))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec2<f32> {
    global1 = Struct_1(global1.a, true);
    var var_0 = Struct_3(Struct_1(~min(abs(global1.a), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2350f * arg_1) + 1881f) <= arg_1), select(!vec3<bool>(all(vec2<bool>(global1.b, false)), global1.b, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, global1.b, global1.b), select(vec3<bool>(true, global1.b, false), vec3<bool>(false, false, global1.b), vec3<bool>(true, false, true))), !select(select(vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(global1.b, false, global1.b), vec3<bool>(global1.b, false, false)), vec3<bool>(global1.b, global1.b, global1.b), !vec3<bool>(global1.b, global1.b, global1.b))));
    var var_1 = var_0.b.xy;
    var var_2 = Struct_3(Struct_1(max(var_0.a.a, abs(1u) << (var_0.a.a % 32u)), ~var_0.a.a <= global1.a), select(var_0.b, vec3<bool>(true, !any(vec4<bool>(var_1.x, var_0.b.x, false, false)), true), false));
    global1 = var_2.a;
    return vec2<f32>(549f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.x, arg_1)) * arg_1));
}

fn func_1() -> vec2<u32> {
    global1 = Struct_1(~(~global1.a), !global1.b);
    let var_0 = -17916i;
    let var_1 = global1.b | true;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(742f, 1110f))), vec2<f32>(_wgslsmith_div_f32(202f, 784f), -2463f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-788f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -873f) - _wgslsmith_f_op_f32(-var_2.x))), 227f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(func_2(vec2<bool>(global1.b, global1.b), global1.a), _wgslsmith_f_op_f32(-598f + 1231f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(func_2(vec2<bool>(false, var_1), u_input.a.x), _wgslsmith_f_op_f32(var_2.x - var_2.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(180f, var_2.x), vec2<f32>(var_2.x, var_2.x))))));
    return vec2<u32>(u_input.a.x << (1u % 32u), reverseBits(countOneBits(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 21>();
    var var_0 = vec2<i32>(~abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 6214i), vec2<i32>(23048i, 34391i))), -_wgslsmith_clamp_i32(-1i, _wgslsmith_sub_i32(firstLeadingBit(1i), i32(-1i) * -1i), select(51542i, 28771i, global1.b) & 1i));
    var var_1 = -2147483647i;
    var var_2 = Struct_5(Struct_1(u_input.a.x & u_input.a.x, firstTrailingBit(var_0.x) >= 579i));
    var var_3 = -38829i;
    var var_4 = _wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(~u_input.a.yx, func_1())), max(~max(u_input.a.yx, _wgslsmith_add_vec2_u32(u_input.a.yy, u_input.a.xx)), vec2<u32>(0u, select(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 64689u, global1.a, var_2.a.a)), _wgslsmith_add_u32(var_2.a.a, var_2.a.a), var_2.a.b))));
    var var_5 = vec4<bool>(global1.b, var_2.a.b, !(!all(vec2<bool>(true, global1.b)) | (var_2.a.b || true)), !any(vec2<bool>(true, true)));
    var_3 = 0i;
    var_4 = u_input.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1000f)))), u_input.a.x, vec2<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-652f * -273f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-1142f, 1052f), _wgslsmith_f_op_f32(878f + 719f), _wgslsmith_div_f32(2098f, -399f), _wgslsmith_f_op_f32(f32(-1f) * -503f)), vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec4<f32>(1129f, -1000f, 161f, -2930f)), 250f)).x, func_2(vec2<bool>(var_5.x, true), 62878u).a.x, -1308f, _wgslsmith_f_op_f32(f32(-1f) * -1623f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-399f, _wgslsmith_f_op_f32(f32(-1f) * -113f), -1330f, _wgslsmith_f_op_f32(-1028f + 318f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-230f, -291f, 475f, -549f), vec4<f32>(625f, -1880f, 1077f, -259f))), var_2.a.b))), _wgslsmith_clamp_u32(var_4.x, ~_wgslsmith_mod_u32(var_4.x, 21236u), min(reverseBits(u_input.a.x), global1.a)));
}

