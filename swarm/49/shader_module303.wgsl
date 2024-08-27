struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
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

var<private> global1: array<bool, 21> = array<bool, 21>(false, false, true, false, false, false, true, true, false, true, false, false, false, true, true, true, true, false, false, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>) -> vec2<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), true | (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, -113f)) <= global0.a.x));
    global0 = Struct_1(_wgslsmith_div_vec2_f32(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, global0.a.x)))))), true);
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global0.a.x) + _wgslsmith_f_op_vec2_f32(-global0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)))), !(global0.b || !(!global0.b)));
    let var_1 = var_0;
    let var_2 = firstTrailingBit(u_input.c);
    return vec2<f32>(_wgslsmith_f_op_f32(-155f * -146f), -293f);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.a.x + -102f), 1f) - vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-global0.a.x))))), global0.b);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(arg_0 >= arg_0, true || var_0.b))))), all(vec3<bool>(_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(var_0.b, true))).x < -523f, !global1[_wgslsmith_index_u32(u_input.a.x, 21u)], all(!vec3<bool>(var_0.b, false, global0.b)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) - var_0.a.x) * var_0.a.x), _wgslsmith_f_op_vec2_f32(func_3(!vec2<bool>(true, var_0.b))).x);
    let var_2 = false;
    global1 = array<bool, 21>();
    return var_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> StorageBuffer {
    global0 = func_2(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(0i, u_input.c, 3981i, 39743i)) << (_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.x, 1u, 4294967295u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(32766u, arg_0.x, u_input.a.x, 0u), vec4<u32>(9712u, 44683u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(-2147483647i, u_input.b, u_input.c, u_input.b)) >> (~(~vec4<u32>(56987u, 1u, u_input.a.x, 77309u)) % vec4<u32>(32u))));
    var var_0 = 0u & arg_0.x;
    let var_1 = u_input.c;
    var var_2 = false;
    let var_3 = vec4<bool>(global0.b, global1[_wgslsmith_index_u32(u_input.a.x << (1u % 32u), 21u)], all(select(select(select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(arg_0.x, 21u)]), vec2<bool>(arg_1.b, false)), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 21u)], true), global0.b), !vec2<bool>(global0.b, arg_1.b), u_input.a.x == 0u)), true);
    return StorageBuffer(~(_wgslsmith_div_u32(arg_0.x ^ 18553u, 4330u) & arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(25403i, 1i);
    let var_1 = -189f;
    global1 = array<bool, 21>();
    let var_2 = vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]);
    var var_3 = global0.a;
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(min(vec2<u32>(21627u, ~11887u), vec2<u32>(u_input.a.x, _wgslsmith_div_u32(28162u, u_input.a.x)))), Struct_1(global0.a, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-628f, global0.a.x)));
}

