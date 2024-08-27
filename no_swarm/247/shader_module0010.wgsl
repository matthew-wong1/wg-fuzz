struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec2<i32>(-1i, i32(-2147483648)), Struct_1(13269u, -663f, vec2<u32>(12635u, 62775u)), Struct_1(84921u, 2332f, vec2<u32>(0u, 31371u)), Struct_1(4880u, -1398f, vec2<u32>(0u, 63904u))), Struct_2(vec2<i32>(14381i, i32(-2147483648)), Struct_1(40128u, -199f, vec2<u32>(7663u, 6762u)), Struct_1(0u, 324f, vec2<u32>(31994u, 1u)), Struct_1(0u, 554f, vec2<u32>(40591u, 46163u))), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(23804u, 1102f, vec2<u32>(4294967295u, 58119u)), Struct_1(1u, 1782f, vec2<u32>(4886u, 1u)), Struct_1(26074u, 431f, vec2<u32>(1u, 0u))), Struct_2(vec2<i32>(-13019i, -1i), Struct_1(0u, 1230f, vec2<u32>(1u, 98057u)), Struct_1(18378u, 1918f, vec2<u32>(1555u, 93477u)), Struct_1(0u, -380f, vec2<u32>(4294967295u, 35969u))), Struct_2(vec2<i32>(i32(-2147483648), 27415i), Struct_1(5431u, 1000f, vec2<u32>(2369u, 25453u)), Struct_1(4294967295u, 979f, vec2<u32>(0u, 15820u)), Struct_1(0u, -1678f, vec2<u32>(4294967295u, 43145u))), Struct_2(vec2<i32>(11397i, 66253i), Struct_1(1u, 132f, vec2<u32>(17099u, 1u)), Struct_1(2795u, -603f, vec2<u32>(15916u, 68563u)), Struct_1(4294967295u, 2144f, vec2<u32>(27037u, 48776u))), Struct_2(vec2<i32>(2147483647i, -22995i), Struct_1(17733u, -740f, vec2<u32>(32059u, 4294967295u)), Struct_1(64839u, -936f, vec2<u32>(40510u, 1u)), Struct_1(8483u, -148f, vec2<u32>(46140u, 4294967295u))), Struct_2(vec2<i32>(i32(-2147483648), -1i), Struct_1(0u, 1016f, vec2<u32>(73654u, 0u)), Struct_1(47081u, 243f, vec2<u32>(52508u, 6974u)), Struct_1(8296u, 948f, vec2<u32>(4294967295u, 43757u))), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(5714u, 222f, vec2<u32>(6753u, 1u)), Struct_1(1u, -1203f, vec2<u32>(2788u, 0u)), Struct_1(0u, -322f, vec2<u32>(8918u, 48640u))), Struct_2(vec2<i32>(-1i, i32(-2147483648)), Struct_1(4294967295u, -321f, vec2<u32>(4294967295u, 44030u)), Struct_1(59251u, 407f, vec2<u32>(51522u, 37047u)), Struct_1(139710u, 125f, vec2<u32>(49141u, 4294967295u))), Struct_2(vec2<i32>(-2439i, 29791i), Struct_1(66165u, 1000f, vec2<u32>(57746u, 0u)), Struct_1(4294967295u, 639f, vec2<u32>(1u, 87348u)), Struct_1(4294967295u, 1000f, vec2<u32>(4294967295u, 3234u))), Struct_2(vec2<i32>(-1i, 0i), Struct_1(4294967295u, 2337f, vec2<u32>(0u, 0u)), Struct_1(84614u, 1000f, vec2<u32>(0u, 5815u)), Struct_1(17874u, -1113f, vec2<u32>(4294967295u, 36704u))), Struct_2(vec2<i32>(32694i, -48523i), Struct_1(24053u, -472f, vec2<u32>(70252u, 26928u)), Struct_1(0u, 980f, vec2<u32>(18779u, 26923u)), Struct_1(1u, 175f, vec2<u32>(0u, 4294967295u))), Struct_2(vec2<i32>(26934i, 16856i), Struct_1(0u, 683f, vec2<u32>(24312u, 18067u)), Struct_1(1u, -335f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(60258u, 890f, vec2<u32>(35731u, 47466u))), Struct_2(vec2<i32>(0i, -27998i), Struct_1(100498u, 361f, vec2<u32>(2151u, 35008u)), Struct_1(4294967295u, -1342f, vec2<u32>(51049u, 0u)), Struct_1(0u, 482f, vec2<u32>(37525u, 0u))), Struct_2(vec2<i32>(13039i, -22290i), Struct_1(92790u, -235f, vec2<u32>(0u, 2862u)), Struct_1(1u, 823f, vec2<u32>(21573u, 72367u)), Struct_1(1u, 791f, vec2<u32>(48868u, 0u))), Struct_2(vec2<i32>(0i, 30632i), Struct_1(64113u, -1320f, vec2<u32>(0u, 0u)), Struct_1(0u, -489f, vec2<u32>(50046u, 25801u)), Struct_1(4294967295u, -237f, vec2<u32>(0u, 26285u))), Struct_2(vec2<i32>(0i, 50379i), Struct_1(264u, 102f, vec2<u32>(0u, 24656u)), Struct_1(26488u, -1765f, vec2<u32>(0u, 0u)), Struct_1(4294967295u, -262f, vec2<u32>(24316u, 1u))), Struct_2(vec2<i32>(-14229i, 23509i), Struct_1(0u, -355f, vec2<u32>(30141u, 1u)), Struct_1(59512u, -1000f, vec2<u32>(112240u, 18193u)), Struct_1(15980u, -1191f, vec2<u32>(10948u, 4294967295u))), Struct_2(vec2<i32>(i32(-2147483648), -36087i), Struct_1(11964u, 1381f, vec2<u32>(59534u, 14692u)), Struct_1(1u, 978f, vec2<u32>(5053u, 4294967295u)), Struct_1(0u, -654f, vec2<u32>(0u, 9687u))), Struct_2(vec2<i32>(-1i, 2147483647i), Struct_1(17755u, 1073f, vec2<u32>(37616u, 4294967295u)), Struct_1(1u, -593f, vec2<u32>(4294967295u, 67119u)), Struct_1(1050u, -1089f, vec2<u32>(0u, 34337u))), Struct_2(vec2<i32>(9131i, 7524i), Struct_1(13471u, -589f, vec2<u32>(5381u, 0u)), Struct_1(64763u, 1897f, vec2<u32>(19539u, 1u)), Struct_1(29560u, -1657f, vec2<u32>(4294967295u, 88900u))), Struct_2(vec2<i32>(-1i, -7132i), Struct_1(10318u, -1000f, vec2<u32>(4294967295u, 37348u)), Struct_1(73302u, 1615f, vec2<u32>(0u, 0u)), Struct_1(13156u, -1617f, vec2<u32>(4285u, 6167u))), Struct_2(vec2<i32>(0i, 7559i), Struct_1(0u, -1042f, vec2<u32>(38924u, 28208u)), Struct_1(55264u, -251f, vec2<u32>(0u, 20441u)), Struct_1(18977u, -1250f, vec2<u32>(34569u, 26792u))), Struct_2(vec2<i32>(17880i, -1i), Struct_1(0u, 1000f, vec2<u32>(15355u, 174530u)), Struct_1(4294967295u, -1319f, vec2<u32>(0u, 1u)), Struct_1(0u, 699f, vec2<u32>(30459u, 0u))), Struct_2(vec2<i32>(2147483647i, 5278i), Struct_1(0u, 977f, vec2<u32>(29525u, 1u)), Struct_1(0u, 431f, vec2<u32>(34752u, 3381u)), Struct_1(1u, 112f, vec2<u32>(1u, 1u))), Struct_2(vec2<i32>(-36071i, i32(-2147483648)), Struct_1(29697u, -639f, vec2<u32>(0u, 4294967295u)), Struct_1(1u, 178f, vec2<u32>(4294967295u, 0u)), Struct_1(44141u, -395f, vec2<u32>(5164u, 0u))), Struct_2(vec2<i32>(-1i, 1i), Struct_1(97921u, 237f, vec2<u32>(4294967295u, 1u)), Struct_1(0u, 713f, vec2<u32>(1u, 32124u)), Struct_1(13475u, 1000f, vec2<u32>(4294967295u, 32058u))), Struct_2(vec2<i32>(-28192i, 2147483647i), Struct_1(23764u, 271f, vec2<u32>(26292u, 7635u)), Struct_1(10802u, -438f, vec2<u32>(4294967295u, 1u)), Struct_1(1u, 1162f, vec2<u32>(24648u, 49456u))), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(0u, -697f, vec2<u32>(69298u, 24032u)), Struct_1(52215u, 368f, vec2<u32>(0u, 0u)), Struct_1(52288u, 841f, vec2<u32>(1u, 481u))), Struct_2(vec2<i32>(1i, 2147483647i), Struct_1(28236u, 744f, vec2<u32>(67567u, 0u)), Struct_1(9579u, -159f, vec2<u32>(9433u, 1u)), Struct_1(13999u, 1607f, vec2<u32>(40312u, 98198u))), Struct_2(vec2<i32>(i32(-2147483648), -1i), Struct_1(4071u, -366f, vec2<u32>(14132u, 4294967295u)), Struct_1(12016u, -533f, vec2<u32>(90205u, 6425u)), Struct_1(0u, 2601f, vec2<u32>(0u, 71625u))));

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec2<i32>(-36849i, -1i), Struct_1(1u, -458f, vec2<u32>(4677u, 1u)), Struct_1(4294967295u, 823f, vec2<u32>(0u, 0u)), Struct_1(4294967295u, -825f, vec2<u32>(60217u, 0u))), Struct_2(vec2<i32>(i32(-2147483648), -23186i), Struct_1(0u, 1713f, vec2<u32>(1u, 48435u)), Struct_1(21900u, 265f, vec2<u32>(17864u, 20709u)), Struct_1(0u, -1267f, vec2<u32>(1u, 4294967295u))), Struct_2(vec2<i32>(i32(-2147483648), 3869i), Struct_1(18920u, 287f, vec2<u32>(1u, 4294967295u)), Struct_1(1u, 1411f, vec2<u32>(31087u, 58854u)), Struct_1(78164u, 1078f, vec2<u32>(0u, 37397u))), Struct_2(vec2<i32>(38863i, 1i), Struct_1(0u, 1108f, vec2<u32>(0u, 101890u)), Struct_1(0u, -250f, vec2<u32>(0u, 0u)), Struct_1(4294967295u, 960f, vec2<u32>(0u, 28823u))), Struct_2(vec2<i32>(0i, -1i), Struct_1(24186u, 532f, vec2<u32>(82205u, 1u)), Struct_1(44617u, -574f, vec2<u32>(33866u, 6030u)), Struct_1(1u, -964f, vec2<u32>(0u, 4294967295u))), Struct_2(vec2<i32>(6173i, 0i), Struct_1(4294967295u, 1438f, vec2<u32>(0u, 4294967295u)), Struct_1(0u, -859f, vec2<u32>(9949u, 0u)), Struct_1(39431u, 1020f, vec2<u32>(24174u, 4294967295u))), Struct_2(vec2<i32>(-26152i, -7398i), Struct_1(1u, 297f, vec2<u32>(87107u, 1u)), Struct_1(54527u, 1000f, vec2<u32>(1u, 0u)), Struct_1(4294967295u, 287f, vec2<u32>(26198u, 1u))), Struct_2(vec2<i32>(i32(-2147483648), 0i), Struct_1(0u, -1000f, vec2<u32>(4294967295u, 1u)), Struct_1(18426u, -328f, vec2<u32>(4294967295u, 60825u)), Struct_1(54014u, -976f, vec2<u32>(877u, 0u))), Struct_2(vec2<i32>(0i, 1i), Struct_1(0u, -3027f, vec2<u32>(0u, 7633u)), Struct_1(63642u, -809f, vec2<u32>(1u, 24583u)), Struct_1(34756u, 1705f, vec2<u32>(24775u, 36736u))), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(38525u, -616f, vec2<u32>(1u, 1u)), Struct_1(44876u, 423f, vec2<u32>(4294967295u, 1u)), Struct_1(0u, -487f, vec2<u32>(4294967295u, 1u))), Struct_2(vec2<i32>(-6969i, -66277i), Struct_1(0u, 556f, vec2<u32>(0u, 4294967295u)), Struct_1(1u, 1026f, vec2<u32>(1u, 31230u)), Struct_1(0u, -679f, vec2<u32>(1u, 37147u))), Struct_2(vec2<i32>(0i, 11111i), Struct_1(52321u, 1000f, vec2<u32>(2373u, 86307u)), Struct_1(0u, 433f, vec2<u32>(45712u, 31816u)), Struct_1(22518u, 1222f, vec2<u32>(4294967295u, 1311u))), Struct_2(vec2<i32>(37167i, 1i), Struct_1(4294967295u, 1866f, vec2<u32>(34499u, 0u)), Struct_1(64546u, 188f, vec2<u32>(80464u, 37542u)), Struct_1(27437u, -156f, vec2<u32>(0u, 61456u))), Struct_2(vec2<i32>(1i, -1i), Struct_1(27338u, 848f, vec2<u32>(1u, 4294967295u)), Struct_1(107899u, -770f, vec2<u32>(5592u, 0u)), Struct_1(14790u, 510f, vec2<u32>(4294967295u, 0u))), Struct_2(vec2<i32>(-13626i, -1i), Struct_1(1u, 2250f, vec2<u32>(46995u, 33325u)), Struct_1(4294967295u, 359f, vec2<u32>(3601u, 31174u)), Struct_1(29208u, -569f, vec2<u32>(1u, 18040u))), Struct_2(vec2<i32>(i32(-2147483648), -3903i), Struct_1(4294967295u, -257f, vec2<u32>(48778u, 0u)), Struct_1(4294967295u, -328f, vec2<u32>(0u, 81530u)), Struct_1(79866u, -337f, vec2<u32>(64635u, 0u))), Struct_2(vec2<i32>(11156i, 1i), Struct_1(1u, -242f, vec2<u32>(4017u, 28332u)), Struct_1(15505u, -466f, vec2<u32>(16502u, 49993u)), Struct_1(19330u, 1393f, vec2<u32>(1u, 80447u))), Struct_2(vec2<i32>(26066i, 0i), Struct_1(0u, -1000f, vec2<u32>(1u, 7779u)), Struct_1(62623u, -516f, vec2<u32>(4294967295u, 17396u)), Struct_1(29590u, -313f, vec2<u32>(792u, 1u))));

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = 1u;
    var var_1 = ~_wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.c), vec4<i32>(1i, u_input.c.x << (~global2.b.a % 32u), 1i, 11454i));
    let var_2 = arg_3;
    let var_3 = 65704u;
    let var_4 = arg_3.a.x;
    return vec2<i32>(-u_input.a, -18272i);
}

fn func_2(arg_0: Struct_2) -> f32 {
    global0 = array<Struct_2, 32>();
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_dot_vec2_i32(min(func_3(arg_0.a.x, vec4<bool>(false, false, true, true), global2.a.x, Struct_2(u_input.b, Struct_1(arg_0.c.a, arg_0.d.b, vec2<u32>(0u, arg_0.b.a)), Struct_1(global2.c.a, global2.c.b, vec2<u32>(global2.b.c.x, global2.b.c.x)), Struct_1(arg_0.d.a, arg_0.d.b, vec2<u32>(4294967295u, 4294967295u)))), vec2<i32>(arg_0.a.x, 0i)), arg_0.a), global2.a.x), arg_0.d, arg_0.b, Struct_1(~arg_0.c.a, _wgslsmith_f_op_f32(min(-265f, -1306f)), vec2<u32>(~arg_0.c.c.x, arg_0.d.a)));
    var var_1 = 12793u;
    var var_2 = arg_0;
    var_1 = global2.c.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.b)))) - global2.c.b) * _wgslsmith_f_op_f32(f32(-1f) * -761f));
}

fn func_1() -> vec3<f32> {
    let var_0 = vec4<f32>(global2.d.b, 285f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.b, 1000f))), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(4294967295u, 32u)])))), global2.b.b);
    global0 = array<Struct_2, 32>();
    var var_1 = global1[_wgslsmith_index_u32(global2.b.c.x, 18u)];
    var var_2 = var_1.a.x;
    let var_3 = !(!vec4<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false)), true, false, true));
    return var_0.xww;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    global0 = array<Struct_2, 32>();
    var var_0 = global2.a.x;
    global0 = array<Struct_2, 32>();
    global2 = Struct_2(min(global2.a, global2.a), Struct_1(~4294967295u, global2.b.b, abs(abs(~vec2<u32>(8257u, global2.b.c.x)))), Struct_1(~(~arg_2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2071f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b), 845f)), vec2<u32>(arg_1.d.a, ~max(3303u, arg_1.c.c.x))), arg_1.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1())));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(-_wgslsmith_add_vec2_i32(func_4(_wgslsmith_f_op_vec3_f32(func_1()), global0[_wgslsmith_index_u32(~0u, 32u)], Struct_1(global2.d.a, global2.b.b, global2.d.c)), ~vec2<i32>(global2.a.x, -31955i)), global2.d, global2.b, global2.c);
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(max(global2.c.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.c.a, 1u, global2.d.c.x, 0u), vec4<u32>(global2.c.c.x, 0u, 1u, 22566u))), 0u), 32u)];
    global1 = array<Struct_2, 18>();
    let var_1 = Struct_1(global2.d.c.x, -965f, global2.d.c);
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(var_1.c.x << (global2.c.a % 32u), 20861u)), _wgslsmith_f_op_f32(-global2.b.b), abs(var_0.d.c) << (firstLeadingBit(global2.d.c) % vec2<u32>(32u)));
}

