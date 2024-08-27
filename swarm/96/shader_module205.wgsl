struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_sub_i32(u_input.d.x, 1i);
    var_0 = _wgslsmith_add_i32(-2147483647i, u_input.a.x);
    let var_1 = -42093i;
    let var_2 = Struct_1(~vec4<u32>(max(~45025u, max(51002u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54167u, 31u)], 31u)], 31u)], 31u)], 31u)])), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(21448u, 31u)], 1u, global0[_wgslsmith_index_u32(400u, 31u)], 17993u)), ~vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(16831u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)])), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global0[_wgslsmith_index_u32(10064u, 31u)], 4294967295u), 31u)], 4294967295u), _wgslsmith_clamp_u32(9661u, global0[_wgslsmith_index_u32(~56114u, 31u)], firstLeadingBit(6387u))), any(vec4<bool>(true, true, true, 1i <= min(-2147483647i, u_input.d.x))));
    let var_3 = var_2.b;
    return select(vec2<bool>(true, true), !(!(!select(vec2<bool>(var_2.b, false), vec2<bool>(var_2.b, true), var_3))), var_2.b);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> bool {
    return (_wgslsmith_dot_vec3_i32(min(~vec3<i32>(u_input.d.x, u_input.b.x, -39505i), vec3<i32>(u_input.b.x, u_input.c, -1i)), vec3<i32>(1i, u_input.a.x, u_input.a.x) ^ ~u_input.b) | u_input.d.x) > (_wgslsmith_sub_i32(~u_input.b.x, ~(u_input.b.x & -15281i)) >> (60183u % 32u));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    let var_0 = Struct_1(arg_2.a, any(select(select(func_2(), select(vec2<bool>(true, true), vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(false, false)), func_3(arg_2.b, vec2<f32>(470f, -1420f), Struct_1(vec4<u32>(9128u, 4294967295u, arg_2.a.x, 0u), arg_2.b))), vec2<bool>(arg_2.b, !arg_2.b), arg_2.b)));
    var var_1 = !(!(!vec3<bool>(true, true, arg_3 <= -2745i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1491f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(715f, -986f))))) * _wgslsmith_f_op_f32(abs(473f)));
    let var_3 = vec3<u32>(var_0.a.x, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(57131u, 31u)], ~0u, ~(select(var_0.a.x, global0[_wgslsmith_index_u32(var_0.a.x, 31u)], var_1.x) << (26377u % 32u))), select(var_0.a.x, 1u, arg_2.b && func_2().x));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-340f))) + _wgslsmith_f_op_f32(ceil(-1140f))));
    return select(vec4<bool>(71780u >= min(countOneBits(18407u), _wgslsmith_div_u32(1u, var_3.x)), func_3(arg_2.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(771f, 1035f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-447f, 900f)), true)), Struct_1(~var_0.a, true)), arg_2.a.x > 26013u, !(true | var_1.x)), vec4<bool>(var_0.b, !arg_2.b, false, false), !(!select(select(vec4<bool>(var_1.x, arg_2.b, arg_2.b, var_0.b), vec4<bool>(false, var_0.b, var_1.x, true), arg_2.b), vec4<bool>(var_0.b, var_1.x, true, false), !vec4<bool>(arg_2.b, false, var_1.x, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_mod_vec4_u32(select(~vec4<u32>(17632u, global0[_wgslsmith_index_u32(19107u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(5010u, 31u)]), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26025u, 31u)], 31u)], 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22736u, 31u)], 31u)], 4294967295u), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 31u)], 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 74515u, global0[_wgslsmith_index_u32(0u, 31u)]))) ^ ~vec4<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 31u)], 23303u), ~global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26978u, 31u)], 31u)] ^ global0[_wgslsmith_index_u32(5117u, 31u)], 31u)], 31u)], 31u)], 31u)]));
    global0 = array<u32, 31>();
    var var_1 = ~4294967295u;
    let var_2 = select(vec4<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(true, any(vec2<bool>(false, true)), u_input.a.x == -1i)), any(vec2<bool>(any(vec2<bool>(true, false)), false)), true), func_1(vec3<i32>(_wgslsmith_div_i32(~u_input.a.x, u_input.b.x & 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.b.x), _wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, vec2<i32>(u_input.b.x, u_input.d.x))), _wgslsmith_mod_i32(2147483647i, ~(-2147483647i))), vec2<i32>(~_wgslsmith_div_i32(34699i, 2147483647i), ~(~u_input.c)), Struct_1(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], var_0.x, var_0.x, var_0.x)), reverseBits(vec4<u32>(var_0.x, 1u, 16217u, 8405u))), any(vec2<bool>(true, true))), 0i), !select(vec4<bool>(true, true, true, u_input.a.x < u_input.c), vec4<bool>(true, true, true, false), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true))));
    var_1 = 19042u;
    var_0 = countOneBits(~vec4<u32>(~var_0.x, 0u, reverseBits(30162u), max(12588u, var_0.x))) ^ (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, 5317u, var_0.x), vec4<u32>(4294967295u, var_0.x, var_0.x, 50896u)), select(vec4<u32>(25643u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 15056u, 80404u), vec4<u32>(24461u, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15842u, 31u)], 31u)], 4294967295u), vec4<bool>(var_2.x, true, false, var_2.x))), ~vec4<u32>(var_0.x, 35074u, var_0.x, global0[_wgslsmith_index_u32(9407u, 31u)])) & reverseBits(vec4<u32>(0u, var_0.x, 1u, var_0.x) & _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), vec4<u32>(37258u, 1u, var_0.x, 1u))));
    var_1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(515f + 1352f), -500f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -299f) + _wgslsmith_f_op_f32(floor(433f)))), -961f, _wgslsmith_f_op_f32(step(-1703f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-572f, 1029f, var_2.x)))))), firstLeadingBit(~firstLeadingBit(global0[_wgslsmith_index_u32(var_0.x, 31u)] & global0[_wgslsmith_index_u32(57088u, 31u)])));
}

