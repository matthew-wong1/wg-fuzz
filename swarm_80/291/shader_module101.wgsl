struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: Struct_1,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(28847u, Struct_4(vec4<u32>(44158u, 56615u, 56741u, 108301u), vec4<bool>(true, true, false, true), 79474u), Struct_1(vec3<f32>(-762f, 891f, 569f)), Struct_4(vec4<u32>(70164u, 42171u, 1u, 28548u), vec4<bool>(false, false, true, true), 0u), Struct_2(-699f, 45315u, Struct_1(vec3<f32>(-1370f, -350f, -243f)))), Struct_5(0u, Struct_4(vec4<u32>(1u, 7763u, 1u, 1u), vec4<bool>(false, false, false, false), 4294967295u), Struct_1(vec3<f32>(855f, 168f, -439f)), Struct_4(vec4<u32>(13873u, 4294967295u, 7158u, 0u), vec4<bool>(true, true, false, true), 1u), Struct_2(305f, 0u, Struct_1(vec3<f32>(-1335f, -847f, -115f)))), Struct_5(79341u, Struct_4(vec4<u32>(4294967295u, 30804u, 13660u, 1u), vec4<bool>(true, true, true, true), 1u), Struct_1(vec3<f32>(402f, -1784f, -1476f)), Struct_4(vec4<u32>(43232u, 1u, 4294967295u, 1u), vec4<bool>(true, true, false, true), 41564u), Struct_2(-380f, 0u, Struct_1(vec3<f32>(-1895f, 398f, -764f)))), Struct_5(25328u, Struct_4(vec4<u32>(10202u, 37789u, 47349u, 4294967295u), vec4<bool>(true, false, true, true), 63348u), Struct_1(vec3<f32>(-1235f, -783f, -2386f)), Struct_4(vec4<u32>(4294967295u, 4294967295u, 76998u, 4294967295u), vec4<bool>(false, true, true, true), 30723u), Struct_2(-2231f, 1u, Struct_1(vec3<f32>(1329f, -2036f, -1916f)))), Struct_5(4294967295u, Struct_4(vec4<u32>(4294967295u, 1u, 26757u, 59858u), vec4<bool>(true, false, false, false), 0u), Struct_1(vec3<f32>(-900f, -371f, -997f)), Struct_4(vec4<u32>(36582u, 1u, 30033u, 37879u), vec4<bool>(false, true, false, false), 42398u), Struct_2(-539f, 4294967295u, Struct_1(vec3<f32>(1208f, 655f, 1931f)))), Struct_5(0u, Struct_4(vec4<u32>(12159u, 1u, 95760u, 56786u), vec4<bool>(true, false, true, true), 2505u), Struct_1(vec3<f32>(-1151f, -1242f, 295f)), Struct_4(vec4<u32>(1u, 33162u, 1u, 35515u), vec4<bool>(false, true, true, false), 0u), Struct_2(-334f, 1u, Struct_1(vec3<f32>(-1000f, 176f, 578f)))), Struct_5(29702u, Struct_4(vec4<u32>(11039u, 1u, 17694u, 27786u), vec4<bool>(false, true, true, true), 3805u), Struct_1(vec3<f32>(190f, 279f, -1137f)), Struct_4(vec4<u32>(4294967295u, 4294967295u, 0u, 5842u), vec4<bool>(false, true, false, false), 61751u), Struct_2(-1000f, 4294967295u, Struct_1(vec3<f32>(-477f, 1570f, 648f)))), Struct_5(79733u, Struct_4(vec4<u32>(43058u, 48713u, 0u, 0u), vec4<bool>(false, false, true, false), 28983u), Struct_1(vec3<f32>(-1000f, 412f, -1000f)), Struct_4(vec4<u32>(4294967295u, 16774u, 1u, 0u), vec4<bool>(false, true, false, false), 1u), Struct_2(729f, 1u, Struct_1(vec3<f32>(148f, -343f, 302f)))), Struct_5(0u, Struct_4(vec4<u32>(0u, 44678u, 4294967295u, 10266u), vec4<bool>(false, false, false, true), 4294967295u), Struct_1(vec3<f32>(638f, 252f, 265f)), Struct_4(vec4<u32>(1u, 40134u, 0u, 39372u), vec4<bool>(false, false, false, false), 28226u), Struct_2(-496f, 1u, Struct_1(vec3<f32>(-2196f, 1627f, 1449f)))), Struct_5(1u, Struct_4(vec4<u32>(0u, 9929u, 1u, 52875u), vec4<bool>(false, false, false, true), 1u), Struct_1(vec3<f32>(-385f, -1119f, -588f)), Struct_4(vec4<u32>(81391u, 13309u, 4294967295u, 0u), vec4<bool>(true, false, true, true), 4294967295u), Struct_2(-852f, 1u, Struct_1(vec3<f32>(-124f, 2126f, -385f)))), Struct_5(7694u, Struct_4(vec4<u32>(2483u, 16591u, 4294967295u, 0u), vec4<bool>(false, false, false, false), 1u), Struct_1(vec3<f32>(1762f, -1000f, 2019f)), Struct_4(vec4<u32>(4594u, 42177u, 6805u, 0u), vec4<bool>(true, true, false, true), 44810u), Struct_2(-1228f, 55221u, Struct_1(vec3<f32>(1029f, -650f, -215f)))), Struct_5(60863u, Struct_4(vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<bool>(true, true, true, true), 0u), Struct_1(vec3<f32>(610f, -861f, 1052f)), Struct_4(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<bool>(false, false, false, true), 25332u), Struct_2(-341f, 16887u, Struct_1(vec3<f32>(-1900f, 349f, -849f)))), Struct_5(0u, Struct_4(vec4<u32>(1u, 0u, 9027u, 15957u), vec4<bool>(true, true, false, false), 0u), Struct_1(vec3<f32>(214f, 1680f, -2078f)), Struct_4(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<bool>(false, false, true, true), 22420u), Struct_2(126f, 1u, Struct_1(vec3<f32>(766f, -844f, -2045f)))), Struct_5(0u, Struct_4(vec4<u32>(4294967295u, 70434u, 58127u, 1u), vec4<bool>(false, false, true, false), 74459u), Struct_1(vec3<f32>(-1952f, 383f, 982f)), Struct_4(vec4<u32>(1u, 1u, 1u, 13836u), vec4<bool>(true, false, false, false), 0u), Struct_2(-703f, 73875u, Struct_1(vec3<f32>(451f, -1083f, -1000f)))), Struct_5(18410u, Struct_4(vec4<u32>(53820u, 26433u, 0u, 49840u), vec4<bool>(false, false, false, false), 4294967295u), Struct_1(vec3<f32>(1000f, -1000f, 1000f)), Struct_4(vec4<u32>(78475u, 58425u, 1u, 31264u), vec4<bool>(false, false, true, true), 1u), Struct_2(1510f, 4294967295u, Struct_1(vec3<f32>(-549f, 396f, -1358f)))), Struct_5(28942u, Struct_4(vec4<u32>(1317u, 1u, 10909u, 1u), vec4<bool>(true, false, false, false), 20932u), Struct_1(vec3<f32>(-277f, -358f, -1004f)), Struct_4(vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<bool>(true, true, true, true), 1u), Struct_2(117f, 1u, Struct_1(vec3<f32>(-1000f, 527f, -260f)))), Struct_5(4294967295u, Struct_4(vec4<u32>(4400u, 1u, 90633u, 34812u), vec4<bool>(true, false, false, true), 0u), Struct_1(vec3<f32>(-395f, 1278f, 154f)), Struct_4(vec4<u32>(4294967295u, 87004u, 45322u, 13440u), vec4<bool>(false, true, true, false), 0u), Struct_2(629f, 17071u, Struct_1(vec3<f32>(-489f, -328f, -2410f)))), Struct_5(1u, Struct_4(vec4<u32>(47726u, 1u, 1u, 39642u), vec4<bool>(false, false, false, false), 0u), Struct_1(vec3<f32>(-760f, 807f, 1411f)), Struct_4(vec4<u32>(0u, 72559u, 4294967295u, 28869u), vec4<bool>(true, true, false, true), 0u), Struct_2(995f, 4294967295u, Struct_1(vec3<f32>(156f, -776f, 476f)))), Struct_5(28895u, Struct_4(vec4<u32>(29761u, 0u, 9207u, 4294967295u), vec4<bool>(true, false, true, false), 0u), Struct_1(vec3<f32>(1494f, -2103f, 108f)), Struct_4(vec4<u32>(1u, 11673u, 124187u, 40336u), vec4<bool>(false, true, false, true), 6387u), Struct_2(-1200f, 28184u, Struct_1(vec3<f32>(558f, -468f, -1123f)))), Struct_5(0u, Struct_4(vec4<u32>(53262u, 10473u, 88076u, 4294967295u), vec4<bool>(false, true, false, false), 1u), Struct_1(vec3<f32>(1167f, -332f, -1499f)), Struct_4(vec4<u32>(4294967295u, 17063u, 4294967295u, 28717u), vec4<bool>(false, false, true, true), 21151u), Struct_2(180f, 1u, Struct_1(vec3<f32>(250f, -1503f, -741f)))), Struct_5(0u, Struct_4(vec4<u32>(50294u, 7277u, 1u, 4609u), vec4<bool>(false, false, true, false), 94u), Struct_1(vec3<f32>(361f, 219f, -759f)), Struct_4(vec4<u32>(0u, 9502u, 4294967295u, 55563u), vec4<bool>(false, true, true, true), 11678u), Struct_2(-461f, 1u, Struct_1(vec3<f32>(1572f, 2357f, -280f)))), Struct_5(0u, Struct_4(vec4<u32>(4294967295u, 27141u, 8077u, 0u), vec4<bool>(true, true, true, true), 4294967295u), Struct_1(vec3<f32>(-774f, 554f, 858f)), Struct_4(vec4<u32>(4294967295u, 0u, 16512u, 66368u), vec4<bool>(true, true, true, false), 87074u), Struct_2(191f, 86042u, Struct_1(vec3<f32>(-243f, 763f, -911f)))), Struct_5(0u, Struct_4(vec4<u32>(0u, 66046u, 1u, 4294967295u), vec4<bool>(true, true, false, false), 49560u), Struct_1(vec3<f32>(-304f, -604f, 2831f)), Struct_4(vec4<u32>(91053u, 4294967295u, 1u, 42537u), vec4<bool>(true, false, false, false), 0u), Struct_2(927f, 4294967295u, Struct_1(vec3<f32>(-474f, 190f, 491f)))), Struct_5(6086u, Struct_4(vec4<u32>(1u, 46826u, 17246u, 1u), vec4<bool>(false, false, false, false), 73284u), Struct_1(vec3<f32>(1908f, 1004f, -378f)), Struct_4(vec4<u32>(25940u, 65246u, 10374u, 3329u), vec4<bool>(true, false, true, false), 357u), Struct_2(-946f, 4294967295u, Struct_1(vec3<f32>(1731f, -1872f, 577f)))), Struct_5(52094u, Struct_4(vec4<u32>(4294967295u, 4294967295u, 1u, 61397u), vec4<bool>(false, true, false, false), 58547u), Struct_1(vec3<f32>(-390f, 1000f, 417f)), Struct_4(vec4<u32>(51800u, 9113u, 1u, 107247u), vec4<bool>(false, false, true, false), 48619u), Struct_2(-216f, 22743u, Struct_1(vec3<f32>(-101f, -901f, 322f)))), Struct_5(48935u, Struct_4(vec4<u32>(0u, 0u, 19881u, 4294967295u), vec4<bool>(true, true, true, false), 4294967295u), Struct_1(vec3<f32>(-1053f, -2184f, -1095f)), Struct_4(vec4<u32>(8406u, 0u, 4061u, 13435u), vec4<bool>(true, true, false, true), 1u), Struct_2(-577f, 31829u, Struct_1(vec3<f32>(-930f, 813f, 1162f)))), Struct_5(14873u, Struct_4(vec4<u32>(4294967295u, 1u, 1u, 23354u), vec4<bool>(true, true, true, false), 36781u), Struct_1(vec3<f32>(-857f, 2001f, 177f)), Struct_4(vec4<u32>(34670u, 43344u, 0u, 1u), vec4<bool>(false, false, false, false), 0u), Struct_2(-1025f, 70169u, Struct_1(vec3<f32>(840f, -655f, 586f)))), Struct_5(1u, Struct_4(vec4<u32>(110973u, 9474u, 9631u, 1u), vec4<bool>(false, true, false, false), 0u), Struct_1(vec3<f32>(-478f, 460f, -1019f)), Struct_4(vec4<u32>(60872u, 8900u, 4294967295u, 5705u), vec4<bool>(false, false, false, true), 1486u), Struct_2(517f, 64150u, Struct_1(vec3<f32>(621f, 698f, 250f)))), Struct_5(0u, Struct_4(vec4<u32>(0u, 90012u, 1u, 0u), vec4<bool>(false, false, false, true), 0u), Struct_1(vec3<f32>(1070f, 563f, 140f)), Struct_4(vec4<u32>(31349u, 4294967295u, 4294967295u, 1u), vec4<bool>(true, true, true, true), 2692u), Struct_2(-483f, 0u, Struct_1(vec3<f32>(-1000f, -509f, 403f)))), Struct_5(1u, Struct_4(vec4<u32>(3749u, 1u, 10641u, 1u), vec4<bool>(false, false, true, false), 50442u), Struct_1(vec3<f32>(211f, 1000f, 427f)), Struct_4(vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<bool>(true, false, false, false), 1u), Struct_2(891f, 38487u, Struct_1(vec3<f32>(-156f, -797f, -1318f)))), Struct_5(39887u, Struct_4(vec4<u32>(1u, 0u, 78275u, 35613u), vec4<bool>(false, true, false, true), 4294967295u), Struct_1(vec3<f32>(-101f, -290f, 2007f)), Struct_4(vec4<u32>(57370u, 91234u, 26780u, 28231u), vec4<bool>(true, true, false, false), 4294967295u), Struct_2(535f, 4294967295u, Struct_1(vec3<f32>(-661f, -1085f, -313f)))));

var<private> global2: array<u32, 25>;

var<private> global3: array<f32, 21> = array<f32, 21>(-200f, -878f, -528f, 617f, 1000f, 1319f, 653f, -796f, -100f, 1041f, 324f, 225f, 2341f, 2033f, 498f, 1000f, -277f, -538f, 598f, -439f, 136f);

var<private> global4: array<Struct_1, 5>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(32375u, 21u)]), -1045f, _wgslsmith_f_op_f32(max(-1948f, global3[_wgslsmith_index_u32(4294967295u, 21u)]))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-698f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44449u, 25u)], 25u)], 25u)], 21u)], global3[_wgslsmith_index_u32(0u, 21u)]))))))));
    global2 = array<u32, 25>();
    let var_1 = Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u ^ ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], 25u)], 25u)]), 21u)], global3[_wgslsmith_index_u32(~17551u, 21u)], _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(1775f * _wgslsmith_f_op_f32(-var_0.a.x)))));
    var var_2 = u_input.a.x;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(-var_1.a), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))))));
    return ~_wgslsmith_div_u32(~_wgslsmith_div_u32(~4294967295u, countOneBits(u_input.a.x)), ~firstLeadingBit(~u_input.a.x));
}

fn func_2() -> vec3<u32> {
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(23497u, u_input.a.x, 16149u, 1u)), _wgslsmith_add_vec4_u32(~u_input.a, ~u_input.a)), select(countOneBits(global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), firstTrailingBit(~26759u), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 21u)]) == global3[_wgslsmith_index_u32(1u, 21u)]));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32((u_input.a.x ^ global2[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 25u)]) >> (0u % 32u), u_input.a.x), 5u)];
    let var_2 = Struct_1(var_1.a);
    var var_3 = Struct_2(global3[_wgslsmith_index_u32(3900u, 21u)], _wgslsmith_div_u32(~_wgslsmith_mult_u32(var_0 << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 25u)], 25u)] % 32u), var_0), ~var_0), global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 17498i))), 25u)], u_input.a.x), 25u)], 5u)]);
    var var_4 = -8115i;
    return u_input.a.xzz;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(arg_2, 31u)];
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) | vec2<u32>(arg_2, 1u), u_input.a.xy >> (var_0.d.a.wz % vec2<u32>(32u))), 21u)]), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(38862u, arg_2), 21u)], 470f);
    global3 = array<f32, 21>();
    let var_2 = abs(~func_2());
    let var_3 = var_0.b;
    return ~u_input.b ^ u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_i32(u_input.b >> (u_input.a.x % 32u), -func_1(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(75580u, 25u)], 21u)], global3[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], 218f, -490f))), ~(-2147483647i), ~global2[_wgslsmith_index_u32(~25483u, 25u)]), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b << (42968u % 32u), firstLeadingBit(-1i), -31648i & u_input.b), 0i), firstTrailingBit(~_wgslsmith_div_i32(u_input.b, u_input.b))));
    global3 = array<f32, 21>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(1843u, 21u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(231f * 723f) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], 21u)] - -1000f)))))), ~(~_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u), 5323u)), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37625u, 25u)], 21u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(75649u, 25u)], 21u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 25u)], 21u)]) + vec3<f32>(global3[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(28089u, 21u)], global3[_wgslsmith_index_u32(20078u, 21u)])))))));
    global4 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(global2[_wgslsmith_index_u32(~(~(~10136u)), 25u)]), -countOneBits(u_input.b));
}

