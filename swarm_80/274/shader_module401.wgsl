struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4>;

var<private> global1: array<bool, 15> = array<bool, 15>(false, true, false, true, true, true, false, false, true, false, false, false, false, false, true);

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<f32> {
    global0 = array<vec2<f32>, 4>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(arg_1.x - arg_2.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * arg_2.a), true)))));
    global1 = array<bool, 15>();
    let var_1 = vec2<i32>(arg_0, _wgslsmith_div_i32(-_wgslsmith_clamp_i32(7905i, reverseBits(47782i), -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(~arg_0, 0i << (u_input.b.x % 32u)), select(u_input.a.yy, vec2<i32>(u_input.a.x, arg_0) & u_input.a.yy, vec2<bool>(false, global1[_wgslsmith_index_u32(10526u, 15u)])))));
    global0 = array<vec2<f32>, 4>();
    return global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(64756u, u_input.b.x, 1u, u_input.b.x), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x)), 4u)];
}

fn func_2() -> Struct_2 {
    global0 = array<vec2<f32>, 4>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-869f * 1000f), 1295f)), _wgslsmith_f_op_f32(ceil(1084f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(~u_input.b.x, 4u)]))), _wgslsmith_f_op_vec2_f32(func_3(u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(-630f * 112f), _wgslsmith_f_op_f32(max(-963f, -636f)), 869f), Struct_1(-497f))))), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), ~min(vec4<u32>(60791u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, 1u, 47322u)) ^ vec4<u32>(u_input.b.x, ~0u, ~100156u, 17985u | u_input.b.x)));
    global2 = !vec3<bool>(38195u < abs(u_input.b.x | var_0.c), false, any(!(!vec4<bool>(global2.x, false, true, global2.x))));
    var var_1 = var_0.a;
    var var_2 = var_0.a;
    return var_0;
}

fn func_1() -> bool {
    global2 = !select(select(select(vec3<bool>(global2.x, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, global2.x, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 15u)])), !(!vec3<bool>(true, global1[_wgslsmith_index_u32(72061u, 15u)], true)), !vec3<bool>(global2.x, false, false)), select(vec3<bool>(global2.x, true, select(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global2.x)), select(vec3<bool>(global2.x, global2.x, true), !vec3<bool>(global2.x, true, true), select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 15u)], global2.x), vec3<bool>(true, global2.x, global1[_wgslsmith_index_u32(1u, 15u)]), true)), vec3<bool>(!global1[_wgslsmith_index_u32(u_input.b.x, 15u)], any(vec3<bool>(true, global2.x, false)), false)), global2.x);
    let var_0 = func_2();
    global0 = array<vec2<f32>, 4>();
    return !(!any(vec3<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(var_0.c, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)], false)), all(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 15u)], global2.x)), global1[_wgslsmith_index_u32(var_0.c, 15u)])));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> StorageBuffer {
    let var_0 = 4294967295u;
    let var_1 = arg_1;
    var var_2 = ~firstLeadingBit(u_input.b.x);
    let var_3 = func_2();
    let var_4 = func_2().a;
    return StorageBuffer(var_1, ~4294967295u, var_4.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_3.c, var_3.c, _wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_clamp_u32(var_0, 0u, 7416u))), var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<bool>(any(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(3786u, 15u)], global1[_wgslsmith_index_u32(41547u, 15u)]), vec3<bool>(global2.x, false, global1[_wgslsmith_index_u32(1u, 15u)])), vec3<bool>(global2.x, global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global2.x), false)), global2.x, true);
    global1 = array<bool, 15>();
    global1 = array<bool, 15>();
    let x = u_input.a;
    s_output = func_4(select(vec3<bool>(true, any(select(vec4<bool>(true, global2.x, false, false), vec4<bool>(false, true, global2.x, global2.x), true)), true), vec3<bool>(false, true, func_1()), select(select(!vec3<bool>(false, global2.x, global1[_wgslsmith_index_u32(80396u, 15u)]), select(vec3<bool>(false, global2.x, false), vec3<bool>(true, false, global2.x), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global2.x, true)), vec3<bool>(global2.x, false, global1[_wgslsmith_index_u32(u_input.b.x, 15u)])), select(!vec3<bool>(global2.x, true, false), select(vec3<bool>(global2.x, false, true), vec3<bool>(false, global2.x, true), global2.x), true), !(!global2.x))), u_input.a.x);
}

