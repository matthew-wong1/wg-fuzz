struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_2(vec4<f32>(1482f, -878f, 1735f, -1135f), 15689u), Struct_1(vec4<i32>(i32(-2147483648), 52105i, 1i, 1i), vec4<bool>(true, true, true, false), vec4<u32>(10746u, 1u, 4294967295u, 12526u), 1782f, -706f), vec2<u32>(39262u, 0u)), Struct_4(Struct_2(vec4<f32>(-1741f, -1501f, 1229f, -263f), 11231u), Struct_1(vec4<i32>(0i, 43459i, -1i, 1i), vec4<bool>(false, true, false, false), vec4<u32>(53092u, 76907u, 1u, 1u), -1463f, 431f), vec2<u32>(4294967295u, 0u)), Struct_4(Struct_2(vec4<f32>(1030f, 545f, 1891f, -1075f), 20306u), Struct_1(vec4<i32>(-16387i, 1i, i32(-2147483648), -12968i), vec4<bool>(true, true, true, false), vec4<u32>(53209u, 1u, 4294967295u, 0u), 1431f, -414f), vec2<u32>(0u, 4294967295u)), Struct_4(Struct_2(vec4<f32>(854f, 548f, -1293f, 1131f), 50671u), Struct_1(vec4<i32>(-50397i, 29268i, -19622i, 0i), vec4<bool>(true, true, false, true), vec4<u32>(4666u, 4294967295u, 1u, 1u), 511f, 1944f), vec2<u32>(1u, 45054u)), Struct_4(Struct_2(vec4<f32>(-981f, 385f, 173f, -226f), 73208u), Struct_1(vec4<i32>(39048i, 18953i, 33538i, 1i), vec4<bool>(false, true, true, false), vec4<u32>(1u, 12927u, 45780u, 55742u), -1420f, -216f), vec2<u32>(86795u, 0u)), Struct_4(Struct_2(vec4<f32>(-1393f, 1466f, -1738f, -117f), 1u), Struct_1(vec4<i32>(-12844i, -5906i, 1i, 2147483647i), vec4<bool>(false, true, false, false), vec4<u32>(0u, 19796u, 0u, 56893u), 2271f, 1000f), vec2<u32>(48350u, 60042u)), Struct_4(Struct_2(vec4<f32>(-395f, 335f, -1152f, 1770f), 0u), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -13550i, 1i), vec4<bool>(true, false, true, false), vec4<u32>(1u, 1u, 2300u, 6261u), 802f, 370f), vec2<u32>(52830u, 1u)), Struct_4(Struct_2(vec4<f32>(291f, -746f, 944f, 263f), 64901u), Struct_1(vec4<i32>(4617i, 37283i, -9387i, 2356i), vec4<bool>(true, true, true, true), vec4<u32>(1u, 73332u, 114572u, 42623u), 611f, -218f), vec2<u32>(64701u, 1126u)), Struct_4(Struct_2(vec4<f32>(220f, -635f, -1458f, -462f), 4294967295u), Struct_1(vec4<i32>(-29230i, 44885i, 1i, -7356i), vec4<bool>(true, true, false, false), vec4<u32>(0u, 49346u, 55158u, 21789u), 477f, -941f), vec2<u32>(4294967295u, 68066u)), Struct_4(Struct_2(vec4<f32>(-1231f, -811f, -1000f, 1091f), 21658u), Struct_1(vec4<i32>(-19851i, 21712i, 2147483647i, -31129i), vec4<bool>(true, false, false, true), vec4<u32>(0u, 41854u, 76856u, 49157u), -693f, -1415f), vec2<u32>(44477u, 37939u)), Struct_4(Struct_2(vec4<f32>(283f, 120f, -524f, -854f), 13896u), Struct_1(vec4<i32>(-5345i, -1i, -1i, -36802i), vec4<bool>(true, false, true, false), vec4<u32>(33978u, 4294967295u, 59117u, 1u), 683f, 369f), vec2<u32>(39783u, 3702u)), Struct_4(Struct_2(vec4<f32>(227f, -531f, -1411f, -1360f), 0u), Struct_1(vec4<i32>(-8348i, 29580i, 17060i, 33739i), vec4<bool>(true, false, true, true), vec4<u32>(0u, 0u, 4294967295u, 17722u), -186f, -170f), vec2<u32>(1u, 28020u)), Struct_4(Struct_2(vec4<f32>(-951f, 2039f, 721f, 836f), 4294967295u), Struct_1(vec4<i32>(i32(-2147483648), -15980i, 38940i, 29779i), vec4<bool>(true, true, true, false), vec4<u32>(15730u, 12938u, 1u, 80609u), 721f, -1198f), vec2<u32>(4294967295u, 48971u)), Struct_4(Struct_2(vec4<f32>(-1202f, -1058f, -1281f, -2181f), 13882u), Struct_1(vec4<i32>(20483i, i32(-2147483648), -8700i, -44348i), vec4<bool>(false, false, true, true), vec4<u32>(0u, 0u, 0u, 1u), -122f, 1003f), vec2<u32>(7619u, 4294967295u)), Struct_4(Struct_2(vec4<f32>(767f, 1545f, 1071f, -1324f), 4816u), Struct_1(vec4<i32>(0i, 0i, -7844i, 0i), vec4<bool>(false, false, true, false), vec4<u32>(90992u, 4294967295u, 0u, 22781u), 665f, -1790f), vec2<u32>(18329u, 38868u)), Struct_4(Struct_2(vec4<f32>(620f, 131f, -1444f, -1023f), 46876u), Struct_1(vec4<i32>(40781i, 4205i, -31315i, i32(-2147483648)), vec4<bool>(true, true, true, false), vec4<u32>(4294967295u, 34646u, 4294967295u, 68758u), 1064f, -452f), vec2<u32>(1u, 8222u)), Struct_4(Struct_2(vec4<f32>(-1169f, 1593f, -1779f, -1000f), 6936u), Struct_1(vec4<i32>(-13884i, -24398i, -5643i, i32(-2147483648)), vec4<bool>(true, true, false, true), vec4<u32>(17066u, 1u, 0u, 1u), 1041f, -1623f), vec2<u32>(3744u, 21231u)), Struct_4(Struct_2(vec4<f32>(1459f, -559f, -470f, 1000f), 30933u), Struct_1(vec4<i32>(70130i, 1i, 2147483647i, -6382i), vec4<bool>(false, false, false, true), vec4<u32>(6127u, 5839u, 35370u, 35652u), -329f, 1929f), vec2<u32>(88602u, 93140u)), Struct_4(Struct_2(vec4<f32>(-393f, -880f, 342f, -563f), 4294967295u), Struct_1(vec4<i32>(2147483647i, 26773i, 1i, -1i), vec4<bool>(false, true, true, true), vec4<u32>(23151u, 4294967295u, 74187u, 0u), -1404f, 1000f), vec2<u32>(0u, 0u)), Struct_4(Struct_2(vec4<f32>(-699f, 646f, 389f, 192f), 44231u), Struct_1(vec4<i32>(-12479i, 0i, 22528i, 17761i), vec4<bool>(false, true, true, false), vec4<u32>(0u, 1u, 21269u, 4294967295u), -1267f, 1399f), vec2<u32>(19493u, 0u)));

var<private> global1: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = -arg_0.a.ww;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1251f), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_0.e)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1670f)), arg_0.d, 1f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(1000f, 396f)), var_1.x)))));
    global1 = _wgslsmith_mult_i32((countOneBits(_wgslsmith_clamp_i32(-16197i, 12568i, 12162i)) << (_wgslsmith_div_u32(arg_0.c.x, 11834u) % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-48478i, -1i, var_0.x), arg_0.a.www), countOneBits(-1i));
    let var_3 = false;
    return ~(~54596u);
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_sub_vec2_u32(select(~(~(~vec2<u32>(u_input.a, 423u))), vec2<u32>(~u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a) << (4294967295u % 32u)), all(vec4<bool>(true, true, true, true))), vec2<u32>(_wgslsmith_add_u32(u_input.a | select(0u, u_input.a, true), ~1u), func_3(Struct_1(~vec4<i32>(-2147483647i, 18926i, 2147483647i, 2147483647i), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), reverseBits(vec4<u32>(u_input.a, 4294967295u, 0u, 21034u)), 560f, -558f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-828f, 1558f))), Struct_3(firstLeadingBit(vec4<i32>(1i, -46604i, 31853i, 56663i))))));
    var var_1 = 3863f;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, 117f, _wgslsmith_f_op_f32(1000f * 469f), 347f))), u_input.a);
    let var_3 = 1u;
    let var_4 = _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(~firstTrailingBit(0u)), _wgslsmith_mod_u32(~1u, reverseBits(_wgslsmith_mult_u32(1u, 74465u))), ~u_input.a, 1u), vec4<u32>(_wgslsmith_mod_u32(~(~var_0.x), ~max(u_input.a, 16008u)), var_0.x, select(u_input.a, _wgslsmith_clamp_u32(27978u, u_input.a, 34800u) >> (1u % 32u), true), var_0.x), vec4<u32>(0u, var_2.b, ~u_input.a, var_2.b));
    return _wgslsmith_f_op_vec3_f32(-var_2.a.wzz);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>) -> vec3<f32> {
    var var_0 = u_input.a | u_input.a;
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1203f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -781f)), _wgslsmith_f_op_f32(-682f + -941f)) - vec3<f32>(_wgslsmith_f_op_f32(select(1f, -1000f, arg_1.x)), -214f, _wgslsmith_f_op_f32(floor(183f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 20>();
    global0 = array<Struct_4, 20>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1525f, -597f, -589f) * vec3<f32>(-1608f, -841f, 1414f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-991f, -371f, 1122f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 66322i, -2147483647i, 47768i), vec4<i32>(2147483647i, 1i, -2147483647i, 2147483647i))), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, true))))));
    let var_1 = global0[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 1u) | vec3<u32>(1u, u_input.a, u_input.a), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(53060u, u_input.a, 1u))))), ~_wgslsmith_mult_u32(~(~u_input.a), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 4294967295u, u_input.a, 409u)), vec4<u32>(33275u, 0u, u_input.a, 1u))), all(!select(vec2<bool>(false, false), vec2<bool>(false, false), false)) || false), 20u)];
    let var_2 = var_1.a.a.zyy;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(var_1.b.c), _wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(var_1.b.a.x, -13824i, var_1.b.a.x) << (countOneBits(var_1.b.c.wzy) % vec3<u32>(32u))), vec3<i32>(abs(_wgslsmith_clamp_i32(-2147483647i, 7839i, 2147483647i)), var_1.b.a.x, _wgslsmith_clamp_i32(max(-27007i, -40484i), -5089i, var_1.b.a.x & var_1.b.a.x))));
}

