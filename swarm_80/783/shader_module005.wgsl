struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<f32>(-311f, 194f), false, vec4<f32>(-1852f, 1572f, -1000f, -195f)), Struct_2(vec2<f32>(-2311f, -834f), true, vec4<f32>(-820f, -217f, -1431f, 530f)), Struct_2(vec2<f32>(1367f, 805f), true, vec4<f32>(1293f, -1176f, 326f, 147f)), Struct_2(vec2<f32>(592f, 451f), true, vec4<f32>(-1220f, 115f, 1000f, -692f)), Struct_2(vec2<f32>(125f, 848f), true, vec4<f32>(394f, 1265f, -668f, 167f)), Struct_2(vec2<f32>(1000f, -795f), false, vec4<f32>(335f, -618f, 163f, 459f)), Struct_2(vec2<f32>(111f, -807f), false, vec4<f32>(1114f, 1328f, -143f, 503f)), Struct_2(vec2<f32>(916f, 126f), false, vec4<f32>(1232f, 1118f, -1394f, 437f)), Struct_2(vec2<f32>(366f, -2680f), true, vec4<f32>(-373f, -1000f, -947f, -223f)), Struct_2(vec2<f32>(855f, 1000f), false, vec4<f32>(-1297f, -280f, 1125f, 1786f)), Struct_2(vec2<f32>(2041f, 1532f), true, vec4<f32>(2315f, -1897f, 693f, 1000f)), Struct_2(vec2<f32>(-169f, -1094f), false, vec4<f32>(-603f, -1242f, -1437f, -1471f)), Struct_2(vec2<f32>(-2609f, 514f), false, vec4<f32>(463f, -973f, 360f, -1038f)), Struct_2(vec2<f32>(-519f, 916f), true, vec4<f32>(332f, -384f, 667f, -170f)), Struct_2(vec2<f32>(471f, -1429f), false, vec4<f32>(824f, 1153f, 1504f, -1705f)));

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec2<f32>(119f, 729f), false, vec4<f32>(839f, -1000f, -651f, -831f)), Struct_2(vec2<f32>(934f, -372f), false, vec4<f32>(-685f, 503f, -450f, 317f)), Struct_2(vec2<f32>(362f, 1065f), false, vec4<f32>(432f, -1130f, -606f, -448f)), Struct_2(vec2<f32>(1296f, -621f), false, vec4<f32>(441f, 323f, -834f, -1000f)), Struct_2(vec2<f32>(-632f, 272f), true, vec4<f32>(-763f, -423f, 1000f, 1397f)), Struct_2(vec2<f32>(-254f, -1181f), true, vec4<f32>(950f, 463f, -242f, -117f)), Struct_2(vec2<f32>(1235f, 452f), true, vec4<f32>(-1000f, 2074f, 167f, 134f)), Struct_2(vec2<f32>(-265f, 807f), false, vec4<f32>(-1792f, -620f, 118f, 130f)), Struct_2(vec2<f32>(1535f, 1876f), false, vec4<f32>(150f, 916f, -307f, 297f)), Struct_2(vec2<f32>(273f, 1157f), true, vec4<f32>(-268f, -383f, 727f, 624f)), Struct_2(vec2<f32>(-1000f, 758f), true, vec4<f32>(-282f, -1527f, -1676f, 263f)), Struct_2(vec2<f32>(-346f, 2105f), false, vec4<f32>(-1534f, 186f, 259f, -801f)), Struct_2(vec2<f32>(430f, -440f), false, vec4<f32>(2031f, 727f, 509f, -1372f)), Struct_2(vec2<f32>(-1653f, 838f), false, vec4<f32>(845f, 411f, 870f, -956f)), Struct_2(vec2<f32>(411f, -1215f), true, vec4<f32>(499f, -758f, 953f, -1000f)), Struct_2(vec2<f32>(-1289f, 918f), true, vec4<f32>(1420f, -1191f, -778f, -297f)), Struct_2(vec2<f32>(-941f, -366f), false, vec4<f32>(-295f, -251f, -657f, -164f)), Struct_2(vec2<f32>(1440f, 2172f), true, vec4<f32>(-1343f, 1000f, -1123f, -1576f)), Struct_2(vec2<f32>(-1084f, 306f), true, vec4<f32>(2148f, -1142f, 2406f, -170f)), Struct_2(vec2<f32>(421f, 961f), false, vec4<f32>(-265f, 1151f, -496f, 971f)), Struct_2(vec2<f32>(613f, -464f), false, vec4<f32>(139f, 526f, 911f, -358f)), Struct_2(vec2<f32>(-262f, -1291f), true, vec4<f32>(681f, -1629f, 546f, -174f)), Struct_2(vec2<f32>(1192f, 1607f), false, vec4<f32>(1404f, -2122f, -574f, 1419f)), Struct_2(vec2<f32>(251f, -642f), false, vec4<f32>(-406f, 2291f, 224f, 1293f)), Struct_2(vec2<f32>(-984f, -547f), true, vec4<f32>(842f, 302f, 199f, 192f)), Struct_2(vec2<f32>(-2267f, 221f), true, vec4<f32>(-1086f, -906f, -513f, 1000f)), Struct_2(vec2<f32>(-2259f, -1266f), false, vec4<f32>(-1000f, 1225f, 167f, 968f)), Struct_2(vec2<f32>(185f, -834f), false, vec4<f32>(-1256f, 738f, -1000f, 287f)), Struct_2(vec2<f32>(1206f, -1216f), false, vec4<f32>(2270f, 1538f, -710f, 187f)));

var<private> global2: array<vec2<u32>, 10>;

var<private> global3: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(11618u, Struct_1(vec3<f32>(343f, -713f, 307f))), Struct_4(19551u, Struct_1(vec3<f32>(1715f, -421f, -1885f))), Struct_4(4294967295u, Struct_1(vec3<f32>(219f, 120f, -249f))), Struct_4(1u, Struct_1(vec3<f32>(195f, 1159f, -882f))), Struct_4(0u, Struct_1(vec3<f32>(-1026f, -729f, -1412f))), Struct_4(4294967295u, Struct_1(vec3<f32>(464f, -1940f, -787f))), Struct_4(0u, Struct_1(vec3<f32>(730f, -359f, 1000f))), Struct_4(1u, Struct_1(vec3<f32>(136f, 335f, 2372f))), Struct_4(35003u, Struct_1(vec3<f32>(1023f, -162f, 1000f))), Struct_4(4294967295u, Struct_1(vec3<f32>(1000f, -631f, 615f))), Struct_4(4294967295u, Struct_1(vec3<f32>(213f, -103f, 577f))), Struct_4(6863u, Struct_1(vec3<f32>(-1020f, 127f, 1792f))), Struct_4(0u, Struct_1(vec3<f32>(-718f, -1732f, 255f))), Struct_4(51666u, Struct_1(vec3<f32>(-1242f, -443f, 231f))), Struct_4(41959u, Struct_1(vec3<f32>(-761f, 423f, 791f))), Struct_4(4294967295u, Struct_1(vec3<f32>(-294f, -725f, 1425f))), Struct_4(0u, Struct_1(vec3<f32>(1275f, -1654f, 991f))), Struct_4(1u, Struct_1(vec3<f32>(1031f, 887f, 922f))), Struct_4(1u, Struct_1(vec3<f32>(-456f, -552f, -481f))), Struct_4(6921u, Struct_1(vec3<f32>(-1333f, -414f, -520f))), Struct_4(4294967295u, Struct_1(vec3<f32>(302f, 1207f, -1283f))), Struct_4(1u, Struct_1(vec3<f32>(983f, 1365f, -471f))), Struct_4(1u, Struct_1(vec3<f32>(-189f, 188f, 209f))), Struct_4(0u, Struct_1(vec3<f32>(-1227f, 1665f, 136f))), Struct_4(7318u, Struct_1(vec3<f32>(-1000f, 218f, -2435f))), Struct_4(4294967295u, Struct_1(vec3<f32>(1608f, 395f, 354f))), Struct_4(4294967295u, Struct_1(vec3<f32>(118f, -549f, -637f))), Struct_4(73354u, Struct_1(vec3<f32>(-1602f, -624f, 913f))), Struct_4(6961u, Struct_1(vec3<f32>(-305f, -1116f, -1211f))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_1(vec3<f32>(1183f, arg_0, -410f));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.a.zy), !all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(431f)), _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(select(arg_0, 477f, false)))) - vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + -576f), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(ceil(var_0.a.x)))));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(floor(-255f)), _wgslsmith_f_op_f32(620f - 413f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - 1511f), var_0.a.x, _wgslsmith_f_op_f32(-968f - -627f)), _wgslsmith_f_op_f32(select(681f, var_0.a.x, false)) < _wgslsmith_div_f32(var_0.a.x, var_0.a.x))))));
    let var_2 = var_1.a.yy;
    global2 = array<vec2<u32>, 10>();
    global1 = array<Struct_2, 29>();
    return _wgslsmith_sub_u32(24055u, countOneBits(u_input.c));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_2) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(u_input.c >> (u_input.c % 32u), 29u)];
    global2 = array<vec2<u32>, 10>();
    global3 = array<Struct_4, 29>();
    let var_1 = ~(~func_3() >> (0u % 32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-561f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = 1i;
    global1 = array<Struct_2, 29>();
    global3 = array<Struct_4, 29>();
    var var_2 = Struct_4(~0u, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-512f, 963f, -151f))))));
    var var_3 = func_1(179f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(~vec4<i32>(var_1, -1781i, 2147483647i, var_1), ~vec3<i32>(25972i, 0i, 1i), true, global1[_wgslsmith_index_u32(61126u, 29u)])))), vec4<u32>(u_input.c, 4294967295u, _wgslsmith_add_u32(var_2.a, ~1u), _wgslsmith_sub_u32(u_input.c, u_input.c)) & ~firstLeadingBit(~vec4<u32>(u_input.c, 0u, var_2.a, var_2.a)), vec4<i32>(_wgslsmith_div_i32(var_1, var_1 & ~var_1), max(-(~0i), u_input.b << ((u_input.c << (4294967295u % 32u)) % 32u)), var_1, u_input.d), -2147483647i, var_2.a);
}

