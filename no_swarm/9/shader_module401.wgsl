struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec3<bool>(true, true, false), Struct_1(-15588i, vec2<bool>(false, false), vec3<u32>(3753u, 1u, 5853u), 4294967295u, true), Struct_2(Struct_1(-1i, vec2<bool>(true, true), vec3<u32>(4294967295u, 30848u, 82676u), 0u, false), vec3<bool>(true, true, false), 501f, Struct_1(-33179i, vec2<bool>(true, true), vec3<u32>(1u, 65699u, 19149u), 60143u, false), Struct_1(-1i, vec2<bool>(true, false), vec3<u32>(1u, 1u, 48947u), 36541u, true))), Struct_3(vec3<bool>(false, true, false), Struct_1(-69170i, vec2<bool>(true, false), vec3<u32>(4294967295u, 0u, 11646u), 34363u, true), Struct_2(Struct_1(13544i, vec2<bool>(false, true), vec3<u32>(99328u, 42752u, 24550u), 34136u, true), vec3<bool>(true, true, false), 2159f, Struct_1(-18561i, vec2<bool>(true, true), vec3<u32>(62217u, 0u, 5514u), 1u, true), Struct_1(1i, vec2<bool>(false, true), vec3<u32>(1u, 36180u, 0u), 0u, false))), Struct_3(vec3<bool>(false, true, true), Struct_1(-1i, vec2<bool>(false, false), vec3<u32>(0u, 28048u, 4294967295u), 4294967295u, false), Struct_2(Struct_1(-1i, vec2<bool>(true, true), vec3<u32>(1u, 11698u, 1711u), 24245u, false), vec3<bool>(false, true, true), 245f, Struct_1(6936i, vec2<bool>(false, true), vec3<u32>(34400u, 38431u, 28612u), 0u, false), Struct_1(-1i, vec2<bool>(false, true), vec3<u32>(4294967295u, 45214u, 42358u), 0u, false))), Struct_3(vec3<bool>(false, false, true), Struct_1(36301i, vec2<bool>(true, false), vec3<u32>(4294967295u, 0u, 71451u), 4294967295u, true), Struct_2(Struct_1(0i, vec2<bool>(false, false), vec3<u32>(0u, 51834u, 0u), 0u, false), vec3<bool>(false, false, true), -1000f, Struct_1(1i, vec2<bool>(false, true), vec3<u32>(26341u, 4294967295u, 47367u), 0u, false), Struct_1(-1036i, vec2<bool>(true, true), vec3<u32>(0u, 25710u, 2917u), 0u, true))), Struct_3(vec3<bool>(true, true, false), Struct_1(39914i, vec2<bool>(false, true), vec3<u32>(60831u, 4294967295u, 1u), 1u, false), Struct_2(Struct_1(1173i, vec2<bool>(false, false), vec3<u32>(26063u, 4294967295u, 28453u), 62195u, true), vec3<bool>(false, true, true), 1222f, Struct_1(-32021i, vec2<bool>(true, true), vec3<u32>(4294967295u, 1u, 54308u), 74096u, true), Struct_1(i32(-2147483648), vec2<bool>(false, false), vec3<u32>(4462u, 4294967295u, 1u), 0u, true))), Struct_3(vec3<bool>(true, true, true), Struct_1(48884i, vec2<bool>(false, false), vec3<u32>(4294967295u, 28161u, 24015u), 24109u, true), Struct_2(Struct_1(100347i, vec2<bool>(false, true), vec3<u32>(23560u, 12029u, 4294967295u), 0u, true), vec3<bool>(true, true, false), 1006f, Struct_1(i32(-2147483648), vec2<bool>(false, true), vec3<u32>(4294967295u, 0u, 22663u), 1u, true), Struct_1(-61795i, vec2<bool>(false, false), vec3<u32>(16129u, 22218u, 32313u), 0u, true))), Struct_3(vec3<bool>(false, true, false), Struct_1(2147483647i, vec2<bool>(true, true), vec3<u32>(17448u, 30761u, 1u), 0u, true), Struct_2(Struct_1(1i, vec2<bool>(false, false), vec3<u32>(55850u, 4294967295u, 1u), 20588u, true), vec3<bool>(true, true, true), -194f, Struct_1(2147483647i, vec2<bool>(false, false), vec3<u32>(0u, 1u, 4294967295u), 1u, false), Struct_1(i32(-2147483648), vec2<bool>(true, false), vec3<u32>(12852u, 80409u, 39382u), 14058u, true))), Struct_3(vec3<bool>(false, true, false), Struct_1(-1i, vec2<bool>(false, true), vec3<u32>(45191u, 25234u, 12711u), 57064u, true), Struct_2(Struct_1(1i, vec2<bool>(true, false), vec3<u32>(28762u, 4294967295u, 35643u), 28665u, false), vec3<bool>(true, true, false), 1000f, Struct_1(i32(-2147483648), vec2<bool>(true, false), vec3<u32>(1u, 0u, 0u), 94914u, true), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec3<u32>(1u, 4294967295u, 1u), 121758u, true))), Struct_3(vec3<bool>(false, false, true), Struct_1(-14687i, vec2<bool>(false, false), vec3<u32>(1u, 46879u, 0u), 57721u, false), Struct_2(Struct_1(i32(-2147483648), vec2<bool>(true, true), vec3<u32>(7515u, 65067u, 11815u), 16340u, true), vec3<bool>(false, true, true), -333f, Struct_1(0i, vec2<bool>(true, true), vec3<u32>(46207u, 106658u, 76222u), 4294967295u, false), Struct_1(4342i, vec2<bool>(false, false), vec3<u32>(1u, 0u, 0u), 37088u, true))), Struct_3(vec3<bool>(true, false, true), Struct_1(i32(-2147483648), vec2<bool>(true, false), vec3<u32>(4294967295u, 60091u, 1u), 1u, false), Struct_2(Struct_1(0i, vec2<bool>(true, false), vec3<u32>(0u, 51697u, 4294967295u), 6739u, true), vec3<bool>(true, false, true), -505f, Struct_1(2147483647i, vec2<bool>(true, false), vec3<u32>(0u, 77887u, 0u), 4341u, true), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec3<u32>(1u, 3043u, 4294967295u), 4294967295u, true))), Struct_3(vec3<bool>(true, true, false), Struct_1(14712i, vec2<bool>(false, true), vec3<u32>(25169u, 64492u, 56338u), 4294967295u, true), Struct_2(Struct_1(9271i, vec2<bool>(true, false), vec3<u32>(1u, 55214u, 4294967295u), 1u, true), vec3<bool>(false, false, true), -1000f, Struct_1(1i, vec2<bool>(true, true), vec3<u32>(1u, 4134u, 4294967295u), 77134u, true), Struct_1(4024i, vec2<bool>(true, false), vec3<u32>(4294967295u, 1193u, 1u), 59595u, true))), Struct_3(vec3<bool>(true, true, false), Struct_1(8955i, vec2<bool>(true, true), vec3<u32>(22691u, 4294967295u, 0u), 1u, false), Struct_2(Struct_1(-35927i, vec2<bool>(false, false), vec3<u32>(114097u, 4294967295u, 62350u), 147587u, true), vec3<bool>(true, true, false), -889f, Struct_1(-1i, vec2<bool>(true, true), vec3<u32>(0u, 1u, 12201u), 0u, false), Struct_1(1i, vec2<bool>(false, true), vec3<u32>(53043u, 0u, 97869u), 18565u, true))), Struct_3(vec3<bool>(false, true, true), Struct_1(-1i, vec2<bool>(true, false), vec3<u32>(58476u, 0u, 53083u), 0u, false), Struct_2(Struct_1(-29668i, vec2<bool>(false, false), vec3<u32>(40457u, 4294967295u, 0u), 4294967295u, false), vec3<bool>(true, false, false), 147f, Struct_1(-14088i, vec2<bool>(true, true), vec3<u32>(1u, 4294967295u, 0u), 21602u, true), Struct_1(1i, vec2<bool>(false, true), vec3<u32>(4294967295u, 0u, 4294967295u), 49860u, false))), Struct_3(vec3<bool>(false, false, false), Struct_1(53978i, vec2<bool>(false, false), vec3<u32>(4294967295u, 28493u, 86609u), 59646u, true), Struct_2(Struct_1(36840i, vec2<bool>(false, true), vec3<u32>(0u, 4294967295u, 0u), 9858u, true), vec3<bool>(true, false, false), 1165f, Struct_1(-74162i, vec2<bool>(false, false), vec3<u32>(4294967295u, 50606u, 1u), 4294967295u, false), Struct_1(-1367i, vec2<bool>(true, false), vec3<u32>(4294967295u, 60856u, 1u), 11915u, false))), Struct_3(vec3<bool>(true, false, true), Struct_1(-27174i, vec2<bool>(false, true), vec3<u32>(1u, 26250u, 22574u), 34002u, false), Struct_2(Struct_1(i32(-2147483648), vec2<bool>(false, true), vec3<u32>(15226u, 8229u, 24969u), 4294967295u, false), vec3<bool>(true, false, true), 533f, Struct_1(19709i, vec2<bool>(true, true), vec3<u32>(23693u, 4294967295u, 61668u), 4294967295u, true), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec3<u32>(0u, 0u, 13856u), 3582u, true))), Struct_3(vec3<bool>(false, false, false), Struct_1(506i, vec2<bool>(false, true), vec3<u32>(1u, 140849u, 0u), 0u, false), Struct_2(Struct_1(-76466i, vec2<bool>(true, false), vec3<u32>(4294967295u, 0u, 4081u), 4294967295u, false), vec3<bool>(true, true, false), -108f, Struct_1(36320i, vec2<bool>(false, false), vec3<u32>(0u, 47080u, 50891u), 38994u, false), Struct_1(3642i, vec2<bool>(false, false), vec3<u32>(1u, 1u, 0u), 4294967295u, false))), Struct_3(vec3<bool>(false, true, false), Struct_1(1i, vec2<bool>(true, true), vec3<u32>(39753u, 30743u, 30127u), 18593u, false), Struct_2(Struct_1(0i, vec2<bool>(true, false), vec3<u32>(97821u, 76684u, 0u), 62736u, false), vec3<bool>(true, false, true), 202f, Struct_1(-34455i, vec2<bool>(true, false), vec3<u32>(91189u, 22727u, 0u), 4294967295u, true), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec3<u32>(4294967295u, 0u, 3145u), 89407u, false))), Struct_3(vec3<bool>(false, false, false), Struct_1(-5958i, vec2<bool>(true, false), vec3<u32>(0u, 7817u, 25657u), 1u, true), Struct_2(Struct_1(0i, vec2<bool>(true, false), vec3<u32>(16465u, 39608u, 4294967295u), 31692u, true), vec3<bool>(false, true, true), -555f, Struct_1(1294i, vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, 28241u), 15065u, false), Struct_1(0i, vec2<bool>(true, true), vec3<u32>(26740u, 1u, 23859u), 114380u, false))), Struct_3(vec3<bool>(false, false, true), Struct_1(12292i, vec2<bool>(true, false), vec3<u32>(5076u, 73875u, 4294967295u), 1u, false), Struct_2(Struct_1(1i, vec2<bool>(true, false), vec3<u32>(79399u, 4449u, 1u), 4294967295u, true), vec3<bool>(false, false, true), 1000f, Struct_1(-17169i, vec2<bool>(false, false), vec3<u32>(4294967295u, 4020u, 4294967295u), 4294967295u, true), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec3<u32>(13677u, 100889u, 44809u), 4294967295u, false))), Struct_3(vec3<bool>(false, true, false), Struct_1(1i, vec2<bool>(false, true), vec3<u32>(12504u, 1u, 1u), 2342u, true), Struct_2(Struct_1(1i, vec2<bool>(true, true), vec3<u32>(9198u, 0u, 1u), 36729u, true), vec3<bool>(true, false, true), 375f, Struct_1(-6372i, vec2<bool>(true, true), vec3<u32>(25534u, 12653u, 1u), 0u, true), Struct_1(23209i, vec2<bool>(true, true), vec3<u32>(1u, 0u, 4294967295u), 1u, true))));

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(0i, vec2<bool>(true, true), vec3<u32>(19805u, 77668u, 11005u), 4294967295u, false), vec3<bool>(true, true, true), -119f, Struct_1(0i, vec2<bool>(true, false), vec3<u32>(83087u, 1u, 1u), 47497u, false), Struct_1(15376i, vec2<bool>(false, false), vec3<u32>(31957u, 4294967295u, 6689u), 50762u, true)), Struct_2(Struct_1(-1i, vec2<bool>(true, true), vec3<u32>(4294967295u, 1u, 46794u), 80901u, true), vec3<bool>(true, false, true), -498f, Struct_1(i32(-2147483648), vec2<bool>(false, false), vec3<u32>(0u, 0u, 45839u), 723u, false), Struct_1(2147483647i, vec2<bool>(false, false), vec3<u32>(65402u, 46741u, 40458u), 91960u, false)), Struct_2(Struct_1(i32(-2147483648), vec2<bool>(true, false), vec3<u32>(0u, 11796u, 70084u), 26964u, false), vec3<bool>(false, true, true), 228f, Struct_1(-29055i, vec2<bool>(true, true), vec3<u32>(4294u, 64280u, 1u), 1u, true), Struct_1(-1i, vec2<bool>(false, true), vec3<u32>(37950u, 34666u, 0u), 0u, false)), Struct_2(Struct_1(-3067i, vec2<bool>(true, true), vec3<u32>(4294967295u, 10428u, 15807u), 0u, false), vec3<bool>(false, false, false), 1100f, Struct_1(1i, vec2<bool>(true, true), vec3<u32>(0u, 0u, 9155u), 46391u, false), Struct_1(2147483647i, vec2<bool>(true, false), vec3<u32>(1u, 49583u, 52657u), 25214u, true)), Struct_2(Struct_1(-14353i, vec2<bool>(true, false), vec3<u32>(0u, 96171u, 60768u), 19166u, true), vec3<bool>(true, false, false), 1451f, Struct_1(-47119i, vec2<bool>(false, false), vec3<u32>(66455u, 1u, 8021u), 19774u, false), Struct_1(0i, vec2<bool>(false, false), vec3<u32>(49893u, 50863u, 3469u), 1u, false)), Struct_2(Struct_1(-606i, vec2<bool>(true, true), vec3<u32>(1u, 4294967295u, 4294967295u), 0u, true), vec3<bool>(true, true, true), 1564f, Struct_1(285i, vec2<bool>(false, false), vec3<u32>(1u, 55610u, 4294967295u), 11457u, true), Struct_1(798i, vec2<bool>(true, true), vec3<u32>(34865u, 0u, 1u), 0u, false)), Struct_2(Struct_1(62201i, vec2<bool>(true, false), vec3<u32>(23673u, 4294967295u, 0u), 44215u, false), vec3<bool>(true, false, false), 1000f, Struct_1(34152i, vec2<bool>(false, true), vec3<u32>(3506u, 4294967295u, 33016u), 29921u, false), Struct_1(2147483647i, vec2<bool>(true, false), vec3<u32>(61419u, 1u, 1u), 34192u, true)), Struct_2(Struct_1(2147483647i, vec2<bool>(false, false), vec3<u32>(4294967295u, 4294967295u, 4294967295u), 36932u, false), vec3<bool>(false, true, true), -1721f, Struct_1(-1i, vec2<bool>(true, true), vec3<u32>(4294967295u, 4294967295u, 0u), 79623u, false), Struct_1(66316i, vec2<bool>(true, true), vec3<u32>(114550u, 39481u, 1u), 4294967295u, true)), Struct_2(Struct_1(1i, vec2<bool>(false, false), vec3<u32>(0u, 60170u, 35780u), 60805u, true), vec3<bool>(false, false, false), -505f, Struct_1(-25178i, vec2<bool>(false, false), vec3<u32>(1u, 26092u, 0u), 0u, false), Struct_1(1i, vec2<bool>(false, true), vec3<u32>(31238u, 0u, 4294967295u), 4294967295u, true)), Struct_2(Struct_1(458i, vec2<bool>(true, false), vec3<u32>(0u, 4294967295u, 4294967295u), 50752u, true), vec3<bool>(true, false, false), -914f, Struct_1(-1i, vec2<bool>(false, true), vec3<u32>(0u, 32875u, 1u), 1u, true), Struct_1(-2869i, vec2<bool>(false, true), vec3<u32>(2515u, 33323u, 0u), 0u, true)), Struct_2(Struct_1(-33195i, vec2<bool>(false, false), vec3<u32>(17530u, 6283u, 21930u), 43875u, true), vec3<bool>(true, true, false), 447f, Struct_1(-1i, vec2<bool>(true, true), vec3<u32>(36530u, 0u, 4294967295u), 4294967295u, true), Struct_1(-57392i, vec2<bool>(true, false), vec3<u32>(0u, 9550u, 3529u), 4294967295u, true)), Struct_2(Struct_1(2147483647i, vec2<bool>(true, false), vec3<u32>(1u, 1384u, 4294967295u), 4294967295u, true), vec3<bool>(false, true, true), 1312f, Struct_1(i32(-2147483648), vec2<bool>(false, true), vec3<u32>(36907u, 4294967295u, 1u), 1u, true), Struct_1(19352i, vec2<bool>(true, false), vec3<u32>(0u, 4294967295u, 4294967295u), 0u, false)), Struct_2(Struct_1(-1i, vec2<bool>(false, false), vec3<u32>(29290u, 1u, 1u), 47940u, false), vec3<bool>(true, false, false), 388f, Struct_1(14943i, vec2<bool>(true, true), vec3<u32>(37397u, 26760u, 4294967295u), 1u, true), Struct_1(1i, vec2<bool>(true, false), vec3<u32>(27740u, 96565u, 0u), 0u, false)), Struct_2(Struct_1(-19455i, vec2<bool>(true, true), vec3<u32>(1u, 4294967295u, 10880u), 1u, false), vec3<bool>(true, true, true), -1412f, Struct_1(i32(-2147483648), vec2<bool>(true, false), vec3<u32>(48089u, 0u, 0u), 430u, true), Struct_1(24691i, vec2<bool>(false, true), vec3<u32>(44148u, 4294967295u, 98598u), 0u, false)), Struct_2(Struct_1(22265i, vec2<bool>(true, true), vec3<u32>(5944u, 1u, 66893u), 1u, true), vec3<bool>(false, true, true), -593f, Struct_1(-45448i, vec2<bool>(false, false), vec3<u32>(11301u, 38573u, 0u), 77681u, true), Struct_1(2147483647i, vec2<bool>(false, true), vec3<u32>(113957u, 4294967295u, 55379u), 1u, true)), Struct_2(Struct_1(45i, vec2<bool>(true, false), vec3<u32>(86446u, 1u, 23466u), 1u, false), vec3<bool>(true, true, true), 316f, Struct_1(0i, vec2<bool>(false, true), vec3<u32>(31219u, 340u, 4294967295u), 6005u, true), Struct_1(-31983i, vec2<bool>(false, false), vec3<u32>(0u, 5085u, 38168u), 71458u, false)), Struct_2(Struct_1(5005i, vec2<bool>(false, false), vec3<u32>(33536u, 8597u, 4294967295u), 11361u, false), vec3<bool>(true, true, true), 411f, Struct_1(28910i, vec2<bool>(false, false), vec3<u32>(0u, 34586u, 30415u), 4762u, true), Struct_1(i32(-2147483648), vec2<bool>(false, true), vec3<u32>(51983u, 4294967295u, 0u), 4294967295u, true)), Struct_2(Struct_1(2147483647i, vec2<bool>(true, true), vec3<u32>(4294967295u, 4294967295u, 18156u), 1u, true), vec3<bool>(true, false, false), -146f, Struct_1(1i, vec2<bool>(true, false), vec3<u32>(74942u, 4294967295u, 56732u), 0u, false), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec3<u32>(4294967295u, 4294967295u, 1u), 22254u, false)), Struct_2(Struct_1(2147483647i, vec2<bool>(true, false), vec3<u32>(27572u, 59845u, 4294967295u), 1u, false), vec3<bool>(true, false, true), 948f, Struct_1(-1i, vec2<bool>(false, false), vec3<u32>(37u, 53644u, 76374u), 0u, true), Struct_1(22108i, vec2<bool>(false, false), vec3<u32>(4294967295u, 0u, 22763u), 4294967295u, false)));

var<private> global2: array<i32, 2>;

var<private> global3: Struct_5;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec4<u32>) -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.c, arg_2.a.x) - vec2<f32>(1453f, global3.a.c.c)), arg_2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_2.a)))))), !(!(!(global3.a.c.c > -1033f))), global1[_wgslsmith_index_u32(arg_3.x, 19u)], ~arg_0.c.x);
    global3 = Struct_5(global3.a);
    global0 = array<Struct_3, 20>();
    var var_1 = firstLeadingBit(-_wgslsmith_dot_vec3_i32(select(~vec3<i32>(1i, arg_1.a, -8862i), vec3<i32>(-38043i, 0i, 0i), all(vec2<bool>(true, true))), firstTrailingBit(abs(vec3<i32>(0i, 1i, global2[_wgslsmith_index_u32(1u, 2u)])))));
    let var_2 = var_0.c.d.b.x;
    return global3.a.c.d.d;
}

fn func_2(arg_0: Struct_5) -> vec4<bool> {
    global1 = array<Struct_2, 19>();
    var var_0 = ~countOneBits(~func_3(Struct_1(u_input.a, vec2<bool>(arg_0.a.b.e, true), vec3<u32>(45566u, global3.a.b.c.x, 1u), 0u, false), global3.a.b, Struct_4(vec2<f32>(1000f, 1441f), global3.a.b.e, arg_0.a.c, 1u), vec4<u32>(17314u, 0u, 27963u, u_input.c.x)) << (min(global3.a.c.a.d, arg_0.a.b.c.x) % 32u));
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -select(-vec4<i32>(8161i, arg_0.a.c.e.a, global3.a.c.a.a, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(37980i, -3727i, 1i, global2[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec4<i32>(26022i, 20912i, u_input.a, global3.a.c.d.a)), vec4<bool>(false, global3.a.b.b.x, false, true)), ~((firstLeadingBit(vec4<i32>(2147483647i, u_input.a, global3.a.c.e.a, global2[_wgslsmith_index_u32(u_input.b.x, 2u)])) & -vec4<i32>(u_input.a, 2147483647i, 33575i, u_input.a)) << (u_input.c % vec4<u32>(32u))), ~vec4<i32>(_wgslsmith_sub_i32(-arg_0.a.b.a, -2147483647i), 1i, ~(~(-23321i)), abs(_wgslsmith_sub_i32(-20049i, 1i))));
    var var_2 = Struct_5(Struct_3(!global3.a.c.b, Struct_1(max(-18088i, arg_0.a.c.d.a << (arg_0.a.b.c.x % 32u)), vec2<bool>(!arg_0.a.c.b.x, all(vec3<bool>(arg_0.a.a.x, true, true))), ~_wgslsmith_div_vec3_u32(global3.a.b.c, u_input.c.yyy), 1u, !(false == global3.a.b.b.x)), global1[_wgslsmith_index_u32(25979u, 19u)]));
    let var_3 = arg_0.a.b;
    return !select(select(vec4<bool>(global3.a.c.d.b.x, !var_2.a.a.x, var_3.a > -10365i, global3.a.a.x), vec4<bool>(true, true, true, true), !select(vec4<bool>(var_2.a.c.d.e, var_3.b.x, false, true), vec4<bool>(true, var_3.e, true, false), vec4<bool>(false, arg_0.a.c.b.x, var_3.e, true))), vec4<bool>(var_3.e, global3.a.c.c != _wgslsmith_f_op_f32(exp2(var_2.a.c.c)), any(select(arg_0.a.c.b, vec3<bool>(var_3.b.x, true, true), false)), _wgslsmith_f_op_f32(global3.a.c.c + arg_0.a.c.c) > _wgslsmith_f_op_f32(select(arg_0.a.c.c, 766f, var_2.a.c.a.b.x))), any(select(var_2.a.c.b, arg_0.a.a, true)));
}

fn func_4(arg_0: vec4<bool>) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.a.c.c, -684f), vec2<f32>(-333f, global3.a.c.c)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.a.c.c, -1000f))))), global3.a.b.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.a.c.c, 1262f), vec2<f32>(global3.a.c.c, global3.a.c.c))))), true, Struct_2(Struct_1(_wgslsmith_mod_i32(-1i, global3.a.b.a), !global3.a.a.zy, ~vec3<u32>(global3.a.b.d, u_input.c.x, global3.a.b.c.x), ~(~global3.a.c.d.d), arg_0.x), arg_0.wzx, _wgslsmith_f_op_f32(max(global3.a.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-451f - global3.a.c.c) * global3.a.c.c))), global3.a.c.e, global3.a.b), _wgslsmith_mod_u32(_wgslsmith_div_u32(abs(u_input.b.x), 55979u), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.c.a.d, u_input.c.x, global3.a.b.d), u_input.c.wyx)) | 98579u);
}

fn func_1(arg_0: Struct_5) -> i32 {
    var var_0 = Struct_3(!select(global3.a.a, global3.a.c.b, any(global3.a.c.b)), Struct_1(-2324i, select(vec2<bool>(any(global3.a.b.b), all(vec4<bool>(global3.a.b.b.x, arg_0.a.b.b.x, false, global3.a.c.e.e))), select(global3.a.a.xx, select(vec2<bool>(arg_0.a.a.x, arg_0.a.b.b.x), arg_0.a.c.a.b, arg_0.a.b.e), !arg_0.a.c.b.x), all(!vec2<bool>(true, arg_0.a.c.e.e))), abs(~(~arg_0.a.b.c)), 20082u, arg_0.a.c.b.x), global3.a.c);
    var var_1 = 2147483647i;
    var var_2 = func_4(select(select(vec4<bool>(var_0.b.b.x, global3.a.b.b.x, global3.a.b.e || false, true), select(func_2(Struct_5(Struct_3(global3.a.c.b, Struct_1(var_0.b.a, vec2<bool>(var_0.b.b.x, true), arg_0.a.b.c, 50282u, global3.a.c.d.e), Struct_2(Struct_1(arg_0.a.c.a.a, arg_0.a.c.d.b, vec3<u32>(global3.a.b.c.x, arg_0.a.c.a.c.x, var_0.b.d), arg_0.a.c.e.d, true), vec3<bool>(true, true, true), 528f, Struct_1(16186i, var_0.c.d.b, u_input.c.yyz, var_0.c.e.c.x, true), Struct_1(global3.a.b.a, var_0.c.d.b, vec3<u32>(var_0.b.c.x, 41017u, 1u), arg_0.a.c.e.d, true))))), vec4<bool>(var_0.c.a.e, arg_0.a.c.a.b.x, true, true), any(vec4<bool>(true, global3.a.c.d.b.x, false, global3.a.c.b.x))), all(select(vec4<bool>(var_0.b.b.x, global3.a.b.e, global3.a.c.a.b.x, var_0.c.d.b.x), vec4<bool>(false, true, false, var_0.a.x), false))), select(select(select(vec4<bool>(false, global3.a.b.b.x, true, global3.a.b.e), vec4<bool>(var_0.a.x, var_0.a.x, true, false), vec4<bool>(var_0.a.x, global3.a.a.x, true, global3.a.b.b.x)), func_2(Struct_5(Struct_3(vec3<bool>(global3.a.b.e, false, true), global3.a.b, global3.a.c))), any(vec2<bool>(true, true))), !select(vec4<bool>(var_0.b.b.x, true, true, false), vec4<bool>(true, false, true, true), true), false), func_2(arg_0)));
    var var_3 = select(countOneBits(-(abs(vec4<i32>(-37145i, var_2.c.a.a, arg_0.a.c.e.a, global3.a.c.a.a)) & vec4<i32>(-2441i, global3.a.c.d.a, global2[_wgslsmith_index_u32(arg_0.a.b.d, 2u)], var_2.c.e.a))), ~max(~reverseBits(vec4<i32>(u_input.a, var_0.c.e.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(arg_0.a.c.e.a, -6506i, -54895i, -8023i)), min(vec4<i32>(9000i, u_input.a, arg_0.a.c.a.a, var_2.c.d.a), vec4<i32>(arg_0.a.c.e.a, u_input.a, 0i, 1i)), vec4<i32>(2147483647i, global3.a.c.a.a, u_input.a, global2[_wgslsmith_index_u32(u_input.d, 2u)]) >> (u_input.c % vec4<u32>(32u)))), select(!(!vec4<bool>(var_0.b.e, true, false, false)), vec4<bool>(!(!var_2.c.e.e), false, any(var_2.c.d.b) | (false & global3.a.b.b.x), var_2.c.e.e), vec4<bool>(all(!vec4<bool>(var_0.c.d.e, var_0.b.b.x, true, var_2.c.a.e)), _wgslsmith_f_op_f32(ceil(global3.a.c.c)) <= _wgslsmith_f_op_f32(-283f - var_2.c.c), !(true || var_0.a.x), ~var_0.c.d.c.x <= ~u_input.d)));
    let var_4 = select(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_0.a.b.a, var_2.c.e.a, var_3.x, global2[_wgslsmith_index_u32(0u, 2u)]), -vec4<i32>(var_3.x, global2[_wgslsmith_index_u32(var_2.d, 2u)], 32889i, global2[_wgslsmith_index_u32(63352u, 2u)]), var_2.c.a.b.x), _wgslsmith_add_vec4_i32(select(vec4<i32>(-26405i, -1i, global2[_wgslsmith_index_u32(arg_0.a.b.d, 2u)], var_2.c.e.a), vec4<i32>(2147483647i, global3.a.b.a, 18677i, 1i), var_0.b.b.x), vec4<i32>(global3.a.b.a, 1i, 30013i, -19454i) | vec4<i32>(-5065i, global3.a.c.d.a, var_3.x, 0i)), vec4<i32>(11231i, var_3.x & u_input.a, _wgslsmith_div_i32(var_0.c.e.a, var_0.b.a), ~var_2.c.d.a)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, -1i, var_3.x, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.b.a, 1i, 2147483647i, -2147483647i), vec4<i32>(1i, 52239i, global3.a.b.a, 21445i))), reverseBits(firstTrailingBit(vec4<i32>(var_0.c.e.a, var_0.c.a.a, 4796i, 51846i))), vec4<i32>(-global2[_wgslsmith_index_u32(var_2.d, 2u)], _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global3.a.c.a.a, 1i), vec3<i32>(arg_0.a.b.a, global3.a.c.e.a, global2[_wgslsmith_index_u32(1u, 2u)])), ~u_input.a, -2147483647i)), func_2(Struct_5(Struct_3(vec3<bool>(arg_0.a.b.e, var_0.c.e.e, true), var_2.c.d, Struct_2(Struct_1(var_2.c.d.a, vec2<bool>(var_2.b, true), vec3<u32>(3417u, arg_0.a.b.c.x, arg_0.a.b.d), 7218u, true), vec3<bool>(true, var_2.b, false), var_0.c.c, Struct_1(14157i, global3.a.a.yz, vec3<u32>(u_input.c.x, 0u, var_0.c.e.d), global3.a.b.d, true), Struct_1(1i, vec2<bool>(true, false), vec3<u32>(78516u, var_2.c.d.c.x, u_input.d), 4294967295u, global3.a.c.b.x)))))) | vec4<i32>(var_2.c.e.a, 0i, min(-1i, -(global3.a.c.d.a ^ -13552i)), countOneBits(1i));
    return 21570i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a.c.c;
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(func_1(Struct_5(Struct_3(vec3<bool>(global3.a.a.x, false, false), Struct_1(u_input.a, global3.a.a.xy, vec3<u32>(global3.a.b.d, global3.a.c.d.d, 42471u), u_input.c.x, global3.a.c.e.b.x), Struct_2(global3.a.b, vec3<bool>(global3.a.a.x, false, global3.a.a.x), 843f, Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global3.a.c.e.b, u_input.c.yzz, 119665u, false), Struct_1(-12637i, vec2<bool>(false, true), vec3<u32>(u_input.d, 4294967295u, u_input.b.x), 32819u, false))))), ~(-1i)), global3.a.b.a, ~(~76911i), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.d >> (8372u % 32u), 2u)], _wgslsmith_add_i32(~u_input.a, reverseBits(-1i))));
    let var_2 = global3.a;
    var var_3 = vec3<i32>(5930i, var_1.x, -1i);
    global0 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(36943u, ~(~(global3.a.b.d << (abs(0u) % 32u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.c), var_2.c.c, _wgslsmith_f_op_f32(-global3.a.c.c))))), _wgslsmith_add_vec2_i32(reverseBits(firstTrailingBit(~var_3.xy)), var_3.xy));
}

