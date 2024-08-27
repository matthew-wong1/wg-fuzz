struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<f32>;

var<private> global2: Struct_2 = Struct_2(39526i, vec3<u32>(0u, 4379u, 0u), -1577f, Struct_1(vec4<f32>(-618f, 556f, 688f, 1327f), -300f, vec3<f32>(-1000f, 698f, -1000f), vec3<u32>(4294967295u, 16334u, 0u)));

var<private> global3: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(Struct_2(2147483647i, vec3<u32>(31507u, 50072u, 3933u), 1030f, Struct_1(vec4<f32>(-1945f, -300f, 237f, -1528f), 893f, vec3<f32>(-518f, -1000f, -487f), vec3<u32>(104058u, 22863u, 4294967295u))), Struct_2(-1i, vec3<u32>(1u, 4294967295u, 54646u), 382f, Struct_1(vec4<f32>(-902f, 109f, 1005f, 888f), -1742f, vec3<f32>(-2356f, 1408f, 544f), vec3<u32>(38806u, 0u, 18028u))), Struct_3(vec2<f32>(119f, -1334f), vec2<f32>(1759f, -672f), false), 3076u), Struct_5(Struct_2(0i, vec3<u32>(4294967295u, 48178u, 28641u), 1363f, Struct_1(vec4<f32>(-894f, -1444f, -1002f, -745f), -2111f, vec3<f32>(976f, -904f, -1843f), vec3<u32>(1u, 20974u, 47697u))), Struct_2(1i, vec3<u32>(23934u, 13429u, 1u), 1328f, Struct_1(vec4<f32>(826f, -458f, -753f, 159f), -1386f, vec3<f32>(-1374f, -1140f, -117f), vec3<u32>(80649u, 5646u, 1u))), Struct_3(vec2<f32>(-1008f, -790f), vec2<f32>(-229f, -754f), true), 31165u), Struct_5(Struct_2(2147483647i, vec3<u32>(1u, 4294967295u, 19714u), -1708f, Struct_1(vec4<f32>(101f, 364f, 582f, 1034f), -1638f, vec3<f32>(676f, -1418f, 167f), vec3<u32>(0u, 0u, 35767u))), Struct_2(3169i, vec3<u32>(42230u, 4294967295u, 21646u), 1435f, Struct_1(vec4<f32>(-704f, 579f, -1496f, 750f), 517f, vec3<f32>(-2573f, 840f, -1861f), vec3<u32>(2339u, 4294967295u, 27420u))), Struct_3(vec2<f32>(1854f, 338f), vec2<f32>(554f, 554f), true), 1u), Struct_5(Struct_2(1i, vec3<u32>(37624u, 106835u, 4294967295u), 823f, Struct_1(vec4<f32>(-199f, -699f, 407f, -1228f), -839f, vec3<f32>(-694f, -255f, 1012f), vec3<u32>(0u, 45018u, 41708u))), Struct_2(-3503i, vec3<u32>(1u, 1u, 105080u), 1442f, Struct_1(vec4<f32>(-278f, 1309f, 1222f, -1341f), 813f, vec3<f32>(-1000f, -277f, -352f), vec3<u32>(1u, 42244u, 0u))), Struct_3(vec2<f32>(607f, 179f), vec2<f32>(-1589f, 787f), false), 187276u), Struct_5(Struct_2(1i, vec3<u32>(23047u, 24775u, 1u), 613f, Struct_1(vec4<f32>(614f, 575f, 267f, 383f), -1006f, vec3<f32>(895f, -1201f, -727f), vec3<u32>(1u, 1u, 57844u))), Struct_2(15785i, vec3<u32>(1u, 8874u, 1u), -505f, Struct_1(vec4<f32>(797f, 773f, 375f, 1375f), -1001f, vec3<f32>(231f, 962f, 536f), vec3<u32>(30545u, 4294967295u, 1u))), Struct_3(vec2<f32>(1000f, 636f), vec2<f32>(-685f, -224f), true), 16935u), Struct_5(Struct_2(i32(-2147483648), vec3<u32>(18503u, 16385u, 23u), -3423f, Struct_1(vec4<f32>(-479f, -1393f, -2034f, 1467f), 246f, vec3<f32>(-1134f, -632f, -1106f), vec3<u32>(0u, 0u, 4294967295u))), Struct_2(-295i, vec3<u32>(21918u, 16131u, 1u), -1472f, Struct_1(vec4<f32>(613f, 233f, 294f, -825f), -1000f, vec3<f32>(202f, -1043f, -1686f), vec3<u32>(0u, 31807u, 4294967295u))), Struct_3(vec2<f32>(-720f, 100f), vec2<f32>(1532f, 2310f), true), 4294967295u), Struct_5(Struct_2(-5502i, vec3<u32>(1u, 118u, 10696u), -765f, Struct_1(vec4<f32>(-1305f, -680f, -1968f, 905f), 1000f, vec3<f32>(-367f, -233f, -877f), vec3<u32>(6931u, 4294967295u, 8799u))), Struct_2(i32(-2147483648), vec3<u32>(0u, 50805u, 6858u), 304f, Struct_1(vec4<f32>(-253f, -302f, -659f, -1787f), 437f, vec3<f32>(1508f, 1195f, 175f), vec3<u32>(70375u, 4294967295u, 16729u))), Struct_3(vec2<f32>(645f, 389f), vec2<f32>(-189f, 419f), true), 48646u), Struct_5(Struct_2(24706i, vec3<u32>(24525u, 4294967295u, 1u), -906f, Struct_1(vec4<f32>(-751f, -543f, -379f, 145f), 745f, vec3<f32>(607f, 373f, 750f), vec3<u32>(37974u, 0u, 0u))), Struct_2(11708i, vec3<u32>(40872u, 73303u, 4294967295u), 690f, Struct_1(vec4<f32>(130f, 708f, 301f, 108f), -1180f, vec3<f32>(-1546f, -772f, 1000f), vec3<u32>(4294967295u, 1u, 12111u))), Struct_3(vec2<f32>(512f, 208f), vec2<f32>(1001f, -899f), true), 4294967295u), Struct_5(Struct_2(2147483647i, vec3<u32>(1u, 72866u, 20829u), -162f, Struct_1(vec4<f32>(-818f, 1150f, -762f, 573f), -437f, vec3<f32>(-273f, -891f, 763f), vec3<u32>(4294967295u, 1u, 1u))), Struct_2(-12587i, vec3<u32>(0u, 1u, 4294967295u), 1576f, Struct_1(vec4<f32>(-235f, -599f, 159f, -1646f), -822f, vec3<f32>(285f, -2177f, 631f), vec3<u32>(4294967295u, 66534u, 9071u))), Struct_3(vec2<f32>(-1808f, 740f), vec2<f32>(560f, -1542f), true), 0u), Struct_5(Struct_2(20181i, vec3<u32>(3270u, 4294967295u, 0u), -1000f, Struct_1(vec4<f32>(-921f, 421f, 611f, -1486f), -704f, vec3<f32>(-519f, -1087f, 637f), vec3<u32>(47633u, 2813u, 1u))), Struct_2(-27943i, vec3<u32>(62281u, 30067u, 0u), 880f, Struct_1(vec4<f32>(255f, -408f, -1000f, 813f), -1000f, vec3<f32>(204f, -2001f, 1000f), vec3<u32>(42302u, 52845u, 13886u))), Struct_3(vec2<f32>(-333f, 328f), vec2<f32>(-1006f, -1023f), false), 47578u), Struct_5(Struct_2(-12618i, vec3<u32>(10749u, 4294967295u, 0u), 1000f, Struct_1(vec4<f32>(-1666f, -1000f, -1181f, -1000f), 1000f, vec3<f32>(604f, -1000f, -269f), vec3<u32>(1u, 35717u, 25692u))), Struct_2(0i, vec3<u32>(4294967295u, 0u, 0u), 881f, Struct_1(vec4<f32>(-562f, 198f, 1000f, 649f), 1643f, vec3<f32>(555f, 1000f, 1000f), vec3<u32>(0u, 1u, 27775u))), Struct_3(vec2<f32>(-1000f, -390f), vec2<f32>(-877f, -1256f), true), 19465u), Struct_5(Struct_2(-55045i, vec3<u32>(29223u, 118299u, 1u), 779f, Struct_1(vec4<f32>(-1197f, -392f, -1656f, -1000f), 751f, vec3<f32>(1000f, -424f, 1373f), vec3<u32>(44586u, 16874u, 0u))), Struct_2(-35237i, vec3<u32>(12208u, 29812u, 4294967295u), 561f, Struct_1(vec4<f32>(2482f, -1311f, 337f, -452f), -395f, vec3<f32>(-1692f, 1382f, -1460f), vec3<u32>(4294967295u, 53516u, 17958u))), Struct_3(vec2<f32>(-1183f, -184f), vec2<f32>(-2174f, -879f), true), 122172u), Struct_5(Struct_2(1i, vec3<u32>(4294967295u, 60277u, 131089u), 1543f, Struct_1(vec4<f32>(1000f, 449f, 635f, 3688f), -960f, vec3<f32>(1251f, -405f, -446f), vec3<u32>(4294967295u, 84568u, 4294967295u))), Struct_2(41080i, vec3<u32>(1u, 4294967295u, 40326u), -401f, Struct_1(vec4<f32>(-1125f, -1836f, 473f, -343f), 548f, vec3<f32>(762f, -249f, 1505f), vec3<u32>(4294967295u, 4294967295u, 14321u))), Struct_3(vec2<f32>(-650f, -607f), vec2<f32>(544f, 859f), false), 4294967295u), Struct_5(Struct_2(-1i, vec3<u32>(4294967295u, 4294967295u, 4294967295u), 1000f, Struct_1(vec4<f32>(-206f, 109f, 2154f, 740f), -214f, vec3<f32>(-1731f, -1040f, -1376f), vec3<u32>(77225u, 27730u, 61122u))), Struct_2(58856i, vec3<u32>(34750u, 4294967295u, 97226u), -171f, Struct_1(vec4<f32>(613f, 1689f, -366f, 194f), 411f, vec3<f32>(1052f, 339f, 1036f), vec3<u32>(43550u, 34982u, 16603u))), Struct_3(vec2<f32>(-376f, -819f), vec2<f32>(603f, -1284f), true), 0u), Struct_5(Struct_2(-1i, vec3<u32>(4294967295u, 0u, 4294967295u), 994f, Struct_1(vec4<f32>(1505f, -1439f, 1493f, -841f), -658f, vec3<f32>(371f, 1000f, 499f), vec3<u32>(4294967295u, 65456u, 1u))), Struct_2(23418i, vec3<u32>(38498u, 1u, 4294967295u), 1464f, Struct_1(vec4<f32>(1377f, 1208f, -1000f, 406f), -2568f, vec3<f32>(-1000f, -682f, 622f), vec3<u32>(52126u, 1u, 111663u))), Struct_3(vec2<f32>(2194f, 491f), vec2<f32>(108f, -653f), false), 1u), Struct_5(Struct_2(51701i, vec3<u32>(53442u, 27252u, 1u), 530f, Struct_1(vec4<f32>(-1559f, 289f, 910f, -209f), -287f, vec3<f32>(1090f, -552f, 122f), vec3<u32>(1u, 0u, 28317u))), Struct_2(9542i, vec3<u32>(0u, 0u, 43694u), -777f, Struct_1(vec4<f32>(-531f, 1288f, 1000f, 740f), -1811f, vec3<f32>(1031f, 152f, -674f), vec3<u32>(49334u, 95354u, 65673u))), Struct_3(vec2<f32>(453f, -1087f), vec2<f32>(-1718f, -210f), true), 1u), Struct_5(Struct_2(-1i, vec3<u32>(16946u, 4294967295u, 28393u), -191f, Struct_1(vec4<f32>(1653f, -1596f, -950f, 908f), 1354f, vec3<f32>(-445f, 1358f, -1850f), vec3<u32>(6581u, 1u, 0u))), Struct_2(i32(-2147483648), vec3<u32>(8099u, 4294967295u, 4294967295u), -1037f, Struct_1(vec4<f32>(-146f, -811f, 2400f, 309f), 1333f, vec3<f32>(-294f, 1000f, -866f), vec3<u32>(0u, 4294967295u, 4294967295u))), Struct_3(vec2<f32>(759f, -888f), vec2<f32>(743f, 666f), false), 1u), Struct_5(Struct_2(2832i, vec3<u32>(4294967295u, 26343u, 1u), -166f, Struct_1(vec4<f32>(-709f, 709f, 145f, -901f), -774f, vec3<f32>(774f, -236f, -1620f), vec3<u32>(4294967295u, 11899u, 0u))), Struct_2(-9878i, vec3<u32>(115710u, 94056u, 4294967295u), -499f, Struct_1(vec4<f32>(503f, 511f, -126f, 754f), 838f, vec3<f32>(-1531f, 976f, -1208f), vec3<u32>(3268u, 34971u, 4294967295u))), Struct_3(vec2<f32>(109f, -1400f), vec2<f32>(-2190f, -1422f), true), 53146u), Struct_5(Struct_2(2147483647i, vec3<u32>(1u, 6218u, 49155u), 1664f, Struct_1(vec4<f32>(-655f, -108f, -244f, 179f), -1133f, vec3<f32>(168f, -154f, 152f), vec3<u32>(1u, 86535u, 4294967295u))), Struct_2(46621i, vec3<u32>(44302u, 1u, 4294967295u), -1019f, Struct_1(vec4<f32>(1303f, 411f, 582f, -1555f), -2468f, vec3<f32>(-1098f, -1242f, 547f), vec3<u32>(4294967295u, 12716u, 18413u))), Struct_3(vec2<f32>(518f, 1422f), vec2<f32>(-1000f, -1350f), true), 20901u), Struct_5(Struct_2(-26807i, vec3<u32>(4294967295u, 17014u, 15490u), -345f, Struct_1(vec4<f32>(-392f, -385f, -232f, -708f), 755f, vec3<f32>(322f, -1783f, -1272f), vec3<u32>(0u, 57837u, 0u))), Struct_2(16628i, vec3<u32>(0u, 4294967295u, 826u), 1964f, Struct_1(vec4<f32>(-1079f, -1193f, 543f, -471f), 724f, vec3<f32>(-1000f, -1926f, 346f), vec3<u32>(0u, 27746u, 3799u))), Struct_3(vec2<f32>(-726f, -349f), vec2<f32>(-714f, -135f), true), 37829u), Struct_5(Struct_2(-25011i, vec3<u32>(15696u, 1u, 0u), 1000f, Struct_1(vec4<f32>(-119f, 674f, 907f, 1342f), 337f, vec3<f32>(1150f, -960f, 365f), vec3<u32>(192u, 54397u, 4333u))), Struct_2(-46257i, vec3<u32>(863u, 0u, 0u), 1662f, Struct_1(vec4<f32>(-134f, -372f, -1000f, 1269f), 426f, vec3<f32>(737f, 125f, 2817f), vec3<u32>(4294967295u, 37997u, 4294967295u))), Struct_3(vec2<f32>(-675f, -1000f), vec2<f32>(133f, -640f), false), 2184u), Struct_5(Struct_2(-1i, vec3<u32>(66292u, 33637u, 0u), 785f, Struct_1(vec4<f32>(-398f, 2009f, 1500f, 314f), 337f, vec3<f32>(-204f, -637f, 1000f), vec3<u32>(5390u, 19203u, 78017u))), Struct_2(-54754i, vec3<u32>(4294967295u, 4294967295u, 8990u), 510f, Struct_1(vec4<f32>(-2858f, 809f, 328f, 821f), -258f, vec3<f32>(-1467f, 162f, 155f), vec3<u32>(7559u, 2184u, 4294967295u))), Struct_3(vec2<f32>(552f, 171f), vec2<f32>(1780f, -501f), true), 4294967295u), Struct_5(Struct_2(-4027i, vec3<u32>(5480u, 4294967295u, 4294967295u), -251f, Struct_1(vec4<f32>(-985f, 1521f, 481f, -117f), 964f, vec3<f32>(1000f, 749f, -1127f), vec3<u32>(1u, 49218u, 18510u))), Struct_2(25708i, vec3<u32>(0u, 4294967295u, 23832u), -1587f, Struct_1(vec4<f32>(114f, 1177f, -686f, 1654f), -1625f, vec3<f32>(-511f, -559f, -524f), vec3<u32>(1u, 0u, 48990u))), Struct_3(vec2<f32>(527f, -985f), vec2<f32>(419f, 2779f), false), 0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<bool> {
    global3 = array<Struct_5, 23>();
    global2 = Struct_2(~_wgslsmith_add_i32(_wgslsmith_mult_i32(~u_input.a, 1i), ~0i), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))), global2.d);
    var var_0 = global2.d;
    let var_1 = global2.a;
    var_0 = global2.d;
    return !(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_0.a.x > global2.d.b), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(-global2.d.a);
    let var_0 = all(func_3()) || any(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false)));
    var var_1 = -global2.a;
    var_1 = max(global0.x, 2147483647i) & -3236i;
    var_1 = ~u_input.a;
    return Struct_2(global0.x, global2.b, -297f, global2.d);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec2<bool>) -> Struct_3 {
    global0 = vec4<i32>(2147483647i, ~u_input.a, i32(-1i) * -31364i, _wgslsmith_mult_i32(global2.a, 75132i));
    let var_0 = Struct_5(func_2(global0.ywx), func_2(-(~max(global0.xzy, global0.zwy))), Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1120f, global2.c)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-304f, 707f) * global2.d.c.xx)))), global2.d.c.xy, any(select(vec2<bool>(true, true), vec2<bool>(arg_3.x, arg_3.x), !arg_3))), min(_wgslsmith_add_u32(func_2(countOneBits(vec3<i32>(global0.x, global0.x, global0.x))).d.d.x, ~17850u), abs(0u)));
    global0 = vec4<i32>(-1i) * -max(-countOneBits(vec4<i32>(2147483647i, -1i, global2.a, 2147483647i)), ~(-vec4<i32>(global2.a, -8955i, global2.a, -37359i)));
    let var_1 = Struct_3(global2.d.a.zy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_0.a.d.a.x), global1.wy)))), vec2<f32>(func_2(global0.wzz & vec3<i32>(-1i, global2.a, u_input.a)).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.c.x - -1116f) - _wgslsmith_f_op_f32(1076f + -516f)))), func_3().x);
    var var_2 = arg_3;
    return Struct_3(_wgslsmith_f_op_vec2_f32(var_1.a - var_1.b), vec2<f32>(var_0.a.d.c.x, _wgslsmith_f_op_f32(-3059f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.x))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = abs(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.a, -2147483647i, -14309i, 39476i), vec4<i32>(-7753i, global0.x, u_input.a, global0.x), vec4<i32>(15578i, global2.a, -1i, u_input.a)))) ^ vec4<i32>(~_wgslsmith_add_i32(~67227i, -1i), countOneBits(u_input.a), i32(-1i) * -u_input.a, 39192i);
    let var_1 = global2.d;
    var var_2 = vec2<bool>(all(!select(!vec3<bool>(false, var_0, false), vec3<bool>(true, var_0, false), vec3<bool>(true, true, true))), var_0);
    let var_3 = func_1(_wgslsmith_f_op_f32(210f + 925f), abs(max(vec4<u32>(~global2.d.d.x, reverseBits(1u), global2.d.d.x, var_1.d.x), vec4<u32>(var_1.d.x << (global2.b.x % 32u), ~4294967295u, _wgslsmith_mult_u32(0u, 1u), 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-815f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1740f - 256f) + 563f)), !select(!vec2<bool>(true, var_0), vec2<bool>(!var_0, var_0 || false), all(select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_2.x, var_0, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.wyx, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-519f, _wgslsmith_f_op_f32(select(-863f, global2.d.b, !var_2.x)), _wgslsmith_f_op_f32(-1880f + _wgslsmith_f_op_f32(sign(global2.d.a.x)))))));
}

