struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(16976u, vec4<f32>(-1423f, 613f, 630f, -229f), 1000f, Struct_1(-1518f, vec4<f32>(294f, 1300f, 166f, -468f), 23240u), Struct_1(1000f, vec4<f32>(1000f, 702f, 823f, -1037f), 21594u));

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(1u, vec4<f32>(-983f, -1968f, -1179f, 359f), -124f, Struct_1(-290f, vec4<f32>(645f, -513f, 414f, 1000f), 13548u), Struct_1(-573f, vec4<f32>(905f, -912f, -451f, -1283f), 1621u)), Struct_2(1u, vec4<f32>(-520f, -864f, -1592f, 1492f), 458f, Struct_1(-135f, vec4<f32>(1000f, 104f, 383f, -167f), 33532u), Struct_1(-512f, vec4<f32>(-880f, -1442f, -339f, -633f), 4294967295u)), Struct_2(36960u, vec4<f32>(1423f, 1000f, -1261f, -921f), 351f, Struct_1(616f, vec4<f32>(2500f, -374f, -327f, 315f), 4289u), Struct_1(-253f, vec4<f32>(469f, 1481f, 627f, 1057f), 1u)), Struct_2(76962u, vec4<f32>(887f, 515f, -155f, -1407f), 1000f, Struct_1(-2331f, vec4<f32>(-1000f, 1000f, 823f, -1731f), 1u), Struct_1(358f, vec4<f32>(-158f, -1727f, -736f, -122f), 21849u)), Struct_2(4294967295u, vec4<f32>(-1177f, 252f, -284f, 184f), 2171f, Struct_1(1000f, vec4<f32>(1239f, 897f, -1532f, 799f), 1u), Struct_1(-134f, vec4<f32>(367f, -1000f, -812f, -2348f), 1u)), Struct_2(4294967295u, vec4<f32>(1342f, 452f, 933f, 1039f), 529f, Struct_1(-1000f, vec4<f32>(889f, -1310f, 1000f, 764f), 119283u), Struct_1(302f, vec4<f32>(379f, 898f, 1698f, -394f), 4294967295u)), Struct_2(47374u, vec4<f32>(-886f, -709f, -739f, 1302f), 370f, Struct_1(494f, vec4<f32>(1000f, -461f, -493f, 257f), 0u), Struct_1(-440f, vec4<f32>(1288f, -820f, 428f, 2074f), 1u)), Struct_2(1u, vec4<f32>(620f, 1081f, -684f, -560f), 1044f, Struct_1(-1767f, vec4<f32>(1452f, 1268f, 134f, -833f), 33961u), Struct_1(-444f, vec4<f32>(-241f, -197f, -104f, -864f), 4294967295u)), Struct_2(4294967295u, vec4<f32>(347f, 945f, 448f, -197f), 1263f, Struct_1(-475f, vec4<f32>(-812f, -405f, 124f, -455f), 6008u), Struct_1(337f, vec4<f32>(1003f, -702f, 381f, 1000f), 54453u)), Struct_2(69315u, vec4<f32>(-1082f, -404f, -1397f, -102f), -1099f, Struct_1(-615f, vec4<f32>(-879f, -497f, -1097f, 1321f), 0u), Struct_1(-915f, vec4<f32>(865f, 801f, -1495f, 959f), 9058u)), Struct_2(1u, vec4<f32>(-397f, -1613f, -1203f, -222f), -911f, Struct_1(1000f, vec4<f32>(-1331f, -722f, 823f, 171f), 46188u), Struct_1(-391f, vec4<f32>(-847f, -373f, 230f, 1145f), 4294967295u)), Struct_2(18653u, vec4<f32>(1235f, -1039f, -1810f, 639f), 1524f, Struct_1(-1000f, vec4<f32>(-170f, 1898f, -1871f, -2017f), 0u), Struct_1(801f, vec4<f32>(-930f, 508f, -1000f, -1240f), 3818u)), Struct_2(1u, vec4<f32>(-158f, 115f, -1482f, 354f), 178f, Struct_1(-790f, vec4<f32>(283f, 1000f, -1000f, -897f), 2409u), Struct_1(-901f, vec4<f32>(-1000f, 706f, -153f, -292f), 1u)), Struct_2(28715u, vec4<f32>(-1000f, -961f, 275f, 1773f), -991f, Struct_1(913f, vec4<f32>(-883f, -559f, -1000f, -411f), 21764u), Struct_1(-1000f, vec4<f32>(663f, -1189f, 1024f, 2245f), 1u)), Struct_2(0u, vec4<f32>(-1767f, 504f, 1262f, -1667f), -287f, Struct_1(308f, vec4<f32>(-1593f, 674f, 531f, 609f), 1u), Struct_1(-357f, vec4<f32>(-867f, -102f, -1098f, 384f), 0u)));

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(1763u, Struct_2(13165u, vec4<f32>(-1161f, -988f, -352f, -1283f), -340f, Struct_1(-1039f, vec4<f32>(1798f, 499f, -579f, 1000f), 50979u), Struct_1(191f, vec4<f32>(-1457f, -1000f, 1393f, 144f), 0u)), Struct_1(1784f, vec4<f32>(-1118f, 718f, 676f, -105f), 71679u)), Struct_3(13553u, Struct_2(0u, vec4<f32>(1678f, 336f, -100f, -2032f), 1242f, Struct_1(1004f, vec4<f32>(-1000f, 1000f, -1348f, -211f), 26583u), Struct_1(953f, vec4<f32>(-2034f, -690f, 382f, -103f), 0u)), Struct_1(2064f, vec4<f32>(580f, -858f, -559f, -209f), 76913u)), Struct_3(1u, Struct_2(20014u, vec4<f32>(1000f, -1000f, -938f, 1625f), -237f, Struct_1(300f, vec4<f32>(-1088f, -1903f, -1000f, 3148f), 4294967295u), Struct_1(198f, vec4<f32>(-279f, -3487f, -790f, -1974f), 1u)), Struct_1(-810f, vec4<f32>(841f, -207f, -1587f, 709f), 4294967295u)), Struct_3(16547u, Struct_2(0u, vec4<f32>(-987f, 389f, 198f, 823f), 493f, Struct_1(-905f, vec4<f32>(-142f, -1000f, 1466f, 1593f), 11656u), Struct_1(2064f, vec4<f32>(-450f, 1209f, -1082f, 397f), 74627u)), Struct_1(-1130f, vec4<f32>(-536f, 605f, 293f, 153f), 46346u)), Struct_3(0u, Struct_2(1u, vec4<f32>(280f, -130f, -637f, -1033f), 809f, Struct_1(-618f, vec4<f32>(-732f, -872f, 1756f, 1492f), 63225u), Struct_1(1375f, vec4<f32>(2144f, 1000f, 915f, -363f), 4294967295u)), Struct_1(1834f, vec4<f32>(500f, 1279f, 206f, -1000f), 11676u)), Struct_3(29538u, Struct_2(1u, vec4<f32>(382f, -1416f, -375f, -1538f), 540f, Struct_1(643f, vec4<f32>(788f, 956f, 1176f, -304f), 0u), Struct_1(-325f, vec4<f32>(-740f, -979f, 1496f, 525f), 4294967295u)), Struct_1(-1344f, vec4<f32>(-1054f, 697f, -2658f, -1000f), 4294967295u)), Struct_3(1u, Struct_2(1u, vec4<f32>(-181f, -661f, 1698f, -881f), -1000f, Struct_1(1238f, vec4<f32>(-624f, 950f, -1031f, -804f), 1u), Struct_1(-804f, vec4<f32>(1297f, 2045f, 561f, 641f), 20962u)), Struct_1(-130f, vec4<f32>(-1762f, -1326f, -1000f, -1549f), 4294967295u)), Struct_3(4294967295u, Struct_2(0u, vec4<f32>(-1396f, -374f, 836f, -411f), 1412f, Struct_1(140f, vec4<f32>(463f, 692f, -166f, -1644f), 20524u), Struct_1(-1000f, vec4<f32>(-262f, -430f, -825f, -219f), 14079u)), Struct_1(1227f, vec4<f32>(-868f, 1284f, 313f, 425f), 29133u)), Struct_3(31779u, Struct_2(0u, vec4<f32>(-1050f, -1173f, 796f, -1655f), 300f, Struct_1(-125f, vec4<f32>(466f, -1000f, 142f, 102f), 10879u), Struct_1(-649f, vec4<f32>(773f, 214f, 1531f, -789f), 22585u)), Struct_1(-425f, vec4<f32>(-1315f, 671f, -605f, 526f), 4294967295u)), Struct_3(35313u, Struct_2(48127u, vec4<f32>(292f, 325f, 1801f, 1248f), -104f, Struct_1(223f, vec4<f32>(486f, 884f, -1175f, 1986f), 21736u), Struct_1(285f, vec4<f32>(466f, 1137f, 159f, 805f), 1u)), Struct_1(-180f, vec4<f32>(726f, -615f, -1387f, -565f), 4294967295u)), Struct_3(24552u, Struct_2(98103u, vec4<f32>(-619f, 183f, 1680f, 606f), -1868f, Struct_1(-896f, vec4<f32>(880f, -1000f, -1018f, -405f), 0u), Struct_1(-1489f, vec4<f32>(-2217f, 446f, -705f, 942f), 71254u)), Struct_1(-1138f, vec4<f32>(1173f, -856f, 327f, 979f), 4294967295u)), Struct_3(15627u, Struct_2(20164u, vec4<f32>(239f, -775f, -627f, 921f), -582f, Struct_1(-1331f, vec4<f32>(-155f, -324f, 1000f, -364f), 21023u), Struct_1(247f, vec4<f32>(1133f, -442f, 1422f, -378f), 12915u)), Struct_1(-238f, vec4<f32>(-131f, 1993f, 380f, 1918f), 6374u)), Struct_3(4294967295u, Struct_2(0u, vec4<f32>(-846f, 2046f, 181f, -2381f), 288f, Struct_1(-939f, vec4<f32>(-1009f, 707f, -1563f, 1529f), 57807u), Struct_1(-1661f, vec4<f32>(1301f, 476f, -599f, -309f), 36290u)), Struct_1(-449f, vec4<f32>(181f, -1359f, 454f, 2606f), 35443u)), Struct_3(24616u, Struct_2(0u, vec4<f32>(323f, -310f, 351f, -853f), 1479f, Struct_1(-262f, vec4<f32>(435f, -1280f, 887f, -2122f), 1u), Struct_1(-1000f, vec4<f32>(-377f, 361f, -443f, 298f), 1u)), Struct_1(-1670f, vec4<f32>(-2546f, -1869f, 1071f, 718f), 1u)), Struct_3(10280u, Struct_2(4294967295u, vec4<f32>(-247f, -1884f, 410f, -1421f), 1441f, Struct_1(780f, vec4<f32>(-414f, -225f, 158f, -1643f), 84672u), Struct_1(-1919f, vec4<f32>(-422f, 681f, 421f, -926f), 10243u)), Struct_1(-208f, vec4<f32>(-602f, -2549f, -880f, 572f), 4294967295u)), Struct_3(12800u, Struct_2(4294967295u, vec4<f32>(-1183f, 1360f, 847f, 173f), -385f, Struct_1(-224f, vec4<f32>(411f, -1560f, -1086f, -673f), 1u), Struct_1(1000f, vec4<f32>(-660f, 1041f, 413f, -2133f), 39390u)), Struct_1(927f, vec4<f32>(-1323f, -154f, -372f, -894f), 4294967295u)));

var<private> global3: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(-1i, -13916i, i32(-2147483648), 0i), vec4<i32>(-1i, 48382i, 5748i, -32886i), vec4<i32>(0i, 0i, 2505i, 2147483647i), vec4<i32>(-1i, 2147483647i, -9945i, 1i), vec4<i32>(-27507i, 2147483647i, 42790i, -39840i), vec4<i32>(-1i, 36217i, 1i, -11545i), vec4<i32>(22i, -6264i, 34732i, 63152i), vec4<i32>(2147483647i, 0i, -74508i, -40634i), vec4<i32>(-23675i, -50989i, -1i, 1i), vec4<i32>(-18268i, -41216i, -1i, -13854i), vec4<i32>(-37000i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, 0i, -61737i), vec4<i32>(1i, -1i, 25550i, -1i), vec4<i32>(9205i, 17275i, -1i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -20122i, 1i), vec4<i32>(30976i, 40868i, 20129i, -8901i), vec4<i32>(-1i, 8749i, i32(-2147483648), -30978i), vec4<i32>(2147483647i, 0i, -68272i, -1i), vec4<i32>(-91118i, -83805i, -28449i, 0i), vec4<i32>(i32(-2147483648), 1787i, 0i, -20289i), vec4<i32>(19784i, 31712i, 0i, -32577i), vec4<i32>(-1i, -1i, i32(-2147483648), -7549i), vec4<i32>(-47369i, i32(-2147483648), -8564i, 0i), vec4<i32>(1i, 2147483647i, -14220i, 2147483647i), vec4<i32>(0i, i32(-2147483648), -34402i, 2147483647i), vec4<i32>(1i, -1i, 1i, 1i), vec4<i32>(43085i, 2147483647i, -23581i, 14385i));

var<private> global4: array<vec3<i32>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> bool {
    var var_0 = select(select(arg_0, vec4<bool>(_wgslsmith_f_op_f32(-global0.e.a) > global0.d.a, !arg_2.x, arg_2.x, all(select(vec2<bool>(false, arg_2.x), vec2<bool>(false, false), arg_0.x))), !(!vec4<bool>(false, true, arg_2.x, true))), arg_0, !vec4<bool>(arg_2.x, all(select(vec3<bool>(true, arg_0.x, false), arg_2, arg_0.yyw)), true, arg_0.x));
    global0 = global1[_wgslsmith_index_u32(~60654u, 15u)];
    var var_1 = global1[_wgslsmith_index_u32(~reverseBits(1u) << (~arg_1 % 32u), 15u)];
    let var_2 = Struct_3(firstTrailingBit(firstTrailingBit(~4294967295u)), global1[_wgslsmith_index_u32(arg_1, 15u)], Struct_1(_wgslsmith_f_op_f32(step(-472f, -207f)), global0.b, ~4294967295u));
    let var_3 = var_2.b;
    return (arg_0.x == arg_2.x) & !var_0.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_vec2_u32(min(vec2<u32>(arg_0.c.c >> (4658u % 32u), u_input.a.x) | vec2<u32>(~55696u, arg_0.a), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_0.c.c), reverseBits(select(u_input.a.zz, vec2<u32>(2372u, 4294967295u), false)))), _wgslsmith_mult_vec2_u32(~u_input.a.wy, _wgslsmith_mod_vec2_u32(u_input.a.yw, vec2<u32>(1u, ~42093u))));
    let var_1 = 16468u;
    global2 = array<Struct_3, 16>();
    global3 = array<vec4<i32>, 27>();
    global0 = arg_0.b;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.d.b.yw) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.b.wy) - vec2<f32>(-166f, arg_0.c.a))), _wgslsmith_f_op_vec2_f32(min(global0.d.b.yy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.b.yx + vec2<f32>(arg_0.c.a, 726f)))))))));
}

fn func_2(arg_0: vec3<bool>) -> vec4<f32> {
    global0 = Struct_2(_wgslsmith_mult_u32(select(u_input.a.x, ~83595u, true), ~_wgslsmith_sub_u32(4294967295u, 0u) << (0u % 32u)), global0.d.b, 1327f, Struct_1(-108f, _wgslsmith_f_op_vec4_f32(step(global0.b, global0.d.b)), 0u), global0.e);
    let var_0 = firstLeadingBit(~u_input.a.wyy);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(global2[_wgslsmith_index_u32(var_0.x, 16u)], vec4<bool>(arg_0.x, 2671i <= u_input.b, func_3(vec4<bool>(false, arg_0.x, false, arg_0.x), global0.e.c, arg_0, u_input.a), false))) + global0.e.b.zz));
    var var_2 = Struct_1(480f, vec4<f32>(198f, _wgslsmith_f_op_f32(ceil(189f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1176f))), _wgslsmith_f_op_f32(-var_1.x)), ~(u_input.a.x ^ var_0.x));
    var var_3 = u_input.b;
    return vec4<f32>(_wgslsmith_f_op_f32(1321f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-627f + -1000f) + var_1.x))), 498f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_1.x) - _wgslsmith_f_op_f32(global0.e.b.x - var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -331f)))) + _wgslsmith_f_op_f32(1785f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-161f, 1170f))))), _wgslsmith_f_op_f32(989f - _wgslsmith_f_op_f32(abs(var_2.b.x))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_3(4294967295u, Struct_2(global0.e.c, _wgslsmith_f_op_vec4_f32(func_2(vec3<bool>(true, true, true))), -1432f, global0.d, global0.d), global0.e);
    let var_1 = u_input.a.xz;
    global4 = array<vec3<i32>, 8>();
    let var_2 = select(vec4<bool>(false, true, !any(vec2<bool>(false, false)), 651f <= var_0.b.b.x), vec4<bool>(true, false, u_input.c.x > 16515i, !any(vec3<bool>(true, false, false))), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(548f)), _wgslsmith_f_op_f32(trunc(global0.b.x))) < global0.b.x, true && (_wgslsmith_f_op_f32(max(-804f, 1505f)) < var_0.b.b.x), countOneBits(~1200u) <= u_input.a.x, ((19071u & var_1.x) >> (var_0.b.e.c % 32u)) > ~min(var_0.c.c, 35994u)));
    global1 = array<Struct_2, 15>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_clamp_i32(2147483647i, 2147483647i, ~613i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)));
    var var_1 = !vec4<bool>(func_3(vec4<bool>(true, true, true, true), min(10747u, 32516u), vec3<bool>(true, true, true), _wgslsmith_add_vec4_u32(vec4<u32>(16587u, var_0.a, 17591u, u_input.a.x), vec4<u32>(57954u, u_input.a.x, var_0.c.c, global0.a)) << (vec4<u32>(u_input.a.x, var_0.a, 47377u, var_0.b.d.c) % vec4<u32>(32u))), (_wgslsmith_f_op_f32(328f + -1000f) >= _wgslsmith_f_op_f32(select(529f, 239f, false))) | (true || any(vec4<bool>(true, true, true, false))), false, true);
    var_1 = select(!(!select(select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x)), select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true)), !vec4<bool>(false, var_1.x, var_1.x, var_1.x))), !vec4<bool>(var_0.c.a == global0.c, any(select(vec3<bool>(false, var_1.x, false), vec3<bool>(true, var_1.x, var_1.x), var_1.xwx)), true, var_1.x), var_1.x);
    var_0 = global2[_wgslsmith_index_u32(58989u, 16u)];
    let var_2 = _wgslsmith_div_vec4_i32(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], global3[_wgslsmith_index_u32(max(var_0.c.c, global0.e.c), 27u)]);
    var var_3 = ~min(abs(var_2.x), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, -3340i ^ u_input.b), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x << ((reverseBits(~global0.a) << (1u % 32u)) % 32u), _wgslsmith_f_op_f32(max(1479f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_1(1i, vec4<f32>(2471f, 134f, var_0.c.a, 821f)).c.b.x, _wgslsmith_f_op_f32(floor(global0.c))) - _wgslsmith_f_op_f32(-139f * var_0.c.a)))), vec3<f32>(_wgslsmith_f_op_f32(var_0.c.a + -538f), global0.b.x, var_0.b.c), ~(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_0.a, 619u, var_0.c.c)), _wgslsmith_mult_vec3_u32(u_input.a.xyy, vec3<u32>(66597u, global0.a, 4294967295u)))), _wgslsmith_sub_i32(var_2.x, u_input.c.x));
}

