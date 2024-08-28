struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7>;

var<private> global1: array<i32, 7> = array<i32, 7>(i32(-2147483648), 0i, 1i, -47508i, 64469i, -1i, 1i);

var<private> global2: array<bool, 25> = array<bool, 25>(true, true, true, false, false, false, true, true, true, true, false, false, true, true, true, true, true, true, true, false, false, true, true, false, false);

var<private> global3: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(vec3<bool>(false, false, false), vec4<f32>(1057f, -351f, 165f, 813f), Struct_2(vec4<u32>(4294967295u, 0u, 1u, 30427u), 213f, 436f, vec4<f32>(404f, 1040f, -540f, 290f), -284f), 65805u, -134f), Struct_4(vec3<bool>(true, false, false), vec4<f32>(-432f, -422f, -320f, -868f), Struct_2(vec4<u32>(4294967295u, 15148u, 4294967295u, 48714u), 403f, -792f, vec4<f32>(-694f, 511f, -734f, 101f), 1061f), 0u, 367f), Struct_4(vec3<bool>(true, true, false), vec4<f32>(625f, 1328f, -1513f, -1604f), Struct_2(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), -1104f, -671f, vec4<f32>(-630f, 316f, 1603f, 2996f), -109f), 0u, 928f), Struct_4(vec3<bool>(true, true, false), vec4<f32>(1304f, -222f, 701f, 107f), Struct_2(vec4<u32>(1u, 0u, 1u, 1u), 226f, -537f, vec4<f32>(-348f, -614f, 1679f, -1000f), 1408f), 1u, -105f), Struct_4(vec3<bool>(true, true, false), vec4<f32>(-890f, 1716f, 286f, -1079f), Struct_2(vec4<u32>(47774u, 48771u, 62394u, 4294967295u), -378f, -957f, vec4<f32>(178f, 565f, -132f, -108f), 109f), 4294967295u, -1000f), Struct_4(vec3<bool>(false, false, true), vec4<f32>(109f, 1000f, -808f, -1000f), Struct_2(vec4<u32>(50490u, 16226u, 35124u, 0u), 592f, -388f, vec4<f32>(360f, -209f, 138f, 2441f), 2032f), 16601u, 613f), Struct_4(vec3<bool>(true, false, false), vec4<f32>(101f, 1634f, 1000f, -1735f), Struct_2(vec4<u32>(63567u, 1u, 13651u, 39210u), -457f, -948f, vec4<f32>(-348f, -447f, 1247f, -653f), 450f), 51314u, 744f), Struct_4(vec3<bool>(true, true, true), vec4<f32>(-1000f, 734f, -642f, -1468f), Struct_2(vec4<u32>(4294967295u, 8418u, 42517u, 36138u), 2191f, 826f, vec4<f32>(2342f, 1575f, 1025f, -1612f), -1853f), 4294967295u, -1631f), Struct_4(vec3<bool>(false, true, false), vec4<f32>(119f, 835f, 558f, 731f), Struct_2(vec4<u32>(4294967295u, 91360u, 32937u, 57078u), -679f, 434f, vec4<f32>(1590f, -515f, 650f, 1407f), 1336f), 4294967295u, -264f), Struct_4(vec3<bool>(false, false, true), vec4<f32>(-319f, -1565f, -1253f, -1632f), Struct_2(vec4<u32>(76591u, 14456u, 1u, 18104u), 1224f, -326f, vec4<f32>(-812f, -2212f, 1599f, -1000f), 473f), 0u, -249f), Struct_4(vec3<bool>(false, false, true), vec4<f32>(589f, 930f, 600f, -309f), Struct_2(vec4<u32>(4294967295u, 4294967295u, 1u, 3016u), -1607f, 590f, vec4<f32>(743f, -967f, 1204f, -802f), -867f), 11564u, 392f), Struct_4(vec3<bool>(false, true, false), vec4<f32>(232f, -763f, -1594f, 1759f), Struct_2(vec4<u32>(58723u, 46549u, 64425u, 41642u), -1000f, -842f, vec4<f32>(-548f, -1054f, 1184f, -616f), -912f), 45376u, -556f), Struct_4(vec3<bool>(false, false, false), vec4<f32>(-1986f, 1000f, -1490f, -542f), Struct_2(vec4<u32>(1u, 503u, 8346u, 0u), 367f, 562f, vec4<f32>(1206f, -1017f, -1825f, 639f), 199f), 54025u, -600f), Struct_4(vec3<bool>(false, true, false), vec4<f32>(-640f, 800f, -593f, -1018f), Struct_2(vec4<u32>(61181u, 0u, 0u, 4294967295u), 459f, 2196f, vec4<f32>(271f, -816f, -173f, -663f), 1236f), 0u, -1144f), Struct_4(vec3<bool>(false, false, false), vec4<f32>(731f, -713f, -1275f, -985f), Struct_2(vec4<u32>(4294967295u, 55693u, 92321u, 81957u), 690f, -565f, vec4<f32>(335f, -521f, 164f, -1202f), 1773f), 4294967295u, -230f), Struct_4(vec3<bool>(false, false, true), vec4<f32>(1282f, -1646f, -1471f, -221f), Struct_2(vec4<u32>(1u, 0u, 35851u, 4294967295u), 357f, 696f, vec4<f32>(-1882f, 3077f, 973f, -1168f), 1771f), 39050u, -1163f), Struct_4(vec3<bool>(true, false, true), vec4<f32>(-1068f, 453f, -921f, -668f), Struct_2(vec4<u32>(1u, 27337u, 0u, 4294967295u), -103f, 1922f, vec4<f32>(-2760f, 447f, -1000f, 532f), -321f), 0u, -1000f), Struct_4(vec3<bool>(false, true, true), vec4<f32>(787f, -173f, 603f, 344f), Struct_2(vec4<u32>(0u, 1u, 73825u, 1u), -838f, -873f, vec4<f32>(-557f, 1000f, 322f, 748f), 862f), 1u, 966f), Struct_4(vec3<bool>(true, false, true), vec4<f32>(749f, -414f, 2259f, 456f), Struct_2(vec4<u32>(4294967295u, 0u, 68539u, 20731u), 1000f, -534f, vec4<f32>(-1953f, -1268f, 1361f, 1132f), 1519f), 32463u, 950f), Struct_4(vec3<bool>(true, false, true), vec4<f32>(440f, -1487f, -2298f, 168f), Struct_2(vec4<u32>(1u, 0u, 74861u, 40709u), 3509f, -981f, vec4<f32>(-370f, -489f, -807f, -524f), 881f), 27210u, 305f), Struct_4(vec3<bool>(true, false, false), vec4<f32>(-1000f, 537f, -351f, -145f), Struct_2(vec4<u32>(11540u, 1u, 71131u, 4294967295u), 436f, 653f, vec4<f32>(415f, -492f, -769f, -286f), 255f), 13540u, -1000f), Struct_4(vec3<bool>(true, true, true), vec4<f32>(-703f, 490f, -1061f, -1887f), Struct_2(vec4<u32>(20522u, 4016u, 17513u, 4294967295u), 475f, 789f, vec4<f32>(686f, -282f, -113f, 335f), 570f), 49623u, 460f), Struct_4(vec3<bool>(false, true, false), vec4<f32>(543f, 632f, -1904f, -1640f), Struct_2(vec4<u32>(0u, 22833u, 13214u, 4375u), -198f, -752f, vec4<f32>(992f, 2009f, 1646f, 340f), 752f), 4294967295u, 1779f), Struct_4(vec3<bool>(false, true, false), vec4<f32>(999f, 1114f, -322f, -1849f), Struct_2(vec4<u32>(28112u, 1u, 133360u, 38019u), -1465f, -2057f, vec4<f32>(218f, 1252f, 187f, -139f), 1158f), 0u, -172f), Struct_4(vec3<bool>(true, false, true), vec4<f32>(-1178f, 533f, -924f, 1000f), Struct_2(vec4<u32>(61620u, 1u, 63209u, 4294967295u), -2366f, -578f, vec4<f32>(1038f, 1353f, 957f, 671f), 646f), 31669u, -1266f), Struct_4(vec3<bool>(false, false, false), vec4<f32>(1337f, 1000f, -135f, -1833f), Struct_2(vec4<u32>(57651u, 26196u, 4294967295u, 23183u), 840f, -382f, vec4<f32>(-1303f, -1024f, 1142f, 902f), 2103f), 30123u, 135f), Struct_4(vec3<bool>(false, true, true), vec4<f32>(-867f, -1179f, 1297f, 500f), Struct_2(vec4<u32>(34503u, 55753u, 115390u, 4294967295u), -1614f, -165f, vec4<f32>(1168f, 1000f, 1000f, 803f), 184f), 14489u, 1440f), Struct_4(vec3<bool>(true, true, true), vec4<f32>(1274f, 266f, -184f, -643f), Struct_2(vec4<u32>(119771u, 4294967295u, 27649u, 4294967295u), 400f, 335f, vec4<f32>(986f, -685f, 830f, 1263f), -1262f), 1u, -1588f), Struct_4(vec3<bool>(false, true, true), vec4<f32>(-1810f, 1128f, 971f, 144f), Struct_2(vec4<u32>(0u, 18320u, 88802u, 60576u), 659f, 162f, vec4<f32>(-660f, -916f, -107f, -2062f), 928f), 1901u, -1000f), Struct_4(vec3<bool>(true, true, true), vec4<f32>(565f, 583f, 468f, -1232f), Struct_2(vec4<u32>(4294967295u, 1u, 22835u, 65990u), 1000f, -1095f, vec4<f32>(-113f, 2081f, 475f, 1130f), -982f), 1u, -1373f), Struct_4(vec3<bool>(true, false, true), vec4<f32>(1364f, 729f, -417f, -667f), Struct_2(vec4<u32>(27398u, 4294967295u, 35876u, 0u), -710f, -422f, vec4<f32>(1533f, 255f, -902f, 1171f), 1000f), 10697u, -676f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(~select(vec4<u32>(u_input.a, 1u, 4294967295u, 1u) << ((vec4<u32>(1u, 17547u, u_input.a, 0u) ^ vec4<u32>(0u, 19132u, 29260u, 4294967295u)) % vec4<u32>(32u)), ~(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a) | vec4<u32>(28604u, u_input.a, 18108u, u_input.a)), !select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 25u)], global2[_wgslsmith_index_u32(0u, 25u)], true, global2[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 25u)], true, true, false), global2[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), min(vec2<i32>(31273i, u_input.b) | vec2<i32>(u_input.b, 2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(0u, 7u)], 1i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))) << (_wgslsmith_sub_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(53162u, 18214u), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(2556u, u_input.a))) % vec2<u32>(32u)));
    global1 = array<i32, 7>();
    let var_1 = Struct_2(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -643f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1156f)) * 415f))), _wgslsmith_f_op_f32(sign(-1526f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2256f, 292f, -691f, -1510f) * vec4<f32>(716f, -509f, 1627f, 1271f)))), vec4<f32>(-262f, _wgslsmith_f_op_f32(f32(-1f) * -1380f), -463f, 1463f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1606f, 197f)), _wgslsmith_f_op_f32(-443f + _wgslsmith_div_f32(-899f, 831f)), true))));
    let var_2 = !(!vec3<bool>(!(var_0.a.x != 4294967295u), global2[_wgslsmith_index_u32(~min(44126u, u_input.a), 25u)], global2[_wgslsmith_index_u32(reverseBits(11452u), 25u)]));
    var_0 = Struct_3(~reverseBits(var_0.a), select(reverseBits(~(-var_0.b)), vec2<i32>(_wgslsmith_mod_i32(20195i, abs(var_0.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_0.a.x, 7u)], 1i, var_0.b.x, -1i), vec4<i32>(26679i, var_0.b.x, -12442i, var_0.b.x)) >> (reverseBits(74682u) % 32u)), var_2.x));
    return global1[_wgslsmith_index_u32(1u >> (max(~(~max(u_input.a, var_1.a.x)), 7909u) % 32u), 7u)];
}

fn func_2() -> vec4<bool> {
    let var_0 = vec3<i32>(-1i, global1[_wgslsmith_index_u32(~u_input.a, 7u)], ~func_3()) << (~vec3<u32>(select(~u_input.a, u_input.a ^ u_input.a, global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 25u)]), 9692u, u_input.a) % vec3<u32>(32u));
    global2 = array<bool, 25>();
    var var_1 = firstTrailingBit(~abs(~vec4<u32>(u_input.a, 136648u, u_input.a, 0u)));
    return !vec4<bool>(global2[_wgslsmith_index_u32(2832u, 25u)], ((var_1.x <= u_input.a) | select(global2[_wgslsmith_index_u32(u_input.a, 25u)], true, true)) || any(!vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 25u)])), !(true == global2[_wgslsmith_index_u32(1u, 25u)]), any(select(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 25u)], true), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 25u)], false), vec2<bool>(global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(var_1.x, 25u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 25u)], global2[_wgslsmith_index_u32(u_input.a, 25u)])), global2[_wgslsmith_index_u32(4294967295u, 25u)] | false)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>) -> vec4<bool> {
    global2 = array<bool, 25>();
    var var_0 = vec3<bool>(-2147483647i != -global1[_wgslsmith_index_u32(max(u_input.a, _wgslsmith_dot_vec3_u32(arg_0.yzx, vec3<u32>(u_input.a, arg_0.x, 1u))), 7u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~18686u, u_input.a), 25u)], global2[_wgslsmith_index_u32(~4294967295u, 25u)]);
    global2 = array<bool, 25>();
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(0u, arg_0.x, 106241u, u_input.a)), _wgslsmith_clamp_u32(u_input.a, arg_0.x, arg_0.x), ~76203u, _wgslsmith_dot_vec2_u32(arg_0.yy, arg_0.ww)) & firstTrailingBit(~arg_0)), 7u)];
    var var_2 = Struct_3(~(~(~(~vec4<u32>(44928u, var_1.c.a.x, arg_0.x, u_input.a)))), vec2<i32>(~select(u_input.b, ~u_input.b, !arg_1.x), ~(~reverseBits(-1932i))));
    return !(!func_2());
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_4(select(vec3<bool>(!global2[_wgslsmith_index_u32(80325u, 25u)], any(vec4<bool>(arg_1.a.x, false, arg_1.a.x, true)), true), vec3<bool>(~arg_0 > _wgslsmith_div_u32(u_input.a, 0u), (false | global2[_wgslsmith_index_u32(36692u, 25u)]) | arg_1.a.x, any(!vec2<bool>(arg_1.a.x, global2[_wgslsmith_index_u32(74047u, 25u)]))), !vec3<bool>(arg_1.a.x && arg_1.a.x, true, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(637f, -583f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-614f, -570f)), _wgslsmith_f_op_f32(round(-2418f)))), Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, ~24725u, _wgslsmith_div_u32(1u, arg_0)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, u_input.a, arg_0, u_input.a), vec4<u32>(u_input.a, arg_0, 54872u, arg_0)))), _wgslsmith_f_op_f32(ceil(424f)), -895f, vec4<f32>(192f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-187f)))), -1061f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1479f)), _wgslsmith_div_f32(-1459f, 373f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1546f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -246f))))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, countOneBits(_wgslsmith_mod_u32(arg_2, u_input.a)), 1u, 10481u), firstTrailingBit(firstLeadingBit(vec4<u32>(arg_2, arg_2, 1u, arg_0) | vec4<u32>(4294967295u, 4294967295u, arg_2, 33729u)))), -1000f);
    var var_1 = ~u_input.b;
    global1 = array<i32, 7>();
    let var_2 = var_0.b.xw;
    global3 = array<Struct_4, 31>();
    return Struct_3(vec4<u32>(arg_0, ~1u, _wgslsmith_dot_vec2_u32(~var_0.c.a.zy, vec2<u32>(45377u, abs(arg_0))), u_input.a), -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(32194i, u_input.b), ~vec2<i32>(33684i, 24961i)), _wgslsmith_add_i32(1i, reverseBits(global1[_wgslsmith_index_u32(4560u, 7u)]))));
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = arg_0 > arg_0;
    var var_1 = arg_1;
    var_1 = ~(~(~(firstTrailingBit(u_input.a) & 104856u)));
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(31507u, u_input.a, arg_1), vec3<u32>(u_input.a, u_input.a, 43229u)), firstLeadingBit(max(vec3<u32>(arg_1, arg_1, u_input.a), vec3<u32>(arg_1, 0u, arg_1))), reverseBits(vec3<u32>(4294967295u, 25315u, 4294967295u)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, arg_1))) & (~vec3<u32>(u_input.a, u_input.a, 61504u) ^ min(~vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(arg_1, 0u, u_input.a))), firstLeadingBit(firstLeadingBit(vec3<u32>(4294967295u, arg_1, ~u_input.a))));
    let var_3 = func_5(u_input.a, Struct_1(func_4(~(~vec4<u32>(var_2, arg_1, var_2, u_input.a)), func_2())), 17852u);
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-1i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1562f)), 1f, 1f)));
    var var_2 = Struct_3(vec4<u32>(~u_input.a, func_1(var_1.x, 118306u), u_input.a, ~1u) ^ vec4<u32>(36274u, 0u, _wgslsmith_sub_u32(u_input.a, max(1u, u_input.a)), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, u_input.a), u_input.a)), vec2<i32>(~var_0, func_5(firstTrailingBit(4294967295u), Struct_1(!vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(u_input.a, 25u)], false)), u_input.a).b.x));
    var var_3 = Struct_3(var_2.a, vec2<i32>(var_0, _wgslsmith_div_i32(_wgslsmith_add_i32(-9239i, firstLeadingBit(-21854i)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.a.x | u_input.a, 17143u), 7u)])));
    let var_4 = 568f;
    global1 = array<i32, 7>();
    global0 = array<Struct_4, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(51988u << (~(var_3.a.x << (0u % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-908f, var_1.x, var_1.x, var_4))) - vec4<f32>(1f, var_4, var_1.x, _wgslsmith_div_f32(1000f, var_4))))));
}

