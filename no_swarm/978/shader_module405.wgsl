struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_5, 24> = array<Struct_5, 24>(Struct_5(53422u, true, vec4<i32>(-1918i, 0i, -1503i, 4851i), Struct_1(vec3<f32>(1555f, 384f, -1778f), i32(-2147483648)), 0i), Struct_5(4333u, true, vec4<i32>(1i, -1i, 4282i, 2755i), Struct_1(vec3<f32>(-167f, -167f, -1192f), -861i), -6077i), Struct_5(0u, false, vec4<i32>(13946i, i32(-2147483648), 1i, 23228i), Struct_1(vec3<f32>(206f, -1345f, 455f), 2147483647i), 37839i), Struct_5(0u, true, vec4<i32>(1i, 44593i, 4109i, 0i), Struct_1(vec3<f32>(-978f, -1024f, 892f), -40424i), 62i), Struct_5(0u, true, vec4<i32>(20273i, -7189i, 2147483647i, 20172i), Struct_1(vec3<f32>(179f, 658f, -438f), 0i), 17637i), Struct_5(4294967295u, false, vec4<i32>(17845i, 2147483647i, 2147483647i, 4968i), Struct_1(vec3<f32>(896f, 1693f, -2377f), 0i), -41285i), Struct_5(0u, false, vec4<i32>(2147483647i, 1i, -1i, -35946i), Struct_1(vec3<f32>(443f, -1713f, -839f), 0i), -18077i), Struct_5(57200u, true, vec4<i32>(34998i, i32(-2147483648), -1576i, -1i), Struct_1(vec3<f32>(-406f, -1483f, -244f), 0i), 24350i), Struct_5(63690u, false, vec4<i32>(-1i, -7079i, 17486i, -28424i), Struct_1(vec3<f32>(-494f, -975f, 189f), 1726i), 0i), Struct_5(2254u, true, vec4<i32>(-7113i, -52370i, -1717i, 6011i), Struct_1(vec3<f32>(-210f, 437f, 224f), 2147483647i), 16942i), Struct_5(46523u, false, vec4<i32>(1i, 2147483647i, 47701i, 932i), Struct_1(vec3<f32>(-1127f, -1108f, -1770f), -44315i), -33947i), Struct_5(2669u, false, vec4<i32>(0i, -48610i, -19582i, 1i), Struct_1(vec3<f32>(785f, 789f, 1381f), -56052i), 16361i), Struct_5(113102u, false, vec4<i32>(-1i, 1i, -1i, i32(-2147483648)), Struct_1(vec3<f32>(547f, 994f, -1649f), -39991i), 2147483647i), Struct_5(19942u, false, vec4<i32>(0i, -1350i, 26746i, 5005i), Struct_1(vec3<f32>(104f, -395f, -1616f), -1i), i32(-2147483648)), Struct_5(0u, true, vec4<i32>(15357i, 2147483647i, 0i, -1i), Struct_1(vec3<f32>(-334f, -740f, 1395f), -31082i), 2147483647i), Struct_5(2830u, true, vec4<i32>(11656i, -35575i, 2147483647i, 0i), Struct_1(vec3<f32>(-1368f, 124f, -1888f), -1i), -1i), Struct_5(1u, true, vec4<i32>(18224i, 7302i, 0i, 0i), Struct_1(vec3<f32>(-411f, -299f, -2665f), 2147483647i), -22011i), Struct_5(1u, false, vec4<i32>(-1i, 1i, -26639i, 2147483647i), Struct_1(vec3<f32>(1002f, -365f, -556f), 0i), -1233i), Struct_5(21179u, true, vec4<i32>(0i, 32024i, -9597i, 1i), Struct_1(vec3<f32>(1465f, 240f, -1109f), i32(-2147483648)), i32(-2147483648)), Struct_5(4294967295u, true, vec4<i32>(-1i, 11202i, -1i, 1i), Struct_1(vec3<f32>(849f, 1165f, 1679f), 1i), 0i), Struct_5(17360u, true, vec4<i32>(71578i, 2147483647i, 5967i, 16469i), Struct_1(vec3<f32>(-1563f, 141f, -643f), 5953i), 0i), Struct_5(40350u, true, vec4<i32>(15847i, 52404i, 32055i, 2147483647i), Struct_1(vec3<f32>(-2382f, 112f, 1146f), 0i), 23687i), Struct_5(4294967295u, false, vec4<i32>(1i, 2423i, 51636i, -73356i), Struct_1(vec3<f32>(460f, -1261f, -289f), i32(-2147483648)), i32(-2147483648)), Struct_5(1u, false, vec4<i32>(2147483647i, 53286i, -3884i, 32542i), Struct_1(vec3<f32>(1293f, -313f, -1073f), -15346i), i32(-2147483648)));

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(43325u, Struct_2(vec4<u32>(22980u, 1u, 0u, 4294967295u), -971f, vec3<i32>(2147483647i, -12965i, 1i), Struct_1(vec3<f32>(136f, 163f, 806f), 1i), true), 1u), Struct_3(1104u, Struct_2(vec4<u32>(32386u, 0u, 0u, 4294967295u), 315f, vec3<i32>(0i, i32(-2147483648), 29723i), Struct_1(vec3<f32>(1809f, 817f, 1000f), -1i), true), 0u), Struct_3(1u, Struct_2(vec4<u32>(0u, 4294967295u, 1u, 32199u), -1441f, vec3<i32>(-18899i, -20821i, -3498i), Struct_1(vec3<f32>(-556f, -185f, 1000f), -1i), true), 0u), Struct_3(19936u, Struct_2(vec4<u32>(83396u, 24358u, 75331u, 18576u), -1112f, vec3<i32>(-4003i, 1354i, -55346i), Struct_1(vec3<f32>(-1251f, -949f, 931f), 3140i), true), 1u), Struct_3(0u, Struct_2(vec4<u32>(1u, 80962u, 4294967295u, 66921u), 280f, vec3<i32>(1i, 2147483647i, 3165i), Struct_1(vec3<f32>(-1077f, -730f, 1483f), 1i), false), 8740u), Struct_3(11930u, Struct_2(vec4<u32>(45055u, 1u, 0u, 37003u), 1410f, vec3<i32>(1226i, -20154i, -1i), Struct_1(vec3<f32>(917f, -1997f, 540f), -1i), false), 3634u), Struct_3(1u, Struct_2(vec4<u32>(3744u, 4294967295u, 35811u, 67379u), 1774f, vec3<i32>(-13532i, -1i, 44535i), Struct_1(vec3<f32>(978f, 1000f, -1185f), 40431i), true), 0u), Struct_3(0u, Struct_2(vec4<u32>(110833u, 45765u, 23104u, 0u), -1054f, vec3<i32>(1i, 0i, 0i), Struct_1(vec3<f32>(626f, -2442f, -1000f), 20656i), false), 35449u), Struct_3(0u, Struct_2(vec4<u32>(0u, 1u, 0u, 45823u), -127f, vec3<i32>(0i, -62042i, -17113i), Struct_1(vec3<f32>(246f, 233f, -1000f), 15413i), true), 35595u), Struct_3(64182u, Struct_2(vec4<u32>(1u, 25522u, 99010u, 10051u), -1335f, vec3<i32>(32791i, -17792i, -23422i), Struct_1(vec3<f32>(1341f, 285f, -918f), 0i), false), 67305u), Struct_3(69906u, Struct_2(vec4<u32>(33134u, 29528u, 4294967295u, 4294967295u), -507f, vec3<i32>(-8117i, -11134i, -8394i), Struct_1(vec3<f32>(-1038f, 671f, 742f), i32(-2147483648)), false), 0u), Struct_3(50345u, Struct_2(vec4<u32>(4294967295u, 78997u, 1u, 0u), 356f, vec3<i32>(2147483647i, 1i, 1i), Struct_1(vec3<f32>(251f, 1760f, 1372f), 10640i), false), 1u), Struct_3(0u, Struct_2(vec4<u32>(1u, 4294967295u, 55177u, 4294967295u), -2028f, vec3<i32>(-275i, 31599i, 2147483647i), Struct_1(vec3<f32>(1000f, 1794f, -887f), 2147483647i), true), 33687u), Struct_3(23179u, Struct_2(vec4<u32>(4294967295u, 9811u, 31081u, 33626u), 1000f, vec3<i32>(0i, 87934i, -25848i), Struct_1(vec3<f32>(-1359f, 619f, 480f), 1i), true), 28572u), Struct_3(37171u, Struct_2(vec4<u32>(0u, 0u, 80817u, 2292u), -1618f, vec3<i32>(27565i, 86931i, i32(-2147483648)), Struct_1(vec3<f32>(1190f, 641f, -802f), 0i), true), 33162u), Struct_3(4294967295u, Struct_2(vec4<u32>(0u, 0u, 30621u, 36436u), 1000f, vec3<i32>(i32(-2147483648), -1i, 67489i), Struct_1(vec3<f32>(-1239f, -871f, -310f), 33488i), true), 35912u), Struct_3(34386u, Struct_2(vec4<u32>(2046u, 18082u, 50317u, 49612u), -815f, vec3<i32>(23861i, -1i, 40933i), Struct_1(vec3<f32>(-1917f, -250f, 561f), -1639i), true), 4294967295u), Struct_3(7420u, Struct_2(vec4<u32>(4294967295u, 34194u, 0u, 11067u), -1475f, vec3<i32>(33379i, 2147483647i, i32(-2147483648)), Struct_1(vec3<f32>(-767f, 1000f, -137f), i32(-2147483648)), false), 8464u), Struct_3(31350u, Struct_2(vec4<u32>(4294967295u, 93859u, 0u, 58038u), -1414f, vec3<i32>(0i, 2147483647i, 16152i), Struct_1(vec3<f32>(-119f, 1773f, 709f), 3048i), false), 0u), Struct_3(47604u, Struct_2(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), 772f, vec3<i32>(0i, 26884i, 0i), Struct_1(vec3<f32>(-711f, -842f, -679f), -8347i), true), 12792u), Struct_3(1u, Struct_2(vec4<u32>(1u, 20946u, 17130u, 40205u), 625f, vec3<i32>(1i, i32(-2147483648), -1i), Struct_1(vec3<f32>(-553f, -1642f, 1421f), 1i), true), 2842u));

var<private> global3: i32 = 20737i;

var<private> global4: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> bool {
    let var_0 = Struct_4(-_wgslsmith_dot_vec3_i32(u_input.c, ~(-u_input.c)));
    global1 = array<Struct_5, 24>();
    let var_1 = global2[_wgslsmith_index_u32(~0u, 21u)];
    var var_2 = Struct_1(var_1.b.d.a, -45666i);
    global1 = array<Struct_5, 24>();
    return var_1.b.e;
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(30723u, 21u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f - var_0.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(201f + var_0.b.d.a.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1227f)), _wgslsmith_f_op_f32(max(-1135f, 129f)))))));
    global1 = array<Struct_5, 24>();
    let var_2 = var_0.a;
    let var_3 = !var_0.b.e;
    return _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1465f, -217f), -338f)))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1242f, var_0.b.b))))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: u32) -> bool {
    let var_0 = select(~41956u, abs(24683u) << (firstLeadingBit(37133u) % 32u), func_2());
    var var_1 = 22967u;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-779f)) + arg_1))), 1942f, arg_1));
    let var_3 = _wgslsmith_sub_u32(31168u, _wgslsmith_mod_u32(62840u, ~1u ^ u_input.b));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~(~(-vec4<i32>(-30058i, -2147483647i, -51219i, u_input.c.x))), true)));
    return !((0u < countOneBits(var_3)) & (0i < _wgslsmith_mult_i32(-2147483647i, arg_0 << (arg_2 % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -(~_wgslsmith_dot_vec2_i32(select(u_input.c.zx, reverseBits(vec2<i32>(7339i, u_input.c.x)), func_1(u_input.c.x, 319f, 33868u)), firstTrailingBit(-vec2<i32>(u_input.c.x, u_input.c.x))));
    global2 = array<Struct_3, 21>();
    var var_0 = !(!vec2<bool>(~u_input.b != 4294967295u, any(vec3<bool>(true, true, true))));
    global0 = u_input.a.x;
    let var_1 = min(~(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(34810i, u_input.c.x), u_input.c.x)), 2147483647i);
    global4 = var_0.x & true;
    var var_2 = Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, select(67583u, u_input.a.x, var_0.x), _wgslsmith_clamp_u32(u_input.a.x, u_input.b, u_input.b), u_input.b), ~vec4<u32>(1u, 0u, 12351u, 58976u)) << (~(~vec4<u32>(1u, 4294967295u, 12966u, 25136u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1270f * 1333f) - _wgslsmith_f_op_f32(sign(-1284f))))))), _wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -u_input.c.x, -2147483647i & _wgslsmith_sub_i32(var_1, -1i), 1i), u_input.c >> (~(~vec3<u32>(4294967295u, u_input.b, u_input.b)) % vec3<u32>(32u))), Struct_1(vec3<f32>(345f, _wgslsmith_f_op_f32(trunc(477f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f))), -11116i), u_input.b == reverseBits(12650u));
    var var_3 = 814f;
    let x = u_input.a;
    s_output = StorageBuffer(-49465i);
}

