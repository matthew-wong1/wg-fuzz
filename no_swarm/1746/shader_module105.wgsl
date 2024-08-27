struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec3<f32>(228f, -737f, -401f), 4128u, Struct_1(vec4<u32>(119235u, 252u, 4294967295u, 1013u), -716f), vec2<u32>(31369u, 4294967295u), vec2<f32>(610f, 255f)), Struct_4(vec3<f32>(-502f, 1834f, 689f), 25343u, Struct_1(vec4<u32>(33306u, 1u, 4294967295u, 4294967295u), 1060f), vec2<u32>(1u, 1u), vec2<f32>(-1446f, 1000f)), Struct_4(vec3<f32>(527f, 134f, -437f), 56559u, Struct_1(vec4<u32>(64497u, 95166u, 90225u, 3114u), 1692f), vec2<u32>(4770u, 78545u), vec2<f32>(-433f, 335f)), Struct_4(vec3<f32>(-2084f, 1597f, -1257f), 10151u, Struct_1(vec4<u32>(24320u, 1u, 0u, 0u), -1000f), vec2<u32>(70113u, 55503u), vec2<f32>(1000f, -1015f)), Struct_4(vec3<f32>(-1924f, 134f, -915f), 39450u, Struct_1(vec4<u32>(0u, 25239u, 0u, 0u), -272f), vec2<u32>(0u, 4294967295u), vec2<f32>(-653f, -1472f)), Struct_4(vec3<f32>(-1299f, 287f, -972f), 47533u, Struct_1(vec4<u32>(38150u, 0u, 1u, 4294967295u), -159f), vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-1546f, -315f)), Struct_4(vec3<f32>(-2018f, -251f, -1104f), 34144u, Struct_1(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), -2215f), vec2<u32>(46564u, 96150u), vec2<f32>(-2115f, -418f)), Struct_4(vec3<f32>(206f, 339f, 634f), 1232u, Struct_1(vec4<u32>(0u, 6733u, 99624u, 0u), -1027f), vec2<u32>(88425u, 44692u), vec2<f32>(1703f, -1000f)), Struct_4(vec3<f32>(811f, 482f, 169f), 1u, Struct_1(vec4<u32>(1u, 1u, 1u, 26246u), -949f), vec2<u32>(0u, 95195u), vec2<f32>(1088f, -824f)));

var<private> global1: array<i32, 11> = array<i32, 11>(0i, -29313i, -6273i, -24834i, 58050i, -46264i, 17987i, 0i, 54008i, i32(-2147483648), 1i);

var<private> global2: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(-61715i, 9086i, 2147483647i, 0i), vec4<i32>(-22826i, -1i, 0i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, 32735i, 37491i), vec4<i32>(55739i, 30125i, i32(-2147483648), -1i), vec4<i32>(1i, 998i, -8766i, -54682i), vec4<i32>(0i, -21395i, -58708i, i32(-2147483648)), vec4<i32>(99758i, 26361i, 0i, 2147483647i), vec4<i32>(9030i, 8046i, 39842i, -1i), vec4<i32>(20812i, 48136i, -20064i, 0i), vec4<i32>(37769i, i32(-2147483648), -56788i, 30199i), vec4<i32>(1i, 1i, 0i, 1i), vec4<i32>(-26551i, 27904i, 7988i, -18617i), vec4<i32>(-3130i, -11224i, 2147483647i, -20484i), vec4<i32>(1i, i32(-2147483648), 86033i, -18600i), vec4<i32>(i32(-2147483648), 23497i, i32(-2147483648), -1i), vec4<i32>(0i, 27116i, 0i, 38848i), vec4<i32>(6371i, -17914i, -44586i, -33115i), vec4<i32>(1i, 1i, -1i, 29258i), vec4<i32>(-1i, 0i, 17921i, 2147483647i), vec4<i32>(-18753i, -10229i, -1i, 2147483647i), vec4<i32>(-1i, -788i, -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), -29391i, 15340i), vec4<i32>(i32(-2147483648), 1i, 26202i, -1i), vec4<i32>(42239i, -45865i, -5068i, -4866i), vec4<i32>(2147483647i, 1i, 1i, -3627i), vec4<i32>(10235i, -29859i, -17374i, i32(-2147483648)), vec4<i32>(1i, -1i, 4765i, i32(-2147483648)));

var<private> global3: u32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> f32 {
    var var_0 = Struct_2(Struct_1(~(~firstLeadingBit(vec4<u32>(22293u, 4294967295u, u_input.a, u_input.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1239f - -774f) + _wgslsmith_f_op_f32(step(2512f, -1509f))), 655f, true))), Struct_1(select(~vec4<u32>(1u, u_input.a, arg_1, u_input.a), min(vec4<u32>(0u, 1u, 40971u, u_input.a), vec4<u32>(arg_1, 19837u, 4648u, 4294967295u)), vec4<bool>(true, false, arg_0.x, true)) & vec4<u32>(~1u, reverseBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, u_input.a), vec2<u32>(arg_1, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 4294967295u, 1u), vec4<u32>(arg_1, 76100u, 4294967295u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(805f, -304f))) - _wgslsmith_f_op_f32(max(-1527f, _wgslsmith_f_op_f32(f32(-1f) * -359f))))), Struct_1(~vec4<u32>(4294967295u, firstLeadingBit(arg_1), ~u_input.a, ~arg_1), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-583f, 1467f)), -780f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(291f, -1019f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.b), var_0.c.b, var_0.c.b, _wgslsmith_f_op_f32(414f + 669f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.b))), -728f, _wgslsmith_f_op_f32(-358f * _wgslsmith_f_op_f32(-var_0.c.b)))))));
    var var_2 = arg_0.x;
    let var_3 = var_0.a.a.xz;
    let var_4 = global0[_wgslsmith_index_u32(1u, 9u)];
    return _wgslsmith_f_op_f32(abs(var_1.x));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(Struct_1(abs(max(~vec4<u32>(u_input.a, 4294967295u, 15178u, 50770u), vec4<u32>(69050u, 51357u, u_input.a, u_input.a) << (vec4<u32>(4294967295u, u_input.a, 11001u, u_input.a) % vec4<u32>(32u)))), -479f), Struct_1(vec4<u32>(~(u_input.a | 0u), u_input.a, 32074u, ~0u), _wgslsmith_f_op_f32(288f + 958f)), Struct_1(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.a, 1u, 0u, 1u), vec4<u32>(u_input.a, 1u, 0u, 0u), vec4<bool>(false, false, true, false)), vec4<u32>(1u, u_input.a, 1540u, 1u), abs(vec4<u32>(u_input.a, 9845u, u_input.a, u_input.a))) | vec4<u32>(~34359u, ~1u, 11135u, u_input.a << (u_input.a % 32u)), 1f));
    var var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(any(vec4<bool>(false, true, true, true)), all(vec2<bool>(true, false))), abs(16654u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-189f - 287f))))), _wgslsmith_clamp_u32(~min(2166u & var_0.a.a.x, var_0.c.a.x), 12751u, firstTrailingBit(1812u)));
    var var_2 = global2[_wgslsmith_index_u32(var_1.b, 27u)];
    global2 = array<vec4<i32>, 27>();
    var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(554f + 543f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a - 1253f), var_1.a)) - var_1.a), var_0.b.a.x);
    return Struct_3(_wgslsmith_f_op_f32(var_0.c.b + _wgslsmith_f_op_f32(ceil(var_1.a))), ~(~_wgslsmith_mod_u32(~21329u, ~28344u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    global1 = array<i32, 11>();
    global2 = array<vec4<i32>, 27>();
    let var_0 = global0[_wgslsmith_index_u32(arg_0.b, 9u)];
    global3 = ~_wgslsmith_add_u32(var_0.b, var_0.c.a.x);
    let var_1 = Struct_5(arg_2);
    return Struct_3(-1428f, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, countOneBits(var_1.a.a.x), 0u, 0u), _wgslsmith_add_vec4_u32(~var_1.a.a, ~vec4<u32>(4294967295u, arg_2.a.x, 0u, arg_1.b)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(4236u, arg_2.a.x, 30513u, 0u), ~var_0.c.a)));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(75991u, 11u)] << (_wgslsmith_mod_u32(4294967295u, u_input.a) % 32u);
    global0 = array<Struct_4, 9>();
    var var_1 = arg_0;
    var var_2 = true;
    var var_3 = func_4(func_2(), Struct_3(arg_0, _wgslsmith_mult_u32(select(u_input.a ^ 38245u, abs(4294967295u), arg_0 <= 939f), 1u)), Struct_1(max(vec4<u32>(u_input.a, 9369u, u_input.a, u_input.a ^ 28893u), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 5015u, 7405u), vec4<u32>(u_input.a, 16638u, 69114u, u_input.a) & vec4<u32>(39093u, 1u, 1u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), 0i & -global1[_wgslsmith_index_u32(1u, 11u)]);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(~u_input.a, ~u_input.a, 55725u, func_1(_wgslsmith_f_op_f32(min(-970f, _wgslsmith_f_op_f32(f32(-1f) * -1003f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(468f)) - _wgslsmith_div_f32(742f, -141f)))));
    global0 = array<Struct_4, 9>();
    let var_1 = vec2<i32>(2147483647i, select(global1[_wgslsmith_index_u32(~(~(u_input.a ^ u_input.a)), 11u)], _wgslsmith_clamp_i32(-2147483647i, -_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(u_input.a, 27u)], vec4<i32>(2147483647i, 1i, -34936i, global1[_wgslsmith_index_u32(var_0.a.x, 11u)])), -(~(-39989i))), all(vec3<bool>(true, true, true))));
    let var_2 = var_0;
    let var_3 = var_2.a.x;
    var var_4 = all(vec3<bool>(all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true)), true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-1i), -var_1.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.a, var_0.a), 11u)]), -vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], -2147483647i, -1i), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], var_1.x, var_1.x)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-31197i, -34726i, 0i), vec3<i32>(-38867i, global1[_wgslsmith_index_u32(1u, 11u)], var_1.x), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(var_0.a.x, 11u)], 2147483647i)) << (var_2.a.xww % vec3<u32>(32u))));
}

