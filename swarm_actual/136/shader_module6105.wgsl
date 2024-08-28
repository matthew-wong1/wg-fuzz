struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: array<f32, 10>;

var<private> global2: array<f32, 31> = array<f32, 31>(530f, -720f, 1000f, -1000f, 865f, 962f, 583f, 1347f, -1000f, 694f, -891f, 581f, 469f, 375f, 1717f, -672f, 1313f, -1310f, 346f, -1001f, -737f, -1686f, 259f, -1903f, 1000f, -137f, 844f, 1205f, 176f, 751f, -1567f);

var<private> global3: array<u32, 22>;

var<private> global4: array<u32, 6> = array<u32, 6>(1u, 0u, 1u, 1u, 0u, 28621u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = u_input.a;
    global0 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 22>();
    global0 = func_1(-abs((u_input.a | 0i) ^ 56614i), Struct_1(global0.a), Struct_1(u_input.a < firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.a), vec3<i32>(2147483647i, u_input.a, u_input.a)))), u_input.b.wzw);
    let var_0 = Struct_1(global0.a);
    var var_1 = Struct_1(!global0.a);
    var var_2 = Struct_1(all(vec3<bool>(var_0.a, global0.a, all(vec2<bool>(var_0.a, false)))));
    let var_3 = var_0.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-581f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.b.x, 10u)] + _wgslsmith_f_op_f32(-699f * -415f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], global1[_wgslsmith_index_u32(53053u, 10u)]) + vec2<f32>(global1[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(48127u, 31u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 6u)], 22u)], 31u)], global2[_wgslsmith_index_u32(u_input.b.x, 31u)]))))));
    global3 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-u_input.a, i32(-1i) * -36621i, u_input.a), ~min(vec4<i32>(50267i, -27005i, 2147483647i, max(u_input.a, 25948i)), ~max(vec4<i32>(12585i, 17877i, u_input.a, 2147483647i), vec4<i32>(-30672i, -1i, -1i, 28102i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.x, 526f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5637u, 22u)], 10u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 10u)] - -315f))) * global1[_wgslsmith_index_u32(89095u, 10u)])), firstTrailingBit(~vec2<u32>(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(28092u, 22u)], 12968u), ~1u)));
}

