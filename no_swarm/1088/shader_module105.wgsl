struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: array<u32, 6> = array<u32, 6>(4294967295u, 0u, 20527u, 1u, 0u, 12875u);

var<private> global2: array<Struct_1, 3>;

var<private> global3: f32;

var<private> global4: array<f32, 9> = array<f32, 9>(501f, -396f, -841f, 713f, -436f, -1000f, 1314f, 1000f, -392f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(arg_0.x, 9u)])), 1000f, 1000f)));
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.b, 34070u, 4294967295u, global1[_wgslsmith_index_u32(16149u, 6u)])), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x << (u_input.b % 32u), 74826u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(18185u, 6u)], u_input.c, global0[_wgslsmith_index_u32(5303u, 31u)]), 6u)], 6u)], reverseBits(u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(82510u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(106242u, 6u)], 6u)], 6u)], u_input.b), vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(arg_0.x, 6u)], u_input.c, 4294967295u))))), 3u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-151f, 1370f, 168f, -353f) * vec4<f32>(1078f, arg_1, -358f, 904f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.x, var_1.a.x, 1247f, arg_1)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(arg_0.x, 9u)], -2512f, 801f, var_1.a.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, 1253f, 250f, global4[_wgslsmith_index_u32(u_input.b, 9u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2265f, 1081f, var_1.a.x, 1000f) - vec4<f32>(arg_1, var_0.x, arg_1, global4[_wgslsmith_index_u32(4294967295u, 9u)]))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1175f, global4[_wgslsmith_index_u32(0u, 9u)], -1000f), vec4<f32>(1755f, -353f, -734f, 1652f), false)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a, var_0.yx) + _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, 432f), vec2<f32>(-801f, -500f)))) + var_0.xx));
    return global4[_wgslsmith_index_u32(u_input.c, 9u)];
}

fn func_2() -> Struct_1 {
    global4 = array<f32, 9>();
    global0 = array<bool, 31>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(63077u, 9u)] * _wgslsmith_f_op_f32(func_3(vec3<u32>(global1[_wgslsmith_index_u32(12411u, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)], u_input.e.x), -188f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f) + _wgslsmith_f_op_f32(sign(192f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1243f) * _wgslsmith_f_op_f32(261f + global4[_wgslsmith_index_u32(4294967295u, 9u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(select(56462u, 10432u, global0[_wgslsmith_index_u32(0u, 31u)]), 9u)]), _wgslsmith_f_op_f32(408f + -445f))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.e.wzz, vec3<u32>(u_input.b | global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.c << (4294967295u % 32u), 6u)], 4294967295u), u_input.e.yxx), _wgslsmith_add_vec3_u32(~u_input.e.xzz, ~vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 6u)], 6u)], u_input.c))), 9u)]);
    global4 = array<f32, 9>();
    global0 = array<bool, 31>();
    return Struct_1(var_0.wx);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 9u)], var_0.a.x) + var_0.a))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(200f)), _wgslsmith_f_op_f32(-var_0.a.x))))));
    var_0 = Struct_1(vec2<f32>(-100f, 776f));
    let var_2 = Struct_1(var_1.a);
    global4 = array<f32, 9>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 9u)])), var_2.a.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x - global4[_wgslsmith_index_u32(u_input.e.x, 9u)]), _wgslsmith_f_op_f32(var_1.a.x + var_2.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(308f, 995f) + var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 9>();
    let var_0 = func_1(global0[_wgslsmith_index_u32(62912u, 31u)]);
    let var_1 = u_input.e.wxw;
    global4 = array<f32, 9>();
    let var_2 = -20328i;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a, 0i), -2147483647i);
}

