struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(2147483647i, -23470i, 1i, 0i, -9008i, 16161i, -23776i, 44005i, -1i, 69192i, -11813i, 85830i, 2147483647i, 68985i, -1i, 30820i, -43305i, i32(-2147483648), -1i, 0i, 2147483647i, -4644i, -48379i, -1i, -55097i);

var<private> global1: f32;

var<private> global2: array<vec3<bool>, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = vec3<f32>(1f, _wgslsmith_f_op_f32(floor(438f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1681f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1013f + 754f) - 1f)))));
    var var_1 = any(vec3<bool>(false, !(arg_0.x >= ~6537u), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false)) || true));
    var var_2 = firstLeadingBit(~reverseBits(min(arg_0.x, arg_0.x))) | ~(~4294967295u);
    global0 = array<i32, 25>();
    var var_3 = true;
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: vec4<f32>) -> bool {
    global2 = array<vec3<bool>, 3>();
    global2 = array<vec3<bool>, 3>();
    let var_0 = Struct_4(arg_0);
    var var_1 = Struct_3(var_0.a, Struct_2(Struct_1(1000f, reverseBits(i32(-1i) * -12941i), func_3(vec3<u32>(arg_0.e.x, u_input.c, 7600u))), Struct_1(var_0.a.a.a, arg_1, false), 4294967295u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(-var_0.a.b.a)), -23503i, (arg_0.e.x != 4294967295u) | any(vec4<bool>(true, var_0.a.d.c, true, true))), var_0.a.e), 1u << (_wgslsmith_mod_u32(arg_0.c, 59307u ^ select(1861u, u_input.c, var_0.a.b.c)) % 32u), true, _wgslsmith_dot_vec4_u32(select(~(~vec4<u32>(u_input.a, 4294967295u, var_0.a.e.x, u_input.c)), ~(~vec4<u32>(0u, var_0.a.c, var_0.a.c, var_0.a.e.x)), !select(vec4<bool>(var_0.a.b.c, arg_2, arg_0.a.c, true), vec4<bool>(arg_2, false, arg_0.a.c, false), arg_2)), abs(vec4<u32>(~54593u, 16222u, 1u, arg_0.c))));
    var var_2 = var_0.a.a;
    return var_1.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(523f - -1042f) - _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(exp2(arg_0.x)));
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(min(var_0.x, -2054f)), -u_input.b.x ^ (u_input.b.x << (96191u % 32u)), !(!arg_1.x)), arg_2, _wgslsmith_sub_u32(~39969u, ~u_input.c ^ ~1u), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.a, arg_0.x), arg_0.x), ~(-u_input.d), arg_1.x), _wgslsmith_mult_vec2_u32(vec2<u32>(10301u, ~u_input.a), ~(~vec2<u32>(4294967295u, 0u)))));
    let var_2 = -1507f;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(-1000f)), -1i, select(any(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 0u, 46640u), vec4<u32>(var_1.a.c, 4683u, u_input.c, 1u)), 3u)]) | false, var_1.a.d.c, true));
    var var_4 = u_input.b.xz;
    return var_1.a;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> u32 {
    global1 = _wgslsmith_f_op_f32(floor(arg_2));
    var var_0 = global2[_wgslsmith_index_u32(u_input.a, 3u)];
    let var_1 = Struct_4(func_4(vec2<f32>(_wgslsmith_f_op_f32(round(arg_3.b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a.a), _wgslsmith_f_op_f32(-arg_3.d.a))), !vec2<bool>(true, func_4(vec2<f32>(705f, arg_3.d.a), vec2<bool>(arg_3.a.c, false), arg_3.a).a.c), arg_3.b));
    var var_2 = arg_3.d;
    global1 = _wgslsmith_f_op_f32(select(var_1.a.a.a, _wgslsmith_f_op_f32(sign(var_1.a.b.a)), !var_1.a.d.c));
    return 9780u;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: bool, arg_3: vec3<i32>) -> f32 {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(~(104702u >> (arg_1.d.x % 32u)), reverseBits(u_input.c)), func_5(false, 4294967295u, -1291f, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b) * _wgslsmith_f_op_vec2_f32(arg_1.b + arg_0)), vec2<bool>(true, select(arg_2, true, arg_2)), Struct_1(-874f, arg_1.e, func_2(Struct_2(Struct_1(-108f, u_input.b.x, true), Struct_1(618f, -2147483647i, false), u_input.a, Struct_1(821f, 1i, arg_2), arg_1.d.zx), 27209i, false, vec4<f32>(-1284f, arg_1.b.x, -716f, 885f))))));
    global2 = array<vec3<bool>, 3>();
    global1 = func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b - vec2<f32>(arg_1.b.x, arg_1.b.x)) * arg_0))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(276f, arg_0.x), vec2<f32>(487f, 1000f))), _wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(-395f, -270f))), arg_0)))), !vec2<bool>(!(arg_1.a.x < 16409u), func_3(vec3<u32>(u_input.a, 0u, 4294967295u))), func_4(vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(arg_1.b.x, arg_0.x)), 1000f), vec2<bool>(arg_2, any(vec3<bool>(arg_2, arg_2, true))), func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_0 - arg_1.b))), vec2<bool>(false && arg_2, arg_2), func_4(_wgslsmith_f_op_vec2_f32(-arg_0), vec2<bool>(arg_2, false), func_4(arg_1.b, vec2<bool>(arg_2, true), Struct_1(459f, 2147483647i, true)).b).b).b).b).a.a;
    global0 = array<i32, 25>();
    let var_1 = Struct_3(func_4(arg_0, vec2<bool>(all(!vec2<bool>(false, arg_2)), true), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, arg_1.b.x), vec2<f32>(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.b.x, arg_0.x)))), select(vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), vec2<bool>(arg_2, false)), select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), true)), Struct_1(_wgslsmith_div_f32(391f, arg_0.x), reverseBits(arg_1.e), !arg_2)).b), Struct_2(Struct_1(arg_1.b.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_3.x, global0[_wgslsmith_index_u32(1u, 25u)]), 1i), false), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(408f, arg_0.x)) + -2074f), arg_1.e, true), func_5(arg_2, reverseBits(78440u & u_input.c), _wgslsmith_f_op_f32(2105f * _wgslsmith_f_op_f32(step(1838f, arg_1.b.x))), func_4(_wgslsmith_f_op_vec2_f32(-arg_1.b), select(vec2<bool>(true, arg_2), vec2<bool>(true, true), true), Struct_1(arg_0.x, u_input.d, arg_2))), func_4(vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(abs(-1542f))), select(vec2<bool>(true, true), vec2<bool>(true, true), false), Struct_1(_wgslsmith_div_f32(arg_0.x, arg_1.b.x), 48386i, func_2(Struct_2(Struct_1(-757f, 14310i, false), Struct_1(487f, arg_3.x, true), var_0.x, Struct_1(arg_1.b.x, arg_1.e, true), vec2<u32>(arg_1.d.x, var_0.x)), arg_1.e, false, vec4<f32>(arg_0.x, 342f, arg_0.x, 931f)))).a, _wgslsmith_clamp_vec2_u32(arg_1.d.zy, arg_1.a, _wgslsmith_sub_vec2_u32(min(var_0, vec2<u32>(arg_1.c, 34472u)), _wgslsmith_mult_vec2_u32(var_0, vec2<u32>(u_input.c, 175652u))))), ~arg_1.d.x, true | all(vec4<bool>(all(vec2<bool>(arg_2, false)), arg_2, true, arg_2)), var_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b.x - 2279f), 685f, arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 3>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(465f, 499f)) - _wgslsmith_f_op_f32(floor(1f)));
    let var_0 = vec4<f32>(534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec2<f32>(811f, -771f), Struct_5(vec2<u32>(u_input.c, u_input.c), vec2<f32>(-215f, 689f), 38564u, vec3<u32>(60110u, u_input.a, u_input.c), global0[_wgslsmith_index_u32(7399u, 25u)]), true, vec3<i32>(global0[_wgslsmith_index_u32(19078u, 25u)], u_input.b.x, -1i))), _wgslsmith_div_f32(1476f, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1327f, 1000f) + -265f) - 1000f)), _wgslsmith_f_op_f32(max(1480f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-722f)), -474f) - _wgslsmith_f_op_f32(f32(-1f) * -627f)))));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)));
    let var_3 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yy) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.wz, vec2<f32>(3363f, -917f), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.ww - var_0.xw))), vec2<bool>(true, true))), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(350f, _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1095f, var_2))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-861f, -468f))), vec2<bool>(true, true)))), vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_f32(exp2(func_4(var_0.xw, vec2<bool>(true, true), Struct_1(var_0.x, global0[_wgslsmith_index_u32(52149u, 25u)], true)).a.a)), 13392i, !all(vec4<bool>(true, true, true, false)))).b);
    var var_4 = Struct_1(743f, ~(firstTrailingBit(1i) & _wgslsmith_sub_i32(25748i, 6070i)) ^ _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_3.b.b, 12751i), ~var_3.a.b), global0[_wgslsmith_index_u32(0u, 25u)]), false);
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_add_vec2_u32(var_3.e, vec2<u32>(u_input.a, 53083u) << (var_3.e % vec2<u32>(32u))), var_3.e, !func_3(vec3<u32>(1u, 34397u, var_3.e.x))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b.x, -1i), ~1i), var_3.b.b, ~u_input.d, _wgslsmith_dot_vec3_i32(u_input.b & u_input.b, -u_input.b)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(57120u, u_input.c, 0u, 0u), abs(vec4<u32>(var_3.e.x, u_input.a, 111111u, u_input.c))) % vec4<u32>(32u)));
}

