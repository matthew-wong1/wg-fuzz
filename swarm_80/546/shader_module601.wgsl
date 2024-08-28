struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16>;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(-36927i, Struct_1(-1000f, 30078u, false, vec3<f32>(574f, 292f, 858f), vec3<bool>(true, true, false)), 63484u, Struct_1(110f, 67706u, false, vec3<f32>(668f, -1251f, -930f), vec3<bool>(true, false, true)), vec4<bool>(true, false, true, true)), Struct_2(i32(-2147483648), Struct_1(503f, 15798u, true, vec3<f32>(1907f, 537f, -219f), vec3<bool>(false, false, false)), 4294967295u, Struct_1(1284f, 1u, true, vec3<f32>(984f, -689f, -1142f), vec3<bool>(true, false, false)), vec4<bool>(false, false, true, false)), Struct_2(23785i, Struct_1(-562f, 4294967295u, true, vec3<f32>(849f, -841f, 518f), vec3<bool>(true, false, false)), 48573u, Struct_1(-1000f, 20159u, false, vec3<f32>(-1015f, -1000f, -949f), vec3<bool>(false, false, true)), vec4<bool>(false, false, true, false)), Struct_2(1i, Struct_1(1000f, 1u, true, vec3<f32>(1112f, -642f, 869f), vec3<bool>(true, false, false)), 60308u, Struct_1(-1191f, 0u, true, vec3<f32>(-1000f, -312f, -330f), vec3<bool>(true, true, true)), vec4<bool>(false, true, false, true)), Struct_2(21662i, Struct_1(2150f, 1u, false, vec3<f32>(464f, 146f, 467f), vec3<bool>(true, true, true)), 17094u, Struct_1(-1000f, 1u, true, vec3<f32>(642f, -947f, -1941f), vec3<bool>(true, true, false)), vec4<bool>(true, true, false, true)), Struct_2(1i, Struct_1(-2217f, 4294967295u, true, vec3<f32>(399f, -1000f, 935f), vec3<bool>(false, true, true)), 50113u, Struct_1(487f, 44835u, false, vec3<f32>(1176f, -560f, 557f), vec3<bool>(true, false, true)), vec4<bool>(true, false, true, false)), Struct_2(-45099i, Struct_1(1231f, 0u, true, vec3<f32>(1000f, -102f, 2522f), vec3<bool>(false, false, false)), 4294967295u, Struct_1(-122f, 42759u, true, vec3<f32>(629f, 606f, -265f), vec3<bool>(false, false, false)), vec4<bool>(false, true, false, true)), Struct_2(-1i, Struct_1(327f, 0u, false, vec3<f32>(-288f, -437f, 1587f), vec3<bool>(true, true, true)), 1u, Struct_1(-1715f, 28876u, false, vec3<f32>(424f, 420f, 1505f), vec3<bool>(true, true, false)), vec4<bool>(false, true, true, true)), Struct_2(20461i, Struct_1(-124f, 0u, true, vec3<f32>(2488f, 487f, 1078f), vec3<bool>(false, false, false)), 4294967295u, Struct_1(-995f, 0u, false, vec3<f32>(-1017f, 1729f, 384f), vec3<bool>(true, true, false)), vec4<bool>(true, true, false, true)), Struct_2(1i, Struct_1(334f, 99063u, true, vec3<f32>(-704f, -1135f, -757f), vec3<bool>(true, false, false)), 13467u, Struct_1(1317f, 21478u, true, vec3<f32>(644f, 933f, -1000f), vec3<bool>(true, true, false)), vec4<bool>(true, false, true, false)), Struct_2(-24704i, Struct_1(487f, 48171u, true, vec3<f32>(-421f, -560f, 771f), vec3<bool>(true, false, false)), 11145u, Struct_1(-258f, 0u, false, vec3<f32>(-1000f, 681f, 1829f), vec3<bool>(false, false, true)), vec4<bool>(false, false, true, false)), Struct_2(45701i, Struct_1(377f, 1u, true, vec3<f32>(-585f, 415f, -380f), vec3<bool>(true, false, false)), 44292u, Struct_1(-151f, 1u, false, vec3<f32>(1202f, 543f, -878f), vec3<bool>(true, true, true)), vec4<bool>(false, false, true, false)), Struct_2(2147483647i, Struct_1(-1599f, 828u, true, vec3<f32>(-525f, -1985f, -362f), vec3<bool>(false, false, true)), 35532u, Struct_1(1341f, 4294967295u, true, vec3<f32>(-1808f, 1238f, 401f), vec3<bool>(false, true, true)), vec4<bool>(false, false, false, false)), Struct_2(1i, Struct_1(-521f, 0u, false, vec3<f32>(-286f, -542f, -3013f), vec3<bool>(true, true, false)), 4294967295u, Struct_1(1008f, 0u, false, vec3<f32>(684f, 457f, -984f), vec3<bool>(true, false, false)), vec4<bool>(true, true, false, true)), Struct_2(-3706i, Struct_1(862f, 10113u, false, vec3<f32>(132f, -909f, 973f), vec3<bool>(true, true, false)), 34428u, Struct_1(1219f, 29247u, true, vec3<f32>(-1011f, 706f, -739f), vec3<bool>(false, false, false)), vec4<bool>(true, false, false, true)), Struct_2(-1i, Struct_1(-913f, 4294967295u, true, vec3<f32>(-2265f, 1306f, -107f), vec3<bool>(true, false, true)), 8646u, Struct_1(-631f, 10137u, false, vec3<f32>(979f, 352f, 972f), vec3<bool>(false, true, true)), vec4<bool>(true, false, false, true)), Struct_2(70461i, Struct_1(721f, 0u, false, vec3<f32>(342f, 855f, -1076f), vec3<bool>(false, true, true)), 3877u, Struct_1(-313f, 38655u, false, vec3<f32>(-1686f, -550f, 958f), vec3<bool>(true, true, false)), vec4<bool>(false, false, true, true)), Struct_2(52678i, Struct_1(-2024f, 1u, true, vec3<f32>(637f, 696f, 1051f), vec3<bool>(false, false, false)), 1u, Struct_1(-606f, 4294967295u, true, vec3<f32>(974f, -271f, 935f), vec3<bool>(false, false, false)), vec4<bool>(true, true, false, false)), Struct_2(-1i, Struct_1(178f, 1u, true, vec3<f32>(-412f, 247f, 1623f), vec3<bool>(false, false, true)), 3459u, Struct_1(314f, 1u, false, vec3<f32>(1373f, -692f, 531f), vec3<bool>(false, true, false)), vec4<bool>(true, false, false, true)), Struct_2(-14i, Struct_1(-321f, 73132u, true, vec3<f32>(325f, 1427f, -125f), vec3<bool>(true, false, false)), 4294967295u, Struct_1(1651f, 4294967295u, false, vec3<f32>(-1098f, 1802f, 376f), vec3<bool>(false, true, false)), vec4<bool>(false, true, false, false)), Struct_2(0i, Struct_1(176f, 19432u, true, vec3<f32>(379f, -1114f, -1470f), vec3<bool>(true, false, false)), 2844u, Struct_1(428f, 55673u, true, vec3<f32>(-1903f, -2148f, -1000f), vec3<bool>(false, false, false)), vec4<bool>(false, false, true, false)), Struct_2(64547i, Struct_1(1426f, 13801u, false, vec3<f32>(700f, 242f, 399f), vec3<bool>(false, false, false)), 18643u, Struct_1(190f, 4294967295u, false, vec3<f32>(-636f, -136f, -152f), vec3<bool>(false, false, true)), vec4<bool>(true, false, true, true)), Struct_2(41066i, Struct_1(-1000f, 5046u, false, vec3<f32>(1729f, -164f, -1648f), vec3<bool>(false, true, false)), 4294967295u, Struct_1(760f, 4294967295u, true, vec3<f32>(-470f, 1405f, 735f), vec3<bool>(true, true, false)), vec4<bool>(true, true, false, true)), Struct_2(2147483647i, Struct_1(1050f, 43637u, false, vec3<f32>(-499f, 214f, -579f), vec3<bool>(true, true, true)), 43100u, Struct_1(-222f, 40645u, true, vec3<f32>(1732f, -1566f, 1112f), vec3<bool>(false, true, false)), vec4<bool>(false, true, false, true)));

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(803f, 25010u, false, vec3<f32>(-651f, 685f, -351f), vec3<bool>(true, true, true)), Struct_1(-1000f, 4294967295u, true, vec3<f32>(-560f, -1753f, 445f), vec3<bool>(false, false, false)), Struct_1(1068f, 1u, false, vec3<f32>(1057f, 239f, -1000f), vec3<bool>(false, true, true)), Struct_1(1085f, 0u, true, vec3<f32>(-698f, 406f, 129f), vec3<bool>(false, false, false)), Struct_1(-282f, 1u, false, vec3<f32>(1285f, -506f, 248f), vec3<bool>(false, true, false)), Struct_1(-291f, 4770u, false, vec3<f32>(-387f, -641f, -204f), vec3<bool>(false, false, false)), Struct_1(1892f, 0u, true, vec3<f32>(594f, -817f, -2661f), vec3<bool>(true, true, false)), Struct_1(-1236f, 0u, false, vec3<f32>(-846f, 538f, 2322f), vec3<bool>(true, false, true)), Struct_1(-1000f, 2747u, false, vec3<f32>(-358f, -235f, 619f), vec3<bool>(true, false, false)), Struct_1(-1318f, 4294967295u, true, vec3<f32>(923f, -854f, -1171f), vec3<bool>(true, true, false)), Struct_1(997f, 0u, false, vec3<f32>(-366f, -2253f, 928f), vec3<bool>(false, true, false)), Struct_1(-671f, 17923u, true, vec3<f32>(-849f, -1000f, 753f), vec3<bool>(true, false, false)), Struct_1(-993f, 0u, false, vec3<f32>(538f, -1510f, -393f), vec3<bool>(true, true, false)), Struct_1(-206f, 35618u, false, vec3<f32>(1109f, 758f, 809f), vec3<bool>(true, true, false)), Struct_1(-647f, 13155u, true, vec3<f32>(-477f, 632f, -985f), vec3<bool>(false, true, true)), Struct_1(846f, 22228u, false, vec3<f32>(1000f, -1689f, 1601f), vec3<bool>(true, false, true)), Struct_1(-369f, 1u, true, vec3<f32>(823f, 1387f, 1363f), vec3<bool>(true, false, false)), Struct_1(-733f, 1u, false, vec3<f32>(1000f, 1240f, -1675f), vec3<bool>(true, false, true)), Struct_1(-222f, 1u, true, vec3<f32>(881f, -1000f, 1497f), vec3<bool>(false, true, true)), Struct_1(-240f, 32544u, true, vec3<f32>(685f, 321f, -628f), vec3<bool>(false, true, true)), Struct_1(416f, 1u, true, vec3<f32>(-1950f, 291f, 254f), vec3<bool>(true, false, false)));

var<private> global3: Struct_1 = Struct_1(904f, 4294967295u, false, vec3<f32>(-114f, 1066f, 592f), vec3<bool>(true, false, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1907f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))))) - global3.a);
    global2 = array<Struct_1, 21>();
    return arg_1;
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 21>();
    let var_0 = 0i;
    var var_1 = vec3<u32>(_wgslsmith_add_u32(func_3(var_0, ~u_input.a | (u_input.a | 1u), Struct_2(1i, Struct_1(-1560f, 46723u, global3.c, global3.d, global3.e), ~9701u, Struct_1(global3.a, global3.b, global3.e.x, vec3<f32>(global3.a, global3.d.x, 340f), global3.e), !global0[_wgslsmith_index_u32(25918u, 16u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, -429f, 397f, global3.d.x))), global3.b), func_3(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, var_0), abs(~vec2<i32>(var_0, -72760i))), u_input.a, Struct_2(-40084i, global2[_wgslsmith_index_u32(u_input.a, 21u)], 63764u, Struct_1(-248f, _wgslsmith_mod_u32(u_input.a, 0u), all(global0[_wgslsmith_index_u32(global3.b, 16u)]), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(920f, global3.d.x, -389f), vec3<f32>(-1135f, global3.a, 1501f), global3.e)), global3.e), global0[_wgslsmith_index_u32(~(~global3.b), 16u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, 1861f, global3.a, 262f) - vec4<f32>(-1595f, -1820f, global3.d.x, global3.a)), vec4<f32>(-508f, -1971f, 640f, -1441f))))), 4294967295u);
    global0 = array<vec4<bool>, 16>();
    return Struct_1(2153f, reverseBits(_wgslsmith_mod_u32(4294967295u, ~var_1.x | global3.b)), any(vec4<bool>(-980f >= global3.d.x, select(false, false, false), global3.a <= global3.d.x, false)) | global3.e.x, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-180f - global3.a) + -2331f), _wgslsmith_f_op_f32(global3.a + global3.a)), _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(select(global3.d.x, global3.a, global3.e.x))), !select(vec3<bool>(global3.e.x, false, true), global3.e, any(select(vec3<bool>(global3.c, global3.c, global3.c), global3.e, vec3<bool>(true, global3.c, global3.c)))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-419f, global3.a) + global3.d.yy)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.d.yx * vec2<f32>(-1524f, -1000f)))), global3.d.yy));
    global2 = array<Struct_1, 21>();
    global0 = array<vec4<bool>, 16>();
    global3 = Struct_1(_wgslsmith_f_op_f32(abs(-384f)), global3.b, true, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + global3.a), global3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f) * global3.a)), global3.e);
    let var_1 = global2[_wgslsmith_index_u32(u_input.a, 21u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~4294967295u, 21u)];
    var var_1 = func_1();
    var var_2 = var_0.d.x;
    var_1 = func_1();
    var var_3 = func_1();
    global0 = array<vec4<bool>, 16>();
    let var_4 = select(abs(vec4<i32>(-15297i, ~(-30396i), -1i, i32(-1i) * -1i) ^ vec4<i32>(_wgslsmith_clamp_i32(-40892i, -2147483647i, 1i), _wgslsmith_mod_i32(-1i, 2147483647i), -5320i, _wgslsmith_add_i32(-44978i, 462i))), min(vec4<i32>(min(-2147483647i, _wgslsmith_clamp_i32(0i, 20706i, 13575i)), -(29325i << (var_1.b % 32u)), abs(abs(7261i)), -6756i), vec4<i32>(1i, 1i, 1i, 1i)), !var_0.c);
    let var_5 = Struct_2(~var_4.x, global2[_wgslsmith_index_u32(var_0.b, 21u)], ~var_0.b, Struct_1(-1000f, var_1.b, (~0u >= var_1.b) || all(!global3.e), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, global3.d.x, var_0.a)))))), !func_1().e), global0[_wgslsmith_index_u32(abs(1791u), 16u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_5.c, 59053u), ~firstLeadingBit(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b, var_3.b, var_0.b), vec3<u32>(var_5.d.b, 0u, 27850u)))), _wgslsmith_mult_vec2_u32(vec2<u32>(21010u, var_5.b.b), vec2<u32>(~_wgslsmith_sub_u32(1u, var_1.b), abs(~var_3.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.a * var_0.d.x), _wgslsmith_f_op_f32(ceil(var_0.d.x)), -783f, 319f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(817f, -144f, var_3.a, 1438f)))))));
}

