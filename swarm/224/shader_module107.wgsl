struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-965f, vec2<f32>(-367f, -166f), 0u, vec3<bool>(true, true, false)), Struct_1(1376f, vec2<f32>(-1000f, 1000f), 4294967295u, vec3<bool>(true, true, false)), Struct_1(-799f, vec2<f32>(-277f, 648f), 4294967295u, vec3<bool>(false, true, false)), Struct_1(1000f, vec2<f32>(592f, 944f), 4294967295u, vec3<bool>(true, true, false)), Struct_1(-758f, vec2<f32>(1196f, 1435f), 26116u, vec3<bool>(false, false, false)), Struct_1(-128f, vec2<f32>(-1000f, -3141f), 10769u, vec3<bool>(false, false, false)), Struct_1(707f, vec2<f32>(605f, -2309f), 1u, vec3<bool>(false, false, true)), Struct_1(-1041f, vec2<f32>(214f, -693f), 32074u, vec3<bool>(false, false, true)), Struct_1(-843f, vec2<f32>(-274f, -363f), 67903u, vec3<bool>(false, true, true)));

var<private> global2: array<Struct_2, 7>;

var<private> global3: vec3<f32>;

var<private> global4: array<i32, 4>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<u32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(min(arg_0.x, global3.x)))), _wgslsmith_f_op_f32(-arg_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
}

fn func_3() -> bool {
    let var_0 = Struct_2(1u <= u_input.b, Struct_1(1000f, global3.yy, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, abs(0u), _wgslsmith_add_u32(u_input.b, u_input.c)), 1u), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), global4[_wgslsmith_index_u32(1u, 4u)], Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-127f * _wgslsmith_f_op_f32(-1880f - global3.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.zx)), ~_wgslsmith_mod_u32(u_input.b, ~u_input.b), vec3<bool>(!all(vec3<bool>(false, false, true)), true, all(vec4<bool>(true, true, true, true)))));
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    return u_input.c >= 48726u;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: u32) -> bool {
    let var_0 = ~27030u;
    global2 = array<Struct_2, 7>();
    global2 = array<Struct_2, 7>();
    let var_1 = Struct_1(global3.x, vec2<f32>(-882f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) - 573f) * 1674f)), ~arg_0.x, vec3<bool>(func_3(), true, false));
    let var_2 = global2[_wgslsmith_index_u32(~abs(select(41230u, 4294967295u ^ (var_1.c >> (4294967295u % 32u)), var_1.d.x)), 7u)];
    return abs(firstTrailingBit(~7278u)) == arg_0.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-843f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x))))), _wgslsmith_f_op_f32(-224f - 1335f)));
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~max(~1u, 0u), u_input.c), 7u)];
    global1 = array<Struct_1, 9>();
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-120f, global3.x, global3.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(391f, 720f, global3.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-303f, -652f, 1175f) * vec3<f32>(-704f, global3.x, -789f))), vec3<f32>(_wgslsmith_f_op_f32(abs(495f)), global3.x, global3.x))), arg_1.x)));
    let var_1 = false == !(min(17204u, u_input.c) == var_0.a);
    return Struct_2(var_1, Struct_1(-483f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(826f, global3.x))), var_0.a, !vec3<bool>(arg_1.x, true, true)), -28183i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-412f, -1722f)) + 1000f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-404f)) + global3.x)), 36865u, arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 9>();
    var var_0 = func_4(!vec4<bool>(true, true, _wgslsmith_f_op_f32(sign(1671f)) >= _wgslsmith_f_op_f32(func_1(vec4<f32>(global3.x, global3.x, global3.x, -861f), global3.x, vec3<u32>(54650u, 40673u, u_input.b))), true), select(select(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 4u)] <= u_input.d.x, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, (-1267f < global3.x) || true, func_2(vec2<u32>(21814u, u_input.c), vec2<i32>(u_input.d.x, -48301i), ~u_input.b)), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))));
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-324f, _wgslsmith_f_op_f32(-global3.x), -101f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, 110f, 329f), vec3<f32>(429f, -1206f, 1000f), !vec3<bool>(true, var_0.a, var_0.a))))));
    let var_1 = vec3<i32>(47007i, 87964i, global4[_wgslsmith_index_u32(~1u, 4u)]);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1928f) + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(605f, var_0.d.a, global3.x, var_0.d.a), vec4<f32>(global3.x, global3.x, var_0.d.b.x, 796f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(468f, global3.x, 114f, 1773f))), -1000f, ~vec3<u32>(u_input.b, u_input.b, 0u))) + _wgslsmith_f_op_f32(690f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1134f, var_0.b.a)), _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.x, firstTrailingBit(var_1.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c, var_1.x, global4[_wgslsmith_index_u32(27050u, 4u)], var_1.x) ^ vec4<i32>(-2147483647i, 42293i, 1i, global4[_wgslsmith_index_u32(var_0.d.c, 4u)]), -vec4<i32>(global4[_wgslsmith_index_u32(u_input.b, 4u)], global4[_wgslsmith_index_u32(4294967295u, 4u)], -2147483647i, var_1.x)), vec4<i32>(u_input.e.x, var_1.x, u_input.e.x, min(global4[_wgslsmith_index_u32(u_input.b, 4u)], -1i))), reverseBits(-max(global4[_wgslsmith_index_u32(u_input.c, 4u)], var_0.c))), vec4<f32>(var_2.x, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x)))), -1112f, global3.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.x, global3.x)))), _wgslsmith_f_op_f32(func_1(vec4<f32>(-556f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(func_1(vec4<f32>(-1176f, global3.x, var_0.b.b.x, -1000f), -552f, vec3<u32>(0u, 0u, var_0.b.c))), -497f), global3.x, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.d.c, 44919u, var_0.b.c), ~vec3<u32>(u_input.b, 77123u, 74090u)))))));
}

