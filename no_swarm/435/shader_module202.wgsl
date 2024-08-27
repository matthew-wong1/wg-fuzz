struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(3278f, vec3<i32>(-1i, i32(-2147483648), -38617i), i32(-2147483648), -13459i, Struct_2(Struct_1(vec2<f32>(682f, -202f))));

var<private> global1: array<i32, 22> = array<i32, 22>(-4933i, 2147483647i, 1i, 3132i, i32(-2147483648), 0i, -26901i, 24892i, -19039i, 2147483647i, -9507i, 2147483647i, 2147483647i, 2147483647i, 2147483647i, 15848i, -1i, -43124i, -9181i, 1i, 10590i, 0i);

var<private> global2: array<Struct_3, 3>;

var<private> global3: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(520f, vec3<i32>(-10582i, 2147483647i, 2147483647i), 0i, 19869i, Struct_2(Struct_1(vec2<f32>(-345f, -1276f)))), Struct_3(819f, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), -9108i, 40975i, Struct_2(Struct_1(vec2<f32>(-406f, 173f)))), Struct_3(679f, vec3<i32>(i32(-2147483648), 31554i, 41954i), 6601i, -1i, Struct_2(Struct_1(vec2<f32>(-1000f, 1196f)))), Struct_3(1955f, vec3<i32>(0i, -1i, -28527i), i32(-2147483648), 1i, Struct_2(Struct_1(vec2<f32>(-374f, -908f)))), Struct_3(2063f, vec3<i32>(-1i, 16079i, -15142i), 1i, 1i, Struct_2(Struct_1(vec2<f32>(220f, 212f)))), Struct_3(-614f, vec3<i32>(32282i, 2147483647i, 5365i), 19913i, 2147483647i, Struct_2(Struct_1(vec2<f32>(-174f, -1000f)))), Struct_3(-2113f, vec3<i32>(2147483647i, -1i, -47852i), 19543i, -1i, Struct_2(Struct_1(vec2<f32>(-231f, 347f)))));

var<private> global4: vec2<i32> = vec2<i32>(-1i, -22256i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>) -> vec4<i32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.a.a.x, -379f)), -116f) - 286f))) + -1937f);
    global4 = global0.b.yz;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(min(var_0.a.a.x, _wgslsmith_f_op_f32(var_0.a.a.x * _wgslsmith_f_op_f32(-arg_1.a.a.x)))), arg_2, 0i, global4.x, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(arg_1.a.a)))));
    global2 = array<Struct_3, 3>();
    return vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_mult_i32(~global0.d, _wgslsmith_mod_i32(-2147483647i, global0.c)), global0.c, 1i, -2147483647i);
}

fn func_3(arg_0: vec2<i32>) -> vec4<i32> {
    global0 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-979f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(112f + global0.a), -1939f) - global0.e.a.a.x))), ~vec3<i32>(-33361i, -_wgslsmith_add_i32(global0.d, -2147483647i), _wgslsmith_add_i32(~global1[_wgslsmith_index_u32(99159u, 22u)], -57821i)), min(reverseBits(reverseBits(global4.x)), _wgslsmith_clamp_i32(~global4.x, 1i, global4.x)) ^ select(global1[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_mult_i32(firstTrailingBit(2147483647i), _wgslsmith_mod_i32(8536i, global1[_wgslsmith_index_u32(65398u, 22u)])), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)))), min(arg_0.x, global4.x), global0.e);
    global3 = array<Struct_3, 7>();
    global1 = array<i32, 22>();
    let var_0 = ~(~u_input.a) ^ u_input.a;
    let var_1 = Struct_3(global0.a, firstLeadingBit(~min(global0.b, vec3<i32>(arg_0.x, global1[_wgslsmith_index_u32(var_0, 22u)], 28674i))) ^ _wgslsmith_div_vec3_i32(~global0.b, global0.b), -36101i, (-2147483647i >> (u_input.a % 32u)) << (var_0 % 32u), Struct_2(global0.e.a));
    return abs(_wgslsmith_div_vec4_i32(~vec4<i32>(1i, 50319i >> (var_0 % 32u), 11106i, -var_1.b.x), vec4<i32>(abs(-2147483647i), global0.c, -2147483647i, i32(-1i) * -2147483647i)));
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<u32>(_wgslsmith_add_u32(~u_input.a, _wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(u_input.a, 1u >> (u_input.a % 32u)))), 44048u);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.a.a.x - _wgslsmith_div_f32(global0.e.a.a.x, global0.a))), -348f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.e.a.a.x), _wgslsmith_div_f32(-1000f, -677f))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-974f + -860f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global0.e.a.a.x, 1725f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.a.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.a.a.x)))));
    var_2 = vec4<f32>(global0.e.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))) - -388f), _wgslsmith_f_op_f32(global0.e.a.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -858f)) * _wgslsmith_f_op_f32(global0.a * 1608f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f)));
    global4 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, 1i, global1[_wgslsmith_index_u32(var_0.x, 22u)], global0.c)), func_2(4294967295u, Struct_2(global0.e.a), vec3<i32>(global4.x, -1i, -31873i))), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(49828u, 22u)], global0.d, 11611i), ~vec4<i32>(global0.d, 0i, -1273i, global4.x))), _wgslsmith_div_vec4_i32(func_3(_wgslsmith_div_vec2_i32(vec2<i32>(1i, global1[_wgslsmith_index_u32(1u, 22u)]), vec2<i32>(global4.x, global1[_wgslsmith_index_u32(var_0.x, 22u)]))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-14909i, global1[_wgslsmith_index_u32(u_input.a, 22u)], global4.x, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1147i, -28474i, global4.x), vec4<i32>(26313i, -1i, -4785i, 1i)), func_2(u_input.a, Struct_2(global0.e.a), vec3<i32>(21585i, global1[_wgslsmith_index_u32(0u, 22u)], global4.x))))), _wgslsmith_dot_vec3_i32(select(~vec3<i32>(global0.b.x, 48486i, global4.x), firstTrailingBit(vec3<i32>(-2147483647i, global0.c, global4.x)) ^ -global0.b, true), abs(_wgslsmith_sub_vec3_i32(global0.b, global0.b))));
    return global0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = global3[_wgslsmith_index_u32(u_input.a ^ ~22225u, 7u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.a.a.x)));
    let var_2 = global0.e;
    let var_3 = global3[_wgslsmith_index_u32(u_input.a, 7u)];
    global0 = Struct_3(_wgslsmith_f_op_f32(ceil(829f)), vec3<i32>(~global4.x, _wgslsmith_sub_i32(~global1[_wgslsmith_index_u32(u_input.a, 22u)] & func_3(vec2<i32>(-2147483647i, global4.x)).x, global1[_wgslsmith_index_u32(1u, 22u)]), i32(-1i) * -5184i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-13148i, global0.b.x), global0.b.yx) & -_wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 22u)], var_3.c), ~9982i), global0.d, global0.e);
    let var_4 = true && !(var_3.b.x > -2147483647i);
    let var_5 = select(select(min(vec4<u32>(841u, u_input.a, 19627u, u_input.a), select(vec4<u32>(u_input.a, 1u, 0u, 93858u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), vec4<bool>(var_4, false, var_4, true))), _wgslsmith_div_vec4_u32(vec4<u32>(26772u, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 0u, u_input.a, 37924u)) & (vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) | vec4<u32>(75364u, u_input.a, u_input.a, 35520u)), select(!vec4<bool>(true, var_4, var_4, var_4), !vec4<bool>(var_4, false, true, true), select(vec4<bool>(false, true, var_4, var_4), vec4<bool>(var_4, false, true, var_4), vec4<bool>(false, true, var_4, true)))) & countOneBits(~vec4<u32>(4294967295u, u_input.a, u_input.a, 19273u)), vec4<u32>(u_input.a, 87559u | u_input.a, u_input.a, 0u), !(!(!(!vec4<bool>(var_4, true, var_4, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-998f - _wgslsmith_f_op_f32(3068f * global0.e.a.a.x)), _wgslsmith_div_f32(var_2.a.a.x, -1000f)), func_1().a.a.x), var_5.zw >> (var_5.zx % vec2<u32>(32u)));
}

