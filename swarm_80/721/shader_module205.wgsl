struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, false, false, false, true, false);

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(963f, vec2<i32>(i32(-2147483648), 15441i), vec3<i32>(-22516i, 1i, 66663i), 27516u), vec3<f32>(1271f, 1379f, 189f), vec2<bool>(false, false), false, 44386u), Struct_2(Struct_1(1147f, vec2<i32>(2147483647i, 0i), vec3<i32>(2147483647i, 0i, -60602i), 1u), vec3<f32>(174f, 966f, -1000f), vec2<bool>(false, false), true, 1u), Struct_2(Struct_1(580f, vec2<i32>(5924i, -2271i), vec3<i32>(0i, -1i, 2147483647i), 1u), vec3<f32>(-1000f, -255f, -159f), vec2<bool>(true, true), false, 0u), Struct_2(Struct_1(-1309f, vec2<i32>(i32(-2147483648), 2147483647i), vec3<i32>(-29033i, i32(-2147483648), -1i), 4294967295u), vec3<f32>(997f, 1000f, -234f), vec2<bool>(false, false), false, 4294967295u), Struct_2(Struct_1(355f, vec2<i32>(3750i, 2147483647i), vec3<i32>(1i, i32(-2147483648), 13217i), 0u), vec3<f32>(-188f, -301f, -340f), vec2<bool>(false, true), true, 1u), Struct_2(Struct_1(1000f, vec2<i32>(-4478i, -2289i), vec3<i32>(i32(-2147483648), 1i, 0i), 52501u), vec3<f32>(223f, 1000f, 566f), vec2<bool>(true, true), true, 17267u), Struct_2(Struct_1(240f, vec2<i32>(20998i, 0i), vec3<i32>(26199i, -17173i, -22034i), 4294967295u), vec3<f32>(959f, -1000f, -796f), vec2<bool>(false, true), false, 18033u), Struct_2(Struct_1(455f, vec2<i32>(-20022i, i32(-2147483648)), vec3<i32>(-29109i, -57470i, 2147483647i), 0u), vec3<f32>(-602f, 656f, 870f), vec2<bool>(false, true), false, 66557u), Struct_2(Struct_1(1000f, vec2<i32>(2912i, 1i), vec3<i32>(-31413i, 1i, 9359i), 25440u), vec3<f32>(-749f, -444f, -992f), vec2<bool>(false, true), true, 63083u), Struct_2(Struct_1(-917f, vec2<i32>(1i, -7581i), vec3<i32>(25326i, i32(-2147483648), 1529i), 11507u), vec3<f32>(1000f, 663f, -1715f), vec2<bool>(true, true), false, 4597u), Struct_2(Struct_1(451f, vec2<i32>(27212i, -20286i), vec3<i32>(2147483647i, -6941i, 1i), 11905u), vec3<f32>(239f, -1458f, 1123f), vec2<bool>(true, true), false, 31177u), Struct_2(Struct_1(732f, vec2<i32>(2147483647i, -76371i), vec3<i32>(-1i, -8185i, 0i), 1u), vec3<f32>(-359f, 1145f, -762f), vec2<bool>(false, false), true, 4294967295u), Struct_2(Struct_1(-231f, vec2<i32>(0i, i32(-2147483648)), vec3<i32>(54448i, -1i, -9252i), 4294967295u), vec3<f32>(-145f, -100f, -1198f), vec2<bool>(false, false), false, 0u), Struct_2(Struct_1(595f, vec2<i32>(31873i, i32(-2147483648)), vec3<i32>(-8119i, 1i, 1i), 57311u), vec3<f32>(1637f, 950f, 210f), vec2<bool>(true, false), false, 28520u), Struct_2(Struct_1(759f, vec2<i32>(2147483647i, -1i), vec3<i32>(11139i, -51339i, 2147483647i), 22941u), vec3<f32>(-1631f, 944f, -392f), vec2<bool>(false, false), false, 4294967295u), Struct_2(Struct_1(597f, vec2<i32>(2147483647i, i32(-2147483648)), vec3<i32>(77008i, 6225i, 0i), 1u), vec3<f32>(-678f, 479f, -1888f), vec2<bool>(true, false), true, 48708u), Struct_2(Struct_1(-1000f, vec2<i32>(-13489i, 2147483647i), vec3<i32>(i32(-2147483648), 107118i, 1i), 19111u), vec3<f32>(-1543f, -1135f, 1023f), vec2<bool>(false, false), false, 1u), Struct_2(Struct_1(886f, vec2<i32>(6240i, 1i), vec3<i32>(-1i, 1i, 21681i), 1u), vec3<f32>(502f, -291f, 175f), vec2<bool>(true, true), true, 0u), Struct_2(Struct_1(1011f, vec2<i32>(0i, 2147483647i), vec3<i32>(1i, -13699i, 2147483647i), 4294967295u), vec3<f32>(-1104f, -1401f, -1608f), vec2<bool>(true, false), false, 0u), Struct_2(Struct_1(-292f, vec2<i32>(9337i, -1i), vec3<i32>(-1i, 0i, 2147483647i), 0u), vec3<f32>(-1200f, 410f, -1309f), vec2<bool>(true, false), true, 1u), Struct_2(Struct_1(699f, vec2<i32>(-15761i, 0i), vec3<i32>(2147483647i, 1i, 2147483647i), 0u), vec3<f32>(861f, 268f, 1303f), vec2<bool>(true, true), true, 74515u));

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(1131f, vec2<i32>(-9987i, 17018i), vec3<i32>(2151i, 0i, -19025i), 58291u), vec3<f32>(-1277f, -619f, 242f), vec2<bool>(false, false), false, 4294967295u), Struct_2(Struct_1(-578f, vec2<i32>(-12909i, 1i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), 132262u), vec3<f32>(1338f, -417f, -456f), vec2<bool>(true, true), false, 49510u), Struct_2(Struct_1(967f, vec2<i32>(42256i, 2147483647i), vec3<i32>(2147483647i, 1i, 2147483647i), 0u), vec3<f32>(2017f, -599f, -1000f), vec2<bool>(false, true), false, 35902u), Struct_2(Struct_1(-1000f, vec2<i32>(25666i, 17256i), vec3<i32>(5826i, 44849i, -32985i), 0u), vec3<f32>(1000f, 3275f, 598f), vec2<bool>(true, true), true, 78544u), Struct_2(Struct_1(842f, vec2<i32>(2147483647i, -12863i), vec3<i32>(1i, 31905i, i32(-2147483648)), 16464u), vec3<f32>(-1422f, 612f, 964f), vec2<bool>(false, true), false, 4294967295u), Struct_2(Struct_1(2432f, vec2<i32>(1i, 17440i), vec3<i32>(13219i, -2354i, 726i), 36734u), vec3<f32>(738f, 815f, -999f), vec2<bool>(false, false), true, 1u), Struct_2(Struct_1(-373f, vec2<i32>(13390i, 2147483647i), vec3<i32>(1i, 0i, -55569i), 133304u), vec3<f32>(-180f, -181f, 1812f), vec2<bool>(true, true), false, 19316u), Struct_2(Struct_1(1691f, vec2<i32>(i32(-2147483648), -3769i), vec3<i32>(0i, 0i, i32(-2147483648)), 19164u), vec3<f32>(448f, 1000f, 2012f), vec2<bool>(true, true), false, 70491u), Struct_2(Struct_1(307f, vec2<i32>(-29257i, 13717i), vec3<i32>(25181i, 3714i, -23091i), 77190u), vec3<f32>(-339f, 683f, -156f), vec2<bool>(false, true), true, 4294967295u), Struct_2(Struct_1(1381f, vec2<i32>(1i, 2147483647i), vec3<i32>(92311i, i32(-2147483648), -13375i), 1u), vec3<f32>(-455f, 1000f, -917f), vec2<bool>(true, false), false, 1u), Struct_2(Struct_1(-138f, vec2<i32>(-40460i, 1i), vec3<i32>(-49225i, 2147483647i, i32(-2147483648)), 112079u), vec3<f32>(515f, 126f, -371f), vec2<bool>(true, false), true, 32725u), Struct_2(Struct_1(1689f, vec2<i32>(i32(-2147483648), 2147483647i), vec3<i32>(-35177i, -1i, -4507i), 0u), vec3<f32>(620f, 1025f, -364f), vec2<bool>(true, true), true, 0u), Struct_2(Struct_1(-733f, vec2<i32>(60365i, 8912i), vec3<i32>(-13266i, -23992i, -1i), 4294967295u), vec3<f32>(-2182f, 1947f, -207f), vec2<bool>(true, false), false, 63677u), Struct_2(Struct_1(1461f, vec2<i32>(-1i, -34550i), vec3<i32>(-39616i, 2147483647i, 0i), 4294967295u), vec3<f32>(804f, -335f, 1477f), vec2<bool>(true, true), true, 3654u), Struct_2(Struct_1(1730f, vec2<i32>(0i, 2682i), vec3<i32>(2147483647i, -1i, -21319i), 4294967295u), vec3<f32>(1000f, 421f, 1602f), vec2<bool>(false, false), true, 0u), Struct_2(Struct_1(-599f, vec2<i32>(-2466i, 14918i), vec3<i32>(-11162i, -1i, -1i), 4294967295u), vec3<f32>(1141f, -1000f, 1067f), vec2<bool>(true, false), true, 46380u), Struct_2(Struct_1(-761f, vec2<i32>(21077i, 2147483647i), vec3<i32>(-19675i, -12149i, -1i), 1u), vec3<f32>(-1516f, 939f, 435f), vec2<bool>(true, true), false, 16373u), Struct_2(Struct_1(-406f, vec2<i32>(-43135i, -1i), vec3<i32>(-2065i, 0i, 2147483647i), 4294967295u), vec3<f32>(2762f, 798f, 406f), vec2<bool>(true, true), false, 0u), Struct_2(Struct_1(618f, vec2<i32>(2147483647i, 1i), vec3<i32>(-51062i, i32(-2147483648), i32(-2147483648)), 0u), vec3<f32>(-861f, -344f, -296f), vec2<bool>(true, true), false, 35992u), Struct_2(Struct_1(979f, vec2<i32>(13537i, 2147483647i), vec3<i32>(1i, -57577i, -69440i), 23326u), vec3<f32>(1000f, 459f, -991f), vec2<bool>(true, false), true, 45369u), Struct_2(Struct_1(1423f, vec2<i32>(39172i, 12202i), vec3<i32>(1i, -60893i, 1i), 14634u), vec3<f32>(160f, 1039f, 205f), vec2<bool>(true, false), false, 24451u), Struct_2(Struct_1(421f, vec2<i32>(-1i, -29990i), vec3<i32>(-1i, i32(-2147483648), -1i), 60528u), vec3<f32>(-415f, -336f, 1458f), vec2<bool>(true, true), true, 1u), Struct_2(Struct_1(-1257f, vec2<i32>(i32(-2147483648), 20666i), vec3<i32>(38358i, -14763i, -29191i), 1u), vec3<f32>(502f, 946f, -482f), vec2<bool>(false, false), false, 27411u), Struct_2(Struct_1(-584f, vec2<i32>(1939i, 1i), vec3<i32>(5503i, 21841i, -30161i), 0u), vec3<f32>(-436f, 554f, 711f), vec2<bool>(false, true), true, 1u), Struct_2(Struct_1(-804f, vec2<i32>(9049i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, 15510i), 3220u), vec3<f32>(1980f, 1187f, 616f), vec2<bool>(false, true), true, 8548u), Struct_2(Struct_1(-1958f, vec2<i32>(2147483647i, 8730i), vec3<i32>(-29085i, 12809i, -1i), 0u), vec3<f32>(667f, 127f, 441f), vec2<bool>(true, true), false, 61730u), Struct_2(Struct_1(1262f, vec2<i32>(1i, -25918i), vec3<i32>(9925i, 33552i, -1i), 1u), vec3<f32>(-1212f, -581f, -551f), vec2<bool>(false, true), false, 25456u), Struct_2(Struct_1(1579f, vec2<i32>(42645i, 8770i), vec3<i32>(-8014i, i32(-2147483648), -9207i), 4294967295u), vec3<f32>(-278f, 1000f, -1977f), vec2<bool>(true, true), false, 122187u));

var<private> global3: array<f32, 30>;

var<private> global4: array<u32, 7>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    var var_0 = arg_2;
    global4 = array<u32, 7>();
    global4 = array<u32, 7>();
    var var_1 = ((_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 52221u, 90159u), vec3<u32>(u_input.a.x, 4294967295u, arg_2.d)) >> (firstLeadingBit(vec3<u32>(global4[_wgslsmith_index_u32(1u, 7u)], 0u, var_0.d)) % vec3<u32>(32u))) >> (~reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(3268u, 42311u, global4[_wgslsmith_index_u32(arg_2.d, 7u)]), vec3<u32>(var_0.d, 60055u, u_input.a.x), vec3<u32>(u_input.c, arg_2.d, 0u))) % vec3<u32>(32u))) << (~(vec3<u32>(arg_2.d << (39601u % 32u), global4[_wgslsmith_index_u32(arg_2.d, 7u)], u_input.c) ^ vec3<u32>(~arg_2.d, ~0u, arg_2.d)) % vec3<u32>(32u));
    global2 = array<Struct_2, 28>();
    return global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 6u)];
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> bool {
    let var_0 = ~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 7u)], global4[_wgslsmith_index_u32(1u, 7u)], u_input.a.x, u_input.c), vec4<u32>(global4[_wgslsmith_index_u32(0u, 7u)], u_input.c, u_input.c, 4294967295u) >> (vec4<u32>(2921u, 105734u, 36605u, 79816u) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(u_input.c, 7u)], 1u, 12709u, 62777u), vec4<u32>(u_input.c, u_input.c, global4[_wgslsmith_index_u32(0u, 7u)], u_input.c))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.a.x, u_input.a.x), abs(vec4<u32>(4294967295u, 25010u, u_input.c, 0u)), min(vec4<u32>(global4[_wgslsmith_index_u32(u_input.c, 7u)], global4[_wgslsmith_index_u32(1u, 7u)], 0u, 44110u), vec4<u32>(1u, 4294967295u, 0u, 24296u))), min(vec4<u32>(4294967295u, u_input.c, 0u, 4294967295u), ~vec4<u32>(14028u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(55099u, 7u)], 7u)], 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 7u)], 7u)]))));
    global0 = array<bool, 6>();
    var var_1 = vec3<u32>(4294967295u, u_input.c, 88555u);
    let var_2 = var_0.xz | ~(~var_0.xy);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)), _wgslsmith_f_op_f32(arg_1 * -1094f)))), vec2<i32>(~abs(u_input.b | u_input.b), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -55038i, 0i, u_input.b), vec4<i32>(-1i, 1i, u_input.b, u_input.b)))), abs(max(-(~vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(select(u_input.b, u_input.b, true), u_input.b, firstLeadingBit(u_input.b)))), ~global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, u_input.a.x & var_1.x) & 0u, 7u)]);
    return !(!arg_0.b.x) || all(!(!arg_0.b));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_2, 21>();
    var var_0 = !func_4(Struct_3(true, select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 6u)]), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], false)), !vec2<bool>(global0[_wgslsmith_index_u32(11866u, 6u)], false), func_3(global3[_wgslsmith_index_u32(18811u, 30u)], vec2<i32>(u_input.b, -19398i), Struct_1(global3[_wgslsmith_index_u32(4763u, 30u)], vec2<i32>(u_input.b, 87703i), vec3<i32>(0i, -1i, u_input.b), 4294967295u), vec3<i32>(u_input.b, u_input.b, -2147483647i))), global0[_wgslsmith_index_u32(56305u, 6u)]), -2176f, -1478f);
    global4 = array<u32, 7>();
    global0 = array<bool, 6>();
    var var_1 = vec4<u32>(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(26699u, 28671u, global4[_wgslsmith_index_u32(4294967295u, 7u)], 1u), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.c, 39131u, u_input.a.x), vec4<u32>(u_input.a.x, 33871u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(34180u, 7u)], 7u)]) ^ vec4<u32>(10760u, 1u, 0u, 1u))), 7u)], ~_wgslsmith_add_u32(_wgslsmith_mod_u32(76628u, 24240u), 78824u), ~select(61385u, ~select(u_input.c, 30711u, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 6u)]), all(!vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 6u)]))), 9788u);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-766f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(var_1.x, 30u)])) * 1278f))), vec2<i32>(-68104i, u_input.b), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(min(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(14098i, u_input.b, u_input.b))), ~vec3<i32>(u_input.b, u_input.b, -18286i)), vec3<i32>(-1i) * -(~vec3<i32>(0i, u_input.b, u_input.b))), select(min(global4[_wgslsmith_index_u32(4273u, 7u)], 26499u) | u_input.a.x, ~(0u ^ _wgslsmith_dot_vec3_u32(var_1.wzw, vec3<u32>(u_input.c, var_1.x, 116343u))), any(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 7u)], 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 6u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 6u)]), global0[_wgslsmith_index_u32(0u, 6u)]))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-365f, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 7u)], 30u)], arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 30u)], 1442f, arg_1) + vec3<f32>(arg_1, 845f, -206f)))))), select(vec2<bool>(true, any(select(vec3<bool>(arg_3.c, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(11077u, 6u)]), vec3<bool>(arg_3.b.x, arg_3.b.x, true), true))), !(!select(arg_3.b, vec2<bool>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 7u)], 6u)], global0[_wgslsmith_index_u32(9354u, 6u)]), arg_3.b)), !arg_3.c), global0[_wgslsmith_index_u32(27396u, 6u)], _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.c, u_input.c, 2131u)), vec3<u32>(4294967295u ^ global4[_wgslsmith_index_u32(51600u, 7u)], firstLeadingBit(19704u) ^ u_input.c, _wgslsmith_clamp_u32(u_input.a.x, abs(6458u), u_input.c))));
    var var_1 = Struct_1(1000f, _wgslsmith_div_vec2_i32(~var_0.a.b, ~vec2<i32>(arg_2, -arg_0.x)), var_0.a.c, _wgslsmith_dot_vec4_u32(~min(countOneBits(vec4<u32>(var_0.a.d, 33450u, 17099u, 86618u)), firstLeadingBit(vec4<u32>(var_0.e, var_0.a.d, 0u, 83068u))), select(~select(vec4<u32>(17240u, 29245u, 0u, u_input.c), vec4<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 7u)], 59967u, var_0.e, var_0.e), var_0.c.x), ~vec4<u32>(global4[_wgslsmith_index_u32(57462u, 7u)], 26560u, global4[_wgslsmith_index_u32(36299u, 7u)], 0u), select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 6u)], false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 7u)], 6u)], false, true), !global0[_wgslsmith_index_u32(4294967295u, 6u)]))));
    var_1 = func_2();
    var var_2 = 223f;
    let var_3 = 32119u >> (_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.d ^ 4294967295u, _wgslsmith_mult_u32(67501u, 327u)), 4294967295u), countOneBits((0u << (1u % 32u)) << (_wgslsmith_div_u32(var_1.d, 4294967295u) % 32u))) % 32u);
    return Struct_1(arg_1, firstTrailingBit(func_2().c.xz), var_1.c & (~(~arg_0.xyw) << (max(max(vec3<u32>(var_1.d, var_3, global4[_wgslsmith_index_u32(0u, 7u)]), vec3<u32>(18606u, 493u, 26667u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, var_1.d), vec3<u32>(72437u, 0u, var_0.a.d))) % vec3<u32>(32u))), _wgslsmith_mult_u32(_wgslsmith_add_u32(10141u, reverseBits(u_input.c) | ~var_3), firstLeadingBit(~global4[_wgslsmith_index_u32(u_input.a.x, 7u)])));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(arg_1.d, 30u)], _wgslsmith_f_op_f32(f32(-1f) * -1690f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1238f, _wgslsmith_f_op_f32(337f * -543f))), _wgslsmith_f_op_f32(1377f * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1.d, 30u)] - arg_1.a))), arg_1.a, -2836f), vec4<f32>(-979f, 607f, global3[_wgslsmith_index_u32(~0u, 30u)], arg_1.a), arg_0.x));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(23880u, _wgslsmith_mod_u32(~global4[_wgslsmith_index_u32(arg_1.d, 7u)], func_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 31718i, -12287i), vec4<i32>(-2147483647i, 2147483647i, arg_1.b.x, u_input.b)), _wgslsmith_f_op_f32(floor(1192f)), _wgslsmith_dot_vec4_i32(vec4<i32>(-370i, arg_1.c.x, u_input.b, arg_1.c.x), vec4<i32>(arg_1.c.x, arg_1.c.x, -27895i, 0i)), Struct_3(true, vec2<bool>(true, true), arg_0.x)).d ^ 5638u)), 21u)];
    global4 = array<u32, 7>();
    var var_2 = vec3<i32>(u_input.b, 2147483647i, u_input.b);
    let var_3 = func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, ~(-1i), i32(-1i) * -arg_1.c.x, reverseBits(u_input.b)), ((vec4<i32>(u_input.b, arg_1.b.x, 1i, var_1.a.b.x) | vec4<i32>(var_1.a.b.x, u_input.b, -1i, var_2.x)) ^ -vec4<i32>(1i, u_input.b, arg_1.b.x, var_1.a.b.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.d, u_input.a.x, 25817u, 0u) >> (vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.e, 7u)], 7u)], 0u, 6978u, var_1.e) % vec4<u32>(32u)), ~vec4<u32>(0u, var_1.e, var_1.a.d, 17177u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(~(~vec4<i32>(37524i, u_input.b, 2926i, u_input.b)), select(vec4<i32>(var_1.a.b.x, arg_1.c.x, -64000i, 5952i) ^ vec4<i32>(-3396i, u_input.b, arg_1.c.x, -8748i), ~vec4<i32>(arg_1.b.x, -15009i, u_input.b, var_1.a.c.x), arg_0))), 1537f, 0i, Struct_3(false, var_1.c, true));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-561f, _wgslsmith_f_op_f32(max(var_3.a, -1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-521f - -512f))), _wgslsmith_f_op_f32(var_3.a * 923f)), vec2<i32>(countOneBits(55974i), u_input.b), vec3<i32>(func_2().b.x & _wgslsmith_mod_i32(var_1.a.b.x, 22958i), select(-2147483647i, _wgslsmith_add_i32(63897i, -2147483647i), true), (var_1.a.b.x & -1i) ^ _wgslsmith_mod_i32(u_input.b, arg_1.b.x)) & -arg_1.c, ~func_2().d);
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mod_u32(4294967295u, ~607u);
    var var_1 = !(!select(!vec4<bool>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 6u)], global0[_wgslsmith_index_u32(arg_2.d, 6u)], true, global0[_wgslsmith_index_u32(1u, 6u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(arg_2.d, 6u)], false, global0[_wgslsmith_index_u32(var_0, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)])), !func_3(556f, arg_2.b, Struct_1(239f, arg_2.b, vec3<i32>(u_input.b, 11414i, arg_2.c.x), u_input.c), vec3<i32>(2147483647i, 1i, u_input.b))));
    let var_2 = false;
    let var_3 = _wgslsmith_add_vec3_u32(~firstTrailingBit(select(~vec3<u32>(34019u, var_0, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, arg_2.d, 0u), vec3<u32>(var_0, 3235u, 0u)), global3[_wgslsmith_index_u32(arg_2.d, 30u)] > -1192f)), ~(~(~vec3<u32>(7616u, var_0, u_input.a.x))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 21>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(32764u, 30u)], 543f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)], 30u)], -574f) + vec2<f32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24835u, 7u)], 7u)], 30u)], global3[_wgslsmith_index_u32(7763u, 30u)])))))));
    let var_1 = vec3<u32>(u_input.c | func_6(var_0.x, ~max(4294967295u, u_input.c), func_5(!vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(93460u, 6u)]), func_1(vec4<i32>(0i, u_input.b, -25405i, -2147483647i), var_0.x, -34375i, Struct_3(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 7u)], 6u)], vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], true), false)))), func_6(_wgslsmith_f_op_f32(abs(1f)), 4294967295u, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 30u)] + var_0.x))), vec2<i32>(u_input.b, ~0i), max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, 0i, -17217i)), ~vec3<i32>(u_input.b, u_input.b, u_input.b)), ~firstLeadingBit(0u))), 85919u);
    var var_2 = Struct_3(any(!vec2<bool>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(func_1(vec4<i32>(-1i, u_input.b, 2147483647i, -1i), -627f, u_input.b, Struct_3(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 6u)], vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 6u)]), false)).d, 7u)], 6u)], any(vec4<bool>(global0[_wgslsmith_index_u32(52934u, 6u)], true, global0[_wgslsmith_index_u32(70927u, 6u)], true)))), select(!vec2<bool>(true, true || global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec2<bool>(all(!vec2<bool>(false, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 6u)])), !global0[_wgslsmith_index_u32(0u, 6u)]), select(true, -2147483647i != u_input.b, false)), any(vec3<bool>(func_4(Struct_3(global0[_wgslsmith_index_u32(1u, 6u)], vec2<bool>(true, false), true), _wgslsmith_f_op_f32(ceil(730f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(19333u, 7u)], 30u)])), any(vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 6u)], true, global0[_wgslsmith_index_u32(96558u, 6u)])), !global0[_wgslsmith_index_u32(~64570u, 6u)])));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(u_input.c, 30u)], global3[_wgslsmith_index_u32(var_1.x, 30u)], -137f, var_0.x), vec4<f32>(global3[_wgslsmith_index_u32(u_input.c, 30u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24257u, 7u)], 30u)], global3[_wgslsmith_index_u32(0u, 30u)], var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 7u)], 6u)], true, global0[_wgslsmith_index_u32(var_1.x, 6u)], var_2.a)))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -648f) * _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(var_1.x, 30u)]))), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x | u_input.a.x, ~50602u, 59036u), 30u)], _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(-422f))), var_0.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(var_1.x, 30u)], var_0.x, -1677f, -1830f))))))));
    let var_4 = select(!vec2<bool>(!var_2.a, true), var_2.b, select(!select(select(vec2<bool>(false, true), vec2<bool>(var_2.c, var_2.c), var_2.b), !vec2<bool>(false, var_2.c), !var_2.b), var_2.b, true));
    global1 = array<Struct_2, 21>();
    global2 = array<Struct_2, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~global4[_wgslsmith_index_u32(firstLeadingBit(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, abs(4294967295u)), 7u)]), 7u)], _wgslsmith_clamp_vec2_i32(~(~vec2<i32>(19517i, u_input.b)) & _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(u_input.b, 24625i)), vec2<i32>(2147483647i, u_input.b), _wgslsmith_mod_vec2_i32(~(~vec2<i32>(-1i, -49326i)), func_2().c.zy)));
}

