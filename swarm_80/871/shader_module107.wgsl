struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<f32, 13> = array<f32, 13>(-1530f, -1370f, -432f, -1295f, -851f, -1000f, -1368f, 144f, 572f, -248f, 656f, -1127f, -878f);

var<private> global2: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global0 = array<f32, 21>();
    return u_input.c.x;
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    global2 = global1[_wgslsmith_index_u32(u_input.d ^ func_1(Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(763f, global1[_wgslsmith_index_u32(u_input.c.x, 13u)], 1477f, global0[_wgslsmith_index_u32(u_input.d, 21u)]), vec4<f32>(global0[_wgslsmith_index_u32(126022u, 21u)], global1[_wgslsmith_index_u32(62841u, 13u)], -1000f, 336f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, global1[_wgslsmith_index_u32(68864u, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(44387u, 21u)]))), all(vec2<bool>(arg_0.x, false))))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(round(1394f)), 241f, _wgslsmith_f_op_f32(f32(-1f) * -2088f), _wgslsmith_f_op_f32(-1374f * 1230f)))), 13u)];
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(0u, 13u)], -1870f), vec4<f32>(global1[_wgslsmith_index_u32(68720u, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], -1093f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(4271u, 21u)], -1140f, global0[_wgslsmith_index_u32(1u, 21u)]) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], 268f, global0[_wgslsmith_index_u32(1204u, 21u)], -626f))) * _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(70537u, 21u)], global1[_wgslsmith_index_u32(39470u, 13u)], 1542f, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1537f, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(0u, 13u)], 610f) * vec4<f32>(-274f, 108f, global1[_wgslsmith_index_u32(u_input.d, 13u)], 1942f))))));
    var var_1 = 73071u;
    var var_2 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = Struct_3(Struct_2(vec4<f32>(var_0.a.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(33558u, ~u_input.a.x), 21u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -304f))), -130f)));
    return _wgslsmith_add_i32(-u_input.b, ~(-51764i));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec3<bool>) -> vec4<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(-339f)), _wgslsmith_f_op_f32(-arg_0.x));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 13u)], var_0.x, var_0.x, var_0.x)))))));
    global0 = array<f32, 21>();
    global1 = array<f32, 13>();
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_mult_i32(-6436i, ~(-u_input.b)), u_input.b, firstLeadingBit(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, -1i)), vec3<i32>(1i, 1i, 0i)))), vec4<i32>(-_wgslsmith_mod_i32(1451i, u_input.b), 0i, firstLeadingBit(func_3(vec2<bool>(arg_2.x, true))), max(_wgslsmith_mod_i32(1i, max(u_input.b, -2147483647i)), -(u_input.b << (0u % 32u)))));
    return firstLeadingBit(vec4<u32>(abs(0u >> (u_input.d % 32u)), ~u_input.d, u_input.c.x, u_input.d) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 90680u, 4294967295u), ~u_input.a, max(u_input.a, vec4<u32>(34297u, 1u, u_input.c.x, 0u) << (vec4<u32>(455u, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<f32>(-417f, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(u_input.a.x, u_input.a.x)), 40659u), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-903f, global1[_wgslsmith_index_u32(u_input.d, 13u)])) + global1[_wgslsmith_index_u32(59666u, 13u)])));
    let var_1 = true;
    global2 = global1[_wgslsmith_index_u32(~(~u_input.a.x >> (_wgslsmith_add_u32(_wgslsmith_clamp_u32(~4294967295u, func_1(Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(2880u, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)], global0[_wgslsmith_index_u32(u_input.d, 21u)], -1000f)), Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(51016u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))), firstLeadingBit(47829u)), u_input.d) % 32u)), 13u)];
    var var_2 = 40684u;
    global2 = global0[_wgslsmith_index_u32(~u_input.a.x, 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c & _wgslsmith_div_vec4_u32(func_2(var_0.a.xyx, vec2<bool>(var_1, var_1), vec3<bool>(false, false, var_1)), vec4<u32>(u_input.d, u_input.a.x, 4294967295u, u_input.a.x)), _wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, 4773u, 0u) & u_input.c, u_input.c >> (u_input.c % vec4<u32>(32u))))), 13u)], 589f);
}

