struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec2<i32>(2147483647i, 0i), Struct_1(1484f, vec3<bool>(true, false, true), 2147483647i, vec3<u32>(1u, 1u, 0u), 0u), vec4<f32>(943f, 473f, 1000f, 1357f), vec3<u32>(70579u, 35433u, 0u)), Struct_2(vec2<i32>(64745i, -1i), Struct_1(398f, vec3<bool>(true, true, true), -6013i, vec3<u32>(4294967295u, 0u, 34667u), 62752u), vec4<f32>(1000f, -1488f, 1648f, -833f), vec3<u32>(1u, 71394u, 0u)), Struct_2(vec2<i32>(-36330i, 46057i), Struct_1(315f, vec3<bool>(true, true, false), -1i, vec3<u32>(0u, 72884u, 0u), 12212u), vec4<f32>(436f, -1000f, -569f, -1972f), vec3<u32>(0u, 0u, 4294967295u)), Struct_2(vec2<i32>(2147483647i, 56933i), Struct_1(205f, vec3<bool>(false, true, true), 41094i, vec3<u32>(20564u, 0u, 33071u), 1u), vec4<f32>(151f, 817f, -1191f, -1406f), vec3<u32>(1u, 19680u, 37363u)), Struct_2(vec2<i32>(-8412i, 35997i), Struct_1(-1000f, vec3<bool>(true, true, true), 2147483647i, vec3<u32>(4294967295u, 47556u, 0u), 1u), vec4<f32>(416f, -987f, 465f, -1000f), vec3<u32>(34000u, 1u, 1u)), Struct_2(vec2<i32>(-48962i, -1i), Struct_1(-707f, vec3<bool>(false, false, false), -13594i, vec3<u32>(44765u, 4294967295u, 1u), 24833u), vec4<f32>(405f, 1695f, 372f, 1310f), vec3<u32>(43559u, 0u, 107568u)), Struct_2(vec2<i32>(22367i, -41653i), Struct_1(456f, vec3<bool>(false, false, true), -42633i, vec3<u32>(4294967295u, 63281u, 17351u), 17690u), vec4<f32>(1000f, -997f, 852f, -1000f), vec3<u32>(41120u, 4294967295u, 1u)), Struct_2(vec2<i32>(-1i, 4461i), Struct_1(-528f, vec3<bool>(false, true, false), 14330i, vec3<u32>(1u, 4294967295u, 1u), 0u), vec4<f32>(1346f, -261f, -623f, -1080f), vec3<u32>(65403u, 1u, 1u)), Struct_2(vec2<i32>(0i, 12671i), Struct_1(266f, vec3<bool>(true, true, false), 1i, vec3<u32>(72973u, 0u, 0u), 0u), vec4<f32>(515f, 369f, -1265f, -684f), vec3<u32>(4294967295u, 4294967295u, 23189u)), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(1000f, vec3<bool>(true, true, true), 12948i, vec3<u32>(55635u, 0u, 90586u), 18282u), vec4<f32>(-649f, -988f, -102f, -612f), vec3<u32>(0u, 0u, 0u)), Struct_2(vec2<i32>(-1i, 5515i), Struct_1(-1705f, vec3<bool>(false, false, true), 39648i, vec3<u32>(1u, 1u, 5351u), 39278u), vec4<f32>(-1000f, -137f, -523f, 1000f), vec3<u32>(4294967295u, 0u, 69313u)), Struct_2(vec2<i32>(-1i, 1i), Struct_1(750f, vec3<bool>(true, true, false), -148i, vec3<u32>(0u, 45678u, 69913u), 31881u), vec4<f32>(-419f, 1000f, 197f, -750f), vec3<u32>(0u, 88952u, 10401u)), Struct_2(vec2<i32>(-1i, i32(-2147483648)), Struct_1(-818f, vec3<bool>(false, true, false), 1i, vec3<u32>(53409u, 23030u, 4294967295u), 14245u), vec4<f32>(644f, -530f, 443f, 1046f), vec3<u32>(43521u, 5949u, 0u)), Struct_2(vec2<i32>(11278i, -53494i), Struct_1(1039f, vec3<bool>(false, true, true), 37427i, vec3<u32>(1736u, 17306u, 4294967295u), 1u), vec4<f32>(430f, -596f, 374f, 222f), vec3<u32>(9247u, 10481u, 1u)), Struct_2(vec2<i32>(53321i, -33428i), Struct_1(565f, vec3<bool>(true, true, true), 19879i, vec3<u32>(33012u, 1u, 55991u), 1u), vec4<f32>(-1000f, 1420f, 539f, -1016f), vec3<u32>(28447u, 62506u, 4294967295u)), Struct_2(vec2<i32>(1i, -44375i), Struct_1(-1000f, vec3<bool>(true, false, false), -17541i, vec3<u32>(1u, 12316u, 0u), 2080u), vec4<f32>(452f, -1900f, -1998f, 136f), vec3<u32>(11310u, 582u, 0u)), Struct_2(vec2<i32>(-13152i, -1i), Struct_1(-257f, vec3<bool>(false, true, true), -38200i, vec3<u32>(27454u, 4782u, 58253u), 0u), vec4<f32>(-1012f, 1386f, 164f, 1000f), vec3<u32>(17762u, 38025u, 4294967295u)), Struct_2(vec2<i32>(-1i, 22421i), Struct_1(1354f, vec3<bool>(true, false, true), 1i, vec3<u32>(1u, 0u, 31929u), 0u), vec4<f32>(1027f, -768f, -1147f, -1090f), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_2(vec2<i32>(-32005i, 66710i), Struct_1(1350f, vec3<bool>(false, true, false), 0i, vec3<u32>(0u, 1u, 22072u), 21082u), vec4<f32>(141f, 577f, -285f, -1000f), vec3<u32>(43572u, 68555u, 0u)), Struct_2(vec2<i32>(-9479i, i32(-2147483648)), Struct_1(1000f, vec3<bool>(false, false, true), 1i, vec3<u32>(4294967295u, 0u, 4590u), 48424u), vec4<f32>(-1302f, -1139f, -890f, -868f), vec3<u32>(1u, 27897u, 116259u)), Struct_2(vec2<i32>(-20285i, -5919i), Struct_1(-791f, vec3<bool>(true, true, true), 2222i, vec3<u32>(0u, 4294967295u, 1u), 1u), vec4<f32>(1378f, 142f, -1449f, 1000f), vec3<u32>(21141u, 42782u, 23971u)), Struct_2(vec2<i32>(19190i, 8636i), Struct_1(-1000f, vec3<bool>(true, true, false), 0i, vec3<u32>(4294967295u, 1u, 77879u), 50984u), vec4<f32>(-558f, -451f, 1279f, 923f), vec3<u32>(4471u, 4294967295u, 4653u)), Struct_2(vec2<i32>(-31746i, 1857i), Struct_1(-194f, vec3<bool>(false, false, true), -5327i, vec3<u32>(8359u, 7846u, 1u), 0u), vec4<f32>(1000f, 676f, -122f, 882f), vec3<u32>(53422u, 0u, 4294967295u)), Struct_2(vec2<i32>(0i, i32(-2147483648)), Struct_1(389f, vec3<bool>(false, true, false), -55641i, vec3<u32>(1u, 0u, 1u), 1u), vec4<f32>(663f, 714f, 920f, -653f), vec3<u32>(0u, 0u, 20811u)), Struct_2(vec2<i32>(2147483647i, -31525i), Struct_1(-1811f, vec3<bool>(true, true, true), 6531i, vec3<u32>(46175u, 6911u, 39738u), 16640u), vec4<f32>(-402f, 193f, -482f, 1000f), vec3<u32>(4294967295u, 48u, 10002u)), Struct_2(vec2<i32>(37466i, -62577i), Struct_1(1586f, vec3<bool>(false, false, false), 21926i, vec3<u32>(1560u, 4294967295u, 26878u), 60880u), vec4<f32>(-1519f, 523f, 600f, -1354f), vec3<u32>(17592u, 11359u, 66287u)), Struct_2(vec2<i32>(i32(-2147483648), 1i), Struct_1(1000f, vec3<bool>(false, false, true), -17299i, vec3<u32>(0u, 4294967295u, 80349u), 4294967295u), vec4<f32>(881f, 1000f, 749f, 570f), vec3<u32>(0u, 23307u, 51413u)), Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(1657f, vec3<bool>(false, true, false), 2147483647i, vec3<u32>(0u, 9193u, 0u), 4294967295u), vec4<f32>(172f, -649f, -138f, -288f), vec3<u32>(21991u, 74650u, 0u)), Struct_2(vec2<i32>(-9283i, i32(-2147483648)), Struct_1(-979f, vec3<bool>(false, false, false), -67369i, vec3<u32>(4294967295u, 10705u, 55733u), 4294967295u), vec4<f32>(2058f, 1000f, 195f, -880f), vec3<u32>(4294967295u, 15779u, 1u)));

var<private> global2: vec3<bool>;

var<private> global3: Struct_4;

var<private> global4: Struct_3 = Struct_3(Struct_1(-766f, vec3<bool>(false, false, false), 2147483647i, vec3<u32>(0u, 0u, 1u), 4294967295u), true, vec3<bool>(false, false, true), vec3<u32>(52505u, 80546u, 5516u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> i32 {
    var var_0 = 36227u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global3.d.x), select(!select(select(vec3<bool>(false, false, true), global4.a.b, arg_0), vec3<bool>(true, false, arg_0), global4.b), select(select(vec3<bool>(global4.a.b.x, true, false), vec3<bool>(global2.x, arg_0, true), !global0.a.b), global0.c, true), false), arg_2.a.c, u_input.d, global0.d.x);
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.a + -698f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.a) + _wgslsmith_f_op_f32(floor(global3.c))))), vec3<bool>(firstTrailingBit(reverseBits(global4.a.c)) < (i32(-1i) * -47012i), true, ~firstTrailingBit(global4.d.x) == ~(~3885u)), arg_2.a.c & 1i, abs(u_input.d & abs(vec3<u32>(global4.a.e, 0u, arg_2.a.d.x))) ^ select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.d.x, 0u, 31316u, arg_2.d.x), vec4<u32>(55063u, u_input.d.x, 37766u, 47920u)), 4294967295u, arg_2.a.d.x), vec3<u32>(u_input.d.x, var_1.d.x << (4294967295u % 32u), u_input.d.x), false), ~global0.a.e & global4.a.e);
    return -19394i;
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(-14712i | global0.a.c, func_3(!global0.c.x, 271f, Struct_3(Struct_1(global4.a.a, vec3<bool>(global4.c.x, true, false), global4.a.c, vec3<u32>(28531u, 1u, 37125u), global0.a.d.x), true, global4.c, global0.d), _wgslsmith_f_op_f32(f32(-1f) * -210f))), u_input.c), Struct_1(global3.c, global0.c, ~global4.a.c, firstLeadingBit(global0.d), u_input.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(932f, global0.a.a, 1695f, global3.d.x))), vec4<f32>(-510f, -376f, global4.a.a, global0.a.a)))) * vec4<f32>(1510f, arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1352f), _wgslsmith_div_f32(global4.a.a, global0.a.a))), _wgslsmith_div_f32(-1404f, _wgslsmith_f_op_f32(select(global0.a.a, -255f, global0.c.x))))), u_input.d);
    let var_1 = 17137u;
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(max(global3.d, var_0.c.yz)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.c.wyz, vec3<f32>(-482f, global3.d.x, global3.b.x))) + _wgslsmith_f_op_vec3_f32(-global3.b)))), global0.a.a, _wgslsmith_f_op_vec2_f32(abs(var_0.c.wz)));
    let var_3 = Struct_3(var_0.b, !global4.a.b.x, global0.c, select(~(global0.d ^ abs(u_input.d)), firstLeadingBit(global4.a.d), all(select(vec4<bool>(global2.x, true, global4.b, false), vec4<bool>(false, true, global2.x, false), global2.x)) & global4.b));
    var var_4 = firstLeadingBit(-(~(-vec3<i32>(-2147483647i, -1i, global4.a.c))));
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.c.wy)) - _wgslsmith_f_op_vec2_f32(max(var_2.d, vec2<f32>(var_2.b.x, var_2.d.x)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(var_0.c.xwx)))))), _wgslsmith_f_op_f32(f32(-1f) * -1661f), var_2.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.d.x), 850f), vec3<bool>(!all(select(vec3<bool>(true, true, arg_3.b.x), vec3<bool>(true, false, global0.a.b.x), arg_3.b.x)), global2.x, all(select(!vec4<bool>(true, global0.c.x, arg_3.b.x, false), select(vec4<bool>(global4.c.x, true, global0.a.b.x, false), vec4<bool>(global0.a.b.x, global0.b, false, global2.x), vec4<bool>(global0.b, arg_3.b.x, global4.a.b.x, true)), select(vec4<bool>(arg_3.b.x, true, false, false), vec4<bool>(false, true, false, global0.b), global4.c.x)))), arg_0.x, ~global4.d, global4.a.e);
    global4 = Struct_3(Struct_1(1540f, global0.c, -2147483647i, ~countOneBits(u_input.d), ~36180u), true, select(!select(vec3<bool>(true, true, global0.a.b.x), vec3<bool>(global2.x, false, global0.a.b.x), 0i != arg_0.x), vec3<bool>(global4.b, !global0.a.b.x, global2.x), select(!global4.a.b, select(select(arg_3.b, arg_3.b, vec3<bool>(false, true, var_0.b.x)), global0.a.b, !arg_3.b), false)), ~u_input.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(564f, _wgslsmith_f_op_f32(sign(global4.a.a)), -108f, global3.a.x)));
    global2 = !vec3<bool>(all(select(select(global2.xy, arg_3.b.xz, vec2<bool>(false, true)), global4.a.b.yz, var_0.c < global4.a.c)), select(global0.a.b.x, any(select(vec4<bool>(false, global2.x, false, global0.c.x), vec4<bool>(true, arg_3.b.x, true, var_0.b.x), vec4<bool>(global0.a.b.x, arg_3.b.x, false, true))), true), true);
    global2 = !(!(!var_0.b));
    return !(!select(!(!vec4<bool>(var_0.b.x, true, true, false)), !(!vec4<bool>(true, false, global0.c.x, global2.x)), !vec4<bool>(false, global2.x, global2.x, global2.x)));
}

fn func_5(arg_0: f32, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(-1000f, vec3<bool>(global2.x == global2.x, false, all(!arg_1)), firstLeadingBit(global4.a.c), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 68459u, 44507u), vec3<u32>(u_input.d.x, 1u, 27097u)), (global4.d.x << (38830u % 32u)) >> (5079u % 32u)), global0.c.x, !vec3<bool>(global0.c.x, (true || global0.c.x) || global2.x, any(vec3<bool>(true, global2.x, false))), _wgslsmith_mult_vec3_u32(global4.a.d, ~vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.d.x), global4.a.d), 10089u)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1195f, 1f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global4.a.a)), 2327f))) * _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.a)) - -586f)))), 1388f);
    global3 = Struct_4(global3.b.yy, vec3<f32>(global3.d.x, global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_div_f32(arg_0, 555f)) * global3.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global4.a.a)))), global3.a);
    var var_2 = -_wgslsmith_mult_vec4_i32(-vec4<i32>(-1i >> (0u % 32u), 0i, global4.a.c, -var_0.a.c), ~(~vec4<i32>(-1i, 32424i, global0.a.c, 14496i) | vec4<i32>(-1i, var_0.a.c, -1i, u_input.c.x)));
    let var_3 = func_4(~(vec4<i32>(func_3(global0.b, 714f, var_0, -116f), -global4.a.c, func_3(arg_1.x, -204f, Struct_3(global0.a, var_0.c.x, vec3<bool>(global2.x, global4.b, false), vec3<u32>(u_input.d.x, 37631u, 7519u)), -558f), _wgslsmith_mod_i32(41315i, 1i)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, global0.a.e), vec4<u32>(1u, u_input.d.x, global0.d.x, 4294967295u)) % vec4<u32>(32u))), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.a + 2157f) - global0.a.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.a - -270f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global0.a.a)), _wgslsmith_f_op_f32(abs(-1820f)), -1000f)), _wgslsmith_f_op_f32(var_0.a.a - _wgslsmith_f_op_f32(353f + var_0.a.a)), vec2<f32>(var_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -637f))), abs(firstLeadingBit(var_0.a.d)), Struct_1(_wgslsmith_div_f32(global4.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) - _wgslsmith_f_op_f32(f32(-1f) * -1371f))), vec3<bool>(any(vec2<bool>(true, true)), global2.x, func_4(~vec4<i32>(var_0.a.c, 6431i, var_2.x, 944i), func_2(var_0.a.a), firstTrailingBit(global4.d), Struct_1(-785f, vec3<bool>(var_0.a.b.x, arg_1.x, global2.x), global0.a.c, vec3<u32>(1u, 21227u, 1u), global4.d.x)).x), u_input.a, min(global0.a.d, var_0.d), _wgslsmith_add_u32(~global4.d.x | _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, 1811u), vec2<u32>(var_0.d.x, u_input.d.x)), countOneBits(_wgslsmith_sub_u32(global0.a.d.x, global0.a.d.x))))).zxz;
    return var_0;
}

fn func_1() -> bool {
    var var_0 = func_5(450f, !select(func_4(-vec4<i32>(-1796i, u_input.b, 68202i, 2147483647i), func_2(global0.a.a), ~vec3<u32>(global0.a.d.x, u_input.d.x, u_input.d.x), Struct_1(global3.d.x, vec3<bool>(true, false, true), -2147483647i, u_input.d, global4.a.d.x)), !vec4<bool>(global2.x, global0.c.x, global4.a.b.x, global0.a.b.x), !vec4<bool>(false, false, global2.x, false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1283f, -999f, _wgslsmith_f_op_f32(max(-115f, global3.b.x)), global4.a.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, 291f, 2783f, global0.a.a)) * vec4<f32>(global0.a.a, -638f, global4.a.a, 246f))))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(-global3.c), global0.a.a, var_0.a.a);
    global2 = vec3<bool>(func_5(_wgslsmith_f_op_f32(var_1.x + 434f), !(!vec4<bool>(global4.a.b.x, true, global2.x, false))).c.x, global4.c.x, all(vec3<bool>(!(!global4.c.x), global2.x, global0.c.x)));
    return func_4(~(-vec4<i32>(-var_0.a.c, -12895i, 2147483647i >> (global4.d.x % 32u), u_input.c.x)), Struct_4(_wgslsmith_f_op_vec2_f32(exp2(global3.a)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-293f, 929f)), 159f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a * 335f) + _wgslsmith_f_op_f32(exp2(var_0.a.a)))), _wgslsmith_f_op_f32(round(-1100f)), var_2.yz), vec3<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.d.x, 1u, 4294967295u, global4.d.x)), ~vec4<u32>(global4.d.x, 15749u, var_0.d.x, 9183u)) | u_input.d.x, _wgslsmith_div_u32(u_input.d.x, abs(~8292u))), Struct_1(global3.d.x, var_0.c, _wgslsmith_add_i32(-2147483647i, ~(~u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, max(global4.d.x, var_0.a.e), _wgslsmith_clamp_u32(18602u, var_0.d.x, 1u)), global4.d, global4.d), _wgslsmith_clamp_u32(global0.d.x, var_0.d.x, var_0.d.x << (_wgslsmith_clamp_u32(global0.d.x, 64496u, global0.d.x) % 32u)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, global4.b, false, true);
    global4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1738f) + _wgslsmith_f_op_f32(max(global0.a.a, global4.a.a)))), global4.c, abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -44563i, global0.a.c), vec3<i32>(u_input.a, global4.a.c, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, global0.a.c, global4.a.c), vec3<i32>(global4.a.c, global0.a.c, -12063i)))), global4.d, 0u), global0.c.x, select(select(!vec3<bool>(true, false, global0.c.x), vec3<bool>(func_1(), global4.a.b.x, false), func_5(global0.a.a, vec4<bool>(true, true, true, true)).a.b), select(!func_5(global4.a.a, vec4<bool>(global0.b, global0.c.x, true, false)).a.b, vec3<bool>(true, true, false), vec3<bool>(all(vec4<bool>(global4.c.x, true, global2.x, true)), true, -857f > global3.b.x)), true), vec3<u32>(74023u, ~0u, abs(_wgslsmith_add_u32(~8121u, _wgslsmith_add_u32(global4.d.x, global4.d.x)))));
    let var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~4294967295u, global0.a.e), ~select(global0.a.d.yz, global4.a.d.yy, var_0.x)), ~(vec2<u32>(0u, 4294967295u) & (vec2<u32>(0u, 29808u) ^ vec2<u32>(u_input.d.x, u_input.d.x))), global0.a.d.xz) & u_input.d.xz;
    let var_2 = Struct_4(global3.d, _wgslsmith_f_op_vec3_f32(global3.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(681f, -937f, 1231f) + vec3<f32>(global0.a.a, -550f, 1776f)) + global3.b) * func_2(242f).b)), _wgslsmith_f_op_f32(max(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.a.a + global0.a.a)))).a.x, -423f)), global3.b.xx);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-1374f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(916f + global4.a.a)) + 1489f)), func_5(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-global4.a.a)).c + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -697f)))), vec4<bool>(true, !var_0.x, func_4(vec4<i32>(-2147483647i, -1i, global4.a.c, global0.a.c), Struct_4(var_2.d, vec3<f32>(global4.a.a, 438f, global4.a.a), 490f, vec2<f32>(global3.c, global0.a.a)), u_input.d, global4.a).x | any(global4.c), func_1())).c, -2147483647i, global4.d, (101460u & var_1.x) | max(~(~global4.a.e), ~1u));
    let var_4 = all(!func_5(_wgslsmith_f_op_f32(f32(-1f) * -1146f), func_4(vec4<i32>(u_input.a, global0.a.c, 34812i, -2147483647i), func_2(-301f), ~vec3<u32>(0u, var_1.x, global0.d.x), Struct_1(-929f, global4.a.b, 1i, global4.d, u_input.d.x))).a.b);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i ^ -u_input.b, vec3<i32>(-39076i, var_3.c, countOneBits(i32(-1i) * -48990i)), ~(vec4<u32>(~var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(64879u, global4.d.x)), u_input.d.x, 4294967295u) & (vec4<u32>(79667u, var_1.x, global4.d.x, 4294967295u) << ((vec4<u32>(u_input.d.x, u_input.d.x, global0.a.d.x, global4.d.x) >> (vec4<u32>(global0.a.e, var_3.e, global4.a.d.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
}

