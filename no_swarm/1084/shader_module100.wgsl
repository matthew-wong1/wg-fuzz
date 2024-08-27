struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = false;

var<private> global2: array<i32, 10> = array<i32, 10>(243i, 27073i, i32(-2147483648), -31563i, -1i, -31048i, -6165i, 0i, -63953i, 0i);

var<private> global3: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-681f, 145f, -1393f, -303f), vec4<f32>(-278f, -663f, -1068f, -1000f), vec4<f32>(1513f, 446f, 297f, -1024f), vec4<f32>(-342f, 1000f, -1000f, -364f), vec4<f32>(1247f, -811f, -742f, -960f), vec4<f32>(1846f, 598f, 1024f, -640f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -vec4<i32>(1i, 1i, global2[_wgslsmith_index_u32(arg_0.a, 10u)], u_input.a);
    let var_1 = true;
    global2 = array<i32, 10>();
    let var_2 = !(!any(!vec4<bool>(var_1, true, var_1, var_1)));
    global1 = _wgslsmith_mod_u32(arg_0.a >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(34515u, arg_0.a), vec2<u32>(31158u, 35529u)), vec2<u32>(global0.a, global0.a) | vec2<u32>(arg_0.a, 0u)) % 32u), global0.a) >= (abs(max(arg_0.a, global0.a)) >> (~firstTrailingBit(_wgslsmith_mult_u32(global0.a, global0.a)) % 32u));
    return Struct_1(0u);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec4<u32>) -> bool {
    let var_0 = Struct_2(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(703f * _wgslsmith_div_f32(arg_1, 604f)), global0.b.x, true)), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1341f + _wgslsmith_f_op_f32(global0.b.x - global0.b.x)) + -1332f), arg_1));
    var var_1 = u_input.a;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1705f))), _wgslsmith_f_op_f32(-841f + global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(569f + -821f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1)))) - _wgslsmith_f_op_f32(-global0.b.x)));
    var var_3 = u_input.a;
    let var_4 = arg_3.x;
    return true;
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = !arg_0;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x * -956f), -1099f);
    var_0 = !any(vec4<bool>(true, all(vec2<bool>(arg_0, arg_0)), global0.a != ~17641u, !arg_0));
    var var_2 = 77967u;
    let var_3 = false;
    return arg_0 && true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(global0.a));
    var var_1 = !select(!(_wgslsmith_f_op_f32(floor(641f)) <= global0.b.x), all(vec2<bool>(true, true)), !(any(vec4<bool>(false, true, true, true)) || true));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), global0.b.x, -727f, _wgslsmith_f_op_f32(sign(-1144f))) - _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(~global0.a, 6u)])) + _wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1451f, -1776f, 806f, global0.b.x))))));
    let var_3 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~39275u), 0u), 10u)], -vec4<i32>(-u_input.a & (global2[_wgslsmith_index_u32(global0.a, 10u)] & u_input.a), global2[_wgslsmith_index_u32(global0.a, 10u)], -1i, -2147483647i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-423f * _wgslsmith_f_op_f32(1471f * var_2.x)))), _wgslsmith_div_vec4_u32(vec4<u32>(global0.a ^ ~global0.a, ~global0.a, global0.a, var_0.a), ~vec4<u32>(4294967295u, global0.a, _wgslsmith_mod_u32(0u, var_0.a), global0.a)));
    var_1 = !(true | all(vec3<bool>(any(vec3<bool>(true, false, false)), true, func_2(var_0, -580f, 58577u, vec4<u32>(50188u, var_3.d.x, global0.a, var_3.d.x)))));
    let var_4 = true && !all(vec3<bool>(true, func_3(false), true));
    let var_5 = 1908f;
    global3 = array<vec4<f32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a, vec2<u32>(~(0u >> (var_3.d.x % 32u)), var_3.d.x) ^ vec2<u32>(108097u, ~26561u), ~(~firstTrailingBit(vec2<u32>(var_3.d.x, var_0.a)) | reverseBits(countOneBits(var_3.d.yy))));
}

