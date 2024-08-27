struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(Struct_1(-725f, vec3<i32>(-27804i, -5683i, i32(-2147483648)), vec3<i32>(-1i, 1i, -1i)), true, vec2<u32>(51299u, 0u), -239f, Struct_1(-633f, vec3<i32>(2147483647i, -33962i, -1i), vec3<i32>(-55223i, 8784i, -8654i)));

var<private> global2: array<u32, 15> = array<u32, 15>(1u, 0u, 4294967295u, 0u, 34545u, 38744u, 1u, 53618u, 10727u, 37957u, 3455u, 27844u, 0u, 66089u, 0u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = any(!vec3<bool>(-u_input.c.x >= reverseBits(global0.a.c.x), true, true));
    return Struct_2(global1.e, any(vec2<bool>(global1.b, global0.b)), firstTrailingBit(_wgslsmith_sub_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], 40848u), global1.c)), global1.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))), Struct_1(global1.d, -global0.e.b | ~(vec3<i32>(101725i, -2147483647i, global1.e.b.x) ^ vec3<i32>(2147483647i, -17401i, u_input.b.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(global1.e.c.x, -1i)), reverseBits(~9940i), global0.e.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    let var_1 = !vec4<bool>(global1.b, global1.b, global0.b, global0.b);
    global1 = func_1(!(countOneBits(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(1u, 15u)], global0.c.x)) < global0.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(-631f, -947f, false)), global0.d, -939f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a.a, 1663f, global1.d))))))));
    global2 = array<u32, 15>();
    let var_2 = Struct_2(func_1(global1.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.e.a, global1.d, _wgslsmith_f_op_f32(538f + global1.a.a))))).e, false, ~vec2<u32>(countOneBits(_wgslsmith_add_u32(2102u, u_input.a.x)), max(global0.c.x, 23609u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) * _wgslsmith_f_op_f32(sign(329f)))))), Struct_1(global1.d, min(abs(global0.e.b), vec3<i32>(-49436i, 1i, 40360i) | u_input.b.yyx) & u_input.c, ~(~vec3<i32>(global0.e.c.x, global1.e.c.x, global0.e.b.x))));
    var var_3 = select(var_1, vec4<bool>(var_1.x, global0.b, !any(vec3<bool>(global0.b, var_2.b, false)), false), var_1);
    let var_4 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(select(-vec4<i32>(-36315i, 2147483647i, -2147483647i, global1.e.c.x), u_input.b, var_3.x), firstTrailingBit(select(u_input.b, vec4<i32>(global1.a.c.x, -24050i, 2147483647i, -1i), vec4<bool>(var_2.b, true, true, true)) | ~vec4<i32>(var_2.a.b.x, var_2.a.b.x, -21462i, -2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-798f, _wgslsmith_div_f32(var_2.a.a, 946f)))), global0.e.a, _wgslsmith_f_op_f32(sign(global0.e.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.a.a, _wgslsmith_f_op_f32(-global1.e.a))))), 3050i);
}

