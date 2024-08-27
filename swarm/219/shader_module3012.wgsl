struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    var var_0 = arg_2;
    var var_1 = select(select(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 30u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(63468u, 30u)]), true), !(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 30u)], global0[_wgslsmith_index_u32(arg_1.x, 30u)])), true), !(!select(!vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 30u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 30u)]), false)), !(!vec2<bool>(!global0[_wgslsmith_index_u32(31186u, 30u)], !global0[_wgslsmith_index_u32(4294967295u, 30u)])));
    var var_2 = 51604u;
    var var_3 = Struct_1(reverseBits(4294967295u));
    var_1 = !select(select(select(select(vec2<bool>(var_1.x, true), vec2<bool>(true, true), true), !vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 30u)], global0[_wgslsmith_index_u32(var_3.a, 30u)]), !vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 30u)], var_1.x)), select(vec2<bool>(true, true), !vec2<bool>(false, global0[_wgslsmith_index_u32(36512u, 30u)]), true), vec2<bool>(false, true)), select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 30u)] | true), vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], false)), u_input.a.x >= -39257i), true), select(vec2<bool>(true, true), !(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(arg_2.a, 30u)])), var_1.x));
    return var_1.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: vec2<f32>) -> f32 {
    global0 = array<bool, 30>();
    let var_0 = ~u_input.a;
    global0 = array<bool, 30>();
    let var_1 = (u_input.a.x <= abs(_wgslsmith_div_i32(0i, u_input.a.x) | ~var_0.x)) && all(select(vec4<bool>(true, true == arg_1, arg_1 && false, false), !vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(func_3(vec4<u32>(arg_2, 4294967295u, arg_2, arg_2), vec3<u32>(arg_2, 48194u, arg_2), Struct_1(arg_2)), !arg_1, any(vec3<bool>(arg_1, false, false)), !arg_1)));
    var var_2 = 15359u;
    return arg_3.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-41402i, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1155u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 52448u)), 30u)], ~1u, vec2<f32>(-1836f, -203f))) * -776f));
    var var_1 = Struct_1(min(_wgslsmith_clamp_u32(31046u, _wgslsmith_div_u32(~9415u, ~1u), ~1u), ~countOneBits(47807u) << (~firstTrailingBit(123983u) % 32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-283f, -2726f) - vec2<f32>(var_0, var_0))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -121f) + vec2<f32>(978f, var_0))))))) * vec2<f32>(-363f, -909f));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-777f + var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(552f - var_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(abs(var_2.x))) * -216f)), vec4<f32>(var_0, -373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, 2120f)))), 2876f));
    var var_4 = arg_2;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(-760f, -803f), _wgslsmith_f_op_f32(f32(-1f) * -742f), 103f, 984f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-855f, -322f, 1000f, 580f) - vec4<f32>(-1350f, -139f, 667f, -305f)))));
    var var_1 = Struct_1(~func_1(u_input.a.xz | u_input.a.yz, true | global0[_wgslsmith_index_u32(68227u, 30u)], vec2<bool>(true, true)) >> (_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(0u, 4294967295u, 0u, 14276u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(60710u, 0u, 4294967295u, 33922u), vec4<u32>(1u, 1u, 1u, 1u))) % 32u));
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(abs(max(56401u, 0u | var_1.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_1.a, var_1.a), _wgslsmith_mult_u32(0u, var_1.a), var_1.a), vec3<u32>(var_1.a >> (4294967295u % 32u), ~var_1.a, var_1.a))), ~(~vec2<u32>(1u, ~var_1.a)));
    var var_3 = Struct_1(var_1.a);
    var_3 = Struct_1(~firstTrailingBit(var_3.a & firstLeadingBit(var_2.x)));
    let var_4 = !select(!select(vec3<bool>(global0[_wgslsmith_index_u32(86746u, 30u)], global0[_wgslsmith_index_u32(var_3.a, 30u)], false), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_2.x, 30u)]), true), !(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.a, 30u)], global0[_wgslsmith_index_u32(var_1.a, 30u)], global0[_wgslsmith_index_u32(1u, 30u)])), select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(95744u, 30u)], true, global0[_wgslsmith_index_u32(var_3.a, 30u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_3.a, 30u)]), false), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(var_3.a, 30u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 30u)], false)), select(select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.a, 30u)], true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_1.a, 30u)])), !vec3<bool>(false, global0[_wgslsmith_index_u32(108593u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]), true), !select(global0[_wgslsmith_index_u32(var_3.a, 30u)], false, global0[_wgslsmith_index_u32(4294967295u, 30u)])));
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -1201f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zww, 14784u, var_0.x, select(34506u, 34867u, func_3(_wgslsmith_div_vec4_u32(~vec4<u32>(24422u, var_3.a, var_2.x, 0u), vec4<u32>(var_3.a, 4294967295u, var_3.a, var_2.x)), abs(vec3<u32>(669u, 4294967295u, 7810u)), Struct_1(var_3.a))), 1i);
}

