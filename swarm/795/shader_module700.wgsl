struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_4,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(true, vec3<i32>(1i, 0i, -1i), -683f, vec2<bool>(true, true)), Struct_1(false, vec3<i32>(58062i, 25108i, -1i), -272f, vec2<bool>(false, true)));

var<private> global1: Struct_3 = Struct_3(i32(-2147483648), -746f, -888f, vec2<i32>(37460i, 0i), Struct_1(true, vec3<i32>(-1i, 51845i, -17339i), -793f, vec2<bool>(false, false)));

var<private> global2: vec2<u32> = vec2<u32>(31071u, 0u);

var<private> global3: Struct_3 = Struct_3(1i, -871f, -417f, vec2<i32>(-1971i, -1i), Struct_1(true, vec3<i32>(8684i, 23606i, 38028i), -1000f, vec2<bool>(false, false)));

var<private> global4: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(vec3<bool>(false, true, false), vec3<u32>(1u, 28555u, 0u), Struct_2(1u, false, Struct_1(true, vec3<i32>(-17651i, i32(-2147483648), 0i), 1337f, vec2<bool>(true, true))), Struct_4(vec3<i32>(-1i, -6593i, 2147483647i), vec3<u32>(24483u, 2453u, 1u), Struct_1(false, vec3<i32>(-24576i, -50356i, 28938i), -686f, vec2<bool>(false, true)), 2147483647i), vec2<i32>(2147483647i, 2231i)), Struct_5(vec3<bool>(true, true, false), vec3<u32>(38763u, 9635u, 10191u), Struct_2(1u, false, Struct_1(false, vec3<i32>(-1i, 0i, 0i), 925f, vec2<bool>(true, true))), Struct_4(vec3<i32>(0i, -1i, i32(-2147483648)), vec3<u32>(57118u, 0u, 1u), Struct_1(false, vec3<i32>(0i, -2513i, i32(-2147483648)), 766f, vec2<bool>(false, false)), -12741i), vec2<i32>(i32(-2147483648), -1i)), Struct_5(vec3<bool>(true, false, false), vec3<u32>(0u, 0u, 2850u), Struct_2(4294967295u, true, Struct_1(false, vec3<i32>(64685i, 1i, -26826i), -1887f, vec2<bool>(false, false))), Struct_4(vec3<i32>(34117i, -35292i, 38237i), vec3<u32>(0u, 1u, 0u), Struct_1(false, vec3<i32>(0i, 58530i, -8559i), 371f, vec2<bool>(false, false)), i32(-2147483648)), vec2<i32>(-13693i, 1i)), Struct_5(vec3<bool>(true, false, false), vec3<u32>(1u, 99314u, 0u), Struct_2(1u, false, Struct_1(false, vec3<i32>(27836i, 5615i, 26665i), -703f, vec2<bool>(true, true))), Struct_4(vec3<i32>(995i, 45000i, i32(-2147483648)), vec3<u32>(1u, 49247u, 0u), Struct_1(false, vec3<i32>(34267i, -1i, 2147483647i), 134f, vec2<bool>(true, true)), -1i), vec2<i32>(79960i, 0i)), Struct_5(vec3<bool>(false, true, true), vec3<u32>(2415u, 44040u, 4294967295u), Struct_2(4294967295u, false, Struct_1(false, vec3<i32>(-14655i, 34824i, 19700i), 2072f, vec2<bool>(true, true))), Struct_4(vec3<i32>(-31198i, -6414i, 0i), vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(true, vec3<i32>(0i, i32(-2147483648), 1737i), -693f, vec2<bool>(true, false)), -15735i), vec2<i32>(45459i, 0i)), Struct_5(vec3<bool>(false, true, false), vec3<u32>(91917u, 4294967295u, 4294967295u), Struct_2(0u, false, Struct_1(true, vec3<i32>(-35894i, 0i, 0i), -246f, vec2<bool>(false, false))), Struct_4(vec3<i32>(-62028i, 0i, 0i), vec3<u32>(49526u, 1u, 29242u), Struct_1(true, vec3<i32>(-2785i, 15094i, -2588i), -1556f, vec2<bool>(false, true)), 2147483647i), vec2<i32>(0i, 1i)), Struct_5(vec3<bool>(false, false, true), vec3<u32>(49441u, 51648u, 0u), Struct_2(0u, false, Struct_1(true, vec3<i32>(0i, 1i, -1i), 424f, vec2<bool>(true, false))), Struct_4(vec3<i32>(-50587i, 1i, -43701i), vec3<u32>(4294967295u, 0u, 1u), Struct_1(true, vec3<i32>(0i, i32(-2147483648), 47887i), 701f, vec2<bool>(false, false)), 2147483647i), vec2<i32>(i32(-2147483648), 1i)), Struct_5(vec3<bool>(false, false, true), vec3<u32>(24740u, 832u, 0u), Struct_2(0u, true, Struct_1(false, vec3<i32>(-13572i, 2147483647i, -17508i), 1000f, vec2<bool>(false, false))), Struct_4(vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<u32>(13213u, 16517u, 66447u), Struct_1(false, vec3<i32>(-6043i, 56342i, i32(-2147483648)), 1702f, vec2<bool>(true, true)), 2147483647i), vec2<i32>(0i, 1i)), Struct_5(vec3<bool>(false, true, true), vec3<u32>(37095u, 11981u, 25605u), Struct_2(0u, false, Struct_1(true, vec3<i32>(13007i, i32(-2147483648), -27349i), -2113f, vec2<bool>(true, false))), Struct_4(vec3<i32>(-1i, 7240i, -65579i), vec3<u32>(71508u, 36798u, 55246u), Struct_1(false, vec3<i32>(23088i, 1i, 4587i), 1478f, vec2<bool>(true, false)), 34833i), vec2<i32>(-55891i, -49137i)), Struct_5(vec3<bool>(true, true, false), vec3<u32>(41003u, 62827u, 1u), Struct_2(34172u, false, Struct_1(true, vec3<i32>(i32(-2147483648), 37395i, i32(-2147483648)), 1173f, vec2<bool>(true, true))), Struct_4(vec3<i32>(1i, 40123i, -10727i), vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(false, vec3<i32>(1i, 0i, -17331i), 1492f, vec2<bool>(true, false)), 0i), vec2<i32>(0i, 33114i)), Struct_5(vec3<bool>(true, true, true), vec3<u32>(28479u, 0u, 30817u), Struct_2(4294967295u, true, Struct_1(false, vec3<i32>(-43131i, 26030i, 21162i), 292f, vec2<bool>(false, true))), Struct_4(vec3<i32>(-18361i, -8774i, 0i), vec3<u32>(0u, 30128u, 1u), Struct_1(true, vec3<i32>(-1052i, 1i, 2147483647i), -1000f, vec2<bool>(true, false)), 0i), vec2<i32>(2147483647i, 2147483647i)), Struct_5(vec3<bool>(true, true, true), vec3<u32>(31814u, 4294967295u, 3489u), Struct_2(21461u, false, Struct_1(true, vec3<i32>(-5557i, 1i, 0i), -914f, vec2<bool>(true, false))), Struct_4(vec3<i32>(2627i, 1i, 11241i), vec3<u32>(6315u, 37461u, 1u), Struct_1(true, vec3<i32>(-17581i, -1i, i32(-2147483648)), -117f, vec2<bool>(false, true)), -1i), vec2<i32>(0i, i32(-2147483648))), Struct_5(vec3<bool>(false, true, true), vec3<u32>(34083u, 8353u, 16747u), Struct_2(56457u, false, Struct_1(true, vec3<i32>(46689i, 2147483647i, -1i), -1076f, vec2<bool>(false, false))), Struct_4(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<u32>(4294967295u, 25067u, 16899u), Struct_1(true, vec3<i32>(-1i, 44098i, -1i), -1392f, vec2<bool>(false, true)), -31460i), vec2<i32>(1i, -34363i)), Struct_5(vec3<bool>(true, true, false), vec3<u32>(29397u, 1u, 4294967295u), Struct_2(1u, true, Struct_1(true, vec3<i32>(2147483647i, -31473i, 1i), -863f, vec2<bool>(false, false))), Struct_4(vec3<i32>(-22024i, 47274i, 6190i), vec3<u32>(1u, 63236u, 47020u), Struct_1(true, vec3<i32>(2147483647i, 40325i, 0i), 857f, vec2<bool>(false, false)), -1i), vec2<i32>(1i, 0i)), Struct_5(vec3<bool>(false, false, true), vec3<u32>(837u, 75784u, 4294967295u), Struct_2(0u, false, Struct_1(true, vec3<i32>(1i, 16724i, i32(-2147483648)), 286f, vec2<bool>(true, true))), Struct_4(vec3<i32>(i32(-2147483648), 2147483647i, 54011i), vec3<u32>(0u, 0u, 62860u), Struct_1(false, vec3<i32>(0i, 42976i, -23188i), 713f, vec2<bool>(true, true)), 0i), vec2<i32>(7808i, 1i)), Struct_5(vec3<bool>(true, true, true), vec3<u32>(23393u, 1u, 4294967295u), Struct_2(9542u, true, Struct_1(false, vec3<i32>(-1i, -55470i, -6201i), -2259f, vec2<bool>(false, false))), Struct_4(vec3<i32>(i32(-2147483648), 0i, -29556i), vec3<u32>(4294967295u, 793u, 17473u), Struct_1(false, vec3<i32>(32134i, 57241i, 16519i), -277f, vec2<bool>(true, false)), -28773i), vec2<i32>(0i, 0i)), Struct_5(vec3<bool>(true, true, true), vec3<u32>(1u, 1u, 1u), Struct_2(17532u, false, Struct_1(true, vec3<i32>(1i, -1640i, 0i), 1176f, vec2<bool>(true, true))), Struct_4(vec3<i32>(11233i, i32(-2147483648), -4058i), vec3<u32>(29774u, 24495u, 14940u), Struct_1(false, vec3<i32>(10547i, i32(-2147483648), 2147483647i), 2085f, vec2<bool>(true, true)), -11458i), vec2<i32>(i32(-2147483648), 24385i)), Struct_5(vec3<bool>(true, false, false), vec3<u32>(1u, 0u, 12043u), Struct_2(53770u, false, Struct_1(false, vec3<i32>(34848i, -33685i, 2147483647i), 688f, vec2<bool>(false, true))), Struct_4(vec3<i32>(-4564i, 13172i, 4066i), vec3<u32>(4294967295u, 38460u, 4294967295u), Struct_1(true, vec3<i32>(-1i, 1i, -1i), -238f, vec2<bool>(false, false)), 22985i), vec2<i32>(16409i, 0i)), Struct_5(vec3<bool>(true, false, true), vec3<u32>(52097u, 12156u, 45676u), Struct_2(81599u, true, Struct_1(true, vec3<i32>(-1i, 0i, 25249i), -330f, vec2<bool>(false, false))), Struct_4(vec3<i32>(16621i, -1088i, 4929i), vec3<u32>(0u, 48408u, 50582u), Struct_1(true, vec3<i32>(25961i, -1i, 0i), -1602f, vec2<bool>(false, false)), 0i), vec2<i32>(-14154i, -1i)), Struct_5(vec3<bool>(true, false, false), vec3<u32>(0u, 4294967295u, 0u), Struct_2(4294967295u, false, Struct_1(false, vec3<i32>(0i, 1i, 2147483647i), 958f, vec2<bool>(true, true))), Struct_4(vec3<i32>(0i, 34366i, i32(-2147483648)), vec3<u32>(87183u, 0u, 34007u), Struct_1(true, vec3<i32>(4065i, i32(-2147483648), i32(-2147483648)), -312f, vec2<bool>(false, true)), 0i), vec2<i32>(-31779i, 1i)), Struct_5(vec3<bool>(false, false, true), vec3<u32>(67783u, 37116u, 24464u), Struct_2(4181u, true, Struct_1(true, vec3<i32>(i32(-2147483648), -12940i, i32(-2147483648)), 1472f, vec2<bool>(true, false))), Struct_4(vec3<i32>(10287i, -11564i, -1i), vec3<u32>(0u, 7923u, 0u), Struct_1(true, vec3<i32>(2147483647i, 14226i, 2147483647i), 384f, vec2<bool>(true, true)), -49407i), vec2<i32>(i32(-2147483648), 39789i)), Struct_5(vec3<bool>(false, true, true), vec3<u32>(48219u, 1u, 6118u), Struct_2(67532u, false, Struct_1(false, vec3<i32>(2147483647i, -14576i, -1138i), 714f, vec2<bool>(true, false))), Struct_4(vec3<i32>(i32(-2147483648), 2147483647i, 32007i), vec3<u32>(15943u, 1u, 0u), Struct_1(false, vec3<i32>(1i, -18848i, -1i), 369f, vec2<bool>(false, false)), i32(-2147483648)), vec2<i32>(0i, -27578i)), Struct_5(vec3<bool>(true, false, true), vec3<u32>(41747u, 50853u, 43464u), Struct_2(1u, true, Struct_1(false, vec3<i32>(1i, -12770i, 2147483647i), 1632f, vec2<bool>(false, true))), Struct_4(vec3<i32>(30490i, 0i, 2147483647i), vec3<u32>(26400u, 54494u, 50437u), Struct_1(true, vec3<i32>(0i, i32(-2147483648), -28269i), -1542f, vec2<bool>(true, true)), i32(-2147483648)), vec2<i32>(16720i, -1i)), Struct_5(vec3<bool>(false, false, false), vec3<u32>(23366u, 4294967295u, 70088u), Struct_2(4294967295u, false, Struct_1(true, vec3<i32>(-3374i, i32(-2147483648), -2541i), 672f, vec2<bool>(true, false))), Struct_4(vec3<i32>(-1i, 779i, i32(-2147483648)), vec3<u32>(4294967295u, 824u, 4294967295u), Struct_1(false, vec3<i32>(-7566i, -60404i, 36108i), 1522f, vec2<bool>(true, true)), 1i), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_5(vec3<bool>(true, true, false), vec3<u32>(0u, 0u, 0u), Struct_2(100573u, false, Struct_1(true, vec3<i32>(-1i, 0i, 2147483647i), 459f, vec2<bool>(true, false))), Struct_4(vec3<i32>(0i, -1i, -10169i), vec3<u32>(4294967295u, 86183u, 0u), Struct_1(false, vec3<i32>(i32(-2147483648), 2147483647i, 13860i), -1324f, vec2<bool>(false, true)), -12318i), vec2<i32>(22236i, -6535i)), Struct_5(vec3<bool>(false, false, true), vec3<u32>(0u, 4294967295u, 1u), Struct_2(14972u, false, Struct_1(false, vec3<i32>(-1808i, 1i, -19519i), -775f, vec2<bool>(true, false))), Struct_4(vec3<i32>(2147483647i, i32(-2147483648), 60717i), vec3<u32>(0u, 132355u, 27882u), Struct_1(false, vec3<i32>(2147483647i, 0i, 59265i), -2329f, vec2<bool>(false, true)), -9740i), vec2<i32>(2147483647i, 16923i)), Struct_5(vec3<bool>(false, false, true), vec3<u32>(65843u, 1u, 24862u), Struct_2(4294967295u, false, Struct_1(true, vec3<i32>(i32(-2147483648), 44826i, 8202i), 1242f, vec2<bool>(true, true))), Struct_4(vec3<i32>(-18838i, 2147483647i, 1i), vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(false, vec3<i32>(i32(-2147483648), 0i, 56299i), 435f, vec2<bool>(true, true)), 2147483647i), vec2<i32>(i32(-2147483648), 5416i)), Struct_5(vec3<bool>(true, true, true), vec3<u32>(3558u, 1u, 29857u), Struct_2(57226u, false, Struct_1(false, vec3<i32>(i32(-2147483648), -30018i, -39952i), -1395f, vec2<bool>(true, false))), Struct_4(vec3<i32>(-25156i, 26934i, -8547i), vec3<u32>(0u, 85937u, 20119u), Struct_1(false, vec3<i32>(-13413i, i32(-2147483648), -40253i), -652f, vec2<bool>(true, false)), 0i), vec2<i32>(1i, 7046i)), Struct_5(vec3<bool>(true, false, false), vec3<u32>(0u, 0u, 0u), Struct_2(55654u, false, Struct_1(true, vec3<i32>(34885i, -30926i, 0i), 477f, vec2<bool>(false, true))), Struct_4(vec3<i32>(40997i, 49894i, i32(-2147483648)), vec3<u32>(4294967295u, 22648u, 0u), Struct_1(true, vec3<i32>(-2180i, 0i, 40249i), 386f, vec2<bool>(false, false)), 4662i), vec2<i32>(i32(-2147483648), 10441i)), Struct_5(vec3<bool>(false, false, true), vec3<u32>(0u, 5112u, 1u), Struct_2(69129u, true, Struct_1(true, vec3<i32>(-62483i, -17085i, i32(-2147483648)), -1410f, vec2<bool>(true, true))), Struct_4(vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<u32>(1u, 12420u, 1u), Struct_1(true, vec3<i32>(31229i, -46614i, 0i), 102f, vec2<bool>(true, true)), 2147483647i), vec2<i32>(1i, 17970i)), Struct_5(vec3<bool>(false, true, true), vec3<u32>(4294967295u, 1u, 0u), Struct_2(63839u, false, Struct_1(false, vec3<i32>(4839i, 30004i, i32(-2147483648)), 1497f, vec2<bool>(true, false))), Struct_4(vec3<i32>(0i, -21738i, 0i), vec3<u32>(28367u, 47815u, 0u), Struct_1(false, vec3<i32>(1i, -1i, 61370i), -1876f, vec2<bool>(true, true)), -2626i), vec2<i32>(-1i, 1i)), Struct_5(vec3<bool>(true, true, false), vec3<u32>(11478u, 70544u, 7794u), Struct_2(0u, true, Struct_1(false, vec3<i32>(-1i, -26602i, 2147483647i), 1658f, vec2<bool>(false, false))), Struct_4(vec3<i32>(2147483647i, 9467i, 2147483647i), vec3<u32>(1u, 1u, 1u), Struct_1(false, vec3<i32>(-53809i, 0i, -1i), -1741f, vec2<bool>(true, true)), 1i), vec2<i32>(-1i, -1i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec2<bool> {
    var var_0 = Struct_4(-(abs(vec3<i32>(-18050i, global3.d.x, 1i)) >> (firstLeadingBit(select(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(global2.x, u_input.a, u_input.a), vec3<bool>(false, global3.e.d.x, false))) % vec3<u32>(32u))), ~(~(~(vec3<u32>(0u, 25150u, u_input.a) << (vec3<u32>(global2.x, 15847u, global2.x) % vec3<u32>(32u))))), global1.e, global1.d.x);
    var var_1 = _wgslsmith_dot_vec4_i32(countOneBits(select(vec4<i32>(1i, 1i, abs(16904i), 73151i), countOneBits(vec4<i32>(global1.d.x, global1.e.b.x, -2147483647i, global1.a)), !select(global3.e.d.x, global1.e.a, global3.e.d.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d, ~34293i, 1i, select(var_0.a.x, -31548i, true)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-32773i, -33848i, global3.e.b.x, 2147483647i), vec4<i32>(0i, -1i, 2147483647i, global3.e.b.x)), vec4<i32>(global3.a, 1i, var_0.a.x, var_0.a.x))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.b.x, 14033i, 1i, global1.a & global1.d.x), select(_wgslsmith_mod_vec4_i32(vec4<i32>(global3.d.x, var_0.c.b.x, global1.e.b.x, -1i), vec4<i32>(-913i, -47235i, -25318i, global3.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global3.e.b.x, global3.a, global1.d.x), vec4<i32>(global3.a, global3.e.b.x, -17144i, global1.e.b.x)), vec4<bool>(global1.e.a, true, global3.e.a, true))));
    var var_2 = vec3<u32>(global2.x, 0u, abs(u_input.a));
    let var_3 = all(vec2<bool>(arg_1, var_0.c.c > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.c)))));
    var_1 = _wgslsmith_sub_i32(global3.a, firstLeadingBit(_wgslsmith_mod_i32(countOneBits(5447i), _wgslsmith_dot_vec2_i32(var_0.c.b.yy, vec2<i32>(-2147483647i, 1i)) & -7307i)));
    return vec2<bool>(true, true);
}

fn func_2() -> vec2<i32> {
    var var_0 = select(select(global1.e.d, select(select(func_3(global3.e.c, global1.e.d.x), global1.e.d, true), vec2<bool>(any(vec2<bool>(true, true)), false), vec2<bool>(func_3(global1.e.c, global3.e.d.x).x, all(vec3<bool>(true, true, true)))), global3.e.d), global3.e.d, global3.e.d.x);
    var var_1 = vec2<bool>(global1.e.a, true);
    var_0 = vec2<bool>(global1.e.c < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 228f) * global3.c)), any(global1.e.d));
    let var_2 = ~_wgslsmith_add_i32(-54205i, reverseBits(~3500i)) & -_wgslsmith_mod_i32(1i, -max(global3.a, global3.a));
    var var_3 = 1i ^ -(~(~_wgslsmith_dot_vec3_i32(global3.e.b, vec3<i32>(2147483647i, 18985i, 0i))));
    return global3.d;
}

fn func_4(arg_0: vec2<i32>) -> Struct_2 {
    global4 = array<Struct_5, 32>();
    return Struct_2(global2.x, global1.e.d.x, Struct_1(!all(select(vec3<bool>(true, true, global3.e.d.x), vec3<bool>(false, global3.e.a, global1.e.d.x), vec3<bool>(false, true, global1.e.d.x))), _wgslsmith_mod_vec3_i32(global3.e.b, global3.e.b), _wgslsmith_f_op_f32(global1.c - -755f), global1.e.d));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec2<f32>) -> bool {
    global0 = array<Struct_1, 2>();
    var var_0 = vec2<bool>(global3.e.a, arg_0.x);
    let var_1 = func_4(select(global1.d, func_2(), global1.e.d));
    global0 = array<Struct_1, 2>();
    global2 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_2, (arg_2 ^ arg_2) >> (vec2<u32>(u_input.a, arg_2.x) % vec2<u32>(32u))), max(max(_wgslsmith_sub_vec2_u32(arg_2, arg_2), vec2<u32>(u_input.a, 1u)), reverseBits(vec2<u32>(global2.x, 1u))), vec2<u32>(u_input.a, countOneBits(~arg_1))), (vec2<u32>(countOneBits(1u), var_1.a) | _wgslsmith_add_vec2_u32(abs(arg_2), ~arg_2)) << (~((arg_2 ^ arg_2) << (arg_2 % vec2<u32>(32u))) % vec2<u32>(32u)));
    return any(select(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, arg_0.x), arg_0, global1.e.d.x), true), arg_0, vec4<bool>(func_4(vec2<i32>(global1.e.b.x, global1.e.b.x)).b, !(!global3.e.d.x), all(vec3<bool>(var_1.b, true, global1.e.a)), var_0.x || true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = select(!select(vec3<bool>(global1.e.a, global3.e.d.x, true), vec3<bool>(global3.e.a, false, all(vec4<bool>(true, global3.e.a, global1.e.d.x, true))), global1.e.a), !vec3<bool>(func_1(!vec4<bool>(global1.e.a, false, global1.e.d.x, false), u_input.a, vec2<u32>(4294967295u, u_input.a), vec2<f32>(637f, global3.c)), false, !select(true, global3.e.a, false)), select(vec3<bool>(global3.e.d.x, ~global2.x <= global2.x, global3.e.d.x & true), vec3<bool>(global1.e.a, (1613u ^ global2.x) < 4294967295u, global3.e.a), select(!select(vec3<bool>(false, global1.e.d.x, global3.e.a), vec3<bool>(global1.e.a, global1.e.a, false), vec3<bool>(true, false, false)), select(!vec3<bool>(global3.e.a, true, global1.e.a), vec3<bool>(global1.e.d.x, global1.e.d.x, true), vec3<bool>(global1.e.d.x, false, true)), select(vec3<bool>(global1.e.a, false, global1.e.d.x), select(vec3<bool>(false, global1.e.d.x, global1.e.a), vec3<bool>(true, true, false), vec3<bool>(global1.e.a, global3.e.d.x, true)), true))));
    global1 = Struct_3(~5125i, _wgslsmith_f_op_f32(-1f), 391f, vec2<i32>(_wgslsmith_clamp_i32(17850i, 47095i, -8626i), ~(~global1.a >> (global2.x % 32u))), Struct_1(global1.e.d.x, global1.e.b, func_4(global3.e.b.zx).c.c, !select(vec2<bool>(false, global1.e.d.x), func_3(global3.b, true), true)));
    let var_2 = u_input.a;
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, var_2), vec2<u32>(reverseBits(27063u), ~1u)), select(var_2, ~(~var_2), 3426i == ~global3.e.b.x)), var_2), 32u)];
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_5 = var_3.b.x;
    var_5 = 1u;
    global3 = Struct_3(var_3.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1304f), _wgslsmith_div_f32(-149f, global3.e.c)))) * _wgslsmith_f_op_f32(-var_3.d.c.c)), select(vec2<i32>(42479i, 2147483647i), -(countOneBits(var_3.e) & func_4(global1.d).c.b.zx), var_1.xy), global0[_wgslsmith_index_u32(4294967295u, 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(-47322i, global1.e.b.x, var_3.e.x, -2147483647i), vec4<i32>(27454i, global1.a, -19262i, -1i)) << (((vec4<u32>(14744u, global2.x, 27424u, 1u) & vec4<u32>(var_2, var_3.b.x, 43726u, u_input.a)) ^ firstLeadingBit(vec4<u32>(var_3.c.a, 4294967295u, var_2, var_2))) % vec4<u32>(32u))), ~(vec2<i32>(~global3.e.b.x, ~global3.d.x) | _wgslsmith_clamp_vec2_i32(~global3.e.b.yz, -var_3.d.c.b.yz, vec2<i32>(global1.d.x, global1.a))), ~0u, _wgslsmith_div_vec4_i32(select(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(var_3.e.x, -2147483647i, 0i, var_3.d.c.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 25358i, global1.e.b.x, var_3.c.c.b.x), vec4<i32>(global3.e.b.x, global3.e.b.x, -17316i, 2147483647i))), countOneBits(vec4<i32>(59535i, global1.a, var_3.e.x, var_3.d.d)), var_3.d.c.a), select(vec4<i32>(0i, var_3.e.x, 0i, 25478i), vec4<i32>(-2147483647i, var_3.d.d, 61060i, 1i), vec4<bool>(false, global3.e.a, false, global1.e.d.x)) | ((vec4<i32>(global3.a, 2147483647i, 1i, -2147483647i) ^ vec4<i32>(global1.e.b.x, -1i, var_3.c.c.b.x, global3.a)) & (vec4<i32>(var_3.e.x, 0i, var_3.c.c.b.x, var_3.c.c.b.x) << (vec4<u32>(var_2, u_input.a, 1u, var_2) % vec4<u32>(32u))))), 4294967295u ^ _wgslsmith_mult_u32(_wgslsmith_div_u32(~var_3.b.x, var_3.b.x), _wgslsmith_dot_vec2_u32(~var_3.d.b.zz, abs(vec2<u32>(0u, u_input.a)))));
}

