struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 36180u), vec2<u32>(7969u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1037u, 45860u), vec2<u32>(25183u, 4294967295u), vec2<u32>(0u, 20874u), vec2<u32>(4294967295u, 54836u), vec2<u32>(1u, 0u), vec2<u32>(28769u, 64851u), vec2<u32>(2325u, 0u), vec2<u32>(9089u, 0u), vec2<u32>(105371u, 27166u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(74398u, 36503u), vec2<u32>(15179u, 62039u), vec2<u32>(4294967295u, 2110u), vec2<u32>(71566u, 1u));

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec4<f32>(1000f, 278f, -1000f, -693f), vec3<u32>(9591u, 35128u, 631u), true, vec2<f32>(1000f, -698f), vec4<u32>(4912u, 0u, 4294967295u, 0u)), Struct_1(vec4<f32>(-897f, -354f, -598f, 934f), vec3<u32>(24341u, 4294967295u, 52444u), false, vec2<f32>(365f, 357f), vec4<u32>(1u, 45154u, 1u, 4294967295u)), -2478f), Struct_2(Struct_1(vec4<f32>(1000f, -1549f, 574f, 295f), vec3<u32>(0u, 44314u, 20380u), false, vec2<f32>(-1194f, 640f), vec4<u32>(27933u, 9041u, 1u, 4294967295u)), Struct_1(vec4<f32>(-204f, 251f, -1000f, 1523f), vec3<u32>(1u, 0u, 1u), false, vec2<f32>(163f, -418f), vec4<u32>(4294967295u, 15677u, 0u, 6841u)), 721f), Struct_2(Struct_1(vec4<f32>(-133f, -592f, -624f, -1075f), vec3<u32>(0u, 1u, 0u), true, vec2<f32>(-1435f, -343f), vec4<u32>(0u, 18970u, 0u, 0u)), Struct_1(vec4<f32>(-980f, -1284f, -1311f, 1237f), vec3<u32>(4294967295u, 4294967295u, 28797u), false, vec2<f32>(-405f, 1030f), vec4<u32>(0u, 0u, 44975u, 1u)), -434f), Struct_2(Struct_1(vec4<f32>(685f, -1110f, 856f, 786f), vec3<u32>(4294967295u, 0u, 5265u), false, vec2<f32>(699f, -1104f), vec4<u32>(4294967295u, 28276u, 15511u, 1u)), Struct_1(vec4<f32>(-575f, -1000f, 1000f, 131f), vec3<u32>(1u, 41731u, 0u), true, vec2<f32>(-1000f, 244f), vec4<u32>(4294967295u, 0u, 55258u, 21030u)), -1330f), Struct_2(Struct_1(vec4<f32>(499f, -224f, -875f, 416f), vec3<u32>(27404u, 0u, 1972u), true, vec2<f32>(-940f, 1000f), vec4<u32>(1u, 1u, 0u, 4294967295u)), Struct_1(vec4<f32>(-347f, -994f, -394f, -1000f), vec3<u32>(0u, 0u, 21529u), true, vec2<f32>(-111f, -1000f), vec4<u32>(1u, 21737u, 4294967295u, 1u)), 1380f), Struct_2(Struct_1(vec4<f32>(-284f, 1261f, 1488f, 101f), vec3<u32>(49478u, 42995u, 1u), false, vec2<f32>(164f, 305f), vec4<u32>(54218u, 0u, 0u, 7956u)), Struct_1(vec4<f32>(1435f, 1358f, -1067f, -608f), vec3<u32>(32033u, 1u, 4294967295u), true, vec2<f32>(-1007f, 926f), vec4<u32>(14370u, 33990u, 1u, 4294967295u)), 696f), Struct_2(Struct_1(vec4<f32>(252f, -967f, 1783f, -293f), vec3<u32>(4294967295u, 0u, 7853u), false, vec2<f32>(-647f, -303f), vec4<u32>(0u, 28338u, 9713u, 4294967295u)), Struct_1(vec4<f32>(-376f, -1633f, -1153f, -241f), vec3<u32>(0u, 12867u, 33873u), true, vec2<f32>(1000f, 1171f), vec4<u32>(4294967295u, 4294967295u, 1u, 14197u)), 1000f), Struct_2(Struct_1(vec4<f32>(1180f, 1114f, -876f, -312f), vec3<u32>(0u, 4294967295u, 4294967295u), false, vec2<f32>(-2385f, -117f), vec4<u32>(4294967295u, 4294967295u, 84286u, 59922u)), Struct_1(vec4<f32>(-1000f, 775f, 711f, 748f), vec3<u32>(1u, 0u, 1u), false, vec2<f32>(630f, 1096f), vec4<u32>(430u, 1u, 11475u, 4294967295u)), 683f), Struct_2(Struct_1(vec4<f32>(-942f, -572f, 694f, -1000f), vec3<u32>(1u, 48573u, 54062u), true, vec2<f32>(-2476f, -412f), vec4<u32>(43146u, 11699u, 1u, 0u)), Struct_1(vec4<f32>(1000f, 1396f, -298f, 864f), vec3<u32>(1u, 0u, 32428u), false, vec2<f32>(442f, 374f), vec4<u32>(4294967295u, 4294967295u, 1u, 11257u)), -289f), Struct_2(Struct_1(vec4<f32>(702f, 1999f, 1393f, -401f), vec3<u32>(1u, 1u, 0u), false, vec2<f32>(1039f, -408f), vec4<u32>(88603u, 0u, 1u, 0u)), Struct_1(vec4<f32>(1203f, 328f, 1840f, -1000f), vec3<u32>(20011u, 99572u, 1u), false, vec2<f32>(453f, 1278f), vec4<u32>(34607u, 8642u, 0u, 127217u)), 465f), Struct_2(Struct_1(vec4<f32>(1085f, -1584f, -1514f, 1885f), vec3<u32>(2635u, 0u, 13603u), false, vec2<f32>(-699f, -1616f), vec4<u32>(9428u, 0u, 4294967295u, 20269u)), Struct_1(vec4<f32>(125f, 695f, 971f, -288f), vec3<u32>(24473u, 1u, 0u), false, vec2<f32>(666f, -563f), vec4<u32>(28575u, 43187u, 27310u, 31620u)), -433f), Struct_2(Struct_1(vec4<f32>(819f, 2683f, 824f, 985f), vec3<u32>(1u, 4325u, 1u), true, vec2<f32>(3142f, 788f), vec4<u32>(1u, 112312u, 66445u, 4294967295u)), Struct_1(vec4<f32>(646f, -1071f, 1105f, -1000f), vec3<u32>(0u, 0u, 0u), true, vec2<f32>(-296f, 290f), vec4<u32>(114837u, 17997u, 1u, 62411u)), 2247f), Struct_2(Struct_1(vec4<f32>(900f, 441f, 2266f, -293f), vec3<u32>(47766u, 31633u, 50937u), true, vec2<f32>(-977f, 2921f), vec4<u32>(35010u, 0u, 0u, 72860u)), Struct_1(vec4<f32>(-1061f, -1000f, -570f, -625f), vec3<u32>(0u, 9078u, 66408u), true, vec2<f32>(-2143f, -1000f), vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), -221f), Struct_2(Struct_1(vec4<f32>(1600f, -344f, -1000f, 597f), vec3<u32>(10776u, 0u, 1u), true, vec2<f32>(1000f, 1052f), vec4<u32>(40798u, 4294967295u, 77245u, 24387u)), Struct_1(vec4<f32>(1209f, -1408f, -994f, 1399f), vec3<u32>(39140u, 0u, 1u), true, vec2<f32>(-1603f, -722f), vec4<u32>(33871u, 1u, 0u, 89783u)), -1119f), Struct_2(Struct_1(vec4<f32>(-1505f, 806f, 824f, -171f), vec3<u32>(0u, 0u, 0u), true, vec2<f32>(374f, 1223f), vec4<u32>(0u, 4294967295u, 4294967295u, 64378u)), Struct_1(vec4<f32>(308f, 1000f, 2296f, 2441f), vec3<u32>(1u, 4294967295u, 1u), false, vec2<f32>(699f, -104f), vec4<u32>(4294967295u, 11601u, 41107u, 0u)), 1406f), Struct_2(Struct_1(vec4<f32>(389f, 993f, 755f, 974f), vec3<u32>(21059u, 82383u, 0u), true, vec2<f32>(937f, -1087f), vec4<u32>(15421u, 28962u, 0u, 6690u)), Struct_1(vec4<f32>(574f, -441f, 1000f, 1000f), vec3<u32>(1u, 4294967295u, 21807u), true, vec2<f32>(-804f, 271f), vec4<u32>(1u, 32942u, 200u, 4294967295u)), 357f), Struct_2(Struct_1(vec4<f32>(-556f, 465f, -681f, -1504f), vec3<u32>(0u, 0u, 1u), true, vec2<f32>(-1455f, 1190f), vec4<u32>(0u, 0u, 44471u, 4294967295u)), Struct_1(vec4<f32>(810f, -529f, -1349f, 529f), vec3<u32>(22192u, 0u, 1u), false, vec2<f32>(876f, 370f), vec4<u32>(4294967295u, 1u, 66935u, 62040u)), 674f), Struct_2(Struct_1(vec4<f32>(-1066f, 262f, -311f, -776f), vec3<u32>(3754u, 43777u, 1u), false, vec2<f32>(590f, 424f), vec4<u32>(33147u, 4294967295u, 32821u, 43725u)), Struct_1(vec4<f32>(-796f, -1368f, 990f, 1515f), vec3<u32>(4294967295u, 80613u, 1u), true, vec2<f32>(2169f, -914f), vec4<u32>(1u, 1u, 4294967295u, 8520u)), 891f), Struct_2(Struct_1(vec4<f32>(-153f, 928f, 1147f, 2239f), vec3<u32>(25750u, 1u, 64733u), false, vec2<f32>(630f, -957f), vec4<u32>(0u, 1u, 1u, 11162u)), Struct_1(vec4<f32>(2225f, -587f, -587f, -595f), vec3<u32>(1u, 49630u, 101289u), true, vec2<f32>(-287f, -249f), vec4<u32>(1u, 1u, 4294967295u, 6296u)), -720f), Struct_2(Struct_1(vec4<f32>(-947f, 216f, -354f, 1109f), vec3<u32>(7466u, 0u, 1u), true, vec2<f32>(-2383f, -218f), vec4<u32>(23039u, 0u, 52065u, 33657u)), Struct_1(vec4<f32>(-523f, 1000f, 340f, -749f), vec3<u32>(4294967295u, 4294967295u, 0u), true, vec2<f32>(1000f, 1138f), vec4<u32>(40551u, 20875u, 34534u, 59037u)), 1000f), Struct_2(Struct_1(vec4<f32>(-1000f, 1000f, -1821f, 162f), vec3<u32>(4294967295u, 1u, 2763u), true, vec2<f32>(229f, 237f), vec4<u32>(49909u, 66379u, 632u, 1u)), Struct_1(vec4<f32>(-1203f, -1420f, 682f, 467f), vec3<u32>(56301u, 1u, 1221u), false, vec2<f32>(-989f, 1814f), vec4<u32>(69877u, 1u, 4294967295u, 98944u)), -1593f), Struct_2(Struct_1(vec4<f32>(-918f, -1000f, -522f, 173f), vec3<u32>(62026u, 20984u, 1u), false, vec2<f32>(-584f, 703f), vec4<u32>(4294967295u, 75188u, 1u, 42075u)), Struct_1(vec4<f32>(279f, -649f, 299f, 1212f), vec3<u32>(23619u, 26966u, 1u), true, vec2<f32>(-1124f, -1000f), vec4<u32>(459u, 1u, 0u, 100227u)), -1176f), Struct_2(Struct_1(vec4<f32>(799f, 1000f, -965f, 341f), vec3<u32>(0u, 14520u, 0u), true, vec2<f32>(-1345f, -247f), vec4<u32>(0u, 1u, 0u, 90700u)), Struct_1(vec4<f32>(-1000f, -857f, 752f, -1000f), vec3<u32>(4294967295u, 34833u, 1u), false, vec2<f32>(-256f, -585f), vec4<u32>(4294967295u, 11636u, 0u, 0u)), 944f), Struct_2(Struct_1(vec4<f32>(-745f, 815f, 559f, -222f), vec3<u32>(38272u, 1u, 17090u), false, vec2<f32>(-2326f, -1783f), vec4<u32>(19445u, 36111u, 1u, 25874u)), Struct_1(vec4<f32>(884f, -921f, 1995f, -295f), vec3<u32>(0u, 1u, 4294967295u), true, vec2<f32>(-654f, -360f), vec4<u32>(4294967295u, 26091u, 0u, 0u)), 920f), Struct_2(Struct_1(vec4<f32>(-401f, -763f, -476f, 319f), vec3<u32>(21457u, 4294967295u, 92u), false, vec2<f32>(-534f, -538f), vec4<u32>(1u, 91182u, 27949u, 0u)), Struct_1(vec4<f32>(1158f, -281f, 250f, -1982f), vec3<u32>(0u, 60275u, 26916u), false, vec2<f32>(-541f, 395f), vec4<u32>(11448u, 49210u, 4294967295u, 0u)), 564f), Struct_2(Struct_1(vec4<f32>(741f, 1172f, 799f, 206f), vec3<u32>(1u, 63251u, 4294967295u), true, vec2<f32>(460f, 426f), vec4<u32>(1u, 52144u, 1u, 22481u)), Struct_1(vec4<f32>(-252f, -1727f, 1343f, 1202f), vec3<u32>(0u, 2065u, 76331u), false, vec2<f32>(-553f, -717f), vec4<u32>(4294967295u, 0u, 45681u, 101410u)), 1939f), Struct_2(Struct_1(vec4<f32>(-1034f, 1239f, 800f, 777f), vec3<u32>(35740u, 42619u, 4294967295u), false, vec2<f32>(-1105f, 510f), vec4<u32>(1u, 4294967295u, 1u, 11795u)), Struct_1(vec4<f32>(-1531f, 626f, -1675f, 981f), vec3<u32>(65800u, 25342u, 0u), false, vec2<f32>(-842f, -127f), vec4<u32>(4294967295u, 4294967295u, 1u, 53949u)), -128f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1;
    global0 = array<vec2<u32>, 19>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(var_0.d.x - var_0.a.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.d.x, -320f)), _wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x), true)) - var_0.a.x)));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(trunc(-599f)), select(true, false, arg_1.c)))))), arg_1.a.x, all(vec3<bool>(false, true, true))));
    return var_2;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = vec2<u32>(55422u, ~(~u_input.b.x));
    let var_1 = countOneBits(vec4<u32>(1u, 62471u, _wgslsmith_mult_u32(~firstTrailingBit(0u), ~(~0u)), 9815u));
    var_0 = vec2<u32>(var_0.x | ~(var_1.x >> (0u % 32u)), ~var_1.x);
    let var_2 = arg_0.x;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~u_input.c.x), 27u)];
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(~min(u_input.b, u_input.b), var_3.a, Struct_1(_wgslsmith_f_op_vec4_f32(var_3.b.a + vec4<f32>(arg_0.x, var_2, arg_0.x, arg_0.x)), ~var_3.b.b, !var_3.a.c, vec2<f32>(arg_0.x, 284f), abs(vec4<u32>(var_1.x, var_3.a.b.x, 69180u, var_3.a.e.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_2)), _wgslsmith_f_op_f32(f32(-1f) * -402f))) * -1200f), var_3.a.a.x, var_2), ~vec3<u32>(~firstTrailingBit(var_1.x), var_0.x, var_3.b.b.x), false, arg_0.xw, var_3.b.e);
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 27u)];
    global0 = array<vec2<u32>, 19>();
    global0 = array<vec2<u32>, 19>();
    global1 = array<Struct_2, 27>();
    global0 = array<vec2<u32>, 19>();
    return vec3<u32>(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_sub_u32(~(~u_input.b.x), arg_0.e.x)), _wgslsmith_clamp_u32(var_0.a.b.x, 1502u, _wgslsmith_mod_u32(var_0.b.e.x, _wgslsmith_dot_vec3_u32(var_0.a.b >> (vec3<u32>(arg_0.b.x, 4294967295u, arg_0.b.x) % vec3<u32>(32u)), var_0.a.b))), 0u);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    global0 = array<vec2<u32>, 19>();
    global1 = array<Struct_2, 27>();
    let var_0 = u_input.d.wy;
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    return Struct_3(0i, 1u, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.a.x + -1598f) + _wgslsmith_f_op_f32(-arg_0.c.a.x)), _wgslsmith_f_op_f32(select(-920f, arg_0.c.a.x, all(vec3<bool>(arg_0.c.c, false, false)))), 1209f, arg_0.c.a.x), _wgslsmith_mult_vec3_u32(u_input.b.wzw, countOneBits(vec3<u32>(28650u, arg_0.e.x, arg_0.b)) | arg_0.c.b), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.d)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-905f, arg_0.c.a.x), vec2<f32>(344f, -210f)))))), ~arg_0.c.e), !(!any(vec2<bool>(true, true))), vec4<u32>(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_div_u32(reverseBits(7179u), _wgslsmith_div_u32(arg_0.e.x, u_input.b.x)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0.e.x, u_input.c.x), 20138u << (arg_0.e.x % 32u), u_input.b.x)), _wgslsmith_div_u32(~(~16764u), u_input.b.x), _wgslsmith_mod_u32(abs(arg_0.b) & u_input.b.x, firstLeadingBit(1u)), ~_wgslsmith_dot_vec4_u32(arg_0.e ^ vec4<u32>(4294967295u, u_input.a, arg_0.b, u_input.a), u_input.b >> (vec4<u32>(55989u, 4294967295u, arg_0.b, arg_0.e.x) % vec4<u32>(32u)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = func_5(Struct_3(arg_0.x, u_input.a, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1531f, -1380f, -776f, 1801f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -660f, 327f, -1383f)), !arg_1)), func_4(func_2(vec4<f32>(-1642f, 511f, -1410f, -749f))), !arg_1, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-119f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1678f, -1372f)), arg_1 && arg_1)), ~(vec4<u32>(4294967295u, u_input.c.x, 51997u, u_input.b.x) << (vec4<u32>(u_input.c.x, u_input.c.x, 41788u, u_input.b.x) % vec4<u32>(32u)))), any(vec3<bool>(!arg_1, any(vec4<bool>(false, arg_1, true, false)), true)), vec4<u32>(~(~14887u), _wgslsmith_div_u32(~1u, 1u), _wgslsmith_mod_u32(u_input.b.x, 33876u), _wgslsmith_sub_u32(u_input.a, u_input.b.x) >> (u_input.c.x % 32u))));
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(507f, var_0.c.a.x, _wgslsmith_f_op_f32(var_0.c.d.x * -804f), _wgslsmith_f_op_f32(abs(var_0.c.d.x)))))), var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2132f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.x * var_0.c.a.x)) * -1007f)));
    let var_2 = var_1.b.a.ww;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_div_f32(var_0.c.d.x, -1173f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.a.x), 1616f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1256f) - 1000f)), var_2.x) + _wgslsmith_f_op_vec3_f32(var_1.b.a.zzw + var_1.b.a.xyy));
    var var_4 = 1u;
    return Struct_2(Struct_1(vec4<f32>(-371f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.x), -120f)), var_1.b.d.x), ~u_input.c, select(!(!var_1.a.c), true, var_1.a.c), var_1.a.d, var_1.a.e), var_1.a, 1612f);
}

fn func_6(arg_0: Struct_2) -> vec4<u32> {
    global1 = array<Struct_2, 27>();
    let var_0 = func_5(func_5(func_5(Struct_3(7025i, _wgslsmith_dot_vec3_u32(u_input.b.zzx, u_input.b.yzz), Struct_1(vec4<f32>(595f, arg_0.a.a.x, 1226f, -753f), u_input.c, arg_0.b.c, vec2<f32>(-278f, 222f), vec4<u32>(0u, u_input.a, u_input.a, arg_0.a.b.x)), false, vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.c.x)))));
    global0 = array<vec2<u32>, 19>();
    let var_1 = u_input.d.x;
    global0 = array<vec2<u32>, 19>();
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 27>();
    global0 = array<vec2<u32>, 19>();
    let var_0 = u_input.b >> (_wgslsmith_mod_vec4_u32(func_6(func_1(vec3<i32>(u_input.e, u_input.e, 1305i), true, -u_input.d)), u_input.b | u_input.b) % vec4<u32>(32u));
    var var_1 = false;
    global0 = array<vec2<u32>, 19>();
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f + _wgslsmith_div_f32(-874f, 1452f)) * _wgslsmith_f_op_f32(f32(-1f) * -608f)))));
    var_1 = false;
    var_1 = true;
    let var_3 = ~vec2<u32>(~0u, _wgslsmith_add_u32(var_0.x, 36679u));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d.ww, ~vec2<u32>(min(select(1u, 4294967295u, true), u_input.a), u_input.a), vec3<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(30136i, -23040i) | ~u_input.e), u_input.d.x, 14118i | u_input.d.x));
}

