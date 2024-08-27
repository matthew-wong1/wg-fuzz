struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec2<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(8666u, 3830u, 0u, 1u);

var<private> global1: array<f32, 31> = array<f32, 31>(-171f, -852f, -1000f, -766f, -1137f, -122f, 1496f, -1143f, -1000f, -610f, 813f, 1728f, -1000f, 1275f, -738f, 405f, -1562f, -1125f, 1367f, -1078f, -285f, -423f, -301f, 545f, 646f, 554f, 231f, 360f, 1423f, -523f, 170f);

var<private> global2: array<Struct_1, 3>;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<u32>(54061u, 0u, 38997u, 0u), 0u, -29760i, vec3<f32>(783f, 681f, -537f)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 48916u), 0u, -13597i, vec3<f32>(-677f, 713f, -250f)), Struct_1(vec4<u32>(25346u, 49405u, 27832u, 1u), 1u, 2147483647i, vec3<f32>(-1000f, 220f, -888f)), Struct_1(vec4<u32>(10598u, 1u, 141021u, 4294967295u), 20147u, 1i, vec3<f32>(307f, 917f, -1000f)), Struct_1(vec4<u32>(2394u, 1u, 0u, 0u), 71858u, 1i, vec3<f32>(1000f, 567f, -765f)), Struct_1(vec4<u32>(21354u, 1u, 4294967295u, 5708u), 131663u, 20076i, vec3<f32>(743f, -139f, -1000f)), Struct_1(vec4<u32>(54544u, 4294967295u, 1u, 32143u), 23761u, 14302i, vec3<f32>(-580f, -1398f, -940f)), Struct_1(vec4<u32>(1u, 0u, 0u, 53238u), 1u, 1i, vec3<f32>(1845f, 1660f, -374f)), Struct_1(vec4<u32>(1u, 15565u, 50195u, 72679u), 1u, 31233i, vec3<f32>(145f, -241f, 129f)), Struct_1(vec4<u32>(38952u, 22427u, 1u, 40935u), 0u, -10561i, vec3<f32>(785f, 266f, 1010f)), Struct_1(vec4<u32>(4294967295u, 1u, 5739u, 34010u), 2276u, -32688i, vec3<f32>(184f, 299f, 841f)), Struct_1(vec4<u32>(0u, 21053u, 0u, 86591u), 33109u, 61446i, vec3<f32>(-896f, 332f, -1192f)), Struct_1(vec4<u32>(94243u, 4294967295u, 1u, 0u), 0u, -1i, vec3<f32>(517f, 1753f, -560f)), Struct_1(vec4<u32>(4294967295u, 74731u, 108459u, 57170u), 18381u, i32(-2147483648), vec3<f32>(-1189f, 1479f, -3026f)), Struct_1(vec4<u32>(14310u, 4294967295u, 76381u, 48602u), 4294967295u, 0i, vec3<f32>(1000f, 1896f, 779f)), Struct_1(vec4<u32>(4294967295u, 76175u, 38016u, 49892u), 4294967295u, -61579i, vec3<f32>(994f, -658f, -627f)));

var<private> global4: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_2(vec2<f32>(-2291f, -1450f), true, vec2<u32>(89624u, 47907u), 1998f), 606f, 0u, true), Struct_4(Struct_2(vec2<f32>(-982f, -1097f), true, vec2<u32>(49480u, 9521u), -1487f), -1770f, 1u, true), Struct_4(Struct_2(vec2<f32>(-782f, 1781f), true, vec2<u32>(0u, 1u), -212f), -314f, 11371u, true), Struct_4(Struct_2(vec2<f32>(-897f, 683f), false, vec2<u32>(0u, 38451u), 547f), -1233f, 50760u, false), Struct_4(Struct_2(vec2<f32>(424f, 600f), false, vec2<u32>(84162u, 64816u), -1000f), -228f, 0u, true), Struct_4(Struct_2(vec2<f32>(845f, -894f), true, vec2<u32>(49505u, 4294967295u), -1446f), 380f, 0u, false), Struct_4(Struct_2(vec2<f32>(-105f, 772f), true, vec2<u32>(37348u, 25411u), 468f), 394f, 4491u, true), Struct_4(Struct_2(vec2<f32>(571f, -1192f), true, vec2<u32>(4294967295u, 4294967295u), 108f), -2839f, 4294967295u, false), Struct_4(Struct_2(vec2<f32>(-1383f, -911f), true, vec2<u32>(71238u, 20920u), -922f), 3078f, 87784u, false), Struct_4(Struct_2(vec2<f32>(-100f, -108f), true, vec2<u32>(31690u, 1u), 313f), -408f, 1u, false), Struct_4(Struct_2(vec2<f32>(-1000f, 1959f), false, vec2<u32>(10243u, 4294967295u), -131f), 1000f, 4439u, false), Struct_4(Struct_2(vec2<f32>(-764f, -1195f), false, vec2<u32>(0u, 75076u), 782f), 592f, 81934u, false), Struct_4(Struct_2(vec2<f32>(-564f, 864f), false, vec2<u32>(0u, 4294967295u), -589f), 2279f, 35620u, true), Struct_4(Struct_2(vec2<f32>(-543f, 1541f), false, vec2<u32>(0u, 13792u), 511f), -1000f, 0u, true), Struct_4(Struct_2(vec2<f32>(940f, -378f), false, vec2<u32>(58395u, 0u), -317f), 1561f, 45716u, false), Struct_4(Struct_2(vec2<f32>(-1380f, -1224f), true, vec2<u32>(2100u, 0u), 1172f), -794f, 0u, true), Struct_4(Struct_2(vec2<f32>(277f, -2155f), false, vec2<u32>(3355u, 42289u), 700f), 1000f, 57759u, false), Struct_4(Struct_2(vec2<f32>(115f, -1000f), true, vec2<u32>(49164u, 19571u), -1130f), 279f, 4294967295u, true), Struct_4(Struct_2(vec2<f32>(1006f, 580f), true, vec2<u32>(5574u, 4294967295u), 909f), -1897f, 27135u, false), Struct_4(Struct_2(vec2<f32>(-1000f, -888f), false, vec2<u32>(4294967295u, 469u), -1000f), -166f, 0u, true), Struct_4(Struct_2(vec2<f32>(1438f, 1000f), true, vec2<u32>(32249u, 53968u), -325f), -172f, 35281u, false), Struct_4(Struct_2(vec2<f32>(586f, 1785f), true, vec2<u32>(4294967295u, 4294967295u), 685f), -861f, 2299u, true), Struct_4(Struct_2(vec2<f32>(325f, 340f), false, vec2<u32>(4294967295u, 1u), 318f), -528f, 0u, false), Struct_4(Struct_2(vec2<f32>(-731f, -517f), true, vec2<u32>(1u, 4294967295u), 330f), -661f, 0u, true), Struct_4(Struct_2(vec2<f32>(-159f, 1878f), false, vec2<u32>(0u, 0u), -610f), 1639f, 34923u, true));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    let var_0 = (global1[_wgslsmith_index_u32(~global0.x, 31u)] >= 1541f) != true;
    var var_1 = ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(min(26869u, global0.x), 31477u << (u_input.a.x % 32u), countOneBits(0u)), u_input.a.x), select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0.x, 39342u, 48354u), ~u_input.a), _wgslsmith_mod_u32(u_input.a.x | u_input.a.x, 58400u << (global0.x % 32u)), var_0 == var_0));
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(16540u, 31u)], global1[_wgslsmith_index_u32(global0.x, 31u)])) + vec2<f32>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)])) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], 1303f) * vec2<f32>(-1860f, -154f))))), !any(select(vec2<bool>(true, var_0), vec2<bool>(var_0, true), vec2<bool>(true, true))), u_input.a.xy, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2392f - global1[_wgslsmith_index_u32(1u, 31u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))), ~_wgslsmith_mod_u32(global0.x, u_input.a.x) >> (reverseBits(reverseBits(global0.x)) % 32u), var_0);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(14013u, 31u)])), -776f)))), _wgslsmith_f_op_f32(820f * 1f));
    let var_4 = select(!select(select(vec4<bool>(true, var_0, var_0, true), vec4<bool>(var_0, false, var_2.d, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, var_0, false, false), vec4<bool>(var_2.a.b, var_2.a.b, var_0, false))), !(!vec4<bool>(var_2.d, true, var_0, true)), var_2.a.b), !vec4<bool>(true, true, any(vec4<bool>(var_2.a.b, var_0, var_2.a.b, false)), true), ~0u > _wgslsmith_mult_u32(84952u, ~global0.x << (4294967295u % 32u)));
    return vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -abs(-1i), 1i), max(22486i, -max(16935i, ~(-18518i))), -69131i);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_mod_vec3_i32(-vec3<i32>(_wgslsmith_div_i32(1i, -2147483647i), ~3179i, 1i) << (vec3<u32>(abs(9407u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, arg_2.x, 0u, 44167u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3, 4294967295u, arg_2.x, 4294967295u), vec4<u32>(arg_2.x, arg_3, 36223u, 1u))), abs(arg_3)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(select(select(~vec3<i32>(8216i, 0i, 0i), vec3<i32>(1i, 1i, 1i), all(vec3<bool>(true, true, arg_1))), func_3(), !(!vec3<bool>(arg_0, arg_1, arg_1))), vec3<i32>(func_3().x, ~_wgslsmith_mult_i32(1i, 0i), ~(-52310i))));
    var var_1 = -select(reverseBits(abs(vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x))), vec4<i32>(-1i, reverseBits(-17062i), var_0.x, -34483i), vec4<bool>(any(vec3<bool>(arg_0, arg_0, true)), true, true, all(vec3<bool>(arg_0, false, arg_0)))) >> (~(~vec4<u32>(u_input.a.x, arg_2.x >> (u_input.a.x % 32u), 24066u, global0.x)) % vec4<u32>(32u));
    var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(29136i, firstLeadingBit(~(-1i)), func_3().x | abs(firstLeadingBit(2147483647i)), -_wgslsmith_sub_i32(23124i | var_0.x, 11894i)), ~vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_0.x, var_0.x), vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x)), vec4<i32>(var_1.x, var_0.x, -2147483647i, var_1.x)), -23569i, -1i ^ _wgslsmith_sub_i32(var_1.x, 2147483647i), var_1.x >> (u_input.a.x % 32u)));
    global3 = array<Struct_1, 16>();
    var var_2 = vec3<bool>(true, true, true);
    return _wgslsmith_add_i32(var_0.x, max(~(-2147483647i ^ var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -13410i, var_1.x, 54595i), -vec4<i32>(var_0.x, var_0.x, var_0.x, 35409i))) >> (~1u % 32u));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = abs(abs(vec4<i32>(1i, ~arg_0.x, func_2(any(vec4<bool>(false, false, true, false)), false, vec2<u32>(global0.x, u_input.a.x) >> (global0.yz % vec2<u32>(32u)), _wgslsmith_mult_u32(global0.x, 2552u)), ~arg_0.x)));
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(831f, 566f)), _wgslsmith_div_vec2_f32(vec2<f32>(-2217f, 180f), vec2<f32>(1000f, global1[_wgslsmith_index_u32(4294967295u, 31u)]))))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), vec2<u32>(reverseBits(0u ^ u_input.a.x), global0.x), global1[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))), _wgslsmith_dot_vec4_u32(vec4<u32>(5025u, 0u, firstLeadingBit(u_input.a.x), global0.x), _wgslsmith_clamp_vec4_u32(~(~u_input.a), ~(~vec4<u32>(1u, global0.x, u_input.a.x, global0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.x, global0.x, 29471u) << (u_input.a % vec4<u32>(32u)), u_input.a))), (12084u == u_input.a.x) && (_wgslsmith_f_op_f32(f32(-1f) * -755f) > global1[_wgslsmith_index_u32(24376u, 31u)]));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1674f, -677f, var_1.b, global1[_wgslsmith_index_u32(global0.x, 31u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-390f, -1141f, 1330f, var_1.a.a.x)))))));
    let var_3 = func_3().x;
    let var_4 = Struct_1(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u, ~53233u), global0.x), ~firstLeadingBit(~57392u), u_input.a.x, ~(~u_input.a.x & 59077u)), _wgslsmith_add_u32(var_1.a.c.x | 1u, _wgslsmith_mod_u32(select(1u, ~var_1.c, var_1.d), ~_wgslsmith_mult_u32(1u, var_1.c))), min(_wgslsmith_dot_vec2_i32(-vec2<i32>(21742i, -35939i), _wgslsmith_clamp_vec2_i32(abs(arg_0.zy), vec2<i32>(arg_0.x, 33952i), vec2<i32>(arg_0.x, 2147483647i) >> (vec2<u32>(49245u, u_input.a.x) % vec2<u32>(32u)))), min(i32(-1i) * -2147483647i, var_0.x)), vec3<f32>(var_1.b, -1509f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 31u)]) - _wgslsmith_f_op_f32(472f + -1000f))))));
    return Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(~(global0.x | ~var_1.a.c.x), 31u)], 502f), var_1.d, global0.xx, 457f);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = arg_1;
    global1 = array<f32, 31>();
    global0 = u_input.a;
    let var_1 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(u_input.a.x, 1u)), 16u)];
    global3 = array<Struct_1, 16>();
    return vec4<u32>(var_1.b, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_1.a.wzx, vec3<u32>(_wgslsmith_clamp_u32(68943u, var_0.c.x, 7569u), countOneBits(0u), ~arg_0.x)), 71878u, ~var_0.c.x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.a, ~_wgslsmith_mult_vec4_u32(u_input.a, u_input.a)), u_input.a), _wgslsmith_mod_u32(var_1.b, ~min(~global0.x, 17124u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 31>();
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(firstLeadingBit(func_4(countOneBits(u_input.a.xwy), func_1(vec3<i32>(1i, -28578i, 22411i)))), vec4<u32>(~(~u_input.a.x), u_input.a.x, 15424u, _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_sub_u32(87322u, global0.x)))), ~u_input.a.x, countOneBits(-10064i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global1[_wgslsmith_index_u32(8141u, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)]) - vec3<f32>(global1[_wgslsmith_index_u32(51009u, 31u)], global1[_wgslsmith_index_u32(13504u, 31u)], -598f))), vec3<f32>(global1[_wgslsmith_index_u32(56707u, 31u)], _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.a.x, 31u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.x, 31u)] - 203f)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)))))));
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 18839u | _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 4294967295u, global0.x, var_0.b), vec4<u32>(u_input.a.x, 0u, var_0.b, global0.x))), 1u), ~_wgslsmith_clamp_vec3_u32(~(~u_input.a.yyy), ~(~vec3<u32>(43936u, u_input.a.x, var_0.b)), global0.wxy));
    global1 = array<f32, 31>();
    let var_2 = Struct_3(func_1(func_3() & ((vec3<i32>(-1i, var_0.c, var_0.c) | vec3<i32>(var_0.c, var_0.c, var_0.c)) ^ -vec3<i32>(-36714i, var_0.c, 51810i))), vec4<bool>(firstLeadingBit(1u) > _wgslsmith_sub_u32(26074u, var_0.b), !(_wgslsmith_div_i32(var_0.c, -2147483647i) >= _wgslsmith_clamp_i32(-1i, 36336i, -13913i)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_0.c), vec4<u32>(abs(var_0.a.x), u_input.a.x, ~var_2.a.c.x, 1u ^ (var_2.a.c.x ^ 5893u)) ^ var_0.a, global1[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.a.c.x, 31u)]) + var_2.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1444f, -866f)) * _wgslsmith_f_op_f32(abs(var_0.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1687f), var_0.d.x)), var_0.c);
}

