struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-1440f, -960f), vec2<f32>(1409f, -462f), vec2<f32>(-115f, 270f), vec2<f32>(467f, 1176f), vec2<f32>(-1417f, -1585f), vec2<f32>(1030f, -2371f), vec2<f32>(1272f, -1014f), vec2<f32>(-220f, 868f));

var<private> global1: array<i32, 19> = array<i32, 19>(7558i, 2147483647i, 0i, 26508i, 2147483647i, 7553i, 0i, -6430i, -31717i, -1i, 0i, -30732i, 2147483647i, -15931i, 0i, 8308i, -7582i, 18972i, 2147483647i);

var<private> global2: array<bool, 13>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = u_input.a;
    global1 = array<i32, 19>();
    let var_1 = 1u <= select(_wgslsmith_sub_u32(u_input.a.x, 11551u), 1u, arg_0.d <= -363f);
    global0 = array<vec2<f32>, 8>();
    let var_2 = arg_0.b;
    return arg_0;
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = ~arg_2.a.x;
    var var_1 = func_2(arg_2);
    global0 = array<vec2<f32>, 8>();
    var var_2 = arg_2;
    global0 = array<vec2<f32>, 8>();
    return arg_0.yzy;
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    global1 = array<i32, 19>();
    let var_0 = -_wgslsmith_add_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(7833u, 19u)]), ~global1[_wgslsmith_index_u32(46276u, 19u)], ~global1[_wgslsmith_index_u32(4294967295u, 19u)]), func_3(~(-vec4<i32>(global1[_wgslsmith_index_u32(28297u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], 46173i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-409f)), 527f), func_2(Struct_2(u_input.a, Struct_1(global2[_wgslsmith_index_u32(1u, 13u)], false, 1634f, arg_0.wzx), global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 835f))));
    global1 = array<i32, 19>();
    var var_1 = ~min(vec4<u32>(0u, ~u_input.a.x, _wgslsmith_sub_u32(0u, ~4294967295u), ~17822u), vec4<u32>(23268u, u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(86515u, 16019u, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, 4294967295u)) % 32u), func_2(Struct_2(vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 13u)], false, -380f, arg_0.yxy), vec2<f32>(-127f, -335f), 1357f)).a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
    let var_2 = func_2(func_2(Struct_2(vec3<u32>(1u, var_1.x, var_1.x), Struct_1(arg_0.x && false, any(vec3<bool>(arg_0.x, global2[_wgslsmith_index_u32(53002u, 13u)], true)), 1181f, arg_0.yzw), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 8u)]))), 1031f)));
    return var_1.x;
}

fn func_4(arg_0: i32, arg_1: i32) -> u32 {
    global1 = array<i32, 19>();
    global1 = array<i32, 19>();
    let var_0 = arg_1;
    let var_1 = func_2(Struct_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~reverseBits(u_input.a)), Struct_1(!(0u >= u_input.a.x), select(global2[_wgslsmith_index_u32(~4294967295u, 13u)], func_2(Struct_2(vec3<u32>(u_input.a.x, 1u, 4294967295u), Struct_1(global2[_wgslsmith_index_u32(0u, 13u)], true, -1289f, vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], false)), global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 202f)).b.d.x, false), -572f, vec3<bool>(arg_1 <= 2147483647i, global2[_wgslsmith_index_u32(21916u, 13u)] & false, !global2[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(745f, 406f) - global0[_wgslsmith_index_u32(1u, 8u)])))), 282f));
    global0 = array<vec2<f32>, 8>();
    return select(_wgslsmith_mult_u32(var_1.a.x, _wgslsmith_add_u32(var_1.a.x, u_input.a.x)), _wgslsmith_mod_u32(abs(~1u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1.a.x), var_1.a.yy)), u_input.a.x), all(vec4<bool>(!(var_1.b.a || global2[_wgslsmith_index_u32(u_input.a.x, 13u)]), !var_1.b.d.x, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 13>();
    var var_0 = func_4(global1[_wgslsmith_index_u32(func_1(!vec4<bool>(any(vec3<bool>(false, true, true)), !global2[_wgslsmith_index_u32(0u, 13u)], true, false)), 19u)], -firstLeadingBit(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~u_input.a.x, 19u)], global1[_wgslsmith_index_u32(abs(u_input.a.x), 19u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(92757u, ~(u_input.a.x >> (90612u % 32u)), 0u), u_input.a.x, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-526f, 684f)), -1000f)), _wgslsmith_f_op_f32(func_2(Struct_2(u_input.a, Struct_1(true, true, 1000f, vec3<bool>(true, false, true)), global0[_wgslsmith_index_u32(0u, 8u)], 713f)).b.c + _wgslsmith_f_op_f32(abs(-467f))), 711f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-229f, 687f, -654f), vec3<f32>(-269f, -1000f, 1953f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(943f, -380f, -1274f) + vec3<f32>(-1178f, 155f, -1162f))))));
}

