struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(Struct_3(Struct_2(i32(-2147483648), Struct_1(vec3<i32>(2147483647i, 2147483647i, -18136i), vec4<i32>(10137i, 17570i, -58112i, 2147483647i)), vec3<f32>(-705f, -804f, 895f)), Struct_2(0i, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -85i), vec4<i32>(1i, 1i, i32(-2147483648), 2147483647i)), vec3<f32>(-474f, -1757f, 1000f)), true, Struct_1(vec3<i32>(0i, 15201i, -1i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 0i))), 21583u, true), Struct_4(Struct_3(Struct_2(37948i, Struct_1(vec3<i32>(-1i, -1i, -18137i), vec4<i32>(-1i, 0i, 6650i, -202i)), vec3<f32>(-995f, 1015f, -3338f)), Struct_2(i32(-2147483648), Struct_1(vec3<i32>(45380i, 2147483647i, i32(-2147483648)), vec4<i32>(-75957i, i32(-2147483648), -1i, -4272i)), vec3<f32>(385f, 893f, -1060f)), true, Struct_1(vec3<i32>(-1i, -1i, 0i), vec4<i32>(26374i, 2147483647i, -12262i, -1i))), 4294967295u, true), Struct_4(Struct_3(Struct_2(0i, Struct_1(vec3<i32>(2147483647i, 2147483647i, 1052i), vec4<i32>(0i, 30628i, -55437i, 1i)), vec3<f32>(399f, -509f, 417f)), Struct_2(1i, Struct_1(vec3<i32>(i32(-2147483648), -16294i, 21267i), vec4<i32>(i32(-2147483648), -10594i, 2147483647i, 1i)), vec3<f32>(1794f, 615f, -1627f)), false, Struct_1(vec3<i32>(1i, 1i, 3869i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 0i))), 22602u, true), Struct_4(Struct_3(Struct_2(-1543i, Struct_1(vec3<i32>(1569i, i32(-2147483648), -18217i), vec4<i32>(1i, -1i, 2147483647i, -1i)), vec3<f32>(-548f, 2672f, 1000f)), Struct_2(0i, Struct_1(vec3<i32>(0i, -25210i, -13981i), vec4<i32>(-15539i, 82802i, 0i, -1i)), vec3<f32>(2296f, 664f, -1863f)), false, Struct_1(vec3<i32>(16252i, -2642i, i32(-2147483648)), vec4<i32>(-82574i, 66847i, 2147483647i, -1i))), 0u, false), Struct_4(Struct_3(Struct_2(7807i, Struct_1(vec3<i32>(-25035i, 4751i, 41843i), vec4<i32>(0i, -61485i, -69817i, 0i)), vec3<f32>(-869f, 304f, 2081f)), Struct_2(1i, Struct_1(vec3<i32>(40563i, -1388i, 14582i), vec4<i32>(1i, -23416i, 41335i, -26170i)), vec3<f32>(-1052f, 353f, 1032f)), true, Struct_1(vec3<i32>(13818i, -46675i, -14136i), vec4<i32>(1i, 1i, -28247i, 0i))), 19267u, true), Struct_4(Struct_3(Struct_2(2147483647i, Struct_1(vec3<i32>(-26085i, 2147483647i, -1i), vec4<i32>(41847i, 9358i, 94981i, i32(-2147483648))), vec3<f32>(-887f, -496f, -974f)), Struct_2(3778i, Struct_1(vec3<i32>(2147483647i, 9119i, 2147483647i), vec4<i32>(-32495i, -4504i, 1i, 2147483647i)), vec3<f32>(-687f, -400f, -1372f)), false, Struct_1(vec3<i32>(1i, 2147483647i, 2147483647i), vec4<i32>(0i, i32(-2147483648), 46231i, -1i))), 91036u, true), Struct_4(Struct_3(Struct_2(i32(-2147483648), Struct_1(vec3<i32>(16152i, 110i, i32(-2147483648)), vec4<i32>(-16600i, 0i, 38203i, -1i)), vec3<f32>(1359f, 183f, 169f)), Struct_2(-1i, Struct_1(vec3<i32>(1i, 9116i, 0i), vec4<i32>(-22649i, 1i, -41234i, 1i)), vec3<f32>(-535f, 991f, 1247f)), true, Struct_1(vec3<i32>(3003i, 16121i, 41956i), vec4<i32>(-3731i, -24195i, -12740i, 1i))), 10598u, true), Struct_4(Struct_3(Struct_2(i32(-2147483648), Struct_1(vec3<i32>(0i, 504i, 10075i), vec4<i32>(-4269i, 32151i, i32(-2147483648), -1i)), vec3<f32>(-865f, -328f, -814f)), Struct_2(60699i, Struct_1(vec3<i32>(11649i, 2147483647i, i32(-2147483648)), vec4<i32>(4814i, 31402i, -24451i, 32265i)), vec3<f32>(953f, 932f, 411f)), false, Struct_1(vec3<i32>(0i, -1i, 9384i), vec4<i32>(-1242i, -1i, -17196i, 2147483647i))), 1u, true), Struct_4(Struct_3(Struct_2(41496i, Struct_1(vec3<i32>(i32(-2147483648), 23440i, -16617i), vec4<i32>(2147483647i, 1i, 77207i, 1i)), vec3<f32>(215f, -1618f, -1000f)), Struct_2(1i, Struct_1(vec3<i32>(-32379i, 38855i, 31240i), vec4<i32>(0i, 76384i, i32(-2147483648), 1i)), vec3<f32>(1427f, -154f, -1000f)), false, Struct_1(vec3<i32>(-35462i, 1i, -39712i), vec4<i32>(2147483647i, 46137i, 0i, i32(-2147483648)))), 4294967295u, true), Struct_4(Struct_3(Struct_2(-51683i, Struct_1(vec3<i32>(-68941i, 17693i, -53806i), vec4<i32>(-1i, -1i, -24640i, 2147483647i)), vec3<f32>(185f, -837f, 2626f)), Struct_2(-36758i, Struct_1(vec3<i32>(-1i, i32(-2147483648), -1i), vec4<i32>(-1i, -73070i, 13420i, 21875i)), vec3<f32>(-754f, 420f, 300f)), true, Struct_1(vec3<i32>(0i, 0i, -1i), vec4<i32>(-28724i, 1i, 5879i, 5293i))), 1u, true), Struct_4(Struct_3(Struct_2(1i, Struct_1(vec3<i32>(-49945i, 0i, 1i), vec4<i32>(-7646i, -1i, i32(-2147483648), 21118i)), vec3<f32>(1227f, -775f, 494f)), Struct_2(-37044i, Struct_1(vec3<i32>(-17109i, -1i, -12734i), vec4<i32>(2147483647i, 0i, 8102i, 5775i)), vec3<f32>(1589f, 1134f, 635f)), true, Struct_1(vec3<i32>(2147483647i, 0i, 5819i), vec4<i32>(856i, -31791i, 2147483647i, -9088i))), 67800u, false), Struct_4(Struct_3(Struct_2(-7895i, Struct_1(vec3<i32>(-15688i, 40925i, -1i), vec4<i32>(-6894i, 2147483647i, -27959i, 7541i)), vec3<f32>(-837f, -1966f, -836f)), Struct_2(45246i, Struct_1(vec3<i32>(i32(-2147483648), 40345i, -7757i), vec4<i32>(-22357i, 11941i, 3624i, 2147483647i)), vec3<f32>(1000f, -1084f, -874f)), false, Struct_1(vec3<i32>(-26785i, 1i, 21304i), vec4<i32>(i32(-2147483648), -7402i, 41536i, 2147483647i))), 1u, true), Struct_4(Struct_3(Struct_2(-15366i, Struct_1(vec3<i32>(-30190i, 0i, i32(-2147483648)), vec4<i32>(2147483647i, 39593i, -8985i, i32(-2147483648))), vec3<f32>(341f, 692f, -555f)), Struct_2(0i, Struct_1(vec3<i32>(2147483647i, 41667i, -1i), vec4<i32>(1i, 105655i, 2147483647i, -19897i)), vec3<f32>(301f, -1000f, 1041f)), false, Struct_1(vec3<i32>(38761i, -32204i, 13589i), vec4<i32>(-6663i, -42089i, 2147483647i, -24687i))), 16651u, false), Struct_4(Struct_3(Struct_2(58802i, Struct_1(vec3<i32>(-255i, 2147483647i, -1i), vec4<i32>(-1i, 1i, -32141i, 45934i)), vec3<f32>(-684f, 1000f, 420f)), Struct_2(-32031i, Struct_1(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-3546i, i32(-2147483648), 76123i, 31915i)), vec3<f32>(-1021f, 1268f, 1000f)), false, Struct_1(vec3<i32>(-1i, 9962i, 6623i), vec4<i32>(82308i, 1i, -18269i, 1i))), 62114u, false), Struct_4(Struct_3(Struct_2(-16052i, Struct_1(vec3<i32>(-14686i, -12470i, 2147483647i), vec4<i32>(0i, 8654i, i32(-2147483648), 11168i)), vec3<f32>(693f, 1951f, -354f)), Struct_2(-30935i, Struct_1(vec3<i32>(-1i, i32(-2147483648), 36748i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 0i)), vec3<f32>(-459f, -1772f, 789f)), false, Struct_1(vec3<i32>(-17317i, 15035i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), 25035i, 1i))), 20266u, true), Struct_4(Struct_3(Struct_2(-19928i, Struct_1(vec3<i32>(21374i, 23809i, -25548i), vec4<i32>(42921i, -27033i, -1i, 98487i)), vec3<f32>(1000f, 783f, -1295f)), Struct_2(-17986i, Struct_1(vec3<i32>(8070i, i32(-2147483648), i32(-2147483648)), vec4<i32>(49423i, 22171i, 60906i, -43437i)), vec3<f32>(233f, -1595f, 1187f)), false, Struct_1(vec3<i32>(0i, 26439i, -64037i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), i32(-2147483648)))), 0u, false), Struct_4(Struct_3(Struct_2(-2034i, Struct_1(vec3<i32>(-3237i, -10698i, 0i), vec4<i32>(-16354i, 8999i, 2147483647i, 16698i)), vec3<f32>(-282f, -358f, -648f)), Struct_2(54877i, Struct_1(vec3<i32>(-1i, 6742i, i32(-2147483648)), vec4<i32>(-1i, -1i, 24906i, 51460i)), vec3<f32>(-876f, 261f, -460f)), false, Struct_1(vec3<i32>(0i, -29781i, -14522i), vec4<i32>(-1i, -1i, 64797i, 0i))), 1047u, true), Struct_4(Struct_3(Struct_2(29095i, Struct_1(vec3<i32>(18340i, -57382i, 1i), vec4<i32>(-1i, -1i, 14315i, 2147483647i)), vec3<f32>(916f, -1000f, 1820f)), Struct_2(-29755i, Struct_1(vec3<i32>(0i, 61445i, 1i), vec4<i32>(0i, -32043i, 0i, -1515i)), vec3<f32>(733f, 1285f, -949f)), false, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 28521i), vec4<i32>(1i, 25265i, -72927i, 0i))), 98173u, false), Struct_4(Struct_3(Struct_2(-471i, Struct_1(vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(40425i, 2147483647i, 36782i, 1i)), vec3<f32>(1518f, -904f, 488f)), Struct_2(42153i, Struct_1(vec3<i32>(8597i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-157i, i32(-2147483648), 12235i, 1i)), vec3<f32>(-2431f, 544f, -1000f)), false, Struct_1(vec3<i32>(1i, -26146i, 0i), vec4<i32>(9689i, 2147483647i, -4820i, -1i))), 4294967295u, false), Struct_4(Struct_3(Struct_2(0i, Struct_1(vec3<i32>(1i, 2147483647i, -16428i), vec4<i32>(-24981i, 2147483647i, 2147483647i, -19183i)), vec3<f32>(-1377f, 428f, -1068f)), Struct_2(-26251i, Struct_1(vec3<i32>(43769i, 1i, 2147483647i), vec4<i32>(38589i, -1i, i32(-2147483648), 15315i)), vec3<f32>(695f, 120f, 856f)), false, Struct_1(vec3<i32>(-15260i, -1i, 1i), vec4<i32>(0i, -1i, 0i, 5008i))), 1u, true), Struct_4(Struct_3(Struct_2(31332i, Struct_1(vec3<i32>(1i, -14274i, 1i), vec4<i32>(1i, 1i, 15143i, -19489i)), vec3<f32>(-608f, 331f, 1000f)), Struct_2(2147483647i, Struct_1(vec3<i32>(1i, -1i, -27877i), vec4<i32>(57388i, -35990i, -1i, 27594i)), vec3<f32>(-212f, -788f, 1268f)), false, Struct_1(vec3<i32>(-46521i, -46693i, -16693i), vec4<i32>(-1i, 39870i, -70369i, 2147483647i))), 27747u, false), Struct_4(Struct_3(Struct_2(0i, Struct_1(vec3<i32>(2960i, i32(-2147483648), -1i), vec4<i32>(-25794i, -9909i, 74564i, 18031i)), vec3<f32>(-365f, 411f, -127f)), Struct_2(64662i, Struct_1(vec3<i32>(1i, 1i, 4990i), vec4<i32>(877i, 11133i, i32(-2147483648), 1i)), vec3<f32>(1629f, 1696f, 110f)), false, Struct_1(vec3<i32>(18449i, -8168i, -1i), vec4<i32>(1i, -1i, 2147483647i, 28941i))), 9286u, false), Struct_4(Struct_3(Struct_2(-1i, Struct_1(vec3<i32>(i32(-2147483648), 1i, 1i), vec4<i32>(2147483647i, -1i, 0i, 3826i)), vec3<f32>(113f, -646f, 159f)), Struct_2(i32(-2147483648), Struct_1(vec3<i32>(10608i, 2147483647i, 23891i), vec4<i32>(7596i, 41739i, 2147483647i, -19003i)), vec3<f32>(-215f, 487f, -1226f)), false, Struct_1(vec3<i32>(-19449i, -1i, 1i), vec4<i32>(36825i, 0i, 1i, -26699i))), 0u, false), Struct_4(Struct_3(Struct_2(1i, Struct_1(vec3<i32>(3280i, 2147483647i, 8779i), vec4<i32>(-1i, i32(-2147483648), -1683i, -51086i)), vec3<f32>(-690f, 246f, 185f)), Struct_2(-1i, Struct_1(vec3<i32>(0i, 0i, 2147483647i), vec4<i32>(0i, 9178i, -82392i, 0i)), vec3<f32>(-1269f, 1000f, 148f)), true, Struct_1(vec3<i32>(-22709i, -15641i, 0i), vec4<i32>(-17553i, -39058i, -6121i, -7783i))), 32184u, true), Struct_4(Struct_3(Struct_2(33400i, Struct_1(vec3<i32>(54166i, i32(-2147483648), 34510i), vec4<i32>(0i, 1i, 0i, 18539i)), vec3<f32>(706f, -863f, 444f)), Struct_2(12770i, Struct_1(vec3<i32>(0i, -51374i, -63409i), vec4<i32>(0i, -8187i, -9557i, -19065i)), vec3<f32>(383f, -1058f, -1296f)), false, Struct_1(vec3<i32>(44977i, 35724i, 1i), vec4<i32>(1i, -1i, 0i, 827i))), 806u, false), Struct_4(Struct_3(Struct_2(28712i, Struct_1(vec3<i32>(34335i, -57306i, i32(-2147483648)), vec4<i32>(32636i, -27125i, i32(-2147483648), i32(-2147483648))), vec3<f32>(-797f, 1946f, 609f)), Struct_2(0i, Struct_1(vec3<i32>(0i, 40796i, i32(-2147483648)), vec4<i32>(-1i, 1i, 82321i, 0i)), vec3<f32>(-430f, -878f, -319f)), false, Struct_1(vec3<i32>(-1711i, 1i, -3814i), vec4<i32>(1i, -1i, 1i, -36718i))), 4294967295u, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> i32 {
    global0 = array<Struct_4, 26>();
    var var_0 = _wgslsmith_f_op_f32(2219f + _wgslsmith_f_op_f32(200f + 662f));
    var var_1 = Struct_1(-vec3<i32>(abs(_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.zx)), select(u_input.a.x, u_input.c | -1i, !arg_0.x), firstLeadingBit(firstLeadingBit(u_input.a.x))), _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(firstLeadingBit(-1i), _wgslsmith_add_i32(0i, u_input.a.x), i32(-1i) * -5830i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)) ^ -_wgslsmith_mod_vec4_i32(u_input.a, u_input.a)));
    global0 = array<Struct_4, 26>();
    let var_2 = 26865i;
    return 68497i;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = -161f;
    global0 = array<Struct_4, 26>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) - _wgslsmith_f_op_f32(step(855f, -979f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f + 136f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))))));
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    return Struct_3(Struct_2(func_3(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), true), Struct_1(u_input.a.xzy, abs(max(u_input.a, u_input.a))), var_1), Struct_2(_wgslsmith_mult_i32(min(2329i, 44401i), 63749i) ^ u_input.a.x, Struct_1(u_input.a.ywx, ~(-u_input.a)), var_1), false, Struct_1(u_input.a.wzz, vec4<i32>(~(u_input.a.x >> (4294967295u % 32u)), func_3(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true), _wgslsmith_mod_i32(max(1i, u_input.c), 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.a.x) << (vec2<u32>(40522u, 1u) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(0i, u_input.c))))));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> vec3<f32> {
    let var_0 = true;
    let var_1 = u_input.b.wz;
    let var_2 = vec4<i32>(abs(11381i), ~(-3635i), -_wgslsmith_mult_i32(countOneBits(59210i), ~u_input.c) ^ _wgslsmith_mult_i32(0i, 75044i), 1i);
    global0 = array<Struct_4, 26>();
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.a.a.c), arg_0.a.b.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b.c.x, -1000f, arg_0.a.b.c.x) * arg_0.a.b.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.c.x, arg_0.a.b.c.x, arg_0.a.b.c.x)))))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_4(func_2(~(~u_input.b)), u_input.b.x, true), !all(vec2<bool>(true, true))));
    global0 = array<Struct_4, 26>();
    var var_1 = ~_wgslsmith_mult_i32(func_2(vec4<u32>(1u, ~31229u, 3033u, abs(u_input.b.x))).a.a, ~func_3(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), all(vec2<bool>(true, false))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(495f, -730f, var_0.x, var_0.x))) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -418f), var_0.x, _wgslsmith_f_op_f32(803f * 538f))) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x), u_input.a.x > u_input.c)), 1166f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(803f + var_0.x))))));
    global0 = array<Struct_4, 26>();
    return func_2(vec4<u32>(min(abs(23777u) | abs(u_input.b.x), u_input.b.x), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(14508u, u_input.b.x)), u_input.b.ww) | _wgslsmith_mod_u32(1u, select(48359u, 4294967295u, true)), _wgslsmith_mod_u32(countOneBits(u_input.b.x), ~43440u << (_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) % 32u)), 27541u)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<Struct_4, 26>();
    let var_1 = Struct_2(-2147483647i, Struct_1(u_input.a.xxz, var_0.b.b), _wgslsmith_f_op_vec3_f32(func_4(Struct_4(func_2(select(vec4<u32>(51599u, u_input.b.x, 0u, u_input.b.x), u_input.b, false)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(25795u, u_input.b.x), ~0u), true || (u_input.b.x != 1u)), true)));
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    let var_2 = var_0;
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c.x))), 2228f, false)))), var_1.c.x, _wgslsmith_add_vec4_i32(-(~(vec4<i32>(var_0.a, 42731i, 16482i, 0i) >> (vec4<u32>(u_input.b.x, 1024u, 20054u, 0u) % vec4<u32>(32u)))), abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(23693i, var_1.a, var_2.a, 1i), u_input.a), ~var_2.a, var_0.a ^ u_input.c, var_2.a >> (4668u % 32u)))));
}

