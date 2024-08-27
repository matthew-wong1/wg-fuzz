struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(true, Struct_1(-486f, 846f, vec2<u32>(133629u, 0u), vec2<f32>(410f, 241f), vec4<u32>(4294967295u, 25289u, 0u, 4294967295u)), -1i), Struct_2(true, Struct_1(758f, -281f, vec2<u32>(6177u, 1u), vec2<f32>(-1092f, 1238f), vec4<u32>(1u, 11874u, 28295u, 20798u)), 0i), Struct_2(true, Struct_1(1000f, -319f, vec2<u32>(4294967295u, 23370u), vec2<f32>(109f, -490f), vec4<u32>(2339u, 4294967295u, 0u, 0u)), 0i), Struct_2(false, Struct_1(455f, -735f, vec2<u32>(1u, 0u), vec2<f32>(1840f, 1003f), vec4<u32>(33151u, 0u, 1u, 0u)), 0i), Struct_2(false, Struct_1(-1581f, -1541f, vec2<u32>(13685u, 4294967295u), vec2<f32>(1718f, -467f), vec4<u32>(7386u, 54010u, 1u, 0u)), i32(-2147483648)), Struct_2(true, Struct_1(-1312f, -2369f, vec2<u32>(69562u, 40953u), vec2<f32>(233f, -1187f), vec4<u32>(54879u, 1u, 0u, 3582u)), -1i), Struct_2(false, Struct_1(-1341f, 699f, vec2<u32>(1u, 62770u), vec2<f32>(-1155f, 376f), vec4<u32>(39214u, 64106u, 461u, 51450u)), 74698i), Struct_2(false, Struct_1(-1410f, 271f, vec2<u32>(12434u, 64425u), vec2<f32>(563f, -293f), vec4<u32>(18432u, 0u, 72479u, 107188u)), 2147483647i), Struct_2(false, Struct_1(-861f, -2084f, vec2<u32>(0u, 31691u), vec2<f32>(1000f, 336f), vec4<u32>(25945u, 13781u, 0u, 12186u)), -34284i), Struct_2(false, Struct_1(-587f, 501f, vec2<u32>(0u, 0u), vec2<f32>(321f, 1425f), vec4<u32>(1042u, 1u, 4294967295u, 17006u)), i32(-2147483648)), Struct_2(false, Struct_1(-869f, -910f, vec2<u32>(25082u, 1u), vec2<f32>(-591f, -1610f), vec4<u32>(23579u, 1u, 0u, 1u)), -22001i), Struct_2(true, Struct_1(1811f, -1170f, vec2<u32>(1u, 0u), vec2<f32>(-545f, 465f), vec4<u32>(4294967295u, 4294967295u, 1u, 0u)), 1i), Struct_2(true, Struct_1(674f, 404f, vec2<u32>(0u, 1u), vec2<f32>(149f, -524f), vec4<u32>(42266u, 31298u, 0u, 0u)), 56242i), Struct_2(false, Struct_1(-784f, -1000f, vec2<u32>(18153u, 4294967295u), vec2<f32>(-126f, -1057f), vec4<u32>(74491u, 10120u, 16153u, 0u)), 56410i), Struct_2(false, Struct_1(-1000f, -2121f, vec2<u32>(0u, 4294967295u), vec2<f32>(-1494f, -209f), vec4<u32>(20261u, 43829u, 0u, 43230u)), -31690i), Struct_2(false, Struct_1(-775f, 1683f, vec2<u32>(27981u, 4294967295u), vec2<f32>(1607f, 1540f), vec4<u32>(1u, 34106u, 0u, 75184u)), -2925i), Struct_2(false, Struct_1(577f, -495f, vec2<u32>(0u, 87816u), vec2<f32>(-1113f, -2682f), vec4<u32>(4294967295u, 4044u, 4294967295u, 4294967295u)), -30613i), Struct_2(false, Struct_1(-866f, 532f, vec2<u32>(1u, 4294967295u), vec2<f32>(-621f, -1097f), vec4<u32>(19023u, 4294967295u, 34069u, 88391u)), -1i), Struct_2(true, Struct_1(-1494f, -1393f, vec2<u32>(40190u, 30115u), vec2<f32>(1092f, -1107f), vec4<u32>(37527u, 4294967295u, 32395u, 4294967295u)), -1i), Struct_2(false, Struct_1(-192f, 1447f, vec2<u32>(0u, 22757u), vec2<f32>(1316f, 1117f), vec4<u32>(8209u, 0u, 35805u, 4294967295u)), -4412i), Struct_2(false, Struct_1(-1548f, -201f, vec2<u32>(1u, 24800u), vec2<f32>(1000f, -732f), vec4<u32>(1u, 1u, 29243u, 35397u)), i32(-2147483648)), Struct_2(false, Struct_1(303f, 660f, vec2<u32>(48931u, 0u), vec2<f32>(-721f, -144f), vec4<u32>(4294967295u, 51685u, 0u, 0u)), 2147483647i), Struct_2(true, Struct_1(-143f, -610f, vec2<u32>(35002u, 0u), vec2<f32>(559f, -2162f), vec4<u32>(4294967295u, 19108u, 1u, 4294967295u)), -1i), Struct_2(true, Struct_1(188f, -1521f, vec2<u32>(4294967295u, 43542u), vec2<f32>(956f, -2229f), vec4<u32>(1u, 1u, 4294967295u, 0u)), -1i), Struct_2(false, Struct_1(176f, 1264f, vec2<u32>(11807u, 1u), vec2<f32>(1422f, -1000f), vec4<u32>(24680u, 1u, 26116u, 18188u)), -28507i));

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(1007f, 1000f, vec2<u32>(57883u, 0u), vec2<f32>(-244f, 198f), vec4<u32>(13699u, 15929u, 53163u, 0u)), Struct_1(-436f, -423f, vec2<u32>(82599u, 1u), vec2<f32>(-1666f, -197f), vec4<u32>(0u, 1u, 30287u, 1u)), Struct_1(-1306f, 2445f, vec2<u32>(48624u, 0u), vec2<f32>(-479f, -584f), vec4<u32>(20014u, 4294967295u, 86648u, 1u)), Struct_1(559f, -850f, vec2<u32>(9354u, 1u), vec2<f32>(-213f, 150f), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(-811f, -306f, vec2<u32>(9753u, 4294967295u), vec2<f32>(751f, -115f), vec4<u32>(1u, 0u, 1u, 4294967295u)), Struct_1(-1248f, 814f, vec2<u32>(9302u, 4294967295u), vec2<f32>(-319f, 162f), vec4<u32>(8029u, 1u, 0u, 1u)), Struct_1(109f, -823f, vec2<u32>(4031u, 1u), vec2<f32>(621f, -284f), vec4<u32>(1u, 25511u, 0u, 0u)), Struct_1(-139f, -1086f, vec2<u32>(53517u, 1u), vec2<f32>(160f, -215f), vec4<u32>(1u, 35936u, 0u, 54617u)), Struct_1(754f, 379f, vec2<u32>(41941u, 0u), vec2<f32>(-1000f, -1000f), vec4<u32>(1u, 4294967295u, 0u, 22830u)), Struct_1(-758f, 503f, vec2<u32>(12628u, 0u), vec2<f32>(176f, -1329f), vec4<u32>(63959u, 1u, 18440u, 6102u)), Struct_1(-283f, 281f, vec2<u32>(67166u, 1u), vec2<f32>(1299f, -156f), vec4<u32>(1u, 0u, 7301u, 1u)), Struct_1(484f, -1000f, vec2<u32>(109854u, 45786u), vec2<f32>(630f, 293f), vec4<u32>(0u, 117449u, 95236u, 0u)), Struct_1(1259f, -325f, vec2<u32>(98237u, 57933u), vec2<f32>(1563f, -1095f), vec4<u32>(57825u, 0u, 4294967295u, 38836u)), Struct_1(1083f, 116f, vec2<u32>(13701u, 3094u), vec2<f32>(526f, 3436f), vec4<u32>(101172u, 0u, 32375u, 35909u)), Struct_1(-587f, -777f, vec2<u32>(0u, 0u), vec2<f32>(1183f, -2912f), vec4<u32>(6649u, 23147u, 16273u, 25489u)), Struct_1(-753f, -779f, vec2<u32>(4585u, 14898u), vec2<f32>(156f, -407f), vec4<u32>(70670u, 0u, 34831u, 48390u)), Struct_1(-1846f, 1151f, vec2<u32>(38052u, 1u), vec2<f32>(127f, 771f), vec4<u32>(83570u, 57488u, 63441u, 19816u)), Struct_1(-1000f, -2018f, vec2<u32>(4294967295u, 25095u), vec2<f32>(1000f, 1000f), vec4<u32>(70128u, 64173u, 0u, 66624u)), Struct_1(1722f, -1000f, vec2<u32>(0u, 0u), vec2<f32>(-409f, 1036f), vec4<u32>(1u, 0u, 44434u, 1u)), Struct_1(1354f, -430f, vec2<u32>(1u, 43009u), vec2<f32>(1039f, -676f), vec4<u32>(1u, 31396u, 124230u, 4294967295u)), Struct_1(-1295f, -1367f, vec2<u32>(0u, 26031u), vec2<f32>(-918f, -1000f), vec4<u32>(1u, 23170u, 133u, 13089u)), Struct_1(-162f, -1700f, vec2<u32>(11016u, 0u), vec2<f32>(105f, -1000f), vec4<u32>(43324u, 1466u, 15834u, 0u)), Struct_1(1799f, 626f, vec2<u32>(0u, 62636u), vec2<f32>(1660f, 861f), vec4<u32>(0u, 79986u, 0u, 77854u)), Struct_1(-1415f, -698f, vec2<u32>(65943u, 0u), vec2<f32>(-620f, -362f), vec4<u32>(50212u, 1u, 19553u, 44785u)), Struct_1(-585f, -717f, vec2<u32>(2742u, 84053u), vec2<f32>(625f, -797f), vec4<u32>(1u, 127410u, 0u, 0u)), Struct_1(-214f, 1000f, vec2<u32>(0u, 57910u), vec2<f32>(-2559f, 722f), vec4<u32>(26501u, 4294967295u, 0u, 4294967295u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> bool {
    let var_0 = Struct_4(1u, u_input.b.x);
    let var_1 = abs(-(min(max(1i, -27753i), min(var_0.b, u_input.b.x)) & u_input.b.x));
    global1 = true;
    global2 = array<Struct_1, 26>();
    global2 = array<Struct_1, 26>();
    return !(!(~27012u <= _wgslsmith_mod_u32(4294967295u >> (var_0.a % 32u), u_input.a.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    let var_0 = 1220f;
    let var_1 = abs(-2147483647i) & _wgslsmith_add_i32(abs(-u_input.b.x), i32(-1i) * -u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.c.b, -305f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.b, arg_0.x) + _wgslsmith_f_op_vec2_f32(-arg_0.zy))) + arg_1.c.d)));
    var var_3 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0, vec3<f32>(-1193f, arg_0.x, 445f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, arg_0.x, -1356f), arg_0)))), vec3<f32>(-1354f, 218f, _wgslsmith_f_op_f32(-var_2.x))));
    var var_4 = _wgslsmith_mult_u32(~select(arg_1.b, 4294967295u, true), 1u);
    return arg_1.c.c.x << (arg_1.b % 32u);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> Struct_4 {
    var var_0 = global0[_wgslsmith_index_u32(abs(~(~(~(~u_input.a.x)))), 25u)];
    var var_1 = vec4<bool>(var_0.a, !var_0.a, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1732f, 1626f, -1378f))), Struct_3(~u_input.b.xy, u_input.a.x, Struct_1(-928f, var_0.b.b, vec2<u32>(4294967295u, var_0.b.c.x), var_0.b.d, vec4<u32>(var_0.b.c.x, var_0.b.c.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(min(var_0.b.a, 1000f))), func_3(), select(!arg_0.wz, vec2<bool>(true, arg_0.x), true || arg_0.x)) < abs(~var_0.b.c.x), arg_0.x);
    var var_2 = global0[_wgslsmith_index_u32(select(1u, var_0.b.e.x ^ max(countOneBits(var_0.b.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.b.e.x, 0u, 1u), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, var_0.b.c.x)))), true), 25u)];
    global2 = array<Struct_1, 26>();
    var var_3 = vec4<bool>(var_2.a, true, arg_0.x, 1u <= _wgslsmith_sub_u32(~var_2.b.e.x, u_input.a.x));
    return Struct_4(0u << (u_input.a.x % 32u), var_0.c);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>) -> bool {
    let var_0 = true;
    let var_1 = Struct_4(~_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, ~782u, countOneBits(u_input.a.x))), -_wgslsmith_div_i32(-67518i, arg_0.b));
    var var_2 = Struct_1(-1670f, 1f, vec2<u32>(1u, 21074u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1044f, -2000f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-922f, -839f), vec2<f32>(-1023f, 1794f)))), vec2<f32>(_wgslsmith_f_op_f32(139f + -267f), _wgslsmith_f_op_f32(f32(-1f) * -696f))))), vec4<u32>(39806u, ~55201u, u_input.a.x, arg_0.a | ~firstLeadingBit(var_1.a)));
    let var_3 = vec4<i32>(1i, reverseBits(arg_0.b ^ _wgslsmith_sub_i32(~u_input.b.x, -1i)), _wgslsmith_mod_i32(-arg_0.b, ~1700i), ~var_1.b);
    let var_4 = ~countOneBits(var_1.b);
    return true;
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = max(1u, ~reverseBits(1u));
    var var_1 = global2[_wgslsmith_index_u32(~(var_0 ^ _wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(4294967295u, u_input.a.x)), u_input.a.x)), 26u)];
    var var_2 = firstTrailingBit(vec2<i32>(-16309i, 1i));
    global2 = array<Struct_1, 26>();
    var_2 = reverseBits(countOneBits(u_input.b.yy));
    return func_2(!select(!arg_3, select(!arg_3, !vec4<bool>(arg_2.x, arg_0, arg_0, arg_2.x), all(arg_3.yxy)), false && arg_2.x), _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.xw, abs(vec2<i32>(-1i, var_2.x))), vec2<i32>(1i, 23950i)), var_2.x));
}

fn func_1() -> bool {
    global0 = array<Struct_2, 25>();
    var var_0 = -max(u_input.b.yxy, abs(-vec3<i32>(-2147483647i, u_input.b.x, -19838i) << (u_input.a.zwz % vec3<u32>(32u))));
    let var_1 = func_6(func_5(func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), u_input.b.x), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true)), ~u_input.a.x, vec2<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))))), vec4<bool>(-6666i > ~(var_0.x | u_input.b.x), true, all(vec2<bool>(true, true)) || true, true));
    global0 = array<Struct_2, 25>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(sign(-895f))))))));
    return any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec3<bool>(false, true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true)), vec3<bool>(select(true, true, true), (0i << (u_input.a.x % 32u)) <= -var_0.x, func_5(Struct_4(u_input.a.x, var_1.b), select(vec2<bool>(false, true), vec2<bool>(true, true), true))), vec3<bool>(true, any(vec2<bool>(false, true)), _wgslsmith_sub_u32(var_1.a, u_input.a.x) >= 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 26>();
    var var_0 = select(vec2<bool>(!func_1(), true), vec2<bool>(true, true), (u_input.b.x >> ((55920u & _wgslsmith_mult_u32(1u, u_input.a.x)) % 32u)) <= abs((u_input.b.x & -2147483647i) ^ min(u_input.b.x, -15961i)));
    let var_1 = -1162f;
    let var_2 = firstLeadingBit(u_input.b.x ^ u_input.b.x);
    var_0 = vec2<bool>(var_0.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, var_2, -1i, var_2), vec4<i32>(-8i, var_2, var_2, 36090i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u))) & vec4<i32>(var_2, u_input.b.x & u_input.b.x, ~var_2, u_input.b.x | u_input.b.x)), vec4<i32>(var_2, var_2, 7610i, var_2), max(4294967295u, 93197u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-988f, var_1, _wgslsmith_f_op_f32(-516f * _wgslsmith_f_op_f32(-var_1)))));
}

