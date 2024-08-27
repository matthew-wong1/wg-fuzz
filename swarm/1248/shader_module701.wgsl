struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(Struct_2(false, 196f, vec2<f32>(-400f, 1584f), vec3<u32>(0u, 4294967295u, 7725u), 1000f), Struct_2(true, -115f, vec2<f32>(-705f, 367f), vec3<u32>(18398u, 1u, 4294967295u), 747f), false), Struct_5(Struct_2(false, 1000f, vec2<f32>(-1345f, 785f), vec3<u32>(4294967295u, 27844u, 1u), -723f), Struct_2(true, 902f, vec2<f32>(907f, 1321f), vec3<u32>(59312u, 3547u, 1u), 496f), false), Struct_5(Struct_2(false, 658f, vec2<f32>(-1268f, -2056f), vec3<u32>(50165u, 102113u, 17092u), -364f), Struct_2(true, 462f, vec2<f32>(-1000f, 508f), vec3<u32>(43205u, 4294967295u, 0u), 537f), true), Struct_5(Struct_2(true, -1000f, vec2<f32>(1171f, 768f), vec3<u32>(0u, 4294967295u, 27280u), 633f), Struct_2(false, -683f, vec2<f32>(-1312f, 1027f), vec3<u32>(0u, 33576u, 17928u), -274f), true), Struct_5(Struct_2(true, -981f, vec2<f32>(-804f, -1227f), vec3<u32>(0u, 1u, 4294967295u), -573f), Struct_2(true, 419f, vec2<f32>(173f, -1576f), vec3<u32>(23697u, 30396u, 1u), -1000f), false), Struct_5(Struct_2(true, 375f, vec2<f32>(-1097f, 263f), vec3<u32>(1u, 8093u, 33659u), -703f), Struct_2(true, -302f, vec2<f32>(-1000f, 1060f), vec3<u32>(0u, 4294967295u, 19135u), 542f), false), Struct_5(Struct_2(true, -1342f, vec2<f32>(-234f, 898f), vec3<u32>(4294967295u, 40099u, 4294967295u), 1000f), Struct_2(false, 1266f, vec2<f32>(-1034f, -1618f), vec3<u32>(111879u, 0u, 50801u), -257f), true), Struct_5(Struct_2(true, 1258f, vec2<f32>(2242f, 149f), vec3<u32>(14752u, 76345u, 1u), 202f), Struct_2(false, -101f, vec2<f32>(1669f, 755f), vec3<u32>(1u, 59322u, 1u), -1095f), false), Struct_5(Struct_2(true, 378f, vec2<f32>(-947f, -914f), vec3<u32>(0u, 47772u, 34030u), -1392f), Struct_2(true, -740f, vec2<f32>(1853f, -283f), vec3<u32>(19121u, 27596u, 57349u), -227f), true), Struct_5(Struct_2(false, 1030f, vec2<f32>(-433f, 1000f), vec3<u32>(4294967295u, 0u, 0u), 1520f), Struct_2(true, -287f, vec2<f32>(-1389f, -1356f), vec3<u32>(0u, 1u, 36561u), -810f), true), Struct_5(Struct_2(false, -240f, vec2<f32>(1249f, 2429f), vec3<u32>(4294967295u, 98258u, 4294967295u), -1414f), Struct_2(false, -830f, vec2<f32>(-176f, -268f), vec3<u32>(1u, 0u, 4294967295u), 2196f), false), Struct_5(Struct_2(true, -923f, vec2<f32>(900f, -370f), vec3<u32>(0u, 35906u, 0u), 1000f), Struct_2(false, -350f, vec2<f32>(438f, 1247f), vec3<u32>(44470u, 4294967295u, 0u), -132f), false), Struct_5(Struct_2(true, 139f, vec2<f32>(-1000f, -309f), vec3<u32>(10328u, 25935u, 1u), -2226f), Struct_2(true, -509f, vec2<f32>(-875f, 1379f), vec3<u32>(4294967295u, 57724u, 0u), -112f), false), Struct_5(Struct_2(false, 1060f, vec2<f32>(1000f, -1000f), vec3<u32>(4542u, 38016u, 4294967295u), 1000f), Struct_2(true, 935f, vec2<f32>(-1000f, 930f), vec3<u32>(40310u, 0u, 4294967295u), -207f), false), Struct_5(Struct_2(true, 1000f, vec2<f32>(418f, 1000f), vec3<u32>(1u, 60627u, 29206u), -238f), Struct_2(true, 1617f, vec2<f32>(1222f, -1000f), vec3<u32>(1u, 24342u, 4294967295u), 648f), false), Struct_5(Struct_2(false, -795f, vec2<f32>(-326f, -443f), vec3<u32>(34124u, 766u, 0u), -199f), Struct_2(false, 510f, vec2<f32>(-415f, 590f), vec3<u32>(10632u, 0u, 43368u), 646f), true), Struct_5(Struct_2(false, -957f, vec2<f32>(814f, -1914f), vec3<u32>(15845u, 4294967295u, 0u), 704f), Struct_2(true, -1000f, vec2<f32>(-1000f, 411f), vec3<u32>(1u, 9450u, 1u), 835f), false), Struct_5(Struct_2(true, 1152f, vec2<f32>(448f, 641f), vec3<u32>(81350u, 1u, 4294967295u), -956f), Struct_2(true, -356f, vec2<f32>(-1202f, 436f), vec3<u32>(5408u, 1u, 0u), 595f), false), Struct_5(Struct_2(false, -1829f, vec2<f32>(-679f, -880f), vec3<u32>(1u, 4294967295u, 8740u), -999f), Struct_2(false, 2055f, vec2<f32>(-631f, -775f), vec3<u32>(0u, 60757u, 0u), -294f), false), Struct_5(Struct_2(true, -1781f, vec2<f32>(-956f, -2640f), vec3<u32>(1u, 9411u, 4294967295u), 1000f), Struct_2(false, 450f, vec2<f32>(1150f, 2000f), vec3<u32>(4232u, 1u, 0u), 1000f), true), Struct_5(Struct_2(true, -404f, vec2<f32>(887f, -116f), vec3<u32>(1u, 4294967295u, 4294967295u), 1666f), Struct_2(false, 262f, vec2<f32>(-1514f, -256f), vec3<u32>(4294967295u, 4294967295u, 50957u), 404f), false), Struct_5(Struct_2(true, 125f, vec2<f32>(666f, 341f), vec3<u32>(0u, 2986u, 4294967295u), 699f), Struct_2(false, 148f, vec2<f32>(-1000f, 663f), vec3<u32>(1u, 1u, 54989u), 584f), true), Struct_5(Struct_2(false, 176f, vec2<f32>(1000f, 881f), vec3<u32>(0u, 4294967295u, 72148u), 147f), Struct_2(true, 360f, vec2<f32>(-832f, -1000f), vec3<u32>(0u, 0u, 1u), 1254f), true), Struct_5(Struct_2(false, 800f, vec2<f32>(703f, -298f), vec3<u32>(16874u, 0u, 1u), 1023f), Struct_2(true, -1000f, vec2<f32>(442f, -757f), vec3<u32>(4294967295u, 33073u, 4294967295u), 1073f), true), Struct_5(Struct_2(true, -1000f, vec2<f32>(-1000f, -1000f), vec3<u32>(4294967295u, 1u, 4294967295u), -1271f), Struct_2(true, 359f, vec2<f32>(1774f, -1034f), vec3<u32>(103743u, 4294967295u, 59940u), 275f), true), Struct_5(Struct_2(true, -434f, vec2<f32>(-960f, 761f), vec3<u32>(24850u, 92700u, 0u), -1000f), Struct_2(false, -765f, vec2<f32>(616f, -1000f), vec3<u32>(1u, 0u, 72483u), -918f), false), Struct_5(Struct_2(false, -717f, vec2<f32>(1164f, -302f), vec3<u32>(24715u, 4294967295u, 49515u), 923f), Struct_2(true, 936f, vec2<f32>(1000f, 1087f), vec3<u32>(4294967295u, 0u, 23699u), -587f), true), Struct_5(Struct_2(false, 356f, vec2<f32>(1059f, -375f), vec3<u32>(50675u, 52135u, 3894u), 953f), Struct_2(true, 2122f, vec2<f32>(1874f, 2393f), vec3<u32>(5882u, 4294967295u, 4294967295u), 1156f), true), Struct_5(Struct_2(true, 139f, vec2<f32>(-1255f, -1444f), vec3<u32>(4294967295u, 1u, 1722u), 924f), Struct_2(false, 473f, vec2<f32>(1000f, 1000f), vec3<u32>(51698u, 835u, 24999u), -677f), true), Struct_5(Struct_2(true, 223f, vec2<f32>(-800f, 1282f), vec3<u32>(11461u, 1875u, 1u), -1760f), Struct_2(true, 1000f, vec2<f32>(-640f, 1297f), vec3<u32>(0u, 4294967295u, 74790u), 577f), true));

var<private> global1: Struct_3 = Struct_3(Struct_2(false, 1540f, vec2<f32>(588f, -1000f), vec3<u32>(0u, 4294967295u, 1u), 709f), -307f, Struct_2(false, 163f, vec2<f32>(764f, 201f), vec3<u32>(1u, 17648u, 17286u), 1089f));

var<private> global2: array<Struct_4, 1>;

var<private> global3: Struct_1;

var<private> global4: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(true, -683f, vec2<f32>(-661f, -741f), vec3<u32>(42970u, 63483u, 104417u), 757f), Struct_2(true, -202f, vec2<f32>(3310f, 1000f), vec3<u32>(0u, 4294967295u, 86838u), -783f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> i32 {
    global3 = Struct_1(firstTrailingBit(2147483647i), _wgslsmith_add_u32(abs(~0u), _wgslsmith_mult_u32(~0u | _wgslsmith_clamp_u32(59313u, u_input.b, global1.a.d.x), ~abs(global3.b))), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-14495i, -u_input.e.x), _wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_div_i32(u_input.c, u_input.e.x))), ~(~(~62159i))));
    let var_0 = -16069i;
    global3 = Struct_1(u_input.c, _wgslsmith_sub_u32(_wgslsmith_mod_u32(global3.b, 0u) & global1.a.d.x, ~63205u), u_input.c);
    global4 = array<Struct_2, 2>();
    let var_1 = Struct_3(Struct_2(!(!global1.a.a != true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.e)) * global1.a.b), global1.c.c, max(select(~global1.a.d, vec3<u32>(global3.b, 70993u, 6307u), !vec3<bool>(false, global1.a.a, true)), _wgslsmith_mod_vec3_u32(~global1.c.d, select(global1.c.d, global1.c.d, global1.c.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(587f, _wgslsmith_f_op_f32(439f * global1.a.e))))), 1089f, Struct_2(true, -523f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * -1894f), _wgslsmith_f_op_f32(floor(506f))), vec2<f32>(_wgslsmith_f_op_f32(-1000f + 1098f), _wgslsmith_f_op_f32(ceil(global1.a.c.x))), global1.a.a)), vec3<u32>(~14454u, u_input.d, abs(u_input.b) << (max(global3.b, 4294967295u) % 32u)), -1684f));
    return select(25078i, select(-1i, var_0, any(select(vec2<bool>(global1.a.a, var_1.c.a), vec2<bool>(true, false), vec2<bool>(var_1.c.a, global1.c.a))) && false), -_wgslsmith_dot_vec2_i32(~u_input.e, vec2<i32>(0i, -15948i)) == 0i);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(~(~5890u), global1.c.d.x) | global1.a.d.x;
    global3 = Struct_1(func_3(global1.c.b) ^ 1i, u_input.a, _wgslsmith_clamp_i32(0i, ~_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c, global3.a), u_input.c), -1i | ~(~u_input.c)));
    let var_1 = Struct_4(Struct_3(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(181f, _wgslsmith_f_op_f32(-global1.b)))), global4[_wgslsmith_index_u32(~(~abs(var_0)), 2u)]), global1.c.d.zz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1088f, _wgslsmith_div_f32(global1.c.e, 1426f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-904f)), _wgslsmith_f_op_f32(f32(-1f) * -475f))))));
    let var_2 = 100011u;
    let var_3 = var_1;
    return Struct_1(~(-1i), var_1.b.x, ~u_input.e.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> u32 {
    global4 = array<Struct_2, 2>();
    global1 = Struct_3(global4[_wgslsmith_index_u32(global1.c.d.x, 2u)], _wgslsmith_f_op_f32(arg_0.e * 615f), Struct_2(all(select(!vec2<bool>(true, global1.c.a), vec2<bool>(true, arg_0.a), !vec2<bool>(global1.c.a, global1.c.a))), arg_0.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(557f, arg_0.e))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e, -696f) + _wgslsmith_f_op_vec2_f32(global1.a.c + arg_0.c))), _wgslsmith_mult_vec3_u32(arg_0.d, countOneBits(vec3<u32>(arg_1.b, 0u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -896f))));
    global4 = array<Struct_2, 2>();
    global4 = array<Struct_2, 2>();
    var var_0 = arg_2;
    return countOneBits(_wgslsmith_div_u32(global3.b, 1u));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: vec4<bool>) -> vec3<u32> {
    var var_0 = Struct_1(2147483647i, _wgslsmith_div_u32(_wgslsmith_sub_u32(~(~u_input.d), 1u), ~func_4(Struct_2(false, 1504f, vec2<f32>(arg_2.x, 1000f), arg_1.a.a.d, 780f), func_2(), arg_1.b.x)), u_input.e.x);
    global4 = array<Struct_2, 2>();
    let var_1 = arg_1.a;
    var var_2 = arg_2;
    let var_3 = true;
    return vec3<u32>((select(global1.a.d.x, 19536u & var_0.b, global1.c.a) >> (countOneBits(~u_input.a) % 32u)) & arg_0.x, select(max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.x, 0u) ^ vec3<u32>(29610u, 24503u, arg_0.x), vec3<u32>(var_1.c.d.x, 0u, 6851u))), firstLeadingBit(1u), !(!var_1.c.a)), 4954u);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<i32>) -> bool {
    global2 = array<Struct_4, 1>();
    global4 = array<Struct_2, 2>();
    let var_0 = global1.c.d.zy;
    var var_1 = 4294967295u;
    var var_2 = global1.a.a;
    return global1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 1>();
    var var_0 = vec2<i32>(abs(~(-_wgslsmith_mod_i32(u_input.c, u_input.c))), countOneBits(global3.c));
    let var_1 = !func_5(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(41074u, 0u, 5227u), global1.c.d), func_1(global1.c.d, Struct_4(Struct_3(global4[_wgslsmith_index_u32(u_input.d, 2u)], global1.c.e, Struct_2(global1.c.a, 560f, global1.a.c, vec3<u32>(78314u, 4294967295u, global3.b), 141f)), vec2<u32>(45588u, 0u), vec3<f32>(1000f, -432f, -103f)), vec4<f32>(global1.a.e, global1.b, global1.a.e, 559f), vec4<bool>(global1.c.a, global1.c.a, global1.c.a, true))), 1u), 2u)], vec4<u32>(~1u, 0u, global1.c.d.x, global3.b), _wgslsmith_mod_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 2147483647i, global3.a, 0i), vec4<i32>(var_0.x, u_input.e.x, -1i, -1i), vec4<i32>(var_0.x, u_input.c, 50159i, global3.a))), abs(-vec4<i32>(-1i, var_0.x, 2147483647i, 1i))));
    let var_2 = Struct_4(Struct_3(Struct_2(any(vec3<bool>(true, var_1, true)), _wgslsmith_f_op_f32(step(-778f, -1000f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1.c.c - vec2<f32>(901f, -1254f)), _wgslsmith_f_op_vec2_f32(-global1.c.c))), _wgslsmith_div_vec3_u32(func_1(global1.a.d, global2[_wgslsmith_index_u32(4294967295u, 1u)], vec4<f32>(global1.b, -1364f, 992f, global1.a.e), vec4<bool>(false, global1.c.a, true, global1.c.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global3.b, global1.a.d.x), global1.a.d)), _wgslsmith_f_op_f32(trunc(global1.a.e))), 203f, global4[_wgslsmith_index_u32(~func_2().b, 2u)]), global1.a.d.yy, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global1.c.c.x, _wgslsmith_f_op_f32(sign(1618f)), _wgslsmith_f_op_f32(-290f * -134f)), vec3<f32>(_wgslsmith_f_op_f32(global1.c.b * 184f), _wgslsmith_f_op_f32(-global1.b), global1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(981f, global1.c.b, global1.a.c.x))) - vec3<f32>(global1.a.b, _wgslsmith_f_op_f32(global1.a.b + global1.b), -640f)))));
    var var_3 = global4[_wgslsmith_index_u32(global1.a.d.x, 2u)];
    global3 = func_2();
    global1 = var_2.a;
    let var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(select(1u, 58604u, global3.c <= global3.c));
}

