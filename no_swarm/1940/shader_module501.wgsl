struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(0u, vec4<u32>(41095u, 18448u, 22993u, 1u), vec3<f32>(1043f, 1312f, -668f), -14299i), Struct_1(1u, vec4<u32>(30113u, 1u, 55310u, 4294967295u), vec3<f32>(2060f, 1588f, -893f), 0i));

var<private> global2: array<bool, 2>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    return any(select(vec3<bool>(false, global2[_wgslsmith_index_u32(23316u, 2u)] | all(vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(57990u, 2u)])), any(select(vec4<bool>(false, global2[_wgslsmith_index_u32(global0.b.x, 2u)], global2[_wgslsmith_index_u32(151550u, 2u)], false), vec4<bool>(global2[_wgslsmith_index_u32(31927u, 2u)], global2[_wgslsmith_index_u32(global0.a, 2u)], global2[_wgslsmith_index_u32(global0.b.x, 2u)], false), false))), !(!(!vec3<bool>(global2[_wgslsmith_index_u32(global0.a, 2u)], false, global2[_wgslsmith_index_u32(11687u, 2u)]))), select(vec3<bool>(any(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(global0.a, 2u)], true)), global2[_wgslsmith_index_u32(1u, 2u)], true), select(!vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(global0.a, 2u)]), vec3<bool>(true, true, true), global0.d > -22836i), vec3<bool>(u_input.a < 66485i, arg_0.x < global0.c.x, all(vec4<bool>(true, true, false, true))))));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_mod_u32(54745u, 3106u);
    var var_1 = _wgslsmith_div_f32(1305f, -1552f);
    var var_2 = _wgslsmith_sub_u32(~10067u, 1u);
    var_1 = global0.c.x;
    global2 = array<bool, 2>();
    return var_0 ^ 1u;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> vec4<i32> {
    global2 = array<bool, 2>();
    global1 = array<Struct_1, 2>();
    let var_0 = global1[_wgslsmith_index_u32(min(0u, ~arg_0 & (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_2.b.x, arg_0, 1u), arg_2.a) >> (~0u % 32u))), 2u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.c.xz, vec2<f32>(_wgslsmith_f_op_f32(step(arg_2.c.x, 1000f)), _wgslsmith_f_op_f32(sign(-1469f))), 998f == _wgslsmith_div_f32(arg_2.c.x, global0.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c.x, arg_2.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-716f, var_0.c.x) * vec2<f32>(-3083f, 505f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.c.yz)))))));
    var var_2 = abs(firstTrailingBit(select(vec4<u32>(arg_0 | 24741u, _wgslsmith_dot_vec3_u32(arg_2.b.zyy, vec3<u32>(var_0.b.x, 34515u, 1u)), ~42038u, arg_0), select(vec4<u32>(1u, 0u, 0u, 0u), ~vec4<u32>(global0.a, 18430u, arg_0, var_0.b.x), arg_1 != -2147483647i), select(!vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], true), select(vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(arg_2.a, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)], true), vec4<bool>(global2[_wgslsmith_index_u32(3320u, 2u)], true, global2[_wgslsmith_index_u32(global0.b.x, 2u)], global2[_wgslsmith_index_u32(0u, 2u)])), true))));
    return -(~(~(vec4<i32>(arg_1, -2147483647i, u_input.a, -57560i) >> (~var_0.b % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 2>();
    let var_0 = _wgslsmith_sub_vec4_u32(~abs(abs(global0.b)), ~vec4<u32>(_wgslsmith_div_u32(global0.b.x, ~global0.b.x), _wgslsmith_mult_u32(global0.a, min(1u, 59326u)), global0.b.x, ~21038u));
    let var_1 = ~(-27665i);
    var var_2 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)), global0.c.x, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-186f, global0.c.x, global0.c.x, global0.c.x))))));
    let var_3 = func_3(_wgslsmith_div_u32(func_2(vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 2u)], global2[_wgslsmith_index_u32(21644u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)])) ^ (~20197u | (56093u | var_0.x)), _wgslsmith_mult_u32(~4294967295u, 109310u << (_wgslsmith_div_u32(25801u, var_0.x) % 32u))), -2147483647i, global1[_wgslsmith_index_u32(9779u, 2u)]);
    var var_4 = var_0.x;
    var var_5 = Struct_1(~(~abs(func_2(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(global0.b.x, 2u)], global2[_wgslsmith_index_u32(global0.a, 2u)])))), ~vec4<u32>(var_0.x, var_0.x, func_2(!vec4<bool>(global2[_wgslsmith_index_u32(global0.b.x, 2u)], false, global2[_wgslsmith_index_u32(global0.b.x, 2u)], global2[_wgslsmith_index_u32(var_0.x, 2u)])), _wgslsmith_sub_u32(global0.b.x, 4294967295u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1036f, global0.c.x, global0.c.x)))))), i32(-1i) * -(~(u_input.a >> (23452u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global0.c.zy);
}

