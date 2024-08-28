struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(852f, 76725i, Struct_1(vec4<f32>(-1466f, 1502f, -172f, -697f), -560f), Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<f32>(1839f, -1076f, -250f, 1303f), -313f), Struct_1(vec4<f32>(107f, -1331f, -362f, 495f), -623f), vec3<u32>(47959u, 39290u, 18826u), Struct_1(vec4<f32>(820f, 572f, 1000f, 2202f), 1102f))), Struct_3(579f, 2147483647i, Struct_1(vec4<f32>(-681f, -1548f, -2110f, -1389f), 480f), Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<f32>(-119f, 586f, 520f, 689f), 1842f), Struct_1(vec4<f32>(1222f, -423f, 1000f, 3071f), -929f), vec3<u32>(1u, 1u, 26043u), Struct_1(vec4<f32>(562f, 565f, -620f, 143f), -952f))), Struct_3(-755f, 12520i, Struct_1(vec4<f32>(842f, 1933f, 1000f, 811f), -713f), Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<f32>(-1682f, 1870f, -864f, 731f), -893f), Struct_1(vec4<f32>(-495f, -100f, -1424f, 437f), -177f), vec3<u32>(38626u, 4294967295u, 0u), Struct_1(vec4<f32>(-859f, 528f, 1000f, 485f), 311f))), Struct_3(-691f, -26691i, Struct_1(vec4<f32>(-1277f, -1063f, 829f, 1000f), -730f), Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<f32>(-2292f, 866f, 1029f, -1542f), -1213f), Struct_1(vec4<f32>(300f, -1700f, -1000f, 1548f), 1059f), vec3<u32>(79127u, 0u, 4294967295u), Struct_1(vec4<f32>(1192f, -1493f, 333f, -513f), -1000f))), Struct_3(-1000f, -45214i, Struct_1(vec4<f32>(266f, 254f, -505f, -408f), -2199f), Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<f32>(1779f, 908f, -2318f, -1831f), -1154f), Struct_1(vec4<f32>(-289f, -1391f, 260f, 200f), -1300f), vec3<u32>(29050u, 48786u, 1u), Struct_1(vec4<f32>(486f, -947f, 1000f, 406f), 1000f))), Struct_3(568f, -1i, Struct_1(vec4<f32>(-540f, 1000f, -1151f, -115f), -1000f), Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<f32>(-143f, 730f, 507f, 1022f), -827f), Struct_1(vec4<f32>(-1177f, -207f, 1000f, -2027f), 700f), vec3<u32>(4294967295u, 4294967295u, 7916u), Struct_1(vec4<f32>(-389f, -223f, -3616f, -1181f), 2163f))), Struct_3(897f, 12481i, Struct_1(vec4<f32>(1027f, -189f, -1257f, -300f), -1070f), Struct_2(vec3<bool>(true, false, true), Struct_1(vec4<f32>(-374f, -578f, 880f, 257f), -1000f), Struct_1(vec4<f32>(1700f, -1372f, 621f, 2027f), -1000f), vec3<u32>(4294967295u, 4294967295u, 9500u), Struct_1(vec4<f32>(-1762f, 807f, 179f, 800f), -1340f))), Struct_3(172f, 6816i, Struct_1(vec4<f32>(1974f, 1000f, 215f, -1442f), 426f), Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<f32>(1743f, -1000f, -2213f, -525f), 1000f), Struct_1(vec4<f32>(-1000f, -2634f, 1000f, 243f), -922f), vec3<u32>(1u, 34008u, 4294967295u), Struct_1(vec4<f32>(978f, 167f, -780f, -603f), -410f))), Struct_3(-2170f, 2147483647i, Struct_1(vec4<f32>(-883f, 1130f, -2007f, -155f), -1053f), Struct_2(vec3<bool>(true, false, true), Struct_1(vec4<f32>(-112f, -1000f, 341f, 479f), -1483f), Struct_1(vec4<f32>(-391f, -213f, -104f, 115f), 1134f), vec3<u32>(5194u, 0u, 1u), Struct_1(vec4<f32>(-263f, -1234f, -967f, -1162f), 1135f))), Struct_3(-1488f, -19144i, Struct_1(vec4<f32>(-987f, -697f, -661f, 120f), 729f), Struct_2(vec3<bool>(false, true, false), Struct_1(vec4<f32>(-2348f, 405f, 1000f, -1000f), -157f), Struct_1(vec4<f32>(762f, -204f, -600f, 1179f), 244f), vec3<u32>(88447u, 0u, 1u), Struct_1(vec4<f32>(2866f, 1127f, 663f, 1000f), 980f))), Struct_3(821f, -1i, Struct_1(vec4<f32>(-1016f, 1056f, -1303f, -1129f), -256f), Struct_2(vec3<bool>(true, false, false), Struct_1(vec4<f32>(231f, 249f, -166f, -389f), 699f), Struct_1(vec4<f32>(-1106f, 682f, 108f, -1347f), -163f), vec3<u32>(97223u, 41690u, 35607u), Struct_1(vec4<f32>(-1000f, -1523f, -431f, 740f), 1702f))), Struct_3(-1437f, -11114i, Struct_1(vec4<f32>(-1514f, 280f, -1564f, 1122f), 346f), Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<f32>(878f, 281f, 871f, -1452f), -213f), Struct_1(vec4<f32>(-571f, 1343f, -840f, -998f), 514f), vec3<u32>(5404u, 1u, 1u), Struct_1(vec4<f32>(-764f, 1289f, -1007f, -1222f), -1110f))), Struct_3(1015f, -39008i, Struct_1(vec4<f32>(-592f, 2308f, -1283f, -288f), 1226f), Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<f32>(-1598f, 977f, -1899f, 413f), -834f), Struct_1(vec4<f32>(1328f, -1379f, 1692f, 851f), 360f), vec3<u32>(4294967295u, 1u, 0u), Struct_1(vec4<f32>(-626f, 668f, 448f, -810f), -414f))), Struct_3(-873f, 2147483647i, Struct_1(vec4<f32>(-259f, -1099f, -2006f, 1567f), -776f), Struct_2(vec3<bool>(true, false, false), Struct_1(vec4<f32>(-717f, 1138f, 1804f, 1000f), -342f), Struct_1(vec4<f32>(-782f, 114f, 153f, 178f), -1193f), vec3<u32>(27426u, 32603u, 16200u), Struct_1(vec4<f32>(-595f, 1157f, -1323f, 439f), 384f))), Struct_3(-163f, -13770i, Struct_1(vec4<f32>(-1878f, 213f, -1179f, 1000f), 1447f), Struct_2(vec3<bool>(true, true, false), Struct_1(vec4<f32>(537f, 694f, -1000f, -1000f), -276f), Struct_1(vec4<f32>(355f, 849f, 1000f, -1319f), -1345f), vec3<u32>(14019u, 41407u, 1u), Struct_1(vec4<f32>(1449f, -1519f, 988f, -996f), 1325f))), Struct_3(625f, 1i, Struct_1(vec4<f32>(1876f, -1849f, -135f, 371f), 178f), Struct_2(vec3<bool>(true, true, false), Struct_1(vec4<f32>(100f, -1190f, -834f, -1795f), -522f), Struct_1(vec4<f32>(-781f, 385f, -1499f, 488f), -208f), vec3<u32>(0u, 43573u, 37584u), Struct_1(vec4<f32>(835f, -1173f, 733f, 997f), -125f))));

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-715f, -1991f, -2042f, 253f), 945f);

var<private> global3: Struct_3;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = 1u;
    let var_1 = _wgslsmith_add_i32(u_input.a, abs(u_input.a)) | (u_input.a & 67381i);
    let var_2 = 4294967295u;
    global0 = global3.d.a.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(max(global2.a, global3.d.e.a)), -547f);
}

fn func_1() -> vec4<f32> {
    global0 = false;
    global2 = func_2(vec3<u32>(u_input.d.x ^ ~(~4294967295u), 58685u, u_input.b));
    return global2.a;
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    global3 = Struct_3(_wgslsmith_f_op_f32(650f - _wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x * -1000f))))), u_input.a, func_2(global3.d.d), Struct_2(select(vec3<bool>(-7495i >= u_input.a, !global3.d.a.x, global2.b <= -1194f), global3.d.a, global3.d.a.x & any(vec4<bool>(false, global3.d.a.x, false, global3.d.a.x))), global3.d.e, global3.c, reverseBits(~reverseBits(global3.d.d)), arg_0));
    let var_0 = -vec4<i32>(global3.b, _wgslsmith_clamp_i32(global3.b, global3.b, ~(u_input.a | -1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-32486i, 3135i, u_input.a), global3.d.a), -vec3<i32>(u_input.a, 1i, u_input.a), ~vec3<i32>(u_input.a, global3.b, global3.b)), -(vec3<i32>(28853i, global3.b, -7310i) | vec3<i32>(-14758i, 0i, global3.b))), abs(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, global3.b), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(7111i, 2147483647i), vec2<i32>(0i, global3.b)))));
    let var_1 = -199f;
    global1 = array<Struct_3, 16>();
    global2 = func_2(~(~(global3.d.d ^ vec3<u32>(4294967295u, 40868u, global3.d.d.x))));
    return func_2(vec3<u32>(34785u << ((global3.d.d.x << (u_input.d.x % 32u)) % 32u), u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 12851u, 4294967295u), global3.d.d) | ~global3.d.d.x) | u_input.d.xyy).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(firstLeadingBit(u_input.e.wzw));
    global1 = array<Struct_3, 16>();
    var var_1 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_2 = Struct_4(global3.c, ~vec3<i32>(u_input.a, firstLeadingBit(~global3.b), global3.b), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global3.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -779f))), countOneBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, 1i, 47867i), abs(vec3<i32>(0i, 30223i, -47369i)), vec3<i32>(global3.b, u_input.a, global3.b)) ^ _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -2147483647i), vec3<i32>(-20847i, u_input.a, 7755i)), _wgslsmith_add_vec3_i32(vec3<i32>(global3.b, global3.b, global3.b), vec3<i32>(global3.b, u_input.a, global3.b)))), _wgslsmith_f_op_vec4_f32(-global2.a));
    var_1 = _wgslsmith_f_op_vec4_f32(round(global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429f + var_2.e.x)))));
}

