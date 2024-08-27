struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(-14538i, 28115i, 24210i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(9347i, -1i, 15313i));

var<private> global2: array<f32, 17>;

var<private> global3: array<Struct_2, 10>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    global2 = array<f32, 17>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -739f);
    global3 = array<Struct_2, 10>();
    global0 = global3[_wgslsmith_index_u32(u_input.b, 10u)];
    let var_1 = arg_0;
    return arg_1;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_1(select(!vec3<bool>(all(vec4<bool>(arg_0, true, true, false)), all(vec4<bool>(false, arg_0, arg_0, arg_0)), 4446u < arg_3.b.x), vec3<bool>(true, true, !arg_0), all(vec4<bool>(true || arg_0, !arg_0, false, arg_0))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-206f)) - -236f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(870f * -378f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, false, arg_0), vec3<f32>(arg_2, 1095f, arg_1), vec2<bool>(true, false), vec3<f32>(arg_1, 1240f, -1376f)), 1261f, arg_3, vec2<bool>(arg_0, arg_0))))))), select(select(!(!vec2<bool>(arg_0, false)), select(vec2<bool>(true, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), true), vec2<bool>(false, false)), !(!vec2<bool>(true, arg_0))), vec2<bool>(true, arg_0), 47474i > u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(arg_2, 311f)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_2 * arg_2)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 936f, 248f)))));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(countOneBits(4294967295u), ~arg_3.c, arg_3.b.x)), arg_3.b.wyy), u_input.b);
    let var_2 = Struct_2(0u, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, var_1.x, 39282u) & ~reverseBits(arg_3.b), countOneBits(vec4<u32>(global0.a, u_input.b, u_input.b, var_1.x))), 1u);
    global2 = array<f32, 17>();
    let var_3 = abs(global0.c);
    return _wgslsmith_div_i32(-17204i, -13130i);
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = u_input.a;
    global0 = global3[_wgslsmith_index_u32(u_input.b, 10u)];
    let var_1 = -vec3<i32>(abs(u_input.a), func_3(global2[_wgslsmith_index_u32(u_input.b, 17u)] > -462f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-514f * global2[_wgslsmith_index_u32(u_input.b, 17u)])), _wgslsmith_div_f32(-1505f, global2[_wgslsmith_index_u32(~87011u, 17u)]), Struct_2(global0.a, global0.b, u_input.b)), _wgslsmith_mod_i32(u_input.a | -10469i, -arg_0.x) ^ _wgslsmith_div_i32(var_0, _wgslsmith_mod_i32(var_0, 0i)));
    let var_2 = Struct_1(select(vec3<bool>(true, !any(vec4<bool>(false, false, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, u_input.b == 14709u, true), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), vec3<bool>(true, true, true)), vec3<f32>(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(global0.c, _wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(12452u, u_input.b, 16757u, global0.b.x)))), 17u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 17u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(245f)))), vec2<bool>(((206f < global2[_wgslsmith_index_u32(u_input.b, 17u)]) && any(vec4<bool>(true, true, false, true))) & false, any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(0u, 17u)], 713f, -1256f) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1770f, global2[_wgslsmith_index_u32(u_input.b, 17u)], global2[_wgslsmith_index_u32(0u, 17u)]))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2[_wgslsmith_index_u32(71472u, 17u)], 345f, global2[_wgslsmith_index_u32(61318u, 17u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-817f, 621f, 802f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global0.c, 17u)], 1312f, global2[_wgslsmith_index_u32(22164u, 17u)]) * vec3<f32>(-1000f, 327f, -1000f)))))));
    var var_3 = -11490i;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var var_1 = _wgslsmith_mod_u32(abs(u_input.b) << (50955u % 32u), global0.b.x);
    var var_2 = Struct_1(!select(vec3<bool>(true, true, !var_0), select(vec3<bool>(var_0, true, true), !vec3<bool>(false, true, var_0), select(vec3<bool>(true, true, true), vec3<bool>(false, var_0, true), vec3<bool>(var_0, var_0, var_0))), vec3<bool>(false, var_0, var_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1439f, _wgslsmith_f_op_f32(f32(-1f) * -317f), -119f), vec3<f32>(1570f, 1878f, global2[_wgslsmith_index_u32(global0.c, 17u)]), false)) * vec3<f32>(_wgslsmith_f_op_f32(951f * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 17u)])), -1133f, global2[_wgslsmith_index_u32(~(~global0.b.x), 17u)])), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-891f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.b.x, 17u)] + -1049f), global2[_wgslsmith_index_u32(1u, 17u)]) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1122f, global2[_wgslsmith_index_u32(4023u, 17u)], -1614f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)], -763f), vec3<f32>(global2[_wgslsmith_index_u32(0u, 17u)], 1000f, global2[_wgslsmith_index_u32(global0.b.x, 17u)]))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1479f, global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)]) * vec3<f32>(-1000f, global2[_wgslsmith_index_u32(4294967295u, 17u)], 859f))) - vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 17u)]), _wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, false, var_0), vec3<f32>(global2[_wgslsmith_index_u32(35099u, 17u)], 616f, global2[_wgslsmith_index_u32(3703u, 17u)]), vec2<bool>(var_0, var_0), vec3<f32>(-779f, 246f, global2[_wgslsmith_index_u32(4368u, 17u)])), global2[_wgslsmith_index_u32(u_input.b, 17u)], Struct_2(global0.b.x, vec4<u32>(global0.c, 4294967295u, global0.b.x, global0.b.x), 110168u), vec2<bool>(true, false))), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(4294967295u, 17u)]))))));
    let var_3 = Struct_2(~_wgslsmith_sub_u32(1u, ~func_2(vec3<i32>(u_input.a, u_input.a, -2147483647i))), ~global0.b, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(global0.a, ~_wgslsmith_clamp_u32(global0.c, global0.a, 103985u))));
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(5951u, 17u)]))), -367f))));
}

