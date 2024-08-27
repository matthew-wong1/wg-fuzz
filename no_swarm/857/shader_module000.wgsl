struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<f32>(-346f, 165f), vec2<f32>(-2872f, -967f));

var<private> global1: f32;

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(vec4<f32>(1000f, 1000f, -1459f, 1098f), false, -21514i, vec4<i32>(-1i, 12495i, -1i, 2147483647i))), Struct_3(Struct_2(vec4<f32>(-421f, 789f, -216f, -1000f), false, -26788i, vec4<i32>(-20184i, -14930i, -15560i, 22664i))), Struct_3(Struct_2(vec4<f32>(965f, 1530f, -1000f, -1190f), true, 15777i, vec4<i32>(2147483647i, i32(-2147483648), -3014i, -51660i))), Struct_3(Struct_2(vec4<f32>(-1960f, 421f, -1579f, 875f), true, -1i, vec4<i32>(-17510i, -1i, -28581i, -1i))), Struct_3(Struct_2(vec4<f32>(-183f, -424f, 714f, 1571f), true, -35600i, vec4<i32>(10653i, 37762i, 1i, -27435i))), Struct_3(Struct_2(vec4<f32>(-1308f, -409f, -1508f, 1774f), false, 6055i, vec4<i32>(0i, -12834i, -15300i, -24064i))), Struct_3(Struct_2(vec4<f32>(-304f, 183f, 1820f, 1000f), false, -1i, vec4<i32>(2147483647i, 0i, -1i, i32(-2147483648)))), Struct_3(Struct_2(vec4<f32>(-1393f, 562f, 1546f, -444f), false, -18744i, vec4<i32>(-20768i, 0i, 9732i, 0i))), Struct_3(Struct_2(vec4<f32>(631f, -512f, 2938f, -1000f), true, 83172i, vec4<i32>(2147483647i, 40196i, -1i, i32(-2147483648)))), Struct_3(Struct_2(vec4<f32>(360f, 2057f, -1529f, -454f), true, 25546i, vec4<i32>(0i, 36003i, 0i, 0i))), Struct_3(Struct_2(vec4<f32>(305f, 1381f, -1324f, -722f), false, -14180i, vec4<i32>(-26029i, 2147483647i, -4672i, -1i))), Struct_3(Struct_2(vec4<f32>(-538f, -1147f, -780f, -1108f), true, 27372i, vec4<i32>(42770i, i32(-2147483648), i32(-2147483648), 0i))), Struct_3(Struct_2(vec4<f32>(-1063f, 205f, 303f, -130f), true, 1i, vec4<i32>(2147483647i, -1i, 22338i, 2147483647i))), Struct_3(Struct_2(vec4<f32>(2220f, 1461f, -847f, -395f), true, -19383i, vec4<i32>(16044i, -4953i, 2147483647i, -6214i))));

var<private> global3: array<bool, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = vec2<i32>(u_input.d.x, -33903i);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.a.x - 1601f), global0.a.x))));
    let var_2 = u_input.a;
    let var_3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(252f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))), var_1.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, var_1.b.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(128f, var_1.a.x), _wgslsmith_f_op_vec2_f32(max(global0.a, vec2<f32>(var_1.a.x, var_1.b.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -589f))), select(vec2<bool>(true, true), !vec2<bool>(global3[_wgslsmith_index_u32(92884u, 21u)], global3[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 21u)]))))));
    var var_4 = _wgslsmith_mod_vec2_i32(var_0, ~(~select(var_0, ~u_input.b, select(vec2<bool>(global3[_wgslsmith_index_u32(var_2, 21u)], global3[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<bool>(global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(u_input.a, 21u)]), false))));
    return var_1.a.x;
}

fn func_2(arg_0: f32) -> vec2<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -299f))), _wgslsmith_f_op_f32(round(global0.b.x)), 330f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))) + _wgslsmith_f_op_f32(func_3())));
    global3 = array<bool, 21>();
    let var_1 = false || global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~min(1u, ~u_input.a), ~(~(1u ^ u_input.a)), reverseBits(1u) | firstLeadingBit(_wgslsmith_mod_u32(u_input.a, u_input.a))), 21u)];
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-arg_0), arg_0, -190f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -797f), _wgslsmith_f_op_f32(f32(-1f) * -1239f), _wgslsmith_f_op_f32(f32(-1f) * -2123f), _wgslsmith_f_op_f32(-arg_0)))), true, ~(-(~u_input.e)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, ~(19728i << (u_input.a % 32u)), ~(u_input.b.x >> (1u % 32u)), ~_wgslsmith_mod_i32(u_input.c, 30754i)), _wgslsmith_clamp_vec4_i32(-_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(u_input.b.x, 1i, u_input.b.x, -16826i)), max(min(u_input.d, u_input.d), ~vec4<i32>(-2147483647i, u_input.d.x, 36167i, u_input.c)), ~vec4<i32>(-1i, u_input.c, u_input.e, -1i))));
    var var_3 = !((4294967295u >> (_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 0u, 0u)), 10205u) % 32u)) == _wgslsmith_clamp_u32(~(~u_input.a), u_input.a, u_input.a));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.yw - global0.a) + vec2<f32>(809f, -307f));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_4, arg_3: bool) -> f32 {
    var var_0 = !arg_3;
    global3 = array<bool, 21>();
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1653f, global0.b.x, global0.a.x, global0.b.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(137f, global0.a.x, -491f, 1095f))), vec4<bool>(global3[_wgslsmith_index_u32(77777u, 21u)], false, true, arg_3))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_div_f32(arg_0, -429f), arg_2.b.x, _wgslsmith_f_op_f32(-462f * arg_2.b.x)), select(!vec4<bool>(true, arg_3, arg_3, true), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 21u)], arg_3, global3[_wgslsmith_index_u32(80536u, 21u)], false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a, 21u)], false), true), vec4<bool>(true, false, true, arg_3)))), !(arg_1 <= 0u), select(_wgslsmith_clamp_i32(u_input.d.x, u_input.b.x, 0i) | firstLeadingBit(u_input.b.x), ~_wgslsmith_add_i32(-12649i, u_input.b.x), true), u_input.d));
    let var_2 = Struct_3(Struct_2(var_1.a.a, !(!var_1.a.b | true), var_1.a.d.x, -reverseBits(u_input.d)));
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(52680u, 26334u), ~_wgslsmith_add_u32(1u, ~arg_1)) <= 27296u;
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_1() -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.x), 1495f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_div_f32(445f, global0.b.x))))), global0.b.x, -208f, _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(func_4(307f, u_input.a, Struct_4(_wgslsmith_f_op_vec2_f32(func_2(-449f)), vec2<f32>(global0.a.x, 536f)), true))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_div_f32(var_0.x, -2919f)))), global0.b);
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(max(~vec2<i32>(13026i, -2199i), vec2<i32>(u_input.e, _wgslsmith_sub_i32(17211i, u_input.b.x))), u_input.d.xy), reverseBits(-22455i));
    global3 = array<bool, 21>();
    let var_3 = vec2<f32>(var_1.a.x, global0.b.x);
    return ~u_input.a;
}

fn func_5(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    let var_0 = vec2<bool>(global3[_wgslsmith_index_u32(~(~49835u), 21u)], global3[_wgslsmith_index_u32(max(reverseBits(arg_0), ~(~arg_0)), 21u)] | global3[_wgslsmith_index_u32(91698u & u_input.a, 21u)]);
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1976f, global0.a.x))))))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -956f);
    let var_1 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, 1684f, -1437f), vec4<f32>(1607f, 609f, -1245f, global0.a.x))))), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, 1411f) + _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-199f)))), _wgslsmith_f_op_f32(abs(global0.a.x)))), !any(vec4<bool>(select(false, true, global3[_wgslsmith_index_u32(arg_0, 21u)]), false, global0.b.x >= 697f, !global3[_wgslsmith_index_u32(arg_1.x, 21u)])), u_input.d.x, vec4<i32>(_wgslsmith_div_i32(1i, u_input.d.x), _wgslsmith_sub_i32(u_input.e, -u_input.e), 1i >> ((reverseBits(1u) | ~arg_1.x) % 32u), ~u_input.b.x));
    let var_2 = _wgslsmith_sub_u32(arg_0, arg_0);
    return 966f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 582f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))), global0.a.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(), vec2<u32>(u_input.a, ~u_input.a | ~u_input.a))) * _wgslsmith_f_op_f32(trunc(global0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-345f, u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f)), vec3<f32>(var_1, -677f, _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-485f, global0.a.x), _wgslsmith_f_op_vec2_f32(round(global0.b)))), global0.b)));
}

