struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(true, Struct_1(vec3<i32>(34939i, 30378i, 26706i), vec3<f32>(243f, -1667f, 1675f), vec4<i32>(-44511i, 29692i, i32(-2147483648), -1i), true, vec4<f32>(973f, -538f, -207f, 1016f)), vec4<f32>(1000f, -196f, -479f, 1918f), 3187f), Struct_2(false, Struct_1(vec3<i32>(493i, 20011i, i32(-2147483648)), vec3<f32>(880f, -243f, -1758f), vec4<i32>(-33342i, 6592i, -17397i, 0i), false, vec4<f32>(1019f, 670f, -158f, 644f)), vec4<f32>(-1096f, -263f, 915f, -1533f), 999f), Struct_2(true, Struct_1(vec3<i32>(16983i, 5717i, 2147483647i), vec3<f32>(250f, -534f, 710f), vec4<i32>(1i, 86324i, 1i, i32(-2147483648)), true, vec4<f32>(-162f, -725f, 1000f, -256f)), vec4<f32>(-427f, 606f, -1072f, -763f), -407f), Struct_2(true, Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<f32>(-2397f, -1002f, -347f), vec4<i32>(-29085i, -1i, 0i, -1i), false, vec4<f32>(837f, -316f, -234f, 1102f)), vec4<f32>(-754f, -130f, 614f, -1000f), -751f), Struct_2(true, Struct_1(vec3<i32>(35685i, 29758i, 1i), vec3<f32>(754f, 158f, -1618f), vec4<i32>(-1i, 2704i, i32(-2147483648), -1i), false, vec4<f32>(1126f, 2629f, -1554f, -664f)), vec4<f32>(244f, 1316f, 453f, -208f), 1086f), Struct_2(false, Struct_1(vec3<i32>(3664i, -10737i, 20859i), vec3<f32>(2827f, -956f, -345f), vec4<i32>(49926i, i32(-2147483648), i32(-2147483648), -1i), false, vec4<f32>(-1502f, 1000f, 1004f, 882f)), vec4<f32>(865f, -411f, 950f, -316f), -387f), Struct_2(true, Struct_1(vec3<i32>(-30557i, -1053i, 22726i), vec3<f32>(-255f, -587f, 1358f), vec4<i32>(34263i, -6109i, -6697i, 2147483647i), false, vec4<f32>(574f, 467f, 1000f, 550f)), vec4<f32>(-360f, -859f, 214f, -323f), 132f), Struct_2(false, Struct_1(vec3<i32>(-23740i, i32(-2147483648), 0i), vec3<f32>(459f, 327f, -435f), vec4<i32>(-43784i, 45063i, -1i, 2147483647i), false, vec4<f32>(-1485f, -1301f, -380f, -1435f)), vec4<f32>(-445f, 660f, -1000f, 489f), -1254f), Struct_2(true, Struct_1(vec3<i32>(-78484i, 31068i, 5307i), vec3<f32>(-456f, -1544f, 606f), vec4<i32>(17043i, 16896i, 2147483647i, -1i), true, vec4<f32>(-1309f, -884f, -690f, -103f)), vec4<f32>(306f, 814f, -499f, 526f), -845f), Struct_2(false, Struct_1(vec3<i32>(42355i, 52332i, 2147483647i), vec3<f32>(-313f, 1533f, -309f), vec4<i32>(1i, 7595i, -1i, 0i), true, vec4<f32>(412f, -1000f, -352f, 2248f)), vec4<f32>(794f, 410f, 1116f, -806f), -2183f), Struct_2(false, Struct_1(vec3<i32>(-1i, -5840i, -7066i), vec3<f32>(300f, 557f, -1422f), vec4<i32>(i32(-2147483648), i32(-2147483648), -12758i, 33916i), true, vec4<f32>(-1073f, -1436f, 758f, 1000f)), vec4<f32>(-166f, -1000f, -1000f, -565f), -1117f), Struct_2(false, Struct_1(vec3<i32>(1690i, 1i, 2147483647i), vec3<f32>(196f, -365f, 2924f), vec4<i32>(-23434i, 6777i, 1i, i32(-2147483648)), false, vec4<f32>(789f, 1292f, -677f, 1444f)), vec4<f32>(-1748f, -158f, 148f, -140f), -449f), Struct_2(true, Struct_1(vec3<i32>(-18523i, 1i, -1i), vec3<f32>(2847f, -530f, -868f), vec4<i32>(-29722i, i32(-2147483648), -10568i, -47088i), false, vec4<f32>(-1168f, -640f, 1204f, -999f)), vec4<f32>(272f, 195f, -1000f, 1162f), 803f), Struct_2(false, Struct_1(vec3<i32>(26997i, -1i, 1i), vec3<f32>(-340f, 373f, -1195f), vec4<i32>(36782i, -1i, -33146i, -1i), false, vec4<f32>(-100f, -999f, -261f, -1610f)), vec4<f32>(593f, 2222f, 2392f, 958f), 1158f), Struct_2(false, Struct_1(vec3<i32>(67398i, 10792i, 45155i), vec3<f32>(-228f, -1222f, -207f), vec4<i32>(13406i, 57585i, i32(-2147483648), 0i), false, vec4<f32>(689f, 585f, 2564f, -684f)), vec4<f32>(287f, -432f, 546f, 464f), 1365f), Struct_2(false, Struct_1(vec3<i32>(i32(-2147483648), -14886i, 2147483647i), vec3<f32>(978f, -682f, 1000f), vec4<i32>(1i, 1i, i32(-2147483648), -1i), true, vec4<f32>(-234f, 1000f, 372f, -668f)), vec4<f32>(-296f, -1284f, 341f, 701f), -576f), Struct_2(false, Struct_1(vec3<i32>(2147483647i, 9917i, 4569i), vec3<f32>(891f, -280f, -1957f), vec4<i32>(20734i, 2603i, -1i, 7661i), true, vec4<f32>(-689f, -167f, -1596f, -1679f)), vec4<f32>(-628f, 590f, -1489f, 354f), 238f), Struct_2(true, Struct_1(vec3<i32>(2147483647i, -1i, 0i), vec3<f32>(1879f, -422f, -1570f), vec4<i32>(0i, -21464i, -16749i, -6086i), true, vec4<f32>(189f, 965f, 460f, 402f)), vec4<f32>(-298f, 727f, 283f, -607f), 1714f), Struct_2(false, Struct_1(vec3<i32>(i32(-2147483648), -2219i, -1i), vec3<f32>(535f, -923f, -2191f), vec4<i32>(-7177i, -1456i, -32464i, 1i), true, vec4<f32>(-377f, 103f, -275f, 1639f)), vec4<f32>(-409f, 1304f, 1000f, 1020f), -387f), Struct_2(true, Struct_1(vec3<i32>(1i, 13120i, -17541i), vec3<f32>(-2409f, 1981f, 1694f), vec4<i32>(0i, i32(-2147483648), 0i, -103796i), true, vec4<f32>(1000f, 559f, -1000f, 1606f)), vec4<f32>(188f, 830f, 583f, -279f), 1000f), Struct_2(true, Struct_1(vec3<i32>(-1i, -1i, 15338i), vec3<f32>(-1973f, -345f, -1140f), vec4<i32>(-16818i, i32(-2147483648), 0i, -27936i), false, vec4<f32>(-998f, -1000f, 149f, 185f)), vec4<f32>(-325f, -221f, -111f, -758f), 852f), Struct_2(true, Struct_1(vec3<i32>(23231i, 4336i, 32662i), vec3<f32>(-1055f, 1000f, 1141f), vec4<i32>(-1i, -23663i, -1i, -48263i), false, vec4<f32>(1131f, -1894f, 618f, 593f)), vec4<f32>(253f, 1756f, -100f, 340f), -1032f), Struct_2(true, Struct_1(vec3<i32>(-32160i, 51430i, i32(-2147483648)), vec3<f32>(319f, 305f, -379f), vec4<i32>(-22700i, -32104i, 2147483647i, 0i), false, vec4<f32>(428f, -1007f, 403f, 1227f)), vec4<f32>(-1352f, 1505f, 1000f, -846f), -947f), Struct_2(true, Struct_1(vec3<i32>(4037i, -13514i, 20371i), vec3<f32>(-1286f, -390f, 1313f), vec4<i32>(2147483647i, -5420i, 10812i, 1i), false, vec4<f32>(284f, 2300f, 545f, -432f)), vec4<f32>(-873f, -767f, -461f, -596f), 1000f), Struct_2(false, Struct_1(vec3<i32>(26910i, -49584i, 0i), vec3<f32>(1183f, -107f, 641f), vec4<i32>(96067i, 1i, 54324i, i32(-2147483648)), true, vec4<f32>(-1000f, 683f, 1000f, -541f)), vec4<f32>(2241f, 1118f, -512f, -492f), 1156f), Struct_2(false, Struct_1(vec3<i32>(i32(-2147483648), -21331i, -52696i), vec3<f32>(-1241f, -571f, -574f), vec4<i32>(1i, 1i, -1i, i32(-2147483648)), false, vec4<f32>(-1436f, 1000f, -1638f, 749f)), vec4<f32>(-223f, -451f, 1000f, -800f), 1000f), Struct_2(false, Struct_1(vec3<i32>(i32(-2147483648), 15198i, 0i), vec3<f32>(451f, 1090f, -1943f), vec4<i32>(20463i, 48063i, 77478i, 20363i), false, vec4<f32>(233f, 653f, -1306f, -781f)), vec4<f32>(382f, -766f, -1453f, -1047f), 966f), Struct_2(true, Struct_1(vec3<i32>(1i, 2147483647i, 9988i), vec3<f32>(-2522f, -315f, -157f), vec4<i32>(0i, 1i, 24622i, i32(-2147483648)), true, vec4<f32>(-462f, -1193f, -469f, 307f)), vec4<f32>(368f, 590f, -1200f, -291f), 793f), Struct_2(false, Struct_1(vec3<i32>(8136i, 14414i, 62855i), vec3<f32>(-1352f, 1408f, -649f), vec4<i32>(-18945i, 14257i, 29757i, 38299i), true, vec4<f32>(460f, -903f, -583f, -812f)), vec4<f32>(-162f, -521f, -582f, -452f), 214f), Struct_2(true, Struct_1(vec3<i32>(-16022i, 32785i, 51633i), vec3<f32>(-266f, 1159f, 1000f), vec4<i32>(1i, 2016i, 35293i, 11560i), true, vec4<f32>(-1352f, -718f, -315f, 700f)), vec4<f32>(-813f, -1633f, -997f, -1674f), -1062f), Struct_2(false, Struct_1(vec3<i32>(i32(-2147483648), 26826i, -25337i), vec3<f32>(-929f, -633f, -1000f), vec4<i32>(571i, -51184i, i32(-2147483648), 0i), false, vec4<f32>(-533f, -111f, -1346f, -2042f)), vec4<f32>(186f, 1393f, -222f, 473f), 1105f), Struct_2(false, Struct_1(vec3<i32>(-24945i, 31878i, 19038i), vec3<f32>(1414f, -1000f, -1575f), vec4<i32>(38286i, -1i, i32(-2147483648), 2147483647i), true, vec4<f32>(-317f, -980f, -1444f, -1000f)), vec4<f32>(-840f, -1481f, 317f, -515f), -766f));

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<bool, 10>;

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global4: vec4<f32> = vec4<f32>(-825f, 555f, -747f, 1798f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_3(1u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~1u, _wgslsmith_mult_u32(4294967295u, u_input.b), u_input.b, firstLeadingBit(4294967295u)), vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 73843u), u_input.b, reverseBits(u_input.c.x), u_input.b) & reverseBits(vec4<u32>(u_input.c.x, 34779u, 0u, u_input.c.x))), 32u)], Struct_1(vec3<i32>(u_input.a, -20354i, arg_1.c.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) + _wgslsmith_f_op_f32(-arg_1.e.x)), arg_0, _wgslsmith_f_op_f32(step(arg_0, -1000f))), arg_1.c, u_input.a < -3759i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, arg_1.b.x, arg_1.b.x, arg_0))))), global2[_wgslsmith_index_u32(u_input.c.x, 10u)]);
    let var_1 = firstLeadingBit(u_input.c.x);
    let var_2 = select(!(!vec4<bool>(false, true, any(global3.xyx), var_0.d)), select(!vec4<bool>(!arg_1.d, true, true, true), !vec4<bool>(global3.x, all(vec4<bool>(global2[_wgslsmith_index_u32(13233u, 10u)], arg_1.d, true, global2[_wgslsmith_index_u32(4294967295u, 10u)])), any(global3.wz), any(vec4<bool>(var_0.d, false, false, global2[_wgslsmith_index_u32(35110u, 10u)]))), arg_1.d | true), vec4<bool>(true, all(select(global3.zyw, select(global3.xww, vec3<bool>(true, global3.x, true), global3.xxw), vec3<bool>(global3.x, arg_1.d, arg_2.x))), any(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 10u)], arg_1.d, var_0.c.d, false))), true));
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.e.x - global4.x), -750f, _wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(max(-844f, global4.x))) + var_0.c.e) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.b.x, 401f, var_0.c.e.x, var_0.b.d) - var_0.c.e)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, arg_0, var_0.b.b.e.x, global4.x))), _wgslsmith_f_op_vec4_f32(arg_1.e + var_0.c.e)))));
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1, select(firstLeadingBit(41263u), var_0.a | ~var_0.a, true), var_1), vec4<u32>(firstTrailingBit(43310u), _wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_mult_u32(var_1, _wgslsmith_div_u32(u_input.c.x, 0u))), ~4294967295u, ~(abs(0u) & ~var_1)));
    return vec4<bool>(!((1i == var_0.b.b.c.x) && all(vec4<bool>(false, true, var_2.x, global3.x))), all(var_2), false, var_0.b.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    global2 = array<bool, 10>();
    global3 = select(select(vec4<bool>(true, !(arg_0.a || global3.x), arg_2.b.b.d, any(global3.wx)), !select(!vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 10u)], arg_2.b.b.d, arg_0.a), select(vec4<bool>(false, arg_2.b.b.d, global3.x, arg_1.d), vec4<bool>(true, true, arg_0.a, arg_2.c.d), global3.x), select(vec4<bool>(arg_1.d, true, arg_2.d, arg_0.a), vec4<bool>(false, arg_2.c.d, true, false), true)), select(~100214u, 12294u, arg_1.a.x <= arg_2.b.b.a.x) <= abs(u_input.b & 4294967295u)), vec4<bool>(arg_0.b.d, false, true, any(func_3(_wgslsmith_f_op_f32(round(-1191f)), Struct_1(vec3<i32>(arg_2.b.b.c.x, 1i, -32388i), global4.zzw, arg_2.b.b.c, global3.x, arg_2.c.e), !global3.zx))), vec4<bool>(true, !arg_1.d, any(!vec3<bool>(global2[_wgslsmith_index_u32(58394u, 10u)], arg_1.d, true)), arg_2.b.b.c.x >= 2147483647i));
    var var_0 = 31365u;
    let var_1 = vec3<u32>(select(u_input.c.x, max(min(_wgslsmith_mod_u32(1u, arg_2.a), ~u_input.b), arg_2.a), global3.x), u_input.c.x, _wgslsmith_dot_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(89579u, 1u, arg_2.a), vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(arg_2.a, u_input.c.x, 9510u))), abs(~(~vec3<u32>(arg_2.a, u_input.b, arg_2.a)))));
    var var_2 = select(true, false, global2[_wgslsmith_index_u32(arg_2.a, 10u)]);
    return Struct_1(~vec3<i32>(2147483647i, arg_1.a.x | arg_0.b.c.x, arg_2.b.b.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1410f, 1000f, global4.x)) * vec3<f32>(global4.x, _wgslsmith_f_op_f32(max(global4.x, 1055f)), global4.x))), -arg_2.b.b.c, true, arg_0.b.e);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(floor(func_2(Struct_2(arg_1.d, func_2(arg_0.b, Struct_1(arg_0.b.b.c.yzx, vec3<f32>(arg_0.b.b.b.x, -805f, -138f), arg_0.c.c, global2[_wgslsmith_index_u32(arg_0.a, 10u)], arg_0.b.c), Struct_3(u_input.b, Struct_2(arg_0.b.a, Struct_1(arg_1.c.xwx, arg_0.c.e.zyy, vec4<i32>(-65953i, 2147483647i, arg_3, u_input.a), true, arg_1.e), vec4<f32>(691f, global4.x, global4.x, global4.x), arg_1.e.x), arg_1, false)), _wgslsmith_f_op_vec4_f32(floor(arg_0.b.c)), global4.x), func_2(arg_0.b, arg_0.c, Struct_3(11231u, Struct_2(false, arg_0.b.b, vec4<f32>(arg_1.b.x, -563f, -459f, -348f), global4.x), Struct_1(vec3<i32>(u_input.d.x, 0i, -2147483647i), global4.zxx, arg_0.b.b.c, arg_0.b.b.d, vec4<f32>(global4.x, 388f, arg_1.e.x, arg_1.e.x)), arg_1.d)), Struct_3(abs(arg_0.a), arg_0.b, func_2(arg_0.b, arg_0.c, Struct_3(u_input.c.x, Struct_2(false, Struct_1(vec3<i32>(-15572i, u_input.d.x, -1i), arg_1.e.wyz, vec4<i32>(arg_0.c.c.x, arg_3, arg_3, u_input.d.x), true, arg_1.e), vec4<f32>(1180f, 887f, 655f, -529f), -1183f), Struct_1(arg_0.b.b.a, global4.zzw, arg_0.c.c, global3.x, vec4<f32>(arg_0.c.e.x, arg_0.c.b.x, arg_1.e.x, arg_1.b.x)), false)), true)).b.x)), Struct_2(arg_0.b.d >= _wgslsmith_div_f32(func_2(global0[_wgslsmith_index_u32(0u, 32u)], Struct_1(arg_0.b.b.a, arg_0.c.e.zxx, vec4<i32>(0i, 29536i, 0i, arg_3), global3.x, arg_1.e), arg_0).b.x, _wgslsmith_f_op_f32(-global4.x)), Struct_1(arg_0.c.c.zwx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-414f, global4.x, arg_1.b.x) - _wgslsmith_f_op_vec3_f32(-global4.yyw)), max(~arg_0.b.b.c, arg_0.c.c), global3.x, _wgslsmith_f_op_vec4_f32(exp2(arg_0.b.c))), _wgslsmith_f_op_vec4_f32(func_2(Struct_2(true, arg_0.b.b, vec4<f32>(522f, arg_1.b.x, 521f, global4.x), 489f), func_2(arg_0.b, Struct_1(vec3<i32>(arg_1.c.x, -2457i, arg_0.c.a.x), arg_0.b.c.xxx, vec4<i32>(-20581i, -38442i, 2395i, -1i), global2[_wgslsmith_index_u32(41178u, 10u)], vec4<f32>(arg_0.b.b.b.x, 1344f, 754f, global4.x)), Struct_3(arg_0.a, Struct_2(global3.x, arg_0.b.b, arg_0.c.e, arg_0.c.b.x), Struct_1(vec3<i32>(u_input.a, -19765i, -31722i), vec3<f32>(1106f, -913f, global4.x), vec4<i32>(arg_1.c.x, -37948i, 47424i, 26021i), arg_1.d, arg_1.e), true)), arg_0).e * vec4<f32>(global4.x, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(global4.x + arg_1.b.x), global4.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-557f * global4.x), _wgslsmith_f_op_f32(-global4.x), false))), arg_0, _wgslsmith_f_op_vec3_f32(-arg_0.c.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1473f, global4.x, arg_1.e.x, global4.x))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(344f, 882f, arg_1.e.x, global4.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2558f, _wgslsmith_f_op_f32(f32(-1f) * -507f), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(exp2(arg_1.e.x))) + arg_1.e)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.e.xzy * _wgslsmith_f_op_vec3_f32(-var_0.d)) * vec3<f32>(arg_0.c.b.x, arg_1.b.x, _wgslsmith_f_op_f32(-1f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c.c.e)));
    var var_3 = true;
    var_3 = !(!(!arg_1.d));
    return Struct_1(vec3<i32>(~countOneBits(arg_2), ~(i32(-1i) * -u_input.d.x), firstLeadingBit(u_input.a)), arg_1.b, arg_0.b.b.c, var_0.a <= var_1.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -764f), func_2(Struct_2(select(true, arg_1.d, global3.x), func_2(Struct_2(false, Struct_1(vec3<i32>(var_0.c.c.c.x, -2147483647i, -41189i), vec3<f32>(arg_1.e.x, 1000f, -1278f), arg_1.c, global3.x, vec4<f32>(-1034f, var_0.b.b.b.x, var_2.x, -953f)), vec4<f32>(-880f, var_1.x, global4.x, 973f), var_0.b.d), arg_0.c, Struct_3(arg_0.a, arg_0.b, arg_0.b.b, arg_0.b.a)), _wgslsmith_f_op_vec4_f32(arg_1.e * vec4<f32>(168f, global4.x, var_0.b.b.e.x, arg_0.b.c.x)), _wgslsmith_div_f32(-2297f, 966f)), arg_0.b.b, arg_0).e.x, _wgslsmith_f_op_f32(f32(-1f) * -2035f), global4.x));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>) -> Struct_4 {
    global1 = 31177i;
    let var_0 = Struct_3(~u_input.b, Struct_2(global3.x, Struct_1(reverseBits(vec3<i32>(0i, 24380i, arg_0.b.c.x)), _wgslsmith_div_vec3_f32(arg_0.c.wzw, _wgslsmith_div_vec3_f32(arg_0.b.b, vec3<f32>(-1000f, arg_0.b.e.x, 1000f))), arg_0.b.c, global2[_wgslsmith_index_u32(~2035u, 10u)], vec4<f32>(_wgslsmith_f_op_f32(min(1253f, -356f)), _wgslsmith_f_op_f32(-arg_0.d), func_2(global0[_wgslsmith_index_u32(1u, 32u)], Struct_1(arg_0.b.c.zwx, vec3<f32>(103f, 147f, arg_2.x), vec4<i32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.c.x), arg_0.a, vec4<f32>(arg_1, global4.x, arg_2.x, arg_2.x)), Struct_3(0u, arg_0, Struct_1(vec3<i32>(1i, arg_0.b.c.x, u_input.d.x), vec3<f32>(global4.x, 1633f, arg_1), arg_0.b.c, true, arg_0.b.e), global2[_wgslsmith_index_u32(25675u, 10u)])).e.x, _wgslsmith_div_f32(arg_2.x, arg_2.x))), vec4<f32>(_wgslsmith_f_op_f32(-global4.x), global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(1713f - 102f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * -301f) + arg_0.b.e.x)), arg_0.b, !(!arg_0.a));
    let var_1 = Struct_1(var_0.b.b.a | ~(vec3<i32>(-1i) * -arg_0.b.c.wxy), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.c.b + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.b.x, 352f, arg_1) * vec3<f32>(arg_1, global4.x, var_0.b.d))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, -696f, arg_1) - _wgslsmith_f_op_vec3_f32(arg_0.b.b + vec3<f32>(676f, arg_0.b.b.x, arg_0.d))))), _wgslsmith_sub_vec4_i32(arg_0.b.c & vec4<i32>(reverseBits(15139i), u_input.d.x, arg_0.b.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 42415i), vec2<i32>(u_input.d.x, -2147483647i))), _wgslsmith_sub_vec4_i32(vec4<i32>(~var_0.c.a.x, _wgslsmith_add_i32(2147483647i, u_input.d.x), 1i, u_input.a & var_0.c.c.x), vec4<i32>(u_input.a | -1i, ~(-2147483647i), _wgslsmith_mult_i32(u_input.a, -2147483647i), arg_0.b.a.x))), false, vec4<f32>(-1931f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(func_4(var_0, arg_0.b, arg_0.b.c.x, var_0.b.b.a.x).b.x)), var_0.c.b.x)), func_2(arg_0, arg_0.b, Struct_3(u_input.b, arg_0, var_0.b.b, var_0.a >= u_input.c.x)).e.x, var_0.b.b.b.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f * global4.x) - _wgslsmith_f_op_f32(-arg_0.b.e.x)), arg_2.x, _wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(abs(var_0.c.e.x)))))));
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.e) - _wgslsmith_f_op_vec4_f32(func_2(Struct_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], var_0.b.b, vec4<f32>(global4.x, 461f, var_2.x, arg_0.c.x), -787f), Struct_1(var_1.c.ywx, vec3<f32>(1967f, arg_1, -685f), vec4<i32>(-36338i, 11871i, 2399i, arg_0.b.a.x), var_0.d, vec4<f32>(var_0.b.b.e.x, arg_1, arg_2.x, arg_0.b.b.x)), Struct_3(1u, global0[_wgslsmith_index_u32(var_0.a, 32u)], Struct_1(vec3<i32>(-1i, u_input.d.x, var_1.a.x), vec3<f32>(arg_2.x, arg_1, var_0.b.d), var_1.c, var_1.d, vec4<f32>(var_2.x, 893f, 955f, -2016f)), global3.x)).e - _wgslsmith_f_op_vec4_f32(-var_0.c.e))), arg_0.c)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.b.x, _wgslsmith_f_op_f32(1077f * arg_2.x)))), var_0.b, Struct_3(~(~u_input.c.x), Struct_2(true, var_0.c, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, var_0.b.b.e.x, arg_2.x, var_2.x))), 519f), arg_0.b, false), var_1.b, vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(func_2(Struct_2(true, Struct_1(var_1.a, vec3<f32>(var_2.x, -948f, arg_1), arg_0.b.c, arg_0.a, vec4<f32>(-1000f, var_2.x, var_0.b.c.x, 685f)), vec4<f32>(-600f, -354f, 665f, 1208f), arg_2.x), arg_0.b, var_0).b.x, func_2(var_0.b, Struct_1(var_1.c.xzy, vec3<f32>(arg_2.x, arg_1, -942f), var_0.c.c, true, vec4<f32>(var_1.b.x, global4.x, global4.x, var_2.x)), Struct_3(u_input.b, Struct_2(arg_0.b.d, arg_0.b, vec4<f32>(231f, var_2.x, global4.x, -956f), -1317f), arg_0.b, false)).e.x))), func_4(var_0, func_4(var_0, var_1, 1i, -1i), func_2(Struct_2(false, Struct_1(var_1.c.xzx, global4.zyx, var_0.c.c, true, vec4<f32>(arg_1, arg_0.c.x, -956f, -298f)), vec4<f32>(var_0.c.b.x, -748f, -490f, 1000f), arg_1), var_0.b.b, Struct_3(u_input.c.x, var_0.b, arg_0.b, true)).a.x, var_0.c.c.x).b.x, _wgslsmith_f_op_f32(step(-859f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(403f)) * var_1.e.x)))));
}

fn func_1() -> f32 {
    let var_0 = global3.yxy;
    global2 = array<bool, 10>();
    var var_1 = func_5(Struct_2(var_0.x, func_4(Struct_3(~u_input.b, Struct_2(false, Struct_1(vec3<i32>(u_input.d.x, 0i, -1i), global4.wxy, vec4<i32>(u_input.d.x, u_input.a, -7122i, u_input.d.x), global3.x, vec4<f32>(global4.x, global4.x, global4.x, global4.x)), vec4<f32>(1025f, global4.x, -1095f, 1213f), 518f), func_2(Struct_2(true, Struct_1(vec3<i32>(u_input.d.x, 0i, u_input.a), global4.xyx, vec4<i32>(-78774i, 1i, 1i, -15521i), global3.x, vec4<f32>(global4.x, -1675f, global4.x, global4.x)), vec4<f32>(global4.x, 1131f, global4.x, global4.x), global4.x), Struct_1(vec3<i32>(u_input.d.x, -1i, 2147483647i), vec3<f32>(global4.x, global4.x, global4.x), vec4<i32>(39856i, -2147483647i, u_input.d.x, -17788i), true, vec4<f32>(-1266f, global4.x, 457f, global4.x)), Struct_3(u_input.c.x, global0[_wgslsmith_index_u32(0u, 32u)], Struct_1(vec3<i32>(24884i, 2609i, 2147483647i), global4.wzy, vec4<i32>(u_input.a, u_input.a, u_input.d.x, u_input.d.x), global2[_wgslsmith_index_u32(0u, 10u)], vec4<f32>(-891f, -432f, global4.x, global4.x)), true)), func_3(-1755f, Struct_1(vec3<i32>(-10096i, -31457i, -83686i), vec3<f32>(-229f, -846f, global4.x), vec4<i32>(-2147483647i, u_input.a, u_input.a, 0i), global3.x, vec4<f32>(1154f, global4.x, global4.x, global4.x)), vec2<bool>(true, false)).x), Struct_1(func_2(Struct_2(false, Struct_1(vec3<i32>(u_input.a, -9926i, 1i), global4.wzy, vec4<i32>(0i, 34382i, u_input.a, u_input.a), true, vec4<f32>(1000f, global4.x, -357f, 562f)), vec4<f32>(global4.x, global4.x, global4.x, global4.x), global4.x), Struct_1(vec3<i32>(u_input.a, u_input.d.x, -1i), vec3<f32>(global4.x, 104f, global4.x), vec4<i32>(u_input.d.x, -2147483647i, -2147483647i, u_input.d.x), global2[_wgslsmith_index_u32(u_input.c.x, 10u)], vec4<f32>(global4.x, -926f, global4.x, global4.x)), Struct_3(1u, global0[_wgslsmith_index_u32(38606u, 32u)], Struct_1(vec3<i32>(u_input.a, u_input.a, -18234i), vec3<f32>(global4.x, global4.x, 444f), vec4<i32>(-51413i, u_input.a, 19642i, u_input.d.x), true, vec4<f32>(global4.x, global4.x, -1114f, -608f)), false)).c.xxz, _wgslsmith_f_op_vec3_f32(max(global4.wzy, vec3<f32>(global4.x, global4.x, -193f))), ~vec4<i32>(u_input.a, 65572i, -25118i, u_input.d.x), func_3(global4.x, Struct_1(vec3<i32>(u_input.a, -1i, u_input.a), vec3<f32>(global4.x, -116f, global4.x), vec4<i32>(u_input.a, 1i, u_input.a, u_input.d.x), global3.x, vec4<f32>(global4.x, global4.x, global4.x, 2436f)), var_0.zz).x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(989f, global4.x, -1731f, 1064f))), u_input.a, 2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global4.x, -268f)), global4.x, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(733f + global4.x)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -752f, global4.x, -360f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(global4.x + 1033f)) + 527f)), -1298f, vec2<f32>(func_2(global0[_wgslsmith_index_u32(20630u, 32u)], func_2(Struct_2(global3.x, Struct_1(vec3<i32>(-2147483647i, 31260i, 1i), vec3<f32>(global4.x, 474f, global4.x), vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, u_input.a), global2[_wgslsmith_index_u32(u_input.c.x, 10u)], vec4<f32>(global4.x, 881f, global4.x, global4.x)), vec4<f32>(-1110f, global4.x, global4.x, global4.x), global4.x), func_2(Struct_2(global2[_wgslsmith_index_u32(24352u, 10u)], Struct_1(vec3<i32>(u_input.d.x, 2147483647i, -32375i), vec3<f32>(global4.x, global4.x, 2250f), vec4<i32>(u_input.d.x, -9607i, -2147483647i, 2147483647i), global2[_wgslsmith_index_u32(u_input.b, 10u)], vec4<f32>(global4.x, global4.x, global4.x, global4.x)), vec4<f32>(global4.x, 1144f, 1000f, global4.x), -672f), Struct_1(vec3<i32>(45197i, u_input.d.x, -1i), global4.zzy, vec4<i32>(u_input.a, 0i, -2147483647i, u_input.d.x), false, vec4<f32>(global4.x, global4.x, global4.x, 2038f)), Struct_3(u_input.c.x, Struct_2(global2[_wgslsmith_index_u32(17903u, 10u)], Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.d.x), vec3<f32>(global4.x, -1509f, -476f), vec4<i32>(u_input.a, 14758i, u_input.a, u_input.d.x), var_0.x, vec4<f32>(1240f, -824f, global4.x, global4.x)), vec4<f32>(global4.x, global4.x, global4.x, global4.x), -221f), Struct_1(vec3<i32>(64219i, u_input.d.x, 0i), vec3<f32>(185f, 925f, -1151f), vec4<i32>(-16522i, u_input.a, -1i, 1i), false, vec4<f32>(global4.x, 924f, global4.x, 2891f)), var_0.x)), Struct_3(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 32u)], Struct_1(vec3<i32>(-4247i, 1i, 21634i), global4.wwy, vec4<i32>(-1i, u_input.a, 28424i, u_input.d.x), true, vec4<f32>(global4.x, global4.x, 772f, 1070f)), true)), Struct_3(~u_input.b, Struct_2(var_0.x, Struct_1(vec3<i32>(u_input.d.x, 43897i, -1i), global4.yxx, vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, 1i), global2[_wgslsmith_index_u32(u_input.b, 10u)], vec4<f32>(global4.x, 2851f, global4.x, -921f)), vec4<f32>(global4.x, 1000f, -1875f, global4.x), global4.x), func_4(Struct_3(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 32u)], Struct_1(vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i), vec3<f32>(global4.x, -604f, global4.x), vec4<i32>(u_input.a, u_input.d.x, u_input.a, u_input.d.x), false, vec4<f32>(global4.x, -826f, global4.x, global4.x)), true), Struct_1(vec3<i32>(u_input.d.x, 0i, u_input.a), vec3<f32>(-1503f, global4.x, global4.x), vec4<i32>(u_input.d.x, -1i, u_input.d.x, u_input.a), true, vec4<f32>(-955f, 1262f, -863f, -372f)), u_input.a, -22566i), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(6443u, u_input.c.x), 10u)])).e.x, global4.x));
    var var_2 = global0[_wgslsmith_index_u32(21449u, 32u)];
    global1 = -(_wgslsmith_sub_i32(_wgslsmith_div_i32(abs(var_2.b.a.x), -var_2.b.a.x), 6019i) << ((56092u | u_input.b) % 32u));
    return var_1.c.c.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), ~vec4<i32>(11312i, u_input.a, u_input.a, ~2147483647i), firstLeadingBit(abs(vec4<i32>(_wgslsmith_div_i32(2147483647i, u_input.a), u_input.d.x >> (u_input.c.x % 32u), max(u_input.d.x, 0i), select(u_input.d.x, u_input.a, true)))));
}

