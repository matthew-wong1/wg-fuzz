struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(-19908i, vec2<f32>(1000f, -1811f), Struct_1(vec4<f32>(2793f, -360f, -175f, -1171f), vec4<i32>(-3662i, 2147483647i, 6400i, 7701i), vec4<f32>(-433f, 1752f, -334f, 1000f))), vec2<f32>(1405f, 1617f), vec4<bool>(false, false, true, false), Struct_1(vec4<f32>(904f, -843f, 1222f, -1476f), vec4<i32>(5458i, 23578i, -45965i, i32(-2147483648)), vec4<f32>(-1136f, -622f, -1000f, -155f))), Struct_3(Struct_2(-1i, vec2<f32>(-2088f, -1000f), Struct_1(vec4<f32>(210f, -255f, -555f, -2055f), vec4<i32>(2147483647i, 0i, 31657i, -17040i), vec4<f32>(-282f, 787f, 401f, 1915f))), vec2<f32>(1112f, -512f), vec4<bool>(false, false, true, false), Struct_1(vec4<f32>(992f, 474f, -443f, -1000f), vec4<i32>(19469i, i32(-2147483648), -1i, -1i), vec4<f32>(1000f, 1249f, 1147f, 1126f))), Struct_3(Struct_2(-1i, vec2<f32>(-1076f, -199f), Struct_1(vec4<f32>(794f, -408f, -1051f, 1338f), vec4<i32>(-48881i, 50400i, 16444i, i32(-2147483648)), vec4<f32>(-368f, -1407f, -423f, -547f))), vec2<f32>(-1000f, 823f), vec4<bool>(true, false, true, false), Struct_1(vec4<f32>(1108f, -2329f, 1253f, -2159f), vec4<i32>(-1i, i32(-2147483648), 1i, -5158i), vec4<f32>(-364f, -2330f, 418f, 1107f))), Struct_3(Struct_2(-1i, vec2<f32>(-577f, -1039f), Struct_1(vec4<f32>(515f, 1494f, -325f, 533f), vec4<i32>(-1i, 2147483647i, -1i, 1i), vec4<f32>(106f, 1982f, 1000f, 149f))), vec2<f32>(-976f, -1192f), vec4<bool>(false, false, true, true), Struct_1(vec4<f32>(1184f, 510f, 1116f, -925f), vec4<i32>(7385i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<f32>(1035f, 353f, -1859f, -1203f))), Struct_3(Struct_2(-1i, vec2<f32>(-2303f, 1340f), Struct_1(vec4<f32>(-549f, -1047f, -311f, -641f), vec4<i32>(1i, 2071i, 71439i, 51348i), vec4<f32>(-1107f, 898f, 567f, 717f))), vec2<f32>(-643f, 158f), vec4<bool>(false, true, true, false), Struct_1(vec4<f32>(1237f, 518f, -1254f, 1233f), vec4<i32>(37812i, 2147483647i, -20018i, -66788i), vec4<f32>(252f, -217f, 1631f, 466f))), Struct_3(Struct_2(14640i, vec2<f32>(-2634f, -406f), Struct_1(vec4<f32>(-112f, 295f, -406f, 1023f), vec4<i32>(10333i, -10175i, i32(-2147483648), -1i), vec4<f32>(1289f, 315f, -782f, 1768f))), vec2<f32>(953f, 2106f), vec4<bool>(false, false, false, false), Struct_1(vec4<f32>(-1000f, 497f, -936f, 2271f), vec4<i32>(-1i, -6209i, -43163i, 33680i), vec4<f32>(-351f, -230f, 1808f, 693f))), Struct_3(Struct_2(1i, vec2<f32>(1000f, 457f), Struct_1(vec4<f32>(710f, -1015f, 391f, -2709f), vec4<i32>(i32(-2147483648), 24522i, 19297i, i32(-2147483648)), vec4<f32>(437f, 723f, -1001f, -718f))), vec2<f32>(-643f, -1179f), vec4<bool>(false, true, false, false), Struct_1(vec4<f32>(-2315f, 337f, -2083f, -1084f), vec4<i32>(-2646i, 35611i, -17176i, 91920i), vec4<f32>(332f, -975f, -868f, -785f))), Struct_3(Struct_2(38802i, vec2<f32>(870f, 960f), Struct_1(vec4<f32>(-400f, 1802f, 614f, -1181f), vec4<i32>(1i, 11641i, 1i, 4716i), vec4<f32>(-804f, -1051f, 149f, 467f))), vec2<f32>(-469f, 1462f), vec4<bool>(true, false, false, true), Struct_1(vec4<f32>(-330f, -1734f, -275f, -1076f), vec4<i32>(65930i, i32(-2147483648), 2147483647i, -20792i), vec4<f32>(-734f, -290f, -396f, 1000f))), Struct_3(Struct_2(-13991i, vec2<f32>(-208f, -205f), Struct_1(vec4<f32>(1616f, -1000f, -1903f, -1676f), vec4<i32>(0i, 2147483647i, 1i, 20305i), vec4<f32>(268f, -547f, 637f, 1450f))), vec2<f32>(-275f, 791f), vec4<bool>(false, false, false, true), Struct_1(vec4<f32>(889f, -1089f, -897f, -1105f), vec4<i32>(2147483647i, 1i, -62418i, -1104i), vec4<f32>(774f, 564f, -1000f, 1460f))), Struct_3(Struct_2(-12134i, vec2<f32>(1731f, -1206f), Struct_1(vec4<f32>(-611f, -1056f, 379f, -743f), vec4<i32>(-1i, -326i, 6550i, 2147483647i), vec4<f32>(-159f, -599f, -1026f, 519f))), vec2<f32>(-1785f, 210f), vec4<bool>(true, true, false, true), Struct_1(vec4<f32>(-296f, 1217f, 622f, 355f), vec4<i32>(2147483647i, 1i, 1i, 17724i), vec4<f32>(-698f, -1054f, 2064f, 1272f))), Struct_3(Struct_2(0i, vec2<f32>(-1365f, 1378f), Struct_1(vec4<f32>(-602f, -815f, -1430f, -1893f), vec4<i32>(-24513i, 2147483647i, -57462i, 0i), vec4<f32>(545f, -704f, -1338f, 1527f))), vec2<f32>(-1103f, 487f), vec4<bool>(false, true, false, false), Struct_1(vec4<f32>(1000f, -1030f, -1937f, 1000f), vec4<i32>(-13287i, -7508i, 2147483647i, 0i), vec4<f32>(497f, 1000f, -164f, 290f))), Struct_3(Struct_2(i32(-2147483648), vec2<f32>(813f, -1024f), Struct_1(vec4<f32>(-1133f, 597f, -276f, 212f), vec4<i32>(-5315i, i32(-2147483648), 2147483647i, 0i), vec4<f32>(-1000f, 1249f, 449f, 291f))), vec2<f32>(-165f, 360f), vec4<bool>(true, false, true, false), Struct_1(vec4<f32>(-1000f, 1000f, 500f, -553f), vec4<i32>(58371i, 1i, -13900i, -1i), vec4<f32>(-424f, -308f, -1132f, 105f))), Struct_3(Struct_2(1i, vec2<f32>(438f, 575f), Struct_1(vec4<f32>(2225f, 1027f, -1024f, -820f), vec4<i32>(1i, 63142i, i32(-2147483648), 1i), vec4<f32>(-708f, -361f, 287f, -490f))), vec2<f32>(-1560f, -302f), vec4<bool>(false, true, true, true), Struct_1(vec4<f32>(305f, -659f, 113f, 478f), vec4<i32>(-26587i, 49114i, 1081i, 4736i), vec4<f32>(-100f, 102f, 407f, -277f))), Struct_3(Struct_2(-6855i, vec2<f32>(-774f, 1611f), Struct_1(vec4<f32>(-736f, -1351f, 739f, -1469f), vec4<i32>(-5858i, 26218i, -1i, 5276i), vec4<f32>(587f, 1046f, -1417f, -377f))), vec2<f32>(-2500f, 1576f), vec4<bool>(true, true, false, true), Struct_1(vec4<f32>(1136f, 1000f, -1081f, -1410f), vec4<i32>(1i, 12583i, -1i, 2147483647i), vec4<f32>(1514f, 1171f, 1000f, 1000f))), Struct_3(Struct_2(0i, vec2<f32>(-190f, 1326f), Struct_1(vec4<f32>(-848f, -1000f, -689f, 777f), vec4<i32>(1i, 3952i, 39111i, -38153i), vec4<f32>(-1028f, 1055f, 176f, -530f))), vec2<f32>(-459f, -1550f), vec4<bool>(true, false, true, true), Struct_1(vec4<f32>(-956f, -2051f, -822f, -1402f), vec4<i32>(-1108i, 2147483647i, 1i, 2147483647i), vec4<f32>(-675f, 432f, -2454f, -1199f))), Struct_3(Struct_2(0i, vec2<f32>(-1000f, 950f), Struct_1(vec4<f32>(-1936f, 381f, -990f, 1019f), vec4<i32>(1i, i32(-2147483648), 37048i, 323i), vec4<f32>(1788f, -1602f, 1957f, 1453f))), vec2<f32>(729f, 1000f), vec4<bool>(true, false, false, true), Struct_1(vec4<f32>(-1119f, 928f, -1360f, 2364f), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648)), vec4<f32>(802f, -402f, 415f, -1308f))), Struct_3(Struct_2(i32(-2147483648), vec2<f32>(1036f, 301f), Struct_1(vec4<f32>(588f, 683f, 896f, -1875f), vec4<i32>(1i, i32(-2147483648), 13132i, 19447i), vec4<f32>(1133f, -814f, -1726f, 872f))), vec2<f32>(1000f, -753f), vec4<bool>(false, false, false, false), Struct_1(vec4<f32>(1078f, 280f, -1656f, 949f), vec4<i32>(-6895i, 1i, 2147483647i, 1i), vec4<f32>(1813f, 149f, -1314f, 409f))), Struct_3(Struct_2(2147483647i, vec2<f32>(880f, -1276f), Struct_1(vec4<f32>(-739f, -1618f, 853f, -480f), vec4<i32>(-1i, -5386i, 0i, -34651i), vec4<f32>(-140f, 864f, -323f, 142f))), vec2<f32>(451f, 517f), vec4<bool>(false, true, false, true), Struct_1(vec4<f32>(217f, -447f, 730f, 294f), vec4<i32>(18857i, -5142i, -10047i, 47900i), vec4<f32>(-1566f, 181f, 1809f, -774f))), Struct_3(Struct_2(0i, vec2<f32>(915f, 152f), Struct_1(vec4<f32>(572f, 1000f, -1246f, 1072f), vec4<i32>(2147483647i, -43856i, i32(-2147483648), 357i), vec4<f32>(-567f, 1000f, 468f, 1205f))), vec2<f32>(-529f, 802f), vec4<bool>(false, false, true, false), Struct_1(vec4<f32>(-3566f, 504f, -1244f, -166f), vec4<i32>(7918i, -27867i, -38631i, -11205i), vec4<f32>(1942f, -403f, -737f, 2391f))), Struct_3(Struct_2(2147483647i, vec2<f32>(1341f, -870f), Struct_1(vec4<f32>(511f, 1000f, -106f, 978f), vec4<i32>(-1i, i32(-2147483648), 0i, -1i), vec4<f32>(1201f, 1489f, 1335f, -519f))), vec2<f32>(-1769f, 878f), vec4<bool>(true, false, true, true), Struct_1(vec4<f32>(-1000f, -1582f, 461f, 1446f), vec4<i32>(11914i, 2147483647i, i32(-2147483648), -36074i), vec4<f32>(2152f, -609f, -361f, 1256f))));

var<private> global2: array<Struct_3, 24>;

var<private> global3: array<u32, 11> = array<u32, 11>(44176u, 1u, 0u, 1u, 61223u, 1u, 47924u, 66370u, 23272u, 43113u, 4294967295u);

var<private> global4: Struct_1 = Struct_1(vec4<f32>(251f, 878f, 1000f, 789f), vec4<i32>(17981i, -5359i, 26656i, i32(-2147483648)), vec4<f32>(-823f, 217f, 536f, -1019f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<u32>) -> vec4<f32> {
    var var_0 = true;
    var_0 = select(any(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))))), !any(vec2<bool>(false, true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-387f, -555f)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-905f, 161f, -719f, 1016f)))) - global4.a), max(-vec4<i32>(37999i, global4.b.x, u_input.a, 20945i) | (select(global4.b, global4.b, true) & (global4.b | global4.b)), _wgslsmith_mult_vec4_i32(global4.b, ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global4.b.x, 41069i, u_input.a), vec4<i32>(7457i, u_input.a, global4.b.x, 0i)))), _wgslsmith_f_op_vec4_f32(global4.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1061f, 1120f, -1777f, -1027f))))));
    global1 = array<Struct_3, 20>();
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.c.x, -623f, var_2.a.x, var_2.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, global4.c.x, -815f, global4.c.x) * vec4<f32>(var_2.c.x, global4.c.x, 133f, global4.a.x))))))));
}

fn func_2() -> i32 {
    global1 = array<Struct_3, 20>();
    let var_0 = Struct_3(Struct_2(-78728i, global4.c.xz, Struct_1(_wgslsmith_f_op_vec4_f32(global4.a * _wgslsmith_f_op_vec4_f32(-global4.c)), vec4<i32>(-5834i, 1i, _wgslsmith_clamp_i32(-45750i, -2147483647i, -9312i), u_input.c.x), vec4<f32>(-2152f, global4.c.x, 1f, global4.a.x))), vec2<f32>(global4.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.a.x)))), !(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.e))), global4.b, _wgslsmith_f_op_vec4_f32(global4.c * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global4.a), _wgslsmith_f_op_vec4_f32(round(global4.c)))))));
    let var_1 = -446f;
    global3 = array<u32, 11>();
    global0 = array<Struct_3, 5>();
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -(~(var_0.d.b.x & -60843i))), -firstTrailingBit(global4.b.yx));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = Struct_2(~(~1i) | abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(-26864i, -59330i), _wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(arg_0, arg_1.b.x), arg_1.b.zw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global4.a.yw))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(countOneBits(~vec3<u32>(global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e.x, 11u)], 11u)], 94553u)))), vec4<i32>(abs(-21874i), ~(~(-21124i)), -1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.b.x, -2147483647i), vec2<i32>(1i, global4.b.x) ^ global4.b.yy)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1425f, global4.c.x, arg_1.a.x, arg_1.a.x), arg_2.a))));
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(max(arg_1.a.x, 129f)), arg_2.a.x, -1322f))), arg_2.b & vec4<i32>(arg_1.b.x, func_2(), select(-66376i, 60572i, false), global4.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 515f, var_0.b.x, arg_2.a.x)))));
    let var_1 = select(_wgslsmith_add_vec3_u32(max(vec3<u32>(0u, 72056u, global3[_wgslsmith_index_u32(u_input.d.x, 11u)]) >> (u_input.e % vec3<u32>(32u)), vec3<u32>(10016u, global3[_wgslsmith_index_u32(u_input.e.x, 11u)], global3[_wgslsmith_index_u32(4294967295u, 11u)])), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, 13162u, 72120u) << (u_input.e % vec3<u32>(32u)), u_input.e >> (u_input.e % vec3<u32>(32u)))), vec3<u32>(1u, ~(~global3[_wgslsmith_index_u32(77026u, 11u)]), min(_wgslsmith_mult_u32(0u, 78937u), ~20296u)), true) | ~u_input.e;
    var var_2 = true;
    let var_3 = arg_1.c.yx;
    return false;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0.d;
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global4.c.wx + vec2<f32>(-947f, 1000f)), _wgslsmith_f_op_vec2_f32(-var_0.c.ww))) - _wgslsmith_f_op_vec2_f32(min(global4.a.wz, _wgslsmith_f_op_vec2_f32(-var_0.a.yw)))), _wgslsmith_f_op_vec2_f32(-arg_0.a.b))));
    let var_2 = 144f;
    let var_3 = arg_0.c.x;
    let var_4 = func_4(func_2(), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -402f, -1818f, -730f), arg_0.a.c.a, vec4<bool>(var_3, false, true, true)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.a.c.a)))), -(~global4.b) | global4.b, vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], u_input.d.x), vec3<u32>(1u, 31442u, global3[_wgslsmith_index_u32(u_input.d.x, 11u)]), u_input.e))).x, -2089f, var_0.c.x, _wgslsmith_f_op_f32(global4.c.x - _wgslsmith_div_f32(828f, 1000f)))), Struct_1(vec4<f32>(var_2, _wgslsmith_f_op_f32(trunc(global4.a.x)), 668f, arg_0.d.c.x), firstTrailingBit(~arg_0.a.c.b), vec4<f32>(_wgslsmith_f_op_f32(-580f + global4.a.x), -813f, _wgslsmith_f_op_vec4_f32(func_3(~u_input.e)).x, 391f)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1762f, global4.a.x, global4.a.x, arg_0.d.a.x) - _wgslsmith_f_op_vec4_f32(func_3(u_input.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, global4.a.x, global4.c.x, 258f), arg_0.a.c.a))), var_0.a)), ~min(var_0.b, -vec4<i32>(2147483647i, global4.b.x, 0i, -1i)), vec4<f32>(-950f, _wgslsmith_f_op_f32(-662f * _wgslsmith_f_op_f32(abs(arg_0.d.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_0.b.x, -532f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(global3[_wgslsmith_index_u32(u_input.e.x, 11u)], 0u, 3746u))).x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x | u_input.c.x, _wgslsmith_clamp_i32(65987i, -24389i, 1i)) << (_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.e.yz, vec2<u32>(1u, u_input.d.x)), ~u_input.d) % vec2<u32>(32u)), ~min(~vec2<i32>(u_input.c.x, -25131i), firstTrailingBit(vec2<i32>(global4.b.x, -8776i))), global4.b.wy);
    global1 = array<Struct_3, 20>();
    global4 = func_1(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(69786u, 11u)], 5u)]);
    let var_1 = global2[_wgslsmith_index_u32(countOneBits(2287u), 24u)];
    global1 = array<Struct_3, 20>();
    global3 = array<u32, 11>();
    global0 = array<Struct_3, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(global4.c.x);
}

