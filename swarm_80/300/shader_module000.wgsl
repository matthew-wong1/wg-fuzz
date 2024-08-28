struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec2<u32>(61931u, 4294967295u), true, Struct_2(Struct_1(vec3<f32>(-1466f, 614f, 390f), vec2<u32>(0u, 1u), true, vec2<u32>(3448u, 4294967295u))), Struct_1(vec3<f32>(-244f, 1000f, -495f), vec2<u32>(4294967295u, 0u), true, vec2<u32>(5859u, 16051u)), vec3<i32>(19720i, 9609i, 0i)), Struct_3(vec2<u32>(51838u, 9085u), false, Struct_2(Struct_1(vec3<f32>(-358f, -189f, 1595f), vec2<u32>(32798u, 0u), true, vec2<u32>(1u, 0u))), Struct_1(vec3<f32>(1418f, 232f, -659f), vec2<u32>(3508u, 20320u), false, vec2<u32>(0u, 110624u)), vec3<i32>(2147483647i, i32(-2147483648), -35355i)), Struct_3(vec2<u32>(56166u, 1u), false, Struct_2(Struct_1(vec3<f32>(-1035f, -1804f, 831f), vec2<u32>(7754u, 33880u), false, vec2<u32>(4294967295u, 0u))), Struct_1(vec3<f32>(-1313f, -865f, 1559f), vec2<u32>(58863u, 3029u), false, vec2<u32>(63421u, 1u)), vec3<i32>(-35064i, 56651i, -782i)), Struct_3(vec2<u32>(0u, 4294967295u), false, Struct_2(Struct_1(vec3<f32>(-394f, 110f, 123f), vec2<u32>(4294967295u, 1u), false, vec2<u32>(10728u, 4294967295u))), Struct_1(vec3<f32>(600f, 2161f, 2484f), vec2<u32>(4294967295u, 30364u), true, vec2<u32>(3384u, 1u)), vec3<i32>(i32(-2147483648), 32408i, 18920i)), Struct_3(vec2<u32>(1u, 1u), true, Struct_2(Struct_1(vec3<f32>(921f, -1014f, 138f), vec2<u32>(0u, 1u), false, vec2<u32>(48906u, 18371u))), Struct_1(vec3<f32>(-651f, 1923f, 585f), vec2<u32>(4294967295u, 1u), true, vec2<u32>(126416u, 16657u)), vec3<i32>(i32(-2147483648), -10978i, -14104i)), Struct_3(vec2<u32>(1u, 0u), false, Struct_2(Struct_1(vec3<f32>(-647f, -372f, -1318f), vec2<u32>(53362u, 1u), false, vec2<u32>(9862u, 1u))), Struct_1(vec3<f32>(-645f, 1278f, -1806f), vec2<u32>(55459u, 4294967295u), false, vec2<u32>(27503u, 4294967295u)), vec3<i32>(0i, 15679i, -35947i)), Struct_3(vec2<u32>(4294967295u, 33107u), false, Struct_2(Struct_1(vec3<f32>(160f, -1000f, -938f), vec2<u32>(1u, 4294967295u), false, vec2<u32>(52549u, 31439u))), Struct_1(vec3<f32>(-389f, -520f, -190f), vec2<u32>(21635u, 4294967295u), true, vec2<u32>(0u, 12u)), vec3<i32>(i32(-2147483648), -1i, 83386i)), Struct_3(vec2<u32>(0u, 0u), true, Struct_2(Struct_1(vec3<f32>(-666f, 567f, -607f), vec2<u32>(1u, 80959u), true, vec2<u32>(0u, 1u))), Struct_1(vec3<f32>(972f, 765f, 371f), vec2<u32>(41324u, 76523u), true, vec2<u32>(22850u, 21300u)), vec3<i32>(i32(-2147483648), 12271i, 2147483647i)), Struct_3(vec2<u32>(70680u, 0u), true, Struct_2(Struct_1(vec3<f32>(787f, 1759f, -1302f), vec2<u32>(27079u, 1u), false, vec2<u32>(36206u, 1u))), Struct_1(vec3<f32>(251f, -895f, -1340f), vec2<u32>(1u, 4294967295u), true, vec2<u32>(55083u, 97673u)), vec3<i32>(16651i, i32(-2147483648), -12360i)), Struct_3(vec2<u32>(1u, 0u), true, Struct_2(Struct_1(vec3<f32>(-1004f, -478f, 2017f), vec2<u32>(11341u, 4294967295u), false, vec2<u32>(1u, 0u))), Struct_1(vec3<f32>(-897f, 241f, 427f), vec2<u32>(0u, 65115u), false, vec2<u32>(67292u, 28236u)), vec3<i32>(21989i, i32(-2147483648), 1i)), Struct_3(vec2<u32>(25592u, 22858u), false, Struct_2(Struct_1(vec3<f32>(510f, -547f, -150f), vec2<u32>(1u, 29508u), false, vec2<u32>(4294967295u, 1u))), Struct_1(vec3<f32>(1726f, 939f, 488f), vec2<u32>(0u, 97808u), true, vec2<u32>(50436u, 1u)), vec3<i32>(1i, 42042i, 20576i)), Struct_3(vec2<u32>(1u, 13555u), true, Struct_2(Struct_1(vec3<f32>(149f, 1581f, -1510f), vec2<u32>(2825u, 110355u), true, vec2<u32>(37090u, 4294967295u))), Struct_1(vec3<f32>(220f, 1000f, -1399f), vec2<u32>(1u, 43893u), false, vec2<u32>(4294967295u, 4294967295u)), vec3<i32>(-56977i, i32(-2147483648), -5284i)), Struct_3(vec2<u32>(36712u, 1u), false, Struct_2(Struct_1(vec3<f32>(-1203f, -834f, -1406f), vec2<u32>(19208u, 60813u), true, vec2<u32>(85694u, 1u))), Struct_1(vec3<f32>(1238f, 156f, -501f), vec2<u32>(1u, 1u), false, vec2<u32>(58661u, 61976u)), vec3<i32>(-1i, -1i, 2147483647i)), Struct_3(vec2<u32>(9922u, 0u), false, Struct_2(Struct_1(vec3<f32>(322f, 2634f, -618f), vec2<u32>(4294967295u, 15436u), false, vec2<u32>(18718u, 8806u))), Struct_1(vec3<f32>(-575f, 493f, -789f), vec2<u32>(49353u, 4294967295u), false, vec2<u32>(1u, 18495u)), vec3<i32>(-29577i, 2147483647i, 3033i)), Struct_3(vec2<u32>(9314u, 87241u), false, Struct_2(Struct_1(vec3<f32>(465f, 1000f, -1511f), vec2<u32>(20695u, 79107u), true, vec2<u32>(4294967295u, 0u))), Struct_1(vec3<f32>(-1906f, 343f, 1211f), vec2<u32>(41252u, 1u), false, vec2<u32>(24696u, 0u)), vec3<i32>(0i, 0i, 14821i)), Struct_3(vec2<u32>(4294967295u, 1u), true, Struct_2(Struct_1(vec3<f32>(-1095f, -1628f, -295f), vec2<u32>(21281u, 38587u), false, vec2<u32>(4294967295u, 15272u))), Struct_1(vec3<f32>(-461f, 434f, -545f), vec2<u32>(1u, 0u), false, vec2<u32>(27367u, 4294967295u)), vec3<i32>(-4356i, 3957i, 1i)), Struct_3(vec2<u32>(6827u, 1u), true, Struct_2(Struct_1(vec3<f32>(-1379f, 476f, -181f), vec2<u32>(19179u, 4294967295u), true, vec2<u32>(53706u, 1u))), Struct_1(vec3<f32>(-503f, -672f, 1829f), vec2<u32>(4294967295u, 19213u), true, vec2<u32>(7841u, 8126u)), vec3<i32>(-28610i, -1i, i32(-2147483648))), Struct_3(vec2<u32>(0u, 4294967295u), true, Struct_2(Struct_1(vec3<f32>(-1097f, 217f, 915f), vec2<u32>(0u, 24703u), true, vec2<u32>(10555u, 0u))), Struct_1(vec3<f32>(360f, -291f, -676f), vec2<u32>(0u, 4294967295u), false, vec2<u32>(26892u, 0u)), vec3<i32>(2147483647i, 2670i, -1i)), Struct_3(vec2<u32>(22723u, 50268u), true, Struct_2(Struct_1(vec3<f32>(-812f, -1035f, 1319f), vec2<u32>(11029u, 38223u), false, vec2<u32>(90428u, 0u))), Struct_1(vec3<f32>(282f, 1000f, 795f), vec2<u32>(4294967295u, 0u), true, vec2<u32>(43944u, 35351u)), vec3<i32>(-1230i, 1i, -72185i)), Struct_3(vec2<u32>(78129u, 3868u), true, Struct_2(Struct_1(vec3<f32>(-1710f, 499f, 1579f), vec2<u32>(37211u, 23386u), false, vec2<u32>(71321u, 3803u))), Struct_1(vec3<f32>(470f, -587f, 860f), vec2<u32>(91206u, 4294967295u), false, vec2<u32>(1u, 39504u)), vec3<i32>(20229i, -1i, i32(-2147483648))), Struct_3(vec2<u32>(1u, 11015u), false, Struct_2(Struct_1(vec3<f32>(213f, 184f, 427f), vec2<u32>(4294967295u, 57825u), true, vec2<u32>(34838u, 1u))), Struct_1(vec3<f32>(-1038f, -941f, -1371f), vec2<u32>(0u, 18625u), false, vec2<u32>(34783u, 4294967295u)), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i)), Struct_3(vec2<u32>(1u, 670u), false, Struct_2(Struct_1(vec3<f32>(-228f, -693f, -555f), vec2<u32>(61183u, 18111u), false, vec2<u32>(0u, 4294967295u))), Struct_1(vec3<f32>(531f, 2733f, -417f), vec2<u32>(65449u, 4294967295u), false, vec2<u32>(4294967295u, 1u)), vec3<i32>(1i, 14809i, 0i)), Struct_3(vec2<u32>(0u, 21047u), true, Struct_2(Struct_1(vec3<f32>(757f, -505f, 452f), vec2<u32>(17784u, 0u), false, vec2<u32>(4294967295u, 58774u))), Struct_1(vec3<f32>(-748f, -180f, -180f), vec2<u32>(1u, 1u), false, vec2<u32>(3373u, 61303u)), vec3<i32>(2147483647i, i32(-2147483648), -42536i)), Struct_3(vec2<u32>(7270u, 4294967295u), false, Struct_2(Struct_1(vec3<f32>(-1088f, 2068f, 457f), vec2<u32>(69770u, 1u), false, vec2<u32>(60420u, 53391u))), Struct_1(vec3<f32>(-1418f, 735f, 707f), vec2<u32>(1u, 70738u), false, vec2<u32>(4294967295u, 15450u)), vec3<i32>(-56665i, 1i, -2626i)));

var<private> global1: vec4<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    global1 = ~(~abs(vec4<u32>(global1.x | global1.x, 0u, u_input.a.x | u_input.a.x, 32716u)));
    let var_0 = true;
    global0 = array<Struct_3, 24>();
    var var_1 = -43489i;
    global1 = u_input.a | u_input.a;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(373f, 162f, -1256f))), vec2<u32>(u_input.a.x, ~1u), false, global1.yz));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(~u_input.a.x, arg_0.a.b.x), arg_1.a.x << (max(abs(global1.x ^ global1.x), u_input.a.x) % 32u));
    global1 = ~(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(80918u, 10762u, 4294967295u, 4294967295u), u_input.a), select(vec4<u32>(26695u, 7834u, u_input.a.x, arg_0.a.d.x), u_input.a, vec4<bool>(false, arg_0.a.c, arg_0.a.c, arg_1.d.c))), vec4<u32>(~1u, 19724u, _wgslsmith_dot_vec3_u32(global1.xxx, global1.zxz), arg_0.a.b.x)));
    let var_1 = select(_wgslsmith_dot_vec3_u32(global1.wxy, ~vec3<u32>(reverseBits(4294967295u), var_0, ~1u)), u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-32016i, u_input.c.x, arg_1.e.x), arg_1.e, false), max(vec3<i32>(u_input.b, 4548i, u_input.c.x), arg_1.e)), 9387i, arg_1.e.x) != select(arg_1.e.x, min(reverseBits(-30854i), 2229i), any(vec4<bool>(arg_0.a.c, true, true, true)) || (arg_2.x <= 1000f)));
    let var_2 = countOneBits(((vec3<u32>(var_0, var_0, arg_1.d.d.x) & u_input.a.xxz) | _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 57673u, 1u), u_input.a.zxw, u_input.a.yyw)) << (_wgslsmith_clamp_vec3_u32(u_input.a.yyx | u_input.a.ywy, ~vec3<u32>(25796u, global1.x, arg_1.c.a.b.x), vec3<u32>(1u, arg_0.a.d.x, 22069u)) % vec3<u32>(32u))) & _wgslsmith_div_vec3_u32(~(~vec3<u32>(17031u, arg_1.d.b.x, 4294967295u)) >> ((~vec3<u32>(7233u, 4294967295u, global1.x) & (u_input.a.yxz >> (vec3<u32>(var_1, 31459u, 0u) % vec3<u32>(32u)))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 4294967295u | var_1, 21642u), _wgslsmith_sub_u32(24655u | global1.x, min(arg_1.a.x, 40485u)), var_1));
    let var_3 = arg_2.x;
    return _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), _wgslsmith_clamp_i32(arg_1.e.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(14628i, u_input.b, 1i, u_input.c.x), -vec4<i32>(u_input.c.x, -2147483647i, -27556i, -2147483647i)), u_input.c.x), _wgslsmith_sub_i32(-17108i >> (countOneBits(22902u) % 32u), u_input.c.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: bool) -> Struct_5 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1, -1623f)), _wgslsmith_f_op_f32(trunc(-639f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    let var_1 = Struct_2(Struct_1(vec3<f32>(-1032f, _wgslsmith_f_op_f32(669f - 1702f), _wgslsmith_f_op_f32(-arg_1)), ~u_input.a.zy, any(vec4<bool>(true, false, !arg_2, arg_2 | arg_2)), vec2<u32>(abs(107015u), ~u_input.a.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(400f + 1441f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1950f, var_1.a.a.x))))), func_2(vec4<bool>(var_1.a.c, arg_2, var_1.a.c, false)).a.a.x));
    global1 = max(countOneBits(u_input.a), ~u_input.a);
    return Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1160f * -592f), _wgslsmith_f_op_f32(floor(273f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))), 1028f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1, -1580f, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 694f, 268f, 1072f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.x, 1436f, arg_1, var_2.x) + vec4<f32>(arg_1, arg_1, var_2.x, -1334f))))), true);
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, func_3(func_2(vec4<bool>(true, false, false, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.yx, u_input.a.ww), 24u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(1672f, 183f, -394f, 1640f))), u_input.c.x | 11834i), -vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(u_input.c.x, u_input.b, u_input.b), u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-943f, 632f, true)), -1980f))), false);
    var var_1 = !vec3<bool>(false, 42646i < firstLeadingBit(-1i | u_input.c.x), false);
    let var_2 = global1.x;
    let var_3 = vec3<u32>(4294967295u, 1u, 106437u);
    let var_4 = global0[_wgslsmith_index_u32(min(var_3.x, global1.x), 24u)];
    return Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-657f, 430f))), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(766f - -1000f))))), ~select(vec2<u32>(global1.x, 1u), ~vec2<u32>(1u, 24791u), u_input.a.x <= global1.x), true, _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, global1.x), select(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_4.d.b.x), var_4.a), ~vec2<u32>(1u, 1u), any(var_1.xx))) ^ firstTrailingBit(var_4.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-624f, 520f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1306f * 269f))))));
    global0 = array<Struct_3, 24>();
    let var_1 = func_1();
    global1 = ~(~(~countOneBits(select(vec4<u32>(u_input.a.x, global1.x, var_1.b.x, u_input.a.x), vec4<u32>(45388u, 290u, 1u, u_input.a.x), vec4<bool>(true, var_1.c, true, var_1.c)))));
    let var_2 = ~reverseBits(u_input.b);
    let var_3 = func_2(select(!vec4<bool>(!var_1.c, var_1.c, false, var_1.c), vec4<bool>(false, (global1.x & u_input.a.x) < u_input.a.x, var_0 <= _wgslsmith_f_op_f32(-1131f * 1070f), !(var_1.b.x <= var_1.b.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~global1.xyz), ~var_3.a.b.x, _wgslsmith_f_op_f32(-func_1().a.x));
}

