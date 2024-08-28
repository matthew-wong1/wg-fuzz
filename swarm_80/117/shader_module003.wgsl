struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 9>;

var<private> global2: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(281f, -1351f));

var<private> global3: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(Struct_1(2749f, vec4<u32>(15896u, 4294967295u, 4294967295u, 32801u), vec3<u32>(1u, 19322u, 0u), false, -9250i), Struct_1(168f, vec4<u32>(51621u, 29467u, 68215u, 4294967295u), vec3<u32>(18880u, 28973u, 0u), false, -17639i), true, vec4<f32>(-884f, 1325f, -1255f, 1736f), Struct_3(vec3<i32>(i32(-2147483648), -46745i, 1028i), vec2<i32>(-2439i, 8177i), -18964i)), Struct_4(Struct_1(247f, vec4<u32>(80786u, 4294967295u, 53545u, 87399u), vec3<u32>(0u, 1u, 4294967295u), true, -18899i), Struct_1(-1000f, vec4<u32>(4294967295u, 4294967295u, 13682u, 0u), vec3<u32>(0u, 1u, 31519u), false, 17827i), true, vec4<f32>(943f, -660f, 747f, -1411f), Struct_3(vec3<i32>(39987i, i32(-2147483648), 1i), vec2<i32>(18581i, i32(-2147483648)), i32(-2147483648))), Struct_4(Struct_1(142f, vec4<u32>(7068u, 0u, 4294967295u, 6123u), vec3<u32>(23113u, 0u, 59950u), true, -28053i), Struct_1(-2689f, vec4<u32>(27374u, 0u, 60077u, 9059u), vec3<u32>(1u, 1u, 37419u), false, -920i), true, vec4<f32>(-380f, -439f, 1966f, -1345f), Struct_3(vec3<i32>(-57469i, 0i, -43379i), vec2<i32>(18258i, 1i), -54563i)), Struct_4(Struct_1(553f, vec4<u32>(19919u, 1u, 1929u, 0u), vec3<u32>(1u, 18183u, 42173u), true, 42480i), Struct_1(1748f, vec4<u32>(15056u, 4294967295u, 1u, 52203u), vec3<u32>(51748u, 1u, 9576u), true, -1i), false, vec4<f32>(301f, -169f, -591f, 120f), Struct_3(vec3<i32>(-3609i, 7249i, -1i), vec2<i32>(4539i, 2147483647i), 1i)), Struct_4(Struct_1(-598f, vec4<u32>(37835u, 1u, 9784u, 1305u), vec3<u32>(78949u, 89739u, 0u), true, i32(-2147483648)), Struct_1(716f, vec4<u32>(351u, 0u, 8790u, 24279u), vec3<u32>(34013u, 7888u, 0u), false, -1i), true, vec4<f32>(1053f, -731f, 1249f, -270f), Struct_3(vec3<i32>(60282i, -42120i, 38003i), vec2<i32>(1i, 0i), 0i)), Struct_4(Struct_1(274f, vec4<u32>(4294967295u, 51437u, 0u, 1u), vec3<u32>(4471u, 94000u, 1u), false, -11840i), Struct_1(-920f, vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec3<u32>(30290u, 112090u, 0u), true, 37648i), false, vec4<f32>(703f, -655f, 253f, -330f), Struct_3(vec3<i32>(24790i, -41583i, 14139i), vec2<i32>(43556i, 2147483647i), 0i)), Struct_4(Struct_1(-2219f, vec4<u32>(4294967295u, 1u, 37150u, 14465u), vec3<u32>(38234u, 11293u, 41795u), true, 24422i), Struct_1(-392f, vec4<u32>(4294967295u, 66161u, 100731u, 9297u), vec3<u32>(34560u, 56764u, 4294967295u), false, 1i), false, vec4<f32>(285f, 1000f, 158f, 1408f), Struct_3(vec3<i32>(1i, -1i, 2147483647i), vec2<i32>(-1i, 21512i), 42867i)), Struct_4(Struct_1(-914f, vec4<u32>(23131u, 1u, 25265u, 0u), vec3<u32>(61932u, 0u, 22997u), false, 16650i), Struct_1(-1252f, vec4<u32>(57212u, 1u, 38306u, 18192u), vec3<u32>(4294967295u, 1u, 5543u), false, 47508i), false, vec4<f32>(-1000f, -2071f, 1558f, -2221f), Struct_3(vec3<i32>(0i, -39318i, 46490i), vec2<i32>(18883i, 50908i), 30963i)), Struct_4(Struct_1(-1695f, vec4<u32>(1u, 0u, 11647u, 0u), vec3<u32>(15586u, 73737u, 1u), false, 2147483647i), Struct_1(-520f, vec4<u32>(1u, 4294967295u, 28140u, 4991u), vec3<u32>(33030u, 50853u, 4294967295u), false, i32(-2147483648)), true, vec4<f32>(-2558f, 1003f, -695f, -1198f), Struct_3(vec3<i32>(-24568i, 1i, -74954i), vec2<i32>(-45852i, -15104i), -5622i)), Struct_4(Struct_1(-675f, vec4<u32>(9936u, 0u, 82133u, 1u), vec3<u32>(38099u, 0u, 1u), true, 18553i), Struct_1(220f, vec4<u32>(0u, 0u, 4877u, 4294967295u), vec3<u32>(80067u, 28819u, 80662u), true, -5906i), false, vec4<f32>(157f, -799f, 346f, -373f), Struct_3(vec3<i32>(31569i, 12231i, 7109i), vec2<i32>(2147483647i, 1i), 0i)), Struct_4(Struct_1(-924f, vec4<u32>(33182u, 633u, 34900u, 1u), vec3<u32>(8926u, 1u, 4294967295u), false, 2147483647i), Struct_1(-356f, vec4<u32>(0u, 1u, 0u, 74865u), vec3<u32>(0u, 4294967295u, 3548u), true, 1i), false, vec4<f32>(-323f, -554f, -233f, 1000f), Struct_3(vec3<i32>(1i, -47237i, i32(-2147483648)), vec2<i32>(-8334i, 1i), -27418i)), Struct_4(Struct_1(-1572f, vec4<u32>(79396u, 35942u, 1u, 4294967295u), vec3<u32>(4294967295u, 55833u, 22745u), true, 0i), Struct_1(-1214f, vec4<u32>(47072u, 0u, 10924u, 11349u), vec3<u32>(4294967295u, 0u, 16966u), false, 21779i), true, vec4<f32>(-711f, -228f, -1552f, -1645f), Struct_3(vec3<i32>(2147483647i, i32(-2147483648), 1i), vec2<i32>(2147483647i, i32(-2147483648)), -72074i)), Struct_4(Struct_1(-506f, vec4<u32>(1u, 0u, 1u, 4294967295u), vec3<u32>(0u, 6527u, 4294967295u), false, 2147483647i), Struct_1(735f, vec4<u32>(46316u, 54862u, 0u, 0u), vec3<u32>(0u, 1u, 0u), true, 2147483647i), false, vec4<f32>(-1150f, -1406f, 569f, -1000f), Struct_3(vec3<i32>(0i, i32(-2147483648), 47556i), vec2<i32>(0i, 83441i), i32(-2147483648))), Struct_4(Struct_1(605f, vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec3<u32>(32617u, 1u, 1u), false, i32(-2147483648)), Struct_1(144f, vec4<u32>(0u, 4294967295u, 4562u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u), true, 7069i), false, vec4<f32>(1423f, -351f, -1000f, -601f), Struct_3(vec3<i32>(44833i, 0i, 124i), vec2<i32>(36349i, -1i), 0i)), Struct_4(Struct_1(1257f, vec4<u32>(13743u, 10157u, 11942u, 1u), vec3<u32>(17459u, 12228u, 52626u), true, 0i), Struct_1(653f, vec4<u32>(1u, 4294967295u, 4294967295u, 9526u), vec3<u32>(52344u, 4294967295u, 1u), false, 10547i), false, vec4<f32>(156f, 371f, 936f, 368f), Struct_3(vec3<i32>(-11635i, 0i, 3467i), vec2<i32>(0i, 0i), -32004i)), Struct_4(Struct_1(831f, vec4<u32>(0u, 1u, 4294967295u, 51867u), vec3<u32>(4294967295u, 6006u, 52717u), false, -29009i), Struct_1(-1037f, vec4<u32>(46165u, 48951u, 39546u, 1u), vec3<u32>(0u, 28912u, 11774u), false, -12799i), false, vec4<f32>(1000f, 1018f, 331f, -708f), Struct_3(vec3<i32>(1i, 26260i, -1i), vec2<i32>(2147483647i, 1i), -72111i)), Struct_4(Struct_1(1000f, vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec3<u32>(97171u, 23590u, 60397u), false, 32238i), Struct_1(-1247f, vec4<u32>(4294967295u, 0u, 1u, 42426u), vec3<u32>(1u, 7258u, 1u), false, -33849i), true, vec4<f32>(-118f, -940f, 396f, -1404f), Struct_3(vec3<i32>(i32(-2147483648), 1i, 0i), vec2<i32>(-10552i, 0i), -912i)), Struct_4(Struct_1(-1000f, vec4<u32>(3042u, 58436u, 50917u, 25842u), vec3<u32>(4294967295u, 49015u, 14562u), true, -20953i), Struct_1(-801f, vec4<u32>(9u, 9990u, 2889u, 0u), vec3<u32>(1u, 4294967295u, 16303u), false, -11994i), true, vec4<f32>(204f, -1737f, 502f, -1235f), Struct_3(vec3<i32>(1i, i32(-2147483648), 0i), vec2<i32>(-540i, -55491i), 2147483647i)), Struct_4(Struct_1(430f, vec4<u32>(23880u, 4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 6492u, 0u), false, -12324i), Struct_1(1942f, vec4<u32>(1u, 6423u, 1u, 5093u), vec3<u32>(1u, 3268u, 18010u), false, -45702i), true, vec4<f32>(618f, -1181f, -732f, -567f), Struct_3(vec3<i32>(1i, -21836i, -1i), vec2<i32>(i32(-2147483648), -25106i), 51091i)), Struct_4(Struct_1(697f, vec4<u32>(1u, 8588u, 0u, 2983u), vec3<u32>(37381u, 11592u, 1u), true, 27903i), Struct_1(-915f, vec4<u32>(52276u, 4294967295u, 23898u, 31060u), vec3<u32>(39786u, 0u, 1u), true, i32(-2147483648)), false, vec4<f32>(-192f, -934f, -2234f, -1000f), Struct_3(vec3<i32>(-8203i, 23894i, 8478i), vec2<i32>(0i, 1i), 7301i)), Struct_4(Struct_1(2324f, vec4<u32>(41807u, 4294967295u, 15287u, 18194u), vec3<u32>(47000u, 27745u, 13949u), false, -8045i), Struct_1(1112f, vec4<u32>(4294967295u, 40776u, 30340u, 0u), vec3<u32>(14370u, 85327u, 4294967295u), true, 1i), true, vec4<f32>(2347f, 182f, 1267f, -318f), Struct_3(vec3<i32>(-1i, -51465i, 53603i), vec2<i32>(-7805i, 1i), 1i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = Struct_2(global0.a, ~(~(max(global0.c.b, global0.a.b) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, global0.a.c.x, arg_0, arg_0), global0.c.b))), Struct_1(global0.c.a, ~(~countOneBits(global0.c.b)), ~u_input.d, true & global0.c.d, -13049i));
    let var_1 = !(!vec3<bool>(any(vec4<bool>(false, global0.c.d, global0.a.d, false)) && true, !(global0.a.d & false), !(444i < global0.c.e)));
    var var_2 = -select(abs(countOneBits(-vec3<i32>(-2147483647i, global0.a.e, 25362i))), _wgslsmith_add_vec3_i32(-(~vec3<i32>(global0.c.e, 2147483647i, 46101i)), abs(vec3<i32>(global0.a.e, var_0.a.e, -32309i))), select(vec3<bool>(all(vec2<bool>(false, false)), var_0.a.d, true), var_1, all(vec2<bool>(true, var_1.x)) | all(var_1)));
    var var_3 = Struct_5(global3[_wgslsmith_index_u32(firstLeadingBit(~0u), 21u)], var_0);
    global3 = array<Struct_4, 21>();
    return vec4<i32>(var_2.x, 2147483647i, global0.a.e, reverseBits(~45801i)) ^ ~_wgslsmith_mult_vec4_i32(vec4<i32>(global0.c.e, -2147483647i, -45050i, _wgslsmith_dot_vec4_i32(vec4<i32>(56128i, 24422i, var_2.x, 0i), vec4<i32>(global0.a.e, global0.a.e, -2147483647i, global0.a.e))), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 24717i, var_0.a.e, var_2.x), ~vec4<i32>(-22212i, 0i, var_2.x, 3296i), vec4<i32>(global0.c.e, 49520i, var_2.x, -2147483647i) ^ vec4<i32>(global0.a.e, var_0.c.e, global0.a.e, global0.a.e)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<u32> {
    return ~vec4<u32>(0u & ~arg_2.x, _wgslsmith_div_u32(arg_2.x, ~0u), 1u, 60839u) & ((~(vec4<u32>(1u, arg_2.x, arg_3.c.b.x, 4294967295u) | vec4<u32>(4294967295u, arg_3.b.x, u_input.d.x, u_input.c.x)) << (arg_3.a.b % vec4<u32>(32u))) >> (arg_3.b % vec4<u32>(32u)));
}

fn func_2() -> Struct_2 {
    var var_0 = any(vec4<bool>(true, global0.a.d, true, all(vec2<bool>(true, !global0.a.d))));
    let var_1 = Struct_5(global3[_wgslsmith_index_u32(min(global0.a.b.x, global0.b.x), 21u)], Struct_2(global0.a, func_4(_wgslsmith_sub_vec4_i32(func_3(27934u), vec4<i32>(global0.c.e, global0.a.e, 0i, 2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2625f, 1633f, 1000f, 2070f))) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.c.a, -1355f, 673f, global0.c.a), vec4<f32>(349f, 1000f, -439f, global0.a.a))), vec3<u32>(global0.c.b.x, global0.c.c.x, global0.a.b.x) | vec3<u32>(global0.a.b.x, u_input.d.x, u_input.d.x), Struct_2(global0.c, abs(global0.c.b), global0.c)), Struct_1(_wgslsmith_f_op_f32(sign(-1000f)), abs(global0.c.b) ^ _wgslsmith_clamp_vec4_u32(global0.b, vec4<u32>(4294967295u, 42847u, global0.a.b.x, 36561u), vec4<u32>(4294967295u, global0.b.x, 81893u, global0.c.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, global0.a.c.x), ~vec3<u32>(global0.c.b.x, global0.c.b.x, global0.a.b.x)), global0.a.d, global0.a.e)));
    global3 = array<Struct_4, 21>();
    global0 = Struct_2(var_1.b.c, _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(var_1.a.b.b, vec4<u32>(u_input.d.x, global0.a.c.x, 4294967295u, u_input.d.x)), firstLeadingBit(vec4<u32>(4294967295u, 13214u, var_1.a.b.b.x, 89330u))) ^ vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 0u), Struct_1(_wgslsmith_f_op_f32(global0.c.a * global0.a.a), global0.b, _wgslsmith_mod_vec3_u32(u_input.d, _wgslsmith_add_vec3_u32(global0.b.zyw, global0.a.b.wzw)), all(select(vec2<bool>(true, false), select(vec2<bool>(var_1.b.a.d, true), vec2<bool>(global0.c.d, var_1.b.c.d), var_1.b.a.d), vec2<bool>(false, false))), 17072i));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.a, _wgslsmith_div_f32(var_1.a.a.a, 512f)) + -1331f), vec4<u32>(reverseBits(abs(42031u)) | var_1.a.a.b.x, global0.c.c.x, 1u, _wgslsmith_div_u32(min(22235u, 0u) | u_input.a.x, 4294967295u)), vec3<u32>(1u, func_4(vec4<i32>(global0.a.e, global0.a.e, global0.a.e, global0.a.e) ^ vec4<i32>(global0.a.e, var_1.b.a.e, var_1.b.c.e, 2147483647i), var_1.a.d, u_input.d, var_1.b).x | global0.b.x, ~countOneBits(~9677u)), any(select(!select(vec2<bool>(true, true), vec2<bool>(global0.a.d, var_1.b.c.d), vec2<bool>(global0.c.d, var_1.b.c.d)), vec2<bool>(true, true), select(!vec2<bool>(true, var_1.b.c.d), select(vec2<bool>(var_1.b.c.d, var_1.a.c), vec2<bool>(true, true), global0.a.d), !global0.a.d))), countOneBits(_wgslsmith_add_i32(func_3(u_input.b.x).x, var_1.b.a.e << (1u % 32u))) >> ((var_1.b.a.b.x >> (var_1.b.c.b.x % 32u)) % 32u));
    return var_1.b;
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_3, 9>();
    global0 = Struct_2(global0.c, abs(_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 105598u, u_input.d.x), global0.c.b), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.x, 0u, 12503u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, 52853u, u_input.c.x, 13606u), global0.a.b)))), Struct_1(1151f, global0.a.b << (~countOneBits(vec4<u32>(1u, global0.b.x, global0.c.c.x, 48286u)) % vec4<u32>(32u)), ((u_input.d << (vec3<u32>(global0.c.c.x, u_input.a.x, global0.a.b.x) % vec3<u32>(32u))) << (~u_input.d % vec3<u32>(32u))) ^ select(~vec3<u32>(0u, 0u, 22183u), ~u_input.d, true), true, global0.c.e & global0.a.e));
    var var_0 = global3[_wgslsmith_index_u32(1u, 21u)];
    var var_1 = abs(~(~abs(~48759u)));
    let var_2 = var_0.e;
    return func_2();
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> vec2<i32> {
    global3 = array<Struct_4, 21>();
    global1 = array<Struct_3, 9>();
    global2 = array<vec2<f32>, 1>();
    global3 = array<Struct_4, 21>();
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(select(91063u, max(28231u, u_input.c.x << (arg_0 % 32u)), !(!global0.a.d)), 15783u), global0.a.b.x);
    return -(vec2<i32>(-1i) * -vec2<i32>(firstLeadingBit(global0.c.e), max(6005i, arg_1.a.e)));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_4 {
    global2 = array<vec2<f32>, 1>();
    global2 = array<vec2<f32>, 1>();
    global1 = array<Struct_3, 9>();
    var var_0 = global0.c.e;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, 1109f, global0.a.a, global0.a.a) * vec4<f32>(global0.c.a, 341f, global0.c.a, -444f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(124f, -276f, -1154f, 1000f) + vec4<f32>(-1479f, global0.c.a, global0.a.a, -383f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, global0.c.a, -687f, global0.a.a)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(779f, 699f, global0.c.a, -105f), vec4<f32>(global0.a.a, global0.c.a, global0.a.a, 545f))))) * vec4<f32>(-775f, _wgslsmith_f_op_f32(global0.a.a + global0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a + 144f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.c.a)) + _wgslsmith_div_f32(1000f, global0.a.a)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a - 1832f))), _wgslsmith_f_op_f32(global0.c.a * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(400f))))), -720f, -330f));
    return Struct_4(Struct_1(-466f, global0.b, global0.c.c, global0.c.d, func_3(func_1().c.b.x).x), func_2().a, global0.c.d, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-166f, global0.c.a, 1066f, 472f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1660f, 794f, var_1.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(301f, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(779f, -919f, var_1.x, global0.c.a))), global0.a.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -1893f, 934f, _wgslsmith_f_op_f32(global0.c.a - global0.a.a))))), Struct_3(_wgslsmith_mult_vec3_i32(-abs(vec3<i32>(arg_2, 8728i, arg_0.x)), (arg_0.wzx >> (vec3<u32>(34529u, global0.a.c.x, 0u) % vec3<u32>(32u))) << (~vec3<u32>(global0.b.x, u_input.c.x, global0.a.c.x) % vec3<u32>(32u))), vec2<i32>(~(~arg_1.x), 0i), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(min(countOneBits(vec4<i32>(13489i, -24199i, global0.a.e, -2147483647i)), ~abs(vec4<i32>(2147483647i, 2220i, -24995i, global0.c.e)) << (vec4<u32>(~0u, 4294967295u, global0.a.b.x, _wgslsmith_dot_vec2_u32(global0.b.xz, global0.a.c.yz)) % vec4<u32>(32u))), _wgslsmith_div_vec2_i32(~vec2<i32>(global0.c.e, -1i), -vec2<i32>(44943i, 81787i)) >> (vec2<u32>(~(~u_input.a.x), ~(global0.c.c.x | u_input.b.x)) % vec2<u32>(32u)), _wgslsmith_dot_vec2_i32(func_5(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, u_input.b.x, global0.b.x), 30493u << (global0.c.b.x % 32u)), func_1(), _wgslsmith_f_op_f32(-global0.c.a), 4294967295u), vec2<i32>(-1579i << (1u % 32u), global0.c.e)));
    global0 = func_2();
    let var_1 = ~firstTrailingBit(global0.c.b.yzz);
    global0 = func_2();
    let var_2 = Struct_2(func_2().a, _wgslsmith_add_vec4_u32(global0.c.b, _wgslsmith_mod_vec4_u32(func_2().c.b, var_0.a.b)), Struct_1(-1469f, _wgslsmith_mult_vec4_u32(vec4<u32>(~54941u, abs(39831u), 39472u, 1u), firstTrailingBit(global0.b)), ~(~var_0.a.b.wzw), true, var_0.b.e << (_wgslsmith_sub_u32(~0u, ~17065u) % 32u)));
    global3 = array<Struct_4, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~(-func_5(_wgslsmith_div_u32(global0.c.b.x, var_0.a.c.x), var_2, _wgslsmith_f_op_f32(exp2(var_2.a.a)), 18454u).x), u_input.d, i32(-1i) * -var_0.a.e);
}

