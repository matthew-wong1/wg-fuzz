struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(1000f, Struct_2(Struct_1(vec4<f32>(1205f, -1000f, 555f, 679f)), true, vec2<bool>(true, true), Struct_1(vec4<f32>(337f, 1449f, -1262f, -316f)), Struct_1(vec4<f32>(1078f, 517f, 966f, -1000f))), Struct_1(vec4<f32>(832f, 1254f, 1582f, -1614f)), false), Struct_3(-477f, Struct_2(Struct_1(vec4<f32>(958f, -240f, -1754f, 490f)), true, vec2<bool>(false, false), Struct_1(vec4<f32>(-202f, -554f, -2847f, -1597f)), Struct_1(vec4<f32>(-449f, -1441f, -2220f, -256f))), Struct_1(vec4<f32>(-225f, -359f, 186f, -609f)), false), Struct_3(-511f, Struct_2(Struct_1(vec4<f32>(524f, 816f, -1229f, -1034f)), false, vec2<bool>(false, false), Struct_1(vec4<f32>(451f, 459f, -547f, -1083f)), Struct_1(vec4<f32>(3400f, -1906f, 417f, -1000f))), Struct_1(vec4<f32>(424f, -684f, 600f, 714f)), false), Struct_3(631f, Struct_2(Struct_1(vec4<f32>(-1000f, 310f, 407f, -1000f)), true, vec2<bool>(true, true), Struct_1(vec4<f32>(1000f, -2392f, 1629f, -1619f)), Struct_1(vec4<f32>(196f, -413f, 399f, -1586f))), Struct_1(vec4<f32>(-802f, 1000f, 1057f, -851f)), false), Struct_3(1566f, Struct_2(Struct_1(vec4<f32>(2514f, -206f, -455f, -212f)), true, vec2<bool>(true, false), Struct_1(vec4<f32>(218f, 906f, -504f, 642f)), Struct_1(vec4<f32>(-614f, 788f, 828f, 1245f))), Struct_1(vec4<f32>(-1170f, 1687f, -531f, 643f)), true), Struct_3(-140f, Struct_2(Struct_1(vec4<f32>(1356f, 1039f, 920f, -332f)), true, vec2<bool>(false, true), Struct_1(vec4<f32>(-320f, 2122f, -554f, 675f)), Struct_1(vec4<f32>(522f, 1973f, 449f, -500f))), Struct_1(vec4<f32>(-809f, -173f, -1686f, -1000f)), false), Struct_3(-522f, Struct_2(Struct_1(vec4<f32>(1269f, -433f, -529f, 2048f)), false, vec2<bool>(true, true), Struct_1(vec4<f32>(294f, 689f, 1543f, -171f)), Struct_1(vec4<f32>(232f, 1268f, -535f, -704f))), Struct_1(vec4<f32>(-516f, 1639f, 1274f, 1167f)), true), Struct_3(674f, Struct_2(Struct_1(vec4<f32>(632f, 984f, 1000f, 1568f)), false, vec2<bool>(true, true), Struct_1(vec4<f32>(-1519f, -2061f, 117f, 192f)), Struct_1(vec4<f32>(451f, 665f, 850f, 1567f))), Struct_1(vec4<f32>(-1159f, -1225f, 270f, 1834f)), true), Struct_3(-2728f, Struct_2(Struct_1(vec4<f32>(-1252f, -357f, -390f, 1000f)), false, vec2<bool>(true, true), Struct_1(vec4<f32>(370f, 1000f, 235f, -539f)), Struct_1(vec4<f32>(768f, -179f, 604f, -840f))), Struct_1(vec4<f32>(141f, 174f, 851f, -786f)), false), Struct_3(910f, Struct_2(Struct_1(vec4<f32>(-248f, -226f, -391f, -1017f)), false, vec2<bool>(true, false), Struct_1(vec4<f32>(805f, -1447f, 460f, 945f)), Struct_1(vec4<f32>(763f, -1513f, -385f, 458f))), Struct_1(vec4<f32>(-350f, 692f, -434f, 1109f)), false), Struct_3(-730f, Struct_2(Struct_1(vec4<f32>(1064f, 286f, -1306f, -413f)), false, vec2<bool>(true, true), Struct_1(vec4<f32>(-214f, -1682f, -946f, -932f)), Struct_1(vec4<f32>(-1117f, -2609f, -1077f, -247f))), Struct_1(vec4<f32>(296f, -836f, 724f, 1982f)), false), Struct_3(1224f, Struct_2(Struct_1(vec4<f32>(-625f, 1000f, -458f, 1191f)), false, vec2<bool>(true, false), Struct_1(vec4<f32>(-900f, -335f, -315f, -914f)), Struct_1(vec4<f32>(-2254f, -195f, -326f, 186f))), Struct_1(vec4<f32>(161f, 480f, 1325f, -582f)), true), Struct_3(-388f, Struct_2(Struct_1(vec4<f32>(-613f, 694f, -359f, -439f)), true, vec2<bool>(false, true), Struct_1(vec4<f32>(903f, 484f, 842f, 1000f)), Struct_1(vec4<f32>(-957f, 1090f, 1000f, -1011f))), Struct_1(vec4<f32>(2129f, -1158f, -705f, -2389f)), true), Struct_3(-337f, Struct_2(Struct_1(vec4<f32>(1000f, 127f, 550f, 320f)), true, vec2<bool>(true, true), Struct_1(vec4<f32>(1081f, 893f, -463f, -1000f)), Struct_1(vec4<f32>(1000f, -1352f, -1088f, -1549f))), Struct_1(vec4<f32>(1514f, 857f, 666f, -1000f)), false), Struct_3(-1455f, Struct_2(Struct_1(vec4<f32>(-1491f, 1646f, -1956f, -392f)), true, vec2<bool>(true, true), Struct_1(vec4<f32>(-1034f, 770f, -310f, -1425f)), Struct_1(vec4<f32>(1184f, -115f, -188f, 317f))), Struct_1(vec4<f32>(1000f, -1878f, -960f, -369f)), false), Struct_3(528f, Struct_2(Struct_1(vec4<f32>(-1019f, 134f, 243f, -1000f)), false, vec2<bool>(false, true), Struct_1(vec4<f32>(-481f, -1307f, -466f, -1000f)), Struct_1(vec4<f32>(737f, 470f, 221f, 313f))), Struct_1(vec4<f32>(-630f, -1218f, 1109f, 842f)), false), Struct_3(-1183f, Struct_2(Struct_1(vec4<f32>(-2175f, 433f, -1426f, -689f)), false, vec2<bool>(false, false), Struct_1(vec4<f32>(-679f, 168f, -1192f, 1000f)), Struct_1(vec4<f32>(-753f, -1000f, -188f, -243f))), Struct_1(vec4<f32>(1176f, 275f, 116f, -431f)), false), Struct_3(1000f, Struct_2(Struct_1(vec4<f32>(1053f, -590f, 1021f, -156f)), false, vec2<bool>(true, true), Struct_1(vec4<f32>(-199f, 185f, -259f, 792f)), Struct_1(vec4<f32>(1086f, 1069f, 132f, 337f))), Struct_1(vec4<f32>(-1000f, -763f, 525f, 510f)), true), Struct_3(-1093f, Struct_2(Struct_1(vec4<f32>(678f, -580f, 901f, 127f)), false, vec2<bool>(true, false), Struct_1(vec4<f32>(-1497f, 694f, -1538f, 1743f)), Struct_1(vec4<f32>(1000f, -998f, -267f, 1231f))), Struct_1(vec4<f32>(350f, 723f, 935f, 1068f)), true), Struct_3(-1614f, Struct_2(Struct_1(vec4<f32>(-1084f, 1964f, 631f, -643f)), false, vec2<bool>(true, false), Struct_1(vec4<f32>(-496f, -524f, 509f, 1482f)), Struct_1(vec4<f32>(559f, 790f, 869f, 1391f))), Struct_1(vec4<f32>(1000f, 463f, -2616f, -1000f)), false), Struct_3(1056f, Struct_2(Struct_1(vec4<f32>(1364f, 502f, -220f, 630f)), false, vec2<bool>(false, true), Struct_1(vec4<f32>(360f, -809f, 545f, -125f)), Struct_1(vec4<f32>(617f, -147f, 541f, 583f))), Struct_1(vec4<f32>(-1665f, 1262f, 1073f, -802f)), false), Struct_3(-113f, Struct_2(Struct_1(vec4<f32>(-2544f, -1312f, 408f, 587f)), false, vec2<bool>(true, true), Struct_1(vec4<f32>(-1000f, 850f, -502f, -960f)), Struct_1(vec4<f32>(242f, 520f, 1007f, 748f))), Struct_1(vec4<f32>(807f, 2533f, 1060f, 459f)), true));

var<private> global1: array<vec3<f32>, 20>;

var<private> global2: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(342f, Struct_2(Struct_1(vec4<f32>(-978f, -458f, -529f, 1548f)), true, vec2<bool>(false, true), Struct_1(vec4<f32>(510f, -539f, -1209f, -1110f)), Struct_1(vec4<f32>(892f, 1414f, 892f, 523f))), Struct_1(vec4<f32>(1718f, -196f, 896f, 1530f)), true), Struct_3(-2978f, Struct_2(Struct_1(vec4<f32>(-1828f, -377f, -683f, -964f)), true, vec2<bool>(false, true), Struct_1(vec4<f32>(-578f, 209f, 520f, -1276f)), Struct_1(vec4<f32>(-524f, -140f, -103f, -749f))), Struct_1(vec4<f32>(560f, 1000f, -490f, 784f)), true), Struct_3(-144f, Struct_2(Struct_1(vec4<f32>(-3150f, -1061f, -1526f, 692f)), true, vec2<bool>(false, true), Struct_1(vec4<f32>(1017f, 461f, 132f, -540f)), Struct_1(vec4<f32>(-405f, 2510f, -179f, -226f))), Struct_1(vec4<f32>(-182f, 1888f, 943f, 438f)), false), Struct_3(326f, Struct_2(Struct_1(vec4<f32>(-228f, 1000f, -1000f, -465f)), false, vec2<bool>(true, true), Struct_1(vec4<f32>(-162f, 2329f, 258f, -1000f)), Struct_1(vec4<f32>(-721f, 235f, -490f, -331f))), Struct_1(vec4<f32>(1635f, -468f, 1186f, -1000f)), true), Struct_3(108f, Struct_2(Struct_1(vec4<f32>(-1475f, 791f, 289f, -269f)), false, vec2<bool>(false, true), Struct_1(vec4<f32>(991f, 735f, 469f, 661f)), Struct_1(vec4<f32>(615f, 1199f, 938f, -1570f))), Struct_1(vec4<f32>(1000f, 1935f, 716f, 387f)), false), Struct_3(-830f, Struct_2(Struct_1(vec4<f32>(507f, -1000f, 991f, 491f)), true, vec2<bool>(true, true), Struct_1(vec4<f32>(1000f, -629f, -2272f, -2302f)), Struct_1(vec4<f32>(-605f, -1348f, 495f, -556f))), Struct_1(vec4<f32>(1495f, 129f, 1203f, -426f)), true), Struct_3(-561f, Struct_2(Struct_1(vec4<f32>(204f, 2112f, -1648f, -455f)), true, vec2<bool>(true, true), Struct_1(vec4<f32>(-1556f, -1354f, 1231f, 927f)), Struct_1(vec4<f32>(166f, 651f, -725f, 1219f))), Struct_1(vec4<f32>(343f, -540f, -579f, 1713f)), false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-239f, arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.x)) * arg_0.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x))))));
    global1 = array<vec3<f32>, 20>();
    var var_1 = 0u;
    var var_2 = Struct_3(var_0.x, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, -440f) * vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, -1243f)))), !arg_1, !(!(!vec2<bool>(arg_1, arg_1))), arg_0, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1466f - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_f_op_f32(max(arg_0.a.x, 756f)), _wgslsmith_f_op_f32(-arg_0.a.x)))), arg_0, arg_1 && arg_1);
    global1 = array<vec3<f32>, 20>();
    return vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(arg_2, arg_2, -16194i, -2147483647i)), min(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, arg_2, arg_2, arg_2), vec4<i32>(arg_2, arg_2, arg_2, arg_2)), ~vec4<i32>(-1i, -5970i, -2147483647i, arg_2))) >> ((1u ^ ~max(u_input.a.x, u_input.a.x)) % 32u), ~abs(_wgslsmith_add_i32(~1i, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, 3726i))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-242f, arg_0.a.a.x, -472f, arg_0.d.a.x) + vec4<f32>(arg_0.a.a.x, -409f, arg_0.a.a.x, 325f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.e.a.x, arg_0.e.a.x, arg_0.d.a.x, -253f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(arg_0.a.a, vec4<f32>(arg_0.d.a.x, arg_0.e.a.x, 742f, 114f), vec4<bool>(false, arg_0.b, false, arg_0.c.x))))), vec4<bool>(arg_0.c.x | true, all(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false)), arg_1.x != arg_1.x, !arg_0.b)))), any(arg_0.c), arg_0.c, arg_0.d, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x) + -307f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e.a.x, arg_0.d.a.x)), 554f, _wgslsmith_f_op_f32(arg_0.a.a.x * _wgslsmith_f_op_f32(arg_0.e.a.x - -517f)))));
    var var_1 = -((-(vec2<i32>(arg_1.x, arg_1.x) | vec2<i32>(arg_1.x, arg_1.x)) | -func_3(Struct_1(arg_0.a.a), arg_0.c.x, arg_1.x)) >> (select(~vec2<u32>(u_input.a.x, 41609u), _wgslsmith_sub_vec2_u32(u_input.a.xy, ~u_input.a.zx), !arg_0.b | true) % vec2<u32>(32u)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 22u)];
    let var_3 = !var_0.b;
    var var_4 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 2147483647i, arg_1.x), vec3<i32>(var_1.x, var_1.x, var_1.x)), 2147483647i), var_1.x) << (_wgslsmith_mult_u32(1u, 24196u >> (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u)) % 32u), ~(~(arg_1.x & arg_1.x)));
    return 1u;
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    global2 = array<Struct_3, 7>();
    global1 = array<vec3<f32>, 20>();
    let var_0 = -696f;
    var var_1 = firstLeadingBit(select(countOneBits(u_input.a), vec3<u32>(u_input.a.x | 1u, u_input.a.x, _wgslsmith_clamp_u32(func_2(Struct_2(Struct_1(vec4<f32>(-573f, 214f, var_0, -565f)), false, arg_0.xx, Struct_1(vec4<f32>(var_0, 1120f, var_0, 2121f)), Struct_1(vec4<f32>(var_0, var_0, var_0, 1278f))), vec2<i32>(29696i, 2147483647i)), 14961u | u_input.a.x, 1u)), vec3<bool>(arg_0.x, false, !select(true, arg_0.x, arg_0.x))));
    let var_2 = ~_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(1i, -20198i)), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1776f, var_0, 226f, var_0))), true, ~(20929i >> (u_input.a.x % 32u))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(-(~(-8200i)) ^ func_1(vec3<bool>(true, true, true)), -2147483647i) ^ ~33128i;
    let var_1 = vec4<i32>(0i, countOneBits(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-36282i, var_0, 2147483647i, var_0)), vec4<i32>(0i, var_0, var_0, 2147483647i)) | _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, var_0, var_0), min(vec3<i32>(31028i, var_0, var_0), vec3<i32>(var_0, 7155i, var_0)))), abs(_wgslsmith_mult_i32(countOneBits(var_0), ~1i)), _wgslsmith_add_i32(~(~(var_0 >> (u_input.a.x % 32u))), ~0i));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-2051f)), _wgslsmith_f_op_f32(abs(-785f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1527f)), 835f)));
    global1 = array<vec3<f32>, 20>();
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.a, vec4<f32>(674f, var_2.a.x, 1070f, var_2.a.x), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.a.x, 613f, var_2.a.x))) - _wgslsmith_f_op_vec4_f32(var_2.a * _wgslsmith_f_op_vec4_f32(var_2.a - vec4<f32>(825f, var_2.a.x, var_2.a.x, var_2.a.x))))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -562f), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a))), false, vec2<bool>(false, true), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(var_2.a.x, 1000f, 158f, -670f)))), Struct_1(_wgslsmith_f_op_vec4_f32(var_2.a + var_2.a))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~firstTrailingBit(42984u)), max(1u, func_2(Struct_2(var_3.b.e, var_3.d, vec2<bool>(false, true), var_3.c, var_3.b.d), vec2<i32>(var_0, 0i) ^ var_1.zy)), ~12635u >> ((5361u >> (u_input.a.x % 32u)) % 32u), firstTrailingBit(u_input.a.x)));
}

