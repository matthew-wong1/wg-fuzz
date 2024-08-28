struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec3<f32>(-2178f, -1147f, -854f), vec3<i32>(-9012i, -17110i, -55971i), vec4<f32>(1476f, -905f, -708f, -994f), true, 2147483647i), Struct_1(vec3<f32>(2242f, 840f, 668f), vec3<i32>(1i, i32(-2147483648), 7554i), vec4<f32>(-1000f, -864f, -1013f, 2075f), false, -19962i), Struct_1(vec3<f32>(1307f, -1198f, -958f), vec3<i32>(1i, 8247i, 0i), vec4<f32>(724f, 225f, 1093f, -1000f), true, 1i), vec4<u32>(4294967295u, 46084u, 43997u, 1u)), Struct_2(Struct_1(vec3<f32>(303f, -827f, -564f), vec3<i32>(2147483647i, -1i, 16480i), vec4<f32>(-265f, -1778f, -386f, 982f), false, i32(-2147483648)), Struct_1(vec3<f32>(684f, 1706f, -2701f), vec3<i32>(1i, -33761i, 2147483647i), vec4<f32>(293f, -2154f, -936f, -1432f), true, 43651i), Struct_1(vec3<f32>(353f, -345f, 1262f), vec3<i32>(i32(-2147483648), 1i, -1i), vec4<f32>(-1471f, 880f, 1345f, -1512f), true, 22465i), vec4<u32>(81295u, 81461u, 33145u, 18905u)), Struct_2(Struct_1(vec3<f32>(956f, 723f, 781f), vec3<i32>(12358i, -19487i, -1i), vec4<f32>(-1000f, -762f, 168f, -121f), false, 1i), Struct_1(vec3<f32>(2434f, -369f, 483f), vec3<i32>(34259i, 2147483647i, -60397i), vec4<f32>(-1149f, 1019f, -324f, -2119f), false, 10909i), Struct_1(vec3<f32>(1352f, 633f, 407f), vec3<i32>(-31643i, 1i, -31827i), vec4<f32>(-740f, 1000f, -614f, 1566f), true, -1i), vec4<u32>(27465u, 9435u, 4294967295u, 12039u)), Struct_2(Struct_1(vec3<f32>(-1054f, -336f, 728f), vec3<i32>(14622i, 0i, -9786i), vec4<f32>(-1247f, -536f, -379f, -1000f), true, 5171i), Struct_1(vec3<f32>(136f, 187f, 390f), vec3<i32>(1i, 1i, 0i), vec4<f32>(-1131f, 1000f, -637f, -203f), false, -1i), Struct_1(vec3<f32>(-348f, -415f, 733f), vec3<i32>(2147483647i, 36826i, -2677i), vec4<f32>(1000f, -1361f, -462f, -1000f), false, 1i), vec4<u32>(27994u, 56664u, 0u, 1u)), Struct_2(Struct_1(vec3<f32>(2381f, 1000f, -480f), vec3<i32>(i32(-2147483648), 2576i, 1i), vec4<f32>(365f, -563f, -187f, -1000f), false, 2147483647i), Struct_1(vec3<f32>(522f, 414f, 193f), vec3<i32>(-16436i, -1i, 15229i), vec4<f32>(-587f, 1357f, -800f, 1650f), true, -50603i), Struct_1(vec3<f32>(1000f, 1355f, 544f), vec3<i32>(2147483647i, -1i, 4847i), vec4<f32>(1504f, 448f, 106f, 1506f), false, 75624i), vec4<u32>(37284u, 1u, 0u, 9218u)), Struct_2(Struct_1(vec3<f32>(390f, 198f, -948f), vec3<i32>(1i, -1i, 2147483647i), vec4<f32>(1627f, -1000f, 905f, -1951f), false, 0i), Struct_1(vec3<f32>(1879f, 1234f, -763f), vec3<i32>(2147483647i, -33302i, 2219i), vec4<f32>(723f, -1352f, 1458f, -1000f), false, -3709i), Struct_1(vec3<f32>(-319f, 707f, 450f), vec3<i32>(5643i, 1i, 0i), vec4<f32>(-664f, -1378f, -719f, -1240f), false, 1i), vec4<u32>(4294967295u, 0u, 18295u, 100861u)), Struct_2(Struct_1(vec3<f32>(-485f, 1062f, -2117f), vec3<i32>(-26132i, -1i, 2147483647i), vec4<f32>(-806f, 1868f, -1000f, 386f), true, -1i), Struct_1(vec3<f32>(-245f, -628f, -250f), vec3<i32>(-26951i, 2147483647i, 2147483647i), vec4<f32>(987f, -1563f, -627f, 309f), true, -953i), Struct_1(vec3<f32>(-798f, 100f, 746f), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec4<f32>(-889f, -186f, 278f, 965f), false, i32(-2147483648)), vec4<u32>(1u, 31327u, 4294967295u, 37901u)), Struct_2(Struct_1(vec3<f32>(-1800f, -526f, 1025f), vec3<i32>(1i, -13420i, 11829i), vec4<f32>(616f, 1341f, 352f, -556f), false, 8342i), Struct_1(vec3<f32>(3137f, 827f, 138f), vec3<i32>(6200i, -1i, -47134i), vec4<f32>(385f, -1393f, -1745f, 1763f), true, i32(-2147483648)), Struct_1(vec3<f32>(-1199f, -560f, 1570f), vec3<i32>(-1i, 1i, -32433i), vec4<f32>(-101f, -377f, 1309f, -1000f), false, 37844i), vec4<u32>(15911u, 0u, 53073u, 1u)), Struct_2(Struct_1(vec3<f32>(644f, 269f, -1000f), vec3<i32>(2147483647i, 22854i, 34247i), vec4<f32>(1606f, 705f, 2058f, -459f), true, -16887i), Struct_1(vec3<f32>(546f, 1578f, -1824f), vec3<i32>(-12082i, 17965i, 2147483647i), vec4<f32>(-1295f, 372f, 1002f, -678f), true, 0i), Struct_1(vec3<f32>(1000f, 754f, -1706f), vec3<i32>(-50703i, i32(-2147483648), -26148i), vec4<f32>(-1000f, 417f, -492f, 384f), true, -1i), vec4<u32>(10642u, 50396u, 5108u, 47182u)), Struct_2(Struct_1(vec3<f32>(185f, -208f, -1004f), vec3<i32>(17054i, 1i, -1i), vec4<f32>(-116f, 162f, 259f, -1894f), false, -1i), Struct_1(vec3<f32>(368f, -275f, -741f), vec3<i32>(0i, -1i, -9666i), vec4<f32>(182f, 104f, 453f, 446f), true, -6458i), Struct_1(vec3<f32>(2255f, 408f, 455f), vec3<i32>(-1i, 7455i, 27565i), vec4<f32>(1038f, 197f, 1642f, 1501f), false, 30650i), vec4<u32>(59462u, 1u, 26601u, 1u)), Struct_2(Struct_1(vec3<f32>(-642f, -1792f, -570f), vec3<i32>(i32(-2147483648), -33172i, -14159i), vec4<f32>(-243f, 246f, -833f, -601f), true, 0i), Struct_1(vec3<f32>(-935f, -573f, 1000f), vec3<i32>(28715i, -23829i, -23564i), vec4<f32>(744f, -920f, 671f, 1176f), true, 7930i), Struct_1(vec3<f32>(186f, 123f, -194f), vec3<i32>(1i, 57749i, -26220i), vec4<f32>(-815f, -237f, -730f, 1353f), false, i32(-2147483648)), vec4<u32>(46998u, 0u, 1u, 1u)), Struct_2(Struct_1(vec3<f32>(-1454f, 1340f, -134f), vec3<i32>(2147483647i, -26347i, 0i), vec4<f32>(-380f, -192f, 1098f, 575f), false, 1i), Struct_1(vec3<f32>(-104f, 341f, -636f), vec3<i32>(18837i, i32(-2147483648), i32(-2147483648)), vec4<f32>(1000f, 463f, 902f, -1216f), true, -17338i), Struct_1(vec3<f32>(2900f, -918f, 868f), vec3<i32>(-1i, 0i, -36999i), vec4<f32>(381f, 131f, 994f, -522f), true, 30933i), vec4<u32>(68667u, 31264u, 6696u, 1u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_3.c.wzy, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3.a.x, global0[_wgslsmith_index_u32(u_input.a, 31u)], arg_3.c.x)))), _wgslsmith_f_op_vec3_f32(-arg_3.c.zyy), any(select(vec2<bool>(false, true), vec2<bool>(false, arg_0.x), false)) && arg_3.d)));
    var var_1 = Struct_4(Struct_3(Struct_2(arg_3, Struct_1(var_0, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.e, 51880i, 1i), vec3<i32>(u_input.c.x, -9625i, 0i)), _wgslsmith_f_op_vec4_f32(round(arg_3.c)), arg_0.x & false, -2147483647i), arg_3, _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, u_input.a, 4294967295u), ~vec4<u32>(4294967295u, arg_1.x, arg_1.x, arg_1.x)))), vec4<bool>(select(true, any(select(vec4<bool>(true, arg_2, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(true, true, true, false))), false), true, true, arg_3.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 31u)]), _wgslsmith_div_f32(-197f, 687f), 687f)) * _wgslsmith_f_op_vec3_f32(floor(var_0))));
    global1 = array<Struct_2, 12>();
    global0 = array<f32, 31>();
    let var_2 = arg_3;
    return _wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.a.a.e, var_1.a.a.a.b.x, ~1i), -vec3<i32>(-15195i, -2147483647i >> ((u_input.a ^ u_input.a) % 32u), _wgslsmith_div_i32(arg_3.b.x, arg_3.e)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4) -> vec3<f32> {
    global1 = array<Struct_2, 12>();
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(1u, 12u)]);
    let var_1 = u_input.b.x;
    let var_2 = _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(-vec3<i32>(arg_2.a.a.b.e, -9300i, var_0.a.c.b.x), func_3(!arg_2.b.wyx, vec3<u32>(arg_1, arg_1, var_0.a.d.x), false, Struct_1(arg_2.a.a.b.c.zww, u_input.b.zyx, vec4<f32>(arg_0.c.x, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], var_0.a.b.a.x), true, arg_2.a.a.c.b.x))), ~arg_0.b);
    var_0 = arg_2.a;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1131f, _wgslsmith_f_op_f32(select(1000f, 499f, false)))) + -360f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.a.a.d.x, 20044u) & firstTrailingBit(4294967295u), 31u)]), _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -426f))) + _wgslsmith_f_op_vec3_f32(-arg_2.c));
}

fn func_1() -> vec3<f32> {
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    let var_0 = u_input.c;
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec3<f32>(-1488f, global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), var_0, vec4<f32>(1808f, -1000f, -1348f, -354f), true, u_input.d.x), 0u, Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(1254f, 1000f, 303f), u_input.b.www, vec4<f32>(-355f, 835f, -782f, 313f), false, u_input.b.x), Struct_1(vec3<f32>(-1428f, global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec3<i32>(-14893i, var_0.x, -2147483647i), vec4<f32>(-298f, 876f, global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)]), true, 22854i), Struct_1(vec3<f32>(-527f, 296f, 646f), var_0, vec4<f32>(1746f, global0[_wgslsmith_index_u32(u_input.a, 31u)], -1372f, 747f), false, -33211i), vec4<u32>(9336u, u_input.a, 4256u, 14779u))), vec4<bool>(true, true, false, false), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-445f, global0[_wgslsmith_index_u32(53949u, 31u)], -851f)), vec3<bool>(true, false, true)))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2614f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(187f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 31u)]) * -859f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(1736u, 31u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(~47026u, 31u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 31u)]), global0[_wgslsmith_index_u32(~29225u, 31u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], -813f, -1518f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], 142f, 1469f)))), true)), u_input.d, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1919f, -1488f, global0[_wgslsmith_index_u32(0u, 31u)], 1229f))))))), true, 15295i);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.xy) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1129f, _wgslsmith_f_op_vec3_f32(func_1()).x))))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 4294967295u);
}

