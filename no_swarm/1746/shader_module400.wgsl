struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: u32 = 1u;

var<private> global2: vec4<i32> = vec4<i32>(-46921i, -1i, -1i, 36664i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<bool, 3>();
    var var_0 = true;
    global0 = array<bool, 3>();
    var var_1 = select(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(-reverseBits(global2.wz), select(global2.zx, vec2<i32>(global2.x, global2.x), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), true))), countOneBits(vec2<i32>(i32(-1i) * -85120i, global2.x))), min(global2.xz, reverseBits(~global2.yx >> (~vec2<u32>(29999u, 1u) % vec2<u32>(32u)))), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], any(!select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], false, global0[_wgslsmith_index_u32(u_input.a, 3u)], false), global0[_wgslsmith_index_u32(1u, 3u)]))));
    var_0 = global0[_wgslsmith_index_u32(u_input.a, 3u)];
    return 2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec4<i32> {
    global1 = u_input.a;
    global1 = 26707u;
    let var_0 = func_3();
    global1 = u_input.a << (select(_wgslsmith_mod_u32(44098u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 123478u), select(vec3<u32>(u_input.a, 1u, 11824u), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], true, true)))), abs(u_input.a), !(true || (arg_1 && true))) % 32u);
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_0.a << (u_input.a % 32u), select(arg_0.b, -48279i, true), -18967i, 0i), ~firstTrailingBit(vec4<i32>(var_0, 11974i, global2.x, -49978i))));
    return abs(min(abs(_wgslsmith_div_vec4_i32(~vec4<i32>(29767i, arg_0.c, var_0, 59096i), vec4<i32>(global2.x, global2.x, arg_0.c, var_1.x))), firstTrailingBit(-max(vec4<i32>(2147483647i, var_0, 0i, arg_0.c), vec4<i32>(1i, -95612i, -28866i, 2147483647i)))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1545f, -171f, -383f, 710f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-423f, -899f, -1774f, 626f) * vec4<f32>(1544f, -845f, 1029f, 674f))) - vec4<f32>(121f, _wgslsmith_f_op_f32(f32(-1f) * -751f), 940f, 595f)))));
    global2 = ~func_2(Struct_1(global2.x, _wgslsmith_mult_i32(-global2.x, -5151i), global2.x), any(vec3<bool>(true, global0[_wgslsmith_index_u32(~u_input.a, 3u)], true)));
    var var_1 = vec3<bool>(false, any(select(select(vec2<bool>(false, true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 3u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], true)), select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], true), false)), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.a), 3u)], global0[_wgslsmith_index_u32(~30504u, 3u)]), !(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false)))), all(select(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(39192u, 3u)], true, global0[_wgslsmith_index_u32(88245u, 3u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(20946u, 3u)], false, false)), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], true, global0[_wgslsmith_index_u32(u_input.a, 3u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], false), vec4<bool>(true, false, false, true)), -15296i < global2.x)) & any(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)])));
    var var_2 = -2147483647i;
    global0 = array<bool, 3>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1593f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1212f))))), _wgslsmith_f_op_f32(-var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2059f;
    global1 = u_input.a << (103352u % 32u);
    let var_1 = -1805f;
    let var_2 = 369f;
    let var_3 = _wgslsmith_f_op_f32(513f - _wgslsmith_f_op_f32(func_1()));
    var var_4 = vec3<bool>(all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(1u, 3u)])), true, global0[_wgslsmith_index_u32(u_input.a, 3u)] | all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(37290u, 3u)], true), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], true)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 676f, vec4<i32>(~(global2.x ^ _wgslsmith_dot_vec2_i32(global2.yx, global2.yx)), 8914i >> (1u % 32u), 2147483647i, func_2(Struct_1(-global2.x, abs(global2.x), _wgslsmith_mod_i32(global2.x, global2.x)), global0[_wgslsmith_index_u32(12795u, 3u)]).x));
}

