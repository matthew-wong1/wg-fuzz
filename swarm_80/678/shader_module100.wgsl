struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(-1657f, vec3<f32>(1398f, -1000f, 2195f), 18815i, vec4<bool>(false, false, true, false)), 26443i, vec4<u32>(0u, 4708u, 40023u, 101578u)), Struct_3(Struct_1(-1222f, vec3<f32>(1730f, 904f, 163f), 0i, vec4<bool>(false, true, true, true)), i32(-2147483648), vec4<u32>(82157u, 21086u, 18263u, 74213u)), Struct_3(Struct_1(359f, vec3<f32>(-527f, -566f, -749f), -7481i, vec4<bool>(true, true, false, true)), 39309i, vec4<u32>(28446u, 0u, 0u, 1u)), Struct_3(Struct_1(-1310f, vec3<f32>(547f, -1653f, -759f), 1i, vec4<bool>(false, true, true, false)), 0i, vec4<u32>(4294967295u, 0u, 30479u, 35227u)), Struct_3(Struct_1(-108f, vec3<f32>(-161f, -582f, 957f), 2147483647i, vec4<bool>(false, true, true, true)), 2147483647i, vec4<u32>(4294967295u, 24035u, 476u, 30135u)), Struct_3(Struct_1(-315f, vec3<f32>(-122f, 457f, 1034f), -32192i, vec4<bool>(true, true, false, true)), 2147483647i, vec4<u32>(4294967295u, 39370u, 0u, 2553u)), Struct_3(Struct_1(1052f, vec3<f32>(-405f, -1051f, 1486f), 33191i, vec4<bool>(true, true, true, true)), -25174i, vec4<u32>(1u, 0u, 16074u, 0u)), Struct_3(Struct_1(294f, vec3<f32>(-342f, -363f, -1259f), 2147483647i, vec4<bool>(true, true, false, true)), -47432i, vec4<u32>(4294967295u, 46579u, 12509u, 2251u)), Struct_3(Struct_1(-390f, vec3<f32>(1000f, 249f, 307f), 0i, vec4<bool>(true, false, false, false)), -15607i, vec4<u32>(60719u, 26762u, 17621u, 4294967295u)), Struct_3(Struct_1(599f, vec3<f32>(215f, -168f, -679f), i32(-2147483648), vec4<bool>(true, false, false, true)), 8355i, vec4<u32>(0u, 7245u, 8186u, 1u)), Struct_3(Struct_1(-259f, vec3<f32>(-1000f, -384f, -1708f), -36097i, vec4<bool>(true, true, false, false)), 1i, vec4<u32>(1u, 4294967295u, 111502u, 62934u)), Struct_3(Struct_1(1342f, vec3<f32>(925f, 136f, 103f), 59633i, vec4<bool>(false, false, true, false)), 2147483647i, vec4<u32>(881u, 28992u, 4294967295u, 0u)), Struct_3(Struct_1(-524f, vec3<f32>(-790f, 148f, -1202f), 40322i, vec4<bool>(true, true, false, true)), 2147483647i, vec4<u32>(1u, 1u, 0u, 4294967295u)), Struct_3(Struct_1(-461f, vec3<f32>(-949f, -1674f, 781f), 36187i, vec4<bool>(false, false, true, false)), -1i, vec4<u32>(4294967295u, 37934u, 4294967295u, 0u)), Struct_3(Struct_1(1928f, vec3<f32>(670f, -927f, 838f), 0i, vec4<bool>(false, false, false, false)), 41816i, vec4<u32>(61808u, 4294967295u, 30394u, 26185u)), Struct_3(Struct_1(-1462f, vec3<f32>(-355f, -325f, 828f), 1i, vec4<bool>(true, true, false, true)), 39481i, vec4<u32>(0u, 1u, 0u, 32337u)), Struct_3(Struct_1(142f, vec3<f32>(791f, -1000f, -859f), 1209i, vec4<bool>(false, true, false, false)), 35745i, vec4<u32>(33767u, 90419u, 2551u, 0u)), Struct_3(Struct_1(-145f, vec3<f32>(1000f, -117f, -2074f), -3166i, vec4<bool>(true, false, true, false)), -1i, vec4<u32>(4294967295u, 92677u, 43156u, 1u)), Struct_3(Struct_1(1949f, vec3<f32>(342f, -1722f, 810f), i32(-2147483648), vec4<bool>(false, false, false, false)), -6569i, vec4<u32>(0u, 12935u, 40838u, 1u)), Struct_3(Struct_1(-325f, vec3<f32>(-310f, -1000f, 149f), 2147483647i, vec4<bool>(false, false, false, false)), 36397i, vec4<u32>(67181u, 88185u, 6966u, 4294967295u)));

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_1(1037f, vec3<f32>(532f, -1001f, -1815f), 6569i, vec4<bool>(false, false, false, false)), 1i, vec4<u32>(30784u, 0u, 23799u, 1u)), Struct_3(Struct_1(1619f, vec3<f32>(2068f, 1547f, -1391f), 36595i, vec4<bool>(true, false, true, false)), 0i, vec4<u32>(16517u, 0u, 4294967295u, 0u)), Struct_3(Struct_1(-1070f, vec3<f32>(-1000f, -2107f, 735f), -18777i, vec4<bool>(false, false, false, true)), 0i, vec4<u32>(3994u, 0u, 36067u, 0u)), Struct_3(Struct_1(-1113f, vec3<f32>(570f, 1099f, -929f), -25227i, vec4<bool>(false, true, false, true)), 47705i, vec4<u32>(1u, 0u, 1u, 3226u)), Struct_3(Struct_1(1545f, vec3<f32>(-631f, 723f, -2081f), 0i, vec4<bool>(true, true, false, true)), i32(-2147483648), vec4<u32>(28456u, 1u, 32271u, 23079u)), Struct_3(Struct_1(1030f, vec3<f32>(-1121f, 354f, 594f), 62755i, vec4<bool>(false, true, true, true)), -3033i, vec4<u32>(12036u, 4294967295u, 1u, 1u)), Struct_3(Struct_1(-1564f, vec3<f32>(162f, 1817f, 1836f), i32(-2147483648), vec4<bool>(false, false, false, true)), -2057i, vec4<u32>(1u, 73435u, 1u, 5994u)), Struct_3(Struct_1(1252f, vec3<f32>(767f, -353f, -466f), 4921i, vec4<bool>(false, true, false, false)), i32(-2147483648), vec4<u32>(1u, 18118u, 40709u, 53074u)), Struct_3(Struct_1(1274f, vec3<f32>(-457f, 1317f, 1000f), 14332i, vec4<bool>(true, true, true, true)), 0i, vec4<u32>(1u, 0u, 1u, 44048u)), Struct_3(Struct_1(-1890f, vec3<f32>(124f, -1265f, -747f), 16412i, vec4<bool>(true, false, false, true)), 2147483647i, vec4<u32>(0u, 51313u, 0u, 1u)), Struct_3(Struct_1(-705f, vec3<f32>(1000f, 1067f, 786f), -34934i, vec4<bool>(true, true, false, false)), -1i, vec4<u32>(1776u, 0u, 4294967295u, 1u)), Struct_3(Struct_1(993f, vec3<f32>(-421f, -653f, -541f), 2147483647i, vec4<bool>(false, false, true, false)), -55172i, vec4<u32>(44537u, 17827u, 1u, 53397u)), Struct_3(Struct_1(1004f, vec3<f32>(-391f, 274f, 950f), -18362i, vec4<bool>(true, false, true, false)), 28786i, vec4<u32>(1u, 0u, 1u, 4294967295u)), Struct_3(Struct_1(140f, vec3<f32>(-1195f, 877f, -269f), i32(-2147483648), vec4<bool>(true, true, false, true)), i32(-2147483648), vec4<u32>(91815u, 35418u, 15653u, 28805u)), Struct_3(Struct_1(940f, vec3<f32>(595f, -446f, -1619f), 2147483647i, vec4<bool>(false, true, true, true)), -12064i, vec4<u32>(4294967295u, 13240u, 0u, 19400u)), Struct_3(Struct_1(-323f, vec3<f32>(479f, 2169f, -165f), 4878i, vec4<bool>(true, true, false, true)), 1i, vec4<u32>(62800u, 62675u, 0u, 1u)), Struct_3(Struct_1(1970f, vec3<f32>(-290f, -332f, 759f), 25774i, vec4<bool>(true, false, false, true)), -34103i, vec4<u32>(1u, 50135u, 19400u, 53235u)), Struct_3(Struct_1(1000f, vec3<f32>(1000f, -925f, -220f), 1i, vec4<bool>(true, true, true, true)), 9255i, vec4<u32>(1u, 1u, 4294967295u, 27872u)), Struct_3(Struct_1(494f, vec3<f32>(-1895f, -171f, -1188f), 2147483647i, vec4<bool>(true, true, true, false)), 4507i, vec4<u32>(43305u, 18077u, 1u, 0u)), Struct_3(Struct_1(2122f, vec3<f32>(-405f, 999f, -989f), 0i, vec4<bool>(false, false, true, false)), 3179i, vec4<u32>(3837u, 10524u, 0u, 1u)), Struct_3(Struct_1(-1301f, vec3<f32>(590f, 343f, 143f), -11560i, vec4<bool>(false, false, true, true)), -38223i, vec4<u32>(1u, 4294967295u, 25252u, 4294967295u)), Struct_3(Struct_1(-485f, vec3<f32>(-468f, -188f, 1363f), -40012i, vec4<bool>(false, false, false, true)), 45029i, vec4<u32>(0u, 0u, 48537u, 4294967295u)), Struct_3(Struct_1(1363f, vec3<f32>(-259f, 1000f, -730f), -39784i, vec4<bool>(false, false, false, true)), 19553i, vec4<u32>(866u, 0u, 15672u, 0u)), Struct_3(Struct_1(-1408f, vec3<f32>(-307f, -1393f, 1044f), i32(-2147483648), vec4<bool>(false, true, true, false)), -1i, vec4<u32>(16932u, 15167u, 0u, 2352u)), Struct_3(Struct_1(-1048f, vec3<f32>(1300f, 1172f, -1283f), -6773i, vec4<bool>(false, false, false, false)), 0i, vec4<u32>(47713u, 99486u, 8703u, 1u)), Struct_3(Struct_1(108f, vec3<f32>(201f, 1355f, 1089f), -11974i, vec4<bool>(true, false, true, false)), 10821i, vec4<u32>(1u, 18942u, 30530u, 4459u)), Struct_3(Struct_1(723f, vec3<f32>(779f, -953f, -273f), 1i, vec4<bool>(true, false, false, true)), -8665i, vec4<u32>(1u, 4294967295u, 21650u, 32894u)), Struct_3(Struct_1(588f, vec3<f32>(1000f, 1000f, -300f), 25214i, vec4<bool>(true, true, false, true)), 1i, vec4<u32>(1u, 36049u, 14004u, 16910u)), Struct_3(Struct_1(-1086f, vec3<f32>(1213f, -228f, 1000f), 37138i, vec4<bool>(false, true, false, false)), 2147483647i, vec4<u32>(24857u, 4294967295u, 5962u, 23209u)), Struct_3(Struct_1(136f, vec3<f32>(423f, 305f, -479f), 1i, vec4<bool>(true, true, true, false)), 1i, vec4<u32>(4294967295u, 16268u, 0u, 34859u)), Struct_3(Struct_1(-310f, vec3<f32>(-1842f, 489f, -1830f), 0i, vec4<bool>(true, false, true, false)), -1i, vec4<u32>(1u, 83210u, 4294967295u, 13644u)), Struct_3(Struct_1(1265f, vec3<f32>(-1836f, 1267f, 1582f), 1696i, vec4<bool>(false, false, false, false)), 10107i, vec4<u32>(30734u, 1u, 4986u, 33438u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: f32, arg_3: i32) -> vec4<i32> {
    global1 = array<Struct_3, 32>();
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(324f + arg_2))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -492f, 2445f) + _wgslsmith_f_op_vec3_f32(-arg_0.wwx)), u_input.b, select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))), vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(u_input.a.x, u_input.a.x)), 34619u), 57978u, arg_1.x)), _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(37074u, arg_1.x), ~11379u), vec2<u32>(65939u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(46216u, 5002u, u_input.a.x), arg_1), ~arg_1.x))), reverseBits(firstLeadingBit(firstLeadingBit(-u_input.e))), !(any(vec3<bool>(false, true, true)) && (-49990i <= (u_input.d | -1i))));
    var var_1 = Struct_2(var_0.a.a, _wgslsmith_sub_vec4_u32(abs(~select(u_input.a, vec4<u32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, 1u), vec4<bool>(false, true, true, var_0.d))), vec4<u32>(_wgslsmith_mult_u32(24771u, ~var_0.b.x), 4610u, 1u, 47341u)));
    let var_2 = vec2<bool>(!(var_1.a.d.x && (~var_0.b.x != var_0.a.b.x)), true);
    var var_3 = reverseBits(~_wgslsmith_mult_u32(~30179u, arg_1.x));
    return -(vec4<i32>(1i, var_1.a.c, 1i, abs(var_1.a.c)) << (vec4<u32>(1u, 62346u << (0u % 32u), ~6856u, ~var_1.b.x) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(select(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(-1i, 16793i, 0i, var_0.a.a.c)), vec4<i32>(-1i, var_0.a.a.c, var_0.a.a.c, var_1.a.c), vec4<i32>(-2147483647i, 1i, arg_3, var_0.c.x) ^ vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 1i)), -(~vec4<i32>(var_1.a.c, 0i, 31781i, var_0.a.a.c)), !all(vec4<bool>(false, var_1.a.d.x, false, false))), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -50669i, u_input.b, -37748i) | select(vec4<i32>(0i, var_0.a.a.c, var_1.a.c, u_input.e.x), vec4<i32>(arg_3, var_0.a.a.c, 22794i, 0i), var_0.a.a.d), vec4<i32>(-var_0.a.a.c, _wgslsmith_clamp_i32(-2147483647i, 1i, -2676i), u_input.b, arg_3 ^ arg_3)));
}

fn func_2() -> vec2<i32> {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x | ~(-24331i), reverseBits(reverseBits(u_input.d)), max(u_input.d >> (u_input.a.x % 32u), 0i), ~_wgslsmith_add_i32(u_input.c, -34722i)) & select(_wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, u_input.b, u_input.d, -2147483647i), ~vec4<i32>(6923i, 2019i, u_input.e.x, u_input.e.x)), select(vec4<i32>(2147483647i, u_input.d, 0i, 2147483647i), func_3(vec4<f32>(1421f, -339f, 737f, -835f), u_input.a.xxz, -1340f, u_input.d), true), true), -vec4<i32>(_wgslsmith_div_i32(u_input.d, _wgslsmith_mod_i32(23061i, u_input.e.x)), -19494i, select(0i, ~u_input.d, true), u_input.e.x));
    let var_1 = ~(~(u_input.a << (abs(u_input.a) % vec4<u32>(32u))));
    global0 = array<Struct_3, 20>();
    let var_2 = vec4<bool>(true, true, all(vec4<bool>(any(vec2<bool>(true, true)), true, false, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), any(!vec4<bool>(var_1.x < 19210u, any(vec3<bool>(true, false, true)), true, true)));
    let var_3 = ~(var_0 >> (vec4<u32>(~_wgslsmith_div_u32(u_input.a.x, 1u), var_1.x, _wgslsmith_clamp_u32(~var_1.x, ~4294967295u, _wgslsmith_div_u32(1u, u_input.a.x)), u_input.a.x) % vec4<u32>(32u)));
    return abs(var_3.xy);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = ~reverseBits(func_2());
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1350f - 350f)))));
    return -vec2<i32>(firstTrailingBit(select(0i, 2147483647i, arg_1.a.d.x | true)), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_vec2_i32(-vec2<i32>(-64682i, -26113i), func_1(~vec3<u32>(u_input.a.x, u_input.a.x, 42239u), Struct_2(Struct_1(736f, vec3<f32>(-341f, 848f, 554f), 27496i, vec4<bool>(false, false, false, false)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)))) << (select(~u_input.a.zw, vec2<u32>(1u, abs(u_input.a.x)), true) % vec2<u32>(32u));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 20u)];
    var_1 = Struct_3(Struct_1(var_1.a.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.b + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a.b.x, 553f, var_1.a.a)))) - _wgslsmith_f_op_vec3_f32(-var_1.a.b)), countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.c, 69942i, var_1.b, -23753i), vec4<i32>(2147483647i, u_input.e.x, 1i, var_0.x)), vec4<i32>(42787i, 2147483647i, var_0.x, 1797i) & vec4<i32>(-41006i, var_1.a.c, -1i, var_0.x))), vec4<bool>(var_1.a.d.x, any(var_1.a.d) & any(vec3<bool>(var_1.a.d.x, true, true)), false, true | any(vec2<bool>(false, true)))), -(u_input.b << (_wgslsmith_clamp_u32(var_1.c.x ^ var_1.c.x, ~u_input.a.x, 1u) % 32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c.x, u_input.a.x, 11680u, 4294967295u) ^ max(u_input.a, vec4<u32>(1u, var_1.c.x, u_input.a.x, u_input.a.x)), vec4<u32>(var_1.c.x, 80311u | var_1.c.x, u_input.a.x >> (u_input.a.x % 32u), ~1u)));
    let var_2 = Struct_3(var_1.a, var_1.a.c, ~(~(vec4<u32>(var_1.c.x, u_input.a.x, 55900u, 4294967295u) & countOneBits(vec4<u32>(30554u, u_input.a.x, 0u, 19052u)))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-461f, var_1.a.b.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(396f, -408f, var_2.a.b.x) - var_2.a.b)))), 0i, var_1.a.d), vec4<u32>(_wgslsmith_clamp_u32(~1u ^ firstLeadingBit(var_1.c.x), var_1.c.x, countOneBits(_wgslsmith_mult_u32(134264u, var_2.c.x))), u_input.a.x, reverseBits(40946u) >> (select(var_2.c.x << (77559u % 32u), 17617u, any(var_1.a.d.xx)) % 32u), _wgslsmith_add_u32(~u_input.a.x, abs(firstLeadingBit(0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_3.a.c, -2147483647i, ~var_1.a.c ^ var_0.x, firstTrailingBit(~var_3.a.c)), 67184u);
}

