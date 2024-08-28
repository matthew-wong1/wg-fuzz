struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false));

var<private> global1: array<Struct_5, 24>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<i32>(-1i, 1i, -1i), vec4<f32>(-293f, 1521f, 1679f, -2698f), vec3<f32>(2256f, -531f, 1309f), vec4<u32>(1u, 39667u, 4294967295u, 4294967295u), 0u), vec4<i32>(i32(-2147483648), 1i, -23760i, -40679i), Struct_1(vec3<i32>(-3419i, 3513i, 0i), vec4<f32>(-2084f, 501f, -873f, -1920f), vec3<f32>(1262f, -668f, 1494f), vec4<u32>(12243u, 7691u, 7440u, 61133u), 4294967295u));

var<private> global3: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(Struct_3(1037f, 0u, vec2<bool>(false, false), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec3<i32>(0i, -13557i, 1i), vec4<f32>(-994f, 1025f, 1294f, -1430f), vec3<f32>(-422f, -633f, -520f), vec4<u32>(0u, 1u, 1u, 55862u), 4294967295u), vec4<i32>(-9178i, 2147483647i, i32(-2147483648), -32336i), Struct_1(vec3<i32>(-1i, 0i, 2147483647i), vec4<f32>(881f, -534f, 194f, 194f), vec3<f32>(-852f, -1314f, -435f), vec4<u32>(0u, 17307u, 30601u, 7372u), 0u)), Struct_2(Struct_1(vec3<i32>(1i, -16065i, -33327i), vec4<f32>(-1000f, -243f, 870f, 680f), vec3<f32>(-617f, 732f, -354f), vec4<u32>(1u, 48589u, 4294967295u, 19445u), 4294967295u), vec4<i32>(2147483647i, -11355i, i32(-2147483648), i32(-2147483648)), Struct_1(vec3<i32>(2147483647i, 27802i, 0i), vec4<f32>(940f, 2325f, -303f, -1000f), vec3<f32>(302f, -1591f, 571f), vec4<u32>(1u, 36224u, 21674u, 55614u), 4294967295u)), Struct_3(447f, 0u, vec2<bool>(false, true), vec2<bool>(false, false)), vec4<f32>(514f, 1900f, 308f, -787f))), Struct_5(Struct_3(-659f, 49480u, vec2<bool>(false, false), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec3<i32>(-16255i, 1i, -22937i), vec4<f32>(-166f, -549f, -180f, -564f), vec3<f32>(778f, 606f, -1039f), vec4<u32>(4294967295u, 62778u, 0u, 4294967295u), 0u), vec4<i32>(1i, 11480i, 1823i, 2147483647i), Struct_1(vec3<i32>(-1i, -36476i, -1i), vec4<f32>(-1290f, 318f, -207f, -817f), vec3<f32>(892f, 633f, 559f), vec4<u32>(0u, 4797u, 1u, 1u), 26097u)), Struct_2(Struct_1(vec3<i32>(24400i, -3359i, i32(-2147483648)), vec4<f32>(809f, -1050f, 2474f, -1069f), vec3<f32>(-481f, -1000f, 872f), vec4<u32>(5666u, 4294967295u, 0u, 4294967295u), 4294967295u), vec4<i32>(-1i, 29729i, 0i, 58767i), Struct_1(vec3<i32>(0i, -6560i, 13867i), vec4<f32>(345f, -213f, 1000f, 629f), vec3<f32>(905f, -1492f, -110f), vec4<u32>(1u, 0u, 4294967295u, 88333u), 0u)), Struct_3(455f, 4294967295u, vec2<bool>(true, false), vec2<bool>(true, true)), vec4<f32>(-771f, 482f, 2136f, 1936f))), Struct_5(Struct_3(-118f, 58026u, vec2<bool>(false, true), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 2278i, -1i), vec4<f32>(196f, -220f, -2303f, -145f), vec3<f32>(659f, 562f, 1283f), vec4<u32>(4294967295u, 0u, 6995u, 1u), 23672u), vec4<i32>(-36237i, i32(-2147483648), 1i, 1i), Struct_1(vec3<i32>(-1i, i32(-2147483648), -1i), vec4<f32>(1013f, 1163f, -667f, -1529f), vec3<f32>(-700f, 159f, -1318f), vec4<u32>(1u, 598u, 1u, 38043u), 0u)), Struct_2(Struct_1(vec3<i32>(-1i, -2934i, 37006i), vec4<f32>(-264f, -904f, 825f, 169f), vec3<f32>(690f, 207f, 447f), vec4<u32>(1u, 54496u, 4294967295u, 17837u), 1u), vec4<i32>(1i, 14733i, 2147483647i, 0i), Struct_1(vec3<i32>(i32(-2147483648), -22760i, 0i), vec4<f32>(1362f, -551f, 1499f, 1178f), vec3<f32>(678f, -2169f, 313f), vec4<u32>(23047u, 48064u, 4294967295u, 71298u), 28726u)), Struct_3(937f, 57301u, vec2<bool>(true, true), vec2<bool>(false, false)), vec4<f32>(-766f, -1039f, 256f, -897f))), Struct_5(Struct_3(-183f, 1u, vec2<bool>(true, true), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -27887i), vec4<f32>(-569f, 1503f, -1257f, -996f), vec3<f32>(904f, 2457f, -1081f), vec4<u32>(91449u, 0u, 73181u, 1u), 35241u), vec4<i32>(28867i, 60662i, 25616i, 2147483647i), Struct_1(vec3<i32>(-1i, 32902i, -12389i), vec4<f32>(-1400f, -1560f, 354f, -944f), vec3<f32>(1000f, 1000f, -651f), vec4<u32>(4294967295u, 20090u, 4294967295u, 1u), 28865u)), Struct_2(Struct_1(vec3<i32>(0i, 62630i, -38421i), vec4<f32>(286f, -857f, -1176f, -1696f), vec3<f32>(-1345f, -1126f, 594f), vec4<u32>(12847u, 4294967295u, 4294967295u, 4294967295u), 1u), vec4<i32>(45080i, -1i, 2147483647i, 0i), Struct_1(vec3<i32>(-1i, 0i, -28285i), vec4<f32>(513f, -1000f, 2450f, 1086f), vec3<f32>(119f, 1536f, -683f), vec4<u32>(1u, 8888u, 41723u, 4294967295u), 67159u)), Struct_3(929f, 1u, vec2<bool>(true, true), vec2<bool>(false, false)), vec4<f32>(1249f, -846f, 868f, 2259f))), Struct_5(Struct_3(316f, 26738u, vec2<bool>(false, false), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec3<i32>(50135i, -7585i, 0i), vec4<f32>(1023f, -643f, 199f, 844f), vec3<f32>(-439f, 479f, -1476f), vec4<u32>(88019u, 1u, 75775u, 60985u), 58677u), vec4<i32>(18136i, -10764i, -13838i, 11089i), Struct_1(vec3<i32>(-1i, 20943i, 79291i), vec4<f32>(-852f, -594f, -427f, -1051f), vec3<f32>(1185f, 371f, -633f), vec4<u32>(88071u, 91861u, 75398u, 30872u), 0u)), Struct_2(Struct_1(vec3<i32>(-1i, 39184i, 35762i), vec4<f32>(-420f, -927f, -872f, -703f), vec3<f32>(256f, -116f, -806f), vec4<u32>(18103u, 7137u, 0u, 11616u), 1812u), vec4<i32>(1i, 1i, -1i, -60633i), Struct_1(vec3<i32>(-63984i, 2147483647i, 30287i), vec4<f32>(-1276f, -371f, 161f, -613f), vec3<f32>(-152f, -210f, -1595f), vec4<u32>(4294967295u, 13471u, 64854u, 4294967295u), 34527u)), Struct_3(1023f, 4294967295u, vec2<bool>(true, false), vec2<bool>(true, false)), vec4<f32>(1281f, -1538f, 826f, 215f))), Struct_5(Struct_3(-334f, 0u, vec2<bool>(false, true), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec3<i32>(1i, 7369i, -11301i), vec4<f32>(161f, -569f, 234f, -1000f), vec3<f32>(445f, -390f, -1679f), vec4<u32>(1u, 1u, 1u, 4294967295u), 15654u), vec4<i32>(-24361i, i32(-2147483648), -28260i, 8342i), Struct_1(vec3<i32>(-1i, 39348i, -38296i), vec4<f32>(-224f, -123f, 1051f, 273f), vec3<f32>(-1000f, 1423f, -333f), vec4<u32>(30999u, 30887u, 1u, 12041u), 15646u)), Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, -1i), vec4<f32>(-853f, 295f, -724f, -1000f), vec3<f32>(835f, -1000f, -541f), vec4<u32>(1u, 19975u, 34112u, 24610u), 4294967295u), vec4<i32>(-1i, -121i, 2147483647i, -1i), Struct_1(vec3<i32>(50871i, i32(-2147483648), 44738i), vec4<f32>(256f, -876f, -1000f, -516f), vec3<f32>(-1628f, -730f, -2585f), vec4<u32>(7934u, 81147u, 4294967295u, 67721u), 0u)), Struct_3(-601f, 0u, vec2<bool>(true, true), vec2<bool>(false, true)), vec4<f32>(1332f, -230f, -1411f, 1829f))), Struct_5(Struct_3(-1542f, 1u, vec2<bool>(true, true), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec3<i32>(-24881i, -1i, 45973i), vec4<f32>(-1286f, -189f, 273f, -1214f), vec3<f32>(1000f, 743f, 1048f), vec4<u32>(4294967295u, 11868u, 0u, 19406u), 75504u), vec4<i32>(-33095i, i32(-2147483648), i32(-2147483648), -13978i), Struct_1(vec3<i32>(-1926i, -33413i, -99811i), vec4<f32>(-779f, -497f, 1335f, -2362f), vec3<f32>(1208f, 303f, 1106f), vec4<u32>(38287u, 0u, 48442u, 1u), 0u)), Struct_2(Struct_1(vec3<i32>(16046i, 1i, 18273i), vec4<f32>(-786f, -1138f, 1780f, -1062f), vec3<f32>(-961f, 438f, 600f), vec4<u32>(1u, 33186u, 9280u, 22292u), 0u), vec4<i32>(-1i, 51637i, -1i, 0i), Struct_1(vec3<i32>(i32(-2147483648), -17825i, -1i), vec4<f32>(-843f, -1000f, -1514f, -867f), vec3<f32>(-1000f, -1000f, -782f), vec4<u32>(34903u, 47167u, 35971u, 0u), 6644u)), Struct_3(146f, 1u, vec2<bool>(false, true), vec2<bool>(true, false)), vec4<f32>(2672f, -1000f, -362f, 1000f))), Struct_5(Struct_3(-657f, 9119u, vec2<bool>(false, false), vec2<bool>(false, false)), Struct_4(Struct_2(Struct_1(vec3<i32>(2147483647i, 18851i, 1i), vec4<f32>(2239f, -558f, -942f, -476f), vec3<f32>(-1000f, 312f, -124f), vec4<u32>(0u, 40133u, 3027u, 1u), 0u), vec4<i32>(2147483647i, 32058i, -41364i, -41503i), Struct_1(vec3<i32>(i32(-2147483648), 0i, -68013i), vec4<f32>(-317f, 809f, 1464f, 531f), vec3<f32>(-241f, -658f, 2640f), vec4<u32>(6298u, 24087u, 4294967295u, 49583u), 1u)), Struct_2(Struct_1(vec3<i32>(53403i, 0i, -59198i), vec4<f32>(1000f, -948f, -1269f, -707f), vec3<f32>(303f, 141f, 278f), vec4<u32>(34792u, 1u, 4294967295u, 0u), 4294967295u), vec4<i32>(18639i, -49794i, -1i, 36226i), Struct_1(vec3<i32>(2147483647i, 19215i, -1i), vec4<f32>(381f, 1770f, 412f, -1337f), vec3<f32>(108f, 1023f, 1262f), vec4<u32>(1u, 59737u, 16519u, 39599u), 69061u)), Struct_3(508f, 11879u, vec2<bool>(false, true), vec2<bool>(true, false)), vec4<f32>(1877f, 206f, 1000f, -632f))));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: vec3<u32>) -> f32 {
    global3 = array<Struct_5, 8>();
    global2 = Struct_2(Struct_1(countOneBits(min(vec3<i32>(u_input.b, 45552i, u_input.b), vec3<i32>(-2147483647i, arg_0, -14898i) & vec3<i32>(-1i, global2.b.x, global2.c.a.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.a.c.x, -895f, global2.c.b.x) * vec4<f32>(global2.a.c.x, arg_1.b.b.c.b.x, global2.c.c.x, 851f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.d.x, arg_1.a.a, global2.c.b.x, 1173f), global2.a.b, vec4<bool>(arg_1.a.c.x, arg_1.b.c.d.x, false, arg_1.b.c.c.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.b.x, global2.c.b.x, -637f, global2.c.c.x) + vec4<f32>(arg_1.a.a, global2.a.c.x, 1124f, arg_1.b.a.c.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.c.x, arg_1.a.a, -1343f)) * arg_1.b.a.c.b.wwx), vec4<u32>(firstTrailingBit(arg_2.x), arg_2.x, u_input.d.x, ~4294967295u) ^ ((global2.a.d | vec4<u32>(0u, 0u, 4294967295u, 0u)) ^ ~u_input.a), select(global2.c.e, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c, 4294967295u), 1u), arg_1.b.c.c.x)), ~arg_1.b.b.b, Struct_1(firstLeadingBit(firstLeadingBit(global2.c.a)), arg_1.b.d, _wgslsmith_f_op_vec3_f32(-global2.a.c), u_input.a, 4294967295u));
    var var_0 = Struct_2(global2.c, reverseBits(vec4<i32>(-(~0i), arg_0, 34672i, global2.c.a.x)), Struct_1(vec3<i32>(firstTrailingBit(firstTrailingBit(arg_1.b.a.a.a.x)), _wgslsmith_add_i32(~u_input.b, arg_0 & -53977i), -2147483647i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global2.c.b))), arg_1.b.a.c.c, arg_1.b.b.c.d, 32127u));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_1.b.a.a.b.xxx, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1400f, var_0.c.c.x, -1230f)))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.x)), global2.c.b.x, arg_1.a.a))));
    var var_2 = arg_1.b.b.c.d.yzx;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - _wgslsmith_f_op_f32(-var_0.a.b.x)))) - _wgslsmith_f_op_f32(-824f * _wgslsmith_f_op_f32(floor(-208f)))));
}

fn func_2() -> i32 {
    global1 = array<Struct_5, 24>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2.c.a.x, global3[_wgslsmith_index_u32(global2.a.d.x, 8u)], vec3<u32>(u_input.c, global2.c.e, 9891u)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.c.x - global2.c.b.x), -957f)) - _wgslsmith_f_op_f32(func_3(global2.a.a.x, Struct_5(Struct_3(-244f, u_input.d.x, vec2<bool>(false, false), vec2<bool>(true, true)), Struct_4(Struct_2(global2.a, global2.b, global2.a), Struct_2(Struct_1(global2.c.a, global2.c.b, global2.a.b.xzz, global2.a.d, 1188u), global2.b, Struct_1(global2.c.a, global2.a.b, vec3<f32>(-1071f, global2.a.b.x, global2.a.c.x), vec4<u32>(global2.c.e, 66434u, global2.c.d.x, 24755u), 33204u)), Struct_3(-2317f, u_input.a.x, vec2<bool>(false, true), vec2<bool>(false, false)), global2.c.b)), abs(global2.a.d.yxz) << (vec3<u32>(4294967295u, global2.c.e, global2.c.e) % vec3<u32>(32u))))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, 0u, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, 24582u, 1u), _wgslsmith_add_vec3_u32(global2.a.d.yxy, vec3<u32>(global2.c.d.x, u_input.a.x, u_input.c)))), select(select(vec2<bool>(any(vec4<bool>(true, true, false, false)), true), vec2<bool>(true, true), all(vec2<bool>(true, true))), vec2<bool>(true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true))), select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(true, false, false))), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), true), vec2<bool>(true, all(vec4<bool>(false, false, false, true)) || true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global2.a.c.x - global2.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global2.a.c.yz)) * _wgslsmith_f_op_vec2_f32(-global2.c.c.yy))));
    var var_2 = ~(~vec3<u32>((20552u | global2.c.e) >> (~u_input.d.x % 32u), select(~global2.a.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(84867u, 2682u), u_input.a.zz), any(var_0.c)), 4294967295u));
    global1 = array<Struct_5, 24>();
    return countOneBits(select(_wgslsmith_sub_i32(-(u_input.b ^ -40947i), min(select(11476i, 2147483647i, false), -326i >> (global2.a.d.x % 32u))), (i32(-1i) * -u_input.b) << (~424u % 32u), var_0.c.x));
}

fn func_1(arg_0: Struct_3) -> Struct_4 {
    let var_0 = func_2();
    global1 = array<Struct_5, 24>();
    var var_1 = -1290f;
    global1 = array<Struct_5, 24>();
    global3 = array<Struct_5, 8>();
    return Struct_4(Struct_2(global2.a, ~firstLeadingBit(select(vec4<i32>(u_input.b, var_0, var_0, u_input.b), vec4<i32>(47800i, global2.c.a.x, u_input.b, var_0), vec4<bool>(arg_0.d.x, true, true, arg_0.c.x))), global2.c), Struct_2(global2.c, -global2.b, global2.a), arg_0, vec4<f32>(195f, _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(arg_0.a + -856f)), global2.a.c.x, _wgslsmith_f_op_f32(min(1952f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-286f)) * global2.c.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 475f)))), 0u, vec2<bool>(true, !(global2.a.c.x != global2.c.c.x)), !vec2<bool>(global2.c.c.x >= global2.a.b.x, false)));
    let var_1 = Struct_4(Struct_2(global2.a, firstTrailingBit(abs(_wgslsmith_mult_vec4_i32(global2.b, vec4<i32>(52957i, 6981i, var_0.a.c.a.x, 1i)))), func_1(func_1(func_1(Struct_3(global2.a.b.x, 4294967295u, var_0.c.d, vec2<bool>(var_0.c.c.x, true))).c).c).b.c), Struct_2(func_1(Struct_3(_wgslsmith_f_op_f32(abs(global2.c.c.x)), 1u, var_0.c.d, var_0.c.d)).a.a, vec4<i32>(firstLeadingBit(global2.a.a.x) ^ func_1(var_0.c).a.b.x, _wgslsmith_mod_i32(u_input.b, select(2147483647i, u_input.b, false)), _wgslsmith_clamp_i32(reverseBits(u_input.b), u_input.b ^ var_0.a.a.a.x, u_input.b), 0i), func_1(var_0.c).b.c), func_1(var_0.c).c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.b.x, global2.a.c.x, var_0.a.a.c.x, global2.c.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, 1000f, var_0.c.a, var_0.d.x)))));
    var var_2 = ~global2.a.a.yy;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.d.x)), _wgslsmith_f_op_f32(222f + global2.a.c.x), global2.c.b.x, _wgslsmith_f_op_f32(var_0.b.a.c.x + global2.a.c.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(121f, var_0.c.a, 434f, var_0.c.a) - vec4<f32>(var_0.d.x, -885f, var_1.d.x, -1109f)), func_1(Struct_3(global2.c.b.x, var_1.c.b, var_1.c.c, vec2<bool>(false, true))).d)), vec4<f32>(1057f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1292f, var_1.d.x)) - var_1.c.a), _wgslsmith_f_op_f32(f32(-1f) * -885f), _wgslsmith_f_op_f32(-var_1.c.a)))) + vec4<f32>(-515f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-126f * var_0.a.a.c.x))) + var_1.b.a.c.x), global2.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-257f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-148f - global2.c.b.x) - -1326f))));
    var var_4 = i32(-1i) * -82109i;
    var_4 = 32809i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-23373i, global2.a.a.x, var_0.a.a.a.x), global2.c.a, vec3<i32>(-1i, var_1.b.a.a.x, u_input.b))));
}

