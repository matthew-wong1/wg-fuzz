struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<bool, 9> = array<bool, 9>(true, false, false, false, false, true, false, false, true);

var<private> global2: f32 = 396f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec2<i32> {
    let var_0 = vec2<bool>((u_input.e & 0i) == _wgslsmith_mod_i32(-(~u_input.e), u_input.e), true);
    var var_1 = !(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], 22467u != u_input.c.x, true)));
    var var_2 = ~4294967295u;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1372f, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)]) - vec4<f32>(458f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], 174f)) * vec4<f32>(1404f, 2161f, 1000f, global0[_wgslsmith_index_u32(35216u, 16u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 1124f, -797f, -632f) * vec4<f32>(-462f, -482f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(0u, 16u)])))))), vec4<i32>(_wgslsmith_sub_i32(~u_input.e >> (u_input.c.x % 32u), 2147483647i), 1i, ~(-u_input.d.x), u_input.d.x), 0u);
    var_2 = ~0u;
    return var_3.b.wx;
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = 1i;
    let var_1 = vec3<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, u_input.c.x), 16u)] > -1272f, !(!global1[_wgslsmith_index_u32(~firstLeadingBit(0u), 9u)]), any(vec3<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 9u)], true)), true, global1[_wgslsmith_index_u32(arg_2, 9u)])));
    var var_2 = vec2<bool>(true, !global1[_wgslsmith_index_u32(u_input.c.x, 9u)]);
    global0 = array<f32, 16>();
    let var_3 = 0u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(453f))))))) * _wgslsmith_f_op_f32(504f * _wgslsmith_f_op_f32(f32(-1f) * -1232f)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = select(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.d.yz, func_2()), -11534i, ~1i), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d.zyy, -u_input.a.yzw) | -(~vec3<i32>(-9787i, -1i, -2147483647i)), abs(u_input.d.zyw)), (u_input.c.x != _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, u_input.c.x, 53652u, arg_0), firstTrailingBit(vec4<u32>(u_input.c.x, 4294967295u, 1u, 54024u)))) && global1[_wgslsmith_index_u32(u_input.c.x, 9u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(1u, 16u)], -290f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1551f, 155f) + vec2<f32>(-635f, global0[_wgslsmith_index_u32(1u, 16u)])))), vec2<f32>(_wgslsmith_f_op_f32(func_3(-u_input.a.zx, var_0.x, arg_0)), _wgslsmith_f_op_f32(-1f)))), select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 16u)] > global0[_wgslsmith_index_u32(u_input.c.x, 16u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(25278u, 9u)], all(vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 9u)], global1[_wgslsmith_index_u32(u_input.c.x, 9u)])), global1[_wgslsmith_index_u32(~arg_0, 9u)]), vec3<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, 0u), 9u)], true, global1[_wgslsmith_index_u32(arg_0, 9u)])), select(vec3<bool>(global1[_wgslsmith_index_u32(~39666u & min(u_input.c.x, 62322u), 9u)], global1[_wgslsmith_index_u32(u_input.c.x, 9u)], true), vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 9u)], all(!vec2<bool>(global1[_wgslsmith_index_u32(80011u, 9u)], global1[_wgslsmith_index_u32(21131u, 9u)])), -u_input.d.x < _wgslsmith_mult_i32(1i, -15165i)), select(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(32140u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], false, false), !(global1[_wgslsmith_index_u32(78059u, 9u)] & true))), -34279i, max(u_input.c, ~_wgslsmith_mult_vec3_u32(vec3<u32>(27117u, u_input.c.x, arg_0), u_input.c)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(var_1.a)), !vec3<bool>(max(u_input.c.x, var_1.e.x) == abs(4294967295u), all(!vec4<bool>(true, var_1.b.x, false, false)), !(4294967295u < arg_0)), vec3<bool>(false, true, global1[_wgslsmith_index_u32(reverseBits(firstLeadingBit(u_input.c.x) ^ u_input.c.x), 9u)]), _wgslsmith_dot_vec4_i32(~u_input.d, -u_input.d ^ (vec4<i32>(-30236i, -2147483647i, var_0.x, var_1.d) ^ -vec4<i32>(2147483647i, var_0.x, 65409i, -9532i))), ~vec3<u32>(1u, max(u_input.c.x, arg_0 ^ 15051u), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 16>();
    let var_0 = func_1(u_input.c.x);
    global1 = array<bool, 9>();
    var var_1 = vec4<i32>(u_input.d.x, -(~_wgslsmith_mult_i32(-1i, 0i) | ~(-u_input.e)), i32(-1i) * -2147483647i, (u_input.e | -1i) >> (~u_input.c.x % 32u));
    global1 = array<bool, 9>();
    global1 = array<bool, 9>();
    let var_2 = _wgslsmith_dot_vec4_i32(u_input.d, abs(vec4<i32>(countOneBits(-2147483647i), countOneBits(max(var_0.d, u_input.e)), _wgslsmith_mod_i32(~12382i, var_1.x), var_0.d)));
    let var_3 = ~select(abs(var_0.e.x) << (0u % 32u), 4294967295u, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(min(var_3, u_input.c.x) >> (47353u % 32u)), 16u)] + var_0.a.x));
}

