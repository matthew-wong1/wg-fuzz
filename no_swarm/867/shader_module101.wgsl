struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<i32>(-29647i, 2147483647i, -9431i), vec2<i32>(-11557i, -22837i), false, false, vec3<f32>(2624f, 384f, -846f)), Struct_1(vec3<i32>(25214i, 1i, 2147483647i), vec2<i32>(-13115i, i32(-2147483648)), true, false, vec3<f32>(1120f, -682f, 1175f)), Struct_1(vec3<i32>(22151i, 1i, -52418i), vec2<i32>(1i, 2147483647i), false, true, vec3<f32>(-732f, 1646f, 2221f)), Struct_1(vec3<i32>(-24495i, 10256i, 0i), vec2<i32>(i32(-2147483648), 45510i), false, false, vec3<f32>(1148f, -713f, 113f)), Struct_1(vec3<i32>(-44319i, -1i, -10605i), vec2<i32>(-13657i, -55829i), true, false, vec3<f32>(-950f, 1000f, 587f)), Struct_1(vec3<i32>(6620i, 2147483647i, -20049i), vec2<i32>(41266i, -1i), true, false, vec3<f32>(770f, -134f, -1013f)), Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, -12738i), true, true, vec3<f32>(-773f, -811f, -1341f)), Struct_1(vec3<i32>(2147483647i, 1i, 12187i), vec2<i32>(-1i, -5518i), true, false, vec3<f32>(1000f, -1197f, 931f)), Struct_1(vec3<i32>(-9894i, -1i, 44559i), vec2<i32>(i32(-2147483648), -12272i), false, false, vec3<f32>(289f, 1515f, 626f)), Struct_1(vec3<i32>(86066i, -9824i, i32(-2147483648)), vec2<i32>(-5690i, 2147483647i), true, false, vec3<f32>(973f, -1000f, -533f)), Struct_1(vec3<i32>(-1i, -22065i, 31528i), vec2<i32>(50875i, i32(-2147483648)), true, true, vec3<f32>(401f, 1093f, -897f)), Struct_1(vec3<i32>(0i, 35468i, -29102i), vec2<i32>(17556i, -12110i), true, false, vec3<f32>(-129f, -151f, -1337f)), Struct_1(vec3<i32>(0i, 1i, -5194i), vec2<i32>(0i, -28925i), true, false, vec3<f32>(1174f, -775f, 892f)));

var<private> global1: vec3<u32> = vec3<u32>(3752u, 28089u, 1u);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-11731i, 10389i, -1i), vec2<i32>(19538i, -18307i), true, true, vec3<f32>(667f, 904f, -338f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<f32> {
    global2 = arg_0;
    var var_0 = _wgslsmith_div_f32(arg_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -839f));
    let var_1 = arg_0;
    var var_2 = Struct_1(arg_0.a, global2.b, arg_0.c, !any(select(vec2<bool>(arg_0.d, global2.d), vec2<bool>(true, true), select(vec2<bool>(arg_0.d, false), vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(arg_0.d, false)))), _wgslsmith_f_op_vec3_f32(sign(var_1.e)));
    var var_3 = vec2<bool>(global2.c, all(vec3<bool>(all(vec3<bool>(false, var_1.d, arg_0.c)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(global2.d, global2.d))), !all(vec4<bool>(false, global2.c, false, global2.d)))));
    return global2.e;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    global2 = global0[_wgslsmith_index_u32(~(~global1.x), 13u)];
    let var_0 = Struct_1(~global2.a, -arg_0.a.yy, true, true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1139f, _wgslsmith_f_op_f32(step(arg_0.e.x, global2.e.x)), _wgslsmith_f_op_f32(-270f * global2.e.x))))));
    global0 = array<Struct_1, 13>();
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.e), _wgslsmith_f_op_vec3_f32(func_3(arg_0, var_0.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e.x, 294f, 356f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.e))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.e))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.e.x)) * global2.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.e.x, var_0.e.x), _wgslsmith_f_op_f32(global2.e.x + arg_3.e.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.e.x - arg_0.e.x), _wgslsmith_f_op_f32(1007f - var_0.e.x))), _wgslsmith_f_op_f32(floor(arg_3.e.x)))));
    return global1.x & ~(1u << (global1.x % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: vec4<u32>) -> i32 {
    let var_0 = -28985i;
    var var_1 = global0[_wgslsmith_index_u32(0u, 13u)];
    let var_2 = arg_3.yw;
    global0 = array<Struct_1, 13>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(f32(-1f) * -2500f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.e.x, var_1.e.x, 379f, global2.e.x), vec4<f32>(329f, -946f, -1042f, -1108f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(225f, var_1.e.x, var_1.e.x, -1702f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(709f, var_1.e.x, 1764f, 892f)) - vec4<f32>(var_1.e.x, 215f, 1678f, arg_0.e.x)))));
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, arg_0.a.x), _wgslsmith_sub_i32(~firstTrailingBit(var_1.b.x), 29417i));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: u32) -> Struct_1 {
    global2 = global0[_wgslsmith_index_u32(global1.x, 13u)];
    global0 = array<Struct_1, 13>();
    var var_0 = ~u_input.b.zy;
    var var_1 = global0[_wgslsmith_index_u32(~(~(~var_0.x)), 13u)];
    var var_2 = global0[_wgslsmith_index_u32(20764u, 13u)];
    return Struct_1(abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 45474i), var_1.a ^ var_2.a)), -var_2.b, false, var_1.d, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2.e, vec3<f32>(arg_1, 1047f, -1580f))) - vec3<f32>(-708f, -554f, -850f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(global2.e, global2.e)), _wgslsmith_f_op_vec3_f32(global2.e + global2.e), global2.c | false)))))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> StorageBuffer {
    global2 = func_5(func_4(Struct_1(~_wgslsmith_div_vec3_i32(global2.a, arg_2.a), global2.a.zz, global2.d, arg_2.c, arg_2.e), -2170i, abs(_wgslsmith_add_u32(global1.x, _wgslsmith_add_u32(72658u, u_input.a))), vec4<u32>(~1u, min(51898u, 0u), func_2(arg_2, vec2<bool>(true, global2.c), vec4<bool>(arg_2.d, false, false, arg_2.c), global0[_wgslsmith_index_u32(global1.x, 13u)]), ~global1.x) ^ (countOneBits(vec4<u32>(4294967295u, global1.x, 1u, u_input.a)) ^ (vec4<u32>(4294967295u, global1.x, 0u, global1.x) ^ vec4<u32>(u_input.a, global1.x, u_input.a, global1.x)))), _wgslsmith_div_f32(559f, global2.e.x), 2147483647i & _wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, -9582i, arg_0, 2147483647i), vec4<i32>(arg_2.a.x, global2.a.x, arg_2.a.x, 2147483647i), global2.d), vec4<i32>(-15921i, ~arg_2.b.x, max(arg_2.a.x, arg_2.b.x), arg_0)), 41614u);
    let var_0 = arg_2;
    var var_1 = ~abs(select(vec4<u32>(4294967295u & u_input.a, ~u_input.b.x, 5163u, 0u), vec4<u32>(countOneBits(32371u), _wgslsmith_sub_u32(17115u, u_input.a), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 1u, 57507u)), u_input.b.x << (global1.x % 32u)), !select(false, false, var_0.d)));
    var var_2 = Struct_1(abs(~vec3<i32>(countOneBits(var_0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, var_0.a.x, -2147483647i, 68995i), vec4<i32>(1i, -36026i, -58619i, 93i)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, global2.b.x), var_0.a.yy))), firstLeadingBit(~countOneBits(var_0.a.zx)), select(false && all(vec3<bool>(false, arg_2.c, global2.c)), !any(vec4<bool>(global2.d, var_0.d, arg_2.c, false)), all(!select(vec2<bool>(true, true), vec2<bool>(var_0.c, false), global2.c))), true, arg_2.e);
    var_1 = abs(countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.x, var_1.x, global1.x, 0u), vec4<u32>(var_1.x, global1.x, u_input.b.x, 1u)))) & ~(~(~(vec4<u32>(42677u, 4294967295u, u_input.a, var_1.x) << (vec4<u32>(u_input.a, u_input.a, global1.x, 1u) % vec4<u32>(32u)))));
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1083f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -613f)))), var_2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2063f, -774f)))), var_0.e.x, ~vec2<u32>(37511u, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-18072i, global2.e.zy, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 966u, 94093u), ~52805u), 1u, ~global1.x, select(global1.x, u_input.b.x, global2.c) & firstLeadingBit(1u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global1.x, 58484u, 41999u) | vec4<u32>(61090u, 0u, u_input.a, u_input.b.x), vec4<u32>(u_input.a, global1.x, 4294967295u, 1u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.b.x, 28959u, 6649u, u_input.a)), firstLeadingBit(vec4<u32>(72306u, 4294967295u, global1.x, u_input.a))))), 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.e.x, _wgslsmith_f_op_f32(select(799f, global2.e.x, global2.c)))) * _wgslsmith_f_op_f32(f32(-1f) * -609f)));
}

