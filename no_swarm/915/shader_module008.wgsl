struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: array<bool, 31> = array<bool, 31>(false, false, true, true, false, false, false, false, true, false, true, false, false, false, true, false, true, true, true, true, true, true, true, true, false, false, false, true, true, false, false);

var<private> global2: u32 = 0u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = arg_0;
    var var_1 = Struct_3(~(~(~(~vec3<u32>(u_input.a, 51688u, 0u)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -1099f))), ~(~vec3<u32>(u_input.a, 31997u, 1u)), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(9412u, 31u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 31u)], true, global1[_wgslsmith_index_u32(13451u, 31u)]))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - vec3<f32>(-874f, 287f, arg_0))), ~vec3<u32>(1u, u_input.a, u_input.a), select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], false, false, global1[_wgslsmith_index_u32(u_input.a, 31u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 31u)], true, global1[_wgslsmith_index_u32(u_input.a, 31u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 31u)], false, true)), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)]), global1[_wgslsmith_index_u32(u_input.a, 31u)]), global1[_wgslsmith_index_u32(u_input.a, 31u)] || global1[_wgslsmith_index_u32(u_input.a, 31u)])), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(678f * arg_0), arg_0, arg_0), select(vec3<u32>(4294967295u, u_input.a, 200u), vec3<u32>(u_input.a, 108201u, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, 55323u), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 31u)], false)), select(!vec4<bool>(global1[_wgslsmith_index_u32(47929u, 31u)], global1[_wgslsmith_index_u32(25275u, 31u)], true, false), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 31u)], false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(23321u, 31u)], global1[_wgslsmith_index_u32(41500u, 31u)]))), min(vec3<i32>(select(-1673i, u_input.c.x, global1[_wgslsmith_index_u32(0u, 31u)]), select(u_input.c.x, 2147483647i, global1[_wgslsmith_index_u32(31120u, 31u)]), abs(u_input.c.x)), -(~u_input.c))), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-405f + arg_0), _wgslsmith_f_op_f32(1527f - 398f), -1308f), select(~vec3<u32>(u_input.a, 1u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 62525u)), select(vec3<bool>(global1[_wgslsmith_index_u32(17454u, 31u)], true, global1[_wgslsmith_index_u32(37505u, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], false, global1[_wgslsmith_index_u32(82645u, 31u)]), global1[_wgslsmith_index_u32(u_input.a, 31u)])), vec4<bool>(!global1[_wgslsmith_index_u32(9266u, 31u)], global1[_wgslsmith_index_u32(28207u, 31u)] & true, true, global1[_wgslsmith_index_u32(u_input.a, 31u)])), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, -1090f, 410f)))), max(~vec3<u32>(0u, 0u, 41616u), vec3<u32>(1u, 0u, u_input.a)), !vec4<bool>(false, global1[_wgslsmith_index_u32(14174u, 31u)], false, false)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -242f, arg_0) - vec3<f32>(arg_0, arg_0, 127f)), vec3<u32>(u_input.a << (1u % 32u), 25227u, 90694u), vec4<bool>(true, false && global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)] & true, true)), -vec3<i32>(-u_input.c.x, countOneBits(u_input.c.x), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 11u)])), false);
    var_1 = Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~u_input.a, 1u), 0u, _wgslsmith_div_u32(var_1.c.c.b.x, 1u)), reverseBits(abs(var_1.b.c.b)) & var_1.c.a.b), var_1.b, var_1.b, !var_1.b.a.c.x);
    global2 = u_input.a;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b.b.a.x)));
    return arg_0;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<u32>) -> u32 {
    let var_0 = arg_1.c;
    global2 = var_0.b.x;
    var var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(1236f - var_0.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)) - arg_0.x) * _wgslsmith_f_op_f32(trunc(var_0.a.x))))));
    var var_2 = -1i;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.a.x - arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.a.x * _wgslsmith_f_op_f32(f32(-1f) * -1705f)), _wgslsmith_div_f32(-454f, arg_0.x))), arg_0.x);
    return ~var_0.b.x;
}

fn func_1() -> f32 {
    global1 = array<bool, 31>();
    global0 = array<i32, 11>();
    let var_0 = true;
    global0 = array<i32, 11>();
    let var_1 = Struct_3(vec3<u32>(u_input.a, u_input.a, _wgslsmith_sub_u32(~u_input.a, ~u_input.a)) ^ vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 35635u, u_input.a), vec3<u32>(67528u, u_input.a, 25417u)), 672u), u_input.a, func_2(vec4<f32>(-101f, -859f, -1832f, -1736f), Struct_2(Struct_1(vec3<f32>(-394f, 986f, 1000f), vec3<u32>(48788u, 1u, u_input.a), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(106574u, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)], false)), Struct_1(vec3<f32>(598f, -1086f, -2643f), vec3<u32>(u_input.a, 40864u, u_input.a), vec4<bool>(false, true, global1[_wgslsmith_index_u32(25028u, 31u)], false)), Struct_1(vec3<f32>(1422f, -164f, -1017f), vec3<u32>(4294967295u, 58890u, u_input.a), vec4<bool>(var_0, var_0, false, true)), vec3<i32>(1i, u_input.b.x, -16212i)), vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(1u, 0u, u_input.a) % vec3<u32>(32u)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1286f, 833f, 577f) * vec3<f32>(-687f, 1511f, -1333f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -135f, 1692f), vec3<f32>(1000f, -678f, -474f), vec3<bool>(true, var_0, global1[_wgslsmith_index_u32(1u, 31u)])))), vec3<u32>(firstLeadingBit(0u), 4294967295u, u_input.a), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 31u)], true, false))), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -411f, 1561f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-201f, 1678f, -725f)))), ~vec3<u32>(u_input.a, 0u, 62921u), select(select(vec4<bool>(var_0, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(31393u, 31u)], false), vec4<bool>(false, var_0, true, var_0), vec4<bool>(var_0, false, global1[_wgslsmith_index_u32(u_input.a, 31u)], var_0)), !vec4<bool>(var_0, false, true, global1[_wgslsmith_index_u32(u_input.a, 31u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], true, false, global1[_wgslsmith_index_u32(0u, 31u)]), global1[_wgslsmith_index_u32(u_input.a, 31u)]))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -757f), -389f, 1000f), vec3<u32>(1u, 1u, abs(87592u)), vec4<bool>(all(vec2<bool>(true, true)), false, true, true)), u_input.c), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(f32(-1f) * -2479f), _wgslsmith_f_op_f32(select(801f, 1618f, true))), abs(vec3<u32>(u_input.a, u_input.a, 9896u)), vec4<bool>(-45294i >= global0[_wgslsmith_index_u32(1u, 11u)], true, true, false | var_0)), Struct_1(vec3<f32>(_wgslsmith_div_f32(510f, 1368f), _wgslsmith_f_op_f32(f32(-1f) * -835f), _wgslsmith_f_op_f32(func_3(-2202f))), ~vec3<u32>(44580u, 4294967295u, u_input.a), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], var_0, false, global1[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.a, 31u)]), var_0)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, 809f, -1635f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1534f, 801f, -422f))), vec3<u32>(_wgslsmith_sub_u32(15460u, u_input.a), ~u_input.a, func_2(vec4<f32>(366f, -1000f, -298f, -214f), Struct_2(Struct_1(vec3<f32>(675f, 852f, -1567f), vec3<u32>(26676u, u_input.a, 44209u), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.a, 31u)])), Struct_1(vec3<f32>(1154f, -370f, 811f), vec3<u32>(4294967295u, 1u, u_input.a), vec4<bool>(global1[_wgslsmith_index_u32(44656u, 31u)], true, false, false)), Struct_1(vec3<f32>(-478f, -707f, -489f), vec3<u32>(4294967295u, 82607u, 0u), vec4<bool>(var_0, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)], var_0)), vec3<i32>(u_input.c.x, 2147483647i, -2147483647i)), vec3<u32>(u_input.a, u_input.a, u_input.a))), !select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)], var_0, var_0, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], false, false, true), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(u_input.a, 31u)]))), ~vec3<i32>(abs(2147483647i), -global0[_wgslsmith_index_u32(u_input.a, 11u)], -2147483647i)), any(!select(select(vec3<bool>(var_0, false, true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 31u)]), global1[_wgslsmith_index_u32(153854u, 31u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], var_0, false), var_0)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 47255u;
    let var_1 = true;
    var var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-645f - 181f), _wgslsmith_f_op_f32(func_1())) + -1599f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1007f)) * 1500f)))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_0, 33150u, 4294967295u, 109726u)) << (~vec4<u32>(7987u, u_input.a, var_0, u_input.a) % vec4<u32>(32u)), ~(~vec4<u32>(16755u, var_0, var_0, u_input.a))), firstTrailingBit(vec4<u32>(abs(u_input.a), 93861u << (u_input.a % 32u), 18099u, _wgslsmith_dot_vec3_u32(vec3<u32>(26298u, var_0, 52734u), vec3<u32>(var_0, 19177u, 13665u))))), global0[_wgslsmith_index_u32(u_input.a, 11u)], select(vec4<bool>(select(var_1, var_1, true), true, any(vec4<bool>(true, var_1, true, global1[_wgslsmith_index_u32(22206u, 31u)])) || true, abs(0i) > u_input.b.x), select(vec4<bool>(false, global1[_wgslsmith_index_u32(var_0 ^ 72242u, 31u)], false, u_input.b.x != -10889i), vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(var_0 & 1u, 31u)]), vec4<bool>(var_1, true, any(vec4<bool>(false, global1[_wgslsmith_index_u32(69786u, 31u)], var_1, var_1)) || all(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(12278u, 31u)])), all(select(vec4<bool>(true, true, false, var_1), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], var_1, false, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], var_1, var_1, true))))));
    var_2 = Struct_4(_wgslsmith_f_op_f32(ceil(var_2.a)), 1u, -12326i, select(select(vec4<bool>(var_2.d.x, true, any(var_2.d.yzz), var_1), var_2.d, global1[_wgslsmith_index_u32(~u_input.a, 31u)]), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(55004u, 31u)], false, false), vec4<bool>(var_2.d.x, var_2.d.x, false, global1[_wgslsmith_index_u32(12370u, 31u)]), false), !var_2.d, vec4<bool>(false, var_2.d.x, true, var_1)), select(var_2.d, vec4<bool>(true, true, global1[_wgslsmith_index_u32(9595u, 31u)], global1[_wgslsmith_index_u32(var_2.b, 31u)]), var_2.d), false), !vec4<bool>(true, var_2.d.x, true, true)));
    global2 = abs(abs(firstLeadingBit(~u_input.a) << (_wgslsmith_mod_u32(var_2.b ^ var_0, var_0) % 32u)));
    var var_3 = reverseBits(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0, 0u, 1u, var_2.b)), ~(vec4<u32>(0u, var_0, var_0, u_input.a) ^ vec4<u32>(1u, var_0, 1u, u_input.a))) & abs(~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.b, 4294967295u, var_0, u_input.a), vec4<u32>(4294967295u, var_0, var_2.b, 5960u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1000f) * _wgslsmith_f_op_f32(-1488f + var_2.a)), _wgslsmith_f_op_f32(round(1f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1153f)), -1224f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, -843f) + _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a, 1028f), vec2<f32>(var_2.a, var_2.a)))))), ~select(u_input.c, vec3<i32>(~(-2147483647i), var_2.c ^ global0[_wgslsmith_index_u32(var_3.x, 11u)], _wgslsmith_div_i32(-40810i, global0[_wgslsmith_index_u32(25587u, 11u)])), !var_1), var_2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.a, 1377f, var_2.a, -272f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, var_2.a, -331f) * vec4<f32>(var_2.a, var_2.a, var_2.a, 421f))))))));
}

