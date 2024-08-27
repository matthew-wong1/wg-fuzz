struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(vec2<bool>(true, true), Struct_3(vec3<i32>(2147483647i, 34006i, -31763i), false, Struct_1(vec4<u32>(53879u, 9577u, 0u, 0u), vec3<bool>(true, true, true), 38189u, vec4<u32>(0u, 55813u, 108664u, 14175u)), Struct_1(vec4<u32>(42306u, 28503u, 82879u, 39531u), vec3<bool>(false, false, true), 40860u, vec4<u32>(0u, 73475u, 1u, 30588u)))), Struct_4(vec2<bool>(false, false), Struct_3(vec3<i32>(-39492i, 25417i, 2147483647i), true, Struct_1(vec4<u32>(28905u, 50586u, 51191u, 1u), vec3<bool>(true, true, false), 1u, vec4<u32>(4294967295u, 4294967295u, 2971u, 37546u)), Struct_1(vec4<u32>(1u, 0u, 1u, 48675u), vec3<bool>(true, true, false), 0u, vec4<u32>(18156u, 26251u, 1u, 4294967295u)))), Struct_4(vec2<bool>(false, true), Struct_3(vec3<i32>(2147483647i, 0i, 27444i), false, Struct_1(vec4<u32>(12180u, 1u, 4294967295u, 1u), vec3<bool>(false, false, false), 1u, vec4<u32>(99013u, 10389u, 10412u, 1u)), Struct_1(vec4<u32>(1406u, 10346u, 1u, 55214u), vec3<bool>(false, false, false), 4294967295u, vec4<u32>(104881u, 43774u, 4294967295u, 0u)))), Struct_4(vec2<bool>(false, true), Struct_3(vec3<i32>(-62972i, 0i, -60990i), false, Struct_1(vec4<u32>(0u, 1u, 1351u, 22396u), vec3<bool>(false, false, false), 4981u, vec4<u32>(71713u, 1u, 4294967295u, 31949u)), Struct_1(vec4<u32>(0u, 90987u, 7962u, 13012u), vec3<bool>(false, true, true), 4294967295u, vec4<u32>(0u, 60039u, 1u, 1u)))), Struct_4(vec2<bool>(false, false), Struct_3(vec3<i32>(2147483647i, 0i, i32(-2147483648)), false, Struct_1(vec4<u32>(1u, 30339u, 4294967295u, 27994u), vec3<bool>(true, true, false), 128007u, vec4<u32>(23344u, 32624u, 0u, 8373u)), Struct_1(vec4<u32>(24747u, 98275u, 2970u, 0u), vec3<bool>(true, true, true), 1u, vec4<u32>(0u, 121553u, 0u, 0u)))), Struct_4(vec2<bool>(false, true), Struct_3(vec3<i32>(-8657i, -49360i, i32(-2147483648)), true, Struct_1(vec4<u32>(27949u, 20729u, 1u, 1u), vec3<bool>(true, true, true), 80807u, vec4<u32>(0u, 4294967295u, 72415u, 39818u)), Struct_1(vec4<u32>(1u, 1u, 51042u, 4294967295u), vec3<bool>(false, false, true), 1u, vec4<u32>(49518u, 1u, 0u, 0u)))), Struct_4(vec2<bool>(false, false), Struct_3(vec3<i32>(0i, 1i, i32(-2147483648)), true, Struct_1(vec4<u32>(0u, 4294967295u, 16616u, 4294967295u), vec3<bool>(false, true, false), 18874u, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(0u, 21362u, 4294967295u, 0u), vec3<bool>(false, true, false), 47192u, vec4<u32>(6578u, 4294967295u, 39568u, 22333u)))), Struct_4(vec2<bool>(true, false), Struct_3(vec3<i32>(-1i, -1i, 0i), false, Struct_1(vec4<u32>(0u, 1u, 18378u, 4294967295u), vec3<bool>(true, false, false), 68426u, vec4<u32>(55188u, 1u, 0u, 0u)), Struct_1(vec4<u32>(17759u, 1u, 4234u, 4294967295u), vec3<bool>(false, true, false), 4638u, vec4<u32>(75176u, 1u, 11342u, 36607u)))), Struct_4(vec2<bool>(false, true), Struct_3(vec3<i32>(18606i, -2139i, -1i), true, Struct_1(vec4<u32>(1u, 37422u, 47762u, 0u), vec3<bool>(false, false, false), 49549u, vec4<u32>(114942u, 46117u, 74508u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 14999u, 20930u), vec3<bool>(true, false, true), 142u, vec4<u32>(44141u, 16263u, 1u, 0u)))), Struct_4(vec2<bool>(true, true), Struct_3(vec3<i32>(0i, i32(-2147483648), -1i), false, Struct_1(vec4<u32>(95323u, 20962u, 27325u, 21219u), vec3<bool>(true, true, false), 90649u, vec4<u32>(13584u, 74628u, 36640u, 17388u)), Struct_1(vec4<u32>(97787u, 1u, 15850u, 19009u), vec3<bool>(false, false, true), 3005u, vec4<u32>(8252u, 1u, 1984u, 15199u)))), Struct_4(vec2<bool>(false, true), Struct_3(vec3<i32>(33725i, -37402i, i32(-2147483648)), true, Struct_1(vec4<u32>(1u, 20641u, 0u, 11625u), vec3<bool>(true, true, false), 4294967295u, vec4<u32>(19352u, 7896u, 69168u, 89713u)), Struct_1(vec4<u32>(1u, 66741u, 0u, 54805u), vec3<bool>(true, true, false), 4294967295u, vec4<u32>(1u, 37422u, 64185u, 0u)))), Struct_4(vec2<bool>(false, false), Struct_3(vec3<i32>(i32(-2147483648), -56987i, 0i), true, Struct_1(vec4<u32>(4294967295u, 99557u, 9658u, 0u), vec3<bool>(true, true, true), 3658u, vec4<u32>(15581u, 16058u, 4629u, 42981u)), Struct_1(vec4<u32>(1u, 0u, 0u, 3817u), vec3<bool>(false, true, false), 1u, vec4<u32>(2495u, 5714u, 47688u, 69988u)))), Struct_4(vec2<bool>(true, true), Struct_3(vec3<i32>(2428i, 23367i, -31859i), false, Struct_1(vec4<u32>(0u, 23120u, 36840u, 1u), vec3<bool>(false, false, false), 4294967295u, vec4<u32>(4294967295u, 0u, 68729u, 0u)), Struct_1(vec4<u32>(1u, 0u, 1u, 1u), vec3<bool>(false, false, false), 13914u, vec4<u32>(67572u, 56065u, 50517u, 1u)))), Struct_4(vec2<bool>(false, false), Struct_3(vec3<i32>(13811i, 23974i, -440i), false, Struct_1(vec4<u32>(37193u, 60960u, 4294967295u, 4294967295u), vec3<bool>(true, true, true), 1u, vec4<u32>(0u, 1u, 1866u, 4294967295u)), Struct_1(vec4<u32>(1u, 57570u, 1u, 0u), vec3<bool>(false, true, false), 11757u, vec4<u32>(0u, 56742u, 16319u, 1u)))), Struct_4(vec2<bool>(true, true), Struct_3(vec3<i32>(-25424i, -1i, 14711i), true, Struct_1(vec4<u32>(49337u, 4294967295u, 0u, 4294967295u), vec3<bool>(false, false, true), 2206u, vec4<u32>(133544u, 38183u, 16223u, 1u)), Struct_1(vec4<u32>(4294967295u, 49430u, 13606u, 0u), vec3<bool>(true, false, false), 0u, vec4<u32>(29130u, 11648u, 4294967295u, 0u)))), Struct_4(vec2<bool>(false, true), Struct_3(vec3<i32>(-38768i, 0i, 22821i), false, Struct_1(vec4<u32>(18470u, 49778u, 0u, 1u), vec3<bool>(false, false, false), 4294967295u, vec4<u32>(1u, 4294967295u, 25070u, 0u)), Struct_1(vec4<u32>(27875u, 17582u, 0u, 1u), vec3<bool>(true, false, true), 4294967295u, vec4<u32>(25427u, 4294967295u, 1u, 0u)))), Struct_4(vec2<bool>(true, false), Struct_3(vec3<i32>(i32(-2147483648), 19317i, 0i), true, Struct_1(vec4<u32>(108088u, 65347u, 66937u, 4294967295u), vec3<bool>(true, false, true), 4294967295u, vec4<u32>(59370u, 1u, 4294967295u, 15201u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec3<bool>(false, true, true), 1u, vec4<u32>(0u, 88655u, 4294967295u, 39668u)))), Struct_4(vec2<bool>(false, true), Struct_3(vec3<i32>(2147483647i, 0i, 2147483647i), true, Struct_1(vec4<u32>(4605u, 1u, 62023u, 12237u), vec3<bool>(false, false, true), 4294967295u, vec4<u32>(22222u, 1u, 698u, 4294967295u)), Struct_1(vec4<u32>(20515u, 112679u, 21458u, 11597u), vec3<bool>(true, true, true), 0u, vec4<u32>(1u, 4294967295u, 4080u, 91408u)))), Struct_4(vec2<bool>(true, false), Struct_3(vec3<i32>(-6112i, -1i, 0i), true, Struct_1(vec4<u32>(15256u, 97022u, 1u, 0u), vec3<bool>(false, false, false), 26431u, vec4<u32>(22827u, 46374u, 4294967295u, 3108u)), Struct_1(vec4<u32>(1u, 41103u, 1u, 0u), vec3<bool>(true, true, true), 0u, vec4<u32>(4294967295u, 20778u, 106118u, 1u)))), Struct_4(vec2<bool>(true, false), Struct_3(vec3<i32>(-5227i, -15792i, 818i), false, Struct_1(vec4<u32>(12365u, 39409u, 0u, 65757u), vec3<bool>(false, false, true), 68358u, vec4<u32>(32446u, 1u, 0u, 0u)), Struct_1(vec4<u32>(13065u, 27962u, 4294967295u, 4294967295u), vec3<bool>(false, false, false), 1u, vec4<u32>(27473u, 0u, 15196u, 43252u)))), Struct_4(vec2<bool>(true, false), Struct_3(vec3<i32>(0i, i32(-2147483648), -21904i), false, Struct_1(vec4<u32>(40389u, 1u, 93423u, 0u), vec3<bool>(false, true, false), 13922u, vec4<u32>(54453u, 28411u, 4294967295u, 9151u)), Struct_1(vec4<u32>(1u, 1u, 1u, 18450u), vec3<bool>(true, false, true), 12163u, vec4<u32>(0u, 4294967295u, 1u, 4294967295u)))), Struct_4(vec2<bool>(false, false), Struct_3(vec3<i32>(1i, -31373i, 25335i), false, Struct_1(vec4<u32>(7675u, 34247u, 1u, 1u), vec3<bool>(false, true, false), 7348u, vec4<u32>(60254u, 4294967295u, 35141u, 63880u)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 68019u), vec3<bool>(true, false, false), 4294967295u, vec4<u32>(4294967295u, 34053u, 4294967295u, 1u)))), Struct_4(vec2<bool>(true, false), Struct_3(vec3<i32>(2147483647i, -12889i, -1i), true, Struct_1(vec4<u32>(39714u, 5355u, 1u, 4294967295u), vec3<bool>(true, true, true), 0u, vec4<u32>(0u, 4294967295u, 13142u, 32110u)), Struct_1(vec4<u32>(58041u, 43815u, 101939u, 4294967295u), vec3<bool>(true, true, true), 4294967295u, vec4<u32>(32683u, 37368u, 4294967295u, 0u)))), Struct_4(vec2<bool>(false, true), Struct_3(vec3<i32>(-1i, 1i, -1i), true, Struct_1(vec4<u32>(0u, 46418u, 4294967295u, 4294967295u), vec3<bool>(true, false, false), 9790u, vec4<u32>(12444u, 88224u, 4294967295u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 61373u, 109392u), vec3<bool>(true, false, false), 56523u, vec4<u32>(4294967295u, 22012u, 4294967295u, 17099u)))), Struct_4(vec2<bool>(false, true), Struct_3(vec3<i32>(1i, 11051i, -32633i), true, Struct_1(vec4<u32>(4294967295u, 0u, 50463u, 1u), vec3<bool>(true, true, true), 0u, vec4<u32>(1u, 52072u, 77552u, 42467u)), Struct_1(vec4<u32>(1u, 103293u, 19666u, 0u), vec3<bool>(true, false, false), 1177u, vec4<u32>(1u, 0u, 36423u, 4294967295u)))), Struct_4(vec2<bool>(true, false), Struct_3(vec3<i32>(2147483647i, -11958i, -21327i), false, Struct_1(vec4<u32>(32134u, 1972u, 35874u, 58344u), vec3<bool>(false, false, true), 4531u, vec4<u32>(98420u, 4294967295u, 82884u, 1u)), Struct_1(vec4<u32>(52896u, 122921u, 0u, 0u), vec3<bool>(false, false, false), 0u, vec4<u32>(4294967295u, 21527u, 1u, 23265u)))), Struct_4(vec2<bool>(false, false), Struct_3(vec3<i32>(1i, 3372i, 2823i), false, Struct_1(vec4<u32>(4709u, 4294967295u, 0u, 746u), vec3<bool>(false, false, true), 14560u, vec4<u32>(59039u, 17844u, 0u, 15573u)), Struct_1(vec4<u32>(4294967295u, 0u, 11198u, 1u), vec3<bool>(false, false, false), 1u, vec4<u32>(4294967295u, 49384u, 37760u, 1u)))), Struct_4(vec2<bool>(true, false), Struct_3(vec3<i32>(-4078i, i32(-2147483648), 0i), false, Struct_1(vec4<u32>(4294967295u, 16527u, 4294967295u, 0u), vec3<bool>(false, true, true), 31798u, vec4<u32>(4294967295u, 4294967295u, 17650u, 9930u)), Struct_1(vec4<u32>(4843u, 0u, 11856u, 4294967295u), vec3<bool>(true, true, true), 17337u, vec4<u32>(59092u, 4294967295u, 0u, 1u)))), Struct_4(vec2<bool>(true, true), Struct_3(vec3<i32>(-25456i, 24017i, 1i), false, Struct_1(vec4<u32>(10035u, 4294967295u, 1u, 18213u), vec3<bool>(false, false, true), 1u, vec4<u32>(75057u, 0u, 11483u, 1157u)), Struct_1(vec4<u32>(66258u, 28766u, 0u, 43234u), vec3<bool>(true, false, false), 76134u, vec4<u32>(3861u, 30462u, 23969u, 15598u)))));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: bool) -> bool {
    global0 = array<Struct_4, 29>();
    let var_0 = arg_2;
    return !(!(_wgslsmith_add_u32(~u_input.c, 41273u ^ u_input.e) < 75237u));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-276f, -362f, -217f, 167f), vec4<f32>(382f, -1674f, -823f, -1373f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1151f), -578f, _wgslsmith_f_op_f32(f32(-1f) * -831f), _wgslsmith_f_op_f32(-1336f + 933f))))));
    global0 = array<Struct_4, 29>();
    var var_1 = ~((vec4<u32>(~4294967295u, abs(u_input.a.x), ~42098u, 1u) & ~(~u_input.a)) ^ abs(abs(abs(vec4<u32>(u_input.a.x, 51141u, u_input.a.x, 1429u)))));
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    return ~vec4<u32>(4294967295u, countOneBits(~select(25839u, u_input.e, true)), min(_wgslsmith_dot_vec4_u32(u_input.a, firstLeadingBit(vec4<u32>(u_input.c, var_1.x, 4010u, var_1.x))), reverseBits(31007u)), u_input.e);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = Struct_5(Struct_4(vec2<bool>(!arg_1.b.x, all(select(vec4<bool>(false, arg_0, false, true), vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_0), arg_1.b.x))), Struct_3(select(u_input.d.xzw, u_input.d.xwx, arg_1.b), true, Struct_1(min(vec4<u32>(41809u, u_input.a.x, arg_1.c, arg_1.a.x), vec4<u32>(arg_1.c, arg_1.c, arg_1.d.x, arg_1.a.x)), select(vec3<bool>(true, arg_0, arg_1.b.x), vec3<bool>(true, arg_1.b.x, false), vec3<bool>(arg_0, arg_1.b.x, arg_0)), 0u, func_3()), arg_1)), u_input.d.zyy, 1i, u_input.a.zzw, arg_1);
    var var_1 = !(!vec4<bool>(!(u_input.d.x >= 7351i), true, any(var_0.e.b.yy), !(arg_0 & arg_1.b.x)));
    let var_2 = ~1u ^ arg_1.c;
    var_1 = vec4<bool>(all(var_1.zzx), true, false, arg_1.b.x);
    let var_3 = var_0.d;
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = select(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.xx, u_input.d.zw) >> (u_input.a.xz % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, arg_2, arg_2, u_input.d.x) ^ u_input.d), (-1i << (arg_1.x % 32u)) | _wgslsmith_mult_i32(arg_2, -1i))), ~firstLeadingBit(~u_input.d.yz), arg_0.zx);
    let var_1 = u_input.e >> ((419u ^ (~1u << (arg_1.x % 32u))) % 32u);
    var var_2 = ~vec2<u32>(1u, var_1);
    var_2 = min(reverseBits(~vec2<u32>(u_input.c, _wgslsmith_add_u32(12599u, var_2.x))), u_input.a.ww);
    var var_3 = Struct_4(arg_0.yz, Struct_3(vec3<i32>(abs(var_0.x), 53254i, arg_2 | reverseBits(u_input.b.x)), -1169f >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-175f)))), Struct_1(~vec4<u32>(var_1, u_input.c, var_1, var_2.x), !select(vec3<bool>(true, true, arg_0.x), arg_0, arg_0.x), _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_1), vec2<u32>(4294967295u, 4294967295u)), ~70086u), u_input.a), Struct_1(vec4<u32>(select(1u, arg_1.x, arg_0.x), 6351u, _wgslsmith_sub_u32(var_2.x, var_2.x), 4294967295u), !arg_0, firstLeadingBit(_wgslsmith_mod_u32(var_1, var_1)), u_input.a)));
    return Struct_1(vec4<u32>(~(5189u & _wgslsmith_div_u32(var_1, var_2.x)), _wgslsmith_dot_vec3_u32(var_3.b.c.d.yzy, ~(vec3<u32>(14919u, var_1, 4294967295u) >> (var_3.b.c.a.xxy % vec3<u32>(32u)))), 1u, u_input.e), vec3<bool>(arg_0.x, var_3.a.x, false), ~abs(reverseBits(1u)), ~vec4<u32>(0u, ~arg_1.x, 0u | _wgslsmith_dot_vec4_u32(var_3.b.c.d, var_3.b.d.a), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    var var_0 = func_4(select(vec3<bool>(select(func_1(vec3<i32>(u_input.b.x, u_input.d.x, u_input.d.x), vec3<bool>(false, true, false), false), any(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, true))), false, func_2(any(vec4<bool>(true, false, true, true)), Struct_1(vec4<u32>(u_input.c, u_input.c, 1u, 10824u), vec3<bool>(true, true, true), 4294967295u, u_input.a))), vec3<bool>(all(vec4<bool>(true, false, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), true), vec3<bool>(true, true, true)), max(abs(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 77552u), vec2<u32>(30049u, u_input.c)) >> ((u_input.a.xz << (u_input.a.wx % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<u32>(~1949u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u), firstTrailingBit(u_input.a.x)))), _wgslsmith_clamp_i32(u_input.b.x, ~(~(-1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, u_input.b.x), vec3<i32>(-48241i, 6315i, -29022i)) & (u_input.b.x >> (u_input.a.x % 32u))) & u_input.d.x);
    var var_1 = Struct_3(u_input.d.wzy & u_input.d.wxx, select(true, !var_0.b.x, var_0.b.x && var_0.b.x), func_4(!vec3<bool>(var_0.b.x | var_0.b.x, !var_0.b.x, true), _wgslsmith_mult_vec2_u32(~var_0.d.xx, vec2<u32>(~var_0.a.x, reverseBits(u_input.c))), -2147483647i), func_4(!var_0.b, vec2<u32>(33977u >> (var_0.c % 32u), _wgslsmith_mult_u32(~var_0.c, abs(var_0.a.x))), abs(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(24360i, u_input.d.x), u_input.b), _wgslsmith_sub_vec2_i32(u_input.d.ww, u_input.d.zw)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(1506f)), _wgslsmith_f_op_f32(f32(-1f) * -1031f)), vec2<f32>(1404f, _wgslsmith_f_op_f32(round(-907f))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(824f, -810f), vec2<f32>(-1000f, 1198f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(274f, -615f))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(807f - 1043f) * _wgslsmith_f_op_f32(ceil(565f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(501f, 807f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1009f, 564f) + vec2<f32>(-967f, 827f)))))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-703f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -975f)))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(select(-375f, _wgslsmith_f_op_f32(f32(-1f) * -906f), true && var_1.b))))), -43814i, _wgslsmith_mod_u32(~(59149u << (var_0.d.x % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.c.d, _wgslsmith_clamp_vec4_u32(var_0.d, var_1.d.a, vec4<u32>(var_1.c.c, var_1.c.a.x, var_0.d.x, 4218u))), var_1.c.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1104f, -717f, var_2.x, var_2.x), vec4<f32>(135f, -1000f, 1305f, -674f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -344f, -225f, 317f) - vec4<f32>(var_2.x, var_2.x, -289f, var_2.x)))), !(var_2.x > var_2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1078f, var_2.x, -797f) * vec4<f32>(1124f, 154f, var_2.x, -215f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, var_2.x, -1365f, _wgslsmith_f_op_f32(trunc(-210f)))))));
}

