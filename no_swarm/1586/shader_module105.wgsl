struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(-13872i, vec3<f32>(-1000f, -254f, -1821f)), vec3<bool>(true, false, true), Struct_1(-35313i, vec3<f32>(-636f, 454f, -716f)), vec4<f32>(1248f, -1576f, 1294f, 1821f)), Struct_2(Struct_1(2147483647i, vec3<f32>(-1000f, 749f, -1114f)), vec3<bool>(true, false, false), Struct_1(-4910i, vec3<f32>(-2000f, -1003f, -1236f)), vec4<f32>(1040f, 1000f, 858f, 623f)), Struct_2(Struct_1(-1391i, vec3<f32>(-1000f, -450f, 670f)), vec3<bool>(true, true, false), Struct_1(8423i, vec3<f32>(1211f, -413f, 776f)), vec4<f32>(251f, -1342f, 709f, -816f)), Struct_2(Struct_1(2147483647i, vec3<f32>(1199f, 794f, 1704f)), vec3<bool>(true, true, true), Struct_1(13694i, vec3<f32>(-1382f, -782f, -1175f)), vec4<f32>(1157f, 994f, 452f, 209f)), Struct_2(Struct_1(-26790i, vec3<f32>(227f, 608f, 580f)), vec3<bool>(true, true, true), Struct_1(0i, vec3<f32>(-1127f, 385f, 129f)), vec4<f32>(1000f, 965f, -410f, 178f)), Struct_2(Struct_1(0i, vec3<f32>(-1116f, 1000f, 261f)), vec3<bool>(true, false, false), Struct_1(-75022i, vec3<f32>(-393f, -394f, -370f)), vec4<f32>(-1015f, 444f, 759f, 186f)), Struct_2(Struct_1(-10671i, vec3<f32>(-1513f, 974f, 1096f)), vec3<bool>(true, false, false), Struct_1(i32(-2147483648), vec3<f32>(-1420f, -150f, 917f)), vec4<f32>(-839f, -310f, 1482f, -410f)), Struct_2(Struct_1(-13791i, vec3<f32>(178f, -1336f, -724f)), vec3<bool>(false, false, true), Struct_1(20873i, vec3<f32>(797f, 528f, -316f)), vec4<f32>(-114f, 1126f, -2407f, 385f)), Struct_2(Struct_1(162i, vec3<f32>(-180f, 878f, 153f)), vec3<bool>(false, true, true), Struct_1(-69118i, vec3<f32>(1458f, -168f, 902f)), vec4<f32>(502f, -249f, 475f, -917f)), Struct_2(Struct_1(0i, vec3<f32>(-1260f, 1000f, 221f)), vec3<bool>(false, true, true), Struct_1(1i, vec3<f32>(-1161f, 827f, 840f)), vec4<f32>(-502f, 360f, 460f, -197f)), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(713f, 415f, -1108f)), vec3<bool>(false, true, true), Struct_1(-9766i, vec3<f32>(1156f, 1084f, -1359f)), vec4<f32>(-1287f, -1326f, 1331f, -443f)), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(-881f, -619f, -2352f)), vec3<bool>(false, false, true), Struct_1(50940i, vec3<f32>(-459f, -270f, -949f)), vec4<f32>(486f, 521f, 1000f, 1324f)), Struct_2(Struct_1(1i, vec3<f32>(-540f, -774f, 178f)), vec3<bool>(true, true, false), Struct_1(0i, vec3<f32>(-676f, -1260f, 1109f)), vec4<f32>(-2104f, -1000f, 1580f, -339f)), Struct_2(Struct_1(80i, vec3<f32>(-1027f, 269f, 1222f)), vec3<bool>(true, false, true), Struct_1(0i, vec3<f32>(-146f, -304f, 882f)), vec4<f32>(1620f, -527f, -156f, 1085f)), Struct_2(Struct_1(7640i, vec3<f32>(-340f, -386f, -759f)), vec3<bool>(false, false, true), Struct_1(-50464i, vec3<f32>(1083f, -566f, -802f)), vec4<f32>(-1000f, 1315f, -1417f, 1034f)), Struct_2(Struct_1(0i, vec3<f32>(386f, 795f, 370f)), vec3<bool>(true, false, false), Struct_1(31052i, vec3<f32>(2360f, -316f, 2051f)), vec4<f32>(-399f, -658f, -1000f, -541f)), Struct_2(Struct_1(-9223i, vec3<f32>(-1000f, 734f, -233f)), vec3<bool>(false, true, false), Struct_1(-1974i, vec3<f32>(1000f, 488f, -491f)), vec4<f32>(1723f, -1076f, 327f, -787f)), Struct_2(Struct_1(44425i, vec3<f32>(1249f, 1570f, -1048f)), vec3<bool>(false, true, true), Struct_1(16574i, vec3<f32>(-1000f, -980f, -119f)), vec4<f32>(-1850f, -672f, 1000f, -624f)), Struct_2(Struct_1(-46573i, vec3<f32>(493f, 799f, 296f)), vec3<bool>(false, true, false), Struct_1(-13637i, vec3<f32>(2689f, -764f, 595f)), vec4<f32>(-517f, 1245f, 761f, 124f)), Struct_2(Struct_1(0i, vec3<f32>(584f, -1311f, 1000f)), vec3<bool>(false, true, true), Struct_1(72989i, vec3<f32>(-2019f, -612f, -144f)), vec4<f32>(191f, 691f, -390f, 593f)), Struct_2(Struct_1(-19197i, vec3<f32>(809f, 317f, 832f)), vec3<bool>(true, false, true), Struct_1(1i, vec3<f32>(-1000f, 616f, -369f)), vec4<f32>(459f, -1000f, -220f, -899f)), Struct_2(Struct_1(-1i, vec3<f32>(-276f, 810f, 214f)), vec3<bool>(true, false, true), Struct_1(2147483647i, vec3<f32>(597f, -1784f, 1247f)), vec4<f32>(153f, 1230f, -1226f, 486f)), Struct_2(Struct_1(4998i, vec3<f32>(1426f, -789f, 261f)), vec3<bool>(false, true, false), Struct_1(-31904i, vec3<f32>(849f, -1635f, 116f)), vec4<f32>(940f, -438f, 665f, 1537f)));

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(2147483647i, vec3<f32>(208f, -759f, 200f)), Struct_1(-57929i, vec3<f32>(-816f, 100f, 767f)), Struct_1(-1i, vec3<f32>(2376f, -1000f, 544f)), Struct_1(0i, vec3<f32>(1663f, 336f, -838f)), Struct_1(13357i, vec3<f32>(778f, -1181f, -2191f)), Struct_1(2147483647i, vec3<f32>(472f, -1153f, -2400f)), Struct_1(i32(-2147483648), vec3<f32>(-1443f, -198f, 525f)), Struct_1(0i, vec3<f32>(2223f, -491f, -882f)), Struct_1(i32(-2147483648), vec3<f32>(485f, -372f, 3275f)), Struct_1(-1i, vec3<f32>(2087f, 703f, 1904f)), Struct_1(-37001i, vec3<f32>(-269f, -1326f, -1000f)), Struct_1(6709i, vec3<f32>(266f, -433f, 676f)), Struct_1(2147483647i, vec3<f32>(-183f, 2031f, 1186f)), Struct_1(-67636i, vec3<f32>(-786f, 628f, -1344f)));

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(4294967295u), Struct_3(4294967295u), Struct_3(49163u), Struct_3(0u), Struct_3(4294967295u), Struct_3(29416u), Struct_3(26685u), Struct_3(9226u), Struct_3(1u), Struct_3(10409u), Struct_3(4362u), Struct_3(4294967295u), Struct_3(0u), Struct_3(12821u), Struct_3(4294967295u), Struct_3(34909u), Struct_3(4294967295u), Struct_3(31764u), Struct_3(68887u), Struct_3(31483u), Struct_3(40629u), Struct_3(4294967295u), Struct_3(17571u), Struct_3(0u), Struct_3(22819u), Struct_3(35333u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(step(arg_0.x, -1000f))), global1[_wgslsmith_index_u32(~(~(~u_input.b)), 14u)]);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(597f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x - 696f), arg_0.x))), global1[_wgslsmith_index_u32(1u, 14u)]);
    var var_2 = Struct_4(795f, var_1.b);
    global1 = array<Struct_1, 14>();
    var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1415f)))), Struct_1(_wgslsmith_mod_i32(var_0.b.a, -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1370f, 505f, var_2.b.b.x), vec3<f32>(var_1.a, 882f, -907f))))));
    return min(max(vec3<i32>(i32(-1i) * -2147483647i, ~var_1.b.a, var_1.b.a) | vec3<i32>(var_2.b.a, var_1.b.a, var_0.b.a), ~(~countOneBits(vec3<i32>(u_input.e, 2147483647i, var_1.b.a)))), _wgslsmith_mod_vec3_i32(abs(~reverseBits(vec3<i32>(32329i, 0i, var_2.b.a))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2251i, 1i, var_2.b.a), vec3<i32>(2147483647i, u_input.e, -1i)) | 33334i, var_0.b.a, ~(-2147483647i ^ u_input.e))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: vec2<f32>) -> vec3<i32> {
    return firstLeadingBit(~((vec3<i32>(u_input.e, u_input.e, u_input.e) << ((vec3<u32>(0u, 0u, u_input.b) >> (u_input.c.xzy % vec3<u32>(32u))) % vec3<u32>(32u))) | func_3(arg_3)));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-408f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(752f, 1281f) - _wgslsmith_div_f32(264f, -372f)))));
    var var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-36686i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.e, 2147483647i), countOneBits(u_input.e), 2147483647i), u_input.e), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, -4733i, _wgslsmith_div_i32(u_input.e, u_input.e)), reverseBits(func_2(false, var_0, true, vec2<f32>(var_0, var_0)))), select(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.e, 2147483647i, u_input.e), func_2(false, var_0, false, vec2<f32>(194f, -585f)), vec3<i32>(29814i, -23386i, 23335i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, u_input.e, -15815i), vec3<i32>(u_input.e, 0i, u_input.e)) >> (_wgslsmith_sub_vec3_u32(u_input.c.xxw, vec3<u32>(1u, 0u, 49737u)) % vec3<u32>(32u)), all(vec4<bool>(true, true, true, true)))), vec3<i32>(u_input.e >> (65894u % 32u), abs(~44782i), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.e, -2103i, -18294i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.e, 2147483647i, u_input.e), vec4<i32>(-23635i, 2147483647i, u_input.e, u_input.e))) & -3518i), -reverseBits(firstTrailingBit(min(vec3<i32>(-1i, u_input.e, u_input.e), vec3<i32>(u_input.e, u_input.e, 74079i)))));
    let var_2 = (i32(-1i) * -(~1i)) >> (1u % 32u);
    var_1 = countOneBits(-_wgslsmith_div_vec3_i32(select(vec3<i32>(-26193i, u_input.e, u_input.e), firstTrailingBit(vec3<i32>(u_input.e, var_2, -2147483647i)), true), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, 0i, var_1.x) << (vec3<u32>(4294967295u, u_input.b, 4074u) % vec3<u32>(32u)), vec3<i32>(-2147483647i, var_1.x, u_input.e))));
    global0 = array<Struct_2, 23>();
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_2, 29794i), vec3<i32>(var_2, -20908i, -2944i)) & -2147483647i), _wgslsmith_sub_i32(var_1.x, _wgslsmith_sub_i32(firstTrailingBit(var_2), 27305i))), 37350i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a & _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(u_input.a, 4294967295u) << (u_input.c.yz % vec2<u32>(32u))) ^ ~vec2<u32>(4294967295u, 83093u), ~vec2<u32>(u_input.c.x, u_input.a ^ u_input.d.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1017f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1097f) * _wgslsmith_f_op_f32(f32(-1f) * -1170f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-782f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_f_op_f32(-1527f + -540f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-925f)) * _wgslsmith_f_op_f32(-988f * 1000f)))));
    global2 = array<Struct_3, 26>();
    let var_2 = vec3<i32>(~(-2147483647i), func_1(), 2147483647i);
    let var_3 = Struct_1(1i | max(-25551i | _wgslsmith_mod_i32(2147483647i, var_2.x), -4301i), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, var_1, -1343f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, 880f, var_1), vec3<f32>(1725f, var_1, -1264f), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 1434f, -550f) + vec3<f32>(275f, -1692f, var_1)))))));
    var var_4 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.yy, _wgslsmith_f_op_f32(-var_3.b.x), min(-vec4<i32>(u_input.e, abs(-1i), 951i, -var_2.x), abs(~vec4<i32>(var_2.x, var_2.x, -1i, 0i)) ^ select(vec4<i32>(var_3.a, 0i, 30796i, u_input.e), vec4<i32>(57281i, var_2.x, u_input.e, 2147483647i) & vec4<i32>(u_input.e, var_2.x, u_input.e, u_input.e), true)), 20129i, var_2.zz);
}

