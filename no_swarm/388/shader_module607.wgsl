struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -1i, -24317i, -1i);

var<private> global1: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(Struct_2(Struct_1(1u, vec2<f32>(-559f, 250f), vec3<u32>(78688u, 0u, 34059u), 2147483647i), Struct_1(28891u, vec2<f32>(792f, 818f), vec3<u32>(1u, 1u, 1u), 2147483647i), vec3<i32>(-68269i, 1i, 1i), -304f), Struct_1(40584u, vec2<f32>(-2026f, -1116f), vec3<u32>(2060u, 4294967295u, 0u), 2147483647i), Struct_3(Struct_2(Struct_1(0u, vec2<f32>(-125f, -1021f), vec3<u32>(25332u, 0u, 0u), 17316i), Struct_1(70656u, vec2<f32>(-1849f, 210f), vec3<u32>(1507u, 1u, 1u), -41740i), vec3<i32>(15184i, 1i, 45672i), 376f), vec3<i32>(-69079i, -1615i, i32(-2147483648))), 4749u), Struct_4(Struct_2(Struct_1(4294967295u, vec2<f32>(1683f, -1976f), vec3<u32>(4294967295u, 44520u, 5538u), 2147483647i), Struct_1(67714u, vec2<f32>(1373f, -406f), vec3<u32>(27770u, 0u, 92964u), -18873i), vec3<i32>(0i, -40786i, -7844i), -2261f), Struct_1(0u, vec2<f32>(-1384f, -500f), vec3<u32>(1u, 1220u, 48675u), 40662i), Struct_3(Struct_2(Struct_1(4294967295u, vec2<f32>(-675f, -1000f), vec3<u32>(4294967295u, 29622u, 71583u), -1i), Struct_1(1u, vec2<f32>(633f, -614f), vec3<u32>(0u, 4294967295u, 93777u), -14573i), vec3<i32>(11709i, 1i, -55802i), -154f), vec3<i32>(0i, 0i, -13996i)), 78769u), Struct_4(Struct_2(Struct_1(6511u, vec2<f32>(509f, -769f), vec3<u32>(10882u, 52696u, 57275u), 13355i), Struct_1(0u, vec2<f32>(951f, 1316f), vec3<u32>(4294967295u, 97787u, 17044u), 0i), vec3<i32>(-32963i, 2147483647i, 2147483647i), -1000f), Struct_1(19407u, vec2<f32>(495f, 198f), vec3<u32>(0u, 59191u, 4294967295u), -1i), Struct_3(Struct_2(Struct_1(0u, vec2<f32>(-209f, 333f), vec3<u32>(4294967295u, 1u, 4294967295u), 0i), Struct_1(0u, vec2<f32>(-1153f, 336f), vec3<u32>(43257u, 1u, 8354u), i32(-2147483648)), vec3<i32>(43328i, -1i, i32(-2147483648)), 1042f), vec3<i32>(-23152i, i32(-2147483648), 0i)), 12969u), Struct_4(Struct_2(Struct_1(0u, vec2<f32>(551f, 322f), vec3<u32>(0u, 84977u, 12423u), 1i), Struct_1(54848u, vec2<f32>(-1235f, -333f), vec3<u32>(4294967295u, 0u, 42009u), 1i), vec3<i32>(1i, 2147483647i, 2147483647i), -1413f), Struct_1(22957u, vec2<f32>(-355f, 544f), vec3<u32>(1u, 3885u, 1u), 2353i), Struct_3(Struct_2(Struct_1(4294967295u, vec2<f32>(-645f, 253f), vec3<u32>(1u, 19444u, 4294967295u), -1i), Struct_1(1u, vec2<f32>(-684f, 534f), vec3<u32>(1u, 4294967295u, 46233u), 5737i), vec3<i32>(5629i, 18736i, 1195i), -2042f), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648))), 4294967295u), Struct_4(Struct_2(Struct_1(1u, vec2<f32>(770f, -255f), vec3<u32>(48521u, 55941u, 1u), -1i), Struct_1(0u, vec2<f32>(-393f, 117f), vec3<u32>(0u, 70184u, 1u), i32(-2147483648)), vec3<i32>(-20738i, 0i, 0i), -1510f), Struct_1(0u, vec2<f32>(-557f, 844f), vec3<u32>(4294967295u, 1u, 4294967295u), 28601i), Struct_3(Struct_2(Struct_1(14457u, vec2<f32>(-739f, -1382f), vec3<u32>(0u, 4294967295u, 1u), 1i), Struct_1(0u, vec2<f32>(1345f, 1442f), vec3<u32>(0u, 1u, 1u), -9563i), vec3<i32>(-1i, -18966i, -375i), -920f), vec3<i32>(2147483647i, 2621i, -52727i)), 0u), Struct_4(Struct_2(Struct_1(922u, vec2<f32>(369f, -768f), vec3<u32>(1u, 4294967295u, 55076u), 50997i), Struct_1(15074u, vec2<f32>(1287f, 604f), vec3<u32>(48093u, 0u, 70459u), i32(-2147483648)), vec3<i32>(0i, -445i, i32(-2147483648)), -450f), Struct_1(0u, vec2<f32>(-1363f, 972f), vec3<u32>(23017u, 18422u, 27031u), 64977i), Struct_3(Struct_2(Struct_1(1u, vec2<f32>(-635f, 436f), vec3<u32>(2374u, 1u, 0u), 2147483647i), Struct_1(58323u, vec2<f32>(-340f, -412f), vec3<u32>(1u, 0u, 17812u), 50472i), vec3<i32>(-1i, -50769i, -11607i), -449f), vec3<i32>(-18880i, -9987i, -3626i)), 16871u), Struct_4(Struct_2(Struct_1(64117u, vec2<f32>(1614f, -1545f), vec3<u32>(18571u, 4294967295u, 11060u), -1i), Struct_1(0u, vec2<f32>(608f, 455f), vec3<u32>(91795u, 1u, 14748u), i32(-2147483648)), vec3<i32>(-1i, 37950i, 0i), -686f), Struct_1(0u, vec2<f32>(725f, 716f), vec3<u32>(1u, 90452u, 85803u), -1i), Struct_3(Struct_2(Struct_1(71694u, vec2<f32>(-617f, -881f), vec3<u32>(0u, 1u, 1u), 1i), Struct_1(4294967295u, vec2<f32>(-682f, -1103f), vec3<u32>(11323u, 0u, 4833u), -1i), vec3<i32>(-20659i, -1i, 23069i), -197f), vec3<i32>(i32(-2147483648), i32(-2147483648), 67035i)), 1u), Struct_4(Struct_2(Struct_1(0u, vec2<f32>(760f, -368f), vec3<u32>(1u, 18756u, 1u), -25119i), Struct_1(47415u, vec2<f32>(2358f, -1076f), vec3<u32>(88691u, 23585u, 7762u), -33923i), vec3<i32>(57391i, -29308i, 71998i), 232f), Struct_1(30952u, vec2<f32>(-261f, -464f), vec3<u32>(36616u, 10262u, 1u), 57746i), Struct_3(Struct_2(Struct_1(47729u, vec2<f32>(119f, 1026f), vec3<u32>(8040u, 1u, 90785u), 28041i), Struct_1(1u, vec2<f32>(156f, -1000f), vec3<u32>(8728u, 59199u, 126929u), 0i), vec3<i32>(2147483647i, 1i, 11719i), 207f), vec3<i32>(9855i, 1i, 1i)), 10273u), Struct_4(Struct_2(Struct_1(0u, vec2<f32>(-1794f, 1296f), vec3<u32>(0u, 49496u, 4294967295u), 16286i), Struct_1(0u, vec2<f32>(1448f, 1895f), vec3<u32>(53586u, 58018u, 0u), 26723i), vec3<i32>(17881i, 1i, 10802i), 281f), Struct_1(1u, vec2<f32>(-1338f, -563f), vec3<u32>(4774u, 20983u, 63730u), -7610i), Struct_3(Struct_2(Struct_1(0u, vec2<f32>(-1855f, 908f), vec3<u32>(0u, 26947u, 0u), 1667i), Struct_1(1u, vec2<f32>(1745f, 921f), vec3<u32>(1u, 15178u, 4294967295u), i32(-2147483648)), vec3<i32>(2147483647i, 2906i, 1i), -2054f), vec3<i32>(i32(-2147483648), 1i, 44059i)), 17311u), Struct_4(Struct_2(Struct_1(51717u, vec2<f32>(-1779f, -154f), vec3<u32>(1u, 4294967295u, 4294967295u), -35141i), Struct_1(88317u, vec2<f32>(542f, -897f), vec3<u32>(17766u, 1u, 4294967295u), -15144i), vec3<i32>(-1i, i32(-2147483648), -1i), 1096f), Struct_1(4294967295u, vec2<f32>(707f, 380f), vec3<u32>(69353u, 15339u, 16212u), 1i), Struct_3(Struct_2(Struct_1(0u, vec2<f32>(151f, 549f), vec3<u32>(50919u, 1u, 4294967295u), -19251i), Struct_1(53468u, vec2<f32>(673f, 439f), vec3<u32>(928u, 40277u, 1u), 1i), vec3<i32>(20821i, i32(-2147483648), 0i), -1147f), vec3<i32>(2147483647i, -5468i, i32(-2147483648))), 0u), Struct_4(Struct_2(Struct_1(111439u, vec2<f32>(704f, 2377f), vec3<u32>(0u, 0u, 26906u), 0i), Struct_1(37966u, vec2<f32>(472f, -1427f), vec3<u32>(12732u, 4294967295u, 1u), -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), -57266i), 571f), Struct_1(87138u, vec2<f32>(591f, 2858f), vec3<u32>(0u, 0u, 15878u), 0i), Struct_3(Struct_2(Struct_1(1u, vec2<f32>(-1032f, 1184f), vec3<u32>(33912u, 8764u, 681u), -31648i), Struct_1(4294967295u, vec2<f32>(234f, 518f), vec3<u32>(31743u, 44824u, 4294967295u), 0i), vec3<i32>(-3329i, i32(-2147483648), 0i), 361f), vec3<i32>(0i, 1i, 7113i)), 47142u), Struct_4(Struct_2(Struct_1(4294967295u, vec2<f32>(-1653f, -1000f), vec3<u32>(4294967295u, 73561u, 4294967295u), 58465i), Struct_1(0u, vec2<f32>(-2337f, 1000f), vec3<u32>(4294967295u, 1u, 4294967295u), 1i), vec3<i32>(25562i, -10525i, i32(-2147483648)), 667f), Struct_1(4294967295u, vec2<f32>(249f, 718f), vec3<u32>(37445u, 0u, 51461u), -11906i), Struct_3(Struct_2(Struct_1(10750u, vec2<f32>(-1013f, -760f), vec3<u32>(19513u, 15078u, 38220u), 55914i), Struct_1(33163u, vec2<f32>(1374f, -1105f), vec3<u32>(29729u, 4294967295u, 4943u), 2147483647i), vec3<i32>(-1i, -23595i, -11692i), 941f), vec3<i32>(0i, 14582i, 1528i)), 4294967295u), Struct_4(Struct_2(Struct_1(4294967295u, vec2<f32>(-1556f, -566f), vec3<u32>(54020u, 0u, 0u), -38901i), Struct_1(42762u, vec2<f32>(104f, 1370f), vec3<u32>(35197u, 8879u, 41453u), -1i), vec3<i32>(-35344i, -1i, 1i), 1225f), Struct_1(78573u, vec2<f32>(2307f, -956f), vec3<u32>(2374u, 1u, 4294967295u), -6780i), Struct_3(Struct_2(Struct_1(4294967295u, vec2<f32>(-876f, 723f), vec3<u32>(4294967295u, 1u, 35684u), -53638i), Struct_1(1u, vec2<f32>(463f, -1102f), vec3<u32>(1u, 1u, 0u), -16879i), vec3<i32>(-32767i, 2147483647i, 0i), -578f), vec3<i32>(-6029i, 14711i, -1356i)), 4294967295u), Struct_4(Struct_2(Struct_1(18948u, vec2<f32>(-967f, 2022f), vec3<u32>(0u, 4020u, 27288u), -48127i), Struct_1(48656u, vec2<f32>(-1782f, 312f), vec3<u32>(0u, 4294967295u, 95500u), 55214i), vec3<i32>(-1i, i32(-2147483648), -948i), 386f), Struct_1(20636u, vec2<f32>(-107f, -1411f), vec3<u32>(152u, 1u, 54162u), i32(-2147483648)), Struct_3(Struct_2(Struct_1(106463u, vec2<f32>(2543f, 1148f), vec3<u32>(0u, 16473u, 39035u), 0i), Struct_1(0u, vec2<f32>(-1396f, 610f), vec3<u32>(0u, 4294967295u, 40654u), 6231i), vec3<i32>(-1i, 1i, -45719i), -273f), vec3<i32>(i32(-2147483648), 57550i, -4329i)), 80199u), Struct_4(Struct_2(Struct_1(53447u, vec2<f32>(228f, 649f), vec3<u32>(1u, 46732u, 1u), -1i), Struct_1(1u, vec2<f32>(-402f, -505f), vec3<u32>(24208u, 58746u, 1u), -25985i), vec3<i32>(-1i, 2147483647i, 2147483647i), 712f), Struct_1(0u, vec2<f32>(389f, -196f), vec3<u32>(0u, 1u, 4294967295u), 2842i), Struct_3(Struct_2(Struct_1(0u, vec2<f32>(-1664f, -559f), vec3<u32>(1u, 1u, 36576u), i32(-2147483648)), Struct_1(77174u, vec2<f32>(1401f, -1000f), vec3<u32>(47u, 0u, 43415u), -1i), vec3<i32>(i32(-2147483648), 0i, -61623i), 1105f), vec3<i32>(-6475i, 2147483647i, 1i)), 15578u));

var<private> global2: array<u32, 2>;

var<private> global3: Struct_4;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> i32 {
    global0 = _wgslsmith_mod_vec4_i32(abs(select(vec4<i32>(u_input.d.x, global3.a.a.d, -1299i, 1i), u_input.c, true) ^ (_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, 8678i, global3.c.a.b.d, u_input.a)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(33517u, 0u, global3.b.c.x, u_input.b.x), u_input.e) % vec4<u32>(32u)))), countOneBits(vec4<i32>(0i, select(u_input.a & 1707i, reverseBits(u_input.a), false), global0.x, global3.a.b.d)));
    global0 = max(reverseBits(firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 2147483647i, global0.x, u_input.c.x), u_input.c), u_input.c))), u_input.c);
    let var_0 = global3.a.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.c.a.d * -1281f))), _wgslsmith_f_op_f32(trunc(global3.c.a.a.b.x))), -811f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2684f)) - var_0.b.x) * global3.c.a.d)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1601f, global3.c.a.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x))) + 1613f)));
    return 2147483647i;
}

fn func_3() -> vec2<f32> {
    global0 = u_input.c;
    let var_0 = Struct_4(Struct_2(global3.a.b, global3.a.a, _wgslsmith_sub_vec3_i32(vec3<i32>(-global0.x, abs(u_input.d.x), _wgslsmith_mult_i32(2147483647i, u_input.c.x)), global3.c.b), _wgslsmith_f_op_f32(ceil(-1993f))), Struct_1(~1u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.c.a.a.b, vec2<f32>(global3.a.a.b.x, -1413f), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.b.b)), vec2<bool>(true, true))), u_input.b, global3.b.d), Struct_3(global3.c.a, _wgslsmith_mod_vec3_i32(~global3.a.c, global0.www)), _wgslsmith_mult_u32(~(_wgslsmith_sub_u32(1u, u_input.e.x) << (~global2[_wgslsmith_index_u32(u_input.b.x, 2u)] % 32u)), min(_wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20594u, 2u)], 2u)], 2u)], u_input.b.x), u_input.e.x)));
    global1 = array<Struct_4, 15>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-228f, -664f, global3.c.a.b.b.x, -1806f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, var_0.a.b.b.x, -356f, -2278f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.b.x, 416f, var_0.b.b.x, -1309f) * vec4<f32>(global3.b.b.x, var_0.c.a.a.b.x, -218f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(422f, global3.c.a.d, 399f, var_0.a.b.b.x) * vec4<f32>(var_0.c.a.a.b.x, global3.b.b.x, 180f, -1137f)))))));
    let var_2 = Struct_3(var_0.a, ~min(-global3.a.c, var_0.c.b));
    return _wgslsmith_div_vec2_f32(var_1.yz, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x)))), _wgslsmith_f_op_f32(-global3.c.a.b.b.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<bool>) -> bool {
    global0 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i & global3.c.a.a.d, ~6236i, u_input.a), _wgslsmith_div_vec3_i32(u_input.c.yyy, global3.a.c) & vec3<i32>(u_input.a, global3.c.b.x, 0i)), vec3<i32>(25522i >> (global2[_wgslsmith_index_u32(~17620u, 2u)] % 32u), _wgslsmith_sub_i32(select(2147483647i, global0.x, arg_2.x), -13059i), global0.x)), -global0.x & (0i | global3.a.a.d), arg_0.d, u_input.c.x | -_wgslsmith_sub_i32(-1i | global3.a.a.d, _wgslsmith_dot_vec3_i32(global3.c.b, global0.zzz)));
    var var_0 = all(!vec3<bool>(true, true, arg_2.x)) != !all(arg_2);
    var var_1 = ~vec4<i32>(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(arg_0.d, arg_0.d), _wgslsmith_mult_i32(26655i, _wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(global3.b.d, 19439i)))), u_input.a, reverseBits(func_2()), global0.x);
    let var_2 = Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(func_3()), vec3<u32>(u_input.e.x, 32650u, 82892u), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, arg_0.d) | (~u_input.a | -global3.a.c.x)), Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1153f, _wgslsmith_f_op_f32(-162f * -256f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.b.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2088f, 1000f)))), min(~vec3<u32>(1692u, 4294967295u, u_input.e.x), _wgslsmith_mod_vec3_u32(arg_0.c, global3.a.b.c)), 2147483647i), abs(var_1.xwz), _wgslsmith_f_op_f32(f32(-1f) * -345f));
    var var_3 = ~_wgslsmith_clamp_vec4_u32(u_input.e, ~vec4<u32>(~63827u, min(global2[_wgslsmith_index_u32(u_input.e.x, 2u)], 4294967295u), var_2.b.c.x, ~0u), vec4<u32>(~arg_0.c.x ^ _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], var_2.b.a, global2[_wgslsmith_index_u32(9551u, 2u)]), 4294967295u, _wgslsmith_div_u32(1u, global3.c.a.b.a), u_input.b.x & max(arg_0.a, 136680u)));
    return select(arg_1.x, !(!(!any(arg_1))), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(u_input.e), _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 2u)], 2u)], 733u, global3.a.b.c.x) & u_input.e, vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], 1u, u_input.e.x))), ~_wgslsmith_div_vec4_u32(~u_input.e, firstTrailingBit(vec4<u32>(26302u, global3.b.c.x, u_input.e.x, 1u)))));
    global0 = u_input.c;
    global3 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 15u)];
    global1 = array<Struct_4, 15>();
    let var_1 = select(vec2<bool>(!all(vec2<bool>(true, true)), func_1(Struct_1(5613u >> (global2[_wgslsmith_index_u32(var_0.x, 2u)] % 32u), global3.b.b, vec3<u32>(4294967295u, 4294967295u, 3860u), abs(-1i)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), true), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<bool>(true, true)), true);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(59238u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(var_0 << (vec4<u32>(1u, 9944u, var_0.x, 4294967295u) % vec4<u32>(32u))), vec4<u32>(~101281u, ~1u, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(50974u, 2u)], global3.b.a), _wgslsmith_add_u32(33149u, 0u))), firstLeadingBit(var_0)), 2u)], ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.a.b.a, u_input.e.x, 4294967295u, u_input.e.x), var_0) & 4294967295u), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.e));
}

