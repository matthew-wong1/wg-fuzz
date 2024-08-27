struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global2: Struct_3;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<f32>(-237f, 680f, -1236f, -427f), vec3<f32>(-507f, -1600f, -1280f), vec3<f32>(-559f, 538f, 219f), vec4<bool>(false, true, false, true)), Struct_1(vec4<f32>(-331f, -228f, 413f, -742f), vec3<f32>(-697f, -560f, -1368f), vec3<f32>(-2246f, 467f, 1218f), vec4<bool>(false, true, true, true)), Struct_1(vec4<f32>(1225f, 249f, 1785f, -788f), vec3<f32>(877f, 1000f, -2147f), vec3<f32>(-1000f, 127f, 140f), vec4<bool>(true, false, false, false)), Struct_1(vec4<f32>(-896f, 306f, -1145f, 1118f), vec3<f32>(-632f, 679f, -909f), vec3<f32>(1169f, 748f, -863f), vec4<bool>(true, true, false, true)), Struct_1(vec4<f32>(298f, -1000f, 1639f, -244f), vec3<f32>(637f, -1257f, -125f), vec3<f32>(-1540f, 530f, 164f), vec4<bool>(true, false, false, false)), Struct_1(vec4<f32>(-683f, -240f, -713f, 416f), vec3<f32>(-655f, 1195f, -1537f), vec3<f32>(535f, -1413f, -641f), vec4<bool>(true, false, true, false)), Struct_1(vec4<f32>(353f, 496f, -298f, -777f), vec3<f32>(671f, -517f, 1026f), vec3<f32>(-1016f, -938f, 562f), vec4<bool>(true, true, true, false)), Struct_1(vec4<f32>(-1000f, 915f, -436f, 153f), vec3<f32>(-694f, -1054f, 1451f), vec3<f32>(152f, 516f, 556f), vec4<bool>(true, true, true, true)), Struct_1(vec4<f32>(1170f, 1022f, -477f, 1590f), vec3<f32>(-1035f, 665f, -1061f), vec3<f32>(-724f, 1960f, -1433f), vec4<bool>(false, false, false, false)), Struct_1(vec4<f32>(948f, -951f, 221f, -2173f), vec3<f32>(1324f, 530f, -1455f), vec3<f32>(540f, 146f, 944f), vec4<bool>(false, false, false, true)), Struct_1(vec4<f32>(-551f, -809f, -324f, 392f), vec3<f32>(515f, 545f, 121f), vec3<f32>(1706f, -872f, -1719f), vec4<bool>(false, true, false, false)), Struct_1(vec4<f32>(-226f, 185f, -1556f, -341f), vec3<f32>(1455f, -974f, 1128f), vec3<f32>(909f, 1679f, -333f), vec4<bool>(true, false, true, false)), Struct_1(vec4<f32>(-1276f, 416f, 1000f, -904f), vec3<f32>(1326f, 634f, 717f), vec3<f32>(-108f, 1000f, 1590f), vec4<bool>(true, true, true, false)), Struct_1(vec4<f32>(-1197f, -1011f, 1071f, 1064f), vec3<f32>(-1632f, -1680f, -2123f), vec3<f32>(-939f, 753f, -985f), vec4<bool>(true, true, false, true)), Struct_1(vec4<f32>(-1391f, -1000f, 530f, 130f), vec3<f32>(182f, 1186f, -132f), vec3<f32>(1000f, -1405f, -888f), vec4<bool>(false, true, false, true)), Struct_1(vec4<f32>(1000f, 498f, 838f, -1543f), vec3<f32>(2835f, 504f, 1730f), vec3<f32>(1329f, 2272f, 1258f), vec4<bool>(true, false, false, true)), Struct_1(vec4<f32>(-107f, 2292f, 1000f, 885f), vec3<f32>(-818f, -1000f, -1000f), vec3<f32>(-703f, -207f, -1410f), vec4<bool>(true, false, false, true)), Struct_1(vec4<f32>(-1114f, -1062f, 679f, -1896f), vec3<f32>(-1708f, -1363f, -1029f), vec3<f32>(-1836f, -582f, -675f), vec4<bool>(true, false, true, true)), Struct_1(vec4<f32>(-152f, -1711f, -824f, -131f), vec3<f32>(-112f, 1000f, 308f), vec3<f32>(-477f, 1290f, 1000f), vec4<bool>(false, true, false, false)), Struct_1(vec4<f32>(1152f, -645f, -597f, -502f), vec3<f32>(-1663f, 500f, -252f), vec3<f32>(1000f, 592f, -537f), vec4<bool>(true, true, false, true)), Struct_1(vec4<f32>(3094f, 1595f, -731f, -284f), vec3<f32>(1382f, -727f, -2121f), vec3<f32>(-881f, 451f, -1339f), vec4<bool>(false, true, true, false)), Struct_1(vec4<f32>(1529f, 1452f, 1000f, -509f), vec3<f32>(376f, -387f, 227f), vec3<f32>(-1384f, -1318f, -1000f), vec4<bool>(false, false, false, true)), Struct_1(vec4<f32>(1747f, 593f, -149f, -101f), vec3<f32>(572f, -1048f, 674f), vec3<f32>(-1167f, -2026f, 2907f), vec4<bool>(true, true, false, true)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    global3 = array<Struct_1, 23>();
    global0 = Struct_3(arg_1.b.d.x, _wgslsmith_mult_vec4_u32(vec4<u32>(global2.b.x, firstLeadingBit(~u_input.c), select(global0.b.x << (u_input.c % 32u), global0.b.x, true), 65396u), _wgslsmith_mod_vec4_u32(vec4<u32>(~0u, global0.b.x, _wgslsmith_add_u32(global2.b.x, global2.b.x), _wgslsmith_dot_vec3_u32(global0.b.xyw, vec3<u32>(79100u, 43700u, 45144u))), ~vec4<u32>(global0.b.x, global2.b.x, 0u, 0u))), Struct_2(_wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec3_i32(arg_0.yzy, vec3<i32>(arg_0.x, -3803i, -9122i))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c.b.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b.a.x, arg_1.b.b.x, 482f, global0.d.b.a.x))), arg_1.b.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_1.b.b + arg_1.b.c))), global0.e.d)), Struct_2(~reverseBits(21580i) ^ -_wgslsmith_clamp_i32(arg_1.a, 0i, -58725i), arg_1.b), global3[_wgslsmith_index_u32(10472u, 23u)]);
    let var_0 = arg_1.b.a.x;
    global3 = array<Struct_1, 23>();
    global1 = array<vec3<bool>, 5>();
    return 26734u;
}

fn func_2() -> Struct_1 {
    global0 = Struct_3(false, global0.b, Struct_2(-2147483647i, global3[_wgslsmith_index_u32(~global2.b.x, 23u)]), Struct_2(global0.d.a, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.b.a.x, global0.c.b.c.x, global0.c.b.c.x, 1102f) * _wgslsmith_f_op_vec4_f32(global2.c.b.a + global0.e.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global2.d.b.c * vec3<f32>(251f, global2.c.b.c.x, -1182f)))), global0.e.a.xzx, select(!global2.c.b.d, global0.d.b.d, global0.b.x <= 77846u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(143f, 1000f, global0.c.b.c.x, 227f)), vec4<f32>(930f, global2.c.b.b.x, global0.d.b.a.x, 260f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c.b.a.x, 2306f, global2.c.b.a.x, 683f)))), _wgslsmith_f_op_vec3_f32(-global0.d.b.a.xxz), global0.e.a.wyw, !global2.d.b.d));
    var var_0 = ~61051u ^ ~global2.b.x;
    global3 = array<Struct_1, 23>();
    global0 = Struct_3(global0.a, global2.b, Struct_2(~_wgslsmith_sub_i32(-2147483647i, u_input.b.x) << (func_3(vec4<i32>(0i, global0.d.a, -13092i, global0.c.a), global2.d) % 32u), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.b.c.x, global0.d.b.c.x, 476f, global0.d.b.c.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.c.b.b.x, -1546f, global2.d.b.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-393f, global2.c.b.c.x, global0.c.b.b.x)))), global2.e.a.yzw, vec4<bool>(global0.d.b.d.x, any(global0.e.d), global2.d.b.d.x, all(vec4<bool>(true, true, global2.e.d.x, global2.a))))), Struct_2(reverseBits(~_wgslsmith_add_i32(global0.c.a, global2.d.a)), global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(~global0.b, ~global0.b)), 23u)]), global0.c.b);
    global3 = array<Struct_1, 23>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-395f, 160f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f), global2.d.b.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e.b.x), _wgslsmith_f_op_f32(abs(global2.c.b.b.x)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, global2.e.a.x, 249f, -1184f)), vec4<f32>(1000f, global0.d.b.b.x, global2.e.a.x, _wgslsmith_f_op_f32(global0.e.a.x + -1337f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.b.b.x, 1f, _wgslsmith_f_op_f32(-global2.c.b.a.x)) * _wgslsmith_f_op_vec3_f32(-global0.e.c)))), _wgslsmith_f_op_vec3_f32(exp2(global2.e.a.yyx)), vec4<bool>(global0.c.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.e.a.x)) + -771f) > global0.d.b.a.x, !global0.d.b.d.x, true));
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    global3 = array<Struct_1, 23>();
    global0 = Struct_3(false, vec4<u32>(32831u, _wgslsmith_div_u32(18477u, ~(~7540u)), _wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(1u, 49471u)), global2.b.x), global0.c, Struct_2(countOneBits(firstTrailingBit(max(2147483647i, -27139i))), func_2()), global0.c.b);
    global3 = array<Struct_1, 23>();
    var var_0 = -(firstLeadingBit(-(~vec3<i32>(global0.c.a, global2.d.a, -1i))) ^ u_input.b.wzy);
    var var_1 = u_input.b;
    return _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(130992u, 2261u), vec2<u32>(u_input.c, 173u)), ~u_input.a), _wgslsmith_div_u32(firstTrailingBit(global2.b.x), global0.b.x ^ ~u_input.c)), global2.b.yyw);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = abs(81882u);
    let var_1 = ~22906u;
    var var_2 = ~global0.b.x;
    var_0 = ~51278u | ((1u << (reverseBits(~global2.b.x) % 32u)) >> (_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 14693u), vec4<u32>(var_1, 42229u, var_1, arg_0.x)), _wgslsmith_dot_vec3_u32(min(global2.b.xxz, vec3<u32>(0u, global2.b.x, var_1)), vec3<u32>(24711u, 40828u, global2.b.x))) % 32u));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(func_4(func_2()), _wgslsmith_add_vec3_u32(firstTrailingBit(global2.b.zxw), vec3<u32>(1u, ~u_input.c, _wgslsmith_mod_u32(global0.b.x, u_input.a.x)))), func_4(arg_3.b)), 23u)];
    return global3[_wgslsmith_index_u32(2233u, 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global2.d.b.d.x, vec4<u32>((30380u | u_input.a.x) ^ global2.b.x, ~0u, firstTrailingBit(min(1u, global0.b.x)), global0.b.x), Struct_2(firstLeadingBit(~(~global0.c.a)), func_1(_wgslsmith_mod_vec2_u32(~u_input.a, vec2<u32>(4294967295u, global2.b.x)), global0.d.b.a.wx, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(u_input.a.x), u_input.a.x), 23u)], Struct_2(u_input.b.x, global0.c.b))), Struct_2(-24500i, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, global0.b.x), global2.b.xy), 23u)]), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global0.d.b.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2.e.a.wyy, vec3<f32>(1539f, -286f, 2016f), global2.e.d.x))) + vec3<f32>(_wgslsmith_f_op_f32(global2.c.b.a.x - global0.d.b.b.x), _wgslsmith_f_op_f32(abs(global2.e.b.x)), _wgslsmith_f_op_f32(-global2.e.a.x))), global2.e.a.wyz, vec4<bool>(all(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 25237u, global0.b.x), vec3<u32>(u_input.a.x, 33216u, u_input.a.x)), 5u)]), global2.c.b.d.x, true, func_1(select(global2.b.yw, vec2<u32>(4294967295u, u_input.a.x), global0.a), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(286f, 210f), vec2<f32>(global2.c.b.b.x, global0.d.b.a.x))), global0.d.b, Struct_2(global0.d.a, global3[_wgslsmith_index_u32(37934u, 23u)])).d.x)));
    var var_0 = global2.b.xyz;
    let var_1 = global0.b.x ^ ~1u;
    let var_2 = 943f;
    global0 = Struct_3(true, max(min(_wgslsmith_div_vec4_u32(select(global2.b, vec4<u32>(1748u, u_input.a.x, 1u, var_0.x), vec4<bool>(global0.d.b.d.x, true, false, false)), global0.b ^ vec4<u32>(0u, global2.b.x, 59305u, 4294967295u)), vec4<u32>(global2.b.x, u_input.a.x, ~global2.b.x, global2.b.x)), global2.b & firstLeadingBit(vec4<u32>(global0.b.x, global0.b.x, var_0.x, 0u))), global2.c, Struct_2(_wgslsmith_mult_i32(_wgslsmith_mod_i32(global2.c.a, 2147483647i), min(global0.d.a, countOneBits(global2.c.a))), func_1(reverseBits(vec2<u32>(15792u, 1u) & global0.b.wy), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(global0.c.b.c.yz)), _wgslsmith_f_op_vec2_f32(-global2.d.b.b.yy))), global0.e, global0.c)), Struct_1(global2.c.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(func_2().c, func_1(vec2<u32>(global0.b.x, global2.b.x), global2.e.c.yx, global0.e, global0.c).a.wwx)) * vec3<f32>(_wgslsmith_div_f32(-1214f, var_2), _wgslsmith_f_op_f32(-global0.c.b.c.x), func_1(vec2<u32>(u_input.a.x, 0u), global2.d.b.b.xy, Struct_1(global2.d.b.a, vec3<f32>(1000f, -819f, global0.c.b.a.x), vec3<f32>(-462f, -1041f, -1098f), global2.e.d), Struct_2(global0.d.a, Struct_1(global0.c.b.a, global0.c.b.a.zwy, vec3<f32>(-301f, -356f, global2.e.b.x), global0.c.b.d))).b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global2.c.b.a.yzw), vec3<f32>(-231f, -291f, global0.d.b.a.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.a.x, var_2, 842f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1893f, -653f, global0.e.c.x), global2.d.b.c))), select(!global0.c.b.d, !vec4<bool>(global2.e.d.x, global2.a, true, global0.a), !vec4<bool>(false, global0.e.d.x, global0.e.d.x, global2.d.b.d.x))));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global0.c.b.b.x - _wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(-global0.c.b.a.x)))), global0.c.b.c.x, global0.e.a.x, var_2), _wgslsmith_f_op_vec3_f32(min(global2.d.b.a.wxy, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b.a.x, global0.c.b.c.x, var_2)), vec3<f32>(-1000f, global2.c.b.b.x, -142f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-348f, global2.c.b.a.x, global0.d.b.c.x)) - vec3<f32>(global2.e.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1014f))), 1f)), vec4<bool>(func_1(vec2<u32>(28705u, 4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, global2.e.a.x)), Struct_1(global0.d.b.a, _wgslsmith_f_op_vec3_f32(-global2.c.b.a.xxz), _wgslsmith_f_op_vec3_f32(vec3<f32>(833f, global2.c.b.c.x, global0.c.b.b.x) * global0.d.b.a.zyz), select(global0.e.d, vec4<bool>(global2.c.b.d.x, global2.e.d.x, true, false), vec4<bool>(true, global0.a, false, false))), global0.d).d.x, false, !global0.e.d.x, !global2.e.d.x));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_3.a.x)))), global0.e.a.x, -533f, var_3.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1640f, _wgslsmith_f_op_f32(447f - 1f), -766f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-265f, global2.d.b.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(415f, -1305f, var_3.c.x, -736f), vec4<f32>(var_4.x, global2.d.b.b.x, -742f, var_4.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.a.x, var_3.b.x, global2.c.b.c.x, global2.c.b.c.x)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_3.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_4.x, -258f, var_4.x)))))), -26113i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global2.c.b.c.xx, _wgslsmith_f_op_vec2_f32(var_4.wy * func_2().a.zw)))), ~var_1, 67596u);
}

