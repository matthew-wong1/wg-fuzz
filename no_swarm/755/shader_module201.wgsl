struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<u32, 30>;

var<private> global2: array<vec3<f32>, 22>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_3(!vec4<bool>(all(vec2<bool>(false, false)) | true, (arg_0.x == arg_0.x) || !global3.a.x, global3.a.x, !(global0[_wgslsmith_index_u32(46110u, 12u)] > -1i)), Struct_2(34811u, Struct_1(!vec2<bool>(true, global3.a.x), select(select(vec4<bool>(true, true, global3.a.x, global3.a.x), global3.b, global3.b), vec4<bool>(false, true, global3.b.x, true), true))));
    global1 = array<u32, 30>();
    var var_1 = var_0.b.b;
    let var_2 = Struct_2(19456u, var_0.b.b);
    let var_3 = arg_0.x;
    return select(global3.b, vec4<bool>(true, global3.a.x, countOneBits(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_0.b.a, 30u)], 1u)) != var_2.a, !((var_3 <= arg_0.x) & true)), true);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = false;
    let var_1 = !(!(!(!func_3(global2[_wgslsmith_index_u32(u_input.a, 22u)]))));
    let var_2 = ~1u;
    let var_3 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1182f, -910f, arg_0.x)) * global2[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40958u, 30u)], 30u)]), 22u)]))).wy, !(!(!select(vec4<bool>(var_1.x, var_0, var_1.x, true), var_1, vec4<bool>(var_0, var_1.x, true, true)))));
    var var_4 = vec2<u32>(4294967295u, 70769u);
    return var_3;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_1 {
    global1 = array<u32, 30>();
    global2 = array<vec3<f32>, 22>();
    global1 = array<u32, 30>();
    let var_0 = ~(~firstLeadingBit(0u));
    var var_1 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - arg_1.x), arg_1.x));
    return func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(max(709f, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + 666f) + -1000f), arg_1.x) + global2[_wgslsmith_index_u32(1u, 22u)]));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    var var_0 = ~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 30u)] << (1u % 32u), 0u, 43325u), vec3<u32>(~u_input.a, 1u, ~19526u)));
    var var_1 = Struct_2(var_0.x, func_1(vec3<bool>(any(func_1(vec3<bool>(false, arg_1.b.x, true), vec3<f32>(1549f, -1060f, arg_2.x)).b), any(arg_1.b), arg_1.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global2[_wgslsmith_index_u32(u_input.a, 22u)], vec3<f32>(arg_2.x, 1280f, arg_2.x))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.x, -211f, arg_2.x))))));
    let var_2 = Struct_3(vec4<bool>(global3.b.x, var_1.b.b.x, all(global3.b.wzy), false), Struct_2(~reverseBits(237u), Struct_1(arg_1.b.yx, var_1.b.b)));
    let var_3 = vec4<bool>(func_2(global2[_wgslsmith_index_u32(4294967295u, 22u)]).a.x, -626f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(746f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_2.x))))), true, false);
    var var_4 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(arg_2.x, 1149f)), arg_2.x, arg_2.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(var_0.x ^ 416u, 22u)]))));
    return ~var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~global0[_wgslsmith_index_u32(func_4(vec2<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(90447u, 30u)], 30u)], 12u)], -2147483647i) & vec2<i32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)]), func_1(global3.b.yzx, global2[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(363f, 340f) * vec2<f32>(1342f, -762f))), 12u)]), vec2<i32>(reverseBits(global0[_wgslsmith_index_u32(0u, 12u)]), 0i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-528f, -329f), _wgslsmith_f_op_f32(floor(947f)), 1f)))));
}

