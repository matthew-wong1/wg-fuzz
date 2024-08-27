struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10>;

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(-1269f, vec2<f32>(1127f, -340f), Struct_1(-979f, vec3<u32>(59605u, 1u, 19635u))), Struct_3(1217f, vec2<f32>(321f, 115f), Struct_1(1322f, vec3<u32>(0u, 60243u, 66004u))), Struct_3(-819f, vec2<f32>(1000f, 2481f), Struct_1(-1350f, vec3<u32>(37166u, 18274u, 30341u))), Struct_3(-1196f, vec2<f32>(266f, 907f), Struct_1(659f, vec3<u32>(4294967295u, 4294967295u, 1u))), Struct_3(277f, vec2<f32>(1624f, 689f), Struct_1(-687f, vec3<u32>(4294967295u, 0u, 18755u))), Struct_3(639f, vec2<f32>(559f, 690f), Struct_1(1339f, vec3<u32>(22679u, 4294967295u, 0u))), Struct_3(212f, vec2<f32>(321f, 744f), Struct_1(-203f, vec3<u32>(0u, 4294967295u, 64635u))), Struct_3(246f, vec2<f32>(-453f, 1421f), Struct_1(-2710f, vec3<u32>(71086u, 0u, 4454u))), Struct_3(1207f, vec2<f32>(1006f, -432f), Struct_1(-353f, vec3<u32>(29895u, 63645u, 30824u))), Struct_3(-397f, vec2<f32>(1000f, -770f), Struct_1(127f, vec3<u32>(59922u, 81793u, 1u))), Struct_3(342f, vec2<f32>(-1020f, -141f), Struct_1(272f, vec3<u32>(32274u, 41125u, 58539u))), Struct_3(-286f, vec2<f32>(1156f, -242f), Struct_1(-475f, vec3<u32>(13001u, 20129u, 4815u))), Struct_3(-656f, vec2<f32>(715f, -186f), Struct_1(1000f, vec3<u32>(9237u, 2635u, 102272u))), Struct_3(684f, vec2<f32>(843f, 110f), Struct_1(1292f, vec3<u32>(15778u, 1u, 10877u))), Struct_3(-587f, vec2<f32>(-1572f, -391f), Struct_1(-220f, vec3<u32>(3727u, 0u, 90154u))), Struct_3(-415f, vec2<f32>(-386f, 229f), Struct_1(320f, vec3<u32>(25856u, 4294967295u, 25036u))));

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(-1781f, vec4<f32>(-1000f, -119f, 259f, 577f), -1i, Struct_1(539f, vec3<u32>(0u, 0u, 51689u)), 0u), Struct_2(871f, vec4<f32>(-405f, 1690f, -619f, 1505f), 2147483647i, Struct_1(-591f, vec3<u32>(4294967295u, 1u, 61784u)), 1u), Struct_2(958f, vec4<f32>(-435f, -730f, -887f, -602f), i32(-2147483648), Struct_1(1000f, vec3<u32>(12310u, 4294967295u, 19039u)), 4294967295u), Struct_2(402f, vec4<f32>(194f, -1981f, -102f, 2131f), -42616i, Struct_1(-574f, vec3<u32>(2185u, 0u, 4294967295u)), 20091u), Struct_2(323f, vec4<f32>(-592f, 496f, 508f, 433f), 1i, Struct_1(1000f, vec3<u32>(4294967295u, 1u, 4294967295u)), 1u), Struct_2(623f, vec4<f32>(405f, -358f, -708f, 214f), i32(-2147483648), Struct_1(305f, vec3<u32>(76308u, 1u, 535u)), 17627u), Struct_2(-131f, vec4<f32>(-394f, -873f, 1140f, 361f), 2147483647i, Struct_1(1961f, vec3<u32>(29520u, 1u, 24215u)), 1u), Struct_2(-371f, vec4<f32>(474f, -212f, -793f, -1147f), 1i, Struct_1(-1020f, vec3<u32>(4294967295u, 1u, 0u)), 1u), Struct_2(292f, vec4<f32>(1121f, -516f, -842f, -1620f), 14266i, Struct_1(822f, vec3<u32>(27083u, 16198u, 42737u)), 34061u), Struct_2(239f, vec4<f32>(322f, -355f, 447f, 462f), -27589i, Struct_1(237f, vec3<u32>(4294967295u, 24576u, 4294967295u)), 37948u), Struct_2(-461f, vec4<f32>(183f, 794f, 420f, 332f), 2147483647i, Struct_1(583f, vec3<u32>(0u, 34434u, 53471u)), 46944u), Struct_2(421f, vec4<f32>(155f, -992f, 898f, 1230f), 1i, Struct_1(-262f, vec3<u32>(41329u, 29097u, 4294967295u)), 0u), Struct_2(-1004f, vec4<f32>(-289f, -1247f, 1176f, -640f), i32(-2147483648), Struct_1(238f, vec3<u32>(0u, 1u, 81118u)), 1u), Struct_2(-1000f, vec4<f32>(1000f, 111f, 250f, 1000f), -15530i, Struct_1(-831f, vec3<u32>(90178u, 0u, 4294967295u)), 1u), Struct_2(992f, vec4<f32>(570f, 451f, 1297f, 564f), 12195i, Struct_1(437f, vec3<u32>(1u, 4294967295u, 4451u)), 5754u), Struct_2(-685f, vec4<f32>(-340f, -155f, 622f, 373f), -1i, Struct_1(-669f, vec3<u32>(1u, 1u, 21280u)), 38606u), Struct_2(237f, vec4<f32>(149f, 1932f, -1712f, -771f), 5206i, Struct_1(1833f, vec3<u32>(1u, 12696u, 5157u)), 4294967295u), Struct_2(-552f, vec4<f32>(2338f, -2759f, 1768f, -643f), -50088i, Struct_1(392f, vec3<u32>(65778u, 1u, 19478u)), 8850u), Struct_2(-1241f, vec4<f32>(145f, 132f, 214f, 118f), -1i, Struct_1(483f, vec3<u32>(131077u, 25553u, 41392u)), 135055u), Struct_2(1909f, vec4<f32>(1524f, -436f, 1425f, -999f), -8307i, Struct_1(867f, vec3<u32>(1u, 6870u, 0u)), 0u), Struct_2(-2110f, vec4<f32>(1839f, 785f, -130f, 587f), 16702i, Struct_1(1000f, vec3<u32>(5705u, 77837u, 47102u)), 1u), Struct_2(2248f, vec4<f32>(-1979f, -219f, 1027f, 890f), i32(-2147483648), Struct_1(220f, vec3<u32>(4294967295u, 5241u, 7919u)), 16304u), Struct_2(252f, vec4<f32>(805f, 536f, 222f, 1221f), 21816i, Struct_1(623f, vec3<u32>(0u, 55011u, 4294967295u)), 18479u));

var<private> global3: vec4<i32> = vec4<i32>(i32(-2147483648), 0i, 4124i, 24370i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = global3.yzz;
    global3 = ~vec4<i32>(select(firstLeadingBit(~u_input.a), var_0.x, any(vec4<bool>(true, false, true, false)) | false), ~u_input.a, ~min(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, u_input.a, 1i, u_input.a), vec4<i32>(u_input.a, global3.x, var_0.x, var_0.x)), global3.x), 32676i);
    global2 = array<Struct_2, 23>();
    global1 = array<Struct_3, 16>();
    global0 = array<vec3<f32>, 10>();
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(~894u, ~4294967295u), ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, arg_0.x, 4294967295u)), vec3<u32>(arg_0.x, arg_0.x, 4604u))) | arg_0.x;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = !select(vec2<bool>(!any(vec3<bool>(true, false, true)), true), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, true)), !vec2<bool>(true, any(vec2<bool>(false, false))));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.a);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(31290u, ~abs(arg_0)), arg_2.d.b.x), 23u)];
    var var_3 = _wgslsmith_clamp_u32(var_2.d.b.x, ~select(9362u, arg_2.d.b.x, false), arg_2.e);
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~60212u, ~(~59218u), _wgslsmith_div_u32(~0u, arg_2.d.b.x ^ 4294967295u) >> (arg_0 % 32u)), reverseBits(vec3<u32>(arg_2.d.b.x << (~arg_2.e % 32u), ~1u, select(arg_0 << (1u % 32u), arg_2.e, !var_0.x)))), 16u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d.a, -2102f));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    global3 = vec4<i32>(1i, ~_wgslsmith_sub_i32(global3.x << (23899u % 32u), ~countOneBits(global3.x)), 1i, -_wgslsmith_mod_i32(min(-global3.x, u_input.a << (14677u % 32u)), 1i));
    global0 = array<vec3<f32>, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 10u)] + vec3<f32>(-1000f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_3(0u, Struct_2(arg_0.x, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -545f), global3.x, Struct_1(1598f, vec3<u32>(13389u, 47610u, 4294967295u)), 4294967295u), global2[_wgslsmith_index_u32(4294967295u, 23u)]))))), global0[_wgslsmith_index_u32(~11534u, 10u)], !(select(true, true, true) || true)));
    global0 = array<vec3<f32>, 10>();
    global2 = array<Struct_2, 23>();
    return arg_0.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-852f + 504f), arg_1.d.a, -741f == arg_1.b.x)), arg_1.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.a) - -1000f)));
    var var_1 = arg_1.d.b.yz;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1177f);
    var var_4 = global1[_wgslsmith_index_u32(0u, 16u)];
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(113f, var_4.c.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f - _wgslsmith_f_op_f32(floor(var_2.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 10>();
    var var_0 = min(~vec3<u32>(52595u, 1169u, func_1(~vec2<u32>(52463u, 64173u))), reverseBits(~min(vec3<u32>(1u, 68074u, 10548u), vec3<u32>(1u, 21504u, 16259u)) & select(~vec3<u32>(34930u, 41732u, 11870u), _wgslsmith_clamp_vec3_u32(vec3<u32>(5372u, 17291u, 0u), vec3<u32>(4294967295u, 0u, 39223u), vec3<u32>(4372u, 1u, 38014u)), vec3<bool>(true, true, true))));
    let var_1 = vec2<bool>(true, -1i > global3.x);
    let var_2 = _wgslsmith_f_op_f32(func_4(_wgslsmith_add_vec3_u32(~abs(vec3<u32>(1u, 4294967295u, 0u)), ~reverseBits(vec3<u32>(0u, 29850u, 38853u) ^ vec3<u32>(118575u, var_0.x, var_0.x))), global2[_wgslsmith_index_u32(~var_0.x, 23u)], vec3<bool>(false, _wgslsmith_f_op_f32(min(-1164f, _wgslsmith_f_op_f32(func_2(vec2<f32>(-1416f, -854f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1819f)), true), firstLeadingBit(_wgslsmith_clamp_u32(select(var_0.x, var_0.x, true), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, var_0.x)), _wgslsmith_clamp_u32(72464u, 4294967295u, 43976u))) >> (~16272u % 32u)));
    var var_3 = !all(vec4<bool>(true, var_1.x, false, all(var_1))) | false;
    let x = u_input.a;
    s_output = StorageBuffer(571f, vec3<f32>(var_2, -1000f, 1034f));
}

