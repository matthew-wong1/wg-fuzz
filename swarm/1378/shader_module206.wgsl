struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(-399f, 209f, 138f, -1525f, 113f, -1030f, -252f, 1337f, 880f, 337f, -263f, -2695f, -394f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2.b;
    let var_1 = arg_0.c.x;
    global0 = array<f32, 13>();
    let var_2 = true;
    global0 = array<f32, 13>();
    return min(max(reverseBits(arg_0.a.x), ~arg_0.a.x ^ 55884u), _wgslsmith_mod_u32(_wgslsmith_add_u32(~(~11392u), arg_0.a.x), arg_2.a.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<f32, 13>();
    var var_0 = ~_wgslsmith_sub_u32(1u, 0u ^ arg_0.a.x);
    var var_1 = -1i;
    var_0 = arg_2.a.x;
    global0 = array<f32, 13>();
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~(~arg_0.a), arg_2.a ^ ~arg_2.a), abs(~(~(vec3<u32>(25348u, arg_2.a.x, arg_0.a.x) << (vec3<u32>(arg_2.a.x, 4294967295u, arg_0.a.x) % vec3<u32>(32u))))), vec3<u32>(arg_2.a.x, 14646u, arg_2.a.x));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = vec2<bool>(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, arg_3.d, _wgslsmith_clamp_i32(arg_3.c.x, arg_3.c.x, 23429i)), -min(vec4<i32>(arg_3.d, arg_3.c.x, u_input.a, -1i), vec4<i32>(u_input.a, arg_3.d, u_input.a, arg_3.d))) == -6348i);
    var var_1 = arg_3;
    var var_2 = firstLeadingBit(abs(~arg_2.x));
    var_2 = func_1(arg_3, arg_3.b, arg_3);
    var_2 = arg_2.x;
    return -2147483647i | -(abs(var_1.d) << (arg_2.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -936f)));
    var var_1 = _wgslsmith_mod_i32(abs(0i), func_3(false, _wgslsmith_div_i32(u_input.a, -u_input.a) >= _wgslsmith_sub_i32(-1i, firstLeadingBit(2147483647i)), firstLeadingBit(vec3<u32>(~1u, func_1(Struct_1(vec3<u32>(0u, 15075u, 1u), global0[_wgslsmith_index_u32(7525u, 13u)], vec2<i32>(u_input.a, 2147483647i), u_input.a), -258f, Struct_1(vec3<u32>(0u, 36439u, 61392u), var_0, vec2<i32>(-1i, -1617i), -26869i)), ~20664u)), Struct_1(select(func_2(Struct_1(vec3<u32>(32470u, 34726u, 1u), 355f, vec2<i32>(u_input.a, 44173i), u_input.a), vec4<bool>(true, true, false, true), Struct_1(vec3<u32>(4294967295u, 4294967295u, 15986u), var_0, vec2<i32>(u_input.a, -14155i), u_input.a)), ~vec3<u32>(0u, 1u, 0u), true), 1338f, vec2<i32>(~(-11267i), u_input.a), _wgslsmith_sub_i32(-9879i, u_input.a))));
    let var_2 = u_input.a;
    var var_3 = 962f;
    var var_4 = true & (global0[_wgslsmith_index_u32(0u, 13u)] < 725f);
    var var_5 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, 1782f), vec2<f32>(global0[_wgslsmith_index_u32(~(~4294967295u), 13u)], -225f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 13u)], var_0) + vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-132f, global0[_wgslsmith_index_u32(22389u, 13u)])))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, 953f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-233f, -380f), vec2<f32>(var_0, var_0)))))), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), !select(true, false, true)), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)))));
    var_1 = _wgslsmith_div_i32(u_input.a, ~u_input.a | u_input.a);
    var var_6 = Struct_1(vec3<u32>(firstTrailingBit(0u) | 1u, abs(~20587u), firstTrailingBit(32111u) ^ ~4431u) ^ vec3<u32>(0u, ~47917u, 19273u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(442f * 1617f))))), ~(~vec2<i32>(u_input.a, 22769i)), 1i);
    let var_7 = Struct_1(countOneBits(select(vec3<u32>(var_6.a.x, 0u, 4294967295u) >> (var_6.a % vec3<u32>(32u)), var_6.a, vec3<bool>(true, any(vec2<bool>(true, false)), true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_6.b)), 987f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.b)))), ~var_6.c, _wgslsmith_sub_i32(reverseBits(var_2), -2945i) << (~_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(2426u, var_6.a.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(44193u, 13u)], 674f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_7.b, 1986f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1469f), var_6.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(463f, var_6.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-314f, var_7.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-960f, var_6.b))))), var_6.a.x <= ~57141u)), _wgslsmith_div_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(var_7.a, vec3<u32>(2612u, var_6.a.x, var_6.a.x), ~var_6.a)), var_6.a));
}

