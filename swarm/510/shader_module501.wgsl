struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(Struct_2(Struct_1(vec4<f32>(1000f, -1504f, -704f, -1101f), false, vec4<i32>(-25997i, -7569i, -3050i, 2147483647i))), 48243u, 1i, Struct_1(vec4<f32>(1000f, -366f, 1379f, 196f), true, vec4<i32>(31026i, i32(-2147483648), -46550i, 2147483647i))), Struct_4(Struct_2(Struct_1(vec4<f32>(297f, -602f, -112f, 2313f), false, vec4<i32>(-1i, i32(-2147483648), -7764i, 44040i))), 26151u, -1i, Struct_1(vec4<f32>(-249f, -792f, 1000f, 523f), true, vec4<i32>(2147483647i, 1649i, 0i, i32(-2147483648)))), Struct_4(Struct_2(Struct_1(vec4<f32>(-411f, -884f, -283f, 105f), false, vec4<i32>(2147483647i, 2147483647i, 1i, 1i))), 30444u, -44139i, Struct_1(vec4<f32>(-690f, -1313f, -356f, 1645f), false, vec4<i32>(2147483647i, -25773i, 2147483647i, -1i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-810f, -601f, 1268f, 1333f), true, vec4<i32>(13190i, -1i, 39576i, -14212i))), 1u, -12327i, Struct_1(vec4<f32>(-176f, -1168f, -184f, -2364f), false, vec4<i32>(0i, -32682i, i32(-2147483648), 12141i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-1620f, 1754f, -1264f, 770f), true, vec4<i32>(i32(-2147483648), -1i, 0i, 0i))), 46829u, -1i, Struct_1(vec4<f32>(-675f, -657f, -579f, -1421f), false, vec4<i32>(27622i, 1i, 1i, 1i))), Struct_4(Struct_2(Struct_1(vec4<f32>(566f, -1000f, 957f, -825f), false, vec4<i32>(2147483647i, 823i, -376i, -28887i))), 19841u, 2147483647i, Struct_1(vec4<f32>(1279f, -832f, -216f, -691f), true, vec4<i32>(i32(-2147483648), 2205i, -1i, 21375i))), Struct_4(Struct_2(Struct_1(vec4<f32>(512f, 445f, -790f, -1089f), true, vec4<i32>(-26007i, -55916i, 1i, 0i))), 2624u, 724i, Struct_1(vec4<f32>(-433f, -176f, 1434f, -233f), false, vec4<i32>(2147483647i, 53894i, 0i, 31308i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-981f, -578f, -620f, 1400f), true, vec4<i32>(1i, -1i, i32(-2147483648), 1i))), 119552u, -45453i, Struct_1(vec4<f32>(1697f, 107f, 1000f, 209f), false, vec4<i32>(-56156i, i32(-2147483648), -46143i, -1i))), Struct_4(Struct_2(Struct_1(vec4<f32>(585f, -744f, 121f, 496f), true, vec4<i32>(i32(-2147483648), 1i, -40126i, 50775i))), 4294967295u, 1i, Struct_1(vec4<f32>(-1430f, -223f, -516f, -689f), true, vec4<i32>(-30520i, -7800i, -1i, -1i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-661f, -2448f, 873f, -1006f), true, vec4<i32>(2147483647i, -77694i, -1i, 1i))), 0u, i32(-2147483648), Struct_1(vec4<f32>(172f, -318f, 359f, -624f), true, vec4<i32>(70984i, 44092i, 29639i, -1i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-205f, -3007f, 1389f, 518f), false, vec4<i32>(-19508i, 1i, 29586i, 38472i))), 10196u, 43171i, Struct_1(vec4<f32>(773f, -1000f, 240f, -1840f), true, vec4<i32>(i32(-2147483648), 1i, -37662i, -2061i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-925f, 1000f, 843f, -1000f), false, vec4<i32>(1i, 1i, -1i, -40501i))), 41169u, 2147483647i, Struct_1(vec4<f32>(1000f, 501f, -1030f, -1979f), false, vec4<i32>(-4371i, -48298i, i32(-2147483648), 7630i))), Struct_4(Struct_2(Struct_1(vec4<f32>(718f, 408f, -988f, -388f), true, vec4<i32>(2147483647i, -8154i, 0i, -1i))), 4294967295u, 1i, Struct_1(vec4<f32>(-534f, -849f, 1893f, 411f), true, vec4<i32>(i32(-2147483648), -1i, 8766i, -6419i))));

var<private> global1: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(Struct_2(Struct_1(vec4<f32>(1378f, -125f, 2009f, 903f), true, vec4<i32>(-6146i, i32(-2147483648), i32(-2147483648), -375i))), 51278u, 48405i, Struct_1(vec4<f32>(-1290f, 2042f, 361f, -396f), true, vec4<i32>(1i, 33513i, 1i, 0i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-404f, 810f, 1000f, -432f), false, vec4<i32>(2147483647i, -9212i, i32(-2147483648), -27309i))), 74857u, 14640i, Struct_1(vec4<f32>(401f, 478f, -418f, -209f), true, vec4<i32>(2147483647i, -18664i, 0i, -1i))), Struct_4(Struct_2(Struct_1(vec4<f32>(160f, 510f, 1000f, 2298f), false, vec4<i32>(59391i, 34663i, 1i, 1i))), 46204u, -11600i, Struct_1(vec4<f32>(-2068f, 210f, -423f, 729f), true, vec4<i32>(2147483647i, 22867i, i32(-2147483648), 2147483647i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-1000f, -764f, 266f, -2292f), false, vec4<i32>(-68934i, -7102i, -9878i, 0i))), 0u, 0i, Struct_1(vec4<f32>(1484f, -602f, 1376f, 1297f), false, vec4<i32>(53674i, -29297i, -77492i, 1i))), Struct_4(Struct_2(Struct_1(vec4<f32>(2385f, 319f, -218f, -440f), false, vec4<i32>(41777i, -1i, -10859i, 5844i))), 0u, 0i, Struct_1(vec4<f32>(-122f, -305f, 729f, -2448f), false, vec4<i32>(i32(-2147483648), i32(-2147483648), 11755i, 2147483647i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-285f, 1966f, -573f, 1480f), false, vec4<i32>(-39322i, 1i, 42894i, -60598i))), 1u, -7164i, Struct_1(vec4<f32>(184f, 166f, -1156f, 1000f), true, vec4<i32>(42651i, 1i, 21649i, 4867i))), Struct_4(Struct_2(Struct_1(vec4<f32>(899f, 580f, 1064f, 355f), true, vec4<i32>(-7892i, -1i, -1394i, i32(-2147483648)))), 1u, -1i, Struct_1(vec4<f32>(-1371f, -1297f, -1043f, 2304f), false, vec4<i32>(-1i, 28430i, 0i, 1i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-392f, 847f, 1081f, 1000f), false, vec4<i32>(6596i, 2147483647i, -8276i, 37608i))), 1u, 2147483647i, Struct_1(vec4<f32>(1560f, -1377f, -530f, 309f), false, vec4<i32>(20148i, 31563i, -20417i, 2147483647i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-880f, 518f, 1708f, -1830f), true, vec4<i32>(1i, 5557i, -7609i, 0i))), 4294967295u, -1i, Struct_1(vec4<f32>(-119f, 646f, -1804f, -1238f), true, vec4<i32>(i32(-2147483648), -15427i, -1i, -5457i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-752f, -901f, -851f, -980f), true, vec4<i32>(17088i, 1i, -1i, -2327i))), 4294967295u, i32(-2147483648), Struct_1(vec4<f32>(168f, -262f, -1000f, 1304f), false, vec4<i32>(13676i, 0i, 2147483647i, 36670i))), Struct_4(Struct_2(Struct_1(vec4<f32>(885f, 194f, 401f, -855f), true, vec4<i32>(2147483647i, 32045i, 55371i, 21472i))), 0u, 49324i, Struct_1(vec4<f32>(687f, 861f, 1241f, -2518f), true, vec4<i32>(0i, i32(-2147483648), 1i, -360i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-790f, -317f, -734f, -807f), false, vec4<i32>(-10088i, 7594i, 4891i, 1i))), 7998u, 0i, Struct_1(vec4<f32>(-420f, 746f, 182f, 981f), false, vec4<i32>(2147483647i, 0i, -35880i, 0i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-179f, 948f, 1090f, -252f), false, vec4<i32>(0i, 0i, -30499i, i32(-2147483648)))), 4294967295u, 2147483647i, Struct_1(vec4<f32>(1249f, -1000f, -888f, -903f), true, vec4<i32>(1i, 0i, 2092i, -28950i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-821f, 722f, -468f, -185f), false, vec4<i32>(-1i, 0i, 8009i, 427i))), 77262u, -6014i, Struct_1(vec4<f32>(-758f, 2186f, -706f, 442f), true, vec4<i32>(2147483647i, i32(-2147483648), 16406i, 2147483647i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-1356f, 331f, -257f, -1887f), false, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 1i))), 0u, -16460i, Struct_1(vec4<f32>(1000f, 413f, 1820f, -1277f), false, vec4<i32>(23946i, 45547i, 2147483647i, 6411i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-296f, 1436f, 330f, -186f), true, vec4<i32>(-32030i, 1i, 2147483647i, -1i))), 28175u, 66986i, Struct_1(vec4<f32>(-409f, -1010f, 590f, 290f), true, vec4<i32>(-1i, i32(-2147483648), 0i, -25434i))), Struct_4(Struct_2(Struct_1(vec4<f32>(-1000f, 565f, -390f, -1242f), true, vec4<i32>(-1i, 2147483647i, -8603i, 2147483647i))), 9267u, 2147483647i, Struct_1(vec4<f32>(1000f, 1000f, -1302f, 1173f), true, vec4<i32>(-1i, 11940i, -32809i, -56230i))), Struct_4(Struct_2(Struct_1(vec4<f32>(1253f, -1031f, 1000f, -1000f), true, vec4<i32>(-1i, 0i, i32(-2147483648), 71087i))), 1u, 16784i, Struct_1(vec4<f32>(-528f, 584f, -120f, -715f), true, vec4<i32>(-1i, 2147483647i, 71661i, 0i))), Struct_4(Struct_2(Struct_1(vec4<f32>(1000f, -242f, -789f, -947f), false, vec4<i32>(i32(-2147483648), 38781i, -25338i, -1i))), 4294967295u, -55538i, Struct_1(vec4<f32>(-1048f, 354f, -1591f, 796f), true, vec4<i32>(2147483647i, 21813i, -15383i, 0i))), Struct_4(Struct_2(Struct_1(vec4<f32>(546f, -1693f, 1051f, -728f), false, vec4<i32>(-1i, i32(-2147483648), -68283i, -1i))), 0u, 0i, Struct_1(vec4<f32>(-1435f, 316f, -1302f, 665f), true, vec4<i32>(0i, -9565i, 22426i, 4575i))), Struct_4(Struct_2(Struct_1(vec4<f32>(508f, 204f, -353f, 405f), false, vec4<i32>(3902i, i32(-2147483648), -1i, -72035i))), 37649u, 2147483647i, Struct_1(vec4<f32>(-1436f, 333f, -917f, 1650f), true, vec4<i32>(i32(-2147483648), -5535i, -7986i, 27436i))));

var<private> global2: Struct_3;

var<private> global3: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_mod_i32(i32(-1i) * -u_input.b.x, _wgslsmith_add_i32(u_input.a.x, -1i)) >= -2147483647i;
    var var_1 = arg_0.b;
    let var_2 = -(u_input.b.x << (~_wgslsmith_dot_vec2_u32(global2.b, global2.b) % 32u));
    return ~(_wgslsmith_div_u32(~global2.b.x, _wgslsmith_dot_vec4_u32(abs(u_input.d), _wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, u_input.d))) & ((arg_0.b & ~0u) & arg_0.b));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> i32 {
    global1 = array<Struct_4, 21>();
    return -1i;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(998f, -266f, 821f, global2.c.a.x) - vec4<f32>(global2.c.a.x, -669f, -153f, 2242f))), all(!vec4<bool>(global2.c.b, true, global2.c.b, global2.c.b)), (vec4<i32>(0i, -2147483647i, u_input.b.x, global2.a) | global2.c.c) << (u_input.d % vec4<u32>(32u)))), ~_wgslsmith_div_u32(16344u, _wgslsmith_add_u32(u_input.c, 31036u)), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.c.a.x, -1492f), vec2<f32>(global2.c.a.x, global2.c.a.x))) + vec2<f32>(-770f, global2.c.a.x)), max(0u, func_3(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global2.c.b, global2.c.c.x))), global2.c);
    let var_1 = Struct_2(global2.c);
    var_0 = global1[_wgslsmith_index_u32(~abs(~func_3(Struct_4(Struct_2(global2.c), 4294967295u, -2147483647i, Struct_1(vec4<f32>(global2.c.a.x, -1825f, 206f, 851f), false, u_input.a)), var_1.a.b, var_0.a.a.c.x)), 21u)];
    let var_2 = 0u;
    global2 = Struct_3(~(-1i), min(firstLeadingBit(vec2<u32>(max(u_input.d.x, var_0.b), ~68247u)), countOneBits(~(global2.b << (vec2<u32>(4294967295u, var_2) % vec2<u32>(32u))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.a.x, var_0.a.a.a.x, var_0.a.a.a.x, var_0.a.a.a.x) - var_0.d.a), var_1.a.a, false)) + var_1.a.a), global2.c.b & any(select(vec3<bool>(false, var_0.a.a.b, var_0.a.a.b), vec3<bool>(global2.c.b, var_1.a.b, var_1.a.b), global2.c.b)), var_0.d.c));
    return Struct_3(1i, ~u_input.d.yy, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)), 1524f, _wgslsmith_f_op_f32(-var_1.a.a.x), 383f), true, var_1.a.c));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> Struct_4 {
    global1 = array<Struct_4, 21>();
    global3 = max(1i, -35103i);
    global3 = arg_0.c.c.x;
    var var_0 = func_2();
    let var_1 = abs(u_input.c);
    return global1[_wgslsmith_index_u32(12646u, 21u)];
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_4) -> i32 {
    var var_0 = ~arg_3.b;
    var_0 = _wgslsmith_dot_vec2_u32(arg_0.yz, arg_0.zy);
    return 39180i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 5253i;
    var var_0 = !all(vec3<bool>(select(global2.c.b, global2.c.b, all(vec3<bool>(true, global2.c.b, global2.c.b))), true, global2.c.b));
    global3 = max(_wgslsmith_clamp_i32(firstLeadingBit(u_input.e.x), -func_5(~vec3<u32>(u_input.d.x, global2.b.x, u_input.c), _wgslsmith_div_f32(global2.c.a.x, -1362f), global2.c, func_1(Struct_3(u_input.b.x, vec2<u32>(19471u, global2.b.x), Struct_1(vec4<f32>(global2.c.a.x, global2.c.a.x, 293f, 1000f), false, vec4<i32>(2147483647i, -17104i, 4244i, 40257i))), global2.b.x)), countOneBits(~2147483647i)), -global2.a);
    var var_1 = func_1(Struct_3(u_input.a.x, vec2<u32>(u_input.c, 0u), global2.c), _wgslsmith_mod_u32(func_2().b.x, u_input.c | global2.b.x)).a;
    let var_2 = vec4<bool>(var_1.a.b, !all(vec2<bool>(global2.c.a.x == 576f, var_1.a.b)), false, !global2.c.b);
    global0 = array<Struct_4, 13>();
    var_0 = all(!(!var_2.yzy));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, var_1.a.c, max(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.d.zz), ~vec2<u32>(63399u, global2.b.x)), max(u_input.d.yz, global2.b ^ global2.b), global2.b), u_input.d.wy));
}

