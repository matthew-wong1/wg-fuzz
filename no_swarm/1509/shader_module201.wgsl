struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<u32>(53623u, 0u, 61992u), vec4<f32>(1880f, -1000f, -1000f, 1000f), vec4<i32>(-13424i, 21699i, i32(-2147483648), -1i)), Struct_1(vec3<i32>(-1i, 17862i, 17343i), vec3<u32>(21011u, 0u, 104602u), vec4<f32>(-251f, -1141f, -328f, -454f), vec4<i32>(0i, 36444i, -1i, 1i)), Struct_1(vec3<i32>(33271i, 0i, -62764i), vec3<u32>(47555u, 103251u, 4640u), vec4<f32>(1371f, -1032f, 1159f, -204f), vec4<i32>(2147483647i, -1i, 2147483647i, 6913i)), Struct_1(vec3<i32>(-810i, i32(-2147483648), -11904i), vec3<u32>(4294967295u, 7724u, 1u), vec4<f32>(-991f, 704f, 531f, 333f), vec4<i32>(2147483647i, 1i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(-36364i, 48509i, 39528i), vec3<u32>(15821u, 1u, 4294967295u), vec4<f32>(-491f, -1554f, 960f, -190f), vec4<i32>(1i, 74309i, 1i, -1i)), Struct_1(vec3<i32>(30687i, 3832i, -2919i), vec3<u32>(1u, 28037u, 217u), vec4<f32>(337f, 228f, -2021f, -355f), vec4<i32>(1i, 22073i, -30252i, 42725i)), Struct_1(vec3<i32>(i32(-2147483648), -12980i, -194i), vec3<u32>(50265u, 1u, 1u), vec4<f32>(-460f, 630f, 1109f, -1434f), vec4<i32>(1i, -954i, 35973i, -12896i)), Struct_1(vec3<i32>(25587i, 0i, -109185i), vec3<u32>(52031u, 38095u, 0u), vec4<f32>(-626f, 563f, -1000f, 313f), vec4<i32>(0i, -17811i, 0i, 2917i)), Struct_1(vec3<i32>(8009i, -61610i, -38483i), vec3<u32>(4294967295u, 28392u, 104139u), vec4<f32>(777f, -1065f, -258f, -1632f), vec4<i32>(0i, 2147483647i, i32(-2147483648), -82448i)), Struct_1(vec3<i32>(i32(-2147483648), -7457i, 48370i), vec3<u32>(1u, 0u, 11894u), vec4<f32>(-914f, -243f, -979f, 620f), vec4<i32>(102280i, -1i, i32(-2147483648), 7312i)), Struct_1(vec3<i32>(1i, -1i, 22635i), vec3<u32>(0u, 1060u, 6139u), vec4<f32>(630f, 1821f, -693f, -1136f), vec4<i32>(0i, 58989i, 22979i, 2147483647i)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<u32>(72574u, 4294967295u, 0u), vec4<f32>(1712f, 988f, 561f, -1591f), vec4<i32>(1i, -17969i, -41951i, -28422i)), Struct_1(vec3<i32>(0i, -1i, 9340i), vec3<u32>(0u, 4294967295u, 1u), vec4<f32>(-1265f, 574f, 1000f, 343f), vec4<i32>(2013i, -2273i, -1i, 1i)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -86274i), vec3<u32>(44688u, 13035u, 45370u), vec4<f32>(-372f, 419f, 102f, 310f), vec4<i32>(i32(-2147483648), 24176i, 0i, 14016i)), Struct_1(vec3<i32>(1i, 0i, 2147483647i), vec3<u32>(1u, 36218u, 91304u), vec4<f32>(-279f, 599f, -596f, -1662f), vec4<i32>(0i, 0i, -1i, -37285i)), Struct_1(vec3<i32>(-1i, 7913i, 33224i), vec3<u32>(4294967295u, 1u, 61419u), vec4<f32>(247f, 2484f, -1454f, -1454f), vec4<i32>(0i, -19230i, 26408i, 1i)), Struct_1(vec3<i32>(-25251i, 50709i, 14584i), vec3<u32>(34308u, 24160u, 1u), vec4<f32>(1022f, -1326f, -2004f, -1582f), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 14483i)), Struct_1(vec3<i32>(-74631i, i32(-2147483648), 0i), vec3<u32>(0u, 63227u, 0u), vec4<f32>(1400f, -928f, 1000f, 534f), vec4<i32>(-1i, 22410i, -39370i, 15352i)), Struct_1(vec3<i32>(1i, 65550i, 1i), vec3<u32>(82336u, 75414u, 1u), vec4<f32>(1321f, -1000f, -913f, 2603f), vec4<i32>(33462i, 1i, -23227i, -34637i)), Struct_1(vec3<i32>(-64198i, -28997i, 6047i), vec3<u32>(4294967295u, 4971u, 0u), vec4<f32>(-1263f, 1322f, 1196f, -1014f), vec4<i32>(-1i, i32(-2147483648), 12555i, -5959i)), Struct_1(vec3<i32>(36757i, 2147483647i, -3541i), vec3<u32>(1u, 0u, 1u), vec4<f32>(-282f, -757f, 403f, 1350f), vec4<i32>(-56090i, 48245i, 2147483647i, 0i)), Struct_1(vec3<i32>(50192i, 24338i, 57109i), vec3<u32>(0u, 1u, 1u), vec4<f32>(-321f, 506f, -679f, 1134f), vec4<i32>(-1i, -1i, 0i, 0i)), Struct_1(vec3<i32>(2147483647i, 1i, -22477i), vec3<u32>(16109u, 4294967295u, 47627u), vec4<f32>(150f, 2011f, 736f, 208f), vec4<i32>(-8591i, 0i, 26897i, -12439i)), Struct_1(vec3<i32>(2542i, 16703i, -1i), vec3<u32>(1u, 48604u, 45257u), vec4<f32>(639f, 260f, -507f, -1000f), vec4<i32>(21147i, 17507i, 10273i, 2147483647i)), Struct_1(vec3<i32>(38226i, -40088i, 31108i), vec3<u32>(11856u, 4294967295u, 35596u), vec4<f32>(348f, 1000f, -1602f, 1031f), vec4<i32>(-48885i, -627i, -1i, -1i)), Struct_1(vec3<i32>(-1i, -1i, -47563i), vec3<u32>(10377u, 4294967295u, 0u), vec4<f32>(-201f, 808f, 892f, -1209f), vec4<i32>(-25496i, 0i, -6533i, 13898i)), Struct_1(vec3<i32>(-1i, -79239i, i32(-2147483648)), vec3<u32>(37969u, 0u, 4294967295u), vec4<f32>(-542f, -1000f, 1895f, 1642f), vec4<i32>(-32776i, 3789i, i32(-2147483648), 0i)), Struct_1(vec3<i32>(-2479i, 1i, i32(-2147483648)), vec3<u32>(1u, 6602u, 8864u), vec4<f32>(1364f, -292f, -364f, -1355f), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -1i)), Struct_1(vec3<i32>(4069i, 25750i, -1i), vec3<u32>(0u, 4294967295u, 4294967295u), vec4<f32>(160f, 1693f, -754f, -613f), vec4<i32>(-30873i, 65266i, 1i, -1i)), Struct_1(vec3<i32>(1i, 1i, 0i), vec3<u32>(0u, 60858u, 4294967295u), vec4<f32>(855f, -1964f, -541f, -117f), vec4<i32>(45239i, 4359i, -1i, -51821i)));

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<i32>(52833i, -17205i, 1524i), vec3<u32>(58496u, 42161u, 55762u), vec4<f32>(-479f, -470f, 1075f, 1255f), vec4<i32>(0i, 3083i, -10330i, i32(-2147483648))), Struct_1(vec3<i32>(1i, -5076i, -1i), vec3<u32>(1u, 4294967295u, 6188u), vec4<f32>(246f, -183f, 1000f, -216f), vec4<i32>(5457i, i32(-2147483648), -42862i, 1i)), Struct_1(vec3<i32>(4655i, 53614i, 1i), vec3<u32>(42324u, 79705u, 1u), vec4<f32>(1739f, -839f, -858f, -739f), vec4<i32>(1i, 33503i, 22811i, i32(-2147483648))), Struct_1(vec3<i32>(39483i, -15115i, -27723i), vec3<u32>(4294967295u, 26727u, 4294967295u), vec4<f32>(-785f, -660f, 458f, -164f), vec4<i32>(i32(-2147483648), 8132i, 1i, 8818i)), Struct_1(vec3<i32>(1i, -1i, -2228i), vec3<u32>(0u, 27158u, 36814u), vec4<f32>(927f, 2096f, 533f, 226f), vec4<i32>(1i, -1i, -7292i, 2147483647i)), Struct_1(vec3<i32>(0i, -21232i, -21954i), vec3<u32>(4294967295u, 59701u, 86941u), vec4<f32>(1597f, -511f, 1024f, -462f), vec4<i32>(8221i, i32(-2147483648), -1i, -1i)), Struct_1(vec3<i32>(-47706i, 10637i, 38480i), vec3<u32>(4294967295u, 0u, 1u), vec4<f32>(632f, -1000f, 1135f, -939f), vec4<i32>(-1i, -44430i, i32(-2147483648), -1i)), Struct_1(vec3<i32>(-28769i, 2147483647i, 1450i), vec3<u32>(0u, 1u, 13146u), vec4<f32>(239f, 298f, 1000f, -1579f), vec4<i32>(1531i, 1i, 42579i, -1i)), Struct_1(vec3<i32>(1i, -8196i, 0i), vec3<u32>(0u, 446u, 32584u), vec4<f32>(1777f, -1441f, -453f, 991f), vec4<i32>(-21324i, -68659i, -78021i, 1i)), Struct_1(vec3<i32>(2147483647i, 2147483647i, 15885i), vec3<u32>(20279u, 24949u, 1u), vec4<f32>(-1234f, -1594f, -696f, -108f), vec4<i32>(1i, -5268i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<u32>(29421u, 51528u, 53099u), vec4<f32>(-517f, 332f, 1802f, -671f), vec4<i32>(0i, -49617i, 1i, 52983i)), Struct_1(vec3<i32>(13240i, -33594i, -45551i), vec3<u32>(28369u, 1u, 32763u), vec4<f32>(-243f, 321f, -661f, -503f), vec4<i32>(22821i, 24681i, 2147483647i, -20945i)), Struct_1(vec3<i32>(-17721i, 1i, -5763i), vec3<u32>(19009u, 2762u, 1u), vec4<f32>(-528f, -230f, 727f, 1521f), vec4<i32>(2147483647i, 20695i, 21724i, 1i)), Struct_1(vec3<i32>(2147483647i, 1931i, 29067i), vec3<u32>(9085u, 4294967295u, 52976u), vec4<f32>(-718f, 818f, -149f, 712f), vec4<i32>(-1i, -1i, 51482i, -1i)), Struct_1(vec3<i32>(-42607i, 13189i, -25536i), vec3<u32>(20396u, 4294967295u, 0u), vec4<f32>(-252f, 1767f, -656f, -418f), vec4<i32>(1i, 2147483647i, -1237i, 17391i)), Struct_1(vec3<i32>(-1i, 52857i, 2147483647i), vec3<u32>(14973u, 4294967295u, 9334u), vec4<f32>(-1617f, 1000f, 1351f, -1112f), vec4<i32>(37783i, 1i, 0i, i32(-2147483648))), Struct_1(vec3<i32>(-34944i, -1i, 3294i), vec3<u32>(50875u, 4294967295u, 10007u), vec4<f32>(-850f, 1000f, 339f, -799f), vec4<i32>(47522i, i32(-2147483648), -17708i, 0i)), Struct_1(vec3<i32>(1i, 1i, -34096i), vec3<u32>(4294967295u, 38861u, 31519u), vec4<f32>(827f, 1362f, -1115f, 1060f), vec4<i32>(0i, 51745i, -1i, -3664i)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<u32> {
    global0 = array<Struct_1, 30>();
    global1 = array<Struct_1, 18>();
    let var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(20635u, 41596u, 1u), ~vec3<u32>(4294967295u, 4294967295u, 0u)), select(~firstTrailingBit(26229u), ~9959u, !any(vec4<bool>(false, false, true, true))), countOneBits(abs(5480u)));
    var var_1 = u_input.b;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1285f), 106f)), 507f, any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))))), Struct_1(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(14943i, var_1.x, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, u_input.a, 1i), u_input.b, u_input.b))), vec3<u32>(1u, 4294967295u, var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-887f, -1775f, 2057f, 1563f), vec4<f32>(-2140f, -546f, 246f, 265f)))), abs(~(vec4<i32>(var_1.x, 2147483647i, 0i, 10121i) >> (vec4<u32>(1u, 8506u, var_0.x, 30560u) % vec4<u32>(32u))))));
    return ~(~var_2.b.b);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(~countOneBits(_wgslsmith_mod_vec3_i32(u_input.b, countOneBits(u_input.b))), func_3() << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, _wgslsmith_mult_u32(1u, 29635u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 28133u, 33270u, 1u), vec4<u32>(60051u, 0u, 23504u, 48487u))), ~vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-508f, -951f, 188f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(299f)), _wgslsmith_f_op_f32(f32(-1f) * -863f))))), firstTrailingBit(~(-vec4<i32>(u_input.c, -4662i, u_input.c, -2147483647i))) >> (~vec4<u32>(4294967295u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 2003u), vec3<u32>(4294967295u, 4294967295u, 17681u)), ~31163u) % vec4<u32>(32u)));
    global0 = array<Struct_1, 30>();
    var_0 = global1[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(~func_3().x, 37296u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(countOneBits(~var_0.b.x), func_3().x), 43022u), var_0.d.x <= _wgslsmith_dot_vec3_i32(min(u_input.b, vec3<i32>(var_0.a.x, u_input.c, 36179i)) & -vec3<i32>(-2147483647i, 8916i, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.x, var_0.d.x, -17482i), -var_0.d.wxx, var_0.a))), 18u)];
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(abs(var_0.c.x))), Struct_1(vec3<i32>(-1i) * -var_0.d.xyx, abs(max(~vec3<u32>(var_0.b.x, 4294967295u, var_0.b.x), var_0.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) + _wgslsmith_f_op_vec4_f32(var_0.c - var_0.c)), vec4<f32>(var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(trunc(var_0.c.x)), 730f), !select(false, true, false))), _wgslsmith_mod_vec4_i32(vec4<i32>(max(u_input.c, u_input.b.x), 0i, var_0.d.x >> (3541u % 32u), -2147483647i), -var_0.d)));
    var var_2 = min(_wgslsmith_clamp_vec3_i32(select(u_input.b >> (_wgslsmith_sub_vec3_u32(vec3<u32>(63164u, var_1.b.b.x, var_1.b.b.x), var_0.b) % vec3<u32>(32u)), var_0.d.zxz, vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_i32(u_input.b, -var_1.b.a >> (~var_1.b.b % vec3<u32>(32u))), vec3<i32>(~u_input.c & 0i, ~1i, var_0.a.x)), var_0.d.wyx);
    return Struct_3(global1[_wgslsmith_index_u32(var_1.b.b.x, 18u)], any(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, false), all(vec3<bool>(false, false, true)))), select(select(_wgslsmith_mod_vec2_u32(var_0.b.zy, var_1.b.b.yx), var_1.b.b.xx, true) >> (vec2<u32>(var_1.b.b.x ^ var_1.b.b.x, var_0.b.x ^ 19448u) % vec2<u32>(32u)), firstTrailingBit(firstTrailingBit(vec2<u32>(30262u, 1u))), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true)), var_1, ~vec3<u32>(var_0.b.x, 4294967295u, var_0.b.x));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    let var_0 = func_2();
    var var_1 = var_0.d;
    let var_2 = var_0.d;
    let var_3 = ~firstLeadingBit(firstTrailingBit(var_2.b.b.yx));
    global1 = array<Struct_1, 18>();
    return !select(select(select(!vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), all(vec4<bool>(false, true, true, false))), !(!vec2<bool>(var_0.b, true)), !var_0.b), vec2<bool>(false, true | all(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b))), !select(!vec2<bool>(var_0.b, var_0.b), !vec2<bool>(false, var_0.b), var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(96743u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-441f, _wgslsmith_f_op_f32(step(2414f, _wgslsmith_f_op_f32(-781f + -150f))), any(vec2<bool>(true, true))))), global0[_wgslsmith_index_u32(~4294967295u, 30u)]);
    var var_2 = (vec3<u32>(_wgslsmith_div_u32(~0u, var_1.b.b.x), ~(~var_1.b.b.x), 7597u) | (var_1.b.b << (~var_1.b.b % vec3<u32>(32u)))) >> (vec3<u32>(abs(var_1.b.b.x << (~0u % 32u)), ~5144u, var_1.b.b.x) % vec3<u32>(32u));
    global0 = array<Struct_1, 30>();
    let var_3 = vec4<bool>(false, !(!any(vec2<bool>(true, true))), any(func_1(_wgslsmith_f_op_f32(-var_1.b.c.x))), var_1.b.b.x >= ~(var_1.b.b.x << (4040u % 32u)));
    var var_4 = func_2();
    var_2 = vec3<u32>(var_1.b.b.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.b.b.x, 4294967295u, var_1.b.b.x), var_4.a.b, vec3<bool>(true, false, true)), countOneBits(var_1.b.b)) ^ var_1.b.b.x, ~var_2.x) ^ vec3<u32>(max(select(_wgslsmith_div_u32(29013u, 1u), 9469u, true), _wgslsmith_dot_vec3_u32(~var_4.d.b.b, _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(5000u, 4294967295u, var_2.x)))), var_1.b.b.x, ~abs(23533u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4.d.b.c.wz + var_1.b.c.yx)), reverseBits(~vec2<i32>(var_4.d.b.d.x, var_1.b.d.x)) << (_wgslsmith_mod_vec2_u32(~(~var_4.d.b.b.xx), ~vec2<u32>(16885u, var_2.x) & ~var_1.b.b.yz) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -2136f));
}

