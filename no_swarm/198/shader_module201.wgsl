struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec4<f32>(-1047f, -1000f, 379f, 1000f), Struct_1(true, 4294967295u), true, -370f), Struct_2(vec4<f32>(-1192f, -627f, -1485f, 374f), Struct_1(false, 4294967295u), false, -1309f), Struct_2(vec4<f32>(-776f, -972f, -1752f, -365f), Struct_1(false, 51890u), true, -1000f), Struct_2(vec4<f32>(-354f, -708f, 1124f, -978f), Struct_1(true, 4294967295u), false, -126f), Struct_2(vec4<f32>(-347f, 966f, 756f, 144f), Struct_1(true, 1u), true, -681f), Struct_2(vec4<f32>(-1353f, -1000f, -559f, 313f), Struct_1(false, 29492u), false, 1720f), Struct_2(vec4<f32>(-708f, 612f, -762f, -1964f), Struct_1(false, 0u), true, -1447f), Struct_2(vec4<f32>(1000f, 1235f, 3338f, -742f), Struct_1(false, 0u), false, -136f), Struct_2(vec4<f32>(760f, 1535f, 545f, -1404f), Struct_1(true, 14790u), true, -623f), Struct_2(vec4<f32>(-297f, 167f, 254f, 725f), Struct_1(true, 0u), false, -631f), Struct_2(vec4<f32>(-1289f, -570f, -1000f, 1058f), Struct_1(false, 31197u), false, 1150f), Struct_2(vec4<f32>(-1150f, 1292f, -156f, -1326f), Struct_1(false, 1u), false, 900f), Struct_2(vec4<f32>(-541f, 1304f, 389f, 1790f), Struct_1(false, 4294967295u), true, 1896f), Struct_2(vec4<f32>(-212f, 558f, -998f, 585f), Struct_1(false, 29664u), true, -1306f), Struct_2(vec4<f32>(-891f, -453f, 1000f, 1301f), Struct_1(false, 8196u), true, -823f), Struct_2(vec4<f32>(635f, 1177f, -784f, -337f), Struct_1(true, 113520u), false, 1000f), Struct_2(vec4<f32>(-602f, 1878f, 874f, 238f), Struct_1(false, 19012u), true, 1429f), Struct_2(vec4<f32>(-177f, -1016f, -182f, -273f), Struct_1(true, 0u), true, 651f), Struct_2(vec4<f32>(385f, -224f, -384f, 316f), Struct_1(false, 4294967295u), false, -847f), Struct_2(vec4<f32>(-712f, -344f, 669f, -478f), Struct_1(true, 4294967295u), true, 1148f), Struct_2(vec4<f32>(-1194f, 2277f, -1812f, -408f), Struct_1(true, 18413u), false, -660f), Struct_2(vec4<f32>(-475f, -119f, -1347f, -783f), Struct_1(false, 74685u), true, 462f), Struct_2(vec4<f32>(985f, 214f, 1347f, 1655f), Struct_1(true, 0u), true, 667f), Struct_2(vec4<f32>(684f, 332f, -741f, -352f), Struct_1(false, 13485u), true, 1383f), Struct_2(vec4<f32>(-1236f, 363f, -850f, 157f), Struct_1(true, 84536u), false, -1289f), Struct_2(vec4<f32>(653f, 343f, -218f, -1000f), Struct_1(false, 64004u), false, 456f), Struct_2(vec4<f32>(296f, -414f, 271f, -1406f), Struct_1(false, 0u), false, -1336f), Struct_2(vec4<f32>(1986f, 509f, -448f, 1591f), Struct_1(true, 0u), false, 1010f), Struct_2(vec4<f32>(1607f, -691f, 625f, 529f), Struct_1(false, 4294967295u), false, 995f), Struct_2(vec4<f32>(395f, 351f, 1010f, -694f), Struct_1(true, 23519u), true, -1000f), Struct_2(vec4<f32>(-1000f, -1000f, 1024f, -1352f), Struct_1(false, 4294967295u), false, 505f), Struct_2(vec4<f32>(139f, -593f, 1126f, -1552f), Struct_1(false, 4294967295u), true, 1061f));

var<private> global1: array<vec2<bool>, 9>;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(false, 0u), Struct_1(false, 31951u), Struct_1(true, 12363u), Struct_1(false, 18692u), Struct_1(true, 1u), Struct_1(true, 12404u), Struct_1(true, 4294967295u), Struct_1(false, 39783u), Struct_1(false, 0u), Struct_1(false, 20764u));

var<private> global3: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec3<u32>(12508u, 13519u, 36831u), vec4<u32>(29807u, 53280u, 4294967295u, 40847u), vec2<f32>(-777f, 874f), -1126f, vec4<u32>(24413u, 1u, 36821u, 0u)), Struct_3(vec3<u32>(81730u, 46621u, 38430u), vec4<u32>(2390u, 55742u, 30377u, 1u), vec2<f32>(678f, 1546f), 196f, vec4<u32>(4294967295u, 2799u, 34644u, 118523u)), Struct_3(vec3<u32>(0u, 0u, 4294967295u), vec4<u32>(1u, 62277u, 1u, 22158u), vec2<f32>(-270f, 1680f), 787f, vec4<u32>(0u, 1u, 23989u, 0u)), Struct_3(vec3<u32>(1581u, 574u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec2<f32>(1335f, -623f), 577f, vec4<u32>(32231u, 66095u, 0u, 27385u)), Struct_3(vec3<u32>(4294967295u, 0u, 8127u), vec4<u32>(21253u, 1u, 20331u, 83245u), vec2<f32>(-959f, -711f), -834f, vec4<u32>(5906u, 0u, 4294967295u, 40913u)), Struct_3(vec3<u32>(4294967295u, 26177u, 29290u), vec4<u32>(4294967295u, 29686u, 55903u, 4294967295u), vec2<f32>(-1556f, -387f), 170f, vec4<u32>(132909u, 1u, 1u, 0u)), Struct_3(vec3<u32>(38516u, 7176u, 0u), vec4<u32>(69561u, 26602u, 11494u, 1u), vec2<f32>(-241f, 1000f), 797f, vec4<u32>(1u, 29652u, 1u, 65097u)), Struct_3(vec3<u32>(2231u, 0u, 31789u), vec4<u32>(49907u, 46332u, 51u, 54111u), vec2<f32>(-1053f, -546f), 833f, vec4<u32>(0u, 1u, 1u, 42234u)), Struct_3(vec3<u32>(4294967295u, 56006u, 17307u), vec4<u32>(4294967295u, 29817u, 4294967295u, 16027u), vec2<f32>(-1410f, 1304f), -1341f, vec4<u32>(56146u, 26365u, 4294967295u, 41612u)), Struct_3(vec3<u32>(0u, 1u, 86503u), vec4<u32>(6587u, 1u, 52494u, 24632u), vec2<f32>(-1037f, 746f), -1847f, vec4<u32>(20507u, 0u, 4294967295u, 70851u)), Struct_3(vec3<u32>(0u, 0u, 26016u), vec4<u32>(4294967295u, 1180u, 4294967295u, 1u), vec2<f32>(1435f, -430f), 180f, vec4<u32>(1u, 4294967295u, 1u, 0u)), Struct_3(vec3<u32>(4294967295u, 71709u, 3489u), vec4<u32>(0u, 1u, 1u, 1u), vec2<f32>(920f, -1044f), 1000f, vec4<u32>(67143u, 51636u, 1u, 48666u)), Struct_3(vec3<u32>(44637u, 11550u, 4294967295u), vec4<u32>(19426u, 55654u, 4294967295u, 20611u), vec2<f32>(112f, -192f), 2012f, vec4<u32>(0u, 13000u, 1u, 46486u)), Struct_3(vec3<u32>(1u, 4294967295u, 1u), vec4<u32>(1u, 53719u, 5696u, 1u), vec2<f32>(196f, -1085f), -300f, vec4<u32>(1u, 68406u, 43886u, 1u)), Struct_3(vec3<u32>(30661u, 0u, 32961u), vec4<u32>(0u, 0u, 29117u, 63564u), vec2<f32>(424f, -213f), -1472f, vec4<u32>(5155u, 0u, 1517u, 1u)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 34006u), vec4<u32>(64868u, 1u, 0u, 4294967295u), vec2<f32>(-883f, 768f), -766f, vec4<u32>(0u, 4294967295u, 7205u, 4294967295u)), Struct_3(vec3<u32>(1u, 4294967295u, 24740u), vec4<u32>(0u, 6921u, 64452u, 1u), vec2<f32>(-1000f, -626f), 175f, vec4<u32>(6454u, 1u, 1u, 4294967295u)), Struct_3(vec3<u32>(75866u, 35327u, 1u), vec4<u32>(12449u, 49186u, 3222u, 0u), vec2<f32>(-1336f, -2380f), -905f, vec4<u32>(55373u, 76004u, 0u, 4294967295u)), Struct_3(vec3<u32>(13964u, 63977u, 26327u), vec4<u32>(24953u, 4294967295u, 0u, 58487u), vec2<f32>(-766f, 275f), 535f, vec4<u32>(114722u, 51364u, 4294967295u, 48970u)), Struct_3(vec3<u32>(33260u, 32604u, 28050u), vec4<u32>(27841u, 0u, 0u, 1u), vec2<f32>(390f, 1055f), -980f, vec4<u32>(51043u, 62781u, 97494u, 49636u)), Struct_3(vec3<u32>(16492u, 103237u, 62547u), vec4<u32>(51408u, 1u, 34104u, 0u), vec2<f32>(-1000f, -765f), 2058f, vec4<u32>(1u, 19304u, 117737u, 0u)), Struct_3(vec3<u32>(53390u, 0u, 1u), vec4<u32>(22480u, 1u, 50601u, 4294967295u), vec2<f32>(-2036f, -831f), 1000f, vec4<u32>(0u, 81245u, 4294967295u, 4294967295u)), Struct_3(vec3<u32>(0u, 1u, 112865u), vec4<u32>(4294967295u, 5418u, 1u, 59132u), vec2<f32>(348f, 718f), 413f, vec4<u32>(4294967295u, 10049u, 1u, 24663u)), Struct_3(vec3<u32>(4294967295u, 18571u, 0u), vec4<u32>(0u, 0u, 31663u, 0u), vec2<f32>(1000f, -547f), 1000f, vec4<u32>(1u, 4294967295u, 4294967295u, 18030u)), Struct_3(vec3<u32>(32741u, 19763u, 17591u), vec4<u32>(58015u, 36654u, 0u, 18640u), vec2<f32>(811f, 1000f), -758f, vec4<u32>(36029u, 40885u, 1u, 36668u)), Struct_3(vec3<u32>(1u, 40590u, 17269u), vec4<u32>(1u, 85832u, 4294967295u, 28152u), vec2<f32>(-1091f, 1092f), 732f, vec4<u32>(40555u, 4294967295u, 1u, 35055u)), Struct_3(vec3<u32>(0u, 115548u, 18604u), vec4<u32>(4294967295u, 40011u, 31866u, 13304u), vec2<f32>(-987f, -1855f), 294f, vec4<u32>(4294967295u, 0u, 69640u, 22022u)), Struct_3(vec3<u32>(7882u, 4294967295u, 967u), vec4<u32>(1u, 52629u, 1u, 1u), vec2<f32>(629f, -830f), -1405f, vec4<u32>(0u, 1u, 0u, 18997u)));

var<private> global4: vec2<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    global2 = array<Struct_1, 10>();
    global0 = array<Struct_2, 32>();
    let var_0 = global0[_wgslsmith_index_u32(arg_3, 32u)];
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.a.d, -569f)), _wgslsmith_f_op_f32(f32(-1f) * -373f));
    let var_2 = ~abs(vec2<u32>(13540u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 17853u), u_input.b.xz)));
    return -1i;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>) -> u32 {
    global3 = array<Struct_3, 28>();
    global0 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(640f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1120f) - _wgslsmith_f_op_f32(ceil(1049f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-690f, 1008f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-134f, -770f), _wgslsmith_div_f32(-265f, 817f), 1511f)))));
    let var_1 = global3[_wgslsmith_index_u32(u_input.b.x, 28u)];
    var var_2 = vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))));
    return ~(~0u);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_4) -> bool {
    let var_0 = arg_2.a.b >> (~_wgslsmith_add_vec4_u32(vec4<u32>(~24878u, arg_2.a.e.x, u_input.b.x & arg_2.a.b.x, arg_2.a.a.x), ~(~vec4<u32>(arg_2.a.b.x, 149u, arg_2.a.b.x, 4294967295u))) % vec4<u32>(32u));
    var var_1 = arg_2.a.d;
    var var_2 = func_4(vec3<bool>(arg_2.a.c.x >= _wgslsmith_f_op_f32(-978f * _wgslsmith_f_op_f32(abs(-667f))), true, !((u_input.a.x >> (1u % 32u)) > _wgslsmith_dot_vec2_i32(u_input.a.wy, u_input.a.yw))), select(vec3<bool>(func_3(global2[_wgslsmith_index_u32(arg_2.a.b.x, 10u)], arg_2, vec4<f32>(-181f, -1000f, arg_2.a.c.x, -190f), u_input.b.x) >= -61599i, arg_1, arg_0), vec3<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(arg_1, arg_0, false)) || !global4.x, any(vec4<bool>(false, arg_1, false, false))), vec3<bool>(true, true, (u_input.b.x != var_0.x) == true)));
    var var_3 = global2[_wgslsmith_index_u32(arg_2.a.e.x, 10u)];
    var var_4 = Struct_3(u_input.b, reverseBits(_wgslsmith_div_vec4_u32(~var_0, var_0) << (firstLeadingBit(firstLeadingBit(var_0)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + arg_2.a.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a.d), arg_2.a.c.x))), arg_2.a.c, vec2<bool>(true, _wgslsmith_div_u32(40428u, 46514u) < arg_2.a.e.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.d - arg_2.a.c.x)), 264f) * arg_2.a.d), _wgslsmith_mod_vec4_u32(~arg_2.a.b, var_0));
    return true;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> f32 {
    var var_0 = firstLeadingBit(_wgslsmith_mult_vec3_u32(abs(select(vec3<u32>(44633u, arg_2.a.x, 76555u), firstTrailingBit(arg_2.b.yzx), func_2(true, true, Struct_4(Struct_3(vec3<u32>(4294967295u, 41538u, u_input.b.x), vec4<u32>(1u, 31706u, 1u, 0u), arg_2.c, 381f, arg_2.e))))), abs(~u_input.b)));
    global4 = !global1[_wgslsmith_index_u32(abs(1799u), 9u)];
    global3 = array<Struct_3, 28>();
    var_0 = u_input.b;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.c.x, arg_1, arg_1, -352f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -219f, arg_2.c.x)))), global2[_wgslsmith_index_u32(23863u, 10u)], 1f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(trunc(arg_2.c.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -341f, -427f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(922f, 1023f, 1002f) * vec3<f32>(1706f, -1384f, 132f)), vec3<f32>(-112f, -1035f, -1830f), select(vec3<bool>(false, global4.x, true), vec3<bool>(false, global4.x, global4.x), vec3<bool>(true, false, false)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1100f), _wgslsmith_f_op_f32(-1795f + 1242f), _wgslsmith_f_op_f32(func_1(u_input.a.x, -1516f, global3[_wgslsmith_index_u32(4294967295u, 28u)]))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, -646f, -131f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(973f, -1373f, -789f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-487f, 145f, 1468f))), vec3<f32>(-919f, -573f, 648f), true))), select(vec3<bool>(global4.x, false, global4.x), !select(vec3<bool>(false, global4.x, true), vec3<bool>(global4.x, global4.x, false), global4.x), !vec3<bool>(true, true, global4.x)))));
    let var_1 = Struct_3(u_input.b, ~min(vec4<u32>(u_input.b.x >> (u_input.b.x % 32u), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 5482u, u_input.b.x, 39309u), vec4<u32>(u_input.b.x, u_input.b.x, 19813u, 0u)), 70328u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(12074u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 1u, 62383u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -428f)), 1419f)), 1928f, ~(~vec4<u32>(_wgslsmith_add_u32(4294967295u, u_input.b.x), 1u, _wgslsmith_div_u32(1u, u_input.b.x), u_input.b.x)));
    let var_2 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(round(var_1.d))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1605f, var_1.d, var_1.d, var_1.c.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 366f, _wgslsmith_f_op_f32(-var_0.x), var_0.x), vec4<bool>(false, true, true, all(vec3<bool>(global4.x, false, global4.x)))))), global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global4.x, 1f);
    global4 = vec2<bool>(var_2.d > var_1.c.x, all(!select(select(global1[_wgslsmith_index_u32(var_1.a.x, 9u)], vec2<bool>(global4.x, global4.x), true), !global1[_wgslsmith_index_u32(var_2.b.b, 9u)], u_input.a.x != 1i)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.x)))) - _wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -119f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(max(var_0.x, var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1156f - _wgslsmith_f_op_f32(f32(-1f) * -336f)) * _wgslsmith_f_op_f32(-var_1.d))));
    let var_4 = Struct_2(vec4<f32>(var_2.d, var_0.x, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_1(i32(-1i) * -1i, _wgslsmith_div_f32(-1321f, 1000f), Struct_3(u_input.b, vec4<u32>(13957u, 1233u, 15160u, 0u), var_2.a.ww, var_0.x, var_1.e)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(757f)))))), Struct_1(false, _wgslsmith_div_u32(_wgslsmith_add_u32(103312u, 61743u) & ~var_2.b.b, var_1.a.x)), select(!var_2.c, !((var_1.e.x > var_2.b.b) | true), var_2.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(331f * 1293f))) + -718f));
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-377f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + var_0.x), -1352f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(710f - -1351f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(u_input.a.x, -1815f, global3[_wgslsmith_index_u32(u_input.b.x, 28u)])), 1f, true)), 1572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-356f, 1173f) * _wgslsmith_f_op_f32(f32(-1f) * -788f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -800f, 1564f, _wgslsmith_f_op_f32(-var_0.x)) - var_4.a)));
    global2 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.wy, ~min(~_wgslsmith_div_i32(-2147483647i, 4981i), reverseBits(u_input.a.x)));
}

