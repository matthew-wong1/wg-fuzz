struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(2147483647i, Struct_1(vec3<i32>(-30277i, -11688i, i32(-2147483648)), vec2<i32>(-31904i, 1i), vec4<f32>(-255f, 1196f, 1015f, 914f), vec4<u32>(13598u, 0u, 4294967295u, 4294967295u), vec4<bool>(true, false, false, true)), 44729i, vec3<u32>(1u, 4294967295u, 8293u), Struct_1(vec3<i32>(-51482i, i32(-2147483648), 2147483647i), vec2<i32>(-1587i, 12349i), vec4<f32>(121f, 1699f, -2197f, 277f), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<bool>(false, true, true, true))), Struct_2(-3823i, Struct_1(vec3<i32>(23560i, 587i, -36493i), vec2<i32>(1i, -12562i), vec4<f32>(-309f, 1556f, 185f, -1000f), vec4<u32>(18179u, 35062u, 28118u, 29282u), vec4<bool>(true, false, false, false)), 21333i, vec3<u32>(68870u, 1u, 1u), Struct_1(vec3<i32>(0i, 1266i, 0i), vec2<i32>(0i, -13506i), vec4<f32>(589f, -1098f, -573f, 336f), vec4<u32>(18957u, 58730u, 62051u, 13778u), vec4<bool>(false, true, true, false))), Struct_2(-10591i, Struct_1(vec3<i32>(0i, -618i, 31160i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<f32>(-821f, -157f, 1322f, 369f), vec4<u32>(18645u, 31351u, 95556u, 0u), vec4<bool>(false, false, true, true)), -1i, vec3<u32>(54139u, 39011u, 1u), Struct_1(vec3<i32>(i32(-2147483648), 0i, -9902i), vec2<i32>(-1i, -9151i), vec4<f32>(-214f, -258f, -118f, -1017f), vec4<u32>(33127u, 25777u, 37442u, 4294967295u), vec4<bool>(false, false, false, false))), Struct_2(-16137i, Struct_1(vec3<i32>(1i, 12361i, -109120i), vec2<i32>(1i, i32(-2147483648)), vec4<f32>(-898f, -2081f, 294f, 405f), vec4<u32>(44054u, 52150u, 1u, 0u), vec4<bool>(false, false, true, true)), 60789i, vec3<u32>(138564u, 30101u, 1u), Struct_1(vec3<i32>(-1i, -2336i, 1i), vec2<i32>(65285i, 0i), vec4<f32>(691f, -196f, -1701f, -2089f), vec4<u32>(41412u, 142887u, 58332u, 1u), vec4<bool>(false, false, false, true))), Struct_2(26675i, Struct_1(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec2<i32>(-39651i, 0i), vec4<f32>(524f, -1864f, -1160f, -361f), vec4<u32>(4294967295u, 17343u, 1u, 81104u), vec4<bool>(true, true, true, true)), -1i, vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(vec3<i32>(41318i, -1i, -32355i), vec2<i32>(0i, 5148i), vec4<f32>(956f, 1000f, 571f, -1706f), vec4<u32>(33244u, 4637u, 0u, 1u), vec4<bool>(false, false, true, true))), Struct_2(2147483647i, Struct_1(vec3<i32>(11797i, -6532i, -1i), vec2<i32>(32653i, 2147483647i), vec4<f32>(1024f, 602f, -676f, 1294f), vec4<u32>(0u, 44122u, 3198u, 0u), vec4<bool>(true, false, false, true)), -53i, vec3<u32>(11259u, 1u, 23458u), Struct_1(vec3<i32>(15634i, -33640i, -4383i), vec2<i32>(-1i, 0i), vec4<f32>(1000f, -299f, 660f, 398f), vec4<u32>(1u, 11053u, 4294967295u, 1u), vec4<bool>(false, false, true, false))), Struct_2(21585i, Struct_1(vec3<i32>(i32(-2147483648), 0i, 0i), vec2<i32>(11112i, 2147483647i), vec4<f32>(-198f, -1289f, -153f, -430f), vec4<u32>(1u, 0u, 0u, 1u), vec4<bool>(false, true, true, true)), 0i, vec3<u32>(78341u, 0u, 69353u), Struct_1(vec3<i32>(42038i, 0i, 16812i), vec2<i32>(0i, 0i), vec4<f32>(-646f, -199f, 500f, 103f), vec4<u32>(4294967295u, 0u, 7366u, 44277u), vec4<bool>(false, false, false, false))), Struct_2(-20657i, Struct_1(vec3<i32>(-1137i, 29693i, 14428i), vec2<i32>(2147483647i, 60856i), vec4<f32>(-986f, -1744f, 1583f, -191f), vec4<u32>(0u, 61537u, 4294967295u, 0u), vec4<bool>(true, true, false, true)), i32(-2147483648), vec3<u32>(38489u, 1u, 17033u), Struct_1(vec3<i32>(-1i, -1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -19174i), vec4<f32>(106f, 514f, 653f, 1845f), vec4<u32>(4294967295u, 0u, 42809u, 43315u), vec4<bool>(true, true, false, false))), Struct_2(i32(-2147483648), Struct_1(vec3<i32>(-7650i, -27471i, 0i), vec2<i32>(-13125i, 44982i), vec4<f32>(-271f, 886f, -1083f, -1021f), vec4<u32>(33981u, 10010u, 0u, 0u), vec4<bool>(false, false, true, false)), 0i, vec3<u32>(1u, 0u, 0u), Struct_1(vec3<i32>(2147483647i, 34932i, 0i), vec2<i32>(35387i, 43649i), vec4<f32>(1131f, -861f, -1276f, -1326f), vec4<u32>(109939u, 1u, 68871u, 18479u), vec4<bool>(false, true, false, false))), Struct_2(2147483647i, Struct_1(vec3<i32>(1i, -7046i, i32(-2147483648)), vec2<i32>(-31263i, 0i), vec4<f32>(584f, -374f, 581f, 470f), vec4<u32>(39020u, 15054u, 0u, 4294967295u), vec4<bool>(true, false, true, false)), -33185i, vec3<u32>(0u, 1u, 32844u), Struct_1(vec3<i32>(-37028i, -1i, 0i), vec2<i32>(17021i, 15713i), vec4<f32>(1000f, -1000f, 1000f, 128f), vec4<u32>(1u, 4294967295u, 1u, 64779u), vec4<bool>(true, true, true, true))), Struct_2(-26410i, Struct_1(vec3<i32>(1i, -18203i, 16142i), vec2<i32>(15757i, 23641i), vec4<f32>(-607f, -261f, -267f, -2159f), vec4<u32>(50122u, 51356u, 1145u, 1u), vec4<bool>(true, true, false, false)), 60564i, vec3<u32>(43014u, 12141u, 1u), Struct_1(vec3<i32>(17041i, 1i, 2147483647i), vec2<i32>(34473i, 8275i), vec4<f32>(927f, 1000f, -967f, -1576f), vec4<u32>(0u, 27479u, 0u, 1u), vec4<bool>(true, true, false, true))), Struct_2(2147483647i, Struct_1(vec3<i32>(986i, -39044i, 2951i), vec2<i32>(45419i, 25217i), vec4<f32>(-276f, -1383f, 525f, -261f), vec4<u32>(32439u, 8089u, 1u, 4294967295u), vec4<bool>(true, true, true, true)), -20826i, vec3<u32>(4294967295u, 17366u, 0u), Struct_1(vec3<i32>(-9237i, 18930i, -442i), vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(-723f, 2185f, -1053f, 1127f), vec4<u32>(34364u, 10143u, 24033u, 0u), vec4<bool>(true, false, false, false))), Struct_2(0i, Struct_1(vec3<i32>(-32390i, 1i, 39720i), vec2<i32>(36100i, 0i), vec4<f32>(608f, 666f, 1000f, 614f), vec4<u32>(40111u, 0u, 0u, 650u), vec4<bool>(true, false, true, true)), 0i, vec3<u32>(1u, 1u, 58536u), Struct_1(vec3<i32>(41215i, -1i, 2467i), vec2<i32>(2147483647i, 2147483647i), vec4<f32>(-1000f, 916f, 1173f, 941f), vec4<u32>(1u, 4294967295u, 1u, 37296u), vec4<bool>(true, false, true, true))), Struct_2(-6013i, Struct_1(vec3<i32>(-25679i, 9732i, i32(-2147483648)), vec2<i32>(-22928i, 1i), vec4<f32>(994f, 668f, 129f, 154f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<bool>(false, false, true, true)), -46952i, vec3<u32>(1869u, 1731u, 4294967295u), Struct_1(vec3<i32>(22859i, i32(-2147483648), 28191i), vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(313f, 1000f, 245f, -200f), vec4<u32>(1u, 0u, 45737u, 33865u), vec4<bool>(false, false, false, false))), Struct_2(8965i, Struct_1(vec3<i32>(0i, 1i, -28326i), vec2<i32>(2147483647i, -17298i), vec4<f32>(-855f, -450f, 1040f, -1128f), vec4<u32>(0u, 21434u, 1u, 17163u), vec4<bool>(false, false, true, true)), -1i, vec3<u32>(23348u, 2874u, 4294967295u), Struct_1(vec3<i32>(4603i, -1i, 1i), vec2<i32>(-23352i, 0i), vec4<f32>(913f, -356f, 524f, -700f), vec4<u32>(44646u, 0u, 36327u, 1u), vec4<bool>(true, false, true, true))), Struct_2(1i, Struct_1(vec3<i32>(-15064i, -1i, 11494i), vec2<i32>(i32(-2147483648), 27333i), vec4<f32>(1956f, 1525f, -1000f, 1642f), vec4<u32>(87788u, 4294967295u, 1u, 47537u), vec4<bool>(true, true, true, false)), -1i, vec3<u32>(1u, 1u, 10189u), Struct_1(vec3<i32>(2147483647i, 28746i, 1i), vec2<i32>(-20898i, 0i), vec4<f32>(-150f, -1130f, -1039f, -2139f), vec4<u32>(25366u, 4294967295u, 1u, 68891u), vec4<bool>(true, true, false, false))), Struct_2(14255i, Struct_1(vec3<i32>(-15322i, -4541i, i32(-2147483648)), vec2<i32>(34966i, 0i), vec4<f32>(1405f, 226f, 1278f, 1326f), vec4<u32>(0u, 975u, 4294967295u, 36818u), vec4<bool>(true, false, true, true)), i32(-2147483648), vec3<u32>(10770u, 4294967295u, 4294967295u), Struct_1(vec3<i32>(27213i, 14771i, 0i), vec2<i32>(i32(-2147483648), 36965i), vec4<f32>(-424f, 846f, -131f, 1000f), vec4<u32>(4294967295u, 1u, 66443u, 5129u), vec4<bool>(false, true, false, true))), Struct_2(-39190i, Struct_1(vec3<i32>(-56228i, 1i, -43827i), vec2<i32>(i32(-2147483648), -11887i), vec4<f32>(576f, 624f, -474f, -601f), vec4<u32>(57075u, 15237u, 4294967295u, 4294967295u), vec4<bool>(true, true, false, true)), 2147483647i, vec3<u32>(48141u, 1u, 0u), Struct_1(vec3<i32>(41381i, 2147483647i, 30857i), vec2<i32>(-1i, 21670i), vec4<f32>(-944f, 2217f, 1527f, 126f), vec4<u32>(9169u, 25989u, 4294967295u, 4294967295u), vec4<bool>(true, true, false, true))), Struct_2(-14932i, Struct_1(vec3<i32>(-5804i, 0i, -34121i), vec2<i32>(11316i, 5705i), vec4<f32>(-1459f, -1000f, -341f, -885f), vec4<u32>(1u, 21340u, 1u, 0u), vec4<bool>(false, true, false, false)), -29801i, vec3<u32>(2095u, 1u, 1u), Struct_1(vec3<i32>(2147483647i, 12508i, 0i), vec2<i32>(4789i, 0i), vec4<f32>(-515f, -1524f, 1776f, 840f), vec4<u32>(76913u, 20411u, 4294967295u, 34655u), vec4<bool>(true, false, false, false))), Struct_2(47910i, Struct_1(vec3<i32>(2375i, 1i, -1i), vec2<i32>(1i, i32(-2147483648)), vec4<f32>(-1468f, 721f, 1037f, 1410f), vec4<u32>(1u, 26404u, 21200u, 0u), vec4<bool>(false, true, false, false)), -5073i, vec3<u32>(0u, 4294967295u, 1u), Struct_1(vec3<i32>(24464i, -7421i, 5005i), vec2<i32>(1i, -22586i), vec4<f32>(-550f, 393f, 1000f, 1064f), vec4<u32>(0u, 4294967295u, 11240u, 756u), vec4<bool>(false, false, false, true))), Struct_2(-61125i, Struct_1(vec3<i32>(-5088i, -19811i, 1i), vec2<i32>(61651i, -7148i), vec4<f32>(-1338f, -1736f, -236f, -146f), vec4<u32>(4294967295u, 79257u, 4294967295u, 104382u), vec4<bool>(true, false, false, true)), 41087i, vec3<u32>(1u, 42550u, 26179u), Struct_1(vec3<i32>(-33002i, 65450i, 73399i), vec2<i32>(-1i, 2147483647i), vec4<f32>(-1229f, 2566f, 449f, -1112f), vec4<u32>(59377u, 0u, 466u, 16086u), vec4<bool>(false, false, false, true))), Struct_2(0i, Struct_1(vec3<i32>(-49100i, -46756i, 2761i), vec2<i32>(-9157i, 67070i), vec4<f32>(-1543f, -379f, 1308f, -1000f), vec4<u32>(0u, 36791u, 0u, 74617u), vec4<bool>(false, false, true, true)), 1i, vec3<u32>(4294967295u, 0u, 0u), Struct_1(vec3<i32>(36661i, -1i, -1i), vec2<i32>(2147483647i, 58053i), vec4<f32>(1229f, 686f, -319f, -1813f), vec4<u32>(4294967295u, 0u, 62281u, 45789u), vec4<bool>(false, true, true, false))), Struct_2(10218i, Struct_1(vec3<i32>(1i, i32(-2147483648), 1i), vec2<i32>(-42875i, i32(-2147483648)), vec4<f32>(-2097f, 764f, -401f, 354f), vec4<u32>(15735u, 4294967295u, 1u, 4294967295u), vec4<bool>(true, false, false, true)), 2147483647i, vec3<u32>(23027u, 0u, 4294967295u), Struct_1(vec3<i32>(61882i, -4124i, i32(-2147483648)), vec2<i32>(-1i, -21915i), vec4<f32>(1000f, 804f, -624f, -1000f), vec4<u32>(0u, 50893u, 29190u, 19093u), vec4<bool>(true, true, true, false))), Struct_2(2147483647i, Struct_1(vec3<i32>(1i, 1i, -11550i), vec2<i32>(0i, i32(-2147483648)), vec4<f32>(-1109f, -727f, 1000f, 404f), vec4<u32>(0u, 15819u, 84913u, 0u), vec4<bool>(true, false, false, true)), 73504i, vec3<u32>(4294967295u, 35602u, 42578u), Struct_1(vec3<i32>(-16335i, -55757i, -35366i), vec2<i32>(-1i, -30636i), vec4<f32>(2238f, 1294f, -314f, 1028f), vec4<u32>(37253u, 4294967295u, 25778u, 57264u), vec4<bool>(false, false, false, true))), Struct_2(5472i, Struct_1(vec3<i32>(-49519i, -9601i, i32(-2147483648)), vec2<i32>(-12490i, 0i), vec4<f32>(-403f, -436f, -1688f, -789f), vec4<u32>(1u, 4294967295u, 0u, 62110u), vec4<bool>(true, true, false, true)), -1i, vec3<u32>(1u, 34957u, 19841u), Struct_1(vec3<i32>(-33226i, 0i, 0i), vec2<i32>(0i, 0i), vec4<f32>(-844f, 2635f, -1386f, 269f), vec4<u32>(4294967295u, 0u, 19610u, 848u), vec4<bool>(false, false, false, true))), Struct_2(-4148i, Struct_1(vec3<i32>(-48359i, 0i, -17485i), vec2<i32>(19584i, 6985i), vec4<f32>(1000f, -888f, 488f, -1095f), vec4<u32>(4294967295u, 9322u, 0u, 28283u), vec4<bool>(true, false, false, true)), 0i, vec3<u32>(0u, 1u, 2881u), Struct_1(vec3<i32>(i32(-2147483648), 36659i, -35500i), vec2<i32>(i32(-2147483648), 1i), vec4<f32>(-858f, 961f, 1366f, 1000f), vec4<u32>(22026u, 4294967295u, 4294967295u, 66447u), vec4<bool>(false, false, false, false))));

var<private> global2: vec3<f32>;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = global3.b.c.x;
    let var_1 = arg_1.e.yxx;
    var var_2 = _wgslsmith_sub_vec2_u32((reverseBits(_wgslsmith_sub_vec2_u32(arg_1.d.xy, global3.b.d.xy)) | _wgslsmith_sub_vec2_u32(vec2<u32>(1u, global3.b.d.x), ~vec2<u32>(30594u, arg_1.d.x))) >> (vec2<u32>(~u_input.a, _wgslsmith_sub_u32(0u, 0u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~(~(~global3.e.d.yw)), abs(~max(vec2<u32>(arg_0, 4294967295u), vec2<u32>(u_input.a, 4294967295u))), select(firstTrailingBit(firstTrailingBit(vec2<u32>(0u, 4294967295u))), ~min(vec2<u32>(u_input.b, arg_1.d.x), vec2<u32>(global3.e.d.x, arg_0)), var_1.yx)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.c.zwz * _wgslsmith_f_op_vec3_f32(global3.e.c.xyy + vec3<f32>(2707f, 453f, 1000f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1100f, _wgslsmith_f_op_f32(trunc(-153f)), _wgslsmith_f_op_f32(arg_1.c.x - global3.b.c.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.b.c.x, -610f, global2.x))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-361f, global3.b.c.x, 437f)))))))));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, arg_1.c.x, 826f)) + vec3<f32>(_wgslsmith_f_op_f32(-626f + var_3.x), _wgslsmith_f_op_f32(arg_1.c.x * arg_1.c.x), _wgslsmith_f_op_f32(278f + var_3.x))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c.x, global3.e.c.x, global2.x), _wgslsmith_div_vec3_f32(vec3<f32>(1547f, global3.b.c.x, -1884f), var_3))))) - _wgslsmith_f_op_vec3_f32(-var_3));
    return _wgslsmith_dot_vec3_u32(~(reverseBits(vec3<u32>(53934u, u_input.b, 25578u)) ^ ~_wgslsmith_mult_vec3_u32(arg_1.d.yzz, vec3<u32>(global3.e.d.x, 34205u, u_input.a))), vec3<u32>(~0u << (0u % 32u), ~92717u, ~arg_1.d.x));
}

fn func_2() -> Struct_2 {
    global3 = Struct_2(u_input.c.x, Struct_1(u_input.c.zwx, ~_wgslsmith_clamp_vec2_i32(-global3.b.a.yy, ~global3.b.a.yx, select(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.ww, vec2<bool>(global3.e.e.x, true))), _wgslsmith_f_op_vec4_f32(-global3.b.c), vec4<u32>(27446u, ~0u, u_input.b, ~0u), global3.e.e), _wgslsmith_add_i32(i32(-1i) * -12762i, -2147483647i), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, 0u, 84014u), global3.e.d), _wgslsmith_mod_u32(0u, func_3(global3.d.x, global3.e)), u_input.a), global3.b);
    global0 = array<Struct_2, 8>();
    let var_0 = global3.e.c.yyx;
    global1 = array<Struct_2, 26>();
    global0 = array<Struct_2, 8>();
    return global0[_wgslsmith_index_u32(global3.e.d.x, 8u)];
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = global3.b.c;
    global0 = array<Struct_2, 8>();
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.c.x + var_0.x) * var_0.x), _wgslsmith_div_f32(var_0.x, -1000f), global3.b.e.x)), -491f), _wgslsmith_f_op_vec3_f32(-var_0.ywy));
    global3 = func_2();
    let var_1 = func_2().a << (((u_input.a | _wgslsmith_div_u32(u_input.a, func_2().e.d.x)) & 0u) % 32u);
    return func_2().e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(global3.e.d.x, 8u)];
    var var_1 = func_1(global3.e.c.x);
    let var_2 = ~abs(~var_0.b.d.zw);
    let var_3 = Struct_2(_wgslsmith_div_i32(var_1.a.x, -1590i), Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-25490i, var_0.b.a.x, -3111i, -2147483647i), select(u_input.c, vec4<i32>(global3.e.a.x, 2147483647i, 2841i, -2147483647i), true)), reverseBits(u_input.c.x << (0u % 32u)), -1i), global3.e.b, var_0.b.c, _wgslsmith_add_vec4_u32(firstLeadingBit(select(global3.b.d, var_1.d, var_0.e.e)), func_1(global3.b.c.x).d), vec4<bool>(var_0.e.e.x, false, true, true)), -27671i, ~_wgslsmith_clamp_vec3_u32(var_0.d, vec3<u32>(var_2.x, var_2.x & var_0.e.d.x, ~var_2.x), firstTrailingBit(_wgslsmith_add_vec3_u32(var_0.e.d.xyy, var_1.d.yyw))), func_2().b);
    let var_4 = Struct_1(var_1.a, var_3.b.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.c.x, _wgslsmith_f_op_f32(570f * 2154f), global2.x, _wgslsmith_div_f32(624f, _wgslsmith_div_f32(-1273f, var_0.b.c.x)))), reverseBits(var_1.d), var_3.b.e);
    let var_5 = vec4<i32>(var_1.b.x, _wgslsmith_add_i32(-var_4.a.x, 1i), ~abs(_wgslsmith_clamp_i32(~var_4.a.x, 35973i, var_0.c << (1u % 32u))), i32(-1i) * -_wgslsmith_clamp_i32(var_4.b.x, i32(-1i) * -39430i, var_1.b.x));
    var var_6 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(607f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(min(global2.x, -1231f))), all(vec2<bool>(var_1.e.x, var_0.b.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1004f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.c.x, var_0.b.c.x), var_0.b.c.xy, global3.e.e.x)), _wgslsmith_f_op_vec2_f32(-var_0.e.c.yw))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1027f, _wgslsmith_f_op_f32(-1000f * var_3.e.c.x))))), any(!vec3<bool>(false != var_3.e.e.x, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-_wgslsmith_dot_vec2_i32(max(vec2<i32>(70837i, var_0.c), var_4.b), global3.e.b)));
}

