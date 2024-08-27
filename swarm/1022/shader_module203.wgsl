struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<i32>(0i, -16617i, 16099i, -77441i), 1665f, vec3<u32>(4294967295u, 15131u, 1u), vec3<i32>(45459i, -3165i, i32(-2147483648)), -23777i), Struct_1(vec4<i32>(37657i, 51605i, 0i, -9425i), 1000f, vec3<u32>(4294967295u, 59476u, 1u), vec3<i32>(12852i, 31203i, -6684i), -50994i), Struct_1(vec4<i32>(0i, i32(-2147483648), 15022i, 1i), -1042f, vec3<u32>(1u, 4294967295u, 41220u), vec3<i32>(-1i, 1i, 0i), -10501i), Struct_1(vec4<i32>(i32(-2147483648), 0i, 2147483647i, -1i), -530f, vec3<u32>(38626u, 49558u, 69460u), vec3<i32>(i32(-2147483648), 2147483647i, -1i), 37988i), Struct_1(vec4<i32>(2147483647i, 300i, 0i, -1i), 922f, vec3<u32>(1u, 34311u, 41780u), vec3<i32>(2147483647i, 0i, 0i), 0i), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 0i, -1i), 734f, vec3<u32>(43103u, 50782u, 7309u), vec3<i32>(-1i, i32(-2147483648), -51657i), i32(-2147483648)), Struct_1(vec4<i32>(2147483647i, -1i, 2147483647i, 0i), -1193f, vec3<u32>(4294967295u, 0u, 0u), vec3<i32>(0i, -23964i, 12578i), 1i), Struct_1(vec4<i32>(-1i, 0i, 56346i, 1i), 1077f, vec3<u32>(4294967295u, 4294967295u, 121767u), vec3<i32>(0i, 1i, i32(-2147483648)), 1i), Struct_1(vec4<i32>(0i, -11625i, -17323i, -1i), 1000f, vec3<u32>(2626u, 17515u, 1u), vec3<i32>(i32(-2147483648), 0i, 2147483647i), 30415i), Struct_1(vec4<i32>(-1i, 1i, 0i, -1i), -138f, vec3<u32>(0u, 1u, 0u), vec3<i32>(2147483647i, 2147483647i, -5692i), -39375i), Struct_1(vec4<i32>(0i, 5601i, i32(-2147483648), -1i), 150f, vec3<u32>(4294967295u, 26583u, 8988u), vec3<i32>(-93375i, -41685i, 0i), -9464i), Struct_1(vec4<i32>(1i, -24866i, 1i, 24742i), -2103f, vec3<u32>(20061u, 49193u, 4294967295u), vec3<i32>(i32(-2147483648), -12753i, 38334i), 9068i), Struct_1(vec4<i32>(1i, 43044i, -1449i, i32(-2147483648)), -119f, vec3<u32>(39181u, 3600u, 4294967295u), vec3<i32>(39307i, -39130i, 0i), -1i), Struct_1(vec4<i32>(-1i, 865i, 8084i, 10201i), 938f, vec3<u32>(50608u, 0u, 19981u), vec3<i32>(31844i, i32(-2147483648), -20391i), -38064i), Struct_1(vec4<i32>(1i, 1i, -1i, 24681i), 1030f, vec3<u32>(0u, 68813u, 87443u), vec3<i32>(1i, i32(-2147483648), 0i), 71141i));

var<private> global1: u32 = 0u;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, -32705i, -1052i), 288f, vec3<u32>(50725u, 4294967295u, 17918u), vec3<i32>(0i, 18234i, 1i), 2147483647i), Struct_1(vec4<i32>(18220i, -47895i, 50818i, 0i), 739f, vec3<u32>(1u, 4294967295u, 4294967295u), vec3<i32>(-1i, 21836i, 0i), -34032i), 34555u, 46669u, vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(vec4<i32>(33442i, 0i, 1i, 24861i), -888f, vec3<u32>(16678u, 26692u, 36934u), vec3<i32>(64753i, 34829i, 1i), i32(-2147483648)), Struct_1(vec4<i32>(i32(-2147483648), 1i, -41222i, -1i), -1796f, vec3<u32>(41762u, 54066u, 39217u), vec3<i32>(-26363i, -5851i, 0i), 4857i), 1u, 36526u, vec2<u32>(88128u, 85092u)), Struct_2(Struct_1(vec4<i32>(-44836i, 32784i, 1i, 2147483647i), -1957f, vec3<u32>(17251u, 1u, 7089u), vec3<i32>(2074i, -31950i, 1i), -1i), Struct_1(vec4<i32>(23760i, -11028i, -43798i, 0i), -626f, vec3<u32>(28700u, 1u, 40813u), vec3<i32>(-11327i, 1i, -20273i), 26589i), 6887u, 4294967295u, vec2<u32>(56600u, 16007u)), Struct_2(Struct_1(vec4<i32>(2395i, 22503i, 1i, -1i), 1513f, vec3<u32>(4294967295u, 14488u, 4294967295u), vec3<i32>(18096i, -32152i, 2147483647i), 12211i), Struct_1(vec4<i32>(5343i, 2147483647i, 2147483647i, i32(-2147483648)), -1288f, vec3<u32>(5377u, 0u, 1u), vec3<i32>(-2805i, 7840i, -54761i), -1i), 20439u, 36002u, vec2<u32>(16841u, 0u)), Struct_2(Struct_1(vec4<i32>(23258i, 29409i, -50614i, 28358i), -1211f, vec3<u32>(6501u, 4294967295u, 37607u), vec3<i32>(1i, 2298i, 1i), -20471i), Struct_1(vec4<i32>(-8394i, 1i, -21189i, 60052i), -865f, vec3<u32>(29635u, 0u, 1u), vec3<i32>(i32(-2147483648), 7109i, -1i), -10231i), 4294967295u, 1u, vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(vec4<i32>(36854i, -42373i, -19126i, 26231i), 2203f, vec3<u32>(1u, 4294967295u, 0u), vec3<i32>(1i, 1i, 1i), 2147483647i), Struct_1(vec4<i32>(2147483647i, 1i, 19568i, -77262i), 358f, vec3<u32>(4294967295u, 34452u, 1u), vec3<i32>(26764i, i32(-2147483648), -60553i), -43348i), 20800u, 0u, vec2<u32>(105152u, 0u)), Struct_2(Struct_1(vec4<i32>(-58744i, 30720i, 30477i, -24865i), -1719f, vec3<u32>(113189u, 4294967295u, 0u), vec3<i32>(2147483647i, 1i, -1i), 29327i), Struct_1(vec4<i32>(-33516i, -27068i, 1i, 2147483647i), -715f, vec3<u32>(4294967295u, 0u, 1480u), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), 0i), 31865u, 61984u, vec2<u32>(7425u, 1u)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 0i), -1000f, vec3<u32>(18347u, 31557u, 42443u), vec3<i32>(1i, 71286i, 2147483647i), 1i), Struct_1(vec4<i32>(1i, 627i, -36271i, -1i), 1000f, vec3<u32>(73476u, 8651u, 2169u), vec3<i32>(16417i, -42171i, 0i), 4491i), 0u, 3872u, vec2<u32>(7209u, 0u)), Struct_2(Struct_1(vec4<i32>(27383i, 14009i, -73758i, -9020i), 834f, vec3<u32>(74523u, 61510u, 50581u), vec3<i32>(45430i, i32(-2147483648), -21952i), 18486i), Struct_1(vec4<i32>(1i, 1i, 2147483647i, 0i), 281f, vec3<u32>(4294967295u, 4294967295u, 40325u), vec3<i32>(1i, -57145i, i32(-2147483648)), i32(-2147483648)), 0u, 1u, vec2<u32>(1u, 0u)), Struct_2(Struct_1(vec4<i32>(1i, -1i, 50616i, 0i), -1218f, vec3<u32>(96898u, 0u, 4294967295u), vec3<i32>(0i, -1i, -13425i), 21019i), Struct_1(vec4<i32>(2147483647i, 1i, -48422i, 2474i), 1000f, vec3<u32>(61019u, 0u, 1u), vec3<i32>(-21083i, -1353i, 46679i), i32(-2147483648)), 4294967295u, 0u, vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(vec4<i32>(30955i, 78709i, -43571i, -1i), -1229f, vec3<u32>(21440u, 38345u, 1u), vec3<i32>(i32(-2147483648), -46923i, -46344i), 1i), Struct_1(vec4<i32>(-1i, 1i, -2593i, i32(-2147483648)), -1311f, vec3<u32>(20001u, 65376u, 30619u), vec3<i32>(i32(-2147483648), 2147483647i, -22448i), i32(-2147483648)), 19324u, 45965u, vec2<u32>(15832u, 60489u)), Struct_2(Struct_1(vec4<i32>(-30173i, i32(-2147483648), 2147483647i, -1i), -923f, vec3<u32>(24891u, 6394u, 1u), vec3<i32>(25798i, -1i, 0i), 34095i), Struct_1(vec4<i32>(-1i, -1i, 2147483647i, -8997i), -522f, vec3<u32>(11025u, 32089u, 66813u), vec3<i32>(-23584i, 23924i, -14064i), 12113i), 100792u, 2898u, vec2<u32>(1u, 3809u)), Struct_2(Struct_1(vec4<i32>(-29854i, 29279i, 45871i, 46908i), 192f, vec3<u32>(72697u, 3290u, 4294967295u), vec3<i32>(1i, -22034i, 40196i), -57636i), Struct_1(vec4<i32>(0i, 2147483647i, -7513i, -1i), -665f, vec3<u32>(1u, 4294967295u, 0u), vec3<i32>(-22584i, -3321i, -85038i), -65910i), 19396u, 1u, vec2<u32>(1u, 54930u)), Struct_2(Struct_1(vec4<i32>(0i, -1i, -40067i, -1i), 715f, vec3<u32>(88291u, 4294967295u, 1u), vec3<i32>(-6637i, 1i, -52071i), -18277i), Struct_1(vec4<i32>(-1i, 2147483647i, -58479i, 21101i), 438f, vec3<u32>(42850u, 0u, 1u), vec3<i32>(2147483647i, -4750i, -7435i), i32(-2147483648)), 1u, 19843u, vec2<u32>(4294967295u, 39572u)), Struct_2(Struct_1(vec4<i32>(-1i, -43023i, -33315i, i32(-2147483648)), -1030f, vec3<u32>(79049u, 1u, 49530u), vec3<i32>(7868i, 16653i, 35633i), 0i), Struct_1(vec4<i32>(i32(-2147483648), -52573i, -14385i, -1i), -1019f, vec3<u32>(36667u, 1u, 1u), vec3<i32>(-18836i, 1i, 2147483647i), -15637i), 3520u, 1u, vec2<u32>(4294967295u, 63513u)), Struct_2(Struct_1(vec4<i32>(-147i, -1i, i32(-2147483648), i32(-2147483648)), 187f, vec3<u32>(0u, 0u, 4294967295u), vec3<i32>(-13105i, 42176i, 23108i), -39324i), Struct_1(vec4<i32>(-1i, 1i, 1i, i32(-2147483648)), -856f, vec3<u32>(0u, 0u, 9529u), vec3<i32>(22701i, i32(-2147483648), i32(-2147483648)), i32(-2147483648)), 4294967295u, 1u, vec2<u32>(4294967295u, 24904u)), Struct_2(Struct_1(vec4<i32>(-620i, 29104i, 1070i, 2147483647i), -668f, vec3<u32>(1u, 65301u, 11691u), vec3<i32>(-40309i, 21837i, 6903i), 2147483647i), Struct_1(vec4<i32>(8468i, 0i, -62145i, 36666i), 2004f, vec3<u32>(1u, 4294967295u, 8375u), vec3<i32>(2147483647i, 16544i, -1i), 1i), 16453u, 10990u, vec2<u32>(0u, 0u)), Struct_2(Struct_1(vec4<i32>(0i, -28428i, -70680i, i32(-2147483648)), -410f, vec3<u32>(30536u, 4294967295u, 24256u), vec3<i32>(0i, -1i, 2147483647i), -22940i), Struct_1(vec4<i32>(7524i, -24864i, -19284i, 0i), -136f, vec3<u32>(0u, 4294967295u, 40076u), vec3<i32>(2147483647i, 0i, i32(-2147483648)), 28080i), 0u, 29235u, vec2<u32>(1u, 61960u)), Struct_2(Struct_1(vec4<i32>(-1i, 58324i, i32(-2147483648), 67823i), 1000f, vec3<u32>(8266u, 4294967295u, 70275u), vec3<i32>(44529i, 96526i, i32(-2147483648)), i32(-2147483648)), Struct_1(vec4<i32>(0i, -7791i, -43845i, 2147483647i), 901f, vec3<u32>(1u, 1u, 40911u), vec3<i32>(0i, 29759i, 33080i), -32754i), 4294967295u, 1843u, vec2<u32>(76917u, 1u)), Struct_2(Struct_1(vec4<i32>(47846i, -53198i, 0i, 0i), -489f, vec3<u32>(0u, 4294967295u, 4294967295u), vec3<i32>(15786i, 24899i, 44074i), -29716i), Struct_1(vec4<i32>(-2328i, 0i, 1i, 33494i), 439f, vec3<u32>(48777u, 4294967295u, 1u), vec3<i32>(8623i, -39560i, 63309i), i32(-2147483648)), 4294967295u, 19667u, vec2<u32>(9476u, 14132u)), Struct_2(Struct_1(vec4<i32>(-1i, -39999i, -48513i, -1i), 2143f, vec3<u32>(1u, 0u, 49213u), vec3<i32>(15764i, 43831i, -1i), 0i), Struct_1(vec4<i32>(i32(-2147483648), -19467i, 1i, 0i), -335f, vec3<u32>(1u, 1u, 23683u), vec3<i32>(-6890i, -10930i, 51889i), i32(-2147483648)), 61305u, 17215u, vec2<u32>(37609u, 4294967295u)), Struct_2(Struct_1(vec4<i32>(6304i, -1i, 2147483647i, 1i), 132f, vec3<u32>(659u, 14963u, 0u), vec3<i32>(1i, -1i, i32(-2147483648)), 77867i), Struct_1(vec4<i32>(-17735i, -1i, -12847i, 64210i), -650f, vec3<u32>(8091u, 26149u, 43508u), vec3<i32>(-1i, -52693i, -1i), 23532i), 4294967295u, 1u, vec2<u32>(0u, 0u)), Struct_2(Struct_1(vec4<i32>(10466i, -13458i, -1i, -16129i), -950f, vec3<u32>(41760u, 27559u, 1u), vec3<i32>(2147483647i, 57119i, -1i), -2213i), Struct_1(vec4<i32>(-1i, 48307i, 27071i, 2147483647i), 378f, vec3<u32>(19555u, 0u, 4362u), vec3<i32>(-28273i, 0i, 2147483647i), 59313i), 34459u, 21465u, vec2<u32>(17625u, 1538u)), Struct_2(Struct_1(vec4<i32>(16765i, 5809i, 0i, 1i), -511f, vec3<u32>(15028u, 1u, 4294967295u), vec3<i32>(50497i, i32(-2147483648), 71387i), -1i), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 0i, 1i), -736f, vec3<u32>(4294967295u, 4294967295u, 1u), vec3<i32>(-8854i, 57127i, i32(-2147483648)), -36322i), 0u, 18011u, vec2<u32>(12498u, 23000u)), Struct_2(Struct_1(vec4<i32>(1062i, -24929i, i32(-2147483648), 0i), -564f, vec3<u32>(4294967295u, 0u, 35306u), vec3<i32>(2147483647i, -1i, 1i), i32(-2147483648)), Struct_1(vec4<i32>(49305i, -3744i, 1i, 0i), 1000f, vec3<u32>(14364u, 1u, 78878u), vec3<i32>(18702i, -30447i, 54603i), 0i), 1u, 23403u, vec2<u32>(44223u, 86863u)), Struct_2(Struct_1(vec4<i32>(1i, 1i, -12915i, -29643i), 1000f, vec3<u32>(0u, 37177u, 0u), vec3<i32>(-328i, 0i, 0i), 0i), Struct_1(vec4<i32>(2147483647i, 6430i, 12385i, 2147483647i), 287f, vec3<u32>(18904u, 1u, 4294967295u), vec3<i32>(1i, -1i, 19844i), -1i), 3350u, 4913u, vec2<u32>(1u, 26436u)), Struct_2(Struct_1(vec4<i32>(12083i, -1i, i32(-2147483648), 1i), 198f, vec3<u32>(4294967295u, 40850u, 0u), vec3<i32>(-59459i, 2147483647i, 15160i), i32(-2147483648)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 0i, 16174i), 630f, vec3<u32>(4294967295u, 4294967295u, 60992u), vec3<i32>(2147483647i, 50795i, 15234i), i32(-2147483648)), 7622u, 11231u, vec2<u32>(18293u, 38179u)), Struct_2(Struct_1(vec4<i32>(-50094i, 2147483647i, -30370i, i32(-2147483648)), 386f, vec3<u32>(72994u, 37543u, 0u), vec3<i32>(i32(-2147483648), -1i, 1i), 1i), Struct_1(vec4<i32>(73169i, 61789i, 0i, i32(-2147483648)), -1972f, vec3<u32>(0u, 4294967295u, 7445u), vec3<i32>(-1i, -27114i, i32(-2147483648)), 16474i), 11063u, 20508u, vec2<u32>(0u, 14769u)), Struct_2(Struct_1(vec4<i32>(-41112i, i32(-2147483648), 11033i, -14804i), 348f, vec3<u32>(47957u, 37993u, 4294967295u), vec3<i32>(0i, -76716i, 10153i), 1i), Struct_1(vec4<i32>(-11631i, 56396i, -6333i, -23266i), -428f, vec3<u32>(1u, 4294967295u, 71702u), vec3<i32>(2147483647i, 0i, 2147483647i), 40072i), 45408u, 0u, vec2<u32>(24398u, 10926u)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 14612i, 1i, i32(-2147483648)), -1048f, vec3<u32>(32443u, 4294967295u, 1u), vec3<i32>(55077i, i32(-2147483648), 29333i), i32(-2147483648)), Struct_1(vec4<i32>(-43107i, -1i, 7059i, 2147483647i), -806f, vec3<u32>(78343u, 25797u, 35914u), vec3<i32>(20148i, 28573i, 2147483647i), 14549i), 1u, 11088u, vec2<u32>(4294967295u, 54928u)));

var<private> global4: array<vec2<i32>, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    global3 = array<Struct_2, 30>();
    var var_0 = max(arg_2.c.xz, vec2<u32>(max(_wgslsmith_div_u32(6562u, 103295u), ~arg_1.x), 53498u) | vec2<u32>(~17782u, arg_1.x));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(~(~u_input.a.x), 0i, _wgslsmith_sub_i32(-min(u_input.b.x, arg_2.a.x), u_input.b.x), u_input.b.x), max(arg_0.b.a, _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(arg_0.b.a), firstTrailingBit(vec4<i32>(arg_0.b.a.x, -43858i, arg_2.a.x, u_input.b.x))), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, arg_2.a.x, 14680i, 40542i), arg_0.b.a)))));
    global2 = firstTrailingBit(~arg_1.x);
    global3 = array<Struct_2, 30>();
    return -arg_2.e;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(-abs(vec4<i32>(41122i, u_input.a.x, u_input.a.x, 2147483647i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1271f - 886f))), ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.c, u_input.c, 4112u)), min(vec3<u32>(4294967295u, 4294967295u, u_input.c), vec3<u32>(u_input.c, 1u, 1u))), vec3<i32>(-_wgslsmith_sub_i32(u_input.b.x, -14917i), -_wgslsmith_sub_i32(0i, u_input.b.x), ~_wgslsmith_sub_i32(u_input.b.x, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-57627i, u_input.a.x), reverseBits(u_input.b.x), func_3(global3[_wgslsmith_index_u32(34322u, 30u)], vec4<u32>(5679u, u_input.c, u_input.c, u_input.c), global0[_wgslsmith_index_u32(32581u, 15u)]), u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 38685i), vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x) | vec4<i32>(27307i, -16175i, u_input.b.x, -75968i)))), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), arg_0.x, vec3<u32>(u_input.c, u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 19287u, u_input.c), vec3<u32>(u_input.c, 4582u, u_input.c) & vec3<u32>(9590u, 63828u, 0u))), u_input.b.xxz, u_input.b.x), u_input.c, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(767u, u_input.c, u_input.c), ~vec3<u32>(1u, 20655u, u_input.c))), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(4078u, u_input.c)), ~vec2<u32>(u_input.c, 1u)));
    global3 = array<Struct_2, 30>();
    let var_1 = vec3<f32>(1114f, _wgslsmith_f_op_f32(f32(-1f) * -1499f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.b, _wgslsmith_f_op_f32(-1803f + arg_1))) + arg_1)));
    let var_2 = var_0.b.c;
    var var_3 = Struct_1(_wgslsmith_mod_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(-21063i, var_0.b.e, var_0.b.a.x, -30124i))), _wgslsmith_sub_vec4_i32(min(vec4<i32>(var_0.b.e, -1i, var_0.b.a.x, -2147483647i), u_input.b), var_0.a.a >> (vec4<u32>(31163u, 4294967295u, var_2.x, 4294967295u) % vec4<u32>(32u)))) | ~u_input.b, arg_0.x, _wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.e.x, abs(0u), 23283u), vec3<u32>(1u, min(u_input.c, 4662u & var_0.e.x), u_input.c)), var_0.a.a.zwy, _wgslsmith_mult_i32(-(-var_0.b.e | var_0.a.e), u_input.b.x | -54098i));
    return var_0.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, _wgslsmith_f_op_f32(-1877f - arg_2), _wgslsmith_div_f32(404f, -2207f), _wgslsmith_f_op_f32(arg_3.b.b - 339f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1010f, 336f, arg_2, 1000f))), arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.b * 983f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, 1180f)) * _wgslsmith_f_op_f32(-arg_3.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -814f))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(min(-vec4<i32>(arg_3.b.a.x, 2147483647i, 0i, -31569i), vec4<i32>(2147483647i, u_input.b.x, -21687i, -11158i)), -(~arg_3.b.a)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-arg_3.b.b), u_input.a.x < arg_3.b.a.x)), arg_3.b.c, u_input.b.zzx | countOneBits(~arg_3.b.d), -26161i), var_0, ~firstTrailingBit(reverseBits(var_0.c.x)), 1u, abs(~arg_3.b.c.yx));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.b, -225f, 245f, -1376f) - vec4<f32>(arg_2, 155f, -349f, arg_3.b.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.b, -1115f, -614f, -1157f) * vec4<f32>(var_1.b.b, 1000f, -134f, -276f)), select(vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, false)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -877f, -552f, 831f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -1703f, arg_2, var_0.b) - vec4<f32>(var_0.b, var_0.b, arg_2, var_1.a.b)))))));
    let var_3 = select(countOneBits(~vec2<u32>(64502u, 1u)) ^ ~vec2<u32>(1u, arg_3.c), abs(select(countOneBits(vec2<u32>(var_1.a.c.x, 62043u)), vec2<u32>(4294967295u, ~arg_3.d), arg_1)), false);
    global4 = array<vec2<i32>, 17>();
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1511f + 1091f), _wgslsmith_f_op_f32(-var_1.a.b), arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_3.b.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-975f, 666f)) + 498f), _wgslsmith_f_op_f32(max(1963f, var_0.b)));
}

fn func_1(arg_0: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -1455f, _wgslsmith_f_op_f32(-arg_0)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -318f) - arg_0), 671f, -556f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-1f), arg_0) * _wgslsmith_f_op_vec3_f32(func_4(vec2<i32>(i32(-1i) * -2147483647i, 1i), true, arg_0, Struct_2(func_2(vec4<f32>(arg_0, 697f, -130f, 1000f), arg_0), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 0u), 15u)], firstTrailingBit(u_input.c), _wgslsmith_mod_u32(1u, 1u), min(vec2<u32>(1u, 1u), vec2<u32>(u_input.c, u_input.c)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2084f)));
    let var_2 = Struct_1(~vec4<i32>(u_input.a.x | 2147483647i, 1i, func_3(Struct_2(global0[_wgslsmith_index_u32(4372u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)], u_input.c, 4294967295u, vec2<u32>(8057u, 122968u)), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), func_2(vec4<f32>(143f, -1153f, -2678f, 837f), 1000f)), -2147483647i), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)), (~vec3<u32>(4294967295u, u_input.c, 4294967295u) | (vec3<u32>(u_input.c, u_input.c, 0u) >> (vec3<u32>(u_input.c, 9696u, u_input.c) % vec3<u32>(32u)))) | _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, 0u), (vec3<u32>(u_input.c, 1u, 71308u) ^ vec3<u32>(u_input.c, 0u, 18839u)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(14054u, 22299u, 20135u), vec3<u32>(1u, 13257u, u_input.c))), -u_input.b.yxz, select(u_input.a.x, -1i, select(min(-1i, u_input.a.x) >= 1i, 473f > var_0.x, true)));
    var var_3 = abs(u_input.b.xww | firstTrailingBit(var_2.a.zwz));
    let var_4 = false;
    return vec4<i32>((_wgslsmith_dot_vec4_i32(-u_input.b, ~vec4<i32>(-4753i, var_3.x, var_2.a.x, 2147483647i)) & (-468i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(-10879i, u_input.b.x)))) << (_wgslsmith_add_u32(u_input.c, _wgslsmith_mult_u32(0u, u_input.c)) % 32u), var_2.d.x, ~(u_input.a.x >> (~_wgslsmith_div_u32(var_2.c.x, 4294967295u) % 32u)), -1i & abs(var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(u_input.b, func_1(-497f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(612f)), -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1224f, 483f))), vec3<u32>(u_input.c, u_input.c, _wgslsmith_mod_u32(u_input.c, 1u)), u_input.b.wzw, abs(-u_input.a.x) & u_input.a.x), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-740f, 1389f, 311f, -407f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(869f, 1266f, 459f, 121f)), select(false, true, false)))), -1357f), ~_wgslsmith_sub_u32(0u, func_2(vec4<f32>(-1457f, -1246f, -1280f, -858f), 948f).c.x) | _wgslsmith_add_u32(~4294967295u, _wgslsmith_clamp_u32(0u, 1u, func_2(vec4<f32>(-2353f, -562f, -194f, -904f), -827f).c.x)), u_input.c, abs(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(267f, 1794f, 999f, -584f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2387f, 1940f, 943f, 1367f), vec4<f32>(-662f, -563f, -387f, 321f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-855f, -1915f))))).c.yy));
    global0 = array<Struct_1, 15>();
    global2 = _wgslsmith_sub_u32(~(~64419u) & var_0.e.x, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-488f, 122f, var_0.a.b, -926f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.b, -638f, var_0.a.b, 137f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)) + 506f)).c.x);
    global4 = array<vec2<i32>, 17>();
    global4 = array<vec2<i32>, 17>();
    let var_1 = -(~(i32(-1i) * -36926i));
    var var_2 = !vec2<bool>(var_0.b.c.x > ~(u_input.c | 4294967295u), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(458f, -1822f)), vec2<f32>(-605f, var_0.b.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-557f, -841f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1028f, -1285f), vec2<f32>(var_0.b.b, var_0.b.b)) * vec2<f32>(var_0.a.b, -519f))))), ~_wgslsmith_clamp_u32(var_0.e.x, ~var_0.a.c.x << (~1u % 32u), firstTrailingBit(u_input.c) | var_0.a.c.x), var_0.a.d.x, ~(~(var_0.a.c.x >> (abs(var_0.a.c.x) % 32u))), var_0.a.c);
}

