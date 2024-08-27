struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(1u, 76192u, 1u, 50495u);

var<private> global1: bool;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(-410f, 85961u, vec2<f32>(-1424f, -429f), vec4<i32>(2147483647i, -27340i, 0i, -1i), vec4<f32>(-1768f, -1095f, -324f, -636f)), Struct_2(-992f, 0u, vec2<f32>(-351f, 1688f), vec4<i32>(18903i, -22843i, -1i, 2147483647i), vec4<f32>(-435f, -1000f, 1633f, -1487f)), Struct_2(2876f, 4294967295u, vec2<f32>(-1000f, -489f), vec4<i32>(2147483647i, i32(-2147483648), -34406i, -1i), vec4<f32>(-750f, -507f, 1741f, 1024f)), Struct_2(-1346f, 70034u, vec2<f32>(687f, 360f), vec4<i32>(13847i, 0i, 38257i, 3568i), vec4<f32>(-1754f, -878f, -157f, -282f)), Struct_2(-161f, 73324u, vec2<f32>(332f, -541f), vec4<i32>(1i, -1i, 8537i, -28327i), vec4<f32>(178f, 357f, -460f, 1087f)), Struct_2(1328f, 66154u, vec2<f32>(-1000f, -1473f), vec4<i32>(17987i, i32(-2147483648), 1i, 0i), vec4<f32>(1972f, 554f, -1714f, -1091f)), Struct_2(-1009f, 36772u, vec2<f32>(-1626f, 110f), vec4<i32>(0i, -19940i, 3794i, -26139i), vec4<f32>(1000f, 1157f, 1000f, 341f)), Struct_2(-773f, 628u, vec2<f32>(-566f, -364f), vec4<i32>(-1i, -58312i, 49109i, 2147483647i), vec4<f32>(-526f, -516f, 249f, -583f)), Struct_2(-178f, 0u, vec2<f32>(-938f, 1192f), vec4<i32>(-26701i, -3771i, -31553i, -1i), vec4<f32>(-2225f, 296f, -1334f, 360f)), Struct_2(-1000f, 1u, vec2<f32>(1000f, -346f), vec4<i32>(-7649i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<f32>(-1520f, 1000f, -378f, 1000f)), Struct_2(-842f, 583u, vec2<f32>(605f, 358f), vec4<i32>(i32(-2147483648), -1i, 3919i, -1i), vec4<f32>(-382f, -795f, 1000f, -134f)), Struct_2(1701f, 4294967295u, vec2<f32>(1476f, -286f), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<f32>(-203f, -1433f, 358f, 225f)), Struct_2(-1000f, 4294967295u, vec2<f32>(335f, 405f), vec4<i32>(1i, -53581i, -22053i, 1i), vec4<f32>(-2296f, -499f, 441f, 903f)), Struct_2(447f, 1u, vec2<f32>(1340f, 1135f), vec4<i32>(0i, 0i, -26847i, i32(-2147483648)), vec4<f32>(-122f, 491f, 656f, -199f)), Struct_2(1013f, 0u, vec2<f32>(892f, -312f), vec4<i32>(2147483647i, 25481i, -12702i, -1i), vec4<f32>(-243f, 464f, 898f, -1621f)), Struct_2(-976f, 4294967295u, vec2<f32>(250f, 420f), vec4<i32>(0i, 1i, 34874i, 0i), vec4<f32>(1184f, 1078f, 953f, -1371f)), Struct_2(-1311f, 20359u, vec2<f32>(-851f, -790f), vec4<i32>(6300i, 1i, 0i, i32(-2147483648)), vec4<f32>(295f, -738f, 2140f, 212f)), Struct_2(418f, 1u, vec2<f32>(-783f, -1849f), vec4<i32>(-14914i, 20811i, -1i, 2147483647i), vec4<f32>(1005f, 1171f, 650f, 366f)), Struct_2(145f, 15154u, vec2<f32>(1941f, 812f), vec4<i32>(-5922i, 1i, -11864i, i32(-2147483648)), vec4<f32>(264f, -1000f, -1000f, 475f)), Struct_2(-824f, 0u, vec2<f32>(1100f, -573f), vec4<i32>(0i, -16415i, 20925i, i32(-2147483648)), vec4<f32>(-1516f, -898f, 371f, -103f)), Struct_2(-422f, 64685u, vec2<f32>(-612f, -1173f), vec4<i32>(-39644i, 56730i, 13524i, -27591i), vec4<f32>(-288f, -1000f, 218f, 415f)), Struct_2(1460f, 0u, vec2<f32>(181f, -725f), vec4<i32>(2147483647i, -1i, 1i, 73386i), vec4<f32>(1000f, -173f, 1958f, 1000f)), Struct_2(1272f, 7376u, vec2<f32>(839f, 938f), vec4<i32>(16233i, 0i, -35622i, i32(-2147483648)), vec4<f32>(1000f, -208f, 1249f, -297f)), Struct_2(1036f, 39863u, vec2<f32>(868f, 871f), vec4<i32>(9532i, 2147483647i, 1i, -11575i), vec4<f32>(232f, -1225f, 1000f, -861f)), Struct_2(-658f, 20079u, vec2<f32>(-156f, -657f), vec4<i32>(0i, -1239i, 2147483647i, -1i), vec4<f32>(-1049f, -574f, 855f, 312f)), Struct_2(1076f, 4294967295u, vec2<f32>(1325f, 265f), vec4<i32>(2147483647i, -19023i, -1i, 0i), vec4<f32>(1164f, 675f, 730f, -2064f)), Struct_2(-693f, 46841u, vec2<f32>(-685f, -761f), vec4<i32>(0i, 9337i, 0i, -1i), vec4<f32>(707f, 1192f, -888f, -1086f)), Struct_2(1187f, 1u, vec2<f32>(1000f, -297f), vec4<i32>(27813i, i32(-2147483648), 2147483647i, -34410i), vec4<f32>(-1389f, 917f, 1935f, -1835f)), Struct_2(1080f, 37062u, vec2<f32>(-1323f, 2613f), vec4<i32>(74405i, -5498i, 1i, -1i), vec4<f32>(1000f, 2143f, 1237f, -726f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec4<bool> {
    let var_0 = abs(countOneBits(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 33559i, -24027i), vec3<i32>(10568i, u_input.b, u_input.c)) | ~vec3<i32>(-1i, u_input.b, 2147483647i))));
    let var_1 = Struct_3(Struct_1(625f, select(~countOneBits(55693u), arg_0.x, all(vec3<bool>(true, true, false))), vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(global0[_wgslsmith_index_u32(arg_1.x, 4u)], arg_0.x) | arg_0.yy), arg_0.x), arg_3.x));
    global0 = array<u32, 4>();
    var var_2 = true;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_mod_u32(~5873u, var_1.a.b), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.zz, countOneBits(vec2<u32>(4294967295u, 1u) >> (arg_1.wx % vec2<u32>(32u)))), arg_0.zz, vec2<u32>(arg_0.x, 0u)), arg_2.x);
    return select(select(vec4<bool>(all(vec4<bool>(true, false, false, true)), _wgslsmith_sub_u32(u_input.d.x, 1u) > u_input.a.x, false, _wgslsmith_div_f32(var_3.a, var_1.a.a) <= 1f), select(vec4<bool>(false, true, select(false, false, true), false), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, false, true)), false), vec4<bool>(false, ~u_input.a.x != countOneBits(24481u), (u_input.b >= -20945i) & true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)))), !select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), false))), false);
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f)) - -561f)));
    let var_1 = Struct_5(vec3<f32>(-926f, -287f, _wgslsmith_div_f32(1000f, 1359f)), vec4<bool>(true, all(vec3<bool>(arg_0.c, any(vec3<bool>(arg_0.c, true, arg_0.c)), arg_0.c)), true & any(!vec3<bool>(arg_0.c, false, true)), all(func_3(u_input.d, arg_0.b, vec2<f32>(1764f, -1000f), vec2<f32>(-2313f, -695f))) && all(func_3(u_input.d, vec4<u32>(100007u, 26145u, 35720u, 0u), vec2<f32>(-965f, 578f), vec2<f32>(302f, -1085f)).yz)), vec3<i32>(1i, u_input.b, arg_0.d.x & (u_input.c << (~u_input.d.x % 32u))), Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-942f - -429f) + _wgslsmith_f_op_f32(f32(-1f) * -635f)), 1u, vec2<u32>(arg_0.a, ~33570u), _wgslsmith_f_op_f32(sign(-548f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1024f - 844f))), _wgslsmith_div_u32(arg_0.a, _wgslsmith_mod_u32(arg_0.a, ~global0[_wgslsmith_index_u32(1u, 4u)])), _wgslsmith_mult_vec2_u32(~abs(u_input.a), ~_wgslsmith_mult_vec2_u32(arg_0.b.zw, u_input.a)), 2249f));
    let var_2 = ~(~max(vec3<u32>(global0[_wgslsmith_index_u32(0u, 4u)], u_input.a.x, 1066u) & vec3<u32>(4294967295u, 16790u, global0[_wgslsmith_index_u32(0u, 4u)]), vec3<u32>(0u, var_1.d.a.b, 35243u) << (u_input.d % vec3<u32>(32u))) | _wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(1u, ~global0[_wgslsmith_index_u32(var_1.e.b, 4u)], ~var_1.e.c.x)));
    var_0 = _wgslsmith_f_op_f32(-var_1.a.x);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.e.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(792f)), -400f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1349f)))));
    return var_1.d.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32, arg_3: i32) -> vec2<i32> {
    global1 = !all(vec2<bool>(true, true));
    var var_0 = ~arg_1.c;
    global2 = array<Struct_2, 29>();
    global1 = !(!(arg_1.a.x == -1000f)) && (true & (max(arg_1.e.c.x, firstTrailingBit(global0[_wgslsmith_index_u32(0u, 4u)])) < _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, arg_1.d.a.c.x, 1u) >> (vec3<u32>(arg_0.b, 72367u, 1u) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.d.x, 4u)], arg_0.b))));
    var var_1 = arg_1.d.a.d;
    return _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-31613i, 2147483647i), var_0.xz)) & _wgslsmith_mod_vec2_i32(vec2<i32>(arg_3, var_0.x), _wgslsmith_div_vec2_i32(arg_1.c.zy, vec2<i32>(0i, -1i))), vec2<i32>(-19031i, select(-5968i, 0i, false)) << (vec2<u32>(u_input.a.x, ~4294967295u) % vec2<u32>(32u))), firstLeadingBit(vec2<i32>(u_input.c, -_wgslsmith_dot_vec3_i32(arg_1.c, vec3<i32>(-2667i, arg_1.c.x, -30509i)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = _wgslsmith_dot_vec2_i32(func_4(func_2(Struct_4(~arg_0.a.c.x, vec4<u32>(arg_0.a.b, 4294967295u, arg_2.a, 34379u), true, arg_2.d, -vec4<i32>(32477i, 28394i, u_input.c, 33131i))), Struct_5(vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.a.a, 1137f, false)), _wgslsmith_f_op_f32(step(arg_0.a.a, -1574f)), _wgslsmith_f_op_f32(-973f - 1000f)), vec4<bool>(any(vec4<bool>(arg_2.c, false, arg_2.c, arg_2.c)), false, arg_2.c | true, true), select(vec3<i32>(13384i, -18360i, -47568i), -arg_2.d.zwy, vec3<bool>(true, true, true)), arg_0, func_2(Struct_4(global0[_wgslsmith_index_u32(arg_1.x, 4u)], vec4<u32>(arg_0.a.b, arg_1.x, 4294967295u, u_input.a.x), arg_2.c, arg_2.d, vec4<i32>(arg_2.e.x, arg_2.e.x, 4313i, -1i)))), _wgslsmith_f_op_f32(-arg_0.a.d), u_input.c), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.d.x, 13589i, u_input.b), vec3<i32>(-2147483647i, -1i, 2147483647i)) & -58144i, -firstLeadingBit(-4427i)));
    var var_1 = ~1u;
    global0 = array<u32, 4>();
    global1 = arg_2.c;
    let var_2 = _wgslsmith_f_op_f32(select(-738f, _wgslsmith_f_op_f32(-arg_0.a.d), all(vec2<bool>(arg_2.c, func_3(arg_2.b.yyx, vec4<u32>(global0[_wgslsmith_index_u32(arg_1.x, 4u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], arg_0.a.c.x) & vec4<u32>(85054u, 26351u, 4294967295u, 6280u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.d, arg_0.a.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a, -136f) - vec2<f32>(arg_0.a.d, arg_0.a.a))).x))));
    return firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(select(arg_2.d.xyy, ~arg_2.d.xyw, true), abs(vec3<i32>(616i, u_input.c, u_input.c))), abs(-_wgslsmith_sub_vec3_i32(arg_2.d.xxy, vec3<i32>(2147483647i, -1i, u_input.c)))));
}

fn func_5(arg_0: i32) -> Struct_3 {
    global1 = ~_wgslsmith_mod_i32(~min(-2147483647i, 2147483647i), firstLeadingBit(arg_0)) <= -317i;
    global2 = array<Struct_2, 29>();
    var var_0 = reverseBits(abs(~countOneBits(~vec3<i32>(0i, arg_0, u_input.c))));
    var_0 = -vec3<i32>(-20842i, abs(1i), firstLeadingBit(u_input.c ^ (i32(-1i) * -1i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1752f) - _wgslsmith_f_op_f32(1346f * -453f));
    return Struct_3(func_2(Struct_4(_wgslsmith_div_u32(1u, 4294967295u), ~abs(vec4<u32>(17039u, u_input.d.x, u_input.d.x, 4294967295u)), false, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 0i, 2147483647i, var_0.x), vec4<i32>(2147483647i, arg_0, u_input.c, -3461i)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(5524u, u_input.a.x, 73894u, 23974u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6627u, 4u)], 4u)], global0[_wgslsmith_index_u32(10460u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec4<u32>(global0[_wgslsmith_index_u32(2472u, 4u)], global0[_wgslsmith_index_u32(u_input.d.x, 4u)], 4294967295u, 0u)) % vec4<u32>(32u)), ~(vec4<i32>(var_0.x, -13316i, -56512i, -1i) | vec4<i32>(arg_0, u_input.c, u_input.b, u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!vec4<bool>(true, all(vec4<bool>(true, false, false, false)), true, true)));
    global2 = array<Struct_2, 29>();
    let var_1 = func_5(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 0i, 2147483647i), func_1(Struct_3(Struct_1(-619f, u_input.a.x, u_input.a, -2272f)), u_input.d, Struct_4(global0[_wgslsmith_index_u32(40382u, 4u)], vec4<u32>(u_input.a.x, u_input.d.x, 9961u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)]), false, vec4<i32>(u_input.b, 16052i, -2147483647i, u_input.b), vec4<i32>(u_input.c, -43448i, 1i, -31937i))), select(vec3<i32>(1i, 10718i, u_input.c), vec3<i32>(-1i, 1i, -1i), vec3<bool>(false, var_0, var_0))), func_1(Struct_3(Struct_1(374f, global0[_wgslsmith_index_u32(4294967295u, 4u)], vec2<u32>(0u, u_input.a.x), 1161f)), vec3<u32>(69134u, 9943u, global0[_wgslsmith_index_u32(0u, 4u)]), Struct_4(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23973u, 4u)], 4u)], vec4<u32>(u_input.d.x, 4397u, 1u, u_input.a.x), true, vec4<i32>(-2147483647i, u_input.b, 1i, u_input.c), vec4<i32>(1i, -1i, 1i, 29593i))) ^ select(vec3<i32>(0i, u_input.b, 2147483647i), vec3<i32>(8155i, u_input.c, u_input.b), false)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(22329i, 2147483647i, u_input.c) << (u_input.d % vec3<u32>(32u)), vec3<i32>(u_input.c, -65365i, u_input.c), select(vec3<i32>(2147483647i, u_input.c, -58784i), vec3<i32>(0i, u_input.b, -2147483647i), var_0)), vec3<i32>(~27989i, u_input.b, u_input.c))));
    var var_2 = select(!vec4<bool>(!(var_0 & var_0), all(!vec4<bool>(var_0, false, var_0, false)), u_input.b < u_input.b, var_0), vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, false, any(vec3<bool>(var_0, false, var_0)) || false, var_0));
    let var_3 = Struct_3(func_2(Struct_4(~(var_1.a.b ^ 1u), ~(~vec4<u32>(u_input.d.x, 20375u, 4294967295u, 0u)), var_0, ~(~vec4<i32>(u_input.c, 2147483647i, u_input.c, 38691i)), max(min(vec4<i32>(u_input.b, u_input.c, 26115i, -47840i), vec4<i32>(-2147483647i, u_input.b, u_input.b, -1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 56886i, u_input.b, -2147483647i), vec4<i32>(-8426i, -9012i, -1i, 0i))))));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_1.a.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(222f - -879f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.a.d, 371f))))));
    let x = u_input.a;
    s_output = StorageBuffer(58474u, u_input.a.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_4))))))), ~firstTrailingBit(~vec3<u32>(var_3.a.b, 78343u, u_input.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a.a))))));
}

