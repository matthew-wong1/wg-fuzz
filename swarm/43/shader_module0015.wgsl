struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, false, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: vec4<i32>) -> bool {
    global0 = array<vec3<bool>, 1>();
    var var_0 = _wgslsmith_sub_vec2_u32(~(~vec2<u32>(arg_2, 10485u)) & _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(82616u, arg_2), vec2<u32>(11986u, 13509u) & vec2<u32>(arg_0, 0u)), (vec2<u32>(53821u, arg_0) ^ vec2<u32>(arg_2, 40107u)) | vec2<u32>(arg_2, 4294967295u)), reverseBits(reverseBits(~vec2<u32>(0u, 4294967295u))));
    let var_1 = false;
    global0 = array<vec3<bool>, 1>();
    global0 = array<vec3<bool>, 1>();
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5) -> f32 {
    let var_0 = func_3(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 44821u), ~arg_1.a.d), ~_wgslsmith_add_u32(abs(u_input.a), min(10627u, 14649u))), arg_0.c, _wgslsmith_add_u32(4294967295u, u_input.a), vec4<i32>(_wgslsmith_mult_i32(11605i & arg_0.e, countOneBits(1i)) << (1u % 32u), _wgslsmith_sub_i32(5636i, select(_wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.zw), u_input.b.x, true)), -1i, _wgslsmith_div_i32(i32(-1i) * -u_input.b.x, firstLeadingBit(abs(arg_1.a.e)))));
    global0 = array<vec3<bool>, 1>();
    global0 = array<vec3<bool>, 1>();
    let var_1 = Struct_1(64782u, true | all(!select(arg_1.d, arg_1.d, arg_0.b)), arg_0.c, max(reverseBits(vec2<u32>(1u, 4294967295u)), arg_0.d), u_input.b.x);
    global0 = array<vec3<bool>, 1>();
    return arg_0.c;
}

fn func_1() -> StorageBuffer {
    let var_0 = false;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1208f, -928f, -279f, 1093f), vec4<f32>(1015f, -905f, -692f, 1000f)))) + vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(-865f))), -484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1815f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f + -248f) - 1666f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(u_input.a, false, -765f, vec2<u32>(u_input.a, u_input.a), u_input.b.x), Struct_5(Struct_1(u_input.a, true, -898f, vec2<u32>(u_input.a, 1u), u_input.b.x), vec4<f32>(524f, 965f, 834f, -1107f), Struct_2(vec2<u32>(u_input.a, u_input.a), -1i, -167f, vec2<bool>(false, true), Struct_1(4294967295u, var_0, -122f, vec2<u32>(4294967295u, u_input.a), u_input.b.x)), vec4<bool>(false, true, var_0, true)))))))));
    var var_2 = !vec2<bool>(!var_0, true);
    global0 = array<vec3<bool>, 1>();
    var var_3 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(26951u | abs(u_input.a), u_input.a), (14563u & ~u_input.a) ^ 0u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), firstLeadingBit(vec2<u32>(4294967295u, u_input.a)))), _wgslsmith_add_u32(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.a, 40955u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(40774u, 31657u, u_input.a, 4294967295u), vec4<u32>(21690u, 9855u, u_input.a, u_input.a)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a))), 1u | abs(u_input.a)), 23004u & _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 16234u, u_input.a, 42427u)) ^ firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), (vec4<u32>(u_input.a, 1u, 0u, 0u) | vec4<u32>(24777u, 38812u, 4294967295u, 4294967295u)) | vec4<u32>(0u, 1u, 0u, 47111u)));
    return StorageBuffer(vec4<u32>(countOneBits(var_3.x), 37237u, 1u, 66665u), vec2<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(exp2(1f))), 1f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 1>();
    global0 = array<vec3<bool>, 1>();
    global0 = array<vec3<bool>, 1>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))) - 1643f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1286f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(var_0));
    let x = u_input.a;
    s_output = func_1();
}

