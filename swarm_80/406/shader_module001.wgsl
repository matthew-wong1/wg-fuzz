struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    return -1i;
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    var var_0 = vec2<f32>(-696f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -713f)))));
    let var_1 = vec4<i32>(-2147483647i, ~func_3(), abs(u_input.a), 40031i);
    global1 = !(!vec4<bool>(global1.x, false, any(select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false))), true));
    global1 = vec4<bool>(!(true | (true == global1.x)), true, true, true);
    let var_2 = select(!select(vec3<bool>(true, true, select(global1.x, false, global1.x)), global1.zyy, true), vec3<bool>(!global1.x, false, global1.x), vec3<bool>(true, !global1.x, global1.x));
    return arg_0.x;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_sub_i32(u_input.a, -abs(u_input.a));
    global0 = array<u32, 10>();
    let var_1 = u_input.d.yy;
    let var_2 = 1172f;
    var var_3 = vec4<bool>(global1.x, global1.x, false, global1.x);
    return vec4<bool>(true, var_3.x & (-firstLeadingBit(u_input.c) <= func_2(u_input.b)), true, any(vec4<bool>(true, !var_3.x, all(vec4<bool>(true, true, var_3.x, var_3.x)), u_input.b.x >= max(-5332i, 16725i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 10>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1083f, _wgslsmith_f_op_f32(floor(-233f)), _wgslsmith_f_op_f32(trunc(917f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1423f, -2250f, -242f), vec3<f32>(174f, -1223f, -515f)))))), firstTrailingBit(~firstLeadingBit(reverseBits(vec4<u32>(12647u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 4294967295u, u_input.d.x)))), !(!all(func_1(u_input.d.x))), vec2<bool>(true, true), 4294967295u);
    global0 = array<u32, 10>();
    let var_1 = var_0.b.x;
    var var_2 = Struct_1(var_0.a, vec4<u32>(22698u >> (_wgslsmith_add_u32(_wgslsmith_add_u32(14542u, var_1), _wgslsmith_add_u32(u_input.d.x, global0[_wgslsmith_index_u32(1u, 10u)])) % 32u), ~_wgslsmith_sub_u32(47606u, 1u), u_input.d.x, _wgslsmith_div_u32(4294967295u | ~u_input.d.x, abs(_wgslsmith_mult_u32(u_input.d.x, 1u)))), u_input.c >= u_input.b.x, !var_0.d, reverseBits(0u >> (abs(~4294967295u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b, vec4<i32>(-u_input.b.x, u_input.b.x << (_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(4294967295u, var_1, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], var_1)) % 32u), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), u_input.b.yz)), func_1(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.d.x | 1u, 10u)], ~10648u))));
}

