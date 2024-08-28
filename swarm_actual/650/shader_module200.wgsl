struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
    c: Struct_2,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(2414i, 19246i, 2147483647i, -32177i, 16120i, -32772i, 9030i, -1i, 2147483647i, 2147483647i, 10867i, 21238i, 17080i, 0i, 2147483647i, i32(-2147483648));

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(vec4<u32>(0u, 60242u, 1247u, 1u), true, Struct_2(Struct_1(vec4<bool>(false, false, false, true), 4294967295u, 1i, -3790i), Struct_1(vec4<bool>(false, false, false, true), 8683u, -67407i, -3297i)), vec3<f32>(1290f, -226f, 1273f), vec2<i32>(i32(-2147483648), -1i)), Struct_5(vec4<u32>(0u, 1u, 1u, 1u), true, Struct_2(Struct_1(vec4<bool>(false, true, false, true), 0u, -1i, -1i), Struct_1(vec4<bool>(false, false, false, true), 59104u, i32(-2147483648), -57814i)), vec3<f32>(1546f, 1322f, 158f), vec2<i32>(0i, -12091i)), Struct_5(vec4<u32>(1u, 1575u, 4294967295u, 38976u), true, Struct_2(Struct_1(vec4<bool>(true, false, false, true), 28537u, -1i, -15935i), Struct_1(vec4<bool>(true, false, false, true), 1u, 1i, 4771i)), vec3<f32>(595f, -712f, -1667f), vec2<i32>(11630i, -30612i)), Struct_5(vec4<u32>(4294967295u, 0u, 4294967295u, 34799u), false, Struct_2(Struct_1(vec4<bool>(false, true, true, false), 16254u, 65329i, 0i), Struct_1(vec4<bool>(true, true, false, false), 137328u, -54270i, -1i)), vec3<f32>(531f, -363f, -487f), vec2<i32>(-38787i, 0i)), Struct_5(vec4<u32>(4294967295u, 0u, 71694u, 4294967295u), false, Struct_2(Struct_1(vec4<bool>(false, true, true, true), 0u, -10903i, 18911i), Struct_1(vec4<bool>(false, false, false, false), 23255u, 45869i, 61335i)), vec3<f32>(-1269f, 279f, 950f), vec2<i32>(2147483647i, -1i)), Struct_5(vec4<u32>(1u, 4294967295u, 32686u, 63564u), true, Struct_2(Struct_1(vec4<bool>(true, false, false, true), 4294967295u, 2147483647i, 2147483647i), Struct_1(vec4<bool>(false, true, true, true), 1065u, -1i, 2147483647i)), vec3<f32>(423f, -196f, -314f), vec2<i32>(51788i, 23227i)), Struct_5(vec4<u32>(0u, 0u, 1u, 9176u), true, Struct_2(Struct_1(vec4<bool>(true, true, true, true), 23631u, 1i, -1i), Struct_1(vec4<bool>(false, false, true, false), 4294967295u, i32(-2147483648), -17072i)), vec3<f32>(528f, -615f, 282f), vec2<i32>(0i, -10858i)), Struct_5(vec4<u32>(0u, 33808u, 115756u, 70900u), true, Struct_2(Struct_1(vec4<bool>(false, false, true, false), 6634u, 45229i, -20377i), Struct_1(vec4<bool>(true, false, true, false), 49143u, i32(-2147483648), 2147483647i)), vec3<f32>(614f, 170f, 106f), vec2<i32>(i32(-2147483648), -1i)), Struct_5(vec4<u32>(1u, 58931u, 9877u, 38199u), true, Struct_2(Struct_1(vec4<bool>(true, false, false, true), 0u, 2147483647i, i32(-2147483648)), Struct_1(vec4<bool>(false, false, false, true), 1u, -45183i, 1i)), vec3<f32>(-1388f, -156f, 108f), vec2<i32>(4601i, i32(-2147483648))), Struct_5(vec4<u32>(0u, 4294967295u, 23490u, 97473u), true, Struct_2(Struct_1(vec4<bool>(false, true, true, false), 4294967295u, 2147483647i, 1i), Struct_1(vec4<bool>(false, false, false, false), 16825u, 38474i, 0i)), vec3<f32>(-1557f, -543f, -519f), vec2<i32>(31346i, 72267i)), Struct_5(vec4<u32>(1u, 0u, 4294967295u, 1u), true, Struct_2(Struct_1(vec4<bool>(false, true, true, true), 4294967295u, i32(-2147483648), -3324i), Struct_1(vec4<bool>(false, false, false, true), 4294967295u, i32(-2147483648), -1i)), vec3<f32>(2169f, 1133f, -750f), vec2<i32>(-10494i, -6169i)), Struct_5(vec4<u32>(4294967295u, 5947u, 4294967295u, 1874u), false, Struct_2(Struct_1(vec4<bool>(true, true, false, true), 4294967295u, -14330i, -31372i), Struct_1(vec4<bool>(true, false, true, false), 0u, 2147483647i, 1i)), vec3<f32>(349f, -1084f, 961f), vec2<i32>(4993i, 26010i)), Struct_5(vec4<u32>(57168u, 18409u, 3829u, 4294967295u), true, Struct_2(Struct_1(vec4<bool>(false, false, false, false), 1u, 0i, -1i), Struct_1(vec4<bool>(true, true, true, false), 58495u, 11995i, 9858i)), vec3<f32>(1017f, 275f, -697f), vec2<i32>(-8844i, 1i)), Struct_5(vec4<u32>(40128u, 80070u, 0u, 1u), true, Struct_2(Struct_1(vec4<bool>(false, false, false, false), 0u, 0i, -32510i), Struct_1(vec4<bool>(false, false, true, false), 4775u, -1906i, -1i)), vec3<f32>(645f, -1000f, 614f), vec2<i32>(-1549i, 9907i)), Struct_5(vec4<u32>(68207u, 0u, 21745u, 16010u), false, Struct_2(Struct_1(vec4<bool>(true, false, true, false), 1u, i32(-2147483648), -16695i), Struct_1(vec4<bool>(false, true, false, true), 4294967295u, 15319i, -2520i)), vec3<f32>(-281f, 1360f, 490f), vec2<i32>(1i, 0i)), Struct_5(vec4<u32>(4294967295u, 6289u, 58666u, 1u), true, Struct_2(Struct_1(vec4<bool>(true, true, true, true), 16111u, -1i, 0i), Struct_1(vec4<bool>(false, true, true, true), 0u, i32(-2147483648), 44328i)), vec3<f32>(1460f, -454f, -438f), vec2<i32>(-15972i, 13426i)), Struct_5(vec4<u32>(13034u, 5255u, 4294967295u, 0u), false, Struct_2(Struct_1(vec4<bool>(false, false, true, false), 67367u, i32(-2147483648), -1i), Struct_1(vec4<bool>(true, false, true, true), 11518u, 0i, 421i)), vec3<f32>(-413f, 913f, -1000f), vec2<i32>(1i, 0i)), Struct_5(vec4<u32>(1u, 0u, 4294967295u, 18009u), false, Struct_2(Struct_1(vec4<bool>(false, true, false, true), 0u, 1i, -24835i), Struct_1(vec4<bool>(true, true, true, false), 1u, i32(-2147483648), 0i)), vec3<f32>(-2519f, -101f, 1017f), vec2<i32>(-42623i, 1i)), Struct_5(vec4<u32>(28107u, 55550u, 44419u, 4294967295u), false, Struct_2(Struct_1(vec4<bool>(true, true, false, true), 1u, 1i, 0i), Struct_1(vec4<bool>(false, true, true, true), 1u, 19091i, 2147483647i)), vec3<f32>(-1715f, -782f, -1562f), vec2<i32>(12966i, 59276i)), Struct_5(vec4<u32>(1u, 40807u, 70252u, 29273u), false, Struct_2(Struct_1(vec4<bool>(true, false, false, true), 1u, -10602i, 47160i), Struct_1(vec4<bool>(false, true, false, false), 111582u, -2482i, -9941i)), vec3<f32>(-866f, -594f, -248f), vec2<i32>(-346i, 2147483647i)), Struct_5(vec4<u32>(0u, 6026u, 0u, 81453u), false, Struct_2(Struct_1(vec4<bool>(false, false, false, false), 23021u, i32(-2147483648), -20392i), Struct_1(vec4<bool>(true, false, true, false), 55241u, -1i, -28348i)), vec3<f32>(-2135f, 785f, 927f), vec2<i32>(-56643i, i32(-2147483648))), Struct_5(vec4<u32>(17839u, 4294967295u, 23072u, 1u), true, Struct_2(Struct_1(vec4<bool>(false, false, false, true), 4294967295u, 49510i, 2147483647i), Struct_1(vec4<bool>(true, false, true, false), 5102u, i32(-2147483648), -9890i)), vec3<f32>(144f, 251f, 591f), vec2<i32>(1i, -2474i)), Struct_5(vec4<u32>(0u, 27122u, 3578u, 0u), true, Struct_2(Struct_1(vec4<bool>(true, true, false, true), 15707u, 1i, 1i), Struct_1(vec4<bool>(true, false, true, true), 10487u, -1i, i32(-2147483648))), vec3<f32>(1000f, 915f, 632f), vec2<i32>(1i, 2147483647i)), Struct_5(vec4<u32>(59790u, 4294967295u, 3667u, 1u), false, Struct_2(Struct_1(vec4<bool>(false, false, true, false), 3470u, 13598i, 2935i), Struct_1(vec4<bool>(true, false, true, false), 4294967295u, i32(-2147483648), 29374i)), vec3<f32>(297f, -742f, 299f), vec2<i32>(-9331i, -7087i)), Struct_5(vec4<u32>(0u, 4294967295u, 33050u, 0u), true, Struct_2(Struct_1(vec4<bool>(true, true, true, true), 4294967295u, 2147483647i, 2147483647i), Struct_1(vec4<bool>(false, true, false, false), 53551u, 0i, -1i)), vec3<f32>(243f, -413f, -1000f), vec2<i32>(i32(-2147483648), 4733i)), Struct_5(vec4<u32>(1u, 32836u, 10309u, 39119u), false, Struct_2(Struct_1(vec4<bool>(true, true, true, false), 4294967295u, i32(-2147483648), 2147483647i), Struct_1(vec4<bool>(true, true, false, false), 1u, 45400i, 31874i)), vec3<f32>(204f, -186f, 872f), vec2<i32>(65302i, -1i)), Struct_5(vec4<u32>(3164u, 1127u, 77633u, 0u), false, Struct_2(Struct_1(vec4<bool>(false, false, true, true), 67337u, -1i, -1i), Struct_1(vec4<bool>(false, true, false, true), 1u, -1630i, 1789i)), vec3<f32>(746f, 1617f, 908f), vec2<i32>(19129i, 7984i)), Struct_5(vec4<u32>(4294967295u, 0u, 1u, 4294967295u), false, Struct_2(Struct_1(vec4<bool>(true, true, false, true), 54270u, 2147483647i, 2147483647i), Struct_1(vec4<bool>(false, false, false, true), 1u, 1i, 11238i)), vec3<f32>(-1199f, 2609f, 1739f), vec2<i32>(-1i, 50281i)), Struct_5(vec4<u32>(4294967295u, 0u, 0u, 51668u), false, Struct_2(Struct_1(vec4<bool>(true, true, false, true), 4294967295u, 2147483647i, -3225i), Struct_1(vec4<bool>(true, false, true, true), 25055u, i32(-2147483648), 2147483647i)), vec3<f32>(-1000f, -984f, 2419f), vec2<i32>(2147483647i, 0i)));

var<private> global3: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, true), 41231u, 29993i, 25807i), Struct_1(vec4<bool>(true, true, false, true), 1u, -6879i, i32(-2147483648))), Struct_1(vec4<bool>(false, true, true, false), 21585u, i32(-2147483648), 19518i), vec3<u32>(12265u, 58235u, 1u), -56902i), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false), 19486u, -12523i, 0i), Struct_1(vec4<bool>(true, false, false, true), 33726u, i32(-2147483648), -36235i)), Struct_1(vec4<bool>(true, false, true, false), 1u, 2147483647i, 58522i), vec3<u32>(7976u, 9544u, 15684u), 17399i), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), 1u, -21493i, 1i), Struct_1(vec4<bool>(false, true, false, false), 1u, -1i, -1i)), Struct_1(vec4<bool>(true, true, true, true), 1u, -7312i, -23970i), vec3<u32>(1u, 43598u, 1u), 1i), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false), 5752u, -45760i, 25983i), Struct_1(vec4<bool>(true, false, false, true), 43536u, 59505i, -1i)), Struct_1(vec4<bool>(true, true, true, false), 55249u, 35386i, 972i), vec3<u32>(4294967295u, 35345u, 97158u), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false), 60336u, i32(-2147483648), 1i), Struct_1(vec4<bool>(false, true, false, false), 4294967295u, -37801i, 34017i)), Struct_1(vec4<bool>(true, true, true, false), 9533u, 2147483647i, 0i), vec3<u32>(44845u, 1u, 21531u), -23748i), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, true), 4294967295u, 12509i, -58687i), Struct_1(vec4<bool>(true, false, true, true), 50830u, 13900i, -27167i)), Struct_1(vec4<bool>(true, true, false, true), 4294967295u, 2147483647i, -1i), vec3<u32>(36074u, 28884u, 0u), 1i), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, true), 4294967295u, 0i, 12338i), Struct_1(vec4<bool>(false, false, false, false), 4294967295u, -1i, -7123i)), Struct_1(vec4<bool>(true, false, true, false), 12059u, 53213i, i32(-2147483648)), vec3<u32>(4294967295u, 4294967295u, 0u), 1i), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, false, true), 1u, 2147483647i, 10985i), Struct_1(vec4<bool>(true, false, true, false), 74460u, i32(-2147483648), -71154i)), Struct_1(vec4<bool>(true, true, true, true), 4294967295u, 26155i, 16803i), vec3<u32>(54885u, 0u, 1u), 2147483647i), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, false, true), 14882u, -7910i, 2147483647i), Struct_1(vec4<bool>(true, false, false, false), 0u, 2147483647i, 1i)), Struct_1(vec4<bool>(false, true, true, true), 27019u, 1i, i32(-2147483648)), vec3<u32>(1u, 4294967295u, 4294967295u), 1i), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, true), 18704u, 25822i, 2147483647i), Struct_1(vec4<bool>(false, false, true, false), 1u, i32(-2147483648), -11291i)), Struct_1(vec4<bool>(false, true, true, false), 4294967295u, 0i, 3285i), vec3<u32>(36297u, 62724u, 23008u), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), 4294967295u, -41240i, 43119i), Struct_1(vec4<bool>(false, false, false, false), 16379u, -63878i, 0i)), Struct_1(vec4<bool>(true, false, true, false), 4294967295u, -13252i, 0i), vec3<u32>(1u, 1u, 55268u), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), 24330u, -22238i, i32(-2147483648)), Struct_1(vec4<bool>(false, false, true, false), 1u, 10359i, 8428i)), Struct_1(vec4<bool>(false, false, false, false), 0u, 6107i, 2147483647i), vec3<u32>(1u, 25786u, 2631u), -1i), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), 8262u, -30916i, 40257i), Struct_1(vec4<bool>(true, false, false, false), 1u, 42694i, 5627i)), Struct_1(vec4<bool>(true, true, false, true), 94131u, -28681i, 236i), vec3<u32>(63314u, 4294967295u, 24974u), -1i), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, false, true), 1u, i32(-2147483648), -1i), Struct_1(vec4<bool>(true, true, true, true), 33303u, -18647i, 1i)), Struct_1(vec4<bool>(false, true, false, false), 11655u, -51960i, 0i), vec3<u32>(0u, 1u, 16639u), -16555i), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), 0u, 23480i, 0i), Struct_1(vec4<bool>(true, true, true, true), 4294967295u, 85287i, 1i)), Struct_1(vec4<bool>(true, false, true, true), 0u, i32(-2147483648), -21548i), vec3<u32>(61625u, 4294967295u, 0u), 8528i), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), 4656u, 0i, 13429i), Struct_1(vec4<bool>(true, false, true, true), 0u, -1i, 1i)), Struct_1(vec4<bool>(false, true, false, true), 0u, 2147483647i, 1i), vec3<u32>(4304u, 9666u, 56269u), 38770i), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), 4294967295u, 29009i, 38258i), Struct_1(vec4<bool>(false, false, false, true), 12529u, 0i, 2147483647i)), Struct_1(vec4<bool>(false, true, true, true), 4294967295u, 36534i, -53718i), vec3<u32>(25056u, 4294967295u, 4294967295u), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, true), 4294967295u, -1i, -6509i), Struct_1(vec4<bool>(true, false, true, true), 1u, 2147483647i, 49457i)), Struct_1(vec4<bool>(false, true, true, true), 20283u, -19027i, 5960i), vec3<u32>(34298u, 1u, 4294967295u), 1i), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false), 0u, i32(-2147483648), i32(-2147483648)), Struct_1(vec4<bool>(true, true, false, false), 15873u, 43581i, 55597i)), Struct_1(vec4<bool>(true, false, false, false), 4294967295u, 3520i, 44964i), vec3<u32>(30385u, 4294967295u, 46849u), 21547i), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, false), 4294967295u, 1i, 22120i), Struct_1(vec4<bool>(true, true, true, true), 14149u, 73086i, 1i)), Struct_1(vec4<bool>(false, false, false, false), 0u, 1158i, 4124i), vec3<u32>(31101u, 1443u, 17510u), 1i));

var<private> global4: vec4<u32> = vec4<u32>(29529u, 1u, 10604u, 31542u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: bool) -> vec4<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a))))), !(!(!vec4<bool>(false, false, arg_1.d.a.a.a.x, true))), global3[_wgslsmith_index_u32(~arg_0.x, 20u)], arg_1.c);
    let var_1 = Struct_5(~(~u_input.e), any(!select(var_0.c.a.a.a, !vec4<bool>(arg_2, false, true, false), arg_1.d.a.a.a.x || false)), var_0.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1849f, 514f, 639f))))), abs(reverseBits(vec2<i32>(-var_0.c.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1.d.d, global0[_wgslsmith_index_u32(33187u, 16u)]), vec3<i32>(u_input.a, arg_1.d.b.c, -46643i))))));
    var var_2 = Struct_5(vec4<u32>(var_0.c.b.b, _wgslsmith_mod_u32(min(32774u << (arg_0.x % 32u), 1u), _wgslsmith_mult_u32(u_input.d, var_1.c.a.b) ^ min(global4.x, u_input.b.x)), var_1.c.b.b, 16753u | _wgslsmith_clamp_u32(0u, ~4294967295u, global4.x)), true, arg_1.d.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(arg_1.a + -874f)))), 742f, -1945f), vec2<i32>(1i, 10959i));
    global0 = array<i32, 16>();
    var var_3 = 2147483647i;
    return vec4<bool>(!all(!vec2<bool>(false, arg_1.b.x)), (false && var_1.c.b.a.x) && var_1.b, false, true);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(select(vec4<bool>(global4.x < global4.x, true, true, all(vec2<bool>(true, true))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), true), false), 1u, _wgslsmith_sub_i32(~0i, abs(_wgslsmith_div_i32(u_input.a, u_input.a))), i32(-1i) * -global0[_wgslsmith_index_u32(~30514u, 16u)]), Struct_1(func_3(abs(~u_input.e.yz), Struct_4(_wgslsmith_f_op_f32(step(-1142f, 2716f)), vec4<bool>(false, false, true, true), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4.x, u_input.d, global4.x), 20u)], Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false), 26500u, 1i, u_input.a), Struct_1(vec4<bool>(false, true, true, false), global4.x, -2147483647i, u_input.a)), Struct_1(vec4<bool>(false, true, false, true), u_input.b.x, global0[_wgslsmith_index_u32(global4.x, 16u)], global0[_wgslsmith_index_u32(u_input.d, 16u)]), global4.xyz, 30738i)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)))), _wgslsmith_mod_u32(reverseBits(global4.x), firstTrailingBit(8857u << (global4.x % 32u))), -15315i, -1i));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(544f + -1502f) * _wgslsmith_div_f32(-187f, 476f))) + 361f), func_3(min(global4.xw, ~vec2<u32>(4294967295u, 17122u)) ^ firstTrailingBit(vec2<u32>(global4.x, u_input.e.x)), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -848f) + _wgslsmith_f_op_f32(round(-1105f))), var_0.a.a, Struct_3(Struct_2(Struct_1(vec4<bool>(var_0.a.a.x, var_0.a.a.x, false, true), 57747u, u_input.a, u_input.a), Struct_1(vec4<bool>(false, var_0.a.a.x, var_0.b.a.x, true), u_input.d, 1i, global0[_wgslsmith_index_u32(u_input.c, 16u)])), Struct_1(vec4<bool>(true, true, var_0.a.a.x, var_0.b.a.x), u_input.b.x, 34805i, -9737i), ~vec3<u32>(var_0.a.b, 20234u, u_input.b.x), global0[_wgslsmith_index_u32(~15581u, 16u)]), global3[_wgslsmith_index_u32(~(20426u | u_input.c), 20u)]), var_0.a.a.x), Struct_3(Struct_2(var_0.a, var_0.b), Struct_1(var_0.a.a, var_0.b.b, firstTrailingBit(-2147483647i), global0[_wgslsmith_index_u32(var_0.a.b, 16u)]), select(~firstTrailingBit(vec3<u32>(u_input.c, global4.x, 4294967295u)), vec3<u32>(8737u, ~u_input.d, global4.x), var_0.b.a.yyz), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(u_input.a, 1i)), select(vec2<i32>(var_0.a.c, 1i) >> (u_input.b % vec2<u32>(32u)), ~vec2<i32>(u_input.a, 0i), var_0.a.a.zw))), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~global4.zyw & ~global4.wzx, vec3<u32>(u_input.d, var_0.a.b, var_0.b.b) & _wgslsmith_add_vec3_u32(global4.yyz, global4.wyz)), 20u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1118f, var_1.a, -150f, var_1.a))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1733f, var_1.a, var_1.a, var_1.a))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(519f, var_1.a, var_1.a, var_1.a)))))))));
    var var_3 = var_1;
    var_3 = var_1;
    return Struct_2(Struct_1(var_0.b.a, var_0.b.b, abs(_wgslsmith_mult_i32(u_input.a ^ -57608i, -3272i)), reverseBits(_wgslsmith_clamp_i32(var_0.b.d, _wgslsmith_mod_i32(6550i, u_input.a), u_input.a))), Struct_1(select(!var_1.b, vec4<bool>(!var_3.c.b.a.x, 1410f > var_2.x, true, all(var_0.a.a.zz)), any(select(var_3.c.b.a.zw, vec2<bool>(var_3.c.b.a.x, true), vec2<bool>(var_3.c.a.b.a.x, false)))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(44456u, 1u), var_1.d.c.zz), var_0.a.c, _wgslsmith_mod_i32(24448i, _wgslsmith_sub_i32(u_input.a ^ global0[_wgslsmith_index_u32(0u, 16u)], var_1.d.d & global0[_wgslsmith_index_u32(var_1.d.a.b.b, 16u)]))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = arg_2.x;
    var var_1 = select(_wgslsmith_mod_u32(~0u, ~_wgslsmith_dot_vec2_u32(~arg_0.a.xx, vec2<u32>(arg_1.a.b.b, arg_1.b.b))), _wgslsmith_mult_u32(arg_1.a.a.b, _wgslsmith_mult_u32(min(u_input.c, global4.x), arg_0.c.b.b)), all(select(arg_0.c.b.a, arg_0.c.a.a, arg_1.a.b.a)));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-780f * 1496f), vec4<bool>(all(vec4<bool>(func_3(vec2<u32>(1u, arg_1.b.b), Struct_4(arg_0.d.x, arg_0.c.b.a, global3[_wgslsmith_index_u32(arg_0.c.b.b, 20u)], Struct_3(arg_0.c, arg_0.c.b, arg_1.c, -2147483647i)), true).x, arg_1.b.a.x, true, !arg_0.c.b.a.x)), true, !(-2147483647i != reverseBits(global0[_wgslsmith_index_u32(33202u, 16u)])), arg_1.a.b.a.x), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global4.x, u_input.c), 20u)], global3[_wgslsmith_index_u32(3387u, 20u)]);
    let var_3 = u_input.e;
    var var_4 = 1i;
    return min((_wgslsmith_mult_u32(~arg_1.a.a.b, ~var_3.x) << (~arg_1.c.x % 32u)) | ~0u, _wgslsmith_mod_u32(~(~(arg_0.c.a.b >> (global4.x % 32u))), abs(~global4.x)));
}

fn func_1(arg_0: f32, arg_1: u32) -> StorageBuffer {
    global2 = array<Struct_5, 29>();
    global4 = vec4<u32>(24330u, ~abs(u_input.d << (abs(1u) % 32u)), 7057u, func_4(Struct_5(select(vec4<u32>(4294967295u, arg_1, 15310u, u_input.c), abs(u_input.e), false), all(vec2<bool>(true, false)) || true, func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -384f)), _wgslsmith_sub_vec2_i32(vec2<i32>(9453i, -49971i), -vec2<i32>(-2303i, 15283i))), global3[_wgslsmith_index_u32(u_input.b.x, 20u)], _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-44145i, 57357i, 18706i), vec3<i32>(20587i, global0[_wgslsmith_index_u32(4294967295u, 16u)], -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(1i, global0[_wgslsmith_index_u32(5636u, 16u)], 0i))) << (reverseBits(firstLeadingBit(vec3<u32>(u_input.e.x, global4.x, 14769u))) % vec3<u32>(32u)), ~(-countOneBits(vec2<i32>(u_input.a, 40588i)))));
    var var_0 = Struct_1(select(select(vec4<bool>(1940i == global0[_wgslsmith_index_u32(1u, 16u)], func_2().a.a.x, true, true), vec4<bool>(select(true, true, false), true, true, true), global4.x <= arg_1), !vec4<bool>(true, true, any(vec2<bool>(true, false)), -43066i < u_input.a), vec4<bool>(true, !all(vec2<bool>(true, false)), true, func_2().a.a.x)), 15295u, 23989i, 44444i);
    let var_1 = global2[_wgslsmith_index_u32(var_0.b, 29u)];
    let var_2 = Struct_5(vec4<u32>(arg_1, ~countOneBits(max(var_1.a.x, var_0.b)), firstLeadingBit(var_0.b << (4294967295u % 32u)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.x, 0u, 1u, u_input.d), select(u_input.e, vec4<u32>(4294967295u, var_0.b, 6754u, arg_1), var_1.c.b.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * arg_0), _wgslsmith_f_op_f32(var_1.d.x + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) - _wgslsmith_f_op_f32(-var_1.d.x)))) <= arg_0, Struct_2(var_1.c.b, func_2().b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(var_1.d, vec3<f32>(var_1.d.x, 990f, var_1.d.x)))))), ~vec2<i32>(1i, var_1.e.x) ^ ~(-vec2<i32>(var_1.c.a.d, -2147483647i)));
    return StorageBuffer(vec3<i32>(var_0.c, global0[_wgslsmith_index_u32(~28791u, 16u)], (-1i << (arg_1 % 32u)) & (18333i | var_0.d)) ^ vec3<i32>(1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.c, 1i, u_input.a, -1i), vec4<i32>(var_0.c, var_0.c, var_0.c, -37901i) << (vec4<u32>(23340u, 0u, global4.x, 37184u) % vec4<u32>(32u))), -29549i), _wgslsmith_f_op_f32(var_2.d.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1108f, 1037f)), _wgslsmith_f_op_f32(var_2.d.x + -167f)))), _wgslsmith_div_vec4_i32(vec4<i32>(~var_0.c, _wgslsmith_mult_i32(u_input.a, 49372i), 4808i, 0i), -_wgslsmith_add_vec4_i32(vec4<i32>(0i, 5433i, var_1.c.b.d, var_0.d), vec4<i32>(2147483647i, var_0.c, u_input.a, -25997i))) | vec4<i32>(~var_2.c.b.d, _wgslsmith_dot_vec2_i32(-var_1.e, var_2.e), 1i, 13847i), vec3<i32>(-47231i, u_input.a, _wgslsmith_sub_i32(var_0.d, max(-33214i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 16>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2038f + 670f) * 664f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) + 208f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-469f, _wgslsmith_div_f32(1373f, _wgslsmith_f_op_f32(-826f - -1812f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1805f)), 1f)))), _wgslsmith_f_op_f32(-1f));
    let x = u_input.a;
    s_output = func_1(var_0.x, _wgslsmith_sub_u32(~79108u, 2396u));
}

