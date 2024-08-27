struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-1500f, -181f, -1000f);

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<u32>(63840u, 27310u, 0u), Struct_1(215f, 0u), vec3<f32>(-628f, -1463f, -971f), 1197f), Struct_2(vec3<u32>(36669u, 1u, 4294967295u), Struct_1(840f, 0u), vec3<f32>(-851f, -559f, 219f), 2133f), Struct_2(vec3<u32>(3601u, 70606u, 1u), Struct_1(277f, 48601u), vec3<f32>(-863f, 1265f, -2756f), -1562f), Struct_2(vec3<u32>(27198u, 16562u, 138954u), Struct_1(124f, 1u), vec3<f32>(1145f, 1000f, -1000f), 325f), Struct_2(vec3<u32>(18020u, 5201u, 66878u), Struct_1(1000f, 25049u), vec3<f32>(698f, -1055f, -1000f), -639f), Struct_2(vec3<u32>(1u, 36080u, 6482u), Struct_1(1484f, 19349u), vec3<f32>(-693f, 978f, 1910f), -1223f), Struct_2(vec3<u32>(15776u, 37721u, 1u), Struct_1(800f, 56612u), vec3<f32>(-1273f, -1453f, -1000f), -1260f), Struct_2(vec3<u32>(4294967295u, 24967u, 18570u), Struct_1(-1760f, 1322u), vec3<f32>(1205f, -1114f, -1080f), 1413f), Struct_2(vec3<u32>(75089u, 9483u, 0u), Struct_1(1601f, 4294967295u), vec3<f32>(-488f, -195f, 714f), -682f), Struct_2(vec3<u32>(1u, 1u, 1u), Struct_1(-1774f, 0u), vec3<f32>(-1425f, 264f, 1171f), 159f), Struct_2(vec3<u32>(1u, 18600u, 75503u), Struct_1(-1888f, 93215u), vec3<f32>(1051f, 1982f, -1053f), -829f), Struct_2(vec3<u32>(31462u, 55274u, 4294967295u), Struct_1(-179f, 0u), vec3<f32>(594f, 735f, 2162f), 859f), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(1458f, 19411u), vec3<f32>(1014f, 233f, 1154f), 1234f), Struct_2(vec3<u32>(1u, 48834u, 15580u), Struct_1(381f, 1u), vec3<f32>(-1007f, 1000f, 1751f), -2259f), Struct_2(vec3<u32>(810u, 102889u, 1u), Struct_1(1010f, 23995u), vec3<f32>(1000f, 1075f, -162f), -1724f), Struct_2(vec3<u32>(1u, 1u, 1u), Struct_1(-503f, 88295u), vec3<f32>(-461f, -495f, -1081f), 2832f), Struct_2(vec3<u32>(4294967295u, 0u, 72141u), Struct_1(1000f, 41604u), vec3<f32>(-297f, 461f, -261f), 522f), Struct_2(vec3<u32>(76905u, 20638u, 7564u), Struct_1(-468f, 0u), vec3<f32>(1395f, -461f, 595f), 1163f), Struct_2(vec3<u32>(0u, 41284u, 49382u), Struct_1(1000f, 20455u), vec3<f32>(-425f, 536f, -1522f), 1533f), Struct_2(vec3<u32>(12126u, 20190u, 1u), Struct_1(900f, 71793u), vec3<f32>(324f, -754f, 695f), -1781f), Struct_2(vec3<u32>(17113u, 1u, 4294967295u), Struct_1(249f, 54755u), vec3<f32>(1248f, -2009f, 437f), -328f), Struct_2(vec3<u32>(64126u, 0u, 2403u), Struct_1(987f, 55591u), vec3<f32>(1058f, 1812f, -1414f), -1390f), Struct_2(vec3<u32>(1u, 1u, 4294967295u), Struct_1(-1133f, 0u), vec3<f32>(-463f, 1592f, -1813f), 1724f), Struct_2(vec3<u32>(39235u, 59963u, 0u), Struct_1(1482f, 54082u), vec3<f32>(-1845f, -296f, 625f), -496f), Struct_2(vec3<u32>(4294967295u, 4294967295u, 22682u), Struct_1(-1144f, 1u), vec3<f32>(974f, -499f, -947f), -1000f), Struct_2(vec3<u32>(1u, 15390u, 10666u), Struct_1(1634f, 0u), vec3<f32>(1690f, -130f, -1046f), 533f), Struct_2(vec3<u32>(0u, 4294967295u, 1u), Struct_1(2161f, 58697u), vec3<f32>(587f, -325f, 2337f), -1000f), Struct_2(vec3<u32>(4294967295u, 4294967295u, 67298u), Struct_1(502f, 4294967295u), vec3<f32>(1141f, 560f, 1138f), -465f), Struct_2(vec3<u32>(28424u, 11385u, 4294967295u), Struct_1(381f, 1u), vec3<f32>(192f, 2468f, 225f), -1462f), Struct_2(vec3<u32>(1u, 0u, 4294967295u), Struct_1(-1000f, 63965u), vec3<f32>(-298f, -264f, 333f), -1082f), Struct_2(vec3<u32>(0u, 4287u, 4294967295u), Struct_1(169f, 0u), vec3<f32>(1076f, 859f, -855f), -1928f));

var<private> global2: array<i32, 27> = array<i32, 27>(-8795i, 1i, -10158i, 2147483647i, 2147483647i, -1i, 2147483647i, -54559i, 12021i, 30909i, i32(-2147483648), -13649i, i32(-2147483648), -46737i, -13767i, 2147483647i, i32(-2147483648), 6565i, i32(-2147483648), -1i, 2330i, -1i, -20252i, i32(-2147483648), -10386i, i32(-2147483648), 22895i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = vec2<f32>(228f, 1081f);
    let var_1 = Struct_2(arg_2.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-152f, 712f)) * -391f)), max(_wgslsmith_mod_u32(~u_input.c, _wgslsmith_div_u32(arg_2.a.x, 29655u)), u_input.c)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_2.c))), _wgslsmith_div_f32(var_0.x, global0[_wgslsmith_index_u32(1u, 3u)]));
    let var_2 = vec4<i32>(max(-64293i, _wgslsmith_div_i32(1i, firstLeadingBit(global2[_wgslsmith_index_u32(arg_2.b.b, 27u)]))) << (_wgslsmith_add_u32(var_1.b.b, ~_wgslsmith_mod_u32(var_1.b.b, u_input.c)) % 32u), ~_wgslsmith_div_i32(-reverseBits(arg_0.x), ~global2[_wgslsmith_index_u32(var_1.a.x, 27u)] >> (_wgslsmith_add_u32(var_1.a.x, 14688u) % 32u)), max(_wgslsmith_dot_vec3_i32(~arg_0, arg_1.zxx | vec3<i32>(arg_1.x, arg_1.x, 1i)), firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, global2[_wgslsmith_index_u32(0u, 27u)]), arg_1.wxy), _wgslsmith_div_i32(arg_0.x, 0i)))), 61223i);
    global1 = array<Struct_2, 31>();
    var var_3 = var_1.b;
    return global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, arg_2.b.b, 897u, 0u)), ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.b, 7390u, 36343u, 1u), vec4<u32>(96249u, 71491u, 64079u, arg_2.a.x)), ~vec4<u32>(4294967295u, 4294967295u, 35292u, u_input.c))), 3u)];
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_f_op_f32(func_3(-vec3<i32>(u_input.b.x, 64782i, -3965i), min(vec4<i32>(54684i, u_input.a.x, global2[_wgslsmith_index_u32(arg_1.b, 27u)], -39748i), vec4<i32>(-17501i, u_input.a.x, u_input.a.x, -1i)), Struct_2(vec3<u32>(u_input.c, 4294967295u, arg_1.b), Struct_1(arg_0.x, 0u), arg_0, 115f))) > arg_1.a, true, false), select(vec3<bool>(true, true, all(vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), true)));
    global2 = array<i32, 27>();
    var var_1 = !vec4<bool>(var_0.x, !(-114f >= _wgslsmith_f_op_f32(select(arg_0.x, 921f, true))), true, var_0.x);
    global0 = array<f32, 3>();
    let var_2 = _wgslsmith_sub_vec2_i32(u_input.b.xz, vec2<i32>(-1i) * -select(countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(u_input.c, 27u)], u_input.b.x)), ~vec2<i32>(u_input.a.x, u_input.a.x), true));
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = ~(~select(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(85241u, 4294967295u, u_input.c), vec3<u32>(0u, 4294967295u, u_input.c), vec3<u32>(22095u, 0u, 1u)), true) ^ ~vec3<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), u_input.c, 1u));
    let var_1 = global2[_wgslsmith_index_u32(~(~u_input.c), 27u)];
    let var_2 = !(arg_0.b != u_input.c) && all(select(vec2<bool>(true, all(vec3<bool>(true, false, false))), vec2<bool>(true, global0[_wgslsmith_index_u32(12999u, 3u)] != -730f), vec2<bool>(true, false)));
    let var_3 = _wgslsmith_mod_i32(-21379i, 1i);
    var var_4 = var_0.zx;
    return max(vec2<u32>(reverseBits(u_input.c), ~(~15595u)), var_0.yx);
}

fn func_1() -> vec2<bool> {
    var var_0 = ~_wgslsmith_mult_vec2_u32(~func_4(func_2(vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.c, 3u)], 704f), Struct_1(-858f, u_input.c))), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(30257u, 1u), min(vec2<u32>(1731u, 5458u), vec2<u32>(31922u, 61828u))), firstTrailingBit(vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(1u, 119509u) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2345f, -680f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(58507u, 3u)], 1611f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0[_wgslsmith_index_u32(0u, 3u)]))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 3u)] * 189f), -1435f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1022f, 1109f) - vec2<f32>(-758f, 463f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(588f, 1274f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-693f, global0[_wgslsmith_index_u32(var_0.x, 3u)]) + vec2<f32>(912f, 1000f))))));
    let var_2 = -vec4<i32>(global2[_wgslsmith_index_u32(u_input.c >> (u_input.c % 32u), 27u)], u_input.b.x, ~global2[_wgslsmith_index_u32(~(~var_0.x), 27u)], u_input.b.x);
    global0 = array<f32, 3>();
    return vec2<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) <= 1273f), !(!all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    let var_0 = vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), func_1()))), any(vec3<bool>(false, true, true)));
    let var_1 = any(!(!select(select(vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x), var_0), !var_0, true)));
    let var_2 = Struct_2(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(9489u, 27000u, 63097u)) >> (~vec3<u32>(u_input.c, 85727u, 11631u) % vec3<u32>(32u)), ~select(vec3<u32>(70018u, 75759u, 4294967295u), vec3<u32>(u_input.c, u_input.c, 43280u), false)), func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 3u)], -1086f, global0[_wgslsmith_index_u32(u_input.c, 3u)]) - vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], -971f, -273f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(4679u, 3u)], global0[_wgslsmith_index_u32(18125u, 3u)], -188f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)])))), vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 3u)] * 579f), 258f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 3u)])))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(776f, global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)]))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-724f, global0[_wgslsmith_index_u32(u_input.c, 3u)], 932f))), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-477f, global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]) - vec3<f32>(169f, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)])), Struct_1(global0[_wgslsmith_index_u32(34430u, 3u)], 8678u)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(-982f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 3u)] - 316f)) * func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 3u)], -1080f, -710f)), Struct_1(-663f, 1u)).a)), 380f);
    global1 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(149f - global0[_wgslsmith_index_u32(61197u & func_2(vec3<f32>(var_2.b.a, 528f, 763f), var_2.b).b, 3u)]), -968f, var_2.c.x), _wgslsmith_f_op_vec2_f32(var_2.c.xz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.d, 1704f), vec2<f32>(1296f, global0[_wgslsmith_index_u32(15316u, 3u)]))))))), 15239u, _wgslsmith_clamp_vec2_i32(select(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 1i), u_input.a)), min(u_input.a, u_input.b.zx), select(var_0, var_0, var_0)), _wgslsmith_div_vec2_i32(firstLeadingBit(reverseBits(vec2<i32>(u_input.b.x, -43805i))), vec2<i32>(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(20816u, 27u)], -18767i), -global2[_wgslsmith_index_u32(u_input.c, 27u)])), vec2<i32>(-abs(u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.c, 27u)], 6998i), vec2<i32>(global2[_wgslsmith_index_u32(u_input.c, 27u)], global2[_wgslsmith_index_u32(25042u, 27u)])), u_input.a.x | -1i))));
}

