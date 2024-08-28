struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 16> = array<Struct_5, 16>(Struct_5(Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(533f, -209f, 796f)), Struct_1(vec2<bool>(false, true), vec3<f32>(-337f, -1897f, 783f))), vec4<f32>(-100f, 1322f, -286f, 380f)), Struct_5(Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(581f, -770f, 254f)), Struct_1(vec2<bool>(true, false), vec3<f32>(1314f, 1134f, 612f))), vec4<f32>(-773f, -979f, 217f, -230f)), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(572f, -2624f, 574f)), Struct_1(vec2<bool>(true, true), vec3<f32>(-235f, 1197f, -134f))), vec4<f32>(946f, -1919f, 400f, -248f)), Struct_5(Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(936f, -1170f, -370f)), Struct_1(vec2<bool>(false, true), vec3<f32>(427f, 692f, 993f))), vec4<f32>(680f, 340f, 451f, -723f)), Struct_5(Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-495f, 634f, -2021f)), Struct_1(vec2<bool>(false, true), vec3<f32>(-1300f, 717f, -1031f))), vec4<f32>(632f, -2119f, -110f, -527f)), Struct_5(Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-1900f, 111f, -1216f)), Struct_1(vec2<bool>(false, true), vec3<f32>(1297f, -808f, -1000f))), vec4<f32>(-685f, -386f, -554f, -440f)), Struct_5(Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-714f, 547f, 107f)), Struct_1(vec2<bool>(true, true), vec3<f32>(-182f, 574f, 1093f))), vec4<f32>(1464f, 743f, -382f, 991f)), Struct_5(Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(-780f, 180f, 1134f)), Struct_1(vec2<bool>(true, true), vec3<f32>(-1737f, -1298f, -516f))), vec4<f32>(1144f, 337f, 507f, -1000f)), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(1090f, -784f, -343f)), Struct_1(vec2<bool>(true, false), vec3<f32>(-1754f, -418f, 661f))), vec4<f32>(1333f, -723f, 204f, -665f)), Struct_5(Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(369f, 1196f, -1678f)), Struct_1(vec2<bool>(true, false), vec3<f32>(-590f, 213f, -1385f))), vec4<f32>(744f, -1414f, -1126f, -499f)), Struct_5(Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(1000f, 323f, -692f)), Struct_1(vec2<bool>(false, true), vec3<f32>(-778f, 1246f, 714f))), vec4<f32>(-1000f, -235f, 1541f, -1290f)), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-263f, -504f, 2442f)), Struct_1(vec2<bool>(false, false), vec3<f32>(-932f, -1251f, -282f))), vec4<f32>(1927f, -1280f, 1118f, 264f)), Struct_5(Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-1741f, 696f, 1000f)), Struct_1(vec2<bool>(false, false), vec3<f32>(-880f, 679f, -1273f))), vec4<f32>(101f, 662f, 114f, 375f)), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(1377f, 1440f, -250f)), Struct_1(vec2<bool>(false, true), vec3<f32>(301f, -1554f, -169f))), vec4<f32>(-422f, -819f, 202f, -1667f)), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-1183f, -1525f, 692f)), Struct_1(vec2<bool>(false, false), vec3<f32>(102f, -622f, -1404f))), vec4<f32>(-522f, 1463f, -603f, 984f)), Struct_5(Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-513f, -407f, 304f)), Struct_1(vec2<bool>(true, false), vec3<f32>(2098f, 1500f, 824f))), vec4<f32>(320f, -204f, 784f, 400f)));

var<private> global1: vec3<u32>;

var<private> global2: array<u32, 3> = array<u32, 3>(1u, 4294967295u, 1u);

var<private> global3: array<vec2<i32>, 15>;

var<private> global4: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(0i, -1i, 36516i), vec3<i32>(12798i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, -24965i, -1i), vec3<i32>(1176i, 28493i, 10710i), vec3<i32>(19840i, 6668i, -1i), vec3<i32>(61193i, -1i, -1i), vec3<i32>(46749i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 21714i, 647i), vec3<i32>(0i, 70001i, 1i), vec3<i32>(42415i, 19891i, 6865i), vec3<i32>(19572i, -1i, -40926i), vec3<i32>(36047i, i32(-2147483648), 0i), vec3<i32>(-29103i, -4083i, 20011i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(1i, -2612i, 18020i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = true;
    var var_1 = ~_wgslsmith_add_vec2_u32(vec2<u32>(~2015u, 102258u), _wgslsmith_sub_vec2_u32(global1.zz, u_input.b.zx));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(2147483647i, -15010i, ~40321i, 1i), -vec4<i32>(-1i, -16318i, -1i, 2147483647i), true)), -59133i, select(abs(-12913i), 0i, true), -26476i);
    global2 = array<u32, 3>();
    var var_3 = var_2.x;
    return -1972f;
}

fn func_2() -> Struct_2 {
    global1 = u_input.b.wyw;
    let var_0 = Struct_2(Struct_1(select(vec2<bool>(select(false, true, true), true), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, false, false, true)), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-822f, 596f)), _wgslsmith_f_op_f32(-338f * -128f), _wgslsmith_f_op_f32(func_3(vec4<f32>(-1113f, 543f, 1000f, 345f)))))), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(1242f, 1188f, 1834f, 703f)))), _wgslsmith_f_op_f32(1f - 622f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1529f), 1941f, true)))));
    let var_1 = ~reverseBits(_wgslsmith_clamp_u32(~15264u, _wgslsmith_clamp_u32(u_input.b.x | global2[_wgslsmith_index_u32(1u, 3u)], max(global1.x, 31129u), ~4294967295u), 17837u));
    return var_0;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(!func_2().a.a, arg_2.a.b);
    let var_1 = ~(-1i);
    global0 = array<Struct_5, 16>();
    global0 = array<Struct_5, 16>();
    global3 = array<vec2<i32>, 15>();
    return func_2().a;
}

fn func_1() -> Struct_1 {
    let var_0 = ~firstLeadingBit(-(5004i | _wgslsmith_dot_vec2_i32(vec2<i32>(8470i, 0i), global3[_wgslsmith_index_u32(global1.x, 15u)])));
    var var_1 = 1f;
    global1 = u_input.a;
    global3 = array<vec2<i32>, 15>();
    global1 = _wgslsmith_mult_vec3_u32(~firstTrailingBit(select(u_input.b.zxw, u_input.b.yxz, select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), u_input.a);
    return func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(858f, -666f, 1222f) * vec3<f32>(229f, 943f, -1000f)))), func_2(), func_2());
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<u32> {
    var var_0 = ~_wgslsmith_sub_i32(-min(~arg_1.x, arg_1.x), ~arg_1.x);
    let var_1 = vec4<u32>(_wgslsmith_clamp_u32(reverseBits(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 10927u, 1u, 0u), u_input.b), global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u) & abs(global1.x), 3u)]) | 57160u, ~_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(~u_input.a, u_input.a)), ~_wgslsmith_sub_u32(u_input.a.x, 0u), 46309u);
    let var_2 = _wgslsmith_mod_vec4_u32(var_1, max(select(var_1, vec4<u32>(4294967295u, 75908u, 75439u, var_1.x), true), u_input.b)) ^ ~(select(_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(global1.x, 1u, 0u, global1.x), vec4<u32>(49296u, var_1.x, 0u, var_1.x)), vec4<u32>(u_input.b.x, 25025u, global1.x, 60997u), var_1.x == 4294967295u) ^ ~(~vec4<u32>(35967u, 8921u, global2[_wgslsmith_index_u32(0u, 3u)], 4294967295u)));
    global1 = _wgslsmith_mod_vec3_u32(u_input.b.xwy, u_input.b.yyx);
    global3 = array<vec2<i32>, 15>();
    return abs(vec4<u32>(~(~1u), ~firstTrailingBit(var_1.x), 6845u, 60655u << (u_input.a.x % 32u)));
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = firstTrailingBit(_wgslsmith_mult_vec4_u32(abs(select(min(vec4<u32>(global1.x, 88384u, global1.x, 60883u), vec4<u32>(arg_0.a.x, arg_1, arg_1, 26533u)), vec4<u32>(23213u, 19547u, arg_0.a.x, 65187u), vec4<bool>(true, true, true, true))), u_input.b));
    let var_1 = max(arg_0.a.x, 51221u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(408f, -626f, -287f, -1705f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-137f, -1013f, 678f, 1167f)), any(vec2<bool>(false, false)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1432f, -1359f, 1000f, -1983f), vec4<f32>(370f, 1476f, 1083f, 472f))))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-484f * -838f), func_2().a.b.x, _wgslsmith_div_f32(1203f, 159f), _wgslsmith_f_op_f32(-873f + 166f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-370f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(351f)) * -758f), _wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(sign(1122f)))));
    let var_3 = var_2.zw;
    global4 = array<vec3<i32>, 15>();
    return Struct_2(func_1(), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, any(vec2<bool>(true, true)), true & any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true)), true);
    let var_1 = func_6(Struct_4(func_5(func_1(), vec2<i32>(~0i, countOneBits(-2147483647i))), vec3<i32>(1i, 1i, 1i)), global1.x, ~u_input.b, global4[_wgslsmith_index_u32(~1u, 15u)]);
    global3 = array<vec2<i32>, 15>();
    global4 = array<vec3<i32>, 15>();
    global1 = vec3<u32>(global1.x, _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, global1.x, u_input.b.x), vec3<u32>(0u, 1u, u_input.b.x)), ~(~(~global1.x))), 17822u);
    global1 = _wgslsmith_mult_vec3_u32(u_input.b.ywx, vec3<u32>(~u_input.a.x, reverseBits(func_5(func_4(var_1.b.b, var_1, var_1), vec2<i32>(-2147483647i, -2733i)).x), global1.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_div_f32(var_1.a.b.x, _wgslsmith_div_f32(var_1.b.b.x, var_1.b.b.x)), 406f, 405f)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(Struct_4(vec4<u32>(global1.x, 0u, u_input.a.x, 1u), global4[_wgslsmith_index_u32(global1.x, 15u)]), global2[_wgslsmith_index_u32(0u, 3u)], vec4<u32>(35195u, 20886u, global1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33722u, 3u)], 3u)], 3u)]), vec3<i32>(92615i, 1i, -1i)).a.b.x + _wgslsmith_f_op_f32(abs(var_1.a.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b.x) - _wgslsmith_f_op_f32(var_2.x - var_2.x)))), 1u, firstLeadingBit(1u) ^ u_input.a.x, ~func_5(Struct_1(var_1.b.a, _wgslsmith_f_op_vec3_f32(var_2.wyy - var_2.xwz)), _wgslsmith_mod_vec2_i32(vec2<i32>(-17899i, -1553i), global3[_wgslsmith_index_u32(u_input.b.x >> (u_input.b.x % 32u), 15u)])).wz);
}

