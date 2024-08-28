struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 19>;

var<private> global2: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(vec4<u32>(38995u, 52858u, 1u, 51198u), Struct_2(vec4<bool>(false, false, true, true), vec3<f32>(666f, 1198f, -1315f)), Struct_3(Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(1247f, 676f, 546f)), 1u, 591f, Struct_2(vec4<bool>(true, false, false, false), vec3<f32>(-480f, 1152f, 656f))), Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(1245f, -402f, -934f)), 933f), Struct_4(vec4<u32>(1u, 1u, 21222u, 12193u), Struct_2(vec4<bool>(true, true, true, true), vec3<f32>(-1000f, -1157f, -303f)), Struct_3(Struct_2(vec4<bool>(true, true, false, true), vec3<f32>(-771f, 484f, -148f)), 4294967295u, -1419f, Struct_2(vec4<bool>(false, false, false, true), vec3<f32>(-1167f, -1665f, -1356f))), Struct_2(vec4<bool>(false, false, true, false), vec3<f32>(-502f, -1945f, 1041f)), 404f), Struct_4(vec4<u32>(55019u, 13095u, 3157u, 0u), Struct_2(vec4<bool>(true, true, false, true), vec3<f32>(-439f, -800f, -1000f)), Struct_3(Struct_2(vec4<bool>(false, false, true, true), vec3<f32>(312f, -891f, -259f)), 27994u, -218f, Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(-711f, 285f, 366f))), Struct_2(vec4<bool>(true, false, false, true), vec3<f32>(-1000f, -1772f, -4054f)), -420f), Struct_4(vec4<u32>(9170u, 14741u, 0u, 10949u), Struct_2(vec4<bool>(true, true, true, true), vec3<f32>(1432f, 860f, -254f)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), vec3<f32>(-853f, -191f, 458f)), 1230u, 155f, Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(-1673f, 1000f, -876f))), Struct_2(vec4<bool>(false, true, false, true), vec3<f32>(-1000f, 465f, 588f)), -478f), Struct_4(vec4<u32>(1u, 4294967295u, 1u, 5039u), Struct_2(vec4<bool>(true, false, false, false), vec3<f32>(348f, -2276f, -1000f)), Struct_3(Struct_2(vec4<bool>(true, false, false, true), vec3<f32>(-440f, -1249f, -1976f)), 1u, -1067f, Struct_2(vec4<bool>(false, false, true, false), vec3<f32>(451f, -479f, -942f))), Struct_2(vec4<bool>(false, false, true, false), vec3<f32>(236f, 2415f, -1558f)), -1167f), Struct_4(vec4<u32>(1u, 17635u, 4858u, 1u), Struct_2(vec4<bool>(true, true, true, false), vec3<f32>(700f, 993f, 705f)), Struct_3(Struct_2(vec4<bool>(true, true, true, true), vec3<f32>(1468f, 267f, -710f)), 1u, 1687f, Struct_2(vec4<bool>(false, true, false, true), vec3<f32>(-1177f, 300f, -2302f))), Struct_2(vec4<bool>(true, false, true, true), vec3<f32>(223f, -789f, -128f)), 749f), Struct_4(vec4<u32>(0u, 11481u, 0u, 3675u), Struct_2(vec4<bool>(false, false, true, false), vec3<f32>(142f, 230f, 1000f)), Struct_3(Struct_2(vec4<bool>(false, false, false, true), vec3<f32>(-2717f, -1480f, -1526f)), 86395u, -1119f, Struct_2(vec4<bool>(false, false, false, false), vec3<f32>(1000f, 280f, 1433f))), Struct_2(vec4<bool>(true, true, true, false), vec3<f32>(-349f, -2294f, -301f)), 1181f), Struct_4(vec4<u32>(9995u, 1u, 13562u, 8995u), Struct_2(vec4<bool>(true, false, true, true), vec3<f32>(-620f, -1000f, 489f)), Struct_3(Struct_2(vec4<bool>(false, true, true, true), vec3<f32>(-1182f, 1008f, 248f)), 78545u, -1000f, Struct_2(vec4<bool>(true, true, true, false), vec3<f32>(455f, -392f, 1000f))), Struct_2(vec4<bool>(false, false, true, false), vec3<f32>(-665f, 589f, -1650f)), -1175f), Struct_4(vec4<u32>(6708u, 1u, 22746u, 24110u), Struct_2(vec4<bool>(false, false, false, false), vec3<f32>(1250f, -1403f, -2201f)), Struct_3(Struct_2(vec4<bool>(false, true, true, true), vec3<f32>(1100f, 1801f, 270f)), 29829u, -1183f, Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(463f, 1000f, 1253f))), Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(-2477f, -1000f, -1385f)), -2070f), Struct_4(vec4<u32>(23999u, 4294967295u, 4294967295u, 48989u), Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(-894f, -1398f, -1290f)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), vec3<f32>(543f, -435f, 604f)), 1u, 1865f, Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(1000f, 1443f, 456f))), Struct_2(vec4<bool>(false, false, false, true), vec3<f32>(1670f, 331f, 1432f)), 1368f), Struct_4(vec4<u32>(8634u, 78296u, 0u, 36042u), Struct_2(vec4<bool>(false, true, false, true), vec3<f32>(302f, -1000f, -913f)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), vec3<f32>(1263f, 1502f, -1000f)), 17648u, -286f, Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(-1963f, 916f, 1338f))), Struct_2(vec4<bool>(true, true, true, false), vec3<f32>(555f, 2573f, 647f)), 712f), Struct_4(vec4<u32>(0u, 14325u, 0u, 51893u), Struct_2(vec4<bool>(true, true, false, true), vec3<f32>(-1529f, 798f, -913f)), Struct_3(Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(1632f, 254f, 1371f)), 0u, -504f, Struct_2(vec4<bool>(true, true, false, true), vec3<f32>(-1375f, -264f, 2882f))), Struct_2(vec4<bool>(true, false, false, false), vec3<f32>(-1000f, 716f, -1290f)), -938f), Struct_4(vec4<u32>(0u, 37835u, 32705u, 0u), Struct_2(vec4<bool>(true, true, false, true), vec3<f32>(231f, -904f, 616f)), Struct_3(Struct_2(vec4<bool>(false, false, false, true), vec3<f32>(1221f, 1000f, 1518f)), 47445u, 424f, Struct_2(vec4<bool>(false, true, true, true), vec3<f32>(1000f, 932f, -785f))), Struct_2(vec4<bool>(true, false, true, false), vec3<f32>(-344f, 1000f, -1473f)), -1178f), Struct_4(vec4<u32>(56073u, 1u, 12230u, 4294967295u), Struct_2(vec4<bool>(true, false, true, true), vec3<f32>(-1707f, 269f, 1000f)), Struct_3(Struct_2(vec4<bool>(false, true, true, true), vec3<f32>(-1524f, -302f, -677f)), 0u, -679f, Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(-918f, -1000f, 824f))), Struct_2(vec4<bool>(true, true, false, true), vec3<f32>(-647f, -331f, 1462f)), 416f), Struct_4(vec4<u32>(59663u, 4294967295u, 18045u, 4294967295u), Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(-696f, -1449f, -468f)), Struct_3(Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(662f, -891f, -204f)), 0u, 279f, Struct_2(vec4<bool>(false, true, false, false), vec3<f32>(268f, -1017f, -518f))), Struct_2(vec4<bool>(true, false, true, false), vec3<f32>(355f, -1898f, 267f)), 1950f), Struct_4(vec4<u32>(61914u, 0u, 121531u, 35971u), Struct_2(vec4<bool>(false, false, true, true), vec3<f32>(199f, 1096f, -1187f)), Struct_3(Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(-1270f, -1000f, -401f)), 55439u, 448f, Struct_2(vec4<bool>(true, true, true, false), vec3<f32>(-752f, 314f, 719f))), Struct_2(vec4<bool>(true, false, true, true), vec3<f32>(1313f, 1599f, 865f)), -1869f), Struct_4(vec4<u32>(4536u, 0u, 0u, 0u), Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(1393f, -237f, 1228f)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), vec3<f32>(1576f, 349f, -626f)), 4294967295u, -1387f, Struct_2(vec4<bool>(true, true, true, true), vec3<f32>(-178f, -1000f, 419f))), Struct_2(vec4<bool>(true, true, true, true), vec3<f32>(1802f, -252f, 262f)), 1062f), Struct_4(vec4<u32>(0u, 34378u, 1u, 4294967295u), Struct_2(vec4<bool>(false, true, false, false), vec3<f32>(-2302f, 2193f, -911f)), Struct_3(Struct_2(vec4<bool>(false, true, true, true), vec3<f32>(164f, -1000f, -874f)), 0u, -743f, Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(2082f, -800f, 156f))), Struct_2(vec4<bool>(false, true, false, true), vec3<f32>(-326f, 778f, 1499f)), 438f), Struct_4(vec4<u32>(1u, 4294967295u, 4294967295u, 33990u), Struct_2(vec4<bool>(true, true, true, true), vec3<f32>(1000f, -728f, 883f)), Struct_3(Struct_2(vec4<bool>(true, false, true, true), vec3<f32>(1550f, -1162f, -657f)), 45421u, -118f, Struct_2(vec4<bool>(true, true, true, true), vec3<f32>(409f, -412f, 1597f))), Struct_2(vec4<bool>(true, true, true, false), vec3<f32>(-109f, -337f, -161f)), -387f), Struct_4(vec4<u32>(4851u, 0u, 27190u, 1u), Struct_2(vec4<bool>(true, false, false, true), vec3<f32>(-2362f, -741f, -1000f)), Struct_3(Struct_2(vec4<bool>(true, false, false, true), vec3<f32>(592f, 1196f, -152f)), 4294967295u, -1128f, Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(333f, -123f, 1563f))), Struct_2(vec4<bool>(true, false, true, true), vec3<f32>(175f, -1398f, -265f)), 764f), Struct_4(vec4<u32>(21154u, 0u, 31133u, 1u), Struct_2(vec4<bool>(false, false, true, true), vec3<f32>(918f, 1666f, -848f)), Struct_3(Struct_2(vec4<bool>(false, true, true, true), vec3<f32>(144f, 1531f, -462f)), 38478u, -1898f, Struct_2(vec4<bool>(true, true, true, false), vec3<f32>(480f, 1158f, 204f))), Struct_2(vec4<bool>(true, true, true, true), vec3<f32>(-481f, -939f, -166f)), 378f), Struct_4(vec4<u32>(21795u, 0u, 14231u, 36152u), Struct_2(vec4<bool>(true, false, false, true), vec3<f32>(-144f, 650f, 163f)), Struct_3(Struct_2(vec4<bool>(true, false, true, true), vec3<f32>(-314f, 1093f, -251f)), 0u, -1971f, Struct_2(vec4<bool>(true, false, true, false), vec3<f32>(-150f, -573f, 1119f))), Struct_2(vec4<bool>(false, false, true, false), vec3<f32>(-735f, -2199f, 1043f)), 2273f), Struct_4(vec4<u32>(0u, 38821u, 30592u, 0u), Struct_2(vec4<bool>(false, true, false, true), vec3<f32>(1513f, -110f, 438f)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), vec3<f32>(1386f, -460f, 234f)), 29918u, -610f, Struct_2(vec4<bool>(true, false, true, true), vec3<f32>(2669f, -1000f, -738f))), Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(416f, 978f, -1200f)), -414f), Struct_4(vec4<u32>(4294967295u, 48338u, 1u, 54771u), Struct_2(vec4<bool>(false, true, true, true), vec3<f32>(897f, 611f, -552f)), Struct_3(Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(-107f, 265f, -2161f)), 4294967295u, 849f, Struct_2(vec4<bool>(true, false, false, false), vec3<f32>(610f, 844f, -1567f))), Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(-503f, 1000f, 597f)), -770f), Struct_4(vec4<u32>(1u, 1u, 0u, 1u), Struct_2(vec4<bool>(false, false, false, false), vec3<f32>(-755f, 1971f, -222f)), Struct_3(Struct_2(vec4<bool>(false, true, true, true), vec3<f32>(2162f, 818f, 1000f)), 43027u, -1000f, Struct_2(vec4<bool>(false, true, false, false), vec3<f32>(-363f, 842f, 1000f))), Struct_2(vec4<bool>(false, false, true, true), vec3<f32>(-1665f, -417f, -101f)), 1036f), Struct_4(vec4<u32>(1u, 3515u, 1u, 1u), Struct_2(vec4<bool>(false, false, false, true), vec3<f32>(-839f, 149f, 1856f)), Struct_3(Struct_2(vec4<bool>(false, false, true, false), vec3<f32>(786f, 1000f, -1770f)), 49590u, -1153f, Struct_2(vec4<bool>(false, false, false, true), vec3<f32>(1793f, -419f, -609f))), Struct_2(vec4<bool>(true, true, true, false), vec3<f32>(889f, -611f, 479f)), -813f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    global0 = Struct_1(global0.d, u_input.a, global0.c, global0.d | ~vec3<u32>(global0.a.x & global0.a.x, abs(17382u), ~global0.a.x));
    global2 = array<Struct_4, 26>();
    global2 = array<Struct_4, 26>();
    var var_0 = true | !(global0.c.x | global0.c.x);
    global2 = array<Struct_4, 26>();
    return global0.c.x;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: f32, arg_3: i32) -> Struct_3 {
    global2 = array<Struct_4, 26>();
    let var_0 = Struct_2(select(!vec4<bool>(true, func_3(), true, false), !(!select(vec4<bool>(arg_0, false, global0.c.x, arg_0), vec4<bool>(false, arg_0, true, false), false)), !any(global0.c.yy)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(-785f, 232f, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 1000f, arg_2)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(-196f, -1002f, arg_2))))), !select(global0.c, !vec3<bool>(false, arg_0, false), select(global0.c, vec3<bool>(global0.c.x, true, arg_0), global0.c)))));
    global0 = Struct_1(_wgslsmith_div_vec3_u32(arg_1.zww, vec3<u32>(global0.a.x, abs(63721u >> (global0.a.x % 32u)), ~(~arg_1.x))), -abs(-48380i), global0.c, ~(global0.a ^ arg_1.yww));
    var var_1 = Struct_4(_wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, 3525u, global0.d.x, arg_1.x)), arg_1), Struct_2(var_0.a, var_0.b), Struct_3(Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(var_0.b))))), _wgslsmith_mod_u32(global0.a.x, global0.a.x), _wgslsmith_f_op_f32(step(-1005f, -155f)), var_0), Struct_2(!(!var_0.a), var_0.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1730f * -120f))))));
    let var_2 = var_1.a.xz | firstLeadingBit(~vec2<u32>(1u, 1u));
    return Struct_3(var_0, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(6909u, global0.d.x, 0u) & (var_1.a.zyz & global0.d)), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(global0.a.x, 0u, 1u), var_1.a.wyx))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.b.x)), -1234f)), -715f, any(!select(vec2<bool>(var_0.a.x, global0.c.x), vec2<bool>(var_1.b.a.x, var_1.b.a.x), global0.c.xx)))), Struct_2(select(select(select(vec4<bool>(var_1.b.a.x, false, var_1.c.d.a.x, true), vec4<bool>(arg_0, false, var_0.a.x, global0.c.x), vec4<bool>(false, arg_0, var_0.a.x, false)), select(vec4<bool>(true, true, var_1.c.d.a.x, arg_0), var_0.a, arg_0), !vec4<bool>(var_1.b.a.x, global0.c.x, var_1.d.a.x, true)), select(var_1.c.d.a, var_1.c.d.a, arg_0), select(var_1.d.a, vec4<bool>(true, var_1.d.a.x, false, arg_0), !var_0.a)), var_0.b));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.b.x - -1000f), _wgslsmith_f_op_f32(round(-864f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1220f)), arg_0.e)), vec2<f32>(_wgslsmith_f_op_f32(abs(1247f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.e)) * arg_0.e))))));
    var var_1 = func_2((true || (1i == global0.b)) | true, min(_wgslsmith_mod_vec4_u32(vec4<u32>(~global0.d.x, ~19373u, 15401u | arg_0.c.b, _wgslsmith_mod_u32(48333u, global0.a.x)), abs(arg_0.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 16936u, arg_0.c.b << (global0.d.x % 32u), countOneBits(0u)), countOneBits(arg_0.a))), var_0.x, u_input.a).d;
    global0 = Struct_1(abs(~(~select(arg_0.a.yzw, arg_0.a.xxz, arg_0.d.a.x))), abs(-37775i), arg_0.b.a.zwz, ~(~max(min(vec3<u32>(global0.d.x, arg_0.c.b, global0.d.x), global0.d), max(vec3<u32>(19052u, global0.d.x, 54654u), arg_0.a.zwz))));
    global0 = Struct_1(global0.a, global0.b, vec3<bool>(false, global0.c.x, true), vec3<u32>(~(1u ^ arg_0.a.x), arg_0.a.x, func_2(global0.c.x, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(3788f, var_0.x)), firstTrailingBit(global0.b)).b));
    var_0 = _wgslsmith_f_op_vec2_f32(select(var_1.b.zx, var_1.b.yy, false));
    return i32(-1i) * -6471i;
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(~(~global0.a), func_4(Struct_4(~max(vec4<u32>(4294967295u, global0.a.x, global0.a.x, global0.d.x), vec4<u32>(1u, 1u, 1u, global0.a.x)), Struct_2(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(289f, 863f, -640f)))), func_2(true, ~vec4<u32>(global0.d.x, 6325u, 22455u, 1u), -749f, u_input.a), func_2(false, max(vec4<u32>(global0.d.x, 19284u, global0.d.x, global0.a.x), vec4<u32>(global0.a.x, global0.d.x, global0.d.x, 1u)), _wgslsmith_f_op_f32(floor(-429f)), 11279i).d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(829f - 159f), -432f))), global0.c), select(!global0.c, !vec3<bool>(!global0.c.x, global0.c.x, true), vec3<bool>(!global0.c.x, any(select(vec3<bool>(global0.c.x, global0.c.x, true), global0.c, global0.c)), true)), vec3<u32>(4294967295u, _wgslsmith_sub_u32(8935u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global0.a, global0.a), ~global0.d.x, min(global0.d.x, global0.d.x))), firstLeadingBit(4294967295u)));
    let var_0 = Struct_2(vec4<bool>(all(!func_2(true, vec4<u32>(global0.d.x, global0.d.x, global0.a.x, global0.d.x), -358f, u_input.a).d.a.wxz), global0.d.x > 0u, global0.c.x, global0.c.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-285f, -1388f, 1000f))) * vec3<f32>(_wgslsmith_f_op_f32(step(-894f, -2685f)), -742f, -1679f)))));
    global2 = array<Struct_4, 26>();
    var var_1 = global0.c;
    var_1 = !(!(!select(var_0.a.wwz, global0.c, !vec3<bool>(false, var_1.x, var_0.a.x))));
    return Struct_1(~(~vec3<u32>(global0.a.x, 1u, ~global0.a.x)), -2147483647i, !global0.c, ~(_wgslsmith_sub_vec3_u32(global0.d, global0.d) & countOneBits(vec3<u32>(global0.d.x, 1u, 0u))) & ~(select(global0.d, global0.a, var_0.a.xzy) & ~global0.d));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> u32 {
    global2 = array<Struct_4, 26>();
    var var_0 = Struct_2(select(select(!vec4<bool>(true, false, global0.c.x, global0.c.x), !vec4<bool>(true, true, true, global0.c.x), vec4<bool>(4294967295u < arg_0.a.x, arg_0.c.x | arg_0.c.x, func_3(), true)), func_2(true, vec4<u32>(1u, select(global0.d.x, global0.d.x, arg_0.c.x), ~arg_0.d.x, 0u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(560f * 685f))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, arg_0.b, -1i), u_input.a)).d.a, select(select(vec4<bool>(true, false, arg_0.c.x, false), select(vec4<bool>(arg_0.c.x, global0.c.x, arg_0.c.x, global0.c.x), vec4<bool>(false, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, global0.c.x, false, true)), global0.c.x), vec4<bool>(global0.c.x || true, global0.b >= 23792i, false, all(vec3<bool>(arg_0.c.x, true, global0.c.x))), vec4<bool>(true, func_2(false, vec4<u32>(arg_0.d.x, arg_0.a.x, global0.d.x, arg_0.d.x), -604f, -3628i).a.a.x, false, arg_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1203f, 159f))))));
    var var_1 = max(~_wgslsmith_mod_vec4_u32(~vec4<u32>(8004u, 15822u, arg_0.a.x, global0.a.x), reverseBits(vec4<u32>(arg_0.d.x, global0.a.x, arg_0.a.x, arg_0.a.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(26522u, 1u, func_1().a.x, func_1().a.x), countOneBits(vec4<u32>(4294967295u, global0.a.x, global0.a.x, global0.d.x) | _wgslsmith_mod_vec4_u32(vec4<u32>(20418u, arg_0.a.x, arg_0.a.x, 5335u), vec4<u32>(14007u, 1u, arg_0.a.x, 17017u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-507f, var_0.b.x, 576f, -451f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1155f, -160f, arg_1)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-293f, -862f, -137f, _wgslsmith_f_op_f32(f32(-1f) * -127f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(325f, arg_1, arg_1, 792f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), -368f, arg_1, arg_1) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, arg_1, 432f, -1648f)), vec4<f32>(var_0.b.x, 794f, -490f, -1269f))))));
    var_1 = ~firstTrailingBit(~vec4<u32>(4294967295u, 7080u, _wgslsmith_mult_u32(var_1.x, arg_0.d.x), 1u));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 19>();
    let var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 52622u << (global0.d.x % 32u), ~0u), vec3<u32>(1u, reverseBits(61062u) ^ _wgslsmith_sub_u32(global0.d.x, global0.a.x), ~(global0.a.x ^ global0.a.x))) >> (~(16328u & _wgslsmith_mod_u32(_wgslsmith_mod_u32(global0.d.x, global0.a.x), 23837u)) % 32u);
    let var_1 = func_5(func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) * _wgslsmith_f_op_f32(sign(234f))))), 421f));
    global2 = array<Struct_4, 26>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1644f - 492f))), _wgslsmith_f_op_f32(sign(-1000f))) * vec2<f32>(1f, 1f)));
    global2 = array<Struct_4, 26>();
    let var_3 = Struct_4(~vec4<u32>(~var_0, (var_0 & var_0) ^ abs(0u), func_5(Struct_1(global0.a, global0.b, vec3<bool>(global0.c.x, false, global0.c.x), global0.d), _wgslsmith_f_op_f32(-var_2.x)), ~countOneBits(var_0)), Struct_2(vec4<bool>(global0.c.x, global0.c.x, func_3(), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, -879f, var_2.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(681f, -3007f, 1000f), vec3<f32>(-416f, 1000f, var_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -785f))))), func_2(all(!vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_1, global0.d.x, global0.d.x, 1u)), ~(~vec4<u32>(var_1, global0.a.x, 75209u, global0.a.x))), var_2.x, ~(u_input.a & -1i)), func_2(global0.c.x, min(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_1, 4294967295u, var_1), firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 1u, global0.d.x))), ~(~vec4<u32>(0u, var_0, var_1, 0u))), 1014f, u_input.a).d, _wgslsmith_f_op_f32(min(588f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x + 1581f))) - -437f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.b.x, ~var_3.a.zzz);
}

