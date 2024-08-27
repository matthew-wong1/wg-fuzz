struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(72924u, vec3<u32>(4294967295u, 57365u, 1u)), Struct_4(0u, vec3<u32>(67694u, 28713u, 41385u)), Struct_4(0u, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_4(4294967295u, vec3<u32>(0u, 1u, 52164u)), Struct_4(4294967295u, vec3<u32>(70001u, 79685u, 4294967295u)), Struct_4(19430u, vec3<u32>(4294967295u, 1u, 1u)), Struct_4(63659u, vec3<u32>(1u, 0u, 46627u)), Struct_4(1u, vec3<u32>(4294967295u, 22555u, 31679u)), Struct_4(0u, vec3<u32>(53784u, 44825u, 4294967295u)), Struct_4(35917u, vec3<u32>(26901u, 9165u, 23284u)), Struct_4(25281u, vec3<u32>(111540u, 20872u, 39704u)), Struct_4(0u, vec3<u32>(4294967295u, 4294967295u, 28922u)), Struct_4(71536u, vec3<u32>(82292u, 4294967295u, 28389u)), Struct_4(58743u, vec3<u32>(3204u, 4294967295u, 65109u)), Struct_4(4294967295u, vec3<u32>(25496u, 1u, 32342u)), Struct_4(0u, vec3<u32>(1u, 1u, 1u)), Struct_4(64430u, vec3<u32>(1u, 1u, 62156u)), Struct_4(29932u, vec3<u32>(0u, 4294967295u, 57465u)), Struct_4(1u, vec3<u32>(25158u, 4294967295u, 1u)), Struct_4(109733u, vec3<u32>(32659u, 45722u, 35278u)), Struct_4(60287u, vec3<u32>(0u, 0u, 12693u)), Struct_4(28424u, vec3<u32>(60799u, 78358u, 8598u)), Struct_4(4294967295u, vec3<u32>(14413u, 25730u, 1u)), Struct_4(0u, vec3<u32>(25589u, 1u, 1u)));

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_2(1006f, Struct_1(vec3<f32>(-1602f, -657f, -1281f), -713f, 77984i), Struct_1(vec3<f32>(634f, 2120f, 409f), -124f, 18474i), true, Struct_1(vec3<f32>(1167f, -1504f, 393f), 740f, 47359i)), vec2<i32>(i32(-2147483648), -13189i)), Struct_3(Struct_2(-145f, Struct_1(vec3<f32>(-481f, 180f, -908f), -1000f, -1i), Struct_1(vec3<f32>(1593f, -1615f, 471f), 1339f, 1i), true, Struct_1(vec3<f32>(1787f, -383f, 501f), -349f, -15173i)), vec2<i32>(-1i, 31900i)), Struct_3(Struct_2(811f, Struct_1(vec3<f32>(-689f, 313f, 1000f), 2005f, -1i), Struct_1(vec3<f32>(-858f, 576f, -1306f), 1000f, 45463i), true, Struct_1(vec3<f32>(-810f, 1894f, 1835f), -895f, 0i)), vec2<i32>(2147483647i, 1i)), Struct_3(Struct_2(1460f, Struct_1(vec3<f32>(-382f, -656f, 1006f), -790f, -52026i), Struct_1(vec3<f32>(108f, -587f, -1198f), 1746f, i32(-2147483648)), true, Struct_1(vec3<f32>(-550f, -538f, 936f), 601f, -30720i)), vec2<i32>(0i, i32(-2147483648))), Struct_3(Struct_2(2103f, Struct_1(vec3<f32>(-1000f, 559f, -1000f), -454f, 1022i), Struct_1(vec3<f32>(1000f, 2077f, 488f), -613f, -1i), true, Struct_1(vec3<f32>(166f, -750f, 319f), 631f, 25622i)), vec2<i32>(44668i, -23788i)), Struct_3(Struct_2(-370f, Struct_1(vec3<f32>(1046f, 459f, 1345f), -328f, 51450i), Struct_1(vec3<f32>(-1000f, -945f, -1387f), -627f, i32(-2147483648)), false, Struct_1(vec3<f32>(438f, -1076f, 954f), 1633f, -25104i)), vec2<i32>(10176i, i32(-2147483648))), Struct_3(Struct_2(536f, Struct_1(vec3<f32>(-1255f, 1230f, -1000f), -1400f, -13876i), Struct_1(vec3<f32>(-926f, -1070f, -1614f), -1745f, 2147483647i), true, Struct_1(vec3<f32>(-1319f, 381f, -505f), 1000f, -300i)), vec2<i32>(12642i, i32(-2147483648))), Struct_3(Struct_2(-451f, Struct_1(vec3<f32>(-921f, 758f, 892f), -1408f, 21114i), Struct_1(vec3<f32>(1325f, 214f, 533f), 1000f, 0i), true, Struct_1(vec3<f32>(1007f, 1238f, -246f), -755f, 31854i)), vec2<i32>(-1i, -10643i)), Struct_3(Struct_2(822f, Struct_1(vec3<f32>(2651f, -382f, -1065f), 1208f, i32(-2147483648)), Struct_1(vec3<f32>(-461f, 477f, -133f), -421f, 2147483647i), false, Struct_1(vec3<f32>(-288f, 1546f, 1788f), -1612f, 1i)), vec2<i32>(0i, 0i)), Struct_3(Struct_2(-1289f, Struct_1(vec3<f32>(787f, 1355f, 1459f), 1000f, 44756i), Struct_1(vec3<f32>(273f, 923f, 533f), -1597f, 33746i), true, Struct_1(vec3<f32>(-895f, -1117f, -1000f), -638f, 0i)), vec2<i32>(47829i, -4971i)), Struct_3(Struct_2(1325f, Struct_1(vec3<f32>(-950f, -593f, 144f), 638f, -50897i), Struct_1(vec3<f32>(-214f, -1000f, 885f), -1152f, 2147483647i), true, Struct_1(vec3<f32>(-588f, 1121f, -729f), -1397f, 13670i)), vec2<i32>(-47766i, 49839i)), Struct_3(Struct_2(-1737f, Struct_1(vec3<f32>(-828f, 941f, -973f), -1000f, 21484i), Struct_1(vec3<f32>(-782f, -177f, -232f), 943f, 12654i), true, Struct_1(vec3<f32>(-569f, -1230f, -824f), 356f, 1i)), vec2<i32>(30382i, -1712i)), Struct_3(Struct_2(-479f, Struct_1(vec3<f32>(-1650f, -327f, 638f), -1075f, 31435i), Struct_1(vec3<f32>(474f, -728f, 2581f), 2431f, 19081i), false, Struct_1(vec3<f32>(-427f, 427f, 699f), -580f, -12040i)), vec2<i32>(-61516i, 1i)), Struct_3(Struct_2(-1700f, Struct_1(vec3<f32>(1022f, 147f, 1275f), 991f, 0i), Struct_1(vec3<f32>(850f, -327f, -1407f), -1206f, 228i), true, Struct_1(vec3<f32>(273f, 1000f, 1483f), -152f, -326i)), vec2<i32>(-40347i, -1i)), Struct_3(Struct_2(-336f, Struct_1(vec3<f32>(-1451f, 567f, 975f), -491f, 1i), Struct_1(vec3<f32>(-1489f, 659f, -1623f), -1000f, -28618i), true, Struct_1(vec3<f32>(-563f, -1417f, -699f), -146f, -33168i)), vec2<i32>(-73794i, -32009i)), Struct_3(Struct_2(740f, Struct_1(vec3<f32>(-573f, 406f, -250f), 2110f, 1i), Struct_1(vec3<f32>(-149f, -831f, 609f), -1207f, 2147483647i), true, Struct_1(vec3<f32>(1095f, -1000f, 720f), -2535f, 17970i)), vec2<i32>(-40536i, -50495i)), Struct_3(Struct_2(-919f, Struct_1(vec3<f32>(504f, -130f, 134f), 1000f, 2147483647i), Struct_1(vec3<f32>(-761f, -1971f, -1008f), -738f, 1i), false, Struct_1(vec3<f32>(-1745f, 1000f, -843f), 1480f, -22723i)), vec2<i32>(4046i, 2147483647i)), Struct_3(Struct_2(-231f, Struct_1(vec3<f32>(942f, 369f, 2260f), -3168f, -19895i), Struct_1(vec3<f32>(821f, 1421f, -1185f), 1033f, 29986i), false, Struct_1(vec3<f32>(581f, -1000f, 1035f), 1013f, 2147483647i)), vec2<i32>(1i, -26083i)), Struct_3(Struct_2(-1192f, Struct_1(vec3<f32>(-572f, 1827f, 1258f), 1396f, 62998i), Struct_1(vec3<f32>(1137f, -1000f, 120f), -773f, 2147483647i), false, Struct_1(vec3<f32>(1312f, -2272f, 2331f), -1318f, 39978i)), vec2<i32>(-9914i, i32(-2147483648))), Struct_3(Struct_2(1382f, Struct_1(vec3<f32>(-185f, -1566f, 1000f), 1114f, 2815i), Struct_1(vec3<f32>(994f, -1205f, 967f), -404f, -1i), true, Struct_1(vec3<f32>(297f, 376f, 185f), 123f, -22833i)), vec2<i32>(-34365i, -1i)), Struct_3(Struct_2(312f, Struct_1(vec3<f32>(-1890f, 1817f, -923f), -844f, 1i), Struct_1(vec3<f32>(-528f, 564f, -288f), -331f, 2147483647i), true, Struct_1(vec3<f32>(-1324f, -468f, -242f), -234f, 19992i)), vec2<i32>(-22940i, 1i)), Struct_3(Struct_2(461f, Struct_1(vec3<f32>(604f, 397f, -716f), 1024f, -27609i), Struct_1(vec3<f32>(-233f, -380f, -603f), 1000f, 13505i), true, Struct_1(vec3<f32>(-1000f, -1017f, 150f), 932f, i32(-2147483648))), vec2<i32>(42953i, 5973i)), Struct_3(Struct_2(-1060f, Struct_1(vec3<f32>(2138f, -281f, -953f), -387f, 62802i), Struct_1(vec3<f32>(-1324f, 471f, 370f), 1000f, -56477i), false, Struct_1(vec3<f32>(1276f, -854f, 676f), -330f, 49052i)), vec2<i32>(2147483647i, 7134i)), Struct_3(Struct_2(1000f, Struct_1(vec3<f32>(-614f, 418f, 1689f), 1229f, 0i), Struct_1(vec3<f32>(264f, -1000f, 723f), -1000f, -36981i), false, Struct_1(vec3<f32>(-296f, -1274f, -308f), 1000f, 2147483647i)), vec2<i32>(i32(-2147483648), 39664i)), Struct_3(Struct_2(-1821f, Struct_1(vec3<f32>(-719f, -365f, 445f), 202f, 3078i), Struct_1(vec3<f32>(1201f, -446f, -414f), 248f, -48062i), true, Struct_1(vec3<f32>(596f, -1478f, 1563f), -1392f, 47165i)), vec2<i32>(0i, 1i)), Struct_3(Struct_2(327f, Struct_1(vec3<f32>(-1506f, 757f, -848f), -757f, 1866i), Struct_1(vec3<f32>(892f, 1000f, 1676f), 293f, 2147483647i), false, Struct_1(vec3<f32>(-1628f, -786f, 288f), -185f, -49368i)), vec2<i32>(1i, 0i)), Struct_3(Struct_2(-1158f, Struct_1(vec3<f32>(-1000f, 256f, 469f), 1000f, -1i), Struct_1(vec3<f32>(-1202f, -896f, 190f), 740f, 1i), false, Struct_1(vec3<f32>(579f, 561f, 434f), -1000f, 2147483647i)), vec2<i32>(1i, 1i)));

var<private> global2: Struct_2;

var<private> global3: array<vec3<f32>, 7>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    global1 = array<Struct_3, 27>();
    let var_0 = global2.b.c;
    global3 = array<vec3<f32>, 7>();
    var var_1 = Struct_4(24727u, vec3<u32>(33620u, 53623u, min(firstLeadingBit(~4924u), 1u)));
    let var_2 = Struct_1(global2.c.a, global2.b.a.x, -_wgslsmith_sub_i32(global2.b.c, _wgslsmith_dot_vec4_i32(abs(u_input.a), _wgslsmith_mult_vec4_i32(u_input.a, u_input.a))));
    return _wgslsmith_f_op_f32(-var_2.a.x);
}

fn func_3() -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(1u, 24u)];
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(abs(~global2.b.c), abs(-u_input.b), reverseBits(22643i)), abs(u_input.b), global2.b.c) & vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, 1i), -(i32(-1i) * -1i)), -(global2.b.c ^ -16013i), global2.e.c);
    global3 = array<vec3<f32>, 7>();
    global1 = array<Struct_3, 27>();
    var var_2 = _wgslsmith_f_op_vec3_f32(step(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.b.x, firstTrailingBit(0u)), max(_wgslsmith_mult_u32(var_0.b.x, 0u), reverseBits(var_0.b.x))), ~(~var_0.a)), 7u)], vec3<f32>(_wgslsmith_f_op_f32(global2.e.b - global2.a), -1248f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a))), global2.b.a.x))));
    return select(vec3<bool>(_wgslsmith_f_op_f32(-2110f + _wgslsmith_f_op_f32(var_2.x - global2.a)) >= _wgslsmith_f_op_f32(-var_2.x), !(var_2.x <= global2.b.a.x), global2.d), !vec3<bool>(global2.d, true, _wgslsmith_f_op_f32(abs(var_2.x)) <= -492f), global2.d);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    global1 = array<Struct_3, 27>();
    var var_1 = !(!func_3());
    global0 = array<Struct_4, 24>();
    var var_2 = global1[_wgslsmith_index_u32(64863u, 27u)];
    return Struct_2(var_0, global2.e, var_2.a.e, !(true != all(func_3())), Struct_1(global3[_wgslsmith_index_u32(abs(~4157u), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1166f) + var_0), _wgslsmith_dot_vec4_i32(-u_input.a, abs(abs(u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 24>();
    let var_0 = func_1(-278f);
    var var_1 = Struct_3(var_0, -(max(u_input.c.xy & u_input.c.yy, firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x))) << (abs(min(vec2<u32>(72725u, 48967u), vec2<u32>(0u, 0u))) % vec2<u32>(32u))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(410f, -1066f, var_1.a.c.b), _wgslsmith_f_op_vec3_f32(-var_0.b.a))))), 1536f, _wgslsmith_dot_vec2_i32(max(vec2<i32>(global2.c.c, 0i), ~vec2<i32>(u_input.a.x, -7889i)), _wgslsmith_sub_vec2_i32(max(var_1.b, vec2<i32>(var_1.a.e.c, u_input.d)), var_1.b)) & 1i);
    global1 = array<Struct_3, 27>();
    var var_3 = vec4<bool>(any(vec3<bool>(true, !any(vec3<bool>(var_0.d, var_1.a.d, var_1.a.d)), _wgslsmith_sub_i32(0i, global2.e.c) > (var_2.c >> (36885u % 32u)))), !select(!(!var_1.a.d), any(select(vec4<bool>(var_1.a.d, global2.d, true, true), vec4<bool>(true, var_1.a.d, global2.d, var_1.a.d), var_1.a.d)), !(-6558i < u_input.b)), var_0.d, true);
    let var_4 = all(select(!select(select(vec4<bool>(true, var_0.d, false, true), vec4<bool>(false, false, true, false), vec4<bool>(var_3.x, true, true, var_3.x)), vec4<bool>(global2.d, global2.d, global2.d, true), false), !(!vec4<bool>(false, var_0.d, true, global2.d)), !(!(!vec4<bool>(false, global2.d, false, false)))));
    let var_5 = Struct_3(Struct_2(func_1(var_1.a.c.a.x).c.a.x, func_1(var_1.a.b.a.x).b, var_0.e, all(vec4<bool>(global2.d, var_0.d, var_1.a.d, true)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(245f, var_2.b, 1444f) * var_0.b.a), _wgslsmith_f_op_f32(round(505f)), global2.b.c)), var_1.b);
    var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(1551f * _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(step(205f, 268f)))), var_5.a.b, Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.c.a.x, -673f, 656f))), _wgslsmith_f_op_f32(1692f - -222f), _wgslsmith_mod_i32(var_2.c, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.a.x * global2.b.a.x) * var_1.a.c.b) >= global2.c.a.x, var_1.a.c), _wgslsmith_add_vec2_i32(var_1.b, var_5.b) ^ u_input.a.yy);
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_5.a.a))), ~(~46984u));
}

