struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(Struct_1(false, vec3<u32>(0u, 13361u, 34254u), true, 137f, -34307i), vec3<f32>(-655f, -200f, 132f), vec3<u32>(1u, 49429u, 1543u), vec4<f32>(-775f, -468f, -940f, -1795f), Struct_1(true, vec3<u32>(4944u, 1u, 4967u), false, 551f, 2147483647i)), vec3<i32>(-1i, 0i, i32(-2147483648)));

var<private> global1: Struct_1 = Struct_1(true, vec3<u32>(30052u, 52465u, 1u), true, 790f, i32(-2147483648));

var<private> global2: Struct_1 = Struct_1(false, vec3<u32>(4294967295u, 24255u, 1u), true, -783f, -36096i);

var<private> global3: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_3(Struct_1(false, vec3<u32>(0u, 55764u, 4294967295u), false, 1670f, 34807i), vec3<f32>(1000f, 1000f, 311f), vec3<u32>(24431u, 28364u, 0u), vec4<f32>(2451f, 460f, 1901f, 527f), Struct_1(true, vec3<u32>(4294967295u, 1775u, 4294967295u), false, 266f, 2147483647i)), vec3<i32>(-1i, -35266i, -14093i)), Struct_4(Struct_3(Struct_1(true, vec3<u32>(15429u, 0u, 0u), true, 181f, 31477i), vec3<f32>(-1000f, 922f, 577f), vec3<u32>(72192u, 33645u, 4294967295u), vec4<f32>(-739f, -528f, -398f, 1000f), Struct_1(true, vec3<u32>(4529u, 72993u, 4294967295u), true, -1680f, -1i)), vec3<i32>(73933i, i32(-2147483648), i32(-2147483648))), Struct_4(Struct_3(Struct_1(true, vec3<u32>(11706u, 3063u, 43907u), false, 536f, -23796i), vec3<f32>(1779f, 1010f, -549f), vec3<u32>(4294967295u, 4294967295u, 65807u), vec4<f32>(-471f, -560f, -609f, -451f), Struct_1(false, vec3<u32>(5595u, 41055u, 32480u), false, -1000f, 1i)), vec3<i32>(19052i, -1i, 2147483647i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(44967u, 95375u, 4294967295u), true, -1000f, 16103i), vec3<f32>(-1528f, -451f, 1682f), vec3<u32>(64293u, 0u, 4294967295u), vec4<f32>(-781f, 924f, -1913f, 652f), Struct_1(false, vec3<u32>(4294967295u, 49317u, 4294967295u), true, -631f, 27487i)), vec3<i32>(74186i, 2147483647i, 19860i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(1u, 1u, 1u), true, -1054f, 73328i), vec3<f32>(1084f, 133f, -633f), vec3<u32>(33462u, 52604u, 37080u), vec4<f32>(834f, -252f, -1290f, -1968f), Struct_1(false, vec3<u32>(4294967295u, 17754u, 1u), true, 568f, 2147483647i)), vec3<i32>(13048i, -2603i, 75696i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(37486u, 12272u, 4294967295u), true, -781f, 1i), vec3<f32>(-644f, 719f, 1000f), vec3<u32>(27221u, 1u, 91245u), vec4<f32>(-1000f, -209f, 796f, 400f), Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 31486u), true, 215f, 28470i)), vec3<i32>(2147483647i, 2147483647i, 2147483647i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(4294967295u, 0u, 10708u), true, 817f, 2147483647i), vec3<f32>(879f, -552f, 1039f), vec3<u32>(9884u, 4294967295u, 4294967295u), vec4<f32>(-1232f, 133f, 391f, -440f), Struct_1(false, vec3<u32>(1u, 40304u, 28163u), true, -1084f, 33449i)), vec3<i32>(245i, -2030i, 14701i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(4294967295u, 50866u, 37466u), false, -1300f, -92549i), vec3<f32>(853f, 1025f, 250f), vec3<u32>(13095u, 0u, 0u), vec4<f32>(-380f, -1000f, 246f, -1000f), Struct_1(false, vec3<u32>(70338u, 4294967295u, 0u), true, -933f, 4611i)), vec3<i32>(0i, i32(-2147483648), 0i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(81049u, 63334u, 0u), true, -231f, 2147483647i), vec3<f32>(-494f, -1000f, -1319f), vec3<u32>(1u, 4294967295u, 27358u), vec4<f32>(1329f, 188f, -398f, 555f), Struct_1(true, vec3<u32>(12072u, 76707u, 59561u), true, -783f, -27132i)), vec3<i32>(-38672i, 13555i, 62982i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 2391u), true, 1000f, 16358i), vec3<f32>(1000f, -945f, 130f), vec3<u32>(24821u, 1u, 1u), vec4<f32>(-159f, -805f, -250f, 1842f), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 6831u), false, 978f, 20234i)), vec3<i32>(-1i, 1i, 1i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(0u, 10014u, 0u), true, -246f, 2147483647i), vec3<f32>(-754f, 609f, -1000f), vec3<u32>(4294967295u, 0u, 4294967295u), vec4<f32>(-1646f, 552f, -474f, 116f), Struct_1(true, vec3<u32>(0u, 1u, 1710u), false, 198f, 0i)), vec3<i32>(0i, 1i, 20887i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(15356u, 68208u, 2628u), true, 1083f, 2147483647i), vec3<f32>(888f, 312f, 1215f), vec3<u32>(0u, 4294967295u, 1u), vec4<f32>(-375f, 300f, -1284f, 1083f), Struct_1(false, vec3<u32>(57250u, 34156u, 9510u), true, 1000f, 1i)), vec3<i32>(46116i, 2147483647i, -1i)), Struct_4(Struct_3(Struct_1(true, vec3<u32>(51008u, 22568u, 0u), false, -171f, 1i), vec3<f32>(362f, -524f, -498f), vec3<u32>(1u, 4294967295u, 4294967295u), vec4<f32>(-2038f, 1430f, -245f, 1683f), Struct_1(false, vec3<u32>(4294967295u, 1u, 3169u), true, 1233f, -42670i)), vec3<i32>(0i, -1i, 40159i)), Struct_4(Struct_3(Struct_1(true, vec3<u32>(0u, 5149u, 0u), false, 863f, -26749i), vec3<f32>(1000f, -694f, -1292f), vec3<u32>(4294967295u, 0u, 4294967295u), vec4<f32>(963f, 189f, -1284f, -1358f), Struct_1(true, vec3<u32>(16716u, 1u, 1u), false, -765f, 12816i)), vec3<i32>(-1i, -1i, -1i)), Struct_4(Struct_3(Struct_1(true, vec3<u32>(3296u, 0u, 0u), true, 407f, -1i), vec3<f32>(721f, 1711f, -2010f), vec3<u32>(0u, 0u, 38092u), vec4<f32>(562f, 763f, 702f, 297f), Struct_1(true, vec3<u32>(14710u, 1u, 0u), false, 1816f, i32(-2147483648))), vec3<i32>(2147483647i, 1i, -1i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(36888u, 0u, 0u), false, -701f, -22467i), vec3<f32>(361f, -1175f, 620f), vec3<u32>(18756u, 25338u, 0u), vec4<f32>(139f, 651f, -1841f, 384f), Struct_1(true, vec3<u32>(1u, 4294967295u, 4294967295u), false, -389f, -1i)), vec3<i32>(-1i, 8673i, -12857i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(1u, 23830u, 1u), true, -1704f, -1i), vec3<f32>(-1025f, -1465f, 537f), vec3<u32>(45569u, 4294967295u, 1u), vec4<f32>(-831f, -1387f, -284f, -542f), Struct_1(true, vec3<u32>(0u, 1u, 1u), false, -180f, 0i)), vec3<i32>(2147483647i, 35677i, 22980i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(4294967295u, 0u, 55961u), false, 1259f, 2147483647i), vec3<f32>(-768f, 110f, 316f), vec3<u32>(4294967295u, 19004u, 24586u), vec4<f32>(-162f, 143f, -515f, -762f), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 1u), true, 791f, 1i)), vec3<i32>(-3170i, -1i, 2147483647i)), Struct_4(Struct_3(Struct_1(true, vec3<u32>(1u, 4294967295u, 40329u), false, -299f, -5161i), vec3<f32>(-1073f, -409f, -377f), vec3<u32>(50251u, 53796u, 39203u), vec4<f32>(-2106f, -540f, -1000f, 159f), Struct_1(false, vec3<u32>(32833u, 121650u, 2410u), true, 1568f, -1i)), vec3<i32>(-1i, -20176i, -18308i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(13394u, 12671u, 10533u), true, -689f, 0i), vec3<f32>(-1520f, 1000f, -103f), vec3<u32>(1u, 4294967295u, 92673u), vec4<f32>(-1226f, -1904f, 151f, 798f), Struct_1(false, vec3<u32>(49050u, 67813u, 1u), false, 1647f, -1i)), vec3<i32>(-4060i, i32(-2147483648), -4701i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(44106u, 1u, 56296u), false, 634f, 1470i), vec3<f32>(1035f, 1113f, -220f), vec3<u32>(1404u, 10964u, 68104u), vec4<f32>(554f, 445f, 301f, -359f), Struct_1(true, vec3<u32>(0u, 12254u, 21428u), false, -902f, 2147483647i)), vec3<i32>(1i, -10790i, -9367i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(12655u, 0u, 57307u), false, -415f, 44986i), vec3<f32>(1873f, 611f, -1021f), vec3<u32>(4294967295u, 1u, 4294967295u), vec4<f32>(2134f, -1346f, -1743f, -1143f), Struct_1(true, vec3<u32>(86397u, 4294967295u, 4294967295u), false, 1818f, 1i)), vec3<i32>(9321i, 2147483647i, -12722i)), Struct_4(Struct_3(Struct_1(false, vec3<u32>(8051u, 31643u, 4294967295u), false, 612f, -1i), vec3<f32>(-686f, -1271f, -1296f), vec3<u32>(4294967295u, 1u, 1u), vec4<f32>(760f, -1701f, 718f, 936f), Struct_1(true, vec3<u32>(0u, 13887u, 16314u), true, 389f, 1i)), vec3<i32>(43075i, -20108i, -28893i)), Struct_4(Struct_3(Struct_1(true, vec3<u32>(106203u, 0u, 32682u), false, 342f, 1i), vec3<f32>(-162f, 1182f, 456f), vec3<u32>(1u, 31524u, 40014u), vec4<f32>(1497f, 253f, 850f, 764f), Struct_1(true, vec3<u32>(1u, 4294967295u, 49409u), true, -140f, 3086i)), vec3<i32>(-44957i, 8524i, i32(-2147483648))), Struct_4(Struct_3(Struct_1(true, vec3<u32>(4294967295u, 30300u, 0u), false, -515f, 2147483647i), vec3<f32>(708f, 227f, -310f), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<f32>(1000f, 863f, -338f, -786f), Struct_1(true, vec3<u32>(20083u, 95907u, 21491u), true, 1870f, 1i)), vec3<i32>(-11252i, 22440i, 2147483647i)), Struct_4(Struct_3(Struct_1(true, vec3<u32>(31112u, 4294967295u, 5208u), false, 1778f, -32583i), vec3<f32>(-256f, -668f, 119f), vec3<u32>(0u, 31978u, 4294967295u), vec4<f32>(-571f, -935f, -133f, -1272f), Struct_1(false, vec3<u32>(2677u, 13527u, 0u), false, -406f, -79895i)), vec3<i32>(0i, -46104i, i32(-2147483648))), Struct_4(Struct_3(Struct_1(false, vec3<u32>(12558u, 1u, 17911u), false, 1778f, -59793i), vec3<f32>(901f, -1286f, 1076f), vec3<u32>(0u, 0u, 4294967295u), vec4<f32>(1000f, 1000f, -973f, 468f), Struct_1(false, vec3<u32>(0u, 33695u, 1u), false, -744f, 0i)), vec3<i32>(-1i, 2147483647i, -1i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_3(Struct_1(((false & arg_0) & (1u <= arg_1.a.b.x)) && (true & !arg_0), ~(~vec3<u32>(u_input.c, arg_1.e.b.x, global1.b.x)) ^ vec3<u32>(global2.b.x, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), _wgslsmith_sub_u32(0u, global2.b.x)), !global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2022f))))), global2.e), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f))), -766f), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(abs(global2.b), ~global0.a.e.b), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global2.b.x, global0.a.a.b.x, 0u), vec3<u32>(90982u, 4294967295u, 1u))) << (vec3<u32>(6204u, global1.b.x, ~_wgslsmith_div_u32(0u, 1u)) % vec3<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1.d, vec4<f32>(1601f, 496f, global2.d, -1834f))) + vec4<f32>(global1.d, arg_1.e.d, global1.d, global1.d)))), arg_1.d), arg_1.e);
    var var_1 = !vec4<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -1000f) <= var_0.e.d), true, !global2.a, 1000f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.d * 672f) + global1.d));
    var var_2 = i32(-1i) * -2203i;
    var var_3 = vec3<f32>(-1706f, 1382f, _wgslsmith_div_f32(177f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-381f - -1728f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global2.d)), global2.d)), !all(vec3<bool>(arg_1.a.a, false, global2.c))))));
    var_1 = !select(!(!(!vec4<bool>(arg_1.a.a, true, arg_1.a.a, false))), vec4<bool>(select(all(vec2<bool>(var_1.x, arg_0)), any(vec4<bool>(global1.a, global1.c, true, global1.a)), true && global2.c), arg_1.e.a, true, var_0.a.c), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, global1.c, true, arg_0), false), !vec4<bool>(arg_0, true, true, global2.a), true), select(select(vec4<bool>(global2.c, arg_0, global1.c, var_0.a.c), vec4<bool>(true, arg_1.e.c, arg_1.a.a, arg_1.e.c), vec4<bool>(arg_1.a.a, global0.a.a.c, false, false)), !vec4<bool>(false, arg_1.e.a, true, true), true), vec4<bool>(global2.c, all(vec4<bool>(arg_0, global0.a.a.c, true, false)), var_1.x, global2.c)));
    return -851f;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = -1421f;
    var_0 = _wgslsmith_div_f32(-1768f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, arg_1)) * _wgslsmith_f_op_f32(round(arg_3.e.d)))) * arg_3.d.x));
    global3 = array<Struct_4, 27>();
    let var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 12631u), vec2<u32>(countOneBits(_wgslsmith_sub_u32(arg_3.e.b.x, 1u)), arg_1.c.x));
    var var_2 = Struct_2(global0.a.a, _wgslsmith_add_vec3_u32(vec3<u32>(select(26436u, arg_3.c.x, true), 54273u, max(28368u, arg_2.e.b.x)) >> (vec3<u32>(global2.b.x ^ arg_3.c.x, ~global0.a.a.b.x, var_1.x) % vec3<u32>(32u)), ~(countOneBits(arg_1.e.b) & global2.b)), global0.a.e, 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1896f) - _wgslsmith_f_op_f32(global1.d + 987f)) * -213f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(210f, 329f) + 1737f)));
    return global2.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>) -> vec4<f32> {
    var var_0 = Struct_2(global0.a.a, reverseBits(reverseBits(vec3<u32>(4294967295u, global1.b.x, global1.b.x)) >> (~func_2(3145u, global0.a, global0.a, global0.a) % vec3<u32>(32u))), Struct_1(true, ~firstLeadingBit(u_input.a), global2.c, _wgslsmith_f_op_f32(func_3(~global1.e != global1.e, Struct_3(global0.a.e, _wgslsmith_div_vec3_f32(global0.a.d.yzz, vec3<f32>(global0.a.d.x, 471f, global2.d)), vec3<u32>(0u, u_input.b.x, 13091u), global0.a.d, Struct_1(global0.a.e.c, vec3<u32>(35609u, 4294967295u, 4294967295u), false, -313f, global1.e)))), global1.e), global2.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-481f * arg_0.x), _wgslsmith_f_op_f32(global2.d - -538f))))));
    let var_1 = Struct_1(!all(select(select(vec3<bool>(false, true, false), vec3<bool>(global0.a.e.c, var_0.a.a, global0.a.e.c), vec3<bool>(global1.a, global1.a, global1.a)), select(vec3<bool>(false, true, global1.a), vec3<bool>(global2.c, true, global1.c), true), any(vec2<bool>(global2.c, true)))), ~func_2(firstLeadingBit(~u_input.b.x), global0.a, global0.a, global0.a), -1107f <= global0.a.a.d, -315f, -reverseBits(-32282i));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(min(vec3<u32>(var_0.b.x, u_input.a.x, 1u), var_1.b) & vec3<u32>(var_0.b.x, 0u, 58085u)), countOneBits(u_input.b.xzw) ^ var_0.a.b), ~(~0u));
    var var_3 = select(select(select(select(!vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(global0.a.a.c, global0.a.a.c, false), true), !vec3<bool>(false, false, global1.c), select(select(vec3<bool>(var_0.c.c, true, global0.a.e.a), vec3<bool>(var_1.c, true, false), vec3<bool>(global0.a.a.c, true, true)), select(vec3<bool>(true, global1.a, global0.a.a.a), vec3<bool>(global1.a, true, false), false), true)), !vec3<bool>(global0.a.e.a, !var_1.c, false), any(vec2<bool>(var_0.c.c, var_1.a))), vec3<bool>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1181f)) < var_0.a.d, !all(select(vec3<bool>(global2.a, false, global0.a.a.a), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), vec3<bool>(true, global1.a, global1.c));
    global3 = array<Struct_4, 27>();
    return _wgslsmith_f_op_vec4_f32(-global0.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(global0.a.b, vec3<f32>(-595f, global2.d, _wgslsmith_f_op_f32(global1.d - global2.d))), global0.a.d.www)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-865f, global1.d))))))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1433f, global1.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.e.d, 891f)))))));
    global3 = array<Struct_4, 27>();
    let var_2 = _wgslsmith_div_vec2_f32(global0.a.b.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d, var_1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1635f, global1.d))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(var_2 + var_1.wx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * 329f) * _wgslsmith_f_op_vec4_f32(func_1(global0.a.d.yxx, var_2)).x))), vec4<i32>(global2.e, global0.b.x, -24404i, global2.e), var_0.b.x);
}

