struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: Struct_2;

var<private> global3: array<vec4<i32>, 28>;

var<private> global4: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec2<bool>(false, false), false, vec3<bool>(true, true, false), vec2<f32>(520f, -1390f), vec3<u32>(1u, 4294967295u, 27518u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(true, true, true), vec2<f32>(2005f, 1035f), vec3<u32>(0u, 1u, 1u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(true, true, false), vec2<f32>(-486f, -245f), vec3<u32>(0u, 37910u, 0u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, true, true), vec2<f32>(123f, -330f), vec3<u32>(1u, 4294967295u, 27207u)), Struct_1(vec2<bool>(false, true), false, vec3<bool>(true, false, false), vec2<f32>(-1000f, -455f), vec3<u32>(11297u, 51861u, 25664u))), Struct_2(Struct_1(vec2<bool>(true, true), true, vec3<bool>(false, false, true), vec2<f32>(859f, -398f), vec3<u32>(11326u, 1u, 0u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, false, false), vec2<f32>(977f, 213f), vec3<u32>(38574u, 1884u, 18880u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(true, true, false), vec2<f32>(-1032f, 209f), vec3<u32>(64444u, 0u, 224u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, true, false), vec2<f32>(-153f, -898f), vec3<u32>(101799u, 84829u, 0u)), Struct_1(vec2<bool>(true, true), true, vec3<bool>(false, false, false), vec2<f32>(914f, 751f), vec3<u32>(4294967295u, 4294967295u, 1u))), Struct_2(Struct_1(vec2<bool>(true, false), true, vec3<bool>(false, true, true), vec2<f32>(131f, -1323f), vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec2<bool>(true, true), true, vec3<bool>(true, true, true), vec2<f32>(605f, 1336f), vec3<u32>(1u, 0u, 29038u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(true, false, false), vec2<f32>(-2813f, -1454f), vec3<u32>(15882u, 0u, 1u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, false, true), vec2<f32>(-2017f, -552f), vec3<u32>(0u, 86566u, 1u)), Struct_1(vec2<bool>(true, true), true, vec3<bool>(true, true, false), vec2<f32>(1541f, -299f), vec3<u32>(30392u, 5573u, 0u))), Struct_2(Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, false, false), vec2<f32>(-869f, 1610f), vec3<u32>(44121u, 0u, 0u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(false, false, false), vec2<f32>(-1429f, -403f), vec3<u32>(27047u, 0u, 4294967295u)), Struct_1(vec2<bool>(false, true), false, vec3<bool>(false, false, false), vec2<f32>(1000f, -2159f), vec3<u32>(41724u, 0u, 47183u)), Struct_1(vec2<bool>(false, true), false, vec3<bool>(false, false, false), vec2<f32>(1023f, 1452f), vec3<u32>(40938u, 4294967295u, 1u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(false, false, false), vec2<f32>(107f, 441f), vec3<u32>(4294967295u, 61001u, 25009u))), Struct_2(Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, false, true), vec2<f32>(-643f, -188f), vec3<u32>(4294967295u, 4294967295u, 31383u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, false, false), vec2<f32>(364f, -1476f), vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, false, true), vec2<f32>(-1389f, -510f), vec3<u32>(91138u, 1u, 0u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, false, false), vec2<f32>(-612f, 1249f), vec3<u32>(0u, 0u, 64732u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(false, false, false), vec2<f32>(-716f, -583f), vec3<u32>(0u, 4294967295u, 1u))), Struct_2(Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, false, true), vec2<f32>(-1000f, 156f), vec3<u32>(82595u, 50756u, 0u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, true, true), vec2<f32>(-717f, 1022f), vec3<u32>(64635u, 36052u, 4294967295u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(false, true, false), vec2<f32>(-1176f, -182f), vec3<u32>(14567u, 1u, 0u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(true, true, true), vec2<f32>(2022f, 163f), vec3<u32>(4294967295u, 48998u, 1u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(true, true, true), vec2<f32>(-568f, 605f), vec3<u32>(4294967295u, 0u, 1u))), Struct_2(Struct_1(vec2<bool>(false, true), true, vec3<bool>(false, true, false), vec2<f32>(116f, -183f), vec3<u32>(4294967295u, 77100u, 63554u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(false, true, true), vec2<f32>(-938f, -1364f), vec3<u32>(1u, 7969u, 0u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(false, false, true), vec2<f32>(263f, -538f), vec3<u32>(100971u, 79330u, 4294967295u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(true, true, false), vec2<f32>(-115f, 335f), vec3<u32>(43020u, 25287u, 0u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(true, true, false), vec2<f32>(293f, -427f), vec3<u32>(1u, 31935u, 2933u))), Struct_2(Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, false, false), vec2<f32>(-616f, 1389f), vec3<u32>(75185u, 4294967295u, 1u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(true, false, false), vec2<f32>(-951f, -1110f), vec3<u32>(18088u, 1u, 7642u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(true, false, false), vec2<f32>(-1088f, 628f), vec3<u32>(1u, 51299u, 4294967295u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(true, false, true), vec2<f32>(-1356f, 208f), vec3<u32>(29209u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, true, true), vec2<f32>(1000f, -523f), vec3<u32>(40556u, 16890u, 15158u))), Struct_2(Struct_1(vec2<bool>(true, false), true, vec3<bool>(true, true, false), vec2<f32>(-1307f, -1569f), vec3<u32>(39733u, 0u, 77693u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(false, true, false), vec2<f32>(-124f, 593f), vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(true, true, true), vec2<f32>(1013f, -2337f), vec3<u32>(17935u, 48861u, 35445u)), Struct_1(vec2<bool>(false, true), false, vec3<bool>(false, false, false), vec2<f32>(-1194f, -131f), vec3<u32>(11603u, 52768u, 1u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, false, false), vec2<f32>(-988f, 886f), vec3<u32>(102011u, 13862u, 4294967295u))), Struct_2(Struct_1(vec2<bool>(true, false), true, vec3<bool>(true, true, true), vec2<f32>(988f, -1040f), vec3<u32>(0u, 4409u, 0u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(false, true, false), vec2<f32>(982f, -691f), vec3<u32>(37046u, 5910u, 4294967295u)), Struct_1(vec2<bool>(true, true), true, vec3<bool>(true, true, false), vec2<f32>(372f, 389f), vec3<u32>(1u, 41986u, 4294967295u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(false, true, true), vec2<f32>(-1494f, -184f), vec3<u32>(4294967295u, 50310u, 0u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(true, false, false), vec2<f32>(444f, -966f), vec3<u32>(0u, 1u, 1u))), Struct_2(Struct_1(vec2<bool>(false, false), false, vec3<bool>(true, true, true), vec2<f32>(-1878f, -941f), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(vec2<bool>(true, true), true, vec3<bool>(false, false, false), vec2<f32>(1301f, -1933f), vec3<u32>(995u, 4294967295u, 58216u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(true, false, true), vec2<f32>(-348f, -641f), vec3<u32>(1u, 26244u, 66372u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(true, false, false), vec2<f32>(-1542f, -1491f), vec3<u32>(66348u, 0u, 23517u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(false, false, false), vec2<f32>(185f, 1000f), vec3<u32>(0u, 61828u, 54845u))), Struct_2(Struct_1(vec2<bool>(true, true), false, vec3<bool>(false, true, false), vec2<f32>(1000f, 1000f), vec3<u32>(0u, 1u, 1528u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(true, false, false), vec2<f32>(106f, -1424f), vec3<u32>(39086u, 4294967295u, 29538u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(true, true, false), vec2<f32>(-496f, 1364f), vec3<u32>(1485u, 0u, 11337u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(true, true, true), vec2<f32>(149f, 271f), vec3<u32>(0u, 4294967295u, 44939u)), Struct_1(vec2<bool>(false, true), false, vec3<bool>(false, true, true), vec2<f32>(448f, -316f), vec3<u32>(35088u, 35731u, 0u))), Struct_2(Struct_1(vec2<bool>(true, true), true, vec3<bool>(false, true, true), vec2<f32>(-1000f, -1259f), vec3<u32>(4294967295u, 53548u, 0u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(true, false, false), vec2<f32>(1541f, -604f), vec3<u32>(4294967295u, 4294967295u, 11991u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(false, false, false), vec2<f32>(-1058f, -611f), vec3<u32>(75967u, 4294967295u, 0u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(false, true, false), vec2<f32>(558f, 1039f), vec3<u32>(0u, 34640u, 1u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(false, false, true), vec2<f32>(-640f, 1987f), vec3<u32>(0u, 10467u, 32726u))), Struct_2(Struct_1(vec2<bool>(false, false), true, vec3<bool>(true, false, false), vec2<f32>(-316f, -183f), vec3<u32>(32917u, 41732u, 33142u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(true, true, false), vec2<f32>(260f, 220f), vec3<u32>(2973u, 48759u, 4294967295u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, true, false), vec2<f32>(-153f, -312f), vec3<u32>(0u, 10095u, 92043u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(false, true, false), vec2<f32>(507f, -123f), vec3<u32>(0u, 1u, 0u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(false, true, false), vec2<f32>(1910f, -1000f), vec3<u32>(1u, 37830u, 94388u))), Struct_2(Struct_1(vec2<bool>(true, true), true, vec3<bool>(true, true, false), vec2<f32>(531f, 883f), vec3<u32>(12955u, 0u, 4294967295u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(false, false, false), vec2<f32>(838f, -368f), vec3<u32>(64949u, 0u, 4731u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, true, false), vec2<f32>(1155f, 741f), vec3<u32>(42848u, 1u, 1u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(false, false, false), vec2<f32>(1329f, 967f), vec3<u32>(20358u, 101302u, 19000u)), Struct_1(vec2<bool>(false, true), false, vec3<bool>(true, true, true), vec2<f32>(-1965f, 426f), vec3<u32>(18815u, 12112u, 12637u))), Struct_2(Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, true, true), vec2<f32>(529f, 1068f), vec3<u32>(65942u, 9487u, 28259u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, true, false), vec2<f32>(189f, 603f), vec3<u32>(0u, 797u, 640u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(false, true, true), vec2<f32>(1839f, -1000f), vec3<u32>(0u, 97846u, 1u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(true, true, true), vec2<f32>(-1462f, 1157f), vec3<u32>(0u, 42566u, 2186u)), Struct_1(vec2<bool>(false, true), false, vec3<bool>(false, false, false), vec2<f32>(-1441f, -225f), vec3<u32>(1u, 36482u, 65396u))), Struct_2(Struct_1(vec2<bool>(false, true), false, vec3<bool>(false, false, true), vec2<f32>(1000f, 858f), vec3<u32>(0u, 1u, 1u)), Struct_1(vec2<bool>(false, true), false, vec3<bool>(true, true, false), vec2<f32>(-835f, -1163f), vec3<u32>(1u, 4294967295u, 46176u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, true, false), vec2<f32>(-777f, 213f), vec3<u32>(39837u, 4294967295u, 1u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(true, true, true), vec2<f32>(475f, -750f), vec3<u32>(4294967295u, 8682u, 52025u)), Struct_1(vec2<bool>(false, true), false, vec3<bool>(true, false, true), vec2<f32>(-780f, 1906f), vec3<u32>(99845u, 0u, 70618u))), Struct_2(Struct_1(vec2<bool>(true, true), false, vec3<bool>(false, false, true), vec2<f32>(109f, -1359f), vec3<u32>(51099u, 0u, 46903u)), Struct_1(vec2<bool>(false, true), false, vec3<bool>(true, false, false), vec2<f32>(622f, 1026f), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(true, true, false), vec2<f32>(-266f, 506f), vec3<u32>(1u, 7552u, 59917u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(true, true, false), vec2<f32>(150f, 2928f), vec3<u32>(925u, 55373u, 4294967295u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(false, false, false), vec2<f32>(-2201f, -427f), vec3<u32>(84530u, 4294967295u, 91037u))), Struct_2(Struct_1(vec2<bool>(false, false), true, vec3<bool>(true, false, false), vec2<f32>(-721f, -281f), vec3<u32>(106481u, 0u, 0u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, true, false), vec2<f32>(-1044f, 1114f), vec3<u32>(4294967295u, 0u, 15305u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(false, true, true), vec2<f32>(-1570f, -955f), vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec2<bool>(true, true), true, vec3<bool>(false, false, false), vec2<f32>(247f, 1303f), vec3<u32>(19995u, 113345u, 11055u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(true, false, false), vec2<f32>(1595f, -781f), vec3<u32>(1u, 0u, 4294967295u))), Struct_2(Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, true, false), vec2<f32>(757f, 825f), vec3<u32>(2306u, 73772u, 33u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(true, true, true), vec2<f32>(-367f, 1000f), vec3<u32>(0u, 29260u, 30110u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, false, true), vec2<f32>(-2018f, 1723f), vec3<u32>(4294967295u, 693u, 32426u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(true, true, true), vec2<f32>(2243f, -541f), vec3<u32>(1u, 2334u, 54106u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(false, true, false), vec2<f32>(-258f, -1775f), vec3<u32>(106887u, 0u, 87216u))), Struct_2(Struct_1(vec2<bool>(false, true), true, vec3<bool>(true, false, true), vec2<f32>(1976f, 138f), vec3<u32>(66071u, 33667u, 96544u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(false, true, true), vec2<f32>(-1538f, -774f), vec3<u32>(50336u, 0u, 53658u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(true, true, true), vec2<f32>(1201f, -471f), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(true, true, true), vec2<f32>(846f, 170f), vec3<u32>(3590u, 1u, 4294967295u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(true, true, false), vec2<f32>(-1393f, 2146f), vec3<u32>(1u, 0u, 4294967295u))), Struct_2(Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, true, true), vec2<f32>(1087f, 1187f), vec3<u32>(67888u, 47815u, 4294967295u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(true, true, false), vec2<f32>(-1283f, -325f), vec3<u32>(0u, 1u, 105160u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, true, false), vec2<f32>(-405f, 824f), vec3<u32>(23916u, 311u, 4603u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, false, true), vec2<f32>(-1477f, 1464f), vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec2<bool>(true, true), true, vec3<bool>(true, false, false), vec2<f32>(322f, -1837f), vec3<u32>(2431u, 24988u, 0u))), Struct_2(Struct_1(vec2<bool>(false, true), true, vec3<bool>(true, false, false), vec2<f32>(-922f, 333f), vec3<u32>(1u, 4294967295u, 59871u)), Struct_1(vec2<bool>(false, true), false, vec3<bool>(false, true, true), vec2<f32>(-407f, 440f), vec3<u32>(1u, 19858u, 0u)), Struct_1(vec2<bool>(false, true), true, vec3<bool>(true, false, false), vec2<f32>(1203f, -869f), vec3<u32>(1u, 21251u, 29016u)), Struct_1(vec2<bool>(false, true), false, vec3<bool>(true, true, true), vec2<f32>(-102f, -1616f), vec3<u32>(4294967295u, 5351u, 68093u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(false, false, true), vec2<f32>(1019f, -1653f), vec3<u32>(0u, 22855u, 11379u))), Struct_2(Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, false, false), vec2<f32>(-213f, 311f), vec3<u32>(10481u, 1u, 0u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(true, false, true), vec2<f32>(-2186f, 1143f), vec3<u32>(92122u, 1593u, 57604u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(true, false, false), vec2<f32>(-2172f, -758f), vec3<u32>(0u, 46480u, 41669u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, true, true), vec2<f32>(-2047f, 186f), vec3<u32>(0u, 134u, 0u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(false, false, false), vec2<f32>(631f, 941f), vec3<u32>(5147u, 0u, 44613u))));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec2<bool>(true, global2.d.c.x);
    global1 = u_input.b;
    let var_1 = ~_wgslsmith_mod_i32(71594i, u_input.a.x);
    global3 = array<vec4<i32>, 28>();
    global3 = array<vec4<i32>, 28>();
    return select(select(select(global2.c.c, select(vec3<bool>(global2.c.a.x, global2.e.c.x, global2.b.b), select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), true), select(global2.b.c, global2.a.c, false)), true && any(vec4<bool>(var_0.x, true, false, true))), !vec3<bool>(global2.a.b, 806f >= global2.e.d.x, true), false), vec3<bool>(all(!(!vec4<bool>(true, true, global2.a.c.x, false))), all(global2.b.c) != global2.b.b, _wgslsmith_f_op_f32(step(-130f, global2.e.d.x)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-367f, global2.d.d.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-2133f)))), 639f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global2.c.d.x)), _wgslsmith_f_op_f32(round(global2.d.d.x))))));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> vec2<f32> {
    let var_0 = Struct_3(Struct_1(arg_1.zw, true, func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.d.x, global2.c.d.x) - global2.d.d))), abs(~(~global2.a.e))), abs(~select(vec2<i32>(0i, -52235i), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.b, u_input.a.x)), false)));
    var var_1 = vec2<f32>(global2.a.d.x, -1631f);
    global4 = array<Struct_2, 24>();
    global2 = global4[_wgslsmith_index_u32(global2.e.e.x, 24u)];
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.a.d, global2.a.d, arg_1.xz)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.a.d.x)), -929f));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = 1i;
    global3 = array<vec4<i32>, 28>();
    var var_1 = u_input.a.yz;
    let var_2 = Struct_3(Struct_1(global2.e.c.xy, global2.b.c.x, global2.d.c, _wgslsmith_f_op_vec2_f32(func_2(!(!global2.e.b), vec4<bool>(global2.b.b, all(vec3<bool>(global2.e.b, true, global2.c.a.x)), global2.a.a.x, true))), select(~select(vec3<u32>(331u, global2.c.e.x, global2.a.e.x), vec3<u32>(30269u, 9064u, 50674u), global2.c.c), ~(vec3<u32>(21497u, global2.a.e.x, 12545u) ^ global2.e.e), func_3())), ~u_input.a.yy);
    var var_3 = -1i;
    return !func_3().x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_1(u_input.b), false, !func_1(u_input.a.x));
    let var_1 = Struct_3(Struct_1(!global2.a.a, true, func_3(), vec2<f32>(_wgslsmith_f_op_f32(-global2.a.d.x), 328f), ~(~global2.d.e & reverseBits(global2.b.e))), -select(select(vec2<i32>(u_input.b, -9298i), u_input.a.xz, true), vec2<i32>(u_input.a.x, max(u_input.a.x, -28420i)), vec2<bool>(!global2.a.a.x, func_3().x)));
    var var_2 = var_1.a;
    let var_3 = any(select(!(!var_1.a.c), !var_1.a.c, true));
    var var_4 = firstLeadingBit(41804u);
    var_2 = Struct_1(var_2.c.xy, var_1.a.a.x, func_3(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_2.d, _wgslsmith_f_op_vec2_f32(sign(var_1.a.d)))) + global2.a.d) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1749f, var_1.a.d.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1378f, var_1.a.d.x) * global2.c.d))), vec3<u32>(66773u & var_2.e.x, abs(var_2.e.x), 0u));
    var_4 = select(22926u, global2.a.e.x, true);
    var var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(~var_5.e.zx), ~(~vec2<u32>(33601u, global2.b.e.x))), vec2<u32>(select(min(17732u, 56461u), _wgslsmith_dot_vec2_u32(var_1.a.e.yz, vec2<u32>(72617u, var_5.e.x)), true), var_5.e.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1233f, _wgslsmith_f_op_f32(-var_2.d.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -419f), var_1.a.d.x) - global2.d.d.x), _wgslsmith_f_op_f32(-var_1.a.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d.x))), var_2.e, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f)), _wgslsmith_f_op_f32(595f + -1611f))))));
}

