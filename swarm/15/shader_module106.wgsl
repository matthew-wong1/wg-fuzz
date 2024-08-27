struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec4<i32>(-27527i, 1i, 2147483647i, i32(-2147483648)), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec3<f32>(-1073f, -1329f, 736f), vec2<bool>(true, true), vec4<i32>(-9710i, -1i, i32(-2147483648), 0i)), vec2<f32>(652f, -953f), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec3<f32>(465f, 1000f, -166f), vec2<bool>(false, true), vec4<i32>(-1i, 2147483647i, -30357i, -21733i)), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec3<f32>(-409f, 1892f, -2217f), vec2<bool>(false, false), vec4<i32>(-30725i, 23705i, 1i, i32(-2147483648)))), Struct_2(vec4<i32>(42073i, -2432i, 15672i, -3895i), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec3<f32>(-470f, -322f, -611f), vec2<bool>(false, false), vec4<i32>(2147483647i, 14052i, -1i, 16394i)), vec2<f32>(-2027f, -1430f), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec3<f32>(-679f, -1000f, 269f), vec2<bool>(true, true), vec4<i32>(-51780i, 60067i, 2312i, -53185i)), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec3<f32>(-2109f, -1000f, -564f), vec2<bool>(true, false), vec4<i32>(28623i, -1i, -28965i, -18584i))), Struct_2(vec4<i32>(53041i, 0i, -1i, -18380i), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec3<f32>(204f, -923f, 469f), vec2<bool>(true, true), vec4<i32>(1i, 70797i, -1i, 42152i)), vec2<f32>(403f, -1407f), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec3<f32>(-1000f, -619f, -1375f), vec2<bool>(false, true), vec4<i32>(-9482i, 3659i, 2147483647i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec3<f32>(-1242f, 946f, -962f), vec2<bool>(false, true), vec4<i32>(26964i, 0i, i32(-2147483648), 29788i))), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 20888i, 2147483647i), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec3<f32>(989f, 2146f, 2987f), vec2<bool>(true, false), vec4<i32>(0i, i32(-2147483648), 0i, 0i)), vec2<f32>(-143f, -1851f), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec3<f32>(1097f, 646f, 1457f), vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -20017i, i32(-2147483648), 65445i)), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec3<f32>(-688f, 243f, 956f), vec2<bool>(false, true), vec4<i32>(16716i, i32(-2147483648), -22751i, -1i))), Struct_2(vec4<i32>(1i, i32(-2147483648), 1i, -14172i), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec3<f32>(-817f, -636f, -1658f), vec2<bool>(false, true), vec4<i32>(11873i, -277i, 2147483647i, 19197i)), vec2<f32>(896f, 679f), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec3<f32>(-1313f, -1710f, -929f), vec2<bool>(false, true), vec4<i32>(i32(-2147483648), 19227i, 31488i, -5473i)), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec3<f32>(142f, -508f, -253f), vec2<bool>(true, true), vec4<i32>(47826i, 1i, 0i, 64585i))), Struct_2(vec4<i32>(9116i, -1i, 45560i, 2147483647i), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec3<f32>(303f, -3092f, -1727f), vec2<bool>(false, true), vec4<i32>(16022i, 2147483647i, 7329i, -15671i)), vec2<f32>(706f, 400f), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec3<f32>(-409f, 141f, -435f), vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 2266i, -3073i, -1601i)), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec3<f32>(532f, -472f, 1142f), vec2<bool>(false, true), vec4<i32>(-1i, i32(-2147483648), 0i, -52758i))), Struct_2(vec4<i32>(-1i, 2147483647i, 2862i, 2147483647i), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec3<f32>(752f, -961f, -607f), vec2<bool>(true, false), vec4<i32>(2147483647i, -1i, 2147483647i, -19687i)), vec2<f32>(-524f, -318f), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec3<f32>(1331f, -1000f, -1000f), vec2<bool>(true, false), vec4<i32>(31145i, -9032i, 15478i, 34500i)), Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec3<f32>(293f, 1538f, -980f), vec2<bool>(true, true), vec4<i32>(60353i, 13564i, 2147483647i, 1i))), Struct_2(vec4<i32>(-1i, 2147483647i, i32(-2147483648), 19413i), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec3<f32>(1000f, 502f, -191f), vec2<bool>(false, false), vec4<i32>(-1i, -7349i, -1i, -26546i)), vec2<f32>(277f, -277f), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec3<f32>(159f, 1986f, -129f), vec2<bool>(true, true), vec4<i32>(-27346i, -30936i, 1i, 21729i)), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec3<f32>(346f, -1270f, 175f), vec2<bool>(true, true), vec4<i32>(-36646i, -38637i, 819i, 1i))), Struct_2(vec4<i32>(1i, 2147483647i, i32(-2147483648), 17985i), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec3<f32>(1303f, -2511f, 569f), vec2<bool>(false, true), vec4<i32>(2147483647i, -1515i, 20453i, 933i)), vec2<f32>(421f, 753f), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec3<f32>(1000f, -1396f, -893f), vec2<bool>(true, false), vec4<i32>(-1i, 18698i, i32(-2147483648), 0i)), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec3<f32>(973f, 1253f, -385f), vec2<bool>(true, true), vec4<i32>(-20848i, -1i, 2147483647i, i32(-2147483648)))), Struct_2(vec4<i32>(i32(-2147483648), 0i, 1i, 1i), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec3<f32>(415f, 1177f, -209f), vec2<bool>(false, false), vec4<i32>(-57640i, 10043i, i32(-2147483648), i32(-2147483648))), vec2<f32>(-1756f, 975f), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec3<f32>(1085f, 999f, -3037f), vec2<bool>(true, true), vec4<i32>(-21556i, i32(-2147483648), -12042i, -44236i)), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec3<f32>(935f, 341f, -1000f), vec2<bool>(true, false), vec4<i32>(8231i, 1i, -1408i, -1i))), Struct_2(vec4<i32>(1i, 3207i, -16383i, 43888i), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec3<f32>(610f, 392f, 1796f), vec2<bool>(false, true), vec4<i32>(-1i, 2147483647i, -42469i, 2147483647i)), vec2<f32>(113f, -415f), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec3<f32>(-261f, 1044f, -170f), vec2<bool>(false, false), vec4<i32>(-1i, 4i, -9315i, 2147483647i)), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec3<f32>(-1204f, -1149f, -1001f), vec2<bool>(true, false), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 53205i))), Struct_2(vec4<i32>(-1i, 1i, -32725i, 2147483647i), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec3<f32>(-338f, -1254f, -139f), vec2<bool>(false, true), vec4<i32>(67883i, -23424i, 16055i, -18996i)), vec2<f32>(182f, 699f), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec3<f32>(-595f, -1385f, -1060f), vec2<bool>(false, true), vec4<i32>(40548i, 0i, -7504i, -41194i)), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec3<f32>(-222f, 1535f, 1000f), vec2<bool>(false, true), vec4<i32>(-11727i, -8038i, 39840i, 0i))), Struct_2(vec4<i32>(2147483647i, 24331i, 2147483647i, -1i), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec3<f32>(779f, -553f, 217f), vec2<bool>(false, false), vec4<i32>(27080i, 4367i, -14280i, 12912i)), vec2<f32>(250f, -1743f), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec3<f32>(1651f, 1485f, -1789f), vec2<bool>(true, true), vec4<i32>(0i, 9301i, -17242i, 84401i)), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec3<f32>(423f, -1445f, -1501f), vec2<bool>(true, true), vec4<i32>(0i, 49388i, 0i, 10856i))), Struct_2(vec4<i32>(2147483647i, 2147483647i, -1i, 0i), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec3<f32>(-1000f, -215f, -325f), vec2<bool>(true, true), vec4<i32>(74549i, i32(-2147483648), 0i, -19343i)), vec2<f32>(538f, -485f), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec3<f32>(-1263f, -487f, 1056f), vec2<bool>(false, true), vec4<i32>(-1i, -62594i, -1i, -25479i)), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec3<f32>(354f, -900f, 1714f), vec2<bool>(false, true), vec4<i32>(0i, i32(-2147483648), -1454i, -52658i))), Struct_2(vec4<i32>(1i, 12429i, 2147483647i, -31071i), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec3<f32>(515f, 355f, 768f), vec2<bool>(true, true), vec4<i32>(-6557i, i32(-2147483648), 37257i, -1i)), vec2<f32>(430f, 201f), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec3<f32>(520f, -546f, 454f), vec2<bool>(true, true), vec4<i32>(-56225i, 0i, 2147483647i, -16929i)), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec3<f32>(-1011f, 486f, 2391f), vec2<bool>(false, false), vec4<i32>(0i, -415i, i32(-2147483648), -1i))), Struct_2(vec4<i32>(40726i, -13608i, -20148i, -1i), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec3<f32>(1956f, -1093f, 221f), vec2<bool>(false, true), vec4<i32>(3701i, -21399i, -1i, i32(-2147483648))), vec2<f32>(1986f, -131f), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec3<f32>(-891f, -673f, -1264f), vec2<bool>(false, false), vec4<i32>(-733i, -21619i, 0i, 12294i)), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec3<f32>(-1000f, -980f, -1726f), vec2<bool>(false, true), vec4<i32>(-36115i, 29590i, -17522i, i32(-2147483648)))), Struct_2(vec4<i32>(-1i, 1i, 2147483647i, -16212i), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec3<f32>(1000f, -1147f, 774f), vec2<bool>(true, true), vec4<i32>(-6575i, -43399i, -16645i, -10190i)), vec2<f32>(915f, -487f), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec3<f32>(-200f, -1054f, 951f), vec2<bool>(false, false), vec4<i32>(-5248i, 12706i, -1i, 2147483647i)), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec3<f32>(1293f, 308f, 417f), vec2<bool>(true, true), vec4<i32>(0i, 0i, i32(-2147483648), 56520i))), Struct_2(vec4<i32>(-19702i, i32(-2147483648), 0i, -7456i), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec3<f32>(-595f, 383f, 461f), vec2<bool>(true, true), vec4<i32>(-20181i, 2147483647i, i32(-2147483648), 18954i)), vec2<f32>(-129f, -529f), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec3<f32>(689f, -969f, 1386f), vec2<bool>(false, true), vec4<i32>(-1202i, 2147483647i, -1i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec3<f32>(-676f, 1455f, -1157f), vec2<bool>(true, true), vec4<i32>(-13836i, i32(-2147483648), -23090i, i32(-2147483648)))), Struct_2(vec4<i32>(i32(-2147483648), -1i, 1i, -23582i), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec3<f32>(-500f, -407f, 969f), vec2<bool>(false, true), vec4<i32>(0i, -1i, -15856i, -2180i)), vec2<f32>(160f, -1000f), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec3<f32>(-585f, 2885f, 219f), vec2<bool>(true, true), vec4<i32>(i32(-2147483648), 27743i, 1i, 72635i)), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec3<f32>(-473f, 1577f, -1390f), vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 29408i, 2147483647i, -12877i))), Struct_2(vec4<i32>(3654i, 1i, -1i, -1i), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec3<f32>(648f, -458f, 1979f), vec2<bool>(false, true), vec4<i32>(1i, 1i, -21053i, 29512i)), vec2<f32>(-1501f, -204f), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec3<f32>(616f, 1245f, 1446f), vec2<bool>(true, true), vec4<i32>(1i, -1i, -9634i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec3<f32>(-389f, -259f, 2544f), vec2<bool>(false, true), vec4<i32>(0i, -1i, i32(-2147483648), 17576i))));

var<private> global1: i32;

var<private> global2: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(vec3<i32>(1i, 25939i, -6812i), vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<f32>(936f, 550f, 373f, -2318f)), Struct_4(vec3<i32>(-11748i, i32(-2147483648), 37276i), vec4<u32>(1u, 4294967295u, 19944u, 1u), vec4<f32>(-568f, -2029f, -1749f, 787f)), Struct_4(vec3<i32>(0i, 1i, 1i), vec4<u32>(1520u, 5915u, 1u, 42620u), vec4<f32>(-314f, -747f, -550f, 386f)), Struct_4(vec3<i32>(2147483647i, 1i, 2147483647i), vec4<u32>(66714u, 69530u, 1u, 0u), vec4<f32>(421f, 1062f, -1177f, 1127f)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(abs(select(~4356u, ((u_input.c.x << (20864u % 32u)) << (~u_input.c.x % 32u)) | _wgslsmith_mult_u32(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 4294967295u, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, 95543u, u_input.c.x))), any(arg_0.a))), 4u)];
    let var_1 = 0u;
    let var_2 = Struct_3(select(arg_0.b.wz, !vec2<bool>(!arg_0.a.x, true), _wgslsmith_div_f32(-627f, _wgslsmith_f_op_f32(ceil(705f))) <= _wgslsmith_f_op_f32(474f * _wgslsmith_f_op_f32(ceil(1976f)))), i32(-1i) * -abs(u_input.d.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, true)) * -2036f))))), arg_0.e.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.c)));
    global0 = array<Struct_2, 20>();
    return firstTrailingBit(abs(var_0.a.x) << ((var_0.b.x >> (~u_input.c.x % 32u)) % 32u));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_3 {
    var var_0 = Struct_3(!vec2<bool>(true, any(vec3<bool>(true, true, true))), _wgslsmith_mult_i32(1i ^ u_input.a.x, 2147483647i & -reverseBits(u_input.a.x)), -956f, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.d, -(~u_input.d)), -func_3(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec3<f32>(188f, 227f, 652f), vec2<bool>(false, true), vec4<i32>(arg_1, arg_1, -2147483647i, arg_1))), u_input.d.x));
    let var_1 = arg_1 != u_input.a.x;
    let var_2 = !var_0.a;
    return Struct_3(!select(!vec2<bool>(var_0.a.x, false), select(var_2, !vec2<bool>(var_0.a.x, false), var_2.x), min(24911u, arg_0) >= 1u), arg_1 ^ 33157i, _wgslsmith_f_op_f32(-var_0.c), ~(-(~var_0.d << (4294967295u % 32u))));
}

fn func_1() -> vec2<i32> {
    global0 = array<Struct_2, 20>();
    global2 = array<Struct_4, 4>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 20u)];
    var_0 = global0[_wgslsmith_index_u32(1u, 20u)];
    let var_1 = func_2((_wgslsmith_dot_vec3_u32(u_input.c, min(u_input.c, u_input.c)) << (~(~0u) % 32u)) | u_input.c.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(var_0.e.e.x ^ -54705i, ~1131i)), 1i));
    return _wgslsmith_clamp_vec2_i32(((-vec2<i32>(u_input.b.x, u_input.b.x) >> ((u_input.c.yy & vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u))) | vec2<i32>(9158i ^ u_input.a.x, var_0.e.e.x)) ^ var_0.a.zx, vec2<i32>(firstLeadingBit(-abs(35822i)), reverseBits(17521i)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.d, var_0.e.e.x & 2147483647i), select(var_0.b.e.wz, _wgslsmith_mult_vec2_i32(var_0.e.e.zx, vec2<i32>(13668i, 13379i)), vec2<bool>(var_1.a.x, false))), _wgslsmith_clamp_vec2_i32(var_0.a.zz, vec2<i32>(var_1.b, _wgslsmith_add_i32(var_1.b, -25896i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-36354i, -56883i), vec2<i32>(u_input.b.x, var_1.b)), -4245i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 20>();
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x, 33272i, -36013i), ~(-19919i)), func_1(), max(~reverseBits(u_input.a), -(vec2<i32>(u_input.a.x, u_input.d.x) ^ vec2<i32>(-36326i, -1i)))), u_input.d);
    let var_0 = all(select(!vec4<bool>(true, any(vec4<bool>(true, false, true, false)), any(vec3<bool>(true, false, false)), false), vec4<bool>(true, any(vec4<bool>(true, true, true, false)), false, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true))), !(u_input.d.x < u_input.a.x) | all(func_2(0u, -60869i).a)));
    var var_1 = Struct_2(-select(vec4<i32>(_wgslsmith_add_i32(u_input.d.x, -2147483647i), u_input.d.x, _wgslsmith_div_i32(u_input.a.x, u_input.b.x), 1i), vec4<i32>(u_input.a.x, u_input.d.x, 2147483647i, 3712i) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.a.x, -32232i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -2656i)), vec4<bool>(true, var_0, select(true, var_0, var_0), var_0 || var_0)), Struct_1(vec4<bool>(var_0, !(!var_0), !var_0, var_0), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2261f, 1395f)))), func_2(u_input.c.x, u_input.d.x).a, select(vec4<i32>(_wgslsmith_add_i32(1i, -61945i), -18782i, 1i, 12493i & u_input.b.x), vec4<i32>(u_input.a.x, u_input.b.x & 1i, _wgslsmith_mult_i32(u_input.d.x, u_input.d.x), u_input.d.x >> (4294967295u % 32u)), var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-855f, 505f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-430f, -587f))))), Struct_1(select(!vec4<bool>(false, var_0, var_0, false), !(!vec4<bool>(var_0, true, true, var_0)), false), vec4<bool>(true, true, true, var_0), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(123f, -679f, -313f) * vec3<f32>(-489f, 590f, -699f)))), vec2<bool>(var_0, !(!var_0)), abs(min(vec4<i32>(u_input.a.x, -15741i, u_input.b.x, 6931i), vec4<i32>(0i, u_input.a.x, u_input.b.x, u_input.b.x))) & vec4<i32>(u_input.a.x, _wgslsmith_add_i32(0i, u_input.d.x), firstLeadingBit(918i), ~(-1i))), Struct_1(vec4<bool>(false, true, true, false != var_0), !vec4<bool>(var_0 == var_0, var_0, false, var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1489f, 522f) - vec3<f32>(-1029f, -1000f, 665f)))) + vec3<f32>(1f, 1f, 1f)), vec2<bool>(true, true), select(vec4<i32>(u_input.a.x, -9108i, -2147483647i, u_input.d.x) ^ vec4<i32>(-1i, u_input.b.x, -34778i, -1i), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-23533i, u_input.b.x, -2147483647i, -2147483647i), vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.d.x), var_0), -vec4<i32>(u_input.b.x, 2147483647i, u_input.a.x, 1i), vec4<i32>(2147483647i, -1i, 0i, u_input.a.x)), !(!vec4<bool>(true, false, true, var_0)))));
    var var_2 = var_1.e.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -456f) * _wgslsmith_f_op_f32(135f + var_1.b.c.x)), func_2(_wgslsmith_clamp_u32(102624u, u_input.c.x, 11957u), u_input.d.x).c, var_1.e.b.x)))));
}

