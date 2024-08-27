struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(0u, Struct_1(vec4<u32>(13987u, 4294967295u, 28425u, 3201u), vec4<i32>(i32(-2147483648), i32(-2147483648), 39494i, i32(-2147483648)), 0u, vec3<u32>(0u, 0u, 4294967295u), -48264i), 1000f, -891f, Struct_1(vec4<u32>(31032u, 4294967295u, 17001u, 1u), vec4<i32>(33733i, i32(-2147483648), 1i, -12915i), 1u, vec3<u32>(73554u, 0u, 40310u), -1325i)), Struct_2(85302u, Struct_1(vec4<u32>(4294967295u, 24102u, 0u, 1u), vec4<i32>(2147483647i, -25432i, 5652i, 18780i), 1u, vec3<u32>(0u, 52534u, 0u), -13000i), -282f, -1067f, Struct_1(vec4<u32>(0u, 9557u, 0u, 0u), vec4<i32>(-25821i, 51017i, -14979i, 1i), 0u, vec3<u32>(95713u, 41145u, 0u), 1i)), Struct_2(1u, Struct_1(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<i32>(2147483647i, -37425i, -37737i, i32(-2147483648)), 15335u, vec3<u32>(14420u, 1u, 13009u), -1i), 1008f, 1017f, Struct_1(vec4<u32>(40915u, 1u, 1u, 1u), vec4<i32>(1i, i32(-2147483648), 48929i, 4808i), 4294967295u, vec3<u32>(4294967295u, 107690u, 39284u), -69218i)), Struct_2(1u, Struct_1(vec4<u32>(15546u, 4294967295u, 1u, 0u), vec4<i32>(-43211i, -1i, -50650i, 2147483647i), 0u, vec3<u32>(0u, 4294967295u, 69058u), 6156i), 998f, -355f, Struct_1(vec4<u32>(4294967295u, 2557u, 1u, 40216u), vec4<i32>(0i, 1i, 15056i, -9690i), 4294967295u, vec3<u32>(82974u, 17549u, 1u), 2147483647i)), Struct_2(1u, Struct_1(vec4<u32>(69033u, 0u, 13972u, 0u), vec4<i32>(0i, -26752i, i32(-2147483648), 2147483647i), 895u, vec3<u32>(17012u, 4059u, 31399u), -27439i), 920f, 123f, Struct_1(vec4<u32>(0u, 0u, 1u, 42556u), vec4<i32>(0i, -12350i, -69159i, -35801i), 0u, vec3<u32>(40341u, 4294967295u, 46763u), i32(-2147483648))), Struct_2(70207u, Struct_1(vec4<u32>(4294967295u, 32410u, 8933u, 127161u), vec4<i32>(-29875i, -53190i, 0i, -53548i), 1u, vec3<u32>(20607u, 0u, 4294967295u), 1i), 289f, -398f, Struct_1(vec4<u32>(45249u, 4294967295u, 0u, 68141u), vec4<i32>(-9578i, -51253i, -21569i, -33428i), 0u, vec3<u32>(92104u, 4294967295u, 11725u), -6958i)), Struct_2(7968u, Struct_1(vec4<u32>(48246u, 40441u, 33139u, 72101u), vec4<i32>(-1i, 0i, 9065i, 2147483647i), 58818u, vec3<u32>(16110u, 12676u, 4622u), 0i), 571f, -921f, Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<i32>(16508i, 68242i, 53024i, 27615i), 1u, vec3<u32>(30284u, 1u, 1u), 78545i)), Struct_2(12717u, Struct_1(vec4<u32>(66541u, 4294967295u, 23226u, 0u), vec4<i32>(-1i, i32(-2147483648), 12062i, -1i), 0u, vec3<u32>(0u, 19242u, 0u), -6161i), 519f, 266f, Struct_1(vec4<u32>(133231u, 1u, 23894u, 6132u), vec4<i32>(55042i, -2853i, 0i, 0i), 0u, vec3<u32>(35347u, 1139u, 0u), -25148i)), Struct_2(31168u, Struct_1(vec4<u32>(4294967295u, 4970u, 4294967295u, 41220u), vec4<i32>(-41674i, i32(-2147483648), 1i, 2147483647i), 0u, vec3<u32>(4744u, 4294967295u, 82301u), 0i), 208f, -1122f, Struct_1(vec4<u32>(91609u, 0u, 4294967295u, 45490u), vec4<i32>(2147483647i, -17487i, -24100i, 6729i), 0u, vec3<u32>(13051u, 1u, 3314u), i32(-2147483648))), Struct_2(13268u, Struct_1(vec4<u32>(18174u, 1u, 23751u, 36698u), vec4<i32>(3842i, 35658i, 2147483647i, -1i), 8124u, vec3<u32>(0u, 13338u, 4294967295u), -35475i), -1629f, -923f, Struct_1(vec4<u32>(0u, 1u, 1u, 28894u), vec4<i32>(2147483647i, 1353i, i32(-2147483648), 12727i), 79366u, vec3<u32>(1u, 14824u, 0u), 2592i)), Struct_2(1u, Struct_1(vec4<u32>(1u, 1u, 39121u, 1u), vec4<i32>(19871i, 2147483647i, 525i, -1i), 4294967295u, vec3<u32>(0u, 0u, 4294967295u), -39223i), -945f, -219f, Struct_1(vec4<u32>(49933u, 31922u, 15031u, 0u), vec4<i32>(-62206i, i32(-2147483648), 21846i, 33102i), 0u, vec3<u32>(0u, 32820u, 4294967295u), 30792i)), Struct_2(0u, Struct_1(vec4<u32>(356u, 43943u, 15403u, 30743u), vec4<i32>(1i, 59024i, 2147483647i, 77447i), 1u, vec3<u32>(1u, 0u, 4667u), -53621i), 834f, -141f, Struct_1(vec4<u32>(22728u, 78481u, 32440u, 44787u), vec4<i32>(-6427i, 15415i, 8271i, -1i), 22892u, vec3<u32>(1u, 2674u, 91627u), -1i)), Struct_2(1u, Struct_1(vec4<u32>(4294967295u, 0u, 20798u, 5467u), vec4<i32>(-55702i, -1i, -5487i, -35800i), 13815u, vec3<u32>(1u, 52061u, 5005u), -1i), -458f, -744f, Struct_1(vec4<u32>(4294967295u, 0u, 49962u, 4294967295u), vec4<i32>(-21637i, 1i, 1i, i32(-2147483648)), 3072u, vec3<u32>(31655u, 30463u, 0u), 19665i)), Struct_2(0u, Struct_1(vec4<u32>(55225u, 0u, 0u, 14057u), vec4<i32>(2403i, 23754i, 25286i, i32(-2147483648)), 265u, vec3<u32>(1u, 4294967295u, 24826u), -13352i), -1000f, 713f, Struct_1(vec4<u32>(1518u, 51296u, 1u, 12437u), vec4<i32>(17010i, i32(-2147483648), 10036i, 0i), 3065u, vec3<u32>(68152u, 0u, 1u), -11721i)), Struct_2(60516u, Struct_1(vec4<u32>(1u, 4294967295u, 82403u, 0u), vec4<i32>(-1i, i32(-2147483648), -19615i, 1i), 20782u, vec3<u32>(1u, 0u, 1u), 0i), -1000f, 1504f, Struct_1(vec4<u32>(3352u, 405u, 0u, 43675u), vec4<i32>(2147483647i, 5064i, -1i, -35749i), 1u, vec3<u32>(16887u, 1u, 49937u), 22759i)), Struct_2(6600u, Struct_1(vec4<u32>(0u, 0u, 1u, 34442u), vec4<i32>(622i, -21605i, i32(-2147483648), 10487i), 1u, vec3<u32>(49837u, 78838u, 1u), 3990i), -1194f, 1828f, Struct_1(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<i32>(38037i, 7577i, -1i, i32(-2147483648)), 5540u, vec3<u32>(1u, 1u, 134551u), 1i)), Struct_2(19849u, Struct_1(vec4<u32>(4571u, 18950u, 4294967295u, 4294967295u), vec4<i32>(-1i, -1i, 2876i, 1i), 77112u, vec3<u32>(24291u, 0u, 0u), 10394i), -1860f, -746f, Struct_1(vec4<u32>(4294967295u, 0u, 102829u, 0u), vec4<i32>(23023i, 901i, 10133i, -46251i), 4294967295u, vec3<u32>(5322u, 0u, 1u), 2147483647i)), Struct_2(4294967295u, Struct_1(vec4<u32>(1u, 88703u, 0u, 0u), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 0i), 137u, vec3<u32>(69007u, 10503u, 76779u), 0i), 1000f, -253f, Struct_1(vec4<u32>(0u, 31127u, 4294967295u, 4294967295u), vec4<i32>(5093i, -1i, i32(-2147483648), 61789i), 1u, vec3<u32>(50839u, 4294967295u, 0u), i32(-2147483648))), Struct_2(67181u, Struct_1(vec4<u32>(1u, 1u, 4294967295u, 102827u), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 1i), 0u, vec3<u32>(1u, 69863u, 1u), 51754i), 271f, 664f, Struct_1(vec4<u32>(10599u, 0u, 1u, 55182u), vec4<i32>(-1i, 1379i, 5499i, 1i), 1u, vec3<u32>(0u, 27208u, 24726u), 0i)), Struct_2(29198u, Struct_1(vec4<u32>(54111u, 59681u, 1u, 73184u), vec4<i32>(-63439i, -1i, -48547i, -19795i), 77557u, vec3<u32>(4294967295u, 388u, 6933u), 20683i), 958f, 1000f, Struct_1(vec4<u32>(43429u, 45414u, 1u, 62507u), vec4<i32>(-1i, 27930i, 33800i, 41268i), 49021u, vec3<u32>(8469u, 0u, 35440u), -11933i)), Struct_2(1u, Struct_1(vec4<u32>(0u, 94767u, 0u, 47266u), vec4<i32>(2147483647i, -63602i, 1i, i32(-2147483648)), 39965u, vec3<u32>(0u, 13454u, 1u), 50096i), -898f, 397f, Struct_1(vec4<u32>(39569u, 7508u, 0u, 0u), vec4<i32>(2147483647i, 6384i, 2147483647i, -18341i), 65037u, vec3<u32>(0u, 55071u, 4294967295u), -14958i)), Struct_2(39669u, Struct_1(vec4<u32>(0u, 0u, 1u, 8960u), vec4<i32>(0i, 22505i, i32(-2147483648), i32(-2147483648)), 0u, vec3<u32>(0u, 4294967295u, 25756u), -2959i), 239f, -254f, Struct_1(vec4<u32>(17886u, 0u, 17779u, 26610u), vec4<i32>(32495i, 2147483647i, 42168i, 0i), 5094u, vec3<u32>(4294967295u, 49875u, 11628u), i32(-2147483648))), Struct_2(1718u, Struct_1(vec4<u32>(42820u, 0u, 1u, 75971u), vec4<i32>(0i, -1i, -13991i, -24290i), 1u, vec3<u32>(33396u, 4294967295u, 15046u), -10894i), -1036f, -659f, Struct_1(vec4<u32>(4294967295u, 0u, 60703u, 1u), vec4<i32>(16101i, -1i, i32(-2147483648), -1i), 4294967295u, vec3<u32>(60313u, 0u, 0u), 2476i)), Struct_2(1u, Struct_1(vec4<u32>(96445u, 1u, 0u, 0u), vec4<i32>(16629i, 23960i, 1i, -12025i), 1u, vec3<u32>(25566u, 22341u, 42343u), 0i), -837f, 183f, Struct_1(vec4<u32>(98855u, 7085u, 34114u, 47726u), vec4<i32>(-68065i, 1i, 32511i, -35300i), 4294967295u, vec3<u32>(155265u, 33083u, 1u), -8327i)), Struct_2(1u, Struct_1(vec4<u32>(23979u, 110830u, 4294967295u, 15915u), vec4<i32>(1i, -37357i, 2147483647i, 0i), 27692u, vec3<u32>(1u, 4294967295u, 31983u), i32(-2147483648)), -2056f, -589f, Struct_1(vec4<u32>(0u, 61298u, 73334u, 1u), vec4<i32>(23835i, i32(-2147483648), i32(-2147483648), 2147483647i), 3674u, vec3<u32>(20140u, 10346u, 59669u), 2147483647i)), Struct_2(33220u, Struct_1(vec4<u32>(4294967295u, 11639u, 11988u, 1u), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 0i), 1u, vec3<u32>(6782u, 4294967295u, 34299u), i32(-2147483648)), 1003f, -204f, Struct_1(vec4<u32>(16495u, 4294967295u, 11325u, 72710u), vec4<i32>(-40430i, -16298i, 14876i, i32(-2147483648)), 40251u, vec3<u32>(0u, 28302u, 4294967295u), 2147483647i)), Struct_2(21299u, Struct_1(vec4<u32>(117873u, 0u, 4294967295u, 4294967295u), vec4<i32>(-8341i, -60150i, -58602i, 19862i), 4294967295u, vec3<u32>(1u, 1u, 13798u), 2147483647i), 428f, -1000f, Struct_1(vec4<u32>(11065u, 24336u, 0u, 1u), vec4<i32>(44230i, i32(-2147483648), -52129i, -46023i), 53375u, vec3<u32>(95501u, 37380u, 1u), -24770i)), Struct_2(0u, Struct_1(vec4<u32>(0u, 1u, 1394u, 1u), vec4<i32>(-5045i, 16245i, -43629i, 0i), 1u, vec3<u32>(4294967295u, 43109u, 22329u), -9857i), 359f, 1748f, Struct_1(vec4<u32>(72105u, 2845u, 92598u, 18621u), vec4<i32>(-7875i, 0i, i32(-2147483648), 2147483647i), 4294967295u, vec3<u32>(4294967295u, 11286u, 1u), 2147483647i)), Struct_2(1u, Struct_1(vec4<u32>(4294967295u, 106250u, 70346u, 4294967295u), vec4<i32>(-28526i, 2147483647i, -8191i, -1i), 1245u, vec3<u32>(11373u, 0u, 21597u), i32(-2147483648)), -268f, 123f, Struct_1(vec4<u32>(11596u, 1u, 4294967295u, 4294967295u), vec4<i32>(1i, 0i, i32(-2147483648), 2147483647i), 13192u, vec3<u32>(4294967295u, 0u, 1u), 8143i)));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<u32>(6800u, 1u, 0u, 1u), vec4<i32>(1i, -1i, 5547i, -1i), 17218u, vec3<u32>(43313u, 1u, 17513u), i32(-2147483648)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 44539u), vec4<i32>(-1i, 53961i, 0i, -29785i), 46945u, vec3<u32>(17524u, 1u, 4294967295u), -19988i), Struct_1(vec4<u32>(4294967295u, 46169u, 5257u, 34872u), vec4<i32>(2147483647i, -13791i, 0i, 38506i), 31484u, vec3<u32>(22939u, 4294967295u, 28361u), -1i), Struct_1(vec4<u32>(2111u, 1u, 1u, 640u), vec4<i32>(0i, 26104i, 1i, 6826i), 4294967295u, vec3<u32>(0u, 0u, 4294967295u), 29829i), Struct_1(vec4<u32>(1u, 4294967295u, 30005u, 4294967295u), vec4<i32>(2147483647i, 0i, 11199i, -264i), 0u, vec3<u32>(41477u, 14880u, 53092u), i32(-2147483648)), Struct_1(vec4<u32>(2583u, 12770u, 1u, 1u), vec4<i32>(2147483647i, -51847i, -54773i, 0i), 16874u, vec3<u32>(1u, 22285u, 1u), -16498i), Struct_1(vec4<u32>(5327u, 1u, 0u, 7063u), vec4<i32>(1i, 2147483647i, 0i, 18172i), 29500u, vec3<u32>(1u, 48708u, 1u), i32(-2147483648)), Struct_1(vec4<u32>(63259u, 24830u, 53967u, 36148u), vec4<i32>(1i, i32(-2147483648), 0i, 2147483647i), 98294u, vec3<u32>(1u, 10940u, 40066u), 20436i), Struct_1(vec4<u32>(33006u, 0u, 0u, 4294967295u), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 20370i), 26967u, vec3<u32>(26487u, 1u, 14364u), 2147483647i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    let var_0 = arg_0.a.x;
    var var_1 = !arg_1;
    var var_2 = true;
    return _wgslsmith_mult_vec4_u32(~arg_0.a, abs(_wgslsmith_add_vec4_u32(~max(arg_0.a, arg_0.a), ~vec4<u32>(16731u, u_input.d.x, 53087u, u_input.d.x))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>) -> vec4<i32> {
    let var_0 = Struct_3(~vec4<u32>(u_input.d.x, u_input.d.x, 61341u, 1u), _wgslsmith_sub_vec4_u32(firstTrailingBit(~arg_1.a), arg_1.a), Struct_2(u_input.d.x, Struct_1(~arg_1.a | _wgslsmith_add_vec4_u32(vec4<u32>(59149u, 24214u, arg_1.c, arg_1.d.x), arg_1.a), _wgslsmith_mod_vec4_i32(arg_1.b, vec4<i32>(0i, u_input.c.x, u_input.b, 2147483647i)) << ((vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 11020u) | arg_1.a) % vec4<u32>(32u)), ~_wgslsmith_add_u32(45172u, 80784u), arg_1.d, arg_1.e), -958f, -1142f, Struct_1(func_3(Struct_1(arg_1.a, arg_1.b, u_input.d.x, vec3<u32>(u_input.d.x, arg_1.d.x, 1u), arg_1.e), !arg_2.x), min(vec4<i32>(arg_1.b.x, -21250i, -14154i, -6716i), arg_1.b ^ arg_1.b), ~_wgslsmith_add_u32(1u, 1796u), ~(~arg_1.d), u_input.c.x)), arg_2);
    return arg_1.b;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global1 = array<Struct_1, 9>();
    var var_0 = Struct_1(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x >> (u_input.d.x % 32u), _wgslsmith_mod_u32(4294967295u, ~62136u)) & _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.d.x, _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 4294967295u), u_input.d.x, ~u_input.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.d.x, 0u, u_input.d.x), ~vec4<u32>(4294967295u, 1u, u_input.d.x, 94180u))), _wgslsmith_add_vec4_i32(func_2(any(vec4<bool>(true, true, false, true)), Struct_1(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u), vec4<i32>(arg_0, u_input.c.x, arg_0, u_input.b), min(u_input.d.x, 37419u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.d.x), vec3<u32>(48107u, 48170u, 71666u)), max(24557i, -2147483647i)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), vec4<i32>(firstTrailingBit(-48582i), arg_0, arg_0, -47679i)), u_input.d.x, (_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.d.x, 0u, 0u)), ~vec3<u32>(u_input.d.x, 69988u, u_input.d.x)) >> (firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 6789u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, 0u), vec3<u32>(u_input.d.x, u_input.d.x, 11486u))) % vec3<u32>(32u))) | vec3<u32>(1u, u_input.d.x, 57926u), min(1i, -5885i));
    global0 = array<Struct_2, 29>();
    var var_1 = -2147483647i;
    var_1 = _wgslsmith_clamp_i32(~var_0.e, (i32(-1i) * -50541i) << (func_3(global1[_wgslsmith_index_u32(~var_0.c, 9u)], true).x % 32u), var_0.b.x) ^ u_input.b;
    return Struct_1(var_0.a, var_0.b, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(65564u, 0u, 4294967295u, var_0.d.x) & var_0.a, select(var_0.a, vec4<u32>(u_input.d.x, u_input.d.x, 0u, 38865u), false)), firstLeadingBit(_wgslsmith_add_vec4_u32(var_0.a, var_0.a))), abs(~u_input.d.x), 1u), ~max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, 22363u, 4294967295u), var_0.a.wxx), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.a.x, u_input.d.x), vec3<u32>(4294967295u, 1u, 37719u))) >> (~vec3<u32>(var_0.c & 0u, abs(u_input.d.x), min(0u, var_0.d.x)) % vec3<u32>(32u)), _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, 11985i, -2292i), select(vec3<i32>(-2147483647i, -2147483647i, arg_0), u_input.c, vec3<bool>(true, true, false)))), countOneBits(firstTrailingBit(_wgslsmith_sub_vec3_i32(var_0.b.zzz, vec3<i32>(var_0.e, u_input.a, u_input.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_i32(~27179i, _wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.yz, u_input.c.zx, u_input.c.xz), select(vec2<i32>(u_input.a, u_input.a), u_input.c.xy, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-510f, 1000f) * vec2<f32>(-574f, -1163f)), vec2<f32>(308f, 1122f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(297f, -978f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(834f, 176f), vec2<f32>(-1014f, -1400f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(591f, 154f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-362f, 803f), vec2<f32>(-400f, -649f)))))));
    global1 = array<Struct_1, 9>();
    var var_2 = func_1(2147483647i);
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_1(reverseBits(select(vec4<u32>(4294967295u, 0u, u_input.d.x, 4294967295u), vec4<u32>(u_input.d.x, u_input.d.x, var_2.c, 1u), false)), vec4<i32>(2147483647i, 51079i, u_input.b, var_0) << (func_3(Struct_1(vec4<u32>(var_2.a.x, 4294967295u, var_2.d.x, 15321u), vec4<i32>(var_2.e, u_input.a, var_0, 23348i), u_input.d.x, vec3<u32>(var_2.c, u_input.d.x, var_2.c), 1i), true) % vec4<u32>(32u)), select(~12797u, firstLeadingBit(0u), var_1.x <= -1031f), func_3(global1[_wgslsmith_index_u32(43798u >> (var_2.a.x % 32u), 9u)], true).xxw, -8229i), u_input.d.x != countOneBits(~4294967295u)).x);
}

