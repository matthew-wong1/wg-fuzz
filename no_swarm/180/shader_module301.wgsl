struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: i32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-356f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = arg_1.d;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -836f) * -395f))), _wgslsmith_f_op_f32(func_2(abs(u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(835f, var_0.x)));
    var var_1 = u_input.c.x;
    var var_2 = 0i;
    var var_3 = arg_2;
    return any(vec3<bool>(true, true, true));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    let var_1 = !(!var_0.a.x);
    var var_2 = Struct_1(select(!select(select(var_0.a, vec2<bool>(var_1, true), var_1), vec2<bool>(false, true), all(vec4<bool>(false, var_0.a.x, var_1, true))), var_0.a, arg_0.a.x), _wgslsmith_f_op_f32(179f - var_0.b), vec3<u32>(1u, var_0.c.x | ~(~0u), 14074u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + arg_0.e.x), arg_0.b, _wgslsmith_f_op_f32(arg_0.d.x * -330f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.yzx) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-962f, arg_0.b, arg_0.b)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-269f, 1290f, var_0.d.x) * _wgslsmith_f_op_vec3_f32(-var_0.d.wyw)))));
    let var_3 = var_0.c.x & ~73965u;
    let var_4 = 6837u;
    return max(abs(~9744u), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1324f, 1327f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1131f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1091f * 803f) + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1097f * 817f), _wgslsmith_div_f32(-971f, -725f))), _wgslsmith_f_op_f32(f32(-1f) * -597f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-292f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-374f - -169f), -2024f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1083f), _wgslsmith_f_op_f32(trunc(-1335f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1106f + 166f)), _wgslsmith_f_op_f32(f32(-1f) * -1151f))), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, select(true, false, true), true), any(vec4<bool>(false, false, false, false))), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, func_1(-5880i, Struct_1(vec2<bool>(true, false), -801f, vec3<u32>(2632u, 28129u, 32689u), vec4<f32>(-923f, -479f, 1433f, -469f), vec3<f32>(345f, -1119f, -1607f)), Struct_1(vec2<bool>(true, false), 482f, u_input.b.xxz, vec4<f32>(1000f, -589f, 682f, -1498f), vec3<f32>(-320f, 920f, -335f)), 1008f), true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_clamp_u32(func_3(Struct_1(vec2<bool>(true, var_0.x > var_0.x), _wgslsmith_f_op_f32(-var_0.x), reverseBits(u_input.b.www), vec4<f32>(-107f, _wgslsmith_f_op_f32(select(-791f, var_0.x, true)), var_0.x, -1000f), _wgslsmith_f_op_vec3_f32(-var_0.yyx))), ~reverseBits(_wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.zy) & _wgslsmith_add_u32(u_input.a.x, u_input.d)), _wgslsmith_mod_u32(min(0u, 61270u), _wgslsmith_mult_u32(4294967295u, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~(firstLeadingBit(u_input.c.zz) & vec2<i32>(-8727i, 1i)), u_input.c.xx), ~min(vec4<u32>(~45128u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, u_input.b.x), vec2<u32>(var_1, 9423u)), countOneBits(1u), ~u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, var_1, var_1), vec4<u32>(26591u, 41623u, u_input.b.x, 1u)) & (u_input.b & u_input.b)), u_input.b);
}

