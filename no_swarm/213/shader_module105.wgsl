struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, false, false, true, true, true, false, false, true, true, true, false, true, false, true, false, false, true, true, false);

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 10863i, -9630i, 0i);

var<private> global2: array<u32, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    global2 = array<u32, 32>();
    var var_0 = -global1.x;
    var var_1 = vec3<u32>(_wgslsmith_div_u32(abs(4294967295u), 4294967295u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 32u)], 32u)], 1u << (_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c.x, 1u), global2[_wgslsmith_index_u32(min(89334u, max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7444u, 32u)], 32u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)], 32u)])), 32u)]) % 32u));
    var var_2 = Struct_1(9181u);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-249f + arg_0) - _wgslsmith_f_op_f32(step(arg_0, arg_0))) + _wgslsmith_f_op_f32(trunc(1f))))));
    return Struct_1(713u);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_2 {
    global0 = array<bool, 20>();
    let var_0 = func_2(410f, _wgslsmith_dot_vec4_u32(~abs(u_input.c), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)], 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)], 0u, global2[_wgslsmith_index_u32(12891u, 32u)]), vec4<u32>(1u, 39067u, 58427u, u_input.a)), u_input.c), ~(~vec4<u32>(0u, 29097u, 4294967295u, 90110u)))), vec3<bool>(any(vec2<bool>(true, true)), arg_1, arg_1));
    global1 = vec4<i32>(~u_input.b.x & _wgslsmith_mod_i32(-1i, global1.x), u_input.b.x, global1.x << (1u % 32u), global1.x & -2147483647i);
    var var_1 = Struct_2(arg_1);
    global2 = array<u32, 32>();
    return Struct_2(false);
}

fn func_3() -> f32 {
    global2 = array<u32, 32>();
    global0 = array<bool, 20>();
    let var_0 = -44710i;
    let var_1 = firstLeadingBit(~(~87836u));
    global1 = -min(vec4<i32>(57726i, u_input.b.x, 23125i, _wgslsmith_clamp_i32(u_input.b.x, global1.x, -2147483647i) << (_wgslsmith_add_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62150u, 32u)], 32u)]) % 32u)), vec4<i32>(u_input.b.x, _wgslsmith_div_i32(global1.x >> (var_1 % 32u), i32(-1i) * -10184i), var_0, -4461i));
    return -1194f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 32>();
    let var_0 = _wgslsmith_f_op_f32(round(952f));
    let var_1 = func_1(((~u_input.c.x ^ _wgslsmith_sub_u32(102971u, u_input.a)) < u_input.c.x) != !global0[_wgslsmith_index_u32(1u, 20u)], !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(min(1u, u_input.c.x), 32u)], 32u)], 32u)], 20u)]);
    global2 = array<u32, 32>();
    global2 = array<u32, 32>();
    global2 = array<u32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-142f, var_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1037f, 266f) + vec2<f32>(var_0, var_0))), vec2<f32>(-648f, var_0))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(func_3())), var_0, _wgslsmith_clamp_vec4_i32(~_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, 4780i, 1i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -14979i), vec4<i32>(2082i, -82i, global1.x, 2147483647i))), _wgslsmith_add_vec4_i32((vec4<i32>(-1i, global1.x, u_input.b.x, global1.x) & vec4<i32>(1i, -9266i, -66529i, u_input.b.x)) & -vec4<i32>(global1.x, u_input.b.x, u_input.b.x, u_input.b.x), min(~vec4<i32>(global1.x, u_input.b.x, -2147483647i, global1.x), vec4<i32>(-10868i, 1i, u_input.b.x, 0i))), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 1i, -29686i, -70635i), vec4<i32>(u_input.b.x, global1.x, 2147483647i, u_input.b.x)))));
}

