struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(24148u, 0u, 870u, 26781u));

var<private> global3: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(54728u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 115481u), vec4<u32>(60662u, 4294967295u, 50143u, 68354u), vec4<u32>(23444u, 0u, 4294967295u, 25624u), vec4<u32>(0u, 49294u, 4294967295u, 56518u), vec4<u32>(0u, 4294967295u, 44704u, 4347u), vec4<u32>(28222u, 31669u, 1u, 8568u), vec4<u32>(22264u, 1u, 42204u, 1u), vec4<u32>(75027u, 13643u, 1u, 4294967295u), vec4<u32>(4294967295u, 100487u, 9864u, 1u), vec4<u32>(1u, 20187u, 41919u, 0u), vec4<u32>(4294967295u, 35197u, 1u, 4294967295u), vec4<u32>(0u, 11256u, 59177u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(_wgslsmith_sub_u32(u_input.c.x, arg_0.a.x)), 1u), 13u)]);
    let var_1 = _wgslsmith_div_u32(arg_0.a.x, ~(var_0.a.x << (~(0u << (1u % 32u)) % 32u)));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-38577i, ~abs(arg_3.x), _wgslsmith_dot_vec3_i32(~u_input.d, vec3<i32>(-11402i, -13862i, arg_3.x))), -vec3<i32>(u_input.b, -1i, _wgslsmith_mult_i32(11993i, arg_3.x))) < ~(_wgslsmith_dot_vec4_i32(vec4<i32>(-29062i, arg_3.x, arg_3.x, arg_3.x), -vec4<i32>(u_input.b, arg_3.x, arg_3.x, 11962i)) | ((2147483647i & u_input.b) >> (u_input.a % 32u)));
    let var_3 = vec3<bool>(var_2, false, !(global2.a.x == min(select(var_1, u_input.a, true), 1u)));
    global3 = array<vec4<u32>, 13>();
    return Struct_1(vec4<u32>(global2.a.x, 0u, max(u_input.c.x, abs(~52318u)), ~(~select(1u, 4294967295u, var_3.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(597f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2039f * global0[_wgslsmith_index_u32(4294967295u, 7u)]) - _wgslsmith_f_op_f32(f32(-1f) * -281f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27564u, 7u)]) * _wgslsmith_f_op_f32(step(1569f, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.zy * global1.yz), global1.yz))));
    let var_1 = func_2(Struct_1(~arg_0.a), global1.x, vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(35164u, _wgslsmith_sub_u32(u_input.a, u_input.a)), 4294967295u, _wgslsmith_add_u32(1u, global2.a.x)), 7u)], _wgslsmith_f_op_f32(sign(1369f)), global0[_wgslsmith_index_u32(~30710u, 7u)], _wgslsmith_div_f32(269f, global1.x)), u_input.d.zy);
    var var_2 = u_input.d.x;
    let var_3 = -1i;
    return Struct_1(global3[_wgslsmith_index_u32(global2.a.x, 13u)]);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(723f, -751f, 769f) * vec3<f32>(-1034f, global0[_wgslsmith_index_u32(43165u, 7u)], global0[_wgslsmith_index_u32(global2.a.x, 7u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 472f, global0[_wgslsmith_index_u32(u_input.a, 7u)]))), true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global2.a.x, 7u)])), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(trunc(global1.x))), vec3<f32>(-178f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.a.x, 7u)]), global0[_wgslsmith_index_u32(22981u << (1u % 32u), 7u)]), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-735f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_div_f32(1712f, global1.x)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1169f, 335f, -938f), vec3<f32>(global1.x, 550f, global1.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(515f, -378f, global0[_wgslsmith_index_u32(1u, 7u)])))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(arg_0.a.x, 7u)], global1.x, -1126f))))))), !vec3<bool>((u_input.b == u_input.d.x) && true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false))), true)));
    let var_0 = global1.x;
    let var_1 = _wgslsmith_add_u32(u_input.a | global2.a.x, global2.a.x);
    let var_2 = vec4<u32>(global2.a.x, arg_0.a.x, global2.a.x, min(countOneBits(4294967295u), 59264u));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), 1170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(195f)))))) * vec3<f32>(-696f, 543f, _wgslsmith_f_op_f32(f32(-1f) * -719f)));
    return 1i;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>) -> vec4<u32> {
    var var_0 = !select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true))), !select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false))), select(vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true), vec4<bool>(true, true, true, true), true));
    let var_1 = max(1i, abs(~_wgslsmith_dot_vec2_i32(-u_input.d.xy, ~vec2<i32>(1i, 0i))));
    global0 = array<f32, 7>();
    global3 = array<vec4<u32>, 13>();
    var var_2 = var_0.zy;
    return ~global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(abs(global2.a)), !vec3<bool>(true, !select(true, false, false), true & any(vec3<bool>(true, true, false))));
    global2 = Struct_1(~func_4(func_3(Struct_1(vec4<u32>(var_0.a.x, 15319u, global2.a.x, u_input.a))) ^ max(10901i, u_input.b), global1.xx));
    let var_1 = Struct_1(var_0.a);
    var_0 = func_2(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(26005u, 7u)]), -701f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 1305f) - global0[_wgslsmith_index_u32(1u, 7u)])) + -538f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1723f, -1000f, -1000f, -524f)))))), max(select(~(~u_input.d.xz), vec2<i32>(u_input.d.x, u_input.d.x) ^ vec2<i32>(2147483647i, u_input.d.x), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, false), vec2<bool>(true, true))), u_input.d.yx & (~u_input.d.xy | _wgslsmith_div_vec2_i32(vec2<i32>(-16242i, 0i), u_input.d.xy))));
    var var_2 = u_input.d;
    global0 = array<f32, 7>();
    var_0 = func_2(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-923f, 201f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 693f, global1.x, global0[_wgslsmith_index_u32(var_0.a.x, 7u)]), vec4<f32>(1503f, global1.x, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 1246f), vec4<bool>(false, true, true, false))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1374f, 1826f, global1.x, 819f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1273f, -339f, global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(562f, global1.x, 196f, global1.x), vec4<f32>(1035f, -1923f, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 178f)))))), -u_input.d.xy);
    global3 = array<vec4<u32>, 13>();
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 348f), 567f, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-419f + global0[_wgslsmith_index_u32(~u_input.c.x, 7u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global2.a.x, global2.a.x), 44827u, ~(~(0u << (global2.a.x % 32u)))), (var_2.x >> (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, global2.a.x), global3[_wgslsmith_index_u32(global2.a.x, 13u)])) % 32u)) << (firstLeadingBit((u_input.a << (104239u % 32u)) >> (abs(var_1.a.x) % 32u)) % 32u));
}

