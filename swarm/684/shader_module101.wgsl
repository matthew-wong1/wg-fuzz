struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 7> = array<f32, 7>(-1207f, -145f, 292f, -662f, 897f, -1212f, 164f);

var<private> global2: bool = false;

var<private> global3: f32 = -1016f;

var<private> global4: array<bool, 23> = array<bool, 23>(true, false, true, true, false, false, true, true, true, false, false, true, true, false, false, false, true, false, false, true, true, true, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global2 = !(!(!all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 23u)], arg_2.a.x, false, arg_2.a.x))));
    let var_0 = any(select(select(vec4<bool>(arg_1.c.x, !arg_1.a.x, any(arg_1.a), all(arg_2.c)), arg_1.c, all(!vec3<bool>(false, arg_3.c.x, true))), vec4<bool>(arg_2.c.x, true, arg_2.c.x, global4[_wgslsmith_index_u32(max(~u_input.a.x, ~4294967295u), 23u)]), false || all(arg_2.a)));
    let var_1 = -4591i;
    let var_2 = ~(~(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 23487u, 0u), vec3<u32>(34873u, u_input.a.x, u_input.a.x)) | firstLeadingBit(vec3<u32>(u_input.a.x, 0u, 37651u)))) & select(countOneBits(~(~vec3<u32>(1u, u_input.a.x, 73422u))), ~vec3<u32>(47696u, u_input.a.x, 23624u), true);
    global2 = true;
    return var_1;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    global3 = global1[_wgslsmith_index_u32(arg_0.x, 7u)];
    let var_0 = ~abs(vec4<i32>(arg_3.x & firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_3, vec3<i32>(arg_3.x, u_input.b.x, arg_3.x), vec3<i32>(u_input.d.x, -16744i, 1i)), arg_3), ~u_input.c, ~func_3(Struct_3(false, Struct_1(vec3<bool>(global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)], arg_1.x), vec4<f32>(-983f, arg_2.a, -762f, arg_2.a), vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 23u)], true, true, true), -2147483647i)), Struct_1(vec3<bool>(global4[_wgslsmith_index_u32(78794u, 23u)], global4[_wgslsmith_index_u32(arg_0.x, 23u)], arg_1.x), vec4<f32>(1028f, arg_2.a, arg_2.a, -868f), vec4<bool>(arg_1.x, arg_1.x, true, false), 2147483647i), Struct_1(vec3<bool>(false, false, global4[_wgslsmith_index_u32(61447u, 23u)]), vec4<f32>(global1[_wgslsmith_index_u32(56854u, 7u)], arg_2.a, -1738f, -1380f), vec4<bool>(false, false, true, arg_1.x), -1i), Struct_1(vec3<bool>(arg_1.x, true, global4[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<f32>(arg_2.a, 1082f, 553f, global1[_wgslsmith_index_u32(81080u, 7u)]), vec4<bool>(arg_1.x, true, global4[_wgslsmith_index_u32(10772u, 23u)], global4[_wgslsmith_index_u32(0u, 23u)]), arg_3.x))));
    let var_1 = global4[_wgslsmith_index_u32(~arg_0.x, 23u)];
    let var_2 = Struct_1(select(vec3<bool>(select(!arg_1.x, false, true), select(!arg_1.x, true, arg_1.x), all(vec3<bool>(global4[_wgslsmith_index_u32(arg_0.x, 23u)], global4[_wgslsmith_index_u32(u_input.a.x, 23u)], arg_1.x))), select(!vec3<bool>(global4[_wgslsmith_index_u32(1915u, 23u)], global4[_wgslsmith_index_u32(arg_0.x, 23u)], true), arg_1, arg_1.x), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a - global1[_wgslsmith_index_u32(u_input.a.x, 7u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(383f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(arg_0.x, 7u)], -102f, global4[_wgslsmith_index_u32(u_input.a.x, 23u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(46540u, 7u)], -922f))))), select(!(!(!vec4<bool>(arg_1.x, global4[_wgslsmith_index_u32(arg_0.x, 23u)], false, arg_1.x))), !vec4<bool>(false, any(vec3<bool>(arg_1.x, true, global4[_wgslsmith_index_u32(arg_0.x, 23u)])), true, u_input.b.x < -2147483647i), false), 0i);
    let var_3 = _wgslsmith_f_op_f32(min(-892f, arg_2.a));
    return arg_2;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_5(func_2(u_input.a, vec3<bool>(true, true, true), Struct_2(1426f), firstLeadingBit(u_input.b.zzw)), ~min(~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, 28334u, u_input.a.x, 38696u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(1u, 33283u, u_input.a.x, 13673u))));
    let var_1 = ~abs(reverseBits(select(var_0.b.wyz, countOneBits(var_0.b.yzx), !vec3<bool>(global4[_wgslsmith_index_u32(26207u, 23u)], global4[_wgslsmith_index_u32(43338u, 23u)], global4[_wgslsmith_index_u32(19307u, 23u)]))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32927u, 7u)]), -625f, _wgslsmith_f_op_f32(-var_0.a.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], -1934f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(35858u, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(55333u, 7u)]))) * vec3<f32>(339f, -472f, global1[_wgslsmith_index_u32(var_0.b.x, 7u)]))), vec3<bool>(!any(vec3<bool>(false, false, false)), !global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(54633u, u_input.a.x, var_1.x), vec3<u32>(u_input.a.x, 28323u, 1u)), 23u)], global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.b.x, 42447u), ~4294967295u), 23u)]))));
    let var_3 = 2147483647i & u_input.b.x;
    var var_4 = ~(u_input.a.x & 0u);
    return StorageBuffer(var_3, vec3<u32>(var_1.x, ~u_input.a.x, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(u_input.a.x, 23u)];
    var var_1 = u_input.a.x;
    global4 = array<bool, 23>();
    var var_2 = global1[_wgslsmith_index_u32(18688u, 7u)];
    let x = u_input.a;
    s_output = func_1();
}

