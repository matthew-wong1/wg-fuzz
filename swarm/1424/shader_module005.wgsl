struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(2147483647i, 29070i, 21181i, -13590i), vec4<i32>(-49811i, -1i, 2147483647i, -8757i), vec4<i32>(0i, 22846i, 49659i, -74483i));

var<private> global1: array<i32, 21> = array<i32, 21>(0i, 40993i, 2147483647i, 32608i, i32(-2147483648), 2147483647i, -5143i, -84242i, 1i, 0i, i32(-2147483648), 49009i, 2147483647i, 85294i, -30172i, 1i, 2147483647i, -38079i, -9328i, 1i, i32(-2147483648));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<vec4<i32>, 3>();
    global1 = array<i32, 21>();
    let var_0 = -global1[_wgslsmith_index_u32(~32554u, 21u)];
    let var_1 = Struct_1(~1i >= (7933i & var_0), -2147483647i);
    let var_2 = var_1;
    return var_1;
}

fn func_3() -> bool {
    global1 = array<i32, 21>();
    var var_0 = u_input.a;
    var var_1 = Struct_1((i32(-1i) * -1i) <= -select(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.a, 21u)], -15911i), -1i, global1[_wgslsmith_index_u32(29154u, 21u)] == global1[_wgslsmith_index_u32(1u, 21u)]), global1[_wgslsmith_index_u32(~(~1u), 21u)]);
    var var_2 = Struct_1(true, 19684i);
    let var_3 = max(firstTrailingBit(min(global0[_wgslsmith_index_u32(u_input.a, 3u)], -abs(global0[_wgslsmith_index_u32(u_input.b, 3u)]))), -reverseBits(_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)])));
    return all(!select(select(vec3<bool>(var_2.a, true, false), vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(true, var_1.a, var_2.a)), vec3<bool>(true, true, true), true)) && (false != (!all(vec4<bool>(false, var_1.a, var_2.a, true)) || (abs(2147483647i) != var_3.x)));
}

fn func_1() -> i32 {
    let var_0 = firstLeadingBit(~abs(abs(~vec3<u32>(u_input.a, u_input.b, 4294967295u))));
    let var_1 = 183f;
    let var_2 = func_2(1u);
    var var_3 = vec3<bool>(select(!var_2.a, var_2.a & true, 3045f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -200f))), true, func_3());
    let var_4 = func_2(~var_0.x);
    return global1[_wgslsmith_index_u32(firstTrailingBit(12057u), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, func_1());
    var_0 = Struct_1(!((var_0.b == global1[_wgslsmith_index_u32(u_input.b, 21u)]) & true) != (all(!vec2<bool>(var_0.a, true)) || false), _wgslsmith_div_i32(firstLeadingBit(1i), -var_0.b) & var_0.b);
    global1 = array<i32, 21>();
    var var_1 = -(func_2(u_input.a).b & -reverseBits(_wgslsmith_add_i32(var_0.b, var_0.b)));
    var var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(~(-(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)]) ^ vec2<i32>(var_0.b, -8773i))), _wgslsmith_add_vec2_i32(vec2<i32>(-global1[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(u_input.a, 3u)], vec4<i32>(var_0.b, -3278i, global1[_wgslsmith_index_u32(4294967295u, 21u)], 0i))), vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(66269u, u_input.a), 21u)], select(2147483647i, var_0.b, true)))), abs(vec2<i32>(-(~57483i), firstTrailingBit(~2147483647i))));
    let var_3 = Struct_1(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !vec3<bool>(var_0.a, true, false))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(reverseBits(u_input.a), _wgslsmith_mod_u32(8939u, u_input.a)), firstLeadingBit(vec2<u32>(u_input.a, u_input.a) & firstLeadingBit(vec2<u32>(u_input.b, u_input.b)))), 21u)]);
    let var_4 = Struct_1(true, var_0.b);
    var_2 = -_wgslsmith_mod_vec2_i32(select(reverseBits(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 21u)], 4838i)), -vec2<i32>(12231i, var_4.b) | countOneBits(vec2<i32>(var_3.b, var_3.b)), all(!vec3<bool>(true, var_4.a, false))), firstLeadingBit(vec2<i32>(-1i, var_4.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(568f, -883f, -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-353f - 2386f))), _wgslsmith_f_op_f32(min(495f, 642f)), _wgslsmith_div_f32(-686f, _wgslsmith_f_op_f32(f32(-1f) * -178f))))), -1223f, -10515i);
}

