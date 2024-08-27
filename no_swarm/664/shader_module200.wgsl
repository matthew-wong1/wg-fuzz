struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: array<Struct_3, 18>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> f32 {
    global0 = array<Struct_3, 18>();
    let var_0 = u_input.b.x ^ max(23908u, ~u_input.b.x);
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    return -1000f;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: u32, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 141f)) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-741f * 1f), _wgslsmith_f_op_f32(trunc(-255f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -593f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-714f + 651f), _wgslsmith_f_op_f32(163f * 1450f)))), arg_0.x)));
    let var_1 = Struct_1(~vec3<u32>(~u_input.b.x, firstTrailingBit(u_input.b.x << (arg_2 % 32u)), ~arg_2), !(!select(select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(false, true, false), vec3<bool>(false, arg_0.x, false)), arg_0.wzw, any(vec4<bool>(true, true, arg_0.x, false)))), ~arg_3.zw, arg_0.x, vec4<bool>(true, arg_0.x, false, all(vec3<bool>(any(vec3<bool>(true, true, false)), var_0 < 210f, true))));
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(11643u, (~arg_2 & (1u ^ arg_2)) << (22574u % 32u), _wgslsmith_clamp_u32(countOneBits(~4294967295u), ~0u, ~(~arg_2))), vec3<u32>(41588u, ~26476u, var_1.a.x));
    var var_3 = Struct_2(-1019f);
    global0 = array<Struct_3, 18>();
    return firstTrailingBit(select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, var_2.x), vec3<u32>(var_2.x, arg_2, 13311u)), ~arg_2, var_1.a.x, _wgslsmith_sub_u32(42343u, var_2.x)) ^ firstTrailingBit(select(vec4<u32>(arg_2, 33927u, 4294967295u, 99645u), vec4<u32>(57910u, var_1.a.x, 4294967295u, arg_2), vec4<bool>(var_1.b.x, arg_0.x, arg_0.x, true))), vec4<u32>(var_1.a.x, ~1u, 1u, ~var_1.a.x), vec4<bool>(var_1.b.x, var_1.b.x, false, (var_2.x != 1u) || true)));
}

fn func_1() -> Struct_1 {
    let var_0 = abs(vec3<u32>(~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b.x, 0u)), vec2<u32>(u_input.b.x, 30303u)), ~_wgslsmith_dot_vec4_u32(func_2(vec4<bool>(true, false, true, false), u_input.a.x, u_input.b.x, vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, u_input.a.x)), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 53389u) | vec4<u32>(44143u, 0u, u_input.b.x, u_input.b.x)), ~u_input.b.x));
    var var_1 = ~var_0;
    global1 = array<Struct_3, 18>();
    return Struct_1(~(~var_0), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, false, true)) && true), reverseBits(u_input.a.xy), false, vec4<bool>(true, true, all(vec3<bool>(true, true, true)), _wgslsmith_mult_u32(~0u, u_input.b.x >> (var_0.x % 32u)) < ~(~var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1134f)), 925f)) - _wgslsmith_f_op_f32(f32(-1f) * -515f))));
    global1 = array<Struct_3, 18>();
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(2084f - -725f), _wgslsmith_f_op_f32(floor(1000f)), var_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 2053f, var_1.a, var_1.a) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a, -859f, var_1.a, var_1.a)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, var_1.a, var_1.a, var_1.a)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1662f + 1015f) * _wgslsmith_f_op_f32(-227f + -330f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a)) * var_1.a), 816f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, var_1.a))))), var_0.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a.xy, ~(vec3<u32>(u_input.b.x, var_0.a.x, 0u) & (_wgslsmith_clamp_vec3_u32(var_0.a, vec3<u32>(17283u, u_input.b.x, 1u), var_0.a) & ~var_0.a)), vec2<u32>(func_2(var_0.e, ~0i, 0u, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 23138i, 0i, u_input.a.x) & vec4<i32>(-2273i, 4783i, -10925i, u_input.a.x), ~vec4<i32>(1i, u_input.a.x, 0i, 16907i))).x, var_0.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(47930u, 4294967295u, _wgslsmith_clamp_u32(132917u, var_0.a.x, var_0.a.x)) & select(var_0.a, vec3<u32>(0u, 61u, 4294967295u), vec3<bool>(true, var_0.e.x, var_0.e.x)), ~countOneBits(vec3<u32>(var_0.a.x, 1u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.xz) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.yz))));
}

