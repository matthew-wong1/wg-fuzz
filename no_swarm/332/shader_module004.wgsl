struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-1399f, 120f, 1418f, -144f, -885f, -302f, -1186f, 456f, -2610f, 103f, 380f, 446f, 161f, -1002f, -1071f, -137f, -477f, -1101f, 1000f, 1000f, 533f, 805f, 623f, 1027f, 730f);

var<private> global1: array<vec4<f32>, 21>;

var<private> global2: array<u32, 9>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> i32 {
    return _wgslsmith_add_i32(u_input.b, -3513i) >> ((abs(arg_0.x) ^ (~_wgslsmith_dot_vec2_u32(vec2<u32>(59268u, u_input.c.x), vec2<u32>(4366u, 4294967295u)) ^ ~1u)) % 32u);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c) * _wgslsmith_f_op_vec2_f32(min(arg_1.c, vec2<f32>(arg_1.c.x, global0[_wgslsmith_index_u32(27300u, 25u)])))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(737f, arg_1.c.x)));
    global0 = array<f32, 25>();
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(-1342f * _wgslsmith_div_f32(400f, _wgslsmith_f_op_f32(arg_1.c.x + global0[_wgslsmith_index_u32(arg_1.a, 25u)]))) != -381f, false, false);
    var_1 = !vec3<bool>(true, u_input.c.x > abs(_wgslsmith_add_u32(arg_1.a, 34647u)), true);
    global0 = array<f32, 25>();
    return arg_1.d.wyy;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> u32 {
    global0 = array<f32, 25>();
    return ~arg_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = func_4(Struct_1(4294967295u, arg_0.b, vec2<f32>(294f, _wgslsmith_f_op_f32(trunc(194f))), vec4<bool>(all(func_3(vec4<i32>(-2147483647i, -52412i, -1i, arg_1.b), arg_0, true)), (arg_0.d.x & arg_1.d.x) && all(arg_1.d), false, true)), !(!(1054f > _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 25u)] + arg_1.c.x))), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(49723u, 0u, max(global2[_wgslsmith_index_u32(34246u, 9u)], 1u)), vec3<u32>(1u, _wgslsmith_clamp_u32(0u, u_input.c.x, arg_1.a), 26250u))));
    var var_1 = arg_0;
    var var_2 = true;
    global2 = array<u32, 9>();
    var_2 = any(vec2<bool>(arg_1.d.x, var_1.d.x));
    return reverseBits(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mult_u32(var_1.a, reverseBits(0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 9>();
    global2 = array<u32, 9>();
    let var_0 = _wgslsmith_add_i32(1i, -max(func_1(vec2<u32>(47849u, 89832u), vec4<i32>(51258i, 1i, 19224i, 13285i)), _wgslsmith_clamp_i32(-51400i, u_input.d, 17872i)) >> (1u % 32u));
    global2 = array<u32, 9>();
    var var_1 = vec3<f32>(global0[_wgslsmith_index_u32(max(u_input.c.x | (global2[_wgslsmith_index_u32(func_2(Struct_1(0u, -2147483647i, vec2<f32>(-621f, 728f), vec4<bool>(false, true, true, false)), Struct_1(18750u, 0i, vec2<f32>(global0[_wgslsmith_index_u32(1u, 25u)], -249f), vec4<bool>(true, true, false, false))), 9u)] | 1u), 18245u), 25u)], _wgslsmith_div_f32(696f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(10998u, 25u)] * 699f)), _wgslsmith_f_op_f32(min(-686f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~max(0u, 4294967295u), 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)])))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, ~u_input.c.x)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(~(global2[_wgslsmith_index_u32(u_input.c.x, 9u)] | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], 9u)])), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(select(u_input.c, vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(78911u, 9u)], 9u)]), false), vec2<u32>(16783u, 4294967295u))), 9u)]), 9u)]), 9u)];
    let var_3 = Struct_1(21761u, -5308i, vec2<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(8478u, 0u, u_input.c.x), vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], 31513u, u_input.c.x)), 25u)], 1184f), select(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, 356f > global0[_wgslsmith_index_u32(0u, 25u)], true, true), vec4<bool>(var_0 <= u_input.d, var_1.x > global0[_wgslsmith_index_u32(1u, 25u)], func_3(vec4<i32>(-43250i, var_0, u_input.a.x, u_input.d), Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], 14171i, vec2<f32>(var_1.x, 941f), vec4<bool>(true, false, false, true)), false).x, var_1.x < global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 25u)])), vec4<bool>(false, true, false, any(vec4<bool>(true, true, true, true))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(func_2(Struct_1(min(0u, 1u), u_input.d, vec2<f32>(1000f, var_3.c.x), !var_3.d), var_3), 25u)])));
}

