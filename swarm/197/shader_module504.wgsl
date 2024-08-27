struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_3,
    d: vec4<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, false, true, false, false, true, true);

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_4, 11>;

var<private> global3: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(Struct_2(28424u, Struct_1(vec3<f32>(-1000f, -437f, 487f), vec3<i32>(8402i, -33487i, 19066i), 169f, 1u), Struct_1(vec3<f32>(990f, -420f, -221f), vec3<i32>(6686i, 0i, 39680i), -656f, 1u)), vec2<i32>(39098i, 1i), Struct_3(-451f, vec4<f32>(1483f, 1000f, -821f, 203f)), vec4<f32>(1124f, 114f, 1251f, 601f)), Struct_4(Struct_2(0u, Struct_1(vec3<f32>(-565f, 1183f, 659f), vec3<i32>(2147483647i, -31093i, -8043i), -701f, 4294967295u), Struct_1(vec3<f32>(226f, 158f, 1264f), vec3<i32>(-1i, 0i, 0i), 917f, 38082u)), vec2<i32>(i32(-2147483648), 1110i), Struct_3(-258f, vec4<f32>(1455f, 434f, -706f, 1172f)), vec4<f32>(830f, -1449f, -141f, -1246f)), Struct_4(Struct_2(0u, Struct_1(vec3<f32>(-674f, -962f, -940f), vec3<i32>(8735i, 0i, 4502i), 315f, 1u), Struct_1(vec3<f32>(-406f, 1425f, 362f), vec3<i32>(1i, 22494i, -5601i), -1000f, 1u)), vec2<i32>(-18758i, 7231i), Struct_3(1888f, vec4<f32>(1000f, 607f, -1043f, -815f)), vec4<f32>(1284f, 189f, 336f, 1556f)), Struct_4(Struct_2(1u, Struct_1(vec3<f32>(-1000f, -1001f, -1101f), vec3<i32>(11730i, -16033i, 0i), 1473f, 1u), Struct_1(vec3<f32>(1391f, 1083f, 651f), vec3<i32>(3245i, 0i, -38163i), -322f, 109676u)), vec2<i32>(-11785i, -1i), Struct_3(-1239f, vec4<f32>(-796f, 1000f, 135f, 1007f)), vec4<f32>(-723f, 2069f, -722f, 1444f)), Struct_4(Struct_2(35920u, Struct_1(vec3<f32>(1055f, 1771f, -876f), vec3<i32>(-40325i, -1i, 31281i), 846f, 1u), Struct_1(vec3<f32>(-1166f, 340f, -1237f), vec3<i32>(40164i, -2568i, 1i), 1104f, 55446u)), vec2<i32>(-1i, 2147483647i), Struct_3(675f, vec4<f32>(1000f, -299f, 957f, 662f)), vec4<f32>(737f, -276f, -1009f, -1004f)), Struct_4(Struct_2(0u, Struct_1(vec3<f32>(1000f, 994f, -876f), vec3<i32>(36412i, 19642i, -1i), 709f, 0u), Struct_1(vec3<f32>(-795f, 2261f, -1555f), vec3<i32>(13935i, -1i, 44696i), -912f, 4294967295u)), vec2<i32>(0i, -1i), Struct_3(769f, vec4<f32>(-1000f, 1000f, 1113f, 1115f)), vec4<f32>(-1000f, -1121f, 604f, 1279f)), Struct_4(Struct_2(1u, Struct_1(vec3<f32>(1000f, -742f, -815f), vec3<i32>(-1i, 0i, 2147483647i), 235f, 0u), Struct_1(vec3<f32>(-223f, -1000f, 125f), vec3<i32>(0i, -15038i, 2147483647i), -494f, 62629u)), vec2<i32>(21272i, i32(-2147483648)), Struct_3(293f, vec4<f32>(-1186f, -530f, 410f, 150f)), vec4<f32>(-1400f, -2798f, -308f, -1000f)), Struct_4(Struct_2(24116u, Struct_1(vec3<f32>(-2217f, -165f, -136f), vec3<i32>(2147483647i, -2665i, 0i), 428f, 1918u), Struct_1(vec3<f32>(336f, 1000f, 1000f), vec3<i32>(i32(-2147483648), 60482i, 1i), 2562f, 4294967295u)), vec2<i32>(0i, 0i), Struct_3(-803f, vec4<f32>(296f, 550f, -680f, 455f)), vec4<f32>(-569f, 844f, 276f, -232f)), Struct_4(Struct_2(16935u, Struct_1(vec3<f32>(-535f, 403f, 980f), vec3<i32>(-35677i, 0i, -4223i), 1476f, 1u), Struct_1(vec3<f32>(334f, -1000f, -2225f), vec3<i32>(-1511i, i32(-2147483648), -18413i), -1041f, 1u)), vec2<i32>(1i, 15398i), Struct_3(1272f, vec4<f32>(-2508f, 417f, 891f, -1861f)), vec4<f32>(619f, 565f, 1000f, 263f)), Struct_4(Struct_2(4294967295u, Struct_1(vec3<f32>(1378f, -470f, 834f), vec3<i32>(-1i, 1i, -1645i), 310f, 22545u), Struct_1(vec3<f32>(-1708f, 317f, 279f), vec3<i32>(2147483647i, -1i, -18538i), 945f, 83222u)), vec2<i32>(-1i, -1i), Struct_3(1340f, vec4<f32>(1085f, -535f, -320f, 271f)), vec4<f32>(-1306f, 170f, 1501f, -464f)), Struct_4(Struct_2(14034u, Struct_1(vec3<f32>(-291f, 579f, -449f), vec3<i32>(0i, -22031i, -48830i), -1000f, 1u), Struct_1(vec3<f32>(-1283f, 291f, 663f), vec3<i32>(2147483647i, 20950i, 60296i), -1157f, 43622u)), vec2<i32>(i32(-2147483648), 51951i), Struct_3(684f, vec4<f32>(2002f, 1231f, -1000f, -2776f)), vec4<f32>(-686f, -1164f, -613f, 398f)), Struct_4(Struct_2(48021u, Struct_1(vec3<f32>(357f, -891f, -1555f), vec3<i32>(12705i, -29163i, -1i), -850f, 11648u), Struct_1(vec3<f32>(474f, 402f, 1251f), vec3<i32>(10734i, -46381i, i32(-2147483648)), 372f, 71369u)), vec2<i32>(1i, 37428i), Struct_3(377f, vec4<f32>(-885f, -1342f, 253f, 1614f)), vec4<f32>(1368f, 804f, -252f, -682f)), Struct_4(Struct_2(72501u, Struct_1(vec3<f32>(1801f, -558f, 647f), vec3<i32>(29437i, -7048i, 2147483647i), -632f, 1u), Struct_1(vec3<f32>(1534f, -846f, 246f), vec3<i32>(i32(-2147483648), 0i, 1i), 129f, 20077u)), vec2<i32>(9147i, 1i), Struct_3(1253f, vec4<f32>(-496f, 1000f, -908f, 253f)), vec4<f32>(-594f, 528f, 1526f, -613f)), Struct_4(Struct_2(4294967295u, Struct_1(vec3<f32>(187f, 1054f, -346f), vec3<i32>(-1i, -164i, 2147483647i), 588f, 120044u), Struct_1(vec3<f32>(408f, -168f, -252f), vec3<i32>(41446i, 2147483647i, 0i), 591f, 4294967295u)), vec2<i32>(1i, 1i), Struct_3(-782f, vec4<f32>(1779f, 1631f, -1406f, -756f)), vec4<f32>(723f, 1173f, 1173f, -546f)), Struct_4(Struct_2(4294967295u, Struct_1(vec3<f32>(765f, 259f, -1464f), vec3<i32>(-4163i, -10993i, -1i), -2926f, 1u), Struct_1(vec3<f32>(-2157f, -135f, -1393f), vec3<i32>(-10582i, 23717i, 63132i), -2100f, 37922u)), vec2<i32>(11720i, 22427i), Struct_3(1005f, vec4<f32>(-1000f, 1031f, 451f, 924f)), vec4<f32>(-486f, -342f, -425f, -515f)), Struct_4(Struct_2(41012u, Struct_1(vec3<f32>(-137f, -433f, 1159f), vec3<i32>(8744i, -1i, i32(-2147483648)), 942f, 0u), Struct_1(vec3<f32>(-1250f, -1080f, -446f), vec3<i32>(2147483647i, 59222i, 38603i), -451f, 4294967295u)), vec2<i32>(-43007i, i32(-2147483648)), Struct_3(2726f, vec4<f32>(789f, -1167f, 1000f, -1000f)), vec4<f32>(-299f, 1019f, -1000f, 993f)), Struct_4(Struct_2(4294967295u, Struct_1(vec3<f32>(2740f, -139f, 503f), vec3<i32>(i32(-2147483648), -6755i, i32(-2147483648)), -379f, 0u), Struct_1(vec3<f32>(-449f, 1137f, -1026f), vec3<i32>(-1i, i32(-2147483648), 2147483647i), 755f, 70463u)), vec2<i32>(i32(-2147483648), -15086i), Struct_3(1211f, vec4<f32>(667f, 1972f, -650f, 1369f)), vec4<f32>(694f, 1628f, -1326f, -257f)), Struct_4(Struct_2(0u, Struct_1(vec3<f32>(-646f, -427f, 932f), vec3<i32>(32284i, -1731i, -1i), 580f, 0u), Struct_1(vec3<f32>(2204f, 651f, -248f), vec3<i32>(-38674i, 17206i, -5939i), -197f, 30482u)), vec2<i32>(29175i, -5946i), Struct_3(-617f, vec4<f32>(-1000f, -1139f, 921f, 370f)), vec4<f32>(1299f, 938f, -403f, 1786f)), Struct_4(Struct_2(18644u, Struct_1(vec3<f32>(-262f, 685f, -881f), vec3<i32>(0i, 25276i, 1i), 161f, 4294967295u), Struct_1(vec3<f32>(-736f, 842f, 699f), vec3<i32>(2147483647i, 0i, 18431i), -1260f, 40133u)), vec2<i32>(11509i, -1i), Struct_3(-182f, vec4<f32>(-1532f, 464f, 1019f, -1195f)), vec4<f32>(3401f, -1352f, -165f, -334f)), Struct_4(Struct_2(110791u, Struct_1(vec3<f32>(529f, -410f, 724f), vec3<i32>(1i, -60765i, 2147483647i), -853f, 87544u), Struct_1(vec3<f32>(383f, 859f, -589f), vec3<i32>(1i, -31512i, -44070i), -366f, 25868u)), vec2<i32>(-18536i, 1i), Struct_3(-595f, vec4<f32>(726f, -469f, 282f, 1322f)), vec4<f32>(160f, -1000f, -1505f, 1137f)), Struct_4(Struct_2(44888u, Struct_1(vec3<f32>(716f, 1693f, 178f), vec3<i32>(-1i, -1i, -1i), -1042f, 4294967295u), Struct_1(vec3<f32>(1584f, -803f, 1579f), vec3<i32>(19928i, 0i, 2147483647i), 110f, 1u)), vec2<i32>(4332i, 1i), Struct_3(765f, vec4<f32>(1000f, -617f, -1000f, 1378f)), vec4<f32>(-1375f, 105f, 584f, 1000f)), Struct_4(Struct_2(1u, Struct_1(vec3<f32>(-1347f, -388f, -1000f), vec3<i32>(-15936i, -693i, 0i), -500f, 114415u), Struct_1(vec3<f32>(188f, -1128f, 889f), vec3<i32>(2147483647i, 39913i, -51171i), -1042f, 22516u)), vec2<i32>(-52559i, i32(-2147483648)), Struct_3(-2055f, vec4<f32>(-819f, -1782f, 744f, 712f)), vec4<f32>(-215f, 261f, -1016f, 1449f)), Struct_4(Struct_2(31176u, Struct_1(vec3<f32>(1000f, 336f, 228f), vec3<i32>(1i, 0i, -512i), -631f, 42784u), Struct_1(vec3<f32>(421f, -236f, 1469f), vec3<i32>(i32(-2147483648), 35587i, i32(-2147483648)), -377f, 119055u)), vec2<i32>(2147483647i, 2147483647i), Struct_3(388f, vec4<f32>(-1000f, 180f, -512f, -262f)), vec4<f32>(470f, -941f, -441f, 660f)), Struct_4(Struct_2(4447u, Struct_1(vec3<f32>(-918f, -1031f, 194f), vec3<i32>(-27772i, 2147483647i, 20429i), -731f, 40357u), Struct_1(vec3<f32>(-985f, -118f, -989f), vec3<i32>(-47750i, -1i, -7948i), -1273f, 4294967295u)), vec2<i32>(i32(-2147483648), -34557i), Struct_3(-1000f, vec4<f32>(-2204f, -260f, -198f, -714f)), vec4<f32>(-1300f, -1000f, -1000f, -926f)));

var<private> global4: bool = true;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>) -> vec3<f32> {
    global3 = array<Struct_4, 24>();
    let var_0 = -256f;
    let var_1 = Struct_5(u_input.c.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, _wgslsmith_f_op_f32(851f * 292f), -512f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(1260f, 538f, false)), -428f, _wgslsmith_f_op_f32(sign(var_0))))))));
    let var_3 = Struct_2(30128u, Struct_1(var_2, u_input.d.yyy, _wgslsmith_f_op_f32(_wgslsmith_div_f32(219f, var_2.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_div_f32(1460f, -545f))), ~u_input.e.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, -1456f, var_0), var_2)))), u_input.d.wyx, var_0, 4294967295u ^ abs(reverseBits(arg_0.x))));
    return _wgslsmith_f_op_vec3_f32(-var_3.b.a);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_2(~(arg_0.x ^ ~u_input.e.x), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(u_input.e, vec3<bool>(true, true, true))), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.b, 1i, u_input.c.x), -abs(vec3<i32>(7312i, u_input.c.x, u_input.b))), 671f, ~arg_1), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(326f, -203f, -638f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(186f, 1497f, 106f)))))), vec3<i32>(1i, ~1i, u_input.c.x) & abs(_wgslsmith_mod_vec3_i32(u_input.d.ywz, u_input.d.xyz)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -195f) + _wgslsmith_f_op_f32(f32(-1f) * -832f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), !global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), abs(u_input.a.x)));
    let var_1 = Struct_1(var_0.b.a, -var_0.c.b, _wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_add_u32(countOneBits(_wgslsmith_mult_u32(arg_0.x, var_0.a)) | (var_0.a >> (reverseBits(u_input.e.x) % 32u)), firstLeadingBit(_wgslsmith_mod_u32(63807u, 1u))));
    let var_2 = 89923u;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c, _wgslsmith_f_op_f32(1090f - 215f), _wgslsmith_f_op_f32(trunc(393f)), _wgslsmith_f_op_f32(-var_1.c)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c, -1906f, -1000f, -1472f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.c, -1687f, var_1.a.x, -109f), vec4<f32>(-1090f, var_0.c.a.x, -165f, -233f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, -1009f, var_1.a.x, -1514f))))));
    global0 = array<bool, 7>();
    return !(!select(!vec4<bool>(global0[_wgslsmith_index_u32(62412u, 7u)], false, global0[_wgslsmith_index_u32(var_0.a, 7u)], global0[_wgslsmith_index_u32(var_2, 7u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.d, 7u)], global0[_wgslsmith_index_u32(var_1.d, 7u)], global0[_wgslsmith_index_u32(78508u, 7u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(120481u, 7u)], true, global0[_wgslsmith_index_u32(40933u, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(66360u, 7u)], global0[_wgslsmith_index_u32(var_0.c.d, 7u)], false, false)), vec4<bool>(true, all(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(62971u, 7u)], false)), false, global0[_wgslsmith_index_u32(var_2, 7u)] | global0[_wgslsmith_index_u32(var_1.d, 7u)])));
}

fn func_1() -> f32 {
    var var_0 = select(vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-215f * 215f)) < _wgslsmith_f_op_f32(min(-769f, _wgslsmith_f_op_f32(step(580f, -620f)))), any(vec4<bool>(true && global0[_wgslsmith_index_u32(u_input.a.x, 7u)], !global0[_wgslsmith_index_u32(u_input.e.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], !global0[_wgslsmith_index_u32(38959u, 7u)])), global0[_wgslsmith_index_u32(~1u ^ (reverseBits(4294967295u) ^ min(18760u, u_input.e.x)), 7u)]), select(func_2(abs(~vec3<u32>(u_input.e.x, u_input.e.x, u_input.a.x)), u_input.a.x), select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 7u)], true, true)), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 7u)] == global0[_wgslsmith_index_u32(u_input.a.x, 7u)], !global0[_wgslsmith_index_u32(0u, 7u)], !global0[_wgslsmith_index_u32(4294967295u, 7u)]), global0[_wgslsmith_index_u32(min(u_input.e.x, u_input.e.x), 7u)] && false), any(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)])) && (false & any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false)))), func_2(u_input.e.xxx, u_input.e.x));
    let var_1 = Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(435f * 195f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 600f) * _wgslsmith_f_op_f32(sign(-866f))))), vec3<i32>(u_input.b, u_input.b, u_input.c.x), _wgslsmith_f_op_f32(-1f), abs(_wgslsmith_sub_u32(~u_input.e.x << (firstTrailingBit(u_input.e.x) % 32u), 11743u)));
    var var_2 = ~(max(~_wgslsmith_mult_vec3_u32(u_input.e.zzy, vec3<u32>(91439u, u_input.e.x, 2884u)), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.e.x, 14309u), vec3<u32>(28119u, u_input.e.x, var_1.d)))) << (u_input.e.wwx % vec3<u32>(32u)));
    var var_3 = Struct_4(Struct_2(~u_input.e.x, var_1, var_1), ~var_1.b.yx | vec2<i32>(-1938i, ~(-16714i)), Struct_3(_wgslsmith_f_op_f32(min(-504f, _wgslsmith_f_op_f32(-662f + 2970f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-618f, -1674f, -108f, var_1.c) - vec4<f32>(var_1.c, var_1.a.x, var_1.c, 1830f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c))), _wgslsmith_f_op_f32(abs(564f)))));
    var var_4 = ~u_input.e.x;
    return -701f;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    global1 = ~1u;
    let var_0 = arg_2.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1342f))), _wgslsmith_f_op_f32(step(169f, arg_2.x)))), vec3<f32>(var_0, _wgslsmith_f_op_f32(round(var_0)), var_0)));
    let var_2 = ~u_input.e.x;
    var var_3 = select(func_2(~(select(u_input.e.xwz, u_input.e.yxx, vec3<bool>(global0[_wgslsmith_index_u32(14599u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)])) << (arg_0.xxw % vec3<u32>(32u))), ~(~(var_2 << (u_input.a.x % 32u)))), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.x, abs(1u), 14029u), reverseBits(_wgslsmith_mod_u32(var_2, arg_0.x))), 7u)], any(vec2<bool>(all(vec2<bool>(false, false)), global0[_wgslsmith_index_u32(41013u, 7u)])), global0[_wgslsmith_index_u32(arg_0.x, 7u)], false), vec4<bool>(all(!(!vec3<bool>(global0[_wgslsmith_index_u32(var_2, 7u)], global0[_wgslsmith_index_u32(var_2, 7u)], true))), false, true, !(any(vec2<bool>(false, true)) | (u_input.b >= arg_1))));
    return Struct_1(vec3<f32>(-1000f, var_0, arg_2.x), vec3<i32>(~(-(i32(-1i) * -48737i)), _wgslsmith_clamp_i32(arg_1 << (1u % 32u), _wgslsmith_dot_vec4_i32(u_input.d | u_input.d, u_input.d), _wgslsmith_mod_i32(2147483647i, u_input.d.x)), ~max(arg_1, min(55305i, arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -608f), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1995f;
    var var_1 = vec3<bool>(true, any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false, global0[_wgslsmith_index_u32(18526u, 7u)])) | any(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(42023u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), global0[_wgslsmith_index_u32(3290u, 7u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(68064u, 7u)], false, global0[_wgslsmith_index_u32(u_input.e.x, 7u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(60245u, 7u)], true), true), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))), false);
    var var_2 = func_4(~vec4<u32>(30985u, 3329u, u_input.a.x, 4294967295u), u_input.b, vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + 675f)));
    let var_3 = var_0;
    var var_4 = -(~(-reverseBits(-u_input.d)));
    global1 = 1u;
    var var_5 = firstTrailingBit(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(96509u, 70436u, u_input.a.x, u_input.a.x), u_input.e, u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-764f, -806f, _wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1720f))), 1000f), u_input.c.x);
}

