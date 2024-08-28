struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(vec3<u32>(4294967295u, 0u, 1010u), Struct_1(-350f, vec3<u32>(0u, 0u, 1u), true), Struct_2(false, 17480i), Struct_4(Struct_1(-618f, vec3<u32>(0u, 4294967295u, 2096u), true), vec2<f32>(-557f, 712f), vec4<f32>(-930f, -386f, -1408f, 233f))), Struct_5(vec3<u32>(18932u, 1u, 1u), Struct_1(1359f, vec3<u32>(7534u, 55711u, 4294967295u), false), Struct_2(true, -1i), Struct_4(Struct_1(-851f, vec3<u32>(1u, 48807u, 0u), true), vec2<f32>(-717f, 616f), vec4<f32>(266f, -1077f, 888f, -1061f))), Struct_5(vec3<u32>(4294967295u, 1u, 51520u), Struct_1(427f, vec3<u32>(1u, 0u, 44211u), true), Struct_2(false, 22302i), Struct_4(Struct_1(-1000f, vec3<u32>(25412u, 83530u, 54986u), false), vec2<f32>(1000f, -945f), vec4<f32>(-1000f, 330f, -1641f, 1000f))), Struct_5(vec3<u32>(0u, 4294967295u, 27904u), Struct_1(-112f, vec3<u32>(1u, 1u, 4294967295u), false), Struct_2(true, -1i), Struct_4(Struct_1(1861f, vec3<u32>(12208u, 4294967295u, 98742u), true), vec2<f32>(1000f, 863f), vec4<f32>(1207f, -815f, -1883f, -1627f))), Struct_5(vec3<u32>(55239u, 0u, 12265u), Struct_1(1401f, vec3<u32>(17379u, 1460u, 0u), false), Struct_2(false, -14850i), Struct_4(Struct_1(-782f, vec3<u32>(9917u, 4294967295u, 4294967295u), false), vec2<f32>(1368f, 672f), vec4<f32>(135f, 908f, -649f, -825f))), Struct_5(vec3<u32>(12856u, 22640u, 1u), Struct_1(900f, vec3<u32>(1u, 4294967295u, 1u), true), Struct_2(false, 0i), Struct_4(Struct_1(427f, vec3<u32>(4294967295u, 1u, 4294967295u), false), vec2<f32>(-1417f, -503f), vec4<f32>(-1445f, 2923f, -1877f, 1971f))), Struct_5(vec3<u32>(2705u, 1u, 1u), Struct_1(-280f, vec3<u32>(29005u, 4294967295u, 31390u), true), Struct_2(false, 2147483647i), Struct_4(Struct_1(-938f, vec3<u32>(14678u, 16149u, 25862u), true), vec2<f32>(1256f, -252f), vec4<f32>(217f, -666f, 573f, 226f))), Struct_5(vec3<u32>(4294967295u, 22893u, 19823u), Struct_1(-706f, vec3<u32>(49560u, 1u, 1910u), true), Struct_2(true, -32954i), Struct_4(Struct_1(-389f, vec3<u32>(32366u, 38802u, 32543u), false), vec2<f32>(-763f, -279f), vec4<f32>(-875f, 1061f, 910f, 1302f))), Struct_5(vec3<u32>(0u, 0u, 0u), Struct_1(1280f, vec3<u32>(1u, 40159u, 0u), false), Struct_2(true, -9745i), Struct_4(Struct_1(-1000f, vec3<u32>(1u, 1u, 71157u), true), vec2<f32>(469f, -876f), vec4<f32>(493f, 1000f, -1000f, -1041f))), Struct_5(vec3<u32>(0u, 4294967295u, 0u), Struct_1(536f, vec3<u32>(10030u, 1u, 8765u), true), Struct_2(true, -1i), Struct_4(Struct_1(620f, vec3<u32>(0u, 25090u, 4294967295u), false), vec2<f32>(104f, 442f), vec4<f32>(791f, 1031f, -456f, -1472f))), Struct_5(vec3<u32>(4294967295u, 1u, 1u), Struct_1(1371f, vec3<u32>(1u, 1u, 4294967295u), false), Struct_2(false, -1i), Struct_4(Struct_1(-141f, vec3<u32>(23329u, 56640u, 18949u), true), vec2<f32>(-229f, -1043f), vec4<f32>(489f, 625f, 493f, -2477f))), Struct_5(vec3<u32>(54311u, 53351u, 4294967295u), Struct_1(-811f, vec3<u32>(0u, 36657u, 0u), false), Struct_2(false, 1i), Struct_4(Struct_1(782f, vec3<u32>(53778u, 80858u, 5588u), false), vec2<f32>(789f, -413f), vec4<f32>(772f, -2071f, -984f, -1827f))), Struct_5(vec3<u32>(0u, 4294967295u, 18240u), Struct_1(-494f, vec3<u32>(0u, 56786u, 26866u), true), Struct_2(false, 1i), Struct_4(Struct_1(1000f, vec3<u32>(0u, 0u, 1u), true), vec2<f32>(-1326f, 1352f), vec4<f32>(1520f, 146f, -897f, 391f))), Struct_5(vec3<u32>(7190u, 24458u, 87644u), Struct_1(-865f, vec3<u32>(0u, 4294967295u, 22579u), true), Struct_2(false, 34292i), Struct_4(Struct_1(1000f, vec3<u32>(4294967295u, 0u, 4294967295u), false), vec2<f32>(539f, -1000f), vec4<f32>(996f, 137f, 782f, -1787f))), Struct_5(vec3<u32>(31378u, 4294967295u, 32966u), Struct_1(626f, vec3<u32>(4023u, 32840u, 51881u), false), Struct_2(true, 0i), Struct_4(Struct_1(944f, vec3<u32>(91635u, 39092u, 4294967295u), false), vec2<f32>(1561f, 1082f), vec4<f32>(-642f, 1214f, -1000f, 1944f))), Struct_5(vec3<u32>(1u, 3779u, 4294967295u), Struct_1(-1000f, vec3<u32>(57317u, 0u, 46920u), false), Struct_2(true, i32(-2147483648)), Struct_4(Struct_1(-744f, vec3<u32>(4894u, 56491u, 0u), false), vec2<f32>(1463f, -236f), vec4<f32>(-819f, 846f, -258f, 1063f))), Struct_5(vec3<u32>(7200u, 42699u, 1u), Struct_1(1299f, vec3<u32>(1u, 56698u, 2040u), true), Struct_2(false, 1i), Struct_4(Struct_1(-198f, vec3<u32>(47845u, 0u, 4294967295u), true), vec2<f32>(-431f, 416f), vec4<f32>(833f, -1000f, -896f, -1271f))), Struct_5(vec3<u32>(4294967295u, 46539u, 81848u), Struct_1(-2002f, vec3<u32>(77468u, 4294967295u, 20851u), false), Struct_2(false, -38019i), Struct_4(Struct_1(1313f, vec3<u32>(42581u, 45358u, 0u), false), vec2<f32>(850f, 859f), vec4<f32>(-997f, 1537f, -233f, 1452f))), Struct_5(vec3<u32>(9285u, 28587u, 9323u), Struct_1(1263f, vec3<u32>(0u, 18742u, 33068u), false), Struct_2(false, -6549i), Struct_4(Struct_1(552f, vec3<u32>(4294967295u, 0u, 4294967295u), false), vec2<f32>(1097f, 186f), vec4<f32>(-344f, -1567f, 1177f, 1780f))), Struct_5(vec3<u32>(4294967295u, 37767u, 0u), Struct_1(438f, vec3<u32>(0u, 0u, 1u), false), Struct_2(false, 7404i), Struct_4(Struct_1(-1963f, vec3<u32>(14778u, 4294967295u, 48558u), true), vec2<f32>(284f, 1178f), vec4<f32>(-848f, 1921f, 1622f, -802f))), Struct_5(vec3<u32>(47786u, 14499u, 15533u), Struct_1(-258f, vec3<u32>(45080u, 0u, 4294967295u), false), Struct_2(true, 89772i), Struct_4(Struct_1(1352f, vec3<u32>(0u, 0u, 16105u), true), vec2<f32>(-1000f, 119f), vec4<f32>(-254f, 870f, 509f, 471f))), Struct_5(vec3<u32>(24232u, 0u, 74900u), Struct_1(-2227f, vec3<u32>(26537u, 1u, 0u), true), Struct_2(false, -4791i), Struct_4(Struct_1(273f, vec3<u32>(0u, 71764u, 12214u), false), vec2<f32>(-1821f, 1782f), vec4<f32>(1222f, -301f, -337f, -165f))), Struct_5(vec3<u32>(14863u, 11941u, 40732u), Struct_1(776f, vec3<u32>(42051u, 6938u, 0u), false), Struct_2(true, -1i), Struct_4(Struct_1(415f, vec3<u32>(60768u, 4294967295u, 92972u), false), vec2<f32>(1315f, 651f), vec4<f32>(861f, -260f, -278f, 730f))), Struct_5(vec3<u32>(4294967295u, 1u, 1u), Struct_1(-275f, vec3<u32>(51010u, 5891u, 1u), false), Struct_2(true, -45408i), Struct_4(Struct_1(319f, vec3<u32>(24822u, 1u, 12352u), false), vec2<f32>(-296f, 434f), vec4<f32>(-471f, -635f, 1000f, 769f))), Struct_5(vec3<u32>(82790u, 1u, 119573u), Struct_1(-854f, vec3<u32>(0u, 4294967295u, 1u), false), Struct_2(true, 1i), Struct_4(Struct_1(-472f, vec3<u32>(1u, 60074u, 29701u), false), vec2<f32>(1176f, 175f), vec4<f32>(-720f, 1689f, -1532f, 1374f))));

var<private> global2: array<bool, 25> = array<bool, 25>(false, false, false, false, false, true, true, true, false, false, true, false, false, false, true, true, true, false, false, false, true, true, false, false, false);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> u32 {
    global0 = array<f32, 19>();
    global1 = array<Struct_5, 25>();
    global2 = array<bool, 25>();
    var var_0 = _wgslsmith_f_op_f32(round(117f));
    let var_1 = _wgslsmith_add_vec4_u32(~(vec4<u32>(~1u, 10883u | u_input.d, ~56322u, ~31939u) | u_input.a), ~vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.ywz, arg_2.b), u_input.a.xxw), _wgslsmith_mult_u32(~arg_2.b.x, select(0u, u_input.d, false)), 89800u, 41359u));
    return arg_1;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(select(all(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 25u)], false)) != any(!vec3<bool>(global2[_wgslsmith_index_u32(97358u, 25u)], false, false)), true, !global2[_wgslsmith_index_u32(0u, 25u)]), -1i);
    global1 = array<Struct_5, 25>();
    let var_1 = -_wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, 1i) ^ (i32(-1i) * -u_input.b.x), -44415i);
    global0 = array<f32, 19>();
    global1 = array<Struct_5, 25>();
    return func_3(global0[_wgslsmith_index_u32(u_input.d, 19u)], reverseBits(u_input.d), Struct_1(-314f, abs(vec3<u32>(~20505u, u_input.e, _wgslsmith_div_u32(u_input.a.x, 36278u))), !any(!vec2<bool>(var_0.a, var_0.a))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>) -> u32 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(44495u, arg_0.x), 25u)], u_input.c.x);
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d, func_2()), ~(~(~u_input.a.x))) << (u_input.e % 32u);
}

fn func_4(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(-982f, ~(~abs(u_input.a.zxw)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, arg_0), vec3<u32>(u_input.a.x, u_input.a.x, arg_0)), 25u)] & false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(11936u, 19u)], -1000f, false)) - global0[_wgslsmith_index_u32(~0u, 19u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(140f + global0[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.d, 19u)])), _wgslsmith_div_f32(406f, -2080f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e, 19u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(712f, 831f, global0[_wgslsmith_index_u32(arg_0, 19u)], -1266f) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(29307u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], -919f))))));
    let var_1 = var_0.a;
    var var_2 = var_1.b;
    global0 = array<f32, 19>();
    let var_3 = var_1.c;
    return Struct_1(_wgslsmith_f_op_f32(abs(var_0.b.x)), countOneBits(countOneBits(max(vec3<u32>(4294967295u, 38497u, u_input.a.x) ^ var_1.b, var_0.a.b))), any(!select(!vec3<bool>(var_1.c, global2[_wgslsmith_index_u32(u_input.e, 25u)], var_1.c), select(vec3<bool>(false, var_3, global2[_wgslsmith_index_u32(var_2.x, 25u)]), vec3<bool>(true, var_3, var_0.a.c), false), !vec3<bool>(var_3, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(u_input.c.x, abs(countOneBits(-2147483647i)), ~(~(-2147483647i)));
    global2 = array<bool, 25>();
    var_0 = _wgslsmith_div_vec3_i32(u_input.c.xxw, -u_input.c.zyx);
    let var_1 = Struct_5(countOneBits(vec3<u32>(u_input.d, ~u_input.a.x, _wgslsmith_sub_u32(~u_input.d, ~u_input.a.x))), func_4(_wgslsmith_mod_u32(u_input.d & u_input.e, u_input.d) << (func_1(vec2<u32>(37609u, u_input.d), _wgslsmith_div_vec4_f32(vec4<f32>(-763f, global0[_wgslsmith_index_u32(u_input.d, 19u)], -522f, -156f), vec4<f32>(-1366f, -241f, 1216f, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]))) % 32u)), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(), countOneBits(1u)), 25u)], 0i), Struct_4(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 19u)]))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.e), u_input.a.zzy, u_input.a.xzx), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1301f, global0[_wgslsmith_index_u32(u_input.e, 19u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1993f, global0[_wgslsmith_index_u32(6058u, 19u)])), -371f, 930f, _wgslsmith_f_op_f32(-504f - global0[_wgslsmith_index_u32(u_input.a.x, 19u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-603f, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(u_input.e, 19u)], global0[_wgslsmith_index_u32(u_input.e, 19u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(-38112i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -118f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global0[_wgslsmith_index_u32(4294967295u, 19u)]) - _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_1.a.x, 19u)], var_1.b.a))))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(49199u >> (_wgslsmith_mod_u32(var_1.b.b.x, 1u) % 32u), 19u)] - global0[_wgslsmith_index_u32(u_input.d, 19u)]), _wgslsmith_f_op_f32(f32(-1f) * -113f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-367f)), var_1.d.b.x))), countOneBits(-(u_input.c.xw & vec2<i32>(1i, var_1.c.b)) << (var_1.d.a.b.yx % vec2<u32>(32u))), vec2<f32>(-611f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.a))), _wgslsmith_div_f32(var_1.b.a, _wgslsmith_f_op_f32(-var_1.d.c.x)))));
}

