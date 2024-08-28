struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
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

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(54360u, vec3<bool>(false, true, false), Struct_2(vec2<i32>(2147483647i, 12048i), vec2<i32>(-38304i, -22215i), Struct_1(vec2<bool>(false, true), vec4<i32>(20078i, 33901i, -1i, -15102i), vec2<u32>(3515u, 34193u)), 4294967295u, 31075u), Struct_2(vec2<i32>(25856i, 1i), vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec2<bool>(true, false), vec4<i32>(1i, 2147483647i, -36732i, -14098i), vec2<u32>(90064u, 4294967295u)), 18311u, 1u)), Struct_3(1u, vec3<bool>(false, false, false), Struct_2(vec2<i32>(1i, 1i), vec2<i32>(47661i, 72087i), Struct_1(vec2<bool>(true, false), vec4<i32>(45990i, -1i, -106280i, 19782i), vec2<u32>(17918u, 4294967295u)), 73896u, 1884u), Struct_2(vec2<i32>(2147483647i, -27066i), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(vec2<bool>(true, true), vec4<i32>(-1i, 6589i, i32(-2147483648), 20234i), vec2<u32>(26028u, 4294967295u)), 1u, 9913u)), Struct_3(0u, vec3<bool>(false, true, true), Struct_2(vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, 0i), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, 0i, -1i, i32(-2147483648)), vec2<u32>(75606u, 0u)), 1u, 1u), Struct_2(vec2<i32>(0i, 22810i), vec2<i32>(0i, -66475i), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, -47624i, -33933i, 58322i), vec2<u32>(6383u, 4294967295u)), 7105u, 114564u)), Struct_3(41487u, vec3<bool>(true, true, false), Struct_2(vec2<i32>(-45126i, 1i), vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec2<bool>(false, true), vec4<i32>(-7015i, -325i, 1i, 21275i), vec2<u32>(1u, 49108u)), 4294967295u, 4294967295u), Struct_2(vec2<i32>(38502i, 1i), vec2<i32>(-26097i, 0i), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, i32(-2147483648), -31293i, -1i), vec2<u32>(4294967295u, 1u)), 1u, 4294967295u)), Struct_3(1u, vec3<bool>(false, false, false), Struct_2(vec2<i32>(-46210i, 15453i), vec2<i32>(25059i, i32(-2147483648)), Struct_1(vec2<bool>(true, false), vec4<i32>(-205i, -42068i, 1i, -2726i), vec2<u32>(1584u, 0u)), 0u, 1846u), Struct_2(vec2<i32>(i32(-2147483648), 10424i), vec2<i32>(46148i, 1i), Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 18529i, -1i, 18119i), vec2<u32>(10513u, 64820u)), 12944u, 44610u)), Struct_3(37716u, vec3<bool>(false, true, false), Struct_2(vec2<i32>(48060i, 2147483647i), vec2<i32>(1i, 15569i), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, 39836i, 16737i, 0i), vec2<u32>(29164u, 16472u)), 17719u, 33810u), Struct_2(vec2<i32>(-46488i, -22861i), vec2<i32>(2147483647i, 8448i), Struct_1(vec2<bool>(false, true), vec4<i32>(1i, i32(-2147483648), -23832i, 1i), vec2<u32>(24055u, 31868u)), 4294967295u, 4294967295u)), Struct_3(4294967295u, vec3<bool>(true, false, false), Struct_2(vec2<i32>(-33966i, 20410i), vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec2<bool>(true, false), vec4<i32>(44284i, i32(-2147483648), -20252i, i32(-2147483648)), vec2<u32>(0u, 6096u)), 39175u, 16904u), Struct_2(vec2<i32>(-31545i, i32(-2147483648)), vec2<i32>(-4044i, -1i), Struct_1(vec2<bool>(false, true), vec4<i32>(24006i, 1i, -22582i, -12610i), vec2<u32>(4294967295u, 1u)), 34742u, 1u)), Struct_3(0u, vec3<bool>(true, false, false), Struct_2(vec2<i32>(40455i, i32(-2147483648)), vec2<i32>(-66373i, -2239i), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, i32(-2147483648), 48199i, -1i), vec2<u32>(4294967295u, 4294967295u)), 17806u, 4294967295u), Struct_2(vec2<i32>(-22079i, 2147483647i), vec2<i32>(35331i, i32(-2147483648)), Struct_1(vec2<bool>(true, true), vec4<i32>(-65097i, 0i, -12785i, i32(-2147483648)), vec2<u32>(26112u, 0u)), 25574u, 1u)), Struct_3(58121u, vec3<bool>(true, true, false), Struct_2(vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, -891i), Struct_1(vec2<bool>(false, false), vec4<i32>(26196i, 0i, -25268i, 0i), vec2<u32>(4294967295u, 42786u)), 0u, 1u), Struct_2(vec2<i32>(-30724i, 49122i), vec2<i32>(i32(-2147483648), -4881i), Struct_1(vec2<bool>(false, true), vec4<i32>(-45375i, i32(-2147483648), 3979i, -20887i), vec2<u32>(53024u, 0u)), 53889u, 4294967295u)), Struct_3(1u, vec3<bool>(false, true, true), Struct_2(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(25269i, i32(-2147483648)), Struct_1(vec2<bool>(true, true), vec4<i32>(-23731i, -19321i, 0i, -43582i), vec2<u32>(0u, 1u)), 116013u, 21571u), Struct_2(vec2<i32>(-25176i, -16872i), vec2<i32>(-1i, 11971i), Struct_1(vec2<bool>(false, false), vec4<i32>(22842i, -6843i, 32400i, 2147483647i), vec2<u32>(0u, 1u)), 49633u, 8612u)), Struct_3(32250u, vec3<bool>(true, false, true), Struct_2(vec2<i32>(1i, 1i), vec2<i32>(42628i, 1i), Struct_1(vec2<bool>(false, true), vec4<i32>(0i, i32(-2147483648), -44840i, 13275i), vec2<u32>(1u, 150785u)), 61820u, 5156u), Struct_2(vec2<i32>(-1i, 252i), vec2<i32>(-63784i, i32(-2147483648)), Struct_1(vec2<bool>(false, false), vec4<i32>(-4600i, 0i, -11033i, -36536i), vec2<u32>(1u, 4294967295u)), 4294967295u, 1u)), Struct_3(4294967295u, vec3<bool>(false, true, false), Struct_2(vec2<i32>(-1i, -18655i), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), 1i, 1i, -28176i), vec2<u32>(36342u, 907u)), 1u, 24517u), Struct_2(vec2<i32>(1i, 21201i), vec2<i32>(0i, 0i), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, 1i, 1i, 0i), vec2<u32>(35812u, 4294967295u)), 4294967295u, 1u)), Struct_3(4294967295u, vec3<bool>(true, false, false), Struct_2(vec2<i32>(-1i, 36270i), vec2<i32>(-5252i, 31660i), Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, 5118i, 3084i, 15939i), vec2<u32>(44179u, 40664u)), 0u, 0u), Struct_2(vec2<i32>(-1i, 0i), vec2<i32>(1i, -2324i), Struct_1(vec2<bool>(false, false), vec4<i32>(1i, 10242i, -1i, 6034i), vec2<u32>(47034u, 60643u)), 25428u, 4294967295u)), Struct_3(32018u, vec3<bool>(false, true, false), Struct_2(vec2<i32>(10259i, i32(-2147483648)), vec2<i32>(55311i, 1i), Struct_1(vec2<bool>(true, false), vec4<i32>(-40548i, 1i, i32(-2147483648), 1i), vec2<u32>(45320u, 72301u)), 4294967295u, 67600u), Struct_2(vec2<i32>(2147483647i, -1i), vec2<i32>(-481i, 9098i), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, 2147483647i, 0i, -18776i), vec2<u32>(23545u, 106554u)), 1u, 0u)), Struct_3(0u, vec3<bool>(false, false, false), Struct_2(vec2<i32>(1i, 2147483647i), vec2<i32>(-40975i, -24250i), Struct_1(vec2<bool>(true, true), vec4<i32>(-41505i, 15286i, 0i, 6687i), vec2<u32>(4294967295u, 27367u)), 0u, 386u), Struct_2(vec2<i32>(-1i, 7980i), vec2<i32>(i32(-2147483648), 1i), Struct_1(vec2<bool>(true, false), vec4<i32>(-27579i, 2147483647i, 1i, -33061i), vec2<u32>(54039u, 38094u)), 0u, 9944u)), Struct_3(0u, vec3<bool>(false, false, false), Struct_2(vec2<i32>(-16658i, 0i), vec2<i32>(-7844i, -2198i), Struct_1(vec2<bool>(false, false), vec4<i32>(0i, 22073i, 14906i, -17057i), vec2<u32>(4294967295u, 29315u)), 1u, 22613u), Struct_2(vec2<i32>(24954i, -60533i), vec2<i32>(0i, -1i), Struct_1(vec2<bool>(true, false), vec4<i32>(-43679i, -1i, 3949i, 30183i), vec2<u32>(1777u, 3554u)), 1u, 4294967295u)), Struct_3(4294967295u, vec3<bool>(true, false, true), Struct_2(vec2<i32>(-14103i, 3529i), vec2<i32>(14806i, 0i), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 0i, i32(-2147483648), -9032i), vec2<u32>(1u, 35098u)), 23912u, 17712u), Struct_2(vec2<i32>(-11184i, -1i), vec2<i32>(1i, -1i), Struct_1(vec2<bool>(false, true), vec4<i32>(-69715i, i32(-2147483648), 0i, i32(-2147483648)), vec2<u32>(1u, 12233u)), 19686u, 46711u)), Struct_3(110449u, vec3<bool>(true, false, false), Struct_2(vec2<i32>(-21213i, -1i), vec2<i32>(-44586i, 9987i), Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), -27423i, 20448i, -1i), vec2<u32>(34826u, 4294967295u)), 14937u, 30759u), Struct_2(vec2<i32>(-24586i, 40199i), vec2<i32>(18880i, -14803i), Struct_1(vec2<bool>(true, true), vec4<i32>(-42911i, 60121i, 1i, 21272i), vec2<u32>(4294967295u, 62591u)), 4294967295u, 4294967295u)), Struct_3(4294967295u, vec3<bool>(true, true, true), Struct_2(vec2<i32>(-35585i, 19219i), vec2<i32>(-13514i, -1016i), Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, 1i, 11220i, 6153i), vec2<u32>(0u, 1u)), 4294967295u, 4227u), Struct_2(vec2<i32>(44245i, -1i), vec2<i32>(0i, -18306i), Struct_1(vec2<bool>(true, false), vec4<i32>(76717i, -37115i, 1i, -1424i), vec2<u32>(36009u, 1u)), 13867u, 63969u)), Struct_3(34885u, vec3<bool>(true, true, true), Struct_2(vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(vec2<bool>(true, true), vec4<i32>(-965i, 2843i, 1i, -16821i), vec2<u32>(0u, 4294967295u)), 18944u, 4294967295u), Struct_2(vec2<i32>(-14310i, -98864i), vec2<i32>(29444i, 443i), Struct_1(vec2<bool>(false, false), vec4<i32>(0i, -7890i, -1i, 1i), vec2<u32>(4294967295u, 1u)), 18043u, 44625u)), Struct_3(23958u, vec3<bool>(false, false, false), Struct_2(vec2<i32>(-1i, 27799i), vec2<i32>(38900i, 22257i), Struct_1(vec2<bool>(false, false), vec4<i32>(1i, -8722i, 24554i, 0i), vec2<u32>(3780u, 50163u)), 92976u, 0u), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, -1i), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, i32(-2147483648), -1i, -17428i), vec2<u32>(29127u, 4294967295u)), 0u, 108028u)), Struct_3(43008u, vec3<bool>(false, false, true), Struct_2(vec2<i32>(1i, -46935i), vec2<i32>(2147483647i, 1i), Struct_1(vec2<bool>(true, false), vec4<i32>(94916i, 80629i, -1i, 41155i), vec2<u32>(4294967295u, 1u)), 4294967295u, 1u), Struct_2(vec2<i32>(-59247i, 33311i), vec2<i32>(-5140i, -956i), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, 65186i, -51792i, 46192i), vec2<u32>(43211u, 42470u)), 0u, 55586u)), Struct_3(8885u, vec3<bool>(false, true, true), Struct_2(vec2<i32>(57037i, 24078i), vec2<i32>(-2831i, 37531i), Struct_1(vec2<bool>(false, true), vec4<i32>(40887i, 76961i, -14855i, -1i), vec2<u32>(4294967295u, 1u)), 1u, 4294967295u), Struct_2(vec2<i32>(1i, 31334i), vec2<i32>(-30472i, 1i), Struct_1(vec2<bool>(false, false), vec4<i32>(12142i, -28069i, 16613i, 1i), vec2<u32>(31901u, 21568u)), 1u, 25580u)), Struct_3(105570u, vec3<bool>(false, true, true), Struct_2(vec2<i32>(4909i, 1i), vec2<i32>(2147483647i, 1i), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, 0i, -1i, 7856i), vec2<u32>(40713u, 64267u)), 1u, 4711u), Struct_2(vec2<i32>(-9872i, 50783i), vec2<i32>(0i, 2147483647i), Struct_1(vec2<bool>(false, false), vec4<i32>(14517i, -32709i, i32(-2147483648), -1i), vec2<u32>(4294967295u, 22161u)), 15319u, 59720u)), Struct_3(3405u, vec3<bool>(true, true, false), Struct_2(vec2<i32>(8843i, -3626i), vec2<i32>(-55855i, -12110i), Struct_1(vec2<bool>(false, false), vec4<i32>(-42695i, 2147483647i, 53602i, 0i), vec2<u32>(1u, 44219u)), 0u, 0u), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-12548i, 0i), Struct_1(vec2<bool>(false, false), vec4<i32>(0i, 1i, 2147483647i, 35244i), vec2<u32>(0u, 18u)), 15327u, 19539u)), Struct_3(3568u, vec3<bool>(false, false, false), Struct_2(vec2<i32>(-30449i, 28462i), vec2<i32>(8908i, -53131i), Struct_1(vec2<bool>(false, true), vec4<i32>(26709i, -1i, -15136i, -37705i), vec2<u32>(0u, 0u)), 4294967295u, 60448u), Struct_2(vec2<i32>(0i, 0i), vec2<i32>(14605i, 2147483647i), Struct_1(vec2<bool>(true, true), vec4<i32>(-1i, -23746i, -10232i, -4812i), vec2<u32>(4294967295u, 42787u)), 15896u, 62392u)), Struct_3(0u, vec3<bool>(true, false, true), Struct_2(vec2<i32>(-33804i, 22774i), vec2<i32>(6230i, 0i), Struct_1(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), -1i, -1i, 2147483647i), vec2<u32>(1u, 1u)), 20239u, 17575u), Struct_2(vec2<i32>(i32(-2147483648), 77806i), vec2<i32>(36040i, -14521i), Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 10210i, 4187i, -1i), vec2<u32>(0u, 0u)), 13636u, 15943u)), Struct_3(60447u, vec3<bool>(false, true, true), Struct_2(vec2<i32>(16958i, 1601i), vec2<i32>(-16710i, 62832i), Struct_1(vec2<bool>(false, true), vec4<i32>(0i, 18317i, i32(-2147483648), 5414i), vec2<u32>(48899u, 33182u)), 60248u, 94728u), Struct_2(vec2<i32>(-53427i, 1954i), vec2<i32>(14505i, -105138i), Struct_1(vec2<bool>(true, false), vec4<i32>(8707i, -41381i, 32633i, 2147483647i), vec2<u32>(7058u, 21001u)), 4294967295u, 16295u)), Struct_3(1u, vec3<bool>(false, true, false), Struct_2(vec2<i32>(-6836i, -21733i), vec2<i32>(-1i, -1i), Struct_1(vec2<bool>(false, false), vec4<i32>(15266i, 1i, -1i, 69561i), vec2<u32>(13042u, 93822u)), 1334u, 4294967295u), Struct_2(vec2<i32>(17315i, 0i), vec2<i32>(1i, 0i), Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), -16876i, i32(-2147483648), 2147483647i), vec2<u32>(78634u, 1u)), 42347u, 0u)), Struct_3(18212u, vec3<bool>(true, false, false), Struct_2(vec2<i32>(60187i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec2<bool>(false, false), vec4<i32>(-50489i, i32(-2147483648), 0i, i32(-2147483648)), vec2<u32>(691u, 10215u)), 4294967295u, 1u), Struct_2(vec2<i32>(-1i, 16546i), vec2<i32>(25690i, -5101i), Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 1i, 4620i, -1i), vec2<u32>(6770u, 92923u)), 1u, 0u)));

var<private> global2: array<f32, 25>;

var<private> global3: i32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = array<Struct_3, 30>();
    let var_0 = arg_0.d;
    let var_1 = global1[_wgslsmith_index_u32(arg_0.c.c.x, 30u)];
    var var_2 = !any(vec3<bool>(!var_1.d.c.a.x, true, global0.x));
    var var_3 = Struct_4(select(var_1.b, !(!var_1.b), all(var_1.b)), vec3<u32>(~arg_0.d, select(arg_0.c.c.x << (1u % 32u), u_input.b.x, var_1.d.c.a.x), _wgslsmith_sub_u32(4294967295u, 24619u)) & u_input.b.zzy, Struct_3(var_1.c.d, select(var_1.b, var_1.b, select(var_1.d.c.a.x, var_1.d.c.a.x == true, !arg_0.c.a.x)), Struct_2(select(firstTrailingBit(var_1.c.a), vec2<i32>(-2147483647i, var_1.d.b.x), arg_0.c.a), _wgslsmith_sub_vec2_i32(select(var_1.c.a, var_1.d.c.b.yy, vec2<bool>(true, global0.x)), -arg_0.b), arg_0.c, reverseBits(_wgslsmith_mult_u32(1u, 4294967295u)), 76607u), Struct_2(vec2<i32>(arg_0.c.b.x, ~(-2147483647i)), max(vec2<i32>(var_1.d.b.x, arg_0.b.x), var_1.d.b) & ~vec2<i32>(29421i, 59759i), Struct_1(!vec2<bool>(arg_0.c.a.x, false), vec4<i32>(var_1.c.b.x, arg_0.b.x, 0i, 76682i) << (vec4<u32>(var_1.d.c.c.x, 4294967295u, var_0, arg_0.d) % vec4<u32>(32u)), arg_0.c.c << (u_input.b.yy % vec2<u32>(32u))), _wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.c.e, 15435u), _wgslsmith_mod_u32(33706u, 65379u)), 59058u)), min(countOneBits(arg_0.c.b), vec4<i32>(-abs(arg_0.a.x), 7789i, ~_wgslsmith_clamp_i32(arg_0.b.x, var_1.c.b.x, arg_0.a.x), arg_0.a.x)));
    return _wgslsmith_clamp_u32(var_1.a, _wgslsmith_mult_u32(~min(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c.c.d, u_input.a), arg_0.c.c)), ~_wgslsmith_mod_u32(~4294967295u, ~var_1.c.d)), var_1.a);
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = 1130f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(arg_0), 18304u), 25u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~27006u), 25u)])));
    global0 = !arg_0.c.a;
    let var_2 = global1[_wgslsmith_index_u32(u_input.a, 30u)];
    let var_3 = Struct_2(arg_0.c.b.wy, -select(var_2.d.c.b.yy, -var_2.c.c.b.xy >> (select(u_input.b.xz, u_input.b.wx, true) % vec2<u32>(32u)), !(var_2.c.c.a.x & var_2.c.c.a.x)), Struct_1(vec2<bool>(false, true), -_wgslsmith_sub_vec4_i32(abs(vec4<i32>(1i, arg_0.c.b.x, -1i, -3590i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_2.c.a.x, arg_0.b.x, 2147483647i), vec4<i32>(2662i, var_2.c.a.x, arg_0.c.b.x, 2147483647i))), ~(~arg_0.c.c) << (_wgslsmith_mod_vec2_u32(max(arg_0.c.c, vec2<u32>(var_2.d.e, var_2.a)), vec2<u32>(37254u, arg_0.d)) % vec2<u32>(32u))), 33967u >> (~abs(u_input.b.x) % 32u), _wgslsmith_mult_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 25127u, arg_0.d), vec3<u32>(31654u, 4294967295u, arg_0.e)) ^ _wgslsmith_mod_u32(var_2.d.e, 37217u)), ~1u));
    return global1[_wgslsmith_index_u32(~u_input.b.x, 30u)];
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_4 {
    let var_0 = arg_0.c.d.c.c;
    let var_1 = func_2(arg_0.c.d);
    var var_2 = var_1.c.c.b;
    let var_3 = -(reverseBits(vec2<i32>(arg_0.d.x, var_2.x)) << (_wgslsmith_mult_vec2_u32(~(vec2<u32>(var_0.x, 48545u) << (vec2<u32>(38212u, arg_1) % vec2<u32>(32u))), u_input.b.zz) % vec2<u32>(32u)));
    let var_4 = firstLeadingBit(-26516i);
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_3) -> i32 {
    global0 = arg_0.c.c.c.a;
    var var_0 = u_input.b;
    var var_1 = vec2<f32>(global2[_wgslsmith_index_u32(reverseBits(reverseBits(37305u)), 25u)], 795f);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1289f, _wgslsmith_f_op_f32(select(234f, global2[_wgslsmith_index_u32(0u, 25u)], true)), _wgslsmith_f_op_f32(arg_1.x + 1000f), -881f)), _wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2121f, global2[_wgslsmith_index_u32(arg_2.c.c.c.x, 25u)], -894f, var_1.x) - arg_1))), false)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_1)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(458f, -220f) - vec2<f32>(-668f, 1854f)) * _wgslsmith_f_op_vec2_f32(var_2.yz * arg_1.yy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yy * vec2<f32>(573f, global2[_wgslsmith_index_u32(u_input.a, 25u)]))))), var_2.ww, (arg_0.c.d.c.a.x & arg_2.c.c.a.x) || arg_2.b.x));
    return arg_0.c.d.c.b.x;
}

fn func_1(arg_0: u32, arg_1: f32) -> vec2<i32> {
    let var_0 = vec3<i32>(~max(0i, _wgslsmith_add_i32(-2147483647i, 1i)) << ((_wgslsmith_div_u32(arg_0 << (1u % 32u), abs(45792u)) ^ arg_0) % 32u), -2147483647i, func_5(func_4(Struct_4(select(vec3<bool>(false, true, false), vec3<bool>(global0.x, false, global0.x), false), u_input.b.wyw, func_2(Struct_2(vec2<i32>(44063i, 34791i), vec2<i32>(-1i, -2147483647i), Struct_1(vec2<bool>(false, true), vec4<i32>(37352i, -6038i, -10219i, -1i), vec2<u32>(arg_0, u_input.a)), u_input.a, arg_0)), -vec4<i32>(4286i, -33914i, -33169i, -2147483647i)), 4294967295u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 25u)]), _wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(step(867f, 433f)), arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1, -872f, arg_1) * vec4<f32>(754f, arg_1, 1000f, -957f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1681f, arg_1, -137f, arg_1) + vec4<f32>(797f, global2[_wgslsmith_index_u32(13362u, 25u)], global2[_wgslsmith_index_u32(23002u, 25u)], 745f))))), Struct_3(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_0, 4294967295u, 58381u, arg_0)) | func_2(Struct_2(vec2<i32>(-22494i, -24541i), vec2<i32>(34369i, -1i), Struct_1(vec2<bool>(global0.x, false), vec4<i32>(-2147483647i, 26852i, 1811i, 1i), u_input.b.xy), arg_0, 4294967295u)).a, !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, global0.x, global0.x)), func_2(Struct_2(vec2<i32>(2147483647i, 13001i), vec2<i32>(-2147483647i, 25823i), Struct_1(vec2<bool>(global0.x, true), vec4<i32>(24971i, -26500i, -34983i, 2147483647i), vec2<u32>(arg_0, 9974u)), u_input.a, 0u)).c, func_2(Struct_2(vec2<i32>(1i, 35371i), vec2<i32>(-65314i, 2147483647i), Struct_1(vec2<bool>(global0.x, false), vec4<i32>(23164i, -1i, -39694i, 2147483647i), vec2<u32>(u_input.b.x, 19672u)), arg_0, arg_0)).d)));
    global0 = !(!func_2(Struct_2(var_0.yz ^ vec2<i32>(4886i, var_0.x), select(var_0.xx, vec2<i32>(22115i, var_0.x), vec2<bool>(global0.x, true)), Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, -2147483647i, var_0.x, var_0.x), u_input.b.yw), arg_0 >> (17525u % 32u), u_input.a)).d.c.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1003f, _wgslsmith_f_op_f32(-arg_1)))));
    var var_2 = ~var_0.zy;
    let var_3 = u_input.b.xy;
    return _wgslsmith_mult_vec2_i32(vec2<i32>(~1i, var_0.x), var_0.zx);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    let var_0 = Struct_2(func_2(func_4(func_4(Struct_4(vec3<bool>(arg_1.c.a.x, true, false), vec3<u32>(u_input.b.x, arg_1.e, arg_2.c.c.c.c.x), Struct_3(4294967295u, arg_2.c.b, Struct_2(arg_1.c.b.wz, vec2<i32>(arg_1.a.x, arg_1.b.x), arg_2.c.c.c, u_input.a, arg_1.d), Struct_2(vec2<i32>(2147483647i, -1i), vec2<i32>(arg_2.c.c.a.x, 0i), Struct_1(vec2<bool>(true, global0.x), vec4<i32>(2147483647i, arg_0.x, arg_0.x, -2147483647i), u_input.b.zz), 4294967295u, u_input.a)), vec4<i32>(-1i, 37755i, arg_0.x, -8169i)), _wgslsmith_sub_u32(arg_2.b.x, u_input.b.x)), ~arg_1.c.c.x).c.c).d.b, vec2<i32>(arg_1.a.x, arg_0.x) ^ vec2<i32>(96003i, arg_0.x), func_4(func_4(Struct_4(vec3<bool>(true, global0.x, arg_1.c.a.x), vec3<u32>(u_input.b.x, 4294967295u, arg_1.c.c.x), Struct_3(52431u, arg_2.c.b, arg_2.c.d, Struct_2(arg_2.c.d.c.b.zw, arg_0.yx, Struct_1(vec2<bool>(true, true), vec4<i32>(arg_1.a.x, -1i, arg_1.c.b.x, 0i), vec2<u32>(u_input.b.x, u_input.a)), arg_1.e, 43668u)), vec4<i32>(2147483647i, arg_0.x, -23881i, -22421i)), u_input.a), ~74566u).c.d.c, arg_2.c.a, ~51336u);
    global2 = array<f32, 25>();
    let var_1 = Struct_4(select(arg_2.a, !func_4(Struct_4(arg_2.a, arg_2.b, Struct_3(var_0.c.c.x, vec3<bool>(true, false, false), Struct_2(vec2<i32>(-61974i, 2147483647i), vec2<i32>(14806i, arg_2.d.x), arg_2.c.d.c, 0u, 4294967295u), Struct_2(vec2<i32>(arg_2.d.x, 1i), vec2<i32>(4498i, arg_2.c.d.b.x), var_0.c, 9749u, 0u)), arg_2.c.d.c.b), ~67330u).c.b, global0.x), firstLeadingBit(_wgslsmith_clamp_vec3_u32(u_input.b.zyw, u_input.b.yww, vec3<u32>(abs(1u), var_0.d | var_0.d, ~1u))), func_4(arg_2, func_4(func_4(Struct_4(arg_2.a, u_input.b.xxx, arg_2.c, var_0.c.b), arg_2.b.x ^ 17973u), countOneBits(_wgslsmith_dot_vec2_u32(u_input.b.wz, vec2<u32>(20067u, 18897u)))).c.c.e).c, vec4<i32>(_wgslsmith_add_i32(-(~1i), _wgslsmith_mult_i32(~1i, firstTrailingBit(arg_2.d.x))), 54906i, ~(-7412i) & (_wgslsmith_clamp_i32(var_0.b.x, 17421i, -2147483647i) << (arg_2.c.a % 32u)), arg_1.b.x));
    global2 = array<f32, 25>();
    let var_2 = !(!arg_1.c.a);
    return func_4(Struct_4(var_1.a, vec3<u32>(var_0.d, ~30708u, ~abs(var_1.c.a)), func_4(arg_2, abs(~72458u)).c, -(~func_2(Struct_2(arg_2.c.c.c.b.xy, vec2<i32>(arg_2.c.c.c.b.x, -1i), var_1.c.d.c, 4294967295u, 0u)).c.c.b)), ~59687u).c.c;
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> StorageBuffer {
    global2 = array<f32, 25>();
    global3 = -arg_2.b.x;
    var var_0 = true;
    global2 = array<f32, 25>();
    var var_1 = Struct_3(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(arg_1, arg_2.e, 1u, 4294967295u)), vec4<u32>(53190u, arg_2.e, arg_0.c.c.x, arg_2.c.c.x) << (vec4<u32>(28640u, arg_0.c.c.x, arg_1, 16423u) % vec4<u32>(32u)))), !vec3<bool>(false, true, all(!vec4<bool>(true, true, global0.x, arg_0.c.a.x))), Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, arg_0.a.x, arg_2.c.b.x), ~arg_0.c.b), ~29905i << (firstLeadingBit(u_input.a) % 32u)), vec2<i32>(2147483647i, -2147483647i), arg_0.c, 7824u, arg_2.d), arg_0);
    return StorageBuffer(~60541u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, 1i, -1i, 1i), vec4<i32>(18700i, 27061i, -25901i, 255i), global0.x), -vec4<i32>(1i, 38068i, 2147483647i, -1i)), -(~0i)) | ~abs(abs(select(vec2<i32>(2147483647i, -1i), vec2<i32>(18666i, 2147483647i), vec2<bool>(global0.x, global0.x))));
    global1 = array<Struct_3, 30>();
    let var_1 = !vec3<bool>(false, global0.x, (_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 25u)] * global2[_wgslsmith_index_u32(42029u, 25u)]) == -1347f) & !any(vec4<bool>(false, false, true, true)));
    let x = u_input.a;
    s_output = func_7(func_6(~vec3<i32>(var_0.x, var_0.x, var_0.x) & vec3<i32>(var_0.x, ~var_0.x, var_0.x), Struct_2(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_0.x), vec2<i32>(var_0.x, var_0.x))), -func_1(u_input.a, 357f), Struct_1(var_1.zy, min(vec4<i32>(0i, var_0.x, var_0.x, 0i), vec4<i32>(-23907i, var_0.x, var_0.x, -2147483647i)), abs(vec2<u32>(u_input.a, u_input.b.x))), _wgslsmith_mod_u32(_wgslsmith_div_u32(10571u, 47122u), ~145631u), 65246u), Struct_4(vec3<bool>(var_1.x || true, false, global0.x), max(u_input.b.wxw >> (u_input.b.www % vec3<u32>(32u)), countOneBits(vec3<u32>(1u, u_input.a, u_input.a))), global1[_wgslsmith_index_u32(select(u_input.b.x, countOneBits(u_input.a), true), 30u)], ~abs(vec4<i32>(-89836i, var_0.x, -2147483647i, -29764i)))), u_input.a >> (max(~abs(u_input.b.x), _wgslsmith_div_u32(abs(0u), u_input.a)) % 32u), Struct_2(vec2<i32>(abs(_wgslsmith_mult_i32(var_0.x, var_0.x)), ~(-2147483647i)), firstTrailingBit(min(vec2<i32>(var_0.x, 2147483647i) >> (u_input.b.xz % vec2<u32>(32u)), vec2<i32>(33995i, var_0.x))), func_2(func_2(Struct_2(vec2<i32>(-2147483647i, -27225i), vec2<i32>(var_0.x, var_0.x), Struct_1(vec2<bool>(var_1.x, var_1.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec2<u32>(u_input.a, u_input.b.x)), u_input.a, u_input.a)).d).d.c, _wgslsmith_dot_vec3_u32(u_input.b.xyx, min(select(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), u_input.b.zyy, global0.x), vec3<u32>(4294967295u, 0u, u_input.b.x))), u_input.b.x));
}

