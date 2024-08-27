struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-419f, -220f, -499f, -512f, 2119f, 1388f, 1018f, 662f, 713f, -910f, 104f, -250f, 1325f, 176f, 134f, -747f, -266f, 2349f, -1000f, -178f, 448f, -1260f, 548f, -183f, -817f);

var<private> global1: array<vec2<u32>, 15>;

var<private> global2: array<i32, 3> = array<i32, 3>(-1i, -20436i, -58690i);

var<private> global3: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_2(65438u, Struct_1(-20477i), Struct_1(2147483647i), vec4<f32>(-1000f, 717f, -872f, -809f), Struct_1(-41897i)), Struct_2(0u, Struct_1(-1i), Struct_1(-10049i), vec4<f32>(-410f, -940f, 1512f, -896f), Struct_1(16160i))), Struct_3(Struct_2(37653u, Struct_1(7120i), Struct_1(0i), vec4<f32>(-606f, -546f, 1321f, 897f), Struct_1(1i)), Struct_2(4665u, Struct_1(2147483647i), Struct_1(-17674i), vec4<f32>(-2832f, -300f, -264f, 1218f), Struct_1(-56518i))), Struct_3(Struct_2(4294967295u, Struct_1(62821i), Struct_1(-5114i), vec4<f32>(-1000f, 414f, -673f, -1771f), Struct_1(0i)), Struct_2(60683u, Struct_1(-1i), Struct_1(-11462i), vec4<f32>(-418f, 375f, 618f, -418f), Struct_1(10062i))), Struct_3(Struct_2(73077u, Struct_1(37642i), Struct_1(i32(-2147483648)), vec4<f32>(-335f, 929f, -1416f, -1000f), Struct_1(i32(-2147483648))), Struct_2(0u, Struct_1(0i), Struct_1(0i), vec4<f32>(-2406f, -780f, -1293f, 1057f), Struct_1(79528i))), Struct_3(Struct_2(4294967295u, Struct_1(2147483647i), Struct_1(-21004i), vec4<f32>(1000f, -805f, 1214f, 856f), Struct_1(-41321i)), Struct_2(2777u, Struct_1(14057i), Struct_1(1i), vec4<f32>(800f, 441f, -977f, -243f), Struct_1(1i))), Struct_3(Struct_2(1u, Struct_1(0i), Struct_1(1i), vec4<f32>(1000f, -285f, 219f, 1605f), Struct_1(-4935i)), Struct_2(1u, Struct_1(-1i), Struct_1(23010i), vec4<f32>(1476f, -396f, -1005f, 254f), Struct_1(0i))), Struct_3(Struct_2(1u, Struct_1(-1i), Struct_1(93i), vec4<f32>(544f, 392f, -544f, 1017f), Struct_1(-1308i)), Struct_2(40603u, Struct_1(1i), Struct_1(-20453i), vec4<f32>(402f, -1891f, 167f, -613f), Struct_1(-9803i))), Struct_3(Struct_2(1u, Struct_1(2147483647i), Struct_1(1i), vec4<f32>(1449f, -449f, -1100f, 859f), Struct_1(-37282i)), Struct_2(31480u, Struct_1(-27716i), Struct_1(-17213i), vec4<f32>(-399f, 358f, -1349f, 1837f), Struct_1(-1i))), Struct_3(Struct_2(4294967295u, Struct_1(1i), Struct_1(1i), vec4<f32>(-255f, -955f, -549f, 227f), Struct_1(0i)), Struct_2(40878u, Struct_1(-1i), Struct_1(59530i), vec4<f32>(-862f, 428f, 138f, 523f), Struct_1(2147483647i))), Struct_3(Struct_2(19246u, Struct_1(2147483647i), Struct_1(-24765i), vec4<f32>(1000f, 110f, 190f, 1586f), Struct_1(18538i)), Struct_2(0u, Struct_1(i32(-2147483648)), Struct_1(-79615i), vec4<f32>(-794f, -1000f, 1332f, 1860f), Struct_1(2147483647i))), Struct_3(Struct_2(11700u, Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), vec4<f32>(200f, 2250f, -552f, -1434f), Struct_1(-1255i)), Struct_2(25012u, Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), vec4<f32>(-273f, -1344f, -1971f, 908f), Struct_1(27394i))), Struct_3(Struct_2(1u, Struct_1(0i), Struct_1(0i), vec4<f32>(1388f, 281f, 126f, -244f), Struct_1(-826i)), Struct_2(79419u, Struct_1(-54718i), Struct_1(322i), vec4<f32>(1515f, -1063f, -1000f, -607f), Struct_1(-1i))), Struct_3(Struct_2(48404u, Struct_1(-70548i), Struct_1(-10038i), vec4<f32>(109f, -755f, 207f, 619f), Struct_1(i32(-2147483648))), Struct_2(18877u, Struct_1(-8090i), Struct_1(-13648i), vec4<f32>(-461f, 294f, 505f, -723f), Struct_1(35270i))), Struct_3(Struct_2(0u, Struct_1(-1i), Struct_1(1i), vec4<f32>(-825f, -324f, -1131f, 451f), Struct_1(-1i)), Struct_2(4294967295u, Struct_1(-25258i), Struct_1(52274i), vec4<f32>(-2990f, -755f, -667f, 641f), Struct_1(i32(-2147483648)))), Struct_3(Struct_2(15247u, Struct_1(-1i), Struct_1(2147483647i), vec4<f32>(497f, 892f, 275f, -1000f), Struct_1(0i)), Struct_2(45124u, Struct_1(-2454i), Struct_1(2147483647i), vec4<f32>(958f, 1317f, -716f, -1315f), Struct_1(0i))), Struct_3(Struct_2(12893u, Struct_1(25287i), Struct_1(-1i), vec4<f32>(-204f, -988f, 2087f, -821f), Struct_1(0i)), Struct_2(1u, Struct_1(2147483647i), Struct_1(1i), vec4<f32>(-939f, 372f, 1000f, -521f), Struct_1(-5819i))), Struct_3(Struct_2(112827u, Struct_1(-26215i), Struct_1(2147483647i), vec4<f32>(-1262f, -390f, -784f, -780f), Struct_1(0i)), Struct_2(34087u, Struct_1(1i), Struct_1(i32(-2147483648)), vec4<f32>(149f, -644f, -1381f, 148f), Struct_1(3370i))), Struct_3(Struct_2(16747u, Struct_1(1i), Struct_1(-18712i), vec4<f32>(1054f, -839f, -977f, -1000f), Struct_1(i32(-2147483648))), Struct_2(80202u, Struct_1(15575i), Struct_1(2147483647i), vec4<f32>(-1202f, -469f, -1096f, 971f), Struct_1(0i))), Struct_3(Struct_2(4294967295u, Struct_1(2147483647i), Struct_1(54444i), vec4<f32>(1157f, -142f, 1604f, -717f), Struct_1(-31180i)), Struct_2(17314u, Struct_1(16030i), Struct_1(2147483647i), vec4<f32>(-1000f, 430f, -823f, 788f), Struct_1(-1i))), Struct_3(Struct_2(0u, Struct_1(3266i), Struct_1(0i), vec4<f32>(1396f, -2733f, -1169f, -678f), Struct_1(25675i)), Struct_2(1u, Struct_1(-24338i), Struct_1(62281i), vec4<f32>(-1065f, 525f, 647f, 1061f), Struct_1(8013i))), Struct_3(Struct_2(4294967295u, Struct_1(0i), Struct_1(-21496i), vec4<f32>(-1279f, 293f, 315f, -1052f), Struct_1(27011i)), Struct_2(1u, Struct_1(-46380i), Struct_1(-2276i), vec4<f32>(1363f, -2334f, -1936f, 669f), Struct_1(0i))), Struct_3(Struct_2(0u, Struct_1(0i), Struct_1(43461i), vec4<f32>(510f, -393f, 1855f, -1894f), Struct_1(-1i)), Struct_2(32871u, Struct_1(10303i), Struct_1(2147483647i), vec4<f32>(575f, -1765f, 737f, 1474f), Struct_1(1i))), Struct_3(Struct_2(4294967295u, Struct_1(-27852i), Struct_1(-48120i), vec4<f32>(-248f, -141f, -1000f, -416f), Struct_1(0i)), Struct_2(1u, Struct_1(59577i), Struct_1(i32(-2147483648)), vec4<f32>(-187f, -205f, -616f, -452f), Struct_1(-1i))), Struct_3(Struct_2(93416u, Struct_1(i32(-2147483648)), Struct_1(15866i), vec4<f32>(-344f, 673f, -1681f, 792f), Struct_1(36960i)), Struct_2(32400u, Struct_1(56577i), Struct_1(i32(-2147483648)), vec4<f32>(926f, -467f, 2239f, 1000f), Struct_1(-1i))), Struct_3(Struct_2(77950u, Struct_1(1i), Struct_1(25151i), vec4<f32>(433f, -199f, -235f, -630f), Struct_1(i32(-2147483648))), Struct_2(1u, Struct_1(-10886i), Struct_1(-262i), vec4<f32>(-523f, 798f, 282f, -670f), Struct_1(1i))), Struct_3(Struct_2(0u, Struct_1(i32(-2147483648)), Struct_1(-1i), vec4<f32>(-744f, 1946f, -835f, -850f), Struct_1(i32(-2147483648))), Struct_2(4294967295u, Struct_1(i32(-2147483648)), Struct_1(-1i), vec4<f32>(-1099f, 1894f, -130f, -287f), Struct_1(1118i))), Struct_3(Struct_2(34479u, Struct_1(27572i), Struct_1(33891i), vec4<f32>(-1460f, -454f, -1690f, 1046f), Struct_1(1i)), Struct_2(0u, Struct_1(-39378i), Struct_1(i32(-2147483648)), vec4<f32>(1000f, 924f, -1017f, -1304f), Struct_1(67841i))), Struct_3(Struct_2(0u, Struct_1(17359i), Struct_1(-1i), vec4<f32>(181f, -619f, 645f, -286f), Struct_1(0i)), Struct_2(35941u, Struct_1(-36604i), Struct_1(-51158i), vec4<f32>(1526f, -174f, -720f, -1506f), Struct_1(0i))), Struct_3(Struct_2(0u, Struct_1(1i), Struct_1(38593i), vec4<f32>(585f, -1101f, -1000f, -320f), Struct_1(i32(-2147483648))), Struct_2(4294967295u, Struct_1(7985i), Struct_1(27689i), vec4<f32>(858f, 1000f, -2186f, -316f), Struct_1(-1i))));

var<private> global4: i32 = 1i;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = -843f;
    global1 = array<vec2<u32>, 15>();
    global0 = array<f32, 25>();
    return countOneBits(countOneBits(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(arg_1.x, 3u)], -1i, 24542i, -10358i), vec4<i32>(u_input.a, ~u_input.a, min(33439i, -2147483647i), -1i), -(~vec4<i32>(0i, u_input.a, -15835i, -63155i)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = vec2<bool>(all(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), vec2<bool>(false, true), vec2<bool>(true, true))), select(true, false & (_wgslsmith_f_op_f32(-arg_1.b.d.x) == _wgslsmith_f_op_f32(abs(arg_1.b.d.x))), true));
    let var_1 = -1000f;
    global2 = array<i32, 3>();
    global2 = array<i32, 3>();
    var var_2 = arg_1.b;
    return select(!(!vec4<bool>(var_0.x | true, all(vec2<bool>(var_0.x, true)), var_0.x, !var_0.x)), vec4<bool>(!(min(4294967295u, var_2.a) == arg_2.x), false, false, true), !select(!vec4<bool>(true, var_0.x, false, var_0.x), select(!vec4<bool>(true, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, false, var_0.x, false), false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(all(vec3<bool>(false, var_0.x, true)), var_0.x, any(vec3<bool>(false, var_0.x, false)), var_0.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> f32 {
    global3 = array<Struct_3, 29>();
    global1 = array<vec2<u32>, 15>();
    global3 = array<Struct_3, 29>();
    var var_0 = vec2<bool>(true, true);
    let var_1 = select(firstTrailingBit(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(40089u, 30580u, 6100u, 1u)) | select(firstTrailingBit(vec4<u32>(0u, 10381u, 19422u, 5052u)), vec4<u32>(56712u, 1u, 15438u, 4294967295u), func_3(vec3<u32>(29198u, 0u, 75697u), Struct_3(Struct_2(4294967295u, Struct_1(u_input.a), Struct_1(arg_1.x), vec4<f32>(global0[_wgslsmith_index_u32(7900u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], -1401f), Struct_1(global2[_wgslsmith_index_u32(0u, 3u)])), Struct_2(47690u, Struct_1(arg_1.x), Struct_1(12419i), vec4<f32>(-685f, -2494f, 1000f, -396f), Struct_1(-12260i))), global1[_wgslsmith_index_u32(4294967295u, 15u)])), ~(~vec4<u32>(1u, 1u, 1u, 1u))), all(!select(func_3(vec3<u32>(24579u, 0u, 4294967295u), Struct_3(Struct_2(53919u, Struct_1(1i), Struct_1(17668i), vec4<f32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], 359f, global0[_wgslsmith_index_u32(0u, 25u)]), Struct_1(22182i)), Struct_2(4294967295u, Struct_1(1i), Struct_1(35707i), vec4<f32>(-425f, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(51926u, 25u)]), Struct_1(-1i))), global1[_wgslsmith_index_u32(6316u, 15u)]).yxw, vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false))));
    return -998f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1247f, _wgslsmith_f_op_f32(func_2(~vec4<i32>(23569i, -9514i, global2[_wgslsmith_index_u32(1u, 3u)], 7686i), -func_1(vec2<f32>(-1274f, global0[_wgslsmith_index_u32(1u, 25u)]), vec2<u32>(53147u, 0u))))), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(9649u, 25u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(1630f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 25u)])) * global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(0u), 0u), 25u)]), !select(any(vec2<bool>(false, false)), any(vec3<bool>(true, false, false)), true))), any(select(vec4<bool>(global0[_wgslsmith_index_u32(28951u, 25u)] >= -644f, true, true, any(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, u_input.a >= 1i, true), vec4<bool>(true, all(vec4<bool>(true, true, true, false)), any(vec3<bool>(false, false, false)), all(vec3<bool>(false, false, true)))))));
    global0 = array<f32, 25>();
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1271f, global0[_wgslsmith_index_u32(85094u, 25u)], global0[_wgslsmith_index_u32(77755u, 25u)])))) * vec3<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(26951u, 25u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(66971u, 25u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 25u)] - -707f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(79410u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], 371f) + vec3<f32>(-1895f, -2149f, -194f))) - vec3<f32>(1777f, _wgslsmith_f_op_f32(func_2(vec4<i32>(-1i, global2[_wgslsmith_index_u32(0u, 3u)], -2147483647i, -2147483647i), vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(55163u, 25571u, 53773u), 25u)])))));
    var var_2 = var_1.x;
    var_2 = global0[_wgslsmith_index_u32(abs(min(1u, countOneBits(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 59111u, 4294967295u)), ~vec3<u32>(18026u, 4294967295u, 115585u))))), 25u)];
    var var_3 = min(5744u, 6322u << (~(select(7094u, 4294967295u, true) & _wgslsmith_mult_u32(92436u, 1u)) % 32u));
    let var_4 = Struct_1(1i);
    let var_5 = var_4;
    let var_6 = ~firstLeadingBit(max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(22640i, var_5.a)), abs(vec2<i32>(-4801i, var_5.a))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(-(~(~vec2<i32>(var_4.a, var_5.a))), ~var_6), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, global0[_wgslsmith_index_u32(1u, 25u)]))) * vec2<f32>(1068f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 25u)])))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.xx)), _wgslsmith_f_op_vec2_f32(var_1.yy + vec2<f32>(724f, 420f)))))), vec4<i32>(-(~var_4.a), 0i, _wgslsmith_mult_i32(min(~(-56546i), select(0i, global2[_wgslsmith_index_u32(7772u, 3u)], false)), -(global2[_wgslsmith_index_u32(4294967295u, 3u)] ^ var_5.a)), -var_6.x), _wgslsmith_clamp_u32(1u, 1u, firstTrailingBit(~1u)));
}

