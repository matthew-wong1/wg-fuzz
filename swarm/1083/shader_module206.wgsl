struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<bool, 28> = array<bool, 28>(true, true, false, true, true, true, false, true, true, true, true, true, false, false, false, true, false, true, true, false, true, true, true, true, false, true, false, false);

var<private> global2: array<f32, 30>;

var<private> global3: array<i32, 28>;

var<private> global4: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec4<i32>(0i, 24703i, 21048i, 2147483647i), vec2<i32>(-3609i, -1i), vec3<u32>(54638u, 81101u, 1u)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -58341i, -1i), vec2<i32>(-13568i, -1i), vec3<u32>(33522u, 25131u, 4294967295u)), vec4<f32>(-787f, 355f, -859f, -313f), vec2<f32>(-231f, -1599f), vec4<u32>(20836u, 33348u, 18373u, 4294967295u)), Struct_2(Struct_1(vec4<i32>(2147483647i, -37730i, 1i, -7603i), vec2<i32>(i32(-2147483648), 1i), vec3<u32>(0u, 4294967295u, 43138u)), Struct_1(vec4<i32>(-6551i, 3010i, -1i, 13340i), vec2<i32>(1i, i32(-2147483648)), vec3<u32>(67623u, 4294967295u, 47456u)), vec4<f32>(-754f, 589f, -276f, -799f), vec2<f32>(-697f, -320f), vec4<u32>(2370u, 28067u, 91376u, 0u)), Struct_2(Struct_1(vec4<i32>(-44158i, -1i, -35576i, -40786i), vec2<i32>(25803i, -48291i), vec3<u32>(0u, 6615u, 25380u)), Struct_1(vec4<i32>(1i, -19774i, 0i, -52163i), vec2<i32>(-36461i, 0i), vec3<u32>(1u, 16528u, 33572u)), vec4<f32>(1000f, 1711f, 1166f, -274f), vec2<f32>(-401f, -1113f), vec4<u32>(6262u, 1u, 4294967295u, 36978u)), Struct_2(Struct_1(vec4<i32>(-29822i, -46888i, -11406i, i32(-2147483648)), vec2<i32>(-50397i, i32(-2147483648)), vec3<u32>(16574u, 0u, 0u)), Struct_1(vec4<i32>(1i, 0i, 2147483647i, 13105i), vec2<i32>(1i, 2147483647i), vec3<u32>(0u, 4294967295u, 37258u)), vec4<f32>(-658f, 1435f, -145f, -1380f), vec2<f32>(-194f, -1662f), vec4<u32>(0u, 0u, 9544u, 71934u)), Struct_2(Struct_1(vec4<i32>(41045i, -1i, 1i, 22073i), vec2<i32>(-2715i, -15982i), vec3<u32>(4294967295u, 4294967295u, 18028u)), Struct_1(vec4<i32>(-22138i, 2147483647i, 0i, 37568i), vec2<i32>(i32(-2147483648), 44203i), vec3<u32>(111825u, 60771u, 6369u)), vec4<f32>(1696f, 148f, -166f, 375f), vec2<f32>(-1185f, 247f), vec4<u32>(1566u, 10445u, 0u, 35372u)), Struct_2(Struct_1(vec4<i32>(-33178i, -35426i, i32(-2147483648), 4405i), vec2<i32>(39064i, 1i), vec3<u32>(86273u, 0u, 0u)), Struct_1(vec4<i32>(2147483647i, 2147483647i, -7677i, 2147483647i), vec2<i32>(0i, 0i), vec3<u32>(1u, 9736u, 1u)), vec4<f32>(1226f, -466f, 339f, -1046f), vec2<f32>(982f, -2189f), vec4<u32>(1u, 11783u, 26517u, 71887u)), Struct_2(Struct_1(vec4<i32>(1i, 0i, 0i, 37108i), vec2<i32>(i32(-2147483648), 20462i), vec3<u32>(4294967295u, 0u, 27584u)), Struct_1(vec4<i32>(-27566i, 2147483647i, 1i, -4599i), vec2<i32>(42880i, 0i), vec3<u32>(1u, 33800u, 4294967295u)), vec4<f32>(-615f, 521f, 843f, -422f), vec2<f32>(-480f, 1959f), vec4<u32>(42275u, 15044u, 69815u, 4294967295u)), Struct_2(Struct_1(vec4<i32>(1i, 2147483647i, 2147483647i, 34798i), vec2<i32>(2147483647i, 2147483647i), vec3<u32>(1u, 69138u, 73463u)), Struct_1(vec4<i32>(-1i, i32(-2147483648), -45372i, 0i), vec2<i32>(-7224i, 20518i), vec3<u32>(52800u, 86352u, 0u)), vec4<f32>(-1000f, -2469f, 148f, 775f), vec2<f32>(-450f, -1719f), vec4<u32>(4294967295u, 74697u, 25475u, 4294967295u)), Struct_2(Struct_1(vec4<i32>(29243i, 0i, -5439i, 0i), vec2<i32>(-1i, 2147483647i), vec3<u32>(0u, 4294967295u, 62992u)), Struct_1(vec4<i32>(1i, 2147483647i, -6591i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec3<u32>(1u, 11262u, 54215u)), vec4<f32>(-1450f, -666f, 1523f, 583f), vec2<f32>(-153f, 317f), vec4<u32>(1u, 1u, 74034u, 1u)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 1i, -1i, -16958i), vec2<i32>(-10057i, 0i), vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec4<i32>(-60115i, 2147483647i, 1i, 56605i), vec2<i32>(13485i, 4621i), vec3<u32>(0u, 27898u, 9011u)), vec4<f32>(751f, 1276f, 322f, 1028f), vec2<f32>(1105f, -1148f), vec4<u32>(0u, 4294967295u, 0u, 19717u)), Struct_2(Struct_1(vec4<i32>(-69124i, 22436i, 31098i, 1715i), vec2<i32>(4477i, 1i), vec3<u32>(12292u, 54891u, 23930u)), Struct_1(vec4<i32>(17676i, i32(-2147483648), 2147483647i, 41929i), vec2<i32>(-26875i, -1097i), vec3<u32>(0u, 1u, 0u)), vec4<f32>(893f, -521f, 802f, -1348f), vec2<f32>(-269f, -1373f), vec4<u32>(60670u, 73473u, 31216u, 1u)), Struct_2(Struct_1(vec4<i32>(-72967i, -1i, 22098i, 72994i), vec2<i32>(2147483647i, 2147483647i), vec3<u32>(45501u, 1u, 51843u)), Struct_1(vec4<i32>(2147483647i, -4786i, -1i, 11416i), vec2<i32>(i32(-2147483648), 15840i), vec3<u32>(4294967295u, 23469u, 10338u)), vec4<f32>(849f, 105f, 610f, 2802f), vec2<f32>(114f, 1000f), vec4<u32>(1u, 4294967295u, 0u, 9127u)), Struct_2(Struct_1(vec4<i32>(18718i, 44454i, i32(-2147483648), 1i), vec2<i32>(-1i, 43158i), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec4<i32>(2147483647i, 31787i, 1i, 2147483647i), vec2<i32>(2147483647i, 2025i), vec3<u32>(32063u, 18445u, 1u)), vec4<f32>(-1306f, 1600f, 355f, 1542f), vec2<f32>(962f, 1858f), vec4<u32>(1u, 4294967295u, 3u, 6156u)), Struct_2(Struct_1(vec4<i32>(-21728i, 43803i, 23320i, 0i), vec2<i32>(-16932i, 3470i), vec3<u32>(41321u, 128643u, 590u)), Struct_1(vec4<i32>(-1i, -39774i, 2147483647i, -1i), vec2<i32>(0i, 2147483647i), vec3<u32>(24269u, 1u, 82712u)), vec4<f32>(429f, -408f, -1047f, -1233f), vec2<f32>(-794f, -1675f), vec4<u32>(1u, 60356u, 0u, 1u)), Struct_2(Struct_1(vec4<i32>(-16340i, -22922i, -11446i, -10524i), vec2<i32>(i32(-2147483648), 2147483647i), vec3<u32>(75209u, 0u, 50200u)), Struct_1(vec4<i32>(-38841i, 2147483647i, 17517i, i32(-2147483648)), vec2<i32>(51679i, 0i), vec3<u32>(15987u, 49435u, 4294967295u)), vec4<f32>(661f, -725f, 512f, 964f), vec2<f32>(-1091f, -750f), vec4<u32>(18978u, 0u, 1u, 1u)), Struct_2(Struct_1(vec4<i32>(1i, 0i, -1i, -1i), vec2<i32>(i32(-2147483648), -1i), vec3<u32>(50988u, 61991u, 4294967295u)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 1i, 54132i), vec2<i32>(8413i, 1i), vec3<u32>(0u, 0u, 20869u)), vec4<f32>(-315f, -844f, 404f, 1551f), vec2<f32>(-278f, -1321f), vec4<u32>(0u, 68904u, 9584u, 98865u)), Struct_2(Struct_1(vec4<i32>(9324i, -65596i, 21798i, 0i), vec2<i32>(37600i, 1i), vec3<u32>(91171u, 46248u, 22039u)), Struct_1(vec4<i32>(-9950i, -1i, -6671i, 45784i), vec2<i32>(22658i, 9783i), vec3<u32>(0u, 4294967295u, 4294967295u)), vec4<f32>(-1928f, 554f, -1000f, 392f), vec2<f32>(506f, 349f), vec4<u32>(4294967295u, 0u, 4294967295u, 56399u)), Struct_2(Struct_1(vec4<i32>(8612i, 743i, -25287i, 12732i), vec2<i32>(0i, 14962i), vec3<u32>(385u, 13834u, 1u)), Struct_1(vec4<i32>(-7100i, 0i, 1i, -16423i), vec2<i32>(22205i, 57021i), vec3<u32>(54676u, 1u, 0u)), vec4<f32>(1454f, -203f, 1457f, -527f), vec2<f32>(-1035f, 400f), vec4<u32>(1u, 12376u, 0u, 27019u)), Struct_2(Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), -31498i), vec2<i32>(-4931i, 8513i), vec3<u32>(19223u, 0u, 0u)), Struct_1(vec4<i32>(i32(-2147483648), 27387i, -1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec3<u32>(1u, 14958u, 0u)), vec4<f32>(-1000f, 209f, 2569f, 445f), vec2<f32>(683f, -993f), vec4<u32>(4294967295u, 1u, 1u, 25058u)), Struct_2(Struct_1(vec4<i32>(28701i, 26562i, 0i, -92077i), vec2<i32>(10948i, -33678i), vec3<u32>(55154u, 97037u, 1u)), Struct_1(vec4<i32>(16861i, -1i, 1i, -10185i), vec2<i32>(35836i, -27378i), vec3<u32>(0u, 20547u, 4294967295u)), vec4<f32>(499f, 895f, -776f, -321f), vec2<f32>(-1057f, -2408f), vec4<u32>(82700u, 4294967295u, 4294967295u, 4294967295u)), Struct_2(Struct_1(vec4<i32>(39307i, -1i, 0i, -7725i), vec2<i32>(0i, -31486i), vec3<u32>(4294967295u, 0u, 39620u)), Struct_1(vec4<i32>(-38023i, 2147483647i, 2147483647i, 0i), vec2<i32>(i32(-2147483648), -1i), vec3<u32>(39511u, 23544u, 0u)), vec4<f32>(1000f, -1385f, -522f, -244f), vec2<f32>(332f, -2605f), vec4<u32>(2544u, 42736u, 4294967295u, 76369u)), Struct_2(Struct_1(vec4<i32>(3774i, 1i, -31648i, -40048i), vec2<i32>(-1i, 73i), vec3<u32>(0u, 0u, 4294967295u)), Struct_1(vec4<i32>(1i, 39342i, 2147483647i, 0i), vec2<i32>(0i, 2147483647i), vec3<u32>(14613u, 4294967295u, 27590u)), vec4<f32>(-2245f, -922f, -2457f, 612f), vec2<f32>(392f, -917f), vec4<u32>(0u, 30508u, 13874u, 21986u)), Struct_2(Struct_1(vec4<i32>(2147483647i, -61340i, -1i, 39036i), vec2<i32>(0i, 19360i), vec3<u32>(4294967295u, 34519u, 4294967295u)), Struct_1(vec4<i32>(68764i, -20138i, -28023i, i32(-2147483648)), vec2<i32>(1i, -37209i), vec3<u32>(29589u, 108364u, 105175u)), vec4<f32>(136f, -968f, 964f, 439f), vec2<f32>(-1000f, -2669f), vec4<u32>(18561u, 1u, 0u, 0u)), Struct_2(Struct_1(vec4<i32>(22339i, 1798i, 9828i, -1i), vec2<i32>(2147483647i, i32(-2147483648)), vec3<u32>(59814u, 4294967295u, 1u)), Struct_1(vec4<i32>(75675i, -54898i, -32509i, 2147483647i), vec2<i32>(0i, 34707i), vec3<u32>(1u, 0u, 27993u)), vec4<f32>(1213f, 492f, -269f, 586f), vec2<f32>(-2217f, -104f), vec4<u32>(4294967295u, 7501u, 1u, 129831u)), Struct_2(Struct_1(vec4<i32>(-1i, 0i, i32(-2147483648), -1i), vec2<i32>(20376i, -20801i), vec3<u32>(19830u, 0u, 35440u)), Struct_1(vec4<i32>(1i, 2147483647i, 0i, -1i), vec2<i32>(1i, 1i), vec3<u32>(33129u, 1u, 12410u)), vec4<f32>(814f, 506f, -146f, -102f), vec2<f32>(934f, 177f), vec4<u32>(4294967295u, 26044u, 0u, 11905u)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -9932i, 7641i, 2147483647i), vec2<i32>(24306i, -57022i), vec3<u32>(46809u, 0u, 4294967295u)), Struct_1(vec4<i32>(i32(-2147483648), 54638i, -3902i, 0i), vec2<i32>(27587i, -41048i), vec3<u32>(128406u, 1u, 32978u)), vec4<f32>(658f, 701f, -823f, 1952f), vec2<f32>(698f, -230f), vec4<u32>(1u, 8414u, 4294967295u, 26225u)), Struct_2(Struct_1(vec4<i32>(1i, 0i, -37148i, 2147483647i), vec2<i32>(-33718i, -1i), vec3<u32>(24960u, 1u, 20663u)), Struct_1(vec4<i32>(-1i, -93720i, -6629i, -1i), vec2<i32>(-1222i, 1i), vec3<u32>(61658u, 10048u, 1u)), vec4<f32>(-1670f, 125f, 2160f, 1212f), vec2<f32>(658f, 234f), vec4<u32>(4294967295u, 0u, 67777u, 4294967295u)), Struct_2(Struct_1(vec4<i32>(69865i, -1i, 2494i, 1i), vec2<i32>(31003i, -39984i), vec3<u32>(41263u, 29173u, 1u)), Struct_1(vec4<i32>(23487i, -1i, 0i, 1i), vec2<i32>(i32(-2147483648), -1i), vec3<u32>(4294967295u, 74267u, 4294967295u)), vec4<f32>(-162f, 1228f, -904f, -332f), vec2<f32>(410f, 574f), vec4<u32>(1u, 1u, 1u, 38402u)), Struct_2(Struct_1(vec4<i32>(16512i, -32865i, 1i, 34504i), vec2<i32>(-18317i, 39934i), vec3<u32>(1u, 15487u, 1u)), Struct_1(vec4<i32>(41261i, 0i, 59409i, -18087i), vec2<i32>(1i, 2147483647i), vec3<u32>(4294967295u, 27651u, 31096u)), vec4<f32>(-1147f, 1557f, -465f, -2539f), vec2<f32>(1253f, 1000f), vec4<u32>(0u, 0u, 25324u, 4294967295u)), Struct_2(Struct_1(vec4<i32>(1i, 19472i, 7055i, 28623i), vec2<i32>(-32224i, 0i), vec3<u32>(68279u, 13978u, 12791u)), Struct_1(vec4<i32>(24077i, 29632i, 1i, 33920i), vec2<i32>(4128i, -24551i), vec3<u32>(13153u, 64108u, 29149u)), vec4<f32>(-489f, 477f, -661f, -321f), vec2<f32>(-1000f, -629f), vec4<u32>(9816u, 1u, 17462u, 1u)), Struct_2(Struct_1(vec4<i32>(-35083i, 22414i, -40872i, 1i), vec2<i32>(2147483647i, 1i), vec3<u32>(44741u, 45330u, 1u)), Struct_1(vec4<i32>(i32(-2147483648), 5444i, -7635i, 2147483647i), vec2<i32>(1i, -1i), vec3<u32>(0u, 1u, 53790u)), vec4<f32>(-727f, 880f, -1715f, -219f), vec2<f32>(1000f, -857f), vec4<u32>(1u, 0u, 0u, 4294967295u)), Struct_2(Struct_1(vec4<i32>(-36775i, -1i, 1i, -35071i), vec2<i32>(-37333i, i32(-2147483648)), vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec4<i32>(0i, 3924i, 55851i, -35894i), vec2<i32>(-15012i, 30590i), vec3<u32>(1u, 1u, 0u)), vec4<f32>(-1254f, 761f, 1000f, -1091f), vec2<f32>(-1663f, -318f), vec4<u32>(4022u, 32289u, 0u, 4821u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(~reverseBits(~_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 4294967295u), 2752u)), 32u)];
    let var_1 = ~(-var_0.b.a.x);
    global3 = array<i32, 28>();
    let var_2 = -1067f;
    let var_3 = -15681i;
    return select(10226u, var_0.e.x | 21523u, !(false || !global1[_wgslsmith_index_u32(4294967295u, 28u)])) | 25526u;
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_3(Struct_3(vec2<f32>(826f, -463f))), 30u)]) - _wgslsmith_f_op_f32(f32(-1f) * -125f))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(252f, arg_0.x, arg_0.x, -1853f)) + vec4<f32>(-178f, _wgslsmith_f_op_f32(ceil(-1483f)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(42726u, 6578u, u_input.a), vec3<u32>(63185u, u_input.a, 4294967295u)), 30u)], _wgslsmith_f_op_f32(arg_0.x * -1993f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-433f + var_0))), var_0, -432f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-281f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))) - 918f);
    var var_3 = ~_wgslsmith_mod_vec3_i32(-countOneBits(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 28u)], global3[_wgslsmith_index_u32(u_input.a, 28u)], 2147483647i)), _wgslsmith_mult_vec3_i32(reverseBits(abs(vec3<i32>(u_input.b, u_input.b, u_input.b))), vec3<i32>(u_input.b, firstLeadingBit(-1i), 1i)));
    var var_4 = Struct_4(!select(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 28u)], global0.x, global1[_wgslsmith_index_u32(u_input.a, 28u)], global0.x)), !select(vec4<bool>(false, global0.x, true, true), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(8864u, 28u)], false, false), vec4<bool>(global0.x, global0.x, global1[_wgslsmith_index_u32(28456u, 28u)], global0.x)), vec4<bool>(true, global1[_wgslsmith_index_u32(~1u, 28u)], false, any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], true, global1[_wgslsmith_index_u32(24199u, 28u)], global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -606f), vec4<i32>(reverseBits(44379i), 0i, _wgslsmith_sub_i32(31134i, ~global3[_wgslsmith_index_u32(0u, 28u)]) >> (firstLeadingBit(0u) % 32u), var_3.x));
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(min(198f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_1() -> u32 {
    global0 = !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a >> (~u_input.a % 32u), 28u)], false);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(1u, 30u)])), _wgslsmith_f_op_f32(step(444f, -567f)))))));
    var var_1 = vec2<bool>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -936f, any(vec4<bool>(true, false, false, true)))) - _wgslsmith_div_f32(_wgslsmith_div_f32(930f, -1209f), _wgslsmith_f_op_f32(-var_0.x))) < -589f);
    let var_2 = -1659f;
    global0 = select(vec2<bool>(global1[_wgslsmith_index_u32(~(~select(u_input.a, 4294967295u, false)), 28u)], true), select(!select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, false), true), vec2<bool>(global0.x, all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 28u)], var_1.x, var_1.x), vec4<bool>(false, false, true, false), vec4<bool>(global0.x, false, false, true)))), any(select(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 28u)]), select(vec2<bool>(false, true), vec2<bool>(false, global0.x), false), global0.x))), !(!select(vec2<bool>(true, true), select(vec2<bool>(global1[_wgslsmith_index_u32(51450u, 28u)], false), vec2<bool>(true, false), var_1.x), vec2<bool>(true, false))));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(53724u, ~42805u, 4294967295u);
    global0 = vec2<bool>(func_1() <= (select(30652u, 1u, any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 28u)], false))) << (17712u % 32u)), global1[_wgslsmith_index_u32(~u_input.a, 28u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(571f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.a, 30u)])))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 14314u), 30u)]))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(146f, global2[_wgslsmith_index_u32(u_input.a, 30u)]))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -707f), global2[_wgslsmith_index_u32(0u, 30u)])), -688f, _wgslsmith_f_op_f32(abs(-816f))), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 28u)], false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(9206i, u_input.b, 246i) & countOneBits(vec3<i32>(-31921i, u_input.b, global3[_wgslsmith_index_u32(u_input.a, 28u)])), max(vec3<i32>(u_input.b, -6199i, 1i), ~vec3<i32>(-74753i, -11809i, global3[_wgslsmith_index_u32(var_0.x, 28u)])), _wgslsmith_sub_vec3_i32(vec3<i32>(29465i, -2147483647i, -1i) ^ vec3<i32>(global3[_wgslsmith_index_u32(var_0.x, 28u)], 2147483647i, global3[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<i32>(-2147483647i, -24988i, -54920i))), vec3<i32>(-(~u_input.b), -1i, ~_wgslsmith_clamp_i32(-1i, 2147483647i, global3[_wgslsmith_index_u32(16150u, 28u)]))), vec4<i32>(41606i & global3[_wgslsmith_index_u32(~(~0u), 28u)], global3[_wgslsmith_index_u32(u_input.a, 28u)] ^ countOneBits(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(u_input.a, 28u)], global3[_wgslsmith_index_u32(u_input.a, 28u)], global3[_wgslsmith_index_u32(u_input.a, 28u)])), u_input.b, -(u_input.b ^ min(0i, u_input.b))));
}

