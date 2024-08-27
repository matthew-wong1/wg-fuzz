struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec2<f32>(414f, -1000f), Struct_3(true, false, Struct_1(vec2<u32>(2043u, 26386u), vec4<i32>(2147483647i, -30614i, 0i, 2147483647i), false, vec4<i32>(-1i, i32(-2147483648), 30856i, 24573i)), Struct_2(Struct_1(vec2<u32>(0u, 26881u), vec4<i32>(-5034i, 14554i, 1i, -21292i), true, vec4<i32>(-350i, 2147483647i, 0i, -1i)), vec4<u32>(1u, 1u, 33663u, 7567u), -389f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(16488i, -30576i, 2147483647i, -38931i), false, vec4<i32>(2147483647i, 19958i, 1i, 1i)), vec4<u32>(1u, 4119u, 38454u, 130942u), 112f), Struct_3(false, false, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(i32(-2147483648), -46486i, -1i, -33935i), false, vec4<i32>(i32(-2147483648), 1i, -55730i, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(4294967295u, 2862u), vec4<i32>(-1i, 2147483647i, 2147483647i, -14570i), true, vec4<i32>(-35048i, -1i, -22214i, 2147483647i)), vec4<u32>(50428u, 0u, 4294967295u, 35179u), -1273f))), Struct_4(vec2<f32>(1079f, 1530f), Struct_3(false, true, Struct_1(vec2<u32>(1u, 50505u), vec4<i32>(-12747i, 6857i, 28387i, -1i), true, vec4<i32>(i32(-2147483648), 12769i, -32025i, -21519i)), Struct_2(Struct_1(vec2<u32>(35259u, 0u), vec4<i32>(-58073i, -1i, 80786i, 0i), true, vec4<i32>(30942i, 0i, 1i, 1i)), vec4<u32>(0u, 30986u, 1u, 48170u), 400f)), Struct_2(Struct_1(vec2<u32>(39403u, 1u), vec4<i32>(11521i, 1i, 768i, 15289i), false, vec4<i32>(-32021i, 2147483647i, 2147483647i, -18570i)), vec4<u32>(4294967295u, 4294967295u, 28776u, 6461u), 550f), Struct_3(true, true, Struct_1(vec2<u32>(1u, 0u), vec4<i32>(-1i, 1i, -19445i, -2514i), true, vec4<i32>(17554i, i32(-2147483648), 24622i, 1i)), Struct_2(Struct_1(vec2<u32>(3134u, 27551u), vec4<i32>(1i, 0i, 35661i, -1i), false, vec4<i32>(-12859i, 2147483647i, -2213i, 30821i)), vec4<u32>(1325u, 838u, 49266u, 71151u), 1004f))), Struct_4(vec2<f32>(-776f, -1044f), Struct_3(false, false, Struct_1(vec2<u32>(0u, 36282u), vec4<i32>(1i, 2147483647i, 3339i, 1i), false, vec4<i32>(2147483647i, 30578i, -42742i, -22078i)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(-3091i, 31794i, -60658i, -1i), true, vec4<i32>(2147483647i, i32(-2147483648), 45677i, i32(-2147483648))), vec4<u32>(4554u, 38157u, 94774u, 42788u), 881f)), Struct_2(Struct_1(vec2<u32>(43620u, 19534u), vec4<i32>(20652i, 0i, -15637i, 59997i), true, vec4<i32>(-93891i, 2147483647i, -3569i, 1i)), vec4<u32>(1u, 210u, 60997u, 4294967295u), 1315f), Struct_3(false, false, Struct_1(vec2<u32>(9221u, 54243u), vec4<i32>(-1i, 36791i, -46072i, 2147483647i), false, vec4<i32>(-17874i, -1i, 27713i, -40389i)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 1i), true, vec4<i32>(-1i, -1i, -1i, 1i)), vec4<u32>(0u, 60959u, 4294967295u, 1u), -1458f))), Struct_4(vec2<f32>(533f, -1444f), Struct_3(true, true, Struct_1(vec2<u32>(58064u, 1u), vec4<i32>(1i, 47789i, 22539i, 12814i), false, vec4<i32>(-36792i, -56200i, 1i, -1i)), Struct_2(Struct_1(vec2<u32>(26473u, 4294967295u), vec4<i32>(1i, 2147483647i, 1i, 1i), true, vec4<i32>(-40776i, 7052i, i32(-2147483648), -45507i)), vec4<u32>(0u, 0u, 4294967295u, 1u), -142f)), Struct_2(Struct_1(vec2<u32>(120883u, 23361u), vec4<i32>(i32(-2147483648), 1i, -2589i, -3575i), false, vec4<i32>(-6988i, i32(-2147483648), 2147483647i, -32890i)), vec4<u32>(1673u, 93875u, 36800u, 25430u), -104f), Struct_3(true, false, Struct_1(vec2<u32>(0u, 9352u), vec4<i32>(0i, 1i, -9649i, 8824i), true, vec4<i32>(i32(-2147483648), -1i, 17140i, 0i)), Struct_2(Struct_1(vec2<u32>(49830u, 4294967295u), vec4<i32>(i32(-2147483648), 3181i, 41952i, -1i), false, vec4<i32>(2147483647i, -47202i, 0i, -20141i)), vec4<u32>(1326u, 1u, 0u, 4294967295u), 129f))), Struct_4(vec2<f32>(-709f, 433f), Struct_3(false, true, Struct_1(vec2<u32>(4294967295u, 7619u), vec4<i32>(9116i, 1i, 2147483647i, i32(-2147483648)), false, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 45761u), vec4<i32>(-9082i, -1i, 28309i, i32(-2147483648)), false, vec4<i32>(1i, 0i, 3067i, -37015i)), vec4<u32>(0u, 0u, 0u, 29452u), -459f)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), vec4<i32>(897i, 0i, 15726i, 2147483647i), false, vec4<i32>(1i, -1i, 1i, i32(-2147483648))), vec4<u32>(0u, 0u, 30929u, 59005u), 397f), Struct_3(true, true, Struct_1(vec2<u32>(0u, 46012u), vec4<i32>(-4498i, 2147483647i, i32(-2147483648), -1i), true, vec4<i32>(3572i, i32(-2147483648), 36804i, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec4<i32>(-15899i, 23846i, 9146i, 54036i), false, vec4<i32>(1i, 0i, 26897i, 1i)), vec4<u32>(4294967295u, 11163u, 0u, 55579u), -1000f))), Struct_4(vec2<f32>(-722f, 2108f), Struct_3(false, false, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<i32>(44454i, -1i, 0i, -1i), false, vec4<i32>(42330i, 40657i, 2147483647i, 0i)), Struct_2(Struct_1(vec2<u32>(1u, 32287u), vec4<i32>(-10199i, -17064i, 1i, 64530i), true, vec4<i32>(i32(-2147483648), -1i, 0i, -50125i)), vec4<u32>(3838u, 96814u, 27916u, 0u), 865f)), Struct_2(Struct_1(vec2<u32>(0u, 4599u), vec4<i32>(-26401i, i32(-2147483648), -17064i, -69487i), false, vec4<i32>(26848i, 55724i, 21556i, 49320i)), vec4<u32>(21981u, 72825u, 0u, 2109u), 1320f), Struct_3(false, true, Struct_1(vec2<u32>(2886u, 4294967295u), vec4<i32>(8647i, -44297i, i32(-2147483648), 2147483647i), false, vec4<i32>(-12987i, 0i, 1i, 44568i)), Struct_2(Struct_1(vec2<u32>(35751u, 4294967295u), vec4<i32>(2147483647i, 1109i, i32(-2147483648), 61349i), true, vec4<i32>(1i, -1i, 1i, -25733i)), vec4<u32>(0u, 4294967295u, 33819u, 10173u), -379f))), Struct_4(vec2<f32>(372f, -759f), Struct_3(false, true, Struct_1(vec2<u32>(1u, 49164u), vec4<i32>(70194i, 0i, -16894i, 2147483647i), true, vec4<i32>(-1i, 1i, 26286i, 1125i)), Struct_2(Struct_1(vec2<u32>(57881u, 10542u), vec4<i32>(-1i, i32(-2147483648), 0i, -43579i), false, vec4<i32>(-4053i, -53447i, i32(-2147483648), -1i)), vec4<u32>(9492u, 0u, 4294967295u, 0u), -303f)), Struct_2(Struct_1(vec2<u32>(2711u, 4294967295u), vec4<i32>(-41490i, -21336i, 2147483647i, 1i), false, vec4<i32>(7413i, -15167i, 30362i, 1i)), vec4<u32>(25868u, 4294967295u, 4294967295u, 0u), 1144f), Struct_3(true, true, Struct_1(vec2<u32>(4294967295u, 19647u), vec4<i32>(38078i, -1i, 1i, i32(-2147483648)), true, vec4<i32>(1i, -39878i, 1i, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(66720u, 1u), vec4<i32>(5889i, 0i, 0i, 2147483647i), false, vec4<i32>(-1i, 1i, 2147483647i, 1i)), vec4<u32>(58213u, 92642u, 17176u, 31453u), 171f))), Struct_4(vec2<f32>(-1122f, -705f), Struct_3(true, true, Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(1i, -46171i, 12393i, 30763i), true, vec4<i32>(i32(-2147483648), 0i, -20862i, 1i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 3737u), vec4<i32>(0i, 1i, -1i, -1i), true, vec4<i32>(37236i, 1i, -1i, 1i)), vec4<u32>(28645u, 18637u, 4294967295u, 1u), -980f)), Struct_2(Struct_1(vec2<u32>(93346u, 10281u), vec4<i32>(2147483647i, 2147483647i, -9194i, 26918i), true, vec4<i32>(-1i, 18219i, 2147483647i, 2147483647i)), vec4<u32>(1u, 4294967295u, 45085u, 1u), 439f), Struct_3(true, true, Struct_1(vec2<u32>(8094u, 13017u), vec4<i32>(-1i, -1i, -215i, 23542i), false, vec4<i32>(0i, -3939i, -1i, 1i)), Struct_2(Struct_1(vec2<u32>(82290u, 1u), vec4<i32>(29352i, -9017i, 9524i, -29018i), false, vec4<i32>(10606i, 2147483647i, -12652i, 17026i)), vec4<u32>(41145u, 0u, 4294967295u, 1u), 681f))), Struct_4(vec2<f32>(-1191f, -150f), Struct_3(false, false, Struct_1(vec2<u32>(0u, 21155u), vec4<i32>(-71535i, 48548i, 34293i, -1i), true, vec4<i32>(-1i, 1i, 2147483647i, -1244i)), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec4<i32>(30157i, 1i, 2147483647i, 0i), false, vec4<i32>(21571i, 2147483647i, 1i, 0i)), vec4<u32>(1u, 1u, 16600u, 4294967295u), -1036f)), Struct_2(Struct_1(vec2<u32>(17006u, 0u), vec4<i32>(69679i, 7405i, -66082i, 1i), false, vec4<i32>(1i, 53348i, 1i, 47092i)), vec4<u32>(4294967295u, 51543u, 0u, 1u), -187f), Struct_3(false, false, Struct_1(vec2<u32>(4294967295u, 0u), vec4<i32>(1i, 7154i, 40359i, -44864i), false, vec4<i32>(-27876i, 0i, 0i, 2349i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 73273u), vec4<i32>(i32(-2147483648), 17007i, -21911i, 68430i), false, vec4<i32>(-1i, -16774i, -9097i, 47471i)), vec4<u32>(0u, 29154u, 28845u, 11619u), 647f))), Struct_4(vec2<f32>(-432f, -355f), Struct_3(true, false, Struct_1(vec2<u32>(35653u, 0u), vec4<i32>(0i, 24830i, 9158i, -12311i), true, vec4<i32>(0i, 31366i, -1i, 1i)), Struct_2(Struct_1(vec2<u32>(60216u, 486u), vec4<i32>(2147483647i, i32(-2147483648), -30758i, 4802i), false, vec4<i32>(2147483647i, 1i, 2147483647i, 75606i)), vec4<u32>(14125u, 4285u, 1u, 1u), 2071f)), Struct_2(Struct_1(vec2<u32>(14477u, 90566u), vec4<i32>(-57027i, 1i, -34405i, 3724i), false, vec4<i32>(0i, 2568i, -1i, 28244i)), vec4<u32>(14336u, 4294967295u, 19394u, 4294967295u), 986f), Struct_3(false, false, Struct_1(vec2<u32>(10009u, 1u), vec4<i32>(2147483647i, 0i, 4233i, -63614i), false, vec4<i32>(14319i, 20226i, -36921i, -15623i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 0i), false, vec4<i32>(-5645i, -1i, 37235i, 2147483647i)), vec4<u32>(45124u, 14010u, 1u, 4294967295u), -1870f))), Struct_4(vec2<f32>(-1546f, -1415f), Struct_3(true, false, Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(-1i, 46513i, i32(-2147483648), 1i), true, vec4<i32>(0i, i32(-2147483648), 1i, 2147483647i)), Struct_2(Struct_1(vec2<u32>(46296u, 0u), vec4<i32>(2147483647i, 36349i, -1i, i32(-2147483648)), true, vec4<i32>(-1i, -1i, 26249i, -46142i)), vec4<u32>(4986u, 0u, 4294967295u, 2316u), 1243f)), Struct_2(Struct_1(vec2<u32>(105621u, 4294967295u), vec4<i32>(1i, i32(-2147483648), -26422i, -17646i), true, vec4<i32>(-33934i, i32(-2147483648), i32(-2147483648), -8284i)), vec4<u32>(11776u, 42300u, 1u, 7777u), 1000f), Struct_3(false, false, Struct_1(vec2<u32>(1u, 23523u), vec4<i32>(1i, -4255i, 0i, 133i), true, vec4<i32>(-1i, 6114i, 15396i, 1i)), Struct_2(Struct_1(vec2<u32>(0u, 42397u), vec4<i32>(2147483647i, 24276i, 0i, 1i), true, vec4<i32>(-39804i, -15860i, 0i, -39171i)), vec4<u32>(1u, 1u, 59089u, 4294967295u), -172f))), Struct_4(vec2<f32>(-582f, 1000f), Struct_3(true, false, Struct_1(vec2<u32>(23630u, 4294967295u), vec4<i32>(25051i, -25351i, 11387i, -18911i), true, vec4<i32>(6458i, 20199i, -10116i, -1i)), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec4<i32>(0i, i32(-2147483648), -35185i, 1i), false, vec4<i32>(22417i, 11396i, -27603i, 10990i)), vec4<u32>(11897u, 4421u, 1u, 0u), 107f)), Struct_2(Struct_1(vec2<u32>(76827u, 0u), vec4<i32>(30448i, 1i, -7771i, 13748i), false, vec4<i32>(0i, -28579i, -24202i, -1i)), vec4<u32>(43493u, 29007u, 19766u, 1u), 395f), Struct_3(false, false, Struct_1(vec2<u32>(0u, 60189u), vec4<i32>(1i, i32(-2147483648), -63450i, 999i), true, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 29624i)), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec4<i32>(i32(-2147483648), 0i, 42874i, 25833i), true, vec4<i32>(-1i, -1i, 1i, i32(-2147483648))), vec4<u32>(5177u, 1u, 65534u, 24977u), -2631f))), Struct_4(vec2<f32>(-2582f, -253f), Struct_3(true, false, Struct_1(vec2<u32>(9894u, 55274u), vec4<i32>(0i, -1i, 0i, 38771i), false, vec4<i32>(-15201i, -100788i, -1466i, 19435i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 61316u), vec4<i32>(-53626i, -19703i, -1i, 0i), false, vec4<i32>(-35314i, 921i, -8399i, 17714i)), vec4<u32>(20452u, 53387u, 4294967295u, 70886u), 1165f)), Struct_2(Struct_1(vec2<u32>(64279u, 0u), vec4<i32>(-66943i, 24655i, -48301i, -62883i), false, vec4<i32>(35304i, 42055i, 0i, 0i)), vec4<u32>(4294967295u, 14741u, 104122u, 33209u), -993f), Struct_3(true, false, Struct_1(vec2<u32>(57074u, 0u), vec4<i32>(2147483647i, 21427i, 7086i, -1231i), false, vec4<i32>(-1i, 1i, -22834i, -1i)), Struct_2(Struct_1(vec2<u32>(1u, 78991u), vec4<i32>(i32(-2147483648), 1i, 1i, -70711i), true, vec4<i32>(-1i, 0i, 19158i, 12057i)), vec4<u32>(17772u, 0u, 44100u, 0u), -1016f))));

var<private> global1: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-320f, arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec4_f32(-arg_0));
    global0 = array<Struct_4, 13>();
    global1 = array<vec3<bool>, 6>();
    let var_1 = Struct_1(vec2<u32>(countOneBits(arg_1.a.x | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, 1u))), arg_1.a.x), vec4<i32>(arg_1.d.x, (_wgslsmith_sub_i32(arg_1.d.x, arg_1.b.x) >> (arg_1.a.x % 32u)) | _wgslsmith_mod_i32(select(-2147483647i, arg_1.b.x, true), -16129i), ~select(arg_1.d.x, -2147483647i >> (u_input.a.x % 32u), true), abs(arg_1.b.x)), arg_1.c, vec4<i32>(arg_1.b.x, -_wgslsmith_div_i32(2147483647i & arg_1.b.x, -arg_1.d.x), arg_1.d.x, -abs(firstLeadingBit(arg_1.b.x))));
    global1 = array<vec3<bool>, 6>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yw) - arg_0.xw);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: f32) -> vec2<bool> {
    global0 = array<Struct_4, 13>();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 13u)];
    var var_1 = reverseBits(~reverseBits(-abs(arg_1)));
    var_1 = select(2147483647i, select(50349i, _wgslsmith_div_i32(~2147483647i ^ arg_0.d.c.b.x, ~(-1i)), false && (_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.c.b.x, 1i), vec2<i32>(arg_1, arg_0.b.c.b.x)) < arg_1)), arg_0.b.a);
    global0 = array<Struct_4, 13>();
    return vec2<bool>(arg_0.c.a.c, var_0.c.a.c);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_3) -> bool {
    var var_0 = !func_4(Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(211f, 1469f, arg_3.d.c, 626f), arg_3.d.a)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(583f, -346f)))), Struct_3(!arg_1, true, arg_3.d.a, Struct_2(arg_3.d.a, u_input.a, -707f)), arg_3.d, arg_3), -77546i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.d.c))));
    var_0 = func_4(global0[_wgslsmith_index_u32(~max(abs(0u), 4093u), 13u)], -select(select(1i, 1i, true), reverseBits(-30492i), arg_1), arg_3.d.c);
    var var_1 = arg_3.d.a;
    return !all(select(!(!vec2<bool>(false, var_0.x)), !vec2<bool>(var_0.x, var_1.c), true));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(~arg_2.a, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, ~firstTrailingBit(arg_2.b.x), -1i, arg_2.b.x), _wgslsmith_clamp_vec4_i32(~arg_2.b, -vec4<i32>(2147483647i, -31505i, arg_2.d.x, 2147483647i), vec4<i32>(~arg_2.b.x, _wgslsmith_sub_i32(13597i, 2147483647i), arg_2.b.x & 1i, arg_2.d.x))), any(vec4<bool>((arg_2.c && true) | func_2(arg_2.d, false, vec3<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x), Struct_3(arg_2.c, arg_2.c, Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec4<i32>(1i, -1i, arg_2.d.x, -1i), true, vec4<i32>(2147483647i, arg_2.b.x, -43685i, 1i)), Struct_2(Struct_1(u_input.a.zw, vec4<i32>(-1i, 0i, arg_2.d.x, arg_2.b.x), true, arg_2.b), u_input.a, -1277f))), true, func_2(vec4<i32>(1i, 16498i, arg_2.b.x, arg_2.b.x), arg_2.c || true, ~vec3<u32>(1u, 0u, arg_2.a.x), Struct_3(arg_2.c, false, arg_2, Struct_2(Struct_1(arg_2.a, arg_2.b, arg_2.c, vec4<i32>(arg_2.b.x, arg_2.d.x, arg_2.d.x, arg_2.d.x)), vec4<u32>(u_input.a.x, 88248u, u_input.a.x, arg_1), arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -188f) == arg_0.x)), arg_2.b);
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_mod_i32(min(var_0.b.x, 25807i), var_0.d.x), _wgslsmith_dot_vec2_i32(abs(arg_2.d.xz), vec2<i32>(0i, arg_2.b.x)), -(~var_0.d.x)), max(var_0.d, -select(vec4<i32>(arg_2.d.x, var_0.d.x, -2147483647i, 23247i), vec4<i32>(15847i, var_0.b.x, -1i, -6754i), false))), var_0.b);
    let var_2 = _wgslsmith_f_op_f32(162f + _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1237f, _wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(trunc(arg_0.x))) - arg_0), arg_2)).x);
    let var_3 = -(max(firstTrailingBit(abs(var_1.www)), vec3<i32>(arg_2.d.x, 2147483647i, var_0.d.x) | ~var_1.xwy) << (~u_input.a.ywy % vec3<u32>(32u)));
    let var_4 = var_0.b.zzz << (~(~(~u_input.a.yww)) % vec3<u32>(32u));
    return _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(var_3.x) >> (~41237u % 32u), arg_2.d.x, -_wgslsmith_mod_i32(42068i, -1908i), select(abs(11445i), 14442i, false)), _wgslsmith_add_vec4_i32(var_0.d, vec4<i32>(var_0.d.x, var_1.x, var_0.d.x, arg_2.d.x) >> (~vec4<u32>(1u, 4294967295u, 1u, arg_2.a.x) % vec4<u32>(32u)))) & vec4<i32>(_wgslsmith_mod_i32(arg_2.b.x, -15647i), ~var_4.x, 2147483647i, arg_2.d.x & (-var_4.x ^ countOneBits(var_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(~vec2<u32>(select(u_input.a.x, 1u, false), u_input.a.x), firstLeadingBit(~vec4<i32>(0i, -1i, -1i, 1i) ^ func_1(vec4<f32>(-513f, 152f, -781f, -627f), 437u, Struct_1(u_input.a.yw, vec4<i32>(-1i, 1i, 1i, 2147483647i), true, vec4<i32>(-2147483647i, 64844i, -50067i, 16791i)))), false && select(true, true, true), max(_wgslsmith_mod_vec4_i32(vec4<i32>(-1034i, 2147483647i, 17465i, 0i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-11550i, 0i, -1i, 1i), vec4<i32>(-58661i, -5745i, 1i, 0i)) ^ firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, -25601i, 2147483647i)))), ~u_input.a, _wgslsmith_div_f32(624f, _wgslsmith_f_op_f32(-140f - _wgslsmith_f_op_f32(-247f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 247f, 527f))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-234f, var_0.c, var_0.c), vec3<f32>(852f, var_0.c, var_0.c))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(1279f, var_0.c, var_0.c), vec3<f32>(811f, 163f, var_0.c))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(593f, -536f, var_0.c), vec3<f32>(-445f, var_0.c, var_0.c)))))));
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(~var_0.a.b.x) << (var_0.a.a.x % 32u), (_wgslsmith_dot_vec4_i32(var_0.a.d, vec4<i32>(2147483647i, var_0.a.b.x, 2147483647i, -3379i)) & ~0i) >> (var_0.a.a.x % 32u)), var_0.a.d.x, -var_0.a.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

