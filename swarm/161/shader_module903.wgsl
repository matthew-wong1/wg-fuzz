struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 13>;

var<private> global2: array<u32, 11> = array<u32, 11>(20178u, 47239u, 4294967295u, 11113u, 4294967295u, 4294967295u, 68856u, 1u, 4294967295u, 71885u, 1u);

var<private> global3: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global4: array<bool, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = Struct_2(-241f);
    var var_1 = global4[_wgslsmith_index_u32(1u, 24u)];
    global4 = array<bool, 24>();
    global1 = array<vec3<bool>, 13>();
    let var_2 = Struct_1(global0.a, ~(u_input.a.x ^ 55830u), -global0.c);
    return vec3<u32>(var_2.a.x, 13624u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, reverseBits(4294967295u & u_input.a.x)), 1u));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(func_3(Struct_2(-113f), Struct_2(_wgslsmith_f_op_f32(round(-1070f)))), 4294967295u, -1i);
    global1 = array<vec3<bool>, 13>();
    let var_1 = global3[_wgslsmith_index_u32(max(~global2[_wgslsmith_index_u32(1u, 11u)], global0.b), 13u)];
    var var_2 = -vec3<i32>(~countOneBits(select(1i, var_0.c, global4[_wgslsmith_index_u32(42227u, 24u)])), countOneBits(~(global0.c & -3029i)), firstLeadingBit(global0.c));
    let var_3 = arg_0;
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = func_2(arg_2, min(_wgslsmith_sub_i32(~arg_3.c << (min(4294967295u, u_input.a.x) % 32u), _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(1i, global0.c))), ~arg_2.c));
    global4 = array<bool, 24>();
    global3 = array<vec2<bool>, 13>();
    var var_1 = arg_2;
    let var_2 = var_0.b;
    return Struct_2(_wgslsmith_f_op_f32(-171f + -766f));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: u32) -> f32 {
    global1 = array<vec3<bool>, 13>();
    global3 = array<vec2<bool>, 13>();
    var var_0 = func_4(i32(-1i) * -max(~global0.c, ~2147483647i), true, func_2(Struct_1(min(global0.a, ~global0.a), min(71172u, ~32157u), -min(-9044i, 0i)), i32(-1i) * -2147483647i), func_2(Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(reverseBits(4294967295u), 11u)], ~arg_0.x, ~u_input.a.x), _wgslsmith_dot_vec4_u32(min(u_input.a, vec4<u32>(arg_0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.x, 11u)], 11u)], global2[_wgslsmith_index_u32(1u, 11u)], 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, arg_0.x, arg_0.x), arg_0)), arg_1.x), -2147483647i));
    global4 = array<bool, 24>();
    var var_1 = _wgslsmith_f_op_f32(abs(1141f));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1778f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -436f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(-1126f, 834f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(445f, _wgslsmith_div_f32(896f, 124f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, 1u, global0.a.x, u_input.a.x), u_input.a), -vec4<i32>(u_input.b.x, u_input.b.x, 54243i, 25268i), ~u_input.a.x)), 482f)) - _wgslsmith_f_op_f32(f32(-1f) * -1671f)));
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 1u, global2[_wgslsmith_index_u32(1u, 11u)]), vec4<u32>(global2[_wgslsmith_index_u32(global0.a.x, 11u)], u_input.a.x, 24778u, 4294967295u))), ~global2[_wgslsmith_index_u32(~0u, 11u)], max(~(~1u), u_input.a.x)), ~abs(1u) << (_wgslsmith_clamp_u32(8918u >> (_wgslsmith_mult_u32(global0.b, u_input.a.x) % 32u), ~23640u, (u_input.a.x | 1u) | min(21014u, global0.a.x)) % 32u), 1i);
    global4 = array<bool, 24>();
    let var_3 = ~_wgslsmith_clamp_u32(reverseBits(global2[_wgslsmith_index_u32(4294967295u, 11u)]), func_3(Struct_2(var_1.x), func_4(global0.c, global4[_wgslsmith_index_u32(var_2.b, 24u)], Struct_1(var_2.a, 12995u, global0.c), var_2)).x << (u_input.a.x % 32u), abs(countOneBits(9549u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(36701u, ~(_wgslsmith_add_u32(2408u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]) << (_wgslsmith_clamp_u32(global0.a.x, 1u, 71110u) % 32u))));
}

