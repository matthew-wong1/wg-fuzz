struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, true, false, true, true, false, true, true, true, true, false, true, false, false, false, false, true, false, false, true, false, false, false, true, true, false, true, true, false, true, true, true);

var<private> global1: Struct_1 = Struct_1(422f);

var<private> global2: array<i32, 16> = array<i32, 16>(-5458i, 2147483647i, i32(-2147483648), -34489i, 29885i, 88610i, 0i, 0i, -17446i, -54310i, -53760i, 2147483647i, i32(-2147483648), -1i, 31187i, i32(-2147483648));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global2 = array<i32, 16>();
    global2 = array<i32, 16>();
    let var_0 = 1336f;
    return select(vec3<bool>(!(true == !global0[_wgslsmith_index_u32(u_input.b, 32u)]), true, all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(abs(u_input.a.x), 32u)], false, any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 32u)], true))))), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 32u)], all(vec3<bool>(all(vec2<bool>(false, true)), -566f >= global1.a, global0[_wgslsmith_index_u32(u_input.b, 32u)] & true))), !any(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(54288u, 32u)], false, global0[_wgslsmith_index_u32(u_input.b, 32u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(19385u, 32u)], global0[_wgslsmith_index_u32(2114u, 32u)], true))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(global1.a);
    let var_1 = 461f;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)))), global1.a));
    var var_3 = select(select(select(select(select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, true, global0[_wgslsmith_index_u32(u_input.b, 32u)]), vec3<bool>(false, true, true)), vec3<bool>(arg_0, false, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), 2147483647i <= global2[_wgslsmith_index_u32(4294967295u, 16u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], true, false), vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], arg_0)), select(vec3<bool>(false, true, true), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)], true), global0[_wgslsmith_index_u32(u_input.b, 32u)]), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, false, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 32u)], arg_0, arg_0))), false), vec3<bool>(true, false, !(arg_0 != arg_0)), !(_wgslsmith_f_op_f32(-var_2.x) != _wgslsmith_f_op_f32(-var_0.a))), func_3(Struct_1(_wgslsmith_f_op_f32(abs(417f)))), select(select(vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], true)), true, true), vec3<bool>(select(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], arg_0, global0[_wgslsmith_index_u32(3243u, 32u)]), !arg_0, all(vec3<bool>(true, arg_0, false))), func_3(Struct_1(779f)).x), select(vec3<bool>(global0[_wgslsmith_index_u32(44005u, 32u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, u_input.a.x), 32u)], any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))), select(vec3<bool>(arg_0, global0[_wgslsmith_index_u32(4294967295u, 32u)], false), func_3(Struct_1(var_0.a)), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 32u)])), vec3<bool>(true, true, true)), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), select(select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(26263u, 32u)], global0[_wgslsmith_index_u32(3958u, 32u)], arg_0), global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec3<bool>(arg_0, false, global0[_wgslsmith_index_u32(3766u, 32u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 32u)], arg_0, false)), global0[_wgslsmith_index_u32(0u, 32u)])));
    var var_4 = u_input.a.x;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-553f + var_1))));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = func_2(false);
    var var_1 = true;
    let var_2 = _wgslsmith_div_u32(~(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(12494u, 4294967295u, 1u, u_input.a.x), vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b))) | select(1u, 85299u, true)), ~u_input.a.x);
    let var_3 = abs(_wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(var_2, 4294967295u), _wgslsmith_mod_u32(~87420u, ~30969u)), firstTrailingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(var_2, u_input.b)), vec2<u32>(53536u, var_2)))));
    var var_4 = 36561u;
    return 71744u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(min(~u_input.a.x, func_1(~(-2147483647i))), ~0u) < u_input.b;
    global0 = array<bool, 32>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) + global1.a);
    global0 = array<bool, 32>();
    var var_2 = Struct_1(1157f);
    global1 = func_2(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-600f, global1.a)), ~(~countOneBits(vec4<u32>(73223u, u_input.b, u_input.b, u_input.b))) & ~vec4<u32>(63283u, u_input.a.x | u_input.a.x, u_input.b, 23019u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a.x, 50422u)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(1u, 35340u)) | u_input.a, _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(28444u, u_input.b)) & ~u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f) - var_2.a));
}

