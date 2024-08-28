struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(false, vec4<bool>(false, true, false, false), vec4<u32>(0u, 17013u, 1u, 26705u), vec4<i32>(11715i, 903i, i32(-2147483648), -56730i), true), Struct_1(false, vec4<bool>(false, false, false, true), vec4<u32>(39528u, 26365u, 0u, 4294967295u), vec4<i32>(0i, -31662i, -27961i, 49402i), false), 7959u, vec2<i32>(38861i, 1i), Struct_1(true, vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 1u, 53364u, 1u), vec4<i32>(2270i, 66546i, -6187i, 25654i), false)), Struct_3(Struct_1(false, vec4<bool>(true, false, true, true), vec4<u32>(7658u, 4925u, 4294967295u, 72531u), vec4<i32>(-25843i, 0i, 3031i, 0i), false), Struct_1(true, vec4<bool>(false, false, true, true), vec4<u32>(4294967295u, 0u, 92476u, 55347u), vec4<i32>(0i, 42020i, 1i, 12755i), true), 6426u, vec2<i32>(i32(-2147483648), -14492i), Struct_1(false, vec4<bool>(false, true, false, true), vec4<u32>(25352u, 42730u, 1u, 38085u), vec4<i32>(33207i, 2147483647i, -1i, -1i), true)), Struct_3(Struct_1(false, vec4<bool>(false, true, true, true), vec4<u32>(4294967295u, 0u, 40004u, 70049u), vec4<i32>(i32(-2147483648), -7893i, 1i, 0i), false), Struct_1(false, vec4<bool>(true, false, false, false), vec4<u32>(4931u, 1u, 1u, 41220u), vec4<i32>(50771i, 35935i, -29965i, 1i), false), 0u, vec2<i32>(-5808i, 29729i), Struct_1(true, vec4<bool>(false, true, true, true), vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<i32>(1i, i32(-2147483648), 34423i, 39098i), false)), Struct_3(Struct_1(false, vec4<bool>(false, true, true, false), vec4<u32>(4294967295u, 4294967295u, 44606u, 82540u), vec4<i32>(-12238i, 4884i, -26848i, -40700i), false), Struct_1(true, vec4<bool>(true, false, true, false), vec4<u32>(37821u, 0u, 38628u, 0u), vec4<i32>(1i, -1i, -26823i, 52796i), false), 4294967295u, vec2<i32>(-14546i, 52937i), Struct_1(false, vec4<bool>(true, false, true, false), vec4<u32>(0u, 4294967295u, 32840u, 0u), vec4<i32>(-20989i, 2147483647i, 25346i, i32(-2147483648)), true)), Struct_3(Struct_1(false, vec4<bool>(true, false, false, false), vec4<u32>(62771u, 4294967295u, 52483u, 0u), vec4<i32>(19771i, -51674i, 44951i, -42163i), true), Struct_1(false, vec4<bool>(true, false, true, true), vec4<u32>(71u, 15105u, 1u, 1u), vec4<i32>(-8127i, 7147i, 0i, 37385i), true), 1u, vec2<i32>(-1i, -1i), Struct_1(true, vec4<bool>(true, false, true, false), vec4<u32>(19810u, 18551u, 1u, 45851u), vec4<i32>(2147483647i, 37817i, 0i, -10010i), true)), Struct_3(Struct_1(true, vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 20773u), vec4<i32>(-1i, -35551i, 12201i, -30717i), true), Struct_1(true, vec4<bool>(true, false, false, false), vec4<u32>(54283u, 1u, 0u, 33254u), vec4<i32>(24225i, -1i, -14343i, 9690i), true), 55372u, vec2<i32>(12338i, 50466i), Struct_1(true, vec4<bool>(true, false, true, true), vec4<u32>(75382u, 0u, 1661u, 25277u), vec4<i32>(2147483647i, -39700i, 23198i, 1i), false)), Struct_3(Struct_1(false, vec4<bool>(true, false, false, false), vec4<u32>(0u, 15394u, 1u, 4294967295u), vec4<i32>(1i, -1i, 3261i, 2147483647i), false), Struct_1(false, vec4<bool>(false, false, true, true), vec4<u32>(1u, 14352u, 84037u, 9381u), vec4<i32>(17138i, 1i, -72275i, 1i), true), 4294967295u, vec2<i32>(-1866i, -52104i), Struct_1(true, vec4<bool>(true, false, true, false), vec4<u32>(20463u, 11493u, 56004u, 4294967295u), vec4<i32>(9168i, -1i, -33938i, i32(-2147483648)), true)), Struct_3(Struct_1(false, vec4<bool>(true, true, true, true), vec4<u32>(19747u, 41401u, 0u, 4294967295u), vec4<i32>(-24404i, 50713i, 0i, -45309i), false), Struct_1(false, vec4<bool>(false, true, false, true), vec4<u32>(4294967295u, 33007u, 4294967295u, 4294967295u), vec4<i32>(-32500i, 0i, 0i, -68636i), true), 53912u, vec2<i32>(48413i, 1i), Struct_1(true, vec4<bool>(false, false, true, false), vec4<u32>(38484u, 40732u, 4294967295u, 93089u), vec4<i32>(-10081i, 27212i, 0i, -1i), false)), Struct_3(Struct_1(true, vec4<bool>(false, true, true, true), vec4<u32>(17978u, 1u, 69304u, 128388u), vec4<i32>(-2458i, -29897i, -29768i, -28135i), false), Struct_1(true, vec4<bool>(true, true, false, true), vec4<u32>(18243u, 0u, 4294967295u, 1u), vec4<i32>(-1i, -1i, -12057i, 18811i), false), 1u, vec2<i32>(42120i, 21344i), Struct_1(true, vec4<bool>(false, false, false, false), vec4<u32>(20073u, 1u, 4294967295u, 19553u), vec4<i32>(-1i, 0i, -1i, 0i), false)), Struct_3(Struct_1(true, vec4<bool>(true, false, true, false), vec4<u32>(44u, 38655u, 16281u, 60473u), vec4<i32>(i32(-2147483648), i32(-2147483648), -607i, i32(-2147483648)), false), Struct_1(false, vec4<bool>(true, true, true, false), vec4<u32>(0u, 1u, 87440u, 4294967295u), vec4<i32>(22287i, 2147483647i, -14448i, 1i), false), 0u, vec2<i32>(i32(-2147483648), -55780i), Struct_1(false, vec4<bool>(false, true, false, false), vec4<u32>(10068u, 24344u, 0u, 4280u), vec4<i32>(0i, -1i, 28176i, 1i), true)), Struct_3(Struct_1(true, vec4<bool>(true, true, false, true), vec4<u32>(1u, 17777u, 20986u, 1u), vec4<i32>(7838i, -1i, 1i, 20826i), true), Struct_1(true, vec4<bool>(false, false, false, true), vec4<u32>(1u, 1290u, 1u, 4294967295u), vec4<i32>(0i, 2147483647i, 11169i, -34810i), false), 0u, vec2<i32>(-22735i, -1i), Struct_1(false, vec4<bool>(true, true, false, false), vec4<u32>(10448u, 4294967295u, 65545u, 28947u), vec4<i32>(28176i, 24895i, 5307i, 1i), false)), Struct_3(Struct_1(false, vec4<bool>(true, true, true, false), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<i32>(0i, 2147483647i, -1i, 0i), false), Struct_1(false, vec4<bool>(false, true, true, true), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<i32>(-1i, -48737i, 2147483647i, -7476i), false), 20231u, vec2<i32>(-47637i, -3387i), Struct_1(true, vec4<bool>(true, false, false, false), vec4<u32>(1u, 4294967295u, 4294967295u, 33947u), vec4<i32>(10421i, -4370i, 1i, 39716i), false)), Struct_3(Struct_1(false, vec4<bool>(false, false, true, false), vec4<u32>(30559u, 1u, 17116u, 88453u), vec4<i32>(7349i, -1i, 29709i, -17246i), false), Struct_1(true, vec4<bool>(false, true, false, true), vec4<u32>(45063u, 1u, 4294967295u, 22910u), vec4<i32>(-1i, 1i, -8820i, 38420i), true), 9743u, vec2<i32>(2959i, -1i), Struct_1(true, vec4<bool>(false, true, true, false), vec4<u32>(26773u, 24305u, 12216u, 19601u), vec4<i32>(1i, 0i, i32(-2147483648), -52504i), false)), Struct_3(Struct_1(false, vec4<bool>(false, false, false, true), vec4<u32>(1u, 4294967295u, 1549u, 4294967295u), vec4<i32>(22853i, -27019i, 33184i, -57134i), false), Struct_1(true, vec4<bool>(true, true, false, true), vec4<u32>(0u, 1u, 33761u, 82754u), vec4<i32>(25372i, 2147483647i, 1i, 15483i), false), 92081u, vec2<i32>(52478i, 29887i), Struct_1(true, vec4<bool>(true, false, false, true), vec4<u32>(9634u, 4294967295u, 72017u, 48224u), vec4<i32>(23967i, 1i, -29752i, 17598i), false)), Struct_3(Struct_1(true, vec4<bool>(false, true, false, true), vec4<u32>(71292u, 1u, 0u, 4294967295u), vec4<i32>(85258i, 1i, 1i, i32(-2147483648)), false), Struct_1(true, vec4<bool>(true, false, true, false), vec4<u32>(35922u, 64511u, 67714u, 68935u), vec4<i32>(2147483647i, i32(-2147483648), 62584i, -1i), true), 4294967295u, vec2<i32>(1i, -59838i), Struct_1(false, vec4<bool>(false, true, true, true), vec4<u32>(0u, 1u, 68862u, 0u), vec4<i32>(0i, -1i, 46940i, 0i), false)), Struct_3(Struct_1(true, vec4<bool>(false, false, false, true), vec4<u32>(75319u, 0u, 67879u, 28706u), vec4<i32>(-12113i, 14748i, -1i, 1i), false), Struct_1(true, vec4<bool>(false, true, true, false), vec4<u32>(1u, 12996u, 107618u, 13125u), vec4<i32>(-27373i, 763i, -35360i, 0i), true), 4294967295u, vec2<i32>(i32(-2147483648), -30195i), Struct_1(false, vec4<bool>(false, false, false, false), vec4<u32>(53130u, 4523u, 0u, 1u), vec4<i32>(35856i, -4962i, 2147483647i, 38126i), true)), Struct_3(Struct_1(true, vec4<bool>(false, true, true, false), vec4<u32>(54070u, 0u, 20096u, 38405u), vec4<i32>(0i, 0i, -5300i, -19994i), false), Struct_1(false, vec4<bool>(true, false, true, true), vec4<u32>(1u, 0u, 60121u, 4294967295u), vec4<i32>(-20782i, 15141i, 1i, -2797i), true), 30849u, vec2<i32>(0i, 19180i), Struct_1(true, vec4<bool>(true, true, false, true), vec4<u32>(7449u, 0u, 4294967295u, 0u), vec4<i32>(17770i, i32(-2147483648), -1i, i32(-2147483648)), false)), Struct_3(Struct_1(true, vec4<bool>(true, true, true, false), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<i32>(2147483647i, -1i, -49649i, 5910i), false), Struct_1(true, vec4<bool>(true, true, true, false), vec4<u32>(75164u, 0u, 1u, 9331u), vec4<i32>(-50733i, 2147483647i, 1i, -1i), true), 1u, vec2<i32>(-28905i, 6225i), Struct_1(true, vec4<bool>(false, true, true, false), vec4<u32>(0u, 0u, 0u, 33272u), vec4<i32>(1i, 22641i, -29404i, -8633i), false)), Struct_3(Struct_1(true, vec4<bool>(false, true, false, true), vec4<u32>(1u, 0u, 1u, 83504u), vec4<i32>(2147483647i, -40508i, 0i, 1i), true), Struct_1(false, vec4<bool>(false, false, true, true), vec4<u32>(0u, 27942u, 1u, 0u), vec4<i32>(14836i, -25828i, 39785i, 1i), true), 68395u, vec2<i32>(1i, 3130i), Struct_1(true, vec4<bool>(false, true, false, true), vec4<u32>(0u, 28123u, 70118u, 4294967295u), vec4<i32>(1i, 1262i, 0i, -40110i), false)), Struct_3(Struct_1(true, vec4<bool>(true, true, true, false), vec4<u32>(1u, 4294967295u, 1u, 81962u), vec4<i32>(1i, 1i, 1i, 0i), true), Struct_1(false, vec4<bool>(false, true, true, true), vec4<u32>(4294967295u, 4294967295u, 9838u, 4294967295u), vec4<i32>(-17866i, 46091i, -24555i, 24087i), true), 1u, vec2<i32>(1i, i32(-2147483648)), Struct_1(true, vec4<bool>(false, false, true, false), vec4<u32>(48202u, 0u, 0u, 32737u), vec4<i32>(493i, -55967i, 1i, -20066i), false)), Struct_3(Struct_1(false, vec4<bool>(true, true, true, false), vec4<u32>(23042u, 4294967295u, 10694u, 2760u), vec4<i32>(-9712i, i32(-2147483648), -19495i, -21314i), false), Struct_1(true, vec4<bool>(true, false, true, false), vec4<u32>(32732u, 1u, 0u, 4294967295u), vec4<i32>(-59682i, 0i, -50759i, i32(-2147483648)), false), 4294967295u, vec2<i32>(0i, 50625i), Struct_1(false, vec4<bool>(false, true, false, true), vec4<u32>(60901u, 4294967295u, 0u, 4294967295u), vec4<i32>(1i, -1i, -1i, 4472i), false)), Struct_3(Struct_1(true, vec4<bool>(false, false, false, false), vec4<u32>(4144u, 67501u, 0u, 50569u), vec4<i32>(9963i, 2147483647i, -52801i, 36485i), true), Struct_1(true, vec4<bool>(false, true, false, false), vec4<u32>(1u, 28264u, 13974u, 1u), vec4<i32>(-59881i, -1i, i32(-2147483648), 2147483647i), true), 62488u, vec2<i32>(6979i, -10001i), Struct_1(true, vec4<bool>(true, true, true, true), vec4<u32>(25063u, 48674u, 4294967295u, 4294967295u), vec4<i32>(1i, 2147483647i, 29892i, 2147483647i), true)));

var<private> global1: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(54183i, -11693i, 40763i), vec3<i32>(i32(-2147483648), -38065i, 1i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), -29199i, i32(-2147483648)), vec3<i32>(0i, -4568i, 11383i), vec3<i32>(1i, 13823i, 2147483647i), vec3<i32>(22682i, 23889i, 9478i), vec3<i32>(0i, -38693i, 0i), vec3<i32>(i32(-2147483648), -55775i, -26337i), vec3<i32>(60040i, -978i, i32(-2147483648)), vec3<i32>(-1i, 1i, 21135i), vec3<i32>(0i, 32698i, -14364i), vec3<i32>(-49853i, i32(-2147483648), 1i), vec3<i32>(1885i, -52269i, -25735i), vec3<i32>(-26492i, i32(-2147483648), -1i), vec3<i32>(0i, 42708i, -27005i), vec3<i32>(-30057i, 95487i, 2147483647i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, -20563i), vec3<i32>(-1i, 0i, 11644i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(800i, i32(-2147483648), 13869i), vec3<i32>(i32(-2147483648), -6227i, 909i), vec3<i32>(28306i, -12892i, 1i), vec3<i32>(2147483647i, -46950i, 0i), vec3<i32>(-10600i, 40609i, 4838i), vec3<i32>(25877i, i32(-2147483648), -41146i), vec3<i32>(0i, -18964i, -48917i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> bool {
    global1 = array<vec3<i32>, 30>();
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 0i), u_input.a.wz), u_input.d), -_wgslsmith_clamp_i32(u_input.a.x, 15062i, 0i))), abs(-_wgslsmith_clamp_vec2_i32(vec2<i32>(34800i, -2147483647i), u_input.a.xw, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-2147483647i, u_input.d)))));
    var var_1 = -(~4780i & firstTrailingBit(0i)) ^ abs(i32(-1i) * -abs(0i));
    var var_2 = ~_wgslsmith_sub_u32(~(select(1u, 16764u, true) ^ u_input.c.x), reverseBits(reverseBits(firstTrailingBit(u_input.b))));
    global1 = array<vec3<i32>, 30>();
    return !(u_input.c.x < 1u);
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    global0 = array<Struct_3, 22>();
    let var_0 = Struct_3(Struct_1(true, !select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))), vec4<u32>(u_input.e, ~u_input.c.x, u_input.b, 1u), u_input.a, (reverseBits(u_input.c.x) ^ ~u_input.c.x) != _wgslsmith_dot_vec4_u32(~u_input.c, select(u_input.c, u_input.c, vec4<bool>(true, false, true, false)))), Struct_1(func_3(), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, false, true), func_3())), vec4<u32>(4294967295u, _wgslsmith_mod_u32(495u, ~u_input.c.x), ~1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c.x, 0u, u_input.b, 1u)), reverseBits(u_input.c))), u_input.a, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), countOneBits(~u_input.e << (countOneBits(firstTrailingBit(4294967295u)) % 32u)), countOneBits(vec2<i32>(arg_0.x, max(-2147483647i, u_input.d))), Struct_1(all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), 4294967295u >= u_input.e)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), vec4<u32>(4294967295u, 33030u, ~(~4294967295u), u_input.c.x), u_input.a, _wgslsmith_add_i32(arg_0.x, _wgslsmith_div_i32(-52770i, -1i)) >= _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, u_input.a.x, 2147483647i), ~u_input.a.wyx)));
    global1 = array<vec3<i32>, 30>();
    var var_1 = _wgslsmith_f_op_f32(-747f * -995f);
    global1 = array<vec3<i32>, 30>();
    return Struct_3(Struct_1(var_0.b.e, !select(vec4<bool>(var_0.a.e, false, true, false), select(vec4<bool>(false, false, false, var_0.b.e), vec4<bool>(var_0.a.a, var_0.a.a, true, var_0.a.b.x), vec4<bool>(true, false, false, var_0.e.b.x)), any(vec2<bool>(var_0.e.b.x, true))), u_input.c, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.e.d.x, arg_0.x, var_0.a.d.x, 2147483647i), vec4<i32>(arg_0.x, var_0.e.d.x, -2147483647i, -9i)), _wgslsmith_mod_vec4_i32(var_0.b.d, vec4<i32>(var_0.d.x, u_input.a.x, u_input.d, -45585i)), vec4<i32>(-2147483647i, arg_0.x, -2147483647i, 82022i)), ~(~vec4<i32>(u_input.d, u_input.d, var_0.b.d.x, var_0.d.x))), var_0.e.b.x), Struct_1(false, select(select(var_0.a.b, vec4<bool>(var_0.e.a, var_0.a.a, var_0.b.a, true), select(var_0.b.b, vec4<bool>(var_0.b.a, var_0.a.b.x, true, var_0.e.a), true)), vec4<bool>(!var_0.a.b.x, true, true, u_input.c.x < 1u), var_0.e.b.x), select(firstLeadingBit(firstTrailingBit(var_0.e.c)), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.c, 36039u, u_input.e, 0u), vec4<u32>(var_0.b.c.x, u_input.e, var_0.c, 53523u)), true), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.d, -2147483647i, 0i, -2147483647i), vec4<i32>(-1i, min(arg_0.x, arg_0.x), var_0.e.d.x >> (23659u % 32u), abs(var_0.d.x))), true), u_input.b, select(firstLeadingBit(~vec2<i32>(var_0.e.d.x, u_input.a.x)), reverseBits(vec2<i32>(~(-15209i), var_0.d.x)), vec2<bool>(var_0.b.b.x, true)), Struct_1(!var_0.e.a && func_3(), var_0.e.b, max(vec4<u32>(~u_input.b, u_input.c.x & var_0.b.c.x, 82923u | var_0.c, 60511u >> (u_input.c.x % 32u)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(7630u, 21886u, u_input.b, 0u), vec4<u32>(50628u, var_0.a.c.x, 67607u, 4294967295u)), ~vec4<u32>(48671u, u_input.b, 28693u, 16742u))), vec4<i32>(arg_0.x, u_input.a.x, u_input.a.x, -2147483647i), any(var_0.a.b.xwz)));
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> Struct_2 {
    let var_0 = -arg_0;
    var var_1 = ~countOneBits(~_wgslsmith_div_i32(i32(-1i) * -1i, arg_1.e.x << (u_input.b % 32u)));
    var var_2 = func_2(select(vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(11383i, u_input.d)), -_wgslsmith_div_vec2_i32(u_input.a.zx, u_input.a.xw), !(!arg_1.a)));
    var var_3 = func_2(firstTrailingBit(vec2<i32>(arg_1.e.x >> (arg_1.c % 32u), _wgslsmith_add_i32(~17426i, arg_1.e.x ^ u_input.a.x))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d) + vec3<f32>(_wgslsmith_f_op_f32(-447f * arg_1.d.x), arg_1.d.x, _wgslsmith_f_op_f32(step(860f, -153f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1820f, arg_1.d.x, 262f), vec3<f32>(364f, arg_1.d.x, -388f), arg_1.a)) - vec3<f32>(arg_1.d.x, arg_1.d.x, -142f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1567f, arg_1.d.x, 916f))))), vec3<bool>(var_3.a.e, false, func_3()))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_1.d)) * vec3<f32>(arg_1.d.x, -639f, 1000f))))));
    return Struct_2(arg_1.c, vec3<u32>(func_2(var_3.d ^ select(vec2<i32>(2147483647i, var_3.d.x), vec2<i32>(1i, -2147483647i), false)).e.c.x, arg_1.c, 38226u), func_2(~max(min(vec2<i32>(-2147483647i, arg_1.e.x), vec2<i32>(u_input.d, arg_1.b)), vec2<i32>(0i, var_2.a.d.x) >> (vec2<u32>(var_2.a.c.x, var_2.b.c.x) % vec2<u32>(32u)))).e, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_4.x)))), _wgslsmith_div_u32(~(~_wgslsmith_dot_vec4_u32(var_3.e.c, var_2.b.c)), ~var_3.b.c.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4) -> f32 {
    let var_0 = ~1u;
    var var_1 = vec4<bool>(!arg_0.c.b.x & false, arg_2.a, all(select(!arg_1.a.b.yy, !(!arg_1.a.b.yz), true)), !all(vec4<bool>(all(vec2<bool>(false, arg_1.a.b.x)), true, arg_0.c.b.x, all(arg_1.a.b.yxw))));
    var var_2 = reverseBits(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(abs(arg_0.c.d), -vec4<i32>(0i, 0i, u_input.d, 23398i))));
    let var_3 = Struct_1(4294967295u < func_1(arg_2.e.x, Struct_4(arg_2.a, max(arg_0.c.d.x, -2147483647i), arg_1.b.c.x, _wgslsmith_f_op_vec3_f32(-arg_2.d), abs(vec3<i32>(arg_2.b, 35632i, -28361i)))).c.c.x, arg_1.b.b, arg_1.a.c, arg_1.b.d, arg_1.c >= ~arg_1.a.c.x);
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -935f);
}

fn func_5(arg_0: vec3<f32>) -> Struct_1 {
    global1 = array<vec3<i32>, 30>();
    global1 = array<vec3<i32>, 30>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(568f)) * _wgslsmith_f_op_f32(f32(-1f) * -558f))), arg_0.x);
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    return Struct_1(all(!select(vec3<bool>(true, true, true), func_2(vec2<i32>(-9120i, -1i)).e.b.zxx, vec3<bool>(false, true, false))), vec4<bool>(false, !(_wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_f_op_f32(-arg_0.x)), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), true), ~select(~vec4<u32>(1u, 16174u, 38042u, u_input.c.x), ~u_input.c, true) | ~vec4<u32>(17848u, u_input.c.x, u_input.b, 20509u), vec4<i32>(u_input.a.x, u_input.d, -1i, ~(-(~u_input.a.x))), false);
}

fn func_6(arg_0: Struct_1) -> StorageBuffer {
    global0 = array<Struct_3, 22>();
    var var_0 = min(select(select(global1[_wgslsmith_index_u32(arg_0.c.x, 30u)], vec3<i32>(u_input.d, arg_0.d.x, arg_0.d.x), vec3<bool>(arg_0.a, false, arg_0.b.x)), vec3<i32>(u_input.d, -2147483647i, arg_0.d.x) >> (u_input.c.ywy % vec3<u32>(32u)), arg_0.b.yyw) << (vec3<u32>(arg_0.c.x, _wgslsmith_mult_u32(arg_0.c.x, u_input.b), firstTrailingBit(3628u)) % vec3<u32>(32u)), u_input.a.wwz) << (_wgslsmith_add_vec3_u32(u_input.c.ywy, _wgslsmith_mod_vec3_u32(u_input.c.zzy, vec3<u32>(~4294967295u, ~1u, ~arg_0.c.x))) % vec3<u32>(32u));
    var var_1 = !func_3();
    global1 = array<vec3<i32>, 30>();
    let var_2 = _wgslsmith_dot_vec3_u32(func_2((-arg_0.d.yy | arg_0.d.xx) ^ vec2<i32>(arg_0.d.x, -12848i)).b.c.xzy, u_input.c.ywy);
    return StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.a.x, u_input.d, reverseBits(var_0.x) ^ _wgslsmith_sub_i32(-2147483647i, u_input.a.x), abs(var_0.x)), vec4<i32>(u_input.a.x, arg_0.d.x, i32(-1i) * -var_0.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-28256i, -20025i, u_input.d), u_input.a.ywx)), vec4<i32>(arg_0.d.x, max(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(u_input.c.x, 30u)]), _wgslsmith_div_i32(-11604i, var_0.x)), -(~var_0.x), 1i << (1u % 32u))), _wgslsmith_f_op_f32(-147f + 1349f), ~abs(u_input.c), -(~vec4<i32>(_wgslsmith_div_i32(2147483647i, u_input.a.x), -26145i, _wgslsmith_div_i32(arg_0.d.x, -36204i), ~(-4099i))), _wgslsmith_mult_u32(~((25338u & var_2) ^ 1u), func_1(_wgslsmith_dot_vec2_i32(u_input.a.wz, u_input.a.yy), Struct_4(false, _wgslsmith_sub_i32(-21736i, 11079i), u_input.e, vec3<f32>(-1806f, -1249f, -1958f), arg_0.d.yzz)).e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(true | all(vec3<bool>(false, false, false))) & (~_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, max(-18299i, u_input.a.x)) == (_wgslsmith_mod_i32(u_input.d, 815i | u_input.d) & -u_input.a.x));
    var var_1 = u_input.e;
    var var_2 = u_input.d;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -504f);
    global0 = array<Struct_3, 22>();
    var_1 = ~1u;
    let var_4 = 0u << (u_input.b % 32u);
    let x = u_input.a;
    s_output = func_6(func_5(vec3<f32>(_wgslsmith_f_op_f32(trunc(660f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(655f * -1000f)), _wgslsmith_f_op_f32(func_4(func_1(u_input.a.x, Struct_4(true, 2147483647i, 1u, vec3<f32>(727f, 147f, 150f), vec3<i32>(-52067i, u_input.d, u_input.a.x))), global0[_wgslsmith_index_u32(38454u, 22u)], Struct_4(true, -29963i, var_4, vec3<f32>(286f, -538f, -1000f), vec3<i32>(u_input.a.x, u_input.d, u_input.d)))))));
}

