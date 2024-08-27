struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(42973u, 21737u, 0u, 1u, 4294967295u, 0u, 1u, 21432u, 66720u, 1u, 0u, 1u, 1u, 35531u, 0u, 39598u, 1u, 16634u, 1u, 13421u, 1u, 4294967295u, 60561u, 1u, 4294967295u, 4294967295u, 69836u, 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = ~(~u_input.a.wx);
    global0 = array<u32, 28>();
    let var_1 = 0u;
    global0 = array<u32, 28>();
    var var_2 = max(firstLeadingBit(u_input.a.x), countOneBits(~var_1));
    return 39293u;
}

fn func_2() -> Struct_1 {
    let var_0 = true | all(!select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), 99i == u_input.e));
    var var_1 = Struct_2(~vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a), u_input.a.x, 39574u));
    let var_2 = Struct_2(~(~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(30711u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 50950u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69752u, 28u)], 28u)])))));
    return Struct_1(-1000f, func_3() & global0[_wgslsmith_index_u32((global0[_wgslsmith_index_u32(max(u_input.d, var_1.a.x), 28u)] >> (~var_2.a.x % 32u)) | ~0u, 28u)], vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.wz, firstTrailingBit(var_2.a.zx)), vec2<u32>(88252u, _wgslsmith_mod_u32(139256u, u_input.a.x))), reverseBits(~(~var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, 0i), ~u_input.c.x), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b, u_input.e, u_input.e), 11235i)) & (u_input.c.zz << (min(u_input.a.yz, ~u_input.a.wx) % vec2<u32>(32u))));
}

fn func_1() -> Struct_1 {
    let var_0 = 1751f;
    var var_1 = !select(!(!all(vec4<bool>(true, false, true, true))), true, true && all(vec3<bool>(true, true, true)));
    var var_2 = func_2();
    let var_3 = -u_input.c;
    let var_4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-506f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -425f) + var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(708f, var_0)))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), 492f) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0)), func_2().a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1355f, -2100f)) - var_2.d)))));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: i32) -> StorageBuffer {
    let var_0 = vec4<bool>(!all(!select(vec3<bool>(arg_2, true, true), vec3<bool>(true, arg_2, true), vec3<bool>(false, arg_2, false))), false, true, func_1().e.x == firstLeadingBit(_wgslsmith_div_i32(-85427i, 1i)));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.a, 2676f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.d) * vec2<f32>(arg_0.d, 1391f)))))), min(32530u, abs(arg_1.x)), 24199i, _wgslsmith_f_op_f32(-arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    let x = u_input.a;
    s_output = func_4(func_1(), abs(u_input.a.xz), false, u_input.e);
}

