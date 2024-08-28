struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: Struct_1 = Struct_1(0i);

var<private> global2: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(50430i, -462i, -30751i, 32279i), vec4<i32>(0i, 47043i, 31657i, -12599i), vec4<i32>(2147483647i, 1i, 1i, 0i), vec4<i32>(-32017i, 0i, -44354i, 0i), vec4<i32>(5285i, 2147483647i, -13745i, 0i), vec4<i32>(-27387i, 2996i, i32(-2147483648), 48640i));

var<private> global3: f32 = -1740f;

var<private> global4: array<vec4<bool>, 12>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<u32> {
    let var_0 = vec3<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(19402u, 32u)], 59497u), ~select(global0[_wgslsmith_index_u32(0u ^ global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)] ^ 10117u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12221u, 0u, 60546u, 84698u), max(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], 32u)], 32u)], global0[_wgslsmith_index_u32(0u, 32u)], 4294967295u, 9166u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34825u, 32u)], 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], 71366u))), 32u)], false), 1918u);
    var var_1 = Struct_1(~arg_0.a);
    let var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_3 = 1192f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1185f, -526f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2)));
    return ~reverseBits(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3865u, 32u)], 32u)], 0u, 0u, global0[_wgslsmith_index_u32(var_0.x, 32u)]), vec4<u32>(38496u, 25162u, 1u, global0[_wgslsmith_index_u32(4294967295u, 32u)])), firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(13343u, 32u)], var_0.x, var_0.x, var_0.x))));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = vec4<bool>(!arg_0 || false, -2147483647i >= u_input.a, false, true);
    var var_1 = firstTrailingBit(4294967295u);
    let var_2 = Struct_1(~global1.a);
    var_1 = _wgslsmith_add_u32(~1u, ~global0[_wgslsmith_index_u32(~50042u, 32u)]);
    let var_3 = ~(~func_3(Struct_1(_wgslsmith_add_i32(1i, u_input.a)), vec2<f32>(_wgslsmith_div_f32(1644f, -1292f), _wgslsmith_f_op_f32(348f + 112f))));
    return any(!global4[_wgslsmith_index_u32(~(0u & ~global0[_wgslsmith_index_u32(0u, 32u)]), 12u)]);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    var var_0 = 13481u;
    var var_1 = -1715i;
    global4 = array<vec4<bool>, 12>();
    var var_2 = select(vec3<bool>(all(vec4<bool>(true, true, true, func_2(false))), true, true), vec3<bool>(true, all(vec4<bool>(true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3.x, 32u)], 32u)] <= 59737u, false, true)), true), false);
    global1 = arg_0;
    return _wgslsmith_dot_vec3_i32(min(vec3<i32>(-global1.a | global1.a, -17421i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.a, arg_1.a), vec3<i32>(u_input.a, 0i, 2147483647i))), vec3<i32>(firstTrailingBit(arg_2.a), -arg_0.a, _wgslsmith_mod_i32(-8583i, global1.a)) >> (vec3<u32>(arg_3.x, 23034u, firstTrailingBit(arg_3.x)) % vec3<u32>(32u))), vec3<i32>(min(global1.a, 2147483647i), -3370i, min(-7993i, arg_1.a >> (62614u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~vec2<i32>(max(~1i, reverseBits(1i)), _wgslsmith_mult_i32(func_1(Struct_1(-10609i), Struct_1(2147483647i), Struct_1(-2147483647i), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(48302u, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63153u, 32u)], 32u)], 32u)])), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1417f, -153f, 397f, -1000f), vec4<f32>(-1192f, 1243f, -1000f, 835f)) - vec4<f32>(-846f, -839f, 1031f, -1299f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1617f, -1094f, -836f, 231f) - vec4<f32>(-112f, 302f, -281f, -1231f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(892f, -1099f, 1205f, 573f), vec4<f32>(-118f, 1485f, -437f, 716f)), vec4<f32>(-1580f, -1640f, 990f, 1701f), true)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(563f, -451f, -1488f, 771f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(722f, -2084f, -339f, 667f))))), all(select(select(vec4<bool>(true, true, false, false), global4[_wgslsmith_index_u32(1u, 12u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 12u)]), vec4<bool>(true, true, true, false), true)))));
}

