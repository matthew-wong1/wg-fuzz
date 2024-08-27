struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 91271u, 4294967295u);

var<private> global1: Struct_4 = Struct_4(vec3<i32>(30548i, 0i, -6031i), Struct_3(Struct_1(vec3<i32>(-12604i, 2147483647i, i32(-2147483648)), vec4<f32>(219f, 149f, 880f, -626f), vec4<f32>(-1260f, 391f, -790f, 427f), vec3<i32>(1i, -20607i, 1i)), -1130f, vec2<i32>(-6380i, -10390i)), vec4<bool>(false, true, false, false), Struct_2(false, Struct_1(vec3<i32>(-9834i, 1i, 28142i), vec4<f32>(-940f, -1582f, -1991f, 1613f), vec4<f32>(-1000f, -157f, 1000f, 1592f), vec3<i32>(36009i, -37641i, i32(-2147483648))), Struct_1(vec3<i32>(-2539i, -1i, -46212i), vec4<f32>(1000f, 406f, -957f, 159f), vec4<f32>(-2081f, -441f, 1105f, -284f), vec3<i32>(7224i, i32(-2147483648), -46759i))));

var<private> global2: i32;

var<private> global3: array<vec4<f32>, 12>;

var<private> global4: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec3<i32>(-431i, 2147483647i, -11762i), Struct_3(Struct_1(vec3<i32>(-1i, -42718i, 0i), vec4<f32>(1820f, 537f, -243f, -1156f), vec4<f32>(-1171f, -1000f, -427f, -277f), vec3<i32>(-1i, -1i, 1i)), 1195f, vec2<i32>(-38606i, -1i)), vec4<bool>(true, true, false, true), Struct_2(true, Struct_1(vec3<i32>(2147483647i, -1i, -9116i), vec4<f32>(250f, 336f, -934f, -691f), vec4<f32>(-859f, -905f, -1486f, 804f), vec3<i32>(-57837i, 52310i, -29041i)), Struct_1(vec3<i32>(-39555i, 0i, -1i), vec4<f32>(-688f, -762f, -1386f, -718f), vec4<f32>(1678f, 126f, -1417f, -1673f), vec3<i32>(2147483647i, 2147483647i, 1i)))), Struct_4(vec3<i32>(1158i, 1134i, -18276i), Struct_3(Struct_1(vec3<i32>(-37120i, 2147483647i, 1i), vec4<f32>(810f, -878f, 981f, 1474f), vec4<f32>(1000f, -445f, -402f, 1565f), vec3<i32>(2147483647i, 2147483647i, -1i)), -640f, vec2<i32>(12524i, -1i)), vec4<bool>(false, true, false, false), Struct_2(false, Struct_1(vec3<i32>(i32(-2147483648), 0i, -90771i), vec4<f32>(-1000f, 273f, -522f, 570f), vec4<f32>(-1491f, 238f, -1428f, -2358f), vec3<i32>(i32(-2147483648), 15764i, -20544i)), Struct_1(vec3<i32>(-2442i, -3197i, 0i), vec4<f32>(-437f, -710f, -1435f, 1000f), vec4<f32>(1000f, -427f, -383f, -2188f), vec3<i32>(60579i, 33987i, -48544i)))), Struct_4(vec3<i32>(45729i, 28361i, -32402i), Struct_3(Struct_1(vec3<i32>(1i, 8644i, -22366i), vec4<f32>(-1607f, -718f, -1429f, -1156f), vec4<f32>(-395f, 2133f, -577f, -1370f), vec3<i32>(i32(-2147483648), -28655i, -6692i)), -207f, vec2<i32>(0i, -38564i)), vec4<bool>(false, true, false, true), Struct_2(false, Struct_1(vec3<i32>(1i, 17110i, -11110i), vec4<f32>(-1404f, -795f, -1662f, -807f), vec4<f32>(-192f, 1343f, 1000f, -1234f), vec3<i32>(-1i, 23274i, 1i)), Struct_1(vec3<i32>(-14951i, -35100i, 15460i), vec4<f32>(711f, 321f, 1095f, -408f), vec4<f32>(697f, 473f, 1000f, -1531f), vec3<i32>(-12006i, -54712i, 1i)))), Struct_4(vec3<i32>(-3953i, -24582i, 2147483647i), Struct_3(Struct_1(vec3<i32>(2147483647i, 0i, -38824i), vec4<f32>(-1000f, 1078f, 753f, -1077f), vec4<f32>(-112f, -606f, -1804f, 864f), vec3<i32>(-1i, 0i, 0i)), 855f, vec2<i32>(-3060i, 0i)), vec4<bool>(true, false, true, true), Struct_2(false, Struct_1(vec3<i32>(-11673i, 2147483647i, -5449i), vec4<f32>(885f, -255f, 683f, 1202f), vec4<f32>(388f, 1000f, -1029f, -1000f), vec3<i32>(i32(-2147483648), -41040i, -12091i)), Struct_1(vec3<i32>(-24177i, 77820i, 1i), vec4<f32>(-1412f, 293f, 1000f, 1090f), vec4<f32>(281f, 1604f, 1316f, 234f), vec3<i32>(0i, -6568i, 11551i)))), Struct_4(vec3<i32>(-7351i, 1438i, 8992i), Struct_3(Struct_1(vec3<i32>(0i, -64597i, 2147483647i), vec4<f32>(-214f, 859f, 898f, 274f), vec4<f32>(-144f, 423f, -1148f, -1083f), vec3<i32>(-1i, 2147483647i, i32(-2147483648))), -1029f, vec2<i32>(0i, i32(-2147483648))), vec4<bool>(true, false, true, true), Struct_2(false, Struct_1(vec3<i32>(2147483647i, 3031i, -3165i), vec4<f32>(-1325f, -1053f, 690f, 266f), vec4<f32>(116f, 1541f, -1204f, -1000f), vec3<i32>(16594i, -50099i, 1i)), Struct_1(vec3<i32>(-5693i, -1871i, 0i), vec4<f32>(571f, 910f, 699f, 940f), vec4<f32>(-2027f, 1149f, 1176f, 1000f), vec3<i32>(1152i, -30564i, -41305i)))), Struct_4(vec3<i32>(i32(-2147483648), -82812i, -1i), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<f32>(1517f, 1060f, -2036f, -120f), vec4<f32>(-1138f, -147f, -1000f, -1037f), vec3<i32>(0i, 39622i, -12932i)), -259f, vec2<i32>(-1i, 2147483647i)), vec4<bool>(true, true, false, false), Struct_2(true, Struct_1(vec3<i32>(0i, -5198i, 1i), vec4<f32>(409f, 541f, -993f, 918f), vec4<f32>(-970f, 150f, -1000f, -949f), vec3<i32>(-6906i, 2147483647i, 0i)), Struct_1(vec3<i32>(-15376i, 2147483647i, 34426i), vec4<f32>(316f, -472f, -709f, 878f), vec4<f32>(-1219f, 477f, -1636f, 887f), vec3<i32>(2147483647i, -77649i, 2147483647i)))), Struct_4(vec3<i32>(0i, 0i, 2147483647i), Struct_3(Struct_1(vec3<i32>(16491i, 5480i, -2921i), vec4<f32>(-480f, -2059f, -1296f, -2432f), vec4<f32>(-604f, -759f, 1456f, 303f), vec3<i32>(29628i, -1i, 0i)), 1315f, vec2<i32>(-14883i, 1i)), vec4<bool>(true, true, false, true), Struct_2(false, Struct_1(vec3<i32>(-49130i, -1i, 21507i), vec4<f32>(1000f, -1075f, 210f, -846f), vec4<f32>(-1000f, -1599f, 229f, -1605f), vec3<i32>(-59191i, 12334i, i32(-2147483648))), Struct_1(vec3<i32>(-2117i, 0i, 2147483647i), vec4<f32>(170f, 735f, 640f, 1000f), vec4<f32>(-1965f, -145f, 841f, 1199f), vec3<i32>(-1i, -65915i, 14599i)))), Struct_4(vec3<i32>(41969i, 56760i, -20215i), Struct_3(Struct_1(vec3<i32>(14464i, -7344i, 9604i), vec4<f32>(-784f, 1375f, 1202f, 1037f), vec4<f32>(561f, -594f, -125f, -203f), vec3<i32>(-45317i, 1i, 2147483647i)), -637f, vec2<i32>(1i, -81938i)), vec4<bool>(true, true, false, false), Struct_2(true, Struct_1(vec3<i32>(-26870i, 18732i, 0i), vec4<f32>(627f, -1229f, 1373f, -613f), vec4<f32>(-1791f, -637f, -582f, -853f), vec3<i32>(27134i, i32(-2147483648), 0i)), Struct_1(vec3<i32>(-45382i, 1i, -16245i), vec4<f32>(-913f, -132f, 168f, 1033f), vec4<f32>(691f, 793f, 1000f, 1263f), vec3<i32>(70888i, -2556i, 15477i)))), Struct_4(vec3<i32>(-19910i, -3234i, -20049i), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), -36546i, i32(-2147483648)), vec4<f32>(854f, 870f, -564f, -489f), vec4<f32>(1000f, 834f, 745f, -775f), vec3<i32>(-1i, 287i, -1i)), 2468f, vec2<i32>(30172i, i32(-2147483648))), vec4<bool>(false, true, false, true), Struct_2(true, Struct_1(vec3<i32>(2147483647i, -21790i, -1i), vec4<f32>(2948f, 1429f, -1671f, 858f), vec4<f32>(949f, 1036f, -1664f, -705f), vec3<i32>(1i, -5127i, i32(-2147483648))), Struct_1(vec3<i32>(1i, 0i, 48108i), vec4<f32>(-1000f, 891f, -792f, -548f), vec4<f32>(1005f, -1611f, 1958f, 1163f), vec3<i32>(2147483647i, 45519i, 0i)))), Struct_4(vec3<i32>(21884i, 25230i, 0i), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), -7762i, -51599i), vec4<f32>(234f, -140f, -383f, 253f), vec4<f32>(260f, 1309f, -1613f, 1227f), vec3<i32>(i32(-2147483648), 3647i, -5935i)), 766f, vec2<i32>(-39294i, 3515i)), vec4<bool>(false, true, false, false), Struct_2(true, Struct_1(vec3<i32>(-15247i, 1i, 18023i), vec4<f32>(1343f, -390f, -517f, 1000f), vec4<f32>(-127f, 1116f, 1240f, 792f), vec3<i32>(50194i, 0i, -13133i)), Struct_1(vec3<i32>(-12294i, 1i, 23118i), vec4<f32>(-494f, 714f, -1113f, 1000f), vec4<f32>(1342f, -1185f, 213f, 270f), vec3<i32>(-16483i, 1i, 0i)))), Struct_4(vec3<i32>(39832i, -67385i, -1i), Struct_3(Struct_1(vec3<i32>(-1i, -26496i, -179i), vec4<f32>(533f, 915f, 346f, -569f), vec4<f32>(-904f, 416f, -601f, -531f), vec3<i32>(42385i, 11891i, 68353i)), -1233f, vec2<i32>(-9908i, 2147483647i)), vec4<bool>(false, true, true, true), Struct_2(false, Struct_1(vec3<i32>(14397i, 1122i, 6510i), vec4<f32>(117f, 746f, 270f, 522f), vec4<f32>(-234f, -614f, -480f, 561f), vec3<i32>(-1i, 1i, -56998i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 2147483647i), vec4<f32>(547f, 341f, -288f, -130f), vec4<f32>(-922f, 845f, -1767f, 442f), vec3<i32>(-30830i, -116i, -27278i)))), Struct_4(vec3<i32>(-11157i, 15682i, -5079i), Struct_3(Struct_1(vec3<i32>(52098i, i32(-2147483648), 35829i), vec4<f32>(-401f, -533f, 899f, -287f), vec4<f32>(-2301f, -1950f, -2604f, 126f), vec3<i32>(3359i, -1i, 1i)), -284f, vec2<i32>(-1i, 36220i)), vec4<bool>(false, false, true, false), Struct_2(false, Struct_1(vec3<i32>(0i, 2181i, 1i), vec4<f32>(-1000f, 365f, -1000f, 530f), vec4<f32>(1394f, -248f, -440f, -499f), vec3<i32>(-12935i, 29484i, 2147483647i)), Struct_1(vec3<i32>(51643i, i32(-2147483648), 20425i), vec4<f32>(-1136f, 952f, 984f, -1133f), vec4<f32>(-717f, -388f, 748f, -1230f), vec3<i32>(0i, -1i, 2147483647i)))), Struct_4(vec3<i32>(-1i, 28910i, -1i), Struct_3(Struct_1(vec3<i32>(2147483647i, 4532i, i32(-2147483648)), vec4<f32>(595f, 760f, 1197f, 1548f), vec4<f32>(1876f, 2420f, 424f, -2415f), vec3<i32>(1i, -15470i, 1i)), 1000f, vec2<i32>(i32(-2147483648), 6128i)), vec4<bool>(true, true, false, true), Struct_2(false, Struct_1(vec3<i32>(1i, 2147483647i, -3289i), vec4<f32>(-1801f, 507f, 167f, -1599f), vec4<f32>(-225f, -935f, -231f, -1671f), vec3<i32>(30461i, 17447i, -67040i)), Struct_1(vec3<i32>(-1i, 1i, i32(-2147483648)), vec4<f32>(731f, -1000f, -143f, -1177f), vec4<f32>(2073f, 1744f, 1299f, -176f), vec3<i32>(-53824i, 0i, i32(-2147483648))))));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0));
    global0 = abs(vec3<u32>(global0.x, ~(~1u), global0.x));
    var var_1 = -1i;
    let var_2 = vec3<bool>(global1.d.a, any(select(global1.c.xxz, global1.c.yzz, !global1.c.wzw)), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(global1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.c.c.x - arg_1)))), _wgslsmith_f_op_f32(-global1.d.b.b.x))));
    return true;
}

fn func_2() -> i32 {
    var var_0 = vec4<bool>(true, all(vec2<bool>(!global1.d.a, true)), true, global1.b.c.x >= 1816i);
    global3 = array<vec4<f32>, 12>();
    let var_1 = select(select(global1.c.zz, vec2<bool>(var_0.x, true), var_0.wx), var_0.ww, func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global1.b.a.c)) * vec4<f32>(global1.d.c.c.x, global1.d.c.c.x, global1.d.b.b.x, global1.d.b.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1429f, 212f, global1.b.a.c.x, 645f)), vec4<bool>(var_0.x || true, any(global1.c), any(vec2<bool>(true, false)), any(vec3<bool>(false, true, true))))), 317f, reverseBits(global1.d.c.a.x)));
    global0 = countOneBits(vec3<u32>(firstTrailingBit(~0u), abs(global0.x ^ u_input.b.x), ~0u));
    global2 = _wgslsmith_dot_vec3_i32(~(-max(~vec3<i32>(u_input.a.x, global1.a.x, global1.d.b.a.x), abs(global1.d.b.a))), _wgslsmith_div_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.c, 0i, -56696i), vec3<i32>(global1.a.x, -20022i, global1.b.c.x)), _wgslsmith_add_vec3_i32(abs(abs(vec3<i32>(u_input.c, -21558i, global1.a.x))), global1.a)));
    return -1i;
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: u32, arg_3: f32) -> vec4<u32> {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(arg_1.b.c.x | ((arg_1.a.x >> (global0.x % 32u)) | func_2()), firstTrailingBit(u_input.a.x | -2147483647i)), global1.a.x, 0i);
    global2 = u_input.c;
    let var_1 = select(~vec3<i32>(var_0.x, -firstLeadingBit(global1.a.x), 36729i), _wgslsmith_clamp_vec3_i32(~(-arg_1.b.a.d), firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b.a.a.x, global1.a.x, 0i), vec3<i32>(-3440i, arg_1.d.b.a.x, -2147483647i)))), global1.a), select(vec3<bool>(true, !all(vec2<bool>(true, false)), arg_1.d.a), arg_1.c.xyx, vec3<bool>(!any(vec4<bool>(global1.c.x, global1.d.a, true, false)), global1.c.x, false)));
    global0 = abs(vec3<u32>(~(1u << (arg_2 % 32u)), global0.x, global0.x));
    global1 = arg_1;
    return select(abs(reverseBits(~vec4<u32>(u_input.d, 110894u, arg_0, 5917u) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, global0.x, u_input.b.x, 81687u), vec4<u32>(u_input.b.x, 10232u, 1u, arg_2)) % vec4<u32>(32u)))), vec4<u32>(arg_0, global0.x, _wgslsmith_mult_u32(arg_2, ~arg_2), 48760u), !select(vec4<bool>(!arg_1.c.x, false, false && global1.c.x, true), select(select(arg_1.c, arg_1.c, vec4<bool>(arg_1.d.a, false, arg_1.c.x, global1.c.x)), select(vec4<bool>(true, global1.d.a, global1.d.a, global1.c.x), vec4<bool>(false, arg_1.c.x, true, global1.d.a), arg_1.c.x), !vec4<bool>(true, global1.c.x, false, global1.c.x)), !arg_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.d;
    let var_1 = ~(func_1(0u, Struct_4(abs(global1.a), Struct_3(Struct_1(global1.a, var_0.c.b, var_0.b.c, global1.b.a.d), -655f, var_0.c.a.zz), vec4<bool>(false, global1.c.x, false, true), global1.d), 1u, 943f) ^ vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x)), u_input.d, u_input.d, 8526u));
    var_0 = global1.d;
    var var_2 = Struct_1(vec3<i32>(-1i) * -reverseBits(var_0.c.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1018f, var_0.b.c.x, -1493f, global1.d.c.c.x) - vec4<f32>(var_0.b.b.x, 1235f, global1.d.b.c.x, 595f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-726f, -284f, -936f, global1.b.a.c.x) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-820f, var_0.b.b.x, var_0.b.b.x, global1.d.c.c.x))))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_clamp_vec2_u32(u_input.b, global0.xx, _wgslsmith_div_vec2_u32(var_1.yw, u_input.b))), 12u)])), vec4<f32>(1499f, 172f, global1.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -175f)) + _wgslsmith_f_op_f32(floor(var_0.b.c.x)))), ~global1.b.a.d);
    var var_3 = global1.b;
    let var_4 = var_1;
    var var_5 = -2147483647i;
    global0 = ~(~select(var_1.yxx, var_1.wyz, true) | (~vec3<u32>(66727u, global0.x, var_1.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 81071u), vec3<u32>(var_4.x, u_input.b.x, var_4.x)) % vec3<u32>(32u)))) >> (_wgslsmith_div_vec3_u32(var_4.ywz, max(var_4.zxz << (func_1(var_4.x, Struct_4(vec3<i32>(23765i, 2147483647i, -29884i), global1.b, vec4<bool>(var_0.a, false, var_0.a, false), global1.d), 70072u, var_3.a.c.x).zwy % vec3<u32>(32u)), ~select(vec3<u32>(var_1.x, var_1.x, u_input.d), vec3<u32>(31917u, 4294967295u, 1u), global1.c.wyx))) % vec3<u32>(32u));
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.d.x, global1.d.c.c.yw);
}

