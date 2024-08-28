struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(2147483647i, 19603i, vec4<f32>(379f, 108f, 273f, -1031f), vec4<i32>(i32(-2147483648), 1i, 46801i, 1i), Struct_2(vec4<bool>(false, false, false, false), vec2<u32>(4294967295u, 0u))), Struct_3(i32(-2147483648), i32(-2147483648), vec4<f32>(-1000f, 1036f, -1492f, -242f), vec4<i32>(2147483647i, 35513i, 2147483647i, -17362i), Struct_2(vec4<bool>(false, false, true, false), vec2<u32>(43534u, 4294967295u))), Struct_3(0i, -28633i, vec4<f32>(-521f, -923f, 1516f, -1006f), vec4<i32>(-26845i, 139478i, -13186i, 0i), Struct_2(vec4<bool>(true, false, false, true), vec2<u32>(1u, 4061u))), Struct_3(-1i, 26226i, vec4<f32>(-1023f, -1635f, 486f, 1747f), vec4<i32>(-13311i, 0i, 0i, 58104i), Struct_2(vec4<bool>(false, false, true, true), vec2<u32>(6112u, 1u))), Struct_3(1i, i32(-2147483648), vec4<f32>(-280f, 713f, 1994f, -241f), vec4<i32>(27520i, i32(-2147483648), 30602i, 54951i), Struct_2(vec4<bool>(false, true, true, true), vec2<u32>(10394u, 4294967295u))), Struct_3(0i, i32(-2147483648), vec4<f32>(-100f, 532f, -301f, -506f), vec4<i32>(-19823i, 2147483647i, 0i, -1i), Struct_2(vec4<bool>(true, true, true, false), vec2<u32>(22048u, 0u))), Struct_3(37248i, -11138i, vec4<f32>(-124f, 576f, 1960f, -335f), vec4<i32>(-1i, 1i, -61548i, 24845i), Struct_2(vec4<bool>(false, true, false, false), vec2<u32>(0u, 0u))), Struct_3(-5616i, -697i, vec4<f32>(-1825f, 876f, 867f, 1025f), vec4<i32>(-75868i, 4687i, 0i, 23767i), Struct_2(vec4<bool>(false, false, true, false), vec2<u32>(1u, 7574u))), Struct_3(-376i, 2147483647i, vec4<f32>(1851f, 1080f, 681f, 727f), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -25782i), Struct_2(vec4<bool>(true, true, true, false), vec2<u32>(5968u, 40272u))), Struct_3(2147483647i, 2147483647i, vec4<f32>(774f, 1927f, 440f, 215f), vec4<i32>(i32(-2147483648), i32(-2147483648), -29846i, 10598i), Struct_2(vec4<bool>(true, true, false, false), vec2<u32>(38423u, 31759u))), Struct_3(13680i, i32(-2147483648), vec4<f32>(1083f, 1081f, -1000f, 531f), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 1i), Struct_2(vec4<bool>(true, false, false, false), vec2<u32>(0u, 21313u))), Struct_3(0i, i32(-2147483648), vec4<f32>(1874f, 695f, -933f, 219f), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -1i), Struct_2(vec4<bool>(true, true, true, false), vec2<u32>(5157u, 4294967295u))), Struct_3(0i, -7927i, vec4<f32>(991f, 714f, 645f, 586f), vec4<i32>(-1i, 29229i, 1i, 25558i), Struct_2(vec4<bool>(true, false, true, true), vec2<u32>(1u, 24573u))), Struct_3(35737i, 0i, vec4<f32>(-1096f, 770f, 729f, 473f), vec4<i32>(22973i, -30565i, -22139i, 2147483647i), Struct_2(vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 4294967295u))), Struct_3(-1i, 2147483647i, vec4<f32>(-1536f, -1014f, 104f, -587f), vec4<i32>(i32(-2147483648), -510i, -52241i, 16093i), Struct_2(vec4<bool>(false, true, false, false), vec2<u32>(1u, 19372u))), Struct_3(45784i, i32(-2147483648), vec4<f32>(425f, -1000f, 384f, -1602f), vec4<i32>(-8833i, i32(-2147483648), -1i, -1i), Struct_2(vec4<bool>(false, true, true, false), vec2<u32>(1u, 1977u))), Struct_3(2147483647i, 1i, vec4<f32>(-371f, 1752f, 1207f, -467f), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -49549i), Struct_2(vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 1u))), Struct_3(28657i, -65041i, vec4<f32>(2215f, 194f, 176f, -162f), vec4<i32>(-1i, 60477i, 6009i, -43353i), Struct_2(vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 14105u))), Struct_3(i32(-2147483648), 26509i, vec4<f32>(-1099f, -522f, -106f, -3048f), vec4<i32>(38433i, 0i, 3518i, 8332i), Struct_2(vec4<bool>(false, false, false, true), vec2<u32>(1u, 86896u))), Struct_3(-45749i, 2147483647i, vec4<f32>(-1328f, -249f, -1861f, 1000f), vec4<i32>(i32(-2147483648), 1i, -51628i, 13043i), Struct_2(vec4<bool>(true, false, false, true), vec2<u32>(92502u, 28889u))), Struct_3(-2400i, 2147483647i, vec4<f32>(821f, -279f, -872f, 1070f), vec4<i32>(-37990i, -46881i, 14232i, i32(-2147483648)), Struct_2(vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 4294967295u))), Struct_3(26507i, 0i, vec4<f32>(-535f, 1421f, 2077f, 147f), vec4<i32>(-7503i, 1i, -65816i, 85587i), Struct_2(vec4<bool>(true, true, false, false), vec2<u32>(0u, 0u))), Struct_3(0i, 19826i, vec4<f32>(1000f, 1156f, 1000f, 401f), vec4<i32>(-1i, -1i, 1i, 1i), Struct_2(vec4<bool>(false, false, true, true), vec2<u32>(27426u, 4294967295u))), Struct_3(0i, 26731i, vec4<f32>(-1444f, 450f, -392f, 402f), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 1i), Struct_2(vec4<bool>(false, true, true, true), vec2<u32>(30889u, 1983u))), Struct_3(28018i, -4275i, vec4<f32>(1248f, 817f, 1579f, 686f), vec4<i32>(i32(-2147483648), -1i, -1506i, 67838i), Struct_2(vec4<bool>(false, true, true, true), vec2<u32>(1u, 84361u))), Struct_3(18962i, -1i, vec4<f32>(864f, 2870f, -2406f, 1213f), vec4<i32>(1i, 53192i, -36349i, 798i), Struct_2(vec4<bool>(true, true, false, false), vec2<u32>(20145u, 0u))), Struct_3(-1i, 2147483647i, vec4<f32>(1000f, 1729f, 190f, -1000f), vec4<i32>(21270i, -37220i, 7813i, 3120i), Struct_2(vec4<bool>(false, true, false, false), vec2<u32>(4580u, 4294967295u))), Struct_3(2147483647i, 1i, vec4<f32>(-179f, -152f, 906f, 1111f), vec4<i32>(16777i, -1i, -47458i, 23772i), Struct_2(vec4<bool>(false, true, false, true), vec2<u32>(64526u, 12805u))));

var<private> global1: array<Struct_2, 8>;

var<private> global2: u32 = 63538u;

var<private> global3: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec4<bool> {
    let var_0 = ~1u;
    var var_1 = u_input.a.xx;
    var var_2 = global0[_wgslsmith_index_u32(37875u, 28u)];
    let var_3 = min(-2147483647i, ~var_1.x);
    let var_4 = var_2.c.yw;
    return vec4<bool>(var_2.e.a.x, global3.a, true, any(!select(var_2.e.a, vec4<bool>(false, var_2.e.a.x, false, global3.a), select(var_2.e.a, vec4<bool>(global3.a, true, global3.a, true), false))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global1 = array<Struct_2, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(101f, 281f, -535f, -1194f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 217f, _wgslsmith_f_op_f32(f32(-1f) * -1206f), -1353f)))));
    global1 = array<Struct_2, 8>();
    let var_1 = Struct_1(any(func_3(_wgslsmith_f_op_f32(-736f - _wgslsmith_div_f32(2064f, var_0.x)), var_0.x)));
    global3 = var_1;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: i32) -> bool {
    let var_0 = arg_3;
    global3 = func_2(vec2<bool>(!(!(!global3.a)), min(arg_2.e.b.x, 6073u) >= ~(arg_2.e.b.x >> (3212u % 32u))));
    var var_1 = arg_2.c.xy;
    return func_3(arg_1.x, -570f).x;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: f32) -> Struct_2 {
    global0 = array<Struct_3, 28>();
    let var_0 = vec2<bool>(!arg_2, arg_2);
    global1 = array<Struct_2, 8>();
    let var_1 = func_2(var_0);
    global1 = array<Struct_2, 8>();
    return Struct_2(vec4<bool>(true, true, func_2(var_0).a, all(!var_0)), vec2<u32>(1u, abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(20277u, 4114u), ~vec2<u32>(0u, 704u)))));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(global3.a);
    global2 = func_5(49849i, max(_wgslsmith_mult_i32(-1696i, 1i), u_input.a.x | u_input.a.x), all(vec2<bool>(!all(vec2<bool>(false, false)), func_3(arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x)).x)), -869f).b.x;
    var var_1 = func_5(_wgslsmith_add_i32(-(0i | _wgslsmith_dot_vec3_i32(u_input.a.yww, u_input.a.wxx)), u_input.a.x), arg_0.d.x, func_2(arg_0.e.a.yy).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x)));
    var var_2 = global1[_wgslsmith_index_u32(arg_0.e.b.x, 8u)];
    global0 = array<Struct_3, 28>();
    return func_2(!vec2<bool>(true, !var_0.a));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_2 {
    global2 = 31140u;
    global1 = array<Struct_2, 8>();
    global3 = func_6(Struct_3(24790i, _wgslsmith_mod_i32(-(~32011i), _wgslsmith_dot_vec4_i32(~u_input.a, u_input.a)), arg_2.c, arg_2.d, func_5(arg_2.d.x, u_input.a.x, func_4(func_2(arg_2.e.a.yw), _wgslsmith_f_op_vec3_f32(min(arg_3, arg_2.c.wyx)), Struct_3(arg_2.d.x, arg_2.d.x, arg_2.c, u_input.a, Struct_2(vec4<bool>(arg_2.e.a.x, global3.a, global3.a, arg_2.e.a.x), vec2<u32>(81389u, 3593u))), -2147483647i ^ arg_2.a), -1924f)));
    global2 = _wgslsmith_div_u32(max(arg_2.e.b.x, ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2.e.b.x), arg_2.e.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(firstTrailingBit(arg_0.x)), ~_wgslsmith_div_u32(93882u, arg_2.e.b.x)), ~vec2<u32>(1u, ~2160u)));
    global0 = array<Struct_3, 28>();
    return func_5(2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.zw, abs(u_input.a.yw) ^ -select(arg_2.d.yy, vec2<i32>(-41436i, -12376i), arg_2.e.a.x)), global3.a, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(f32(-1f) * -593f)));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(u_input.a.x), u_input.a.x, -1i, arg_0.a), abs(vec4<i32>(arg_0.a, -1i, -27002i, -32469i))), u_input.a), _wgslsmith_mult_i32(30214i, u_input.a.x) << (4294967295u % 32u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1109f)) * -2638f));
    global3 = arg_1;
    var var_2 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-1i, 1i, 0i, var_0.x)), vec4<i32>(arg_0.d.x, ~(-17828i), 0i, -11148i)), firstLeadingBit(7033i)), ~0i, arg_0.c, -_wgslsmith_clamp_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(0i, var_0.x, 24162i, arg_0.d.x) ^ u_input.a), vec4<i32>(abs(u_input.a.x), -62622i, firstTrailingBit(arg_0.b), -100764i)), Struct_2(select(!arg_0.e.a, arg_0.e.a, arg_0.e.a), arg_0.e.b));
    global2 = 15788u;
    return Struct_1(false);
}

fn func_8(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(~arg_1, arg_1), arg_1.x);
    var_0 = 6767u;
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-529f - -909f) - _wgslsmith_f_op_f32(trunc(693f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(850f)) + 215f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -771f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1131f, -1402f)))))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -137f), 1905f);
    return Struct_1(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(Struct_2(vec4<bool>(all(!vec4<bool>(false, true, false, global3.a)), global3.a, true, false), vec2<u32>(~(~0u), ~1u)), ~max(~vec3<u32>(4294967295u, 0u, 0u), ~select(vec3<u32>(3816u, 4294967295u, 34648u), vec3<u32>(20208u, 0u, 4294967295u), false)), func_7(Struct_3(4032i, firstLeadingBit(43507i << (1u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1281f, 1449f, -352f, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(579f, -267f, -750f, 945f) * vec4<f32>(-1615f, 617f, -381f, -1000f))), u_input.a, func_1(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_f32(215f, 1909f), Struct_3(u_input.a.x, u_input.a.x, vec4<f32>(237f, -998f, -1217f, -1070f), vec4<i32>(0i, 0i, u_input.a.x, u_input.a.x), Struct_2(vec4<bool>(global3.a, global3.a, true, false), vec2<u32>(131141u, 62362u))), vec3<f32>(660f, -1354f, -204f))), Struct_1(!global3.a)), Struct_1(all(func_5(_wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.wx), u_input.a.x, func_1(vec3<u32>(50822u, 4294967295u, 17504u), -755f, Struct_3(2147483647i, u_input.a.x, vec4<f32>(460f, 154f, 197f, 627f), vec4<i32>(-1i, u_input.a.x, u_input.a.x, -2147483647i), global1[_wgslsmith_index_u32(1u, 8u)]), vec3<f32>(-298f, 1763f, 240f)).a.x, _wgslsmith_div_f32(-394f, -279f)).a.zyy)));
    global0 = array<Struct_3, 28>();
    var var_1 = func_1(vec3<u32>(1u, _wgslsmith_div_u32(_wgslsmith_div_u32(~1u, 21595u), _wgslsmith_sub_u32(firstLeadingBit(1u), ~4294967295u)), 43929u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1262f + _wgslsmith_f_op_f32(-210f * -1616f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(476f * 207f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1408f + -2133f), _wgslsmith_div_f32(-1000f, 272f)))), Struct_3(_wgslsmith_add_i32(_wgslsmith_mod_i32(~u_input.a.x, 0i), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x & u_input.a.x)), u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-309f + -1359f) + _wgslsmith_f_op_f32(620f + -2390f)), -1833f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(298f, -1424f))), vec4<i32>(u_input.a.x, 1i, _wgslsmith_mult_i32(u_input.a.x >> (41955u % 32u), ~u_input.a.x), -18726i), func_5(-3287i, u_input.a.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1939f))))), vec3<f32>(-141f, _wgslsmith_f_op_f32(round(-777f)), -238f));
    global0 = array<Struct_3, 28>();
    let var_2 = func_2(vec2<bool>(var_1.b.x != var_1.b.x, any(vec2<bool>(true, true)) && false));
    global0 = array<Struct_3, 28>();
    let var_3 = _wgslsmith_div_vec4_u32(reverseBits(countOneBits(~vec4<u32>(55209u, var_1.b.x, 0u, 4294967295u))) & select(~vec4<u32>(var_1.b.x, 127931u, 52991u, var_1.b.x) & vec4<u32>(1u, 40240u, var_1.b.x, var_1.b.x), ~abs(vec4<u32>(94796u, var_1.b.x, 19325u, 0u)), vec4<bool>(true, true, false, func_3(870f, -166f).x)), _wgslsmith_mod_vec4_u32(reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, 0u, var_1.b.x, var_1.b.x), vec4<u32>(var_1.b.x, var_1.b.x, 41106u, var_1.b.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(func_1(vec3<u32>(1u, 4294967295u, var_1.b.x), 1000f, global0[_wgslsmith_index_u32(0u, 28u)], vec3<f32>(-796f, 1233f, -1017f)).b.x, ~4294967295u, var_1.b.x >> (25974u % 32u), ~var_1.b.x), ~(~vec4<u32>(52666u, 3000u, 28597u, 45078u)), ~vec4<u32>(37822u, 12347u, 51221u, var_1.b.x) & _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b.x, 58692u, 15050u, 50913u), vec4<u32>(21197u, var_1.b.x, 0u, var_1.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer((u_input.a.yy << (var_3.wy % vec2<u32>(32u))) & u_input.a.zw, (abs(abs(vec3<u32>(var_1.b.x, 4294967295u, var_3.x))) | (vec3<u32>(var_1.b.x, var_3.x, var_1.b.x) >> ((vec3<u32>(29973u, 1u, var_1.b.x) >> (var_3.yyz % vec3<u32>(32u))) % vec3<u32>(32u)))) << ((~abs(vec3<u32>(var_1.b.x, 9449u, var_1.b.x)) << (var_3.xwz % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<f32>(1897f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1549f)), _wgslsmith_div_f32(451f, -244f)))));
}

