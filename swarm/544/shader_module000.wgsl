struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_4(Struct_1(-313f, vec4<u32>(91101u, 0u, 12320u, 30251u), 1u, vec4<u32>(247u, 4294967295u, 33923u, 80043u), 1i), Struct_2(11833u, Struct_1(-135f, vec4<u32>(67887u, 72429u, 49615u, 1u), 1u, vec4<u32>(1u, 1u, 4294967295u, 0u), 7577i), Struct_1(-1000f, vec4<u32>(1u, 0u, 7007u, 1134u), 4729u, vec4<u32>(4294967295u, 23092u, 0u, 3482u), -9025i), 1u, 543f)), vec2<bool>(true, false), false, 39360u);

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_1(-391f, vec4<u32>(50823u, 22435u, 64062u, 80501u), 0u, vec4<u32>(1u, 0u, 60478u, 1u), 50903i), Struct_2(75276u, Struct_1(455f, vec4<u32>(27901u, 4294967295u, 26512u, 4294967295u), 1u, vec4<u32>(35705u, 0u, 4294967295u, 0u), i32(-2147483648)), Struct_1(-358f, vec4<u32>(37302u, 0u, 18280u, 47808u), 19850u, vec4<u32>(2348u, 1u, 7445u, 48117u), 2260i), 4294967295u, 436f), vec2<i32>(0i, -1i), 662f, true), Struct_3(Struct_1(-709f, vec4<u32>(1u, 33058u, 49523u, 1246u), 0u, vec4<u32>(75251u, 1u, 18297u, 0u), 0i), Struct_2(4294967295u, Struct_1(-859f, vec4<u32>(25789u, 4367u, 41261u, 1u), 46905u, vec4<u32>(4294967295u, 33453u, 1u, 1u), -35923i), Struct_1(-441f, vec4<u32>(38083u, 1u, 0u, 4294967295u), 77669u, vec4<u32>(4020u, 74655u, 4294967295u, 32529u), 4174i), 70541u, 168f), vec2<i32>(2147483647i, -1i), 2435f, true), Struct_3(Struct_1(-156f, vec4<u32>(0u, 1u, 1u, 48177u), 0u, vec4<u32>(33898u, 96866u, 43904u, 1u), 7030i), Struct_2(0u, Struct_1(1504f, vec4<u32>(1u, 22183u, 1u, 0u), 20909u, vec4<u32>(11690u, 58403u, 51205u, 14531u), -27198i), Struct_1(-1227f, vec4<u32>(96639u, 53091u, 4294967295u, 1u), 4294967295u, vec4<u32>(31594u, 4674u, 29382u, 1u), -1i), 0u, -157f), vec2<i32>(-15954i, -9357i), -109f, false), Struct_3(Struct_1(1000f, vec4<u32>(4294967295u, 1u, 4294967295u, 22734u), 1u, vec4<u32>(0u, 13927u, 0u, 0u), 7999i), Struct_2(4294967295u, Struct_1(986f, vec4<u32>(0u, 4294967295u, 0u, 4705u), 0u, vec4<u32>(30096u, 0u, 1u, 4294967295u), 2147483647i), Struct_1(807f, vec4<u32>(18181u, 4294967295u, 4294967295u, 1u), 37346u, vec4<u32>(0u, 4294967295u, 25713u, 40992u), 20877i), 4294967295u, 356f), vec2<i32>(-16915i, 9893i), -177f, false), Struct_3(Struct_1(1183f, vec4<u32>(1u, 1u, 25518u, 68776u), 6957u, vec4<u32>(1u, 34496u, 52626u, 1u), -29795i), Struct_2(4620u, Struct_1(-1348f, vec4<u32>(0u, 110051u, 1u, 52017u), 2444u, vec4<u32>(41282u, 54271u, 54795u, 451u), -19161i), Struct_1(-1406f, vec4<u32>(4294967295u, 49398u, 1u, 54882u), 96826u, vec4<u32>(50441u, 45531u, 25030u, 35276u), -41867i), 4294967295u, -2615f), vec2<i32>(15408i, -43710i), 827f, false), Struct_3(Struct_1(-1381f, vec4<u32>(4294967295u, 69452u, 4294967295u, 4294967295u), 1u, vec4<u32>(0u, 42645u, 7499u, 1u), 2147483647i), Struct_2(26111u, Struct_1(-1238f, vec4<u32>(6319u, 13746u, 23991u, 4294967295u), 30011u, vec4<u32>(3082u, 17905u, 27667u, 1u), 0i), Struct_1(-835f, vec4<u32>(1u, 1u, 97825u, 28972u), 19561u, vec4<u32>(2826u, 1u, 4294967295u, 3025u), i32(-2147483648)), 1u, 1000f), vec2<i32>(-1i, 0i), -146f, false), Struct_3(Struct_1(-152f, vec4<u32>(33115u, 7113u, 4294967295u, 4294967295u), 10029u, vec4<u32>(20957u, 6643u, 7120u, 0u), -1i), Struct_2(4294967295u, Struct_1(439f, vec4<u32>(1u, 1u, 60339u, 59432u), 0u, vec4<u32>(30384u, 1u, 58547u, 0u), -13833i), Struct_1(-395f, vec4<u32>(18550u, 21171u, 4294967295u, 0u), 48941u, vec4<u32>(1u, 6650u, 4294967295u, 4294967295u), -19444i), 4866u, -259f), vec2<i32>(-1i, -1i), 1000f, true), Struct_3(Struct_1(1000f, vec4<u32>(0u, 1u, 1u, 0u), 18300u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 68699u), -1i), Struct_2(0u, Struct_1(-303f, vec4<u32>(12553u, 55063u, 0u, 19846u), 84571u, vec4<u32>(17507u, 19107u, 39737u, 1u), 7015i), Struct_1(541f, vec4<u32>(51737u, 4294967295u, 0u, 27889u), 0u, vec4<u32>(36385u, 4294967295u, 0u, 4294967295u), i32(-2147483648)), 62061u, 755f), vec2<i32>(8379i, 25231i), -860f, true), Struct_3(Struct_1(-565f, vec4<u32>(10513u, 83049u, 4294967295u, 1u), 61082u, vec4<u32>(25933u, 1u, 9696u, 107944u), i32(-2147483648)), Struct_2(4294967295u, Struct_1(-119f, vec4<u32>(1u, 0u, 0u, 0u), 0u, vec4<u32>(14211u, 7747u, 36227u, 67076u), 12175i), Struct_1(-1000f, vec4<u32>(43580u, 18132u, 1u, 4294967295u), 1u, vec4<u32>(18661u, 28702u, 10373u, 4294967295u), -110i), 14138u, -837f), vec2<i32>(55074i, -1i), -418f, false), Struct_3(Struct_1(-1807f, vec4<u32>(65659u, 4294967295u, 28905u, 37439u), 0u, vec4<u32>(88414u, 1u, 4294967295u, 106340u), -11557i), Struct_2(4294967295u, Struct_1(-1085f, vec4<u32>(4213u, 40910u, 1u, 28476u), 1u, vec4<u32>(19218u, 20742u, 0u, 0u), -45248i), Struct_1(-1572f, vec4<u32>(30322u, 1u, 1u, 0u), 4294967295u, vec4<u32>(0u, 59207u, 23279u, 4294967295u), i32(-2147483648)), 0u, -1383f), vec2<i32>(1i, 2147483647i), -532f, true), Struct_3(Struct_1(844f, vec4<u32>(1u, 21179u, 1u, 4294967295u), 1u, vec4<u32>(1764u, 0u, 85876u, 22588u), -34560i), Struct_2(4424u, Struct_1(-800f, vec4<u32>(56779u, 1u, 0u, 1u), 0u, vec4<u32>(0u, 25480u, 1u, 1u), 2147483647i), Struct_1(-462f, vec4<u32>(15500u, 4294967295u, 0u, 0u), 1502u, vec4<u32>(8760u, 4294967295u, 6834u, 27744u), -1i), 47477u, 316f), vec2<i32>(-32700i, 70512i), -1543f, true), Struct_3(Struct_1(1118f, vec4<u32>(16619u, 4294967295u, 1u, 0u), 7467u, vec4<u32>(17821u, 0u, 1u, 0u), -1i), Struct_2(1u, Struct_1(-658f, vec4<u32>(0u, 40954u, 6799u, 0u), 67093u, vec4<u32>(23705u, 67034u, 1u, 60631u), i32(-2147483648)), Struct_1(-1000f, vec4<u32>(1u, 53443u, 59358u, 1u), 30660u, vec4<u32>(21713u, 1884u, 38222u, 39840u), 2147483647i), 0u, 1000f), vec2<i32>(1i, 16748i), -114f, false), Struct_3(Struct_1(-287f, vec4<u32>(53684u, 0u, 74020u, 4294967295u), 80617u, vec4<u32>(22236u, 6521u, 31656u, 40830u), 10323i), Struct_2(1u, Struct_1(251f, vec4<u32>(62370u, 6001u, 0u, 46959u), 80408u, vec4<u32>(0u, 12572u, 6571u, 34982u), 1i), Struct_1(-318f, vec4<u32>(30650u, 20664u, 102407u, 47837u), 38849u, vec4<u32>(6670u, 4294967295u, 78562u, 0u), 2147483647i), 3756u, 621f), vec2<i32>(0i, i32(-2147483648)), -916f, true), Struct_3(Struct_1(568f, vec4<u32>(1u, 21927u, 1u, 14731u), 3002u, vec4<u32>(44322u, 4294967295u, 54524u, 38400u), 2147483647i), Struct_2(4294967295u, Struct_1(-354f, vec4<u32>(4294967295u, 1u, 72922u, 0u), 4294967295u, vec4<u32>(1u, 0u, 1u, 1u), -1i), Struct_1(1000f, vec4<u32>(69017u, 28604u, 2805u, 1u), 1u, vec4<u32>(0u, 5580u, 78510u, 64706u), 7856i), 71847u, 1571f), vec2<i32>(30997i, 2147483647i), -390f, true), Struct_3(Struct_1(-1000f, vec4<u32>(27599u, 4521u, 0u, 25879u), 192u, vec4<u32>(32395u, 4070u, 9093u, 13527u), i32(-2147483648)), Struct_2(99199u, Struct_1(1687f, vec4<u32>(0u, 94289u, 28293u, 16954u), 89657u, vec4<u32>(39723u, 108267u, 1u, 0u), 21449i), Struct_1(-1110f, vec4<u32>(30039u, 47860u, 0u, 32206u), 25395u, vec4<u32>(106901u, 16888u, 34399u, 1u), 0i), 43772u, 1656f), vec2<i32>(0i, 36980i), 1078f, false), Struct_3(Struct_1(1243f, vec4<u32>(44252u, 9083u, 1u, 41556u), 48612u, vec4<u32>(0u, 1u, 4294967295u, 4294967295u), 10039i), Struct_2(33564u, Struct_1(490f, vec4<u32>(49545u, 38400u, 4294967295u, 65807u), 4294967295u, vec4<u32>(0u, 0u, 4294967295u, 4294967295u), -3511i), Struct_1(-764f, vec4<u32>(27852u, 4294967295u, 0u, 1u), 39270u, vec4<u32>(1u, 40906u, 55800u, 0u), 19595i), 4294967295u, -1603f), vec2<i32>(-1i, i32(-2147483648)), 556f, true), Struct_3(Struct_1(1483f, vec4<u32>(25164u, 4294967295u, 4294967295u, 33994u), 60852u, vec4<u32>(14805u, 1u, 4294967295u, 45570u), -34326i), Struct_2(4294967295u, Struct_1(1602f, vec4<u32>(60524u, 4294967295u, 4294967295u, 71267u), 0u, vec4<u32>(5467u, 8294u, 4294967295u, 4294967295u), 12739i), Struct_1(116f, vec4<u32>(78013u, 40122u, 97156u, 7980u), 10489u, vec4<u32>(71905u, 0u, 0u, 75152u), 15256i), 0u, -465f), vec2<i32>(0i, 36893i), 1326f, true), Struct_3(Struct_1(785f, vec4<u32>(35554u, 3517u, 0u, 4294967295u), 5103u, vec4<u32>(53845u, 30498u, 62667u, 4294967295u), -1i), Struct_2(60503u, Struct_1(383f, vec4<u32>(9153u, 0u, 1u, 4294967295u), 44106u, vec4<u32>(39554u, 4294967295u, 29166u, 122854u), 2147483647i), Struct_1(287f, vec4<u32>(31318u, 5325u, 18414u, 0u), 4294967295u, vec4<u32>(1u, 0u, 0u, 5845u), 2147483647i), 7440u, -1580f), vec2<i32>(-1i, -13102i), 1000f, true), Struct_3(Struct_1(155f, vec4<u32>(5536u, 4294967295u, 60619u, 4397u), 1u, vec4<u32>(47943u, 13852u, 24425u, 4294967295u), 0i), Struct_2(10761u, Struct_1(1044f, vec4<u32>(1u, 26537u, 4294967295u, 18052u), 1u, vec4<u32>(1u, 0u, 39860u, 1u), -10982i), Struct_1(-1450f, vec4<u32>(4294967295u, 36101u, 46073u, 1u), 1u, vec4<u32>(1u, 2790u, 4294967295u, 18593u), i32(-2147483648)), 56163u, 762f), vec2<i32>(-5646i, 38395i), 1901f, false), Struct_3(Struct_1(229f, vec4<u32>(9946u, 614u, 33694u, 4294967295u), 67549u, vec4<u32>(1u, 1u, 1u, 26076u), 5575i), Struct_2(2593u, Struct_1(830f, vec4<u32>(4294967295u, 4294967295u, 48659u, 114270u), 13512u, vec4<u32>(15525u, 1u, 26478u, 30842u), -31593i), Struct_1(-986f, vec4<u32>(9903u, 18635u, 0u, 9785u), 4294967295u, vec4<u32>(1u, 0u, 10746u, 51347u), 35621i), 13098u, 243f), vec2<i32>(-333i, i32(-2147483648)), 780f, false), Struct_3(Struct_1(2065f, vec4<u32>(0u, 58357u, 0u, 4294967295u), 79522u, vec4<u32>(45285u, 0u, 1u, 0u), 1i), Struct_2(75613u, Struct_1(-1052f, vec4<u32>(59753u, 4294967295u, 31395u, 0u), 34877u, vec4<u32>(1u, 71503u, 4294967295u, 51713u), 2147483647i), Struct_1(1338f, vec4<u32>(1u, 11622u, 3900u, 4294967295u), 1u, vec4<u32>(3750u, 13520u, 53400u, 35494u), 0i), 1u, 712f), vec2<i32>(3670i, 1i), 154f, false), Struct_3(Struct_1(-1669f, vec4<u32>(53501u, 0u, 1u, 29382u), 4294967295u, vec4<u32>(11009u, 1u, 53450u, 0u), 0i), Struct_2(4294967295u, Struct_1(1152f, vec4<u32>(1u, 55643u, 27733u, 4294967295u), 32228u, vec4<u32>(4294967295u, 35876u, 1u, 82969u), i32(-2147483648)), Struct_1(1000f, vec4<u32>(0u, 38508u, 40947u, 1u), 1u, vec4<u32>(40243u, 44249u, 0u, 0u), 70070i), 71035u, 619f), vec2<i32>(1i, -35087i), 500f, true), Struct_3(Struct_1(1219f, vec4<u32>(1u, 1u, 71254u, 4294967295u), 30072u, vec4<u32>(5481u, 0u, 4294967295u, 73761u), -1i), Struct_2(17992u, Struct_1(943f, vec4<u32>(28206u, 933u, 0u, 5794u), 4294967295u, vec4<u32>(11072u, 24343u, 0u, 1u), 1i), Struct_1(1861f, vec4<u32>(99709u, 8404u, 24889u, 0u), 27794u, vec4<u32>(0u, 11205u, 1u, 0u), -7183i), 114942u, 971f), vec2<i32>(-14017i, 2942i), -564f, false), Struct_3(Struct_1(949f, vec4<u32>(4294967295u, 62964u, 1u, 38584u), 4294967295u, vec4<u32>(30217u, 1332u, 0u, 0u), 20556i), Struct_2(70132u, Struct_1(-476f, vec4<u32>(0u, 23585u, 35366u, 4160u), 4294967295u, vec4<u32>(9264u, 16741u, 33566u, 4294967295u), 2147483647i), Struct_1(-2129f, vec4<u32>(4294967295u, 38426u, 47043u, 22589u), 42313u, vec4<u32>(106196u, 0u, 175153u, 4294967295u), -42116i), 0u, -113f), vec2<i32>(16960i, i32(-2147483648)), -1847f, false), Struct_3(Struct_1(-1054f, vec4<u32>(74801u, 44344u, 4294967295u, 4294967295u), 58217u, vec4<u32>(47858u, 4294967295u, 26598u, 2510u), -1i), Struct_2(62598u, Struct_1(392f, vec4<u32>(10891u, 1u, 10742u, 4294967295u), 30794u, vec4<u32>(50235u, 22483u, 29141u, 25710u), 0i), Struct_1(-890f, vec4<u32>(0u, 0u, 4294967295u, 25404u), 4294967295u, vec4<u32>(4362u, 1u, 4294967295u, 4294967295u), 12735i), 4294967295u, 266f), vec2<i32>(i32(-2147483648), i32(-2147483648)), -1000f, true), Struct_3(Struct_1(-1000f, vec4<u32>(15011u, 66258u, 4294967295u, 1u), 0u, vec4<u32>(17187u, 4294967295u, 1u, 32791u), i32(-2147483648)), Struct_2(4294967295u, Struct_1(1547f, vec4<u32>(0u, 54920u, 71549u, 1u), 15444u, vec4<u32>(46506u, 2597u, 1u, 50078u), -1i), Struct_1(-439f, vec4<u32>(13436u, 4294967295u, 3197u, 1u), 0u, vec4<u32>(21783u, 70506u, 18376u, 12928u), i32(-2147483648)), 84183u, -1204f), vec2<i32>(1i, -24806i), 1000f, false), Struct_3(Struct_1(-371f, vec4<u32>(4916u, 3996u, 0u, 48390u), 4294967295u, vec4<u32>(72594u, 11558u, 4294967295u, 57982u), 1i), Struct_2(18766u, Struct_1(1525f, vec4<u32>(1u, 16186u, 1u, 34939u), 0u, vec4<u32>(28593u, 4294967295u, 4625u, 146673u), 2147483647i), Struct_1(-1319f, vec4<u32>(0u, 89189u, 1u, 36730u), 24373u, vec4<u32>(60439u, 21532u, 0u, 1u), 31058i), 4294967295u, -326f), vec2<i32>(-19769i, -1i), -147f, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>) -> bool {
    global1 = array<Struct_3, 27>();
    let var_0 = arg_0.d;
    global1 = array<Struct_3, 27>();
    global0 = Struct_5(Struct_4(Struct_1(_wgslsmith_f_op_f32(1878f - _wgslsmith_div_f32(-1267f, 329f)), ~(~arg_0.b.b.b), 1320u, min(vec4<u32>(global0.a.a.b.x, 0u, 1u, global0.a.a.c) >> (vec4<u32>(4294967295u, 0u, arg_0.a.c, arg_0.a.d.x) % vec4<u32>(32u)), vec4<u32>(global0.d, 4294967295u, global0.d, 4294967295u)), _wgslsmith_dot_vec2_i32(arg_0.c, vec2<i32>(-5305i, u_input.a.x)) & -25092i), Struct_2(arg_0.a.b.x, Struct_1(_wgslsmith_f_op_f32(max(1251f, var_0)), vec4<u32>(global0.a.a.d.x, arg_0.b.b.c, 1u, 1u), 4079u, vec4<u32>(global0.d, global0.d, 11251u, 0u), 2147483647i), Struct_1(_wgslsmith_f_op_f32(590f * 802f), global0.a.a.d, 4294967295u, select(vec4<u32>(7366u, 8468u, 0u, global0.d), global0.a.b.b.d, arg_1.x), global0.a.b.c.e), ~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.b.a))))), !global0.b, true, ~firstTrailingBit(_wgslsmith_mod_u32(1u, arg_0.b.c.b.x)));
    var var_1 = 15395i;
    return true;
}

fn func_3(arg_0: vec2<f32>) -> vec3<u32> {
    var var_0 = !vec2<bool>(!any(vec3<bool>(global0.b.x, false, true)) & !(!global0.b.x), abs(u_input.a.x) <= min(firstTrailingBit(7982i), global0.a.b.c.e));
    let var_1 = Struct_3(Struct_1(global0.a.b.b.a, _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.b.c.b.x, 1u, 48516u, global0.d), ~(vec4<u32>(57565u, 82212u, 4294967295u, 4294967295u) ^ vec4<u32>(global0.a.a.b.x, 83012u, 1u, global0.a.a.b.x))), (1u ^ (global0.d << (global0.d % 32u))) | 1u, _wgslsmith_div_vec4_u32(vec4<u32>(global0.d, global0.d, global0.a.a.c, global0.d), ~global0.a.a.d) & abs(global0.a.b.c.b), 9619i), Struct_2(~(_wgslsmith_dot_vec4_u32(vec4<u32>(31058u, global0.a.b.c.b.x, 4294967295u, global0.d), global0.a.b.b.d) >> (~global0.d % 32u)), global0.a.b.c, Struct_1(-140f, ~global0.a.a.d, global0.d, vec4<u32>(global0.a.a.d.x ^ global0.d, 5813u, global0.d, global0.d), u_input.a.x), global0.a.b.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global0.a.a.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-950f)), _wgslsmith_f_op_f32(sign(112f)))))), u_input.a.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b.b.a - global0.a.a.a)))), var_0.x);
    let var_2 = Struct_5(Struct_4(Struct_1(_wgslsmith_f_op_f32(round(var_1.b.b.a)), ~_wgslsmith_div_vec4_u32(global0.a.b.b.b, global0.a.a.b), global0.d, var_1.a.b, -u_input.a.x ^ global0.a.a.e), global0.a.b), !(!global0.b), true, 32274u);
    global1 = array<Struct_3, 27>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, global0.a.a.a, -425f, 739f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-502f, -459f, -1730f, 2717f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 285f, -392f, var_1.a.a), vec4<f32>(arg_0.x, -708f, var_1.b.e, arg_0.x))), !var_1.e)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1583f, var_2.a.b.e, var_2.a.b.c.a, 640f))) * vec4<f32>(var_2.a.b.b.a, -125f, -1851f, 218f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-510f, 386f, -1254f, -1000f))))), true)));
    return vec3<u32>(26377u, _wgslsmith_mod_u32(var_2.d, _wgslsmith_add_u32(_wgslsmith_clamp_u32(min(var_1.b.b.c, 0u), ~global0.a.b.c.b.x, abs(80985u)), firstTrailingBit(0u << (var_1.a.c % 32u)))), var_2.d);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: Struct_5) -> f32 {
    let var_0 = ~_wgslsmith_add_u32(select(arg_3.d, _wgslsmith_add_u32(reverseBits(68588u), 0u >> (1u % 32u)), func_2(global1[_wgslsmith_index_u32(~10254u, 27u)], select(vec3<bool>(false, true, arg_3.c), vec3<bool>(global0.b.x, arg_3.b.x, false), true))), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global0.d, 49653u, global0.d)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.a, global0.a.b.b.a)))));
    global1 = array<Struct_3, 27>();
    let var_1 = -(select(u_input.a.xxy, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 43565i, -1i), vec3<i32>(arg_0, 9876i, 10191i)), arg_3.b.x) | -u_input.a.wzy) << (_wgslsmith_div_vec3_u32(arg_3.a.b.c.b.xzw, countOneBits(_wgslsmith_add_vec3_u32(~global0.a.a.b.wxy, func_3(arg_1.zz)))) % vec3<u32>(32u));
    global0 = Struct_5(Struct_4(global0.a.a, Struct_2(~(4294967295u & var_0), Struct_1(_wgslsmith_f_op_f32(arg_1.x - global0.a.a.a), ~vec4<u32>(global0.d, 0u, 48781u, 4294967295u), ~4294967295u, ~vec4<u32>(arg_3.a.b.a, arg_3.d, 14002u, arg_3.d), u_input.a.x), arg_3.a.b.c, countOneBits(30252u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(748f + arg_3.a.b.b.a))))), select(!vec2<bool>(global0.c, true), arg_3.b, !arg_3.c), true, ~_wgslsmith_dot_vec2_u32(arg_3.a.a.b.wz, vec2<u32>(var_0, global0.a.b.c.c)));
    var var_2 = arg_3.b.x;
    return _wgslsmith_f_op_f32(max(2344f, arg_1.x));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.a.a, arg_3.d, global0.a.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))));
    global0 = Struct_5(global0.a, global0.b, global0.c, min(4294967295u, arg_3.a.d.x));
    var var_1 = Struct_3(arg_3.b.c, Struct_2(abs(arg_3.b.a), arg_3.a, Struct_1(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-arg_3.d)), firstTrailingBit(max(arg_3.b.b.b, vec4<u32>(15378u, arg_3.a.c, global0.d, arg_3.b.a))), arg_3.a.c, ~_wgslsmith_div_vec4_u32(global0.a.b.b.d, vec4<u32>(0u, global0.a.b.a, 4294967295u, 4294967295u)), u_input.a.x), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(max(var_0.x, arg_0)))), firstLeadingBit(arg_3.c) & vec2<i32>(-_wgslsmith_add_i32(global0.a.a.e, u_input.a.x), 1i), arg_0, true);
    let var_2 = Struct_5(global0.a, select(!vec2<bool>(true, any(vec3<bool>(arg_1, true, true))), global0.b, true), -912f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(415f)))), 1u);
    global1 = array<Struct_3, 27>();
    return Struct_5(Struct_4(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_2)))), vec4<u32>(var_2.d, 0u, func_3(vec2<f32>(-666f, -2137f)).x, reverseBits(32308u)), global0.a.b.d, var_2.a.b.c.d, 1i), arg_3.b), global0.b, any(vec3<bool>(var_1.e, all(vec3<bool>(false, false, arg_3.e)), all(vec4<bool>(global0.c, var_2.c, false, true)))) && false, firstLeadingBit(_wgslsmith_sub_u32(22854u, var_1.a.b.x ^ global0.d) >> ((~arg_3.b.d << (4294967295u % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.a.a * -539f), _wgslsmith_f_op_f32(func_1(0i, vec3<f32>(-756f, -771f, 1055f), vec3<i32>(0i, 2147483647i, u_input.a.x), Struct_5(Struct_4(Struct_1(-539f, global0.a.b.b.d, global0.a.b.b.d.x, vec4<u32>(global0.d, 6817u, global0.d, 4294967295u), -13852i), global0.a.b), global0.b, global0.b.x, 1u))))) * 1584f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global0.a.b.c.a)), -2001f))))), !any(select(global0.b, global0.b, true)) & true, _wgslsmith_f_op_f32(global0.a.b.b.a * _wgslsmith_f_op_f32(floor(-143f))), global1[_wgslsmith_index_u32(reverseBits(0u), 27u)]);
    global1 = array<Struct_3, 27>();
    let var_0 = func_4(global0.a.b.b.a, true == all(vec3<bool>(true, func_4(global0.a.b.e, true, global0.a.a.a, global1[_wgslsmith_index_u32(global0.a.b.c.c, 27u)]).c, global0.c)), -1000f, Struct_3(Struct_1(235f, vec4<u32>(11689u, ~global0.a.b.d, _wgslsmith_mult_u32(1u, 6675u), global0.a.b.d << (0u % 32u)), global0.d, ~global0.a.b.c.b, reverseBits(reverseBits(17286i))), global0.a.b, _wgslsmith_div_vec2_i32(min(vec2<i32>(global0.a.a.e, -2147483647i), vec2<i32>(global0.a.a.e, u_input.a.x)), vec2<i32>(2147483647i, u_input.a.x)) >> (global0.a.a.b.yy % vec2<u32>(32u)), _wgslsmith_f_op_f32(-global0.a.a.a), func_4(global0.a.b.e, true & any(vec3<bool>(global0.b.x, true, global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b.c.a) * global0.a.a.a), global1[_wgslsmith_index_u32(global0.d, 27u)]).b.x)).a.b;
    let var_1 = vec3<u32>(4294967295u, reverseBits(var_0.b.d.x), ~(~abs(firstTrailingBit(var_0.b.c))));
    var var_2 = Struct_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a - -1519f) - 1f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1075f + var_0.e), _wgslsmith_f_op_f32(ceil(var_0.b.a)))), _wgslsmith_f_op_f32(-424f + global0.a.b.b.a) != _wgslsmith_f_op_f32(-1369f * 1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.a.a - _wgslsmith_f_op_f32(-global0.a.a.a)), var_0.b.a)), Struct_3(var_0.b, Struct_2(26546u, global0.a.b.c, global0.a.a, 1u, _wgslsmith_f_op_f32(step(global0.a.b.c.a, global0.a.b.c.a))), vec2<i32>(1i, 72822i), global0.a.b.b.a, !(!global0.c))).a, global0.b, global0.b.x, _wgslsmith_clamp_u32(var_1.x, abs(11201u), global0.d));
    let var_3 = !vec4<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(global0.c, var_2.b.x, false, var_2.c), false), select(false, global0.c, var_2.c))), true, !any(func_4(global0.a.a.a, global0.c, global0.a.b.e, global1[_wgslsmith_index_u32(14415u, 27u)]).b), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, select(~_wgslsmith_add_u32(0u, 31984u), ~1u, false), var_2.a.b.b.d.x, _wgslsmith_add_u32(97158u, 8907u)), func_4(var_0.b.a, var_2.b.x, func_4(_wgslsmith_div_f32(459f, var_2.a.a.a), true, var_0.b.a, Struct_3(func_4(110f, false, -660f, Struct_3(var_0.c, Struct_2(global0.d, var_0.b, Struct_1(-771f, vec4<u32>(7559u, 102994u, 7645u, var_2.d), var_0.b.b.x, vec4<u32>(0u, 28160u, global0.d, 1u), global0.a.a.e), 4294967295u, 987f), vec2<i32>(var_2.a.a.e, -29235i), var_2.a.a.a, true)).a.a, var_2.a.b, vec2<i32>(global0.a.b.c.e, u_input.a.x), _wgslsmith_f_op_f32(-var_0.e), false)).a.b.b.a, global1[_wgslsmith_index_u32(global0.d, 27u)]).a.b.b.a, var_1);
}

