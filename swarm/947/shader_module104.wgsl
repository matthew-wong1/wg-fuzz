struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_1(37199u, vec3<i32>(-3613i, 15272i, 5350i), vec2<i32>(0i, -100932i)), Struct_2(Struct_1(1u, vec3<i32>(24703i, -3794i, -35079i), vec2<i32>(-68577i, 66493i)), 22529u, vec3<f32>(172f, 519f, 1935f), vec4<i32>(2147483647i, 0i, 0i, 23725i)), Struct_2(Struct_1(37548u, vec3<i32>(0i, i32(-2147483648), 63401i), vec2<i32>(42153i, -60577i)), 52491u, vec3<f32>(-978f, 242f, 1000f), vec4<i32>(14688i, i32(-2147483648), -1i, i32(-2147483648))), -68641i, Struct_2(Struct_1(38785u, vec3<i32>(0i, 10132i, i32(-2147483648)), vec2<i32>(-1i, -1i)), 0u, vec3<f32>(-812f, 668f, -500f), vec4<i32>(24888i, 2147483647i, 2147483647i, -30599i))), Struct_3(Struct_1(1u, vec3<i32>(-16249i, -1i, i32(-2147483648)), vec2<i32>(1i, 1i)), Struct_2(Struct_1(134859u, vec3<i32>(-1i, 0i, -31683i), vec2<i32>(77845i, 1068i)), 60844u, vec3<f32>(-817f, -371f, -847f), vec4<i32>(1i, 0i, i32(-2147483648), 1167i)), Struct_2(Struct_1(0u, vec3<i32>(-55183i, i32(-2147483648), -1i), vec2<i32>(1i, 0i)), 74657u, vec3<f32>(540f, -1610f, 590f), vec4<i32>(61302i, 476i, -1i, 81403i)), i32(-2147483648), Struct_2(Struct_1(48427u, vec3<i32>(0i, i32(-2147483648), 38974i), vec2<i32>(-26257i, -32466i)), 17318u, vec3<f32>(-461f, 1605f, -2803f), vec4<i32>(-70793i, -4492i, 1i, 36519i))), Struct_3(Struct_1(1u, vec3<i32>(46178i, 0i, 2147483647i), vec2<i32>(0i, -1i)), Struct_2(Struct_1(23004u, vec3<i32>(-17723i, -23077i, 29397i), vec2<i32>(72770i, i32(-2147483648))), 0u, vec3<f32>(-260f, -1272f, -1648f), vec4<i32>(-15590i, 21953i, 12546i, 0i)), Struct_2(Struct_1(7547u, vec3<i32>(2147483647i, -1i, -1i), vec2<i32>(9944i, 1200i)), 1u, vec3<f32>(1957f, -1665f, 1736f), vec4<i32>(37843i, 1i, 2147483647i, 0i)), 1i, Struct_2(Struct_1(15271u, vec3<i32>(0i, -21949i, -1i), vec2<i32>(-19118i, 5373i)), 6749u, vec3<f32>(484f, 2194f, -975f), vec4<i32>(-21302i, i32(-2147483648), i32(-2147483648), 36826i))), Struct_3(Struct_1(1u, vec3<i32>(18452i, 16415i, 2147483647i), vec2<i32>(3238i, 2147483647i)), Struct_2(Struct_1(94968u, vec3<i32>(5821i, -15259i, 0i), vec2<i32>(-1i, 5005i)), 21372u, vec3<f32>(-1187f, 817f, 508f), vec4<i32>(2147483647i, 0i, -4240i, -1i)), Struct_2(Struct_1(4294967295u, vec3<i32>(-17553i, 15697i, i32(-2147483648)), vec2<i32>(2147483647i, 1i)), 41522u, vec3<f32>(1000f, 498f, 1000f), vec4<i32>(43624i, -3142i, 42223i, -17622i)), 24617i, Struct_2(Struct_1(71711u, vec3<i32>(-14513i, 23494i, -29232i), vec2<i32>(2147483647i, 1i)), 11820u, vec3<f32>(1009f, 1145f, 845f), vec4<i32>(2147483647i, 9539i, 0i, 449i))), Struct_3(Struct_1(1u, vec3<i32>(-51026i, 4344i, 1i), vec2<i32>(i32(-2147483648), -14273i)), Struct_2(Struct_1(35245u, vec3<i32>(-14840i, 1i, -40434i), vec2<i32>(2147483647i, -3172i)), 4294967295u, vec3<f32>(-1549f, 264f, 1719f), vec4<i32>(i32(-2147483648), -4501i, -1i, -36107i)), Struct_2(Struct_1(0u, vec3<i32>(-2589i, -1i, i32(-2147483648)), vec2<i32>(-1i, -15220i)), 0u, vec3<f32>(115f, 238f, 889f), vec4<i32>(1i, 60443i, 0i, 16771i)), -3974i, Struct_2(Struct_1(4294967295u, vec3<i32>(-15492i, 60965i, 12817i), vec2<i32>(-13171i, 29686i)), 1u, vec3<f32>(1000f, 1003f, 1000f), vec4<i32>(53333i, 1i, 0i, 46810i))), Struct_3(Struct_1(1u, vec3<i32>(22413i, 2147483647i, 4000i), vec2<i32>(i32(-2147483648), 7208i)), Struct_2(Struct_1(1u, vec3<i32>(2147483647i, -1i, 6498i), vec2<i32>(0i, 1i)), 1u, vec3<f32>(1000f, 877f, -2350f), vec4<i32>(1i, 0i, -1i, 0i)), Struct_2(Struct_1(47088u, vec3<i32>(-23832i, -36058i, -13536i), vec2<i32>(14029i, 34168i)), 1u, vec3<f32>(686f, 809f, 636f), vec4<i32>(2147483647i, 1i, 1i, 14714i)), -1i, Struct_2(Struct_1(0u, vec3<i32>(0i, 15940i, 11281i), vec2<i32>(-26723i, 2147483647i)), 78295u, vec3<f32>(1000f, -376f, 807f), vec4<i32>(4740i, 30398i, 1i, 0i))), Struct_3(Struct_1(0u, vec3<i32>(-14449i, -1i, -1i), vec2<i32>(-99928i, -1i)), Struct_2(Struct_1(14769u, vec3<i32>(0i, -1i, -28515i), vec2<i32>(2147483647i, 14484i)), 98730u, vec3<f32>(555f, -911f, -888f), vec4<i32>(i32(-2147483648), -1i, 0i, 1i)), Struct_2(Struct_1(0u, vec3<i32>(0i, 0i, -28299i), vec2<i32>(0i, -1i)), 1u, vec3<f32>(1000f, 1308f, 569f), vec4<i32>(461i, i32(-2147483648), i32(-2147483648), 11542i)), -1i, Struct_2(Struct_1(1u, vec3<i32>(18607i, 2147483647i, -1i), vec2<i32>(56271i, 33095i)), 70008u, vec3<f32>(-569f, -721f, -926f), vec4<i32>(11445i, -6824i, 2147483647i, 2147483647i))), Struct_3(Struct_1(15189u, vec3<i32>(2852i, 2147483647i, 1i), vec2<i32>(2147483647i, 2147483647i)), Struct_2(Struct_1(4294967295u, vec3<i32>(-1i, -10014i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648))), 0u, vec3<f32>(-366f, -429f, -205f), vec4<i32>(6263i, 56988i, 10454i, i32(-2147483648))), Struct_2(Struct_1(33574u, vec3<i32>(51718i, 18833i, 59818i), vec2<i32>(1i, i32(-2147483648))), 1u, vec3<f32>(-1000f, -457f, -544f), vec4<i32>(0i, -1i, -5017i, 2147483647i)), -353i, Struct_2(Struct_1(4294967295u, vec3<i32>(26175i, -35363i, -1i), vec2<i32>(-46811i, -41273i)), 35486u, vec3<f32>(467f, -845f, -477f), vec4<i32>(16513i, 9210i, 6216i, 1i))), Struct_3(Struct_1(14108u, vec3<i32>(-1i, 37307i, 1i), vec2<i32>(i32(-2147483648), -51424i)), Struct_2(Struct_1(35486u, vec3<i32>(2147483647i, 1i, 0i), vec2<i32>(i32(-2147483648), -20609i)), 90105u, vec3<f32>(236f, -1337f, -1000f), vec4<i32>(2147483647i, 62623i, 0i, 2147483647i)), Struct_2(Struct_1(4294967295u, vec3<i32>(40601i, i32(-2147483648), 10733i), vec2<i32>(i32(-2147483648), 1i)), 9123u, vec3<f32>(515f, 947f, -1186f), vec4<i32>(2147483647i, 1i, -1i, -16586i)), -16042i, Struct_2(Struct_1(64209u, vec3<i32>(0i, -1i, i32(-2147483648)), vec2<i32>(2147483647i, -1i)), 1u, vec3<f32>(1268f, 698f, -186f), vec4<i32>(2147483647i, i32(-2147483648), -8400i, 11475i))), Struct_3(Struct_1(9145u, vec3<i32>(2147483647i, 12673i, 1i), vec2<i32>(0i, 1i)), Struct_2(Struct_1(4294967295u, vec3<i32>(i32(-2147483648), -7888i, 1i), vec2<i32>(-30516i, -30484i)), 4294967295u, vec3<f32>(-154f, -910f, -1359f), vec4<i32>(2147483647i, 1i, i32(-2147483648), 13502i)), Struct_2(Struct_1(1u, vec3<i32>(0i, -16695i, 18842i), vec2<i32>(-12928i, 2147483647i)), 0u, vec3<f32>(-1000f, 380f, -1628f), vec4<i32>(6053i, 7844i, 18123i, 21406i)), 0i, Struct_2(Struct_1(4294967295u, vec3<i32>(4601i, i32(-2147483648), -10884i), vec2<i32>(-1i, -88284i)), 0u, vec3<f32>(-1198f, 135f, 124f), vec4<i32>(2147483647i, 1i, 1i, 0i))), Struct_3(Struct_1(24904u, vec3<i32>(i32(-2147483648), -16458i, 6267i), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_2(Struct_1(50121u, vec3<i32>(2147483647i, -9741i, 1i), vec2<i32>(2147483647i, 11313i)), 1u, vec3<f32>(1415f, -861f, 407f), vec4<i32>(2147483647i, -1i, -1i, 2147483647i)), Struct_2(Struct_1(27019u, vec3<i32>(-8993i, -65471i, 1i), vec2<i32>(-1i, 47347i)), 24659u, vec3<f32>(507f, 173f, 765f), vec4<i32>(1i, i32(-2147483648), 7779i, 0i)), -1i, Struct_2(Struct_1(39500u, vec3<i32>(66660i, -7479i, i32(-2147483648)), vec2<i32>(20270i, -70531i)), 25217u, vec3<f32>(175f, -1044f, -213f), vec4<i32>(40824i, -42434i, 2147483647i, 0i))), Struct_3(Struct_1(0u, vec3<i32>(3177i, 24993i, 6068i), vec2<i32>(10511i, 0i)), Struct_2(Struct_1(49149u, vec3<i32>(i32(-2147483648), -31125i, -30406i), vec2<i32>(2147483647i, -32413i)), 1u, vec3<f32>(373f, 910f, -362f), vec4<i32>(-50976i, 2147483647i, 21753i, 1i)), Struct_2(Struct_1(4294967295u, vec3<i32>(29105i, 0i, 72560i), vec2<i32>(-6496i, 2147483647i)), 4294967295u, vec3<f32>(-296f, -2361f, -1160f), vec4<i32>(-1i, -22666i, -17111i, -12278i)), 29419i, Struct_2(Struct_1(33123u, vec3<i32>(-101075i, 1i, 2147483647i), vec2<i32>(-53686i, 0i)), 6988u, vec3<f32>(-315f, -999f, 591f), vec4<i32>(-48029i, -1i, 54549i, 2147483647i))), Struct_3(Struct_1(70618u, vec3<i32>(-2535i, i32(-2147483648), -47822i), vec2<i32>(-40144i, -1i)), Struct_2(Struct_1(4294967295u, vec3<i32>(45760i, -28503i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i)), 38040u, vec3<f32>(-1153f, 1983f, 464f), vec4<i32>(2147483647i, -16059i, 1i, 25547i)), Struct_2(Struct_1(604u, vec3<i32>(2147483647i, 2147483647i, -1i), vec2<i32>(-1i, i32(-2147483648))), 46526u, vec3<f32>(-123f, 1193f, 460f), vec4<i32>(-11190i, 2147483647i, -1i, 8276i)), 1i, Struct_2(Struct_1(11237u, vec3<i32>(-16584i, -1i, 12425i), vec2<i32>(2147483647i, 3530i)), 1u, vec3<f32>(-1449f, -601f, 751f), vec4<i32>(2147483647i, -1i, i32(-2147483648), 2147483647i))), Struct_3(Struct_1(0u, vec3<i32>(i32(-2147483648), 0i, -1i), vec2<i32>(18384i, 0i)), Struct_2(Struct_1(27421u, vec3<i32>(i32(-2147483648), 11101i, 54332i), vec2<i32>(24296i, -47266i)), 20529u, vec3<f32>(-1563f, -887f, 983f), vec4<i32>(30594i, -14746i, 2147483647i, -17187i)), Struct_2(Struct_1(4294967295u, vec3<i32>(-19543i, -28016i, -1i), vec2<i32>(1i, 0i)), 61363u, vec3<f32>(241f, 1820f, 1000f), vec4<i32>(-18104i, 7481i, 1i, -13067i)), 3376i, Struct_2(Struct_1(33499u, vec3<i32>(-29137i, i32(-2147483648), 20437i), vec2<i32>(-32971i, 23992i)), 1u, vec3<f32>(1000f, 129f, -1000f), vec4<i32>(1i, i32(-2147483648), 13961i, -69223i))), Struct_3(Struct_1(4294967295u, vec3<i32>(-7058i, 15756i, -1i), vec2<i32>(1i, 5395i)), Struct_2(Struct_1(4294967295u, vec3<i32>(-43708i, 23386i, -4819i), vec2<i32>(-1i, -17352i)), 67865u, vec3<f32>(-1216f, -535f, -1292f), vec4<i32>(-13892i, -48337i, i32(-2147483648), -1i)), Struct_2(Struct_1(0u, vec3<i32>(-75333i, 37491i, i32(-2147483648)), vec2<i32>(0i, 0i)), 19783u, vec3<f32>(279f, -1962f, -1077f), vec4<i32>(4311i, 6413i, 14193i, 1980i)), -1i, Struct_2(Struct_1(1u, vec3<i32>(-33805i, -22935i, 37157i), vec2<i32>(-33365i, 0i)), 61381u, vec3<f32>(304f, 1948f, 366f), vec4<i32>(7018i, -1i, -18154i, -6186i))), Struct_3(Struct_1(34661u, vec3<i32>(49169i, i32(-2147483648), 45222i), vec2<i32>(9941i, -9729i)), Struct_2(Struct_1(7839u, vec3<i32>(23573i, 37033i, -13006i), vec2<i32>(-1i, 0i)), 4294967295u, vec3<f32>(1000f, -728f, -1640f), vec4<i32>(1i, 2147483647i, 2147483647i, -28659i)), Struct_2(Struct_1(4294967295u, vec3<i32>(-38797i, i32(-2147483648), 2147483647i), vec2<i32>(0i, 1i)), 0u, vec3<f32>(-480f, 115f, -2141f), vec4<i32>(1i, -45944i, -6716i, 1i)), -27234i, Struct_2(Struct_1(44847u, vec3<i32>(12504i, 1i, i32(-2147483648)), vec2<i32>(-28400i, 0i)), 4294967295u, vec3<f32>(-774f, -472f, -1878f), vec4<i32>(-49910i, -18458i, -1i, 1i))), Struct_3(Struct_1(0u, vec3<i32>(-1i, -36541i, -63457i), vec2<i32>(0i, 18939i)), Struct_2(Struct_1(0u, vec3<i32>(27242i, 0i, 13569i), vec2<i32>(-21070i, -1i)), 39847u, vec3<f32>(-1000f, -1249f, 344f), vec4<i32>(1i, -33769i, 0i, 35911i)), Struct_2(Struct_1(4294967295u, vec3<i32>(1i, -7760i, 2147483647i), vec2<i32>(2147483647i, 7807i)), 1u, vec3<f32>(635f, -650f, 527f), vec4<i32>(1i, i32(-2147483648), 19629i, 2147483647i)), 0i, Struct_2(Struct_1(1u, vec3<i32>(-1i, 2147483647i, 17193i), vec2<i32>(i32(-2147483648), 46385i)), 5065u, vec3<f32>(-269f, -727f, 426f), vec4<i32>(-25683i, -29482i, -1i, -26047i))), Struct_3(Struct_1(94195u, vec3<i32>(40010i, -41930i, 1i), vec2<i32>(39212i, -40097i)), Struct_2(Struct_1(4294967295u, vec3<i32>(-5170i, 2147483647i, -44546i), vec2<i32>(-18679i, 7503i)), 12072u, vec3<f32>(-1182f, 1403f, -685f), vec4<i32>(-23468i, -5811i, 1824i, -3478i)), Struct_2(Struct_1(33290u, vec3<i32>(11672i, i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, -9920i)), 4294967295u, vec3<f32>(-1042f, -493f, 1000f), vec4<i32>(6233i, 12616i, 17359i, 26075i)), -26113i, Struct_2(Struct_1(1u, vec3<i32>(13726i, -31989i, i32(-2147483648)), vec2<i32>(-1i, -32316i)), 4294967295u, vec3<f32>(470f, -1558f, 2566f), vec4<i32>(9425i, 19174i, 1i, -1i))), Struct_3(Struct_1(4294967295u, vec3<i32>(16455i, -26290i, -1i), vec2<i32>(-3326i, 2147483647i)), Struct_2(Struct_1(4294967295u, vec3<i32>(-1i, 2147483647i, -1i), vec2<i32>(-1i, i32(-2147483648))), 44997u, vec3<f32>(1666f, 1324f, -668f), vec4<i32>(36386i, -47844i, -3300i, 60358i)), Struct_2(Struct_1(0u, vec3<i32>(-28056i, 2147483647i, 37939i), vec2<i32>(0i, 1i)), 46895u, vec3<f32>(278f, -1851f, 642f), vec4<i32>(-19347i, 1i, i32(-2147483648), -11159i)), -10852i, Struct_2(Struct_1(1u, vec3<i32>(1i, 2147483647i, 2147483647i), vec2<i32>(1i, 51884i)), 1u, vec3<f32>(-1147f, -363f, -1759f), vec4<i32>(-1i, i32(-2147483648), 36188i, i32(-2147483648)))));

var<private> global1: array<vec2<u32>, 23>;

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_2, 24>;

var<private> global4: array<bool, 18> = array<bool, 18>(true, true, true, false, false, false, false, true, true, false, false, true, true, true, false, true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>) -> vec4<u32> {
    var var_0 = 6615i;
    global1 = array<vec2<u32>, 23>();
    let var_1 = arg_0.x;
    global3 = array<Struct_2, 24>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, -2050f, -1714f), _wgslsmith_f_op_vec3_f32(-arg_1))))) * arg_1));
    return abs(vec4<u32>(arg_0.x, ~(~_wgslsmith_sub_u32(4294967295u, global2.x)), _wgslsmith_mult_u32(arg_0.x, 15586u >> (max(arg_0.x, 5535u) % 32u)), arg_0.x >> (1u % 32u)));
}

fn func_2() -> vec4<f32> {
    var var_0 = global3[_wgslsmith_index_u32(global2.x, 24u)];
    global3 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13617u, 59705u, 81509u, 0u) << (vec4<u32>(var_0.b, 4294967295u, var_0.a.a, 1u) % vec4<u32>(32u)), func_3(vec2<u32>(var_0.a.a, 4294967295u), var_0.c)), min(var_0.b >> (4294967295u % 32u), ~4294967295u)), 23u)], global1[_wgslsmith_index_u32(min(firstTrailingBit(4294967295u) >> (4294967295u % 32u), var_0.b), 23u)]), vec2<u32>(1u, _wgslsmith_mult_u32(firstTrailingBit(~var_0.a.a), ~global2.x)));
    var var_2 = var_0.a;
    var var_3 = Struct_4(global0[_wgslsmith_index_u32(7859u, 19u)], true);
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 320f))))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: u32) -> vec2<i32> {
    let var_0 = global3[_wgslsmith_index_u32(52213u, 24u)];
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1193f, var_0.c.x, 1626f, arg_0.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 993f, -588f, -669f) * vec4<f32>(arg_0.c.x, 1647f, 1314f, -574f))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, 1000f, arg_0.c.x, 1568f), _wgslsmith_f_op_vec4_f32(func_2()))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-787f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-457f)))), _wgslsmith_f_op_f32(select(var_0.c.x, -1003f, global4[_wgslsmith_index_u32(54152u, 18u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1195f * arg_0.c.x), _wgslsmith_f_op_f32(floor(-1292f)))))));
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(arg_0.b, 0u)), firstLeadingBit(~50700u), 46675u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(var_0.b, arg_3), 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(global2.x, arg_0.b, arg_0.b) >> (vec3<u32>(arg_0.a.a, arg_0.a.a, var_0.b) % vec3<u32>(32u)), vec3<u32>(arg_0.a.a, arg_0.b, 3830u) >> (vec3<u32>(var_0.b, global2.x, 4294967295u) % vec3<u32>(32u))))), 19u)], arg_2.x);
    var var_3 = var_0.c.xx;
    let var_4 = false;
    return vec2<i32>(~(-select(var_0.d.x, 1i, var_4)), -u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -((~func_1(Struct_2(Struct_1(global2.x, u_input.b, vec2<i32>(u_input.b.x, -2147483647i)), 12305u, vec3<f32>(1227f, -521f, 1014f), vec4<i32>(-1i, 0i, u_input.a, -1i)), u_input.b.xy, vec4<bool>(global4[_wgslsmith_index_u32(global2.x, 18u)], global4[_wgslsmith_index_u32(global2.x, 18u)], global4[_wgslsmith_index_u32(6587u, 18u)], global4[_wgslsmith_index_u32(global2.x, 18u)]), 84834u) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(global2.x, 54498u), global1[_wgslsmith_index_u32(47433u, 23u)]) % vec2<u32>(32u))) & u_input.b.xz);
    var var_1 = Struct_1(countOneBits(0u), vec3<i32>(reverseBits(u_input.b.x), -7194i, -(i32(-1i) * -38512i)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(u_input.b.x), i32(-1i) * -2147483647i), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 0i), u_input.b.zz), -u_input.b.yz, func_1(global3[_wgslsmith_index_u32(global2.x, 24u)], vec2<i32>(var_0.x, -16817i), vec4<bool>(global4[_wgslsmith_index_u32(global2.x, 18u)], global4[_wgslsmith_index_u32(2091u, 18u)], global4[_wgslsmith_index_u32(4294967295u, 18u)], true), 1u))), _wgslsmith_div_vec2_i32(var_0, vec2<i32>(~var_0.x, 53427i))));
    var var_2 = -vec4<i32>(1i ^ var_1.c.x, func_1(Struct_2(Struct_1(20356u, u_input.b, vec2<i32>(var_1.c.x, var_1.c.x)), firstTrailingBit(29769u), vec3<f32>(-902f, -639f, -1299f), -vec4<i32>(-13940i, var_0.x, 2147483647i, u_input.a)), u_input.b.zy, select(vec4<bool>(global4[_wgslsmith_index_u32(var_1.a, 18u)], global4[_wgslsmith_index_u32(global2.x, 18u)], true, false), vec4<bool>(global4[_wgslsmith_index_u32(1u, 18u)], false, global4[_wgslsmith_index_u32(var_1.a, 18u)], true), vec4<bool>(global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(85944u, 18u)], false, global4[_wgslsmith_index_u32(global2.x, 18u)])), 1u).x, var_0.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(-39170i, var_0.x), u_input.a), var_1.b.x));
    let var_3 = global0[_wgslsmith_index_u32(var_1.a, 19u)];
    var var_4 = global4[_wgslsmith_index_u32(global2.x, 18u)];
    global0 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.b.c.x))), _wgslsmith_f_op_f32(abs(238f))), ~(~_wgslsmith_sub_i32(-41346i, -1i)));
}

