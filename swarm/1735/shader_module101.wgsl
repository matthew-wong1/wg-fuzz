struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(-102f, 143f, -2341f, 524f), vec4<f32>(981f, 1020f, -1321f, 1100f), vec4<f32>(-712f, 799f, 632f, -1021f), vec4<f32>(403f, -1031f, 308f, 1068f), vec4<f32>(1820f, -1458f, -134f, 162f), vec4<f32>(1305f, 171f, -199f, 608f), vec4<f32>(1000f, 1000f, 1075f, -1468f), vec4<f32>(397f, 1000f, -528f, -1185f), vec4<f32>(986f, -895f, -1232f, -1693f), vec4<f32>(593f, -277f, 1727f, -583f), vec4<f32>(514f, 158f, -552f, -769f), vec4<f32>(919f, 1578f, -368f, 1170f), vec4<f32>(-1084f, -562f, 1288f, 999f), vec4<f32>(926f, -590f, -1236f, -1240f), vec4<f32>(1088f, -916f, -1000f, -1000f), vec4<f32>(-883f, 1272f, 2878f, -201f), vec4<f32>(127f, -1512f, -941f, 641f), vec4<f32>(-1535f, -1169f, 2159f, 1141f), vec4<f32>(-532f, -347f, -783f, 974f), vec4<f32>(-1740f, 181f, -358f, -237f), vec4<f32>(1679f, -1286f, 1649f, 1553f), vec4<f32>(-559f, -270f, -1533f, 558f), vec4<f32>(-159f, 1442f, 1003f, -652f), vec4<f32>(884f, -950f, -1682f, -747f), vec4<f32>(2033f, 1147f, -1000f, -425f), vec4<f32>(1000f, 518f, -404f, -1318f), vec4<f32>(722f, -914f, -431f, 1095f), vec4<f32>(-1134f, 707f, -514f, -370f), vec4<f32>(-1323f, 1500f, 660f, -1402f), vec4<f32>(301f, 1696f, 1000f, 964f), vec4<f32>(-1611f, 273f, -906f, 136f), vec4<f32>(-636f, -363f, -1000f, 2025f));

var<private> global1: array<u32, 17> = array<u32, 17>(27380u, 31049u, 4294967295u, 10593u, 53338u, 1u, 27967u, 4294967295u, 1u, 1u, 33286u, 30038u, 21176u, 4294967295u, 87633u, 1u, 15402u);

var<private> global2: array<vec4<u32>, 18>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    let var_0 = !(!arg_1.a.a.x);
    global0 = array<vec4<f32>, 32>();
    let var_1 = Struct_2(arg_0, arg_1.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-2100f)), _wgslsmith_f_op_f32(min(868f, -198f)), _wgslsmith_f_op_f32(ceil(1252f)))))));
    var var_2 = ~(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(9489u, global1[_wgslsmith_index_u32(19465u, 17u)], 1u), vec3<u32>(arg_1.b.x, global1[_wgslsmith_index_u32(1u, 17u)], 12409u)), ~vec3<u32>(arg_1.b.x, 25216u, 112637u), true), vec3<u32>(_wgslsmith_mod_u32(1u, 46932u), 0u, 2830u & global1[_wgslsmith_index_u32(0u, 17u)])) >> (_wgslsmith_mult_u32(min(30299u >> (arg_1.b.x % 32u), _wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(1u, 17u)])), ~select(arg_1.b.x, arg_1.b.x, var_1.b.a.x)) % 32u));
    var var_3 = !(!var_1.b.a.x || all(!arg_1.e.www));
    return arg_0.a.x;
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<f32>, 32>();
    global2 = array<vec4<u32>, 18>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(942f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-647f * 1608f), 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-790f - 671f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1809f, 181f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1834f, -975f, false)), _wgslsmith_f_op_f32(f32(-1f) * -564f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-666f))))));
    global1 = array<u32, 17>();
    global1 = array<u32, 17>();
    return Struct_1(vec2<bool>(func_3(Struct_1(vec2<bool>(false, false), _wgslsmith_f_op_vec3_f32(step(var_0.zzw, vec3<f32>(var_0.x, var_0.x, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -142f, var_0.x)), _wgslsmith_f_op_vec3_f32(-var_0.yyy), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -857f, 254f, var_0.x)))), Struct_4(Struct_1(vec2<bool>(true, true), var_0.wxx, global0[_wgslsmith_index_u32(4294967295u, 32u)], var_0.wzw, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 32u)]), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], global1[_wgslsmith_index_u32(1817u, 17u)]), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-256f, -225f)), vec4<bool>(false, true, true, false))), !func_3(Struct_1(vec2<bool>(true, false), vec3<f32>(335f, -1284f, var_0.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], 17u)], 32u)], var_0.ywz, vec4<f32>(-246f, -1000f, var_0.x, var_0.x)), Struct_4(Struct_1(vec2<bool>(false, false), var_0.xwy, global0[_wgslsmith_index_u32(46578u, 32u)], vec3<f32>(389f, -1480f, 679f), vec4<f32>(var_0.x, -897f, var_0.x, var_0.x)), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28729u, 17u)], 17u)], global1[_wgslsmith_index_u32(0u, 17u)]), false, var_0.wy, vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec3_f32(-var_0.wyw), _wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(679f + -1016f)), _wgslsmith_f_op_f32(max(var_0.x, -658f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1679f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -143f, var_0.x, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(abs(var_0.x)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(191f, Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -791f), _wgslsmith_f_op_f32(f32(-1f) * -1733f), -299f), global0[_wgslsmith_index_u32(16788u, 32u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2410f, -531f, 260f) * vec3<f32>(-2690f, 1000f, 766f)), vec3<f32>(753f, -1030f, -1306f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-519f, -418f, -322f, -1659f) - vec4<f32>(757f, -1000f, 718f, 1694f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-443f, -1023f, -1000f, -634f), vec4<f32>(589f, -1000f, 633f, -1235f), vec4<bool>(false, true, false, true))))), func_2(), vec3<f32>(1f, _wgslsmith_f_op_f32(floor(837f)), _wgslsmith_f_op_f32(-2328f - 1259f))), vec4<f32>(-1128f, 796f, -1851f, 1f));
    global0 = array<vec4<f32>, 32>();
    let var_1 = countOneBits(~4294967295u) >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(5032u, 17u)], _wgslsmith_sub_u32(_wgslsmith_sub_u32(59423u, 1u), 47011u >> (0u % 32u)), _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(~49846u, 18u)], _wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], 23205u, 111129u), global2[_wgslsmith_index_u32(57303u, 18u)])), countOneBits(30212u)), vec4<u32>(global1[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18964u, 17u)], 17u)], global1[_wgslsmith_index_u32(34583u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(70165u, 17u)]), abs(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 18u)])), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12650u, 17u)], 17u)], 17u)], 23337u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(29260u, 17u)], 46742u), vec2<u32>(global1[_wgslsmith_index_u32(8173u, 17u)], 1u)) % 32u), global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12973u, 17u)], 17u)], 17u)]), 17u)])), 17u)], 17u)] % 32u);
    let var_2 = 61590u;
    let var_3 = Struct_2(func_2(), Struct_1(vec2<bool>(var_0.b.a.a.x, false), var_0.c.zxz, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.b.b.c))))), vec3<f32>(_wgslsmith_f_op_f32(min(-750f, _wgslsmith_f_op_f32(ceil(-1494f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.x))), -219f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(1u, 32u)] * global0[_wgslsmith_index_u32(~49213u, 32u)]) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.a.e)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, var_0.c.x)), -1058f, -796f)));
    return Struct_1(func_2().a, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.a.e.x, var_3.a.e.x, _wgslsmith_f_op_f32(trunc(var_3.c.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1102f, var_0.a, 885f, var_0.c.x)))), var_0.b.c, _wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_3.a.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.b.x, 713f, var_0.a, 1256f) + vec4<f32>(var_3.a.e.x, 254f, -181f, var_0.b.c.x))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), func_2(), vec3<f32>(-134f, -958f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-918f)) - func_1().b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(min(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(4294967295u, 17u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7280u, 17u)], 17u)]), 17u)], 17u)], 18u)], global2[_wgslsmith_index_u32(~0u, 18u)] << (vec4<u32>(global1[_wgslsmith_index_u32(~0u, 17u)], global1[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(1u, 17u)]), 17u)], 1u, global1[_wgslsmith_index_u32(0u, 17u)]) % vec4<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(sign(1313f)), func_2().b.x, -1000f, 1424f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-493f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d.x) * _wgslsmith_f_op_f32(-var_0.a.b.x)))), _wgslsmith_clamp_i32(countOneBits(abs(u_input.a.x)), 0i, i32(-1i) * -1i), var_0.a.b);
}

