struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_3, 11>;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<u32>(1u, 18155u, 12827u, 1u), 652f, true, Struct_1(34504u, vec4<u32>(0u, 0u, 38469u, 0u), vec4<f32>(-509f, 1173f, 1847f, 231f), vec2<bool>(false, true)), 1109f), Struct_2(vec4<u32>(47214u, 1u, 4294967295u, 43903u), -1000f, true, Struct_1(1u, vec4<u32>(2527u, 16411u, 0u, 1u), vec4<f32>(469f, -719f, 153f, 1487f), vec2<bool>(true, true)), 179f), Struct_2(vec4<u32>(3242u, 81271u, 4294967295u, 4294967295u), 299f, true, Struct_1(0u, vec4<u32>(27472u, 1u, 66793u, 4294967295u), vec4<f32>(1375f, -345f, 365f, -1394f), vec2<bool>(true, true)), 1236f), Struct_2(vec4<u32>(18238u, 0u, 9325u, 22956u), -1467f, true, Struct_1(5840u, vec4<u32>(1u, 4294967295u, 46947u, 1u), vec4<f32>(-838f, -1521f, 676f, -255f), vec2<bool>(true, true)), 2638f), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), -614f, false, Struct_1(1u, vec4<u32>(1188u, 4294967295u, 1u, 94590u), vec4<f32>(502f, -145f, -1102f, -136f), vec2<bool>(true, true)), -1524f), Struct_2(vec4<u32>(64937u, 61786u, 13169u, 17513u), 1008f, false, Struct_1(76654u, vec4<u32>(70514u, 55609u, 46168u, 10842u), vec4<f32>(-727f, -1193f, -139f, 1000f), vec2<bool>(true, false)), -1977f), Struct_2(vec4<u32>(0u, 0u, 0u, 1342u), 456f, true, Struct_1(1u, vec4<u32>(1u, 4294967295u, 1u, 9128u), vec4<f32>(190f, 213f, -458f, 1470f), vec2<bool>(false, true)), -365f), Struct_2(vec4<u32>(35431u, 0u, 0u, 4294967295u), -2272f, false, Struct_1(1u, vec4<u32>(1u, 0u, 90855u, 36763u), vec4<f32>(-247f, -1627f, -403f, 265f), vec2<bool>(false, false)), 1092f), Struct_2(vec4<u32>(79436u, 0u, 1u, 5963u), 668f, true, Struct_1(1u, vec4<u32>(30476u, 0u, 29491u, 64222u), vec4<f32>(1301f, -301f, -651f, 1000f), vec2<bool>(false, true)), 1000f), Struct_2(vec4<u32>(0u, 18927u, 20784u, 12764u), 1230f, false, Struct_1(10996u, vec4<u32>(0u, 1u, 12253u, 22869u), vec4<f32>(686f, 614f, 537f, -1000f), vec2<bool>(true, true)), 532f), Struct_2(vec4<u32>(0u, 71092u, 1u, 29929u), -2087f, false, Struct_1(14305u, vec4<u32>(44025u, 46697u, 828u, 39084u), vec4<f32>(158f, -1000f, 923f, 1034f), vec2<bool>(false, false)), 135f), Struct_2(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), -307f, false, Struct_1(0u, vec4<u32>(0u, 17877u, 11782u, 4294967295u), vec4<f32>(-113f, 604f, -514f, 2257f), vec2<bool>(true, false)), -192f), Struct_2(vec4<u32>(0u, 63161u, 1u, 32830u), 579f, false, Struct_1(30365u, vec4<u32>(0u, 0u, 108565u, 16753u), vec4<f32>(-902f, -110f, 515f, -1278f), vec2<bool>(true, true)), -175f), Struct_2(vec4<u32>(66622u, 71518u, 86003u, 29524u), -163f, true, Struct_1(0u, vec4<u32>(22572u, 20026u, 4294967295u, 50562u), vec4<f32>(757f, -128f, -1000f, -804f), vec2<bool>(true, true)), -1000f), Struct_2(vec4<u32>(56530u, 28327u, 17816u, 0u), -155f, false, Struct_1(4294967295u, vec4<u32>(13344u, 4294967295u, 1u, 1202u), vec4<f32>(953f, 1722f, -1243f, 503f), vec2<bool>(false, false)), -242f), Struct_2(vec4<u32>(4294967295u, 1u, 79050u, 0u), 125f, true, Struct_1(64559u, vec4<u32>(31799u, 0u, 4294967295u, 0u), vec4<f32>(578f, 620f, -1384f, -736f), vec2<bool>(true, false)), -1000f), Struct_2(vec4<u32>(17129u, 1u, 0u, 4294967295u), 1000f, false, Struct_1(57026u, vec4<u32>(11379u, 1u, 39748u, 60147u), vec4<f32>(510f, 356f, 463f, -2085f), vec2<bool>(false, true)), -1975f), Struct_2(vec4<u32>(1u, 80166u, 85169u, 25310u), -1170f, true, Struct_1(17779u, vec4<u32>(69124u, 1u, 6743u, 75583u), vec4<f32>(-941f, 739f, 936f, 562f), vec2<bool>(false, false)), 602f), Struct_2(vec4<u32>(4294967295u, 0u, 0u, 1u), -1000f, true, Struct_1(1469u, vec4<u32>(4294967295u, 25835u, 0u, 60749u), vec4<f32>(-1817f, 1000f, 1196f, 1654f), vec2<bool>(false, false)), -1561f), Struct_2(vec4<u32>(12086u, 0u, 1u, 2515u), -799f, true, Struct_1(4294967295u, vec4<u32>(19230u, 37090u, 72285u, 0u), vec4<f32>(1441f, -339f, 749f, -1642f), vec2<bool>(false, false)), 456f), Struct_2(vec4<u32>(8608u, 1u, 60478u, 0u), 743f, false, Struct_1(4294967295u, vec4<u32>(1u, 4294967295u, 145u, 1u), vec4<f32>(1000f, -467f, -802f, 607f), vec2<bool>(true, false)), -106f), Struct_2(vec4<u32>(41421u, 0u, 1u, 46900u), 951f, true, Struct_1(0u, vec4<u32>(1u, 1u, 28721u, 1u), vec4<f32>(802f, -422f, -749f, 418f), vec2<bool>(false, false)), 700f), Struct_2(vec4<u32>(33376u, 0u, 1u, 0u), 917f, true, Struct_1(17092u, vec4<u32>(4294967295u, 4294967295u, 2392u, 8257u), vec4<f32>(-421f, -875f, -1883f, -247f), vec2<bool>(false, true)), 310f), Struct_2(vec4<u32>(33479u, 1u, 0u, 4294967295u), 561f, false, Struct_1(0u, vec4<u32>(44143u, 62135u, 5310u, 1u), vec4<f32>(-620f, 181f, 220f, 1171f), vec2<bool>(false, true)), 1233f), Struct_2(vec4<u32>(1u, 34879u, 25541u, 37496u), 443f, true, Struct_1(6397u, vec4<u32>(1u, 4294967295u, 36733u, 41262u), vec4<f32>(1000f, 1789f, -755f, 1010f), vec2<bool>(true, false)), 464f), Struct_2(vec4<u32>(13894u, 1u, 6600u, 0u), 1033f, true, Struct_1(16913u, vec4<u32>(33722u, 31091u, 4294967295u, 0u), vec4<f32>(573f, -828f, 1000f, 2504f), vec2<bool>(false, true)), -548f), Struct_2(vec4<u32>(1u, 1u, 11488u, 4294967295u), 923f, true, Struct_1(0u, vec4<u32>(24361u, 1u, 12969u, 0u), vec4<f32>(-569f, -636f, 913f, -814f), vec2<bool>(false, false)), 101f), Struct_2(vec4<u32>(1u, 23786u, 37542u, 12770u), 788f, true, Struct_1(31729u, vec4<u32>(1u, 0u, 3143u, 19521u), vec4<f32>(-396f, -681f, 961f, -857f), vec2<bool>(false, true)), -1774f));

var<private> global3: array<u32, 25>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    global0 = ~u_input.b;
    global2 = array<Struct_2, 28>();
    var var_0 = 4294967295u;
    var var_1 = Struct_2(select(abs(u_input.b), ~vec4<u32>(42573u, arg_1, global3[_wgslsmith_index_u32(4294967295u, 25u)], arg_1), true) & ~_wgslsmith_add_vec4_u32(~u_input.b, ~u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1256f)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(-371f, -458f), true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-196f - _wgslsmith_f_op_f32(-686f * 1848f)), -517f, true))), false, Struct_1(~global0.x, u_input.b, vec4<f32>(_wgslsmith_f_op_f32(502f + 676f), _wgslsmith_f_op_f32(1276f + _wgslsmith_div_f32(-738f, 938f)), -1613f, -351f), vec2<bool>(select(any(vec3<bool>(false, false, false)), all(vec2<bool>(false, true)), true), true)), -1169f);
    global3 = array<u32, 25>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(624f, var_1.e)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_1.e, var_1.b)), _wgslsmith_f_op_f32(-var_1.e), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) - _wgslsmith_div_f32(var_1.b, 439f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-613f, _wgslsmith_f_op_f32(-var_1.b))));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<i32>(3293i, -1i), firstLeadingBit(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1164f + 1548f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -939f), 1307f)))));
    global2 = array<Struct_2, 28>();
    global1 = array<Struct_3, 11>();
    global0 = u_input.b;
    return var_1.x;
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec4<i32> {
    return firstTrailingBit(select(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -(~vec4<i32>(-20552i, 31803i, -1782i, 0i))), min(select(vec4<i32>(1i, -2147483647i, 1i, -21770i), vec4<i32>(1i, 1i, 1i, 1i), select(vec4<bool>(true, arg_1.c, arg_1.d.d.x, false), vec4<bool>(arg_1.d.d.x, arg_1.c, true, false), false)), select(~vec4<i32>(21252i, 20802i, -2147483647i, -1i), abs(vec4<i32>(-28294i, 1i, -2147483647i, -24652i)), select(vec4<bool>(true, true, arg_0, false), vec4<bool>(arg_0, true, false, arg_0), arg_1.d.d.x))), any(vec4<bool>(true, all(vec4<bool>(arg_1.c, true, false, false)), arg_0, true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_3(arg_3);
    global3 = array<u32, 25>();
    let var_1 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0.a, 57082i) << (~vec3<u32>(41546u, 1221u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(var_0.a, arg_3, -var_0.a));
    let var_2 = reverseBits(max(~u_input.a, _wgslsmith_sub_u32(~abs(u_input.b.x), ~_wgslsmith_dot_vec2_u32(arg_2.a.zw, arg_2.d.b.xz))));
    var var_3 = select(vec4<bool>(true | select(!arg_1.d.x, arg_2.e <= 533f, any(vec4<bool>(false, arg_0.d.x, false, arg_0.d.x))), select(true, any(vec4<bool>(arg_0.d.x, true, false, arg_1.d.x)), any(vec3<bool>(arg_2.c, arg_2.c, arg_2.c))) | arg_0.d.x, arg_1.d.x, !(all(vec4<bool>(arg_2.c, false, arg_0.d.x, arg_2.c)) | true)), !select(!(!vec4<bool>(arg_2.c, true, arg_1.d.x, true)), select(select(vec4<bool>(arg_1.d.x, true, arg_2.d.d.x, arg_0.d.x), vec4<bool>(arg_0.d.x, true, arg_1.d.x, arg_0.d.x), arg_1.d.x), !vec4<bool>(false, true, false, arg_1.d.x), vec4<bool>(arg_0.d.x, true, arg_0.d.x, arg_2.c)), select(!vec4<bool>(arg_2.c, true, true, true), vec4<bool>(true, true, true, true), arg_1.c.x >= arg_1.c.x)), !vec4<bool>(_wgslsmith_f_op_f32(min(arg_0.c.x, arg_1.c.x)) < _wgslsmith_f_op_f32(189f + arg_1.c.x), false, arg_2.d.d.x, true || all(vec2<bool>(arg_0.d.x, false))));
    return Struct_1(44970u, vec4<u32>(1u, ~countOneBits(~34735u), _wgslsmith_mult_u32(abs(global3[_wgslsmith_index_u32(27167u, 25u)] >> (58932u % 32u)), 1u), 42940u), arg_1.c, select(arg_0.d, select(arg_2.d.d, arg_2.d.d, select(arg_0.d, var_3.yy, vec2<bool>(arg_1.d.x, arg_1.d.x))), vec2<bool>(true, all(select(vec3<bool>(false, true, var_3.x), var_3.wyw, var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(12576u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)]), max(u_input.b.x, 12692u) >> (global3[_wgslsmith_index_u32(~0u, 25u)] % 32u)), _wgslsmith_div_vec4_u32(u_input.b, ~vec4<u32>(u_input.a, 0u, global0.x, global3[_wgslsmith_index_u32(global0.x, 25u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1518f, 1000f, -710f, 1271f))), vec2<bool>(false, true)), Struct_1(global3[_wgslsmith_index_u32(20494u, 25u)], u_input.b, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1233f, -554f, false)), 1424f)), -140f, 755f, _wgslsmith_f_op_f32(func_1(u_input.b))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), all(vec4<bool>(true, true, true, false))))), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(78546u, 25u)], 28u)], _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(func_3(true, Struct_2(u_input.b, 129f, false, Struct_1(0u, vec4<u32>(u_input.b.x, 23810u, u_input.b.x, 25671u), vec4<f32>(319f, 1531f, 1080f, -1742f), vec2<bool>(true, false)), -653f)), vec4<i32>(1i, 1i, 1i, 1i))), -(~func_3(false, Struct_2(u_input.b, -188f, false, Struct_1(4294967295u, vec4<u32>(u_input.b.x, 0u, 0u, u_input.a), vec4<f32>(-336f, 466f, -1155f, 1797f), vec2<bool>(true, false)), -995f)).x), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -23056i, -88020i, 70850i), vec4<i32>(1i, 1i, 1i, 1i)), ~(-2147483647i))));
    let var_1 = var_0.d;
    var var_2 = _wgslsmith_f_op_f32(func_1(~vec4<u32>(reverseBits(101565u), 1u, global0.x, select(1u, global0.x, var_0.d.x)))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -590f), -1317f);
    let var_3 = Struct_3(_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(1i, 1i, 1i, 1i)), select(~func_3(var_0.d.x, Struct_2(vec4<u32>(global0.x, 28908u, global0.x, 17254u), 315f, false, var_0, var_0.c.x)), ~vec4<i32>(11981i, 2147483647i, -36469i, 0i), false)));
    let var_4 = global2[_wgslsmith_index_u32(global0.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~(-10446i), -18648i, var_3.a), ~select(vec3<i32>(var_3.a, var_3.a, -1i), vec3<i32>(2147483647i, -2147483647i, var_3.a), var_1.x)), ~abs(-vec3<i32>(var_3.a, 29767i, -15183i))));
}

