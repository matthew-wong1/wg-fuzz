struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
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

var<private> global0: Struct_3 = Struct_3(vec4<u32>(4294967295u, 0u, 37687u, 52321u), Struct_2(vec3<bool>(true, true, true), vec4<f32>(669f, -395f, 168f, -409f), Struct_1(vec3<f32>(-1195f, 1038f, -1717f), vec4<f32>(-802f, 1143f, -146f, 490f), 2147483647i, vec4<f32>(-1089f, -199f, -1000f, -1458f), vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<f32>(1501f, 2335f, -1000f), vec4<f32>(-1278f, -1360f, -449f, 1562f), -1i, vec4<f32>(552f, 2197f, 136f, 571f), vec3<u32>(26721u, 39913u, 1u)), Struct_1(vec3<f32>(-1164f, 876f, 1000f), vec4<f32>(151f, -599f, -147f, 928f), 0i, vec4<f32>(-2289f, -355f, -190f, 1070f), vec3<u32>(4294967295u, 8151u, 0u))));

var<private> global1: vec3<u32> = vec3<u32>(0u, 1009u, 12592u);

var<private> global2: vec4<u32> = vec4<u32>(12431u, 0u, 1u, 5610u);

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<bool>(true, false, false), vec4<f32>(242f, 2386f, -158f, 2914f), Struct_1(vec3<f32>(332f, 207f, 1000f), vec4<f32>(-1551f, -1000f, 118f, 469f), -38128i, vec4<f32>(187f, -1303f, 740f, 718f), vec3<u32>(16654u, 113878u, 1u)), Struct_1(vec3<f32>(-384f, -272f, -269f), vec4<f32>(-405f, 860f, -1082f, 1427f), 1i, vec4<f32>(-447f, -1078f, 1000f, -255f), vec3<u32>(19818u, 4294967295u, 6879u)), Struct_1(vec3<f32>(603f, -293f, -644f), vec4<f32>(784f, 1953f, -593f, 825f), -20743i, vec4<f32>(1782f, -1189f, 816f, 552f), vec3<u32>(18054u, 26857u, 4294967295u))), Struct_2(vec3<bool>(false, true, true), vec4<f32>(-1000f, -998f, -474f, -1287f), Struct_1(vec3<f32>(-180f, -662f, 329f), vec4<f32>(736f, -299f, -161f, -1000f), 1i, vec4<f32>(-710f, -971f, -1838f, -547f), vec3<u32>(4294967295u, 14108u, 0u)), Struct_1(vec3<f32>(1000f, -553f, -564f), vec4<f32>(697f, -1876f, -415f, 1060f), i32(-2147483648), vec4<f32>(-1000f, -1060f, -2136f, 1151f), vec3<u32>(54624u, 4294967295u, 0u)), Struct_1(vec3<f32>(-329f, 582f, 998f), vec4<f32>(-1000f, -1755f, -1835f, -1576f), 2147483647i, vec4<f32>(343f, -743f, 229f, -878f), vec3<u32>(104181u, 11907u, 0u))), Struct_2(vec3<bool>(false, true, true), vec4<f32>(401f, -1066f, -1000f, -132f), Struct_1(vec3<f32>(-1046f, -1170f, -3835f), vec4<f32>(-601f, -300f, 1661f, 1126f), 2147483647i, vec4<f32>(975f, -443f, -704f, -2637f), vec3<u32>(27117u, 33177u, 86173u)), Struct_1(vec3<f32>(-732f, -1456f, 1627f), vec4<f32>(-390f, -946f, -1807f, -1835f), -12502i, vec4<f32>(-718f, -266f, 196f, -219f), vec3<u32>(10256u, 3173u, 21324u)), Struct_1(vec3<f32>(-1326f, -217f, 1159f), vec4<f32>(-130f, -1481f, 596f, -506f), -3347i, vec4<f32>(-345f, -376f, 543f, 608f), vec3<u32>(4294967295u, 49445u, 0u))), Struct_2(vec3<bool>(true, true, false), vec4<f32>(-2150f, 335f, -255f, -1000f), Struct_1(vec3<f32>(-784f, 1125f, -268f), vec4<f32>(-984f, -252f, -1344f, 1000f), -25206i, vec4<f32>(-977f, 547f, 790f, -330f), vec3<u32>(58290u, 2u, 41137u)), Struct_1(vec3<f32>(1000f, -1000f, 994f), vec4<f32>(1238f, 1727f, -708f, -1000f), 0i, vec4<f32>(1000f, 1629f, 353f, 169f), vec3<u32>(1u, 4367u, 0u)), Struct_1(vec3<f32>(-1000f, -244f, 690f), vec4<f32>(-1355f, 1353f, -1344f, -1458f), 1i, vec4<f32>(-1331f, 715f, 400f, 270f), vec3<u32>(19062u, 4294967295u, 4294967295u))), Struct_2(vec3<bool>(true, false, true), vec4<f32>(322f, 3243f, -2249f, 675f), Struct_1(vec3<f32>(-1009f, 469f, -253f), vec4<f32>(1382f, 1119f, -699f, -346f), 1i, vec4<f32>(-1000f, 1277f, -948f, -678f), vec3<u32>(1u, 1u, 26979u)), Struct_1(vec3<f32>(-437f, -668f, 680f), vec4<f32>(1587f, 380f, 377f, 535f), 1i, vec4<f32>(-1473f, -1330f, 229f, 412f), vec3<u32>(11300u, 4294967295u, 17916u)), Struct_1(vec3<f32>(-1076f, -1597f, 962f), vec4<f32>(-159f, 1000f, 274f, -235f), 34874i, vec4<f32>(-507f, -452f, 2468f, 1414f), vec3<u32>(88160u, 0u, 991u))), Struct_2(vec3<bool>(true, true, false), vec4<f32>(1820f, -1477f, -1654f, -1000f), Struct_1(vec3<f32>(-242f, 426f, 106f), vec4<f32>(-1000f, -1044f, 1327f, 526f), -2025i, vec4<f32>(-876f, 1000f, 985f, 599f), vec3<u32>(31737u, 42393u, 6194u)), Struct_1(vec3<f32>(-1201f, -1607f, 624f), vec4<f32>(-665f, 966f, -688f, -733f), -37618i, vec4<f32>(1191f, -298f, 1436f, -1915f), vec3<u32>(0u, 1u, 44010u)), Struct_1(vec3<f32>(870f, -349f, 392f), vec4<f32>(-475f, -1090f, 265f, 637f), -67446i, vec4<f32>(-474f, 210f, 669f, 706f), vec3<u32>(83895u, 1u, 0u))));

var<private> global4: vec2<u32> = vec2<u32>(866u, 0u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_4(-12386i, countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(global0.a.zxw, global2.yxx), max(vec3<u32>(4294967295u, u_input.b.x, 7222u), vec3<u32>(4294967295u, 28019u, 1u))), ~(~global2.wyz))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.b.x, global0.b.c.d.x, -1613f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.c.b.x, global0.b.c.a.x, -1293f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0.b.b.wzw)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, global0.b.b.x, -380f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b.c.d + vec4<f32>(global0.b.e.b.x, global0.b.e.b.x, global0.b.b.x, 2148f)))), u_input.a, global0.b.d.b, u_input.b.xwx), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b.e.b.x))), Struct_3(global0.a, Struct_2(vec3<bool>(any(vec3<bool>(global0.b.a.x, global0.b.a.x, global0.b.a.x)), any(vec2<bool>(global0.b.a.x, false)), global0.b.a.x && global0.b.a.x), vec4<f32>(global0.b.c.b.x, _wgslsmith_f_op_f32(global0.b.b.x + global0.b.d.d.x), _wgslsmith_f_op_f32(select(global0.b.b.x, global0.b.c.b.x, true)), _wgslsmith_f_op_f32(floor(-1389f))), Struct_1(global0.b.e.a, global0.b.b, -15129i, global0.b.e.b, global0.b.e.e), global0.b.e, Struct_1(vec3<f32>(-1073f, 688f, -454f), _wgslsmith_f_op_vec4_f32(select(global0.b.e.d, global0.b.e.b, true)), abs(2147483647i), _wgslsmith_f_op_vec4_f32(global0.b.e.d + vec4<f32>(2152f, 785f, 1037f, 1849f)), ~global2.xwz))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(175f, 639f, true))), _wgslsmith_f_op_f32(375f - 371f), 504f), vec4<f32>(_wgslsmith_div_f32(-808f, var_0.c.a.x), var_0.c.a.x, _wgslsmith_div_f32(var_0.d, var_0.d), _wgslsmith_f_op_f32(var_0.c.b.x - global0.b.d.a.x)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-_wgslsmith_add_i32(-1i, global0.b.e.c), global0.b.e.c), global0.b.c.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1442f, _wgslsmith_f_op_f32(-var_0.e.b.d.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b.x) * _wgslsmith_f_op_f32(step(-610f, global0.b.e.b.x))), -793f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, _wgslsmith_f_op_f32(trunc(var_0.c.d.x)), global0.b.b.x, _wgslsmith_f_op_f32(abs(-917f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -746f), var_0.c.a.x, _wgslsmith_f_op_f32(951f * var_0.e.b.d.d.x), _wgslsmith_f_op_f32(-1720f - var_0.e.b.c.d.x)))), vec3<u32>(~69294u, ~57610u, _wgslsmith_dot_vec4_u32(~global0.a, ~global0.a & (u_input.b & var_0.e.a))));
    global0 = var_0.e;
    var var_2 = !vec4<bool>(var_0.e.b.a.x, false, true, 0u != global4.x);
    var var_3 = var_0.e;
    return vec4<f32>(-1191f, _wgslsmith_f_op_f32(sign(-354f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(418f, global0.b.c.b.x))) + -2086f), -331f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-236f))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_mult_i32(0i, arg_2.c.c | 0i);
    let var_1 = vec3<i32>(min(-14527i, ~(-(~arg_2.c.c))), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c >> (firstTrailingBit(select(vec3<u32>(arg_2.c.e.x, global2.x, 4294967295u), arg_2.d.e, vec3<bool>(global0.b.a.x, true, true))) % vec3<u32>(32u))), global0.b.d.c);
    let var_2 = global0.b.a;
    global3 = array<Struct_2, 6>();
    global0 = Struct_3(global0.a, Struct_2(global0.b.a, _wgslsmith_f_op_vec4_f32(func_2()), global0.b.d, global0.b.e, Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1280f, -1000f, -820f))), arg_2.d.d, 18689i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(arg_2.d.d)))), vec3<u32>(arg_2.d.e.x, ~33816u, u_input.b.x))));
    return _wgslsmith_add_i32(-var_1.x, -2147483647i);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: f32) -> u32 {
    global4 = max(~arg_0, global0.a.zz);
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.b.c.d.xyy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b.c.b))), _wgslsmith_dot_vec3_i32(firstTrailingBit(min(-vec3<i32>(5843i, global0.b.c.c, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(33169i, u_input.a, -2147483647i), u_input.c))), vec3<i32>(-u_input.c.x, -24506i, -u_input.a) << (vec3<u32>(u_input.b.x >> (5942u % 32u), global4.x >> (global4.x % 32u), 4294967295u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) - vec4<f32>(1367f, _wgslsmith_f_op_f32(-471f + -1300f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f * arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_mult_vec3_u32(global2.ywy, vec3<u32>(1u, 0u, global2.x)));
    let var_1 = var_0.d.zxx;
    var var_2 = countOneBits(~_wgslsmith_mod_i32(func_3(u_input.c.zz, -256f, Struct_2(vec3<bool>(global0.b.a.x, true, global0.b.a.x), vec4<f32>(var_1.x, -1595f, global0.b.b.x, -359f), var_0, global0.b.c, global0.b.e)) << (min(11054u, global1.x) % 32u), reverseBits(i32(-1i) * -9007i)));
    var var_3 = global0.b.e.c;
    return _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(global0.a, _wgslsmith_add_vec4_u32(firstLeadingBit(u_input.b), abs(vec4<u32>(u_input.b.x, 4294967295u, 0u, var_0.e.x)))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = countOneBits(vec4<u32>(~global1.x, ~func_1(u_input.b.ww, 340f, global0.b.e.a.x), firstTrailingBit(0u << (1u % 32u)), ~u_input.b.x)) << ((u_input.b | ~u_input.b) % vec4<u32>(32u));
    var var_0 = Struct_4(firstTrailingBit(~(-22776i)), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.x, global1.x, ~global2.x), reverseBits(~vec3<u32>(32246u, 4294967295u, global4.x)), countOneBits(~vec3<u32>(u_input.b.x, global1.x, global0.b.d.e.x))), firstTrailingBit(_wgslsmith_div_vec3_u32(min(global0.b.e.e, vec3<u32>(global4.x, 37816u, global1.x)), vec3<u32>(global4.x, 8676u, 1986u)))), global0.b.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.c.d.x - -652f)) - global0.b.d.a.x)), Struct_3(max(countOneBits(u_input.b & global0.a), global0.a), Struct_2(global0.b.a, vec4<f32>(1409f, global0.b.b.x, _wgslsmith_f_op_f32(global0.b.b.x + 1066f), global0.b.c.a.x), global0.b.d, Struct_1(global0.b.e.a, global0.b.c.b, -global0.b.c.c, vec4<f32>(global0.b.e.d.x, global0.b.b.x, -678f, global0.b.b.x), vec3<u32>(9564u, 0u, global1.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(432f, global0.b.e.d.x, global0.b.d.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -296f, global0.b.e.d.x, 1559f), vec4<f32>(global0.b.e.b.x, global0.b.b.x, -1095f, 1287f), vec4<bool>(false, global0.b.a.x, global0.b.a.x, true))), reverseBits(-20511i), global0.b.b, vec3<u32>(global4.x, global4.x, global2.x) ^ global2.wwx))));
    var var_1 = global0.b.a;
    let var_2 = 2075f;
    var var_3 = global3[_wgslsmith_index_u32(firstLeadingBit(1u), 6u)];
    var var_4 = var_3.c.a.yz;
    var var_5 = global0.b.b.xzw;
    let var_6 = global0.a.xww;
    var var_7 = global0.b.e.e.yx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~var_6.x)), 14863u << (~u_input.b.x % 32u));
}

