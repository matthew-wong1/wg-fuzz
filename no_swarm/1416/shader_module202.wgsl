struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(true, vec3<bool>(true, true, true), vec4<u32>(1u, 1u, 4294967295u, 0u), vec3<u32>(1u, 10618u, 1u), vec2<u32>(79516u, 6852u)), Struct_1(false, vec3<bool>(false, true, true), vec4<u32>(4294967295u, 1u, 0u, 33911u), vec3<u32>(1u, 1u, 10864u), vec2<u32>(68665u, 25842u)), Struct_1(false, vec3<bool>(true, true, false), vec4<u32>(7686u, 4294967295u, 35976u, 29515u), vec3<u32>(0u, 1u, 1u), vec2<u32>(4294967295u, 34743u))), Struct_2(Struct_1(false, vec3<bool>(false, false, true), vec4<u32>(4294967295u, 0u, 1u, 1u), vec3<u32>(4294967295u, 0u, 36356u), vec2<u32>(4294967295u, 4294967295u)), Struct_1(true, vec3<bool>(false, false, true), vec4<u32>(7744u, 1u, 1u, 4294967295u), vec3<u32>(0u, 13343u, 72403u), vec2<u32>(4294967295u, 0u)), Struct_1(false, vec3<bool>(false, true, true), vec4<u32>(4294967295u, 10715u, 50718u, 0u), vec3<u32>(1u, 0u, 0u), vec2<u32>(26630u, 8258u))), Struct_2(Struct_1(false, vec3<bool>(true, false, true), vec4<u32>(4294967295u, 73974u, 27474u, 0u), vec3<u32>(4294967295u, 13299u, 4294967295u), vec2<u32>(4294967295u, 1u)), Struct_1(true, vec3<bool>(true, true, false), vec4<u32>(26128u, 61559u, 75255u, 65670u), vec3<u32>(1u, 0u, 0u), vec2<u32>(1u, 15573u)), Struct_1(false, vec3<bool>(false, false, true), vec4<u32>(4294967295u, 1u, 48502u, 4045u), vec3<u32>(1u, 3268u, 4840u), vec2<u32>(30452u, 45587u))), Struct_2(Struct_1(false, vec3<bool>(false, false, false), vec4<u32>(1u, 1u, 1551u, 11635u), vec3<u32>(24069u, 818u, 1u), vec2<u32>(89639u, 38430u)), Struct_1(true, vec3<bool>(true, false, false), vec4<u32>(1672u, 4294967295u, 69627u, 26556u), vec3<u32>(36673u, 21476u, 71174u), vec2<u32>(4294967295u, 19513u)), Struct_1(true, vec3<bool>(false, false, false), vec4<u32>(4294967295u, 29671u, 0u, 0u), vec3<u32>(1u, 1u, 1u), vec2<u32>(4294967295u, 32153u))), Struct_2(Struct_1(false, vec3<bool>(false, true, true), vec4<u32>(1u, 4294967295u, 19611u, 1u), vec3<u32>(18412u, 4294967295u, 1u), vec2<u32>(15259u, 76229u)), Struct_1(true, vec3<bool>(true, true, true), vec4<u32>(4294967295u, 30771u, 4294967295u, 61813u), vec3<u32>(1u, 4294967295u, 1u), vec2<u32>(34798u, 1u)), Struct_1(false, vec3<bool>(false, true, true), vec4<u32>(88434u, 4294967295u, 4294967295u, 32048u), vec3<u32>(11667u, 57562u, 1u), vec2<u32>(0u, 4294967295u))), Struct_2(Struct_1(true, vec3<bool>(true, true, true), vec4<u32>(1u, 30334u, 0u, 24227u), vec3<u32>(4294967295u, 0u, 0u), vec2<u32>(96250u, 78411u)), Struct_1(false, vec3<bool>(true, false, false), vec4<u32>(66114u, 51045u, 63558u, 57810u), vec3<u32>(4294967295u, 1u, 0u), vec2<u32>(0u, 4294967295u)), Struct_1(true, vec3<bool>(false, false, true), vec4<u32>(4294967295u, 1u, 28277u, 61080u), vec3<u32>(0u, 4294967295u, 11472u), vec2<u32>(1u, 111179u))), Struct_2(Struct_1(true, vec3<bool>(true, true, true), vec4<u32>(24934u, 1u, 1u, 0u), vec3<u32>(35105u, 11592u, 4294967295u), vec2<u32>(0u, 1u)), Struct_1(false, vec3<bool>(false, true, true), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 24359u, 1u), vec2<u32>(0u, 0u)), Struct_1(false, vec3<bool>(false, false, true), vec4<u32>(2961u, 13251u, 0u, 1u), vec3<u32>(1u, 69890u, 37076u), vec2<u32>(1u, 4294967295u))), Struct_2(Struct_1(false, vec3<bool>(true, false, true), vec4<u32>(0u, 0u, 0u, 1u), vec3<u32>(0u, 1u, 16941u), vec2<u32>(27867u, 0u)), Struct_1(true, vec3<bool>(true, true, true), vec4<u32>(1u, 6315u, 14063u, 45627u), vec3<u32>(0u, 0u, 35489u), vec2<u32>(1u, 41129u)), Struct_1(true, vec3<bool>(false, true, true), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec3<u32>(73981u, 4294967295u, 1u), vec2<u32>(55467u, 4294967295u))), Struct_2(Struct_1(false, vec3<bool>(true, true, false), vec4<u32>(4294967295u, 57461u, 30801u, 7393u), vec3<u32>(7658u, 43403u, 92304u), vec2<u32>(0u, 31971u)), Struct_1(false, vec3<bool>(false, true, false), vec4<u32>(16149u, 1u, 0u, 0u), vec3<u32>(1u, 129622u, 50712u), vec2<u32>(20040u, 1u)), Struct_1(false, vec3<bool>(false, true, false), vec4<u32>(1u, 1u, 1u, 0u), vec3<u32>(0u, 1u, 56249u), vec2<u32>(46596u, 48359u))), Struct_2(Struct_1(true, vec3<bool>(false, true, false), vec4<u32>(3584u, 0u, 1u, 4294967295u), vec3<u32>(1u, 90729u, 47765u), vec2<u32>(33922u, 47854u)), Struct_1(false, vec3<bool>(true, true, false), vec4<u32>(1u, 1u, 1u, 4294967295u), vec3<u32>(45363u, 1152u, 4294967295u), vec2<u32>(0u, 0u)), Struct_1(true, vec3<bool>(false, false, true), vec4<u32>(35767u, 0u, 0u, 65437u), vec3<u32>(4294967295u, 3036u, 1u), vec2<u32>(1u, 4294967295u))), Struct_2(Struct_1(false, vec3<bool>(true, false, true), vec4<u32>(67837u, 57643u, 1u, 0u), vec3<u32>(0u, 1u, 0u), vec2<u32>(3179u, 34469u)), Struct_1(true, vec3<bool>(false, true, false), vec4<u32>(80251u, 1u, 22361u, 47270u), vec3<u32>(0u, 0u, 4294967295u), vec2<u32>(77716u, 31508u)), Struct_1(false, vec3<bool>(false, false, true), vec4<u32>(48901u, 4294967295u, 1u, 44959u), vec3<u32>(0u, 1u, 32959u), vec2<u32>(1u, 0u))), Struct_2(Struct_1(true, vec3<bool>(false, false, false), vec4<u32>(1u, 29728u, 0u, 4294967295u), vec3<u32>(4294967295u, 680u, 0u), vec2<u32>(4294967295u, 0u)), Struct_1(false, vec3<bool>(true, true, true), vec4<u32>(39918u, 2903u, 4294967295u, 0u), vec3<u32>(51250u, 1u, 4294967295u), vec2<u32>(17560u, 4294967295u)), Struct_1(true, vec3<bool>(true, true, false), vec4<u32>(0u, 0u, 4294967295u, 15371u), vec3<u32>(98343u, 1u, 59256u), vec2<u32>(21360u, 4294967295u))), Struct_2(Struct_1(true, vec3<bool>(false, true, false), vec4<u32>(4713u, 1u, 50454u, 1u), vec3<u32>(0u, 14996u, 0u), vec2<u32>(1u, 4652u)), Struct_1(true, vec3<bool>(true, true, true), vec4<u32>(0u, 19114u, 42838u, 13998u), vec3<u32>(50675u, 17242u, 117961u), vec2<u32>(44907u, 1u)), Struct_1(false, vec3<bool>(true, false, false), vec4<u32>(0u, 84373u, 1u, 4294967295u), vec3<u32>(4294967295u, 48389u, 17534u), vec2<u32>(0u, 0u))), Struct_2(Struct_1(true, vec3<bool>(false, false, false), vec4<u32>(4294967295u, 0u, 3434u, 0u), vec3<u32>(49404u, 17655u, 35039u), vec2<u32>(1u, 2048u)), Struct_1(true, vec3<bool>(true, false, false), vec4<u32>(29534u, 0u, 28391u, 0u), vec3<u32>(1u, 27205u, 17646u), vec2<u32>(18082u, 1u)), Struct_1(true, vec3<bool>(true, false, false), vec4<u32>(4294967295u, 0u, 1u, 68661u), vec3<u32>(1u, 109205u, 40127u), vec2<u32>(1u, 71111u))), Struct_2(Struct_1(true, vec3<bool>(true, false, true), vec4<u32>(4294967295u, 11329u, 8362u, 25428u), vec3<u32>(91204u, 43482u, 0u), vec2<u32>(4294967295u, 4294967295u)), Struct_1(true, vec3<bool>(true, false, false), vec4<u32>(0u, 4294967295u, 24296u, 1592u), vec3<u32>(5443u, 4294967295u, 0u), vec2<u32>(111257u, 75086u)), Struct_1(false, vec3<bool>(false, false, false), vec4<u32>(51260u, 47035u, 28166u, 0u), vec3<u32>(4294967295u, 38182u, 1u), vec2<u32>(4294967295u, 48783u))), Struct_2(Struct_1(false, vec3<bool>(true, false, false), vec4<u32>(0u, 14794u, 1u, 46810u), vec3<u32>(18889u, 0u, 1594u), vec2<u32>(0u, 48303u)), Struct_1(false, vec3<bool>(true, true, true), vec4<u32>(1u, 33743u, 0u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec2<u32>(10706u, 104252u)), Struct_1(true, vec3<bool>(true, true, true), vec4<u32>(0u, 14220u, 4294967295u, 1u), vec3<u32>(1u, 15960u, 4294967295u), vec2<u32>(59070u, 35976u))), Struct_2(Struct_1(true, vec3<bool>(false, false, false), vec4<u32>(33640u, 2050u, 688u, 13954u), vec3<u32>(51732u, 2363u, 34808u), vec2<u32>(41872u, 4294967295u)), Struct_1(false, vec3<bool>(false, false, false), vec4<u32>(24684u, 1u, 39948u, 73428u), vec3<u32>(25356u, 81268u, 43110u), vec2<u32>(1u, 64198u)), Struct_1(false, vec3<bool>(false, true, true), vec4<u32>(0u, 30696u, 1u, 1u), vec3<u32>(24429u, 54617u, 24570u), vec2<u32>(34657u, 58748u))));

var<private> global1: array<vec2<f32>, 19>;

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(true, vec3<bool>(true, false, true), vec4<u32>(1u, 0u, 4294967295u, 1u), vec3<u32>(33151u, 0u, 1u), vec2<u32>(0u, 41027u)), Struct_1(true, vec3<bool>(false, false, false), vec4<u32>(82316u, 30511u, 5872u, 1u), vec3<u32>(6990u, 51673u, 0u), vec2<u32>(33417u, 0u)), Struct_1(false, vec3<bool>(true, false, true), vec4<u32>(37491u, 109316u, 1u, 27759u), vec3<u32>(1u, 1u, 58388u), vec2<u32>(4294967295u, 8462u))), Struct_2(Struct_1(false, vec3<bool>(true, false, false), vec4<u32>(61642u, 4294967295u, 0u, 8319u), vec3<u32>(58903u, 8021u, 1u), vec2<u32>(1u, 51566u)), Struct_1(true, vec3<bool>(false, false, false), vec4<u32>(81936u, 15399u, 1u, 4294967295u), vec3<u32>(33160u, 37173u, 91706u), vec2<u32>(17662u, 0u)), Struct_1(false, vec3<bool>(true, false, true), vec4<u32>(1u, 19129u, 1u, 0u), vec3<u32>(0u, 74406u, 1u), vec2<u32>(0u, 26402u))), Struct_2(Struct_1(false, vec3<bool>(false, false, false), vec4<u32>(68725u, 8691u, 4294967295u, 0u), vec3<u32>(1u, 1u, 24072u), vec2<u32>(4294967295u, 27531u)), Struct_1(true, vec3<bool>(false, true, false), vec4<u32>(13758u, 36472u, 0u, 49408u), vec3<u32>(1u, 12919u, 0u), vec2<u32>(73890u, 1152u)), Struct_1(true, vec3<bool>(true, true, true), vec4<u32>(4294967295u, 4294967295u, 41608u, 4294967295u), vec3<u32>(1u, 0u, 0u), vec2<u32>(4294967295u, 87220u))), Struct_2(Struct_1(false, vec3<bool>(false, true, true), vec4<u32>(13607u, 4294967295u, 0u, 21252u), vec3<u32>(1u, 4294967295u, 4294967295u), vec2<u32>(50695u, 4294967295u)), Struct_1(true, vec3<bool>(true, true, false), vec4<u32>(0u, 52595u, 22528u, 4294967295u), vec3<u32>(5023u, 24966u, 66886u), vec2<u32>(36417u, 20608u)), Struct_1(true, vec3<bool>(false, true, false), vec4<u32>(4294967295u, 0u, 1u, 40977u), vec3<u32>(4294967295u, 4294967295u, 1u), vec2<u32>(48105u, 11975u))), Struct_2(Struct_1(true, vec3<bool>(false, false, true), vec4<u32>(0u, 0u, 39821u, 93778u), vec3<u32>(14852u, 48404u, 39133u), vec2<u32>(1u, 4294967295u)), Struct_1(true, vec3<bool>(true, true, false), vec4<u32>(4294967295u, 1u, 4294967295u, 77780u), vec3<u32>(1u, 1u, 4294967295u), vec2<u32>(0u, 0u)), Struct_1(false, vec3<bool>(true, true, false), vec4<u32>(1610u, 0u, 45412u, 51013u), vec3<u32>(1u, 1u, 15507u), vec2<u32>(0u, 1u))), Struct_2(Struct_1(false, vec3<bool>(false, false, false), vec4<u32>(68835u, 1u, 55143u, 52282u), vec3<u32>(4294967295u, 0u, 1058u), vec2<u32>(41347u, 0u)), Struct_1(true, vec3<bool>(true, true, false), vec4<u32>(24242u, 28541u, 19175u, 0u), vec3<u32>(80293u, 4294967295u, 4294967295u), vec2<u32>(4294967295u, 59848u)), Struct_1(true, vec3<bool>(false, true, false), vec4<u32>(0u, 68576u, 76882u, 4294967295u), vec3<u32>(1u, 10649u, 70811u), vec2<u32>(41273u, 4294967295u))), Struct_2(Struct_1(false, vec3<bool>(true, true, true), vec4<u32>(54386u, 0u, 1u, 4294967295u), vec3<u32>(1u, 7946u, 1u), vec2<u32>(670u, 67863u)), Struct_1(true, vec3<bool>(true, true, false), vec4<u32>(72951u, 0u, 12608u, 9337u), vec3<u32>(1u, 4294967295u, 22613u), vec2<u32>(31837u, 1u)), Struct_1(false, vec3<bool>(true, true, true), vec4<u32>(15743u, 0u, 44168u, 10466u), vec3<u32>(0u, 56873u, 0u), vec2<u32>(34570u, 1u))), Struct_2(Struct_1(true, vec3<bool>(true, true, true), vec4<u32>(72532u, 1u, 10129u, 45904u), vec3<u32>(4294967295u, 37760u, 75900u), vec2<u32>(4294967295u, 39104u)), Struct_1(false, vec3<bool>(true, false, false), vec4<u32>(66225u, 1u, 18122u, 10124u), vec3<u32>(108009u, 4294967295u, 1u), vec2<u32>(19600u, 365u)), Struct_1(false, vec3<bool>(true, true, false), vec4<u32>(17738u, 1u, 29900u, 63716u), vec3<u32>(44802u, 50828u, 1u), vec2<u32>(29708u, 4294967295u))), Struct_2(Struct_1(false, vec3<bool>(true, false, true), vec4<u32>(1u, 4599u, 1u, 41067u), vec3<u32>(11144u, 26402u, 7370u), vec2<u32>(4294967295u, 81622u)), Struct_1(false, vec3<bool>(true, true, true), vec4<u32>(33979u, 1u, 4254u, 17423u), vec3<u32>(1u, 34932u, 26843u), vec2<u32>(75440u, 1u)), Struct_1(false, vec3<bool>(true, true, false), vec4<u32>(44254u, 1u, 4294967295u, 1u), vec3<u32>(0u, 28792u, 29960u), vec2<u32>(0u, 4294967295u))), Struct_2(Struct_1(true, vec3<bool>(true, true, false), vec4<u32>(16374u, 4294967295u, 25160u, 0u), vec3<u32>(17438u, 81435u, 7200u), vec2<u32>(0u, 4294967295u)), Struct_1(false, vec3<bool>(false, true, false), vec4<u32>(4294967295u, 7611u, 1u, 0u), vec3<u32>(1u, 23392u, 23599u), vec2<u32>(44959u, 25819u)), Struct_1(true, vec3<bool>(false, true, false), vec4<u32>(9982u, 46440u, 34569u, 29538u), vec3<u32>(86716u, 1u, 64179u), vec2<u32>(4294967295u, 0u))), Struct_2(Struct_1(false, vec3<bool>(false, true, false), vec4<u32>(39991u, 0u, 0u, 1u), vec3<u32>(39274u, 5039u, 0u), vec2<u32>(8822u, 7511u)), Struct_1(false, vec3<bool>(false, true, true), vec4<u32>(27028u, 30444u, 4294967295u, 1u), vec3<u32>(0u, 1u, 27361u), vec2<u32>(45586u, 0u)), Struct_1(true, vec3<bool>(false, true, true), vec4<u32>(1u, 0u, 40517u, 1u), vec3<u32>(4095u, 0u, 75159u), vec2<u32>(33926u, 1u))), Struct_2(Struct_1(false, vec3<bool>(false, false, true), vec4<u32>(20878u, 6598u, 1u, 25942u), vec3<u32>(67721u, 4157u, 1u), vec2<u32>(44061u, 4294967295u)), Struct_1(false, vec3<bool>(true, false, true), vec4<u32>(72165u, 45210u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 33305u), vec2<u32>(9890u, 55300u)), Struct_1(true, vec3<bool>(false, false, false), vec4<u32>(0u, 0u, 4294967295u, 27959u), vec3<u32>(52390u, 0u, 76651u), vec2<u32>(46050u, 114391u))), Struct_2(Struct_1(true, vec3<bool>(true, true, false), vec4<u32>(4294967295u, 1u, 1u, 0u), vec3<u32>(1716u, 1u, 4294967295u), vec2<u32>(0u, 0u)), Struct_1(true, vec3<bool>(true, true, true), vec4<u32>(4294967295u, 0u, 49053u, 14779u), vec3<u32>(4294967295u, 36114u, 1137u), vec2<u32>(17943u, 4294967295u)), Struct_1(true, vec3<bool>(false, false, true), vec4<u32>(20361u, 1u, 2217u, 1u), vec3<u32>(4294967295u, 63598u, 4294967295u), vec2<u32>(4294967295u, 17489u))), Struct_2(Struct_1(true, vec3<bool>(false, true, false), vec4<u32>(45010u, 30736u, 82229u, 88861u), vec3<u32>(24798u, 4213u, 4294967295u), vec2<u32>(1u, 1u)), Struct_1(false, vec3<bool>(true, false, false), vec4<u32>(48886u, 0u, 0u, 46058u), vec3<u32>(1u, 23658u, 84711u), vec2<u32>(1u, 0u)), Struct_1(false, vec3<bool>(true, true, true), vec4<u32>(39259u, 32454u, 4294967295u, 0u), vec3<u32>(1u, 0u, 28439u), vec2<u32>(17556u, 15249u))), Struct_2(Struct_1(true, vec3<bool>(true, false, true), vec4<u32>(25344u, 4294967295u, 42222u, 1u), vec3<u32>(0u, 0u, 4294967295u), vec2<u32>(28303u, 4294967295u)), Struct_1(true, vec3<bool>(true, true, true), vec4<u32>(31800u, 84679u, 22887u, 1u), vec3<u32>(9211u, 110162u, 29979u), vec2<u32>(28108u, 45332u)), Struct_1(false, vec3<bool>(true, true, false), vec4<u32>(1u, 1u, 0u, 57927u), vec3<u32>(1u, 0u, 84590u), vec2<u32>(24476u, 27436u))), Struct_2(Struct_1(true, vec3<bool>(false, false, true), vec4<u32>(0u, 0u, 0u, 21637u), vec3<u32>(4294967295u, 4294967295u, 69895u), vec2<u32>(1u, 1u)), Struct_1(false, vec3<bool>(true, false, false), vec4<u32>(78278u, 37120u, 1u, 14207u), vec3<u32>(0u, 24697u, 45829u), vec2<u32>(771u, 17190u)), Struct_1(false, vec3<bool>(true, false, true), vec4<u32>(1u, 45035u, 0u, 12751u), vec3<u32>(18713u, 0u, 0u), vec2<u32>(28978u, 74802u))), Struct_2(Struct_1(true, vec3<bool>(false, true, true), vec4<u32>(65160u, 0u, 0u, 71777u), vec3<u32>(16860u, 35607u, 70322u), vec2<u32>(72454u, 131347u)), Struct_1(false, vec3<bool>(true, false, true), vec4<u32>(0u, 19673u, 1u, 2256u), vec3<u32>(6884u, 0u, 1u), vec2<u32>(16938u, 19309u)), Struct_1(false, vec3<bool>(true, false, true), vec4<u32>(0u, 0u, 22642u, 0u), vec3<u32>(1u, 110362u, 0u), vec2<u32>(1u, 1u))), Struct_2(Struct_1(true, vec3<bool>(true, true, false), vec4<u32>(45217u, 0u, 4294967295u, 10282u), vec3<u32>(71640u, 1u, 1u), vec2<u32>(36991u, 1u)), Struct_1(true, vec3<bool>(false, true, false), vec4<u32>(23295u, 91741u, 66157u, 16571u), vec3<u32>(1u, 75450u, 31132u), vec2<u32>(0u, 4294967295u)), Struct_1(true, vec3<bool>(false, false, true), vec4<u32>(4294967295u, 4294967295u, 29208u, 0u), vec3<u32>(1u, 28017u, 43874u), vec2<u32>(0u, 20539u))));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> u32 {
    var var_0 = Struct_1(all(select(!vec4<bool>(arg_0.e, arg_1.x, false, false), !vec4<bool>(true, true, arg_0.e, arg_1.x), !(!vec4<bool>(arg_0.e, true, arg_1.x, true)))), vec3<bool>(any(vec4<bool>(4294967295u <= u_input.c.x, arg_1.x, arg_0.e, all(vec4<bool>(arg_0.e, false, arg_1.x, arg_1.x)))), arg_0.e, ~4294967295u != u_input.c.x), ~abs(vec4<u32>(arg_0.c, arg_0.a ^ 1u, 1u >> (u_input.c.x % 32u), u_input.c.x << (u_input.c.x % 32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c, _wgslsmith_div_u32(arg_0.c, 286u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, u_input.c.x), _wgslsmith_mult_u32(arg_0.a, 0u), ~arg_0.c)), vec3<u32>(abs(55362u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.c.x, arg_0.c), vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 0u)), _wgslsmith_dot_vec2_u32(u_input.c, u_input.c)) ^ vec3<u32>(~27578u, countOneBits(47336u), _wgslsmith_mod_u32(u_input.c.x, 4162u))), reverseBits(vec2<u32>(firstTrailingBit(1u), 1u)));
    let var_1 = vec4<i32>(abs(-1i), 1i, -_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, arg_0.b.a.x)), -arg_0.b.b), _wgslsmith_div_i32(u_input.d, -reverseBits(54714i))) >> (vec4<u32>(abs(min(~var_0.d.x, arg_0.c)), u_input.c.x, 18987u, firstLeadingBit(u_input.c.x)) % vec4<u32>(32u));
    global2 = array<Struct_2, 18>();
    global2 = array<Struct_2, 18>();
    var var_2 = Struct_1(select(!(!arg_0.e), !(_wgslsmith_f_op_f32(step(680f, arg_0.d.x)) != -1416f), var_0.a), select(vec3<bool>(any(vec3<bool>(arg_0.e, var_0.b.x, arg_0.e)), var_0.b.x, arg_0.e), var_0.b, vec3<bool>(true, !(!var_0.a), !var_0.a)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(var_0.c, ~var_0.c), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.d.x, u_input.c.x, 0u, 34748u) >> (var_0.c % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(var_0.c, vec4<u32>(var_0.e.x, arg_0.c, arg_0.a, 4294967295u)))), ~(~firstLeadingBit(var_0.c.ywz)) | var_0.d, u_input.c);
    return 44375u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = array<vec2<f32>, 19>();
    var var_0 = Struct_2(Struct_1(arg_0, vec3<bool>(~46625i < _wgslsmith_mod_i32(u_input.b.x, 1i), arg_0, arg_0), ~(vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x) >> (vec4<u32>(0u, 4294967295u, 288u, u_input.c.x) % vec4<u32>(32u))) | (_wgslsmith_sub_vec4_u32(vec4<u32>(9831u, u_input.c.x, 0u, u_input.c.x), vec4<u32>(15823u, u_input.c.x, 32466u, 23597u)) >> (vec4<u32>(4294967295u, 40250u, u_input.c.x, 1u) % vec4<u32>(32u))), vec3<u32>(~45094u, reverseBits(4294967295u & u_input.c.x), u_input.c.x), ~(firstTrailingBit(u_input.c) & ~vec2<u32>(u_input.c.x, 0u))), Struct_1(arg_0, vec3<bool>(true, all(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, true, arg_0), arg_0)), any(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), arg_0))), ~vec4<u32>(func_3(Struct_4(5459u, Struct_3(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -2147483647i), u_input.a), u_input.c.x, vec4<f32>(550f, 945f, -1547f, -973f), false), vec2<bool>(arg_0, true)), firstLeadingBit(u_input.c.x), ~4294967295u, abs(0u)), vec3<u32>(reverseBits(~u_input.c.x), ~45462u, countOneBits(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x))), ~vec2<u32>(~u_input.c.x, 0u << (u_input.c.x % 32u))), Struct_1(all(vec4<bool>(all(vec4<bool>(false, arg_0, arg_0, arg_0)), false, true, arg_0)), select(vec3<bool>(true, true, true), !select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, true)), !(!vec3<bool>(arg_0, arg_0, arg_0))), vec4<u32>(~0u, 4294967295u, firstLeadingBit(u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, 10996u)) ^ reverseBits(vec4<u32>(16699u, u_input.c.x, u_input.c.x, 1u) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x) ^ vec3<u32>(18395u, u_input.c.x, u_input.c.x)), select(~(~vec2<u32>(u_input.c.x, 91223u)), vec2<u32>(67641u, 1u), !vec2<bool>(arg_0, false))));
    global2 = array<Struct_2, 18>();
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(max(vec3<u32>(14914u, 1u, var_0.a.c.x), vec3<u32>(var_0.c.e.x, u_input.c.x, u_input.c.x)), select(var_0.a.d, var_0.a.d, true))), vec3<u32>(34043u, 58421u, u_input.c.x)), 18u)];
    let var_2 = var_1.b;
    return var_0.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_4) -> vec3<u32> {
    var var_0 = arg_2.b;
    let var_1 = _wgslsmith_f_op_f32(-arg_2.d.x);
    var var_2 = Struct_2(arg_1, func_2(true), Struct_1(arg_2.e, func_2(arg_1.a).b, min(abs(arg_1.c), func_2(arg_2.e).c) >> (~countOneBits(arg_1.c) % vec4<u32>(32u)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.e.x, 0u, 26538u), countOneBits(arg_1.c.wxw)), vec3<u32>(func_3(arg_2, arg_1.b.zz), ~u_input.c.x, arg_2.c)), vec2<u32>(1u, _wgslsmith_clamp_u32(firstTrailingBit(u_input.c.x), 4294967295u, 1u))));
    var var_3 = -577f;
    global1 = array<vec2<f32>, 19>();
    return _wgslsmith_mod_vec3_u32(var_2.c.c.zxy, reverseBits(var_2.c.c.wzy | (max(vec3<u32>(arg_1.d.x, 16371u, 11461u), vec3<u32>(u_input.c.x, 37150u, var_2.a.c.x)) | vec3<u32>(var_2.a.e.x, 22316u, 87048u))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<i32> {
    global0 = array<Struct_2, 17>();
    let var_0 = vec2<bool>(!(arg_3.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.x)))), true);
    global2 = array<Struct_2, 18>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.x)));
    var var_2 = ~select(~vec3<i32>(abs(14674i), 9059i, -2147483647i >> (arg_1.b.d.x % 32u)), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.d), ~u_input.b.x, 17656i) << (func_4(!vec2<bool>(arg_2.a, arg_2.b.x), func_2(arg_2.b.x), Struct_4(u_input.c.x, Struct_3(vec4<i32>(30087i, -37017i, 2147483647i, 0i), vec2<i32>(1i, -1i)), arg_2.e.x, arg_3, var_0.x)) % vec3<u32>(32u)), select(!func_2(true).b, func_2(true).b, false));
    return -(~vec3<i32>(var_2.x, -(~(-2147483647i)), 39172i));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = !select(vec4<bool>(arg_1.b.x, countOneBits(arg_1.e.x) == ~78378u, false, true && arg_1.b.x), vec4<bool>(any(!vec4<bool>(true, arg_1.a, arg_1.a, arg_1.b.x)), true, arg_1.a, select(true, arg_1.b.x == arg_1.a, true)), vec4<bool>(all(vec4<bool>(false, true, true, false)), !arg_1.b.x, true || all(vec3<bool>(arg_1.b.x, arg_1.b.x, true)), u_input.d == arg_0.x));
    let var_1 = vec4<i32>(~1i, i32(-1i) * -2147483647i, _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(min(vec2<i32>(-11387i, arg_0.x), u_input.a), ~arg_0.zz), 43664i), -27314i);
    global1 = array<vec2<f32>, 19>();
    global1 = array<vec2<f32>, 19>();
    let var_2 = arg_1;
    return ~arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, u_input.b.x, 1i)), vec3<i32>(u_input.d, -22650i, 0i)) | vec3<i32>(~(-4093i), u_input.b.x, 25121i)), func_5(func_1(true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 18u)], Struct_1(false, vec3<bool>(false, true, true), vec4<u32>(75082u, u_input.c.x, 0u, 0u), vec3<u32>(52029u, 1u, 97942u), vec2<u32>(1u, 27608u)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2118f, -292f, 178f, -214f), vec4<f32>(-769f, -106f, -1000f, -656f)))) << (~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), func_2(select(true, false, true))));
    global1 = array<vec2<f32>, 19>();
    global1 = array<vec2<f32>, 19>();
    var var_1 = func_2(false);
    global1 = array<vec2<f32>, 19>();
    let var_2 = Struct_4(var_1.c.x, Struct_3(-countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 1i, var_0.x, u_input.d), vec4<i32>(var_0.x, -1i, 3002i, u_input.a.x))), ~(~u_input.b) & vec2<i32>(0i, -u_input.b.x)), u_input.c.x, vec4<f32>(-429f, _wgslsmith_div_f32(1817f, -1701f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f), -660f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1037f)))), _wgslsmith_f_op_f32(min(-299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1307f, 139f)) + _wgslsmith_f_op_f32(-170f - 450f))))), !(false || !(var_1.a && var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(~(-15722i), _wgslsmith_mult_i32(reverseBits(-2147483647i), ~var_2.b.a.x))), countOneBits(-2147483647i));
}

