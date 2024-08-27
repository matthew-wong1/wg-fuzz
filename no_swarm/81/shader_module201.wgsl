struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec3<f32>(1461f, -274f, 1285f), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -16392i)), Struct_1(vec3<f32>(808f, 236f, 185f), vec4<i32>(-16793i, i32(-2147483648), 9570i, -1i)), vec2<bool>(false, false), Struct_1(vec3<f32>(234f, -209f, -313f), vec4<i32>(i32(-2147483648), 2147483647i, -1i, i32(-2147483648)))), Struct_2(Struct_1(vec3<f32>(390f, 251f, 727f), vec4<i32>(2147483647i, -34008i, 67128i, -1i)), Struct_1(vec3<f32>(-1439f, 1479f, -1000f), vec4<i32>(35919i, -30287i, 1i, -23479i)), vec2<bool>(false, false), Struct_1(vec3<f32>(2964f, 471f, -1792f), vec4<i32>(-1i, 1i, 1i, i32(-2147483648)))), Struct_2(Struct_1(vec3<f32>(1000f, 694f, -459f), vec4<i32>(9147i, 2147483647i, i32(-2147483648), -56423i)), Struct_1(vec3<f32>(-219f, -1699f, 1361f), vec4<i32>(-1i, -1i, 3972i, -1i)), vec2<bool>(true, true), Struct_1(vec3<f32>(-1000f, 471f, -1598f), vec4<i32>(1i, 0i, 0i, -1i))), Struct_2(Struct_1(vec3<f32>(214f, -228f, -1000f), vec4<i32>(53556i, 0i, 1i, 43687i)), Struct_1(vec3<f32>(-1722f, -544f, -873f), vec4<i32>(15170i, 16950i, -1i, 1i)), vec2<bool>(true, false), Struct_1(vec3<f32>(361f, -1420f, -965f), vec4<i32>(2147483647i, i32(-2147483648), 0i, 33250i))), Struct_2(Struct_1(vec3<f32>(1000f, 624f, -458f), vec4<i32>(6292i, -1i, -1i, -11029i)), Struct_1(vec3<f32>(582f, -668f, -1343f), vec4<i32>(-35829i, 20545i, -40313i, -8319i)), vec2<bool>(true, true), Struct_1(vec3<f32>(388f, -1033f, -690f), vec4<i32>(-30445i, 2147483647i, -20162i, 8116i))), Struct_2(Struct_1(vec3<f32>(-1440f, -543f, -1000f), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -1i)), Struct_1(vec3<f32>(110f, -709f, -245f), vec4<i32>(20479i, 1669i, 0i, 1i)), vec2<bool>(false, false), Struct_1(vec3<f32>(1197f, -853f, 421f), vec4<i32>(12883i, 1i, -10821i, i32(-2147483648)))), Struct_2(Struct_1(vec3<f32>(-1788f, 120f, 584f), vec4<i32>(i32(-2147483648), -26072i, 29584i, -7571i)), Struct_1(vec3<f32>(895f, 194f, 1398f), vec4<i32>(-1i, -24065i, 1i, 0i)), vec2<bool>(false, true), Struct_1(vec3<f32>(458f, 124f, -569f), vec4<i32>(-1i, 87307i, 7796i, -963i))), Struct_2(Struct_1(vec3<f32>(-2394f, -240f, 502f), vec4<i32>(17448i, i32(-2147483648), 0i, -1i)), Struct_1(vec3<f32>(820f, -413f, 116f), vec4<i32>(-75216i, 6395i, 12836i, i32(-2147483648))), vec2<bool>(true, false), Struct_1(vec3<f32>(-816f, 479f, 864f), vec4<i32>(2147483647i, 2147483647i, 0i, 36197i))), Struct_2(Struct_1(vec3<f32>(1039f, -149f, 879f), vec4<i32>(45609i, 4751i, 2147483647i, -27164i)), Struct_1(vec3<f32>(-1000f, 485f, -282f), vec4<i32>(i32(-2147483648), 2147483647i, 18147i, 46160i)), vec2<bool>(true, false), Struct_1(vec3<f32>(-1000f, 1076f, 552f), vec4<i32>(2147483647i, -1i, 35614i, 20712i))), Struct_2(Struct_1(vec3<f32>(-362f, 1052f, 621f), vec4<i32>(-1i, -1i, 0i, -18899i)), Struct_1(vec3<f32>(-1766f, -1673f, 1009f), vec4<i32>(-2630i, -38327i, -56861i, -1i)), vec2<bool>(false, true), Struct_1(vec3<f32>(740f, 1745f, 617f), vec4<i32>(469i, -16727i, 13051i, 2147483647i))), Struct_2(Struct_1(vec3<f32>(596f, -476f, -443f), vec4<i32>(-31885i, -26564i, 4254i, -1i)), Struct_1(vec3<f32>(-1000f, 581f, -380f), vec4<i32>(-4850i, -1i, -12692i, -1i)), vec2<bool>(false, false), Struct_1(vec3<f32>(-1000f, -1922f, 659f), vec4<i32>(18598i, i32(-2147483648), 1i, 70991i))), Struct_2(Struct_1(vec3<f32>(-653f, 328f, 1092f), vec4<i32>(-18886i, i32(-2147483648), 5867i, 9150i)), Struct_1(vec3<f32>(856f, 1021f, 3250f), vec4<i32>(-40360i, -5299i, -859i, -57292i)), vec2<bool>(true, true), Struct_1(vec3<f32>(-1312f, 188f, -1000f), vec4<i32>(0i, -24746i, 0i, -1i))), Struct_2(Struct_1(vec3<f32>(361f, 1365f, -1507f), vec4<i32>(60366i, 11332i, 22670i, 35754i)), Struct_1(vec3<f32>(-529f, -499f, -671f), vec4<i32>(2147483647i, i32(-2147483648), 43117i, -8834i)), vec2<bool>(true, true), Struct_1(vec3<f32>(-1000f, -178f, -608f), vec4<i32>(-1i, -8225i, 8693i, -34573i))), Struct_2(Struct_1(vec3<f32>(579f, -1435f, 1000f), vec4<i32>(-29026i, 0i, 59614i, 5984i)), Struct_1(vec3<f32>(-850f, -586f, -1034f), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 32970i)), vec2<bool>(false, true), Struct_1(vec3<f32>(-680f, 1237f, 138f), vec4<i32>(-50957i, 100739i, 10567i, 24133i))), Struct_2(Struct_1(vec3<f32>(1162f, -370f, -725f), vec4<i32>(18203i, i32(-2147483648), -1i, -36186i)), Struct_1(vec3<f32>(-224f, -764f, -406f), vec4<i32>(1i, 8643i, i32(-2147483648), -1i)), vec2<bool>(true, true), Struct_1(vec3<f32>(635f, -689f, -1040f), vec4<i32>(36949i, 10850i, -10038i, -14461i))), Struct_2(Struct_1(vec3<f32>(-766f, -449f, 730f), vec4<i32>(2147483647i, -30825i, -60408i, 21192i)), Struct_1(vec3<f32>(-2026f, -210f, -1811f), vec4<i32>(4735i, -1i, 52626i, -1i)), vec2<bool>(false, true), Struct_1(vec3<f32>(1146f, -1012f, -1829f), vec4<i32>(10398i, -12128i, -11406i, 9732i))), Struct_2(Struct_1(vec3<f32>(-527f, 472f, -273f), vec4<i32>(0i, 1i, -17681i, -12209i)), Struct_1(vec3<f32>(612f, 1334f, -292f), vec4<i32>(-1i, 0i, 1i, -81339i)), vec2<bool>(false, false), Struct_1(vec3<f32>(1000f, 2036f, -1152f), vec4<i32>(-1i, 2147483647i, -48153i, 1i))), Struct_2(Struct_1(vec3<f32>(136f, 112f, -1139f), vec4<i32>(9875i, i32(-2147483648), 1i, 0i)), Struct_1(vec3<f32>(289f, 535f, -1471f), vec4<i32>(1i, -1i, i32(-2147483648), -3494i)), vec2<bool>(true, true), Struct_1(vec3<f32>(-846f, 156f, -1003f), vec4<i32>(1i, -34934i, 1i, -16448i))), Struct_2(Struct_1(vec3<f32>(1000f, 2295f, 531f), vec4<i32>(770i, -4607i, 0i, 0i)), Struct_1(vec3<f32>(-1207f, 883f, 127f), vec4<i32>(-6277i, -1i, -28823i, 0i)), vec2<bool>(false, false), Struct_1(vec3<f32>(507f, -1000f, 2007f), vec4<i32>(2147483647i, 17444i, -67387i, 1i))), Struct_2(Struct_1(vec3<f32>(842f, 315f, -1036f), vec4<i32>(22284i, 10338i, 0i, 2147483647i)), Struct_1(vec3<f32>(871f, 2301f, 1334f), vec4<i32>(0i, 3676i, -1i, -1i)), vec2<bool>(true, false), Struct_1(vec3<f32>(730f, -1033f, 341f), vec4<i32>(2147483647i, 2147483647i, -1i, 1i))), Struct_2(Struct_1(vec3<f32>(-1256f, 881f, -841f), vec4<i32>(-56290i, 1i, -29347i, 1i)), Struct_1(vec3<f32>(335f, 1210f, -1363f), vec4<i32>(2147483647i, -1593i, -55976i, -1i)), vec2<bool>(true, false), Struct_1(vec3<f32>(-896f, -1000f, -288f), vec4<i32>(2147483647i, 1i, -1i, -3025i))), Struct_2(Struct_1(vec3<f32>(1641f, 692f, 1224f), vec4<i32>(i32(-2147483648), 0i, -10774i, -12331i)), Struct_1(vec3<f32>(1465f, -2645f, -362f), vec4<i32>(33621i, 338i, 5322i, -59307i)), vec2<bool>(false, true), Struct_1(vec3<f32>(-1000f, 1058f, -321f), vec4<i32>(-37091i, i32(-2147483648), 35432i, -40906i))), Struct_2(Struct_1(vec3<f32>(754f, 1631f, 1103f), vec4<i32>(74502i, 2147483647i, -48358i, -15289i)), Struct_1(vec3<f32>(-1000f, -165f, 325f), vec4<i32>(13898i, 44683i, 0i, -12208i)), vec2<bool>(true, true), Struct_1(vec3<f32>(-268f, 1209f, 1460f), vec4<i32>(-1505i, 5797i, 0i, -36932i))), Struct_2(Struct_1(vec3<f32>(281f, 967f, 866f), vec4<i32>(50308i, 26657i, -23213i, 38092i)), Struct_1(vec3<f32>(434f, 665f, 504f), vec4<i32>(1i, i32(-2147483648), -58108i, i32(-2147483648))), vec2<bool>(true, false), Struct_1(vec3<f32>(-989f, -151f, -1664f), vec4<i32>(20980i, -20566i, -48748i, 2147483647i))));

var<private> global1: vec2<f32>;

var<private> global2: f32 = 1129f;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(291f, 1000f, 1495f), vec4<i32>(-1i, 0i, 1754i, 0i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    return reverseBits(arg_0.d.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global3.a.x)) * global3.a))), vec4<i32>(-1i, ~arg_0.b.x << (~80306u % 32u), max(_wgslsmith_clamp_i32(-arg_0.b.x, func_3(Struct_2(Struct_1(arg_0.a, global3.b), Struct_1(vec3<f32>(-877f, global1.x, arg_0.a.x), vec4<i32>(2147483647i, 29040i, -10623i, 2147483647i)), vec2<bool>(true, false), Struct_1(arg_0.a, vec4<i32>(12050i, -16332i, -22182i, global3.b.x))), vec4<f32>(966f, global3.a.x, -572f, -1000f), true), -arg_0.b.x), ~(-1i)), -(abs(-22058i) >> (1u % 32u))));
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(sign(588f)) <= _wgslsmith_f_op_f32(f32(-1f) * -590f), any(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true)), !any(vec2<bool>(true, true)) & any(vec3<bool>(true, false, all(vec2<bool>(true, true)))), all(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))));
    global3 = arg_0;
    var var_1 = countOneBits(vec4<i32>(-11832i, _wgslsmith_add_i32(-18843i, global3.b.x) << (abs(~u_input.b.x) % 32u), -arg_0.b.x, arg_1.b.x));
    var var_2 = !vec2<bool>(select(true, false, true), true);
    return var_0.wy;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_3(u_input.b.x, global0[_wgslsmith_index_u32(1u, 24u)], Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global3.a.x, 432f) + vec3<f32>(global1.x, -778f, -643f))))), vec4<i32>(_wgslsmith_div_i32(-arg_1.x, u_input.a), 34854i, reverseBits(firstLeadingBit(arg_1.x)), _wgslsmith_mod_i32(80209i, u_input.a))), max(global3.b.x, 2147483647i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))));
    global0 = array<Struct_2, 24>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global3.a.x), global3.a.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(max(var_0.c.a.x, _wgslsmith_f_op_f32(select(1215f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - global3.a.x), 219f)), false)))));
    var var_2 = arg_1.x;
    global0 = array<Struct_2, 24>();
    return Struct_3(max(~(~(~var_0.a)), 4294967295u), var_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.x, -590f, -101f)))), vec4<i32>(1i, -1i, ~(-1i), min(54656i, firstLeadingBit(global3.b.x)))), var_0.d, -110f);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>) -> vec2<u32> {
    var var_0 = func_4(select(!func_2(Struct_1(vec3<f32>(global1.x, 951f, arg_2.x), global3.b), Struct_1(arg_1.yxy, global3.b)), vec2<bool>(all(vec4<bool>(arg_0, arg_0, true, true)), arg_0), select(vec2<bool>(arg_0, arg_0 && arg_0), vec2<bool>(false, !arg_0), vec2<bool>(13337i == global3.b.x, 15020u == u_input.b.x))), global3.b);
    let var_1 = func_4(!vec2<bool>(1329f <= _wgslsmith_f_op_f32(-global3.a.x), func_4(var_0.b.c, _wgslsmith_sub_vec4_i32(vec4<i32>(16872i, 40900i, u_input.a, var_0.b.b.b.x), vec4<i32>(global3.b.x, u_input.a, 2147483647i, 1i))).b.c.x), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(~1i, _wgslsmith_sub_i32(global3.b.x, u_input.a)), -8471i), func_3(func_4(!vec2<bool>(var_0.b.c.x, true), global3.b).b, vec4<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(-global3.a.x), var_0.b.b.a.x), all(!vec4<bool>(arg_0, false, var_0.b.c.x, true))), _wgslsmith_add_i32(max(var_0.c.b.x ^ u_input.a, var_0.c.b.x), global3.b.x), _wgslsmith_mult_i32(abs(24909i), select(var_0.d & u_input.a, 7374i ^ global3.b.x, false))));
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global3.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(242f, var_1.c.a.x, var_1.b.d.a.x))))), vec4<i32>(-1i) * -var_1.c.b);
    var var_2 = _wgslsmith_mod_vec4_i32(firstLeadingBit(select(var_0.c.b, vec4<i32>(var_1.d, 6218i, -18995i, -38279i), true)) >> (~(~u_input.b) % vec4<u32>(32u)), -min(~vec4<i32>(1i, -28252i, 26815i, 39141i), abs(abs(vec4<i32>(var_0.c.b.x, -1i, -1i, 1032i)))));
    let var_3 = ~firstTrailingBit(u_input.b.yw);
    return select(~vec2<u32>(countOneBits(53174u), 25551u), countOneBits(vec2<u32>(12999u, u_input.b.x << (var_1.a % 32u))) ^ (u_input.b.xy | ~(~u_input.b.zx)), func_4(vec2<bool>(any(vec4<bool>(var_0.b.c.x, var_0.b.c.x, true, arg_0)) && true, any(!vec3<bool>(false, var_1.b.c.x, true))), _wgslsmith_clamp_vec4_i32(min(var_0.b.b.b, global3.b | vec4<i32>(var_0.b.b.b.x, var_2.x, var_1.d, -37160i)), _wgslsmith_sub_vec4_i32(-var_0.c.b, min(var_0.b.a.b, vec4<i32>(var_1.c.b.x, global3.b.x, var_1.c.b.x, -56430i))), abs(global3.b))).b.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -551f;
    var var_0 = -_wgslsmith_add_i32(-24947i, -_wgslsmith_mod_i32(-2147483647i, ~u_input.a));
    let var_1 = -249f;
    let var_2 = _wgslsmith_mod_vec2_i32(-_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, -32774i), ~global3.b.ww) >> (reverseBits(func_1(true, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(164f, 972f, -628f, global3.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global3.a.x, global3.a.x, var_1)))) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(global3.b.wz, _wgslsmith_mult_vec2_i32(global3.b.yz, vec2<i32>(u_input.a, 1i))), vec2<i32>(_wgslsmith_add_i32(0i, 1i), func_4(vec2<bool>(false, false), vec4<i32>(u_input.a, global3.b.x, u_input.a, -31142i)).d)) ^ reverseBits(~vec2<i32>(-3203i, -2147483647i)));
    let var_3 = -2147483647i;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3.a.x, -1361f))), _wgslsmith_f_op_f32(-global3.a.x))), -1000f);
    let var_4 = Struct_1(global3.a, abs(countOneBits(global3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(228f, 699f, global1.x, 440f))) * vec4<f32>(var_1, var_4.a.x, -1418f, -1000f)))), countOneBits(u_input.c << (115425u % 32u)), var_4.b.x);
}

