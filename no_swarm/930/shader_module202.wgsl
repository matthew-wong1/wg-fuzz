struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: Struct_2;

var<private> global2: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(2147483647i, 1670i, -21443i), vec3<i32>(-22711i, -4037i, 17021i), vec3<i32>(0i, -20141i, 0i), vec3<i32>(0i, 38760i, i32(-2147483648)), vec3<i32>(0i, -70006i, 1i), vec3<i32>(-1i, i32(-2147483648), -28894i), vec3<i32>(-1i, 14327i, -1i), vec3<i32>(-25172i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 31850i, -7032i), vec3<i32>(i32(-2147483648), -16175i, 0i), vec3<i32>(13156i, i32(-2147483648), 0i), vec3<i32>(-24956i, 2147483647i, 25471i), vec3<i32>(-40012i, 2147483647i, 0i), vec3<i32>(0i, -1i, 1i), vec3<i32>(1i, 17453i, 1i), vec3<i32>(1581i, 1i, -4758i), vec3<i32>(-30014i, 0i, 1i), vec3<i32>(-36000i, 0i, 1i), vec3<i32>(48389i, -19001i, i32(-2147483648)), vec3<i32>(26176i, 2147483647i, -1i), vec3<i32>(48062i, -50813i, 4468i), vec3<i32>(1i, 0i, 11838i), vec3<i32>(-48002i, 0i, 48813i), vec3<i32>(50112i, 27414i, -14265i), vec3<i32>(1i, -1745i, 2160i), vec3<i32>(-44516i, 1i, 0i));

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec4<f32>(-634f, -761f, -1000f, -1853f), Struct_1(vec4<i32>(i32(-2147483648), 16026i, 34554i, 1i), 2147483647i, true, vec4<bool>(false, true, true, false), vec4<u32>(1u, 4294967295u, 10772u, 8375u)), vec4<f32>(-625f, -1351f, -950f, 276f), vec3<f32>(-1000f, 682f, -1000f), 714f), Struct_2(vec4<f32>(-316f, -1000f, -400f, 664f), Struct_1(vec4<i32>(-45529i, 29703i, 38244i, -35858i), 1i, false, vec4<bool>(true, false, true, false), vec4<u32>(1u, 1u, 0u, 0u)), vec4<f32>(-995f, 1100f, 2121f, -172f), vec3<f32>(-194f, 798f, -1000f), -1504f), Struct_2(vec4<f32>(-824f, -232f, -282f, 661f), Struct_1(vec4<i32>(2147483647i, 321i, i32(-2147483648), 1i), -57772i, false, vec4<bool>(false, false, true, true), vec4<u32>(17866u, 38061u, 0u, 4294967295u)), vec4<f32>(715f, -1573f, -103f, 927f), vec3<f32>(-489f, -795f, -1472f), 201f), Struct_2(vec4<f32>(-761f, 604f, -1072f, 1000f), Struct_1(vec4<i32>(i32(-2147483648), 13570i, -9783i, 0i), -55435i, false, vec4<bool>(true, true, false, false), vec4<u32>(4294967295u, 1u, 2402u, 56640u)), vec4<f32>(-116f, -1158f, -1107f, -475f), vec3<f32>(-857f, 2147f, -876f), -1000f), Struct_2(vec4<f32>(-321f, -1498f, -1291f, -725f), Struct_1(vec4<i32>(21495i, -154i, -40468i, i32(-2147483648)), 0i, true, vec4<bool>(true, false, false, false), vec4<u32>(18886u, 0u, 69591u, 0u)), vec4<f32>(-805f, -1000f, -317f, -981f), vec3<f32>(-1000f, 713f, 307f), 158f), Struct_2(vec4<f32>(-592f, -1227f, -407f, 832f), Struct_1(vec4<i32>(14254i, 1i, -20176i, 12708i), 2147483647i, true, vec4<bool>(false, false, false, false), vec4<u32>(1u, 23560u, 39857u, 42959u)), vec4<f32>(1000f, -731f, -372f, -1476f), vec3<f32>(512f, 286f, 317f), -187f), Struct_2(vec4<f32>(269f, -1703f, 1305f, -252f), Struct_1(vec4<i32>(13897i, 1i, -19893i, -11533i), 13709i, false, vec4<bool>(true, true, true, false), vec4<u32>(39343u, 4294967295u, 40262u, 0u)), vec4<f32>(-1138f, -211f, 748f, -887f), vec3<f32>(241f, 365f, -477f), 357f), Struct_2(vec4<f32>(739f, 1734f, 1107f, 1405f), Struct_1(vec4<i32>(-1i, 2147483647i, -1i, 24190i), 1i, true, vec4<bool>(false, true, false, true), vec4<u32>(1u, 1u, 2416u, 1u)), vec4<f32>(-1241f, -111f, 1203f, 843f), vec3<f32>(116f, 2059f, 1750f), 1526f), Struct_2(vec4<f32>(-680f, -282f, 172f, -1611f), Struct_1(vec4<i32>(2147483647i, -24206i, -7290i, -1i), -39859i, false, vec4<bool>(false, false, false, false), vec4<u32>(39726u, 17697u, 70128u, 4294967295u)), vec4<f32>(-1201f, 594f, -131f, 617f), vec3<f32>(-419f, -1451f, 1174f), -410f), Struct_2(vec4<f32>(-1000f, 296f, -894f, -1064f), Struct_1(vec4<i32>(-40936i, 26906i, 1i, 2147483647i), 1i, true, vec4<bool>(false, false, false, true), vec4<u32>(60217u, 43024u, 59896u, 0u)), vec4<f32>(-493f, 267f, 155f, -1978f), vec3<f32>(383f, -294f, -1224f), -1000f), Struct_2(vec4<f32>(-1142f, 549f, 126f, -461f), Struct_1(vec4<i32>(-1i, 57695i, 0i, 94i), 0i, false, vec4<bool>(false, false, false, true), vec4<u32>(73311u, 1u, 4294967295u, 17231u)), vec4<f32>(-859f, 202f, -644f, 762f), vec3<f32>(-106f, -886f, -369f), -765f), Struct_2(vec4<f32>(-1000f, 1000f, 1000f, 138f), Struct_1(vec4<i32>(9858i, 1i, 2147483647i, 32051i), -13665i, true, vec4<bool>(false, true, true, true), vec4<u32>(56744u, 7022u, 21870u, 4294967295u)), vec4<f32>(-625f, 1256f, -1128f, 549f), vec3<f32>(-1896f, -902f, 1239f), -462f), Struct_2(vec4<f32>(-691f, -1294f, 1525f, 1027f), Struct_1(vec4<i32>(0i, 0i, -39670i, 1i), -9929i, false, vec4<bool>(false, true, true, false), vec4<u32>(9293u, 75731u, 12567u, 4294967295u)), vec4<f32>(1313f, -496f, -420f, -184f), vec3<f32>(684f, 1922f, -864f), 1419f), Struct_2(vec4<f32>(1613f, -101f, -797f, -521f), Struct_1(vec4<i32>(2147483647i, 0i, 2147483647i, -12159i), -8594i, true, vec4<bool>(false, true, false, true), vec4<u32>(0u, 25282u, 19531u, 0u)), vec4<f32>(777f, 916f, -1228f, -945f), vec3<f32>(112f, 434f, 430f), 564f), Struct_2(vec4<f32>(923f, 1828f, -217f, 1094f), Struct_1(vec4<i32>(19762i, -1i, 8521i, 1i), i32(-2147483648), false, vec4<bool>(true, false, true, false), vec4<u32>(20123u, 7034u, 4741u, 14400u)), vec4<f32>(-839f, -1323f, 1000f, 555f), vec3<f32>(-1274f, -1239f, -1563f), -258f), Struct_2(vec4<f32>(-1154f, -2339f, -229f, 402f), Struct_1(vec4<i32>(43087i, 3172i, i32(-2147483648), 2062i), -17171i, true, vec4<bool>(true, false, true, true), vec4<u32>(4294967295u, 85023u, 54229u, 40800u)), vec4<f32>(-359f, -1263f, -292f, 1721f), vec3<f32>(886f, -109f, 3146f), 1000f), Struct_2(vec4<f32>(2275f, 1219f, -798f, 1712f), Struct_1(vec4<i32>(-1i, 0i, -1i, i32(-2147483648)), -256i, true, vec4<bool>(true, false, true, false), vec4<u32>(51763u, 37369u, 0u, 12393u)), vec4<f32>(-1572f, -932f, -712f, -512f), vec3<f32>(-1039f, -826f, 2331f), 189f), Struct_2(vec4<f32>(-1000f, -1422f, 1437f, 1423f), Struct_1(vec4<i32>(45309i, 0i, -1i, 3357i), 20658i, true, vec4<bool>(true, false, false, true), vec4<u32>(7530u, 4294967295u, 0u, 1u)), vec4<f32>(-585f, 1016f, 680f, 501f), vec3<f32>(2133f, 753f, -1629f), -681f), Struct_2(vec4<f32>(1719f, -168f, 1174f, 707f), Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, -10507i), -4588i, false, vec4<bool>(false, true, false, true), vec4<u32>(43139u, 29675u, 1u, 0u)), vec4<f32>(1870f, -746f, 545f, 228f), vec3<f32>(1000f, 167f, -747f), 582f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = -(~arg_0.e.b.a.zy);
    let var_1 = 60720u;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_f_op_vec4_f32(-arg_0.d.c), abs(~var_1) < global0[_wgslsmith_index_u32(35u, 20u)])), Struct_1(global1.b.a, ~u_input.a, !arg_0.e.b.c, select(global1.b.d, !vec4<bool>(global1.b.c, arg_0.d.b.d.x, global1.b.c, true), global1.b.d), _wgslsmith_sub_vec4_u32(abs(global1.b.e), _wgslsmith_mod_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global1.b.e.x, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]), ~vec4<u32>(global0[_wgslsmith_index_u32(var_1, 20u)], 0u, 8427u, 29318u)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.e.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d.a.yzx))), _wgslsmith_div_f32(-161f, _wgslsmith_f_op_f32(max(1214f, -1059f))));
    global0 = array<u32, 20>();
    let var_3 = arg_0.d.b.a.x & arg_0.d.b.b;
    return var_2.b.c;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = array<u32, 20>();
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(global1.a.xyw));
    var var_1 = ~_wgslsmith_mult_i32(u_input.b, firstLeadingBit(2147483647i & u_input.b));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c)), Struct_1(~arg_3 & _wgslsmith_div_vec4_i32(arg_3 << (global1.b.e % vec4<u32>(32u)), ~vec4<i32>(global1.b.b, 35064i, global1.b.a.x, -48455i)), select(global1.b.b, -33997i, !(!global1.b.c)), global1.b.c, !vec4<bool>(!global1.b.c, global1.b.d.x | global1.b.c, func_3(Struct_3(2147483647i, arg_2, 182f, Struct_2(global1.a, global1.b, global1.a, vec3<f32>(arg_2, var_0.x, arg_2), arg_2), Struct_2(vec4<f32>(-151f, 105f, -1014f, global1.d.x), global1.b, vec4<f32>(var_0.x, 879f, 130f, -775f), vec3<f32>(-415f, -322f, arg_0), 1000f))), global1.b.d.x), _wgslsmith_sub_vec4_u32(~global1.b.e, _wgslsmith_div_vec4_u32(~global1.b.e, _wgslsmith_div_vec4_u32(global1.b.e, global1.b.e)))), global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global1.c.xww + global1.a.yzz))), global1.d)), _wgslsmith_div_f32(-1556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -124f), -826f)))));
    var var_2 = ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.b.e.x, global1.b.e.x, global0[_wgslsmith_index_u32(global1.b.e.x, 20u)]), u_input.c), u_input.c), vec3<u32>(0u >> (u_input.d.x % 32u), 0u, ~global0[_wgslsmith_index_u32(1u, 20u)])));
    return !select(select(!global1.b.d.yz, global1.b.d.wz, select(vec2<bool>(true, true), global1.b.d.yx, !global1.b.d.wz)), !select(global1.b.d.wy, vec2<bool>(true, global1.b.d.x), !vec2<bool>(true, global1.b.d.x)), true);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = !vec4<bool>(false, global1.b.c, all(func_2(_wgslsmith_f_op_f32(arg_1.c - global1.d.x), global1.b.a.zwy ^ vec3<i32>(arg_2, 38734i, arg_3), _wgslsmith_f_op_f32(913f * -442f), firstLeadingBit(vec4<i32>(global1.b.b, -2147483647i, -1i, 1969i)))), false);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-588f, global1.a.x) * vec2<f32>(arg_1.b, -1685f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_1.b)), vec2<f32>(arg_1.e.d.x, _wgslsmith_f_op_f32(arg_1.b * arg_0.x)))), var_0.yy))));
    global1 = global3[_wgslsmith_index_u32(reverseBits(18715u), 19u)];
    global0 = array<u32, 20>();
    global1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-822f, _wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(sign(-138f))), arg_1.e.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), Struct_1(select(select(countOneBits(vec4<i32>(arg_2, 12488i, 29849i, 2147483647i)), global1.b.a >> (vec4<u32>(4294967295u, 74474u, global1.b.e.x, 10845u) % vec4<u32>(32u)), !global1.b.d), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3, 2147483647i, u_input.a, 21397i), _wgslsmith_add_vec4_i32(global1.b.a, global1.b.a)), var_0.x & (var_1.x <= -1000f)), arg_1.a, _wgslsmith_sub_i32(arg_3, ~global1.b.b) == select(arg_2, -57717i, true), vec4<bool>(true, all(global1.b.d.wxx), global1.b.c, global1.b.c), vec4<u32>(firstLeadingBit(global1.b.e.x), abs(_wgslsmith_add_u32(35656u, 0u)), abs(abs(arg_1.e.b.e.x)), _wgslsmith_mod_u32(70167u, _wgslsmith_clamp_u32(global1.b.e.x, 0u, u_input.c.x)))), _wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -662f, arg_1.d.d.x)), vec3<f32>(1624f, 1000f, -933f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-379f + var_1.x))));
    return global1.b.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<u32, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1.c.zzy, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(700f, global1.d.x, global1.d.x), vec3<f32>(112f, 1240f, global1.a.x)), vec3<f32>(-513f, 626f, -125f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * -2141f), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(global1.d.x * -982f)))) * global1.a.wwz);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec3<u32>(func_1(var_1.zx, Struct_3(-45374i, -216f, var_1.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 19u)], global3[_wgslsmith_index_u32(1918u, 19u)]), u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1776i, u_input.b, global1.b.b, global1.b.a.x), vec4<i32>(33538i, 2147483647i, u_input.a, u_input.a))), ~reverseBits(global0[_wgslsmith_index_u32(4294967295u, 20u)]), 1u ^ u_input.d.x) << (vec3<u32>(1u, ~(global1.b.e.x | u_input.d.x), reverseBits(~global1.b.e.x)) % vec3<u32>(32u)), countOneBits(1u));
}

