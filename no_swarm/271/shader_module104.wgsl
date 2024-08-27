struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<f32> {
    global0 = array<vec2<bool>, 31>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2583f);
    global0 = array<vec2<bool>, 31>();
    let var_1 = global0[_wgslsmith_index_u32(1u, 31u)];
    global0 = array<vec2<bool>, 31>();
    return vec3<f32>(_wgslsmith_f_op_f32(-var_0), -1498f, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 - var_0))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2014f)), _wgslsmith_f_op_f32(394f * var_0)))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<vec2<bool>, 31>();
    let var_1 = ~1u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3()), vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 4294967295u), vec2<u32>(1u, var_1)), max(var_1, var_1)), _wgslsmith_div_u32(var_1, var_1 >> (_wgslsmith_sub_u32(var_1, 1u) % 32u)), firstLeadingBit(_wgslsmith_div_u32(abs(var_1), ~var_1))), u_input.a.x, select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(var_1, 31u)], !select(global0[_wgslsmith_index_u32(var_1 << (4677u % 32u), 31u)], select(vec2<bool>(false, false), vec2<bool>(false, false), false), true)));
    var var_3 = ~_wgslsmith_dot_vec3_u32(~max(~vec3<u32>(var_1, 1u, 4294967295u), ~vec3<u32>(4294967295u, 20602u, var_1)), vec3<u32>(var_1, 1u, min(0u, 4294967295u)) & vec3<u32>(_wgslsmith_dot_vec3_u32(var_2.b, var_2.b), var_1 >> (4294967295u % 32u), ~var_2.b.x));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0 + 447f), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(-arg_0))), var_0), var_2.b, i32(-1i) * -var_2.c, select(vec2<bool>(var_2.d.x, true), select(vec2<bool>(var_2.d.x, !var_2.d.x), !global0[_wgslsmith_index_u32(var_2.b.x, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1, var_1), 31u)]), !vec2<bool>(var_2.d.x | var_2.d.x, select(var_2.d.x, var_2.d.x, true))));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    global0 = array<vec2<bool>, 31>();
    global0 = array<vec2<bool>, 31>();
    var var_0 = func_2(-1792f);
    global0 = array<vec2<bool>, 31>();
    var var_1 = ~(-1i);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(52068u, 60268u), firstTrailingBit(vec2<u32>(1u, 4294967295u)), ~vec2<u32>(4294967295u, 10080u)), max(min(abs(vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, 64996u)), abs(vec2<u32>(41357u, 41181u)))));
    global0 = array<vec2<bool>, 31>();
    global0 = array<vec2<bool>, 31>();
    let var_1 = vec3<i32>(~_wgslsmith_dot_vec3_i32(-u_input.a, u_input.a), u_input.a.x, ~(-u_input.a.x));
    global0 = array<vec2<bool>, 31>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -603f, -2321f) - vec3<f32>(-742f, -113f, -439f))))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-179f, -528f, _wgslsmith_f_op_f32(212f + 1000f))))), vec3<u32>(0u, func_1(firstTrailingBit(~vec3<u32>(var_0, var_0, var_0))), var_0), u_input.a.x, !func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1953f) + _wgslsmith_f_op_f32(-1308f + 930f))).d);
    let var_3 = !(!select(select(vec3<bool>(true, var_2.d.x, true), vec3<bool>(false, true, var_2.d.x), true), !(!vec3<bool>(var_2.d.x, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(77342u, ~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 12568u, var_0, var_0), vec4<u32>(var_2.b.x, 0u, ~var_0, _wgslsmith_add_u32(var_0, var_2.b.x))), vec4<u32>(var_0, var_2.b.x, firstTrailingBit(_wgslsmith_add_u32(~0u, var_2.b.x)), reverseBits(~_wgslsmith_sub_u32(0u, var_2.b.x))), _wgslsmith_f_op_f32(-2101f * 1015f));
}

