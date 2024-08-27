struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26>;

var<private> global1: array<bool, 15> = array<bool, 15>(true, true, true, true, false, false, false, false, true, false, false, false, true, true, false);

var<private> global2: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(-223f, Struct_3(101277u, 509f, Struct_1(vec3<i32>(0i, -3641i, 47387i), true, vec2<i32>(24662i, -14827i), 384f, vec4<u32>(4294967295u, 102715u, 4294967295u, 65339u))), Struct_1(vec3<i32>(-17535i, 35761i, 21145i), false, vec2<i32>(22689i, 0i), 926f, vec4<u32>(24511u, 75288u, 77587u, 17559u)), Struct_1(vec3<i32>(-28978i, 18613i, 26004i), false, vec2<i32>(30965i, 1i), -1013f, vec4<u32>(64646u, 58802u, 21249u, 62373u))), Struct_4(366f, Struct_3(4294967295u, 633f, Struct_1(vec3<i32>(1957i, 0i, -47501i), false, vec2<i32>(1i, -1i), -905f, vec4<u32>(3530u, 0u, 21026u, 82431u))), Struct_1(vec3<i32>(2147483647i, -1i, 2147483647i), true, vec2<i32>(28450i, -25210i), 274f, vec4<u32>(89315u, 13542u, 1u, 1447u)), Struct_1(vec3<i32>(32014i, i32(-2147483648), 0i), true, vec2<i32>(1i, 96511i), -1000f, vec4<u32>(1u, 4294967295u, 66733u, 4294967295u))), Struct_4(-1000f, Struct_3(96153u, 1322f, Struct_1(vec3<i32>(2147483647i, -34008i, 1i), false, vec2<i32>(-65964i, -29819i), 434f, vec4<u32>(0u, 1u, 19435u, 73519u))), Struct_1(vec3<i32>(1i, 1i, -1196i), true, vec2<i32>(2147483647i, 0i), 1781f, vec4<u32>(0u, 0u, 1u, 33768u)), Struct_1(vec3<i32>(-1i, i32(-2147483648), -1i), true, vec2<i32>(1i, i32(-2147483648)), -782f, vec4<u32>(5610u, 0u, 1u, 4294967295u))), Struct_4(-266f, Struct_3(0u, 553f, Struct_1(vec3<i32>(2147483647i, 34711i, -7088i), false, vec2<i32>(-1i, 11125i), 1000f, vec4<u32>(41169u, 4294967295u, 1u, 4294967295u))), Struct_1(vec3<i32>(-41881i, 1i, 12191i), true, vec2<i32>(23030i, 1i), -1000f, vec4<u32>(4294967295u, 71467u, 26712u, 32105u)), Struct_1(vec3<i32>(-10847i, 54579i, -1i), false, vec2<i32>(-35308i, 16127i), 591f, vec4<u32>(3220u, 9854u, 29795u, 0u))), Struct_4(-1323f, Struct_3(22706u, -148f, Struct_1(vec3<i32>(1i, -1i, 2147483647i), false, vec2<i32>(-7400i, 1i), -1367f, vec4<u32>(5341u, 58423u, 1u, 44488u))), Struct_1(vec3<i32>(-1i, 0i, 3097i), true, vec2<i32>(2147483647i, 34539i), -525f, vec4<u32>(31413u, 34681u, 4294967295u, 1u)), Struct_1(vec3<i32>(0i, 22602i, 1i), false, vec2<i32>(-26912i, -43666i), -569f, vec4<u32>(1u, 24379u, 87961u, 0u))), Struct_4(719f, Struct_3(1u, -1692f, Struct_1(vec3<i32>(2147483647i, -21245i, 23547i), true, vec2<i32>(-22283i, 26135i), 137f, vec4<u32>(4990u, 1u, 6238u, 4294967295u))), Struct_1(vec3<i32>(16912i, 0i, 17384i), false, vec2<i32>(i32(-2147483648), i32(-2147483648)), 867f, vec4<u32>(26175u, 152842u, 4294967295u, 1u)), Struct_1(vec3<i32>(-1i, 14283i, -1i), true, vec2<i32>(-27887i, 26757i), -1458f, vec4<u32>(4294967295u, 4294967295u, 27410u, 202u))), Struct_4(1270f, Struct_3(4294967295u, -848f, Struct_1(vec3<i32>(i32(-2147483648), -34285i, -81576i), false, vec2<i32>(1i, -53970i), -694f, vec4<u32>(768u, 8652u, 24372u, 4294967295u))), Struct_1(vec3<i32>(-1i, -10950i, i32(-2147483648)), false, vec2<i32>(1i, 2147483647i), -887f, vec4<u32>(48382u, 27531u, 26662u, 1u)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), false, vec2<i32>(62719i, 10436i), 1307f, vec4<u32>(46346u, 1u, 37355u, 65039u))), Struct_4(803f, Struct_3(60029u, -1773f, Struct_1(vec3<i32>(33422i, -3758i, 28690i), true, vec2<i32>(5224i, 1611i), 1101f, vec4<u32>(4294967295u, 54639u, 4294967295u, 0u))), Struct_1(vec3<i32>(1i, -1i, i32(-2147483648)), true, vec2<i32>(-13781i, -1i), 220f, vec4<u32>(4294967295u, 38884u, 63777u, 0u)), Struct_1(vec3<i32>(-1i, 2147483647i, 25212i), false, vec2<i32>(17323i, 2147483647i), 622f, vec4<u32>(45085u, 1u, 1u, 43743u))), Struct_4(601f, Struct_3(9006u, 1127f, Struct_1(vec3<i32>(1237i, i32(-2147483648), -23559i), true, vec2<i32>(22252i, -57913i), 249f, vec4<u32>(1u, 1u, 0u, 4294967295u))), Struct_1(vec3<i32>(2147483647i, 0i, -9474i), true, vec2<i32>(-20499i, 21564i), 527f, vec4<u32>(40463u, 0u, 30584u, 43672u)), Struct_1(vec3<i32>(-1i, 1i, 5483i), false, vec2<i32>(2147483647i, i32(-2147483648)), -1315f, vec4<u32>(4294967295u, 1u, 4842u, 1u))), Struct_4(526f, Struct_3(1u, -533f, Struct_1(vec3<i32>(-5264i, 11481i, -13886i), true, vec2<i32>(29723i, 1i), 242f, vec4<u32>(17095u, 4294967295u, 10354u, 0u))), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -1i), true, vec2<i32>(-47374i, -1i), 290f, vec4<u32>(0u, 53998u, 58251u, 1u)), Struct_1(vec3<i32>(40336i, 2147483647i, 2147483647i), true, vec2<i32>(916i, 2147483647i), 1281f, vec4<u32>(1u, 0u, 4294967295u, 66350u))), Struct_4(293f, Struct_3(52808u, 911f, Struct_1(vec3<i32>(i32(-2147483648), 1i, -1i), false, vec2<i32>(15247i, 50435i), 239f, vec4<u32>(4294967295u, 43859u, 1u, 6833u))), Struct_1(vec3<i32>(-27618i, 7324i, 0i), false, vec2<i32>(-25611i, 0i), 1151f, vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u)), Struct_1(vec3<i32>(-35974i, 15354i, 1i), true, vec2<i32>(14896i, 9532i), -2143f, vec4<u32>(0u, 1u, 37333u, 0u))), Struct_4(840f, Struct_3(39929u, -991f, Struct_1(vec3<i32>(0i, 0i, 0i), true, vec2<i32>(-6615i, 1i), -1854f, vec4<u32>(23779u, 30723u, 0u, 0u))), Struct_1(vec3<i32>(2147483647i, 23184i, 43392i), true, vec2<i32>(29253i, 32761i), -1450f, vec4<u32>(0u, 14425u, 4294967295u, 4294967295u)), Struct_1(vec3<i32>(2147483647i, 72901i, i32(-2147483648)), true, vec2<i32>(50211i, -53858i), 1101f, vec4<u32>(1u, 19926u, 0u, 39294u))), Struct_4(355f, Struct_3(4294967295u, -1210f, Struct_1(vec3<i32>(6562i, 2147483647i, 10117i), true, vec2<i32>(32633i, 1i), -1627f, vec4<u32>(0u, 0u, 20766u, 57862u))), Struct_1(vec3<i32>(-65719i, -40723i, i32(-2147483648)), false, vec2<i32>(2147483647i, 4926i), 585f, vec4<u32>(1u, 10520u, 35526u, 1u)), Struct_1(vec3<i32>(i32(-2147483648), 17387i, 10332i), false, vec2<i32>(-12548i, 25869i), -942f, vec4<u32>(0u, 12483u, 38185u, 1u))), Struct_4(-1339f, Struct_3(22240u, 1000f, Struct_1(vec3<i32>(438i, -27080i, 0i), true, vec2<i32>(-51017i, 0i), -517f, vec4<u32>(87680u, 97023u, 4294967295u, 30135u))), Struct_1(vec3<i32>(-47429i, -1133i, -20064i), false, vec2<i32>(-1i, 1i), -804f, vec4<u32>(19823u, 0u, 4294967295u, 0u)), Struct_1(vec3<i32>(i32(-2147483648), 47368i, 3784i), false, vec2<i32>(i32(-2147483648), -11163i), 939f, vec4<u32>(81156u, 40847u, 53177u, 1u))), Struct_4(-134f, Struct_3(29009u, 1277f, Struct_1(vec3<i32>(-25836i, 14514i, -2142i), true, vec2<i32>(i32(-2147483648), -59553i), -2116f, vec4<u32>(1u, 24626u, 46631u, 4294967295u))), Struct_1(vec3<i32>(18569i, -43050i, 48025i), true, vec2<i32>(-20458i, 1i), -505f, vec4<u32>(50646u, 72811u, 14422u, 27434u)), Struct_1(vec3<i32>(28021i, 34759i, 2147483647i), true, vec2<i32>(1i, -35559i), -1280f, vec4<u32>(88258u, 58551u, 78u, 13979u))), Struct_4(-1529f, Struct_3(13525u, 926f, Struct_1(vec3<i32>(-1350i, 1i, -23559i), false, vec2<i32>(5555i, 54802i), -1876f, vec4<u32>(0u, 0u, 0u, 48609u))), Struct_1(vec3<i32>(-1i, 2987i, 24742i), true, vec2<i32>(-24129i, -1i), -1426f, vec4<u32>(4294967295u, 39431u, 44910u, 40438u)), Struct_1(vec3<i32>(-15477i, -26015i, 1786i), false, vec2<i32>(9996i, -40450i), -552f, vec4<u32>(1u, 22172u, 42901u, 0u))), Struct_4(1076f, Struct_3(4294967295u, 1927f, Struct_1(vec3<i32>(23311i, 17656i, 47688i), false, vec2<i32>(1i, i32(-2147483648)), -342f, vec4<u32>(52225u, 1u, 87047u, 0u))), Struct_1(vec3<i32>(-25139i, 9428i, 2147483647i), true, vec2<i32>(-1i, 2147483647i), -2583f, vec4<u32>(4294967295u, 52246u, 61680u, 42076u)), Struct_1(vec3<i32>(2147483647i, -19278i, 10319i), true, vec2<i32>(-43096i, -9224i), -1896f, vec4<u32>(4294967295u, 0u, 7321u, 8685u))), Struct_4(-919f, Struct_3(36250u, 1931f, Struct_1(vec3<i32>(23065i, -23368i, 1i), true, vec2<i32>(22894i, 48915i), 1190f, vec4<u32>(110859u, 5450u, 22549u, 106642u))), Struct_1(vec3<i32>(i32(-2147483648), -6686i, 32776i), true, vec2<i32>(-7993i, -6777i), -192f, vec4<u32>(8218u, 0u, 42802u, 16850u)), Struct_1(vec3<i32>(2147483647i, 2147483647i, 1i), true, vec2<i32>(1245i, -31461i), 1000f, vec4<u32>(4294967295u, 14941u, 483u, 55894u))), Struct_4(-735f, Struct_3(39682u, -624f, Struct_1(vec3<i32>(1i, 2147483647i, -24991i), false, vec2<i32>(-4144i, 5157i), -1347f, vec4<u32>(0u, 35328u, 73575u, 10779u))), Struct_1(vec3<i32>(0i, -13218i, -11113i), false, vec2<i32>(-1i, 1i), 1566f, vec4<u32>(1u, 101051u, 1u, 0u)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 54542i), false, vec2<i32>(35429i, 2147483647i), 819f, vec4<u32>(4294967295u, 36313u, 0u, 4294967295u))), Struct_4(-1721f, Struct_3(26995u, -195f, Struct_1(vec3<i32>(1i, 2147483647i, 0i), false, vec2<i32>(336i, 38473i), -192f, vec4<u32>(6500u, 49934u, 780u, 57581u))), Struct_1(vec3<i32>(2147483647i, 59711i, -1i), true, vec2<i32>(-3658i, -57609i), -983f, vec4<u32>(1u, 4294967295u, 1u, 30780u)), Struct_1(vec3<i32>(1i, -1i, -30833i), true, vec2<i32>(17564i, 0i), 311f, vec4<u32>(0u, 1u, 58334u, 1u))), Struct_4(1456f, Struct_3(11600u, 226f, Struct_1(vec3<i32>(0i, 4040i, 2147483647i), true, vec2<i32>(-10693i, 22940i), 919f, vec4<u32>(1u, 32958u, 35439u, 2478u))), Struct_1(vec3<i32>(-44208i, 1i, 12709i), true, vec2<i32>(2147483647i, -24263i), 1357f, vec4<u32>(0u, 0u, 17969u, 16902u)), Struct_1(vec3<i32>(2147483647i, 2147483647i, 2147483647i), false, vec2<i32>(-9757i, 2147483647i), -814f, vec4<u32>(0u, 67203u, 0u, 43908u))), Struct_4(978f, Struct_3(46721u, 1040f, Struct_1(vec3<i32>(-1i, -60842i, 2147483647i), true, vec2<i32>(39788i, 1i), -603f, vec4<u32>(1u, 0u, 1u, 0u))), Struct_1(vec3<i32>(-49540i, 2147483647i, 34926i), true, vec2<i32>(0i, i32(-2147483648)), 1466f, vec4<u32>(15979u, 48616u, 4991u, 47315u)), Struct_1(vec3<i32>(39915i, -9720i, 0i), true, vec2<i32>(-21240i, 45491i), 1008f, vec4<u32>(0u, 4294967295u, 4294967295u, 1u))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    var var_0 = ~(vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, 17344u)), u_input.a.x), _wgslsmith_sub_u32(firstTrailingBit(0u), 0u)) >> (vec3<u32>(u_input.b.x, min(~13850u, u_input.b.x), u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b.x), vec3<u32>(1922u, 56323u, u_input.a.x)) % 32u)) % vec3<u32>(32u)));
    var var_1 = select(-vec4<i32>(u_input.c & -u_input.c, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.c, 24719i)), countOneBits(vec2<i32>(2147483647i, 0i))), u_input.c, 47672i), firstTrailingBit(vec4<i32>(u_input.c, -14607i, -12355i, -_wgslsmith_mult_i32(-1i, -31664i))), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 15u)], false, global1[_wgslsmith_index_u32(select(0u, u_input.a.x, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(8376u, u_input.b.x), 15u)]), 15u)], global1[_wgslsmith_index_u32(var_0.x, 15u)]));
    var var_2 = vec4<f32>(843f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-984f + arg_0) + _wgslsmith_div_f32(518f, -1128f)), -417f, 1439f);
    let var_3 = Struct_3(abs(1940u), _wgslsmith_f_op_f32(-753f - _wgslsmith_f_op_f32(sign(1f))), Struct_1(vec3<i32>(44665i, -2147483647i, var_1.x), true, abs(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, u_input.c), vec2<i32>(10142i, 28242i)))), -245f, ~min(vec4<u32>(58152u, 4294967295u, var_0.x, 42517u), vec4<u32>(u_input.b.x, var_0.x, u_input.a.x, 6766u) << (vec4<u32>(var_0.x, 51727u, u_input.a.x, var_0.x) % vec4<u32>(32u)))));
    return !vec3<bool>(true, all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 15u)])), true);
}

fn func_2() -> u32 {
    global1 = array<bool, 15>();
    var var_0 = _wgslsmith_div_vec3_i32(select(-vec3<i32>(u_input.c, u_input.c, -21873i), ~(~vec3<i32>(-62212i, u_input.c, u_input.c)), select(select(vec3<bool>(true, false, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)], true), false), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), func_3(677f))), -_wgslsmith_clamp_vec3_i32(-vec3<i32>(30034i, 6581i, u_input.c), abs(vec3<i32>(6961i, u_input.c, 0i)), select(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, 38052i), vec3<bool>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], false)))) >> (_wgslsmith_sub_vec3_u32(select(abs(vec3<u32>(0u, u_input.b.x, 0u) | vec3<u32>(0u, u_input.b.x, 13635u)), vec3<u32>(u_input.b.x << (u_input.a.x % 32u), 13888u, 51325u), func_3(_wgslsmith_f_op_f32(floor(-446f)))), vec3<u32>(~u_input.b.x, ~u_input.a.x, 0u)) % vec3<u32>(32u));
    let var_1 = abs(((2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, -11083i, -20878i), vec4<i32>(-12505i, 28155i, var_0.x, -32790i))) | (i32(-1i) * -40522i)) << (12703u % 32u));
    let var_2 = Struct_3(u_input.b.x & _wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), _wgslsmith_mult_u32(~0u, 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f) + 1f)))), Struct_1(~((vec3<i32>(u_input.c, 8718i, 2147483647i) ^ vec3<i32>(-4675i, u_input.c, -1i)) << ((vec3<u32>(u_input.a.x, 79374u, u_input.a.x) << (vec3<u32>(29212u, 1u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))), all(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 26u)]), ~min(countOneBits(var_0.zy), vec2<i32>(var_0.x, -2147483647i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(547f)), _wgslsmith_f_op_f32(f32(-1f) * -316f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1483f - 968f)))), min(vec4<u32>(u_input.a.x, 1u, 19812u, u_input.a.x) ^ max(vec4<u32>(u_input.b.x, 14484u, 4294967295u, 54081u), vec4<u32>(0u, 0u, 78039u, u_input.b.x)), ~select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a.x), vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x), false))));
    global2 = array<Struct_4, 22>();
    return u_input.a.x;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(423f)) - _wgslsmith_div_f32(129f, 1091f)), -1605f))), Struct_3(func_2(), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1844f, -1615f)))))), Struct_1(arg_1.xyy, select(1u, arg_0, global1[_wgslsmith_index_u32(4294967295u, 15u)]) < _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(61075u, arg_0)), -vec2<i32>(1i, 1i), -1394f, ~vec4<u32>(50568u, 0u, 0u, 1u) | min(vec4<u32>(4294967295u, 1u, u_input.b.x, 29749u), vec4<u32>(1u, arg_0, 18350u, 0u)))), Struct_1(reverseBits(vec3<i32>(-1i) * -vec3<i32>(arg_1.x, 5809i, -55734i)), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], vec2<i32>(~arg_1.x ^ -4263i, arg_1.x | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, arg_1.x, -11171i), vec4<i32>(u_input.c, arg_1.x, arg_1.x, -12352i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -646f) * -971f)), vec4<u32>(1u, select(0u, func_2(), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 21204u), 15u)]), 86782u, ~(~4294967295u))), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-26464i, u_input.c, -2147483647i) ^ (vec3<i32>(arg_1.x, -40898i, u_input.c) & vec3<i32>(29305i, 1i, u_input.c)), max(vec3<i32>(arg_1.x, u_input.c, arg_1.x), ~vec3<i32>(45544i, u_input.c, -2147483647i)), ~max(arg_1.xwz, vec3<i32>(-40655i, u_input.c, 22464i))), all(global0[_wgslsmith_index_u32(75416u, 26u)]), -(vec2<i32>(arg_1.x, 43172i) ^ ~vec2<i32>(arg_1.x, 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(368f, _wgslsmith_f_op_f32(floor(452f))))), vec4<u32>(reverseBits(95179u), ~(~87732u), u_input.b.x, ~1u)));
    let var_1 = any(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(u_input.b.x, arg_0) & (arg_0 << (var_0.b.a % 32u)), _wgslsmith_add_u32(39775u, arg_0) ^ ~var_0.d.e.x, arg_0), 15u)], var_0.b.c.b));
    let var_2 = !select(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1130f))), vec3<bool>(select(53540i, 2147483647i, true) > 1i, var_0.b.c.b, true), vec3<bool>(any(global0[_wgslsmith_index_u32(1u, 26u)]), var_0.c.b, true));
    global2 = array<Struct_4, 22>();
    var var_3 = select(!select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false, true, false), select(select(vec4<bool>(var_1, global1[_wgslsmith_index_u32(var_0.b.c.e.x, 15u)], false, true), vec4<bool>(true, false, var_1, false), var_2.x), vec4<bool>(var_2.x, var_2.x, true, true), global1[_wgslsmith_index_u32(34623u, 15u)]), 1f > _wgslsmith_f_op_f32(var_0.c.d - var_0.b.c.d)), !(!select(!vec4<bool>(global1[_wgslsmith_index_u32(10611u, 15u)], var_0.c.b, true, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], true, false, false), vec4<bool>(true, var_2.x, var_2.x, true))), vec4<bool>(firstTrailingBit(u_input.b.x | 98725u) >= _wgslsmith_add_u32(var_0.c.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(26808u, 0u, 26702u), vec3<u32>(4120u, 39275u, arg_0))), true, 28218u <= (arg_0 ^ 4294967295u), 23978u >= ~var_0.c.e.x));
    return Struct_3((func_2() ^ 13662u) | arg_0, _wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.c.d)), var_0.a) * _wgslsmith_f_op_f32(select(481f, _wgslsmith_f_op_f32(-537f - 271f), var_0.d.c.x != var_0.b.c.a.x))), true)), var_0.d);
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.d, _wgslsmith_f_op_f32(-arg_1.b), -362f) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c.d, -928f, arg_1.c.d), vec3<f32>(arg_1.b, 597f, 1802f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.b, 975f, arg_1.c.d))))))));
    global0 = array<vec2<bool>, 26>();
    let var_1 = Struct_2(Struct_1(arg_1.c.a, arg_1.c.b, _wgslsmith_sub_vec2_i32(-arg_1.c.c, firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(2147483647i, arg_1.c.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + var_0.x), arg_1.b, global1[_wgslsmith_index_u32(4294967295u, 15u)])), reverseBits(~arg_1.c.e)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.b)) + 748f), max(_wgslsmith_add_vec3_i32(-firstLeadingBit(arg_1.c.a), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), arg_1.c.c), 1i, u_input.c << (1u % 32u))), -_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 30063i, 2147483647i), arg_1.c.a) & arg_1.c.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.x)))));
    return func_4(var_1.a.e.x, ~vec4<i32>(-firstLeadingBit(-1i), -11414i, _wgslsmith_sub_i32(~arg_1.c.a.x, -2590i), reverseBits(1i))).c;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> i32 {
    var var_0 = 0u;
    let var_1 = arg_0.e.wzx;
    global2 = array<Struct_4, 22>();
    var var_2 = arg_0;
    var_0 = _wgslsmith_sub_u32(arg_1, firstLeadingBit(_wgslsmith_sub_u32(select(var_2.e.x, _wgslsmith_dot_vec3_u32(arg_0.e.yyy, var_1), global1[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_add_u32(~u_input.b.x, 48723u))));
    return ~var_2.a.x;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<i32>) -> vec4<u32> {
    var var_0 = vec2<i32>(func_6(func_5(u_input.b.x, func_4(func_2(), ~vec4<i32>(u_input.c, u_input.c, 1i, -11536i))), 0u, vec4<u32>(~1u, _wgslsmith_mod_u32(0u, ~36243u), ~abs(u_input.b.x), u_input.b.x << (~u_input.b.x % 32u))), ~min(func_4(_wgslsmith_add_u32(0u, u_input.b.x), ~vec4<i32>(arg_3.x, 1i, arg_1.x, u_input.c)).c.c.x, 2147483647i));
    var var_1 = Struct_1(vec3<i32>(1i, var_0.x, ~(-arg_1.x)) | arg_1.ywy, false, _wgslsmith_add_vec2_i32(abs(vec2<i32>(11553i, var_0.x)) ^ arg_3, arg_1.zx), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0)))), ~(~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.b.x))) >> (~vec4<u32>(firstLeadingBit(1u), u_input.b.x, 19547u, select(32578u, 4294967295u, global1[_wgslsmith_index_u32(6293u, 15u)])) % vec4<u32>(32u)));
    var var_2 = Struct_3(_wgslsmith_clamp_u32(14793u, u_input.b.x, ~(~var_1.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(509f, _wgslsmith_f_op_f32(f32(-1f) * -1403f), -222f <= var_1.d)) - arg_0), func_5(_wgslsmith_sub_u32(var_1.e.x, ~var_1.e.x), func_4(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.e.x, 4294967295u), u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.e.x, 0u), vec2<u32>(var_1.e.x, var_1.e.x))), arg_1)));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 1u), 22u)];
    let var_4 = Struct_2(Struct_1(vec3<i32>(i32(-1i) * -32781i, 1i, reverseBits(0i)) << (~var_1.e.wwy % vec3<u32>(32u)), !(!global1[_wgslsmith_index_u32(1u, 15u)]), var_3.c.c, _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -170f))), var_2.c.e), _wgslsmith_f_op_f32(round(func_4(var_2.c.e.x, arg_1).b)), _wgslsmith_f_op_f32(floor(func_5(_wgslsmith_mult_u32(~1u, var_1.e.x), var_3.b).d)), var_3.b.c.a, var_1.d);
    return vec4<u32>(u_input.a.x, var_3.b.c.e.x, 4294967295u, 6946u >> (~(~var_3.b.a << ((4294967295u << (u_input.b.x % 32u)) % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 15>();
    var var_0 = Struct_4(630f, Struct_3(u_input.a.x, -955f, Struct_1((vec3<i32>(u_input.c, u_input.c, u_input.c) ^ vec3<i32>(u_input.c, -3930i, u_input.c)) ^ vec3<i32>(u_input.c, u_input.c, 0i), true, vec2<i32>(i32(-1i) * -2147483647i, u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -314f), firstLeadingBit(vec4<u32>(58542u, 72582u, 27131u, u_input.a.x)))), Struct_1(select(vec3<i32>(-u_input.c, 35661i & u_input.c, -7901i), vec3<i32>(u_input.c, countOneBits(1i), -2147483647i), global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), true, vec2<i32>(21512i, ~u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1863f, 592f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-342f * 773f) + _wgslsmith_f_op_f32(sign(-406f)))), ~(func_1(-618f, vec4<i32>(u_input.c, 1i, 1124i, 26557i), 561f, vec2<i32>(-1i, u_input.c)) & ~vec4<u32>(0u, 72139u, 6392u, 4294967295u))), func_5(1u, func_4(u_input.a.x, vec4<i32>(_wgslsmith_add_i32(u_input.c, u_input.c), 1i, _wgslsmith_mult_i32(u_input.c, -33231i), -1i))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.d.d);
    var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1005f)), 821f, true & global1[_wgslsmith_index_u32(u_input.b.x, 15u)]))))), var_0.b, var_0.d, Struct_1(var_0.c.a, all(vec4<bool>(!var_0.d.b, all(global0[_wgslsmith_index_u32(var_0.d.e.x, 26u)]), true, false | global1[_wgslsmith_index_u32(47994u, 15u)])), var_0.d.c, _wgslsmith_f_op_f32(f32(-1f) * -2461f), vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, reverseBits(26572u)), 39440u, ~4294967295u, var_0.c.e.x)));
    global2 = array<Struct_4, 22>();
    let var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~(~var_2.e), 1u, vec2<u32>(47808u, 4294967295u), _wgslsmith_add_vec3_u32(abs(max(vec3<u32>(4294967295u, 0u, 1u), var_0.c.e.zwz)), reverseBits(vec3<u32>(u_input.a.x, var_0.d.e.x, 89679u))) >> (firstTrailingBit(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x)) % vec3<u32>(32u)));
}

