struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_2(-596f, Struct_1(vec4<u32>(28715u, 4294967295u, 8279u, 43958u), vec3<u32>(47627u, 1u, 1u), vec4<i32>(1i, 0i, -1i, -47937i), true), vec3<u32>(75232u, 48275u, 1u)), 5984u), Struct_3(Struct_2(-1000f, Struct_1(vec4<u32>(8067u, 1u, 36504u, 94517u), vec3<u32>(1u, 11557u, 71633u), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -1i), false), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), 61381u), Struct_3(Struct_2(132f, Struct_1(vec4<u32>(1u, 1u, 54306u, 0u), vec3<u32>(1u, 0u, 1u), vec4<i32>(44141i, -40695i, 1022i, 1i), true), vec3<u32>(0u, 4294967295u, 0u)), 1u), Struct_3(Struct_2(565f, Struct_1(vec4<u32>(10240u, 4294967295u, 0u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec4<i32>(-1i, i32(-2147483648), 2147483647i, -51083i), true), vec3<u32>(64083u, 77228u, 1u)), 41403u), Struct_3(Struct_2(-814f, Struct_1(vec4<u32>(0u, 4294967295u, 41358u, 81443u), vec3<u32>(1u, 42775u, 44808u), vec4<i32>(3259i, 0i, 2147483647i, 1i), false), vec3<u32>(95799u, 1u, 1u)), 25114u), Struct_3(Struct_2(-1660f, Struct_1(vec4<u32>(1u, 4294967295u, 0u, 36044u), vec3<u32>(12411u, 12269u, 44901u), vec4<i32>(53050i, 2147483647i, -1243i, i32(-2147483648)), false), vec3<u32>(4600u, 1u, 59808u)), 1u), Struct_3(Struct_2(261f, Struct_1(vec4<u32>(67577u, 4294967295u, 19945u, 33603u), vec3<u32>(19055u, 78053u, 66430u), vec4<i32>(22200i, -1i, 494i, 0i), false), vec3<u32>(1u, 23134u, 1u)), 0u), Struct_3(Struct_2(-130f, Struct_1(vec4<u32>(44213u, 4294967295u, 22473u, 0u), vec3<u32>(4294967295u, 1466u, 46129u), vec4<i32>(-43092i, -58191i, -40475i, 0i), false), vec3<u32>(1u, 17773u, 0u)), 8302u), Struct_3(Struct_2(504f, Struct_1(vec4<u32>(1853u, 1u, 1u, 11235u), vec3<u32>(1u, 4294967295u, 23289u), vec4<i32>(i32(-2147483648), 14489i, -26087i, -22412i), true), vec3<u32>(9736u, 10944u, 1u)), 1u), Struct_3(Struct_2(1755f, Struct_1(vec4<u32>(59334u, 70402u, 22565u, 8105u), vec3<u32>(54315u, 5172u, 0u), vec4<i32>(-83463i, -46253i, 47225i, 0i), false), vec3<u32>(1u, 42355u, 29243u)), 65387u), Struct_3(Struct_2(427f, Struct_1(vec4<u32>(4294967295u, 1u, 51473u, 4294967295u), vec3<u32>(4294967295u, 0u, 86245u), vec4<i32>(0i, -494i, 2156i, -23270i), true), vec3<u32>(4227u, 31424u, 97220u)), 32374u), Struct_3(Struct_2(-329f, Struct_1(vec4<u32>(19101u, 0u, 82384u, 14035u), vec3<u32>(21027u, 4313u, 0u), vec4<i32>(2147483647i, 0i, 1562i, -1i), false), vec3<u32>(0u, 0u, 45544u)), 1u), Struct_3(Struct_2(277f, Struct_1(vec4<u32>(4294967295u, 0u, 1u, 1080u), vec3<u32>(59943u, 4294967295u, 1u), vec4<i32>(2147483647i, 0i, -1i, 0i), true), vec3<u32>(22652u, 4294967295u, 4294967295u)), 4294967295u), Struct_3(Struct_2(-1901f, Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec3<u32>(4294967295u, 20530u, 27577u), vec4<i32>(2147483647i, -14529i, 9558i, 18149i), false), vec3<u32>(88618u, 0u, 44270u)), 1u), Struct_3(Struct_2(-1619f, Struct_1(vec4<u32>(0u, 33999u, 4294967295u, 0u), vec3<u32>(4294967295u, 9253u, 0u), vec4<i32>(1i, -35799i, -1i, i32(-2147483648)), true), vec3<u32>(26382u, 0u, 74506u)), 1u), Struct_3(Struct_2(-1000f, Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 44272u), vec3<u32>(0u, 4294967295u, 0u), vec4<i32>(2147483647i, 12119i, -42423i, -13737i), false), vec3<u32>(1u, 5538u, 69518u)), 10527u), Struct_3(Struct_2(-1000f, Struct_1(vec4<u32>(85596u, 11170u, 0u, 4294967295u), vec3<u32>(0u, 69456u, 11986u), vec4<i32>(-61471i, 10805i, 2147483647i, 27657i), true), vec3<u32>(59005u, 0u, 0u)), 70951u), Struct_3(Struct_2(367f, Struct_1(vec4<u32>(18321u, 0u, 1u, 63676u), vec3<u32>(36577u, 1u, 4294967295u), vec4<i32>(-4037i, 47003i, -628i, i32(-2147483648)), false), vec3<u32>(4294967295u, 33107u, 64400u)), 1u), Struct_3(Struct_2(-834f, Struct_1(vec4<u32>(4294967295u, 4759u, 21714u, 4294967295u), vec3<u32>(30727u, 10143u, 4294967295u), vec4<i32>(i32(-2147483648), 0i, -53735i, i32(-2147483648)), true), vec3<u32>(58616u, 4294967295u, 4294967295u)), 1u), Struct_3(Struct_2(-527f, Struct_1(vec4<u32>(44693u, 1u, 4294967295u, 12139u), vec3<u32>(15170u, 1u, 4294967295u), vec4<i32>(-1i, 1i, -22391i, 13148i), true), vec3<u32>(0u, 20922u, 1u)), 4294967295u), Struct_3(Struct_2(456f, Struct_1(vec4<u32>(27876u, 57483u, 16979u, 0u), vec3<u32>(12375u, 53709u, 1u), vec4<i32>(-41813i, 0i, -38804i, 1i), true), vec3<u32>(1u, 4294967295u, 1u)), 1u), Struct_3(Struct_2(793f, Struct_1(vec4<u32>(4071u, 27417u, 1u, 4294967295u), vec3<u32>(58847u, 1u, 0u), vec4<i32>(23522i, 2147483647i, -25654i, -29107i), true), vec3<u32>(0u, 41188u, 48975u)), 23574u), Struct_3(Struct_2(-146f, Struct_1(vec4<u32>(53599u, 1u, 24106u, 12162u), vec3<u32>(0u, 1u, 0u), vec4<i32>(31520i, i32(-2147483648), 1i, 2147483647i), true), vec3<u32>(23339u, 54880u, 1u)), 1u), Struct_3(Struct_2(-422f, Struct_1(vec4<u32>(34162u, 4294967295u, 47984u, 38213u), vec3<u32>(47199u, 1u, 0u), vec4<i32>(25834i, 76079i, -52789i, -10057i), false), vec3<u32>(42615u, 4294967295u, 4294967295u)), 4294967295u), Struct_3(Struct_2(-2236f, Struct_1(vec4<u32>(8499u, 110968u, 6308u, 61891u), vec3<u32>(46471u, 17934u, 13745u), vec4<i32>(-1i, 11069i, 1i, 2147483647i), true), vec3<u32>(13216u, 47725u, 10406u)), 40518u), Struct_3(Struct_2(-792f, Struct_1(vec4<u32>(4294967295u, 0u, 1833u, 1u), vec3<u32>(0u, 532u, 4294967295u), vec4<i32>(-85321i, 10585i, i32(-2147483648), 2147483647i), true), vec3<u32>(0u, 9200u, 4294967295u)), 7141u), Struct_3(Struct_2(-1352f, Struct_1(vec4<u32>(49653u, 0u, 4294967295u, 30u), vec3<u32>(59492u, 830u, 0u), vec4<i32>(6048i, 2147483647i, 57562i, -55851i), false), vec3<u32>(40724u, 0u, 0u)), 3192u), Struct_3(Struct_2(-1460f, Struct_1(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec3<u32>(38519u, 57768u, 6207u), vec4<i32>(0i, -1665i, -45384i, 26086i), false), vec3<u32>(43239u, 14882u, 0u)), 3636u), Struct_3(Struct_2(747f, Struct_1(vec4<u32>(0u, 22508u, 1u, 1u), vec3<u32>(6330u, 0u, 51536u), vec4<i32>(-18180i, 12347i, 2147483647i, -21224i), true), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), 22311u), Struct_3(Struct_2(349f, Struct_1(vec4<u32>(0u, 0u, 1u, 1u), vec3<u32>(1u, 4294967295u, 60065u), vec4<i32>(-1880i, -1i, 47313i, 1043i), true), vec3<u32>(1u, 10149u, 61408u)), 1u), Struct_3(Struct_2(-726f, Struct_1(vec4<u32>(0u, 0u, 1u, 5186u), vec3<u32>(4294967295u, 62933u, 38607u), vec4<i32>(2345i, 26967i, 0i, -39298i), false), vec3<u32>(29410u, 34182u, 17708u)), 67562u), Struct_3(Struct_2(-336f, Struct_1(vec4<u32>(10381u, 71817u, 1u, 37129u), vec3<u32>(96583u, 0u, 0u), vec4<i32>(-22868i, i32(-2147483648), 44124i, 35300i), false), vec3<u32>(0u, 0u, 64951u)), 4294967295u));

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(713f, Struct_1(vec4<u32>(0u, 21506u, 0u, 43092u), vec3<u32>(33592u, 6706u, 0u), vec4<i32>(-7824i, -1i, -27276i, -53655i), false), vec3<u32>(47354u, 6775u, 0u)), Struct_2(730f, Struct_1(vec4<u32>(30334u, 1u, 1u, 92353u), vec3<u32>(0u, 116936u, 1u), vec4<i32>(34997i, -1i, 1i, -14164i), true), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_2(-1975f, Struct_1(vec4<u32>(1u, 0u, 14617u, 0u), vec3<u32>(60117u, 2476u, 5282u), vec4<i32>(-1i, 1i, 2147483647i, 2147483647i), true), vec3<u32>(0u, 1u, 49477u)), Struct_2(1295f, Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec3<u32>(105342u, 4294967295u, 21680u), vec4<i32>(0i, -30617i, 2147483647i, i32(-2147483648)), true), vec3<u32>(1u, 90027u, 4294967295u)), Struct_2(-490f, Struct_1(vec4<u32>(30420u, 4294967295u, 4521u, 4294967295u), vec3<u32>(44273u, 1u, 4294967295u), vec4<i32>(-87287i, 0i, 48347i, 38187i), true), vec3<u32>(12752u, 28582u, 4294967295u)), Struct_2(-135f, Struct_1(vec4<u32>(1u, 1u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 43387u), vec4<i32>(-1i, 1840i, 2147483647i, 28897i), false), vec3<u32>(44841u, 0u, 0u)), Struct_2(-829f, Struct_1(vec4<u32>(39836u, 0u, 63426u, 4294967295u), vec3<u32>(4294967295u, 1u, 69974u), vec4<i32>(0i, -1i, -1i, i32(-2147483648)), true), vec3<u32>(1u, 1u, 1u)), Struct_2(1000f, Struct_1(vec4<u32>(1u, 17401u, 37928u, 80946u), vec3<u32>(0u, 1u, 6311u), vec4<i32>(31291i, 7096i, 1i, 31474i), false), vec3<u32>(2703u, 83895u, 12746u)), Struct_2(-1835f, Struct_1(vec4<u32>(34078u, 1u, 12455u, 0u), vec3<u32>(4294967295u, 21354u, 27670u), vec4<i32>(-1i, 27331i, 30318i, 2147483647i), false), vec3<u32>(4294967295u, 1u, 0u)), Struct_2(520f, Struct_1(vec4<u32>(29986u, 55369u, 12472u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec4<i32>(16454i, i32(-2147483648), 27207i, 1i), false), vec3<u32>(0u, 1u, 3150u)), Struct_2(339f, Struct_1(vec4<u32>(4294967295u, 6142u, 1u, 4294967295u), vec3<u32>(45957u, 1u, 39935u), vec4<i32>(-1996i, -51616i, -7429i, -48217i), false), vec3<u32>(4563u, 46124u, 1u)), Struct_2(-2455f, Struct_1(vec4<u32>(92550u, 26124u, 1u, 52897u), vec3<u32>(0u, 17978u, 29317u), vec4<i32>(-1i, i32(-2147483648), -1i, 9636i), false), vec3<u32>(0u, 12594u, 0u)), Struct_2(-3148f, Struct_1(vec4<u32>(3249u, 34099u, 37565u, 1u), vec3<u32>(4294967295u, 12559u, 28318u), vec4<i32>(i32(-2147483648), 2147483647i, -812i, 5267i), false), vec3<u32>(1u, 11473u, 4294967295u)), Struct_2(-833f, Struct_1(vec4<u32>(314u, 4294967295u, 1u, 41866u), vec3<u32>(12194u, 58319u, 4294967295u), vec4<i32>(-97913i, 5044i, -59995i, -1i), false), vec3<u32>(1u, 0u, 4294967295u)), Struct_2(-1255f, Struct_1(vec4<u32>(5389u, 43184u, 29791u, 0u), vec3<u32>(75823u, 4294967295u, 0u), vec4<i32>(33641i, 37070i, -1i, -1i), false), vec3<u32>(4294967295u, 4294967295u, 3524u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global1 = array<Struct_2, 15>();
    global1 = array<Struct_2, 15>();
    let var_0 = max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -44594i, _wgslsmith_add_i32(u_input.b.x, 33748i)), u_input.b), min(1i, u_input.b.x));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(-198f, -202f, _wgslsmith_f_op_f32(select(1032f, _wgslsmith_f_op_f32(floor(-606f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1229f) - _wgslsmith_f_op_f32(f32(-1f) * -830f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(844f, 1000f, -834f, -2144f) + vec4<f32>(473f, 1644f, 568f, 155f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2310f, -1000f, -1510f, -123f), vec4<f32>(-651f, 1068f, 1902f, -296f), false))))));
    global1 = array<Struct_2, 15>();
    return 0u;
}

fn func_2(arg_0: vec3<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(u_input.b.x), ~abs(u_input.b.x ^ 13854i), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(20785i, u_input.b.x)) ^ ~39414i)), ~u_input.b.zwy);
    global1 = array<Struct_2, 15>();
    let var_1 = Struct_3(Struct_2(623f, Struct_1(vec4<u32>(u_input.a ^ 22382u, u_input.a, func_3(), u_input.a), ~vec3<u32>(0u, u_input.a, 4135u), vec4<i32>(0i, 1392i, var_0.x, var_0.x) | (u_input.b << (vec4<u32>(4294967295u, 1u, u_input.a, u_input.a) % vec4<u32>(32u))), select(false, true, false)), vec3<u32>(4294967295u, 4294967295u, u_input.a)), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, ~(~29785u)), 0u));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(470f, -572f, var_1.a.a), vec3<f32>(480f, var_1.a.a, var_1.a.a), vec3<bool>(true, true, var_1.a.b.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(805f, var_1.a.a, 602f) - vec3<f32>(1000f, 1000f, 1394f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, -386f, var_1.a.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(select(var_1.a.a, var_1.a.a, var_1.a.b.d)), _wgslsmith_f_op_f32(1000f - var_1.a.a))), false)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, var_1.a.a, -363f) - vec3<f32>(var_1.a.a, var_1.a.a, -1217f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, 1008f, var_1.a.a)), vec3<bool>(var_1.a.b.d, arg_0.x, false)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_1.a.a));
    return var_0.xz;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(min(~((arg_1.c.x >> (u_input.a % 32u)) & ~4294967295u), arg_1.e.b.b.x), 15u)], 4294967295u);
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-arg_0.x, _wgslsmith_clamp_i32(52415i, arg_0.x, -2147483647i)), ~countOneBits(vec2<i32>(arg_1.e.b.c.x, 2147483647i) | var_0.a.b.c.zw)) | arg_1.d.zw;
    global0 = array<Struct_3, 32>();
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(var_0.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -1208f))), arg_1.a.a.b, max((vec3<u32>(63548u, 44594u, 49270u) >> (vec3<u32>(0u, var_0.a.c.x, 54918u) % vec3<u32>(32u))) & (arg_1.a.a.c << (vec3<u32>(arg_1.a.a.b.b.x, arg_1.a.a.b.b.x, u_input.a) % vec3<u32>(32u))), ~(~vec3<u32>(arg_1.a.a.c.x, 4294967295u, var_0.a.b.a.x)))), _wgslsmith_clamp_u32(select(~var_0.b, reverseBits(~u_input.a), !(!arg_1.e.b.d)), 39597u, 43085u));
    let var_3 = global0[_wgslsmith_index_u32(select(abs(~(~_wgslsmith_sub_u32(4294967295u, var_0.a.c.x))), 1u, var_0.a.b.d), 32u)];
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1294f - -1440f))), var_0.a.b, vec3<u32>(var_3.a.b.b.x, arg_1.a.b, firstLeadingBit(u_input.a))), 75140u);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>) -> f32 {
    var var_0 = func_4(_wgslsmith_sub_vec2_i32((func_2(vec3<bool>(arg_0.a.b.d, arg_0.a.b.d, arg_0.a.b.d)) | -vec2<i32>(arg_0.a.b.c.x, u_input.b.x)) >> (vec2<u32>(_wgslsmith_mult_u32(24968u, arg_0.b), u_input.a) % vec2<u32>(32u)), abs(vec2<i32>(28679i, _wgslsmith_div_i32(-1i, -28775i)))), Struct_4(Struct_3(global1[_wgslsmith_index_u32(~(~81042u), 15u)], countOneBits(~u_input.a)), select(select(select(vec2<bool>(true, true), vec2<bool>(arg_0.a.b.d, true), vec2<bool>(arg_0.a.b.d, true)), vec2<bool>(arg_0.a.b.d, arg_0.a.b.d), !vec2<bool>(arg_0.a.b.d, arg_0.a.b.d)), vec2<bool>(true, arg_0.a.b.d | true), true), ~abs(arg_0.a.c.xx), (vec4<i32>(u_input.b.x, -8632i, 0i, arg_0.a.b.c.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(743u, u_input.a, u_input.a, 1u), vec4<u32>(arg_0.b, u_input.a, arg_0.a.c.x, 1u)) % vec4<u32>(32u))) | -countOneBits(u_input.b), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(reverseBits(u_input.a), arg_0.b, ~arg_0.a.c.x), 15u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-566f, arg_0.a.a, arg_0.a.a, 989f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a.a, arg_0.a.a, arg_0.a.a, 1138f)))))));
    var_0 = func_4(vec2<i32>(2147483647i, ~u_input.b.x), Struct_4(func_4(~_wgslsmith_mod_vec2_i32(vec2<i32>(-40995i, 20059i), vec2<i32>(arg_0.a.b.c.x, -53312i)), Struct_4(func_4(u_input.b.wz, Struct_4(Struct_3(Struct_2(var_0.a.a, Struct_1(var_0.a.b.a, vec3<u32>(var_0.b, u_input.a, 64635u), vec4<i32>(2147483647i, u_input.b.x, 2147483647i, arg_1.x), var_0.a.b.d), var_0.a.c), 1783u), vec2<bool>(var_0.a.b.d, var_0.a.b.d), vec2<u32>(1u, var_0.a.b.b.x), vec4<i32>(-2030i, 47104i, -2147483647i, 2147483647i), var_0.a), vec4<f32>(1000f, 2030f, arg_0.a.a, -767f)), !vec2<bool>(var_0.a.b.d, arg_0.a.b.d), abs(vec2<u32>(0u, var_0.a.b.b.x)), vec4<i32>(65185i, 43839i, var_0.a.b.c.x, -42136i), func_4(arg_1, Struct_4(global0[_wgslsmith_index_u32(var_0.a.c.x, 32u)], vec2<bool>(arg_0.a.b.d, arg_0.a.b.d), vec2<u32>(0u, var_0.a.b.b.x), vec4<i32>(1i, 0i, 31492i, -2147483647i), Struct_2(-276f, Struct_1(var_0.a.b.a, var_0.a.c, vec4<i32>(u_input.b.x, -1i, u_input.b.x, var_0.a.b.c.x), false), vec3<u32>(var_0.a.c.x, 8710u, 4294967295u))), vec4<f32>(-478f, arg_0.a.a, arg_0.a.a, 208f)).a), vec4<f32>(var_0.a.a, var_0.a.a, _wgslsmith_f_op_f32(abs(var_0.a.a)), var_0.a.a)), select(vec2<bool>(true, true), select(select(vec2<bool>(arg_0.a.b.d, true), vec2<bool>(var_0.a.b.d, arg_0.a.b.d), arg_0.a.b.d), vec2<bool>(false, arg_0.a.b.d), !vec2<bool>(arg_0.a.b.d, arg_0.a.b.d)), !all(vec3<bool>(false, true, false))), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(u_input.a, 103107u)), reverseBits(arg_0.a.c.zy)), ~(vec4<i32>(-1i) * -arg_0.a.b.c), Struct_2(-805f, Struct_1(_wgslsmith_clamp_vec4_u32(arg_0.a.b.a, vec4<u32>(1u, 1u, 4294967295u, 4294967295u), arg_0.a.b.a), arg_0.a.b.b | var_0.a.b.a.xyz, vec4<i32>(2147483647i, u_input.b.x, arg_0.a.b.c.x, arg_1.x), arg_0.a.b.d), vec3<u32>(1u, 4294967295u, 1u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-337f, func_4(vec2<i32>(1i, arg_0.a.b.c.x), Struct_4(Struct_3(var_0.a, 1u), vec2<bool>(var_0.a.b.d, false), vec2<u32>(1u, 0u), vec4<i32>(-1i, arg_0.a.b.c.x, -25887i, u_input.b.x), Struct_2(var_0.a.a, Struct_1(arg_0.a.b.a, var_0.a.c, vec4<i32>(-27172i, u_input.b.x, -44940i, 2147483647i), var_0.a.b.d), vec3<u32>(27344u, arg_0.a.b.a.x, var_0.b))), vec4<f32>(var_0.a.a, -1550f, var_0.a.a, arg_0.a.a)).a.a, 311f, _wgslsmith_f_op_f32(var_0.a.a + var_0.a.a))))));
    global1 = array<Struct_2, 15>();
    var var_1 = arg_0.b;
    var var_2 = Struct_4(arg_0, !(!select(vec2<bool>(false, false), vec2<bool>(arg_0.a.b.d, true), vec2<bool>(arg_0.a.b.d, true))), _wgslsmith_mod_vec2_u32(vec2<u32>(38329u, firstLeadingBit(func_4(arg_0.a.b.c.xw, Struct_4(Struct_3(arg_0.a, arg_0.a.c.x), vec2<bool>(true, true), var_0.a.c.yx, var_0.a.b.c, Struct_2(arg_0.a.a, arg_0.a.b, arg_0.a.b.b)), vec4<f32>(var_0.a.a, -436f, 219f, arg_0.a.a)).b)), _wgslsmith_sub_vec2_u32(var_0.a.b.a.yy ^ (vec2<u32>(u_input.a, 1u) | vec2<u32>(var_0.a.c.x, 4294967295u)), firstTrailingBit(vec2<u32>(arg_0.b, arg_0.b) >> (arg_0.a.b.b.zx % vec2<u32>(32u))))), vec4<i32>(firstTrailingBit(2147483647i), arg_0.a.b.c.x, (u_input.b.x << (_wgslsmith_sub_u32(arg_0.b, 1u) % 32u)) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -1i, -34756i), var_0.a.b.c.yyy), min(vec3<i32>(u_input.b.x, var_0.a.b.c.x, 2147483647i), var_0.a.b.c.xxw)), arg_0.a.b.c.x), func_4(firstLeadingBit(arg_0.a.b.c.zz), Struct_4(arg_0, vec2<bool>(true, var_0.a.b.d), vec2<u32>(var_0.b, ~arg_0.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, var_0.a.b.c.x, var_0.a.b.c.x, arg_0.a.b.c.x), -var_0.a.b.c), arg_0.a), vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.a.a)), arg_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a * 422f) + -1235f), 249f)).a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-102f)) + var_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1015f)) + _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(-691f, Struct_1(vec4<u32>(u_input.a, 51198u, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), u_input.b, false), vec3<u32>(u_input.a, 4294967295u, 1u)), u_input.a), vec2<i32>(0i, -68816i))))), func_4(reverseBits(-vec2<i32>(-35960i, 2147483647i)), Struct_4(global0[_wgslsmith_index_u32(u_input.a, 32u)], vec2<bool>(true, true), ~vec2<u32>(u_input.a, 4294967295u), u_input.b, global1[_wgslsmith_index_u32(select(11069u, 60078u, true), 15u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1332f, -709f, -580f, 955f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(893f, 628f, -1000f, 201f)))).a.b, vec3<u32>(~u_input.a >> (_wgslsmith_div_u32(76018u, u_input.a) % 32u), func_3(), 4294967295u)), _wgslsmith_mult_u32(7071u, firstLeadingBit(u_input.a)) & func_4(-vec2<i32>(u_input.b.x, -2147483647i), Struct_4(func_4(u_input.b.xx, Struct_4(Struct_3(Struct_2(-912f, Struct_1(vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 66742u, u_input.a), vec4<i32>(-15905i, u_input.b.x, 0i, u_input.b.x), true), vec3<u32>(48125u, 32141u, u_input.a)), 4294967295u), vec2<bool>(false, false), vec2<u32>(29554u, u_input.a), u_input.b, global1[_wgslsmith_index_u32(0u, 15u)]), vec4<f32>(976f, 959f, 1675f, -967f)), vec2<bool>(true, true), vec2<u32>(15963u, u_input.a), max(u_input.b, u_input.b), Struct_2(1366f, Struct_1(vec4<u32>(0u, u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 35512u, u_input.a), vec4<i32>(-43827i, u_input.b.x, 2147483647i, u_input.b.x), false), vec3<u32>(u_input.a, 4294967295u, u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(481f, 431f, -856f, -1567f))))).b);
    global1 = array<Struct_2, 15>();
    var_0 = Struct_3(func_4(vec2<i32>(1i, 3289i), Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, func_4(var_0.a.b.c.zz, Struct_4(Struct_3(global1[_wgslsmith_index_u32(var_0.b, 15u)], 4294967295u), vec2<bool>(false, var_0.a.b.d), var_0.a.b.b.yy, vec4<i32>(var_0.a.b.c.x, u_input.b.x, u_input.b.x, -21703i), Struct_2(var_0.a.a, var_0.a.b, var_0.a.c)), vec4<f32>(-2182f, var_0.a.a, 590f, var_0.a.a)).b), 32u)], select(select(vec2<bool>(var_0.a.b.d, var_0.a.b.d), vec2<bool>(var_0.a.b.d, true), false), select(vec2<bool>(var_0.a.b.d, false), vec2<bool>(var_0.a.b.d, var_0.a.b.d), false), true), var_0.a.c.zx, -(vec4<i32>(u_input.b.x, -2147483647i, -28906i, 44130i) >> (vec4<u32>(0u, 90363u, var_0.a.c.x, u_input.a) % vec4<u32>(32u))), var_0.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.a, -1405f, var_0.a.a, _wgslsmith_f_op_f32(var_0.a.a * 484f))))).a, ~48154u);
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.a), var_0.a.a, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-234f, var_0.a.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-252f, -964f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a * var_0.a.a) + -1444f))));
    var var_2 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_0.a.b.a, vec4<u32>(19976u, 75148u, u_input.a, select(29154u, var_0.b, false))), ~var_0.b);
    var_0 = func_4(~(~(-vec2<i32>(30092i, 62830i))) << (vec2<u32>(u_input.a, ~1u) % vec2<u32>(32u)), Struct_4(func_4(reverseBits(-u_input.b.ww), Struct_4(Struct_3(Struct_2(var_1.x, Struct_1(var_0.a.b.a, var_0.a.b.a.wzw, vec4<i32>(u_input.b.x, var_0.a.b.c.x, -8991i, var_0.a.b.c.x), var_0.a.b.d), vec3<u32>(u_input.a, var_0.b, var_0.b)), var_0.a.c.x), !vec2<bool>(false, var_0.a.b.d), firstTrailingBit(vec2<u32>(var_0.b, 4294967295u)), u_input.b, global1[_wgslsmith_index_u32(~1u, 15u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-539f, var_1.x, -982f, -130f))))), vec2<bool>(var_0.a.b.d & true, !var_0.a.b.d), var_0.a.b.a.yy, u_input.b, func_4(vec2<i32>(u_input.b.x, ~u_input.b.x), Struct_4(global0[_wgslsmith_index_u32(var_0.b, 32u)], select(vec2<bool>(var_0.a.b.d, false), vec2<bool>(false, var_0.a.b.d), vec2<bool>(false, var_0.a.b.d)), var_0.a.c.xx, vec4<i32>(61553i, u_input.b.x, 33252i, 2147483647i) | vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, u_input.b.x), var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(757f, var_1.x, -1827f, var_0.a.a) + _wgslsmith_div_vec4_f32(vec4<f32>(313f, -1547f, var_0.a.a, var_1.x), vec4<f32>(var_1.x, var_0.a.a, var_1.x, -323f)))).a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-624f + 772f)), _wgslsmith_f_op_f32(max(1191f, _wgslsmith_f_op_f32(-1528f - -194f))))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.a)) * _wgslsmith_f_op_f32(max(-143f, -1126f))) * var_0.a.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-346f, _wgslsmith_f_op_f32(f32(-1f) * -929f)) + 2383f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -1244f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1653f), 479f)))));
    var_1 = vec2<f32>(-883f, -257f);
    let x = u_input.a;
    s_output = StorageBuffer(select(-(~vec4<i32>(u_input.b.x, var_0.a.b.c.x, var_0.a.b.c.x, -8941i)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, u_input.b.x)), func_4(vec2<i32>(var_0.a.b.c.x, var_0.a.b.c.x), Struct_4(Struct_3(global1[_wgslsmith_index_u32(0u, 15u)], 0u), vec2<bool>(true, var_0.a.b.d), var_0.a.b.b.yz, u_input.b, Struct_2(-2093f, var_0.a.b, var_0.a.b.a.yxw)), vec4<f32>(-620f, var_3, -755f, var_3)).a.b.c.x, _wgslsmith_div_i32(-40364i, u_input.b.x), u_input.b.x), select(select(vec4<bool>(var_0.a.b.d, var_0.a.b.d, false, true), vec4<bool>(var_0.a.b.d, true, var_0.a.b.d, true), true), select(vec4<bool>(var_0.a.b.d, true, true, true), vec4<bool>(true, true, var_0.a.b.d, var_0.a.b.d), true), var_0.a.b.d)) ^ vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, var_0.a.b.c.x), 0i), 1i, func_4(vec2<i32>(-22352i, var_0.a.b.c.x), Struct_4(Struct_3(var_0.a, 4294967295u), vec2<bool>(var_0.a.b.d, var_0.a.b.d), vec2<u32>(6931u, u_input.a), u_input.b, Struct_2(var_0.a.a, var_0.a.b, vec3<u32>(0u, 0u, 1u))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(262f, var_3, var_0.a.a, -1170f), vec4<f32>(var_3, -678f, var_3, -909f)))).a.b.c.x, ~(~0i)));
}

