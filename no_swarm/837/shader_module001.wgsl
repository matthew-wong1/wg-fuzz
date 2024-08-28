struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(21417u, Struct_1(-1i, 4294967295u, vec4<i32>(2147483647i, -16089i, -70196i, 44556i), 1000f, vec4<bool>(false, false, false, true)), Struct_1(2147483647i, 4294967295u, vec4<i32>(33201i, -1i, i32(-2147483648), -34216i), 1755f, vec4<bool>(false, false, true, false)), Struct_1(6600i, 42602u, vec4<i32>(2147483647i, 0i, 22239i, i32(-2147483648)), 173f, vec4<bool>(false, true, true, false)));

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-1i, 24118u, vec4<i32>(-5772i, 2147483647i, -65074i, 6974i), 305f, vec4<bool>(false, true, false, false)), Struct_1(10464i, 4294967295u, vec4<i32>(1i, -48925i, i32(-2147483648), -43758i), 975f, vec4<bool>(false, false, false, false)), Struct_1(2147483647i, 21916u, vec4<i32>(-17343i, -22465i, -3927i, -1i), 985f, vec4<bool>(false, true, true, true)), Struct_1(10989i, 42807u, vec4<i32>(-7950i, 0i, 0i, 11042i), -1012f, vec4<bool>(true, true, false, true)), Struct_1(-1i, 0u, vec4<i32>(-29063i, -37532i, -19399i, -41136i), -317f, vec4<bool>(false, true, true, false)), Struct_1(15215i, 13368u, vec4<i32>(-29252i, 0i, 19978i, 82403i), -867f, vec4<bool>(true, false, true, true)), Struct_1(-25944i, 55643u, vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)), 666f, vec4<bool>(false, true, true, false)), Struct_1(1i, 1u, vec4<i32>(i32(-2147483648), -1i, 2147483647i, i32(-2147483648)), 1000f, vec4<bool>(false, true, true, false)), Struct_1(-1i, 1u, vec4<i32>(-25497i, i32(-2147483648), 1i, 29106i), -1511f, vec4<bool>(true, false, true, false)), Struct_1(-1i, 64775u, vec4<i32>(-444i, 21126i, 0i, -1i), -1231f, vec4<bool>(false, true, false, false)), Struct_1(i32(-2147483648), 1u, vec4<i32>(0i, 2147483647i, i32(-2147483648), -31909i), 1157f, vec4<bool>(true, false, false, false)), Struct_1(49057i, 0u, vec4<i32>(42552i, -1i, 1i, 0i), 174f, vec4<bool>(false, true, true, true)), Struct_1(1i, 4294967295u, vec4<i32>(-1i, -21009i, -11649i, 0i), -690f, vec4<bool>(true, true, true, false)), Struct_1(-41692i, 1u, vec4<i32>(7022i, -68702i, -16609i, -19649i), 558f, vec4<bool>(false, false, true, false)), Struct_1(-31847i, 26669u, vec4<i32>(0i, i32(-2147483648), 5801i, -35799i), 531f, vec4<bool>(false, false, true, true)), Struct_1(1i, 1u, vec4<i32>(6007i, -2306i, -25234i, 0i), -1046f, vec4<bool>(false, true, false, true)), Struct_1(2147483647i, 0u, vec4<i32>(-16211i, -9081i, 13498i, 2690i), 1434f, vec4<bool>(false, false, false, true)), Struct_1(-12153i, 25482u, vec4<i32>(-1i, -1i, 2147483647i, -1i), 217f, vec4<bool>(true, true, false, false)), Struct_1(-51965i, 24743u, vec4<i32>(0i, -10728i, i32(-2147483648), -13742i), 1045f, vec4<bool>(true, true, true, false)), Struct_1(i32(-2147483648), 39446u, vec4<i32>(-1i, 46169i, -50766i, 0i), 286f, vec4<bool>(false, true, true, true)), Struct_1(i32(-2147483648), 109172u, vec4<i32>(0i, -8785i, 2147483647i, -15274i), 522f, vec4<bool>(false, true, true, false)), Struct_1(i32(-2147483648), 0u, vec4<i32>(-1710i, -6667i, -37908i, -213i), -1401f, vec4<bool>(false, false, true, true)), Struct_1(-1i, 0u, vec4<i32>(-13911i, -1537i, -59023i, i32(-2147483648)), 963f, vec4<bool>(false, false, false, false)), Struct_1(-29466i, 1u, vec4<i32>(9002i, i32(-2147483648), -10342i, -6034i), -453f, vec4<bool>(true, false, false, false)), Struct_1(-15313i, 0u, vec4<i32>(2147483647i, 2147483647i, 2147483647i, 23630i), 507f, vec4<bool>(false, false, true, false)), Struct_1(6144i, 67618u, vec4<i32>(0i, 2430i, -35846i, 0i), -1803f, vec4<bool>(true, false, false, false)), Struct_1(25339i, 0u, vec4<i32>(-112753i, 387i, 38838i, 14127i), 1651f, vec4<bool>(true, true, false, true)), Struct_1(2147483647i, 1u, vec4<i32>(0i, -7144i, i32(-2147483648), i32(-2147483648)), -1185f, vec4<bool>(true, false, true, true)), Struct_1(1012i, 20592u, vec4<i32>(-17747i, i32(-2147483648), 2029i, 3173i), -1000f, vec4<bool>(false, false, false, true)), Struct_1(13328i, 12741u, vec4<i32>(7298i, i32(-2147483648), 45066i, 2147483647i), -745f, vec4<bool>(true, true, false, false)), Struct_1(-35557i, 4294967295u, vec4<i32>(11304i, 23123i, i32(-2147483648), 2147483647i), 210f, vec4<bool>(true, true, true, false)), Struct_1(-38304i, 24437u, vec4<i32>(1701i, 2147483647i, i32(-2147483648), 0i), 527f, vec4<bool>(true, true, false, false)));

var<private> global2: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(-29222i, -41333i, 0i, -46156i), vec4<i32>(-1i, i32(-2147483648), 1i, 8772i), vec4<i32>(-10888i, 7538i, 27142i, 26952i), vec4<i32>(i32(-2147483648), 5616i, -1i, -26183i), vec4<i32>(0i, 5604i, 44967i, 53962i), vec4<i32>(i32(-2147483648), -1i, -8391i, 1i), vec4<i32>(-1i, -5472i, 2147483647i, 3243i), vec4<i32>(-14677i, 10863i, 2147483647i, 72672i), vec4<i32>(2147483647i, 0i, -47495i, -3236i), vec4<i32>(-1i, 2147483647i, 24443i, 0i), vec4<i32>(-32880i, 25830i, 0i, 2147483647i), vec4<i32>(2147483647i, 1i, 2147483647i, 56986i), vec4<i32>(0i, i32(-2147483648), 1i, -35986i), vec4<i32>(2147483647i, 18610i, 42971i, -30599i), vec4<i32>(-1i, 55260i, -1984i, 22125i), vec4<i32>(2064i, -12189i, 1i, 47061i), vec4<i32>(2147483647i, 2147483647i, 1i, 0i), vec4<i32>(5795i, i32(-2147483648), 12390i, -30843i), vec4<i32>(1699i, 43569i, i32(-2147483648), -1i), vec4<i32>(-15744i, 44137i, 32827i, 1i), vec4<i32>(-21649i, -59030i, -776i, 42160i), vec4<i32>(1i, i32(-2147483648), -4440i, 47853i), vec4<i32>(0i, 1i, -31034i, 33752i), vec4<i32>(-26751i, -180i, 5053i, -21212i), vec4<i32>(i32(-2147483648), -15256i, 1i, 1i), vec4<i32>(0i, -39246i, 1i, -57324i), vec4<i32>(-12397i, 59479i, -33889i, -25164i));

var<private> global3: Struct_2 = Struct_2(50401u, Struct_1(-21501i, 16689u, vec4<i32>(48221i, i32(-2147483648), 0i, -18096i), -1000f, vec4<bool>(false, true, false, true)), Struct_1(2147483647i, 62939u, vec4<i32>(-1i, -56246i, 30700i, 1i), -437f, vec4<bool>(false, true, false, true)), Struct_1(0i, 59954u, vec4<i32>(0i, 50887i, -36277i, -1i), -1482f, vec4<bool>(false, false, true, false)));

var<private> global4: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(10742u, Struct_1(i32(-2147483648), 4294967295u, vec4<i32>(-5879i, i32(-2147483648), 0i, -1i), -184f, vec4<bool>(false, false, true, true)), Struct_1(-11798i, 11112u, vec4<i32>(-108512i, 24832i, -1i, 2147483647i), 851f, vec4<bool>(false, true, true, false)), Struct_1(2147483647i, 33876u, vec4<i32>(50933i, 0i, 2147483647i, 29934i), 2331f, vec4<bool>(true, true, true, false))), Struct_2(4294967295u, Struct_1(1i, 20763u, vec4<i32>(2147483647i, 1i, -3749i, 0i), 2495f, vec4<bool>(true, false, false, true)), Struct_1(-1i, 1u, vec4<i32>(33555i, -1i, 11491i, 3870i), 2073f, vec4<bool>(false, true, false, false)), Struct_1(2147483647i, 0u, vec4<i32>(-39404i, -1i, -23338i, -35956i), -1304f, vec4<bool>(false, false, true, true))), Struct_2(1u, Struct_1(-1i, 4294967295u, vec4<i32>(-19588i, -1i, 2147483647i, i32(-2147483648)), 730f, vec4<bool>(false, false, true, true)), Struct_1(-1i, 102523u, vec4<i32>(2147483647i, i32(-2147483648), -1i, i32(-2147483648)), 199f, vec4<bool>(false, false, true, true)), Struct_1(-1i, 28691u, vec4<i32>(-7900i, 34457i, -17699i, 2147483647i), -1067f, vec4<bool>(true, true, false, true))), Struct_2(29557u, Struct_1(1i, 1u, vec4<i32>(0i, 44084i, -13436i, 17147i), 1068f, vec4<bool>(true, false, true, true)), Struct_1(52484i, 26561u, vec4<i32>(10659i, 22901i, 64355i, 1i), 1089f, vec4<bool>(true, true, true, true)), Struct_1(1i, 4294967295u, vec4<i32>(1i, -42020i, 0i, 14349i), 222f, vec4<bool>(false, true, false, true))), Struct_2(1784u, Struct_1(-1i, 3631u, vec4<i32>(i32(-2147483648), 2147483647i, 15145i, 0i), -814f, vec4<bool>(true, true, false, false)), Struct_1(2147483647i, 34124u, vec4<i32>(i32(-2147483648), 1i, -29283i, 1i), -757f, vec4<bool>(true, false, true, true)), Struct_1(1i, 4294967295u, vec4<i32>(-37413i, -1i, 1i, 3138i), 531f, vec4<bool>(true, false, false, false))), Struct_2(1u, Struct_1(2147483647i, 4294967295u, vec4<i32>(-4007i, 21521i, 13694i, 2147483647i), -432f, vec4<bool>(true, false, true, true)), Struct_1(-7501i, 25191u, vec4<i32>(11797i, 2147483647i, 0i, i32(-2147483648)), -753f, vec4<bool>(true, false, true, false)), Struct_1(-1636i, 1821u, vec4<i32>(0i, 13066i, 38175i, 2147483647i), 429f, vec4<bool>(true, false, true, true))), Struct_2(3003u, Struct_1(i32(-2147483648), 0u, vec4<i32>(1i, 17847i, 20007i, -1i), 462f, vec4<bool>(false, false, false, true)), Struct_1(-22995i, 1u, vec4<i32>(-1i, 3630i, i32(-2147483648), 6388i), 1292f, vec4<bool>(false, true, true, false)), Struct_1(786i, 4294967295u, vec4<i32>(0i, -22124i, -569i, -53208i), -239f, vec4<bool>(false, true, true, true))), Struct_2(0u, Struct_1(i32(-2147483648), 0u, vec4<i32>(20011i, -12266i, 1i, -10978i), 363f, vec4<bool>(true, true, true, true)), Struct_1(-1i, 7733u, vec4<i32>(1i, 56296i, -63096i, 0i), 820f, vec4<bool>(false, false, true, true)), Struct_1(1467i, 79750u, vec4<i32>(1i, -44657i, 2147483647i, 2147483647i), -1000f, vec4<bool>(true, true, false, true))), Struct_2(4294967295u, Struct_1(0i, 48070u, vec4<i32>(5615i, 2147483647i, -628i, 23735i), -855f, vec4<bool>(false, true, true, false)), Struct_1(2713i, 26854u, vec4<i32>(24715i, -32997i, 1i, 5565i), 881f, vec4<bool>(false, false, true, true)), Struct_1(-44121i, 48038u, vec4<i32>(-82804i, -1i, 30186i, -1i), -610f, vec4<bool>(true, false, true, true))), Struct_2(0u, Struct_1(-1i, 4294967295u, vec4<i32>(0i, 0i, 2147483647i, -1i), -1051f, vec4<bool>(false, true, false, false)), Struct_1(-51873i, 4294967295u, vec4<i32>(-3994i, 2147483647i, 1i, 1i), -381f, vec4<bool>(false, true, true, true)), Struct_1(19850i, 4294967295u, vec4<i32>(3468i, i32(-2147483648), -23418i, 31174i), -440f, vec4<bool>(false, true, false, false))), Struct_2(57063u, Struct_1(i32(-2147483648), 0u, vec4<i32>(2843i, 1i, -16284i, 0i), 1000f, vec4<bool>(true, true, true, false)), Struct_1(-36361i, 30889u, vec4<i32>(9489i, 4941i, 1i, 0i), -716f, vec4<bool>(true, false, false, false)), Struct_1(-38868i, 28000u, vec4<i32>(i32(-2147483648), -1i, 41882i, -24259i), 1492f, vec4<bool>(false, true, false, true))), Struct_2(32895u, Struct_1(-1i, 4294967295u, vec4<i32>(i32(-2147483648), -1i, 0i, 2147483647i), 223f, vec4<bool>(true, false, false, true)), Struct_1(22426i, 2831u, vec4<i32>(i32(-2147483648), -50584i, i32(-2147483648), -1i), -211f, vec4<bool>(true, true, false, true)), Struct_1(4386i, 4294967295u, vec4<i32>(29074i, -68586i, 462i, -11266i), 1314f, vec4<bool>(true, true, true, false))), Struct_2(31791u, Struct_1(0i, 0u, vec4<i32>(-31354i, 17205i, 6900i, 38140i), 174f, vec4<bool>(true, false, false, true)), Struct_1(33445i, 30403u, vec4<i32>(0i, -6175i, 0i, 1i), -2794f, vec4<bool>(false, false, true, false)), Struct_1(22957i, 1u, vec4<i32>(0i, 0i, i32(-2147483648), 4707i), -2177f, vec4<bool>(false, true, false, true))), Struct_2(3335u, Struct_1(-6060i, 4294967295u, vec4<i32>(-61127i, 2147483647i, 30968i, 66i), -482f, vec4<bool>(false, true, false, true)), Struct_1(2147483647i, 22322u, vec4<i32>(-1i, -9387i, -12006i, i32(-2147483648)), 1000f, vec4<bool>(true, true, false, false)), Struct_1(-13425i, 52978u, vec4<i32>(0i, i32(-2147483648), 0i, -39295i), 193f, vec4<bool>(false, false, false, true))));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = Struct_2(~(~(~arg_0.b)), Struct_1(global3.d.c.x, 2444u, arg_2.c, _wgslsmith_f_op_f32(round(global0.c.d)), select(vec4<bool>(!arg_2.e.x, true, true, arg_0.e.x || arg_2.e.x), arg_2.e, !global3.b.e)), global1[_wgslsmith_index_u32(firstTrailingBit(18298u), 32u)], global1[_wgslsmith_index_u32(53930u, 32u)]);
    global3 = var_0;
    let var_1 = -12814i;
    return 1i;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = abs(vec2<i32>(~26923i >> (_wgslsmith_sub_u32(~11445u, arg_0.x) % 32u), _wgslsmith_add_i32(global3.b.c.x, global3.d.a)));
    global4 = array<Struct_2, 14>();
    global4 = array<Struct_2, 14>();
    var var_1 = vec3<f32>(arg_2, arg_1.d, global3.d.d);
    var var_2 = Struct_1(~reverseBits(global0.c.c.x), ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.c.b, 42522u), u_input.a) ^ _wgslsmith_mod_u32(abs(global0.a), firstLeadingBit(u_input.a.x))), reverseBits(~abs(vec4<i32>(var_0.x, var_0.x, global3.c.a, arg_1.c.x))), _wgslsmith_f_op_f32(299f * _wgslsmith_f_op_f32(global0.b.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, -194f)) + 263f))), global0.b.e);
    return Struct_2(global0.b.b, Struct_1(_wgslsmith_clamp_i32(~0i, var_2.c.x, max(arg_1.a, _wgslsmith_clamp_i32(1i, 2676i, 37058i))), 0u, global2[_wgslsmith_index_u32(~min(2121u, ~arg_0.x), 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.d + var_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -457f)), !(!select(global3.d.e, vec4<bool>(global0.b.e.x, true, true, global0.d.e.x), true))), global0.d, Struct_1(func_3(global0.c, ~firstTrailingBit(global3.c.c.wwz), Struct_1(~global3.b.a, arg_0.x >> (arg_0.x % 32u), _wgslsmith_sub_vec4_i32(arg_1.c, vec4<i32>(arg_1.c.x, 2147483647i, -2147483647i, global0.c.c.x)), var_1.x, arg_1.e), -1592f), reverseBits(u_input.a.x), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), var_2.e));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    global3 = arg_3;
    let var_0 = global0.d.d;
    let var_1 = func_2(_wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(17734u, global0.c.b, u_input.b))), vec3<u32>(~_wgslsmith_clamp_u32(global0.a, 194u, u_input.a.x), reverseBits(93332u), 9790u)), Struct_1(-26147i, countOneBits(countOneBits(~arg_3.b.b)), -abs(firstLeadingBit(global0.d.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global3.c.d, global0.b.d)))), _wgslsmith_f_op_f32(-arg_3.d.d))), select(!vec4<bool>(true, arg_3.b.e.x, true, arg_3.d.e.x), func_2(vec3<u32>(1u, arg_3.d.b, 13045u), Struct_1(34566i, arg_3.c.b, vec4<i32>(global0.d.c.x, global0.d.c.x, -30212i, global0.b.c.x), global0.c.d, arg_3.d.e), _wgslsmith_div_f32(global0.c.d, 467f)).b.e, !select(vec4<bool>(global3.d.e.x, arg_3.c.e.x, false, arg_0), vec4<bool>(true, global3.c.e.x, global3.b.e.x, global3.c.e.x), false))), _wgslsmith_f_op_f32(min(global3.b.d, _wgslsmith_f_op_f32(1489f * -1125f)))).b;
    var var_2 = func_2(max(~(~vec3<u32>(var_1.b, global3.a, 23531u)), countOneBits(vec3<u32>(abs(var_1.b), reverseBits(1u), ~49107u))), func_2(vec3<u32>(~1u, 27637u, ~(~arg_3.b.b)), Struct_1(-_wgslsmith_add_i32(-49897i, 2147483647i), global0.d.b, var_1.c, arg_2, func_2(abs(vec3<u32>(48009u, arg_3.c.b, var_1.b)), Struct_1(var_1.c.x, 46455u, vec4<i32>(0i, arg_3.b.c.x, -55609i, global0.c.a), -937f, vec4<bool>(global0.d.e.x, global3.b.e.x, false, true)), _wgslsmith_div_f32(-719f, -1457f)).b.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-206f + arg_2), 822f, func_2(vec3<u32>(58517u, 26536u, 4294967295u), var_1, arg_2).d.e.x)))).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(global3.d.d + global3.c.d)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1196f, arg_2))))).c;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-348f, _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -590f), true))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.c.d, 876f), vec2<f32>(-1000f, 493f), vec2<bool>(global3.b.e.x, global0.d.e.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(848f, arg_2)))))));
    return global3.c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<i32> {
    global4 = array<Struct_2, 14>();
    var var_0 = 12535i;
    global4 = array<Struct_2, 14>();
    let var_1 = ~global3.c.c;
    let var_2 = true;
    return arg_0.c.zx << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(60242u, arg_3.b, arg_3.b), ~vec3<u32>(global3.a, 16430u, arg_0.b)) ^ 85924u, global3.b.b) % vec2<u32>(32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    let var_0 = reverseBits(-17281i);
    var var_1 = arg_1.d;
    global0 = global4[_wgslsmith_index_u32(~34459u, 14u)];
    global2 = array<vec4<i32>, 27>();
    var var_2 = -func_5(func_4(true, var_1.c.wxw, global3.d.d, func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(34820u, arg_2.b, arg_2.b), vec3<u32>(global3.a, 31488u, 20352u)), global1[_wgslsmith_index_u32(~u_input.a.x, 32u)], _wgslsmith_f_op_f32(global3.d.d - var_1.d))), func_2(abs(vec3<u32>(50946u, 1u, u_input.a.x)) >> (max(vec3<u32>(63370u, var_1.b, global0.b.b), vec3<u32>(1u, 0u, 44678u)) % vec3<u32>(32u)), func_4(any(vec2<bool>(true, arg_3.x)), vec3<i32>(-2147483647i, var_1.a, 25399i), _wgslsmith_f_op_f32(ceil(arg_2.d)), Struct_2(8846u, global3.b, arg_1.b, arg_2)), -400f).d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-803f, -1000f, 2029f, 626f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(811f, arg_1.b.d, 1206f, var_1.d)))), func_4(all(!vec3<bool>(true, arg_3.x, arg_3.x)), global0.d.c.xxx, _wgslsmith_f_op_f32(-1609f - -1138f), func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, global3.a, 12070u), vec3<u32>(4294967295u, global3.a, 0u)), func_2(vec3<u32>(u_input.b, global0.c.b, arg_1.a), Struct_1(0i, 0u, var_1.c, -1285f, global3.c.e), global3.d.d).b, 728f)));
    return (var_0 ^ arg_1.c.c.x) >> (_wgslsmith_mult_u32(select(var_1.b, ~4294967295u, arg_2.e.x), _wgslsmith_sub_u32(94446u, arg_1.b.b)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1187f;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)) * _wgslsmith_f_op_f32(select(-1692f, _wgslsmith_div_f32(global3.b.d, 591f), all(global3.d.e)))) * global3.b.d)));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-431f + global3.b.d) * _wgslsmith_f_op_f32(-1038f + 485f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.d + 843f)), -615f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0)), -952f)))));
    global0 = Struct_2(1u, global1[_wgslsmith_index_u32(4294967295u, 32u)], Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.d.a, 45139i, global0.b.c.x), global0.c.c.zxy)), 10537u, _wgslsmith_mod_vec4_i32(global0.b.c, _wgslsmith_add_vec4_i32(global2[_wgslsmith_index_u32(global3.a | u_input.a.x, 27u)], global0.c.c)), global3.b.d, vec4<bool>(any(select(global3.d.e.zzz, global0.b.e.yyz, global3.c.e.x)), !(var_0 == -391f), true, any(vec3<bool>(false, true, global0.c.e.x)) != false)), global0.c);
    var var_3 = select(func_1(global0.c.e, global4[_wgslsmith_index_u32(global0.a, 14u)], Struct_1(_wgslsmith_add_i32(global0.c.c.x, global3.b.a << (35980u % 32u)), ~global0.c.b, vec4<i32>(global0.d.a, global0.d.c.x, 15483i, _wgslsmith_clamp_i32(global3.d.c.x, global0.d.c.x, -2147483647i)), 1922f, select(global3.c.e, !vec4<bool>(global0.c.e.x, global0.d.e.x, false, false), any(vec2<bool>(global0.d.e.x, global3.b.e.x)))), vec2<bool>(abs(4294967295u) == _wgslsmith_mult_u32(u_input.b, 1u), firstLeadingBit(u_input.b) > 1u)), global0.b.a, !global3.c.e.x);
    let var_4 = _wgslsmith_f_op_f32(func_2(vec3<u32>(36995u, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x | 28201u, abs(u_input.a.x))), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(step(-857f, _wgslsmith_f_op_f32(max(global0.d.d, 1190f)))))).b.d - _wgslsmith_f_op_f32(global3.b.d + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0)))), _wgslsmith_f_op_f32(sign(-1429f)))));
    global4 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~global0.d.b, 4294967295u), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + global3.c.d)));
}

